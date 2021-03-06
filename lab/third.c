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
  int n, j, i, k, selector;
  prevset = set = m2;
  for (k=0; k<384; k++) {
    j=k%3;
    n=k>>3;
    selector=3&(k>>5);
    set=selector?m1:m2;
    if (set != prevset) {
      printf(" \\bar \"||\"");
      prevset = set;
    }
    if (k%8==0) printf("\n");
    printf("  %-5s", set[(n+j)%8]);
  }
  printf("\n");
  return 0;
}
