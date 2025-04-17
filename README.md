# syscount Implementation

## Overview
The `syscount` feature adds a new system call `getSysCount` and a corresponding user program `syscount`. This feature allows counting the number of times a specific system call is invoked by a process and its children.

## Implementation Details

1. **New System Call: getSysCount**
   - Added `sys_getsyscount` in `kernel/sysproc.c`.
   - This function decodes the syscall number based on the provided mask.

2. **Syscall Counting Mechanism**
   - Modified `syscall` function in `kernel/syscall.c`.
   - When a system call is invoked, it checks if it matches the mask and increments the count if so.

3. **User Program: syscount**
   - Implemented in `user/syscount.c`.
   - Takes a mask and a command as arguments.
   - Calls `getsyscount` to set up tracking, then executes the specified command.

4. **Process Structure Modifications**
   - Added necessary fields to `struct proc` in `kernel/proc.h` to store syscall tracking information.

5. **Syscall Enumeration**
   - Utilized existing syscall numbers from `kernel/syscall.h`.
   - Added new syscall number for `getSysCount`.

6. **Output Formatting**
   - The count is printed when the tracked process exits.
   - Format: `PID <caller pid> called <syscall name> <n> times.`

### Entry added for `getsyscount ` in `user/usys.pl`:

## How it Works
- First the mask is converted into its syscall number to check for which syscall we want to find the syscount of and then the syscount is the total of syscount incremented in syscall.c and proc.c/exit function(adding the syscount of child process the parent process made)


# sigalarm and sigreturn Implementation

## Overview
The `sigalarm` and `sigreturn` system calls provide a mechanism for periodic user-level interrupts in xv6. This feature allows processes to set up timed callbacks, useful for limiting CPU usage or performing periodic actions.

## Implementation Details

1. **New System Calls**
   - Added `sys_sigalarm` and `sys_sigreturn` in `kernel/sysproc.c`.
   - `sys_sigalarm` takes an interval and a function pointer as arguments.
   - `sys_sigreturn` resets the process state to before the handler was called.

2. **Process Structure Modifications**
   - Added new fields to `struct proc` in `kernel/proc.h`:
     - `alarm_interval`: stores the alarm interval.
     - `alarm_handler`: stores the handler function pointer.
     - `alarm_ticks`: counts ticks since last alarm.
     - `alarm_in_progress`: flag to prevent re-entrancy.
     - `alarm_saved_tf`: stores the saved trapframe.

3. **Timer Interrupt Handling**
   - Modified `usertrap` in `kernel/trap.c` to handle timer interrupts.
   - When a timer interrupt occurs, it increments `alarm_ticks`.
   - If `alarm_ticks` reaches `alarm_interval`, it triggers the alarm handler.

4. **Alarm Handler Invocation**
   - When an alarm is triggered, the current trapframe is saved.
   - The process's program counter is set to the alarm handler function.
   - The `alarm_in_progress` flag is set to prevent re-entrancy.

5. **sigreturn Implementation**
   - `sys_sigreturn` restores the saved trapframe.
   - It resets `alarm_in_progress` and frees the saved trapframe memory.

### Entry added for `sigalarm and sigreturn ` in `user/usys.pl`:

## How It Works

The `sigalarm` system call sets up a timed interrupt for a process. When a program calls `sigalarm(n, fn)`, it instructs the kernel to call the function `fn` after every `n` ticks of CPU time used by the process. The kernel tracks these ticks during timer interrupts. When the specified number of ticks is reached, the kernel saves the current process state, then jumps to the handler function `fn`. After `fn` completes its execution, it calls `sigreturn()`, which restores the saved process state, allowing the process to resume exactly where it left off. This cycle keeps on repeating.



# Lottery Based Scheduling

## Overview

Lottery Based Scheduling (LBS) is a probabilistic scheduling algorithm implemented in xv6. It assigns tickets to processes and randomly selects a winning ticket to determine which process runs next. This approach provides a balance between fairness and prioritization.

# Lottery Based Scheduling Example

Consider three processes: P1, P2, and P3 with tickets 5, 10, and 15 respectively are in increasing order of arrival times.

Total tickets = 5 + 10 + 15 = 30

Ticket ranges:
P1: 1-5
P2: 6-15
P3: 16-30

Let's say the random number generator selects ticket 12:
- P1's range (1-5) does not include 12, so P1 does not win the lottery
- P2's range (6-15) includes 12, so P2 wins the lottery
- Also because there is process with tickets equal to 10 that arrived before so the result wouldn't be overturned

### changes made in

- proc.c
    - allocproc(initialization part done here)
    - fork function
    - scheduler function for implementing LBS
    - in procinit function added functionality for rand function
- proc.h
  - added function prototypes for lottery based scheduling
- sysproc.c 
    -add settickets implementation
- syscall.c and user.h 
- Entry added for `settickets` in `user/usys.pl`

### Note 
- All processes are start with 1 ticket by default and we made a custom schedulertest to and set tickets to see our approach
- the child will have the same number of tickets as that of parent
- to run this `make clean ; make qemu SCHEDULER=LBS`

# MLFQ Scheduling

## Overview

Multi-Level Feedback Queue (MLFQ) is a scheduling algorithm that uses multiple queues with different time slices. The process are by default on arrival in queue 0 and processes that use their time slices with the execption of IO processes are moved down the queues and to prevent starvation we have a priority boost every 48 ticks that brings all the proccess to queue 0. 

### changes made in

- proc.c
    - allocproc(initialization part done here)
    - updatetime function (where queuelevel is changed and timeslice in decreased)
    - scheduler function (where the above implementation is done)

- proc.h
  - added function prototypes for MLFQ

- proc.c
    - the core logic for implementing MLFQ is present here
    - the logic for priority boost is also implemented here

- in trap.c (taken care of IO interupt in usertrap in case of MLFQ)

### Note 
- to run this `make clean ; make qemu SCHEDULER=MLFQ`



# Comparison Between Different Schedulers for CPUS=1


| Metric   | LBS  | MLFQ | RR  |
|----------|------|------|-----|
| `rtime`  | 22   | 22  | 22  |
| `wtime`  | 194  | 173  | 185 |


# Implication of adding arrival time LBS policy


- we are giving higher priority to the process with earlier arrival time in case of winner of lottery with same tickets. So in case to multiple processes have same tickets process which arrived first is executed first even when any of these process from the multiple processes with same tickets are selected. so we will need arrival time to ensure fairness and preventing starvation of older proccesses.

# pitfalls in LBS policy

1. Starvation Risk:

The proccesses with higher tickets have higher probability of getting selected so the processes with low tickets can starve due to the continued picking of processes with higher number of tickets.
This could result in a process with lower tickets being starved of CPU time as they keep waiting for their lottery to be drawn.

2. Ticket Allocation and Fairness:

Lottery scheduling ensures that processes higher tickets have higher probability of getting selected. If a process sets has very high number of tickets, it might take most of CPU time, reducing the fairness of the system as other processes don't get CPU time. So its has a low fairness index.


# Processes having same tickets:

- In case of multiple processes having same tickets, the process with earlier arrival time is selected. This is just like FCFS policy.

Consider three processes: P1, P2, and P3 with arrival times 5, 10, and 15 respectively.

 we will be executing first p1 then p2 and then p3 as we are seeing early  arrival time 
 and this is same as FCFS scheduling policy 


# MLFQ Analysis



![mlfq](https://github.com/user-attachments/assets/2c749d69-e2b9-4ba7-9fc8-4bd56741fa20)


  


# AI PROMPT IMAGES

# SYSCOUNT

![Screenshot from 2024-10-14 00-20-48](https://github.com/user-attachments/assets/c87d0cb2-dee3-45a0-a7d2-f314b5ebbef2)

![Screenshot from 2024-10-14 00-20-57](https://github.com/user-attachments/assets/60801b86-a15c-47ec-af7b-b72eaaff5225)

![Screenshot from 2024-10-14 00-21-04](https://github.com/user-attachments/assets/9af7ea23-4bd9-4ec9-a0f0-d96511f27964)

![Screenshot from 2024-10-14 00-21-30](https://github.com/user-attachments/assets/1b24dfc7-1b60-4d06-86c5-e60cc3d3dce2)

![Screenshot from 2024-10-14 00-21-34](https://github.com/user-attachments/assets/d6907723-c5f6-4a47-8312-dc914dc71e5a)

![Screenshot from 2024-10-14 00-22-05](https://github.com/user-attachments/assets/a49c7277-9061-4eb7-b912-b300ac086198)

![Screenshot from 2024-10-14 00-22-13](https://github.com/user-attachments/assets/fc47aeb0-a7d3-4b60-9d64-30313cbe7309)


# SIGALARM

![Screenshot from 2024-10-14 00-48-48](https://github.com/user-attachments/assets/cef27bf9-29f1-4bca-99c5-34cef55629de)

![Screenshot from 2024-10-14 00-53-21](https://github.com/user-attachments/assets/3678ca81-bc1a-491b-aabd-1008b418d9ee)

![Screenshot from 2024-10-14 00-53-37](https://github.com/user-attachments/assets/c2eecdb9-c9a9-4c7d-8163-2fcbdeb3362d)













