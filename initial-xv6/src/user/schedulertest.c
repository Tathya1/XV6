// #include "kernel/types.h"
// #include "kernel/stat.h"
// #include "user/user.h"
// #include "kernel/fcntl.h"

// #define NFORK 10
// #define IO 5

// int main()
// {
//   int n, pid;
//   int wtime, rtime;
//   int twtime = 0, trtime = 0;
//   for (n = 0; n < NFORK; n++)
//   {
//     //new4
//     if (n == 8)
//       settickets(20);
//     else
//       settickets(1);
//     //new4
//     pid = fork();
//     if (pid < 0)
//       break;
//     if (pid == 0)
//     {
//       if (n < IO)
//       {

//         sleep(200); // IO bound processes
//       }
//       else
//       {

//         for (volatile int i = 0; i < 1000000000; i++)
//         {
//         } // CPU bound process
//       }
//       // printf("Process %d finished\n", n);
//       exit(0);
//     }
//   }
//   for (; n > 0; n--)
//   {
//     if (waitx(0, &wtime, &rtime) >= 0)
//     {
//       trtime += rtime;
//       twtime += wtime;
//     }
//   }
//   printf("Average rtime %d,  wtime %d\n", trtime / NFORK, twtime / NFORK);
//   exit(0);
// }



// #include "kernel/types.h"
// #include "kernel/stat.h"
// #include "user/user.h"
// #include "kernel/fcntl.h"

// #define NFORK 10
// #define IO 5

// int main()
// {
//   int n, pid;
//   int wtime, rtime;
//   int twtime = 0, trtime = 0;
//   for (n = 0; n < NFORK; n++)
//   {
//     for(int i=0; i<100000000; i++)
//     {
//     }
//     pid = fork();
//     if (pid < 0)
//       break;
//     if (pid == 0)
//     {
// // #ifndef FCFS
//       if (n < IO)
//       {
//         sleep(200); // IO bound processes
//       }
//       else
//       {
// // #endif
//         #ifdef LBS
        
//           printf("%d\n", settickets(2*n + 10));
//           settickets(2*n + 10);
        
//         #endif  
//         for (volatile int i = 0; i < 1000000000; i++)
//         {
//         } // CPU bound process
// // #ifndef FCFS
//       }
// // #endif
//       // printf("\nProcess %d finished", n);
//       exit(0);
//     }
//   }
//   for (; n > 0; n--)
//   {
//     if (waitx(0, &wtime, &rtime) >= 0)
//     {
//       trtime += rtime;
//       twtime += wtime;
//     }
//   }
//   printf("\nAverage rtime %d,  wtime %d\n", trtime / NFORK, twtime / NFORK);
//   exit(0);
// }


// #include "kernel/types.h"
// #include "kernel/stat.h"
// #include "user/user.h"
// #include "kernel/fcntl.h"

// #define NFORK 4
// #define RUNTIME 1000000000

// int main()
// {
//   int n, pid;
//   int wtime, rtime;
//   int twtime = 0, trtime = 0;

//   for (n = 0; n < NFORK; n++)
//   {
//     pid = fork();
//     if (pid < 0)
//       break;
//     if (pid == 0)
//     {
//       // Child process
//       switch(n) {
//         case 0:
//           // CPU-bound process
//           for (volatile long long i = 0; i < RUNTIME; i++) {}
//           break;
//         case 1:
//           // Mixed CPU-I/O process
//           for (int j = 0; j < 100; j++) {
//             for (volatile long long i = 0; i < RUNTIME / 200; i++) {}
//             sleep(1);
//           }
//           break;
//         case 2:
//           // I/O-bound process
//           for (int j = 0; j < 1000; j++) {
//             sleep(1);
//           }
//           break;
//         case 3:
//           // CPU-bound process with priority boost
//           setpriority(0,0); // Set highest priority (assuming lower value means higher priority)
//           for (volatile long long i = 0; i < RUNTIME; i++) {}
//           break;
//       }
//       printf("Process %d finished\n", n);
//       exit(0);
//     }
//   }

//   for (; n > 0; n--)
//   {
//     if (waitx(0, &wtime, &rtime) >= 0)
//     {
//       trtime += rtime;
//       twtime += wtime;
//     }
//   }
//   printf("Average rtime %d,  wtime %d\n", trtime / NFORK, twtime / NFORK);
//   exit(0);
// }


#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"
#include "kernel/fcntl.h"

#define NFORK 10
#define IO 5

int main()
{
  int n, pid;
  int wtime, rtime;
  int twtime = 0, trtime = 0;
  for (n = 0; n < NFORK; n++)
  {
    pid = fork();
    if (pid < 0)
      break;
    if (pid == 0)
    {
      if (n < IO)
      { 
        sleep(200); // IO bound processes
      }
      else
      {
#ifdef LBS
        settickets(2 * n + 10);
#endif
        for (volatile int i = 0; i < 1000000000; i++)
        {
        } // CPU bound process
      }
      // printf("Process %d finished\n", n);
      exit(0);
    }
  }
  for (; n > 0; n--)
  {
    if (waitx(0, &wtime, &rtime) >= 0)
    {
      trtime += rtime;
      twtime += wtime;
    }
  }
  printf("Average rtime %d,  wtime %d\n", trtime / NFORK, twtime / NFORK);
  exit(0);
}