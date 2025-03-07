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


_Bool __unbuffered_p1_EAX$flush_delayed;


int __unbuffered_p1_EAX$mem_tmp;


_Bool __unbuffered_p1_EAX$r_buff0_thd0;


_Bool __unbuffered_p1_EAX$r_buff0_thd1;


_Bool __unbuffered_p1_EAX$r_buff0_thd2;


_Bool __unbuffered_p1_EAX$r_buff0_thd3;


_Bool __unbuffered_p1_EAX$r_buff1_thd0;


_Bool __unbuffered_p1_EAX$r_buff1_thd1;


_Bool __unbuffered_p1_EAX$r_buff1_thd2;


_Bool __unbuffered_p1_EAX$r_buff1_thd3;


_Bool __unbuffered_p1_EAX$read_delayed;


int *__unbuffered_p1_EAX$read_delayed_var;


int __unbuffered_p1_EAX$w_buff0;


_Bool __unbuffered_p1_EAX$w_buff0_used;


int __unbuffered_p1_EAX$w_buff1;


_Bool __unbuffered_p1_EAX$w_buff1_used;


int __unbuffered_p2_EAX;


int __unbuffered_p2_EAX = 0;


_Bool main$tmp_guard0;


_Bool main$tmp_guard1;


int x;


int x = 0;


_Bool x$flush_delayed;


int x$mem_tmp;


_Bool x$r_buff0_thd0;


_Bool x$r_buff0_thd1;


_Bool x$r_buff0_thd2;


_Bool x$r_buff0_thd3;


_Bool x$r_buff1_thd0;


_Bool x$r_buff1_thd1;


_Bool x$r_buff1_thd2;


_Bool x$r_buff1_thd3;


_Bool x$read_delayed;


int *x$read_delayed_var;


int x$w_buff0;


_Bool x$w_buff0_used;


int x$w_buff1;


_Bool x$w_buff1_used;


int y;


int y = 0;


int z;


int z = 0;


_Bool weak$$choice0;


_Bool weak$$choice1;


_Bool weak$$choice2;



void * P0(void *arg)
{
  __VERIFIER_atomic_begin();
  z = 2;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x$w_buff1 = x$w_buff0;
  x$w_buff0 = 1;
  x$w_buff1_used = x$w_buff0_used;
  x$w_buff0_used = TRUE;
  __VERIFIER_assert(!(x$w_buff1_used && x$w_buff0_used));
  x$r_buff1_thd0 = x$r_buff0_thd0;
  x$r_buff1_thd1 = x$r_buff0_thd1;
  x$r_buff1_thd2 = x$r_buff0_thd2;
  x$r_buff1_thd3 = x$r_buff0_thd3;
  x$r_buff0_thd1 = TRUE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x = x$w_buff0_used && x$r_buff0_thd1 ? x$w_buff0 : (x$w_buff1_used && x$r_buff1_thd1 ? x$w_buff1 : x);
  x$w_buff0_used = x$w_buff0_used && x$r_buff0_thd1 ? FALSE : x$w_buff0_used;
  x$w_buff1_used = x$w_buff0_used && x$r_buff0_thd1 || x$w_buff1_used && x$r_buff1_thd1 ? FALSE : x$w_buff1_used;
  x$r_buff0_thd1 = x$w_buff0_used && x$r_buff0_thd1 ? FALSE : x$r_buff0_thd1;
  x$r_buff1_thd1 = x$w_buff0_used && x$r_buff0_thd1 || x$w_buff1_used && x$r_buff1_thd1 ? FALSE : x$r_buff1_thd1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  __unbuffered_cnt = __unbuffered_cnt + 1;
  __VERIFIER_atomic_end();
  return 0;
}



void * P1(void *arg)
{
  __VERIFIER_atomic_begin();
  weak$$choice0 = __VERIFIER_nondet_bool();
  weak$$choice2 = __VERIFIER_nondet_bool();
  x$flush_delayed = weak$$choice2;
  x$mem_tmp = x;
  weak$$choice1 = __VERIFIER_nondet_bool();
  x = !x$w_buff0_used ? x : (x$w_buff0_used && x$r_buff0_thd2 ? x$w_buff0 : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? (weak$$choice0 ? x : (weak$$choice1 ? x$w_buff0 : x$w_buff1)) : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? (weak$$choice0 ? x$w_buff1 : x$w_buff0) : (weak$$choice0 ? x$w_buff0 : x))));
  x$w_buff0 = weak$$choice2 ? x$w_buff0 : (!x$w_buff0_used ? x$w_buff0 : (x$w_buff0_used && x$r_buff0_thd2 ? x$w_buff0 : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? x$w_buff0 : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? x$w_buff0 : x$w_buff0))));
  x$w_buff1 = weak$$choice2 ? x$w_buff1 : (!x$w_buff0_used ? x$w_buff1 : (x$w_buff0_used && x$r_buff0_thd2 ? x$w_buff1 : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? x$w_buff1 : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? x$w_buff1 : x$w_buff1))));
  x$w_buff0_used = weak$$choice2 ? x$w_buff0_used : (!x$w_buff0_used ? x$w_buff0_used : (x$w_buff0_used && x$r_buff0_thd2 ? FALSE : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? weak$$choice0 || !weak$$choice1 : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? weak$$choice0 : weak$$choice0))));
  x$w_buff1_used = weak$$choice2 ? x$w_buff1_used : (!x$w_buff0_used ? x$w_buff1_used : (x$w_buff0_used && x$r_buff0_thd2 ? FALSE : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? weak$$choice0 : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? FALSE : FALSE))));
  x$r_buff0_thd2 = weak$$choice2 ? x$r_buff0_thd2 : (!x$w_buff0_used ? x$r_buff0_thd2 : (x$w_buff0_used && x$r_buff0_thd2 ? FALSE : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? x$r_buff0_thd2 : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? FALSE : FALSE))));
  x$r_buff1_thd2 = weak$$choice2 ? x$r_buff1_thd2 : (!x$w_buff0_used ? x$r_buff1_thd2 : (x$w_buff0_used && x$r_buff0_thd2 ? FALSE : (x$w_buff0_used && !x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? (weak$$choice0 ? x$r_buff1_thd2 : FALSE) : (x$w_buff0_used && x$r_buff1_thd2 && x$w_buff1_used && !x$r_buff0_thd2 ? FALSE : FALSE))));
  __unbuffered_p1_EAX$read_delayed = TRUE;
  __unbuffered_p1_EAX$read_delayed_var = &x;
  __unbuffered_p1_EAX = x;
  x = x$flush_delayed ? x$mem_tmp : x;
  x$flush_delayed = FALSE;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  y = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x = x$w_buff0_used && x$r_buff0_thd2 ? x$w_buff0 : (x$w_buff1_used && x$r_buff1_thd2 ? x$w_buff1 : x);
  x$w_buff0_used = x$w_buff0_used && x$r_buff0_thd2 ? FALSE : x$w_buff0_used;
  x$w_buff1_used = x$w_buff0_used && x$r_buff0_thd2 || x$w_buff1_used && x$r_buff1_thd2 ? FALSE : x$w_buff1_used;
  x$r_buff0_thd2 = x$w_buff0_used && x$r_buff0_thd2 ? FALSE : x$r_buff0_thd2;
  x$r_buff1_thd2 = x$w_buff0_used && x$r_buff0_thd2 || x$w_buff1_used && x$r_buff1_thd2 ? FALSE : x$r_buff1_thd2;
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
  z = 1;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  x = x$w_buff0_used && x$r_buff0_thd3 ? x$w_buff0 : (x$w_buff1_used && x$r_buff1_thd3 ? x$w_buff1 : x);
  x$w_buff0_used = x$w_buff0_used && x$r_buff0_thd3 ? FALSE : x$w_buff0_used;
  x$w_buff1_used = x$w_buff0_used && x$r_buff0_thd3 || x$w_buff1_used && x$r_buff1_thd3 ? FALSE : x$w_buff1_used;
  x$r_buff0_thd3 = x$w_buff0_used && x$r_buff0_thd3 ? FALSE : x$r_buff0_thd3;
  x$r_buff1_thd3 = x$w_buff0_used && x$r_buff0_thd3 || x$w_buff1_used && x$r_buff1_thd3 ? FALSE : x$r_buff1_thd3;
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
  pthread_t t1964;
  pthread_create(&t1964, NULL, P0, NULL);
  pthread_t t1965;
  pthread_create(&t1965, NULL, P1, NULL);
  pthread_t t1966;
  pthread_create(&t1966, NULL, P2, NULL);
  __VERIFIER_atomic_begin();
  main$tmp_guard0 = __unbuffered_cnt == 3;
  __VERIFIER_atomic_end();
  __VERIFIER_assume(main$tmp_guard0);
  __VERIFIER_atomic_begin();
  x = x$w_buff0_used && x$r_buff0_thd0 ? x$w_buff0 : (x$w_buff1_used && x$r_buff1_thd0 ? x$w_buff1 : x);
  x$w_buff0_used = x$w_buff0_used && x$r_buff0_thd0 ? FALSE : x$w_buff0_used;
  x$w_buff1_used = x$w_buff0_used && x$r_buff0_thd0 || x$w_buff1_used && x$r_buff1_thd0 ? FALSE : x$w_buff1_used;
  x$r_buff0_thd0 = x$w_buff0_used && x$r_buff0_thd0 ? FALSE : x$r_buff0_thd0;
  x$r_buff1_thd0 = x$w_buff0_used && x$r_buff0_thd0 || x$w_buff1_used && x$r_buff1_thd0 ? FALSE : x$r_buff1_thd0;
  __VERIFIER_atomic_end();
  __VERIFIER_atomic_begin();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  weak$$choice1 = __VERIFIER_nondet_bool();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __unbuffered_p1_EAX = __unbuffered_p1_EAX$read_delayed ? (weak$$choice1 ? *__unbuffered_p1_EAX$read_delayed_var : __unbuffered_p1_EAX) : __unbuffered_p1_EAX;
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  main$tmp_guard1 = !(z == 2 && __unbuffered_p1_EAX == 1 && __unbuffered_p2_EAX == 1);
  __VERIFIER_atomic_end();
  /* Program was expected to be safe for X86, model checker should have said NO.
This likely is a bug in the tool chain. */
  __VERIFIER_assert(main$tmp_guard1);
  return 0;
}

