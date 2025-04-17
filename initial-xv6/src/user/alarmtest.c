#include "kernel/param.h"
#include "kernel/types.h"
#include "kernel/stat.h"
#include "kernel/riscv.h"
#include "user/user.h"

void test0();
void test1();
void test2();
void test3();
void periodic();
void slow_handler();
void dummy_handler();

int main(int argc, char *argv[])
{
    test0();
    test1();
    test2();
    test3();
    exit(0);
}

volatile static int count;

void periodic()
{
    count = count + 1;
    printf("alarm!\n");
    sigreturn();
}

// tests whether the kernel calls
// the alarm handler even a single time.
void test0()
{
    int i;
    printf("test0 start\n");
    count = 0;
    sigalarm(2, periodic);
    for (i = 0; i < 1000 * 500000; i++)
    {
        if ((i % 1000000) == 0)
            write(2, ".", 1);
        if (count > 0)
            break;
    }
    sigalarm(0, 0);
    if (count > 0)
    {
        printf("test0 passed\n");
    }
    else
    {
        printf("\ntest0 failed: the kernel never called the alarm handler\n");
    }
}

void __attribute__((noinline)) foo(int i, int *j)
{
    if ((i % 2500000) == 0)
    {
        write(2, ".", 1);
    }
    *j += 1;
}

//
// tests that the kernel calls the handler multiple times.
//
// tests that, when the handler returns, it returns to
// the point in the program where the timer interrupt
// occurred, with all registers holding the same values they
// held when the interrupt occurred.
//
void test1()
{
    int i;
    int j;

    printf("test1 start\n");
    count = 0;
    j = 0;
    sigalarm(2, periodic);
    for (i = 0; i < 500000000; i++)
    {
        if (count >= 10)
            break;
        foo(i, &j);
    }
    if (count < 10)
    {
        printf("\ntest1 failed: too few calls to the handler\n");
    }
    else if (i != j)
    {
        // the loop should have called foo() i times, and foo() should
        // have incremented j once per call, so j should equal i.
        // once possible source of errors is that the handler may
        // return somewhere other than where the timer interrupt
        // occurred; another is that that registers may not be
        // restored correctly, causing i or j or the address ofj
        // to get an incorrect value.
        printf("\ntest1 failed: foo() executed fewer times than it was called\n");
    }
    else
    {
        printf("test1 passed\n");
    }
}

//
// tests that kernel does not allow reentrant alarm calls.
void test2()
{
    int i;
    int pid;
    int status;

    printf("test2 start\n");
    if ((pid = fork()) < 0)
    {
        printf("test2: fork failed\n");
    }
    if (pid == 0)
    {
        count = 0;
        sigalarm(2, slow_handler);
        for (i = 0; i < 1000 * 500000; i++)
        {
            if ((i % 1000000) == 0)
                write(2, ".", 1);
            if (count > 0)
                break;
        }
        if (count == 0)
        {
            printf("\ntest2 failed: alarm not called\n");
            exit(1);
        }
        exit(0);
    }
    wait(&status);
    if (status == 0)
    {
        printf("test2 passed\n");
    }
}

void slow_handler()
{
    count++;
    printf("alarm!\n");
    if (count > 1)
    {
        printf("test2 failed: alarm handler called more than once\n");
        exit(1);
    }
    for (int i = 0; i < 1000 * 500000; i++)
    {
        asm volatile("nop"); // avoid compiler optimizing away loop
    }
    sigalarm(0, 0);
    sigreturn();
}

//
// dummy alarm handler; after running immediately uninstall
// itself and finish signal handling
void dummy_handler()
{
    sigalarm(0, 0);
    sigreturn();
}

//
// tests that the return from sys_sigreturn() does not
// modify the a0 register
void test3()
{
    uint64 a0;

    sigalarm(1, dummy_handler);
    printf("test3 start\n");

    asm volatile("lui a5, 0");
    asm volatile("addi a0, a5, 0xac" : : : "a0");
    for (int i = 0; i < 500000000; i++)
        ;
    asm volatile("mv %0, a0" : "=r"(a0));

    if (a0 != 0xac)
        printf("test3 failed: register a0 changed\n");
    else
        printf("test3 passed\n");
}


// #include "kernel/param.h"
// #include "kernel/types.h"
// #include "kernel/stat.h"
// #include "kernel/riscv.h"
// #include "user/user.h"

// // Function prototypes
// void big_test();
// void periodic_handler();
// void nested_handler();
// void syscall_handler();
// void io_handler();
// void child_process_test();
// void multithread_test();
// void stress_test();
// void edge_case_test();
// void back_to_back_test();

// // Global variables for tracking
// volatile static int handler_count;
// volatile static int syscall_count = 0;
// volatile static int nested_count = 0;
// volatile static int child_signal_count = 0;
// volatile static int io_triggered = 0;
// volatile static int stress_signal_count = 0;

// int main(int argc, char *argv[])
// {
//     big_test();
//     exit(0);
// }

// // Simple periodic alarm signal handler
// void periodic_handler()
// {
//     handler_count++;
//     printf("[Periodic Handler] Periodic alarm fired! Count = %d\n", handler_count);
//     sigreturn();
// }

// // Signal handler for nested alarms
// void nested_handler()
// {
//     nested_count++;
//     printf("[Nested Handler] Alarm fired! Nested count = %d\n", nested_count);

//     if (nested_count == 1)
//     {
//         printf("[Nested Handler] Triggering a nested alarm.\n");
//         sigalarm(1, nested_handler); // Trigger a new alarm while handling the first one.
//     }

//     sigreturn();
// }

// // Signal handler interacting with a syscall
// void syscall_handler()
// {
//     syscall_count++;
//     printf("[Syscall Handler] Alarm fired! Syscall count = %d\n", syscall_count);

//     if (syscall_count == 2)
//     {
//         printf("[Syscall Handler] Making a syscall inside alarm handler.\n");
//         // Example syscall
//         int x = uptime();
//         printf("[Syscall Handler] Syscall (uptime) returned: %d\n", x);
//     }

//     sigreturn();
// }

// // Signal handler triggered during an I/O operation
// void io_handler()
// {
//     io_triggered++;
//     printf("[IO Handler] Alarm fired during I/O! Triggered count = %d\n", io_triggered);
//     sigreturn();
// }

// // Stress test handler
// void stress_test_handler()
// {
//     stress_signal_count++;
//     if (stress_signal_count % 100 == 0)
//     {
//         printf("[Stress Test] Stress signal count: %d\n", stress_signal_count);
//     }
//     sigreturn();
// }

// // Back-to-back alarm handler
// void back_to_back_handler()
// {
//     printf("[Back-to-Back Handler] Alarm fired back-to-back!\n");
//     sigalarm(1, back_to_back_handler); // Reset alarm immediately
//     sigreturn();
// }

// // Big test function covering multiple cases
// void big_test()
// {
//     printf("=== Big Test Start ===\n");
//     handler_count = 0;
//     nested_count = 0;
//     syscall_count = 0;
//     child_signal_count = 0;
//     io_triggered = 0;
//     stress_signal_count = 0;

//     // Part 1: Periodic alarm test
//     printf("\n--- Part 1: Periodic Alarm Test ---\n");
//     sigalarm(2, periodic_handler); // Set periodic alarm (2 ticks)

//     for (int i = 0; i < 500000000; i++)
//     {
//         if (handler_count >= 5)
//             break;
//     }

//     if (handler_count >= 5)
//         printf("[Test Result] Periodic alarm test passed.\n");
//     else
//         printf("[Test Result] Periodic alarm test failed.\n");

//     // Part 2: Nested alarms
//     printf("\n--- Part 2: Nested Alarms Test ---\n");
//     sigalarm(4, nested_handler);

//     for (int i = 0; i < 500000000; i++)
//     {
//         if (nested_count >= 2)
//             break;
//     }

//     if (nested_count >= 2)
//         printf("[Test Result] Nested alarm test passed.\n");
//     else
//         printf("[Test Result] Nested alarm test failed.\n");

//     // Part 3: Syscalls within alarms
//     printf("\n--- Part 3: Syscall During Alarm Test ---\n");
//     sigalarm(2, syscall_handler);

//     for (int i = 0; i < 500000000; i++)
//     {
//         if (syscall_count >= 3)
//             break;
//     }

//     if (syscall_count >= 3)
//         printf("[Test Result] Syscall alarm test passed.\n");
//     else
//         printf("[Test Result] Syscall alarm test failed.\n");

//     // Part 4: Signals during I/O operations
//     printf("\n--- Part 4: I/O Alarm Test ---\n");
//     printf("[Test] Triggering alarm during sleep (simulating I/O).\n");
//     sigalarm(2, io_handler);
//     sleep(10); // Simulate an I/O bound process (using sleep)

//     if (io_triggered > 0)
//         printf("[Test Result] I/O alarm test passed.\n");
//     else
//         printf("[Test Result] I/O alarm test failed.\n");

//     // Part 5: Child process signal handling
//     printf("\n--- Part 5: Child Process Signal Handling ---\n");

//     int pid = fork();
//     if (pid == 0)
//     {
//         printf("[Child Process] Starting child alarm test.\n");
//         sigalarm(1, periodic_handler);

//         for (int i = 0; i < 50000000; i++)
//         {
//             if (handler_count >= 3)
//                 break;
//         }

//         if (handler_count >= 3)
//             printf("[Child Test Result] Child alarm test passed.\n");
//         else
//             printf("[Child Test Result] Child alarm test failed.\n");
//         exit(0);
//     }
//     else
//     {
//         wait(0);
//         printf("[Parent Process] Child process completed.\n");
//     }

//     // Part 6: Edge case test - back-to-back alarms
//     printf("\n--- Part 6: Back-to-Back Alarm Test ---\n");
//     sigalarm(1, back_to_back_handler);

//     for (int i = 0; i < 1000000000; i++)
//     {
//         if (handler_count >= 5)
//             break;
//     }

//     printf("[Test Result] Back-to-back alarm test: %d alarms handled.\n", handler_count);

//     if (handler_count >= 5)
//         printf("[Test Result] Back-to-back alarm test passed.\n");
//     else
//         printf("[Test Result] Back-to-back alarm test failed.\n");

//     printf("[Test Result] Back-to-back alarm test finished.\n");

//     // Part 7: Stress test with high-volume alarms
//     printf("\n--- Part 7: Stress Test ---\n");
//     sigalarm(1, stress_test_handler);

//     for (int i = 0; i < 1000000000; i++)
//     {
//         if (stress_signal_count >= 1000)
//             break;
//     }

//     printf("[Test Result] Stress test: %d signals handled.\n", stress_signal_count);
//     if (stress_signal_count >= 1000)
//         printf("[Test Result] Stress test passed (1000 signals handled).\n");
//     else
//         printf("[Test Result] Stress test failed.\n");

//     // Part 8: Simulated multithreading (if applicable)
//     printf("\n--- Part 8: Multithreaded Alarm Test (Simulated with Fork) ---\n");
//     multithread_test();

//     printf("\n=== Big Test Finished ===\n");
// }

// void multithread_test()
// {
//     int num_threads = 3;
//     printf("[Multithread Test] Simulating %d processes with alarms.\n", num_threads);

//     for (int i = 0; i < num_threads; i++)
//     {
//         int pid = fork();
//         if (pid == 0)
//         {
//             sigalarm(2, periodic_handler);

//             for (int j = 0; j < 500000000; j++)
//             {
//                 if (handler_count >= 3)
//                     break;
//             }

//             printf("[Multithread Test] Process %d handled %d alarms.\n", getpid(), handler_count);
//             exit(0);
//         }
//     }

//     for (int i = 0; i < num_threads; i++)
//     {
//         wait(0);
//     }

//     printf("[Multithread Test] All child processes completed.\n");
// }