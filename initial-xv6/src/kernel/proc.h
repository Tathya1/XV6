// new3
// int settickets(int);
// new3
#ifdef SCHEDULER_LBS
#define LBS
#endif
#define DEFAULT 0

// Saved registers for kernel context switches.
struct context
{
  uint64 ra;
  uint64 sp;

  // callee-saved
  uint64 s0;
  uint64 s1;
  uint64 s2;
  uint64 s3;
  uint64 s4;
  uint64 s5;
  uint64 s6;
  uint64 s7;
  uint64 s8;
  uint64 s9;
  uint64 s10;
  uint64 s11;
};

// Per-CPU state.
struct cpu
{
  struct proc *proc;      // The process running on this cpu, or null.
  struct context context; // swtch() here to enter scheduler().
  int noff;               // Depth of push_off() nesting.
  int intena;             // Were interrupts enabled before push_off()?
};

extern struct cpu cpus[NCPU];

// per-process data for the trap handling code in trampoline.S.
// sits in a page by itself just under the trampoline page in the
// user page table. not specially mapped in the kernel page table.
// uservec in trampoline.S saves user registers in the trapframe,
// then initializes registers from the trapframe's
// kernel_sp, kernel_hartid, kernel_satp, and jumps to kernel_trap.
// usertrapret() and userret in trampoline.S set up
// the trapframe's kernel_*, restore user registers from the
// trapframe, switch to the user page table, and enter user space.
// the trapframe includes callee-saved user registers like s0-s11 because the
// return-to-user path via usertrapret() doesn't return through
// the entire kernel call stack.
struct trapframe
{
  /*   0 */ uint64 kernel_satp;   // kernel page table
  /*   8 */ uint64 kernel_sp;     // top of process's kernel stack
  /*  16 */ uint64 kernel_trap;   // usertrap()
  /*  24 */ uint64 epc;           // saved user program counter
  /*  32 */ uint64 kernel_hartid; // saved kernel tp
  /*  40 */ uint64 ra;
  /*  48 */ uint64 sp;
  /*  56 */ uint64 gp;
  /*  64 */ uint64 tp;
  /*  72 */ uint64 t0;
  /*  80 */ uint64 t1;
  /*  88 */ uint64 t2;
  /*  96 */ uint64 s0;
  /* 104 */ uint64 s1;
  /* 112 */ uint64 a0;
  /* 120 */ uint64 a1;
  /* 128 */ uint64 a2;
  /* 136 */ uint64 a3;
  /* 144 */ uint64 a4;
  /* 152 */ uint64 a5;
  /* 160 */ uint64 a6;
  /* 168 */ uint64 a7;
  /* 176 */ uint64 s2;
  /* 184 */ uint64 s3;
  /* 192 */ uint64 s4;
  /* 200 */ uint64 s5;
  /* 208 */ uint64 s6;
  /* 216 */ uint64 s7;
  /* 224 */ uint64 s8;
  /* 232 */ uint64 s9;
  /* 240 */ uint64 s10;
  /* 248 */ uint64 s11;
  /* 256 */ uint64 t3;
  /* 264 */ uint64 t4;
  /* 272 */ uint64 t5;
  /* 280 */ uint64 t6;
};

enum procstate
{
  UNUSED,
  USED,
  SLEEPING,
  RUNNABLE,
  RUNNING,
  ZOMBIE
};

// Per-process state
struct proc
{
  struct spinlock lock;

  // p->lock must be held when using these:
  enum procstate state; // Process state
  void *chan;           // If non-zero, sleeping on chan
  int killed;           // If non-zero, have been killed
  int xstate;           // Exit status to be returned to parent's wait
  int pid;              // Process ID
  // new
  int syscall_mask;     // Syscall mask to count
  int syscall_count;    // Syscall count
  int syscall_to_count; // Syscall to count
  // new
  // new1
  int alarm_interval;
  void (*alarm_handler)(); // Pointer to the alarm handler function
  // int ticks_count;                 // Counter for ticks
  // int alarm_on;                    // Flag to check if alarm is set
  // struct trapframe *alarm_tf;      // Saved trapframe for sigreturn
  // int in_handler;                  // new2
  // int till_tick;                   // new2
  // int bool_sigalarm;               // new2
  // struct trapframe *new_trapframe; // new2
  // int interval;                    // new2

  int alarm_ticks;                  // new1
  int alarm_in_progress;            // new1
  struct trapframe *alarm_saved_tf; // new1

  // new1
  // new3

  // int tickets; // Number of tickets for lottery scheduling
  // uint creation_time;
  // new3
  // new4
  uint64 time_created;
  int handler_permission;
  int tickets;
  // new4
  // new5
  // uint64 runtime;
  // uint64 starttime;
  // uint64 sleeptime;
  // uint64 runcount;
  // uint64 priority;

  int tickcount;
  int queue;
  int waittickcount;
  // int queueposition;
  int totaltickcount;
  // new5
  // new6
  // int creation_time;
  int arrival_time;
  int lbs_time;
  // uint64 start_time;    // Time when the process was first scheduled
  // uint64 end_time;      // Time when the process finished
  // uint64 first_run_time; // Time when the process first started running
  // uint64 turnaround_time;
  // uint64 response_time;
  // int has_started;
  // new6

  // wait_lock must be held when using this:
  struct proc *parent; // Parent process

  // these are private to the process, so p->lock need not be held.
  uint64 kstack;               // Virtual address of kernel stack
  uint64 sz;                   // Size of process memory (bytes)
  pagetable_t pagetable;       // User page table
  struct trapframe *trapframe; // data page for trampoline.S
  struct context context;      // swtch() here to run process
  struct file *ofile[NOFILE];  // Open files
  struct inode *cwd;           // Current directory
  char name[16];               // Process name (debugging)
  uint rtime;                  // How long the process ran for
  uint ctime;                  // When was the process created
  uint etime;                  // When did the process exited
};

extern struct proc proc[NPROC];
