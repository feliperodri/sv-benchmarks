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


void fence();


void isync();


void lwfence();




int __unbuffered_cnt;


int __unbuffered_cnt = 0;


int __unbuffered_p1_EAX;


int __unbuffered_p1_EAX = 0;


int __unbuffered_p2_EAX;


int __unbuffered_p2_EAX = 0;


int __unbuffered_p2_EBX;


int __unbuffered_p2_EBX = 0;


_Bool main$tmp_guard0;


_Bool main$tmp_guard1;


int x;


int x = 0;


int y;


int y = 0;


_Bool y$flush_delayed;


int y$mem_tmp;


_Bool y$r_buff0_thd0;


_Bool y$r_buff0_thd1;


_Bool y$r_buff0_thd2;


_Bool y$r_buff0_thd3;


_Bool y$r_buff1_thd0;


_Bool y$r_buff1_thd1;


_Bool y$r_buff1_thd2;


_Bool y$r_buff1_thd3;


_Bool y$read_delayed;


int *y$read_delayed_var;


int y$w_buff0;


_Bool y$w_buff0_used;


int y$w_buff1;


_Bool y$w_buff1_used;


_Bool weak$$choice0;


_Bool weak$$choice2;



void * P0(void *arg)
{
  __VERIFIER_atomic_begin();
  y$w_buff1 = y$w_buff0;
  y$w_buff0 = 2;
  y$w_buff1_used = y$w_buff0_used;
  y$w_buff0_used = TRUE;
  __VERIFIER_assert(!(y$w_buff1_used && y$w_buff0_used));
  y$r_buff1_thd0 = y$r_buff0_thd0;
  y$r_buff1_thd1 = y$r_buff0_thd1;
  y$r_buff1_thd2 = y$r_buff0_thd2;
  y$r_buff1_thd3 = y$r_buff0_thd3;
  y$r_buff0_thd1 = TRUE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  y = y$w_buff0_used && y$r_buff0_thd1 ? y$w_buff0 : (y$w_buff1_used && y$r_buff1_thd1 ? y$w_buff1 : y);
  y$w_buff0_used = y$w_buff0_used && y$r_buff0_thd1 ? FALSE : y$w_buff0_used;
  y$w_buff1_used = y$w_buff0_used && y$r_buff0_thd1 || y$w_buff1_used && y$r_buff1_thd1 ? FALSE : y$w_buff1_used;
  y$r_buff0_thd1 = y$w_buff0_used && y$r_buff0_thd1 ? FALSE : y$r_buff0_thd1;
  y$r_buff1_thd1 = y$w_buff0_used && y$r_buff0_thd1 || y$w_buff1_used && y$r_buff1_thd1 ? FALSE : y$r_buff1_thd1;
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
  y = y$w_buff0_used && y$r_buff0_thd2 ? y$w_buff0 : (y$w_buff1_used && y$r_buff1_thd2 ? y$w_buff1 : y);
  y$w_buff0_used = y$w_buff0_used && y$r_buff0_thd2 ? FALSE : y$w_buff0_used;
  y$w_buff1_used = y$w_buff0_used && y$r_buff0_thd2 || y$w_buff1_used && y$r_buff1_thd2 ? FALSE : y$w_buff1_used;
  y$r_buff0_thd2 = y$w_buff0_used && y$r_buff0_thd2 ? FALSE : y$r_buff0_thd2;
  y$r_buff1_thd2 = y$w_buff0_used && y$r_buff0_thd2 || y$w_buff1_used && y$r_buff1_thd2 ? FALSE : y$r_buff1_thd2;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void * P2(void *arg)
{
  __VERIFIER_atomic_begin();
  weak$$choice0 = __VERIFIER_nondet_bool();
  weak$$choice2 = __VERIFIER_nondet_bool();
  y$flush_delayed = weak$$choice2;
  y$mem_tmp = y;
  y = !y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff0 : y$w_buff1);
  y$w_buff0 = weak$$choice2 ? y$w_buff0 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff0 : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff0 : y$w_buff0));
  y$w_buff1 = weak$$choice2 ? y$w_buff1 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff1 : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff1 : y$w_buff1));
  y$w_buff0_used = weak$$choice2 ? y$w_buff0_used : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff0_used : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$w_buff0_used));
  y$w_buff1_used = weak$$choice2 ? y$w_buff1_used : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff1_used : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : FALSE));
  y$r_buff0_thd3 = weak$$choice2 ? y$r_buff0_thd3 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$r_buff0_thd3 : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$r_buff0_thd3));
  y$r_buff1_thd3 = weak$$choice2 ? y$r_buff1_thd3 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$r_buff1_thd3 : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : FALSE));
  __unbuffered_p2_EAX = y;
  y = y$flush_delayed ? y$mem_tmp : y;
  y$flush_delayed = FALSE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  weak$$choice0 = __VERIFIER_nondet_bool();
  weak$$choice2 = __VERIFIER_nondet_bool();
  y$flush_delayed = weak$$choice2;
  y$mem_tmp = y;
  y = !y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff0 : y$w_buff1);
  y$w_buff0 = weak$$choice2 ? y$w_buff0 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff0 : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff0 : y$w_buff0));
  y$w_buff1 = weak$$choice2 ? y$w_buff1 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff1 : (y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff1 : y$w_buff1));
  y$w_buff0_used = weak$$choice2 ? y$w_buff0_used : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff0_used : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$w_buff0_used));
  y$w_buff1_used = weak$$choice2 ? y$w_buff1_used : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$w_buff1_used : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : FALSE));
  y$r_buff0_thd3 = weak$$choice2 ? y$r_buff0_thd3 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$r_buff0_thd3 : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$r_buff0_thd3));
  y$r_buff1_thd3 = weak$$choice2 ? y$r_buff1_thd3 : (!y$w_buff0_used || !y$r_buff0_thd3 && !y$w_buff1_used || !y$r_buff0_thd3 && !y$r_buff1_thd3 ? y$r_buff1_thd3 : (y$w_buff0_used && y$r_buff0_thd3 ? FALSE : FALSE));
  __unbuffered_p2_EBX = y;
  y = y$flush_delayed ? y$mem_tmp : y;
  y$flush_delayed = FALSE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  y = y$w_buff0_used && y$r_buff0_thd3 ? y$w_buff0 : (y$w_buff1_used && y$r_buff1_thd3 ? y$w_buff1 : y);
  y$w_buff0_used = y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$w_buff0_used;
  y$w_buff1_used = y$w_buff0_used && y$r_buff0_thd3 || y$w_buff1_used && y$r_buff1_thd3 ? FALSE : y$w_buff1_used;
  y$r_buff0_thd3 = y$w_buff0_used && y$r_buff0_thd3 ? FALSE : y$r_buff0_thd3;
  y$r_buff1_thd3 = y$w_buff0_used && y$r_buff0_thd3 || y$w_buff1_used && y$r_buff1_thd3 ? FALSE : y$r_buff1_thd3;
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
  pthread_t t1858;
  pthread_create(&t1858, NULL, P0, NULL);
  pthread_t t1859;
  pthread_create(&t1859, NULL, P1, NULL);
  pthread_t t1860;
  pthread_create(&t1860, NULL, P2, NULL);
  __VERIFIER_atomic_begin();
  main$tmp_guard0 = __unbuffered_cnt == 3;
  __VERIFIER_atomic_end();
  __VERIFIER_assume(main$tmp_guard0);
  __VERIFIER_atomic_begin();
  y = y$w_buff0_used && y$r_buff0_thd0 ? y$w_buff0 : (y$w_buff1_used && y$r_buff1_thd0 ? y$w_buff1 : y);
  y$w_buff0_used = y$w_buff0_used && y$r_buff0_thd0 ? FALSE : y$w_buff0_used;
  y$w_buff1_used = y$w_buff0_used && y$r_buff0_thd0 || y$w_buff1_used && y$r_buff1_thd0 ? FALSE : y$w_buff1_used;
  y$r_buff0_thd0 = y$w_buff0_used && y$r_buff0_thd0 ? FALSE : y$r_buff0_thd0;
  y$r_buff1_thd0 = y$w_buff0_used && y$r_buff0_thd0 || y$w_buff1_used && y$r_buff1_thd0 ? FALSE : y$r_buff1_thd0;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  weak$$choice0 = __VERIFIER_nondet_bool();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  weak$$choice2 = __VERIFIER_nondet_bool();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$flush_delayed = weak$$choice2;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$mem_tmp = y;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y = !y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y : (y$w_buff0_used && y$r_buff0_thd0 ? y$w_buff0 : y$w_buff1);
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$w_buff0 = weak$$choice2 ? y$w_buff0 : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$w_buff0 : (y$w_buff0_used && y$r_buff0_thd0 ? y$w_buff0 : y$w_buff0));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$w_buff1 = weak$$choice2 ? y$w_buff1 : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$w_buff1 : (y$w_buff0_used && y$r_buff0_thd0 ? y$w_buff1 : y$w_buff1));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$w_buff0_used = weak$$choice2 ? y$w_buff0_used : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$w_buff0_used : (y$w_buff0_used && y$r_buff0_thd0 ? FALSE : y$w_buff0_used));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$w_buff1_used = weak$$choice2 ? y$w_buff1_used : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$w_buff1_used : (y$w_buff0_used && y$r_buff0_thd0 ? FALSE : FALSE));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$r_buff0_thd0 = weak$$choice2 ? y$r_buff0_thd0 : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$r_buff0_thd0 : (y$w_buff0_used && y$r_buff0_thd0 ? FALSE : y$r_buff0_thd0));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$r_buff1_thd0 = weak$$choice2 ? y$r_buff1_thd0 : (!y$w_buff0_used || !y$r_buff0_thd0 && !y$w_buff1_used || !y$r_buff0_thd0 && !y$r_buff1_thd0 ? y$r_buff1_thd0 : (y$w_buff0_used && y$r_buff0_thd0 ? FALSE : FALSE));
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  main$tmp_guard1 = !(y == 2 && __unbuffered_p1_EAX == 1 && __unbuffered_p2_EAX == 1 && __unbuffered_p2_EBX == 1);
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y = y$flush_delayed ? y$mem_tmp : y;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  y$flush_delayed = FALSE;
  __VERIFIER_atomic_end();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __VERIFIER_assert(main$tmp_guard1);
  return 0;
}

