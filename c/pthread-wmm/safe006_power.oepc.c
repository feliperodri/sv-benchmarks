extern _Bool __VERIFIER_nondet_bool(void);
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


void fence();


void isync();


void lwfence();




int __unbuffered_cnt;


int __unbuffered_cnt = 0;


int __unbuffered_p0_EAX;


int __unbuffered_p0_EAX = 0;


_Bool __unbuffered_p0_EAX$flush_delayed;


int __unbuffered_p0_EAX$mem_tmp;


_Bool __unbuffered_p0_EAX$r_buff0_thd0;


_Bool __unbuffered_p0_EAX$r_buff0_thd1;


_Bool __unbuffered_p0_EAX$r_buff0_thd2;


_Bool __unbuffered_p0_EAX$r_buff1_thd0;


_Bool __unbuffered_p0_EAX$r_buff1_thd1;


_Bool __unbuffered_p0_EAX$r_buff1_thd2;


_Bool __unbuffered_p0_EAX$read_delayed;


int *__unbuffered_p0_EAX$read_delayed_var;


int __unbuffered_p0_EAX$w_buff0;


_Bool __unbuffered_p0_EAX$w_buff0_used;


int __unbuffered_p0_EAX$w_buff1;


_Bool __unbuffered_p0_EAX$w_buff1_used;


int __unbuffered_p1_EAX;


int __unbuffered_p1_EAX = 0;


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


_Bool y$r_buff1_thd0;


_Bool y$r_buff1_thd1;


_Bool y$r_buff1_thd2;


_Bool y$read_delayed;


int *y$read_delayed_var;


int y$w_buff0;


_Bool y$w_buff0_used;


int y$w_buff1;


_Bool y$w_buff1_used;


_Bool weak$$choice0;


_Bool weak$$choice1;


_Bool weak$$choice2;



void * P0(void *arg)
{
  __VERIFIER_atomic_begin();
  weak$$choice0 = __VERIFIER_nondet_bool();
  weak$$choice2 = __VERIFIER_nondet_bool();
  y$flush_delayed = weak$$choice2;
  y$mem_tmp = y;
  weak$$choice1 = __VERIFIER_nondet_bool();
  y = !y$w_buff0_used ? y : (y$w_buff0_used && y$r_buff0_thd1 ? y$w_buff0 : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? (weak$$choice0 ? y : (weak$$choice1 ? y$w_buff0 : y$w_buff1)) : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? (weak$$choice0 ? y$w_buff1 : y$w_buff0) : (weak$$choice0 ? y$w_buff0 : y))));
  y$w_buff0 = weak$$choice2 ? y$w_buff0 : (!y$w_buff0_used ? y$w_buff0 : (y$w_buff0_used && y$r_buff0_thd1 ? y$w_buff0 : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? y$w_buff0 : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? y$w_buff0 : y$w_buff0))));
  y$w_buff1 = weak$$choice2 ? y$w_buff1 : (!y$w_buff0_used ? y$w_buff1 : (y$w_buff0_used && y$r_buff0_thd1 ? y$w_buff1 : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? y$w_buff1 : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? y$w_buff1 : y$w_buff1))));
  y$w_buff0_used = weak$$choice2 ? y$w_buff0_used : (!y$w_buff0_used ? y$w_buff0_used : (y$w_buff0_used && y$r_buff0_thd1 ? FALSE : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? weak$$choice0 || !weak$$choice1 : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? weak$$choice0 : weak$$choice0))));
  y$w_buff1_used = weak$$choice2 ? y$w_buff1_used : (!y$w_buff0_used ? y$w_buff1_used : (y$w_buff0_used && y$r_buff0_thd1 ? FALSE : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? weak$$choice0 : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? FALSE : FALSE))));
  y$r_buff0_thd1 = weak$$choice2 ? y$r_buff0_thd1 : (!y$w_buff0_used ? y$r_buff0_thd1 : (y$w_buff0_used && y$r_buff0_thd1 ? FALSE : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? y$r_buff0_thd1 : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? FALSE : FALSE))));
  y$r_buff1_thd1 = weak$$choice2 ? y$r_buff1_thd1 : (!y$w_buff0_used ? y$r_buff1_thd1 : (y$w_buff0_used && y$r_buff0_thd1 ? FALSE : (y$w_buff0_used && !y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? (weak$$choice0 ? y$r_buff1_thd1 : FALSE) : (y$w_buff0_used && y$r_buff1_thd1 && y$w_buff1_used && !y$r_buff0_thd1 ? FALSE : FALSE))));
  __unbuffered_p0_EAX$read_delayed = TRUE;
  __unbuffered_p0_EAX$read_delayed_var = &y;
  __unbuffered_p0_EAX = y;
  y = y$flush_delayed ? y$mem_tmp : y;
  y$flush_delayed = FALSE;
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
  pthread_t t1921;
  pthread_create(&t1921, NULL, P0, NULL);
  pthread_t t1922;
  pthread_create(&t1922, NULL, P1, NULL);
  __VERIFIER_atomic_begin();
  main$tmp_guard0 = __unbuffered_cnt == 2;
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
  weak$$choice1 = __VERIFIER_nondet_bool();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __unbuffered_p0_EAX = __unbuffered_p0_EAX$read_delayed ? (weak$$choice1 ? *__unbuffered_p0_EAX$read_delayed_var : __unbuffered_p0_EAX) : __unbuffered_p0_EAX;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  main$tmp_guard1 = !(__unbuffered_p0_EAX == 1 && __unbuffered_p1_EAX == 1);
  __VERIFIER_atomic_end();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __VERIFIER_assert(main$tmp_guard1);
  return 0;
}

