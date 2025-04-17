#include "kernel/types.h"
#include "user/user.h"

void print(const char *s) {
    write(1, s, strlen(s));
}

void print_int(int x) {
    char buf[16];
    int i = 0;
    if(x == 0)
        buf[i++] = '0';
    else {
        while(x > 0) {
            buf[i++] = (x % 10) + '0';
            x /= 10;
        }
    }
    while(i > 0) {
        i--;
        write(1, &buf[i], 1);
    }
}
int main(int argc, char *argv[]) {
    if(argc != 5) {
        print("Usage: test_multi_lbs <runtime_seconds> <tickets1> <tickets2> <iterations>\n");
        exit(1);
    }
    
    int runtime = atoi(argv[1]);
    int tickets1 = atoi(argv[2]);
    int tickets2 = atoi(argv[3]);
    int iterations = atoi(argv[4]);
    
    int total_dots1 = 0;
    int total_dots2 = 0;
    
    for(int iter = 0; iter < iterations; iter++) {
        int pid1 = fork();
        if(pid1 == 0) {
            // Child process 1
            if(settickets(tickets1) < 0) {
                print("settickets failed for child 1\n");
                exit(1);
            }
            
            int start_time = uptime();
            int current_time;
            int dots_printed = 0;
            while((current_time = uptime()) - start_time < runtime * 10) {
                if (current_time % 10 == 0) {
                    write(1, "1", 1);
                    dots_printed++;
                }
                for(volatile int i = 0; i < 1000; i++); // busy-wait
            }
            
            exit(dots_printed);
        } else if(pid1 < 0) {
            print("Fork failed for child 1\n");
            exit(1);
        }
        
        int pid2 = fork();
        if(pid2 == 0) {
            // Child process 2
            if(settickets(tickets2) < 0) {
                print("settickets failed for child 2\n");
                exit(1);
            }
            
            int start_time = uptime();
            int current_time;
            int dots_printed = 0;
            while((current_time = uptime()) - start_time < runtime * 10) {
                if (current_time % 10 == 0) {
                    write(1, "2", 1);
                    dots_printed++;
                }
                for(volatile int i = 0; i < 1000; i++); // busy-wait
            }
            
            exit(dots_printed);
        } else if(pid2 < 0) {
            print("Fork failed for child 2\n");
            exit(1);
        }
        
        // Parent process
        int status1, status2;
        wait(&status1);
        wait(&status2);
        
        total_dots1 += status1;
        total_dots2 += status2;
        
        print("\nIteration ");
        print_int(iter + 1);
        print(" complete\n");
    }
    
    print("\nAverage results over ");
    print_int(iterations);
    print(" iterations:\n");
    print("Child 1 (");
    print_int(tickets1);
    print(" tickets) average dots: ");
    print_int(total_dots1 / iterations);
    print("\nChild 2 (");
    print_int(tickets2);
    print(" tickets) average dots: ");
    print_int(total_dots2 / iterations);
    print("\n");
    
    exit(0);
}