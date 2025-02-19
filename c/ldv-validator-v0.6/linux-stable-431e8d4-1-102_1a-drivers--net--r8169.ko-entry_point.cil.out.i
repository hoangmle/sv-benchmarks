extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef unsigned short umode_t;
typedef u64 dma_addr_t;
typedef unsigned int __kernel_mode_t;
typedef unsigned long __kernel_nlink_t;
typedef long __kernel_off_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid_t;
typedef unsigned int __kernel_gid_t;
typedef unsigned long __kernel_size_t;
typedef long __kernel_ssize_t;
typedef long __kernel_time_t;
typedef long __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef long long __kernel_loff_t;
typedef __kernel_uid_t __kernel_uid32_t;
typedef __kernel_gid_t __kernel_gid32_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef __kernel_mode_t mode_t;
typedef __kernel_nlink_t nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
typedef __u32 __wsum;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct timespec;
struct compat_timespec;
struct __anonstruct_ldv_981_9 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_10 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_11 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_12 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_1004_8 {
   struct __anonstruct_ldv_981_9 ldv_981 ;
   struct __anonstruct_futex_10 futex ;
   struct __anonstruct_nanosleep_11 nanosleep ;
   struct __anonstruct_poll_12 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_1004_8 ldv_1004 ;
};
struct module;
struct page;
struct task_struct;
struct exec_domain;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
typedef void (*ctor_fn_t)(void);
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_1590_13 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_1590_13 ldv_1590 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pid;
enum system_states {
    SYSTEM_BOOTING = 0,
    SYSTEM_RUNNING = 1,
    SYSTEM_HALT = 2,
    SYSTEM_POWER_OFF = 3,
    SYSTEM_RESTART = 4,
    SYSTEM_SUSPEND_DISK = 5
} ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_16 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_16 pgd_t;
struct file;
struct seq_file;
struct __anonstruct_ldv_2129_20 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2144_21 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2145_19 {
   struct __anonstruct_ldv_2129_20 ldv_2129 ;
   struct __anonstruct_ldv_2144_21 ldv_2144 ;
};
struct desc_struct {
   union __anonunion_ldv_2145_19 ldv_2145 ;
};
struct thread_struct;
struct cpumask;
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct seq_operations;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_4712_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_4718_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_4719_24 {
   struct __anonstruct_ldv_4712_25 ldv_4712 ;
   struct __anonstruct_ldv_4718_26 ldv_4718 ;
};
union __anonunion_ldv_4728_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_4719_24 ldv_4719 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_4728_27 ldv_4728 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_no ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_29 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_29 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   int uaccess_err ;
};
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_arch_rwlock_t_30 {
   unsigned int lock ;
};
typedef struct __anonstruct_arch_rwlock_t_30 arch_rwlock_t;
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
   struct lock_class *class_cache ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5718_32 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5719_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5718_32 ldv_5718 ;
};
struct spinlock {
   union __anonunion_ldv_5719_31 ldv_5719 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_33 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_33 rwlock_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_seqlock_t_34 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_34 seqlock_t;
struct __anonstruct_nodemask_t_35 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_35 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct thread_info *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
typedef long rwsem_count_t;
struct rw_semaphore {
   rwsem_count_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct ctl_table;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
struct device;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   void *start_site ;
   char start_comm[16U] ;
   int start_pid ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum dpm_state {
    DPM_INVALID = 0,
    DPM_ON = 1,
    DPM_PREPARING = 2,
    DPM_RESUMING = 3,
    DPM_SUSPENDING = 4,
    DPM_OFF = 5,
    DPM_OFF_IRQ = 6
} ;
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_RESUME = 3
} ;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char should_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   enum dpm_state status ;
   struct list_head entry ;
   struct completion completion ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   spinlock_t lock ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char ignore_children : 1 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
};
struct __anonstruct_mm_context_t_100 {
   void *ldt ;
   int size ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_100 mm_context_t;
struct pci_bus;
struct vm_area_struct;
struct kobject;
enum kobj_ns_type;
enum kobj_ns_type;
struct attribute {
   char const *name ;
   struct module *owner ;
   mode_t mode ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   mode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
};
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
struct kobj_ns_type_operations;
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
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct sock;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void const *(*current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   int state ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kmem_cache_cpu {
   void **freelist ;
   struct page *page ;
   int node ;
   unsigned int stat[18U] ;
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
   int size ;
   int objsize ;
   int offset ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   unsigned long min_partial ;
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
struct kernel_param;
struct net_device;
struct ethtool_wolinfo;
struct ethtool_cmd;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   uid_t uid ;
   gid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct key;
struct linux_binprm;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_12029_110 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   u16 perm ;
   u16 flags ;
   int (*set)(char const * , struct kernel_param * ) ;
   int (*get)(char * , struct kernel_param * ) ;
   union __anonunion_ldv_12029_110 ldv_12029 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int *num ;
   int (*set)(char const * , struct kernel_param * ) ;
   int (*get)(char * , struct kernel_param * ) ;
   unsigned int elemsize ;
   void *elem ;
};
struct mod_arch_specific {
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned int incs ;
   unsigned int decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   void *percpu ;
   unsigned int percpu_size ;
   char *args ;
   struct tracepoint *tracepoints ;
   unsigned int num_tracepoints ;
   char const **trace_bprintk_fmt_start ;
   unsigned int num_trace_bprintk_fmt ;
   struct ftrace_event_call *trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   void *acpi_handle ;
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct class_private;
struct bus_type;
struct bus_type_private;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct bus_type_private *p ;
};
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct class_private *p ;
};
struct device_type;
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_14035_112 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   u8 pcie_type ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[18U] ;
   resource_size_t fw_addr[18U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_ucfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[18U] ;
   struct bin_attribute *res_attr_wc[18U] ;
   struct list_head msi_list ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_14035_112 ldv_14035 ;
   struct pci_ats *ats ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char secondary ;
   unsigned char subordinate ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   struct pci_error_handlers *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct prio_tree_node;
struct raw_prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
};
struct prio_tree_node {
   struct prio_tree_node *left ;
   struct prio_tree_node *right ;
   struct prio_tree_node *parent ;
   unsigned long start ;
   unsigned long last ;
};
struct prio_tree_root {
   struct prio_tree_node *prio_tree_node ;
   unsigned short index_bits ;
   unsigned short raw ;
};
struct address_space;
struct __anonstruct_ldv_14863_114 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_14864_113 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14863_114 ldv_14863 ;
};
struct __anonstruct_ldv_14869_116 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_14872_115 {
   struct __anonstruct_ldv_14869_116 ldv_14869 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_14876_117 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_14864_113 ldv_14864 ;
   union __anonunion_ldv_14872_115 ldv_14872 ;
   union __anonunion_ldv_14876_117 ldv_14876 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_119 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_118 {
   struct __anonstruct_vm_set_119 vm_set ;
   struct raw_prio_tree_node prio_tree_node ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   struct mm_struct *vm_mm ;
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   struct rb_node vm_rb ;
   union __anonunion_shared_118 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   unsigned long vm_truncate_count ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   unsigned long count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   struct rw_semaphore mmap_sem ;
   spinlock_t page_table_lock ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long reserved_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_t cpu_vm_mask ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   unsigned long num_exe_file_vmas ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
};
struct inode;
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc_coherent)(struct device * , size_t , dma_addr_t * , gfp_t ) ;
   void (*free_coherent)(struct device * , size_t , void * , dma_addr_t ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef unsigned short sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct ucred {
   __u32 pid ;
   __u32 uid ;
   __u32 gid ;
};
struct __anonstruct_sync_serial_settings_120 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_120 sync_serial_settings;
struct __anonstruct_te1_settings_121 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_121 te1_settings;
struct __anonstruct_raw_hdlc_proto_122 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_122 raw_hdlc_proto;
struct __anonstruct_fr_proto_123 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_123 fr_proto;
struct __anonstruct_fr_proto_pvc_124 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_124 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_125 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_125 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_126 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_126 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_127 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_127 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_128 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_129 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_128 ifr_ifrn ;
   union __anonunion_ifr_ifru_129 ifr_ifru ;
};
enum ldv_16634 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_16634 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct rcu_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct kiocb;
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_set {
   struct list_head list ;
   struct ctl_table_set *parent ;
   int (*is_seen)(struct ctl_table_set * ) ;
};
struct ctl_table_header;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   mode_t mode ;
   struct ctl_table *child ;
   struct ctl_table *parent ;
   proc_handler *proc_handler ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_table_root {
   struct list_head root_list ;
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_root * , struct nsproxy * , struct ctl_table * ) ;
};
struct ctl_table_header {
   struct ctl_table *ctl_table ;
   struct list_head ctl_entry ;
   int used ;
   int count ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_table *attached_by ;
   struct ctl_table *attached_to ;
   struct ctl_table_header *parent ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
typedef s32 dma_cookie_t;
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct rb_node node ;
   ktime_t _expires ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   clockid_t index ;
   struct rb_root active ;
   struct rb_node *first ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   struct hrtimer_clock_base clock_base[2U] ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
};
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned int mask ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct skb_frag_struct {
   struct page *page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct __anonstruct_ldv_20306_132 {
   unsigned char hardware : 1 ;
   unsigned char software : 1 ;
   unsigned char in_progress : 1 ;
   unsigned char prevent_sk_orphan : 1 ;
};
union skb_shared_tx {
   struct __anonstruct_ldv_20306_132 ldv_20306 ;
   __u8 flags ;
};
struct skb_shared_info {
   unsigned short nr_frags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   __be32 ip6_frag_id ;
   union skb_shared_tx tx_flags ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   atomic_t dataref ;
   skb_frag_t frags[18U] ;
   void *destructor_arg ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_20350_134 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_20351_133 {
   __wsum csum ;
   struct __anonstruct_ldv_20350_134 ldv_20350 ;
};
union __anonunion_ldv_20381_135 {
   __u32 mark ;
   __u32 dropcount ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_20351_133 ldv_20351 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u32 rxhash ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char deliver_no_wcard : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_20381_135 ldv_20381 ;
   __u16 vlan_tci ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
};
struct file_operations;
struct pm_qos_request_list;
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 reserved2 ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_rawip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __u8 hdata[64U] ;
};
struct ethtool_ether_spec {
   __be16 ether_type ;
   __u8 frame_size ;
   __u8 eframe[16U] ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union __anonunion_h_u_137 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
union __anonunion_m_u_138 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_137 h_u ;
   union __anonunion_m_u_138 m_u ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
union __anonunion_h_u_139 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
union __anonunion_m_u_140 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_rawip4_spec raw_ip4_spec ;
   struct ethtool_ether_spec ether_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   __u8 hdata[64U] ;
};
struct ethtool_rx_ntuple_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_139 h_u ;
   union __anonunion_m_u_140 m_u ;
   __u16 vlan_tag ;
   __u16 vlan_tag_mask ;
   __u64 data ;
   __u64 data_mask ;
   __s32 action ;
};
struct ethtool_rx_ntuple {
   __u32 cmd ;
   struct ethtool_rx_ntuple_flow_spec fs ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_rx_ntuple_list {
   struct list_head list ;
   unsigned int count ;
};
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   u32 (*get_rx_csum)(struct net_device * ) ;
   int (*set_rx_csum)(struct net_device * , u32 ) ;
   u32 (*get_tx_csum)(struct net_device * ) ;
   int (*set_tx_csum)(struct net_device * , u32 ) ;
   u32 (*get_sg)(struct net_device * ) ;
   int (*set_sg)(struct net_device * , u32 ) ;
   u32 (*get_tso)(struct net_device * ) ;
   int (*set_tso)(struct net_device * , u32 ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*phys_id)(struct net_device * , u32 ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_ufo)(struct net_device * ) ;
   int (*set_ufo)(struct net_device * , u32 ) ;
   u32 (*get_flags)(struct net_device * ) ;
   int (*set_flags)(struct net_device * , u32 ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , void * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   int (*set_rx_ntuple)(struct net_device * , struct ethtool_rx_ntuple * ) ;
   int (*get_rx_ntuple)(struct net_device * , u32 , void * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct ipstats_mib {
   unsigned long mibs[31U] ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   unsigned long mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   unsigned long mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[78U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[2U] ;
   struct ipstats_mib *ip_statistics[2U] ;
   struct linux_mib *net_statistics[2U] ;
   struct udp_mib *udp_statistics[2U] ;
   struct udp_mib *udplite_statistics[2U] ;
   struct icmp_mib *icmp_statistics[2U] ;
   struct icmpmsg_mib *icmpmsg_statistics[2U] ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[2U] ;
   struct udp_mib *udplite_stats_in6[2U] ;
   struct ipstats_mib *ipv6_statistics[2U] ;
   struct icmpv6_mib *icmpv6_statistics[2U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics[2U] ;
   struct linux_xfrm_mib *xfrm_statistics[2U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   spinlock_t sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct ipv4_devconf;
struct fib_rules_ops;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *tcp_sock ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   int nat_vmalloced ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   int sysctl_rt_cache_rebuild_count ;
   int current_rt_cache_rebuild_count ;
   atomic_t rt_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , u32 ) ;
   int (*local_out)(struct sk_buff * ) ;
   atomic_t entries ;
   struct kmem_cache *kmem_cachep ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *table ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nameidata;
struct path;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
union __anonunion_d_u_151 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry_operations;
struct super_block;
struct dentry {
   atomic_t d_count ;
   unsigned int d_flags ;
   spinlock_t d_lock ;
   int d_mounted ;
   struct inode *d_inode ;
   struct hlist_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct list_head d_lru ;
   union __anonunion_d_u_151 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
   unsigned long d_time ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   void *d_fsdata ;
   unsigned char d_iname[32U] ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry * , struct qstr * ) ;
   int (*d_compare)(struct dentry * , struct qstr * , struct qstr * ) ;
   int (*d_delete)(struct dentry * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct rcu_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct export_operations;
struct kstatfs;
struct cred;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   uid_t ia_uid ;
   gid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
struct percpu_counter {
   spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
typedef __kernel_uid32_t qid_t;
typedef long long qsize_t;
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   unsigned int dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   short dq_type ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , char * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , int , qid_t , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_153 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_152 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_153 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_152 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   void (*sync_page)(struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   spinlock_t i_mmap_lock ;
   unsigned int truncate_count ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
};
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   int bd_openers ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   struct list_head bd_holder_list ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_24167_154 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   struct hlist_node i_hash ;
   struct list_head i_list ;
   struct list_head i_sb_list ;
   struct list_head i_dentry ;
   unsigned long i_ino ;
   atomic_t i_count ;
   unsigned int i_nlink ;
   uid_t i_uid ;
   gid_t i_gid ;
   dev_t i_rdev ;
   unsigned int i_blkbits ;
   u64 i_version ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   blkcnt_t i_blocks ;
   unsigned short i_bytes ;
   umode_t i_mode ;
   spinlock_t i_lock ;
   struct mutex i_mutex ;
   struct rw_semaphore i_alloc_sem ;
   struct inode_operations const *i_op ;
   struct file_operations const *i_fop ;
   struct super_block *i_sb ;
   struct file_lock *i_flock ;
   struct address_space *i_mapping ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_24167_154 ldv_24167 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_mark_entries ;
   struct list_head inotify_watches ;
   struct mutex inotify_mutex ;
   unsigned long i_state ;
   unsigned long dirtied_when ;
   unsigned int i_flags ;
   atomic_t i_writecount ;
   void *i_security ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   uid_t uid ;
   uid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_155 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_155 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*fl_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*fl_notify)(struct file_lock * ) ;
   int (*fl_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
   void (*fl_break)(struct file_lock * ) ;
   int (*fl_mylease)(struct file_lock * , struct file_lock * ) ;
   int (*fl_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct __anonstruct_afs_157 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_156 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_157 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned char fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_156 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct rcu_head fa_rcu ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_dirt ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_head s_anon ;
   struct list_head s_files ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct list_head s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32U] ;
   void *s_fs_info ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   int (*ioctl)(struct inode * , struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
};
struct inode_operations {
   int (*create)(struct inode * , struct dentry * , int , struct nameidata * ) ;
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , int ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , int , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   void (*truncate)(struct inode * ) ;
   int (*permission)(struct inode * , int ) ;
   int (*check_acl)(struct inode * , int ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   long (*fallocate)(struct inode * , int , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   void (*drop_inode)(struct inode * ) ;
   void (*delete_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*clear_inode)(struct inode * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct vfsmount * ) ;
   int (*show_stats)(struct seq_file * , struct vfsmount * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   int (*get_sb)(struct file_system_type * , int , char const * , void * , struct vfsmount * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct list_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
   struct lock_class_key i_alloc_sem_key ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   unsigned short namelen ;
   char const *name ;
   mode_t mode ;
   nlink_t nlink ;
   uid_t uid ;
   gid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   spinlock_t pde_unload_lock ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct ip_conntrack_stat;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   int hash_vmalloc ;
   int expect_vmalloc ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
};
struct net_generic;
struct net {
   atomic_t count ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct net_device *loopback_dev ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   struct list_head rules_ops ;
   spinlock_t rules_mod_lock ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct netns_xfrm xfrm ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dcbnl_rtnl_ops {
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   u8 (*getnumtcs)(struct net_device * , int , u8 * ) ;
   u8 (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
};
struct vlan_group;
struct netpoll_info;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neighbour;
struct neigh_parms;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   int refcount ;
   bool synced ;
   bool global_use ;
   struct rcu_head rcu_head ;
};
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   struct hh_cache *hh_next ;
   atomic_t hh_refcnt ;
   __be16 hh_type ;
   u16 hh_len ;
   int (*hh_output)(struct sk_buff * ) ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   unsigned int gro_count ;
   struct net_device *dev ;
   struct list_head dev_list ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
};
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   unsigned long state ;
   struct Qdisc *qdisc_sleeping ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long tx_bytes ;
   unsigned long tx_packets ;
   unsigned long tx_dropped ;
};
struct rps_map {
   unsigned int len ;
   struct rcu_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 fill ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct rcu_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct netdev_rx_queue *first ;
   atomic_t count ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   void (*ndo_set_multicast_list)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   void (*ndo_vlan_rx_register)(struct net_device * , struct vlan_group * ) ;
   void (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct net_bridge_port;
struct macvlan_port;
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct pm_qos_request_list *pm_qos_req ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   unsigned long features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned short gflags ;
   unsigned short priv_flags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   struct net_device *master ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   int uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   void *dsa_ptr ;
   void *atalk_ptr ;
   void *ip_ptr ;
   void *dn_ptr ;
   void *ip6_ptr ;
   void *ec_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   struct netdev_queue rx_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   atomic_t refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned short reg_state ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   void *ml_priv ;
   struct net_bridge_port *br_port ;
   struct macvlan_port *macvlan_port ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned long vlan_features ;
   unsigned int gso_max_size ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   unsigned int fcoe_ddp_xid ;
   struct ethtool_rx_ntuple_list ethtool_ntuple_list ;
};
struct irqaction;
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   char const *name ;
   void *dev_id ;
   struct irqaction *next ;
   int irq ;
   struct proc_dir_entry *dir ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
};
struct mii_ioctl_data {
   __u16 phy_id ;
   __u16 reg_num ;
   __u16 val_in ;
   __u16 val_out ;
};
struct mii_if_info {
   int phy_id ;
   int advertising ;
   int phy_id_mask ;
   int reg_num_mask ;
   unsigned char full_duplex : 1 ;
   unsigned char force_media : 1 ;
   unsigned char supports_gmii : 1 ;
   struct net_device *dev ;
   int (*mdio_read)(struct net_device * , int , int ) ;
   void (*mdio_write)(struct net_device * , int , int , int ) ;
};
struct vlan_group {
   struct net_device *real_dev ;
   unsigned int nr_vlans ;
   int killall ;
   struct hlist_node hlist ;
   struct net_device **vlan_devices_arrays[8U] ;
   struct rcu_head rcu ;
};
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct linux_binprm {
   char buf[128U] ;
   struct vm_area_struct *vma ;
   struct mm_struct *mm ;
   unsigned long p ;
   unsigned char cred_prepared : 1 ;
   unsigned char cap_effective : 1 ;
   unsigned int recursion_depth ;
   struct file *file ;
   struct cred *cred ;
   int unsafe ;
   unsigned int per_clear ;
   int argc ;
   int envc ;
   char *filename ;
   char *interp ;
   unsigned int interp_flags ;
   unsigned int interp_data ;
   unsigned long loader ;
   unsigned long exec ;
};
struct coredump_params {
   long signr ;
   struct pt_regs *regs ;
   struct file *file ;
   unsigned long limit ;
   unsigned long mm_flags ;
};
struct linux_binfmt {
   struct list_head lh ;
   struct module *module ;
   int (*load_binary)(struct linux_binprm * , struct pt_regs * ) ;
   int (*load_shlib)(struct file * ) ;
   int (*core_dump)(struct coredump_params * ) ;
   unsigned long min_coredump ;
   int hasvdso ;
};
struct siginfo;
struct __anonstruct_sigset_t_161 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_161 sigset_t;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_163 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_164 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_167 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_168 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_162 {
   int _pad[28U] ;
   struct __anonstruct__kill_163 _kill ;
   struct __anonstruct__timer_164 _timer ;
   struct __anonstruct__rt_165 _rt ;
   struct __anonstruct__sigchld_166 _sigchld ;
   struct __anonstruct__sigfault_167 _sigfault ;
   struct __anonstruct__sigpoll_168 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_162 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct sem_undo_list;
struct sem_undo_list {
   atomic_t refcnt ;
   spinlock_t lock ;
   struct list_head list_proc ;
};
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned long cputime_t;
struct prop_local_single {
   unsigned long events ;
   unsigned long period ;
   int shift ;
   spinlock_t lock ;
};
struct __anonstruct_seccomp_t_171 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_171 seccomp_t;
struct plist_head {
   struct list_head prio_list ;
   struct list_head node_list ;
   raw_spinlock_t *rawlock ;
   spinlock_t *spinlock ;
};
struct plist_node {
   int prio ;
   struct plist_head plist ;
};
struct rt_mutex_waiter;
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion_ldv_30492_172 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_173 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_30492_172 ldv_30492 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_173 type_data ;
   union __anonunion_payload_174 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32U] ;
   gid_t *blocks[0U] ;
};
struct thread_group_cred {
   atomic_t usage ;
   pid_t tgid ;
   spinlock_t lock ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct rcu_head rcu ;
};
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   uid_t uid ;
   gid_t gid ;
   uid_t suid ;
   gid_t sgid ;
   uid_t euid ;
   gid_t egid ;
   uid_t fsuid ;
   gid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct cfs_rq;
struct user_namespace;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct kioctx;
union __anonunion_ki_obj_175 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_175 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct rcu_head rcu_head ;
};
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   spinlock_t lock ;
};
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   int oom_adj ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   uid_t uid ;
   struct user_namespace *user_ns ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
   unsigned int bkl_count ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct rq * , struct task_struct * , int , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct rq * , struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * , int ) ;
   void (*switched_to)(struct rq * , struct task_struct * , int ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*moved_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   int nr_cpus_allowed ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long bytes ;
   unsigned long memsw_bytes ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   int lock_depth ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   cputime_t prev_utime ;
   cputime_t prev_stime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   struct mutex cred_guard_mutex ;
   struct cred *replacement_session_keyring ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   struct irqaction *irqaction ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   int mems_allowed_change_disable ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   atomic_t fs_excl ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   struct prop_local_single dirties ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   struct rcu_head rcu ;
   struct sock_filter insns[0U] ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   int (*get_tx_queues)(struct net * , struct nlattr ** , unsigned int * , unsigned int * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct rcu_head rcu_head ;
   int base_reachable_time ;
   int retrans_time ;
   int gc_staletime ;
   int reachable_time ;
   int delay_probe_time ;
   int queue_len ;
   int ucast_probes ;
   int app_probes ;
   int mcast_probes ;
   int anycast_delay ;
   int proxy_delay ;
   int proxy_qlen ;
   int locktime ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   struct net_device *dev ;
   unsigned long used ;
   unsigned long confirmed ;
   unsigned long updated ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   atomic_t probes ;
   rwlock_t lock ;
   unsigned char ha[32U] ;
   struct hh_cache *hh ;
   atomic_t refcnt ;
   int (*output)(struct sk_buff * ) ;
   struct sk_buff_head arp_queue ;
   struct timer_list timer ;
   struct neigh_ops const *ops ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   int (*connected_output)(struct sk_buff * ) ;
   int (*hh_output)(struct sk_buff * ) ;
   int (*queue_xmit)(struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct kmem_cache *kmem_cachep ;
   struct neigh_statistics *stats ;
   struct neighbour **hash_buckets ;
   unsigned int hash_mask ;
   __u32 hash_rnd ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion_ldv_34801_180 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct rcu_head rcu_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   short error ;
   short obsolete ;
   int flags ;
   unsigned long expires ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   unsigned int rate_tokens ;
   unsigned long rate_last ;
   struct dst_entry *path ;
   struct neighbour *neighbour ;
   struct hh_cache *hh ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   struct dst_ops *ops ;
   u32 metrics[14U] ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[1U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion_ldv_34801_180 ldv_34801 ;
};
struct __anonstruct_socket_lock_t_181 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_181 socket_lock_t;
struct proto;
union __anonunion_ldv_34943_182 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
union __anonunion_ldv_34949_183 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
union __anonunion_ldv_34957_184 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
struct sock_common {
   union __anonunion_ldv_34943_182 ldv_34943 ;
   atomic_t skc_refcnt ;
   int skc_tx_queue_mapping ;
   union __anonunion_ldv_34949_183 ldv_34949 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_34957_184 ldv_34957 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
};
struct __anonstruct_sk_backlog_185 {
   struct sk_buff *head ;
   struct sk_buff *tail ;
   int len ;
};
struct sock {
   struct sock_common __sk_common ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_rcvbuf ;
   socket_lock_t sk_lock ;
   struct __anonstruct_sk_backlog_185 sk_backlog ;
   struct socket_wq *sk_wq ;
   struct dst_entry *sk_dst_cache ;
   struct xfrm_policy *sk_policy[2U] ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_rmem_alloc ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_receive_queue ;
   struct sk_buff_head sk_write_queue ;
   struct sk_buff_head sk_async_wait_queue ;
   int sk_wmem_queued ;
   int sk_forward_alloc ;
   gfp_t sk_allocation ;
   int sk_route_caps ;
   int sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   int sk_rcvlowat ;
   __u32 sk_rxhash ;
   unsigned long sk_flags ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   atomic_t sk_drops ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   struct ucred sk_peercred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   struct sk_filter *sk_filter ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page *sk_sndmsg_page ;
   struct sk_buff *sk_send_head ;
   __u32 sk_sndmsg_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_186 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   unsigned int inuse_idx ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   int *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_186 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
};
struct request_values {
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * , struct request_values * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct request_sock *dl_next ;
   u16 mss ;
   u8 retrans ;
   u8 cookie_ts ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct __anonstruct_rtl_chip_info_194 {
   char const *name ;
   u8 mac_version ;
   u32 RxConfigMask ;
};
struct __anonstruct_debug_195 {
   u32 msg_enable ;
};
struct TxDesc {
   __le32 opts1 ;
   __le32 opts2 ;
   __le64 addr ;
};
struct RxDesc {
   __le32 opts1 ;
   __le32 opts2 ;
   __le64 addr ;
};
struct ring_info {
   struct sk_buff *skb ;
   u32 len ;
   u8 __pad[4U] ;
};
struct rtl8169_counters {
   __le64 tx_packets ;
   __le64 rx_packets ;
   __le64 tx_errors ;
   __le32 rx_errors ;
   __le16 rx_missed ;
   __le16 align_errors ;
   __le32 tx_one_collision ;
   __le32 tx_multi_collision ;
   __le64 rx_unicast ;
   __le64 rx_broadcast ;
   __le32 rx_multicast ;
   __le16 tx_aborted ;
   __le16 tx_underun ;
};
struct rtl8169_private {
   void *mmio_addr ;
   struct pci_dev *pci_dev ;
   struct net_device *dev ;
   struct napi_struct napi ;
   spinlock_t lock ;
   u32 msg_enable ;
   int chipset ;
   int mac_version ;
   u32 cur_rx ;
   u32 cur_tx ;
   u32 dirty_rx ;
   u32 dirty_tx ;
   struct TxDesc *TxDescArray ;
   struct RxDesc *RxDescArray ;
   dma_addr_t TxPhyAddr ;
   dma_addr_t RxPhyAddr ;
   struct sk_buff *Rx_skbuff[256U] ;
   struct ring_info tx_skb[64U] ;
   unsigned int align ;
   unsigned int rx_buf_sz ;
   struct timer_list timer ;
   u16 cp_cmd ;
   u16 intr_event ;
   u16 napi_event ;
   u16 intr_mask ;
   int phy_1000_ctrl_reg ;
   struct vlan_group *vlgrp ;
   int (*set_speed)(struct net_device * , u8 , u16 , u8 ) ;
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*phy_reset_enable)(void * ) ;
   void (*hw_start)(struct net_device * ) ;
   unsigned int (*phy_reset_pending)(void * ) ;
   unsigned int (*link_ok)(void * ) ;
   int (*do_ioctl)(struct rtl8169_private * , struct mii_ioctl_data * , int ) ;
   int pcie_cap ;
   struct delayed_work task ;
   unsigned int features ;
   struct mii_if_info mii ;
   struct rtl8169_counters counters ;
   u32 saved_wolopts ;
};
struct __anonstruct_cfg_197 {
   u32 opt ;
   u16 reg ;
   u8 mask ;
};
struct __anonstruct_mac_info_201 {
   u32 mask ;
   u32 val ;
   int mac_version ;
};
struct __anonstruct_p_202 {
   u32 mask ;
   u32 val ;
   int mac_version ;
};
struct __anonstruct_205 {
   u32 mask ;
   u32 val ;
   int mac_version ;
};
struct phy_reg {
   u16 reg ;
   u16 val ;
};
struct rtl_cfg_info {
   void (*hw_start)(struct net_device * ) ;
   unsigned int region ;
   unsigned int align ;
   u16 intr_event ;
   u16 napi_event ;
   unsigned int features ;
   u8 default_ver ;
};
struct __anonstruct_cfg2_info_233 {
   u32 mac_version ;
   u32 clk ;
   u32 val ;
};
struct __anonstruct_p_234 {
   u32 mac_version ;
   u32 clk ;
   u32 val ;
};
struct __anonstruct_237 {
   u32 mac_version ;
   u32 clk ;
   u32 val ;
};
struct ephy_info {
   unsigned int offset ;
   u16 mask ;
   u16 bits ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
void __builtin_prefetch(void const * , ...) ;
long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )(*((unsigned long *)addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern unsigned long __phys_addr(unsigned long ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern int printk(char const * , ...) ;
extern enum system_states system_state ;
extern void dump_stack(void) ;
extern void __cmpxchg_wrong_size(void) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
__inline static unsigned long __raw_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/ldvuser/gratinskiy/commit-tester-runs/6-cpa-svcomp-newdeg/commit-tester-work/task-012--linux-stable--dir/inst/current/envs/linux-stable-431e8d4-1/linux-stable-431e8d4-1/arch/x86/include/asm/paravirt.h"),
                         "i" (834), "i" (12UL));
    ldv_4265: ;
    goto ldv_4265;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int raw_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{
  int __ret ;
  int __old ;
  int __new ;
  {
  __old = old;
  __new = new;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; cmpxchgb %b2,%1": "=a" (__ret),
                       "+m" (*((long volatile *)(& v->counter))): "q" (__new), "0" (__old): "memory");
  goto ldv_5073;
  case 2UL:
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; cmpxchgw %w2,%1": "=a" (__ret),
                       "+m" (*((long volatile *)(& v->counter))): "r" (__new), "0" (__old): "memory");
  goto ldv_5073;
  case 4UL:
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; cmpxchgl %k2,%1": "=a" (__ret),
                       "+m" (*((long volatile *)(& v->counter))): "r" (__new), "0" (__old): "memory");
  goto ldv_5073;
  case 8UL:
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*((long volatile *)(& v->counter))): "r" (__new), "0" (__old): "memory");
  goto ldv_5073;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5073: ;
  return (__ret);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{
  int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5099:
  tmp = ldv__builtin_expect(c == u, 0L);
  if (tmp != 0L) {
    goto ldv_5098;
  } else {
  }
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5098;
  } else {
  }
  c = old;
  goto ldv_5099;
  ldv_5098: ;
  return (c != u);
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5719.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5719.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5719.rlock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5719.rlock, flags);
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
extern unsigned long volatile jiffies ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_2(struct timer_list *ldv_func_arg1 ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_5(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_6(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_8(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_1(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_7(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern void flush_scheduled_work(void) ;
extern int schedule_delayed_work(struct delayed_work * , unsigned long ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern void synchronize_sched(void) ;
void ldv_get_pm_runtime(void) ;
void ldv_check_context_pm_runtime(void) ;
void ldv_check_context_pm_runtime_flags(gfp_t flags ) ;
void ldv_put_pm_runtime(void) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int expression ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
int ldv_state_variable_8 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_state_variable_10 ;
int ldv_irq_1_0 = 0;
struct timer_list *ldv_timer_list_3 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_state_3 = 0;
struct kernel_param *__param_debug_group0 ;
struct pci_dev *rtl8169_pci_driver_group0 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
struct net_device *rtl8169_ethtool_ops_group2 ;
struct net_device *rtl8169_netdev_ops_group1 ;
void *ldv_irq_data_1_2 ;
struct ethtool_wolinfo *rtl8169_ethtool_ops_group1 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
int ldv_timer_state_2 = 0;
int ldv_irq_line_1_3 ;
int ldv_state_variable_9 ;
struct ethtool_cmd *rtl8169_ethtool_ops_group0 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct timer_list *ldv_timer_list_2 ;
struct kernel_param *__param_rx_copybreak_group0 ;
struct device *rtl8169_pm_ops_group1 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
struct kernel_param *__param_use_dac_group0 ;
void ldv_initialize_ethtool_ops_7(void) ;
void ldv_initialize_kernel_param_8(void) ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void ldv_net_device_ops_6(void) ;
void ldv_initialize_kernel_param_10(void) ;
void choose_timer_2(struct timer_list *timer ) ;
int reg_timer_2(struct timer_list *timer ) ;
void ldv_initialize_pci_driver_4(void) ;
void ldv_dev_pm_ops_5(void) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_kernel_param_9(void) ;
void choose_timer_3(struct timer_list *timer ) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
int reg_timer_3(struct timer_list *timer ) ;
void choose_interrupt_1(void) ;
extern int param_set_int(char const * , struct kernel_param * ) ;
extern int param_get_int(char * , struct kernel_param * ) ;
extern struct module __this_module ;
__inline static void device_set_wakeup_enable(struct device *dev , bool enable )
{
  {
  dev->power.should_wakeup = (unsigned char )enable;
  return;
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern void *dev_get_drvdata(struct device const * ) ;
extern void dev_set_drvdata(struct device * , void * ) ;
extern char const *dev_driver_string(struct device const * ) ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr )
{
  {
  __asm__ volatile ("movb %0,%1": : "q" (val), "m" (*((unsigned char volatile *)addr)): "memory");
  return;
}
}
__inline static void writew(unsigned short val , void volatile *addr )
{
  {
  __asm__ volatile ("movw %0,%1": : "r" (val), "m" (*((unsigned short volatile *)addr)): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  size_t __len ;
  void *__ret ;
  {
  __len = count;
  __ret = memcpy(dst, (void const *)src, __len);
  return;
}
}
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev *dev , int where , u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_byte(struct pci_dev *dev , int where , u8 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev *dev , int where , u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern void pci_clear_master(struct pci_dev * ) ;
extern int pci_set_mwi(struct pci_dev * ) ;
extern void pci_clear_mwi(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern int pci_wake_from_d3(struct pci_dev * , bool ) ;
extern bool pci_dev_run_wake(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int pci_enable_msi_block(struct pci_dev * , unsigned int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
__inline static void *lowmem_page_address(struct page *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 56L) << 12) + 0xffff880000000000UL));
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern void debug_dma_sync_single_for_device(struct device * , dma_addr_t , size_t ,
                                             int ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (18), "i" (12UL));
    ldv_17519: ;
    goto ldv_17519;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (35), "i" (12UL));
    ldv_17528: ;
    goto ldv_17528;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (102), "i" (12UL));
    ldv_17578: ;
    goto ldv_17578;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static void dma_sync_single_for_device(struct device *dev , dma_addr_t addr ,
                                                size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (114), "i" (12UL));
    ldv_17586: ;
    goto ldv_17586;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_device != (unsigned long )((void (*)(struct device * ,
                                                                                dma_addr_t ,
                                                                                size_t ,
                                                                                enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_device))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_device(dev, addr, size, (int )dir);
  return;
}
}
extern int dma_set_mask(struct device * , u64 ) ;
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                         gfp_t gfp )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc_coherent == (unsigned long )((void *(*)(struct device * ,
                                                                         size_t ,
                                                                         dma_addr_t * ,
                                                                         gfp_t ))0)) {
    return ((void *)0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc_coherent))(dev, size, dma_handle, tmp___1);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_coherent(struct device *dev , size_t size , void *vaddr ,
                                       dma_addr_t bus )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = __raw_local_save_flags();
  tmp___0 = raw_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/home/ldvuser/gratinskiy/commit-tester-runs/6-cpa-svcomp-newdeg/commit-tester-work/task-012--linux-stable--dir/inst/current/envs/linux-stable-431e8d4-1/linux-stable-431e8d4-1/arch/x86/include/asm/dma-mapping.h",
                       155);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free_coherent != (unsigned long )((void (*)(struct device * ,
                                                                       size_t , void * ,
                                                                       dma_addr_t ))0)) {
    (*(ops->free_coherent))(dev, size, vaddr, bus);
  } else {
  }
  return;
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                           size, dma_handle, 32U);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                    size, vaddr, dma_handle);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                         dma_addr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return;
}
}
__inline static void pci_dma_sync_single_for_cpu(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                 size_t size , int direction )
{
  {
  dma_sync_single_for_cpu((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                          dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static void pci_dma_sync_single_for_device(struct pci_dev *hwdev , dma_addr_t dma_handle ,
                                                    size_t size , int direction )
{
  {
  dma_sync_single_for_device((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             dma_handle, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern int net_ratelimit(void) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_3(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                         gfp_t ldv_func_arg3 ) ;
__inline static struct sk_buff *netdev_alloc_skb(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv___netdev_alloc_skb_3(dev, length, 32U);
  return (tmp);
}
}
__inline static struct sk_buff *ldv_netdev_alloc_skb_4(struct net_device *dev , unsigned int length ) ;
__inline static struct sk_buff *ldv_netdev_alloc_skb_4(struct net_device *dev , unsigned int length ) ;
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = ldv_netdev_alloc_skb_4(dev, length + 2U);
  skb = tmp;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb_reserve(skb, 2);
  } else {
  }
  return (skb);
}
}
__inline static void skb_copy_from_linear_data(struct sk_buff const *skb , void *to ,
                                               unsigned int const len )
{
  size_t __len ;
  void *__ret ;
  {
  __len = (size_t )len;
  __ret = memcpy(to, (void const *)skb->data, __len);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern int ethtool_op_set_tx_csum(struct net_device * , u32 ) ;
extern int ethtool_op_set_sg(struct net_device * , u32 ) ;
extern int ethtool_op_set_tso(struct net_device * , u32 ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static int napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& n->state));
  return (tmp);
}
}
__inline static int napi_schedule_prep(struct napi_struct *n )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp == 0) {
    tmp___0 = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
    if (tmp___0 == 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  set_bit(1U, (unsigned long volatile *)(& n->state));
  goto ldv_27247;
  ldv_27246:
  msleep(1U);
  ldv_27247:
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_27246;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (462), "i" (12UL));
    ldv_27252: ;
    goto ldv_27252;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 2432U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void synchronize_irq(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_16(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_9(struct net_device *dev ) ;
void ldv_free_netdev_11(struct net_device *dev ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = netpoll_trap();
  if (tmp != 0) {
    netif_tx_start_queue(dev_queue);
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___0 != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  {
  set_bit(0U, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static int netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp);
}
}
__inline static int netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
__inline static int netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev->state));
  return (tmp);
}
}
extern int netif_rx(struct sk_buff * ) ;
extern int netif_receive_skb(struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if (debug_value < 0 || (unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_10(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_13(struct net_device *dev ) ;
__inline static char const *netdev_name(struct net_device const *dev )
{
  {
  if ((unsigned int )((unsigned short )dev->reg_state) != 1U) {
    return ("(unregistered net_device)");
  } else {
  }
  return ((char const *)(& dev->name));
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mq(int , unsigned int ) ;
__inline static int is_zero_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )((((((int )((unsigned char )*addr) | (int )((unsigned char )*(addr + 1UL))) | (int )((unsigned char )*(addr + 2UL))) | (int )((unsigned char )*(addr + 3UL))) | (int )((unsigned char )*(addr + 4UL))) | (int )((unsigned char )*(addr + 5UL))) == 0U);
}
}
__inline static int is_multicast_ether_addr(u8 const *addr )
{
  {
  return ((int )*addr & 1);
}
}
__inline static int is_valid_ether_addr(u8 const *addr )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp == 0) {
    tmp___0 = is_zero_ether_addr(addr);
    if (tmp___0 == 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
extern int mii_ethtool_gset(struct mii_if_info * , struct ethtool_cmd * ) ;
__inline static struct mii_ioctl_data *if_mii(struct ifreq *rq )
{
  {
  return ((struct mii_ioctl_data *)(& rq->ifr_ifru));
}
}
extern int __vlan_hwaccel_rx(struct sk_buff * , struct vlan_group * , u16 , int ) ;
extern u32 bitrev32(u32 ) ;
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int rtnl_is_locked(void) ;
extern int pm_runtime_idle(struct device * ) ;
extern int pm_schedule_suspend(struct device * , unsigned int ) ;
extern int pm_request_resume(struct device * ) ;
extern int __pm_runtime_get(struct device * , bool ) ;
extern int __pm_runtime_put(struct device * , bool ) ;
extern int __pm_runtime_set_status(struct device * , unsigned int ) ;
extern void pm_runtime_enable(struct device * ) ;
extern void __pm_runtime_disable(struct device * , bool ) ;
__inline static void pm_runtime_put_noidle(struct device *dev )
{
  {
  atomic_add_unless(& dev->power.usage_count, -1, 0);
  return;
}
}
__inline static void ldv_pm_runtime_put_noidle_14(struct device *dev ) ;
__inline static void ldv_pm_runtime_put_noidle_14(struct device *dev ) ;
__inline static void ldv_pm_runtime_put_noidle_14(struct device *dev ) ;
__inline static int pm_runtime_get_sync(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_get(dev, 1);
  return (tmp);
}
}
__inline static int ldv_pm_runtime_get_sync_12(struct device *dev ) ;
__inline static int ldv_pm_runtime_get_sync_12(struct device *dev ) ;
__inline static int ldv_pm_runtime_get_sync_12(struct device *dev ) ;
__inline static int pm_runtime_put_sync(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_put(dev, 1);
  return (tmp);
}
}
__inline static int pm_runtime_set_active(struct device *dev )
{
  int tmp ;
  {
  tmp = __pm_runtime_set_status(dev, 0U);
  return (tmp);
}
}
__inline static void pm_runtime_set_suspended(struct device *dev )
{
  {
  __pm_runtime_set_status(dev, 2U);
  return;
}
}
__inline static void pm_runtime_disable(struct device *dev )
{
  {
  __pm_runtime_disable(dev, 1);
  return;
}
}
static int const multicast_filter_limit = 32;
static struct __anonstruct_rtl_chip_info_194 const rtl_chip_info[27U] =
  { {"RTL8169", 1U, 4286453888U},
        {"RTL8169s", 2U, 4286453888U},
        {"RTL8110s", 3U, 4286453888U},
        {"RTL8169sb/8110sb", 4U, 4286453888U},
        {"RTL8169sc/8110sc", 5U, 4286453888U},
        {"RTL8169sc/8110sc", 6U, 4286453888U},
        {"RTL8102e", 7U, 4286453888U},
        {"RTL8102e", 8U, 4286453888U},
        {"RTL8102e", 9U, 4286453888U},
        {"RTL8101e", 10U, 4286453888U},
        {"RTL8168b/8111b", 11U, 4286453888U},
        {"RTL8168b/8111b", 12U, 4286453888U},
        {"RTL8101e", 13U, 4286453888U},
        {"RTL8100e", 14U, 4286453888U},
        {"RTL8100e", 15U, 4286453888U},
        {"RTL8168b/8111b", 16U, 4286453888U},
        {"RTL8101e", 17U, 4286453888U},
        {"RTL8168cp/8111cp", 18U, 4286453888U},
        {"RTL8168c/8111c", 19U, 4286453888U},
        {"RTL8168c/8111c", 20U, 4286453888U},
        {"RTL8168c/8111c", 21U, 4286453888U},
        {"RTL8168c/8111c", 22U, 4286453888U},
        {"RTL8168cp/8111cp", 23U, 4286453888U},
        {"RTL8168cp/8111cp", 24U, 4286453888U},
        {"RTL8168d/8111d", 25U, 4286453888U},
        {"RTL8168d/8111d", 26U, 4286453888U},
        {"RTL8168dp/8111dp", 27U, 4286453888U}};
static void rtl_hw_start_8169(struct net_device *dev ) ;
static void rtl_hw_start_8168(struct net_device *dev ) ;
static void rtl_hw_start_8101(struct net_device *dev ) ;
static struct pci_device_id const rtl8169_pci_tbl[11U] =
  { {4332U, 33065U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4332U, 33078U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4332U, 33127U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4332U, 33128U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4332U, 33129U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4486U, 17152U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4697U, 49415U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5868U, 278U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5943U, 4146U, 4294967295U, 36U, 0U, 0U, 0UL},
        {1U, 33128U, 4294967295U, 9232U, 0U, 0U, 2UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static int rx_copybreak = 16383;
static int use_dac ;
static struct __anonstruct_debug_195 debug = {4294967295U};
static int rtl8169_open(struct net_device *dev ) ;
static netdev_tx_t rtl8169_start_xmit(struct sk_buff *skb , struct net_device *dev ) ;
static irqreturn_t rtl8169_interrupt(int irq , void *dev_instance ) ;
static int rtl8169_init_ring(struct net_device *dev ) ;
static void rtl_hw_start(struct net_device *dev ) ;
static int rtl8169_close(struct net_device *dev ) ;
static void rtl_set_rx_mode(struct net_device *dev ) ;
static void rtl8169_tx_timeout(struct net_device *dev ) ;
static struct net_device_stats *rtl8169_get_stats(struct net_device *dev ) ;
static int rtl8169_rx_interrupt(struct net_device *dev , struct rtl8169_private *tp ,
                                void *ioaddr , u32 budget ) ;
static int rtl8169_change_mtu(struct net_device *dev , int new_mtu ) ;
static void rtl8169_down(struct net_device *dev ) ;
static void rtl8169_rx_clear(struct rtl8169_private *tp ) ;
static int rtl8169_poll(struct napi_struct *napi , int budget ) ;
static unsigned int const rtl8169_rx_config = 58880U;
static void mdio_write(void *ioaddr , int reg_addr , int value )
{
  int i ;
  unsigned int tmp ;
  {
  writel(((unsigned int )((reg_addr & 31) << 16) | ((unsigned int )value & 65535U)) | 2147483648U,
         (void volatile *)ioaddr + 96U);
  i = 20;
  goto ldv_37230;
  ldv_37229:
  tmp = readl((void const volatile *)ioaddr + 96U);
  if ((int )tmp >= 0) {
    goto ldv_37228;
  } else {
  }
  __const_udelay(107375UL);
  i = i - 1;
  ldv_37230: ;
  if (i > 0) {
    goto ldv_37229;
  } else {
  }
  ldv_37228:
  __const_udelay(85900UL);
  return;
}
}
static int mdio_read(void *ioaddr , int reg_addr )
{
  int i ;
  int value ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  value = -1;
  writel((unsigned int )((reg_addr & 31) << 16), (void volatile *)ioaddr + 96U);
  i = 20;
  goto ldv_37239;
  ldv_37238:
  tmp___0 = readl((void const volatile *)ioaddr + 96U);
  if ((int )tmp___0 < 0) {
    tmp = readl((void const volatile *)ioaddr + 96U);
    value = (int )tmp & 65535;
    goto ldv_37237;
  } else {
  }
  __const_udelay(107375UL);
  i = i - 1;
  ldv_37239: ;
  if (i > 0) {
    goto ldv_37238;
  } else {
  }
  ldv_37237:
  __const_udelay(85900UL);
  return (value);
}
}
static void mdio_patch(void *ioaddr , int reg_addr , int value )
{
  int tmp ;
  {
  tmp = mdio_read(ioaddr, reg_addr);
  mdio_write(ioaddr, reg_addr, tmp | value);
  return;
}
}
static void mdio_plus_minus(void *ioaddr , int reg_addr , int p , int m )
{
  int val ;
  {
  val = mdio_read(ioaddr, reg_addr);
  mdio_write(ioaddr, reg_addr, (val | p) & ~ m);
  return;
}
}
static void rtl_mdio_write(struct net_device *dev , int phy_id , int location , int val )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  mdio_write(ioaddr, location, val);
  return;
}
}
static int rtl_mdio_read(struct net_device *dev , int phy_id , int location )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = mdio_read(ioaddr, location);
  return (tmp___0);
}
}
static void rtl_ephy_write(void *ioaddr , int reg_addr , int value )
{
  unsigned int i ;
  unsigned int tmp ;
  {
  writel((((unsigned int )value & 65535U) | (unsigned int )((reg_addr & 31) << 16)) | 2147483648U,
         (void volatile *)ioaddr + 128U);
  i = 0U;
  goto ldv_37275;
  ldv_37274:
  tmp = readl((void const volatile *)ioaddr + 128U);
  if ((int )tmp >= 0) {
    goto ldv_37273;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_37275: ;
  if (i <= 99U) {
    goto ldv_37274;
  } else {
  }
  ldv_37273: ;
  return;
}
}
static u16 rtl_ephy_read(void *ioaddr , int reg_addr )
{
  u16 value ;
  unsigned int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  value = 65535U;
  writel((unsigned int )((reg_addr & 31) << 16), (void volatile *)ioaddr + 128U);
  i = 0U;
  goto ldv_37284;
  ldv_37283:
  tmp___0 = readl((void const volatile *)ioaddr + 128U);
  if ((int )tmp___0 < 0) {
    tmp = readl((void const volatile *)ioaddr + 128U);
    value = (u16 )tmp;
    goto ldv_37282;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_37284: ;
  if (i <= 99U) {
    goto ldv_37283;
  } else {
  }
  ldv_37282: ;
  return (value);
}
}
static void rtl_csi_write(void *ioaddr , int addr , int value )
{
  unsigned int i ;
  unsigned int tmp ;
  {
  writel((unsigned int )value, (void volatile *)ioaddr + 100U);
  writel(((unsigned int )addr & 65535U) | 2147545088U, (void volatile *)ioaddr + 104U);
  i = 0U;
  goto ldv_37293;
  ldv_37292:
  tmp = readl((void const volatile *)ioaddr + 104U);
  if ((int )tmp >= 0) {
    goto ldv_37291;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_37293: ;
  if (i <= 99U) {
    goto ldv_37292;
  } else {
  }
  ldv_37291: ;
  return;
}
}
static u32 rtl_csi_read(void *ioaddr , int addr )
{
  u32 value ;
  unsigned int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  value = 4294967295U;
  writel((unsigned int )((addr & 65535) | 61440), (void volatile *)ioaddr + 104U);
  i = 0U;
  goto ldv_37302;
  ldv_37301:
  tmp___0 = readl((void const volatile *)ioaddr + 104U);
  if ((int )tmp___0 < 0) {
    tmp = readl((void const volatile *)ioaddr + 100U);
    value = tmp;
    goto ldv_37300;
  } else {
  }
  __const_udelay(42950UL);
  i = i + 1U;
  ldv_37302: ;
  if (i <= 99U) {
    goto ldv_37301;
  } else {
  }
  ldv_37300: ;
  return (value);
}
}
static u8 rtl8168d_efuse_read(void *ioaddr , int reg_addr )
{
  u8 value ;
  unsigned int i ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  value = 255U;
  writel((unsigned int )((reg_addr & 1023) << 8), (void volatile *)ioaddr + 220U);
  i = 0U;
  goto ldv_37311;
  ldv_37310:
  tmp___0 = readl((void const volatile *)ioaddr + 220U);
  if ((int )tmp___0 < 0) {
    tmp = readl((void const volatile *)ioaddr + 220U);
    value = (u8 )tmp;
    goto ldv_37309;
  } else {
  }
  __const_udelay(429500UL);
  i = i + 1U;
  ldv_37311: ;
  if (i <= 299U) {
    goto ldv_37310;
  } else {
  }
  ldv_37309: ;
  return (value);
}
}
static void rtl8169_irq_mask_and_ack(void *ioaddr )
{
  {
  writew(0, (void volatile *)ioaddr + 60U);
  writew(65535, (void volatile *)ioaddr + 62U);
  return;
}
}
static void rtl8169_asic_down(void *ioaddr )
{
  {
  writeb(0, (void volatile *)ioaddr + 55U);
  rtl8169_irq_mask_and_ack(ioaddr);
  readw((void const volatile *)ioaddr + 224U);
  return;
}
}
static unsigned int rtl8169_tbi_reset_pending(void *ioaddr )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 100U);
  return (tmp & 2147483648U);
}
}
static unsigned int rtl8169_xmii_reset_pending(void *ioaddr )
{
  int tmp ;
  {
  tmp = mdio_read(ioaddr, 0);
  return ((unsigned int )tmp & 32768U);
}
}
static unsigned int rtl8169_tbi_link_ok(void *ioaddr )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 100U);
  return (tmp & 33554432U);
}
}
static unsigned int rtl8169_xmii_link_ok(void *ioaddr )
{
  unsigned char tmp ;
  {
  tmp = readb((void const volatile *)ioaddr + 108U);
  return ((unsigned int )tmp & 2U);
}
}
static void rtl8169_tbi_reset_enable(void *ioaddr )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)ioaddr + 100U);
  writel(tmp | 2147483648U, (void volatile *)ioaddr + 100U);
  return;
}
}
static void rtl8169_xmii_reset_enable(void *ioaddr )
{
  unsigned int val ;
  int tmp ;
  {
  tmp = mdio_read(ioaddr, 0);
  val = (unsigned int )(tmp | 32768);
  mdio_write(ioaddr, 0, (int )val & 65535);
  return;
}
}
static void rtl8169_check_link_status(struct net_device *dev , struct rtl8169_private *tp ,
                                      void *ioaddr )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  unsigned int tmp___6 ;
  {
  tmp = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  tmp___6 = (*(tp->link_ok))(ioaddr);
  if (tmp___6 != 0U) {
    pm_request_resume(& (tp->pci_dev)->dev);
    netif_carrier_on(dev);
    if ((tp->msg_enable & 32U) != 0U) {
      tmp___0 = netdev_name((struct net_device const *)dev);
      tmp___1 = dev_name((struct device const *)dev->dev.parent);
      tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: link up\n", tmp___2, tmp___1, tmp___0);
    } else {
    }
  } else {
    netif_carrier_off(dev);
    if ((tp->msg_enable & 16U) != 0U) {
      tmp___3 = netdev_name((struct net_device const *)dev);
      tmp___4 = dev_name((struct device const *)dev->dev.parent);
      tmp___5 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: link down\n", tmp___5, tmp___4, tmp___3);
    } else {
    }
    pm_schedule_suspend(& (tp->pci_dev)->dev, 100U);
  }
  spin_unlock_irqrestore(& tp->lock, flags);
  return;
}
}
static u32 __rtl8169_get_wol(struct rtl8169_private *tp )
{
  void *ioaddr ;
  u8 options ;
  u32 wolopts ;
  {
  ioaddr = tp->mmio_addr;
  wolopts = 0U;
  options = readb((void const volatile *)ioaddr + 82U);
  if (((int )options & 1) == 0) {
    return (0U);
  } else {
  }
  options = readb((void const volatile *)ioaddr + 84U);
  if (((int )options & 16) != 0) {
    wolopts = wolopts | 1U;
  } else {
  }
  if (((int )options & 32) != 0) {
    wolopts = wolopts | 32U;
  } else {
  }
  options = readb((void const volatile *)ioaddr + 86U);
  if (((int )options & 16) != 0) {
    wolopts = wolopts | 2U;
  } else {
  }
  if (((int )options & 64) != 0) {
    wolopts = wolopts | 8U;
  } else {
  }
  if (((int )options & 32) != 0) {
    wolopts = wolopts | 4U;
  } else {
  }
  return (wolopts);
}
}
static void rtl8169_get_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  spin_lock_irq(& tp->lock);
  wol->supported = 47U;
  wol->wolopts = __rtl8169_get_wol(tp);
  spin_unlock_irq(& tp->lock);
  return;
}
}
static void __rtl8169_set_wol(struct rtl8169_private *tp , u32 wolopts )
{
  void *ioaddr ;
  unsigned int i ;
  struct __anonstruct_cfg_197 cfg[7U] ;
  u8 options ;
  unsigned char tmp ;
  {
  ioaddr = tp->mmio_addr;
  cfg[0].opt = 47U;
  cfg[0].reg = 82U;
  cfg[0].mask = 1U;
  cfg[1].opt = 1U;
  cfg[1].reg = 84U;
  cfg[1].mask = 16U;
  cfg[2].opt = 32U;
  cfg[2].reg = 84U;
  cfg[2].mask = 32U;
  cfg[3].opt = 2U;
  cfg[3].reg = 86U;
  cfg[3].mask = 16U;
  cfg[4].opt = 8U;
  cfg[4].reg = 86U;
  cfg[4].mask = 64U;
  cfg[5].opt = 4U;
  cfg[5].reg = 86U;
  cfg[5].mask = 32U;
  cfg[6].opt = 47U;
  cfg[6].reg = 86U;
  cfg[6].mask = 2U;
  writeb(192, (void volatile *)ioaddr + 80U);
  i = 0U;
  goto ldv_37372;
  ldv_37371:
  tmp = readb((void const volatile *)ioaddr + (unsigned long )cfg[i].reg);
  options = (u8 )((int )((signed char )tmp) & ~ ((int )((signed char )cfg[i].mask)));
  if ((cfg[i].opt & wolopts) != 0U) {
    options = (u8 )((int )cfg[i].mask | (int )options);
  } else {
  }
  writeb((int )options, (void volatile *)ioaddr + (unsigned long )cfg[i].reg);
  i = i + 1U;
  ldv_37372: ;
  if (i <= 6U) {
    goto ldv_37371;
  } else {
  }
  writeb(0, (void volatile *)ioaddr + 80U);
  return;
}
}
static int rtl8169_set_wol(struct net_device *dev , struct ethtool_wolinfo *wol )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  spin_lock_irq(& tp->lock);
  if (wol->wolopts != 0U) {
    tp->features = tp->features | 1U;
  } else {
    tp->features = tp->features & 4294967294U;
  }
  __rtl8169_set_wol(tp, wol->wolopts);
  device_set_wakeup_enable(& (tp->pci_dev)->dev, wol->wolopts != 0U);
  spin_unlock_irq(& tp->lock);
  return (0);
}
}
static void rtl8169_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  strcpy((char *)(& info->driver), "r8169");
  strcpy((char *)(& info->version), "2.3LK-NAPI");
  tmp___0 = pci_name((struct pci_dev const *)tp->pci_dev);
  strcpy((char *)(& info->bus_info), tmp___0);
  return;
}
}
static int rtl8169_get_regs_len(struct net_device *dev )
{
  {
  return (256);
}
}
static int rtl8169_set_speed_tbi(struct net_device *dev , u8 autoneg , u16 speed ,
                                 u8 duplex )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int ret ;
  u32 reg ;
  unsigned int tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  ret = 0;
  tmp___0 = readl((void const volatile *)ioaddr + 100U);
  reg = tmp___0;
  if (((unsigned int )autoneg == 0U && (unsigned int )speed == 1000U) && (unsigned int )duplex == 1U) {
    writel(reg & 3489660927U, (void volatile *)ioaddr + 100U);
  } else
  if ((unsigned int )autoneg == 1U) {
    writel(reg | 805306368U, (void volatile *)ioaddr + 100U);
  } else {
    if ((tp->msg_enable & 4U) != 0U) {
      tmp___1 = netdev_name((struct net_device const *)dev);
      tmp___2 = dev_name((struct device const *)dev->dev.parent);
      tmp___3 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<4>%s %s: %s: incorrect speed setting refused in TBI mode\n", tmp___3,
             tmp___2, tmp___1);
    } else {
    }
    ret = -95;
  }
  return (ret);
}
}
static int rtl8169_set_speed_xmii(struct net_device *dev , u8 autoneg , u16 speed ,
                                  u8 duplex )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int giga_ctrl ;
  int bmcr ;
  int auto_nego ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  if ((unsigned int )autoneg == 1U) {
    auto_nego = mdio_read(ioaddr, 4);
    auto_nego = auto_nego | 480;
    auto_nego = auto_nego | 3072;
    giga_ctrl = mdio_read(ioaddr, 9);
    giga_ctrl = giga_ctrl & -769;
    if (((((((tp->mac_version != 7 && tp->mac_version != 8) && tp->mac_version != 9) && tp->mac_version != 10) && tp->mac_version != 13) && tp->mac_version != 14) && tp->mac_version != 15) && tp->mac_version != 17) {
      giga_ctrl = giga_ctrl | 768;
    } else
    if ((tp->msg_enable & 4U) != 0U) {
      tmp___0 = netdev_name((struct net_device const *)dev);
      tmp___1 = dev_name((struct device const *)dev->dev.parent);
      tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: PHY does not support 1000Mbps\n", tmp___2, tmp___1, tmp___0);
    } else {
    }
    bmcr = 4608;
    if ((tp->mac_version == 11 || tp->mac_version == 12) || tp->mac_version > 15) {
      mdio_write(ioaddr, 31, 0);
      mdio_write(ioaddr, 14, 0);
    } else {
    }
    mdio_write(ioaddr, 4, auto_nego);
    mdio_write(ioaddr, 9, giga_ctrl);
  } else {
    giga_ctrl = 0;
    if ((unsigned int )speed == 10U) {
      bmcr = 0;
    } else
    if ((unsigned int )speed == 100U) {
      bmcr = 8192;
    } else {
      return (-22);
    }
    if ((unsigned int )duplex == 1U) {
      bmcr = bmcr | 256;
    } else {
    }
    mdio_write(ioaddr, 31, 0);
  }
  tp->phy_1000_ctrl_reg = giga_ctrl;
  mdio_write(ioaddr, 0, bmcr);
  if (tp->mac_version == 2 || tp->mac_version == 3) {
    if ((unsigned int )speed == 100U && (unsigned int )autoneg != 1U) {
      mdio_write(ioaddr, 23, 8504);
      mdio_write(ioaddr, 14, 608);
    } else {
      mdio_write(ioaddr, 23, 8456);
      mdio_write(ioaddr, 14, 0);
    }
  } else {
  }
  return (0);
}
}
static int rtl8169_set_speed(struct net_device *dev , u8 autoneg , u16 speed , u8 duplex )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ret = (*(tp->set_speed))(dev, (int )autoneg, (int )speed, (int )duplex);
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 != 0 && (tp->phy_1000_ctrl_reg & 512) != 0) {
    ldv_mod_timer_5(& tp->timer, (unsigned long )jiffies + 2500UL);
  } else {
  }
  return (ret);
}
}
static int rtl8169_set_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned long flags ;
  int ret ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  ret = rtl8169_set_speed(dev, (int )cmd->autoneg, (int )cmd->speed, (int )cmd->duplex);
  spin_unlock_irqrestore(& tp->lock, flags);
  return (ret);
}
}
static u32 rtl8169_get_rx_csum(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  return ((u32 )tp->cp_cmd & 32U);
}
}
static int rtl8169_set_rx_csum(struct net_device *dev , u32 data )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if (data != 0U) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 32U);
  } else {
    tp->cp_cmd = (unsigned int )tp->cp_cmd & 65503U;
  }
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  readw((void const volatile *)ioaddr + 224U);
  spin_unlock_irqrestore(& tp->lock, flags);
  return (0);
}
}
__inline static u32 rtl8169_tx_vlan_tag(struct rtl8169_private *tp , struct sk_buff *skb )
{
  __u16 tmp ;
  u32 tmp___0 ;
  {
  if ((unsigned long )tp->vlgrp != (unsigned long )((struct vlan_group *)0) && ((int )skb->vlan_tci & 4096) != 0) {
    tmp = __fswab16((int )skb->vlan_tci & 61439);
    tmp___0 = (u32 )((int )tmp | 131072);
  } else {
    tmp___0 = 0U;
  }
  return (tmp___0);
}
}
static void rtl8169_vlan_rx_register(struct net_device *dev , struct vlan_group *grp )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tp->vlgrp = grp;
  if ((unsigned long )tp->vlgrp != (unsigned long )((struct vlan_group *)0) || tp->mac_version == 5) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 64U);
  } else {
    tp->cp_cmd = (unsigned int )tp->cp_cmd & 65471U;
  }
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  readw((void const volatile *)ioaddr + 224U);
  spin_unlock_irqrestore(& tp->lock, flags);
  return;
}
}
static int rtl8169_rx_vlan_skb(struct rtl8169_private *tp , struct RxDesc *desc ,
                               struct sk_buff *skb , int polling )
{
  u32 opts2 ;
  struct vlan_group *vlgrp ;
  int ret ;
  __u16 tmp ;
  {
  opts2 = desc->opts2;
  vlgrp = tp->vlgrp;
  if ((unsigned long )vlgrp != (unsigned long )((struct vlan_group *)0) && (opts2 & 65536U) != 0U) {
    tmp = __fswab16((int )((__u16 )opts2));
    __vlan_hwaccel_rx(skb, vlgrp, (int )tmp, polling);
    ret = 0;
  } else {
    ret = -1;
  }
  desc->opts2 = 0U;
  return (ret);
}
}
static int rtl8169_gset_tbi(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  u32 status ;
  unsigned int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  cmd->supported = 1120U;
  cmd->port = 3U;
  cmd->transceiver = 0U;
  tmp___0 = readl((void const volatile *)ioaddr + 100U);
  status = tmp___0;
  cmd->advertising = (status & 536870912U) != 0U ? 64U : 0U;
  cmd->autoneg = (status & 536870912U) != 0U;
  cmd->speed = 1000U;
  cmd->duplex = 1U;
  return (0);
}
}
static int rtl8169_gset_xmii(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = mii_ethtool_gset(& tp->mii, cmd);
  return (tmp___0);
}
}
static int rtl8169_get_settings(struct net_device *dev , struct ethtool_cmd *cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned long flags ;
  int rc ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  rc = (*(tp->get_settings))(dev, cmd);
  spin_unlock_irqrestore(& tp->lock, flags);
  return (rc);
}
}
static void rtl8169_get_regs(struct net_device *dev , struct ethtool_regs *regs ,
                             void *p )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  if (regs->len > 256U) {
    regs->len = 256U;
  } else {
  }
  tmp___0 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  memcpy_fromio(p, (void const volatile *)tp->mmio_addr, (size_t )regs->len);
  spin_unlock_irqrestore(& tp->lock, flags);
  return;
}
}
static u32 rtl8169_get_msglevel(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  return (tp->msg_enable);
}
}
static void rtl8169_set_msglevel(struct net_device *dev , u32 value )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tp->msg_enable = value;
  return;
}
}
static char const rtl8169_gstrings[13U][32U] =
  { { 't', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 'r', 'x', '_', 'p',
            'a', 'c', 'k', 'e',
            't', 's', '\000'},
   { 't', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'e',
            'r', 'r', 'o', 'r',
            's', '\000'},
   { 'r', 'x', '_', 'm',
            'i', 's', 's', 'e',
            'd', '\000'},
   { 'a', 'l', 'i', 'g',
            'n', '_', 'e', 'r',
            'r', 'o', 'r', 's',
            '\000'},
   { 't', 'x', '_', 's',
            'i', 'n', 'g', 'l',
            'e', '_', 'c', 'o',
            'l', 'l', 'i', 's',
            'i', 'o', 'n', 's',
            '\000'},
   { 't', 'x', '_', 'm',
            'u', 'l', 't', 'i',
            '_', 'c', 'o', 'l',
            'l', 'i', 's', 'i',
            'o', 'n', 's', '\000'},
   { 'u', 'n', 'i', 'c',
            'a', 's', 't', '\000'},
   { 'b', 'r', 'o', 'a',
            'd', 'c', 'a', 's',
            't', '\000'},
   { 'm', 'u', 'l', 't',
            'i', 'c', 'a', 's',
            't', '\000'},
   { 't', 'x', '_', 'a',
            'b', 'o', 'r', 't',
            'e', 'd', '\000'},
   { 't', 'x', '_', 'u',
            'n', 'd', 'e', 'r',
            'r', 'u', 'n', '\000'}};
static int rtl8169_get_sset_count(struct net_device *dev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return (13);
  default: ;
  return (-95);
  }
}
}
static void rtl8169_update_counters(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct rtl8169_counters *counters ;
  dma_addr_t paddr ;
  u32 cmd ;
  int wait ;
  unsigned char tmp___0 ;
  void *tmp___1 ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  wait = 1000;
  tmp___0 = readb((void const volatile *)ioaddr + 55U);
  if (((int )tmp___0 & 8) == 0) {
    return;
  } else {
  }
  tmp___1 = pci_alloc_consistent(tp->pci_dev, 64UL, & paddr);
  counters = (struct rtl8169_counters *)tmp___1;
  if ((unsigned long )counters == (unsigned long )((struct rtl8169_counters *)0)) {
    return;
  } else {
  }
  writel((unsigned int )(paddr >> 32), (void volatile *)ioaddr + 20U);
  cmd = (u32 )paddr;
  writel(cmd, (void volatile *)ioaddr + 16U);
  writel(cmd | 8U, (void volatile *)ioaddr + 16U);
  goto ldv_37527;
  ldv_37526:
  tmp___2 = readl((void const volatile *)ioaddr + 16U);
  if (((unsigned long )tmp___2 & 8UL) == 0UL) {
    __len = 64UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& tp->counters), (void const *)counters, __len);
    } else {
      __ret = memcpy((void *)(& tp->counters), (void const *)counters,
                               __len);
    }
    goto ldv_37525;
  } else {
  }
  __const_udelay(42950UL);
  ldv_37527:
  tmp___3 = wait;
  wait = wait - 1;
  if (tmp___3 != 0) {
    goto ldv_37526;
  } else {
  }
  ldv_37525:
  writel(0U, (void volatile *)ioaddr + 16U);
  writel(0U, (void volatile *)ioaddr + 20U);
  pci_free_consistent(tp->pci_dev, 64UL, (void *)counters, paddr);
  return;
}
}
static void rtl8169_get_ethtool_stats(struct net_device *dev , struct ethtool_stats *stats ,
                                      u64 *data )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = rtnl_is_locked();
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    printk("<3>RTNL: assertion failed at %s (%d)\n", (char *)"/home/ldvuser/gratinskiy/commit-tester-runs/6-cpa-svcomp-newdeg/commit-tester-work/task-012--linux-stable--dir/work/current--X--drivers/net/r8169.ko--X--defaultlinux-stable-431e8d4-1--X--102_1a--X--cpachecker/linux-stable-431e8d4-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/102_1a/drivers/net/r8169.o.c.prepared",
           1318);
    dump_stack();
  } else {
  }
  rtl8169_update_counters(dev);
  *data = tp->counters.tx_packets;
  *(data + 1UL) = tp->counters.rx_packets;
  *(data + 2UL) = tp->counters.tx_errors;
  *(data + 3UL) = (u64 )tp->counters.rx_errors;
  *(data + 4UL) = (u64 )tp->counters.rx_missed;
  *(data + 5UL) = (u64 )tp->counters.align_errors;
  *(data + 6UL) = (u64 )tp->counters.tx_one_collision;
  *(data + 7UL) = (u64 )tp->counters.tx_multi_collision;
  *(data + 8UL) = tp->counters.rx_unicast;
  *(data + 9UL) = tp->counters.rx_broadcast;
  *(data + 10UL) = (u64 )tp->counters.rx_multicast;
  *(data + 11UL) = (u64 )tp->counters.tx_aborted;
  *(data + 12UL) = (u64 )tp->counters.tx_underun;
  return;
}
}
static void rtl8169_get_strings(struct net_device *dev , u32 stringset , u8 *data )
{
  size_t __len ;
  void *__ret ;
  {
  switch (stringset) {
  case 1U:
  __len = 416UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& rtl8169_gstrings), __len);
  } else {
    __ret = memcpy((void *)data, (void const *)(& rtl8169_gstrings), __len);
  }
  goto ldv_37543;
  }
  ldv_37543: ;
  return;
}
}
static void rtl8169_get_mac_version(struct rtl8169_private *tp , void *ioaddr )
{
  struct __anonstruct_mac_info_201 mac_info[38U] ;
  struct __anonstruct_p_202 const *p ;
  u32 reg ;
  unsigned int tmp ;
  {
  mac_info[0].mask = 2096103424U;
  mac_info[0].val = 674234368U;
  mac_info[0].mac_version = 26;
  mac_info[1].mask = 2096103424U;
  mac_info[1].val = 672137216U;
  mac_info[1].mac_version = 25;
  mac_info[2].mask = 2088763392U;
  mac_info[2].val = 679477248U;
  mac_info[2].mac_version = 27;
  mac_info[3].mask = 2088763392U;
  mac_info[3].val = 671088640U;
  mac_info[3].mac_version = 26;
  mac_info[4].mask = 2096103424U;
  mac_info[4].val = 1018167296U;
  mac_info[4].mac_version = 24;
  mac_info[5].mask = 2096103424U;
  mac_info[5].val = 1016070144U;
  mac_info[5].mac_version = 23;
  mac_info[6].mask = 2096103424U;
  mac_info[6].val = 1015021568U;
  mac_info[6].mac_version = 18;
  mac_info[7].mask = 2088763392U;
  mac_info[7].val = 1015021568U;
  mac_info[7].mac_version = 24;
  mac_info[8].mask = 2096103424U;
  mac_info[8].val = 1006632960U;
  mac_info[8].mac_version = 19;
  mac_info[9].mask = 2096103424U;
  mac_info[9].val = 1008730112U;
  mac_info[9].mac_version = 20;
  mac_info[10].mask = 2096103424U;
  mac_info[10].val = 1009778688U;
  mac_info[10].mac_version = 21;
  mac_info[11].mask = 2096103424U;
  mac_info[11].val = 1010827264U;
  mac_info[11].mac_version = 22;
  mac_info[12].mask = 2088763392U;
  mac_info[12].val = 1006632960U;
  mac_info[12].mac_version = 22;
  mac_info[13].mask = 2096103424U;
  mac_info[13].val = 939524096U;
  mac_info[13].mac_version = 12;
  mac_info[14].mask = 2096103424U;
  mac_info[14].val = 944766976U;
  mac_info[14].mac_version = 16;
  mac_info[15].mask = 2088763392U;
  mac_info[15].val = 939524096U;
  mac_info[15].mac_version = 16;
  mac_info[16].mask = 2088763392U;
  mac_info[16].val = 805306368U;
  mac_info[16].mac_version = 11;
  mac_info[17].mask = 2096103424U;
  mac_info[17].val = 882900992U;
  mac_info[17].mac_version = 9;
  mac_info[18].mask = 2096103424U;
  mac_info[18].val = 614465536U;
  mac_info[18].mac_version = 9;
  mac_info[19].mask = 2096103424U;
  mac_info[19].val = 881852416U;
  mac_info[19].mac_version = 8;
  mac_info[20].mask = 2096103424U;
  mac_info[20].val = 613416960U;
  mac_info[20].mac_version = 8;
  mac_info[21].mask = 2096103424U;
  mac_info[21].val = 880803840U;
  mac_info[21].mac_version = 7;
  mac_info[22].mask = 2096103424U;
  mac_info[22].val = 612368384U;
  mac_info[22].mac_version = 7;
  mac_info[23].mask = 2096103424U;
  mac_info[23].val = 872415232U;
  mac_info[23].mac_version = 13;
  mac_info[24].mask = 2096103424U;
  mac_info[24].val = 875560960U;
  mac_info[24].mac_version = 10;
  mac_info[25].mask = 2096103424U;
  mac_info[25].val = 874512384U;
  mac_info[25].mac_version = 17;
  mac_info[26].mask = 2088763392U;
  mac_info[26].val = 880803840U;
  mac_info[26].mac_version = 9;
  mac_info[27].mask = 2088763392U;
  mac_info[27].val = 612368384U;
  mac_info[27].mac_version = 9;
  mac_info[28].mask = 2088763392U;
  mac_info[28].val = 872415232U;
  mac_info[28].mac_version = 17;
  mac_info[29].mask = 4236247040U;
  mac_info[29].val = 947912704U;
  mac_info[29].mac_version = 15;
  mac_info[30].mask = 4236247040U;
  mac_info[30].val = 813694976U;
  mac_info[30].mac_version = 14;
  mac_info[31].mask = 4236247040U;
  mac_info[31].val = 2550136832U;
  mac_info[31].mac_version = 6;
  mac_info[32].mask = 4236247040U;
  mac_info[32].val = 402653184U;
  mac_info[32].mac_version = 5;
  mac_info[33].mask = 4236247040U;
  mac_info[33].val = 268435456U;
  mac_info[33].mac_version = 4;
  mac_info[34].mask = 4236247040U;
  mac_info[34].val = 67108864U;
  mac_info[34].mac_version = 3;
  mac_info[35].mask = 4236247040U;
  mac_info[35].val = 8388608U;
  mac_info[35].mac_version = 2;
  mac_info[36].mask = 4236247040U;
  mac_info[36].val = 0U;
  mac_info[36].mac_version = 1;
  mac_info[37].mask = 0U;
  mac_info[37].val = 0U;
  mac_info[37].mac_version = 0;
  p = (struct __anonstruct_205 const *)(& mac_info);
  tmp = readl((void const volatile *)ioaddr + 64U);
  reg = tmp;
  goto ldv_37557;
  ldv_37556:
  p = p + 1;
  ldv_37557: ;
  if (((u32 )p->mask & reg) != (u32 )p->val) {
    goto ldv_37556;
  } else {
  }
  tp->mac_version = p->mac_version;
  return;
}
}
static void rtl8169_print_mac_version(struct rtl8169_private *tp )
{
  {
  return;
}
}
static void rtl_phy_write(void *ioaddr , struct phy_reg const *regs , int len )
{
  int tmp ;
  {
  goto ldv_37571;
  ldv_37570:
  mdio_write(ioaddr, (int )regs->reg, (int )regs->val);
  regs = regs + 1;
  ldv_37571:
  tmp = len;
  len = len - 1;
  if (tmp > 0) {
    goto ldv_37570;
  } else {
  }
  return;
}
}
static void rtl8169s_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[51U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 6U;
  phy_reg_init[1].val = 110U;
  phy_reg_init[2].reg = 8U;
  phy_reg_init[2].val = 1800U;
  phy_reg_init[3].reg = 21U;
  phy_reg_init[3].val = 16384U;
  phy_reg_init[4].reg = 24U;
  phy_reg_init[4].val = 26055U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 1U;
  phy_reg_init[6].reg = 3U;
  phy_reg_init[6].val = 161U;
  phy_reg_init[7].reg = 2U;
  phy_reg_init[7].val = 8U;
  phy_reg_init[8].reg = 1U;
  phy_reg_init[8].val = 288U;
  phy_reg_init[9].reg = 0U;
  phy_reg_init[9].val = 4096U;
  phy_reg_init[10].reg = 4U;
  phy_reg_init[10].val = 2048U;
  phy_reg_init[11].reg = 4U;
  phy_reg_init[11].val = 0U;
  phy_reg_init[12].reg = 3U;
  phy_reg_init[12].val = 65345U;
  phy_reg_init[13].reg = 2U;
  phy_reg_init[13].val = 57184U;
  phy_reg_init[14].reg = 1U;
  phy_reg_init[14].val = 320U;
  phy_reg_init[15].reg = 0U;
  phy_reg_init[15].val = 119U;
  phy_reg_init[16].reg = 4U;
  phy_reg_init[16].val = 30720U;
  phy_reg_init[17].reg = 4U;
  phy_reg_init[17].val = 28672U;
  phy_reg_init[18].reg = 3U;
  phy_reg_init[18].val = 32815U;
  phy_reg_init[19].reg = 2U;
  phy_reg_init[19].val = 20226U;
  phy_reg_init[20].reg = 1U;
  phy_reg_init[20].val = 1033U;
  phy_reg_init[21].reg = 0U;
  phy_reg_init[21].val = 61689U;
  phy_reg_init[22].reg = 4U;
  phy_reg_init[22].val = 38912U;
  phy_reg_init[23].reg = 4U;
  phy_reg_init[23].val = 36864U;
  phy_reg_init[24].reg = 3U;
  phy_reg_init[24].val = 57089U;
  phy_reg_init[25].reg = 2U;
  phy_reg_init[25].val = 57120U;
  phy_reg_init[26].reg = 1U;
  phy_reg_init[26].val = 65429U;
  phy_reg_init[27].reg = 0U;
  phy_reg_init[27].val = 47616U;
  phy_reg_init[28].reg = 4U;
  phy_reg_init[28].val = 43008U;
  phy_reg_init[29].reg = 4U;
  phy_reg_init[29].val = 40960U;
  phy_reg_init[30].reg = 3U;
  phy_reg_init[30].val = 65345U;
  phy_reg_init[31].reg = 2U;
  phy_reg_init[31].val = 57120U;
  phy_reg_init[32].reg = 1U;
  phy_reg_init[32].val = 320U;
  phy_reg_init[33].reg = 0U;
  phy_reg_init[33].val = 187U;
  phy_reg_init[34].reg = 4U;
  phy_reg_init[34].val = 47104U;
  phy_reg_init[35].reg = 4U;
  phy_reg_init[35].val = 45056U;
  phy_reg_init[36].reg = 3U;
  phy_reg_init[36].val = 57153U;
  phy_reg_init[37].reg = 2U;
  phy_reg_init[37].val = 56416U;
  phy_reg_init[38].reg = 1U;
  phy_reg_init[38].val = 25408U;
  phy_reg_init[39].reg = 0U;
  phy_reg_init[39].val = 125U;
  phy_reg_init[40].reg = 4U;
  phy_reg_init[40].val = 55296U;
  phy_reg_init[41].reg = 4U;
  phy_reg_init[41].val = 53248U;
  phy_reg_init[42].reg = 3U;
  phy_reg_init[42].val = 57089U;
  phy_reg_init[43].reg = 2U;
  phy_reg_init[43].val = 57120U;
  phy_reg_init[44].reg = 1U;
  phy_reg_init[44].val = 4106U;
  phy_reg_init[45].reg = 0U;
  phy_reg_init[45].val = 41215U;
  phy_reg_init[46].reg = 4U;
  phy_reg_init[46].val = 63488U;
  phy_reg_init[47].reg = 4U;
  phy_reg_init[47].val = 61440U;
  phy_reg_init[48].reg = 31U;
  phy_reg_init[48].val = 0U;
  phy_reg_init[49].reg = 11U;
  phy_reg_init[49].val = 0U;
  phy_reg_init[50].reg = 0U;
  phy_reg_init[50].val = 37376U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 51);
  return;
}
}
static void rtl8169sb_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 2U;
  phy_reg_init[1].reg = 1U;
  phy_reg_init[1].val = 37072U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 3);
  return;
}
}
static void rtl8169scd_hw_phy_config_quirk(struct rtl8169_private *tp , void *ioaddr )
{
  struct pci_dev *pdev ;
  u16 vendor_id ;
  u16 device_id ;
  {
  pdev = tp->pci_dev;
  pci_read_config_word(pdev, 44, & vendor_id);
  pci_read_config_word(pdev, 46, & device_id);
  if ((unsigned int )vendor_id != 5208U || (unsigned int )device_id != 57344U) {
    return;
  } else {
  }
  mdio_write(ioaddr, 31, 1);
  mdio_write(ioaddr, 16, 61467);
  mdio_write(ioaddr, 31, 0);
  return;
}
}
static void rtl8169scd_hw_phy_config(struct rtl8169_private *tp , void *ioaddr )
{
  struct phy_reg phy_reg_init[35U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 4U;
  phy_reg_init[1].val = 0U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 161U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 8U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 288U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 4096U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 2048U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 3U;
  phy_reg_init[8].val = 32815U;
  phy_reg_init[9].reg = 2U;
  phy_reg_init[9].val = 20226U;
  phy_reg_init[10].reg = 1U;
  phy_reg_init[10].val = 1033U;
  phy_reg_init[11].reg = 0U;
  phy_reg_init[11].val = 61593U;
  phy_reg_init[12].reg = 4U;
  phy_reg_init[12].val = 38912U;
  phy_reg_init[13].reg = 4U;
  phy_reg_init[13].val = 40960U;
  phy_reg_init[14].reg = 3U;
  phy_reg_init[14].val = 57089U;
  phy_reg_init[15].reg = 2U;
  phy_reg_init[15].val = 57120U;
  phy_reg_init[16].reg = 1U;
  phy_reg_init[16].val = 65429U;
  phy_reg_init[17].reg = 0U;
  phy_reg_init[17].val = 47616U;
  phy_reg_init[18].reg = 4U;
  phy_reg_init[18].val = 43008U;
  phy_reg_init[19].reg = 4U;
  phy_reg_init[19].val = 61440U;
  phy_reg_init[20].reg = 3U;
  phy_reg_init[20].val = 57089U;
  phy_reg_init[21].reg = 2U;
  phy_reg_init[21].val = 57120U;
  phy_reg_init[22].reg = 1U;
  phy_reg_init[22].val = 4122U;
  phy_reg_init[23].reg = 0U;
  phy_reg_init[23].val = 41215U;
  phy_reg_init[24].reg = 4U;
  phy_reg_init[24].val = 63488U;
  phy_reg_init[25].reg = 4U;
  phy_reg_init[25].val = 0U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 0U;
  phy_reg_init[27].reg = 31U;
  phy_reg_init[27].val = 1U;
  phy_reg_init[28].reg = 16U;
  phy_reg_init[28].val = 62491U;
  phy_reg_init[29].reg = 20U;
  phy_reg_init[29].val = 64340U;
  phy_reg_init[30].reg = 24U;
  phy_reg_init[30].val = 62919U;
  phy_reg_init[31].reg = 31U;
  phy_reg_init[31].val = 0U;
  phy_reg_init[32].reg = 31U;
  phy_reg_init[32].val = 1U;
  phy_reg_init[33].reg = 23U;
  phy_reg_init[33].val = 3264U;
  phy_reg_init[34].reg = 31U;
  phy_reg_init[34].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 35);
  rtl8169scd_hw_phy_config_quirk(tp, ioaddr);
  return;
}
}
static void rtl8169sce_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[42U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 4U;
  phy_reg_init[1].val = 0U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 161U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 8U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 288U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 4096U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 2048U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 3U;
  phy_reg_init[8].val = 32815U;
  phy_reg_init[9].reg = 2U;
  phy_reg_init[9].val = 20226U;
  phy_reg_init[10].reg = 1U;
  phy_reg_init[10].val = 1033U;
  phy_reg_init[11].reg = 0U;
  phy_reg_init[11].val = 61593U;
  phy_reg_init[12].reg = 4U;
  phy_reg_init[12].val = 38912U;
  phy_reg_init[13].reg = 4U;
  phy_reg_init[13].val = 40960U;
  phy_reg_init[14].reg = 3U;
  phy_reg_init[14].val = 57089U;
  phy_reg_init[15].reg = 2U;
  phy_reg_init[15].val = 57120U;
  phy_reg_init[16].reg = 1U;
  phy_reg_init[16].val = 65429U;
  phy_reg_init[17].reg = 0U;
  phy_reg_init[17].val = 47616U;
  phy_reg_init[18].reg = 4U;
  phy_reg_init[18].val = 43008U;
  phy_reg_init[19].reg = 4U;
  phy_reg_init[19].val = 61440U;
  phy_reg_init[20].reg = 3U;
  phy_reg_init[20].val = 57089U;
  phy_reg_init[21].reg = 2U;
  phy_reg_init[21].val = 57120U;
  phy_reg_init[22].reg = 1U;
  phy_reg_init[22].val = 4122U;
  phy_reg_init[23].reg = 0U;
  phy_reg_init[23].val = 41215U;
  phy_reg_init[24].reg = 4U;
  phy_reg_init[24].val = 63488U;
  phy_reg_init[25].reg = 4U;
  phy_reg_init[25].val = 0U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 0U;
  phy_reg_init[27].reg = 31U;
  phy_reg_init[27].val = 1U;
  phy_reg_init[28].reg = 11U;
  phy_reg_init[28].val = 33920U;
  phy_reg_init[29].reg = 31U;
  phy_reg_init[29].val = 0U;
  phy_reg_init[30].reg = 31U;
  phy_reg_init[30].val = 1U;
  phy_reg_init[31].reg = 24U;
  phy_reg_init[31].val = 26567U;
  phy_reg_init[32].reg = 4U;
  phy_reg_init[32].val = 8192U;
  phy_reg_init[33].reg = 3U;
  phy_reg_init[33].val = 47U;
  phy_reg_init[34].reg = 2U;
  phy_reg_init[34].val = 17248U;
  phy_reg_init[35].reg = 1U;
  phy_reg_init[35].val = 265U;
  phy_reg_init[36].reg = 0U;
  phy_reg_init[36].val = 12322U;
  phy_reg_init[37].reg = 4U;
  phy_reg_init[37].val = 10240U;
  phy_reg_init[38].reg = 31U;
  phy_reg_init[38].val = 0U;
  phy_reg_init[39].reg = 31U;
  phy_reg_init[39].val = 1U;
  phy_reg_init[40].reg = 23U;
  phy_reg_init[40].val = 3264U;
  phy_reg_init[41].reg = 31U;
  phy_reg_init[41].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 42);
  return;
}
}
static void rtl8168bb_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[2U] ;
  {
  phy_reg_init[0].reg = 16U;
  phy_reg_init[0].val = 62491U;
  phy_reg_init[1].reg = 31U;
  phy_reg_init[1].val = 0U;
  mdio_write(ioaddr, 31, 1);
  mdio_patch(ioaddr, 22, 1);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 2);
  return;
}
}
static void rtl8168bef_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 16U;
  phy_reg_init[1].val = 62491U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 3);
  return;
}
}
static void rtl8168cp_1_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[5U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 0U;
  phy_reg_init[1].reg = 29U;
  phy_reg_init[1].val = 3840U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 2U;
  phy_reg_init[3].reg = 12U;
  phy_reg_init[3].val = 7880U;
  phy_reg_init[4].reg = 31U;
  phy_reg_init[4].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 5);
  return;
}
}
static void rtl8168cp_2_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[3U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 29U;
  phy_reg_init[1].val = 15768U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 0U;
  mdio_write(ioaddr, 31, 0);
  mdio_patch(ioaddr, 20, 32);
  mdio_patch(ioaddr, 13, 32);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 3);
  return;
}
}
static void rtl8168c_1_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[17U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 31U;
  phy_reg_init[2].val = 2U;
  phy_reg_init[3].reg = 0U;
  phy_reg_init[3].val = 35028U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 33457U;
  phy_reg_init[5].reg = 3U;
  phy_reg_init[5].val = 28674U;
  phy_reg_init[6].reg = 8U;
  phy_reg_init[6].val = 40496U;
  phy_reg_init[7].reg = 9U;
  phy_reg_init[7].val = 496U;
  phy_reg_init[8].reg = 10U;
  phy_reg_init[8].val = 21760U;
  phy_reg_init[9].reg = 12U;
  phy_reg_init[9].val = 200U;
  phy_reg_init[10].reg = 31U;
  phy_reg_init[10].val = 3U;
  phy_reg_init[11].reg = 18U;
  phy_reg_init[11].val = 49302U;
  phy_reg_init[12].reg = 22U;
  phy_reg_init[12].val = 10U;
  phy_reg_init[13].reg = 31U;
  phy_reg_init[13].val = 0U;
  phy_reg_init[14].reg = 31U;
  phy_reg_init[14].val = 0U;
  phy_reg_init[15].reg = 9U;
  phy_reg_init[15].val = 8192U;
  phy_reg_init[16].reg = 9U;
  phy_reg_init[16].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 17);
  mdio_patch(ioaddr, 20, 32);
  mdio_patch(ioaddr, 13, 32);
  mdio_write(ioaddr, 31, 0);
  return;
}
}
static void rtl8168c_2_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[15U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 3U;
  phy_reg_init[2].val = 32815U;
  phy_reg_init[3].reg = 2U;
  phy_reg_init[3].val = 20226U;
  phy_reg_init[4].reg = 1U;
  phy_reg_init[4].val = 1033U;
  phy_reg_init[5].reg = 0U;
  phy_reg_init[5].val = 61593U;
  phy_reg_init[6].reg = 4U;
  phy_reg_init[6].val = 38912U;
  phy_reg_init[7].reg = 4U;
  phy_reg_init[7].val = 36864U;
  phy_reg_init[8].reg = 29U;
  phy_reg_init[8].val = 15768U;
  phy_reg_init[9].reg = 31U;
  phy_reg_init[9].val = 2U;
  phy_reg_init[10].reg = 12U;
  phy_reg_init[10].val = 32440U;
  phy_reg_init[11].reg = 6U;
  phy_reg_init[11].val = 1889U;
  phy_reg_init[12].reg = 31U;
  phy_reg_init[12].val = 3U;
  phy_reg_init[13].reg = 22U;
  phy_reg_init[13].val = 3850U;
  phy_reg_init[14].reg = 31U;
  phy_reg_init[14].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 15);
  mdio_patch(ioaddr, 22, 1);
  mdio_patch(ioaddr, 20, 32);
  mdio_patch(ioaddr, 13, 32);
  mdio_write(ioaddr, 31, 0);
  return;
}
}
static void rtl8168c_3_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[9U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 1U;
  phy_reg_init[1].reg = 18U;
  phy_reg_init[1].val = 8960U;
  phy_reg_init[2].reg = 29U;
  phy_reg_init[2].val = 15768U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 2U;
  phy_reg_init[4].reg = 12U;
  phy_reg_init[4].val = 32440U;
  phy_reg_init[5].reg = 6U;
  phy_reg_init[5].val = 21601U;
  phy_reg_init[6].reg = 31U;
  phy_reg_init[6].val = 3U;
  phy_reg_init[7].reg = 22U;
  phy_reg_init[7].val = 3850U;
  phy_reg_init[8].reg = 31U;
  phy_reg_init[8].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 9);
  mdio_patch(ioaddr, 22, 1);
  mdio_patch(ioaddr, 20, 32);
  mdio_patch(ioaddr, 13, 32);
  mdio_write(ioaddr, 31, 0);
  return;
}
}
static void rtl8168c_4_hw_phy_config(void *ioaddr )
{
  {
  rtl8168c_3_hw_phy_config(ioaddr);
  return;
}
}
static void rtl8168d_1_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init_0[17U] ;
  struct phy_reg phy_reg_init_1[5U] ;
  struct phy_reg phy_reg_init_2[352U] ;
  struct phy_reg phy_reg_init[6U] ;
  int val ;
  u32 set[8U] ;
  int i ;
  struct phy_reg phy_reg_init___0[5U] ;
  u8 tmp ;
  {
  phy_reg_init_0[0].reg = 31U;
  phy_reg_init_0[0].val = 1U;
  phy_reg_init_0[1].reg = 6U;
  phy_reg_init_0[1].val = 16484U;
  phy_reg_init_0[2].reg = 7U;
  phy_reg_init_0[2].val = 10339U;
  phy_reg_init_0[3].reg = 8U;
  phy_reg_init_0[3].val = 1436U;
  phy_reg_init_0[4].reg = 9U;
  phy_reg_init_0[4].val = 9908U;
  phy_reg_init_0[5].reg = 10U;
  phy_reg_init_0[5].val = 27161U;
  phy_reg_init_0[6].reg = 11U;
  phy_reg_init_0[6].val = 56520U;
  phy_reg_init_0[7].reg = 16U;
  phy_reg_init_0[7].val = 61549U;
  phy_reg_init_0[8].reg = 20U;
  phy_reg_init_0[8].val = 32616U;
  phy_reg_init_0[9].reg = 24U;
  phy_reg_init_0[9].val = 32729U;
  phy_reg_init_0[10].reg = 28U;
  phy_reg_init_0[10].val = 61695U;
  phy_reg_init_0[11].reg = 29U;
  phy_reg_init_0[11].val = 15772U;
  phy_reg_init_0[12].reg = 31U;
  phy_reg_init_0[12].val = 3U;
  phy_reg_init_0[13].reg = 18U;
  phy_reg_init_0[13].val = 62623U;
  phy_reg_init_0[14].reg = 19U;
  phy_reg_init_0[14].val = 1803U;
  phy_reg_init_0[15].reg = 26U;
  phy_reg_init_0[15].val = 1453U;
  phy_reg_init_0[16].reg = 20U;
  phy_reg_init_0[16].val = 38080U;
  phy_reg_init_1[0].reg = 31U;
  phy_reg_init_1[0].val = 2U;
  phy_reg_init_1[1].reg = 6U;
  phy_reg_init_1[1].val = 21857U;
  phy_reg_init_1[2].reg = 31U;
  phy_reg_init_1[2].val = 5U;
  phy_reg_init_1[3].reg = 5U;
  phy_reg_init_1[3].val = 33586U;
  phy_reg_init_1[4].reg = 6U;
  phy_reg_init_1[4].val = 21857U;
  phy_reg_init_2[0].reg = 31U;
  phy_reg_init_2[0].val = 5U;
  phy_reg_init_2[1].reg = 5U;
  phy_reg_init_2[1].val = 65474U;
  phy_reg_init_2[2].reg = 31U;
  phy_reg_init_2[2].val = 5U;
  phy_reg_init_2[3].reg = 5U;
  phy_reg_init_2[3].val = 32768U;
  phy_reg_init_2[4].reg = 6U;
  phy_reg_init_2[4].val = 63737U;
  phy_reg_init_2[5].reg = 6U;
  phy_reg_init_2[5].val = 64239U;
  phy_reg_init_2[6].reg = 6U;
  phy_reg_init_2[6].val = 23022U;
  phy_reg_init_2[7].reg = 6U;
  phy_reg_init_2[7].val = 63722U;
  phy_reg_init_2[8].reg = 6U;
  phy_reg_init_2[8].val = 238U;
  phy_reg_init_2[9].reg = 6U;
  phy_reg_init_2[9].val = 63723U;
  phy_reg_init_2[10].reg = 6U;
  phy_reg_init_2[10].val = 224U;
  phy_reg_init_2[11].reg = 6U;
  phy_reg_init_2[11].val = 63612U;
  phy_reg_init_2[12].reg = 6U;
  phy_reg_init_2[12].val = 57848U;
  phy_reg_init_2[13].reg = 6U;
  phy_reg_init_2[13].val = 32089U;
  phy_reg_init_2[14].reg = 6U;
  phy_reg_init_2[14].val = 4079U;
  phy_reg_init_2[15].reg = 6U;
  phy_reg_init_2[15].val = 313U;
  phy_reg_init_2[16].reg = 6U;
  phy_reg_init_2[16].val = 670U;
  phy_reg_init_2[17].reg = 6U;
  phy_reg_init_2[17].val = 1775U;
  phy_reg_init_2[18].reg = 6U;
  phy_reg_init_2[18].val = 4153U;
  phy_reg_init_2[19].reg = 6U;
  phy_reg_init_2[19].val = 2207U;
  phy_reg_init_2[20].reg = 6U;
  phy_reg_init_2[20].val = 10990U;
  phy_reg_init_2[21].reg = 6U;
  phy_reg_init_2[21].val = 63722U;
  phy_reg_init_2[22].reg = 6U;
  phy_reg_init_2[22].val = 238U;
  phy_reg_init_2[23].reg = 6U;
  phy_reg_init_2[23].val = 63723U;
  phy_reg_init_2[24].reg = 6U;
  phy_reg_init_2[24].val = 480U;
  phy_reg_init_2[25].reg = 6U;
  phy_reg_init_2[25].val = 63612U;
  phy_reg_init_2[26].reg = 6U;
  phy_reg_init_2[26].val = 57848U;
  phy_reg_init_2[27].reg = 6U;
  phy_reg_init_2[27].val = 32088U;
  phy_reg_init_2[28].reg = 6U;
  phy_reg_init_2[28].val = 16542U;
  phy_reg_init_2[29].reg = 6U;
  phy_reg_init_2[29].val = 3897U;
  phy_reg_init_2[30].reg = 6U;
  phy_reg_init_2[30].val = 18090U;
  phy_reg_init_2[31].reg = 6U;
  phy_reg_init_2[31].val = 3007U;
  phy_reg_init_2[32].reg = 6U;
  phy_reg_init_2[32].val = 33424U;
  phy_reg_init_2[33].reg = 6U;
  phy_reg_init_2[33].val = 54914U;
  phy_reg_init_2[34].reg = 6U;
  phy_reg_init_2[34].val = 38914U;
  phy_reg_init_2[35].reg = 6U;
  phy_reg_init_2[35].val = 335U;
  phy_reg_init_2[36].reg = 6U;
  phy_reg_init_2[36].val = 44553U;
  phy_reg_init_2[37].reg = 6U;
  phy_reg_init_2[37].val = 49026U;
  phy_reg_init_2[38].reg = 6U;
  phy_reg_init_2[38].val = 39126U;
  phy_reg_init_2[39].reg = 6U;
  phy_reg_init_2[39].val = 33440U;
  phy_reg_init_2[40].reg = 6U;
  phy_reg_init_2[40].val = 513U;
  phy_reg_init_2[41].reg = 6U;
  phy_reg_init_2[41].val = 20463U;
  phy_reg_init_2[42].reg = 6U;
  phy_reg_init_2[42].val = 38398U;
  phy_reg_init_2[43].reg = 6U;
  phy_reg_init_2[43].val = 65020U;
  phy_reg_init_2[44].reg = 6U;
  phy_reg_init_2[44].val = 1528U;
  phy_reg_init_2[45].reg = 6U;
  phy_reg_init_2[45].val = 63994U;
  phy_reg_init_2[46].reg = 6U;
  phy_reg_init_2[46].val = 61176U;
  phy_reg_init_2[47].reg = 6U;
  phy_reg_init_2[47].val = 59904U;
  phy_reg_init_2[48].reg = 6U;
  phy_reg_init_2[48].val = 61176U;
  phy_reg_init_2[49].reg = 6U;
  phy_reg_init_2[49].val = 60160U;
  phy_reg_init_2[50].reg = 6U;
  phy_reg_init_2[50].val = 58104U;
  phy_reg_init_2[51].reg = 6U;
  phy_reg_init_2[51].val = 31971U;
  phy_reg_init_2[52].reg = 6U;
  phy_reg_init_2[52].val = 63613U;
  phy_reg_init_2[53].reg = 6U;
  phy_reg_init_2[53].val = 42257U;
  phy_reg_init_2[54].reg = 6U;
  phy_reg_init_2[54].val = 4370U;
  phy_reg_init_2[55].reg = 6U;
  phy_reg_init_2[55].val = 53824U;
  phy_reg_init_2[56].reg = 6U;
  phy_reg_init_2[56].val = 54852U;
  phy_reg_init_2[57].reg = 6U;
  phy_reg_init_2[57].val = 17410U;
  phy_reg_init_2[58].reg = 6U;
  phy_reg_init_2[58].val = 33303U;
  phy_reg_init_2[59].reg = 6U;
  phy_reg_init_2[59].val = 53920U;
  phy_reg_init_2[60].reg = 6U;
  phy_reg_init_2[60].val = 54954U;
  phy_reg_init_2[61].reg = 6U;
  phy_reg_init_2[61].val = 43522U;
  phy_reg_init_2[62].reg = 6U;
  phy_reg_init_2[62].val = 33303U;
  phy_reg_init_2[63].reg = 6U;
  phy_reg_init_2[63].val = 44559U;
  phy_reg_init_2[64].reg = 6U;
  phy_reg_init_2[64].val = 42308U;
  phy_reg_init_2[65].reg = 6U;
  phy_reg_init_2[65].val = 17410U;
  phy_reg_init_2[66].reg = 6U;
  phy_reg_init_2[66].val = 44621U;
  phy_reg_init_2[67].reg = 6U;
  phy_reg_init_2[67].val = 42410U;
  phy_reg_init_2[68].reg = 6U;
  phy_reg_init_2[68].val = 43522U;
  phy_reg_init_2[69].reg = 6U;
  phy_reg_init_2[69].val = 44615U;
  phy_reg_init_2[70].reg = 6U;
  phy_reg_init_2[70].val = 44930U;
  phy_reg_init_2[71].reg = 6U;
  phy_reg_init_2[71].val = 5102U;
  phy_reg_init_2[72].reg = 6U;
  phy_reg_init_2[72].val = 33614U;
  phy_reg_init_2[73].reg = 6U;
  phy_reg_init_2[73].val = 238U;
  phy_reg_init_2[74].reg = 6U;
  phy_reg_init_2[74].val = 33613U;
  phy_reg_init_2[75].reg = 6U;
  phy_reg_init_2[75].val = 4078U;
  phy_reg_init_2[76].reg = 6U;
  phy_reg_init_2[76].val = 33612U;
  phy_reg_init_2[77].reg = 6U;
  phy_reg_init_2[77].val = 4078U;
  phy_reg_init_2[78].reg = 6U;
  phy_reg_init_2[78].val = 33615U;
  phy_reg_init_2[79].reg = 6U;
  phy_reg_init_2[79].val = 238U;
  phy_reg_init_2[80].reg = 6U;
  phy_reg_init_2[80].val = 33617U;
  phy_reg_init_2[81].reg = 6U;
  phy_reg_init_2[81].val = 238U;
  phy_reg_init_2[82].reg = 6U;
  phy_reg_init_2[82].val = 33610U;
  phy_reg_init_2[83].reg = 6U;
  phy_reg_init_2[83].val = 65518U;
  phy_reg_init_2[84].reg = 6U;
  phy_reg_init_2[84].val = 33611U;
  phy_reg_init_2[85].reg = 6U;
  phy_reg_init_2[85].val = 65504U;
  phy_reg_init_2[86].reg = 6U;
  phy_reg_init_2[86].val = 33584U;
  phy_reg_init_2[87].reg = 6U;
  phy_reg_init_2[87].val = 57731U;
  phy_reg_init_2[88].reg = 6U;
  phy_reg_init_2[88].val = 12632U;
  phy_reg_init_2[89].reg = 6U;
  phy_reg_init_2[89].val = 65252U;
  phy_reg_init_2[90].reg = 6U;
  phy_reg_init_2[90].val = 63626U;
  phy_reg_init_2[91].reg = 6U;
  phy_reg_init_2[91].val = 58872U;
  phy_reg_init_2[92].reg = 6U;
  phy_reg_init_2[92].val = 35808U;
  phy_reg_init_2[93].reg = 6U;
  phy_reg_init_2[93].val = 33586U;
  phy_reg_init_2[94].reg = 6U;
  phy_reg_init_2[94].val = 57731U;
  phy_reg_init_2[95].reg = 6U;
  phy_reg_init_2[95].val = 13145U;
  phy_reg_init_2[96].reg = 6U;
  phy_reg_init_2[96].val = 4066U;
  phy_reg_init_2[97].reg = 6U;
  phy_reg_init_2[97].val = 33613U;
  phy_reg_init_2[98].reg = 6U;
  phy_reg_init_2[98].val = 3108U;
  phy_reg_init_2[99].reg = 6U;
  phy_reg_init_2[99].val = 23280U;
  phy_reg_init_2[100].reg = 6U;
  phy_reg_init_2[100].val = 7698U;
  phy_reg_init_2[101].reg = 6U;
  phy_reg_init_2[101].val = 58616U;
  phy_reg_init_2[102].reg = 6U;
  phy_reg_init_2[102].val = 36069U;
  phy_reg_init_2[103].reg = 6U;
  phy_reg_init_2[103].val = 63629U;
  phy_reg_init_2[104].reg = 6U;
  phy_reg_init_2[104].val = 44930U;
  phy_reg_init_2[105].reg = 6U;
  phy_reg_init_2[105].val = 5088U;
  phy_reg_init_2[106].reg = 6U;
  phy_reg_init_2[106].val = 33615U;
  phy_reg_init_2[107].reg = 6U;
  phy_reg_init_2[107].val = 4324U;
  phy_reg_init_2[108].reg = 6U;
  phy_reg_init_2[108].val = 33615U;
  phy_reg_init_2[109].reg = 6U;
  phy_reg_init_2[109].val = 57475U;
  phy_reg_init_2[110].reg = 6U;
  phy_reg_init_2[110].val = 20088U;
  phy_reg_init_2[111].reg = 6U;
  phy_reg_init_2[111].val = 159U;
  phy_reg_init_2[112].reg = 6U;
  phy_reg_init_2[112].val = 2784U;
  phy_reg_init_2[113].reg = 6U;
  phy_reg_init_2[113].val = 33615U;
  phy_reg_init_2[114].reg = 6U;
  phy_reg_init_2[114].val = 40976U;
  phy_reg_init_2[115].reg = 6U;
  phy_reg_init_2[115].val = 42478U;
  phy_reg_init_2[116].reg = 6U;
  phy_reg_init_2[116].val = 33614U;
  phy_reg_init_2[117].reg = 6U;
  phy_reg_init_2[117].val = 480U;
  phy_reg_init_2[118].reg = 6U;
  phy_reg_init_2[118].val = 33614U;
  phy_reg_init_2[119].reg = 6U;
  phy_reg_init_2[119].val = 30725U;
  phy_reg_init_2[120].reg = 6U;
  phy_reg_init_2[120].val = 40602U;
  phy_reg_init_2[121].reg = 6U;
  phy_reg_init_2[121].val = 57475U;
  phy_reg_init_2[122].reg = 6U;
  phy_reg_init_2[122].val = 20088U;
  phy_reg_init_2[123].reg = 6U;
  phy_reg_init_2[123].val = 1182U;
  phy_reg_init_2[124].reg = 6U;
  phy_reg_init_2[124].val = 4320U;
  phy_reg_init_2[125].reg = 6U;
  phy_reg_init_2[125].val = 33614U;
  phy_reg_init_2[126].reg = 6U;
  phy_reg_init_2[126].val = 30723U;
  phy_reg_init_2[127].reg = 6U;
  phy_reg_init_2[127].val = 40463U;
  phy_reg_init_2[128].reg = 6U;
  phy_reg_init_2[128].val = 57475U;
  phy_reg_init_2[129].reg = 6U;
  phy_reg_init_2[129].val = 20088U;
  phy_reg_init_2[130].reg = 6U;
  phy_reg_init_2[130].val = 414U;
  phy_reg_init_2[131].reg = 6U;
  phy_reg_init_2[131].val = 1454U;
  phy_reg_init_2[132].reg = 6U;
  phy_reg_init_2[132].val = 3247U;
  phy_reg_init_2[133].reg = 6U;
  phy_reg_init_2[133].val = 33272U;
  phy_reg_init_2[134].reg = 6U;
  phy_reg_init_2[134].val = 44929U;
  phy_reg_init_2[135].reg = 6U;
  phy_reg_init_2[135].val = 41903U;
  phy_reg_init_2[136].reg = 6U;
  phy_reg_init_2[136].val = 33244U;
  phy_reg_init_2[137].reg = 6U;
  phy_reg_init_2[137].val = 44930U;
  phy_reg_init_2[138].reg = 6U;
  phy_reg_init_2[138].val = 5102U;
  phy_reg_init_2[139].reg = 6U;
  phy_reg_init_2[139].val = 33608U;
  phy_reg_init_2[140].reg = 6U;
  phy_reg_init_2[140].val = 238U;
  phy_reg_init_2[141].reg = 6U;
  phy_reg_init_2[141].val = 33609U;
  phy_reg_init_2[142].reg = 6U;
  phy_reg_init_2[142].val = 224U;
  phy_reg_init_2[143].reg = 6U;
  phy_reg_init_2[143].val = 33617U;
  phy_reg_init_2[144].reg = 6U;
  phy_reg_init_2[144].val = 4324U;
  phy_reg_init_2[145].reg = 6U;
  phy_reg_init_2[145].val = 33617U;
  phy_reg_init_2[146].reg = 6U;
  phy_reg_init_2[146].val = 22529U;
  phy_reg_init_2[147].reg = 6U;
  phy_reg_init_2[147].val = 40938U;
  phy_reg_init_2[148].reg = 6U;
  phy_reg_init_2[148].val = 53248U;
  phy_reg_init_2[149].reg = 6U;
  phy_reg_init_2[149].val = 53632U;
  phy_reg_init_2[150].reg = 6U;
  phy_reg_init_2[150].val = 8038U;
  phy_reg_init_2[151].reg = 6U;
  phy_reg_init_2[151].val = 58104U;
  phy_reg_init_2[152].reg = 6U;
  phy_reg_init_2[152].val = 60131U;
  phy_reg_init_2[153].reg = 6U;
  phy_reg_init_2[153].val = 63723U;
  phy_reg_init_2[154].reg = 6U;
  phy_reg_init_2[154].val = 23288U;
  phy_reg_init_2[155].reg = 6U;
  phy_reg_init_2[155].val = 7712U;
  phy_reg_init_2[156].reg = 6U;
  phy_reg_init_2[156].val = 59128U;
  phy_reg_init_2[157].reg = 6U;
  phy_reg_init_2[157].val = 60133U;
  phy_reg_init_2[158].reg = 6U;
  phy_reg_init_2[158].val = 63723U;
  phy_reg_init_2[159].reg = 6U;
  phy_reg_init_2[159].val = 54018U;
  phy_reg_init_2[160].reg = 6U;
  phy_reg_init_2[160].val = 46078U;
  phy_reg_init_2[161].reg = 6U;
  phy_reg_init_2[161].val = 58104U;
  phy_reg_init_2[162].reg = 6U;
  phy_reg_init_2[162].val = 31983U;
  phy_reg_init_2[163].reg = 6U;
  phy_reg_init_2[163].val = 12891U;
  phy_reg_init_2[164].reg = 6U;
  phy_reg_init_2[164].val = 32995U;
  phy_reg_init_2[165].reg = 6U;
  phy_reg_init_2[165].val = 63613U;
  phy_reg_init_2[166].reg = 6U;
  phy_reg_init_2[166].val = 40451U;
  phy_reg_init_2[167].reg = 6U;
  phy_reg_init_2[167].val = 32255U;
  phy_reg_init_2[168].reg = 6U;
  phy_reg_init_2[168].val = 65293U;
  phy_reg_init_2[169].reg = 6U;
  phy_reg_init_2[169].val = 22556U;
  phy_reg_init_2[170].reg = 6U;
  phy_reg_init_2[170].val = 21786U;
  phy_reg_init_2[171].reg = 6U;
  phy_reg_init_2[171].val = 25873U;
  phy_reg_init_2[172].reg = 6U;
  phy_reg_init_2[172].val = 41360U;
  phy_reg_init_2[173].reg = 6U;
  phy_reg_init_2[173].val = 54242U;
  phy_reg_init_2[174].reg = 6U;
  phy_reg_init_2[174].val = 33608U;
  phy_reg_init_2[175].reg = 6U;
  phy_reg_init_2[175].val = 58243U;
  phy_reg_init_2[176].reg = 6U;
  phy_reg_init_2[176].val = 18715U;
  phy_reg_init_2[177].reg = 6U;
  phy_reg_init_2[177].val = 22187U;
  phy_reg_init_2[178].reg = 6U;
  phy_reg_init_2[178].val = 2287U;
  phy_reg_init_2[179].reg = 6U;
  phy_reg_init_2[179].val = 22246U;
  phy_reg_init_2[180].reg = 6U;
  phy_reg_init_2[180].val = 33608U;
  phy_reg_init_2[181].reg = 6U;
  phy_reg_init_2[181].val = 59267U;
  phy_reg_init_2[182].reg = 6U;
  phy_reg_init_2[182].val = 18704U;
  phy_reg_init_2[183].reg = 6U;
  phy_reg_init_2[183].val = 53632U;
  phy_reg_init_2[184].reg = 6U;
  phy_reg_init_2[184].val = 8038U;
  phy_reg_init_2[185].reg = 6U;
  phy_reg_init_2[185].val = 40964U;
  phy_reg_init_2[186].reg = 6U;
  phy_reg_init_2[186].val = 47586U;
  phy_reg_init_2[187].reg = 6U;
  phy_reg_init_2[187].val = 33608U;
  phy_reg_init_2[188].reg = 6U;
  phy_reg_init_2[188].val = 58243U;
  phy_reg_init_2[189].reg = 6U;
  phy_reg_init_2[189].val = 18927U;
  phy_reg_init_2[190].reg = 6U;
  phy_reg_init_2[190].val = 26082U;
  phy_reg_init_2[191].reg = 6U;
  phy_reg_init_2[191].val = 33610U;
  phy_reg_init_2[192].reg = 6U;
  phy_reg_init_2[192].val = 58243U;
  phy_reg_init_2[193].reg = 6U;
  phy_reg_init_2[193].val = 19227U;
  phy_reg_init_2[194].reg = 6U;
  phy_reg_init_2[194].val = 22186U;
  phy_reg_init_2[195].reg = 6U;
  phy_reg_init_2[195].val = 3823U;
  phy_reg_init_2[196].reg = 6U;
  phy_reg_init_2[196].val = 22246U;
  phy_reg_init_2[197].reg = 6U;
  phy_reg_init_2[197].val = 33610U;
  phy_reg_init_2[198].reg = 6U;
  phy_reg_init_2[198].val = 59267U;
  phy_reg_init_2[199].reg = 6U;
  phy_reg_init_2[199].val = 19426U;
  phy_reg_init_2[200].reg = 6U;
  phy_reg_init_2[200].val = 33613U;
  phy_reg_init_2[201].reg = 6U;
  phy_reg_init_2[201].val = 59011U;
  phy_reg_init_2[202].reg = 6U;
  phy_reg_init_2[202].val = 19680U;
  phy_reg_init_2[203].reg = 6U;
  phy_reg_init_2[203].val = 33613U;
  phy_reg_init_2[204].reg = 6U;
  phy_reg_init_2[204].val = 40960U;
  phy_reg_init_2[205].reg = 6U;
  phy_reg_init_2[205].val = 3247U;
  phy_reg_init_2[206].reg = 6U;
  phy_reg_init_2[206].val = 33244U;
  phy_reg_init_2[207].reg = 6U;
  phy_reg_init_2[207].val = 57475U;
  phy_reg_init_2[208].reg = 6U;
  phy_reg_init_2[208].val = 19728U;
  phy_reg_init_2[209].reg = 6U;
  phy_reg_init_2[209].val = 58499U;
  phy_reg_init_2[210].reg = 6U;
  phy_reg_init_2[210].val = 19886U;
  phy_reg_init_2[211].reg = 6U;
  phy_reg_init_2[211].val = 1152U;
  phy_reg_init_2[212].reg = 6U;
  phy_reg_init_2[212].val = 58499U;
  phy_reg_init_2[213].reg = 6U;
  phy_reg_init_2[213].val = 19936U;
  phy_reg_init_2[214].reg = 6U;
  phy_reg_init_2[214].val = 33614U;
  phy_reg_init_2[215].reg = 6U;
  phy_reg_init_2[215].val = 30723U;
  phy_reg_init_2[216].reg = 6U;
  phy_reg_init_2[216].val = 40459U;
  phy_reg_init_2[217].reg = 6U;
  phy_reg_init_2[217].val = 57475U;
  phy_reg_init_2[218].reg = 6U;
  phy_reg_init_2[218].val = 20088U;
  phy_reg_init_2[219].reg = 6U;
  phy_reg_init_2[219].val = 1182U;
  phy_reg_init_2[220].reg = 6U;
  phy_reg_init_2[220].val = 1262U;
  phy_reg_init_2[221].reg = 6U;
  phy_reg_init_2[221].val = 33614U;
  phy_reg_init_2[222].reg = 6U;
  phy_reg_init_2[222].val = 736U;
  phy_reg_init_2[223].reg = 6U;
  phy_reg_init_2[223].val = 33586U;
  phy_reg_init_2[224].reg = 6U;
  phy_reg_init_2[224].val = 57731U;
  phy_reg_init_2[225].reg = 6U;
  phy_reg_init_2[225].val = 13145U;
  phy_reg_init_2[226].reg = 6U;
  phy_reg_init_2[226].val = 4066U;
  phy_reg_init_2[227].reg = 6U;
  phy_reg_init_2[227].val = 33613U;
  phy_reg_init_2[228].reg = 6U;
  phy_reg_init_2[228].val = 3108U;
  phy_reg_init_2[229].reg = 6U;
  phy_reg_init_2[229].val = 23280U;
  phy_reg_init_2[230].reg = 6U;
  phy_reg_init_2[230].val = 7698U;
  phy_reg_init_2[231].reg = 6U;
  phy_reg_init_2[231].val = 58616U;
  phy_reg_init_2[232].reg = 6U;
  phy_reg_init_2[232].val = 36069U;
  phy_reg_init_2[233].reg = 6U;
  phy_reg_init_2[233].val = 63629U;
  phy_reg_init_2[234].reg = 6U;
  phy_reg_init_2[234].val = 57475U;
  phy_reg_init_2[235].reg = 6U;
  phy_reg_init_2[235].val = 12513U;
  phy_reg_init_2[236].reg = 6U;
  phy_reg_init_2[236].val = 33585U;
  phy_reg_init_2[237].reg = 6U;
  phy_reg_init_2[237].val = 26625U;
  phy_reg_init_2[238].reg = 6U;
  phy_reg_init_2[238].val = 58616U;
  phy_reg_init_2[239].reg = 6U;
  phy_reg_init_2[239].val = 35557U;
  phy_reg_init_2[240].reg = 6U;
  phy_reg_init_2[240].val = 63627U;
  phy_reg_init_2[241].reg = 6U;
  phy_reg_init_2[241].val = 44599U;
  phy_reg_init_2[242].reg = 6U;
  phy_reg_init_2[242].val = 61059U;
  phy_reg_init_2[243].reg = 6U;
  phy_reg_init_2[243].val = 19971U;
  phy_reg_init_2[244].reg = 6U;
  phy_reg_init_2[244].val = 57475U;
  phy_reg_init_2[245].reg = 6U;
  phy_reg_init_2[245].val = 19681U;
  phy_reg_init_2[246].reg = 6U;
  phy_reg_init_2[246].val = 33613U;
  phy_reg_init_2[247].reg = 6U;
  phy_reg_init_2[247].val = 6913U;
  phy_reg_init_2[248].reg = 6U;
  phy_reg_init_2[248].val = 40452U;
  phy_reg_init_2[249].reg = 6U;
  phy_reg_init_2[249].val = 43681U;
  phy_reg_init_2[250].reg = 6U;
  phy_reg_init_2[250].val = 44712U;
  phy_reg_init_2[251].reg = 6U;
  phy_reg_init_2[251].val = 61059U;
  phy_reg_init_2[252].reg = 6U;
  phy_reg_init_2[252].val = 19972U;
  phy_reg_init_2[253].reg = 6U;
  phy_reg_init_2[253].val = 61059U;
  phy_reg_init_2[254].reg = 6U;
  phy_reg_init_2[254].val = 20224U;
  phy_reg_init_2[255].reg = 6U;
  phy_reg_init_2[255].val = 44715U;
  phy_reg_init_2[256].reg = 6U;
  phy_reg_init_2[256].val = 57475U;
  phy_reg_init_2[257].reg = 6U;
  phy_reg_init_2[257].val = 20344U;
  phy_reg_init_2[258].reg = 6U;
  phy_reg_init_2[258].val = 927U;
  phy_reg_init_2[259].reg = 6U;
  phy_reg_init_2[259].val = 5358U;
  phy_reg_init_2[260].reg = 6U;
  phy_reg_init_2[260].val = 33614U;
  phy_reg_init_2[261].reg = 6U;
  phy_reg_init_2[261].val = 1490U;
  phy_reg_init_2[262].reg = 6U;
  phy_reg_init_2[262].val = 16598U;
  phy_reg_init_2[263].reg = 6U;
  phy_reg_init_2[263].val = 21844U;
  phy_reg_init_2[264].reg = 6U;
  phy_reg_init_2[264].val = 642U;
  phy_reg_init_2[265].reg = 6U;
  phy_reg_init_2[265].val = 6098U;
  phy_reg_init_2[266].reg = 6U;
  phy_reg_init_2[266].val = 41174U;
  phy_reg_init_2[267].reg = 6U;
  phy_reg_init_2[267].val = 47616U;
  phy_reg_init_2[268].reg = 6U;
  phy_reg_init_2[268].val = 642U;
  phy_reg_init_2[269].reg = 6U;
  phy_reg_init_2[269].val = 6142U;
  phy_reg_init_2[270].reg = 6U;
  phy_reg_init_2[270].val = 65020U;
  phy_reg_init_2[271].reg = 6U;
  phy_reg_init_2[271].val = 1528U;
  phy_reg_init_2[272].reg = 6U;
  phy_reg_init_2[272].val = 57592U;
  phy_reg_init_2[273].reg = 6U;
  phy_reg_init_2[273].val = 24801U;
  phy_reg_init_2[274].reg = 6U;
  phy_reg_init_2[274].val = 63585U;
  phy_reg_init_2[275].reg = 6U;
  phy_reg_init_2[275].val = 26626U;
  phy_reg_init_2[276].reg = 6U;
  phy_reg_init_2[276].val = 58616U;
  phy_reg_init_2[277].reg = 6U;
  phy_reg_init_2[277].val = 24805U;
  phy_reg_init_2[278].reg = 6U;
  phy_reg_init_2[278].val = 63585U;
  phy_reg_init_2[279].reg = 6U;
  phy_reg_init_2[279].val = 57592U;
  phy_reg_init_2[280].reg = 6U;
  phy_reg_init_2[280].val = 18657U;
  phy_reg_init_2[281].reg = 6U;
  phy_reg_init_2[281].val = 63561U;
  phy_reg_init_2[282].reg = 6U;
  phy_reg_init_2[282].val = 22543U;
  phy_reg_init_2[283].reg = 6U;
  phy_reg_init_2[283].val = 7682U;
  phy_reg_init_2[284].reg = 6U;
  phy_reg_init_2[284].val = 58616U;
  phy_reg_init_2[285].reg = 6U;
  phy_reg_init_2[285].val = 18661U;
  phy_reg_init_2[286].reg = 6U;
  phy_reg_init_2[286].val = 63561U;
  phy_reg_init_2[287].reg = 6U;
  phy_reg_init_2[287].val = 53248U;
  phy_reg_init_2[288].reg = 6U;
  phy_reg_init_2[288].val = 642U;
  phy_reg_init_2[289].reg = 6U;
  phy_reg_init_2[289].val = 23487U;
  phy_reg_init_2[290].reg = 6U;
  phy_reg_init_2[290].val = 33616U;
  phy_reg_init_2[291].reg = 6U;
  phy_reg_init_2[291].val = 61254U;
  phy_reg_init_2[292].reg = 6U;
  phy_reg_init_2[292].val = 56345U;
  phy_reg_init_2[293].reg = 6U;
  phy_reg_init_2[293].val = 56784U;
  phy_reg_init_2[294].reg = 6U;
  phy_reg_init_2[294].val = 258U;
  phy_reg_init_2[295].reg = 6U;
  phy_reg_init_2[295].val = 33371U;
  phy_reg_init_2[296].reg = 6U;
  phy_reg_init_2[296].val = 642U;
  phy_reg_init_2[297].reg = 6U;
  phy_reg_init_2[297].val = 30688U;
  phy_reg_init_2[298].reg = 6U;
  phy_reg_init_2[298].val = 63584U;
  phy_reg_init_2[299].reg = 6U;
  phy_reg_init_2[299].val = 57848U;
  phy_reg_init_2[300].reg = 6U;
  phy_reg_init_2[300].val = 24920U;
  phy_reg_init_2[301].reg = 6U;
  phy_reg_init_2[301].val = 64996U;
  phy_reg_init_2[302].reg = 6U;
  phy_reg_init_2[302].val = 63584U;
  phy_reg_init_2[303].reg = 6U;
  phy_reg_init_2[303].val = 58872U;
  phy_reg_init_2[304].reg = 6U;
  phy_reg_init_2[304].val = 25084U;
  phy_reg_init_2[305].reg = 6U;
  phy_reg_init_2[305].val = 1273U;
  phy_reg_init_2[306].reg = 6U;
  phy_reg_init_2[306].val = 64251U;
  phy_reg_init_2[307].reg = 6U;
  phy_reg_init_2[307].val = 50879U;
  phy_reg_init_2[308].reg = 6U;
  phy_reg_init_2[308].val = 63552U;
  phy_reg_init_2[309].reg = 6U;
  phy_reg_init_2[309].val = 48771U;
  phy_reg_init_2[310].reg = 6U;
  phy_reg_init_2[310].val = 20640U;
  phy_reg_init_2[311].reg = 6U;
  phy_reg_init_2[311].val = 257U;
  phy_reg_init_2[312].reg = 6U;
  phy_reg_init_2[312].val = 1819U;
  phy_reg_init_2[313].reg = 6U;
  phy_reg_init_2[313].val = 35279U;
  phy_reg_init_2[314].reg = 6U;
  phy_reg_init_2[314].val = 53768U;
  phy_reg_init_2[315].reg = 6U;
  phy_reg_init_2[315].val = 60379U;
  phy_reg_init_2[316].reg = 6U;
  phy_reg_init_2[316].val = 6578U;
  phy_reg_init_2[317].reg = 6U;
  phy_reg_init_2[317].val = 64511U;
  phy_reg_init_2[318].reg = 6U;
  phy_reg_init_2[318].val = 65277U;
  phy_reg_init_2[319].reg = 6U;
  phy_reg_init_2[319].val = 1272U;
  phy_reg_init_2[320].reg = 6U;
  phy_reg_init_2[320].val = 57592U;
  phy_reg_init_2[321].reg = 6U;
  phy_reg_init_2[321].val = 18657U;
  phy_reg_init_2[322].reg = 6U;
  phy_reg_init_2[322].val = 63561U;
  phy_reg_init_2[323].reg = 6U;
  phy_reg_init_2[323].val = 26632U;
  phy_reg_init_2[324].reg = 6U;
  phy_reg_init_2[324].val = 58616U;
  phy_reg_init_2[325].reg = 6U;
  phy_reg_init_2[325].val = 18661U;
  phy_reg_init_2[326].reg = 6U;
  phy_reg_init_2[326].val = 63561U;
  phy_reg_init_2[327].reg = 6U;
  phy_reg_init_2[327].val = 22775U;
  phy_reg_init_2[328].reg = 6U;
  phy_reg_init_2[328].val = 58616U;
  phy_reg_init_2[329].reg = 6U;
  phy_reg_init_2[329].val = 18661U;
  phy_reg_init_2[330].reg = 6U;
  phy_reg_init_2[330].val = 63561U;
  phy_reg_init_2[331].reg = 6U;
  phy_reg_init_2[331].val = 64516U;
  phy_reg_init_2[332].reg = 6U;
  phy_reg_init_2[332].val = 19744U;
  phy_reg_init_2[333].reg = 6U;
  phy_reg_init_2[333].val = 2U;
  phy_reg_init_2[334].reg = 6U;
  phy_reg_init_2[334].val = 20002U;
  phy_reg_init_2[335].reg = 6U;
  phy_reg_init_2[335].val = 2U;
  phy_reg_init_2[336].reg = 6U;
  phy_reg_init_2[336].val = 19935U;
  phy_reg_init_2[337].reg = 6U;
  phy_reg_init_2[337].val = 65281U;
  phy_reg_init_2[338].reg = 6U;
  phy_reg_init_2[338].val = 20189U;
  phy_reg_init_2[339].reg = 6U;
  phy_reg_init_2[339].val = 65281U;
  phy_reg_init_2[340].reg = 5U;
  phy_reg_init_2[340].val = 33748U;
  phy_reg_init_2[341].reg = 6U;
  phy_reg_init_2[341].val = 32768U;
  phy_reg_init_2[342].reg = 5U;
  phy_reg_init_2[342].val = 33752U;
  phy_reg_init_2[343].reg = 6U;
  phy_reg_init_2[343].val = 32849U;
  phy_reg_init_2[344].reg = 2U;
  phy_reg_init_2[344].val = 24592U;
  phy_reg_init_2[345].reg = 3U;
  phy_reg_init_2[345].val = 56320U;
  phy_reg_init_2[346].reg = 5U;
  phy_reg_init_2[346].val = 65526U;
  phy_reg_init_2[347].reg = 6U;
  phy_reg_init_2[347].val = 252U;
  phy_reg_init_2[348].reg = 31U;
  phy_reg_init_2[348].val = 0U;
  phy_reg_init_2[349].reg = 31U;
  phy_reg_init_2[349].val = 0U;
  phy_reg_init_2[350].reg = 13U;
  phy_reg_init_2[350].val = 63616U;
  phy_reg_init_2[351].reg = 31U;
  phy_reg_init_2[351].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init_0), 17);
  mdio_write(ioaddr, 31, 2);
  mdio_plus_minus(ioaddr, 11, 16, 239);
  mdio_plus_minus(ioaddr, 12, 41472, 23808);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init_1), 5);
  tmp = rtl8168d_efuse_read(ioaddr, 1);
  if ((unsigned int )tmp == 177U) {
    phy_reg_init[0].reg = 31U;
    phy_reg_init[0].val = 2U;
    phy_reg_init[1].reg = 5U;
    phy_reg_init[1].val = 26266U;
    phy_reg_init[2].reg = 31U;
    phy_reg_init[2].val = 5U;
    phy_reg_init[3].reg = 5U;
    phy_reg_init[3].val = 33584U;
    phy_reg_init[4].reg = 6U;
    phy_reg_init[4].val = 26266U;
    phy_reg_init[5].reg = 31U;
    phy_reg_init[5].val = 2U;
    rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 6);
    val = mdio_read(ioaddr, 13);
    if ((val & 255) != 108) {
      set[0] = 101U;
      set[1] = 102U;
      set[2] = 103U;
      set[3] = 104U;
      set[4] = 105U;
      set[5] = 106U;
      set[6] = 107U;
      set[7] = 108U;
      mdio_write(ioaddr, 31, 2);
      val = val & 65280;
      i = 0;
      goto ldv_37669;
      ldv_37668:
      mdio_write(ioaddr, 13, (int )(set[i] | (unsigned int )val));
      i = i + 1;
      ldv_37669: ;
      if ((unsigned int )i <= 7U) {
        goto ldv_37668;
      } else {
      }
    } else {
    }
  } else {
    phy_reg_init___0[0].reg = 31U;
    phy_reg_init___0[0].val = 2U;
    phy_reg_init___0[1].reg = 5U;
    phy_reg_init___0[1].val = 26210U;
    phy_reg_init___0[2].reg = 31U;
    phy_reg_init___0[2].val = 5U;
    phy_reg_init___0[3].reg = 5U;
    phy_reg_init___0[3].val = 33584U;
    phy_reg_init___0[4].reg = 6U;
    phy_reg_init___0[4].val = 26210U;
    rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init___0), 5);
  }
  mdio_write(ioaddr, 31, 2);
  mdio_patch(ioaddr, 13, 768);
  mdio_patch(ioaddr, 15, 16);
  mdio_write(ioaddr, 31, 2);
  mdio_plus_minus(ioaddr, 2, 256, 1536);
  mdio_plus_minus(ioaddr, 3, 0, 57344);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init_2), 352);
  return;
}
}
static void rtl8168d_2_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init_0[22U] ;
  struct phy_reg phy_reg_init_1[309U] ;
  struct phy_reg phy_reg_init[6U] ;
  int val ;
  u32 set[8U] ;
  int i ;
  struct phy_reg phy_reg_init___0[5U] ;
  u8 tmp ;
  {
  phy_reg_init_0[0].reg = 31U;
  phy_reg_init_0[0].val = 1U;
  phy_reg_init_0[1].reg = 6U;
  phy_reg_init_0[1].val = 16484U;
  phy_reg_init_0[2].reg = 7U;
  phy_reg_init_0[2].val = 10339U;
  phy_reg_init_0[3].reg = 8U;
  phy_reg_init_0[3].val = 1436U;
  phy_reg_init_0[4].reg = 9U;
  phy_reg_init_0[4].val = 9908U;
  phy_reg_init_0[5].reg = 10U;
  phy_reg_init_0[5].val = 27161U;
  phy_reg_init_0[6].reg = 11U;
  phy_reg_init_0[6].val = 56520U;
  phy_reg_init_0[7].reg = 16U;
  phy_reg_init_0[7].val = 61549U;
  phy_reg_init_0[8].reg = 20U;
  phy_reg_init_0[8].val = 32616U;
  phy_reg_init_0[9].reg = 24U;
  phy_reg_init_0[9].val = 32729U;
  phy_reg_init_0[10].reg = 28U;
  phy_reg_init_0[10].val = 61695U;
  phy_reg_init_0[11].reg = 29U;
  phy_reg_init_0[11].val = 15772U;
  phy_reg_init_0[12].reg = 31U;
  phy_reg_init_0[12].val = 3U;
  phy_reg_init_0[13].reg = 18U;
  phy_reg_init_0[13].val = 62623U;
  phy_reg_init_0[14].reg = 19U;
  phy_reg_init_0[14].val = 1803U;
  phy_reg_init_0[15].reg = 26U;
  phy_reg_init_0[15].val = 1453U;
  phy_reg_init_0[16].reg = 20U;
  phy_reg_init_0[16].val = 38080U;
  phy_reg_init_0[17].reg = 31U;
  phy_reg_init_0[17].val = 2U;
  phy_reg_init_0[18].reg = 6U;
  phy_reg_init_0[18].val = 21857U;
  phy_reg_init_0[19].reg = 31U;
  phy_reg_init_0[19].val = 5U;
  phy_reg_init_0[20].reg = 5U;
  phy_reg_init_0[20].val = 33586U;
  phy_reg_init_0[21].reg = 6U;
  phy_reg_init_0[21].val = 21857U;
  phy_reg_init_1[0].reg = 31U;
  phy_reg_init_1[0].val = 5U;
  phy_reg_init_1[1].reg = 5U;
  phy_reg_init_1[1].val = 65474U;
  phy_reg_init_1[2].reg = 31U;
  phy_reg_init_1[2].val = 5U;
  phy_reg_init_1[3].reg = 5U;
  phy_reg_init_1[3].val = 32768U;
  phy_reg_init_1[4].reg = 6U;
  phy_reg_init_1[4].val = 63737U;
  phy_reg_init_1[5].reg = 6U;
  phy_reg_init_1[5].val = 64238U;
  phy_reg_init_1[6].reg = 6U;
  phy_reg_init_1[6].val = 63722U;
  phy_reg_init_1[7].reg = 6U;
  phy_reg_init_1[7].val = 238U;
  phy_reg_init_1[8].reg = 6U;
  phy_reg_init_1[8].val = 63723U;
  phy_reg_init_1[9].reg = 6U;
  phy_reg_init_1[9].val = 226U;
  phy_reg_init_1[10].reg = 6U;
  phy_reg_init_1[10].val = 63612U;
  phy_reg_init_1[11].reg = 6U;
  phy_reg_init_1[11].val = 58360U;
  phy_reg_init_1[12].reg = 6U;
  phy_reg_init_1[12].val = 32165U;
  phy_reg_init_1[13].reg = 6U;
  phy_reg_init_1[13].val = 4369U;
  phy_reg_init_1[14].reg = 6U;
  phy_reg_init_1[14].val = 4818U;
  phy_reg_init_1[15].reg = 6U;
  phy_reg_init_1[15].val = 16598U;
  phy_reg_init_1[16].reg = 6U;
  phy_reg_init_1[16].val = 17476U;
  phy_reg_init_1[17].reg = 6U;
  phy_reg_init_1[17].val = 641U;
  phy_reg_init_1[18].reg = 6U;
  phy_reg_init_1[18].val = 50898U;
  phy_reg_init_1[19].reg = 6U;
  phy_reg_init_1[19].val = 41174U;
  phy_reg_init_1[20].reg = 6U;
  phy_reg_init_1[20].val = 43690U;
  phy_reg_init_1[21].reg = 6U;
  phy_reg_init_1[21].val = 641U;
  phy_reg_init_1[22].reg = 6U;
  phy_reg_init_1[22].val = 50862U;
  phy_reg_init_1[23].reg = 6U;
  phy_reg_init_1[23].val = 4005U;
  phy_reg_init_1[24].reg = 6U;
  phy_reg_init_1[24].val = 17476U;
  phy_reg_init_1[25].reg = 6U;
  phy_reg_init_1[25].val = 686U;
  phy_reg_init_1[26].reg = 6U;
  phy_reg_init_1[26].val = 19877U;
  phy_reg_init_1[27].reg = 6U;
  phy_reg_init_1[27].val = 43690U;
  phy_reg_init_1[28].reg = 6U;
  phy_reg_init_1[28].val = 686U;
  phy_reg_init_1[29].reg = 6U;
  phy_reg_init_1[29].val = 18351U;
  phy_reg_init_1[30].reg = 6U;
  phy_reg_init_1[30].val = 33218U;
  phy_reg_init_1[31].reg = 6U;
  phy_reg_init_1[31].val = 61059U;
  phy_reg_init_1[32].reg = 6U;
  phy_reg_init_1[32].val = 19968U;
  phy_reg_init_1[33].reg = 6U;
  phy_reg_init_1[33].val = 61059U;
  phy_reg_init_1[34].reg = 6U;
  phy_reg_init_1[34].val = 19727U;
  phy_reg_init_1[35].reg = 6U;
  phy_reg_init_1[35].val = 61059U;
  phy_reg_init_1[36].reg = 6U;
  phy_reg_init_1[36].val = 19471U;
  phy_reg_init_1[37].reg = 6U;
  phy_reg_init_1[37].val = 61059U;
  phy_reg_init_1[38].reg = 6U;
  phy_reg_init_1[38].val = 20224U;
  phy_reg_init_1[39].reg = 6U;
  phy_reg_init_1[39].val = 61059U;
  phy_reg_init_1[40].reg = 6U;
  phy_reg_init_1[40].val = 20736U;
  phy_reg_init_1[41].reg = 6U;
  phy_reg_init_1[41].val = 61059U;
  phy_reg_init_1[42].reg = 6U;
  phy_reg_init_1[42].val = 19199U;
  phy_reg_init_1[43].reg = 6U;
  phy_reg_init_1[43].val = 61059U;
  phy_reg_init_1[44].reg = 6U;
  phy_reg_init_1[44].val = 19455U;
  phy_reg_init_1[45].reg = 6U;
  phy_reg_init_1[45].val = 57475U;
  phy_reg_init_1[46].reg = 6U;
  phy_reg_init_1[46].val = 12513U;
  phy_reg_init_1[47].reg = 6U;
  phy_reg_init_1[47].val = 33585U;
  phy_reg_init_1[48].reg = 6U;
  phy_reg_init_1[48].val = 22782U;
  phy_reg_init_1[49].reg = 6U;
  phy_reg_init_1[49].val = 58616U;
  phy_reg_init_1[50].reg = 6U;
  phy_reg_init_1[50].val = 35557U;
  phy_reg_init_1[51].reg = 6U;
  phy_reg_init_1[51].val = 63627U;
  phy_reg_init_1[52].reg = 6U;
  phy_reg_init_1[52].val = 57475U;
  phy_reg_init_1[53].reg = 6U;
  phy_reg_init_1[53].val = 13025U;
  phy_reg_init_1[54].reg = 6U;
  phy_reg_init_1[54].val = 33587U;
  phy_reg_init_1[55].reg = 6U;
  phy_reg_init_1[55].val = 22799U;
  phy_reg_init_1[56].reg = 6U;
  phy_reg_init_1[56].val = 57987U;
  phy_reg_init_1[57].reg = 6U;
  phy_reg_init_1[57].val = 19724U;
  phy_reg_init_1[58].reg = 6U;
  phy_reg_init_1[58].val = 9306U;
  phy_reg_init_1[59].reg = 6U;
  phy_reg_init_1[59].val = 61470U;
  phy_reg_init_1[60].reg = 6U;
  phy_reg_init_1[60].val = 4836U;
  phy_reg_init_1[61].reg = 6U;
  phy_reg_init_1[61].val = 63628U;
  phy_reg_init_1[62].reg = 6U;
  phy_reg_init_1[62].val = 58872U;
  phy_reg_init_1[63].reg = 6U;
  phy_reg_init_1[63].val = 36271U;
  phy_reg_init_1[64].reg = 6U;
  phy_reg_init_1[64].val = 33218U;
  phy_reg_init_1[65].reg = 6U;
  phy_reg_init_1[65].val = 57475U;
  phy_reg_init_1[66].reg = 6U;
  phy_reg_init_1[66].val = 20240U;
  phy_reg_init_1[67].reg = 6U;
  phy_reg_init_1[67].val = 58499U;
  phy_reg_init_1[68].reg = 6U;
  phy_reg_init_1[68].val = 20448U;
  phy_reg_init_1[69].reg = 6U;
  phy_reg_init_1[69].val = 33614U;
  phy_reg_init_1[70].reg = 6U;
  phy_reg_init_1[70].val = 30720U;
  phy_reg_init_1[71].reg = 6U;
  phy_reg_init_1[71].val = 40714U;
  phy_reg_init_1[72].reg = 6U;
  phy_reg_init_1[72].val = 57475U;
  phy_reg_init_1[73].reg = 6U;
  phy_reg_init_1[73].val = 20384U;
  phy_reg_init_1[74].reg = 6U;
  phy_reg_init_1[74].val = 4261U;
  phy_reg_init_1[75].reg = 6U;
  phy_reg_init_1[75].val = 61059U;
  phy_reg_init_1[76].reg = 6U;
  phy_reg_init_1[76].val = 19969U;
  phy_reg_init_1[77].reg = 6U;
  phy_reg_init_1[77].val = 57475U;
  phy_reg_init_1[78].reg = 6U;
  phy_reg_init_1[78].val = 20088U;
  phy_reg_init_1[79].reg = 6U;
  phy_reg_init_1[79].val = 1438U;
  phy_reg_init_1[80].reg = 6U;
  phy_reg_init_1[80].val = 39648U;
  phy_reg_init_1[81].reg = 6U;
  phy_reg_init_1[81].val = 33614U;
  phy_reg_init_1[82].reg = 6U;
  phy_reg_init_1[82].val = 30724U;
  phy_reg_init_1[83].reg = 6U;
  phy_reg_init_1[83].val = 40464U;
  phy_reg_init_1[84].reg = 6U;
  phy_reg_init_1[84].val = 57475U;
  phy_reg_init_1[85].reg = 6U;
  phy_reg_init_1[85].val = 20088U;
  phy_reg_init_1[86].reg = 6U;
  phy_reg_init_1[86].val = 926U;
  phy_reg_init_1[87].reg = 6U;
  phy_reg_init_1[87].val = 4064U;
  phy_reg_init_1[88].reg = 6U;
  phy_reg_init_1[88].val = 33614U;
  phy_reg_init_1[89].reg = 6U;
  phy_reg_init_1[89].val = 30721U;
  phy_reg_init_1[90].reg = 6U;
  phy_reg_init_1[90].val = 40453U;
  phy_reg_init_1[91].reg = 6U;
  phy_reg_init_1[91].val = 44556U;
  phy_reg_init_1[92].reg = 6U;
  phy_reg_init_1[92].val = 44929U;
  phy_reg_init_1[93].reg = 6U;
  phy_reg_init_1[93].val = 42927U;
  phy_reg_init_1[94].reg = 6U;
  phy_reg_init_1[94].val = 33106U;
  phy_reg_init_1[95].reg = 6U;
  phy_reg_init_1[95].val = 44929U;
  phy_reg_init_1[96].reg = 6U;
  phy_reg_init_1[96].val = 35759U;
  phy_reg_init_1[97].reg = 6U;
  phy_reg_init_1[97].val = 33218U;
  phy_reg_init_1[98].reg = 6U;
  phy_reg_init_1[98].val = 61059U;
  phy_reg_init_1[99].reg = 6U;
  phy_reg_init_1[99].val = 18432U;
  phy_reg_init_1[100].reg = 6U;
  phy_reg_init_1[100].val = 61059U;
  phy_reg_init_1[101].reg = 6U;
  phy_reg_init_1[101].val = 18688U;
  phy_reg_init_1[102].reg = 6U;
  phy_reg_init_1[102].val = 57475U;
  phy_reg_init_1[103].reg = 6U;
  phy_reg_init_1[103].val = 20752U;
  phy_reg_init_1[104].reg = 6U;
  phy_reg_init_1[104].val = 58499U;
  phy_reg_init_1[105].reg = 6U;
  phy_reg_init_1[105].val = 20824U;
  phy_reg_init_1[106].reg = 6U;
  phy_reg_init_1[106].val = 415U;
  phy_reg_init_1[107].reg = 6U;
  phy_reg_init_1[107].val = 60112U;
  phy_reg_init_1[108].reg = 6U;
  phy_reg_init_1[108].val = 209U;
  phy_reg_init_1[109].reg = 6U;
  phy_reg_init_1[109].val = 32799U;
  phy_reg_init_1[110].reg = 6U;
  phy_reg_init_1[110].val = 26338U;
  phy_reg_init_1[111].reg = 6U;
  phy_reg_init_1[111].val = 63722U;
  phy_reg_init_1[112].reg = 6U;
  phy_reg_init_1[112].val = 58360U;
  phy_reg_init_1[113].reg = 6U;
  phy_reg_init_1[113].val = 60250U;
  phy_reg_init_1[114].reg = 6U;
  phy_reg_init_1[114].val = 63518U;
  phy_reg_init_1[115].reg = 6U;
  phy_reg_init_1[115].val = 8422U;
  phy_reg_init_1[116].reg = 6U;
  phy_reg_init_1[116].val = 63722U;
  phy_reg_init_1[117].reg = 6U;
  phy_reg_init_1[117].val = 58872U;
  phy_reg_init_1[118].reg = 6U;
  phy_reg_init_1[118].val = 60371U;
  phy_reg_init_1[119].reg = 6U;
  phy_reg_init_1[119].val = 691U;
  phy_reg_init_1[120].reg = 6U;
  phy_reg_init_1[120].val = 65250U;
  phy_reg_init_1[121].reg = 6U;
  phy_reg_init_1[121].val = 63612U;
  phy_reg_init_1[122].reg = 6U;
  phy_reg_init_1[122].val = 61234U;
  phy_reg_init_1[123].reg = 6U;
  phy_reg_init_1[123].val = 23424U;
  phy_reg_init_1[124].reg = 6U;
  phy_reg_init_1[124].val = 58360U;
  phy_reg_init_1[125].reg = 6U;
  phy_reg_init_1[125].val = 32158U;
  phy_reg_init_1[126].reg = 6U;
  phy_reg_init_1[126].val = 893U;
  phy_reg_init_1[127].reg = 6U;
  phy_reg_init_1[127].val = 65535U;
  phy_reg_init_1[128].reg = 6U;
  phy_reg_init_1[128].val = 3416U;
  phy_reg_init_1[129].reg = 6U;
  phy_reg_init_1[129].val = 7253U;
  phy_reg_init_1[130].reg = 6U;
  phy_reg_init_1[130].val = 6757U;
  phy_reg_init_1[131].reg = 6U;
  phy_reg_init_1[131].val = 4513U;
  phy_reg_init_1[132].reg = 6U;
  phy_reg_init_1[132].val = 37075U;
  phy_reg_init_1[133].reg = 6U;
  phy_reg_init_1[133].val = 57987U;
  phy_reg_init_1[134].reg = 6U;
  phy_reg_init_1[134].val = 18659U;
  phy_reg_init_1[135].reg = 6U;
  phy_reg_init_1[135].val = 33609U;
  phy_reg_init_1[136].reg = 6U;
  phy_reg_init_1[136].val = 6998U;
  phy_reg_init_1[137].reg = 6U;
  phy_reg_init_1[137].val = 43784U;
  phy_reg_init_1[138].reg = 6U;
  phy_reg_init_1[138].val = 61270U;
  phy_reg_init_1[139].reg = 6U;
  phy_reg_init_1[139].val = 59011U;
  phy_reg_init_1[140].reg = 6U;
  phy_reg_init_1[140].val = 18663U;
  phy_reg_init_1[141].reg = 6U;
  phy_reg_init_1[141].val = 33609U;
  phy_reg_init_1[142].reg = 6U;
  phy_reg_init_1[142].val = 4305U;
  phy_reg_init_1[143].reg = 6U;
  phy_reg_init_1[143].val = 32799U;
  phy_reg_init_1[144].reg = 6U;
  phy_reg_init_1[144].val = 26272U;
  phy_reg_init_1[145].reg = 6U;
  phy_reg_init_1[145].val = 1209U;
  phy_reg_init_1[146].reg = 6U;
  phy_reg_init_1[146].val = 57987U;
  phy_reg_init_1[147].reg = 6U;
  phy_reg_init_1[147].val = 18659U;
  phy_reg_init_1[148].reg = 6U;
  phy_reg_init_1[148].val = 33609U;
  phy_reg_init_1[149].reg = 6U;
  phy_reg_init_1[149].val = 61285U;
  phy_reg_init_1[150].reg = 6U;
  phy_reg_init_1[150].val = 57987U;
  phy_reg_init_1[151].reg = 6U;
  phy_reg_init_1[151].val = 19171U;
  phy_reg_init_1[152].reg = 6U;
  phy_reg_init_1[152].val = 33611U;
  phy_reg_init_1[153].reg = 6U;
  phy_reg_init_1[153].val = 6998U;
  phy_reg_init_1[154].reg = 6U;
  phy_reg_init_1[154].val = 43534U;
  phy_reg_init_1[155].reg = 6U;
  phy_reg_init_1[155].val = 61270U;
  phy_reg_init_1[156].reg = 6U;
  phy_reg_init_1[156].val = 59011U;
  phy_reg_init_1[157].reg = 6U;
  phy_reg_init_1[157].val = 19175U;
  phy_reg_init_1[158].reg = 6U;
  phy_reg_init_1[158].val = 33611U;
  phy_reg_init_1[159].reg = 6U;
  phy_reg_init_1[159].val = 57987U;
  phy_reg_init_1[160].reg = 6U;
  phy_reg_init_1[160].val = 19942U;
  phy_reg_init_1[161].reg = 6U;
  phy_reg_init_1[161].val = 33612U;
  phy_reg_init_1[162].reg = 6U;
  phy_reg_init_1[162].val = 57475U;
  phy_reg_init_1[163].reg = 6U;
  phy_reg_init_1[163].val = 19872U;
  phy_reg_init_1[164].reg = 6U;
  phy_reg_init_1[164].val = 12U;
  phy_reg_init_1[165].reg = 6U;
  phy_reg_init_1[165].val = 44929U;
  phy_reg_init_1[166].reg = 6U;
  phy_reg_init_1[166].val = 35808U;
  phy_reg_init_1[167].reg = 6U;
  phy_reg_init_1[167].val = 33613U;
  phy_reg_init_1[168].reg = 6U;
  phy_reg_init_1[168].val = 4324U;
  phy_reg_init_1[169].reg = 6U;
  phy_reg_init_1[169].val = 33613U;
  phy_reg_init_1[170].reg = 6U;
  phy_reg_init_1[170].val = 44548U;
  phy_reg_init_1[171].reg = 6U;
  phy_reg_init_1[171].val = 32996U;
  phy_reg_init_1[172].reg = 6U;
  phy_reg_init_1[172].val = 33613U;
  phy_reg_init_1[173].reg = 6U;
  phy_reg_init_1[173].val = 57475U;
  phy_reg_init_1[174].reg = 6U;
  phy_reg_init_1[174].val = 20088U;
  phy_reg_init_1[175].reg = 6U;
  phy_reg_init_1[175].val = 926U;
  phy_reg_init_1[176].reg = 6U;
  phy_reg_init_1[176].val = 3040U;
  phy_reg_init_1[177].reg = 6U;
  phy_reg_init_1[177].val = 33614U;
  phy_reg_init_1[178].reg = 6U;
  phy_reg_init_1[178].val = 30724U;
  phy_reg_init_1[179].reg = 6U;
  phy_reg_init_1[179].val = 40452U;
  phy_reg_init_1[180].reg = 6U;
  phy_reg_init_1[180].val = 61059U;
  phy_reg_init_1[181].reg = 6U;
  phy_reg_init_1[181].val = 19970U;
  phy_reg_init_1[182].reg = 6U;
  phy_reg_init_1[182].val = 57475U;
  phy_reg_init_1[183].reg = 6U;
  phy_reg_init_1[183].val = 13025U;
  phy_reg_init_1[184].reg = 6U;
  phy_reg_init_1[184].val = 33587U;
  phy_reg_init_1[185].reg = 6U;
  phy_reg_init_1[185].val = 22799U;
  phy_reg_init_1[186].reg = 6U;
  phy_reg_init_1[186].val = 57987U;
  phy_reg_init_1[187].reg = 6U;
  phy_reg_init_1[187].val = 19724U;
  phy_reg_init_1[188].reg = 6U;
  phy_reg_init_1[188].val = 9306U;
  phy_reg_init_1[189].reg = 6U;
  phy_reg_init_1[189].val = 61470U;
  phy_reg_init_1[190].reg = 6U;
  phy_reg_init_1[190].val = 4836U;
  phy_reg_init_1[191].reg = 6U;
  phy_reg_init_1[191].val = 63628U;
  phy_reg_init_1[192].reg = 6U;
  phy_reg_init_1[192].val = 58872U;
  phy_reg_init_1[193].reg = 6U;
  phy_reg_init_1[193].val = 36320U;
  phy_reg_init_1[194].reg = 6U;
  phy_reg_init_1[194].val = 33584U;
  phy_reg_init_1[195].reg = 6U;
  phy_reg_init_1[195].val = 57731U;
  phy_reg_init_1[196].reg = 6U;
  phy_reg_init_1[196].val = 12648U;
  phy_reg_init_1[197].reg = 6U;
  phy_reg_init_1[197].val = 484U;
  phy_reg_init_1[198].reg = 6U;
  phy_reg_init_1[198].val = 63626U;
  phy_reg_init_1[199].reg = 6U;
  phy_reg_init_1[199].val = 58872U;
  phy_reg_init_1[200].reg = 6U;
  phy_reg_init_1[200].val = 35758U;
  phy_reg_init_1[201].reg = 6U;
  phy_reg_init_1[201].val = 14318U;
  phy_reg_init_1[202].reg = 6U;
  phy_reg_init_1[202].val = 33614U;
  phy_reg_init_1[203].reg = 6U;
  phy_reg_init_1[203].val = 992U;
  phy_reg_init_1[204].reg = 6U;
  phy_reg_init_1[204].val = 33612U;
  phy_reg_init_1[205].reg = 6U;
  phy_reg_init_1[205].val = 57731U;
  phy_reg_init_1[206].reg = 6U;
  phy_reg_init_1[206].val = 19739U;
  phy_reg_init_1[207].reg = 6U;
  phy_reg_init_1[207].val = 414U;
  phy_reg_init_1[208].reg = 6U;
  phy_reg_init_1[208].val = 1194U;
  phy_reg_init_1[209].reg = 6U;
  phy_reg_init_1[209].val = 41390U;
  phy_reg_init_1[210].reg = 6U;
  phy_reg_init_1[210].val = 43246U;
  phy_reg_init_1[211].reg = 6U;
  phy_reg_init_1[211].val = 33614U;
  phy_reg_init_1[212].reg = 6U;
  phy_reg_init_1[212].val = 1262U;
  phy_reg_init_1[213].reg = 6U;
  phy_reg_init_1[213].val = 33615U;
  phy_reg_init_1[214].reg = 6U;
  phy_reg_init_1[214].val = 174U;
  phy_reg_init_1[215].reg = 6U;
  phy_reg_init_1[215].val = 44000U;
  phy_reg_init_1[216].reg = 6U;
  phy_reg_init_1[216].val = 33615U;
  phy_reg_init_1[217].reg = 6U;
  phy_reg_init_1[217].val = 30723U;
  phy_reg_init_1[218].reg = 6U;
  phy_reg_init_1[218].val = 40724U;
  phy_reg_init_1[219].reg = 6U;
  phy_reg_init_1[219].val = 61059U;
  phy_reg_init_1[220].reg = 6U;
  phy_reg_init_1[220].val = 19973U;
  phy_reg_init_1[221].reg = 6U;
  phy_reg_init_1[221].val = 53824U;
  phy_reg_init_1[222].reg = 6U;
  phy_reg_init_1[222].val = 54869U;
  phy_reg_init_1[223].reg = 6U;
  phy_reg_init_1[223].val = 21506U;
  phy_reg_init_1[224].reg = 6U;
  phy_reg_init_1[224].val = 33222U;
  phy_reg_init_1[225].reg = 6U;
  phy_reg_init_1[225].val = 53920U;
  phy_reg_init_1[226].reg = 6U;
  phy_reg_init_1[226].val = 54970U;
  phy_reg_init_1[227].reg = 6U;
  phy_reg_init_1[227].val = 2U;
  phy_reg_init_1[228].reg = 6U;
  phy_reg_init_1[228].val = 33222U;
  phy_reg_init_1[229].reg = 6U;
  phy_reg_init_1[229].val = 65277U;
  phy_reg_init_1[230].reg = 6U;
  phy_reg_init_1[230].val = 64517U;
  phy_reg_init_1[231].reg = 6U;
  phy_reg_init_1[231].val = 63712U;
  phy_reg_init_1[232].reg = 6U;
  phy_reg_init_1[232].val = 63584U;
  phy_reg_init_1[233].reg = 6U;
  phy_reg_init_1[233].val = 57848U;
  phy_reg_init_1[234].reg = 6U;
  phy_reg_init_1[234].val = 24936U;
  phy_reg_init_1[235].reg = 6U;
  phy_reg_init_1[235].val = 740U;
  phy_reg_init_1[236].reg = 6U;
  phy_reg_init_1[236].val = 63584U;
  phy_reg_init_1[237].reg = 6U;
  phy_reg_init_1[237].val = 58872U;
  phy_reg_init_1[238].reg = 6U;
  phy_reg_init_1[238].val = 25056U;
  phy_reg_init_1[239].reg = 6U;
  phy_reg_init_1[239].val = 63560U;
  phy_reg_init_1[240].reg = 6U;
  phy_reg_init_1[240].val = 57848U;
  phy_reg_init_1[241].reg = 6U;
  phy_reg_init_1[241].val = 18776U;
  phy_reg_init_1[242].reg = 6U;
  phy_reg_init_1[242].val = 3870U;
  phy_reg_init_1[243].reg = 6U;
  phy_reg_init_1[243].val = 740U;
  phy_reg_init_1[244].reg = 6U;
  phy_reg_init_1[244].val = 63560U;
  phy_reg_init_1[245].reg = 6U;
  phy_reg_init_1[245].val = 58872U;
  phy_reg_init_1[246].reg = 6U;
  phy_reg_init_1[246].val = 18896U;
  phy_reg_init_1[247].reg = 6U;
  phy_reg_init_1[247].val = 2U;
  phy_reg_init_1[248].reg = 6U;
  phy_reg_init_1[248].val = 33290U;
  phy_reg_init_1[249].reg = 6U;
  phy_reg_init_1[249].val = 49027U;
  phy_reg_init_1[250].reg = 6U;
  phy_reg_init_1[250].val = 20719U;
  phy_reg_init_1[251].reg = 6U;
  phy_reg_init_1[251].val = 18140U;
  phy_reg_init_1[252].reg = 6U;
  phy_reg_init_1[252].val = 6621U;
  phy_reg_init_1[253].reg = 6U;
  phy_reg_init_1[253].val = 53249U;
  phy_reg_init_1[254].reg = 6U;
  phy_reg_init_1[254].val = 642U;
  phy_reg_init_1[255].reg = 6U;
  phy_reg_init_1[255].val = 2562U;
  phy_reg_init_1[256].reg = 6U;
  phy_reg_init_1[256].val = 33318U;
  phy_reg_init_1[257].reg = 6U;
  phy_reg_init_1[257].val = 57592U;
  phy_reg_init_1[258].reg = 6U;
  phy_reg_init_1[258].val = 24801U;
  phy_reg_init_1[259].reg = 6U;
  phy_reg_init_1[259].val = 63585U;
  phy_reg_init_1[260].reg = 6U;
  phy_reg_init_1[260].val = 22781U;
  phy_reg_init_1[261].reg = 6U;
  phy_reg_init_1[261].val = 58616U;
  phy_reg_init_1[262].reg = 6U;
  phy_reg_init_1[262].val = 24805U;
  phy_reg_init_1[263].reg = 6U;
  phy_reg_init_1[263].val = 63585U;
  phy_reg_init_1[264].reg = 6U;
  phy_reg_init_1[264].val = 64516U;
  phy_reg_init_1[265].reg = 6U;
  phy_reg_init_1[265].val = 63994U;
  phy_reg_init_1[266].reg = 6U;
  phy_reg_init_1[266].val = 64454U;
  phy_reg_init_1[267].reg = 6U;
  phy_reg_init_1[267].val = 49144U;
  phy_reg_init_1[268].reg = 6U;
  phy_reg_init_1[268].val = 16574U;
  phy_reg_init_1[269].reg = 6U;
  phy_reg_init_1[269].val = 33616U;
  phy_reg_init_1[270].reg = 6U;
  phy_reg_init_1[270].val = 40961U;
  phy_reg_init_1[271].reg = 6U;
  phy_reg_init_1[271].val = 263U;
  phy_reg_init_1[272].reg = 6U;
  phy_reg_init_1[272].val = 7049U;
  phy_reg_init_1[273].reg = 6U;
  phy_reg_init_1[273].val = 53202U;
  phy_reg_init_1[274].reg = 6U;
  phy_reg_init_1[274].val = 2283U;
  phy_reg_init_1[275].reg = 6U;
  phy_reg_init_1[275].val = 56089U;
  phy_reg_init_1[276].reg = 6U;
  phy_reg_init_1[276].val = 45819U;
  phy_reg_init_1[277].reg = 6U;
  phy_reg_init_1[277].val = 65534U;
  phy_reg_init_1[278].reg = 6U;
  phy_reg_init_1[278].val = 64772U;
  phy_reg_init_1[279].reg = 6U;
  phy_reg_init_1[279].val = 63712U;
  phy_reg_init_1[280].reg = 6U;
  phy_reg_init_1[280].val = 63560U;
  phy_reg_init_1[281].reg = 6U;
  phy_reg_init_1[281].val = 57848U;
  phy_reg_init_1[282].reg = 6U;
  phy_reg_init_1[282].val = 18792U;
  phy_reg_init_1[283].reg = 6U;
  phy_reg_init_1[283].val = 2276U;
  phy_reg_init_1[284].reg = 6U;
  phy_reg_init_1[284].val = 63560U;
  phy_reg_init_1[285].reg = 6U;
  phy_reg_init_1[285].val = 58872U;
  phy_reg_init_1[286].reg = 6U;
  phy_reg_init_1[286].val = 18776U;
  phy_reg_init_1[287].reg = 6U;
  phy_reg_init_1[287].val = 63460U;
  phy_reg_init_1[288].reg = 6U;
  phy_reg_init_1[288].val = 63560U;
  phy_reg_init_1[289].reg = 6U;
  phy_reg_init_1[289].val = 58872U;
  phy_reg_init_1[290].reg = 6U;
  phy_reg_init_1[290].val = 18940U;
  phy_reg_init_1[291].reg = 6U;
  phy_reg_init_1[291].val = 1101U;
  phy_reg_init_1[292].reg = 6U;
  phy_reg_init_1[292].val = 8192U;
  phy_reg_init_1[293].reg = 6U;
  phy_reg_init_1[293].val = 590U;
  phy_reg_init_1[294].reg = 6U;
  phy_reg_init_1[294].val = 8704U;
  phy_reg_init_1[295].reg = 6U;
  phy_reg_init_1[295].val = 589U;
  phy_reg_init_1[296].reg = 6U;
  phy_reg_init_1[296].val = 57343U;
  phy_reg_init_1[297].reg = 6U;
  phy_reg_init_1[297].val = 334U;
  phy_reg_init_1[298].reg = 6U;
  phy_reg_init_1[298].val = 56831U;
  phy_reg_init_1[299].reg = 6U;
  phy_reg_init_1[299].val = 256U;
  phy_reg_init_1[300].reg = 5U;
  phy_reg_init_1[300].val = 33752U;
  phy_reg_init_1[301].reg = 6U;
  phy_reg_init_1[301].val = 32768U;
  phy_reg_init_1[302].reg = 3U;
  phy_reg_init_1[302].val = 56320U;
  phy_reg_init_1[303].reg = 5U;
  phy_reg_init_1[303].val = 65526U;
  phy_reg_init_1[304].reg = 6U;
  phy_reg_init_1[304].val = 252U;
  phy_reg_init_1[305].reg = 31U;
  phy_reg_init_1[305].val = 0U;
  phy_reg_init_1[306].reg = 31U;
  phy_reg_init_1[306].val = 0U;
  phy_reg_init_1[307].reg = 13U;
  phy_reg_init_1[307].val = 63616U;
  phy_reg_init_1[308].reg = 31U;
  phy_reg_init_1[308].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init_0), 22);
  tmp = rtl8168d_efuse_read(ioaddr, 1);
  if ((unsigned int )tmp == 177U) {
    phy_reg_init[0].reg = 31U;
    phy_reg_init[0].val = 2U;
    phy_reg_init[1].reg = 5U;
    phy_reg_init[1].val = 26266U;
    phy_reg_init[2].reg = 31U;
    phy_reg_init[2].val = 5U;
    phy_reg_init[3].reg = 5U;
    phy_reg_init[3].val = 33584U;
    phy_reg_init[4].reg = 6U;
    phy_reg_init[4].val = 26266U;
    phy_reg_init[5].reg = 31U;
    phy_reg_init[5].val = 2U;
    rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 6);
    val = mdio_read(ioaddr, 13);
    if ((val & 255) != 108) {
      set[0] = 101U;
      set[1] = 102U;
      set[2] = 103U;
      set[3] = 104U;
      set[4] = 105U;
      set[5] = 106U;
      set[6] = 107U;
      set[7] = 108U;
      mdio_write(ioaddr, 31, 2);
      val = val & 65280;
      i = 0;
      goto ldv_37692;
      ldv_37691:
      mdio_write(ioaddr, 13, (int )(set[i] | (u32 )val));
      i = i + 1;
      ldv_37692: ;
      if ((unsigned int )i <= 7U) {
        goto ldv_37691;
      } else {
      }
    } else {
    }
  } else {
    phy_reg_init___0[0].reg = 31U;
    phy_reg_init___0[0].val = 2U;
    phy_reg_init___0[1].reg = 5U;
    phy_reg_init___0[1].val = 9794U;
    phy_reg_init___0[2].reg = 31U;
    phy_reg_init___0[2].val = 5U;
    phy_reg_init___0[3].reg = 5U;
    phy_reg_init___0[3].val = 33584U;
    phy_reg_init___0[4].reg = 6U;
    phy_reg_init___0[4].val = 9794U;
    rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init___0), 5);
  }
  mdio_write(ioaddr, 31, 2);
  mdio_plus_minus(ioaddr, 2, 256, 1536);
  mdio_plus_minus(ioaddr, 3, 0, 57344);
  mdio_write(ioaddr, 31, 1);
  mdio_write(ioaddr, 23, 3264);
  mdio_write(ioaddr, 31, 2);
  mdio_patch(ioaddr, 15, 23);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init_1), 309);
  return;
}
}
static void rtl8168d_3_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[48U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 2U;
  phy_reg_init[1].reg = 16U;
  phy_reg_init[1].val = 8U;
  phy_reg_init[2].reg = 13U;
  phy_reg_init[2].val = 108U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  phy_reg_init[4].reg = 13U;
  phy_reg_init[4].val = 63616U;
  phy_reg_init[5].reg = 31U;
  phy_reg_init[5].val = 1U;
  phy_reg_init[6].reg = 23U;
  phy_reg_init[6].val = 3264U;
  phy_reg_init[7].reg = 31U;
  phy_reg_init[7].val = 1U;
  phy_reg_init[8].reg = 11U;
  phy_reg_init[8].val = 42200U;
  phy_reg_init[9].reg = 9U;
  phy_reg_init[9].val = 10268U;
  phy_reg_init[10].reg = 7U;
  phy_reg_init[10].val = 10371U;
  phy_reg_init[11].reg = 10U;
  phy_reg_init[11].val = 27445U;
  phy_reg_init[12].reg = 29U;
  phy_reg_init[12].val = 15780U;
  phy_reg_init[13].reg = 28U;
  phy_reg_init[13].val = 61437U;
  phy_reg_init[14].reg = 20U;
  phy_reg_init[14].val = 32594U;
  phy_reg_init[15].reg = 24U;
  phy_reg_init[15].val = 32710U;
  phy_reg_init[16].reg = 8U;
  phy_reg_init[16].val = 1537U;
  phy_reg_init[17].reg = 6U;
  phy_reg_init[17].val = 16483U;
  phy_reg_init[18].reg = 16U;
  phy_reg_init[18].val = 61556U;
  phy_reg_init[19].reg = 31U;
  phy_reg_init[19].val = 3U;
  phy_reg_init[20].reg = 19U;
  phy_reg_init[20].val = 1929U;
  phy_reg_init[21].reg = 18U;
  phy_reg_init[21].val = 62653U;
  phy_reg_init[22].reg = 26U;
  phy_reg_init[22].val = 1277U;
  phy_reg_init[23].reg = 20U;
  phy_reg_init[23].val = 33968U;
  phy_reg_init[24].reg = 31U;
  phy_reg_init[24].val = 0U;
  phy_reg_init[25].reg = 0U;
  phy_reg_init[25].val = 37376U;
  phy_reg_init[26].reg = 31U;
  phy_reg_init[26].val = 5U;
  phy_reg_init[27].reg = 1U;
  phy_reg_init[27].val = 832U;
  phy_reg_init[28].reg = 31U;
  phy_reg_init[28].val = 1U;
  phy_reg_init[29].reg = 4U;
  phy_reg_init[29].val = 16384U;
  phy_reg_init[30].reg = 3U;
  phy_reg_init[30].val = 7457U;
  phy_reg_init[31].reg = 2U;
  phy_reg_init[31].val = 3122U;
  phy_reg_init[32].reg = 1U;
  phy_reg_init[32].val = 512U;
  phy_reg_init[33].reg = 0U;
  phy_reg_init[33].val = 21844U;
  phy_reg_init[34].reg = 4U;
  phy_reg_init[34].val = 18432U;
  phy_reg_init[35].reg = 4U;
  phy_reg_init[35].val = 16384U;
  phy_reg_init[36].reg = 4U;
  phy_reg_init[36].val = 61440U;
  phy_reg_init[37].reg = 3U;
  phy_reg_init[37].val = 57089U;
  phy_reg_init[38].reg = 2U;
  phy_reg_init[38].val = 57120U;
  phy_reg_init[39].reg = 1U;
  phy_reg_init[39].val = 4122U;
  phy_reg_init[40].reg = 0U;
  phy_reg_init[40].val = 41215U;
  phy_reg_init[41].reg = 4U;
  phy_reg_init[41].val = 63488U;
  phy_reg_init[42].reg = 4U;
  phy_reg_init[42].val = 61440U;
  phy_reg_init[43].reg = 31U;
  phy_reg_init[43].val = 0U;
  phy_reg_init[44].reg = 31U;
  phy_reg_init[44].val = 7U;
  phy_reg_init[45].reg = 30U;
  phy_reg_init[45].val = 35U;
  phy_reg_init[46].reg = 22U;
  phy_reg_init[46].val = 0U;
  phy_reg_init[47].reg = 31U;
  phy_reg_init[47].val = 0U;
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 48);
  return;
}
}
static void rtl8102e_hw_phy_config(void *ioaddr )
{
  struct phy_reg phy_reg_init[4U] ;
  {
  phy_reg_init[0].reg = 31U;
  phy_reg_init[0].val = 3U;
  phy_reg_init[1].reg = 8U;
  phy_reg_init[1].val = 17437U;
  phy_reg_init[2].reg = 1U;
  phy_reg_init[2].val = 37120U;
  phy_reg_init[3].reg = 31U;
  phy_reg_init[3].val = 0U;
  mdio_write(ioaddr, 31, 0);
  mdio_patch(ioaddr, 17, 4096);
  mdio_patch(ioaddr, 25, 8192);
  mdio_patch(ioaddr, 16, 32768);
  rtl_phy_write(ioaddr, (struct phy_reg const *)(& phy_reg_init), 4);
  return;
}
}
static void rtl_hw_phy_config(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  rtl8169_print_mac_version(tp);
  switch (tp->mac_version) {
  case 1: ;
  goto ldv_37717;
  case 2: ;
  case 3:
  rtl8169s_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 4:
  rtl8169sb_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 5:
  rtl8169scd_hw_phy_config(tp, ioaddr);
  goto ldv_37717;
  case 6:
  rtl8169sce_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 7: ;
  case 8: ;
  case 9:
  rtl8102e_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 11:
  rtl8168bb_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 12:
  rtl8168bef_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 16:
  rtl8168bef_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 18:
  rtl8168cp_1_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 19:
  rtl8168c_1_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 20:
  rtl8168c_2_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 21:
  rtl8168c_3_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 22:
  rtl8168c_4_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 23: ;
  case 24:
  rtl8168cp_2_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 25:
  rtl8168d_1_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 26:
  rtl8168d_2_hw_phy_config(ioaddr);
  goto ldv_37717;
  case 27:
  rtl8168d_3_hw_phy_config(ioaddr);
  goto ldv_37717;
  default: ;
  goto ldv_37717;
  }
  ldv_37717: ;
  return;
}
}
static void rtl8169_phy_timer(unsigned long __opaque )
{
  struct net_device *dev ;
  struct rtl8169_private *tp ;
  void *tmp ;
  struct timer_list *timer ;
  void *ioaddr ;
  unsigned long timeout ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  {
  dev = (struct net_device *)__opaque;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  timer = & tp->timer;
  ioaddr = tp->mmio_addr;
  timeout = 2500UL;
  if ((tp->phy_1000_ctrl_reg & 512) == 0) {
    return;
  } else {
  }
  spin_lock_irq(& tp->lock);
  tmp___0 = (*(tp->phy_reset_pending))(ioaddr);
  if (tmp___0 != 0U) {
    timeout = 25UL;
    goto out_mod_timer;
  } else {
  }
  tmp___1 = (*(tp->link_ok))(ioaddr);
  if (tmp___1 != 0U) {
    goto out_unlock;
  } else {
  }
  if ((tp->msg_enable & 4U) != 0U) {
    tmp___2 = netdev_name((struct net_device const *)dev);
    tmp___3 = dev_name((struct device const *)dev->dev.parent);
    tmp___4 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<4>%s %s: %s: PHY reset until link up\n", tmp___4, tmp___3, tmp___2);
  } else {
  }
  (*(tp->phy_reset_enable))(ioaddr);
  out_mod_timer:
  ldv_mod_timer_6(timer, (unsigned long )jiffies + timeout);
  out_unlock:
  spin_unlock_irq(& tp->lock);
  return;
}
}
__inline static void rtl8169_delete_timer(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct timer_list *timer ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  timer = & tp->timer;
  if (tp->mac_version <= 1) {
    return;
  } else {
  }
  ldv_del_timer_sync_7(timer);
  return;
}
}
__inline static void rtl8169_request_timer(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct timer_list *timer ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  timer = & tp->timer;
  if (tp->mac_version <= 1) {
    return;
  } else {
  }
  ldv_mod_timer_8(timer, (unsigned long )jiffies + 2500UL);
  return;
}
}
static void rtl8169_netpoll(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  disable_irq(pdev->irq);
  rtl8169_interrupt((int )pdev->irq, (void *)dev);
  enable_irq(pdev->irq);
  return;
}
}
static void rtl8169_release_board(struct pci_dev *pdev , struct net_device *dev ,
                                  void *ioaddr )
{
  {
  iounmap((void volatile *)ioaddr);
  pci_release_regions(pdev);
  pci_clear_mwi(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_9(dev);
  return;
}
}
static void rtl8169_phy_reset(struct net_device *dev , struct rtl8169_private *tp )
{
  void *ioaddr ;
  unsigned int i ;
  unsigned int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  {
  ioaddr = tp->mmio_addr;
  (*(tp->phy_reset_enable))(ioaddr);
  i = 0U;
  goto ldv_37777;
  ldv_37776:
  tmp = (*(tp->phy_reset_pending))(ioaddr);
  if (tmp == 0U) {
    return;
  } else {
  }
  msleep(1U);
  i = i + 1U;
  ldv_37777: ;
  if (i <= 99U) {
    goto ldv_37776;
  } else {
  }
  if ((tp->msg_enable & 4U) != 0U) {
    tmp___0 = netdev_name((struct net_device const *)dev);
    tmp___1 = dev_name((struct device const *)dev->dev.parent);
    tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<3>%s %s: %s: PHY reset failed\n", tmp___2, tmp___1, tmp___0);
  } else {
  }
  return;
}
}
static void rtl8169_init_phy(struct net_device *dev , struct rtl8169_private *tp )
{
  void *ioaddr ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  unsigned char tmp___2 ;
  {
  ioaddr = tp->mmio_addr;
  rtl_hw_phy_config(dev);
  if (tp->mac_version <= 6) {
    writeb(1, (void volatile *)ioaddr + 130U);
  } else {
  }
  pci_write_config_byte(tp->pci_dev, 13, 64);
  if (tp->mac_version <= 6) {
    pci_write_config_byte(tp->pci_dev, 12, 8);
  } else {
  }
  if (tp->mac_version == 2) {
    writeb(1, (void volatile *)ioaddr + 130U);
    mdio_write(ioaddr, 11, 0);
  } else {
  }
  rtl8169_phy_reset(dev, tp);
  rtl8169_set_speed(dev, 1, 1000, 1);
  tmp___2 = readb((void const volatile *)ioaddr + 108U);
  if ((int )((signed char )tmp___2) < 0) {
    if ((tp->msg_enable & 4U) != 0U) {
      tmp = netdev_name((struct net_device const *)dev);
      tmp___0 = dev_name((struct device const *)dev->dev.parent);
      tmp___1 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: TBI auto-negotiating\n", tmp___1, tmp___0, tmp);
    } else {
    }
  } else {
  }
  return;
}
}
static void rtl_rar_set(struct rtl8169_private *tp , u8 *addr )
{
  void *ioaddr ;
  u32 high ;
  u32 low ;
  {
  ioaddr = tp->mmio_addr;
  low = (u32 )((((int )*addr | ((int )*(addr + 1UL) << 8)) | ((int )*(addr + 2UL) << 16)) | ((int )*(addr + 3UL) << 24));
  high = (u32 )((int )*(addr + 4UL) | ((int )*(addr + 5UL) << 8));
  spin_lock_irq(& tp->lock);
  writeb(192, (void volatile *)ioaddr + 80U);
  writel(high, (void volatile *)ioaddr + 4U);
  readl((void const volatile *)ioaddr + 4U);
  writel(low, (void volatile *)ioaddr);
  readl((void const volatile *)ioaddr);
  writeb(0, (void volatile *)ioaddr + 80U);
  spin_unlock_irq(& tp->lock);
  return;
}
}
static int rtl_set_mac_address(struct net_device *dev , void *p )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct sockaddr *addr ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  addr = (struct sockaddr *)p;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0 == 0) {
    return (-99);
  } else {
  }
  __len = (size_t )dev->addr_len;
  __ret = memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data),
                           __len);
  rtl_rar_set(tp, dev->dev_addr);
  return (0);
}
}
static int rtl8169_ioctl(struct net_device *dev , struct ifreq *ifr , int cmd )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct mii_ioctl_data *data ;
  struct mii_ioctl_data *tmp___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tmp___0 = if_mii(ifr);
  data = tmp___0;
  tmp___4 = netif_running((struct net_device const *)dev);
  if (tmp___4 != 0) {
    tmp___2 = (*(tp->do_ioctl))(tp, data, cmd);
    tmp___3 = tmp___2;
  } else {
    tmp___3 = -19;
  }
  return (tmp___3);
}
}
static int rtl_xmii_ioctl(struct rtl8169_private *tp , struct mii_ioctl_data *data ,
                          int cmd )
{
  int tmp ;
  {
  switch (cmd) {
  case 35143:
  data->phy_id = 32U;
  return (0);
  case 35144:
  tmp = mdio_read(tp->mmio_addr, (int )data->reg_num & 31);
  data->val_out = (__u16 )tmp;
  return (0);
  case 35145:
  mdio_write(tp->mmio_addr, (int )data->reg_num & 31, (int )data->val_in);
  return (0);
  }
  return (-95);
}
}
static int rtl_tbi_ioctl(struct rtl8169_private *tp , struct mii_ioctl_data *data ,
                         int cmd )
{
  {
  return (-95);
}
}
static struct rtl_cfg_info const rtl_cfg_infos[3U] = { {& rtl_hw_start_8169, 1U, 0U, 32895U, 93U, 4U, 1U},
        {& rtl_hw_start_8168, 2U, 8U, 32831U, 29U, 6U, 11U},
        {& rtl_hw_start_8101, 2U, 8U, 49279U, 93U, 2U, 13U}};
static unsigned int rtl_try_msi(struct pci_dev *pdev , void *ioaddr , struct rtl_cfg_info const *cfg )
{
  unsigned int msi ;
  u8 cfg2 ;
  unsigned char tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  {
  msi = 0U;
  tmp = readb((void const volatile *)ioaddr + 83U);
  cfg2 = (unsigned int )tmp & 223U;
  if (((unsigned int )cfg->features & 2U) != 0U) {
    tmp___2 = pci_enable_msi_block(pdev, 1U);
    if (tmp___2 != 0) {
      tmp___0 = dev_name((struct device const *)(& pdev->dev));
      tmp___1 = dev_driver_string((struct device const *)(& pdev->dev));
      printk("<6>%s %s: no MSI. Back to INTx.\n", tmp___1, tmp___0);
    } else {
      cfg2 = (u8 )((unsigned int )cfg2 | 32U);
      msi = 2U;
    }
  } else {
  }
  writeb((int )cfg2, (void volatile *)ioaddr + 83U);
  return (msi);
}
}
static void rtl_disable_msi(struct pci_dev *pdev , struct rtl8169_private *tp )
{
  {
  if ((tp->features & 2U) != 0U) {
    pci_disable_msi(pdev);
    tp->features = tp->features & 4294967293U;
  } else {
  }
  return;
}
}
static struct net_device_ops const rtl8169_netdev_ops =
     {0, 0, & rtl8169_open, & rtl8169_close, & rtl8169_start_xmit, 0, 0, 0, & rtl_set_rx_mode,
    & rtl_set_mac_address, & eth_validate_addr, & rtl8169_ioctl, 0, & rtl8169_change_mtu,
    0, & rtl8169_tx_timeout, & rtl8169_get_stats, & rtl8169_vlan_rx_register, 0, 0,
    & rtl8169_netpoll, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int rtl8169_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct rtl_cfg_info const *cfg ;
  unsigned int region ;
  struct rtl8169_private *tp ;
  struct mii_if_info *mii ;
  struct net_device *dev ;
  void *ioaddr ;
  unsigned int i ;
  int rc ;
  char const *tmp ;
  char const *tmp___0 ;
  void *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  int tmp___8 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  char const *tmp___11 ;
  char const *tmp___12 ;
  char const *tmp___13 ;
  char const *tmp___14 ;
  char const *tmp___15 ;
  char const *tmp___16 ;
  char const *tmp___17 ;
  char const *tmp___18 ;
  char const *tmp___19 ;
  char const *tmp___20 ;
  int tmp___21 ;
  char const *tmp___22 ;
  char const *tmp___23 ;
  char const *tmp___24 ;
  char const *tmp___25 ;
  char const *tmp___26 ;
  char const *tmp___27 ;
  unsigned char tmp___28 ;
  char const *tmp___29 ;
  char const *tmp___30 ;
  char const *tmp___31 ;
  char const *tmp___32 ;
  char const *tmp___33 ;
  unsigned char tmp___34 ;
  unsigned char tmp___35 ;
  unsigned char tmp___36 ;
  unsigned char tmp___37 ;
  unsigned int tmp___38 ;
  unsigned char tmp___39 ;
  struct lock_class_key __key ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___40 ;
  char const *tmp___41 ;
  char const *tmp___42 ;
  char const *tmp___43 ;
  unsigned short tmp___44 ;
  bool tmp___45 ;
  {
  cfg = (struct rtl_cfg_info const *)(& rtl_cfg_infos) + ent->driver_data;
  region = cfg->region;
  if ((int )debug.msg_enable & 1) {
    printk("<6>%s Gigabit Ethernet driver %s loaded\n", (char *)"r8169", (char *)"2.3LK-NAPI");
  } else {
  }
  dev = alloc_etherdev_mq(3928, 1U);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    if ((int )debug.msg_enable & 1) {
      tmp = dev_name((struct device const *)(& pdev->dev));
      tmp___0 = dev_driver_string((struct device const *)(& pdev->dev));
      printk("<3>%s %s: unable to alloc new ethernet\n", tmp___0, tmp);
    } else {
    }
    rc = -12;
    goto out;
  } else {
  }
  dev->dev.parent = & pdev->dev;
  dev->netdev_ops = & rtl8169_netdev_ops;
  tmp___1 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___1;
  tp->dev = dev;
  tp->pci_dev = pdev;
  tp->msg_enable = netif_msg_init((int )debug.msg_enable, 51);
  mii = & tp->mii;
  mii->dev = dev;
  mii->mdio_read = & rtl_mdio_read;
  mii->mdio_write = & rtl_mdio_write;
  mii->phy_id_mask = 31;
  mii->reg_num_mask = 31;
  mii->supports_gmii = ((unsigned int )cfg->features & 4U) != 0U;
  rc = pci_enable_device(pdev);
  if (rc < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___2 = netdev_name((struct net_device const *)dev);
      tmp___3 = dev_name((struct device const *)dev->dev.parent);
      tmp___4 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: enable failure\n", tmp___4, tmp___3, tmp___2);
    } else {
    }
    goto err_out_free_dev_1;
  } else {
  }
  tmp___8 = pci_set_mwi(pdev);
  if (tmp___8 < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___5 = netdev_name((struct net_device const *)dev);
      tmp___6 = dev_name((struct device const *)dev->dev.parent);
      tmp___7 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: Mem-Wr-Inval unavailable\n", tmp___7, tmp___6, tmp___5);
    } else {
    }
  } else {
  }
  if ((pdev->resource[region].flags & 512UL) == 0UL) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___9 = netdev_name((struct net_device const *)dev);
      tmp___10 = dev_name((struct device const *)dev->dev.parent);
      tmp___11 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: region #%d not an MMIO resource, aborting\n", tmp___11,
             tmp___10, tmp___9, region);
    } else {
    }
    rc = -19;
    goto err_out_mwi_2;
  } else {
  }
  if ((pdev->resource[region].start == 0ULL && pdev->resource[region].end == pdev->resource[region].start) || (pdev->resource[region].end - pdev->resource[region].start) + 1ULL <= 255ULL) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___12 = netdev_name((struct net_device const *)dev);
      tmp___13 = dev_name((struct device const *)dev->dev.parent);
      tmp___14 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: Invalid PCI region size(s), aborting\n", tmp___14, tmp___13,
             tmp___12);
    } else {
    }
    rc = -19;
    goto err_out_mwi_2;
  } else {
  }
  rc = pci_request_regions(pdev, "r8169");
  if (rc < 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___15 = netdev_name((struct net_device const *)dev);
      tmp___16 = dev_name((struct device const *)dev->dev.parent);
      tmp___17 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: could not request regions\n", tmp___17, tmp___16, tmp___15);
    } else {
    }
    goto err_out_mwi_2;
  } else {
  }
  tp->cp_cmd = 40U;
  tmp___21 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (tmp___21 == 0 && use_dac != 0) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 16U);
    dev->features = dev->features | 32UL;
  } else {
    rc = pci_set_dma_mask(pdev, 4294967295ULL);
    if (rc < 0) {
      if ((tp->msg_enable & 2U) != 0U) {
        tmp___18 = netdev_name((struct net_device const *)dev);
        tmp___19 = dev_name((struct device const *)dev->dev.parent);
        tmp___20 = dev_driver_string((struct device const *)dev->dev.parent);
        printk("<3>%s %s: %s: DMA configuration failed\n", tmp___20, tmp___19, tmp___18);
      } else {
      }
      goto err_out_free_res_3;
    } else {
    }
  }
  ioaddr = ioremap(pdev->resource[region].start, 256UL);
  if ((unsigned long )ioaddr == (unsigned long )((void *)0)) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___22 = netdev_name((struct net_device const *)dev);
      tmp___23 = dev_name((struct device const *)dev->dev.parent);
      tmp___24 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: cannot remap MMIO, aborting\n", tmp___24, tmp___23, tmp___22);
    } else {
    }
    rc = -5;
    goto err_out_free_res_3;
  } else {
  }
  tp->pcie_cap = pci_find_capability(pdev, 16);
  if (tp->pcie_cap == 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___25 = netdev_name((struct net_device const *)dev);
      tmp___26 = dev_name((struct device const *)dev->dev.parent);
      tmp___27 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: no PCI Express capability\n", tmp___27, tmp___26, tmp___25);
    } else {
    }
  } else {
  }
  writew(0, (void volatile *)ioaddr + 60U);
  writeb(16, (void volatile *)ioaddr + 55U);
  i = 0U;
  goto ldv_37860;
  ldv_37859:
  tmp___28 = readb((void const volatile *)ioaddr + 55U);
  if (((int )tmp___28 & 16) == 0) {
    goto ldv_37858;
  } else {
  }
  msleep_interruptible(1U);
  i = i + 1U;
  ldv_37860: ;
  if (i <= 99U) {
    goto ldv_37859;
  } else {
  }
  ldv_37858:
  writew(65535, (void volatile *)ioaddr + 62U);
  pci_set_master(pdev);
  rtl8169_get_mac_version(tp, ioaddr);
  if (tp->mac_version == 0) {
    if ((tp->msg_enable & 2U) != 0U) {
      tmp___29 = netdev_name((struct net_device const *)dev);
      tmp___30 = dev_name((struct device const *)dev->dev.parent);
      tmp___31 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<5>%s %s: %s: unknown MAC, using family default\n", tmp___31, tmp___30,
             tmp___29);
    } else {
    }
    tp->mac_version = (int )cfg->default_ver;
  } else {
  }
  rtl8169_print_mac_version(tp);
  i = 0U;
  goto ldv_37865;
  ldv_37864: ;
  if (tp->mac_version == (int )rtl_chip_info[i].mac_version) {
    goto ldv_37863;
  } else {
  }
  i = i + 1U;
  ldv_37865: ;
  if (i <= 26U) {
    goto ldv_37864;
  } else {
  }
  ldv_37863: ;
  if (i == 27U) {
    tmp___32 = dev_name((struct device const *)(& pdev->dev));
    tmp___33 = dev_driver_string((struct device const *)(& pdev->dev));
    printk("<3>%s %s: driver bug, MAC version not found in rtl_chip_info\n", tmp___33,
           tmp___32);
    goto err_out_msi_4;
  } else {
  }
  tp->chipset = (int )i;
  writeb(192, (void volatile *)ioaddr + 80U);
  tmp___34 = readb((void const volatile *)ioaddr + 82U);
  writeb((int )((unsigned int )tmp___34 | 1U), (void volatile *)ioaddr + 82U);
  tmp___35 = readb((void const volatile *)ioaddr + 86U);
  writeb((int )tmp___35 & 1, (void volatile *)ioaddr + 86U);
  tmp___36 = readb((void const volatile *)ioaddr + 84U);
  if (((int )tmp___36 & 48) != 0) {
    tp->features = tp->features | 1U;
  } else {
  }
  tmp___37 = readb((void const volatile *)ioaddr + 86U);
  if (((int )tmp___37 & 112) != 0) {
    tp->features = tp->features | 1U;
  } else {
  }
  tmp___38 = rtl_try_msi(pdev, ioaddr, cfg);
  tp->features = tp->features | tmp___38;
  writeb(0, (void volatile *)ioaddr + 80U);
  if (tp->mac_version <= 6) {
    tmp___39 = readb((void const volatile *)ioaddr + 108U);
    if ((int )((signed char )tmp___39) < 0) {
      tp->set_speed = & rtl8169_set_speed_tbi;
      tp->get_settings = & rtl8169_gset_tbi;
      tp->phy_reset_enable = & rtl8169_tbi_reset_enable;
      tp->phy_reset_pending = & rtl8169_tbi_reset_pending;
      tp->link_ok = & rtl8169_tbi_link_ok;
      tp->do_ioctl = & rtl_tbi_ioctl;
      tp->phy_1000_ctrl_reg = 512;
    } else {
      goto _L;
    }
  } else {
    _L:
    tp->set_speed = & rtl8169_set_speed_xmii;
    tp->get_settings = & rtl8169_gset_xmii;
    tp->phy_reset_enable = & rtl8169_xmii_reset_enable;
    tp->phy_reset_pending = & rtl8169_xmii_reset_pending;
    tp->link_ok = & rtl8169_xmii_link_ok;
    tp->do_ioctl = & rtl_xmii_ioctl;
  }
  spinlock_check(& tp->lock);
  __raw_spin_lock_init(& tp->lock.ldv_5719.rlock, "&(&tp->lock)->rlock", & __key);
  tp->mmio_addr = ioaddr;
  i = 0U;
  goto ldv_37871;
  ldv_37870:
  *(dev->dev_addr + (unsigned long )i) = readb((void const volatile *)ioaddr + (unsigned long )i);
  i = i + 1U;
  ldv_37871: ;
  if (i <= 5U) {
    goto ldv_37870;
  } else {
  }
  __len = (size_t )dev->addr_len;
  __ret = memcpy((void *)(& dev->perm_addr), (void const *)dev->dev_addr,
                           __len);
  ldv_state_variable_7 = 1;
  dev->watchdog_timeo = 1500;
  dev->irq = pdev->irq;
  dev->base_addr = (unsigned long )ioaddr;
  netif_napi_add(dev, & tp->napi, & rtl8169_poll, 64);
  dev->features = dev->features | 384UL;
  tp->intr_mask = 65535U;
  tp->align = cfg->align;
  tp->hw_start = cfg->hw_start;
  tp->intr_event = cfg->intr_event;
  tp->napi_event = cfg->napi_event;
  reg_timer_3(& tp->timer);
  tp->timer.data = (unsigned long )dev;
  tp->timer.function = & rtl8169_phy_timer;
  rc = ldv_register_netdev_10(dev);
  if (rc < 0) {
    goto err_out_msi_4;
  } else {
  }
  pci_set_drvdata(pdev, (void *)dev);
  if ((tp->msg_enable & 2U) != 0U) {
    tmp___40 = readl((void const volatile *)ioaddr + 64U);
    tmp___41 = netdev_name((struct net_device const *)dev);
    tmp___42 = dev_name((struct device const *)dev->dev.parent);
    tmp___43 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<6>%s %s: %s: %s at 0x%lx, %pM, XID %08x IRQ %d\n", tmp___43, tmp___42,
           tmp___41, rtl_chip_info[tp->chipset].name, dev->base_addr, dev->dev_addr,
           tmp___40 & 2633038079U, dev->irq);
  } else {
  }
  rtl8169_init_phy(dev, tp);
  if (tp->mac_version == 5) {
    tmp___44 = readw((void const volatile *)ioaddr + 224U);
    writew((int )((unsigned int )tmp___44 | 64U), (void volatile *)ioaddr + 224U);
  } else {
  }
  device_set_wakeup_enable(& pdev->dev, (int )tp->features & 1);
  tmp___45 = pci_dev_run_wake(pdev);
  if ((int )tmp___45) {
    pm_runtime_set_active(& pdev->dev);
    pm_runtime_enable(& pdev->dev);
  } else {
  }
  pm_runtime_idle(& pdev->dev);
  out: ;
  return (rc);
  err_out_msi_4:
  rtl_disable_msi(pdev, tp);
  iounmap((void volatile *)ioaddr);
  err_out_free_res_3:
  pci_release_regions(pdev);
  err_out_mwi_2:
  pci_clear_mwi(pdev);
  pci_disable_device(pdev);
  err_out_free_dev_1:
  ldv_free_netdev_11(dev);
  goto out;
}
}
static void rtl8169_remove_one(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  ldv_pm_runtime_get_sync_12(& pdev->dev);
  flush_scheduled_work();
  ldv_unregister_netdev_13(dev);
  tmp___1 = pci_dev_run_wake(pdev);
  if ((int )tmp___1) {
    pm_runtime_disable(& pdev->dev);
    pm_runtime_set_suspended(& pdev->dev);
  } else {
  }
  ldv_pm_runtime_put_noidle_14(& pdev->dev);
  rtl_rar_set(tp, (u8 *)(& dev->perm_addr));
  rtl_disable_msi(pdev, tp);
  rtl8169_release_board(pdev, dev, tp->mmio_addr);
  pci_set_drvdata(pdev, (void *)0);
  return;
}
}
static void rtl8169_set_rxbufsize(struct rtl8169_private *tp , unsigned int mtu )
{
  unsigned int max_frame ;
  {
  max_frame = mtu + 22U;
  if (max_frame != 16383U) {
    printk("<4>r8169: WARNING! Changing of MTU on this NIC may lead to frame reception errors!\n");
  } else {
  }
  tp->rx_buf_sz = 1536U > max_frame ? 1536U : max_frame;
  return;
}
}
static int rtl8169_open(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  int retval ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  retval = -12;
  ldv_pm_runtime_get_sync_12(& pdev->dev);
  rtl8169_set_rxbufsize(tp, 16361U);
  tmp___0 = pci_alloc_consistent(pdev, 1024UL, & tp->TxPhyAddr);
  tp->TxDescArray = (struct TxDesc *)tmp___0;
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    goto err_pm_runtime_put;
  } else {
  }
  tmp___1 = pci_alloc_consistent(pdev, 4096UL, & tp->RxPhyAddr);
  tp->RxDescArray = (struct RxDesc *)tmp___1;
  if ((unsigned long )tp->RxDescArray == (unsigned long )((struct RxDesc *)0)) {
    goto err_free_tx_0;
  } else {
  }
  retval = rtl8169_init_ring(dev);
  if (retval < 0) {
    goto err_free_rx_1;
  } else {
  }
  __init_work(& tp->task.work, 0);
  __constr_expr_0.counter = 0L;
  tp->task.work.data = __constr_expr_0;
  lockdep_init_map(& tp->task.work.lockdep_map, "(&(&tp->task)->work)", & __key, 0);
  INIT_LIST_HEAD(& tp->task.work.entry);
  tp->task.work.func = (void (*)(struct work_struct * ))0;
  reg_timer_3(& tp->task.timer);
  __asm__ volatile ("mfence": : : "memory");
  retval = ldv_request_irq_16(dev->irq, & rtl8169_interrupt, (tp->features & 2U) != 0U ? 0UL : 128UL,
                              (char const *)(& dev->name), (void *)dev);
  if (retval < 0) {
    goto err_release_ring_2;
  } else {
  }
  napi_enable(& tp->napi);
  rtl_hw_start(dev);
  rtl8169_request_timer(dev);
  tp->saved_wolopts = 0U;
  ldv_pm_runtime_put_noidle_14(& pdev->dev);
  rtl8169_check_link_status(dev, tp, tp->mmio_addr);
  out: ;
  return (retval);
  err_release_ring_2:
  rtl8169_rx_clear(tp);
  err_free_rx_1:
  pci_free_consistent(pdev, 4096UL, (void *)tp->RxDescArray, tp->RxPhyAddr);
  tp->RxDescArray = (struct RxDesc *)0;
  err_free_tx_0:
  pci_free_consistent(pdev, 1024UL, (void *)tp->TxDescArray, tp->TxPhyAddr);
  tp->TxDescArray = (struct TxDesc *)0;
  err_pm_runtime_put:
  ldv_pm_runtime_put_noidle_14(& pdev->dev);
  goto out;
}
}
static void rtl8169_hw_reset(void *ioaddr )
{
  {
  rtl8169_irq_mask_and_ack(ioaddr);
  writeb(16, (void volatile *)ioaddr + 55U);
  readb((void const volatile *)ioaddr + 55U);
  return;
}
}
static void rtl_set_rx_tx_config_registers(struct rtl8169_private *tp )
{
  void *ioaddr ;
  u32 cfg ;
  unsigned int tmp ;
  {
  ioaddr = tp->mmio_addr;
  cfg = rtl8169_rx_config;
  tmp = readl((void const volatile *)ioaddr + 68U);
  cfg = (tmp & (unsigned int )rtl_chip_info[tp->chipset].RxConfigMask) | cfg;
  writel(cfg, (void volatile *)ioaddr + 68U);
  writel(50333184U, (void volatile *)ioaddr + 64U);
  return;
}
}
static void rtl_hw_start(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned int i ;
  unsigned char tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  writeb(16, (void volatile *)ioaddr + 55U);
  i = 0U;
  goto ldv_37915;
  ldv_37914:
  tmp___0 = readb((void const volatile *)ioaddr + 55U);
  if (((int )tmp___0 & 16) == 0) {
    goto ldv_37913;
  } else {
  }
  msleep_interruptible(1U);
  i = i + 1U;
  ldv_37915: ;
  if (i <= 99U) {
    goto ldv_37914;
  } else {
  }
  ldv_37913:
  (*(tp->hw_start))(dev);
  netif_start_queue(dev);
  return;
}
}
static void rtl_set_rx_tx_desc_registers(struct rtl8169_private *tp , void *ioaddr )
{
  {
  writel((unsigned int )(tp->TxPhyAddr >> 32), (void volatile *)ioaddr + 36U);
  writel((unsigned int )tp->TxPhyAddr, (void volatile *)ioaddr + 32U);
  writel((unsigned int )(tp->RxPhyAddr >> 32), (void volatile *)ioaddr + 232U);
  writel((unsigned int )tp->RxPhyAddr, (void volatile *)ioaddr + 228U);
  return;
}
}
static u16 rtl_rw_cpluscmd(void *ioaddr )
{
  u16 cmd ;
  {
  cmd = readw((void const volatile *)ioaddr + 224U);
  writew((int )cmd, (void volatile *)ioaddr + 224U);
  return (cmd);
}
}
static void rtl_set_rx_max_size(void *ioaddr , unsigned int rx_buf_sz )
{
  {
  writew((int )((unsigned int )((unsigned short )rx_buf_sz) + 1U), (void volatile *)ioaddr + 218U);
  return;
}
}
static void rtl8169_set_magic_reg(void *ioaddr , unsigned int mac_version )
{
  struct __anonstruct_cfg2_info_233 cfg2_info[4U] ;
  struct __anonstruct_p_234 const *p ;
  unsigned int i ;
  u32 clk ;
  unsigned char tmp ;
  {
  cfg2_info[0].mac_version = 5U;
  cfg2_info[0].clk = 0U;
  cfg2_info[0].val = 1048320U;
  cfg2_info[1].mac_version = 5U;
  cfg2_info[1].clk = 1U;
  cfg2_info[1].val = 1048575U;
  cfg2_info[2].mac_version = 6U;
  cfg2_info[2].clk = 0U;
  cfg2_info[2].val = 16776960U;
  cfg2_info[3].mac_version = 6U;
  cfg2_info[3].clk = 1U;
  cfg2_info[3].val = 16777215U;
  p = (struct __anonstruct_237 const *)(& cfg2_info);
  tmp = readb((void const volatile *)ioaddr + 83U);
  clk = (u32 )tmp & 1U;
  i = 0U;
  goto ldv_37944;
  ldv_37943: ;
  if ((unsigned int )p->mac_version == mac_version && (unsigned int )p->clk == clk) {
    writel(p->val, (void volatile *)ioaddr + 124U);
    goto ldv_37942;
  } else {
  }
  i = i + 1U;
  p = p + 1;
  ldv_37944: ;
  if (i <= 3U) {
    goto ldv_37943;
  } else {
  }
  ldv_37942: ;
  return;
}
}
static void rtl_hw_start_8169(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned short tmp___0 ;
  u16 tmp___1 ;
  unsigned short tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  if (tp->mac_version == 5) {
    tmp___0 = readw((void const volatile *)ioaddr + 224U);
    writew((int )((unsigned int )tmp___0 | 8U), (void volatile *)ioaddr + 224U);
    pci_write_config_byte(pdev, 12, 8);
  } else {
  }
  writeb(192, (void volatile *)ioaddr + 80U);
  if (((tp->mac_version == 1 || tp->mac_version == 2) || tp->mac_version == 3) || tp->mac_version == 4) {
    writeb(12, (void volatile *)ioaddr + 55U);
  } else {
  }
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, tp->rx_buf_sz);
  if (((tp->mac_version == 1 || tp->mac_version == 2) || tp->mac_version == 3) || tp->mac_version == 4) {
    rtl_set_rx_tx_config_registers(tp);
  } else {
  }
  tmp___1 = rtl_rw_cpluscmd(ioaddr);
  tp->cp_cmd = (u16 )((unsigned int )((int )tp->cp_cmd | (int )tmp___1) | 8U);
  if (tp->mac_version == 2 || tp->mac_version == 3) {
    tp->cp_cmd = (u16 )((unsigned int )tp->cp_cmd | 16384U);
  } else {
  }
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  rtl8169_set_magic_reg(ioaddr, (unsigned int )tp->mac_version);
  writew(0, (void volatile *)ioaddr + 226U);
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  if (((tp->mac_version != 1 && tp->mac_version != 2) && tp->mac_version != 3) && tp->mac_version != 4) {
    writeb(12, (void volatile *)ioaddr + 55U);
    rtl_set_rx_tx_config_registers(tp);
  } else {
  }
  writeb(0, (void volatile *)ioaddr + 80U);
  readb((void const volatile *)ioaddr + 60U);
  writel(0U, (void volatile *)ioaddr + 76U);
  rtl_set_rx_mode(dev);
  tmp___2 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___2 & 61440, (void volatile *)ioaddr + 92U);
  writew((int )tp->intr_event, (void volatile *)ioaddr + 60U);
  return;
}
}
static void rtl_tx_performance_tweak(struct pci_dev *pdev , u16 force )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  int cap ;
  u16 ctl ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  cap = tp->pcie_cap;
  if (cap != 0) {
    pci_read_config_word(pdev, cap + 8, & ctl);
    ctl = (u16 )(((int )((short )ctl) & -28673) | (int )((short )force));
    pci_write_config_word(pdev, cap + 8, (int )ctl);
  } else {
  }
  return;
}
}
static void rtl_csi_access_enable(void *ioaddr )
{
  u32 csi ;
  u32 tmp ;
  {
  tmp = rtl_csi_read(ioaddr, 1804);
  csi = tmp & 16777215U;
  rtl_csi_write(ioaddr, 1804, (int )(csi | 654311424U));
  return;
}
}
static void rtl_ephy_init(void *ioaddr , struct ephy_info const *e , int len )
{
  u16 w ;
  u16 tmp ;
  int tmp___0 ;
  {
  goto ldv_37974;
  ldv_37973:
  tmp = rtl_ephy_read(ioaddr, (int )e->offset);
  w = (u16 )(((int )((short )tmp) & ~ ((int )((short )e->mask))) | (int )((short )e->bits));
  rtl_ephy_write(ioaddr, (int )e->offset, (int )w);
  e = e + 1;
  ldv_37974:
  tmp___0 = len;
  len = len - 1;
  if (tmp___0 > 0) {
    goto ldv_37973;
  } else {
  }
  return;
}
}
static void rtl_disable_clock_request(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  int cap ;
  u16 ctl ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  cap = tp->pcie_cap;
  if (cap != 0) {
    pci_read_config_word(pdev, cap + 16, & ctl);
    ctl = (unsigned int )ctl & 65279U;
    pci_write_config_word(pdev, cap + 16, (int )ctl);
  } else {
  }
  return;
}
}
static void rtl_hw_start_8168bb(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  rtl_tx_performance_tweak(pdev, 22528);
  return;
}
}
static void rtl_hw_start_8168bef(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  {
  rtl_hw_start_8168bb(ioaddr, pdev);
  writeb(63, (void volatile *)ioaddr + 236U);
  tmp = readb((void const volatile *)ioaddr + 85U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 85U);
  return;
}
}
static void __rtl_hw_start_8168cp(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = readb((void const volatile *)ioaddr + 82U);
  writeb((int )((unsigned int )tmp | 16U), (void volatile *)ioaddr + 82U);
  tmp___0 = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp___0 & 254, (void volatile *)ioaddr + 84U);
  rtl_tx_performance_tweak(pdev, 20480);
  rtl_disable_clock_request(pdev);
  tmp___1 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___1 & 8291, (void volatile *)ioaddr + 224U);
  return;
}
}
static void rtl_hw_start_8168cp_1(void *ioaddr , struct pci_dev *pdev )
{
  struct ephy_info e_info_8168cp[5U] ;
  {
  e_info_8168cp[0].offset = 1U;
  e_info_8168cp[0].mask = 0U;
  e_info_8168cp[0].bits = 1U;
  e_info_8168cp[1].offset = 2U;
  e_info_8168cp[1].mask = 2048U;
  e_info_8168cp[1].bits = 4096U;
  e_info_8168cp[2].offset = 3U;
  e_info_8168cp[2].mask = 0U;
  e_info_8168cp[2].bits = 66U;
  e_info_8168cp[3].offset = 6U;
  e_info_8168cp[3].mask = 128U;
  e_info_8168cp[3].bits = 0U;
  e_info_8168cp[4].offset = 7U;
  e_info_8168cp[4].mask = 0U;
  e_info_8168cp[4].bits = 8192U;
  rtl_csi_access_enable(ioaddr);
  rtl_ephy_init(ioaddr, (struct ephy_info const *)(& e_info_8168cp), 5);
  __rtl_hw_start_8168cp(ioaddr, pdev);
  return;
}
}
static void rtl_hw_start_8168cp_2(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  rtl_csi_access_enable(ioaddr);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  rtl_tx_performance_tweak(pdev, 20480);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  return;
}
}
static void rtl_hw_start_8168cp_3(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  rtl_csi_access_enable(ioaddr);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  writeb(32, (void volatile *)ioaddr + 209U);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_tx_performance_tweak(pdev, 20480);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8291, (void volatile *)ioaddr + 224U);
  return;
}
}
static void rtl_hw_start_8168c_1(void *ioaddr , struct pci_dev *pdev )
{
  struct ephy_info e_info_8168c_1[3U] ;
  {
  e_info_8168c_1[0].offset = 2U;
  e_info_8168c_1[0].mask = 2048U;
  e_info_8168c_1[0].bits = 4096U;
  e_info_8168c_1[1].offset = 3U;
  e_info_8168c_1[1].mask = 0U;
  e_info_8168c_1[1].bits = 2U;
  e_info_8168c_1[2].offset = 6U;
  e_info_8168c_1[2].mask = 128U;
  e_info_8168c_1[2].bits = 0U;
  rtl_csi_access_enable(ioaddr);
  writeb(30, (void volatile *)ioaddr + 209U);
  rtl_ephy_init(ioaddr, (struct ephy_info const *)(& e_info_8168c_1), 3);
  __rtl_hw_start_8168cp(ioaddr, pdev);
  return;
}
}
static void rtl_hw_start_8168c_2(void *ioaddr , struct pci_dev *pdev )
{
  struct ephy_info e_info_8168c_2[2U] ;
  {
  e_info_8168c_2[0].offset = 1U;
  e_info_8168c_2[0].mask = 0U;
  e_info_8168c_2[0].bits = 1U;
  e_info_8168c_2[1].offset = 3U;
  e_info_8168c_2[1].mask = 1024U;
  e_info_8168c_2[1].bits = 544U;
  rtl_csi_access_enable(ioaddr);
  rtl_ephy_init(ioaddr, (struct ephy_info const *)(& e_info_8168c_2), 2);
  __rtl_hw_start_8168cp(ioaddr, pdev);
  return;
}
}
static void rtl_hw_start_8168c_3(void *ioaddr , struct pci_dev *pdev )
{
  {
  rtl_hw_start_8168c_2(ioaddr, pdev);
  return;
}
}
static void rtl_hw_start_8168c_4(void *ioaddr , struct pci_dev *pdev )
{
  {
  rtl_csi_access_enable(ioaddr);
  __rtl_hw_start_8168cp(ioaddr, pdev);
  return;
}
}
static void rtl_hw_start_8168d(void *ioaddr , struct pci_dev *pdev )
{
  unsigned short tmp ;
  {
  rtl_csi_access_enable(ioaddr);
  rtl_disable_clock_request(pdev);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_tx_performance_tweak(pdev, 20480);
  tmp = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp & 8291, (void volatile *)ioaddr + 224U);
  return;
}
}
static void rtl_hw_start_8168(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  unsigned short tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  writeb(192, (void volatile *)ioaddr + 80U);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, tp->rx_buf_sz);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  tp->cp_cmd = (u16 )((unsigned int )((int )tp->cp_cmd | (int )tmp___0) | 129U);
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  writew(20817, (void volatile *)ioaddr + 226U);
  if (tp->mac_version == 11) {
    tp->intr_event = (u16 )((unsigned int )tp->intr_event | 16448U);
    tp->intr_event = (unsigned int )tp->intr_event & 65519U;
  } else {
  }
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  rtl_set_rx_mode(dev);
  writel(50333184U, (void volatile *)ioaddr + 64U);
  readb((void const volatile *)ioaddr + 60U);
  switch (tp->mac_version) {
  case 11:
  rtl_hw_start_8168bb(ioaddr, pdev);
  goto ldv_38043;
  case 12: ;
  case 16:
  rtl_hw_start_8168bef(ioaddr, pdev);
  goto ldv_38043;
  case 18:
  rtl_hw_start_8168cp_1(ioaddr, pdev);
  goto ldv_38043;
  case 19:
  rtl_hw_start_8168c_1(ioaddr, pdev);
  goto ldv_38043;
  case 20:
  rtl_hw_start_8168c_2(ioaddr, pdev);
  goto ldv_38043;
  case 21:
  rtl_hw_start_8168c_3(ioaddr, pdev);
  goto ldv_38043;
  case 22:
  rtl_hw_start_8168c_4(ioaddr, pdev);
  goto ldv_38043;
  case 23:
  rtl_hw_start_8168cp_2(ioaddr, pdev);
  goto ldv_38043;
  case 24:
  rtl_hw_start_8168cp_3(ioaddr, pdev);
  goto ldv_38043;
  case 25: ;
  case 26: ;
  case 27:
  rtl_hw_start_8168d(ioaddr, pdev);
  goto ldv_38043;
  default:
  printk("<3>r8169: %s: unknown chipset (mac_version = %d).\n", (char *)(& dev->name),
         tp->mac_version);
  goto ldv_38043;
  }
  ldv_38043:
  writeb(12, (void volatile *)ioaddr + 55U);
  writeb(0, (void volatile *)ioaddr + 80U);
  tmp___1 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___1 & 61440, (void volatile *)ioaddr + 92U);
  writew((int )tp->intr_event, (void volatile *)ioaddr + 60U);
  return;
}
}
static void rtl_hw_start_8102e_1(void *ioaddr , struct pci_dev *pdev )
{
  struct ephy_info e_info_8102e_1[8U] ;
  u8 cfg1 ;
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  e_info_8102e_1[0].offset = 1U;
  e_info_8102e_1[0].mask = 0U;
  e_info_8102e_1[0].bits = 28261U;
  e_info_8102e_1[1].offset = 2U;
  e_info_8102e_1[1].mask = 0U;
  e_info_8102e_1[1].bits = 2335U;
  e_info_8102e_1[2].offset = 3U;
  e_info_8102e_1[2].mask = 0U;
  e_info_8102e_1[2].bits = 49913U;
  e_info_8102e_1[3].offset = 6U;
  e_info_8102e_1[3].mask = 0U;
  e_info_8102e_1[3].bits = 44981U;
  e_info_8102e_1[4].offset = 7U;
  e_info_8102e_1[4].mask = 0U;
  e_info_8102e_1[4].bits = 3584U;
  e_info_8102e_1[5].offset = 25U;
  e_info_8102e_1[5].mask = 0U;
  e_info_8102e_1[5].bits = 60544U;
  e_info_8102e_1[6].offset = 1U;
  e_info_8102e_1[6].mask = 0U;
  e_info_8102e_1[6].bits = 11877U;
  e_info_8102e_1[7].offset = 1U;
  e_info_8102e_1[7].mask = 0U;
  e_info_8102e_1[7].bits = 28261U;
  rtl_csi_access_enable(ioaddr);
  writeb(16, (void volatile *)ioaddr + 209U);
  rtl_tx_performance_tweak(pdev, 20480);
  writeb(223, (void volatile *)ioaddr + 82U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  cfg1 = readb((void const volatile *)ioaddr + 82U);
  if (((int )cfg1 & 64) != 0 && (int )((signed char )cfg1) < 0) {
    writeb((int )cfg1 & 191, (void volatile *)ioaddr + 82U);
  } else {
  }
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8295, (void volatile *)ioaddr + 224U);
  rtl_ephy_init(ioaddr, (struct ephy_info const *)(& e_info_8102e_1), 8);
  return;
}
}
static void rtl_hw_start_8102e_2(void *ioaddr , struct pci_dev *pdev )
{
  unsigned char tmp ;
  unsigned short tmp___0 ;
  {
  rtl_csi_access_enable(ioaddr);
  rtl_tx_performance_tweak(pdev, 20480);
  writeb(15, (void volatile *)ioaddr + 82U);
  tmp = readb((void const volatile *)ioaddr + 84U);
  writeb((int )tmp & 254, (void volatile *)ioaddr + 84U);
  tmp___0 = readw((void const volatile *)ioaddr + 224U);
  writew((int )tmp___0 & 8295, (void volatile *)ioaddr + 224U);
  return;
}
}
static void rtl_hw_start_8102e_3(void *ioaddr , struct pci_dev *pdev )
{
  {
  rtl_hw_start_8102e_2(ioaddr, pdev);
  rtl_ephy_write(ioaddr, 3, 49913);
  return;
}
}
static void rtl_hw_start_8101(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  struct pci_dev *pdev ;
  int cap ;
  u16 tmp___0 ;
  unsigned short tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  pdev = tp->pci_dev;
  if (tp->mac_version == 13 || tp->mac_version == 17) {
    cap = tp->pcie_cap;
    if (cap != 0) {
      pci_write_config_word(pdev, cap + 8, 2048);
    } else {
    }
  } else {
  }
  switch (tp->mac_version) {
  case 7:
  rtl_hw_start_8102e_1(ioaddr, pdev);
  goto ldv_38081;
  case 8:
  rtl_hw_start_8102e_3(ioaddr, pdev);
  goto ldv_38081;
  case 9:
  rtl_hw_start_8102e_2(ioaddr, pdev);
  goto ldv_38081;
  }
  ldv_38081:
  writeb(192, (void volatile *)ioaddr + 80U);
  writeb(63, (void volatile *)ioaddr + 236U);
  rtl_set_rx_max_size(ioaddr, tp->rx_buf_sz);
  tmp___0 = rtl_rw_cpluscmd(ioaddr);
  tp->cp_cmd = (u16 )((unsigned int )((int )tp->cp_cmd | (int )tmp___0) | 8U);
  writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
  writew(0, (void volatile *)ioaddr + 226U);
  rtl_set_rx_tx_desc_registers(tp, ioaddr);
  writeb(12, (void volatile *)ioaddr + 55U);
  rtl_set_rx_tx_config_registers(tp);
  writeb(0, (void volatile *)ioaddr + 80U);
  readb((void const volatile *)ioaddr + 60U);
  rtl_set_rx_mode(dev);
  writeb(12, (void volatile *)ioaddr + 55U);
  tmp___1 = readw((void const volatile *)ioaddr + 92U);
  writew((int )tmp___1 & 61440, (void volatile *)ioaddr + 92U);
  writew((int )tp->intr_event, (void volatile *)ioaddr + 60U);
  return;
}
}
static int rtl8169_change_mtu(struct net_device *dev , int new_mtu )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  int ret ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ret = 0;
  if (new_mtu <= 59 || new_mtu > 7200) {
    return (-22);
  } else {
  }
  dev->mtu = (unsigned int )new_mtu;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 == 0) {
    goto out;
  } else {
  }
  rtl8169_down(dev);
  rtl8169_set_rxbufsize(tp, dev->mtu);
  ret = rtl8169_init_ring(dev);
  if (ret < 0) {
    goto out;
  } else {
  }
  napi_enable(& tp->napi);
  rtl_hw_start(dev);
  rtl8169_request_timer(dev);
  out: ;
  return (ret);
}
}
__inline static void rtl8169_make_unusable_by_asic(struct RxDesc *desc )
{
  {
  desc->addr = 841534158063459245ULL;
  desc->opts1 = desc->opts1 & 1073758207U;
  return;
}
}
static void rtl8169_free_rx_skb(struct rtl8169_private *tp , struct sk_buff **sk_buff ,
                                struct RxDesc *desc )
{
  struct pci_dev *pdev ;
  {
  pdev = tp->pci_dev;
  pci_unmap_single(pdev, desc->addr, (size_t )tp->rx_buf_sz, 2);
  consume_skb(*sk_buff);
  *sk_buff = (struct sk_buff *)0;
  rtl8169_make_unusable_by_asic(desc);
  return;
}
}
__inline static void rtl8169_mark_to_asic(struct RxDesc *desc , u32 rx_buf_sz )
{
  u32 eor ;
  {
  eor = desc->opts1 & 1073741824U;
  desc->opts1 = (eor | rx_buf_sz) | 2147483648U;
  return;
}
}
__inline static void rtl8169_map_to_asic(struct RxDesc *desc , dma_addr_t mapping ,
                                         u32 rx_buf_sz )
{
  {
  desc->addr = mapping;
  __asm__ volatile ("sfence": : : "memory");
  rtl8169_mark_to_asic(desc, rx_buf_sz);
  return;
}
}
static struct sk_buff *rtl8169_alloc_rx_skb(struct pci_dev *pdev , struct net_device *dev ,
                                            struct RxDesc *desc , int rx_buf_sz ,
                                            unsigned int align )
{
  struct sk_buff *skb ;
  dma_addr_t mapping ;
  unsigned int pad ;
  {
  pad = align != 0U ? align : 2U;
  skb = ldv_netdev_alloc_skb_4(dev, (unsigned int )rx_buf_sz + pad);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto err_out;
  } else {
  }
  skb_reserve(skb, align != 0U ? (int )((pad - 1U) & (unsigned int )((long )skb->data)) : (int )pad);
  mapping = pci_map_single(pdev, (void *)skb->data, (size_t )rx_buf_sz, 2);
  rtl8169_map_to_asic(desc, mapping, (u32 )rx_buf_sz);
  out: ;
  return (skb);
  err_out:
  rtl8169_make_unusable_by_asic(desc);
  goto out;
}
}
static void rtl8169_rx_clear(struct rtl8169_private *tp )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_38127;
  ldv_38126: ;
  if ((unsigned long )tp->Rx_skbuff[i] != (unsigned long )((struct sk_buff *)0)) {
    rtl8169_free_rx_skb(tp, (struct sk_buff **)(& tp->Rx_skbuff) + (unsigned long )i,
                        tp->RxDescArray + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_38127: ;
  if (i <= 255U) {
    goto ldv_38126;
  } else {
  }
  return;
}
}
static u32 rtl8169_rx_fill(struct rtl8169_private *tp , struct net_device *dev , u32 start ,
                           u32 end )
{
  u32 cur ;
  struct sk_buff *skb ;
  unsigned int i ;
  int __ret_warn_on ;
  long tmp ;
  {
  cur = start;
  goto ldv_38143;
  ldv_38142:
  i = cur & 255U;
  __ret_warn_on = (int )(end - cur) < 0;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/home/ldvuser/gratinskiy/commit-tester-runs/6-cpa-svcomp-newdeg/commit-tester-work/task-012--linux-stable--dir/work/current--X--drivers/net/r8169.ko--X--defaultlinux-stable-431e8d4-1--X--102_1a--X--cpachecker/linux-stable-431e8d4-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/102_1a/drivers/net/r8169.o.c.prepared",
                       4132);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if ((unsigned long )tp->Rx_skbuff[i] != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_38140;
  } else {
  }
  skb = rtl8169_alloc_rx_skb(tp->pci_dev, dev, tp->RxDescArray + (unsigned long )i,
                             (int )tp->rx_buf_sz, tp->align);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto ldv_38141;
  } else {
  }
  tp->Rx_skbuff[i] = skb;
  ldv_38140:
  cur = cur + 1U;
  ldv_38143: ;
  if (end != cur) {
    goto ldv_38142;
  } else {
  }
  ldv_38141: ;
  return (cur - start);
}
}
__inline static void rtl8169_mark_as_last_descriptor(struct RxDesc *desc )
{
  {
  desc->opts1 = desc->opts1 | 1073741824U;
  return;
}
}
static void rtl8169_init_ring_indexes(struct rtl8169_private *tp )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  {
  tmp___1 = 0U;
  tp->cur_rx = tmp___1;
  tmp___0 = tmp___1;
  tp->cur_tx = tmp___0;
  tmp = tmp___0;
  tp->dirty_rx = tmp;
  tp->dirty_tx = tmp;
  return;
}
}
static int rtl8169_init_ring(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  u32 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl8169_init_ring_indexes(tp);
  memset((void *)(& tp->tx_skb), 0, 1024UL);
  memset((void *)(& tp->Rx_skbuff), 0, 2048UL);
  tmp___0 = rtl8169_rx_fill(tp, dev, 0U, 256U);
  if (tmp___0 != 256U) {
    goto err_out;
  } else {
  }
  rtl8169_mark_as_last_descriptor(tp->RxDescArray + 255U);
  return (0);
  err_out:
  rtl8169_rx_clear(tp);
  return (-12);
}
}
static void rtl8169_unmap_tx_skb(struct pci_dev *pdev , struct ring_info *tx_skb ,
                                 struct TxDesc *desc )
{
  unsigned int len ;
  {
  len = tx_skb->len;
  pci_unmap_single(pdev, desc->addr, (size_t )len, 1);
  desc->opts1 = 0U;
  desc->opts2 = 0U;
  desc->addr = 0ULL;
  tx_skb->len = 0U;
  return;
}
}
static void rtl8169_tx_clear(struct rtl8169_private *tp )
{
  unsigned int i ;
  unsigned int entry ;
  struct ring_info *tx_skb ;
  unsigned int len ;
  struct sk_buff *skb ;
  u32 tmp ;
  {
  i = tp->dirty_tx;
  goto ldv_38170;
  ldv_38169:
  entry = i & 63U;
  tx_skb = (struct ring_info *)(& tp->tx_skb) + (unsigned long )entry;
  len = tx_skb->len;
  if (len != 0U) {
    skb = tx_skb->skb;
    rtl8169_unmap_tx_skb(tp->pci_dev, tx_skb, tp->TxDescArray + (unsigned long )entry);
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      consume_skb(skb);
      tx_skb->skb = (struct sk_buff *)0;
    } else {
    }
    (tp->dev)->stats.tx_dropped = (tp->dev)->stats.tx_dropped + 1UL;
  } else {
  }
  i = i + 1U;
  ldv_38170: ;
  if (tp->dirty_tx + 64U > i) {
    goto ldv_38169;
  } else {
  }
  tmp = 0U;
  tp->dirty_tx = tmp;
  tp->cur_tx = tmp;
  return;
}
}
static void rtl8169_schedule_work(struct net_device *dev , void (*task)(struct work_struct * ) )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  tp->task.work.func = task;
  schedule_delayed_work(& tp->task, 4UL);
  return;
}
}
static void rtl8169_wait_for_quiescence(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  synchronize_irq(dev->irq);
  napi_disable(& tp->napi);
  rtl8169_irq_mask_and_ack(ioaddr);
  tp->intr_mask = 65535U;
  writew((int )tp->intr_event, (void volatile *)ioaddr + 60U);
  napi_enable(& tp->napi);
  return;
}
}
static void rtl8169_reinit_task(struct work_struct *work )
{
  struct rtl8169_private *tp ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  int ret ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct rtl8169_private *)__mptr + 0xfffffffffffff1f0UL;
  dev = tp->dev;
  rtnl_lock();
  tmp = netif_running((struct net_device const *)dev);
  if (tmp == 0) {
    goto out_unlock;
  } else {
  }
  rtl8169_wait_for_quiescence(dev);
  rtl8169_close(dev);
  ret = rtl8169_open(dev);
  tmp___4 = ldv__builtin_expect(ret < 0, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = net_ratelimit();
    if (tmp___3 != 0) {
      if ((int )tp->msg_enable & 1) {
        tmp___0 = netdev_name((struct net_device const *)dev);
        tmp___1 = dev_name((struct device const *)dev->dev.parent);
        tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
        printk("<3>%s %s: %s: reinit failure (status = %d). Rescheduling\n", tmp___2,
               tmp___1, tmp___0, ret);
      } else {
      }
    } else {
    }
    rtl8169_schedule_work(dev, & rtl8169_reinit_task);
  } else {
  }
  out_unlock:
  rtnl_unlock();
  return;
}
}
static void rtl8169_reset_task(struct work_struct *work )
{
  struct rtl8169_private *tp ;
  struct work_struct const *__mptr ;
  struct net_device *dev ;
  int tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct work_struct const *)work;
  tp = (struct rtl8169_private *)__mptr + 0xfffffffffffff1f0UL;
  dev = tp->dev;
  rtnl_lock();
  tmp = netif_running((struct net_device const *)dev);
  if (tmp == 0) {
    goto out_unlock;
  } else {
  }
  rtl8169_wait_for_quiescence(dev);
  rtl8169_rx_interrupt(dev, tp, tp->mmio_addr, 4294967295U);
  rtl8169_tx_clear(tp);
  if (tp->dirty_rx == tp->cur_rx) {
    rtl8169_init_ring_indexes(tp);
    rtl_hw_start(dev);
    netif_wake_queue(dev);
    rtl8169_check_link_status(dev, tp, tp->mmio_addr);
  } else {
    tmp___3 = net_ratelimit();
    if (tmp___3 != 0) {
      if ((tp->msg_enable & 512U) != 0U) {
        tmp___0 = netdev_name((struct net_device const *)dev);
        tmp___1 = dev_name((struct device const *)dev->dev.parent);
        tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
        printk("<0>%s %s: %s: Rx buffers shortage\n", tmp___2, tmp___1, tmp___0);
      } else {
      }
    } else {
    }
    rtl8169_schedule_work(dev, & rtl8169_reset_task);
  }
  out_unlock:
  rtnl_unlock();
  return;
}
}
static void rtl8169_tx_timeout(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  rtl8169_hw_reset(tp->mmio_addr);
  rtl8169_schedule_work(dev, & rtl8169_reset_task);
  return;
}
}
static int rtl8169_xmit_frags(struct rtl8169_private *tp , struct sk_buff *skb , u32 opts1 )
{
  struct skb_shared_info *info ;
  unsigned char *tmp ;
  unsigned int cur_frag ;
  unsigned int entry ;
  struct TxDesc *txd ;
  skb_frag_t *frag ;
  dma_addr_t mapping ;
  u32 status ;
  u32 len ;
  void *addr ;
  void *tmp___0 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  info = (struct skb_shared_info *)tmp;
  txd = txd;
  entry = tp->cur_tx;
  cur_frag = 0U;
  goto ldv_38218;
  ldv_38217:
  frag = (skb_frag_t *)(& info->frags) + (unsigned long )cur_frag;
  entry = (entry + 1U) & 63U;
  txd = tp->TxDescArray + (unsigned long )entry;
  len = frag->size;
  tmp___0 = lowmem_page_address(frag->page);
  addr = tmp___0 + (unsigned long )frag->page_offset;
  mapping = pci_map_single(tp->pci_dev, addr, (size_t )len, 1);
  status = (opts1 | len) | (((entry + 1U) & 63U) == 0U ? 1073741824U : 0U);
  txd->opts1 = status;
  txd->addr = mapping;
  tp->tx_skb[entry].len = len;
  cur_frag = cur_frag + 1U;
  ldv_38218: ;
  if ((unsigned int )info->nr_frags > cur_frag) {
    goto ldv_38217;
  } else {
  }
  if (cur_frag != 0U) {
    tp->tx_skb[entry].skb = skb;
    txd->opts1 = txd->opts1 | 268435456U;
  } else {
  }
  return ((int )cur_frag);
}
}
__inline static u32 rtl8169_tso_csum(struct sk_buff *skb , struct net_device *dev )
{
  u32 mss ;
  unsigned char *tmp ;
  struct iphdr const *ip ;
  struct iphdr *tmp___0 ;
  int __ret_warn_on ;
  long tmp___1 ;
  {
  if ((dev->features & 65536UL) != 0UL) {
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    mss = (u32 )((struct skb_shared_info *)tmp)->gso_size;
    if (mss != 0U) {
      return (((mss & 4095U) << 16) | 134217728U);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    tmp___0 = ip_hdr((struct sk_buff const *)skb);
    ip = (struct iphdr const *)tmp___0;
    if ((unsigned int )((unsigned char )ip->protocol) == 6U) {
      return (327680U);
    } else
    if ((unsigned int )((unsigned char )ip->protocol) == 17U) {
      return (393216U);
    } else {
    }
    __ret_warn_on = 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      warn_slowpath_null("/home/ldvuser/gratinskiy/commit-tester-runs/6-cpa-svcomp-newdeg/commit-tester-work/task-012--linux-stable--dir/work/current--X--drivers/net/r8169.ko--X--defaultlinux-stable-431e8d4-1--X--102_1a--X--cpachecker/linux-stable-431e8d4-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/102_1a/drivers/net/r8169.o.c.prepared",
                         4362);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  return (0U);
}
}
static netdev_tx_t rtl8169_start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned int frags ;
  unsigned int entry ;
  struct TxDesc *txd ;
  void *ioaddr ;
  dma_addr_t mapping ;
  u32 status ;
  u32 len ;
  u32 opts1 ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  unsigned char *tmp___3 ;
  long tmp___4 ;
  long tmp___5 ;
  u32 tmp___6 ;
  int tmp___7 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  entry = tp->cur_tx & 63U;
  txd = tp->TxDescArray + (unsigned long )entry;
  ioaddr = tp->mmio_addr;
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  tmp___4 = ldv__builtin_expect((tp->dirty_tx - tp->cur_tx) + 63U < (u32 )((struct skb_shared_info *)tmp___3)->nr_frags,
                             0L);
  if (tmp___4 != 0L) {
    if ((int )tp->msg_enable & 1) {
      tmp___0 = netdev_name((struct net_device const *)dev);
      tmp___1 = dev_name((struct device const *)dev->dev.parent);
      tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<3>%s %s: %s: BUG! Tx Ring full when queue awake!\n", tmp___2, tmp___1,
             tmp___0);
    } else {
    }
    goto err_stop;
  } else {
  }
  tmp___5 = ldv__builtin_expect((int )txd->opts1 < 0, 0L);
  if (tmp___5 != 0L) {
    goto err_stop;
  } else {
  }
  tmp___6 = rtl8169_tso_csum(skb, dev);
  opts1 = tmp___6 | 2147483648U;
  tmp___7 = rtl8169_xmit_frags(tp, skb, opts1);
  frags = (unsigned int )tmp___7;
  if (frags != 0U) {
    len = skb_headlen((struct sk_buff const *)skb);
    opts1 = opts1 | 536870912U;
  } else {
    len = skb->len;
    opts1 = opts1 | 805306368U;
    tp->tx_skb[entry].skb = skb;
  }
  mapping = pci_map_single(tp->pci_dev, (void *)skb->data, (size_t )len, 1);
  tp->tx_skb[entry].len = len;
  txd->addr = mapping;
  txd->opts2 = rtl8169_tx_vlan_tag(tp, skb);
  __asm__ volatile ("sfence": : : "memory");
  status = (opts1 | len) | (((entry + 1U) & 63U) == 0U ? 1073741824U : 0U);
  txd->opts1 = status;
  tp->cur_tx = (tp->cur_tx + frags) + 1U;
  __asm__ volatile ("sfence": : : "memory");
  writeb(64, (void volatile *)ioaddr + 56U);
  if ((tp->dirty_tx - tp->cur_tx) + 63U <= 17U) {
    netif_stop_queue(dev);
    __asm__ volatile ("": : : "memory");
    if ((tp->dirty_tx - tp->cur_tx) + 63U > 17U) {
      netif_wake_queue(dev);
    } else {
    }
  } else {
  }
  return (0);
  err_stop:
  netif_stop_queue(dev);
  dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
  return (16);
}
}
static void rtl8169_pcierr_interrupt(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  void *ioaddr ;
  u16 pci_status ;
  u16 pci_cmd ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  char const *tmp___4 ;
  char const *tmp___5 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  ioaddr = tp->mmio_addr;
  pci_read_config_word(pdev, 4, & pci_cmd);
  pci_read_config_word(pdev, 6, & pci_status);
  if ((tp->msg_enable & 512U) != 0U) {
    tmp___0 = netdev_name((struct net_device const *)dev);
    tmp___1 = dev_name((struct device const *)dev->dev.parent);
    tmp___2 = dev_driver_string((struct device const *)dev->dev.parent);
    printk("<3>%s %s: %s: PCI error (cmd = 0x%04x, status = 0x%04x)\n", tmp___2, tmp___1,
           tmp___0, (int )pci_cmd, (int )pci_status);
  } else {
  }
  if ((unsigned int )*((unsigned char *)pdev + 2296UL) != 0U) {
    pci_cmd = (unsigned int )pci_cmd & 65471U;
  } else {
    pci_cmd = (u16 )((unsigned int )pci_cmd | 320U);
  }
  pci_write_config_word(pdev, 4, (int )pci_cmd);
  pci_write_config_word(pdev, 6, (int )pci_status & 63488);
  if ((((int )tp->cp_cmd & 16) != 0 && tp->dirty_rx == 0U) && tp->cur_rx == 0U) {
    if ((tp->msg_enable & 512U) != 0U) {
      tmp___3 = netdev_name((struct net_device const *)dev);
      tmp___4 = dev_name((struct device const *)dev->dev.parent);
      tmp___5 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: disabling PCI DAC\n", tmp___5, tmp___4, tmp___3);
    } else {
    }
    tp->cp_cmd = (unsigned int )tp->cp_cmd & 65519U;
    writew((int )tp->cp_cmd, (void volatile *)ioaddr + 224U);
    dev->features = dev->features & 0xffffffffffffffdfUL;
  } else {
  }
  rtl8169_hw_reset(ioaddr);
  rtl8169_schedule_work(dev, & rtl8169_reinit_task);
  return;
}
}
static void rtl8169_tx_interrupt(struct net_device *dev , struct rtl8169_private *tp ,
                                 void *ioaddr )
{
  unsigned int dirty_tx ;
  unsigned int tx_left ;
  unsigned int entry ;
  struct ring_info *tx_skb ;
  u32 len ;
  u32 status ;
  int tmp ;
  {
  dirty_tx = tp->dirty_tx;
  __asm__ volatile ("": : : "memory");
  tx_left = tp->cur_tx - dirty_tx;
  goto ldv_38263;
  ldv_38262:
  entry = dirty_tx & 63U;
  tx_skb = (struct ring_info *)(& tp->tx_skb) + (unsigned long )entry;
  len = tx_skb->len;
  __asm__ volatile ("lfence": : : "memory");
  status = (tp->TxDescArray + (unsigned long )entry)->opts1;
  if ((int )status < 0) {
    goto ldv_38261;
  } else {
  }
  dev->stats.tx_bytes = dev->stats.tx_bytes + (unsigned long )len;
  dev->stats.tx_packets = dev->stats.tx_packets + 1UL;
  rtl8169_unmap_tx_skb(tp->pci_dev, tx_skb, tp->TxDescArray + (unsigned long )entry);
  if ((status & 268435456U) != 0U) {
    consume_skb(tx_skb->skb);
    tx_skb->skb = (struct sk_buff *)0;
  } else {
  }
  dirty_tx = dirty_tx + 1U;
  tx_left = tx_left - 1U;
  ldv_38263: ;
  if (tx_left != 0U) {
    goto ldv_38262;
  } else {
  }
  ldv_38261: ;
  if (tp->dirty_tx != dirty_tx) {
    tp->dirty_tx = dirty_tx;
    __asm__ volatile ("": : : "memory");
    tmp = netif_queue_stopped((struct net_device const *)dev);
    if (tmp != 0 && (tp->dirty_tx - tp->cur_tx) + 63U > 17U) {
      netif_wake_queue(dev);
    } else {
    }
    __asm__ volatile ("": : : "memory");
    if (tp->cur_tx != dirty_tx) {
      writeb(64, (void volatile *)ioaddr + 56U);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static int rtl8169_fragmented_frame(u32 status )
{
  {
  return ((status & 805306368U) != 805306368U);
}
}
__inline static void rtl8169_rx_csum(struct sk_buff *skb , struct RxDesc *desc )
{
  u32 opts1 ;
  u32 status ;
  {
  opts1 = desc->opts1;
  status = opts1 & 393216U;
  if (((status == 131072U && (opts1 & 16384U) == 0U) || (status == 262144U && (opts1 & 32768U) == 0U)) || (status == 393216U && (opts1 & 65536U) == 0U)) {
    skb->ip_summed = 1U;
  } else {
    skb->ip_summed = 0U;
  }
  return;
}
}
__inline static bool rtl8169_try_rx_copy(struct sk_buff **sk_buff , struct rtl8169_private *tp ,
                                         int pkt_size , dma_addr_t addr )
{
  struct sk_buff *skb ;
  bool done ;
  {
  done = 0;
  if (pkt_size >= rx_copybreak) {
    goto out;
  } else {
  }
  skb = netdev_alloc_skb_ip_align(tp->dev, (unsigned int )pkt_size);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto out;
  } else {
  }
  pci_dma_sync_single_for_cpu(tp->pci_dev, addr, (size_t )pkt_size, 2);
  skb_copy_from_linear_data((struct sk_buff const *)*sk_buff, (void *)skb->data,
                            (unsigned int const )pkt_size);
  *sk_buff = skb;
  done = 1;
  out: ;
  return (done);
}
}
static int rtl8169_rx_interrupt(struct net_device *dev , struct rtl8169_private *tp ,
                                void *ioaddr , u32 budget )
{
  unsigned int cur_rx ;
  unsigned int rx_left ;
  unsigned int delta ;
  unsigned int count ;
  int polling ;
  unsigned int _min1 ;
  u32 _min2 ;
  unsigned int entry ;
  struct RxDesc *desc ;
  u32 status ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  struct sk_buff *skb ;
  dma_addr_t addr ;
  int pkt_size ;
  struct pci_dev *pdev ;
  int tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  char const *tmp___8 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  char const *tmp___11 ;
  char const *tmp___12 ;
  char const *tmp___13 ;
  {
  polling = budget != 4294967295U;
  cur_rx = tp->cur_rx;
  rx_left = (tp->dirty_rx - cur_rx) + 256U;
  _min1 = rx_left;
  _min2 = budget;
  rx_left = _min1 < _min2 ? _min1 : _min2;
  goto ldv_38306;
  ldv_38305:
  entry = cur_rx & 255U;
  desc = tp->RxDescArray + (unsigned long )entry;
  __asm__ volatile ("lfence": : : "memory");
  status = desc->opts1;
  if ((int )status < 0) {
    goto ldv_38299;
  } else {
  }
  tmp___7 = ldv__builtin_expect((status & 2097152U) != 0U, 0L);
  if (tmp___7 != 0L) {
    if ((tp->msg_enable & 64U) != 0U) {
      tmp = netdev_name((struct net_device const *)dev);
      tmp___0 = dev_name((struct device const *)dev->dev.parent);
      tmp___1 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: Rx OLD_ERROR. status = %08x\n", tmp___1, tmp___0, tmp, status);
    } else {
    }
    dev->stats.rx_errors = dev->stats.rx_errors + 1UL;
    if ((status & 5242880U) != 0U) {
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    } else {
    }
    if ((status & 524288U) != 0U) {
      dev->stats.rx_crc_errors = dev->stats.rx_crc_errors + 1UL;
    } else {
    }
    if ((status & 8388608U) != 0U) {
      rtl8169_schedule_work(dev, & rtl8169_reset_task);
      dev->stats.rx_fifo_errors = dev->stats.rx_fifo_errors + 1UL;
    } else {
    }
    rtl8169_mark_to_asic(desc, tp->rx_buf_sz);
  } else {
    skb = tp->Rx_skbuff[entry];
    addr = desc->addr;
    pkt_size = (int )((status & 8191U) - 4U);
    pdev = tp->pci_dev;
    tmp___2 = rtl8169_fragmented_frame(status);
    tmp___3 = ldv__builtin_expect(tmp___2 != 0, 0L);
    if (tmp___3 != 0L) {
      dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
      dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
      rtl8169_mark_to_asic(desc, tp->rx_buf_sz);
      goto ldv_38304;
    } else {
    }
    rtl8169_rx_csum(skb, desc);
    tmp___4 = rtl8169_try_rx_copy(& skb, tp, pkt_size, addr);
    if ((int )tmp___4) {
      pci_dma_sync_single_for_device(pdev, addr, (size_t )pkt_size, 2);
      rtl8169_mark_to_asic(desc, tp->rx_buf_sz);
    } else {
      pci_unmap_single(pdev, addr, (size_t )tp->rx_buf_sz, 2);
      tp->Rx_skbuff[entry] = (struct sk_buff *)0;
    }
    skb_put(skb, (unsigned int )pkt_size);
    skb->protocol = eth_type_trans(skb, dev);
    tmp___6 = rtl8169_rx_vlan_skb(tp, desc, skb, polling);
    if (tmp___6 < 0) {
      tmp___5 = ldv__builtin_expect(polling != 0, 1L);
      if (tmp___5 != 0L) {
        netif_receive_skb(skb);
      } else {
        netif_rx(skb);
      }
    } else {
    }
    dev->stats.rx_bytes = dev->stats.rx_bytes + (unsigned long )pkt_size;
    dev->stats.rx_packets = dev->stats.rx_packets + 1UL;
  }
  if ((desc->opts2 & 268427264U) != 0U && tp->mac_version == 5) {
    desc->opts2 = 0U;
    cur_rx = cur_rx + 1U;
  } else {
  }
  ldv_38304:
  rx_left = rx_left - 1U;
  cur_rx = cur_rx + 1U;
  ldv_38306: ;
  if (rx_left != 0U) {
    goto ldv_38305;
  } else {
  }
  ldv_38299:
  count = cur_rx - tp->cur_rx;
  tp->cur_rx = cur_rx;
  delta = rtl8169_rx_fill(tp, dev, tp->dirty_rx, tp->cur_rx);
  if (delta == 0U && count != 0U) {
    if ((tp->msg_enable & 512U) != 0U) {
      tmp___8 = netdev_name((struct net_device const *)dev);
      tmp___9 = dev_name((struct device const *)dev->dev.parent);
      tmp___10 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: no Rx buffer allocated\n", tmp___10, tmp___9, tmp___8);
    } else {
    }
  } else {
  }
  tp->dirty_rx = tp->dirty_rx + delta;
  if (tp->dirty_rx + 256U == tp->cur_rx) {
    if ((tp->msg_enable & 512U) != 0U) {
      tmp___11 = netdev_name((struct net_device const *)dev);
      tmp___12 = dev_name((struct device const *)dev->dev.parent);
      tmp___13 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<0>%s %s: %s: Rx buffers exhausted\n", tmp___13, tmp___12, tmp___11);
    } else {
    }
  } else {
  }
  return ((int )count);
}
}
static irqreturn_t rtl8169_interrupt(int irq , void *dev_instance )
{
  struct net_device *dev ;
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  int handled ;
  int status ;
  unsigned short tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  unsigned short tmp___10 ;
  {
  dev = (struct net_device *)dev_instance;
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  handled = 0;
  tmp___0 = readw((void const volatile *)ioaddr + 62U);
  status = (int )tmp___0;
  goto ldv_38318;
  ldv_38317:
  handled = 1;
  tmp___1 = netif_running((struct net_device const *)dev);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    rtl8169_asic_down(ioaddr);
    goto ldv_38316;
  } else {
  }
  tmp___3 = ldv__builtin_expect((status & 64) != 0, 0L);
  if (tmp___3 != 0L && tp->mac_version == 11) {
    netif_stop_queue(dev);
    rtl8169_tx_timeout(dev);
    goto ldv_38316;
  } else {
  }
  tmp___4 = ldv__builtin_expect((status & 32768) != 0, 0L);
  if (tmp___4 != 0L) {
    rtl8169_pcierr_interrupt(dev);
    goto ldv_38316;
  } else {
  }
  if ((status & 32) != 0) {
    rtl8169_check_link_status(dev, tp, ioaddr);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  if ((((int )tp->intr_mask & status) & (int )tp->napi_event) != 0) {
    writew((int )((unsigned short )((int )((short )tp->intr_event) & ~ ((int )((short )tp->napi_event)))),
           (void volatile *)ioaddr + 60U);
    tp->intr_mask = ~ ((int )tp->napi_event);
    tmp___8 = napi_schedule_prep(& tp->napi);
    tmp___9 = ldv__builtin_expect(tmp___8 != 0, 1L);
    if (tmp___9 != 0L) {
      __napi_schedule(& tp->napi);
    } else
    if ((tp->msg_enable & 512U) != 0U) {
      tmp___5 = netdev_name((struct net_device const *)dev);
      tmp___6 = dev_name((struct device const *)dev->dev.parent);
      tmp___7 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<6>%s %s: %s: interrupt %04x in poll\n", tmp___7, tmp___6, tmp___5,
             status);
    } else {
    }
  } else {
  }
  writew((status & 64) != 0 ? (unsigned short )((int )((short )status) | 16) : (unsigned short )status,
         (void volatile *)ioaddr + 62U);
  tmp___10 = readw((void const volatile *)ioaddr + 62U);
  status = (int )tmp___10;
  ldv_38318: ;
  if (status != 0 && status != 65535) {
    goto ldv_38317;
  } else {
  }
  ldv_38316: ;
  return (handled != 0);
}
}
static int rtl8169_poll(struct napi_struct *napi , int budget )
{
  struct rtl8169_private *tp ;
  struct napi_struct const *__mptr ;
  struct net_device *dev ;
  void *ioaddr ;
  int work_done ;
  {
  __mptr = (struct napi_struct const *)napi;
  tp = (struct rtl8169_private *)__mptr + 0xffffffffffffffe8UL;
  dev = tp->dev;
  ioaddr = tp->mmio_addr;
  work_done = rtl8169_rx_interrupt(dev, tp, ioaddr, (unsigned int )budget);
  rtl8169_tx_interrupt(dev, tp, ioaddr);
  if (work_done < budget) {
    napi_complete(napi);
    tp->intr_mask = 65535U;
    __asm__ volatile ("sfence": : : "memory");
    writew((int )tp->intr_event, (void volatile *)ioaddr + 60U);
  } else {
  }
  return (work_done);
}
}
static void rtl8169_rx_missed(struct net_device *dev , void *ioaddr )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  if (tp->mac_version > 6) {
    return;
  } else {
  }
  tmp___0 = readl((void const volatile *)ioaddr + 76U);
  dev->stats.rx_missed_errors = dev->stats.rx_missed_errors + ((unsigned long )tmp___0 & 16777215UL);
  writel(0U, (void volatile *)ioaddr + 76U);
  return;
}
}
static void rtl8169_down(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned int intrmask ;
  unsigned short tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  rtl8169_delete_timer(dev);
  netif_stop_queue(dev);
  napi_disable(& tp->napi);
  core_down:
  spin_lock_irq(& tp->lock);
  rtl8169_asic_down(ioaddr);
  rtl8169_rx_missed(dev, ioaddr);
  spin_unlock_irq(& tp->lock);
  synchronize_irq(dev->irq);
  synchronize_sched();
  tmp___0 = readw((void const volatile *)ioaddr + 60U);
  intrmask = (unsigned int )tmp___0;
  if (intrmask != 0U && intrmask != 65535U) {
    goto core_down;
  } else {
  }
  rtl8169_tx_clear(tp);
  rtl8169_rx_clear(tp);
  return;
}
}
static int rtl8169_close(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  struct pci_dev *pdev ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  pdev = tp->pci_dev;
  ldv_pm_runtime_get_sync_12(& pdev->dev);
  rtl8169_update_counters(dev);
  rtl8169_down(dev);
  ldv_free_irq_21(dev->irq, (void *)dev);
  pci_free_consistent(pdev, 4096UL, (void *)tp->RxDescArray, tp->RxPhyAddr);
  pci_free_consistent(pdev, 1024UL, (void *)tp->TxDescArray, tp->TxPhyAddr);
  tp->TxDescArray = (struct TxDesc *)0;
  tp->RxDescArray = (struct RxDesc *)0;
  pm_runtime_put_sync(& pdev->dev);
  return (0);
}
}
static void rtl_set_rx_mode(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  u32 mc_filter[2U] ;
  int rx_mode ;
  u32 tmp___0 ;
  char const *tmp___1 ;
  char const *tmp___2 ;
  char const *tmp___3 ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  int bit_nr ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  struct list_head const *__mptr___0 ;
  raw_spinlock_t *tmp___6 ;
  unsigned int tmp___7 ;
  u32 data ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___0 = 0U;
  if ((dev->flags & 256U) != 0U) {
    if ((tp->msg_enable & 4U) != 0U) {
      tmp___1 = netdev_name((struct net_device const *)dev);
      tmp___2 = dev_name((struct device const *)dev->dev.parent);
      tmp___3 = dev_driver_string((struct device const *)dev->dev.parent);
      printk("<5>%s %s: %s: Promiscuous mode enabled\n", tmp___3, tmp___2, tmp___1);
    } else {
    }
    rx_mode = 15;
    mc_filter[0] = 4294967295U;
    mc_filter[1] = mc_filter[0];
  } else
  if (dev->mc.count > (int )multicast_filter_limit || (dev->flags & 512U) != 0U) {
    rx_mode = 14;
    mc_filter[0] = 4294967295U;
    mc_filter[1] = mc_filter[0];
  } else {
    rx_mode = 10;
    mc_filter[0] = 0U;
    mc_filter[1] = mc_filter[0];
    __mptr = (struct list_head const *)dev->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_38362;
    ldv_38361:
    tmp___4 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
    tmp___5 = bitrev32(tmp___4);
    bit_nr = (int )(tmp___5 >> 26);
    mc_filter[bit_nr >> 5] = mc_filter[bit_nr >> 5] | (u32 )(1 << (bit_nr & 31));
    rx_mode = rx_mode | 4;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_38362:
    __builtin_prefetch((void const *)ha->list.next);
    if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
      goto ldv_38361;
    } else {
    }
  }
  tmp___6 = spinlock_check(& tp->lock);
  flags = _raw_spin_lock_irqsave(tmp___6);
  tmp___7 = readl((void const volatile *)ioaddr + 68U);
  tmp___0 = ((unsigned int )rtl8169_rx_config | (unsigned int )rx_mode) | (tmp___7 & (unsigned int )rtl_chip_info[tp->chipset].RxConfigMask);
  if (tp->mac_version > 6) {
    data = mc_filter[0];
    tmp___8 = __fswab32(mc_filter[1]);
    mc_filter[0] = tmp___8;
    tmp___9 = __fswab32(data);
    mc_filter[1] = tmp___9;
  } else {
  }
  writel(mc_filter[1], (void volatile *)ioaddr + 12U);
  writel(mc_filter[0], (void volatile *)ioaddr + 8U);
  writel(tmp___0, (void volatile *)ioaddr + 68U);
  spin_unlock_irqrestore(& tp->lock, flags);
  return;
}
}
static struct net_device_stats *rtl8169_get_stats(struct net_device *dev )
{
  struct rtl8169_private *tp ;
  void *tmp ;
  void *ioaddr ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp;
  ioaddr = tp->mmio_addr;
  tmp___1 = netif_running((struct net_device const *)dev);
  if (tmp___1 != 0) {
    tmp___0 = spinlock_check(& tp->lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    rtl8169_rx_missed(dev, ioaddr);
    spin_unlock_irqrestore(& tp->lock, flags);
  } else {
  }
  return (& dev->stats);
}
}
static void rtl8169_net_suspend(struct net_device *dev )
{
  int tmp ;
  {
  tmp = netif_running((struct net_device const *)dev);
  if (tmp == 0) {
    return;
  } else {
  }
  netif_device_detach(dev);
  netif_stop_queue(dev);
  return;
}
}
static int rtl8169_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff70UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  rtl8169_net_suspend(dev);
  return (0);
}
}
static void __rtl8169_resume(struct net_device *dev )
{
  {
  netif_device_attach(dev);
  rtl8169_schedule_work(dev, & rtl8169_reset_task);
  return;
}
}
static int rtl8169_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff70UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netif_running((struct net_device const *)dev);
  if (tmp___0 != 0) {
    __rtl8169_resume(dev);
  } else {
  }
  return (0);
}
}
static int rtl8169_runtime_suspend(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff70UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    return (0);
  } else {
  }
  spin_lock_irq(& tp->lock);
  tp->saved_wolopts = __rtl8169_get_wol(tp);
  __rtl8169_set_wol(tp, 47U);
  spin_unlock_irq(& tp->lock);
  rtl8169_net_suspend(dev);
  return (0);
}
}
static int rtl8169_runtime_resume(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff70UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    return (0);
  } else {
  }
  spin_lock_irq(& tp->lock);
  __rtl8169_set_wol(tp, tp->saved_wolopts);
  tp->saved_wolopts = 0U;
  spin_unlock_irq(& tp->lock);
  __rtl8169_resume(dev);
  return (0);
}
}
static int rtl8169_runtime_idle(struct device *device )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  {
  __mptr = (struct device const *)device;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff70UL;
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  if ((unsigned long )tp->TxDescArray == (unsigned long )((struct TxDesc *)0)) {
    return (0);
  } else {
  }
  rtl8169_check_link_status(dev, tp, tp->mmio_addr);
  return (-16);
}
}
static struct dev_pm_ops const rtl8169_pm_ops =
     {0, 0, & rtl8169_suspend, & rtl8169_resume, & rtl8169_suspend, & rtl8169_resume,
    & rtl8169_suspend, & rtl8169_resume, 0, 0, 0, 0, 0, 0, & rtl8169_runtime_suspend,
    & rtl8169_runtime_resume, & rtl8169_runtime_idle};
static void rtl_shutdown(struct pci_dev *pdev )
{
  struct net_device *dev ;
  void *tmp ;
  struct rtl8169_private *tp ;
  void *tmp___0 ;
  void *ioaddr ;
  {
  tmp = pci_get_drvdata(pdev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  tp = (struct rtl8169_private *)tmp___0;
  ioaddr = tp->mmio_addr;
  rtl8169_net_suspend(dev);
  rtl_rar_set(tp, (u8 *)(& dev->perm_addr));
  spin_lock_irq(& tp->lock);
  rtl8169_asic_down(ioaddr);
  spin_unlock_irq(& tp->lock);
  if ((unsigned int )system_state == 3U) {
    if ((int )tp->features & 1) {
      pci_clear_master(pdev);
      writeb(8, (void volatile *)ioaddr + 55U);
      readb((void const volatile *)ioaddr + 55U);
    } else {
    }
    pci_wake_from_d3(pdev, 1);
    pci_set_power_state(pdev, 3);
  } else {
  }
  return;
}
}
static struct pci_driver rtl8169_pci_driver =
     {{0, 0}, (char *)"r8169", (struct pci_device_id const *)(& rtl8169_pci_tbl),
    & rtl8169_init_one, & rtl8169_remove_one, 0, 0, 0, 0, & rtl_shutdown, 0, {0, 0,
                                                                              0, 0,
                                                                              (_Bool)0,
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0,
                                                                              & rtl8169_pm_ops,
                                                                              0},
    {{{{{0U}, 0U, 0U, 0, {0, 0, 0, 0, 0UL}}}}, {0, 0}}};
static int rtl8169_init_module(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& rtl8169_pci_driver, & __this_module, "r8169");
  return (tmp);
}
}
static void rtl8169_cleanup_module(void)
{
  {
  pci_unregister_driver(& rtl8169_pci_driver);
  return;
}
}
extern int ldv_thaw_noirq_5(void) ;
int ldv_retval_20 ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_ndo_init_6(void) ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_23 ;
extern int ldv_restore_early_5(void) ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_suspend_noirq_5(void) ;
int ldv_retval_22 ;
int ldv_retval_15 ;
int ldv_retval_16 ;
int ldv_retval_24 ;
extern int ldv_poweroff_noirq_5(void) ;
extern int ldv_complete_5(void) ;
extern void ldv_check_final_state(void) ;
extern int ldv_suspend_late_5(void) ;
int ldv_retval_8 ;
extern int ldv_freeze_noirq_5(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_ndo_uninit_6(void) ;
extern int ldv_poweroff_late_5(void) ;
extern int ldv_thaw_early_5(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
extern int ldv_resume_noirq_5(void) ;
int ldv_retval_12 ;
extern int ldv_restore_noirq_5(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
extern int ldv_prepare_5(void) ;
extern int ldv_freeze_late_5(void) ;
int ldv_retval_21 ;
extern int ldv_resume_early_5(void) ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
int ldv_retval_3 ;
void ldv_initialize_ethtool_ops_7(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_zalloc(20UL);
  rtl8169_ethtool_ops_group1 = (struct ethtool_wolinfo *)tmp;
  tmp___0 = ldv_zalloc(44UL);
  rtl8169_ethtool_ops_group0 = (struct ethtool_cmd *)tmp___0;
  tmp___1 = ldv_zalloc(2432UL);
  rtl8169_ethtool_ops_group2 = (struct net_device *)tmp___1;
  return;
}
}
void ldv_initialize_kernel_param_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(40UL);
  __param_debug_group0 = (struct kernel_param *)tmp;
  return;
}
}
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_3) {
    ldv_timer_state_3 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_6(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2432UL);
  rtl8169_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_initialize_kernel_param_10(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(40UL);
  __param_rx_copybreak_group0 = (struct kernel_param *)tmp;
  return;
}
}
void choose_timer_2(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_2 = 2;
  return;
}
}
int reg_timer_2(struct timer_list *timer )
{
  {
  ldv_timer_list_2 = timer;
  ldv_timer_state_2 = 1;
  return (0);
}
}
void ldv_initialize_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2728UL);
  rtl8169_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_dev_pm_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(992UL);
  rtl8169_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2 == (unsigned long )timer) {
    if (ldv_timer_state_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2 = timer;
      ldv_timer_list_2->data = data;
      ldv_timer_state_2 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_2(timer);
  ldv_timer_list_2->data = data;
  return;
}
}
void ldv_initialize_kernel_param_9(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(40UL);
  __param_use_dac_group0 = (struct kernel_param *)tmp;
  return;
}
}
void choose_timer_3(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_3 = 2;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_2) {
    ldv_timer_state_2 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& rtl8169_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  {
  if (state != 0) {
    tmp = __VERIFIER_nondet_int();
    switch (tmp) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = rtl8169_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_38567;
    default:
    ldv_stop();
    }
    ldv_38567: ;
  } else {
  }
  return (state);
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3 == (unsigned long )timer) {
    if (ldv_timer_state_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3 = timer;
      ldv_timer_list_3->data = data;
      ldv_timer_state_3 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_3(timer);
  ldv_timer_list_3->data = data;
  return;
}
}
int reg_timer_3(struct timer_list *timer )
{
  {
  ldv_timer_list_3 = timer;
  ldv_timer_state_3 = 1;
  return (0);
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_38583;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_38583;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_38583;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_38583;
  default:
  ldv_stop();
  }
  ldv_38583: ;
  return;
}
}
int main(void)
{
  int ldvarg1 ;
  int tmp ;
  int ldvarg4 ;
  int tmp___0 ;
  struct vlan_group *ldvarg3 ;
  void *tmp___1 ;
  void *ldvarg0 ;
  void *tmp___2 ;
  struct ifreq *ldvarg5 ;
  void *tmp___3 ;
  struct sk_buff *ldvarg2 ;
  void *tmp___4 ;
  struct ethtool_drvinfo *ldvarg18 ;
  void *tmp___5 ;
  u32 ldvarg11 ;
  u32 tmp___6 ;
  u8 *ldvarg7 ;
  void *tmp___7 ;
  int ldvarg12 ;
  int tmp___8 ;
  struct ethtool_stats *ldvarg16 ;
  void *tmp___9 ;
  u64 *ldvarg15 ;
  void *tmp___10 ;
  u32 ldvarg6 ;
  u32 tmp___11 ;
  u32 ldvarg8 ;
  u32 tmp___12 ;
  u32 ldvarg17 ;
  u32 tmp___13 ;
  struct ethtool_regs *ldvarg14 ;
  void *tmp___14 ;
  void *ldvarg13 ;
  void *tmp___15 ;
  u32 ldvarg10 ;
  u32 tmp___16 ;
  u32 ldvarg9 ;
  u32 tmp___17 ;
  char *ldvarg20 ;
  void *tmp___18 ;
  char *ldvarg19 ;
  void *tmp___19 ;
  char *ldvarg21 ;
  void *tmp___20 ;
  char *ldvarg22 ;
  void *tmp___21 ;
  struct pci_device_id *ldvarg23 ;
  void *tmp___22 ;
  char *ldvarg24 ;
  void *tmp___23 ;
  char *ldvarg25 ;
  void *tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  int tmp___28 ;
  int tmp___29 ;
  int tmp___30 ;
  int tmp___31 ;
  int tmp___32 ;
  int tmp___33 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg1 = tmp;
  tmp___0 = __VERIFIER_nondet_int();
  ldvarg4 = tmp___0;
  tmp___1 = ldv_zalloc(112UL);
  ldvarg3 = (struct vlan_group *)tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg0 = tmp___2;
  tmp___3 = ldv_zalloc(40UL);
  ldvarg5 = (struct ifreq *)tmp___3;
  tmp___4 = ldv_zalloc(240UL);
  ldvarg2 = (struct sk_buff *)tmp___4;
  tmp___5 = ldv_zalloc(196UL);
  ldvarg18 = (struct ethtool_drvinfo *)tmp___5;
  tmp___6 = __VERIFIER_nondet_u32();
  ldvarg11 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg7 = (u8 *)tmp___7;
  tmp___8 = __VERIFIER_nondet_int();
  ldvarg12 = tmp___8;
  tmp___9 = ldv_zalloc(8UL);
  ldvarg16 = (struct ethtool_stats *)tmp___9;
  tmp___10 = ldv_zalloc(8UL);
  ldvarg15 = (u64 *)tmp___10;
  tmp___11 = __VERIFIER_nondet_u32();
  ldvarg6 = tmp___11;
  tmp___12 = __VERIFIER_nondet_u32();
  ldvarg8 = tmp___12;
  tmp___13 = __VERIFIER_nondet_u32();
  ldvarg17 = tmp___13;
  tmp___14 = ldv_zalloc(12UL);
  ldvarg14 = (struct ethtool_regs *)tmp___14;
  tmp___15 = ldv_zalloc(1UL);
  ldvarg13 = tmp___15;
  tmp___16 = __VERIFIER_nondet_u32();
  ldvarg10 = tmp___16;
  tmp___17 = __VERIFIER_nondet_u32();
  ldvarg9 = tmp___17;
  tmp___18 = ldv_zalloc(1UL);
  ldvarg20 = (char *)tmp___18;
  tmp___19 = ldv_zalloc(1UL);
  ldvarg19 = (char *)tmp___19;
  tmp___20 = ldv_zalloc(1UL);
  ldvarg21 = (char *)tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg22 = (char *)tmp___21;
  tmp___22 = ldv_zalloc(32UL);
  ldvarg23 = (struct pci_device_id *)tmp___22;
  tmp___23 = ldv_zalloc(1UL);
  ldvarg24 = (char *)tmp___23;
  tmp___24 = ldv_zalloc(1UL);
  ldvarg25 = (char *)tmp___24;
  ldv_initialize();
  ldv_state_variable_6 = 0;
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_38729:
  tmp___25 = __VERIFIER_nondet_int();
  switch (tmp___25) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___26 = __VERIFIER_nondet_int();
    switch (tmp___26) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      rtl8169_ioctl(rtl8169_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl8169_ioctl(rtl8169_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_ioctl(rtl8169_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 1: ;
    if (ldv_state_variable_6 == 1) {
      rtl8169_get_stats(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl8169_get_stats(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_get_stats(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 2: ;
    if (ldv_state_variable_6 == 1) {
      rtl_set_rx_mode(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl_set_rx_mode(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl_set_rx_mode(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 3: ;
    if (ldv_state_variable_6 == 2) {
      ldv_retval_1 = rtl8169_open(rtl8169_netdev_ops_group1);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 3;
      } else {
      }
    } else {
    }
    goto ldv_38635;
    case 4: ;
    if (ldv_state_variable_6 == 1) {
      rtl8169_vlan_rx_register(rtl8169_netdev_ops_group1, ldvarg3);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl8169_vlan_rx_register(rtl8169_netdev_ops_group1, ldvarg3);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_vlan_rx_register(rtl8169_netdev_ops_group1, ldvarg3);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 5: ;
    if (ldv_state_variable_6 == 3) {
      rtl8169_start_xmit(ldvarg2, rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    goto ldv_38635;
    case 6: ;
    if (ldv_state_variable_6 == 3) {
      rtl8169_close(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 7: ;
    if (ldv_state_variable_6 == 1) {
      eth_validate_addr(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      eth_validate_addr(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      eth_validate_addr(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 8: ;
    if (ldv_state_variable_6 == 1) {
      rtl8169_netpoll(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl8169_netpoll(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_netpoll(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 9: ;
    if (ldv_state_variable_6 == 3) {
      rtl8169_change_mtu(rtl8169_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_change_mtu(rtl8169_netdev_ops_group1, ldvarg1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 10: ;
    if (ldv_state_variable_6 == 1) {
      rtl_set_mac_address(rtl8169_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl_set_mac_address(rtl8169_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl_set_mac_address(rtl8169_netdev_ops_group1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 11: ;
    if (ldv_state_variable_6 == 1) {
      rtl8169_tx_timeout(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      rtl8169_tx_timeout(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      rtl8169_tx_timeout(rtl8169_netdev_ops_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    goto ldv_38635;
    case 12: ;
    if (ldv_state_variable_6 == 2) {
      ldv_ndo_uninit_6();
      ldv_state_variable_6 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38635;
    case 13: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_0 = ldv_ndo_init_6();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38635;
    default:
    ldv_stop();
    }
    ldv_38635: ;
  } else {
  }
  goto ldv_38650;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3(ldv_timer_list_3);
  } else {
  }
  goto ldv_38650;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___27 = __VERIFIER_nondet_int();
    switch (tmp___27) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_drvinfo(rtl8169_ethtool_ops_group2, ldvarg18);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_rx_csum(rtl8169_ethtool_ops_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      ethtool_op_set_tx_csum(rtl8169_ethtool_ops_group2, ldvarg17);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 3: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_ethtool_stats(rtl8169_ethtool_ops_group2, ldvarg16, ldvarg15);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 4: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_regs(rtl8169_ethtool_ops_group2, ldvarg14, ldvarg13);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_sset_count(rtl8169_ethtool_ops_group2, ldvarg12);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 6: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_settings(rtl8169_ethtool_ops_group2, rtl8169_ethtool_ops_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 7: ;
    if (ldv_state_variable_7 == 1) {
      ethtool_op_set_sg(rtl8169_ethtool_ops_group2, ldvarg11);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 8: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_set_wol(rtl8169_ethtool_ops_group2, rtl8169_ethtool_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 9: ;
    if (ldv_state_variable_7 == 1) {
      ethtool_op_set_tso(rtl8169_ethtool_ops_group2, ldvarg10);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 10: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_set_msglevel(rtl8169_ethtool_ops_group2, ldvarg9);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 11: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_set_settings(rtl8169_ethtool_ops_group2, rtl8169_ethtool_ops_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 12: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_strings(rtl8169_ethtool_ops_group2, ldvarg8, ldvarg7);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 13: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_set_rx_csum(rtl8169_ethtool_ops_group2, ldvarg6);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 14: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_wol(rtl8169_ethtool_ops_group2, rtl8169_ethtool_ops_group1);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 15: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_msglevel(rtl8169_ethtool_ops_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 16: ;
    if (ldv_state_variable_7 == 1) {
      rtl8169_get_regs_len(rtl8169_ethtool_ops_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    case 17: ;
    if (ldv_state_variable_7 == 1) {
      ethtool_op_get_link(rtl8169_ethtool_ops_group2);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_38654;
    default:
    ldv_stop();
    }
    ldv_38654: ;
  } else {
  }
  goto ldv_38650;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___28 = __VERIFIER_nondet_int();
    switch (tmp___28) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      param_set_int((char const *)ldvarg20, __param_use_dac_group0);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_38675;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      param_get_int(ldvarg19, __param_use_dac_group0);
      ldv_state_variable_9 = 1;
    } else {
    }
    goto ldv_38675;
    default:
    ldv_stop();
    }
    ldv_38675: ;
  } else {
  }
  goto ldv_38650;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2(ldv_timer_list_2);
  } else {
  }
  goto ldv_38650;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___29 = __VERIFIER_nondet_int();
    switch (tmp___29) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      param_set_int((char const *)ldvarg22, __param_debug_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_38681;
    case 1: ;
    if (ldv_state_variable_8 == 1) {
      param_get_int(ldvarg21, __param_debug_group0);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_38681;
    default:
    ldv_stop();
    }
    ldv_38681: ;
  } else {
  }
  goto ldv_38650;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_38650;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    tmp___30 = __VERIFIER_nondet_int();
    switch (tmp___30) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_2 = rtl8169_init_one(rtl8169_pci_driver_group0, (struct pci_device_id const *)ldvarg23);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38687;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      rtl_shutdown(rtl8169_pci_driver_group0);
      ldv_state_variable_4 = 3;
    } else {
    }
    goto ldv_38687;
    case 2: ;
    if (ldv_state_variable_4 == 3) {
      rtl8169_remove_one(rtl8169_pci_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      rtl8169_remove_one(rtl8169_pci_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38687;
    default:
    ldv_stop();
    }
    ldv_38687: ;
  } else {
  }
  goto ldv_38650;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___31 = __VERIFIER_nondet_int();
    switch (tmp___31) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      rtl8169_cleanup_module();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_38694;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_3 = rtl8169_init_module();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_dev_pm_ops_5();
        ldv_state_variable_9 = 1;
        ldv_initialize_kernel_param_9();
        ldv_state_variable_10 = 1;
        ldv_initialize_kernel_param_10();
        ldv_state_variable_4 = 1;
        ldv_initialize_pci_driver_4();
        ldv_state_variable_8 = 1;
        ldv_initialize_kernel_param_8();
      } else {
      }
      if (ldv_retval_3 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_38694;
    default:
    ldv_stop();
    }
    ldv_38694: ;
  } else {
  }
  goto ldv_38650;
  case 9: ;
  if (ldv_state_variable_10 != 0) {
    tmp___32 = __VERIFIER_nondet_int();
    switch (tmp___32) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      param_set_int((char const *)ldvarg25, __param_rx_copybreak_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_38699;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      param_get_int(ldvarg24, __param_rx_copybreak_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_38699;
    default:
    ldv_stop();
    }
    ldv_38699: ;
  } else {
  }
  goto ldv_38650;
  case 10: ;
  if (ldv_state_variable_5 != 0) {
    tmp___33 = __VERIFIER_nondet_int();
    switch (tmp___33) {
    case 0: ;
    if (ldv_state_variable_5 == 2) {
      rtl8169_runtime_idle(rtl8169_pm_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    if (ldv_state_variable_5 == 1) {
      rtl8169_runtime_idle(rtl8169_pm_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_38704;
    case 1: ;
    if (ldv_state_variable_5 == 15) {
      ldv_retval_24 = rtl8169_resume(rtl8169_pm_ops_group1);
      if (ldv_retval_24 == 0) {
        ldv_state_variable_5 = 16;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 2: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_23 = rtl8169_runtime_resume(rtl8169_pm_ops_group1);
      if (ldv_retval_23 == 0) {
        ldv_state_variable_5 = 1;
        ref_cnt = ref_cnt - 1;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 3: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_22 = rtl8169_suspend(rtl8169_pm_ops_group1);
      if (ldv_retval_22 == 0) {
        ldv_state_variable_5 = 4;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_21 = rtl8169_runtime_suspend(rtl8169_pm_ops_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 5: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_20 = rtl8169_suspend(rtl8169_pm_ops_group1);
      if (ldv_retval_20 == 0) {
        ldv_state_variable_5 = 5;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 6: ;
    if (ldv_state_variable_5 == 3) {
      ldv_retval_19 = rtl8169_suspend(rtl8169_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_5 = 6;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 7: ;
    if (ldv_state_variable_5 == 13) {
      ldv_retval_18 = rtl8169_resume(rtl8169_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_5 = 16;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 8: ;
    if (ldv_state_variable_5 == 14) {
      ldv_retval_17 = rtl8169_resume(rtl8169_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_5 = 16;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 9: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_16 = ldv_suspend_late_5();
      if (ldv_retval_16 == 0) {
        ldv_state_variable_5 = 7;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 10: ;
    if (ldv_state_variable_5 == 10) {
      ldv_retval_15 = ldv_restore_early_5();
      if (ldv_retval_15 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 11: ;
    if (ldv_state_variable_5 == 7) {
      ldv_retval_14 = ldv_resume_early_5();
      if (ldv_retval_14 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 12: ;
    if (ldv_state_variable_5 == 12) {
      ldv_retval_13 = ldv_thaw_early_5();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 13: ;
    if (ldv_state_variable_5 == 8) {
      ldv_retval_12 = ldv_resume_noirq_5();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_5 = 13;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 14: ;
    if (ldv_state_variable_5 == 6) {
      ldv_retval_11 = ldv_freeze_noirq_5();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_5 = 11;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 15: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_10 = ldv_prepare_5();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_5 = 3;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 16: ;
    if (ldv_state_variable_5 == 6) {
      ldv_retval_9 = ldv_freeze_late_5();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_5 = 12;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 17: ;
    if (ldv_state_variable_5 == 11) {
      ldv_retval_8 = ldv_thaw_noirq_5();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_5 = 15;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 18: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_7 = ldv_poweroff_noirq_5();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_5 = 9;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 19: ;
    if (ldv_state_variable_5 == 5) {
      ldv_retval_6 = ldv_poweroff_late_5();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_5 = 10;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 20: ;
    if (ldv_state_variable_5 == 9) {
      ldv_retval_5 = ldv_restore_noirq_5();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_5 = 14;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 21: ;
    if (ldv_state_variable_5 == 4) {
      ldv_retval_4 = ldv_suspend_noirq_5();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_5 = 8;
      } else {
      }
    } else {
    }
    goto ldv_38704;
    case 22: ;
    if (ldv_state_variable_5 == 16) {
      ldv_complete_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_38704;
    default:
    ldv_stop();
    }
    ldv_38704: ;
  } else {
  }
  goto ldv_38650;
  default:
  ldv_stop();
  }
  ldv_38650: ;
  goto ldv_38729;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
int ldv_del_timer_sync_1(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_2(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
struct sk_buff *ldv___netdev_alloc_skb_3(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                         gfp_t ldv_func_arg3 )
{
  struct sk_buff *tmp ;
  {
  ldv_check_context_pm_runtime_flags(ldv_func_arg3);
  tmp = __netdev_alloc_skb(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  return (tmp);
}
}
__inline static struct sk_buff *ldv_netdev_alloc_skb_4(struct net_device *dev , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  ldv_check_context_pm_runtime();
  tmp = netdev_alloc_skb(dev, length);
  return (tmp);
}
}
int ldv_mod_timer_5(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_6(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_7(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_8(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_3(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
void ldv_free_netdev_9(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
int ldv_register_netdev_10(struct net_device *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_net_device_ops_6();
  return (ldv_func_res);
}
}
void ldv_free_netdev_11(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
__inline static int ldv_pm_runtime_get_sync_12(struct device *dev )
{
  int tmp ;
  {
  ldv_get_pm_runtime();
  tmp = pm_runtime_get_sync(dev);
  return (tmp);
}
}
void ldv_unregister_netdev_13(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_6 = 0;
  return;
}
}
__inline static void ldv_pm_runtime_put_noidle_14(struct device *dev )
{
  {
  ldv_put_pm_runtime();
  pm_runtime_put_noidle(dev);
  return;
}
}
__inline static int ldv_request_irq_16(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_21(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_pm_runtime = 0;
void ldv_get_pm_runtime(void)
{
  {
  ldv_pm_runtime = 1;
  return;
}
}
void ldv_check_context_pm_runtime(void)
{
  {
  if (ldv_pm_runtime == 0) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_check_context_pm_runtime_flags(gfp_t flags )
{
  {
  if (ldv_pm_runtime == 0 || flags == 208U) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_put_pm_runtime(void)
{
  {
  ldv_pm_runtime = 0;
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __pm_runtime_disable(struct device *arg0, bool arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_get(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_put(struct device *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pm_runtime_set_status(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __vlan_hwaccel_rx(struct sk_buff *arg0, struct vlan_group *arg1, u16 arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
struct net_device *alloc_etherdev_mq(int arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct net_device));
}
unsigned int __VERIFIER_nondet_uint(void);
u32 bitrev32(u32 arg0) {
  return __VERIFIER_nondet_uint();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_sync_single_for_device(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
const char *dev_driver_string(const struct device *arg0) {
  return ldv_malloc(sizeof(char));
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
void dev_set_drvdata(struct device *arg0, void *arg1) {
  return;
}
void disable_irq(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dump_stack() {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int ethtool_op_set_sg(struct net_device *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ethtool_op_set_tso(struct net_device *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ethtool_op_set_tx_csum(struct net_device *arg0, u32 arg1) {
  return __VERIFIER_nondet_int();
}
void flush_scheduled_work() {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_5() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_5() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mii_ethtool_gset(struct mii_if_info *arg0, struct ethtool_cmd *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void msleep(unsigned int arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int param_get_int(char *arg0, struct kernel_param *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int param_set_int(const char *arg0, struct kernel_param *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_clear_master(struct pci_dev *arg0) {
  return;
}
void pci_clear_mwi(struct pci_dev *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool pci_dev_run_wake(struct pci_dev *arg0) {
  return __VERIFIER_nondet_bool();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_wake_from_d3(struct pci_dev *arg0, bool arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pm_request_resume(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void pm_runtime_enable(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pm_runtime_idle(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pm_schedule_suspend(struct device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int rtnl_is_locked() {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
int __VERIFIER_nondet_int(void);
int schedule_delayed_work(struct delayed_work *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void synchronize_sched() {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
