extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned short __u16;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef unsigned short umode_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __u16 uint16_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned int gfp_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct page;
struct page;
struct task_struct;
struct task_struct;
struct cpumask;
struct cpumask;
struct arch_spinlock;
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
struct kmem_cache;
typedef atomic64_t atomic_long_t;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_5907_29 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_5907_29 ldv_5907 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct lockdep_map;
struct lockdep_map;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
};
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_ldv_6122_33 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6123_32 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6122_33 ldv_6122 ;
};
struct spinlock {
   union __anonunion_ldv_6123_32 ldv_6123 ;
};
typedef struct spinlock spinlock_t;
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct sock;
struct sock;
struct kobject;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int objsize ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct proc_dir_entry;
struct irqaction;
struct clock_event_device;
struct clock_event_device;
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   void *dev_id ;
   void *percpu_dev_id ;
   struct irqaction *next ;
   int irq ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
   unsigned long thread_mask ;
   char const *name ;
   struct proc_dir_entry *dir ;
};
struct cs5535_mfgpt_timer;
struct cs5535_mfgpt_timer;
enum clock_event_mode {
    CLOCK_EVT_MODE_UNUSED = 0,
    CLOCK_EVT_MODE_SHUTDOWN = 1,
    CLOCK_EVT_MODE_PERIODIC = 2,
    CLOCK_EVT_MODE_ONESHOT = 3,
    CLOCK_EVT_MODE_RESUME = 4
} ;
struct clock_event_device {
   void (*event_handler)(struct clock_event_device * ) ;
   int (*set_next_event)(unsigned long , struct clock_event_device * ) ;
   int (*set_next_ktime)(ktime_t , struct clock_event_device * ) ;
   ktime_t next_event ;
   u64 max_delta_ns ;
   u64 min_delta_ns ;
   u32 mult ;
   u32 shift ;
   enum clock_event_mode mode ;
   unsigned int features ;
   unsigned long retries ;
   void (*broadcast)(struct cpumask const * ) ;
   void (*set_mode)(enum clock_event_mode , struct clock_event_device * ) ;
   unsigned long min_delta_ticks ;
   unsigned long max_delta_ticks ;
   char const *name ;
   int rating ;
   int irq ;
   struct cpumask const *cpumask ;
   struct list_head list ;
};
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
int ldv_spin_trylock(void) ;
extern int printk(char const * , ...) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
void ldv_check_alloc_nonatomic(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags ) ;
extern int setup_irq(unsigned int , struct irqaction * ) ;
extern uint16_t cs5535_mfgpt_read(struct cs5535_mfgpt_timer * , uint16_t ) ;
extern void cs5535_mfgpt_write(struct cs5535_mfgpt_timer * , uint16_t , uint16_t ) ;
extern int cs5535_mfgpt_set_irq(struct cs5535_mfgpt_timer * , int , int * , int ) ;
extern struct cs5535_mfgpt_timer *cs5535_mfgpt_alloc_timer(int , int ) ;
extern void cs5535_mfgpt_free_timer(struct cs5535_mfgpt_timer * ) ;
__inline static int cs5535_mfgpt_setup_irq(struct cs5535_mfgpt_timer *timer , int cmp ,
                                           int *irq )
{ int tmp ;
  {
  {
  tmp = cs5535_mfgpt_set_irq(timer, cmp, irq, 1);
  }
  return (tmp);
}
}
__inline static int cs5535_mfgpt_release_irq(struct cs5535_mfgpt_timer *timer , int cmp ,
                                             int *irq )
{ int tmp ;
  {
  {
  tmp = cs5535_mfgpt_set_irq(timer, cmp, irq, 0);
  }
  return (tmp);
}
}
__inline static unsigned long div_sc(unsigned long ticks , unsigned long nsec , int shift )
{ uint64_t tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  unsigned long long __cil_tmp7 ;
  uint64_t __cil_tmp8 ;
  unsigned long long __cil_tmp9 ;
  uint64_t __cil_tmp10 ;
  {
  __cil_tmp7 = (unsigned long long )ticks;
  tmp = __cil_tmp7 << shift;
  __base = (uint32_t )nsec;
  __cil_tmp8 = (uint64_t )__base;
  __cil_tmp9 = tmp % __cil_tmp8;
  __rem = (uint32_t )__cil_tmp9;
  __cil_tmp10 = (uint64_t )__base;
  tmp = tmp / __cil_tmp10;
  return ((unsigned long )tmp);
}
}
extern u64 clockevent_delta2ns(unsigned long , struct clock_event_device * ) ;
extern void clockevents_register_device(struct clock_event_device * ) ;
static int timer_irq ;
static unsigned int cs5535_tick_mode = 1U;
static struct cs5535_mfgpt_timer *cs5535_event_clock ;
static void disable_timer(struct cs5535_mfgpt_timer *timer )
{ uint16_t __cil_tmp2 ;
  uint16_t __cil_tmp3 ;
  {
  {
  __cil_tmp2 = (uint16_t )6;
  __cil_tmp3 = (uint16_t )32767;
  cs5535_mfgpt_write(timer, __cil_tmp2, __cil_tmp3);
  }
  return;
}
}
static void start_timer(struct cs5535_mfgpt_timer *timer , uint16_t delta )
{ uint16_t __cil_tmp3 ;
  int __cil_tmp4 ;
  uint16_t __cil_tmp5 ;
  uint16_t __cil_tmp6 ;
  uint16_t __cil_tmp7 ;
  uint16_t __cil_tmp8 ;
  uint16_t __cil_tmp9 ;
  {
  {
  __cil_tmp3 = (uint16_t )2;
  __cil_tmp4 = (int )delta;
  __cil_tmp5 = (uint16_t )__cil_tmp4;
  cs5535_mfgpt_write(timer, __cil_tmp3, __cil_tmp5);
  __cil_tmp6 = (uint16_t )4;
  __cil_tmp7 = (uint16_t )0;
  cs5535_mfgpt_write(timer, __cil_tmp6, __cil_tmp7);
  __cil_tmp8 = (uint16_t )6;
  __cil_tmp9 = (uint16_t )49152;
  cs5535_mfgpt_write(timer, __cil_tmp8, __cil_tmp9);
  }
  return;
}
}
static void mfgpt_set_mode(enum clock_event_mode mode , struct clock_event_device *evt )
{ unsigned int __cil_tmp3 ;
  uint16_t __cil_tmp4 ;
  {
  {
  disable_timer(cs5535_event_clock);
  }
  {
  __cil_tmp3 = (unsigned int )mode;
  if (__cil_tmp3 == 2U) {
    {
    __cil_tmp4 = (uint16_t )8;
    start_timer(cs5535_event_clock, __cil_tmp4);
    }
  } else {
  }
  }
  cs5535_tick_mode = (unsigned int )mode;
  return;
}
}
static int mfgpt_next_event(unsigned long delta , struct clock_event_device *evt )
{ uint16_t __cil_tmp3 ;
  int __cil_tmp4 ;
  uint16_t __cil_tmp5 ;
  {
  {
  __cil_tmp3 = (uint16_t )delta;
  __cil_tmp4 = (int )__cil_tmp3;
  __cil_tmp5 = (uint16_t )__cil_tmp4;
  start_timer(cs5535_event_clock, __cil_tmp5);
  }
  return (0);
}
}
static struct clock_event_device cs5535_clockevent =
     {(void (*)(struct clock_event_device * ))0, & mfgpt_next_event, (int (*)(ktime_t ,
                                                                            struct clock_event_device * ))0,
    {0LL}, 0ULL, 0ULL, 0U, 32U, 0, 3U, 0UL, (void (*)(struct cpumask const * ))0,
    & mfgpt_set_mode, 0UL, 0UL, "cs5535-clockevt", 250, 0, (struct cpumask const *)0,
    {(struct list_head *)0, (struct list_head *)0}};
static irqreturn_t mfgpt_tick(int irq , void *dev_id )
{ uint16_t val ;
  uint16_t tmp ;
  uint16_t __cil_tmp5 ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  uint16_t __cil_tmp8 ;
  uint16_t __cil_tmp9 ;
  uint16_t __cil_tmp10 ;
  uint16_t __cil_tmp11 ;
  struct clock_event_device *__cil_tmp12 ;
  void (*__cil_tmp13)(struct clock_event_device * ) ;
  {
  {
  __cil_tmp5 = (uint16_t )6;
  tmp = cs5535_mfgpt_read(cs5535_event_clock, __cil_tmp5);
  val = tmp;
  }
  {
  __cil_tmp6 = (int )val;
  __cil_tmp7 = __cil_tmp6 & 28672;
  if (__cil_tmp7 == 0) {
    return ((irqreturn_t )0);
  } else {
  }
  }
  {
  disable_timer(cs5535_event_clock);
  }
  if (cs5535_tick_mode == 1U) {
    return ((irqreturn_t )1);
  } else {
  }
  {
  __cil_tmp8 = (uint16_t )4;
  __cil_tmp9 = (uint16_t )0;
  cs5535_mfgpt_write(cs5535_event_clock, __cil_tmp8, __cil_tmp9);
  }
  if (cs5535_tick_mode == 2U) {
    {
    __cil_tmp10 = (uint16_t )6;
    __cil_tmp11 = (uint16_t )49152;
    cs5535_mfgpt_write(cs5535_event_clock, __cil_tmp10, __cil_tmp11);
    }
  } else {
  }
  {
  __cil_tmp12 = & cs5535_clockevent;
  __cil_tmp13 = *((void (**)(struct clock_event_device * ))__cil_tmp12);
  (*__cil_tmp13)(& cs5535_clockevent);
  }
  return ((irqreturn_t )1);
}
}
static struct irqaction mfgptirq =
     {& mfgpt_tick, 84640UL, (void *)0, (void *)0, (struct irqaction *)0, 0, (irqreturn_t (*)(int ,
                                                                                            void * ))0,
    (struct task_struct *)0, 0UL, 0UL, "cs5535-clockevt", (struct proc_dir_entry *)0};
static int cs5535_mfgpt_init(void)
{ struct cs5535_mfgpt_timer *timer ;
  int ret ;
  uint16_t val ;
  int tmp ;
  unsigned long tmp___0 ;
  struct cs5535_mfgpt_timer *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  int *__cil_tmp9 ;
  int __cil_tmp10 ;
  int *__cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  uint16_t __cil_tmp14 ;
  int __cil_tmp15 ;
  uint16_t __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u32 __cil_tmp18 ;
  int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int *__cil_tmp23 ;
  int __cil_tmp24 ;
  {
  {
  timer = cs5535_mfgpt_alloc_timer(-1, 1);
  }
  {
  __cil_tmp6 = (struct cs5535_mfgpt_timer *)0;
  __cil_tmp7 = (unsigned long )__cil_tmp6;
  __cil_tmp8 = (unsigned long )timer;
  if (__cil_tmp8 == __cil_tmp7) {
    {
    printk("<3>cs5535-clockevt: Could not allocate MFPGT timer\n");
    }
    return (-19);
  } else {
  }
  }
  {
  cs5535_event_clock = timer;
  tmp = cs5535_mfgpt_setup_irq(timer, 1, & timer_irq);
  }
  if (tmp != 0) {
    {
    __cil_tmp9 = & timer_irq;
    __cil_tmp10 = *__cil_tmp9;
    printk("<3>cs5535-clockevt: Could not set up IRQ %d\n", __cil_tmp10);
    }
    goto err_timer;
  } else {
  }
  {
  __cil_tmp11 = & timer_irq;
  __cil_tmp12 = *__cil_tmp11;
  __cil_tmp13 = (unsigned int )__cil_tmp12;
  ret = setup_irq(__cil_tmp13, & mfgptirq);
  }
  if (ret != 0) {
    {
    printk("<3>cs5535-clockevt: Unable to set up the interrupt.\n");
    }
    goto err_irq;
  } else {
  }
  {
  val = (uint16_t )772U;
  __cil_tmp14 = (uint16_t )6;
  __cil_tmp15 = (int )val;
  __cil_tmp16 = (uint16_t )__cil_tmp15;
  cs5535_mfgpt_write(cs5535_event_clock, __cil_tmp14, __cil_tmp16);
  __cil_tmp17 = (unsigned long )(& cs5535_clockevent) + 52;
  __cil_tmp18 = *((u32 *)__cil_tmp17);
  __cil_tmp19 = (int )__cil_tmp18;
  tmp___0 = div_sc(2048UL, 1000000000UL, __cil_tmp19);
  __cil_tmp20 = (unsigned long )(& cs5535_clockevent) + 48;
  *((u32 *)__cil_tmp20) = (u32 )tmp___0;
  __cil_tmp21 = (unsigned long )(& cs5535_clockevent) + 40;
  *((u64 *)__cil_tmp21) = clockevent_delta2ns(15UL, & cs5535_clockevent);
  __cil_tmp22 = (unsigned long )(& cs5535_clockevent) + 32;
  *((u64 *)__cil_tmp22) = clockevent_delta2ns(65534UL, & cs5535_clockevent);
  __cil_tmp23 = & timer_irq;
  __cil_tmp24 = *__cil_tmp23;
  printk("<6>cs5535-clockevt: Registering MFGPT timer as a clock event, using IRQ %d\n",
         __cil_tmp24);
  clockevents_register_device(& cs5535_clockevent);
  }
  return (0);
  err_irq:
  {
  cs5535_mfgpt_release_irq(cs5535_event_clock, 1, & timer_irq);
  }
  err_timer:
  {
  cs5535_mfgpt_free_timer(cs5535_event_clock);
  printk("<3>cs5535-clockevt: Unable to set up the MFGPT clock source\n");
  }
  return (-5);
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ enum clock_event_mode var_mfgpt_set_mode_2_p0 ;
  struct clock_event_device *var_group1 ;
  unsigned long var_mfgpt_next_event_3_p0 ;
  int var_mfgpt_tick_4_p0 ;
  void *var_mfgpt_tick_4_p1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp = cs5535_mfgpt_init();
  }
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_16170;
  ldv_16169:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 == 0) {
    goto case_0;
  } else
  if (tmp___0 == 1) {
    goto case_1;
  } else
  if (tmp___0 == 2) {
    goto case_2;
  } else
  if (tmp___0 == 3) {
    goto case_3;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      {
      mfgpt_set_mode(var_mfgpt_set_mode_2_p0, var_group1);
      }
      goto ldv_16164;
      case_1:
      {
      mfgpt_next_event(var_mfgpt_next_event_3_p0, var_group1);
      }
      goto ldv_16164;
      case_2:
      {
      mfgpt_tick(var_mfgpt_tick_4_p0, var_mfgpt_tick_4_p1);
      }
      goto ldv_16164;
      case_3:
      {
      LDV_IN_INTERRUPT = 2;
      mfgpt_tick(var_mfgpt_tick_4_p0, var_mfgpt_tick_4_p1);
      LDV_IN_INTERRUPT = 1;
      }
      goto ldv_16164;
      switch_default: ;
      goto ldv_16164;
    } else {
      switch_break: ;
    }
    }
  }
  ldv_16164: ;
  ldv_16170:
  {
  tmp___1 = __VERIFIER_nondet_int();
  }
  if (tmp___1 != 0) {
    goto ldv_16169;
  } else {
    goto ldv_16171;
  }
  ldv_16171: ;
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{ struct page *tmp ;
  {
  if (ldv_spin != 0) {
    if (flags != 32U) {
      {
      ldv_blast_assert();
      }
    } else {
    }
  } else {
  }
  {
  tmp = ldv_some_page();
  }
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{ int is_lock ;
  {
  {
  is_lock = __VERIFIER_nondet_int();
  }
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
void *ldv_kmem_cache_alloc_16(struct kmem_cache *ldv_func_arg1 , gfp_t ldv_func_arg2 )
{
  {
  {
  ldv_check_alloc_flags(ldv_func_arg2);
  kmem_cache_alloc(ldv_func_arg1, ldv_func_arg2);
  }
  return ((void *)0);
}
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 clockevent_delta2ns(unsigned long arg0, struct clock_event_device *arg1) {
  return __VERIFIER_nondet_ulong();
}
void clockevents_register_device(struct clock_event_device *arg0) {
  return;
}
struct cs5535_mfgpt_timer *cs5535_mfgpt_alloc_timer(int arg0, int arg1) {
  return ldv_malloc(0UL);
}
void cs5535_mfgpt_free_timer(struct cs5535_mfgpt_timer *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
uint16_t cs5535_mfgpt_read(struct cs5535_mfgpt_timer *arg0, uint16_t arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int cs5535_mfgpt_set_irq(struct cs5535_mfgpt_timer *arg0, int arg1, int *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void cs5535_mfgpt_write(struct cs5535_mfgpt_timer *arg0, uint16_t arg1, uint16_t arg2) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
struct page *ldv_some_page() {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int setup_irq(unsigned int arg0, struct irqaction *arg1) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
