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
int init_module(void) ;
void cleanup_module(void) ;
extern int rc_map_register(struct rc_map_list *map ) ;
extern void rc_map_unregister(struct rc_map_list *map ) ;
static struct rc_map_table medion_x10[53] =
  { {(u32 )44, (u32 )377},
        {(u32 )45, (u32 )379},
        {(u32 )4, (u32 )389},
        {(u32 )6, (u32 )392},
        {(u32 )46, (u32 )385},
        {(u32 )5, (u32 )394},
        {(u32 )47, (u32 )358},
        {(u32 )48, (u32 )395},
        {(u32 )27, (u32 )141},
        {(u32 )49, (u32 )393},
        {(u32 )8, (u32 )114},
        {(u32 )9, (u32 )115},
        {(u32 )11, (u32 )402},
        {(u32 )12, (u32 )403},
        {(u32 )0, (u32 )113},
        {(u32 )50, (u32 )398},
        {(u32 )51, (u32 )399},
        {(u32 )52, (u32 )400},
        {(u32 )53, (u32 )401},
        {(u32 )22, (u32 )388},
        {(u32 )13, (u32 )2},
        {(u32 )14, (u32 )3},
        {(u32 )15, (u32 )4},
        {(u32 )16, (u32 )5},
        {(u32 )17, (u32 )6},
        {(u32 )18, (u32 )7},
        {(u32 )19, (u32 )8},
        {(u32 )20, (u32 )9},
        {(u32 )21, (u32 )10},
        {(u32 )23, (u32 )11},
        {(u32 )28, (u32 )217},
        {(u32 )32, (u32 )111},
        {(u32 )54, (u32 )374},
        {(u32 )24, (u32 )375},
        {(u32 )26, (u32 )103},
        {(u32 )34, (u32 )108},
        {(u32 )29, (u32 )105},
        {(u32 )31, (u32 )106},
        {(u32 )30, (u32 )352},
        {(u32 )55, (u32 )353},
        {(u32 )56, (u32 )176},
        {(u32 )36, (u32 )168},
        {(u32 )37, (u32 )207},
        {(u32 )38, (u32 )159},
        {(u32 )39, (u32 )167},
        {(u32 )40, (u32 )128},
        {(u32 )41, (u32 )119},
        {(u32 )33, (u32 )412},
        {(u32 )57, (u32 )227},
        {(u32 )35, (u32 )407},
        {(u32 )25, (u32 )139},
        {(u32 )58, (u32 )368},
        {(u32 )2, (u32 )116}};
static struct rc_map_list medion_x10_map = {{(struct list_head *)0, (struct list_head *)0}, {medion_x10, (unsigned int )(sizeof(medion_x10) / sizeof(medion_x10[0]) + sizeof(struct __anonstruct_220 )),
                                                     0U, 0U, (u64 )(1U << 31), "rc-medion-x10",
                                                     {{{{{0U}}, 0U, 0U, (void *)0}}}}};
static int init_rc_map_medion_x10(void) __attribute__((__section__(".init.text"),
__no_instrument_function__)) ;
static int init_rc_map_medion_x10(void)
{ int tmp ;
  {
  {
  tmp = rc_map_register(& medion_x10_map);
  }
  return (tmp);
}
}
static void exit_rc_map_medion_x10(void) __attribute__((__section__(".exit.text"),
__no_instrument_function__)) ;
static void exit_rc_map_medion_x10(void)
{
  {
  {
  rc_map_unregister(& medion_x10_map);
  }
  return;
}
}
int init_module(void)
{ int tmp ;
  {
  {
  tmp = init_rc_map_medion_x10();
  }
  return (tmp);
}
}
void cleanup_module(void)
{
  {
  {
  exit_rc_map_medion_x10();
  }
  return;
}
}
static char const __mod_license117[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author118[44] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'A',
        (char const )'n', (char const )'s', (char const )'s', (char const )'i',
        (char const )' ', (char const )'H', (char const )'a', (char const )'n',
        (char const )'n', (char const )'u', (char const )'l', (char const )'a',
        (char const )' ', (char const )'<', (char const )'a', (char const )'n',
        (char const )'s', (char const )'s', (char const )'i', (char const )'.',
        (char const )'h', (char const )'a', (char const )'n', (char const )'n',
        (char const )'u', (char const )'l', (char const )'a', (char const )'@',
        (char const )'i', (char const )'k', (char const )'i', (char const )'.',
        (char const )'f', (char const )'i', (char const )'>', (char const )'\000'};
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
  tmp = init_rc_map_medion_x10();
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
  exit_rc_map_medion_x10();
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
