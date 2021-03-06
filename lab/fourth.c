#include <stdio.h>

static const char *m1[] = {
  "f", "aes", "c'", "ees", "aes", "f", "ees", "c"
};
static const char *m2[] = {
  "g", "bes", "c'", "ees", "bes", "g", "ees", "c"
};

int main(void)
{
  const char **set, **prevset;
  int n, j, k, selector;
  prevset = set = m2;
  for (k=0; k<768; k++) {    // k is i>>10
    // 4th voice: 8+n-((i>>10)%3
    j = k%3;
    n = k>>4;
    selector=3&(k>>6);
    set=selector?m1:m2;
    if (set != prevset) {
      printf(" \\bar \".\"");
      //printf(" [%d]", selector?2:1);
      prevset = set;
    }
    if (k%16==0) printf("\n");
    printf(" %-4s", set[(8+n-j)%8]);
    //printf(" %-4d", (8+n-j)%8);
  }
  printf("\n");
  return 0;
}
