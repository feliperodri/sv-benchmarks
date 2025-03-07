extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short u16;
typedef unsigned int u32;
typedef unsigned long long u64;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct task_struct;
struct task_struct;
struct task_struct;
struct task_struct;
struct arch_spinlock;
struct arch_spinlock;
struct task_struct;
struct task_struct;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_36 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_36 __annonCompField17 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct task_struct;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
};
struct task_struct;
struct rc_map_table {
   u32 scancode ;
   u32 keycode ;
};
struct rc_map {
   struct rc_map_table *scan ;
   unsigned int size ;
   unsigned int len ;
   unsigned int alloc ;
   u64 rc_type ;
   char const *name ;
   spinlock_t lock ;
};
struct rc_map_list {
   struct list_head list ;
   struct rc_map map ;
};
struct task_struct;
struct __anonstruct_220 {
   int : 0 ;
};
long ldv__builtin_expect(long val , long res ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern int rc_map_register(struct rc_map_list *map ) ;
extern void rc_map_unregister(struct rc_map_list *map ) ;
int init_module(void) ;
void cleanup_module(void) ;
static struct rc_map_table imon_pad[90] =
  { {(u32 )713135543, (u32 )168},
        {(u32 )696456631, (u32 )168},
        {(u32 )729879991, (u32 )208},
        {(u32 )730011063, (u32 )208},
        {(u32 )730928567, (u32 )412},
        {(u32 )696358327, (u32 )407},
        {(u32 )713102775, (u32 )207},
        {(u32 )713233847, (u32 )207},
        {(u32 )714151351, (u32 )119},
        {(u32 )731321783, (u32 )128},
        {(u32 )696325559, (u32 )167},
        {(u32 )16809984, (u32 )103},
        {(u32 )16809728, (u32 )108},
        {(u32 )16777344, (u32 )105},
        {(u32 )16777343, (u32 )106},
        {(u32 )715462071, (u32 )103},
        {(u32 )680859063, (u32 )108},
        {(u32 )698684855, (u32 )105},
        {(u32 )732239287, (u32 )106},
        {(u32 )33554476, (u32 )57},
        {(u32 )714282423, (u32 )57},
        {(u32 )33554472, (u32 )28},
        {(u32 )681678263, (u32 )28},
        {(u32 )679581111, (u32 )174},
        {(u32 )33554473, (u32 )1},
        {(u32 )733418935, (u32 )1},
        {(u32 )33554474, (u32 )14},
        {(u32 )681645495, (u32 )14},
        {(u32 )731223479, (u32 )113},
        {(u32 )681809335, (u32 )115},
        {(u32 )681940407, (u32 )114},
        {(u32 )680760759, (u32 )402},
        {(u32 )679974327, (u32 )403},
        {(u32 )33554462, (u32 )513},
        {(u32 )33554463, (u32 )514},
        {(u32 )33554464, (u32 )515},
        {(u32 )33554465, (u32 )516},
        {(u32 )33554466, (u32 )517},
        {(u32 )33554467, (u32 )518},
        {(u32 )33554468, (u32 )519},
        {(u32 )33554469, (u32 )520},
        {(u32 )33554470, (u32 )521},
        {(u32 )33554471, (u32 )512},
        {(u32 )682988983, (u32 )513},
        {(u32 )733058487, (u32 )514},
        {(u32 )682726839, (u32 )515},
        {(u32 )713397687, (u32 )516},
        {(u32 )697669047, (u32 )517},
        {(u32 )715494839, (u32 )518},
        {(u32 )731092407, (u32 )519},
        {(u32 )713364919, (u32 )520},
        {(u32 )715199927, (u32 )521},
        {(u32 )732272055, (u32 )512},
        {(u32 )35651621, (u32 )522},
        {(u32 )682956215, (u32 )522},
        {(u32 )35651616, (u32 )523},
        {(u32 )698422711, (u32 )523},
        {(u32 )730142135, (u32 )393},
        {(u32 )697406903, (u32 )392},
        {(u32 )731977143, (u32 )442},
        {(u32 )681907639, (u32 )377},
        {(u32 )698586551, (u32 )389},
        {(u32 )698521015, (u32 )389},
        {(u32 )732136887, (u32 )139},
        {(u32 )732140983, (u32 )139},
        {(u32 )679810487, (u32 )156},
        {(u32 )716641719, (u32 )212},
        {(u32 )696620471, (u32 )370},
        {(u32 )730174903, (u32 )368},
        {(u32 )698717623, (u32 )372},
        {(u32 )715363767, (u32 )375},
        {(u32 )697374135, (u32 )374},
        {(u32 )697382327, (u32 )374},
        {(u32 )16842752, (u32 )272},
        {(u32 )16908288, (u32 )273},
        {(u32 )16842880, (u32 )272},
        {(u32 )16908416, (u32 )273},
        {(u32 )1753416119, (u32 )272},
        {(u32 )1753514423, (u32 )273},
        {(u32 )714315191, (u32 )154},
        {(u32 )730043831, (u32 )359},
        {(u32 )680596919, (u32 )116},
        {(u32 )699504055, (u32 )161},
        {(u32 )697537975, (u32 )162},
        {(u32 )41943040, (u32 )438},
        {(u32 )729912759, (u32 )438},
        {(u32 )33554533, (u32 )127},
        {(u32 )683087287, (u32 )127},
        {(u32 )716281271, (u32 )226},
        {(u32 )699864503, (u32 )204}};
static struct rc_map_list imon_pad_map = {{(struct list_head *)0, (struct list_head *)0}, {imon_pad, (unsigned int )(sizeof(imon_pad) / sizeof(imon_pad[0]) + sizeof(struct __anonstruct_220 )),
                                                     0U, 0U, (u64 )(1U << 31), "rc-imon-pad",
                                                     {{{{{0U}}, 0U, 0U, (void *)0}}}}};
static int init_rc_map_imon_pad(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int init_rc_map_imon_pad(void)
{ int tmp ;
  {
  {
  tmp = rc_map_register(& imon_pad_map);
  }
  return (tmp);
}
}
static void exit_rc_map_imon_pad(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void exit_rc_map_imon_pad(void)
{
  {
  {
  rc_map_unregister(& imon_pad_map);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = init_rc_map_imon_pad();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  exit_rc_map_imon_pad();
  }
  return;
}
}
static char const __mod_license157[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author158[39] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'J',
        (char const )'a', (char const )'r', (char const )'o', (char const )'d',
        (char const )' ', (char const )'W', (char const )'i', (char const )'l',
        (char const )'s', (char const )'o', (char const )'n', (char const )' ',
        (char const )'<', (char const )'j', (char const )'a', (char const )'r',
        (char const )'o', (char const )'d', (char const )'@', (char const )'r',
        (char const )'e', (char const )'d', (char const )'h', (char const )'a',
        (char const )'t', (char const )'.', (char const )'c', (char const )'o',
        (char const )'m', (char const )'>', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = init_rc_map_imon_pad();
  }
  if (tmp) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___1 = __VERIFIER_nondet_int();
    }
    if (tmp___1) {
    } else {
      goto while_break;
    }
    {
    tmp___0 = __VERIFIER_nondet_int();
    }
    {
    goto switch_default;
    if (0) {
      switch_default:
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  while_break: ;
  }
  {
  exit_rc_map_imon_pad();
  }
  ldv_final:
  {
  ldv_check_final_state();
  }
  return;
}
}
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
int ldv_mutex = 1;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  atomic_value_after_dec = __VERIFIER_nondet_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void mutex_lock(struct mutex *lock )
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 2;
  return;
}
}
int mutex_trylock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  {
  nondetermined = __VERIFIER_nondet_int();
  }
  if (nondetermined) {
    ldv_mutex = 2;
    return (1);
  } else {
    return (0);
  }
}
}
void mutex_unlock(struct mutex *lock )
{
  {
  if (ldv_mutex == 2) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  ldv_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex == 1) {
  } else {
    {
    ldv_blast_assert();
    }
  }
  return;
}
}
long ldv__builtin_expect(long val , long res )
{
  {
  return (val);
}
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int rc_map_register(struct rc_map_list *arg0) {
  return __VERIFIER_nondet_int();
}
void rc_map_unregister(struct rc_map_list *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
