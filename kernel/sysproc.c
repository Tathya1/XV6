#include "types.h"
#include "riscv.h"
#include "defs.h"
#include "param.h"
#include "memlayout.h"
#include "spinlock.h"
#include "proc.h"

uint64
sys_exit(void)
{
  int n;
  argint(0, &n);
  exit(n);
  return 0; // not reached
}

uint64
sys_getpid(void)
{
  return myproc()->pid;
}

uint64
sys_fork(void)
{
  return fork();
}

uint64
sys_wait(void)
{
  uint64 p;
  argaddr(0, &p);
  return wait(p);
}

uint64
sys_sbrk(void)
{
  uint64 addr;
  int n;

  argint(0, &n);
  addr = myproc()->sz;
  if (growproc(n) < 0)
    return -1;
  return addr;
}

uint64
sys_sleep(void)
{
  int n;
  uint ticks0;

  argint(0, &n);
  acquire(&tickslock);
  ticks0 = ticks;
  while (ticks - ticks0 < n)
  {
    if (killed(myproc()))
    {
      release(&tickslock);
      return -1;
    }
    sleep(&ticks, &tickslock);
  }
  release(&tickslock);
  return 0;
}

uint64
sys_kill(void)
{
  int pid;

  argint(0, &pid);
  return kill(pid);
}

// return how many clock tick interrupts have occurred
// since start.
uint64
sys_uptime(void)
{
  uint xticks;

  acquire(&tickslock);
  xticks = ticks;
  release(&tickslock);
  return xticks;
}

uint64
sys_waitx(void)
{
  uint64 addr, addr1, addr2;
  uint wtime, rtime;
  argaddr(0, &addr);
  argaddr(1, &addr1); // user virtual memory
  argaddr(2, &addr2);
  int ret = waitx(addr, &wtime, &rtime);
  struct proc *p = myproc();
  if (copyout(p->pagetable, addr1, (char *)&wtime, sizeof(int)) < 0)
    return -1;
  if (copyout(p->pagetable, addr2, (char *)&rtime, sizeof(int)) < 0)
    return -1;
  return ret;
}

uint64
sys_getsyscount(void)
{
  int mask;
  argint(0, &mask);
  struct proc *p = myproc();
  p->syscall_mask = mask;
  p->syscall_count = 0;

  // Decode the mask to find which syscall to count
  for (int i = 0; i < 32; i++)
  {
    if (mask == (1 << i))
    {
      p->syscall_to_count = i;
      break;
    }
  }

  // struct proc* np;
  // for(np = proc; np < &proc[NPROC]; np++){
  //   if(np->state != UNUSED){
  //     if(np->parent == p->pid){
  //       total_syscall_count += np->syscall_count[p->syscall_to_count];
  //     }
  //   }
  // }


  return 0;
}

// new1
uint64
sys_sigalarm(void)
{
  int interval;
  uint64 handler;

  argint(0, &interval);
  argaddr(1, &handler);

  if (interval < 0)
    return -1;

  struct proc *p = myproc();
  p->alarm_interval = interval;
  p->alarm_handler = (void (*)())handler;
  // p->ticks_count = 0;
  // p->alarm_on = 1;
  // p->alarm_on = (interval > 0);
  // p->till_tick = 0;//new2
  // p->bool_sigalarm = 0;//new2
  p->alarm_ticks = 0;       // new1
  p->alarm_in_progress = 0; // new1

  return 0;
}
// new2
//  uint64
//  sys_sigreturn(void)
//  {
//    struct proc *p = myproc();
//    p->new_trapframe->kernel_sp = p->trapframe->kernel_sp;
//    p->new_trapframe->kernel_trap = p->trapframe->kernel_trap;
//    p->new_trapframe->kernel_satp = p->trapframe->kernel_satp;
//    p->new_trapframe->kernel_hartid = p->trapframe->kernel_hartid;
//    *(p->trapframe) = *(p->new_trapframe);
//    p->bool_sigalarm = 0;
//    return p->trapframe->a0;
//  }
// new2
uint64
sys_sigreturn(void)
{
  struct proc *p = myproc();
  if (p->alarm_in_progress && p->alarm_saved_tf)
  {
    memmove(p->trapframe, p->alarm_saved_tf, sizeof(struct trapframe));
    kfree(p->alarm_saved_tf);
    p->alarm_saved_tf = 0;
    p->alarm_in_progress = 0;
  }
  return 0;
}
// new1
// new3
// uint64
// sys_settickets(void)
// {
//   int number;
//   argint(0, &number);
//   return settickets(number);
// }

// new3
//new4
uint64 
sys_settickets(void)
{
  struct proc *p = myproc();
  int tickets;
  argint(0, &tickets);
  p->tickets = tickets;
  return 0;
}
//new4

//new5
// uint64
// sys_setpriority()
// {
//   int pid, priority;
//   int arg_num[2] = {0, 1};

//   argint(arg_num[0], &priority);
//   argint(arg_num[1], &pid);
//   return setpriority(priority, pid);
// }
//new5