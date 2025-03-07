extern void __VERIFIER_assume(int);
extern _Bool __VERIFIER_nondet_bool(void);
extern void __VERIFIER_error() __attribute__ ((__noreturn__));
void __VERIFIER_assert(int expression) { if (!expression) { ERROR: __VERIFIER_error(); }; return; }
extern void __VERIFIER_atomic_begin();
extern void __VERIFIER_atomic_end();

#include <assert.h>
#include <pthread.h>
#ifndef TRUE
#define TRUE (_Bool)1
#endif
#ifndef FALSE
#define FALSE (_Bool)0
#endif
#ifndef NULL
#define NULL ((void*)0)
#endif
#ifndef FENCE
#define FENCE(x) ((void)0)
#endif
#ifndef IEEE_FLOAT_EQUAL
#define IEEE_FLOAT_EQUAL(x,y) (x==y)
#endif
#ifndef IEEE_FLOAT_NOTEQUAL
#define IEEE_FLOAT_NOTEQUAL(x,y) (x!=y)
#endif



void * P0(void *arg);


void * P1(void *arg);


void * P2(void *arg);


void * P3(void *arg);


void fence();


void isync();


void lwfence();




int __unbuffered_cnt;


int __unbuffered_cnt = 0;


int __unbuffered_p0_EAX;


int __unbuffered_p0_EAX = 0;


int __unbuffered_p1_EAX;


int __unbuffered_p1_EAX = 0;


int __unbuffered_p2_EAX;


int __unbuffered_p2_EAX = 0;


int __unbuffered_p3_EAX;


int __unbuffered_p3_EAX = 0;


_Bool __unbuffered_p3_EAX$flush_delayed;


int __unbuffered_p3_EAX$mem_tmp;


_Bool __unbuffered_p3_EAX$r_buff0_thd0;


_Bool __unbuffered_p3_EAX$r_buff0_thd1;


_Bool __unbuffered_p3_EAX$r_buff0_thd2;


_Bool __unbuffered_p3_EAX$r_buff0_thd3;


_Bool __unbuffered_p3_EAX$r_buff0_thd4;


_Bool __unbuffered_p3_EAX$r_buff1_thd0;


_Bool __unbuffered_p3_EAX$r_buff1_thd1;


_Bool __unbuffered_p3_EAX$r_buff1_thd2;


_Bool __unbuffered_p3_EAX$r_buff1_thd3;


_Bool __unbuffered_p3_EAX$r_buff1_thd4;


_Bool __unbuffered_p3_EAX$read_delayed;


int *__unbuffered_p3_EAX$read_delayed_var;


int __unbuffered_p3_EAX$w_buff0;


_Bool __unbuffered_p3_EAX$w_buff0_used;


int __unbuffered_p3_EAX$w_buff1;


_Bool __unbuffered_p3_EAX$w_buff1_used;


int a;


int a = 0;


_Bool main$tmp_guard0;


_Bool main$tmp_guard1;


int x;


int x = 0;


int y;


int y = 0;


int z;


int z = 0;


_Bool z$flush_delayed;


int z$mem_tmp;


_Bool z$r_buff0_thd0;


_Bool z$r_buff0_thd1;


_Bool z$r_buff0_thd2;


_Bool z$r_buff0_thd3;


_Bool z$r_buff0_thd4;


_Bool z$r_buff1_thd0;


_Bool z$r_buff1_thd1;


_Bool z$r_buff1_thd2;


_Bool z$r_buff1_thd3;


_Bool z$r_buff1_thd4;


_Bool z$read_delayed;


int *z$read_delayed_var;


int z$w_buff0;


_Bool z$w_buff0_used;


int z$w_buff1;


_Bool z$w_buff1_used;


_Bool weak$$choice0;


_Bool weak$$choice1;


_Bool weak$$choice2;



void * P0(void *arg)
{
  __VERIFIER_atomic_begin();
  __unbuffered_p0_EAX = a;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void * P1(void *arg)
{
  __VERIFIER_atomic_begin();
  __unbuffered_p1_EAX = x;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  y = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void * P2(void *arg)
{
  __VERIFIER_atomic_begin();
  __unbuffered_p2_EAX = y;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  z$w_buff1 = z$w_buff0;
  z$w_buff0 = 1;
  z$w_buff1_used = z$w_buff0_used;
  z$w_buff0_used = TRUE;
  __VERIFIER_assert(!(z$w_buff1_used && z$w_buff0_used));
  z$r_buff1_thd0 = z$r_buff0_thd0;
  z$r_buff1_thd1 = z$r_buff0_thd1;
  z$r_buff1_thd2 = z$r_buff0_thd2;
  z$r_buff1_thd3 = z$r_buff0_thd3;
  z$r_buff1_thd4 = z$r_buff0_thd4;
  z$r_buff0_thd3 = TRUE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  z = z$w_buff0_used && z$r_buff0_thd3 ? z$w_buff0 : (z$w_buff1_used && z$r_buff1_thd3 ? z$w_buff1 : z);
  z$w_buff0_used = z$w_buff0_used && z$r_buff0_thd3 ? FALSE : z$w_buff0_used;
  z$w_buff1_used = z$w_buff0_used && z$r_buff0_thd3 || z$w_buff1_used && z$r_buff1_thd3 ? FALSE : z$w_buff1_used;
  z$r_buff0_thd3 = z$w_buff0_used && z$r_buff0_thd3 ? FALSE : z$r_buff0_thd3;
  z$r_buff1_thd3 = z$w_buff0_used && z$r_buff0_thd3 || z$w_buff1_used && z$r_buff1_thd3 ? FALSE : z$r_buff1_thd3;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void * P3(void *arg)
{
  __VERIFIER_atomic_begin();
  weak$$choice0 = __VERIFIER_nondet_bool();
  weak$$choice2 = __VERIFIER_nondet_bool();
  z$flush_delayed = weak$$choice2;
  z$mem_tmp = z;
  weak$$choice1 = __VERIFIER_nondet_bool();
  z = !z$w_buff0_used ? z : (z$w_buff0_used && z$r_buff0_thd4 ? z$w_buff0 : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? (weak$$choice0 ? z : (weak$$choice1 ? z$w_buff0 : z$w_buff1)) : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? (weak$$choice0 ? z$w_buff1 : z$w_buff0) : (weak$$choice0 ? z$w_buff0 : z))));
  z$w_buff0 = weak$$choice2 ? z$w_buff0 : (!z$w_buff0_used ? z$w_buff0 : (z$w_buff0_used && z$r_buff0_thd4 ? z$w_buff0 : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? z$w_buff0 : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? z$w_buff0 : z$w_buff0))));
  z$w_buff1 = weak$$choice2 ? z$w_buff1 : (!z$w_buff0_used ? z$w_buff1 : (z$w_buff0_used && z$r_buff0_thd4 ? z$w_buff1 : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? z$w_buff1 : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? z$w_buff1 : z$w_buff1))));
  z$w_buff0_used = weak$$choice2 ? z$w_buff0_used : (!z$w_buff0_used ? z$w_buff0_used : (z$w_buff0_used && z$r_buff0_thd4 ? FALSE : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? weak$$choice0 || !weak$$choice1 : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? weak$$choice0 : weak$$choice0))));
  z$w_buff1_used = weak$$choice2 ? z$w_buff1_used : (!z$w_buff0_used ? z$w_buff1_used : (z$w_buff0_used && z$r_buff0_thd4 ? FALSE : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? weak$$choice0 : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? FALSE : FALSE))));
  z$r_buff0_thd4 = weak$$choice2 ? z$r_buff0_thd4 : (!z$w_buff0_used ? z$r_buff0_thd4 : (z$w_buff0_used && z$r_buff0_thd4 ? FALSE : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? z$r_buff0_thd4 : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? FALSE : FALSE))));
  z$r_buff1_thd4 = weak$$choice2 ? z$r_buff1_thd4 : (!z$w_buff0_used ? z$r_buff1_thd4 : (z$w_buff0_used && z$r_buff0_thd4 ? FALSE : (z$w_buff0_used && !z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? (weak$$choice0 ? z$r_buff1_thd4 : FALSE) : (z$w_buff0_used && z$r_buff1_thd4 && z$w_buff1_used && !z$r_buff0_thd4 ? FALSE : FALSE))));
  __unbuffered_p3_EAX$read_delayed = TRUE;
  __unbuffered_p3_EAX$read_delayed_var = &z;
  __unbuffered_p3_EAX = z;
  z = z$flush_delayed ? z$mem_tmp : z;
  z$flush_delayed = FALSE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  a = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  z = z$w_buff0_used && z$r_buff0_thd4 ? z$w_buff0 : (z$w_buff1_used && z$r_buff1_thd4 ? z$w_buff1 : z);
  z$w_buff0_used = z$w_buff0_used && z$r_buff0_thd4 ? FALSE : z$w_buff0_used;
  z$w_buff1_used = z$w_buff0_used && z$r_buff0_thd4 || z$w_buff1_used && z$r_buff1_thd4 ? FALSE : z$w_buff1_used;
  z$r_buff0_thd4 = z$w_buff0_used && z$r_buff0_thd4 ? FALSE : z$r_buff0_thd4;
  z$r_buff1_thd4 = z$w_buff0_used && z$r_buff0_thd4 || z$w_buff1_used && z$r_buff1_thd4 ? FALSE : z$r_buff1_thd4;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void fence()
{
  
}



void isync()
{
  
}



void lwfence()
{
  
}



int main()
{
  pthread_t t2709;
  pthread_create(&t2709, NULL, P0, NULL);
  pthread_t t2710;
  pthread_create(&t2710, NULL, P1, NULL);
  pthread_t t2711;
  pthread_create(&t2711, NULL, P2, NULL);
  pthread_t t2712;
  pthread_create(&t2712, NULL, P3, NULL);
  __VERIFIER_atomic_begin();
  main$tmp_guard0 = __unbuffered_cnt == 4;
  __VERIFIER_atomic_end();
  __VERIFIER_assume(main$tmp_guard0);
  __VERIFIER_atomic_begin();
  z = z$w_buff0_used && z$r_buff0_thd0 ? z$w_buff0 : (z$w_buff1_used && z$r_buff1_thd0 ? z$w_buff1 : z);
  z$w_buff0_used = z$w_buff0_used && z$r_buff0_thd0 ? FALSE : z$w_buff0_used;
  z$w_buff1_used = z$w_buff0_used && z$r_buff0_thd0 || z$w_buff1_used && z$r_buff1_thd0 ? FALSE : z$w_buff1_used;
  z$r_buff0_thd0 = z$w_buff0_used && z$r_buff0_thd0 ? FALSE : z$r_buff0_thd0;
  z$r_buff1_thd0 = z$w_buff0_used && z$r_buff0_thd0 || z$w_buff1_used && z$r_buff1_thd0 ? FALSE : z$r_buff1_thd0;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  weak$$choice1 = __VERIFIER_nondet_bool();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __unbuffered_p3_EAX = __unbuffered_p3_EAX$read_delayed ? (weak$$choice1 ? *__unbuffered_p3_EAX$read_delayed_var : __unbuffered_p3_EAX) : __unbuffered_p3_EAX;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  main$tmp_guard1 = !(__unbuffered_p0_EAX == 1 && __unbuffered_p1_EAX == 1 && __unbuffered_p2_EAX == 1 && __unbuffered_p3_EAX == 1);
  __VERIFIER_atomic_end();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __VERIFIER_assert(main$tmp_guard1);
  return 0;
}

