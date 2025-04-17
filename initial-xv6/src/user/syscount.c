#include "kernel/types.h"
#include "kernel/stat.h"
#include "user/user.h"

int
main(int argc, char *argv[])
{
  if(argc < 3){
    fprintf(2, "Usage: syscount <mask> command [args...]\n");
    exit(1);
  }

  int mask = atoi(argv[1]);
  
  if(getsyscount(mask) < 0){
    fprintf(2, "syscount: getsyscount failed\n");
    exit(1);
  }

  exec(argv[2], argv + 2);
  fprintf(2, "syscount: exec failed\n");
  exit(1);
}