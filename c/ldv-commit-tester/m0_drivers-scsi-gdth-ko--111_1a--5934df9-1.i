extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
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
typedef long __kernel_suseconds_t;
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
struct module;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct completion;
struct pt_regs;
struct pid;
struct task_struct;
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
union __anonunion_ldv_1853_8 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_1853_8 ldv_1853 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_11 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_11 pgd_t;
struct page;
struct file;
struct seq_file;
struct __anonstruct_ldv_2072_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2087_16 {
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
union __anonunion_ldv_2088_14 {
   struct __anonstruct_ldv_2072_15 ldv_2072 ;
   struct __anonstruct_ldv_2087_16 ldv_2087 ;
};
struct desc_struct {
   union __anonunion_ldv_2088_14 ldv_2088 ;
};
enum km_type {
    KM_BOUNCE_READ = 0,
    KM_SKB_SUNRPC_DATA = 1,
    KM_SKB_DATA_SOFTIRQ = 2,
    KM_USER0 = 3,
    KM_USER1 = 4,
    KM_BIO_SRC_IRQ = 5,
    KM_BIO_DST_IRQ = 6,
    KM_PTE0 = 7,
    KM_PTE1 = 8,
    KM_IRQ0 = 9,
    KM_IRQ1 = 10,
    KM_SOFTIRQ0 = 11,
    KM_SOFTIRQ1 = 12,
    KM_SYNC_ICACHE = 13,
    KM_SYNC_DCACHE = 14,
    KM_UML_USERCOPY = 15,
    KM_IRQ_PTE = 16,
    KM_NMI = 17,
    KM_NMI_PTE = 18,
    KM_KDB = 19,
    KM_TYPE_NR = 20
} ;
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
struct exec_domain;
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
struct __anonstruct_ldv_4675_20 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_4681_21 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_4682_19 {
   struct __anonstruct_ldv_4675_20 ldv_4675 ;
   struct __anonstruct_ldv_4681_21 ldv_4681 ;
};
union __anonunion_ldv_4691_22 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_4682_19 ldv_4682 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_4691_22 ldv_4691 ;
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
struct __anonstruct_mm_segment_t_24 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_24 mm_segment_t;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_ldv_5162_26 {
   unsigned long arg0 ;
   unsigned long arg1 ;
   unsigned long arg2 ;
   unsigned long arg3 ;
};
struct __anonstruct_futex_27 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_28 {
   clockid_t index ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_29 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_5185_25 {
   struct __anonstruct_ldv_5162_26 ldv_5162 ;
   struct __anonstruct_futex_27 futex ;
   struct __anonstruct_nanosleep_28 nanosleep ;
   struct __anonstruct_poll_29 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_5185_25 ldv_5185 ;
};
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
struct __anonstruct_ldv_5749_32 {
   u8 __padding[1U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5750_31 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5749_32 ldv_5749 ;
};
struct spinlock {
   union __anonunion_ldv_5750_31 ldv_5750 ;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
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
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
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
struct workqueue_struct;
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
struct execute_work {
   struct work_struct work ;
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
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
struct pci_bus;
struct vm_area_struct;
struct key;
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
struct kernel_param;
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_10832_110 {
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
   union __anonunion_ldv_10832_110 ldv_10832 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
union __anonunion_ldv_13049_112 {
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
   union __anonunion_ldv_13049_112 ldv_13049 ;
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
struct __anonstruct_ldv_13877_114 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_13878_113 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_13877_114 ldv_13877 ;
};
struct __anonstruct_ldv_13883_116 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_13886_115 {
   struct __anonstruct_ldv_13883_116 ldv_13883 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_13890_117 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_13878_113 ldv_13878 ;
   union __anonunion_ldv_13886_115 ldv_13886 ;
   union __anonunion_ldv_13890_117 ldv_13890 ;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
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
struct timer_rand_state;
struct irqaction;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct nameidata;
struct path;
struct vfsmount;
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
union __anonunion_d_u_121 {
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
   union __anonunion_d_u_121 d_u ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
struct export_operations;
struct hd_geometry;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
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
union __anonunion_arg_124 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_123 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_124 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_123 read_descriptor_t;
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
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion_ldv_20549_125 {
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
   union __anonunion_ldv_20549_125 ldv_20549 ;
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
union __anonunion_f_u_126 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_126 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_128 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_127 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_128 afs ;
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
   union __anonunion_fl_u_127 fl_u ;
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
struct block_device_operations;
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
struct bio;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sem_undo_list {
   atomic_t refcnt ;
   spinlock_t lock ;
   struct list_head list_proc ;
};
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_129 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_129 sigset_t;
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
struct __anonstruct__kill_131 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_132 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_133 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_134 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_135 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_136 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_130 {
   int _pad[28U] ;
   struct __anonstruct__kill_131 _kill ;
   struct __anonstruct__timer_132 _timer ;
   struct __anonstruct__rt_133 _rt ;
   struct __anonstruct__sigchld_134 _sigchld ;
   struct __anonstruct__sigfault_135 _sigfault ;
   struct __anonstruct__sigpoll_136 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_130 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct prop_local_percpu {
   struct percpu_counter events ;
   int shift ;
   unsigned long period ;
   spinlock_t lock ;
};
struct prop_local_single {
   unsigned long events ;
   unsigned long period ;
   int shift ;
   spinlock_t lock ;
};
struct __anonstruct_seccomp_t_139 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_139 seccomp_t;
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
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
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
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion_ldv_24215_140 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_141 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
};
union __anonunion_payload_142 {
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
   union __anonunion_ldv_24215_140 ldv_24215 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_141 type_data ;
   union __anonunion_payload_142 payload ;
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
union __anonunion_ki_obj_143 {
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
   union __anonunion_ki_obj_143 ki_obj ;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   int make_it_fail ;
   unsigned long stamp ;
   int in_flight[2U] ;
   struct disk_stats *dkstats ;
   struct rcu_head rcu_head ;
};
struct disk_part_tbl {
   struct rcu_head rcu_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct request_queue;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , mode_t * ) ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct work_struct async_notify ;
   struct blk_integrity *integrity ;
   int node_id ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   enum writeback_sync_modes sync_mode ;
   unsigned long *older_than_this ;
   unsigned long wb_start ;
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   unsigned char nonblocking : 1 ;
   unsigned char encountered_congestion : 1 ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char more_io : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct list_head list ;
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct task_struct *task ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   struct rcu_head rcu_head ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   void (*unplug_io_fn)(struct backing_dev_info * , struct page * ) ;
   void *unplug_io_data ;
   char *name ;
   struct percpu_counter bdi_stat[2U] ;
   struct prop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head wb_list ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
struct io_context {
   atomic_long_t refcount ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   unsigned short ioprio_changed ;
   unsigned short cgroup_changed ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root radix_root ;
   struct hlist_head cic_list ;
   void *ioc_data ;
};
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio_integrity_payload;
typedef void bio_end_io_t(struct bio * , int );
typedef void bio_destructor_t(struct bio * );
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   unsigned int bi_max_vecs ;
   unsigned int bi_comp_cpu ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct bio_integrity_payload *bi_integrity ;
   bio_destructor_t *bi_destructor ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct request;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   int count[2U] ;
   int starved[2U] ;
   int elvpriv ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_LINUX_BLOCK = 8,
    REQ_TYPE_ATA_TASKFILE = 9,
    REQ_TYPE_ATA_PC = 10
} ;
union __anonunion_ldv_27826_144 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_27826_144 ldv_27826 ;
   void *elevator_private ;
   void *elevator_private2 ;
   void *elevator_private3 ;
   struct gendisk *rq_disk ;
   unsigned long start_time ;
   unsigned short nr_phys_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef int elevator_queue_empty_fn(struct request_queue * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef void *elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_queue_empty_fn *elevator_queue_empty_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
   void (*trim)(struct io_context * ) ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct list_head list ;
   struct elevator_ops ops ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
};
struct elevator_queue {
   struct elevator_ops *ops ;
   void *elevator_data ;
   struct kobject kobj ;
   struct elevator_type *elevator_type ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
};
typedef void request_fn_proc(struct request_queue * );
typedef int make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unplug_fn(struct request_queue * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void prepare_flush_fn(struct request_queue * , struct request * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char no_cluster ;
   signed char discard_zeroes_data ;
};
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   struct request_list rq ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unplug_fn *unplug_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   prepare_flush_fn *prepare_flush_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct timer_list unplug_timer ;
   int unplug_thresh ;
   unsigned long unplug_delay ;
   struct work_struct unplug_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   gfp_t bounce_gfp ;
   unsigned long queue_flags ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   void *dma_drain_buffer ;
   unsigned int dma_drain_size ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int ordered ;
   unsigned int next_ordered ;
   unsigned int ordseq ;
   int orderr ;
   int ordcolor ;
   struct request pre_flush_rq ;
   struct request bar_rq ;
   struct request post_flush_rq ;
   struct request *orig_bar_rq ;
   struct mutex sysfs_lock ;
   struct bsg_class_device bsg_dev ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*locked_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct Scsi_Host;
struct scsi_device;
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   unsigned char tag ;
};
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_BLOCK = 7,
    SDEV_CREATED_BLOCK = 8
} ;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   unsigned int device_busy ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int lun ;
   unsigned int channel ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned char writeable : 1 ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char ordered_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char is_visible : 1 ;
   unsigned long supported_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int device_blocked ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_dh_devlist {
   char *vendor ;
   char *model ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   struct scsi_dh_devlist const *devlist ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   int (*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
   char buf[0U] ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   unsigned int reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned int pdt_1f_for_no_lun ;
   unsigned int target_busy ;
   unsigned int can_queue ;
   unsigned int target_blocked ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   struct execute_work ew ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_sense_hdr {
   u8 response_code ;
   u8 sense_key ;
   u8 asc ;
   u8 ascq ;
   u8 byte4 ;
   u8 byte5 ;
   u8 byte6 ;
   u8 additional_length ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct scsi_cmnd * , void (*)(struct scsi_cmnd * ) ) ;
   int (*transfer_response)(struct scsi_cmnd * , void (*)(struct scsi_cmnd * ) ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int , int ) ;
   int (*change_queue_type)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*proc_info)(struct Scsi_Host * , char * , char ** , off_t , int , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   struct blk_queue_tag *bqt ;
   unsigned int host_busy ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int resetting ;
   unsigned long last_reset ;
   unsigned int max_id ;
   unsigned int max_lun ;
   unsigned int max_channel ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char use_blk_tcq : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   unsigned int host_blocked ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
typedef struct scsi_cmnd Scsi_Cmnd;
struct __anonstruct_gdth_sg_str_146 {
   u32 sg_ptr ;
   u32 sg_len ;
};
typedef struct __anonstruct_gdth_sg_str_146 gdth_sg_str;
struct __anonstruct_gdth_sg64_str_147 {
   u64 sg_ptr ;
   u32 sg_len ;
};
typedef struct __anonstruct_gdth_sg64_str_147 gdth_sg64_str;
struct __anonstruct_cache_150 {
   u16 DeviceNo ;
   u32 BlockNo ;
   u32 BlockCnt ;
   u32 DestAddr ;
   u32 sg_canz ;
   gdth_sg_str sg_lst[32U] ;
};
struct __anonstruct_cache64_151 {
   u16 DeviceNo ;
   u64 BlockNo ;
   u32 BlockCnt ;
   u64 DestAddr ;
   u32 sg_canz ;
   gdth_sg64_str sg_lst[32U] ;
};
struct __anonstruct_ioctl_152 {
   u16 param_size ;
   u32 subfunc ;
   u32 channel ;
   u64 p_param ;
};
struct __anonstruct_msg_155 {
   u32 msg_handle ;
   u64 msg_addr ;
};
union __anonunion_su_154 {
   struct __anonstruct_msg_155 msg ;
   u8 data[12U] ;
};
struct __anonstruct_screen_153 {
   u16 reserved ;
   union __anonunion_su_154 su ;
};
struct __anonstruct_raw_156 {
   u16 reserved ;
   u32 direction ;
   u32 mdisc_time ;
   u32 mcon_time ;
   u32 sdata ;
   u32 sdlen ;
   u32 clen ;
   u8 cmd[12U] ;
   u8 target ;
   u8 lun ;
   u8 bus ;
   u8 priority ;
   u32 sense_len ;
   u32 sense_data ;
   u32 link_p ;
   u32 sg_ranz ;
   gdth_sg_str sg_lst[32U] ;
};
struct __anonstruct_raw64_157 {
   u16 reserved ;
   u32 direction ;
   u32 mdisc_time ;
   u32 mcon_time ;
   u64 sdata ;
   u32 sdlen ;
   u32 clen ;
   u8 cmd[16U] ;
   u8 target ;
   u8 lun ;
   u8 bus ;
   u8 priority ;
   u32 sense_len ;
   u64 sense_data ;
   u32 sg_ranz ;
   gdth_sg64_str sg_lst[32U] ;
};
union __anonunion_u_149 {
   struct __anonstruct_cache_150 cache ;
   struct __anonstruct_cache64_151 cache64 ;
   struct __anonstruct_ioctl_152 ioctl ;
   struct __anonstruct_screen_153 screen ;
   struct __anonstruct_raw_156 raw ;
   struct __anonstruct_raw64_157 raw64 ;
};
struct __anonstruct_gdth_cmd_str_148 {
   u32 BoardNode ;
   u32 CommandIndex ;
   u16 OpCode ;
   union __anonunion_u_149 u ;
   u8 Service ;
   u8 reserved ;
   u16 Status ;
   u32 Info ;
   void *RequestBuffer ;
};
typedef struct __anonstruct_gdth_cmd_str_148 gdth_cmd_str;
struct __anonstruct_driver_160 {
   u16 ionode ;
   u16 service ;
   u32 index ;
};
struct __anonstruct_async_161 {
   u16 ionode ;
   u16 service ;
   u16 status ;
   u32 info ;
   u8 scsi_coord[3U] ;
};
struct __anonstruct_sync_162 {
   u16 ionode ;
   u16 service ;
   u16 status ;
   u32 info ;
   u16 hostdrive ;
   u8 scsi_coord[3U] ;
   u8 sense_key ;
};
struct __anonstruct_test_163 {
   u32 l1 ;
   u32 l2 ;
   u32 l3 ;
   u32 l4 ;
};
union __anonunion_eu_159 {
   char stream[16U] ;
   struct __anonstruct_driver_160 driver ;
   struct __anonstruct_async_161 async ;
   struct __anonstruct_sync_162 sync ;
   struct __anonstruct_test_163 test ;
};
struct __anonstruct_gdth_evt_data_158 {
   u16 size ;
   union __anonunion_eu_159 eu ;
   u32 severity ;
   u8 event_string[256U] ;
};
typedef struct __anonstruct_gdth_evt_data_158 gdth_evt_data;
struct __anonstruct_gdth_evt_str_164 {
   u32 first_stamp ;
   u32 last_stamp ;
   u16 same_count ;
   u16 event_source ;
   u16 event_idx ;
   u8 application ;
   u8 reserved ;
   gdth_evt_data event_data ;
};
typedef struct __anonstruct_gdth_evt_str_164 gdth_evt_str;
struct __anonstruct_gdth_ioctl_general_165 {
   u16 ionode ;
   u16 timeout ;
   u32 info ;
   u16 status ;
   unsigned long data_len ;
   unsigned long sense_len ;
   gdth_cmd_str command ;
};
typedef struct __anonstruct_gdth_ioctl_general_165 gdth_ioctl_general;
struct __anonstruct_gdth_ioctl_lockdrv_166 {
   u16 ionode ;
   u8 lock ;
   u8 drive_cnt ;
   u16 drives[255U] ;
};
typedef struct __anonstruct_gdth_ioctl_lockdrv_166 gdth_ioctl_lockdrv;
struct __anonstruct_gdth_ioctl_lockchn_167 {
   u16 ionode ;
   u8 lock ;
   u8 channel ;
};
typedef struct __anonstruct_gdth_ioctl_lockchn_167 gdth_ioctl_lockchn;
struct __anonstruct_gdth_ioctl_osvers_168 {
   u8 version ;
   u8 subversion ;
   u16 revision ;
};
typedef struct __anonstruct_gdth_ioctl_osvers_168 gdth_ioctl_osvers;
struct __anonstruct_gdth_ioctl_ctrtype_169 {
   u16 ionode ;
   u8 type ;
   u16 info ;
   u16 oem_id ;
   u16 bios_ver ;
   u16 access ;
   u16 ext_type ;
   u16 device_id ;
   u16 sub_device_id ;
};
typedef struct __anonstruct_gdth_ioctl_ctrtype_169 gdth_ioctl_ctrtype;
struct __anonstruct_gdth_ioctl_event_170 {
   u16 ionode ;
   int erase ;
   int handle ;
   gdth_evt_str event ;
};
typedef struct __anonstruct_gdth_ioctl_event_170 gdth_ioctl_event;
struct __anonstruct_hdr_list_172 {
   u8 bus ;
   u8 target ;
   u8 lun ;
   u8 cluster_type ;
};
struct __anonstruct_gdth_ioctl_rescan_171 {
   u16 ionode ;
   u8 flag ;
   u16 hdr_no ;
   struct __anonstruct_hdr_list_172 hdr_list[255U] ;
};
typedef struct __anonstruct_gdth_ioctl_rescan_171 gdth_ioctl_rescan;
struct __anonstruct_gdth_ioctl_reset_173 {
   u16 ionode ;
   u16 number ;
   u16 status ;
};
typedef struct __anonstruct_gdth_ioctl_reset_173 gdth_ioctl_reset;
struct __anonstruct_gdth_msg_str_174 {
   u32 msg_handle ;
   u32 msg_len ;
   u32 msg_alen ;
   u8 msg_answer ;
   u8 msg_ext ;
   u8 msg_reserved[2U] ;
   char msg_text[18U] ;
};
typedef struct __anonstruct_gdth_msg_str_174 gdth_msg_str;
struct __anonstruct_gdth_diskinfo_str_177 {
   u8 vendor[8U] ;
   u8 product[16U] ;
   u8 revision[4U] ;
   u32 sy_rate ;
   u32 sy_max_rate ;
   u32 no_ldrive ;
   u32 blkcnt ;
   u16 blksize ;
   u8 available ;
   u8 init ;
   u8 devtype ;
   u8 rm_medium ;
   u8 wp_medium ;
   u8 ansi ;
   u8 protocol ;
   u8 sync ;
   u8 disc ;
   u8 queueing ;
   u8 cached ;
   u8 target_id ;
   u8 lun ;
   u8 orphan ;
   u32 last_error ;
   u32 last_result ;
   u32 check_errors ;
   u8 percent ;
   u8 last_check ;
   u8 res[2U] ;
   u32 flags ;
   u8 multi_bus ;
   u8 mb_status ;
   u8 res2[2U] ;
   u8 mb_alt_status ;
   u8 mb_alt_bid ;
   u8 mb_alt_tid ;
   u8 res3 ;
   u8 fc_flag ;
   u8 res4 ;
   u16 fc_frame_size ;
   char wwn[8U] ;
};
typedef struct __anonstruct_gdth_diskinfo_str_177 gdth_diskinfo_str;
struct __anonstruct_gdth_getch_str_178 {
   u32 channel_no ;
   u32 drive_cnt ;
   u8 siop_id ;
   u8 siop_state ;
};
typedef struct __anonstruct_gdth_getch_str_178 gdth_getch_str;
struct __anonstruct_gdth_drlist_str_179 {
   u32 sc_no ;
   u32 sc_cnt ;
   u32 sc_list[127U] ;
};
typedef struct __anonstruct_gdth_drlist_str_179 gdth_drlist_str;
struct __anonstruct_gdth_defcnt_str_180 {
   u8 sddc_type ;
   u8 sddc_format ;
   u8 sddc_len ;
   u8 sddc_res ;
   u32 sddc_cnt ;
};
typedef struct __anonstruct_gdth_defcnt_str_180 gdth_defcnt_str;
struct __anonstruct_list_182 {
   u8 tid ;
   u8 lun ;
   u8 res[2U] ;
   u32 blk_size ;
   u32 rd_count ;
   u32 wr_count ;
   u32 rd_blk_count ;
   u32 wr_blk_count ;
   u32 retries ;
   u32 reassigns ;
};
struct __anonstruct_gdth_dskstat_str_181 {
   u32 bid ;
   u32 first ;
   u32 entries ;
   u32 count ;
   u32 mon_time ;
   struct __anonstruct_list_182 list[1U] ;
};
typedef struct __anonstruct_gdth_dskstat_str_181 gdth_dskstat_str;
struct __anonstruct_gdth_iochan_header_183 {
   u32 version ;
   u8 list_entries ;
   u8 first_chan ;
   u8 last_chan ;
   u8 chan_count ;
   u32 list_offset ;
};
typedef struct __anonstruct_gdth_iochan_header_183 gdth_iochan_header;
struct __anonstruct_list_185 {
   u32 address ;
   u8 type ;
   u8 local_no ;
   u16 features ;
};
struct __anonstruct_gdth_iochan_str_184 {
   gdth_iochan_header hdr ;
   struct __anonstruct_list_185 list[6U] ;
};
typedef struct __anonstruct_gdth_iochan_str_184 gdth_iochan_str;
struct __anonstruct_list_187 {
   u8 proc_id ;
   u8 proc_defect ;
   u8 reserved[2U] ;
};
struct __anonstruct_gdth_raw_iochan_str_186 {
   gdth_iochan_header hdr ;
   struct __anonstruct_list_187 list[6U] ;
};
typedef struct __anonstruct_gdth_raw_iochan_str_186 gdth_raw_iochan_str;
struct __anonstruct_gdth_arraycomp_str_188 {
   u32 al_controller ;
   u8 al_cache_drive ;
   u8 al_status ;
   u8 al_res[2U] ;
};
typedef struct __anonstruct_gdth_arraycomp_str_188 gdth_arraycomp_str;
struct __anonstruct_gdth_arrayinf_str_189 {
   u8 ai_type ;
   u8 ai_cache_drive_cnt ;
   u8 ai_state ;
   u8 ai_master_cd ;
   u32 ai_master_controller ;
   u32 ai_size ;
   u32 ai_striping_size ;
   u32 ai_secsize ;
   u32 ai_err_info ;
   u8 ai_name[8U] ;
   u8 ai_controller_cnt ;
   u8 ai_removable ;
   u8 ai_write_protected ;
   u8 ai_devtype ;
   gdth_arraycomp_str ai_drives[35U] ;
   u8 ai_drive_entries ;
   u8 ai_protected ;
   u8 ai_verify_state ;
   u8 ai_ext_state ;
   u8 ai_expand_state ;
   u8 ai_reserved[3U] ;
};
typedef struct __anonstruct_gdth_arrayinf_str_189 gdth_arrayinf_str;
struct __anonstruct_gdth_alist_str_190 {
   u32 controller_no ;
   u8 cd_handle ;
   u8 is_arrayd ;
   u8 is_master ;
   u8 is_parity ;
   u8 is_hotfix ;
   u8 res[3U] ;
};
typedef struct __anonstruct_gdth_alist_str_190 gdth_alist_str;
struct __anonstruct_gdth_arcdl_str_191 {
   u32 entries_avail ;
   u32 entries_init ;
   u32 first_entry ;
   u32 list_offset ;
   gdth_alist_str list[1U] ;
};
typedef struct __anonstruct_gdth_arcdl_str_191 gdth_arcdl_str;
struct __anonstruct_gdth_cpar_str_192 {
   u32 version ;
   u16 state ;
   u16 strategy ;
   u16 write_back ;
   u16 block_size ;
};
typedef struct __anonstruct_gdth_cpar_str_192 gdth_cpar_str;
struct __anonstruct_gdth_cstat_str_193 {
   u32 csize ;
   u32 read_cnt ;
   u32 write_cnt ;
   u32 tr_hits ;
   u32 sec_hits ;
   u32 sec_miss ;
};
typedef struct __anonstruct_gdth_cstat_str_193 gdth_cstat_str;
struct __anonstruct_gdth_cinfo_str_194 {
   gdth_cpar_str cpar ;
   gdth_cstat_str cstat ;
};
typedef struct __anonstruct_gdth_cinfo_str_194 gdth_cinfo_str;
struct __anonstruct_gdth_cdrinfo_str_195 {
   u8 cd_name[8U] ;
   u32 cd_devtype ;
   u32 cd_ldcnt ;
   u32 cd_last_error ;
   u8 cd_initialized ;
   u8 cd_removable ;
   u8 cd_write_protected ;
   u8 cd_flags ;
   u32 ld_blkcnt ;
   u32 ld_blksize ;
   u32 ld_dcnt ;
   u32 ld_slave ;
   u32 ld_dtype ;
   u32 ld_last_error ;
   u8 ld_name[8U] ;
   u8 ld_error ;
};
typedef struct __anonstruct_gdth_cdrinfo_str_195 gdth_cdrinfo_str;
struct __anonstruct_gdth_oem_str_params_196 {
   u32 ctl_version ;
   u32 file_major_version ;
   u32 file_minor_version ;
   u32 buffer_size ;
   u32 cpy_count ;
   u32 ext_error ;
   u32 oem_id ;
   u32 board_id ;
};
typedef struct __anonstruct_gdth_oem_str_params_196 gdth_oem_str_params;
struct __anonstruct_gdth_oem_str_197 {
   u8 product_0_1_name[16U] ;
   u8 product_4_5_name[16U] ;
   u8 product_cluster_name[16U] ;
   u8 product_reserved[16U] ;
   u8 scsi_cluster_target_vendor_id[16U] ;
   u8 cluster_raid_fw_name[16U] ;
   u8 oem_brand_name[16U] ;
   u8 oem_raid_type[16U] ;
   u8 bios_type[13U] ;
   u8 bios_title[50U] ;
   u8 oem_company_name[37U] ;
   u32 pci_id_1 ;
   u32 pci_id_2 ;
   u8 validation_status[80U] ;
   u8 reserved_1[4U] ;
   u8 scsi_host_drive_inquiry_vendor_id[16U] ;
   u8 library_file_template[16U] ;
   u8 reserved_2[16U] ;
   u8 tool_name_1[32U] ;
   u8 tool_name_2[32U] ;
   u8 tool_name_3[32U] ;
   u8 oem_contact_1[84U] ;
   u8 oem_contact_2[84U] ;
   u8 oem_contact_3[84U] ;
};
typedef struct __anonstruct_gdth_oem_str_197 gdth_oem_str;
struct __anonstruct_gdth_oem_str_ioctl_198 {
   gdth_oem_str_params params ;
   gdth_oem_str text ;
};
typedef struct __anonstruct_gdth_oem_str_ioctl_198 gdth_oem_str_ioctl;
struct __anonstruct_gdth_bfeat_str_199 {
   u8 chaining ;
   u8 striping ;
   u8 mirroring ;
   u8 raid ;
};
typedef struct __anonstruct_gdth_bfeat_str_199 gdth_bfeat_str;
struct __anonstruct_gdth_binfo_str_200 {
   u32 ser_no ;
   u8 oem_id[2U] ;
   u16 ep_flags ;
   u32 proc_id ;
   u32 memsize ;
   u8 mem_banks ;
   u8 chan_type ;
   u8 chan_count ;
   u8 rdongle_pres ;
   u32 epr_fw_ver ;
   u32 upd_fw_ver ;
   u32 upd_revision ;
   char type_string[16U] ;
   char raid_string[16U] ;
   u8 update_pres ;
   u8 xor_pres ;
   u8 prom_type ;
   u8 prom_count ;
   u32 dup_pres ;
   u32 chan_pres ;
   u32 mem_pres ;
   u8 ft_bus_system ;
   u8 subtype_valid ;
   u8 board_subtype ;
   u8 ramparity_pres ;
};
typedef struct __anonstruct_gdth_binfo_str_200 gdth_binfo_str;
struct __anonstruct_gdth_hentry_str_201 {
   char name[8U] ;
   u32 size ;
   u8 host_drive ;
   u8 log_drive ;
   u8 reserved ;
   u8 rw_attribs ;
   u32 start_sec ;
};
typedef struct __anonstruct_gdth_hentry_str_201 gdth_hentry_str;
struct __anonstruct_gdth_hget_str_202 {
   u32 entries ;
   u32 offset ;
   u8 secs_p_head ;
   u8 heads_p_cyl ;
   u8 reserved ;
   u8 clust_drvtype ;
   u32 location ;
   gdth_hentry_str entry[255U] ;
};
typedef struct __anonstruct_gdth_hget_str_202 gdth_hget_str;
struct __anonstruct_comm_queue_204 {
   u16 offset ;
   u16 serv_id ;
};
struct __anonstruct_gdt_dpr_if_203 {
   u8 S_Cmd_Indx ;
   u8 volatile S_Status ;
   u16 reserved1 ;
   u32 S_Info[4U] ;
   u8 volatile Sema0 ;
   u8 reserved2[3U] ;
   u8 Cmd_Index ;
   u8 reserved3[3U] ;
   u16 volatile Status ;
   u16 Service ;
   u32 Info[2U] ;
   struct __anonstruct_comm_queue_204 comm_queue[128U] ;
   u32 bios_reserved[2U] ;
   u8 gdt_dpr_cmd[1U] ;
};
typedef struct __anonstruct_gdt_dpr_if_203 gdt_dpr_if;
struct __anonstruct_gdt_pci_sram_205 {
   u32 magic ;
   u16 need_deinit ;
   u8 switch_support ;
   u8 padding[9U] ;
   u8 os_used[16U] ;
   u8 unused[28U] ;
   u8 fw_magic ;
};
typedef struct __anonstruct_gdt_pci_sram_205 gdt_pci_sram;
struct __anonstruct_dp_sram_209 {
   u8 bios_used[15328U] ;
   u32 magic ;
   u16 need_deinit ;
   u8 switch_support ;
   u8 padding[9U] ;
   u8 os_used[16U] ;
};
union __anonunion_bu_208 {
   struct __anonstruct_dp_sram_209 dp_sram ;
   u8 bios_area[16384U] ;
};
union __anonunion_u_210 {
   gdt_dpr_if ic ;
   u8 if_area[12288U] ;
};
struct __anonstruct_io_211 {
   u8 memlock ;
   u8 event ;
   u8 irqen ;
   u8 irqdel ;
   u8 volatile Sema1 ;
   u8 rq ;
};
struct __anonstruct_gdt2_dpram_str_207 {
   union __anonunion_bu_208 bu ;
   union __anonunion_u_210 u ;
   struct __anonstruct_io_211 io ;
};
typedef struct __anonstruct_gdt2_dpram_str_207 gdt2_dpram_str;
union __anonunion_u_213 {
   gdt_dpr_if ic ;
   u8 if_area[4019U] ;
};
struct __anonstruct_io_214 {
   u8 unused0[1U] ;
   u8 volatile Sema1 ;
   u8 unused1[3U] ;
   u8 irqen ;
   u8 unused2[2U] ;
   u8 event ;
   u8 unused3[3U] ;
   u8 irqdel ;
   u8 unused4[3U] ;
};
struct __anonstruct_gdt6_dpram_str_212 {
   union __anonunion_u_213 u ;
   gdt_pci_sram gdt6sr ;
   struct __anonstruct_io_214 io ;
};
typedef struct __anonstruct_gdt6_dpram_str_212 gdt6_dpram_str;
struct __anonstruct_gdt6c_plx_regs_215 {
   u8 cfg_reg ;
   u8 unused1[63U] ;
   u8 volatile sema0_reg ;
   u8 volatile sema1_reg ;
   u8 unused2[2U] ;
   u16 volatile status ;
   u16 service ;
   u32 info[2U] ;
   u8 unused3[16U] ;
   u8 ldoor_reg ;
   u8 unused4[3U] ;
   u8 volatile edoor_reg ;
   u8 unused5[3U] ;
   u8 control0 ;
   u8 control1 ;
   u8 unused6[22U] ;
};
typedef struct __anonstruct_gdt6c_plx_regs_215 gdt6c_plx_regs;
union __anonunion_u_217 {
   gdt_dpr_if ic ;
   u8 if_area[16323U] ;
};
struct __anonstruct_gdt6c_dpram_str_216 {
   union __anonunion_u_217 u ;
   gdt_pci_sram gdt6sr ;
};
typedef struct __anonstruct_gdt6c_dpram_str_216 gdt6c_dpram_str;
struct __anonstruct_gdt6m_i960_regs_218 {
   u8 unused1[16U] ;
   u8 volatile sema0_reg ;
   u8 unused2 ;
   u8 volatile sema1_reg ;
   u8 unused3 ;
   u16 volatile status ;
   u16 service ;
   u32 info[2U] ;
   u8 ldoor_reg ;
   u8 unused4[11U] ;
   u8 volatile edoor_reg ;
   u8 unused5[7U] ;
   u8 edoor_en_reg ;
   u8 unused6[27U] ;
   u32 unused7[939U] ;
   u32 severity ;
   char evt_str[256U] ;
};
typedef struct __anonstruct_gdt6m_i960_regs_218 gdt6m_i960_regs;
union __anonunion_u_220 {
   gdt_dpr_if ic ;
   u8 if_area[12227U] ;
};
struct __anonstruct_gdt6m_dpram_str_219 {
   gdt6m_i960_regs i960r ;
   union __anonunion_u_220 u ;
   gdt_pci_sram gdt6sr ;
};
typedef struct __anonstruct_gdt6m_dpram_str_219 gdt6m_dpram_str;
struct __anonstruct_gdth_pci_str_221 {
   struct pci_dev *pdev ;
   unsigned long dpmem ;
   unsigned long io ;
};
typedef struct __anonstruct_gdth_pci_str_221 gdth_pci_str;
struct gdth_cmndinfo {
   int index ;
   int internal_command ;
   gdth_cmd_str *internal_cmd_str ;
   dma_addr_t sense_paddr ;
   u8 priority ;
   int timeout_count ;
   int volatile wait_for_completion ;
   u16 status ;
   u32 info ;
   enum dma_data_direction dma_dir ;
   int phase ;
   int OpCode ;
};
struct __anonstruct_hdr_223 {
   u8 present ;
   u8 is_logdrv ;
   u8 is_arraydrv ;
   u8 is_master ;
   u8 is_parity ;
   u8 is_hotfix ;
   u8 master_no ;
   u8 lock ;
   u8 heads ;
   u8 secs ;
   u16 devtype ;
   u64 size ;
   u8 ldr_no ;
   u8 rw_attribs ;
   u8 cluster_type ;
   u8 media_changed ;
   u32 start_sec ;
};
struct __anonstruct_raw_224 {
   u8 lock ;
   u8 pdev_cnt ;
   u8 local_no ;
   u8 io_cnt[127U] ;
   u32 address ;
   u32 id_list[127U] ;
};
struct __anonstruct_cmd_tab_225 {
   Scsi_Cmnd *cmnd ;
   u16 service ;
};
struct __anonstruct_gdth_ha_str_222 {
   struct Scsi_Host *shost ;
   struct list_head list ;
   u16 hanum ;
   u16 oem_id ;
   u16 type ;
   u32 stype ;
   u16 fw_vers ;
   u16 cache_feat ;
   u16 raw_feat ;
   u16 screen_feat ;
   u16 bmic ;
   void *brd ;
   u32 brd_phys ;
   gdt6c_plx_regs *plx ;
   gdth_cmd_str cmdext ;
   gdth_cmd_str *pccb ;
   u32 ccb_phys ;
   char *pscratch ;
   u64 scratch_phys ;
   u8 scratch_busy ;
   u8 dma64_support ;
   gdth_msg_str *pmsg ;
   u64 msg_phys ;
   u8 scan_mode ;
   u8 irq ;
   u8 drq ;
   u16 status ;
   u16 service ;
   u32 info ;
   u32 info2 ;
   Scsi_Cmnd *req_first ;
   struct __anonstruct_hdr_223 hdr[255U] ;
   struct __anonstruct_raw_224 raw[6U] ;
   struct __anonstruct_cmd_tab_225 cmd_tab[120U] ;
   struct gdth_cmndinfo cmndinfo[120U] ;
   u8 bus_cnt ;
   u8 tid_cnt ;
   u8 bus_id[6U] ;
   u8 virt_bus ;
   u8 more_proc ;
   u16 cmd_cnt ;
   u16 cmd_len ;
   u16 cmd_offs_dpmem ;
   u16 ic_all_size ;
   gdth_cpar_str cpar ;
   gdth_bfeat_str bfeat ;
   gdth_binfo_str binfo ;
   gdth_evt_data dvr ;
   spinlock_t smp_lock ;
   struct pci_dev *pdev ;
   char oem_name[8U] ;
   struct scsi_device *sdev ;
};
typedef struct __anonstruct_gdth_ha_str_222 gdth_ha_str;
struct __anonstruct_gdth_inq_data_226 {
   u8 type_qual ;
   u8 modif_rmb ;
   u8 version ;
   u8 resp_aenc ;
   u8 add_length ;
   u8 reserved1 ;
   u8 reserved2 ;
   u8 misc ;
   u8 vendor[8U] ;
   u8 product[16U] ;
   u8 revision[4U] ;
};
typedef struct __anonstruct_gdth_inq_data_226 gdth_inq_data;
struct __anonstruct_gdth_rdcap_data_227 {
   u32 last_block_no ;
   u32 block_length ;
};
typedef struct __anonstruct_gdth_rdcap_data_227 gdth_rdcap_data;
struct __anonstruct_gdth_rdcap16_data_228 {
   u64 last_block_no ;
   u32 block_length ;
};
typedef struct __anonstruct_gdth_rdcap16_data_228 gdth_rdcap16_data;
struct __anonstruct_gdth_sense_data_229 {
   u8 errorcode ;
   u8 segno ;
   u8 key ;
   u32 info ;
   u8 add_length ;
   u32 cmd_info ;
   u8 adsc ;
   u8 adsq ;
   u8 fruc ;
   u8 key_spec[3U] ;
};
typedef struct __anonstruct_gdth_sense_data_229 gdth_sense_data;
struct __anonstruct_hd_231 {
   u8 data_length ;
   u8 med_type ;
   u8 dev_par ;
   u8 bd_length ;
};
struct __anonstruct_bd_232 {
   u8 dens_code ;
   u8 block_count[3U] ;
   u8 reserved ;
   u8 block_length[3U] ;
};
struct __anonstruct_gdth_modep_data_230 {
   struct __anonstruct_hd_231 hd ;
   struct __anonstruct_bd_232 bd ;
};
typedef struct __anonstruct_gdth_modep_data_230 gdth_modep_data;
struct __anonstruct_gdth_stackframe_233 {
   unsigned long b[10U] ;
};
typedef struct __anonstruct_gdth_stackframe_233 gdth_stackframe;
long ldv__builtin_expect(long exp , long c ) ;
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
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
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void might_fault(void) ;
extern unsigned long simple_strtoul(char const * , char ** , unsigned int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int printk(char const * , ...) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void __bad_percpu_size(void) ;
extern void trace_hardirqs_on(void) ;
extern void trace_hardirqs_off(void) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strcat(char * , char const * ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
extern char *strchr(char const * , int ) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/inst/current/envs/linux-stable-5934df9-1/linux-stable-5934df9-1/arch/x86/include/asm/paravirt.h"),
                         "i" (834), "i" (12UL));
    ldv_4208: ;
    goto ldv_4208;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (46UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static void raw_local_irq_restore(unsigned long f )
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.restore_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/inst/current/envs/linux-stable-5934df9-1/linux-stable-5934df9-1/arch/x86/include/asm/paravirt.h"),
                         "i" (839), "i" (12UL));
    ldv_4218: ;
    goto ldv_4218;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (47UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.restore_fl.func), [paravirt_clobber] "i" (1),
                       "D" (f): "memory", "cc");
  return;
}
}
__inline static void raw_local_irq_disable(void)
{
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
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.irq_disable.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/inst/current/envs/linux-stable-5934df9-1/linux-stable-5934df9-1/arch/x86/include/asm/paravirt.h"),
                         "i" (844), "i" (12UL));
    ldv_4227: ;
    goto ldv_4227;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (48UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.irq_disable.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  return;
}
}
__inline static unsigned long __raw_local_irq_save(void)
{
  unsigned long f ;
  {
  f = __raw_local_save_flags();
  raw_local_irq_disable();
  return (f);
}
}
__inline static int raw_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
__inline static int get_order(unsigned long size )
{
  int order ;
  {
  size = (size - 1UL) >> 11;
  order = -1;
  ldv_4350:
  size = size >> 1;
  order = order + 1;
  if (size != 0UL) {
    goto ldv_4350;
  } else {
  }
  return (order);
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5468;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5468;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5468;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_5468;
  default:
  __bad_percpu_size();
  }
  ldv_5468:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void lockdep_rcu_dereference(char const * , int const ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5750.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5750.rlock, flags);
  return;
}
}
extern void do_gettimeofday(struct timeval * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , struct lock_class_key * ) ;
extern void __const_udelay(unsigned long ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , char const * , struct lock_class_key * ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_sched_held(void)
{
  {
  return (1);
}
}
__inline static void rcu_read_lock_sched_notrace(void)
{
  {
  return;
}
}
extern struct module __this_module ;
void ldv_check_len(long n ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern void dev_set_drvdata(struct device * , void * ) ;
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
__inline static void memset_io(void volatile *addr , unsigned char val , size_t count )
{
  {
  memset((void *)addr, (int )val, count);
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  size_t __len ;
  void *__ret ;
  {
  __len = count;
  __ret = memcpy((void *)dst, src, __len);
  return;
}
}
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned char inb(int port )
{
  unsigned char value ;
  {
  __asm__ volatile ("inb %w1, %b0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static unsigned short inw(int port )
{
  unsigned short value ;
  {
  __asm__ volatile ("inw %w1, %w0": "=a" (value): "Nd" (port));
  return (value);
}
}
__inline static void outl(unsigned int value , int port )
{
  {
  __asm__ volatile ("outl %0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
__inline static unsigned int inl(int port )
{
  unsigned int value ;
  {
  __asm__ volatile ("inl %w1, %0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_word(struct pci_dev *dev , int where , u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
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
__inline static int pci_write_config_dword(struct pci_dev *dev , int where , u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *lowmem_page_address(struct page *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 56L) << 12) + 0xffff880000000000UL));
}
}
extern void kfree(void const * ) ;
extern struct tracepoint __tracepoint_kmalloc ;
__inline static void trace_kmalloc(unsigned long call_site , void const *ptr , size_t bytes_req ,
                                   size_t bytes_alloc , gfp_t gfp_flags )
{
  struct tracepoint_func *it_func_ptr ;
  void *it_func ;
  void *__data ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct tracepoint_func *_________p1 ;
  long tmp___1 ;
  {
  tmp___1 = ldv__builtin_expect(__tracepoint_kmalloc.state != 0, 0L);
  if (tmp___1 != 0L) {
    rcu_read_lock_sched_notrace();
    tmp = debug_lockdep_rcu_enabled();
    if (tmp != 0 && ! __warned) {
      tmp___0 = rcu_read_lock_sched_held();
      if (tmp___0 == 0) {
        __warned = 1;
        lockdep_rcu_dereference("include/trace/events/kmem.h", 87);
      } else {
      }
    } else {
    }
    _________p1 = *((struct tracepoint_func * volatile *)(& __tracepoint_kmalloc.funcs));
    it_func_ptr = _________p1;
    if ((unsigned long )it_func_ptr != (unsigned long )((struct tracepoint_func *)0)) {
      ldv_16064:
      it_func = it_func_ptr->func;
      __data = it_func_ptr->data;
      (*((void (*)(void * , unsigned long , void const * , size_t , size_t ,
                   gfp_t ))it_func))(__data, call_site, ptr, bytes_req, bytes_alloc,
                                      gfp_flags);
      it_func_ptr = it_func_ptr + 1;
      if ((unsigned long )it_func_ptr->func != (unsigned long )((void *)0)) {
        goto ldv_16064;
      } else {
      }
    } else {
    }
    rcu_read_lock_sched_notrace();
  } else {
  }
  return;
}
}
__inline static void kmemleak_alloc(void const *ptr , size_t size , int min_count ,
                                    gfp_t gfp )
{
  {
  return;
}
}
extern struct kmem_cache kmalloc_caches[28U] ;
__inline static int kmalloc_index(size_t size )
{
  {
  if (size == 0UL) {
    return (0);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size > 64UL && size <= 96UL) {
    return (1);
  } else {
  }
  if (size > 128UL && size <= 192UL) {
    return (2);
  } else {
  }
  if (size <= 8UL) {
    return (3);
  } else {
  }
  if (size <= 16UL) {
    return (4);
  } else {
  }
  if (size <= 32UL) {
    return (5);
  } else {
  }
  if (size <= 64UL) {
    return (6);
  } else {
  }
  if (size <= 128UL) {
    return (7);
  } else {
  }
  if (size <= 256UL) {
    return (8);
  } else {
  }
  if (size <= 512UL) {
    return (9);
  } else {
  }
  if (size <= 1024UL) {
    return (10);
  } else {
  }
  if (size <= 2048UL) {
    return (11);
  } else {
  }
  if (size <= 4096UL) {
    return (12);
  } else {
  }
  if (size <= 8192UL) {
    return (13);
  } else {
  }
  if (size <= 16384UL) {
    return (14);
  } else {
  }
  if (size <= 32768UL) {
    return (15);
  } else {
  }
  if (size <= 65536UL) {
    return (16);
  } else {
  }
  if (size <= 131072UL) {
    return (17);
  } else {
  }
  if (size <= 262144UL) {
    return (18);
  } else {
  }
  if (size <= 524288UL) {
    return (19);
  } else {
  }
  if (size <= 1048576UL) {
    return (20);
  } else {
  }
  if (size <= 2097152UL) {
    return (21);
  } else {
  }
  return (-1);
}
}
__inline static struct kmem_cache *kmalloc_slab(size_t size )
{
  int index ;
  int tmp ;
  {
  tmp = kmalloc_index(size);
  index = tmp;
  if (index == 0) {
    return (0);
  } else {
  }
  return ((struct kmem_cache *)(& kmalloc_caches) + (unsigned long )index);
}
}
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc_notrace(struct kmem_cache * , gfp_t ) ;
__inline static void *kmalloc_large(size_t size , gfp_t flags )
{
  unsigned int order ;
  int tmp ;
  void *ret ;
  unsigned long tmp___0 ;
  {
  tmp = get_order(size);
  order = (unsigned int )tmp;
  tmp___0 = __get_free_pages(flags | 16384U, order);
  ret = (void *)tmp___0;
  kmemleak_alloc((void const *)ret, size, 1, flags);
  trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, 4096UL << (int )order,
                flags);
  return (ret);
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *ret ;
  void *tmp ;
  struct kmem_cache *s ;
  struct kmem_cache *tmp___0 ;
  void *tmp___1 ;
  {
  if (0) {
    if (size > 8192UL) {
      tmp = kmalloc_large(size, flags);
      return (tmp);
    } else {
    }
    if ((flags & 1U) == 0U) {
      tmp___0 = kmalloc_slab(size);
      s = tmp___0;
      if ((unsigned long )s == (unsigned long )((struct kmem_cache *)0)) {
        return (16);
      } else {
      }
      ret = kmem_cache_alloc_notrace(s, flags);
      trace_kmalloc((unsigned long )((void *)0), (void const *)ret, size, (size_t )s->size,
                    flags);
      return (ret);
    } else {
    }
  } else {
  }
  tmp___1 = __kmalloc(size, flags);
  return (tmp___1);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (96), "i" (12UL));
    ldv_16912: ;
    goto ldv_16912;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (97), "i" (12UL));
    ldv_16913: ;
    goto ldv_16913;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address(tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
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
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_unmap_sg(struct device * , struct scatterlist * , int , int ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
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
    ldv_17321: ;
    goto ldv_17321;
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
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_17334;
  ldv_17333:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_17334: ;
  if (i < nents) {
    goto ldv_17333;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (51), "i" (12UL));
    ldv_17336: ;
    goto ldv_17336;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static void dma_unmap_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                        int nents , enum dma_data_direction dir ,
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
                         "i" (64), "i" (12UL));
    ldv_17345: ;
    goto ldv_17345;
  } else {
  }
  debug_dma_unmap_sg(dev, sg, nents, (int )dir);
  if ((unsigned long )ops->unmap_sg != (unsigned long )((void (*)(struct device * ,
                                                                  struct scatterlist * ,
                                                                  int , enum dma_data_direction ,
                                                                  struct dma_attrs * ))0)) {
    (*(ops->unmap_sg))(dev, sg, nents, dir, attrs);
  } else {
  }
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address(page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (78), "i" (12UL));
    ldv_17355: ;
    goto ldv_17355;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, 0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (90), "i" (12UL));
    ldv_17363: ;
    goto ldv_17363;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, 0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
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
    return (0);
  } else {
  }
  if ((unsigned long )ops->alloc_coherent == (unsigned long )((void *(*)(struct device * ,
                                                                         size_t ,
                                                                         dma_addr_t * ,
                                                                         gfp_t ))0)) {
    return (0);
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
    warn_slowpath_null("/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/inst/current/envs/linux-stable-5934df9-1/linux-stable-5934df9-1/arch/x86/include/asm/dma-mapping.h",
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
  tmp = dma_alloc_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                           size, dma_handle, 32U);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                    size, vaddr, dma_handle);
  return;
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                         dma_addr, size, (enum dma_data_direction )direction, 0);
  return;
}
}
__inline static dma_addr_t pci_map_page(struct pci_dev *hwdev , struct page *page ,
                                        unsigned long offset , size_t size , int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                     page, offset, size, (enum dma_data_direction )direction);
  return (tmp);
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_map_sg(struct pci_dev *hwdev , struct scatterlist *sg , int nents ,
                               int direction )
{
  int tmp ;
  {
  tmp = dma_map_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                         sg, nents, (enum dma_data_direction )direction, 0);
  return (tmp);
}
}
__inline static void pci_unmap_sg(struct pci_dev *hwdev , struct scatterlist *sg ,
                                  int nents , int direction )
{
  {
  dma_unmap_sg_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                     sg, nents, (enum dma_data_direction )direction, 0);
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
extern unsigned char const _ctype[] ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
unsigned long ldv__copy_to_user_2(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                  unsigned int ldv_func_arg3 ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
unsigned long ldv__copy_from_user_1(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                    unsigned int ldv_func_arg3 ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = ldv__copy_from_user_1(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = ldv__copy_from_user_1(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/inst/current/envs/linux-stable-5934df9-1/linux-stable-5934df9-1/arch/x86/include/asm/uaccess_64.h",
                          58, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n ) ;
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = ldv__copy_to_user_2(dst, src, size);
  return ((int )tmp);
}
}
extern long __copy_user_nocache(void * , void const * , unsigned int , int ) ;
long ldv___copy_user_nocache_3(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 ) ;
long ldv___copy_user_nocache_4(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq___0 , irqreturn_t (*handler)(int ,
                                                                              void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq___0, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int register_chrdev(unsigned int major___0 , char const *name ,
                                    struct file_operations const *fops )
{
  int tmp ;
  {
  tmp = __register_chrdev(major___0, 0U, 256U, name, fops);
  return (tmp);
}
}
__inline static void unregister_chrdev(unsigned int major___0 , char const *name )
{
  {
  __unregister_chrdev(major___0, 0U, 256U, name);
  return;
}
}
extern void _lock_kernel(char const * , char const * , int ) ;
extern void _unlock_kernel(char const * , char const * , int ) ;
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
__inline static void pagefault_disable(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void flush_dcache_page(struct page *page )
{
  {
  return;
}
}
__inline static void *kmap_atomic(struct page *page , enum km_type idx )
{
  void *tmp ;
  {
  pagefault_disable();
  tmp = lowmem_page_address(page);
  return (tmp);
}
}
__inline static unsigned int scsi_sg_count(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.nents);
}
}
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.length);
}
}
extern void scsi_adjust_queue_depth(struct scsi_device * , int , int ) ;
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(host, dev, dev);
  return (tmp);
}
}
extern void scsi_free_host_dev(struct scsi_device * ) ;
extern struct scsi_device *scsi_get_host_dev(struct Scsi_Host * ) ;
__inline static struct gdth_cmndinfo *gdth_cmnd_priv(struct scsi_cmnd *cmd )
{
  {
  return ((struct gdth_cmndinfo *)cmd->host_scribble);
}
}
int gdth_proc_info(struct Scsi_Host *host , char *buffer , char **start , off_t offset ,
                   int length , int inout ) ;
static void gdth_delay(int milliseconds ) ;
static void gdth_eval_mapping(u32 size , u32 *cyls , int *heads , int *secs ) ;
static irqreturn_t gdth_interrupt(int irq___0 , void *dev_id ) ;
static irqreturn_t __gdth_interrupt(gdth_ha_str *ha , int gdth_from_wait , int *pIndex ) ;
static int gdth_sync_event(gdth_ha_str *ha , int service , u8 index , Scsi_Cmnd *scp ) ;
static int gdth_async_event(gdth_ha_str *ha ) ;
static void gdth_log_event(gdth_evt_data *dvr , char *buffer ) ;
static void gdth_putq(gdth_ha_str *ha , Scsi_Cmnd *scp , u8 priority ) ;
static void gdth_next(gdth_ha_str *ha ) ;
static int gdth_fill_raw_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp , u8 b ) ;
static int gdth_special_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp ) ;
static gdth_evt_str *gdth_store_event(gdth_ha_str *ha , u16 source , u16 idx , gdth_evt_data *evt ) ;
static int gdth_read_event(gdth_ha_str *ha , int handle , gdth_evt_str *estr ) ;
static void gdth_readapp_event(gdth_ha_str *ha , u8 application , gdth_evt_str *estr ) ;
static void gdth_clear_events(void) ;
static void gdth_copy_internal_data(gdth_ha_str *ha , Scsi_Cmnd *scp , char *buffer ,
                                    u16 count ) ;
static int gdth_internal_cache_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp ) ;
static int gdth_fill_cache_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp , u16 hdrive ) ;
static void gdth_enable_int(gdth_ha_str *ha ) ;
static int gdth_test_busy(gdth_ha_str *ha ) ;
static int gdth_get_cmd_index(gdth_ha_str *ha ) ;
static void gdth_release_event(gdth_ha_str *ha ) ;
static int gdth_wait(gdth_ha_str *ha , int index , u32 time ) ;
static int gdth_internal_cmd(gdth_ha_str *ha , u8 service , u16 opcode , u32 p1 ,
                             u64 p2 , u64 p3 ) ;
static int gdth_search_drives(gdth_ha_str *ha ) ;
static int gdth_analyse_hdrive(gdth_ha_str *ha , u16 hdrive ) ;
static char const *gdth_ctr_name(gdth_ha_str *ha ) ;
static int gdth_open(struct inode *inode , struct file *filep ) ;
static int gdth_close(struct inode *inode , struct file *filep ) ;
static long gdth_unlocked_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
static void gdth_flush(gdth_ha_str *ha ) ;
static int gdth_queuecommand(struct scsi_cmnd *scp , void (*done)(struct scsi_cmnd * ) ) ;
static int __gdth_queuecommand(gdth_ha_str *ha , struct scsi_cmnd *scp , struct gdth_cmndinfo *cmndinfo ) ;
static void gdth_scsi_done(struct scsi_cmnd *scp ) ;
static u32 max_rq = 0U;
static u32 max_index = 0U;
static u32 max_sg = 0U;
static u32 act_ints = 0U;
static u32 act_ios = 0U;
static u32 act_stats = 0U;
static u32 act_rq = 0U;
static struct timer_list gdth_timer ;
static u8 gdth_polling ;
static int gdth_ctr_count = 0;
static struct list_head gdth_instances = {& gdth_instances, & gdth_instances};
static u8 gdth_write_through = 0U;
static gdth_evt_str ebuffer[100U] ;
static int elastidx ;
static int eoldidx ;
static int major ;
static u8 gdth_direction_tab[256U] =
  { 1U, 1U, 1U, 1U,
        2U, 1U, 1U, 2U,
        1U, 1U, 2U, 2U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 2U,
        1U, 2U, 1U, 1U,
        2U, 1U, 1U, 1U,
        1U, 2U, 1U, 1U,
        1U, 1U, 1U, 1U,
        2U, 1U, 1U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 2U, 2U,
        2U, 2U, 2U, 1U,
        1U, 1U, 1U, 1U,
        2U, 2U, 2U, 2U,
        1U, 2U, 1U, 2U,
        2U, 2U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        2U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 2U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 2U, 2U,
        2U, 2U, 2U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 2U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U};
static int irq[16U] =
  { 255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255};
static int disable = 0;
static int reserve_mode = 1;
static int reserve_list[40U] =
  { 255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255,
        255, 255, 255, 255};
static int reverse_scan = 0;
static int hdr_channel = 0;
static int max_ids = 127;
static int rescan = 0;
static int shared_access = 1;
static int probe_eisa_isa = 0;
static int force_dma32 = 0;
static struct file_operations const gdth_fops =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, & gdth_unlocked_ioctl, 0, 0, & gdth_open, 0, & gdth_close,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int gdth_execute(struct Scsi_Host *shost , gdth_cmd_str *gdtcmd , char *cmnd , int timeout ,
                 u32 *info ) ;
static int gdth_set_info(char *buffer , int length , struct Scsi_Host *host , gdth_ha_str *ha ) ;
static int gdth_get_info(char *buffer , char **start , off_t offset , int length ,
                         struct Scsi_Host *host , gdth_ha_str *ha ) ;
static int gdth_set_asc_info(struct Scsi_Host *host , char *buffer , int length ,
                             gdth_ha_str *ha ) ;
static char *gdth_ioctl_alloc(gdth_ha_str *ha , int size , int scratch , u64 *paddr ) ;
static void gdth_ioctl_free(gdth_ha_str *ha , int size , char *buf , u64 paddr ) ;
static void gdth_wait_completion(gdth_ha_str *ha , int busnum , int id ) ;
int gdth_proc_info(struct Scsi_Host *host , char *buffer , char **start , off_t offset ,
                   int length , int inout )
{
  gdth_ha_str *ha ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = shost_priv(host);
  ha = (gdth_ha_str *)tmp;
  if (inout != 0) {
    tmp___0 = gdth_set_info(buffer, length, host, ha);
    return (tmp___0);
  } else {
    tmp___1 = gdth_get_info(buffer, start, offset, length, host, ha);
    return (tmp___1);
  }
}
}
static int gdth_set_info(char *buffer , int length , struct Scsi_Host *host , gdth_ha_str *ha )
{
  int ret_val ;
  int tmp ;
  {
  ret_val = -22;
  if (length > 3) {
    tmp = strncmp((char const *)buffer, "gdth", 4UL);
    if (tmp == 0) {
      buffer = buffer + 5UL;
      length = length + -5;
      ret_val = gdth_set_asc_info(host, buffer, length, ha);
    } else {
    }
  } else {
  }
  return (ret_val);
}
}
static int gdth_set_asc_info(struct Scsi_Host *host , char *buffer , int length ,
                             gdth_ha_str *ha )
{
  int orig_length ;
  int drive ;
  int wb_mode ;
  int i ;
  int found ;
  gdth_cmd_str gdtcmd ;
  gdth_cpar_str *pcpar ;
  u64 paddr ;
  char cmnd[16U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  char *tmp___4 ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)(& cmnd), 255, 12UL);
  memset((void *)(& gdtcmd), 0, 476UL);
  orig_length = length + 5;
  drive = -1;
  wb_mode = 0;
  found = 0;
  if (length > 4) {
    tmp = strncmp((char const *)buffer, "flush", 5UL);
    if (tmp == 0) {
      buffer = buffer + 6UL;
      length = length + -6;
      if ((length != 0 && (int )((signed char )*buffer) > 47) && (int )((signed char )*buffer) <= 57) {
        drive = (int )*buffer + -48;
        buffer = buffer + 1;
        length = length - 1;
        if ((length != 0 && (int )((signed char )*buffer) > 47) && (int )((signed char )*buffer) <= 57) {
          drive = drive * 10 + ((int )*buffer + -48);
          buffer = buffer + 1;
          length = length - 1;
        } else {
        }
        printk("GDT: Flushing host drive %d .. ", drive);
      } else {
        printk("GDT: Flushing all host drives .. ");
      }
      i = 0;
      goto ldv_31006;
      ldv_31005: ;
      if ((unsigned int )ha->hdr[i].present != 0U) {
        if (drive != -1 && i != drive) {
          goto ldv_31004;
        } else {
        }
        found = 1;
        gdtcmd.Service = 9U;
        gdtcmd.OpCode = 4U;
        if (((int )ha->cache_feat & 512) != 0) {
          gdtcmd.u.cache64.DeviceNo = (u16 )i;
          gdtcmd.u.cache64.BlockNo = 1ULL;
        } else {
          gdtcmd.u.cache.DeviceNo = (u16 )i;
          gdtcmd.u.cache.BlockNo = 1U;
        }
        gdth_execute(host, & gdtcmd, (char *)(& cmnd), 30, 0);
      } else {
      }
      ldv_31004:
      i = i + 1;
      ldv_31006: ;
      if (i <= 254) {
        goto ldv_31005;
      } else {
      }
      if (found == 0) {
        printk("\nNo host drive found !\n");
      } else {
        printk("Done.\n");
      }
      return (orig_length);
    } else {
    }
  } else {
  }
  if (length > 6) {
    tmp___3 = strncmp((char const *)buffer, "wbp_off", 7UL);
    if (tmp___3 == 0) {
      buffer = buffer + 8UL;
      length = length + -8;
      printk("GDT: Disabling write back permanently .. ");
      wb_mode = 1;
    } else {
      goto _L___1;
    }
  } else
  _L___1:
  if (length > 5) {
    tmp___2 = strncmp((char const *)buffer, "wbp_on", 6UL);
    if (tmp___2 == 0) {
      buffer = buffer + 7UL;
      length = length + -7;
      printk("GDT: Enabling write back permanently .. ");
      wb_mode = 2;
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if (length > 5) {
    tmp___1 = strncmp((char const *)buffer, "wb_off", 6UL);
    if (tmp___1 == 0) {
      buffer = buffer + 7UL;
      length = length + -7;
      printk("GDT: Disabling write back commands .. ");
      if (((int )ha->cache_feat & 256) != 0) {
        gdth_write_through = 1U;
        printk("Done.\n");
      } else {
        printk("Not supported !\n");
      }
      return (orig_length);
    } else {
      goto _L;
    }
  } else
  _L:
  if (length > 4) {
    tmp___0 = strncmp((char const *)buffer, "wb_on", 5UL);
    if (tmp___0 == 0) {
      buffer = buffer + 6UL;
      length = length + -6;
      printk("GDT: Enabling write back commands .. ");
      gdth_write_through = 0U;
      printk("Done.\n");
      return (orig_length);
    } else {
    }
  } else {
  }
  if (wb_mode != 0) {
    tmp___4 = gdth_ioctl_alloc(ha, 12, 1, & paddr);
    if ((unsigned long )tmp___4 == (unsigned long )((char *)0)) {
      return (-16);
    } else {
    }
    pcpar = (gdth_cpar_str *)ha->pscratch;
    __len = 12UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)pcpar, (void const *)(& ha->cpar), __len);
    } else {
      __ret = memcpy((void *)pcpar, (void const *)(& ha->cpar), __len);
    }
    gdtcmd.Service = 9U;
    gdtcmd.OpCode = 5U;
    gdtcmd.u.ioctl.p_param = paddr;
    gdtcmd.u.ioctl.param_size = 12U;
    gdtcmd.u.ioctl.subfunc = 5U;
    gdtcmd.u.ioctl.channel = 65535U;
    pcpar->write_back = wb_mode != 1;
    gdth_execute(host, & gdtcmd, (char *)(& cmnd), 30, 0);
    gdth_ioctl_free(ha, 4096, ha->pscratch, paddr);
    printk("Done.\n");
    return (orig_length);
  } else {
  }
  printk("GDT: Unknown command: %s  Length: %d\n", buffer, length);
  return (-22);
}
}
static int gdth_get_info(char *buffer , char **start , off_t offset , int length ,
                         struct Scsi_Host *host , gdth_ha_str *ha )
{
  int size ;
  int len ;
  int hlen ;
  off_t begin ;
  off_t pos ;
  int id ;
  int i ;
  int j ;
  int k ;
  int sec ;
  int flag ;
  int no_mdrv ;
  int drv_no ;
  int is_mirr ;
  u32 cnt ;
  u64 paddr ;
  int rc ;
  gdth_cmd_str *gdtcmd ;
  gdth_evt_str *estr ;
  char hrec[161U] ;
  struct timeval tv ;
  char *buf ;
  gdth_dskstat_str *pds ;
  gdth_diskinfo_str *pdi ;
  gdth_arrayinf_str *pai ;
  gdth_defcnt_str *pdef ;
  gdth_cdrinfo_str *pcdi ;
  gdth_hget_str *phg ;
  char cmnd[16U] ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  size = 0;
  len = 0;
  begin = 0L;
  pos = 0L;
  no_mdrv = 0;
  rc = -12;
  tmp = kmalloc(476UL, 208U);
  gdtcmd = (gdth_cmd_str *)tmp;
  tmp___0 = kmalloc(294UL, 208U);
  estr = (gdth_evt_str *)tmp___0;
  if ((unsigned long )gdtcmd == (unsigned long )((gdth_cmd_str *)0) || (unsigned long )estr == (unsigned long )((gdth_evt_str *)0)) {
    goto free_fail;
  } else {
  }
  memset((void *)(& cmnd), 255, 12UL);
  memset((void *)gdtcmd, 0, 476UL);
  size = sprintf(buffer + (unsigned long )len, "Driver Parameters:\n");
  len = len + size;
  pos = (off_t )len + begin;
  if (reserve_list[0] == 255) {
    strcpy((char *)(& hrec), "--");
  } else {
    hlen = sprintf((char *)(& hrec), "%d", reserve_list[0]);
    i = 1;
    goto ldv_31051;
    ldv_31050: ;
    if (reserve_list[i] == 255) {
      goto ldv_31049;
    } else {
    }
    tmp___1 = snprintf((char *)(& hrec) + (unsigned long )hlen, (size_t )(161 - hlen),
                       ",%d", reserve_list[i]);
    hlen = tmp___1 + hlen;
    i = i + 1;
    ldv_31051: ;
    if (i <= 39) {
      goto ldv_31050;
    } else {
    }
    ldv_31049: ;
  }
  size = sprintf(buffer + (unsigned long )len, " reserve_mode: \t%d         \treserve_list:  \t%s\n",
                 reserve_mode, (char *)(& hrec));
  len = len + size;
  pos = (off_t )len + begin;
  size = sprintf(buffer + (unsigned long )len, " max_ids:      \t%-3d       \thdr_channel:   \t%d\n",
                 max_ids, hdr_channel);
  len = len + size;
  pos = (off_t )len + begin;
  size = sprintf(buffer + (unsigned long )len, "\nDisk Array Controller Information:\n");
  len = len + size;
  pos = (off_t )len + begin;
  strcpy((char *)(& hrec), (char const *)(& ha->binfo.type_string));
  size = sprintf(buffer + (unsigned long )len, " Number:       \t%d         \tName:          \t%s\n",
                 (int )ha->hanum, (char *)(& hrec));
  len = len + size;
  pos = (off_t )len + begin;
  if ((unsigned int )ha->more_proc != 0U) {
    sprintf((char *)(& hrec), "%d.%02d.%02d-%c%03X", (int )((unsigned char )(ha->binfo.upd_fw_ver >> 24)),
            (int )((unsigned char )(ha->binfo.upd_fw_ver >> 16)), (int )((unsigned char )ha->binfo.upd_fw_ver),
            (unsigned int )ha->bfeat.raid != 0U ? 82 : 78, ha->binfo.upd_revision);
  } else {
    sprintf((char *)(& hrec), "%d.%02d", (int )((unsigned char )(ha->cpar.version >> 8)),
            (int )((unsigned char )ha->cpar.version));
  }
  size = sprintf(buffer + (unsigned long )len, " Driver Ver.:  \t%-10s\tFirmware Ver.: \t%s\n",
                 (char *)"3.05", (char *)(& hrec));
  len = len + size;
  pos = (off_t )len + begin;
  if ((unsigned int )ha->more_proc != 0U) {
    size = sprintf(buffer + (unsigned long )len, " Serial No.:   \t0x%8X\tCache RAM size:\t%d KB\n",
                   ha->binfo.ser_no, ha->binfo.memsize / 1024U);
    len = len + size;
    pos = (off_t )len + begin;
  } else {
  }
  if (pos < offset) {
    len = 0;
    begin = pos;
  } else {
  }
  if ((off_t )length + offset < pos) {
    goto stop_output;
  } else {
  }
  if ((unsigned int )ha->more_proc != 0U) {
    size = sprintf(buffer + (unsigned long )len, "\nPhysical Devices:");
    len = len + size;
    pos = (off_t )len + begin;
    flag = 0;
    buf = gdth_ioctl_alloc(ha, 4096, 0, & paddr);
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      goto stop_output;
    } else {
    }
    i = 0;
    goto ldv_31060;
    ldv_31059:
    pds = (gdth_dskstat_str *)buf + 1024U;
    gdtcmd->Service = 9U;
    gdtcmd->OpCode = 5U;
    gdtcmd->u.ioctl.p_param = paddr + 1024ULL;
    gdtcmd->u.ioctl.param_size = 3072U;
    gdtcmd->u.ioctl.subfunc = 536870987U;
    gdtcmd->u.ioctl.channel = ha->raw[i].address | 65535U;
    pds->bid = (u32 )ha->raw[i].local_no;
    pds->first = 0U;
    pds->entries = (u32 )ha->raw[i].pdev_cnt;
    cnt = 95U;
    if (pds->entries > cnt) {
      pds->entries = cnt;
    } else {
    }
    tmp___2 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
    if (tmp___2 != 1) {
      pds->count = 0U;
    } else {
    }
    j = 0;
    goto ldv_31057;
    ldv_31056:
    pdi = (gdth_diskinfo_str *)buf;
    gdtcmd->Service = 9U;
    gdtcmd->OpCode = 5U;
    gdtcmd->u.ioctl.p_param = paddr;
    gdtcmd->u.ioctl.param_size = 100U;
    gdtcmd->u.ioctl.subfunc = 536870912U;
    gdtcmd->u.ioctl.channel = ha->raw[i].address | ha->raw[i].id_list[j];
    tmp___3 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
    if (tmp___3 == 1) {
      strncpy((char *)(& hrec), (char const *)(& pdi->vendor), 8UL);
      strncpy((char *)(& hrec) + 8UL, (char const *)(& pdi->product), 16UL);
      strncpy((char *)(& hrec) + 24UL, (char const *)(& pdi->revision), 4UL);
      hrec[28] = 0;
      size = sprintf(buffer + (unsigned long )len, "\n Chn/ID/LUN:   \t%c/%02d/%d    \tName:          \t%s\n",
                     i + 65, (int )pdi->target_id, (int )pdi->lun, (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
      flag = 1;
      pdi->no_ldrive = pdi->no_ldrive & 65535U;
      if (pdi->no_ldrive == 65535U) {
        strcpy((char *)(& hrec), "--");
      } else {
        sprintf((char *)(& hrec), "%d", pdi->no_ldrive);
      }
      size = sprintf(buffer + (unsigned long )len, " Capacity [MB]:\t%-6d    \tTo Log. Drive: \t%s\n",
                     pdi->blkcnt / (u32 )(1048576 / (int )pdi->blksize), (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
    } else {
      pdi->devtype = 255U;
    }
    if ((unsigned int )pdi->devtype == 0U) {
      k = 0;
      goto ldv_31055;
      ldv_31054: ;
      if ((int )pds->list[k].tid == (int )pdi->target_id && (int )pds->list[k].lun == (int )pdi->lun) {
        size = sprintf(buffer + (unsigned long )len, " Retries:      \t%-6d    \tReassigns:     \t%d\n",
                       pds->list[k].retries, pds->list[k].reassigns);
        len = len + size;
        pos = (off_t )len + begin;
        goto ldv_31053;
      } else {
      }
      k = k + 1;
      ldv_31055: ;
      if ((u32 )k < pds->count) {
        goto ldv_31054;
      } else {
      }
      ldv_31053:
      pdef = (gdth_defcnt_str *)buf;
      gdtcmd->Service = 9U;
      gdtcmd->OpCode = 5U;
      gdtcmd->u.ioctl.p_param = paddr;
      gdtcmd->u.ioctl.param_size = 8U;
      gdtcmd->u.ioctl.subfunc = 536870933U;
      gdtcmd->u.ioctl.channel = ha->raw[i].address | ha->raw[i].id_list[j];
      pdef->sddc_type = 8U;
      tmp___4 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
      if (tmp___4 == 1) {
        size = sprintf(buffer + (unsigned long )len, " Grown Defects:\t%d\n", pdef->sddc_cnt);
        len = len + size;
        pos = (off_t )len + begin;
      } else {
      }
    } else {
    }
    if (pos < offset) {
      len = 0;
      begin = pos;
    } else {
    }
    if ((off_t )length + offset < pos) {
      goto stop_output;
    } else {
    }
    j = j + 1;
    ldv_31057: ;
    if ((int )ha->raw[i].pdev_cnt > j) {
      goto ldv_31056;
    } else {
    }
    i = i + 1;
    ldv_31060: ;
    if ((int )ha->bus_cnt > i) {
      goto ldv_31059;
    } else {
    }
    gdth_ioctl_free(ha, 4096, buf, paddr);
    if (flag == 0) {
      size = sprintf(buffer + (unsigned long )len, "\n --\n");
      len = len + size;
      pos = (off_t )len + begin;
    } else {
    }
    size = sprintf(buffer + (unsigned long )len, "\nLogical Drives:");
    len = len + size;
    pos = (off_t )len + begin;
    flag = 0;
    buf = gdth_ioctl_alloc(ha, 4096, 0, & paddr);
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      goto stop_output;
    } else {
    }
    i = 0;
    goto ldv_31066;
    ldv_31065: ;
    if ((unsigned int )ha->hdr[i].is_logdrv == 0U) {
      goto ldv_31062;
    } else {
    }
    drv_no = i;
    k = 0;
    j = k;
    is_mirr = 0;
    ldv_31064:
    pcdi = (gdth_cdrinfo_str *)buf;
    gdtcmd->Service = 9U;
    gdtcmd->OpCode = 5U;
    gdtcmd->u.ioctl.p_param = paddr;
    gdtcmd->u.ioctl.param_size = 57U;
    gdtcmd->u.ioctl.subfunc = 7U;
    gdtcmd->u.ioctl.channel = (u32 )drv_no;
    tmp___5 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
    if (tmp___5 != 1) {
      goto ldv_31063;
    } else {
    }
    pcdi->ld_dtype = pcdi->ld_dtype >> 16;
    j = j + 1;
    if (pcdi->ld_dtype > 2U) {
      strcpy((char *)(& hrec), "missing");
    } else
    if ((int )pcdi->ld_error & 1) {
      strcpy((char *)(& hrec), "fault");
    } else
    if (((int )pcdi->ld_error & 2) != 0) {
      strcpy((char *)(& hrec), "invalid");
      k = k + 1;
      j = j - 1;
    } else {
      strcpy((char *)(& hrec), "ok");
    }
    if (drv_no == i) {
      size = sprintf(buffer + (unsigned long )len, "\n Number:       \t%-2d        \tStatus:        \t%s\n",
                     drv_no, (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
      flag = 1;
      no_mdrv = (int )pcdi->cd_ldcnt;
      if (no_mdrv > 1 || pcdi->ld_slave != 4294967295U) {
        is_mirr = 1;
        strcpy((char *)(& hrec), "RAID-1");
      } else
      if (pcdi->ld_dtype == 0U) {
        strcpy((char *)(& hrec), "Disk");
      } else
      if (pcdi->ld_dtype == 1U) {
        strcpy((char *)(& hrec), "RAID-0");
      } else
      if (pcdi->ld_dtype == 2U) {
        strcpy((char *)(& hrec), "Chain");
      } else {
        strcpy((char *)(& hrec), "???");
      }
      size = sprintf(buffer + (unsigned long )len, " Capacity [MB]:\t%-6d    \tType:          \t%s\n",
                     pcdi->ld_blkcnt / (1048576U / pcdi->ld_blksize), (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
    } else {
      size = sprintf(buffer + (unsigned long )len, " Slave Number: \t%-2d        \tStatus:        \t%s\n",
                     drv_no & 32767, (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
    }
    drv_no = (int )pcdi->ld_slave;
    if (pos < offset) {
      len = 0;
      begin = pos;
    } else {
    }
    if ((off_t )length + offset < pos) {
      goto stop_output;
    } else {
    }
    if (drv_no != -1) {
      goto ldv_31064;
    } else {
    }
    ldv_31063: ;
    if (is_mirr != 0) {
      size = sprintf(buffer + (unsigned long )len, " Missing Drv.: \t%-2d        \tInvalid Drv.:  \t%d\n",
                     (no_mdrv - j) - k, k);
      len = len + size;
      pos = (off_t )len + begin;
    } else {
    }
    if ((unsigned int )ha->hdr[i].is_arraydrv == 0U) {
      strcpy((char *)(& hrec), "--");
    } else {
      sprintf((char *)(& hrec), "%d", (int )ha->hdr[i].master_no);
    }
    size = sprintf(buffer + (unsigned long )len, " To Array Drv.:\t%s\n", (char *)(& hrec));
    len = len + size;
    pos = (off_t )len + begin;
    if (pos < offset) {
      len = 0;
      begin = pos;
    } else {
    }
    if ((off_t )length + offset < pos) {
      goto stop_output;
    } else {
    }
    ldv_31062:
    i = i + 1;
    ldv_31066: ;
    if (i <= 254) {
      goto ldv_31065;
    } else {
    }
    gdth_ioctl_free(ha, 4096, buf, paddr);
    if (flag == 0) {
      size = sprintf(buffer + (unsigned long )len, "\n --\n");
      len = len + size;
      pos = (off_t )len + begin;
    } else {
    }
    size = sprintf(buffer + (unsigned long )len, "\nArray Drives:");
    len = len + size;
    pos = (off_t )len + begin;
    flag = 0;
    buf = gdth_ioctl_alloc(ha, 4096, 0, & paddr);
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      goto stop_output;
    } else {
    }
    i = 0;
    goto ldv_31070;
    ldv_31069: ;
    if ((unsigned int )ha->hdr[i].is_arraydrv == 0U || (unsigned int )ha->hdr[i].is_master == 0U) {
      goto ldv_31068;
    } else {
    }
    pai = (gdth_arrayinf_str *)buf;
    gdtcmd->Service = 9U;
    gdtcmd->OpCode = 5U;
    gdtcmd->u.ioctl.p_param = paddr;
    gdtcmd->u.ioctl.param_size = 324U;
    gdtcmd->u.ioctl.subfunc = 268435474U;
    gdtcmd->u.ioctl.channel = (u32 )i;
    tmp___6 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
    if (tmp___6 == 1) {
      if ((unsigned int )pai->ai_state == 0U) {
        strcpy((char *)(& hrec), "idle");
      } else
      if ((unsigned int )pai->ai_state == 2U) {
        strcpy((char *)(& hrec), "build");
      } else
      if ((unsigned int )pai->ai_state == 4U) {
        strcpy((char *)(& hrec), "ready");
      } else
      if ((unsigned int )pai->ai_state == 6U) {
        strcpy((char *)(& hrec), "fail");
      } else
      if ((unsigned int )pai->ai_state == 8U || (unsigned int )pai->ai_state == 10U) {
        strcpy((char *)(& hrec), "rebuild");
      } else {
        strcpy((char *)(& hrec), "error");
      }
      if (((int )pai->ai_ext_state & 16) != 0) {
        strcat((char *)(& hrec), "/expand");
      } else
      if ((int )pai->ai_ext_state & 1) {
        strcat((char *)(& hrec), "/patch");
      } else {
      }
      size = sprintf(buffer + (unsigned long )len, "\n Number:       \t%-2d        \tStatus:        \t%s\n",
                     i, (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
      flag = 1;
      if ((unsigned int )pai->ai_type == 0U) {
        strcpy((char *)(& hrec), "RAID-0");
      } else
      if ((unsigned int )pai->ai_type == 4U) {
        strcpy((char *)(& hrec), "RAID-4");
      } else
      if ((unsigned int )pai->ai_type == 5U) {
        strcpy((char *)(& hrec), "RAID-5");
      } else {
        strcpy((char *)(& hrec), "RAID-10");
      }
      size = sprintf(buffer + (unsigned long )len, " Capacity [MB]:\t%-6d    \tType:          \t%s\n",
                     pai->ai_size / (1048576U / pai->ai_secsize), (char *)(& hrec));
      len = len + size;
      pos = (off_t )len + begin;
      if (pos < offset) {
        len = 0;
        begin = pos;
      } else {
      }
      if ((off_t )length + offset < pos) {
        goto stop_output;
      } else {
      }
    } else {
    }
    ldv_31068:
    i = i + 1;
    ldv_31070: ;
    if (i <= 254) {
      goto ldv_31069;
    } else {
    }
    gdth_ioctl_free(ha, 4096, buf, paddr);
    if (flag == 0) {
      size = sprintf(buffer + (unsigned long )len, "\n --\n");
      len = len + size;
      pos = (off_t )len + begin;
    } else {
    }
    size = sprintf(buffer + (unsigned long )len, "\nHost Drives:");
    len = len + size;
    pos = (off_t )len + begin;
    flag = 0;
    buf = gdth_ioctl_alloc(ha, 5116, 0, & paddr);
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      goto stop_output;
    } else {
    }
    i = 0;
    goto ldv_31078;
    ldv_31077: ;
    if ((unsigned int )ha->hdr[i].is_logdrv == 0U || ((unsigned int )ha->hdr[i].is_arraydrv != 0U && (unsigned int )ha->hdr[i].is_master == 0U)) {
      goto ldv_31072;
    } else {
    }
    phg = (gdth_hget_str *)buf;
    gdtcmd->Service = 9U;
    gdtcmd->OpCode = 5U;
    gdtcmd->u.ioctl.p_param = paddr;
    gdtcmd->u.ioctl.param_size = 5116U;
    gdtcmd->u.ioctl.subfunc = 268500993U;
    gdtcmd->u.ioctl.channel = (u32 )i;
    phg->entries = 255U;
    phg->offset = 16U;
    tmp___7 = gdth_execute(host, gdtcmd, (char *)(& cmnd), 30, 0);
    if (tmp___7 == 1) {
      ha->hdr[i].ldr_no = (u8 )i;
      ha->hdr[i].rw_attribs = 0U;
      ha->hdr[i].start_sec = 0U;
    } else {
      j = 0;
      goto ldv_31075;
      ldv_31074:
      k = (int )phg->entry[j].host_drive;
      if (k > 254) {
        goto ldv_31073;
      } else {
      }
      ha->hdr[k].ldr_no = phg->entry[j].log_drive;
      ha->hdr[k].rw_attribs = phg->entry[j].rw_attribs;
      ha->hdr[k].start_sec = phg->entry[j].start_sec;
      ldv_31073:
      j = j + 1;
      ldv_31075: ;
      if ((u32 )j < phg->entries) {
        goto ldv_31074;
      } else {
      }
    }
    ldv_31072:
    i = i + 1;
    ldv_31078: ;
    if (i <= 254) {
      goto ldv_31077;
    } else {
    }
    gdth_ioctl_free(ha, 5116, buf, paddr);
    i = 0;
    goto ldv_31082;
    ldv_31081: ;
    if ((unsigned int )ha->hdr[i].present == 0U) {
      goto ldv_31080;
    } else {
    }
    size = sprintf(buffer + (unsigned long )len, "\n Number:       \t%-2d        \tArr/Log. Drive:\t%d\n",
                   i, (int )ha->hdr[i].ldr_no);
    len = len + size;
    pos = (off_t )len + begin;
    flag = 1;
    size = sprintf(buffer + (unsigned long )len, " Capacity [MB]:\t%-6d    \tStart Sector:  \t%d\n",
                   (unsigned int )(ha->hdr[i].size / 2048ULL), ha->hdr[i].start_sec);
    len = len + size;
    pos = (off_t )len + begin;
    if (pos < offset) {
      len = 0;
      begin = pos;
    } else {
    }
    if ((off_t )length + offset < pos) {
      goto stop_output;
    } else {
    }
    ldv_31080:
    i = i + 1;
    ldv_31082: ;
    if (i <= 254) {
      goto ldv_31081;
    } else {
    }
    if (flag == 0) {
      size = sprintf(buffer + (unsigned long )len, "\n --\n");
      len = len + size;
      pos = (off_t )len + begin;
    } else {
    }
  } else {
  }
  size = sprintf(buffer + (unsigned long )len, "\nController Events:\n");
  len = len + size;
  pos = (off_t )len + begin;
  id = -1;
  ldv_31085:
  id = gdth_read_event(ha, id, estr);
  if ((unsigned int )estr->event_source == 0U) {
    goto ldv_31084;
  } else {
  }
  if ((int )estr->event_data.eu.driver.ionode == (int )ha->hanum && (unsigned int )estr->event_source == 1U) {
    gdth_log_event(& estr->event_data, (char *)(& hrec));
    do_gettimeofday(& tv);
    sec = (int )((unsigned int )tv.tv_sec - estr->first_stamp);
    if (sec < 0) {
      sec = 0;
    } else {
    }
    size = sprintf(buffer + (unsigned long )len, " date- %02d:%02d:%02d\t%s\n", sec / 3600,
                   (sec % 3600) / 60, sec % 60, (char *)(& hrec));
    len = len + size;
    pos = (off_t )len + begin;
    if (pos < offset) {
      len = 0;
      begin = pos;
    } else {
    }
    if ((off_t )length + offset < pos) {
      goto stop_output;
    } else {
    }
  } else {
  }
  if (id == -1) {
    goto ldv_31084;
  } else {
  }
  goto ldv_31085;
  ldv_31084: ;
  stop_output:
  *start = buffer + (unsigned long )(offset - begin);
  len = (int )(((unsigned int )begin - (unsigned int )offset) + (unsigned int )len);
  if (len > length) {
    len = length;
  } else {
  }
  rc = len;
  free_fail:
  kfree((void const *)gdtcmd);
  kfree((void const *)estr);
  return (rc);
}
}
static char *gdth_ioctl_alloc(gdth_ha_str *ha , int size , int scratch , u64 *paddr )
{
  unsigned long flags ;
  char *ret_val ;
  raw_spinlock_t *tmp ;
  dma_addr_t dma_addr ;
  void *tmp___0 ;
  {
  if (size == 0) {
    return (0);
  } else {
  }
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ha->scratch_busy == 0U && (unsigned int )size <= 4096U) {
    ha->scratch_busy = 1U;
    ret_val = ha->pscratch;
    *paddr = ha->scratch_phys;
  } else
  if (scratch != 0) {
    ret_val = 0;
  } else {
    tmp___0 = pci_alloc_consistent(ha->pdev, (size_t )size, & dma_addr);
    ret_val = (char *)tmp___0;
    *paddr = dma_addr;
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return (ret_val);
}
}
static void gdth_ioctl_free(gdth_ha_str *ha , int size , char *buf , u64 paddr )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  if ((unsigned long )ha->pscratch == (unsigned long )buf) {
    tmp = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp);
    ha->scratch_busy = 0U;
    spin_unlock_irqrestore(& ha->smp_lock, flags);
  } else {
    pci_free_consistent(ha->pdev, (size_t )size, (void *)buf, paddr);
  }
  return;
}
}
static void gdth_wait_completion(gdth_ha_str *ha , int busnum , int id )
{
  unsigned long flags ;
  int i ;
  Scsi_Cmnd *scp ;
  struct gdth_cmndinfo *cmndinfo ;
  u8 b ;
  u8 t ;
  raw_spinlock_t *tmp ;
  raw_spinlock_t *tmp___0 ;
  {
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_31129;
  ldv_31128:
  scp = ha->cmd_tab[i].cmnd;
  cmndinfo = gdth_cmnd_priv(scp);
  b = (u8 )(scp->device)->channel;
  t = (u8 )(scp->device)->id;
  if (((((unsigned long )scp != 0xffffffffffffffffUL && (unsigned long )scp != 0xfffffffffffffffeUL) && (unsigned long )scp != 0xfffffffffffffffdUL) && (int )((unsigned char )id) == (int )t) && (int )((unsigned char )busnum) == (int )b) {
    cmndinfo->wait_for_completion = 0;
    spin_unlock_irqrestore(& ha->smp_lock, flags);
    goto ldv_31123;
    ldv_31122:
    __asm__ volatile ("": : : "memory");
    ldv_31123: ;
    if ((int )cmndinfo->wait_for_completion == 0) {
      goto ldv_31122;
    } else {
    }
    tmp___0 = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
  } else {
  }
  i = i + 1;
  ldv_31129: ;
  if (i <= 119) {
    goto ldv_31128;
  } else {
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return;
}
}
static gdth_ha_str *gdth_find_ha(int hanum )
{
  gdth_ha_str *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)gdth_instances.next;
  ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_31140;
  ldv_31139: ;
  if ((int )ha->hanum == hanum) {
    return (ha);
  } else {
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (gdth_ha_str *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_31140:
  __builtin_prefetch((void const *)ha->list.next);
  if ((unsigned long )(& ha->list) != (unsigned long )(& gdth_instances)) {
    goto ldv_31139;
  } else {
  }
  return (0);
}
}
static struct gdth_cmndinfo *gdth_get_cmndinfo(gdth_ha_str *ha )
{
  struct gdth_cmndinfo *priv ;
  unsigned long flags ;
  int i ;
  raw_spinlock_t *tmp ;
  {
  priv = 0;
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  i = 0;
  goto ldv_31153;
  ldv_31152: ;
  if (ha->cmndinfo[i].index == 0) {
    priv = (struct gdth_cmndinfo *)(& ha->cmndinfo) + (unsigned long )i;
    memset((void *)priv, 0, 56UL);
    priv->index = i + 1;
    goto ldv_31151;
  } else {
  }
  i = i + 1;
  ldv_31153: ;
  if (i <= 119) {
    goto ldv_31152;
  } else {
  }
  ldv_31151:
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return (priv);
}
}
static void gdth_put_cmndinfo(struct gdth_cmndinfo *priv )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )priv == (unsigned long )((struct gdth_cmndinfo *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared"),
                         "i" (423), "i" (12UL));
    ldv_31157: ;
    goto ldv_31157;
  } else {
  }
  priv->index = 0;
  return;
}
}
static void gdth_delay(int milliseconds )
{
  unsigned long __ms ;
  unsigned long tmp ;
  {
  if (milliseconds == 0) {
    __const_udelay(4295UL);
  } else {
    __ms = (unsigned long )milliseconds;
    goto ldv_31163;
    ldv_31162:
    __const_udelay(4295000UL);
    ldv_31163:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_31162;
    } else {
    }
  }
  return;
}
}
static void gdth_scsi_done(struct scsi_cmnd *scp )
{
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  int internal_command ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  internal_command = cmndinfo->internal_command;
  gdth_put_cmndinfo(cmndinfo);
  scp->host_scribble = 0;
  if (internal_command != 0) {
    complete((struct completion *)scp->request);
  } else {
    (*(scp->scsi_done))(scp);
  }
  return;
}
}
int __gdth_execute(struct scsi_device *sdev , gdth_cmd_str *gdtcmd , char *cmnd ,
                   int timeout , u32 *info )
{
  gdth_ha_str *ha ;
  void *tmp ;
  Scsi_Cmnd *scp ;
  struct gdth_cmndinfo cmndinfo ;
  struct completion wait ;
  int rval ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = shost_priv(sdev->host);
  ha = (gdth_ha_str *)tmp;
  init_completion(& wait);
  wait = wait;
  tmp___0 = kzalloc(232UL, 208U);
  scp = (Scsi_Cmnd *)tmp___0;
  if ((unsigned long )scp == (unsigned long )((Scsi_Cmnd *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = kzalloc(96UL, 208U);
  scp->sense_buffer = (unsigned char *)tmp___1;
  if ((unsigned long )scp->sense_buffer == (unsigned long )((unsigned char *)0)) {
    kfree((void const *)scp);
    return (-12);
  } else {
  }
  scp->device = sdev;
  memset((void *)(& cmndinfo), 0, 56UL);
  scp->request = (struct request *)(& wait);
  scp->cmd_len = 12U;
  scp->cmnd = (unsigned char *)cmnd;
  cmndinfo.priority = 16U;
  cmndinfo.internal_cmd_str = gdtcmd;
  cmndinfo.internal_command = 1;
  __gdth_queuecommand(ha, scp, & cmndinfo);
  wait_for_completion(& wait);
  rval = (int )cmndinfo.status;
  if ((unsigned long )info != (unsigned long )((u32 *)0)) {
    *info = cmndinfo.info;
  } else {
  }
  kfree((void const *)scp->sense_buffer);
  kfree((void const *)scp);
  return (rval);
}
}
int gdth_execute(struct Scsi_Host *shost , gdth_cmd_str *gdtcmd , char *cmnd , int timeout ,
                 u32 *info )
{
  struct scsi_device *sdev ;
  struct scsi_device *tmp ;
  int rval ;
  int tmp___0 ;
  {
  tmp = scsi_get_host_dev(shost);
  sdev = tmp;
  tmp___0 = __gdth_execute(sdev, gdtcmd, cmnd, timeout, info);
  rval = tmp___0;
  scsi_free_host_dev(sdev);
  return (rval);
}
}
static void gdth_eval_mapping(u32 size , u32 *cyls , int *heads , int *secs )
{
  {
  *cyls = size / 2048U;
  if (*cyls <= 1024U) {
    *heads = 64;
    *secs = 32;
  } else {
    *cyls = size / 8001U;
    if (*cyls <= 1024U) {
      *heads = 127;
      *secs = 63;
    } else {
      *cyls = size / 16065U;
      *heads = 255;
      *secs = 63;
    }
  }
  return;
}
}
static bool gdth_search_vortex(u16 device )
{
  {
  if ((unsigned int )device <= 13U) {
    return (1);
  } else {
  }
  if ((unsigned int )device > 255U && (unsigned int )device <= 767U) {
    return (1);
  } else {
  }
  if ((unsigned int )device == 768U || (unsigned int )device == 769U) {
    return (1);
  } else {
  }
  return (0);
}
}
static int gdth_pci_probe_one(gdth_pci_str *pcistr , gdth_ha_str **ha_out ) ;
static int gdth_pci_init_one(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static void gdth_pci_remove_one(struct pci_dev *pdev ) ;
static void gdth_remove_one(gdth_ha_str *ha ) ;
static struct pci_device_id const gdthtable[4U] = { {4377U, 4294967295U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 1536U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 1537U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver gdth_pci_driver =
     {{0, 0}, (char *)"gdth", (struct pci_device_id const *)(& gdthtable), & gdth_pci_init_one,
    & gdth_pci_remove_one, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                              0, 0, 0}, {{{{{0U}, 0U, 0U, 0, {0, 0,
                                                                              0, 0,
                                                                              0UL}}}},
                                                         {0, 0}}};
static void gdth_pci_remove_one(struct pci_dev *pdev )
{
  gdth_ha_str *ha ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  ha = (gdth_ha_str *)tmp;
  pci_set_drvdata(pdev, 0);
  list_del(& ha->list);
  gdth_remove_one(ha);
  pci_disable_device(pdev);
  return;
}
}
static int gdth_pci_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  u16 vendor ;
  u16 device ;
  unsigned long base0 ;
  unsigned long base1 ;
  unsigned long base2 ;
  int rc ;
  gdth_pci_str gdth_pcistr ;
  gdth_ha_str *ha ;
  bool tmp ;
  int tmp___0 ;
  {
  vendor = pdev->vendor;
  device = pdev->device;
  ha = 0;
  memset((void *)(& gdth_pcistr), 0, 24UL);
  if ((unsigned int )vendor == 4377U) {
    tmp = gdth_search_vortex((int )device);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (-19);
    } else {
    }
  } else {
  }
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (gdth_ctr_count > 15) {
    return (-16);
  } else {
  }
  gdth_pcistr.pdev = pdev;
  base0 = pdev->resource[0].flags;
  base1 = pdev->resource[1].flags;
  base2 = pdev->resource[2].flags;
  if ((unsigned int )device <= 1U || (unsigned int )device > 255U) {
    if ((base0 & 512UL) == 0UL) {
      return (-19);
    } else {
    }
    gdth_pcistr.dpmem = (unsigned long )pdev->resource[0].start;
  } else {
    if (((base0 & 512UL) == 0UL || (base2 & 512UL) == 0UL) || (base1 & 256UL) == 0UL) {
      return (-19);
    } else {
    }
    gdth_pcistr.dpmem = (unsigned long )pdev->resource[2].start;
    gdth_pcistr.io = (unsigned long )pdev->resource[1].start;
  }
  rc = gdth_pci_probe_one(& gdth_pcistr, & ha);
  if (rc != 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
static int gdth_init_pci(struct pci_dev *pdev , gdth_pci_str *pcistr , gdth_ha_str *ha )
{
  register gdt6_dpram_str *dp6_ptr ;
  register gdt6c_dpram_str *dp6c_ptr ;
  register gdt6m_dpram_str *dp6m_ptr ;
  u32 retries ;
  u8 prot_ver ;
  u16 command ;
  int i ;
  int found ;
  unsigned short tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char tmp___5 ;
  unsigned short tmp___6 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned char tmp___10 ;
  unsigned int tmp___11 ;
  unsigned char tmp___12 ;
  unsigned char tmp___13 ;
  unsigned short tmp___14 ;
  unsigned int tmp___15 ;
  unsigned int tmp___16 ;
  unsigned char tmp___17 ;
  unsigned char tmp___18 ;
  unsigned int tmp___19 ;
  unsigned char tmp___20 ;
  unsigned char tmp___21 ;
  unsigned int tmp___22 ;
  {
  found = 0;
  if ((unsigned int )pdev->vendor == 32902U) {
    ha->oem_id = 32768U;
  } else {
    ha->oem_id = 37916U;
  }
  ha->brd_phys = (unsigned int )((int )(pdev->bus)->number << 8) | (pdev->devfn & 248U);
  ha->stype = (unsigned int )pdev->device;
  ha->irq = (u8 )pdev->irq;
  ha->pdev = pdev;
  if ((unsigned int )(ha->pdev)->device <= 1U) {
    ha->brd = ioremap((resource_size_t )pcistr->dpmem, 4096UL);
    if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
      printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
      return (0);
    } else {
    }
    dp6_ptr = (gdt6_dpram_str *)ha->brd;
    writel(3237998097U, (void volatile *)(& dp6_ptr->u));
    tmp___1 = readl((void const volatile *)(& dp6_ptr->u));
    if (tmp___1 != 3237998097U) {
      printk("GDT-PCI: Cannot access DPMEM at 0x%lx (shadowed?)\n", pcistr->dpmem);
      found = 0;
      i = 819200;
      goto ldv_31246;
      ldv_31245:
      iounmap((void volatile *)ha->brd);
      ha->brd = ioremap((resource_size_t )i, 2UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      tmp = readw((void const volatile *)ha->brd);
      if ((unsigned int )tmp != 65535U) {
        goto ldv_31243;
      } else {
      }
      iounmap((void volatile *)ha->brd);
      pci_write_config_dword(pdev, 16, (u32 )i);
      ha->brd = ioremap((resource_size_t )i, 4096UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      dp6_ptr = (gdt6_dpram_str *)ha->brd;
      writel(3237998097U, (void volatile *)(& dp6_ptr->u));
      tmp___0 = readl((void const volatile *)(& dp6_ptr->u));
      if (tmp___0 == 3237998097U) {
        printk("GDT-PCI: Use free address at 0x%x\n", i);
        found = 1;
        goto ldv_31244;
      } else {
      }
      ldv_31243:
      i = i + 16384;
      ldv_31246: ;
      if (i <= 950271) {
        goto ldv_31245;
      } else {
      }
      ldv_31244: ;
      if (found == 0) {
        printk("GDT-PCI: No free address found!\n");
        iounmap((void volatile *)ha->brd);
        return (0);
      } else {
      }
    } else {
    }
    memset_io((void volatile *)(& dp6_ptr->u), 0, 4019UL);
    tmp___2 = readl((void const volatile *)(& dp6_ptr->u));
    if (tmp___2 != 0U) {
      printk("GDT-PCI: Initialization error (DPMEM write error)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    writeb(255, (void volatile *)(& dp6_ptr->io.irqdel));
    writeb(0, (void volatile *)(& dp6_ptr->io.irqen));
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.S_Status));
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.Cmd_Index));
    writel((unsigned int )pcistr->dpmem, (void volatile *)(& dp6_ptr->u.ic.S_Info));
    writeb(255, (void volatile *)(& dp6_ptr->u.ic.S_Cmd_Indx));
    writeb(0, (void volatile *)(& dp6_ptr->io.event));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31248;
    ldv_31247:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error (DEINIT failed)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31248:
    tmp___3 = readb((void const volatile *)(& dp6_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___3 != 255U) {
      goto ldv_31247;
    } else {
    }
    tmp___4 = readl((void const volatile *)(& dp6_ptr->u.ic.S_Info));
    prot_ver = (unsigned char )tmp___4;
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.S_Status));
    writeb(255, (void volatile *)(& dp6_ptr->io.irqdel));
    if ((unsigned int )prot_ver != 1U) {
      printk("GDT-PCI: Illegal protocol version\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    ha->type = 3U;
    ha->ic_all_size = 4019U;
    writel(0U, (void volatile *)(& dp6_ptr->u.ic.S_Info));
    writel(0U, (void volatile *)(& dp6_ptr->u.ic.S_Info) + 1U);
    writel(0U, (void volatile *)(& dp6_ptr->u.ic.S_Info) + 2U);
    writel(0U, (void volatile *)(& dp6_ptr->u.ic.S_Info) + 3U);
    writeb(254, (void volatile *)(& dp6_ptr->u.ic.S_Cmd_Indx));
    writeb(0, (void volatile *)(& dp6_ptr->io.event));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31251;
    ldv_31250:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31251:
    tmp___5 = readb((void const volatile *)(& dp6_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___5 != 254U) {
      goto ldv_31250;
    } else {
    }
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.S_Status));
    writeb(255, (void volatile *)(& dp6_ptr->io.irqdel));
    ha->dma64_support = 0U;
  } else
  if ((unsigned int )(ha->pdev)->device <= 13U) {
    ha->plx = (gdt6c_plx_regs *)pcistr->io;
    ha->brd = ioremap((resource_size_t )pcistr->dpmem, 16384UL);
    if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
      printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    dp6c_ptr = (gdt6c_dpram_str *)ha->brd;
    writel(3237998097U, (void volatile *)(& dp6c_ptr->u));
    tmp___8 = readl((void const volatile *)(& dp6c_ptr->u));
    if (tmp___8 != 3237998097U) {
      printk("GDT-PCI: Cannot access DPMEM at 0x%lx (shadowed?)\n", pcistr->dpmem);
      found = 0;
      i = 819200;
      goto ldv_31256;
      ldv_31255:
      iounmap((void volatile *)ha->brd);
      ha->brd = ioremap((resource_size_t )i, 2UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      tmp___6 = readw((void const volatile *)ha->brd);
      if ((unsigned int )tmp___6 != 65535U) {
        goto ldv_31253;
      } else {
      }
      iounmap((void volatile *)ha->brd);
      pci_write_config_dword(pdev, 24, (u32 )i);
      ha->brd = ioremap((resource_size_t )i, 16384UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      dp6c_ptr = (gdt6c_dpram_str *)ha->brd;
      writel(3237998097U, (void volatile *)(& dp6c_ptr->u));
      tmp___7 = readl((void const volatile *)(& dp6c_ptr->u));
      if (tmp___7 == 3237998097U) {
        printk("GDT-PCI: Use free address at 0x%x\n", i);
        found = 1;
        goto ldv_31254;
      } else {
      }
      ldv_31253:
      i = i + 16384;
      ldv_31256: ;
      if (i <= 950271) {
        goto ldv_31255;
      } else {
      }
      ldv_31254: ;
      if (found == 0) {
        printk("GDT-PCI: No free address found!\n");
        iounmap((void volatile *)ha->brd);
        return (0);
      } else {
      }
    } else {
    }
    memset_io((void volatile *)(& dp6c_ptr->u), 0, 16323UL);
    tmp___9 = readl((void const volatile *)(& dp6c_ptr->u));
    if (tmp___9 != 0U) {
      printk("GDT-PCI: Initialization error (DPMEM write error)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    outb(0, (int )((unsigned short )((long )(& (ha->plx)->control1))));
    outb(255, (int )((unsigned short )((long )(& (ha->plx)->edoor_reg))));
    writeb(0, (void volatile *)(& dp6c_ptr->u.ic.S_Status));
    writeb(0, (void volatile *)(& dp6c_ptr->u.ic.Cmd_Index));
    writel((unsigned int )pcistr->dpmem, (void volatile *)(& dp6c_ptr->u.ic.S_Info));
    writeb(255, (void volatile *)(& dp6c_ptr->u.ic.S_Cmd_Indx));
    outb(1, (int )((unsigned short )((long )(& (ha->plx)->ldoor_reg))));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31258;
    ldv_31257:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error (DEINIT failed)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31258:
    tmp___10 = readb((void const volatile *)(& dp6c_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___10 != 255U) {
      goto ldv_31257;
    } else {
    }
    tmp___11 = readl((void const volatile *)(& dp6c_ptr->u.ic.S_Info));
    prot_ver = (unsigned char )tmp___11;
    writeb(0, (void volatile *)(& dp6c_ptr->u.ic.Status));
    if ((unsigned int )prot_ver != 1U) {
      printk("GDT-PCI: Illegal protocol version\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    ha->type = 4U;
    ha->ic_all_size = 16323U;
    writel(0U, (void volatile *)(& dp6c_ptr->u.ic.S_Info));
    writel(0U, (void volatile *)(& dp6c_ptr->u.ic.S_Info) + 1U);
    writel(0U, (void volatile *)(& dp6c_ptr->u.ic.S_Info) + 2U);
    writel(0U, (void volatile *)(& dp6c_ptr->u.ic.S_Info) + 3U);
    writeb(254, (void volatile *)(& dp6c_ptr->u.ic.S_Cmd_Indx));
    outb(1, (int )((unsigned short )((long )(& (ha->plx)->ldoor_reg))));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31261;
    ldv_31260:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31261:
    tmp___12 = readb((void const volatile *)(& dp6c_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___12 != 254U) {
      goto ldv_31260;
    } else {
    }
    writeb(0, (void volatile *)(& dp6c_ptr->u.ic.S_Status));
    ha->dma64_support = 0U;
  } else {
    ha->brd = ioremap((resource_size_t )pcistr->dpmem, 16384UL);
    if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
      printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
      return (0);
    } else {
    }
    pci_read_config_word(pdev, 4, & command);
    command = (u16 )((unsigned int )command | 6U);
    pci_write_config_word(pdev, 4, (int )command);
    if (pdev->resource[8].start == 1ULL) {
      pdev->resource[8].start = 0ULL;
    } else {
    }
    i = -16842751;
    pci_write_config_dword(pdev, 48, (u32 )i);
    gdth_delay(1);
    pci_write_config_dword(pdev, 48, (u32 )pdev->resource[8].start);
    dp6m_ptr = (gdt6m_dpram_str *)ha->brd;
    goto ldv_31264;
    ldv_31263:
    gdth_delay(1);
    ldv_31264:
    tmp___13 = readb((void const volatile *)(& dp6m_ptr->i960r.sema0_reg));
    if (((int )tmp___13 & 3) != 0) {
      goto ldv_31263;
    } else {
    }
    writel(3237998097U, (void volatile *)(& dp6m_ptr->u));
    tmp___16 = readl((void const volatile *)(& dp6m_ptr->u));
    if (tmp___16 != 3237998097U) {
      printk("GDT-PCI: Cannot access DPMEM at 0x%lx (shadowed?)\n", pcistr->dpmem);
      found = 0;
      i = 819200;
      goto ldv_31269;
      ldv_31268:
      iounmap((void volatile *)ha->brd);
      ha->brd = ioremap((resource_size_t )i, 2UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      tmp___14 = readw((void const volatile *)ha->brd);
      if ((unsigned int )tmp___14 != 65535U) {
        goto ldv_31266;
      } else {
      }
      iounmap((void volatile *)ha->brd);
      pci_write_config_dword(pdev, 16, (u32 )i);
      ha->brd = ioremap((resource_size_t )i, 16384UL);
      if ((unsigned long )ha->brd == (unsigned long )((void *)0)) {
        printk("GDT-PCI: Initialization error (DPMEM remap error)\n");
        return (0);
      } else {
      }
      dp6m_ptr = (gdt6m_dpram_str *)ha->brd;
      writel(3237998097U, (void volatile *)(& dp6m_ptr->u));
      tmp___15 = readl((void const volatile *)(& dp6m_ptr->u));
      if (tmp___15 == 3237998097U) {
        printk("GDT-PCI: Use free address at 0x%x\n", i);
        found = 1;
        goto ldv_31267;
      } else {
      }
      ldv_31266:
      i = i + 16384;
      ldv_31269: ;
      if (i <= 950271) {
        goto ldv_31268;
      } else {
      }
      ldv_31267: ;
      if (found == 0) {
        printk("GDT-PCI: No free address found!\n");
        iounmap((void volatile *)ha->brd);
        return (0);
      } else {
      }
    } else {
    }
    memset_io((void volatile *)(& dp6m_ptr->u), 0, 12227UL);
    tmp___17 = readb((void const volatile *)(& dp6m_ptr->i960r.edoor_en_reg));
    writeb((int )((unsigned int )tmp___17 | 4U), (void volatile *)(& dp6m_ptr->i960r.edoor_en_reg));
    writeb(255, (void volatile *)(& dp6m_ptr->i960r.edoor_reg));
    writeb(0, (void volatile *)(& dp6m_ptr->u.ic.S_Status));
    writeb(0, (void volatile *)(& dp6m_ptr->u.ic.Cmd_Index));
    writel((unsigned int )pcistr->dpmem, (void volatile *)(& dp6m_ptr->u.ic.S_Info));
    writeb(255, (void volatile *)(& dp6m_ptr->u.ic.S_Cmd_Indx));
    writeb(1, (void volatile *)(& dp6m_ptr->i960r.ldoor_reg));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31271;
    ldv_31270:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error (DEINIT failed)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31271:
    tmp___18 = readb((void const volatile *)(& dp6m_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___18 != 255U) {
      goto ldv_31270;
    } else {
    }
    tmp___19 = readl((void const volatile *)(& dp6m_ptr->u.ic.S_Info));
    prot_ver = (unsigned char )tmp___19;
    writeb(0, (void volatile *)(& dp6m_ptr->u.ic.S_Status));
    if ((unsigned int )prot_ver != 1U) {
      printk("GDT-PCI: Illegal protocol version\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    ha->type = 5U;
    ha->ic_all_size = 12227U;
    writel(0U, (void volatile *)(& dp6m_ptr->u.ic.S_Info));
    writel(0U, (void volatile *)(& dp6m_ptr->u.ic.S_Info) + 1U);
    writel(0U, (void volatile *)(& dp6m_ptr->u.ic.S_Info) + 2U);
    writel(0U, (void volatile *)(& dp6m_ptr->u.ic.S_Info) + 3U);
    writeb(254, (void volatile *)(& dp6m_ptr->u.ic.S_Cmd_Indx));
    writeb(1, (void volatile *)(& dp6m_ptr->i960r.ldoor_reg));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31274;
    ldv_31273:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31274:
    tmp___20 = readb((void const volatile *)(& dp6m_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___20 != 254U) {
      goto ldv_31273;
    } else {
    }
    writeb(0, (void volatile *)(& dp6m_ptr->u.ic.S_Status));
    writeb(253, (void volatile *)(& dp6m_ptr->u.ic.S_Cmd_Indx));
    writeb(1, (void volatile *)(& dp6m_ptr->i960r.ldoor_reg));
    retries = 100000U;
    gdth_delay(20);
    goto ldv_31277;
    ldv_31276:
    retries = retries - 1U;
    if (retries == 0U) {
      printk("GDT-PCI: Initialization error (DEINIT failed)\n");
      iounmap((void volatile *)ha->brd);
      return (0);
    } else {
    }
    gdth_delay(1);
    ldv_31277:
    tmp___21 = readb((void const volatile *)(& dp6m_ptr->u.ic.S_Status));
    if ((unsigned int )tmp___21 != 253U) {
      goto ldv_31276;
    } else {
    }
    tmp___22 = readl((void const volatile *)(& dp6m_ptr->u.ic.S_Info));
    prot_ver = (unsigned char )(tmp___22 >> 16);
    writeb(0, (void volatile *)(& dp6m_ptr->u.ic.S_Status));
    if ((unsigned int )prot_ver <= 42U) {
      ha->dma64_support = 0U;
    } else {
      ha->dma64_support = 1U;
    }
  }
  return (1);
}
}
static void gdth_enable_int(gdth_ha_str *ha )
{
  unsigned long flags ;
  gdt2_dpram_str *dp2_ptr ;
  gdt6_dpram_str *dp6_ptr ;
  gdt6m_dpram_str *dp6m_ptr ;
  raw_spinlock_t *tmp ;
  unsigned char tmp___0 ;
  {
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ha->type == 2U) {
    outb(255, (int )ha->bmic + 3215);
    outb(255, (int )ha->bmic + 3214);
    outb(1, (int )ha->bmic + 3209);
  } else
  if ((unsigned int )ha->type == 1U) {
    dp2_ptr = (gdt2_dpram_str *)ha->brd;
    writeb(1, (void volatile *)(& dp2_ptr->io.irqdel));
    writeb(0, (void volatile *)(& dp2_ptr->u.ic.Cmd_Index));
    writeb(1, (void volatile *)(& dp2_ptr->io.irqen));
  } else
  if ((unsigned int )ha->type == 3U) {
    dp6_ptr = (gdt6_dpram_str *)ha->brd;
    writeb(1, (void volatile *)(& dp6_ptr->io.irqdel));
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.Cmd_Index));
    writeb(1, (void volatile *)(& dp6_ptr->io.irqen));
  } else
  if ((unsigned int )ha->type == 4U) {
    outb(255, (int )((unsigned short )((long )(& (ha->plx)->edoor_reg))));
    outb(3, (int )((unsigned short )((long )(& (ha->plx)->control1))));
  } else
  if ((unsigned int )ha->type == 5U) {
    dp6m_ptr = (gdt6m_dpram_str *)ha->brd;
    writeb(255, (void volatile *)(& dp6m_ptr->i960r.edoor_reg));
    tmp___0 = readb((void const volatile *)(& dp6m_ptr->i960r.edoor_en_reg));
    writeb((int )tmp___0 & 251, (void volatile *)(& dp6m_ptr->i960r.edoor_en_reg));
  } else {
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return;
}
}
static u8 gdth_get_status(gdth_ha_str *ha )
{
  u8 IStatus ;
  {
  IStatus = 0U;
  if ((unsigned int )ha->type == 2U) {
    IStatus = inb((int )ha->bmic + 3215);
  } else
  if ((unsigned int )ha->type == 1U) {
    IStatus = readb((void const volatile *)(& ((gdt2_dpram_str *)ha->brd)->u.ic.Cmd_Index));
  } else
  if ((unsigned int )ha->type == 3U) {
    IStatus = readb((void const volatile *)(& ((gdt6_dpram_str *)ha->brd)->u.ic.Cmd_Index));
  } else
  if ((unsigned int )ha->type == 4U) {
    IStatus = inb((int )((unsigned short )((long )(& (ha->plx)->edoor_reg))));
  } else
  if ((unsigned int )ha->type == 5U) {
    IStatus = readb((void const volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.edoor_reg));
  } else {
  }
  return (IStatus);
}
}
static int gdth_test_busy(gdth_ha_str *ha )
{
  register int gdtsema0 ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  unsigned char tmp___2 ;
  unsigned char tmp___3 ;
  {
  gdtsema0 = 0;
  if ((unsigned int )ha->type == 2U) {
    tmp = inb((int )ha->bmic + 3210);
    gdtsema0 = (int )tmp;
  } else
  if ((unsigned int )ha->type == 1U) {
    tmp___0 = readb((void const volatile *)(& ((gdt2_dpram_str *)ha->brd)->u.ic.Sema0));
    gdtsema0 = (int )tmp___0;
  } else
  if ((unsigned int )ha->type == 3U) {
    tmp___1 = readb((void const volatile *)(& ((gdt6_dpram_str *)ha->brd)->u.ic.Sema0));
    gdtsema0 = (int )tmp___1;
  } else
  if ((unsigned int )ha->type == 4U) {
    tmp___2 = inb((int )((unsigned short )((long )(& (ha->plx)->sema0_reg))));
    gdtsema0 = (int )tmp___2;
  } else
  if ((unsigned int )ha->type == 5U) {
    tmp___3 = readb((void const volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.sema0_reg));
    gdtsema0 = (int )tmp___3;
  } else {
  }
  return (gdtsema0 & 1);
}
}
static int gdth_get_cmd_index(gdth_ha_str *ha )
{
  int i ;
  {
  i = 0;
  goto ldv_31302;
  ldv_31301: ;
  if ((unsigned long )ha->cmd_tab[i].cmnd == 0xffffffffffffffffUL) {
    ha->cmd_tab[i].cmnd = (Scsi_Cmnd *)(ha->pccb)->RequestBuffer;
    ha->cmd_tab[i].service = (u16 )(ha->pccb)->Service;
    (ha->pccb)->CommandIndex = (unsigned int )i + 2U;
    return (i + 2);
  } else {
  }
  i = i + 1;
  ldv_31302: ;
  if (i <= 119) {
    goto ldv_31301;
  } else {
  }
  return (0);
}
}
static void gdth_set_sema0(gdth_ha_str *ha )
{
  {
  if ((unsigned int )ha->type == 2U) {
    outb(1, (int )ha->bmic + 3210);
  } else
  if ((unsigned int )ha->type == 1U) {
    writeb(1, (void volatile *)(& ((gdt2_dpram_str *)ha->brd)->u.ic.Sema0));
  } else
  if ((unsigned int )ha->type == 3U) {
    writeb(1, (void volatile *)(& ((gdt6_dpram_str *)ha->brd)->u.ic.Sema0));
  } else
  if ((unsigned int )ha->type == 4U) {
    outb(1, (int )((unsigned short )((long )(& (ha->plx)->sema0_reg))));
  } else
  if ((unsigned int )ha->type == 5U) {
    writeb(1, (void volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.sema0_reg));
  } else {
  }
  return;
}
}
static void gdth_copy_command(gdth_ha_str *ha )
{
  register gdth_cmd_str *cmd_ptr ;
  register gdt6m_dpram_str *dp6m_ptr ;
  register gdt6c_dpram_str *dp6c_ptr ;
  gdt6_dpram_str *dp6_ptr ;
  gdt2_dpram_str *dp2_ptr ;
  u16 cp_count ;
  u16 dp_offset ;
  u16 cmd_no ;
  {
  cp_count = ha->cmd_len;
  dp_offset = ha->cmd_offs_dpmem;
  cmd_no = ha->cmd_cnt;
  cmd_ptr = ha->pccb;
  ha->cmd_cnt = (u16 )((int )ha->cmd_cnt + 1);
  if ((unsigned int )ha->type == 2U) {
    return;
  } else {
  }
  if (((int )cp_count & 3) != 0) {
    cp_count = ((unsigned int )cp_count & 65532U) + 4U;
  } else {
  }
  ha->cmd_offs_dpmem = (int )ha->cmd_offs_dpmem + (int )cp_count;
  if ((unsigned int )ha->type == 1U) {
    dp2_ptr = (gdt2_dpram_str *)ha->brd;
    writew((int )((unsigned int )dp_offset + 560U), (void volatile *)(& dp2_ptr->u.ic.comm_queue[(int )cmd_no].offset));
    writew((int )cmd_ptr->Service, (void volatile *)(& dp2_ptr->u.ic.comm_queue[(int )cmd_no].serv_id));
    memcpy_toio((void volatile *)(& dp2_ptr->u.ic.gdt_dpr_cmd) + (unsigned long )dp_offset,
                (void const *)cmd_ptr, (size_t )cp_count);
  } else
  if ((unsigned int )ha->type == 3U) {
    dp6_ptr = (gdt6_dpram_str *)ha->brd;
    writew((int )((unsigned int )dp_offset + 560U), (void volatile *)(& dp6_ptr->u.ic.comm_queue[(int )cmd_no].offset));
    writew((int )cmd_ptr->Service, (void volatile *)(& dp6_ptr->u.ic.comm_queue[(int )cmd_no].serv_id));
    memcpy_toio((void volatile *)(& dp6_ptr->u.ic.gdt_dpr_cmd) + (unsigned long )dp_offset,
                (void const *)cmd_ptr, (size_t )cp_count);
  } else
  if ((unsigned int )ha->type == 4U) {
    dp6c_ptr = (gdt6c_dpram_str *)ha->brd;
    writew((int )((unsigned int )dp_offset + 560U), (void volatile *)(& dp6c_ptr->u.ic.comm_queue[(int )cmd_no].offset));
    writew((int )cmd_ptr->Service, (void volatile *)(& dp6c_ptr->u.ic.comm_queue[(int )cmd_no].serv_id));
    memcpy_toio((void volatile *)(& dp6c_ptr->u.ic.gdt_dpr_cmd) + (unsigned long )dp_offset,
                (void const *)cmd_ptr, (size_t )cp_count);
  } else
  if ((unsigned int )ha->type == 5U) {
    dp6m_ptr = (gdt6m_dpram_str *)ha->brd;
    writew((int )((unsigned int )dp_offset + 560U), (void volatile *)(& dp6m_ptr->u.ic.comm_queue[(int )cmd_no].offset));
    writew((int )cmd_ptr->Service, (void volatile *)(& dp6m_ptr->u.ic.comm_queue[(int )cmd_no].serv_id));
    memcpy_toio((void volatile *)(& dp6m_ptr->u.ic.gdt_dpr_cmd) + (unsigned long )dp_offset,
                (void const *)cmd_ptr, (size_t )cp_count);
  } else {
  }
  return;
}
}
static void gdth_release_event(gdth_ha_str *ha )
{
  u32 i ;
  u32 j ;
  {
  i = 0U;
  j = 0U;
  goto ldv_31324;
  ldv_31323: ;
  if ((unsigned long )ha->cmd_tab[j].cmnd != 0xffffffffffffffffUL) {
    i = i + 1U;
  } else {
  }
  j = j + 1U;
  ldv_31324: ;
  if (j <= 119U) {
    goto ldv_31323;
  } else {
  }
  if (max_index < i) {
    max_index = i;
  } else {
  }
  if ((unsigned int )(ha->pccb)->OpCode == 0U) {
    (ha->pccb)->Service = (u8 )((unsigned int )(ha->pccb)->Service | 128U);
  } else {
  }
  if ((unsigned int )ha->type == 2U) {
    if ((unsigned int )(ha->pccb)->OpCode == 0U) {
      outl(ha->ccb_phys, (int )ha->bmic + 3216);
    } else {
    }
    outb((int )(ha->pccb)->Service, (int )ha->bmic + 3213);
  } else
  if ((unsigned int )ha->type == 1U) {
    writeb(0, (void volatile *)(& ((gdt2_dpram_str *)ha->brd)->io.event));
  } else
  if ((unsigned int )ha->type == 3U) {
    writeb(0, (void volatile *)(& ((gdt6_dpram_str *)ha->brd)->io.event));
  } else
  if ((unsigned int )ha->type == 4U) {
    outb(1, (int )((unsigned short )((long )(& (ha->plx)->ldoor_reg))));
  } else
  if ((unsigned int )ha->type == 5U) {
    writeb(1, (void volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.ldoor_reg));
  } else {
  }
  return;
}
}
static int gdth_wait(gdth_ha_str *ha , int index , u32 time )
{
  int answer_found ;
  int wait_index ;
  int tmp ;
  {
  answer_found = 0;
  wait_index = 0;
  if (index == 0) {
    return (1);
  } else {
  }
  ldv_31334:
  __gdth_interrupt(ha, 1, & wait_index);
  if (wait_index == index) {
    answer_found = 1;
    goto ldv_31333;
  } else {
  }
  gdth_delay(1);
  time = time - 1U;
  if (time != 0U) {
    goto ldv_31334;
  } else {
  }
  ldv_31333: ;
  goto ldv_31336;
  ldv_31335:
  gdth_delay(0);
  ldv_31336:
  tmp = gdth_test_busy(ha);
  if (tmp != 0) {
    goto ldv_31335;
  } else {
  }
  return (answer_found);
}
}
static int gdth_internal_cmd(gdth_ha_str *ha , u8 service , u16 opcode , u32 p1 ,
                             u64 p2 , u64 p3 )
{
  register gdth_cmd_str *cmd_ptr ;
  int retries ;
  int index ;
  int tmp ;
  {
  cmd_ptr = ha->pccb;
  memset((void *)cmd_ptr, 0, 476UL);
  retries = 100000;
  ldv_31350:
  cmd_ptr->Service = service;
  cmd_ptr->RequestBuffer = 0xfffffffffffffffeUL;
  index = gdth_get_cmd_index(ha);
  if (index == 0) {
    return (0);
  } else {
  }
  gdth_set_sema0(ha);
  cmd_ptr->OpCode = opcode;
  cmd_ptr->BoardNode = 0U;
  if ((unsigned int )service == 9U) {
    if ((unsigned int )opcode == 5U) {
      cmd_ptr->u.ioctl.subfunc = p1;
      cmd_ptr->u.ioctl.channel = (unsigned int )p2;
      cmd_ptr->u.ioctl.param_size = (unsigned short )p3;
      cmd_ptr->u.ioctl.p_param = ha->scratch_phys;
    } else
    if (((int )ha->cache_feat & 512) != 0) {
      cmd_ptr->u.cache64.DeviceNo = (unsigned short )p1;
      cmd_ptr->u.cache64.BlockNo = p2;
    } else {
      cmd_ptr->u.cache.DeviceNo = (unsigned short )p1;
      cmd_ptr->u.cache.BlockNo = (unsigned int )p2;
    }
  } else
  if ((unsigned int )service == 3U) {
    if (((int )ha->raw_feat & 512) != 0) {
      cmd_ptr->u.raw64.direction = p1;
      cmd_ptr->u.raw64.bus = (unsigned char )p2;
      cmd_ptr->u.raw64.target = (unsigned char )p3;
      cmd_ptr->u.raw64.lun = (unsigned char )(p3 >> 8);
    } else {
      cmd_ptr->u.raw.direction = p1;
      cmd_ptr->u.raw.bus = (unsigned char )p2;
      cmd_ptr->u.raw.target = (unsigned char )p3;
      cmd_ptr->u.raw.lun = (unsigned char )(p3 >> 8);
    }
  } else
  if ((unsigned int )service == 11U) {
    if ((unsigned int )opcode == 3U) {
      *((u32 *)(& cmd_ptr->u.screen.su.data)) = p1;
      *((u32 *)(& cmd_ptr->u.screen.su.data) + 4U) = (unsigned int )p2;
      *((u32 *)(& cmd_ptr->u.screen.su.data) + 8U) = (unsigned int )p3;
    } else {
    }
  } else {
  }
  ha->cmd_len = 476U;
  ha->cmd_offs_dpmem = 0U;
  ha->cmd_cnt = 0U;
  gdth_copy_command(ha);
  gdth_release_event(ha);
  gdth_delay(20);
  tmp = gdth_wait(ha, index, 100000U);
  if (tmp == 0) {
    printk("GDT: Initialization error (timeout service %d)\n", (int )service);
    return (0);
  } else {
  }
  if ((unsigned int )ha->status != 7U) {
    goto ldv_31349;
  } else {
    retries = retries - 1;
    if (retries == 0) {
      goto ldv_31349;
    } else {
    }
  }
  gdth_delay(1);
  goto ldv_31350;
  ldv_31349: ;
  return ((unsigned int )ha->status == 1U);
}
}
static int gdth_search_drives(gdth_ha_str *ha )
{
  u16 cdev_cnt ;
  u16 i ;
  int ok ;
  u32 bus_no ;
  u32 drv_cnt ;
  u32 drv_no ;
  u32 j ;
  gdth_getch_str *chn ;
  gdth_drlist_str *drl ;
  gdth_iochan_str *ioc ;
  gdth_raw_iochan_str *iocr ;
  gdth_arcdl_str *alst ;
  gdth_alist_str *alst2 ;
  gdth_oem_str_ioctl *oemstr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  int tmp___2 ;
  char const *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  ok = 0;
  ha->screen_feat = 0U;
  if (force_dma32 == 0) {
    ok = gdth_internal_cmd(ha, 11, 4, 0U, 0ULL, 0ULL);
    if (ok != 0) {
      ha->screen_feat = 512U;
    } else {
    }
  } else {
  }
  if (force_dma32 != 0 || (ok == 0 && (unsigned int )ha->status == 65534U)) {
    ok = gdth_internal_cmd(ha, 11, 0, 0U, 0ULL, 0ULL);
  } else {
  }
  if (ok == 0) {
    printk("GDT-HA %d: Initialization error screen service (code %d)\n", (int )ha->hanum,
           (int )ha->status);
    return (0);
  } else {
  }
  gdth_internal_cmd(ha, 9, 26, 0U, 0ULL, 0ULL);
  ha->cache_feat = 0U;
  if (force_dma32 == 0) {
    ok = gdth_internal_cmd(ha, 9, 29, 8U, 0ULL, 0ULL);
    if (ok != 0) {
      ha->cache_feat = 512U;
    } else {
    }
  } else {
  }
  if (force_dma32 != 0 || (ok == 0 && (unsigned int )ha->status == 65534U)) {
    ok = gdth_internal_cmd(ha, 9, 0, 8U, 0ULL, 0ULL);
  } else {
  }
  if (ok == 0) {
    printk("GDT-HA %d: Initialization error cache service (code %d)\n", (int )ha->hanum,
           (int )ha->status);
    return (0);
  } else {
  }
  cdev_cnt = (unsigned short )ha->info;
  ha->fw_vers = ha->service;
  iocr = (gdth_raw_iochan_str *)ha->pscratch;
  iocr->hdr.version = 4294967295U;
  iocr->hdr.list_entries = 6U;
  iocr->hdr.first_chan = 0U;
  iocr->hdr.last_chan = 5U;
  iocr->hdr.list_offset = 12U;
  tmp___0 = gdth_internal_cmd(ha, 9, 5, 94U, 65535ULL, 36ULL);
  if (tmp___0 != 0) {
    ha->bus_cnt = iocr->hdr.chan_count;
    bus_no = 0U;
    goto ldv_31369;
    ldv_31368: ;
    if ((unsigned int )iocr->list[bus_no].proc_id <= 126U) {
      ha->bus_id[bus_no] = iocr->list[bus_no].proc_id;
    } else {
      ha->bus_id[bus_no] = 255U;
    }
    bus_no = bus_no + 1U;
    ldv_31369: ;
    if ((u32 )ha->bus_cnt > bus_no) {
      goto ldv_31368;
    } else {
    }
  } else {
    chn = (gdth_getch_str *)ha->pscratch;
    bus_no = 0U;
    goto ldv_31373;
    ldv_31372:
    chn->channel_no = bus_no;
    tmp = gdth_internal_cmd(ha, 9, 5, 536870917U, 196607ULL, 10ULL);
    if (tmp == 0) {
      if (bus_no == 0U) {
        printk("GDT-HA %d: Error detecting channel count (0x%x)\n", (int )ha->hanum,
               (int )ha->status);
        return (0);
      } else {
      }
      goto ldv_31371;
    } else {
    }
    if ((unsigned int )chn->siop_id <= 126U) {
      ha->bus_id[bus_no] = chn->siop_id;
    } else {
      ha->bus_id[bus_no] = 255U;
    }
    bus_no = bus_no + 1U;
    ldv_31373: ;
    if (bus_no <= 5U) {
      goto ldv_31372;
    } else {
    }
    ldv_31371:
    ha->bus_cnt = (unsigned char )bus_no;
  }
  tmp___1 = gdth_internal_cmd(ha, 9, 5, 4U, 65535ULL, 36ULL);
  if (tmp___1 == 0) {
    printk("GDT-HA %d: Initialization error cache service (code %d)\n", (int )ha->hanum,
           (int )ha->status);
    return (0);
  } else {
  }
  ha->cpar = ((gdth_cinfo_str *)ha->pscratch)->cpar;
  ha->more_proc = 0U;
  tmp___4 = gdth_internal_cmd(ha, 9, 5, 40U, 65535ULL, 84ULL);
  if (tmp___4 != 0) {
    __len = 84UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ha->binfo), (void const *)ha->pscratch, __len);
    } else {
      __ret = memcpy((void *)(& ha->binfo), (void const *)ha->pscratch,
                               __len);
    }
    tmp___2 = gdth_internal_cmd(ha, 9, 5, 21U, 65535ULL, 4ULL);
    if (tmp___2 != 0) {
      ha->bfeat = *((gdth_bfeat_str *)ha->pscratch);
      ha->more_proc = 1U;
    } else {
    }
  } else {
    tmp___3 = gdth_ctr_name(ha);
    strcpy((char *)(& ha->binfo.type_string), tmp___3);
  }
  if ((unsigned int )ha->more_proc != 0U) {
    ioc = (gdth_iochan_str *)ha->pscratch;
    ioc->hdr.version = 4294967295U;
    ioc->hdr.list_entries = 6U;
    ioc->hdr.first_chan = 0U;
    ioc->hdr.last_chan = 5U;
    ioc->hdr.list_offset = 12U;
    tmp___5 = gdth_internal_cmd(ha, 9, 5, 93U, 65535ULL, 60ULL);
    if (tmp___5 != 0) {
      bus_no = 0U;
      goto ldv_31378;
      ldv_31377:
      ha->raw[bus_no].address = ioc->list[bus_no].address;
      ha->raw[bus_no].local_no = ioc->list[bus_no].local_no;
      bus_no = bus_no + 1U;
      ldv_31378: ;
      if ((u32 )ha->bus_cnt > bus_no) {
        goto ldv_31377;
      } else {
      }
    } else {
      bus_no = 0U;
      goto ldv_31381;
      ldv_31380:
      ha->raw[bus_no].address = 131072U;
      ha->raw[bus_no].local_no = (u8 )bus_no;
      bus_no = bus_no + 1U;
      ldv_31381: ;
      if ((u32 )ha->bus_cnt > bus_no) {
        goto ldv_31380;
      } else {
      }
    }
    bus_no = 0U;
    goto ldv_31387;
    ldv_31386:
    chn = (gdth_getch_str *)ha->pscratch;
    chn->channel_no = (u32 )ha->raw[bus_no].local_no;
    tmp___6 = gdth_internal_cmd(ha, 9, 5, 536870917U, (u64 )(ha->raw[bus_no].address | 65535U),
                                10ULL);
    if (tmp___6 != 0) {
      ha->raw[bus_no].pdev_cnt = (u8 )chn->drive_cnt;
    } else {
    }
    if ((unsigned int )ha->raw[bus_no].pdev_cnt != 0U) {
      drl = (gdth_drlist_str *)ha->pscratch;
      drl->sc_no = (u32 )ha->raw[bus_no].local_no;
      drl->sc_cnt = (u32 )ha->raw[bus_no].pdev_cnt;
      tmp___7 = gdth_internal_cmd(ha, 9, 5, 536870918U, (u64 )(ha->raw[bus_no].address | 65535U),
                                  516ULL);
      if (tmp___7 != 0) {
        j = 0U;
        goto ldv_31384;
        ldv_31383:
        ha->raw[bus_no].id_list[j] = drl->sc_list[j];
        j = j + 1U;
        ldv_31384: ;
        if ((u32 )ha->raw[bus_no].pdev_cnt > j) {
          goto ldv_31383;
        } else {
        }
      } else {
        ha->raw[bus_no].pdev_cnt = 0U;
      }
    } else {
    }
    bus_no = bus_no + 1U;
    ldv_31387: ;
    if ((u32 )ha->bus_cnt > bus_no) {
      goto ldv_31386;
    } else {
    }
    tmp___11 = gdth_internal_cmd(ha, 9, 5, 1U, 65535ULL, 4ULL);
    if (tmp___11 != 0) {
      drv_cnt = *((u32 *)ha->pscratch);
      tmp___8 = gdth_internal_cmd(ha, 9, 5, 2U, 65535ULL, (u64 )((unsigned long )drv_cnt * 4UL));
      if (tmp___8 != 0) {
        j = 0U;
        goto ldv_31390;
        ldv_31389:
        drv_no = *((u32 *)ha->pscratch + (unsigned long )j);
        if (drv_no <= 254U) {
          ha->hdr[drv_no].is_logdrv = 1U;
        } else {
        }
        j = j + 1U;
        ldv_31390: ;
        if (j < drv_cnt) {
          goto ldv_31389;
        } else {
        }
      } else {
      }
      alst = (gdth_arcdl_str *)ha->pscratch;
      alst->entries_avail = 255U;
      alst->first_entry = 0U;
      alst->list_offset = 16U;
      tmp___10 = gdth_internal_cmd(ha, 9, 5, 268435508U, 65535ULL, (u64 )((unsigned long )(alst->entries_avail - 1U) * 12UL + 28UL));
      if (tmp___10 != 0) {
        j = 0U;
        goto ldv_31393;
        ldv_31392:
        ha->hdr[j].is_arraydrv = alst->list[j].is_arrayd;
        ha->hdr[j].is_master = alst->list[j].is_master;
        ha->hdr[j].is_parity = alst->list[j].is_parity;
        ha->hdr[j].is_hotfix = alst->list[j].is_hotfix;
        ha->hdr[j].master_no = alst->list[j].cd_handle;
        j = j + 1U;
        ldv_31393: ;
        if (alst->entries_init > j) {
          goto ldv_31392;
        } else {
        }
      } else {
        tmp___9 = gdth_internal_cmd(ha, 9, 5, 268435471U, 0ULL, 420ULL);
        if (tmp___9 != 0) {
          j = 0U;
          goto ldv_31396;
          ldv_31395:
          alst2 = (gdth_alist_str *)ha->pscratch + (unsigned long )j;
          ha->hdr[j].is_arraydrv = alst2->is_arrayd;
          ha->hdr[j].is_master = alst2->is_master;
          ha->hdr[j].is_parity = alst2->is_parity;
          ha->hdr[j].is_hotfix = alst2->is_hotfix;
          ha->hdr[j].master_no = alst2->cd_handle;
          j = j + 1U;
          ldv_31396: ;
          if (j <= 34U) {
            goto ldv_31395;
          } else {
          }
        } else {
        }
      }
    } else {
    }
  } else {
  }
  ha->raw_feat = 0U;
  if (force_dma32 == 0) {
    ok = gdth_internal_cmd(ha, 3, 21, 0U, 0ULL, 0ULL);
    if (ok != 0) {
      ha->raw_feat = 512U;
    } else {
    }
  } else {
  }
  if (force_dma32 != 0 || (ok == 0 && (unsigned int )ha->status == 65534U)) {
    ok = gdth_internal_cmd(ha, 3, 0, 0U, 0ULL, 0ULL);
  } else {
  }
  if (ok == 0) {
    printk("GDT-HA %d: Initialization error raw service (code %d)\n", (int )ha->hanum,
           (int )ha->status);
    return (0);
  } else {
  }
  tmp___13 = gdth_internal_cmd(ha, 3, 12, 1U, 0ULL, 0ULL);
  if (tmp___13 != 0) {
    tmp___12 = gdth_internal_cmd(ha, 3, 13, 0U, 0ULL, 0ULL);
    if (tmp___12 != 0) {
      ha->raw_feat = (u16 )((int )ha->raw_feat | (int )((unsigned short )ha->info));
    } else {
    }
  } else {
  }
  tmp___15 = gdth_internal_cmd(ha, 9, 12, 0U, 1ULL, 0ULL);
  if (tmp___15 != 0) {
    tmp___14 = gdth_internal_cmd(ha, 9, 13, 0U, 0ULL, 0ULL);
    if (tmp___14 != 0) {
      ha->cache_feat = (u16 )((int )ha->cache_feat | (int )((unsigned short )ha->info));
    } else {
    }
  } else {
  }
  if (reserve_mode != 0) {
    gdth_internal_cmd(ha, 3, 16, reserve_mode == 1 ? 1U : 3U, 0ULL, 0ULL);
  } else {
  }
  i = 0U;
  goto ldv_31399;
  ldv_31398: ;
  if (((reserve_list[(int )i] == (int )ha->hanum && reserve_list[(int )i + 1] < (int )ha->bus_cnt) && reserve_list[(int )i + 2] < (int )ha->tid_cnt) && reserve_list[(int )i + 3] <= 7) {
    tmp___16 = gdth_internal_cmd(ha, 3, 14, 0U, (u64 )reserve_list[(int )i + 1], (u64 )(reserve_list[(int )i + 2] | (reserve_list[(int )i + 3] << 8)));
    if (tmp___16 == 0) {
      printk("GDT-HA %d: Error raw service (RESERVE, code %d)\n", (int )ha->hanum,
             (int )ha->status);
    } else {
    }
  } else {
  }
  i = (unsigned int )i + 4U;
  ldv_31399: ;
  if ((unsigned int )i <= 39U) {
    goto ldv_31398;
  } else {
  }
  oemstr = (gdth_oem_str_ioctl *)ha->pscratch;
  oemstr->params.ctl_version = 1U;
  oemstr->params.buffer_size = 716U;
  tmp___17 = gdth_internal_cmd(ha, 9, 5, 132U, 65535ULL, 748ULL);
  if (tmp___17 != 0) {
    printk("GDT-HA %d: Vendor: %s Name: %s\n", (int )ha->hanum, (u8 *)(& oemstr->text.oem_company_name),
           (char *)(& ha->binfo.type_string));
    strlcpy((char *)(& ha->oem_name), (char const *)(& oemstr->text.scsi_host_drive_inquiry_vendor_id),
            8UL);
  } else {
    printk("GDT-HA %d: Name: %s\n", (int )ha->hanum, (char *)(& ha->binfo.type_string));
    if ((unsigned int )ha->oem_id == 32768U) {
      strlcpy((char *)(& ha->oem_name), "Intel  ", 8UL);
    } else {
      strlcpy((char *)(& ha->oem_name), "ICP    ", 8UL);
    }
  }
  i = 0U;
  goto ldv_31402;
  ldv_31401:
  gdth_analyse_hdrive(ha, (int )i);
  i = (u16 )((int )i + 1);
  ldv_31402: ;
  if ((int )i < (int )cdev_cnt) {
    goto ldv_31401;
  } else {
  }
  return (1);
}
}
static int gdth_analyse_hdrive(gdth_ha_str *ha , u16 hdrive )
{
  u32 drv_cyls ;
  int drv_hds ;
  int drv_secs ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned int )hdrive > 254U) {
    return (0);
  } else {
  }
  tmp = gdth_internal_cmd(ha, 9, 3, (u32 )hdrive, 0ULL, 0ULL);
  if (tmp == 0) {
    return (0);
  } else {
  }
  ha->hdr[(int )hdrive].present = 1U;
  ha->hdr[(int )hdrive].size = (u64 )ha->info;
  ha->hdr[(int )hdrive].size = ha->hdr[(int )hdrive].size & 0xffffffffffffffe0ULL;
  if (ha->info2 == 0U) {
    gdth_eval_mapping((u32 )ha->hdr[(int )hdrive].size, & drv_cyls, & drv_hds, & drv_secs);
  } else {
    drv_hds = (int )ha->info2 & 255;
    drv_secs = (int )(ha->info2 >> 8) & 255;
    drv_cyls = ((unsigned int )ha->hdr[(int )hdrive].size / (unsigned int )drv_hds) / (unsigned int )drv_secs;
  }
  ha->hdr[(int )hdrive].heads = (unsigned char )drv_hds;
  ha->hdr[(int )hdrive].secs = (unsigned char )drv_secs;
  ha->hdr[(int )hdrive].size = (u64 )((drv_cyls * (u32 )drv_hds) * (u32 )drv_secs);
  if (((int )ha->cache_feat & 512) != 0) {
    tmp___0 = gdth_internal_cmd(ha, 9, 30, (u32 )hdrive, 0ULL, 0ULL);
    if (tmp___0 != 0 && ha->info2 != 0U) {
      ha->hdr[(int )hdrive].size = ((unsigned long long )ha->info2 << 32) | (unsigned long long )ha->info;
    } else {
    }
  } else {
  }
  tmp___1 = gdth_internal_cmd(ha, 9, 9, (u32 )hdrive, 0ULL, 0ULL);
  if (tmp___1 != 0) {
    ha->hdr[(int )hdrive].devtype = (unsigned short )ha->info;
  } else {
  }
  tmp___2 = gdth_internal_cmd(ha, 9, 22, (u32 )hdrive, 0ULL, 0ULL);
  if (tmp___2 != 0) {
    if (shared_access == 0) {
      ha->hdr[(int )hdrive].cluster_type = (unsigned char )ha->info;
    } else {
    }
  } else {
  }
  tmp___3 = gdth_internal_cmd(ha, 9, 23, (u32 )hdrive, 0ULL, 0ULL);
  if (tmp___3 != 0) {
    ha->hdr[(int )hdrive].rw_attribs = (unsigned char )ha->info;
  } else {
  }
  return (1);
}
}
static void gdth_putq(gdth_ha_str *ha , Scsi_Cmnd *scp , u8 priority )
{
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  register Scsi_Cmnd *pscp ;
  register Scsi_Cmnd *nscp ;
  unsigned long flags ;
  raw_spinlock_t *tmp___0 ;
  struct gdth_cmndinfo *tmp___1 ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  tmp___0 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  if (cmndinfo->internal_command == 0) {
    cmndinfo->priority = priority;
  } else {
  }
  if ((unsigned long )ha->req_first == (unsigned long )((Scsi_Cmnd *)0)) {
    ha->req_first = scp;
    scp->SCp.ptr = 0;
  } else {
    pscp = ha->req_first;
    nscp = (Scsi_Cmnd *)pscp->SCp.ptr;
    goto ldv_31424;
    ldv_31423:
    pscp = nscp;
    nscp = (Scsi_Cmnd *)pscp->SCp.ptr;
    ldv_31424: ;
    if ((unsigned long )nscp != (unsigned long )((Scsi_Cmnd *)0)) {
      tmp___1 = gdth_cmnd_priv(nscp);
      if ((int )tmp___1->priority <= (int )priority) {
        goto ldv_31423;
      } else {
        goto ldv_31425;
      }
    } else {
    }
    ldv_31425:
    pscp->SCp.ptr = (char *)scp;
    scp->SCp.ptr = (char *)nscp;
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  flags = 0UL;
  nscp = ha->req_first;
  goto ldv_31427;
  ldv_31426:
  flags = flags + 1UL;
  nscp = (Scsi_Cmnd *)nscp->SCp.ptr;
  ldv_31427: ;
  if ((unsigned long )nscp != (unsigned long )((Scsi_Cmnd *)0)) {
    goto ldv_31426;
  } else {
  }
  if ((unsigned long )max_rq < flags) {
    max_rq = (u32 )flags;
  } else {
  }
  return;
}
}
static void gdth_next(gdth_ha_str *ha )
{
  register Scsi_Cmnd *pscp ;
  register Scsi_Cmnd *nscp ;
  u8 b ;
  u8 t ;
  u8 l ;
  u8 firsttime ;
  u8 this_cmd ;
  u8 next_cmd ;
  unsigned long flags ;
  int cmd_index ;
  raw_spinlock_t *tmp ;
  u16 tmp___0 ;
  struct gdth_cmndinfo *nscp_cmndinfo ;
  struct gdth_cmndinfo *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct gdth_cmndinfo *tmp___5 ;
  int tmp___6 ;
  {
  flags = 0UL;
  if ((unsigned int )gdth_polling == 0U) {
    tmp = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  tmp___0 = 0U;
  ha->cmd_offs_dpmem = tmp___0;
  ha->cmd_cnt = tmp___0;
  firsttime = 1U;
  this_cmd = firsttime;
  next_cmd = (unsigned int )gdth_polling == 0U;
  cmd_index = 0;
  pscp = ha->req_first;
  nscp = pscp;
  goto ldv_31471;
  ldv_31470:
  tmp___1 = gdth_cmnd_priv(nscp);
  nscp_cmndinfo = tmp___1;
  if ((unsigned long )nscp != (unsigned long )pscp && (unsigned long )((Scsi_Cmnd *)pscp->SCp.ptr) != (unsigned long )nscp) {
    pscp = (Scsi_Cmnd *)pscp->SCp.ptr;
  } else {
  }
  if (nscp_cmndinfo->internal_command == 0) {
    b = (u8 )(nscp->device)->channel;
    t = (u8 )(nscp->device)->id;
    l = (u8 )(nscp->device)->lun;
    if ((unsigned int )nscp_cmndinfo->priority > 31U) {
      if (((int )ha->virt_bus != (int )b && (unsigned int )ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].lock != 0U) || (((int )ha->virt_bus == (int )b && (unsigned int )t != 255U) && (unsigned int )ha->hdr[(int )t].lock != 0U)) {
        goto ldv_31446;
      } else {
      }
    } else {
    }
  } else {
    l = 0U;
    t = l;
    b = t;
  }
  if ((unsigned int )firsttime != 0U) {
    tmp___3 = gdth_test_busy(ha);
    if (tmp___3 != 0) {
      if ((unsigned int )gdth_polling == 0U) {
        spin_unlock_irqrestore(& ha->smp_lock, flags);
        return;
      } else {
      }
      goto ldv_31448;
      ldv_31447:
      gdth_delay(1);
      ldv_31448:
      tmp___2 = gdth_test_busy(ha);
      if (tmp___2 != 0) {
        goto ldv_31447;
      } else {
      }
    } else {
    }
    firsttime = 0U;
  } else {
  }
  if (nscp_cmndinfo->internal_command == 0) {
    if (nscp_cmndinfo->phase == -1) {
      nscp_cmndinfo->phase = 9;
      if ((unsigned int )*(nscp->cmnd) == 0U) {
        if (((int )ha->scan_mode & 15) == 0) {
          if (((unsigned int )b == 0U && (unsigned int )t == 0U) && (unsigned int )l == 0U) {
            ha->scan_mode = (u8 )((unsigned int )ha->scan_mode | 1U);
          } else {
          }
        } else
        if (((int )ha->scan_mode & 15) == 1) {
          if ((unsigned int )b == 0U && (((unsigned int )t == 0U && (unsigned int )l == 1U) || ((unsigned int )t == 1U && (unsigned int )l == 0U))) {
            nscp_cmndinfo->OpCode = 19;
            nscp_cmndinfo->phase = ((int )ha->scan_mode & 16) != 0 ? 259 : 3;
            ha->scan_mode = 18U;
          } else {
            ha->scan_mode = (unsigned int )ha->scan_mode & 16U;
          }
        } else
        if ((unsigned int )ha->scan_mode == 18U) {
          if ((int )ha->bus_cnt == (int )b && (int )t == (int )ha->tid_cnt + -1) {
            nscp_cmndinfo->phase = 3;
            nscp_cmndinfo->OpCode = 20;
            ha->scan_mode = (unsigned int )ha->scan_mode & 16U;
          } else {
          }
        } else {
        }
      } else {
      }
      if (((((int )ha->virt_bus == (int )b && (unsigned int )*(nscp->cmnd) != 18U) && (unsigned int )*(nscp->cmnd) != 37U) && (unsigned int )*(nscp->cmnd) != 26U) && (int )ha->hdr[(int )t].cluster_type & 1) {
        nscp_cmndinfo->OpCode = 22;
      } else {
      }
    } else {
    }
  } else {
  }
  if (nscp_cmndinfo->OpCode != -1) {
    if ((nscp_cmndinfo->phase & 255) == 9) {
      cmd_index = gdth_fill_cache_cmd(ha, nscp, (int )t);
      if (cmd_index == 0) {
        this_cmd = 0U;
      } else {
      }
      next_cmd = 0U;
    } else
    if ((nscp_cmndinfo->phase & 255) == 3) {
      cmd_index = gdth_fill_raw_cmd(ha, nscp, (int )((int )ha->virt_bus < (int )b ? (unsigned int )b + 255U : b));
      if (cmd_index == 0) {
        this_cmd = 0U;
      } else {
      }
      next_cmd = 0U;
    } else {
      memset((void *)nscp->sense_buffer, 0, 16UL);
      *(nscp->sense_buffer) = 112U;
      *(nscp->sense_buffer + 2UL) = 2U;
      nscp->result = 2;
      if ((int )nscp_cmndinfo->wait_for_completion == 0) {
        nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
      } else {
        gdth_scsi_done(nscp);
      }
    }
  } else {
    tmp___5 = gdth_cmnd_priv(nscp);
    if (tmp___5->internal_command != 0) {
      cmd_index = gdth_special_cmd(ha, nscp);
      if (cmd_index == 0) {
        this_cmd = 0U;
      } else {
      }
      next_cmd = 0U;
    } else
    if ((int )ha->virt_bus != (int )b) {
      if ((unsigned int )ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[(int )t] > 1U) {
        this_cmd = 0U;
      } else {
        cmd_index = gdth_fill_raw_cmd(ha, nscp, (int )((int )ha->virt_bus < (int )b ? (unsigned int )b + 255U : b));
        if (cmd_index == 0) {
          this_cmd = 0U;
        } else {
          ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[(int )t] = (u8 )((int )ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[(int )t] + 1);
        }
      }
    } else
    if (((unsigned int )t == 255U || (unsigned int )ha->hdr[(int )t].present == 0U) || (unsigned int )l != 0U) {
      nscp->result = 262144;
      if ((int )nscp_cmndinfo->wait_for_completion == 0) {
        nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
      } else {
        gdth_scsi_done(nscp);
      }
    } else {
      switch ((int )*(nscp->cmnd)) {
      case 0: ;
      case 18: ;
      case 3: ;
      case 37: ;
      case 47: ;
      case 27: ;
      case 26: ;
      case 158: ;
      if ((unsigned int )ha->hdr[(int )t].media_changed != 0U && (unsigned int )*(nscp->cmnd) != 18U) {
        ha->hdr[(int )t].media_changed = 0U;
        memset((void *)nscp->sense_buffer, 0, 16UL);
        *(nscp->sense_buffer) = 112U;
        *(nscp->sense_buffer + 2UL) = 6U;
        nscp->result = 2;
        if ((int )nscp_cmndinfo->wait_for_completion == 0) {
          nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
        } else {
          gdth_scsi_done(nscp);
        }
      } else {
        tmp___4 = gdth_internal_cache_cmd(ha, nscp);
        if (tmp___4 != 0) {
          gdth_scsi_done(nscp);
        } else {
        }
      }
      goto ldv_31458;
      case 30: ;
      if ((int )*(nscp->cmnd + 4UL) & 1 && ((int )ha->hdr[(int )t].devtype & 1) == 0) {
        nscp->result = 0;
        *(nscp->sense_buffer) = 0U;
        if ((int )nscp_cmndinfo->wait_for_completion == 0) {
          nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
        } else {
          gdth_scsi_done(nscp);
        }
      } else {
        *(nscp->cmnd + 3UL) = (unsigned int )((unsigned char )ha->hdr[(int )t].devtype) & 1U;
        cmd_index = gdth_fill_cache_cmd(ha, nscp, (int )t);
        if (cmd_index == 0) {
          this_cmd = 0U;
        } else {
        }
      }
      goto ldv_31458;
      case 22: ;
      case 23:
      cmd_index = gdth_fill_cache_cmd(ha, nscp, (int )t);
      if (cmd_index == 0) {
        this_cmd = 0U;
      } else {
      }
      goto ldv_31458;
      case 8: ;
      case 10: ;
      case 40: ;
      case 42: ;
      case 136: ;
      case 138: ;
      if ((unsigned int )ha->hdr[(int )t].media_changed != 0U) {
        ha->hdr[(int )t].media_changed = 0U;
        memset((void *)nscp->sense_buffer, 0, 16UL);
        *(nscp->sense_buffer) = 112U;
        *(nscp->sense_buffer + 2UL) = 6U;
        nscp->result = 2;
        if ((int )nscp_cmndinfo->wait_for_completion == 0) {
          nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
        } else {
          gdth_scsi_done(nscp);
        }
      } else {
        cmd_index = gdth_fill_cache_cmd(ha, nscp, (int )t);
        if (cmd_index == 0) {
          this_cmd = 0U;
        } else {
        }
      }
      goto ldv_31458;
      default:
      printk("GDT-HA %d: Unknown SCSI command 0x%x to cache service !\n", (int )ha->hanum,
             (int )*(nscp->cmnd));
      nscp->result = 327680;
      if ((int )nscp_cmndinfo->wait_for_completion == 0) {
        nscp_cmndinfo->wait_for_completion = nscp_cmndinfo->wait_for_completion + (int volatile )1;
      } else {
        gdth_scsi_done(nscp);
      }
      goto ldv_31458;
      }
      ldv_31458: ;
    }
  }
  if ((unsigned int )this_cmd == 0U) {
    goto ldv_31469;
  } else {
  }
  if ((unsigned long )ha->req_first == (unsigned long )nscp) {
    pscp = (Scsi_Cmnd *)nscp->SCp.ptr;
    ha->req_first = pscp;
  } else {
    pscp->SCp.ptr = nscp->SCp.ptr;
  }
  if ((unsigned int )next_cmd == 0U) {
    goto ldv_31469;
  } else {
  }
  ldv_31446:
  nscp = (Scsi_Cmnd *)nscp->SCp.ptr;
  ldv_31471: ;
  if ((unsigned long )nscp != (unsigned long )((Scsi_Cmnd *)0)) {
    goto ldv_31470;
  } else {
  }
  ldv_31469: ;
  if ((unsigned int )ha->cmd_cnt != 0U) {
    gdth_release_event(ha);
  } else {
  }
  if ((unsigned int )gdth_polling == 0U) {
    spin_unlock_irqrestore(& ha->smp_lock, flags);
  } else {
  }
  if ((unsigned int )gdth_polling != 0U && (unsigned int )ha->cmd_cnt != 0U) {
    tmp___6 = gdth_wait(ha, cmd_index, 10000U);
    if (tmp___6 == 0) {
      printk("GDT-HA %d: Command %d timed out !\n", (int )ha->hanum, cmd_index);
    } else {
    }
  } else {
  }
  return;
}
}
static void gdth_copy_internal_data(gdth_ha_str *ha , Scsi_Cmnd *scp , char *buffer ,
                                    u16 count )
{
  u16 cpcount ;
  u16 i ;
  u16 max_sg___0 ;
  unsigned int tmp ;
  u16 cpsum ;
  u16 cpnow ;
  struct scatterlist *sl ;
  char *address ;
  u16 __min1 ;
  u16 __min2 ;
  unsigned int tmp___0 ;
  unsigned long flags ;
  struct page *tmp___1 ;
  struct page *tmp___2 ;
  void *tmp___3 ;
  size_t __len ;
  void *__ret ;
  struct page *tmp___4 ;
  int tmp___5 ;
  int __ret_warn_on ;
  long tmp___6 ;
  {
  tmp = scsi_sg_count(scp);
  max_sg___0 = (u16 )tmp;
  __min1 = count;
  tmp___0 = scsi_bufflen(scp);
  __min2 = (u16 )tmp___0;
  cpcount = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  if ((unsigned int )cpcount != 0U) {
    cpsum = 0U;
    i = 0U;
    sl = scsi_sglist(scp);
    goto ldv_31500;
    ldv_31499:
    cpnow = (unsigned short )sl->length;
    if ((int )cpsum + (int )cpnow > (int )cpcount) {
      cpnow = (int )cpcount - (int )cpsum;
    } else {
    }
    cpsum = (int )cpsum + (int )cpnow;
    tmp___1 = sg_page(sl);
    if ((unsigned long )tmp___1 == (unsigned long )((struct page *)0)) {
      printk("GDT-HA %d: invalid sc/gt element in gdth_copy_internal_data()\n", (int )ha->hanum);
      return;
    } else {
    }
    flags = __raw_local_irq_save();
    trace_hardirqs_off();
    tmp___2 = sg_page(sl);
    tmp___3 = kmap_atomic(tmp___2, 5);
    address = (char *)tmp___3 + (unsigned long )sl->offset;
    __len = (size_t )cpnow;
    __ret = memcpy((void *)address, (void const *)buffer, __len);
    tmp___4 = sg_page(sl);
    flush_dcache_page(tmp___4);
    pagefault_enable();
    tmp___5 = raw_irqs_disabled_flags(flags);
    if (tmp___5 != 0) {
      raw_local_irq_restore(flags);
      trace_hardirqs_off();
    } else {
      trace_hardirqs_on();
      raw_local_irq_restore(flags);
    }
    if ((int )cpsum == (int )cpcount) {
      goto ldv_31498;
    } else {
    }
    buffer = buffer + (unsigned long )cpnow;
    i = (u16 )((int )i + 1);
    sl = sg_next(sl);
    ldv_31500: ;
    if ((int )i < (int )max_sg___0) {
      goto ldv_31499;
    } else {
    }
    ldv_31498: ;
  } else
  if ((unsigned int )count != 0U) {
    printk("GDT-HA %d: SCSI command with no buffers but data transfer expected!\n",
           (int )ha->hanum);
    __ret_warn_on = 1;
    tmp___6 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___6 != 0L) {
      warn_slowpath_null("/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared",
                         2331);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
  } else {
  }
  return;
}
}
static int gdth_internal_cache_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp )
{
  u8 t ;
  gdth_inq_data inq ;
  gdth_rdcap_data rdc ;
  gdth_sense_data sd ;
  gdth_modep_data mpd ;
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  __u32 tmp___0 ;
  gdth_rdcap16_data rdc16 ;
  __u64 tmp___1 ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  t = (u8 )(scp->device)->id;
  scp->result = 0;
  *(scp->sense_buffer) = 0U;
  switch ((int )*(scp->cmnd)) {
  case 0: ;
  case 47: ;
  case 27: ;
  goto ldv_31516;
  case 18:
  inq.type_qual = ((int )ha->hdr[(int )t].devtype & 4) != 0 ? 5U : 0U;
  inq.modif_rmb = 0U;
  if ((int )ha->hdr[(int )t].devtype & 1 || (int )ha->hdr[(int )t].cluster_type & 1) {
    inq.modif_rmb = 128U;
  } else {
  }
  inq.version = 2U;
  inq.resp_aenc = 2U;
  inq.add_length = 32U;
  strcpy((char *)(& inq.vendor), (char const *)(& ha->oem_name));
  sprintf((char *)(& inq.product), "Host Drive  #%02d", (int )t);
  strcpy((char *)(& inq.revision), "   ");
  gdth_copy_internal_data(ha, scp, (char *)(& inq), 36);
  goto ldv_31516;
  case 3:
  sd.errorcode = 112U;
  sd.segno = 0U;
  sd.key = 0U;
  sd.info = 0U;
  sd.add_length = 0U;
  gdth_copy_internal_data(ha, scp, (char *)(& sd), 18);
  goto ldv_31516;
  case 26:
  memset((void *)(& mpd), 0, 12UL);
  mpd.hd.data_length = 12U;
  mpd.hd.dev_par = ((int )ha->hdr[(int )t].devtype & 2) != 0 ? 128U : 0U;
  mpd.hd.bd_length = 8U;
  mpd.bd.block_length[0] = 0U;
  mpd.bd.block_length[1] = 2U;
  mpd.bd.block_length[2] = 0U;
  gdth_copy_internal_data(ha, scp, (char *)(& mpd), 12);
  goto ldv_31516;
  case 37: ;
  if (ha->hdr[(int )t].size > 4294967295ULL) {
    rdc.last_block_no = 4294967295U;
  } else {
    tmp___0 = __fswab32((__u32 )ha->hdr[(int )t].size - 1U);
    rdc.last_block_no = tmp___0;
  }
  rdc.block_length = 131072U;
  gdth_copy_internal_data(ha, scp, (char *)(& rdc), 8);
  goto ldv_31516;
  case 158: ;
  if (((int )*(scp->cmnd + 1UL) & 31) == 16 && ((int )ha->cache_feat & 512) != 0) {
    tmp___1 = __fswab64(ha->hdr[(int )t].size - 1ULL);
    rdc16.last_block_no = tmp___1;
    rdc16.block_length = 131072U;
    gdth_copy_internal_data(ha, scp, (char *)(& rdc16), 12);
  } else {
    scp->result = 327680;
  }
  goto ldv_31516;
  default: ;
  goto ldv_31516;
  }
  ldv_31516: ;
  if ((int )cmndinfo->wait_for_completion == 0) {
    cmndinfo->wait_for_completion = cmndinfo->wait_for_completion + (int volatile )1;
  } else {
    return (1);
  }
  return (0);
}
}
static int gdth_fill_cache_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp , u16 hdrive )
{
  register gdth_cmd_str *cmdp ;
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  u32 cnt ;
  u32 blockcnt ;
  u64 no ;
  u64 blockno ;
  int i ;
  int cmd_index ;
  int read_write ;
  int sgcnt ;
  int mode64 ;
  size_t __len ;
  void *__ret ;
  __u64 tmp___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  __u32 tmp___1 ;
  size_t __len___1 ;
  void *__ret___1 ;
  __u32 tmp___2 ;
  size_t __len___2 ;
  void *__ret___2 ;
  __u16 tmp___3 ;
  size_t __len___3 ;
  void *__ret___3 ;
  __u32 tmp___4 ;
  unsigned int tmp___5 ;
  struct scatterlist *tmp___6 ;
  struct scatterlist *sl ;
  struct scatterlist *sl___0 ;
  unsigned int tmp___7 ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  cmdp = ha->pccb;
  if ((unsigned int )ha->type == 2U && (unsigned int )ha->cmd_cnt != 0U) {
    return (0);
  } else {
  }
  mode64 = ((int )ha->cache_feat & 512) != 0;
  cmdp->Service = 9U;
  cmdp->RequestBuffer = (void *)scp;
  cmd_index = gdth_get_cmd_index(ha);
  if (cmd_index == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->cmd_cnt == 0U) {
    gdth_set_sema0(ha);
  } else {
  }
  read_write = 0;
  if (cmndinfo->OpCode != -1) {
    cmdp->OpCode = (u16 )cmndinfo->OpCode;
  } else
  if ((unsigned int )*(scp->cmnd) == 22U) {
    cmdp->OpCode = 20U;
  } else
  if ((unsigned int )*(scp->cmnd) == 23U) {
    cmdp->OpCode = 21U;
  } else
  if ((unsigned int )*(scp->cmnd) == 30U) {
    if ((int )*(scp->cmnd + 4UL) & 1) {
      cmdp->OpCode = 10U;
    } else
    if ((int )*(scp->cmnd + 3UL) & 1) {
      cmdp->OpCode = 11U;
    } else {
      cmdp->OpCode = 4U;
    }
  } else
  if ((((unsigned int )*(scp->cmnd) == 10U || (unsigned int )*(scp->cmnd) == 42U) || (unsigned int )*(scp->cmnd) == 170U) || (unsigned int )*(scp->cmnd) == 138U) {
    read_write = 1;
    if ((unsigned int )gdth_write_through != 0U || ((int )ha->hdr[(int )hdrive].rw_attribs & 1 && ((int )ha->cache_feat & 256) != 0)) {
      cmdp->OpCode = 16U;
    } else {
      cmdp->OpCode = 2U;
    }
  } else {
    read_write = 2;
    cmdp->OpCode = 1U;
  }
  cmdp->BoardNode = 0U;
  if (mode64 != 0) {
    cmdp->u.cache64.DeviceNo = hdrive;
    cmdp->u.cache64.BlockNo = 1ULL;
    cmdp->u.cache64.sg_canz = 0U;
  } else {
    cmdp->u.cache.DeviceNo = hdrive;
    cmdp->u.cache.BlockNo = 1U;
    cmdp->u.cache.sg_canz = 0U;
  }
  if (read_write != 0) {
    if ((unsigned int )scp->cmd_len == 16U) {
      __len = 8UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)(& no), (void const *)scp->cmnd + 2U, __len);
      } else {
        __ret = memcpy((void *)(& no), (void const *)scp->cmnd + 2U, __len);
      }
      tmp___0 = __fswab64(no);
      blockno = tmp___0;
      __len___0 = 4UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)(& cnt), (void const *)scp->cmnd + 10U, __len___0);
      } else {
        __ret___0 = memcpy((void *)(& cnt), (void const *)scp->cmnd + 10U,
                                     __len___0);
      }
      tmp___1 = __fswab32(cnt);
      blockcnt = tmp___1;
    } else
    if ((unsigned int )scp->cmd_len == 10U) {
      __len___1 = 4UL;
      if (__len___1 > 63UL) {
        __ret___1 = memcpy((void *)(& no), (void const *)scp->cmnd + 2U, __len___1);
      } else {
        __ret___1 = memcpy((void *)(& no), (void const *)scp->cmnd + 2U,
                                     __len___1);
      }
      tmp___2 = __fswab32((unsigned int )no);
      blockno = (u64 )tmp___2;
      __len___2 = 2UL;
      if (__len___2 > 63UL) {
        __ret___2 = memcpy((void *)(& cnt), (void const *)scp->cmnd + 7U, __len___2);
      } else {
        __ret___2 = memcpy((void *)(& cnt), (void const *)scp->cmnd + 7U,
                                     __len___2);
      }
      tmp___3 = __fswab16((int )((unsigned short )cnt));
      blockcnt = (u32 )tmp___3;
    } else {
      __len___3 = 4UL;
      if (__len___3 > 63UL) {
        __ret___3 = memcpy((void *)(& no), (void const *)scp->cmnd, __len___3);
      } else {
        __ret___3 = memcpy((void *)(& no), (void const *)scp->cmnd, __len___3);
      }
      tmp___4 = __fswab32((unsigned int )no);
      blockno = (u64 )tmp___4 & 2097151ULL;
      blockcnt = (unsigned int )*(scp->cmnd + 4UL) != 0U ? (u32 )*(scp->cmnd + 4UL) : 256U;
    }
    if (mode64 != 0) {
      cmdp->u.cache64.BlockNo = blockno;
      cmdp->u.cache64.BlockCnt = blockcnt;
    } else {
      cmdp->u.cache.BlockNo = (unsigned int )blockno;
      cmdp->u.cache.BlockCnt = blockcnt;
    }
    tmp___7 = scsi_bufflen(scp);
    if (tmp___7 != 0U) {
      cmndinfo->dma_dir = read_write == 1 ? 1 : 2;
      tmp___5 = scsi_sg_count(scp);
      tmp___6 = scsi_sglist(scp);
      sgcnt = pci_map_sg(ha->pdev, tmp___6, (int )tmp___5, (int )cmndinfo->dma_dir);
      if (mode64 != 0) {
        cmdp->u.cache64.DestAddr = 0xffffffffffffffffULL;
        cmdp->u.cache64.sg_canz = (u32 )sgcnt;
        i = 0;
        sl = scsi_sglist(scp);
        goto ldv_31557;
        ldv_31556:
        cmdp->u.cache64.sg_lst[i].sg_ptr = sl->dma_address;
        cmdp->u.cache64.sg_lst[i].sg_len = sl->dma_length;
        i = i + 1;
        sl = sg_next(sl);
        ldv_31557: ;
        if (i < sgcnt) {
          goto ldv_31556;
        } else {
        }
      } else {
        cmdp->u.cache.DestAddr = 4294967295U;
        cmdp->u.cache.sg_canz = (u32 )sgcnt;
        i = 0;
        sl___0 = scsi_sglist(scp);
        goto ldv_31561;
        ldv_31560:
        cmdp->u.cache.sg_lst[i].sg_ptr = (u32 )sl___0->dma_address;
        cmdp->u.cache.sg_lst[i].sg_len = sl___0->dma_length;
        i = i + 1;
        sl___0 = sg_next(sl___0);
        ldv_31561: ;
        if (i < sgcnt) {
          goto ldv_31560;
        } else {
        }
      }
      if ((u32 )sgcnt > max_sg) {
        max_sg = (unsigned int )sgcnt;
      } else {
      }
    } else {
    }
  } else {
  }
  if (mode64 != 0) {
    ha->cmd_len = (unsigned int )((u16 )cmdp->u.cache64.sg_canz) * 12U + 36U;
  } else {
    ha->cmd_len = (unsigned int )((u16 )cmdp->u.cache.sg_canz) * 8U + 28U;
  }
  if (((int )ha->cmd_len & 3) != 0) {
    ha->cmd_len = ((unsigned int )ha->cmd_len & 65532U) + 4U;
  } else {
  }
  if ((unsigned int )ha->cmd_cnt != 0U) {
    if (((int )ha->cmd_offs_dpmem + (int )ha->cmd_len) + 560 > (int )ha->ic_all_size) {
      ha->cmd_tab[cmd_index + -2].cmnd = 0xffffffffffffffffUL;
      return (0);
    } else {
    }
  } else {
  }
  gdth_copy_command(ha);
  return (cmd_index);
}
}
static int gdth_fill_raw_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp , u8 b )
{
  register gdth_cmd_str *cmdp ;
  u16 i ;
  dma_addr_t sense_paddr ;
  int cmd_index ;
  int sgcnt ;
  int mode64 ;
  u8 t ;
  u8 l ;
  struct page *page ;
  unsigned long offset ;
  struct gdth_cmndinfo *cmndinfo ;
  unsigned long tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned int tmp___0 ;
  struct scatterlist *tmp___1 ;
  struct scatterlist *sl ;
  struct scatterlist *sl___0 ;
  unsigned int tmp___2 ;
  {
  t = (u8 )(scp->device)->id;
  l = (u8 )(scp->device)->lun;
  cmdp = ha->pccb;
  if ((unsigned int )ha->type == 2U && (unsigned int )ha->cmd_cnt != 0U) {
    return (0);
  } else {
  }
  mode64 = ((int )ha->raw_feat & 512) != 0;
  cmdp->Service = 3U;
  cmdp->RequestBuffer = (void *)scp;
  cmd_index = gdth_get_cmd_index(ha);
  if (cmd_index == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->cmd_cnt == 0U) {
    gdth_set_sema0(ha);
  } else {
  }
  cmndinfo = gdth_cmnd_priv(scp);
  if (cmndinfo->OpCode != -1) {
    cmdp->OpCode = (u16 )cmndinfo->OpCode;
    cmdp->BoardNode = 0U;
    if (mode64 != 0) {
      cmdp->u.raw64.direction = (u32 )(cmndinfo->phase >> 8);
      ha->cmd_len = 76U;
    } else {
      cmdp->u.raw.direction = (u32 )(cmndinfo->phase >> 8);
      ha->cmd_len = 68U;
    }
  } else {
    tmp = __phys_addr((unsigned long )scp->sense_buffer);
    page = 0xffffea0000000000UL + (tmp >> 12);
    offset = (unsigned long )scp->sense_buffer & 4095UL;
    sense_paddr = pci_map_page(ha->pdev, page, offset, 16UL, 2);
    cmndinfo->sense_paddr = sense_paddr;
    cmdp->OpCode = 2U;
    cmdp->BoardNode = 0U;
    if (mode64 != 0) {
      cmdp->u.raw64.reserved = 0U;
      cmdp->u.raw64.mdisc_time = 0U;
      cmdp->u.raw64.mcon_time = 0U;
      cmdp->u.raw64.clen = (u32 )scp->cmd_len;
      cmdp->u.raw64.target = t;
      cmdp->u.raw64.lun = l;
      cmdp->u.raw64.bus = b;
      cmdp->u.raw64.priority = 0U;
      cmdp->u.raw64.sdlen = scsi_bufflen(scp);
      cmdp->u.raw64.sense_len = 16U;
      cmdp->u.raw64.sense_data = sense_paddr;
      cmdp->u.raw64.direction = (unsigned int )gdth_direction_tab[(int )*(scp->cmnd)] == 2U ? 0U : 16777216U;
      __len = 16UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)(& cmdp->u.raw64.cmd), (void const *)scp->cmnd,
                         __len);
      } else {
        __ret = memcpy((void *)(& cmdp->u.raw64.cmd), (void const *)scp->cmnd,
                                 __len);
      }
      cmdp->u.raw64.sg_ranz = 0U;
    } else {
      cmdp->u.raw.reserved = 0U;
      cmdp->u.raw.mdisc_time = 0U;
      cmdp->u.raw.mcon_time = 0U;
      cmdp->u.raw.clen = (u32 )scp->cmd_len;
      cmdp->u.raw.target = t;
      cmdp->u.raw.lun = l;
      cmdp->u.raw.bus = b;
      cmdp->u.raw.priority = 0U;
      cmdp->u.raw.link_p = 0U;
      cmdp->u.raw.sdlen = scsi_bufflen(scp);
      cmdp->u.raw.sense_len = 16U;
      cmdp->u.raw.sense_data = (u32 )sense_paddr;
      cmdp->u.raw.direction = (unsigned int )gdth_direction_tab[(int )*(scp->cmnd)] == 2U ? 0U : 16777216U;
      __len___0 = 12UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)(& cmdp->u.raw.cmd), (void const *)scp->cmnd,
                             __len___0);
      } else {
        __ret___0 = memcpy((void *)(& cmdp->u.raw.cmd), (void const *)scp->cmnd,
                                     __len___0);
      }
      cmdp->u.raw.sg_ranz = 0U;
    }
    tmp___2 = scsi_bufflen(scp);
    if (tmp___2 != 0U) {
      cmndinfo->dma_dir = 0;
      tmp___0 = scsi_sg_count(scp);
      tmp___1 = scsi_sglist(scp);
      sgcnt = pci_map_sg(ha->pdev, tmp___1, (int )tmp___0, (int )cmndinfo->dma_dir);
      if (mode64 != 0) {
        cmdp->u.raw64.sdata = 0xffffffffffffffffULL;
        cmdp->u.raw64.sg_ranz = (u32 )sgcnt;
        i = 0U;
        sl = scsi_sglist(scp);
        goto ldv_31587;
        ldv_31586:
        cmdp->u.raw64.sg_lst[(int )i].sg_ptr = sl->dma_address;
        cmdp->u.raw64.sg_lst[(int )i].sg_len = sl->dma_length;
        i = (u16 )((int )i + 1);
        sl = sg_next(sl);
        ldv_31587: ;
        if ((int )i < sgcnt) {
          goto ldv_31586;
        } else {
        }
      } else {
        cmdp->u.raw.sdata = 4294967295U;
        cmdp->u.raw.sg_ranz = (u32 )sgcnt;
        i = 0U;
        sl___0 = scsi_sglist(scp);
        goto ldv_31591;
        ldv_31590:
        cmdp->u.raw.sg_lst[(int )i].sg_ptr = (u32 )sl___0->dma_address;
        cmdp->u.raw.sg_lst[(int )i].sg_len = sl___0->dma_length;
        i = (u16 )((int )i + 1);
        sl___0 = sg_next(sl___0);
        ldv_31591: ;
        if ((int )i < sgcnt) {
          goto ldv_31590;
        } else {
        }
      }
      if ((u32 )sgcnt > max_sg) {
        max_sg = (u32 )sgcnt;
      } else {
      }
    } else {
    }
    if (mode64 != 0) {
      ha->cmd_len = (unsigned int )((u16 )cmdp->u.raw64.sg_ranz) * 12U + 76U;
    } else {
      ha->cmd_len = (unsigned int )((u16 )cmdp->u.raw.sg_ranz) * 8U + 68U;
    }
  }
  if (((int )ha->cmd_len & 3) != 0) {
    ha->cmd_len = ((unsigned int )ha->cmd_len & 65532U) + 4U;
  } else {
  }
  if ((unsigned int )ha->cmd_cnt != 0U) {
    if (((int )ha->cmd_offs_dpmem + (int )ha->cmd_len) + 560 > (int )ha->ic_all_size) {
      ha->cmd_tab[cmd_index + -2].cmnd = 0xffffffffffffffffUL;
      return (0);
    } else {
    }
  } else {
  }
  gdth_copy_command(ha);
  return (cmd_index);
}
}
static int gdth_special_cmd(gdth_ha_str *ha , Scsi_Cmnd *scp )
{
  register gdth_cmd_str *cmdp ;
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  int cmd_index ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  cmdp = ha->pccb;
  if ((unsigned int )ha->type == 2U && (unsigned int )ha->cmd_cnt != 0U) {
    return (0);
  } else {
  }
  *cmdp = *(cmndinfo->internal_cmd_str);
  cmdp->RequestBuffer = (void *)scp;
  cmd_index = gdth_get_cmd_index(ha);
  if (cmd_index == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )ha->cmd_cnt == 0U) {
    gdth_set_sema0(ha);
  } else {
  }
  if ((unsigned int )cmdp->OpCode == 5U) {
    ha->cmd_len = 28U;
  } else
  if ((unsigned int )cmdp->Service == 9U) {
    if (((int )ha->cache_feat & 512) != 0) {
      ha->cmd_len = 48U;
    } else {
      ha->cmd_len = 36U;
    }
  } else
  if ((unsigned int )cmdp->Service == 3U) {
    if (((int )ha->raw_feat & 512) != 0) {
      ha->cmd_len = 88U;
    } else {
      ha->cmd_len = 76U;
    }
  } else {
  }
  if (((int )ha->cmd_len & 3) != 0) {
    ha->cmd_len = ((unsigned int )ha->cmd_len & 65532U) + 4U;
  } else {
  }
  if ((unsigned int )ha->cmd_cnt != 0U) {
    if (((int )ha->cmd_offs_dpmem + (int )ha->cmd_len) + 560 > (int )ha->ic_all_size) {
      ha->cmd_tab[cmd_index + -2].cmnd = 0xffffffffffffffffUL;
      return (0);
    } else {
    }
  } else {
  }
  gdth_copy_command(ha);
  return (cmd_index);
}
}
static gdth_evt_str *gdth_store_event(gdth_ha_str *ha , u16 source , u16 idx , gdth_evt_data *evt )
{
  gdth_evt_str *e ;
  struct timeval tv ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )source == 0U) {
    return (0);
  } else {
  }
  if ((int )ebuffer[elastidx].event_source == (int )source && (int )ebuffer[elastidx].event_idx == (int )idx) {
    if ((unsigned int )evt->size != 0U && (unsigned int )ebuffer[elastidx].event_data.size != 0U) {
      tmp___0 = memcmp((void const *)(& ebuffer[elastidx].event_data.eu), (void const *)(& evt->eu),
                       (size_t )evt->size);
      if (tmp___0 == 0) {
        e = (gdth_evt_str *)(& ebuffer) + (unsigned long )elastidx;
        do_gettimeofday(& tv);
        e->last_stamp = (u32 )tv.tv_sec;
        e->same_count = (u16 )((int )e->same_count + 1);
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if ((unsigned int )evt->size == 0U && (unsigned int )ebuffer[elastidx].event_data.size == 0U) {
      tmp___1 = strcmp((char const *)(& ebuffer[elastidx].event_data.event_string),
                       (char const *)(& evt->event_string));
      if (tmp___1 == 0) {
        e = (gdth_evt_str *)(& ebuffer) + (unsigned long )elastidx;
        do_gettimeofday(& tv);
        e->last_stamp = (u32 )tv.tv_sec;
        e->same_count = (u16 )((int )e->same_count + 1);
      } else {
        goto _L;
      }
    } else {
      goto _L;
    }
  } else {
    _L:
    if ((unsigned int )ebuffer[elastidx].event_source != 0U) {
      elastidx = elastidx + 1;
      if (elastidx == 100) {
        elastidx = 0;
      } else {
      }
      if (elastidx == eoldidx) {
        eoldidx = eoldidx + 1;
        if (eoldidx == 100) {
          eoldidx = 0;
        } else {
        }
      } else {
      }
    } else {
    }
    e = (gdth_evt_str *)(& ebuffer) + (unsigned long )elastidx;
    e->event_source = source;
    e->event_idx = idx;
    do_gettimeofday(& tv);
    tmp = (u32 )tv.tv_sec;
    e->last_stamp = tmp;
    e->first_stamp = tmp;
    e->same_count = 1U;
    e->event_data = *evt;
    e->application = 0U;
  }
  return (e);
}
}
static int gdth_read_event(gdth_ha_str *ha , int handle , gdth_evt_str *estr )
{
  gdth_evt_str *e ;
  int eindex ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  size_t __len ;
  void *__ret ;
  {
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (handle == -1) {
    eindex = eoldidx;
  } else {
    eindex = handle;
  }
  estr->event_source = 0U;
  if (eindex < 0 || eindex > 99) {
    spin_unlock_irqrestore(& ha->smp_lock, flags);
    return (eindex);
  } else {
  }
  e = (gdth_evt_str *)(& ebuffer) + (unsigned long )eindex;
  if ((unsigned int )e->event_source != 0U) {
    if (eindex != elastidx) {
      eindex = eindex + 1;
      if (eindex == 100) {
        eindex = 0;
      } else {
      }
    } else {
      eindex = -1;
    }
    __len = 294UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)estr, (void const *)e, __len);
    } else {
      __ret = memcpy((void *)estr, (void const *)e, __len);
    }
  } else {
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return (eindex);
}
}
static void gdth_readapp_event(gdth_ha_str *ha , u8 application , gdth_evt_str *estr )
{
  gdth_evt_str *e ;
  int eindex ;
  unsigned long flags ;
  u8 found ;
  raw_spinlock_t *tmp ;
  size_t __len ;
  void *__ret ;
  {
  found = 0U;
  tmp = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  eindex = eoldidx;
  ldv_31635:
  e = (gdth_evt_str *)(& ebuffer) + (unsigned long )eindex;
  if ((unsigned int )e->event_source == 0U) {
    goto ldv_31634;
  } else {
  }
  if ((unsigned int )((int )e->application & (int )application) == 0U) {
    e->application = (u8 )((int )e->application | (int )application);
    found = 1U;
    goto ldv_31634;
  } else {
  }
  if (eindex == elastidx) {
    goto ldv_31634;
  } else {
  }
  eindex = eindex + 1;
  if (eindex == 100) {
    eindex = 0;
  } else {
  }
  goto ldv_31635;
  ldv_31634: ;
  if ((unsigned int )found != 0U) {
    __len = 294UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)estr, (void const *)e, __len);
    } else {
      __ret = memcpy((void *)estr, (void const *)e, __len);
    }
  } else {
    estr->event_source = 0U;
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return;
}
}
static void gdth_clear_events(void)
{
  {
  elastidx = 0;
  eoldidx = elastidx;
  ebuffer[0].event_source = 0U;
  return;
}
}
static irqreturn_t __gdth_interrupt(gdth_ha_str *ha , int gdth_from_wait , int *pIndex )
{
  gdt6m_dpram_str *dp6m_ptr ;
  gdt6_dpram_str *dp6_ptr ;
  gdt2_dpram_str *dp2_ptr ;
  Scsi_Cmnd *scp ;
  int rval ;
  int i ;
  u8 IStatus ;
  u16 Service ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  unsigned char tmp___0 ;
  struct gdth_cmndinfo *tmp___1 ;
  {
  dp6m_ptr = 0;
  flags = 0UL;
  if ((unsigned int )gdth_polling != 0U) {
    if (gdth_from_wait == 0) {
      return (1);
    } else {
    }
  } else {
  }
  if ((unsigned int )gdth_polling == 0U) {
    tmp = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  IStatus = gdth_get_status(ha);
  if ((unsigned int )IStatus == 0U) {
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    return (1);
  } else {
  }
  act_ints = act_ints + 1U;
  if ((unsigned int )ha->type == 2U) {
    if ((int )((signed char )IStatus) < 0) {
      IStatus = (unsigned int )IStatus & 127U;
      ha->status = inw((int )ha->bmic + 3224);
    } else {
      ha->status = 1U;
    }
    ha->info = inl((int )ha->bmic + 3228);
    ha->service = inw((int )ha->bmic + 3226);
    ha->info2 = inl((int )ha->bmic + 3220);
    outb(255, (int )ha->bmic + 3215);
    outb(0, (int )ha->bmic + 3211);
  } else
  if ((unsigned int )ha->type == 1U) {
    dp2_ptr = (gdt2_dpram_str *)ha->brd;
    if ((int )((signed char )IStatus) < 0) {
      IStatus = (unsigned int )IStatus & 127U;
      ha->status = readw((void const volatile *)(& dp2_ptr->u.ic.Status));
    } else {
      ha->status = 1U;
    }
    ha->info = readl((void const volatile *)(& dp2_ptr->u.ic.Info));
    ha->service = readw((void const volatile *)(& dp2_ptr->u.ic.Service));
    ha->info2 = readl((void const volatile *)(& dp2_ptr->u.ic.Info) + 1U);
    writeb(255, (void volatile *)(& dp2_ptr->io.irqdel));
    writeb(0, (void volatile *)(& dp2_ptr->u.ic.Cmd_Index));
    writeb(0, (void volatile *)(& dp2_ptr->io.Sema1));
  } else
  if ((unsigned int )ha->type == 3U) {
    dp6_ptr = (gdt6_dpram_str *)ha->brd;
    if ((int )((signed char )IStatus) < 0) {
      IStatus = (unsigned int )IStatus & 127U;
      ha->status = readw((void const volatile *)(& dp6_ptr->u.ic.Status));
    } else {
      ha->status = 1U;
    }
    ha->info = readl((void const volatile *)(& dp6_ptr->u.ic.Info));
    ha->service = readw((void const volatile *)(& dp6_ptr->u.ic.Service));
    ha->info2 = readl((void const volatile *)(& dp6_ptr->u.ic.Info) + 1U);
    writeb(255, (void volatile *)(& dp6_ptr->io.irqdel));
    writeb(0, (void volatile *)(& dp6_ptr->u.ic.Cmd_Index));
    writeb(0, (void volatile *)(& dp6_ptr->io.Sema1));
  } else
  if ((unsigned int )ha->type == 4U) {
    if ((int )((signed char )IStatus) < 0) {
      IStatus = (unsigned int )IStatus & 127U;
      ha->status = inw((int )((unsigned short )((long )(& (ha->plx)->status))));
    } else {
      ha->status = 1U;
    }
    ha->info = inl((int )((unsigned short )((long )(& (ha->plx)->info))));
    ha->service = inw((int )((unsigned short )((long )(& (ha->plx)->service))));
    ha->info2 = inl((int )((unsigned short )((long )((u32 *)(& (ha->plx)->info) + 1UL))));
    outb(255, (int )((unsigned short )((long )(& (ha->plx)->edoor_reg))));
    outb(0, (int )((unsigned short )((long )(& (ha->plx)->sema1_reg))));
  } else
  if ((unsigned int )ha->type == 5U) {
    dp6m_ptr = (gdt6m_dpram_str *)ha->brd;
    if ((int )((signed char )IStatus) < 0) {
      IStatus = (unsigned int )IStatus & 127U;
      ha->status = readw((void const volatile *)(& dp6m_ptr->i960r.status));
    } else {
      ha->status = 1U;
    }
    ha->info = readl((void const volatile *)(& dp6m_ptr->i960r.info));
    ha->service = readw((void const volatile *)(& dp6m_ptr->i960r.service));
    ha->info2 = readl((void const volatile *)(& dp6m_ptr->i960r.info) + 1U);
    if ((unsigned int )IStatus == 0U) {
      if ((unsigned int )ha->service != 11U && ((int )ha->fw_vers & 255) > 25) {
        tmp___0 = readb((void const volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.severity));
        ha->dvr.severity = (u32 )tmp___0;
        i = 0;
        goto ldv_31661;
        ldv_31660:
        ha->dvr.event_string[i] = readb((void const volatile *)(& ((gdt6m_dpram_str *)ha->brd)->i960r.evt_str) + (unsigned long )i);
        if ((unsigned int )ha->dvr.event_string[i] == 0U) {
          goto ldv_31659;
        } else {
        }
        i = i + 1;
        ldv_31661: ;
        if (i <= 255) {
          goto ldv_31660;
        } else {
        }
        ldv_31659: ;
      } else {
      }
    } else {
    }
    writeb(255, (void volatile *)(& dp6m_ptr->i960r.edoor_reg));
    writeb(0, (void volatile *)(& dp6m_ptr->i960r.sema1_reg));
  } else {
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    return (1);
  }
  if (gdth_from_wait != 0) {
    *pIndex = (int )IStatus;
  } else {
  }
  if ((unsigned int )IStatus == 0U) {
    gdth_async_event(ha);
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    gdth_next(ha);
    return (1);
  } else {
  }
  if ((unsigned int )IStatus == 1U) {
    ha->dvr.size = 8U;
    ha->dvr.eu.driver.ionode = ha->hanum;
    gdth_store_event(ha, 2, 4, & ha->dvr);
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    return (1);
  } else {
  }
  scp = ha->cmd_tab[(int )IStatus + -2].cmnd;
  Service = ha->cmd_tab[(int )IStatus + -2].service;
  ha->cmd_tab[(int )IStatus + -2].cmnd = 0xffffffffffffffffUL;
  if ((unsigned long )scp == 0xffffffffffffffffUL) {
    ha->dvr.size = 8U;
    ha->dvr.eu.driver.ionode = ha->hanum;
    ha->dvr.eu.driver.index = (u32 )IStatus;
    gdth_store_event(ha, 2, 1, & ha->dvr);
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    return (1);
  } else {
  }
  if ((unsigned long )scp == 0xfffffffffffffffeUL) {
    if ((unsigned int )gdth_polling == 0U) {
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    return (1);
  } else {
  }
  rval = gdth_sync_event(ha, (int )Service, (int )IStatus, scp);
  if ((unsigned int )gdth_polling == 0U) {
    spin_unlock_irqrestore(& ha->smp_lock, flags);
  } else {
  }
  if (rval == 2) {
    tmp___1 = gdth_cmnd_priv(scp);
    gdth_putq(ha, scp, (int )tmp___1->priority);
  } else
  if (rval == 1) {
    gdth_scsi_done(scp);
  } else {
  }
  gdth_next(ha);
  return (1);
}
}
static irqreturn_t gdth_interrupt(int irq___0 , void *dev_id )
{
  gdth_ha_str *ha ;
  irqreturn_t tmp ;
  {
  ha = (gdth_ha_str *)dev_id;
  tmp = __gdth_interrupt(ha, 0, 0);
  return (tmp);
}
}
static int gdth_sync_event(gdth_ha_str *ha , int service , u8 index , Scsi_Cmnd *scp )
{
  gdth_msg_str *msg ;
  gdth_cmd_str *cmdp ;
  u8 b ;
  u8 t ;
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  struct scatterlist *tmp___3 ;
  unsigned int tmp___4 ;
  {
  tmp = gdth_cmnd_priv(scp);
  cmndinfo = tmp;
  cmdp = ha->pccb;
  if (service == 11) {
    msg = ha->pmsg;
    if (msg->msg_len > 17U) {
      msg->msg_len = 17U;
    } else {
    }
    if (msg->msg_len != 0U) {
      if ((unsigned int )msg->msg_answer == 0U || (unsigned int )msg->msg_ext == 0U) {
        msg->msg_text[msg->msg_len] = 0;
        printk("%s", (char *)(& msg->msg_text));
      } else {
      }
    } else {
    }
    if ((unsigned int )msg->msg_ext != 0U && (unsigned int )msg->msg_answer == 0U) {
      goto ldv_31679;
      ldv_31678:
      gdth_delay(0);
      ldv_31679:
      tmp___0 = gdth_test_busy(ha);
      if (tmp___0 != 0) {
        goto ldv_31678;
      } else {
      }
      cmdp->Service = 11U;
      cmdp->RequestBuffer = 0xfffffffffffffffdUL;
      gdth_get_cmd_index(ha);
      gdth_set_sema0(ha);
      cmdp->OpCode = 1U;
      cmdp->BoardNode = 0U;
      cmdp->u.screen.reserved = 0U;
      cmdp->u.screen.su.msg.msg_handle = msg->msg_handle;
      cmdp->u.screen.su.msg.msg_addr = ha->msg_phys;
      ha->cmd_offs_dpmem = 0U;
      ha->cmd_len = 24U;
      ha->cmd_cnt = 0U;
      gdth_copy_command(ha);
      gdth_release_event(ha);
      return (0);
    } else {
    }
    if ((unsigned int )msg->msg_answer != 0U && msg->msg_alen != 0U) {
      if (msg->msg_alen == 1U) {
        msg->msg_alen = 0U;
        msg->msg_len = 1U;
        msg->msg_text[0] = 0;
      } else {
        msg->msg_alen = msg->msg_alen - 2U;
        msg->msg_len = 2U;
        msg->msg_text[0] = 1;
        msg->msg_text[1] = 0;
      }
      msg->msg_ext = 0U;
      msg->msg_answer = 0U;
      goto ldv_31682;
      ldv_31681:
      gdth_delay(0);
      ldv_31682:
      tmp___1 = gdth_test_busy(ha);
      if (tmp___1 != 0) {
        goto ldv_31681;
      } else {
      }
      cmdp->Service = 11U;
      cmdp->RequestBuffer = 0xfffffffffffffffdUL;
      gdth_get_cmd_index(ha);
      gdth_set_sema0(ha);
      cmdp->OpCode = 2U;
      cmdp->BoardNode = 0U;
      cmdp->u.screen.reserved = 0U;
      cmdp->u.screen.su.msg.msg_handle = msg->msg_handle;
      cmdp->u.screen.su.msg.msg_addr = ha->msg_phys;
      ha->cmd_offs_dpmem = 0U;
      ha->cmd_len = 24U;
      ha->cmd_cnt = 0U;
      gdth_copy_command(ha);
      gdth_release_event(ha);
      return (0);
    } else {
    }
    printk("\n");
  } else {
    b = (u8 )(scp->device)->channel;
    t = (u8 )(scp->device)->id;
    if (cmndinfo->OpCode == -1 && (int )ha->virt_bus != (int )b) {
      ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[(int )t] = (u8 )((int )ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[(int )t] - 1);
    } else {
    }
    if ((unsigned int )ha->status == 7U) {
      if (cmndinfo->OpCode == 10) {
        cmndinfo->OpCode = 22;
      } else {
      }
      return (2);
    } else {
    }
    tmp___4 = scsi_bufflen(scp);
    if (tmp___4 != 0U) {
      tmp___2 = scsi_sg_count(scp);
      tmp___3 = scsi_sglist(scp);
      pci_unmap_sg(ha->pdev, tmp___3, (int )tmp___2, (int )cmndinfo->dma_dir);
    } else {
    }
    if (cmndinfo->sense_paddr != 0ULL) {
      pci_unmap_page(ha->pdev, cmndinfo->sense_paddr, 16UL, 2);
    } else {
    }
    if ((unsigned int )ha->status == 1U) {
      cmndinfo->status = 1U;
      cmndinfo->info = ha->info;
      if (cmndinfo->OpCode != -1) {
        if (cmndinfo->OpCode == 22) {
          ha->hdr[(int )t].cluster_type = (unsigned char )ha->info;
          if (((int )ha->hdr[(int )t].cluster_type & 2) == 0) {
            cmndinfo->OpCode = 10;
            if (((int )ha->hdr[(int )t].cluster_type & 4) != 0) {
              cmndinfo->phase = -2;
            } else {
            }
          } else {
            cmndinfo->OpCode = -1;
          }
        } else {
          if (cmndinfo->OpCode == 10) {
            ha->hdr[(int )t].cluster_type = (u8 )((unsigned int )ha->hdr[(int )t].cluster_type | 2U);
            ha->hdr[(int )t].media_changed = 1U;
          } else
          if (cmndinfo->OpCode == 11) {
            ha->hdr[(int )t].cluster_type = (unsigned int )ha->hdr[(int )t].cluster_type & 253U;
            ha->hdr[(int )t].media_changed = 1U;
          } else {
          }
          cmndinfo->OpCode = -1;
        }
        cmndinfo->priority = 8U;
        return (2);
      } else {
        if ((unsigned int )*(scp->cmnd) == 22U) {
          ha->hdr[(int )t].cluster_type = (u8 )((unsigned int )ha->hdr[(int )t].cluster_type | 4U);
        } else
        if ((unsigned int )*(scp->cmnd) == 23U) {
          ha->hdr[(int )t].cluster_type = (unsigned int )ha->hdr[(int )t].cluster_type & 251U;
        } else {
        }
        scp->result = 0;
        *(scp->sense_buffer) = 0U;
      }
    } else {
      cmndinfo->status = ha->status;
      cmndinfo->info = ha->info;
      if (cmndinfo->OpCode != -1) {
        if (cmndinfo->OpCode == 19 || cmndinfo->OpCode == 20) {
          cmndinfo->OpCode = -1;
          cmndinfo->priority = 8U;
          return (2);
        } else {
        }
        memset((void *)scp->sense_buffer, 0, 16UL);
        *(scp->sense_buffer) = 112U;
        *(scp->sense_buffer + 2UL) = 2U;
        scp->result = 2;
      } else
      if (service == 9) {
        if ((unsigned int )ha->status == 12U && ((int )ha->hdr[(int )t].cluster_type & 7) == 7) {
          ha->hdr[(int )t].cluster_type = (unsigned int )ha->hdr[(int )t].cluster_type & 251U;
        } else {
        }
        memset((void *)scp->sense_buffer, 0, 16UL);
        if ((unsigned int )ha->status == 65512U) {
          scp->result = 24;
        } else {
          *(scp->sense_buffer) = 112U;
          *(scp->sense_buffer + 2UL) = 2U;
          scp->result = 2;
        }
        if (cmndinfo->internal_command == 0) {
          ha->dvr.size = 16U;
          ha->dvr.eu.sync.ionode = ha->hanum;
          ha->dvr.eu.sync.service = (u16 )service;
          ha->dvr.eu.sync.status = ha->status;
          ha->dvr.eu.sync.info = ha->info;
          ha->dvr.eu.sync.hostdrive = (u16 )t;
          if ((int )((short )ha->status) < 0) {
            gdth_store_event(ha, 4, 0, & ha->dvr);
          } else {
            gdth_store_event(ha, 4, (int )((u16 )service), & ha->dvr);
          }
        } else {
        }
      } else
      if ((unsigned int )ha->status != 12U || ha->info > 255U) {
        scp->result = 262144;
      } else {
        scp->result = (int )ha->info;
      }
    }
    if ((int )cmndinfo->wait_for_completion == 0) {
      cmndinfo->wait_for_completion = cmndinfo->wait_for_completion + (int volatile )1;
    } else {
      return (1);
    }
  }
  return (0);
}
}
static char *async_cache_tab[76U] =
  { (char *)"\t", (char *)"\t", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\a", (char *)"\005", (char *)"\005",
        (char *)"\a", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\a", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\a", (char *)"\a", (char *)"\a",
        (char *)"\a", (char *)"\a", (char *)"\t", (char *)"\a",
        (char *)"\a", (char *)"\a", (char *)"\a", (char *)"\a",
        (char *)"\a", (char *)"\a", (char *)"\005", (char *)"\003",
        (char *)"\005", (char *)"\a", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\a", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\003", (char *)"\003",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\005", (char *)"\005",
        (char *)"\005", (char *)"\005", (char *)"\003", (char *)"\003",
        (char *)"\t", (char *)"\005", (char *)"\005", (char *)"\003"};
static int gdth_async_event(gdth_ha_str *ha )
{
  gdth_cmd_str *cmdp ;
  int cmd_index ;
  int tmp ;
  {
  cmdp = ha->pccb;
  if ((unsigned int )ha->service == 11U) {
    if ((unsigned int )ha->status == 0U) {
      goto ldv_31691;
      ldv_31690:
      gdth_delay(0);
      ldv_31691:
      tmp = gdth_test_busy(ha);
      if (tmp != 0) {
        goto ldv_31690;
      } else {
      }
      cmdp->Service = 11U;
      cmdp->RequestBuffer = 0xfffffffffffffffdUL;
      cmd_index = gdth_get_cmd_index(ha);
      gdth_set_sema0(ha);
      cmdp->OpCode = 1U;
      cmdp->BoardNode = 0U;
      cmdp->u.screen.reserved = 0U;
      cmdp->u.screen.su.msg.msg_handle = 4294967295U;
      cmdp->u.screen.su.msg.msg_addr = ha->msg_phys;
      ha->cmd_offs_dpmem = 0U;
      ha->cmd_len = 24U;
      ha->cmd_cnt = 0U;
      gdth_copy_command(ha);
      if ((unsigned int )ha->type == 2U) {
        printk("[EISA slot %d] ", (int )((unsigned short )ha->brd_phys));
      } else
      if ((unsigned int )ha->type == 1U) {
        printk("[DPMEM 0x%4X] ", (int )((unsigned short )ha->brd_phys));
      } else {
        printk("[PCI %d/%d] ", (int )((unsigned short )(ha->brd_phys >> 8)), (int )((unsigned short )(ha->brd_phys >> 3)) & 31);
      }
      gdth_release_event(ha);
    } else {
    }
  } else {
    if ((unsigned int )ha->type == 5U && ((int )ha->fw_vers & 255) > 25) {
      ha->dvr.size = 0U;
      ha->dvr.eu.async.ionode = ha->hanum;
      ha->dvr.eu.async.status = ha->status;
    } else {
      ha->dvr.size = 13U;
      ha->dvr.eu.async.ionode = ha->hanum;
      ha->dvr.eu.async.service = ha->service;
      ha->dvr.eu.async.status = ha->status;
      ha->dvr.eu.async.info = ha->info;
      *((u32 *)(& ha->dvr.eu.async.scsi_coord)) = ha->info2;
    }
    gdth_store_event(ha, 1, (int )ha->service, & ha->dvr);
    gdth_log_event(& ha->dvr, 0);
  }
  return (1);
}
}
static void gdth_log_event(gdth_evt_data *dvr , char *buffer )
{
  gdth_stackframe stack ;
  char *f ;
  int i ;
  int j ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  f = 0;
  if ((unsigned int )dvr->size == 0U) {
    if ((unsigned long )buffer == (unsigned long )((char *)0)) {
      printk("Adapter %d: %s\n", (int )dvr->eu.async.ionode, (u8 *)(& dvr->event_string));
    } else {
      sprintf(buffer, "Adapter %d: %s\n", (int )dvr->eu.async.ionode, (u8 *)(& dvr->event_string));
    }
  } else
  if ((unsigned int )dvr->eu.async.service == 9U && (unsigned int )dvr->eu.async.status <= 75U) {
    f = async_cache_tab[(int )dvr->eu.async.status];
    j = 0;
    i = 1;
    goto ldv_31709;
    ldv_31708: ;
    switch ((int )*(f + ((unsigned long )i + 1UL))) {
    case 4:
    tmp = j;
    j = j + 1;
    stack.b[tmp] = (unsigned long )*((u32 *)(& dvr->eu.stream) + (unsigned long )*(f + (unsigned long )i));
    goto ldv_31704;
    case 2:
    tmp___0 = j;
    j = j + 1;
    stack.b[tmp___0] = (unsigned long )*((u16 *)(& dvr->eu.stream) + (unsigned long )*(f + (unsigned long )i));
    goto ldv_31704;
    case 1:
    tmp___1 = j;
    j = j + 1;
    stack.b[tmp___1] = (unsigned long )*((u8 *)(& dvr->eu.stream) + (unsigned long )*(f + (unsigned long )i));
    goto ldv_31704;
    default: ;
    goto ldv_31704;
    }
    ldv_31704:
    i = i + 2;
    ldv_31709: ;
    if ((int )*f > i) {
      goto ldv_31708;
    } else {
    }
    if ((unsigned long )buffer == (unsigned long )((char *)0)) {
      printk((char const *)f + (unsigned long )*f, stack);
      printk("\n");
    } else {
      sprintf(buffer, (char const *)f + (unsigned long )*f, stack);
    }
  } else
  if ((unsigned long )buffer == (unsigned long )((char *)0)) {
    printk("GDT HA %u, Unknown async. event service %d event no. %d\n", (int )dvr->eu.async.ionode,
           (int )dvr->eu.async.service, (int )dvr->eu.async.status);
  } else {
    sprintf(buffer, "GDT HA %u, Unknown async. event service %d event no. %d", (int )dvr->eu.async.ionode,
            (int )dvr->eu.async.service, (int )dvr->eu.async.status);
  }
  return;
}
}
static u8 gdth_timer_running ;
static void gdth_timeout(unsigned long data )
{
  u32 i ;
  Scsi_Cmnd *nscp ;
  gdth_ha_str *ha ;
  unsigned long flags ;
  int tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = list_empty((struct list_head const *)(& gdth_instances));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    gdth_timer_running = 0U;
    return;
  } else {
  }
  __mptr = (struct list_head const *)gdth_instances.next;
  ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
  tmp___1 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  act_stats = 0U;
  i = 0U;
  goto ldv_31725;
  ldv_31724: ;
  if ((unsigned long )ha->cmd_tab[i].cmnd != 0xffffffffffffffffUL) {
    act_stats = act_stats + 1U;
  } else {
  }
  i = i + 1U;
  ldv_31725: ;
  if (i <= 119U) {
    goto ldv_31724;
  } else {
  }
  act_rq = 0U;
  nscp = ha->req_first;
  goto ldv_31728;
  ldv_31727:
  act_rq = act_rq + 1U;
  nscp = (Scsi_Cmnd *)nscp->SCp.ptr;
  ldv_31728: ;
  if ((unsigned long )nscp != (unsigned long )((Scsi_Cmnd *)0)) {
    goto ldv_31727;
  } else {
  }
  act_ios = 0U;
  act_ints = act_ios;
  gdth_timer.expires = (unsigned long )jiffies + 7500UL;
  add_timer(& gdth_timer);
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return;
}
}
static void gdth_timer_init(void)
{
  {
  if ((unsigned int )gdth_timer_running != 0U) {
    return;
  } else {
  }
  gdth_timer_running = 1U;
  gdth_timer.expires = (unsigned long )jiffies + 250UL;
  gdth_timer.data = 0UL;
  gdth_timer.function = & gdth_timeout;
  add_timer(& gdth_timer);
  return;
}
}
static void internal_setup(char *str , int *ints )
{
  int i ;
  int argc ;
  char *cur_str ;
  char *argv ;
  int val ;
  int c ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  if ((unsigned long )ints != (unsigned long )((int *)0)) {
    argc = *ints;
    if (argc > 0) {
      if (argc > 16) {
        argc = 16;
      } else {
      }
      i = 0;
      goto ldv_31742;
      ldv_31741:
      irq[i] = *(ints + ((unsigned long )i + 1UL));
      i = i + 1;
      ldv_31742: ;
      if (i < argc) {
        goto ldv_31741;
      } else {
      }
    } else {
    }
  } else {
  }
  argv = str;
  goto ldv_31750;
  ldv_31751:
  val = 0;
  cur_str = cur_str + 1;
  c = (int )*cur_str;
  if (c == 110 || c == 78) {
    val = 0;
  } else
  if (c == 121 || c == 89) {
    val = 1;
  } else {
    tmp = simple_strtoul((char const *)cur_str, 0, 0U);
    val = (int )tmp;
  }
  tmp___9 = strncmp((char const *)argv, "disable:", 8UL);
  if (tmp___9 == 0) {
    disable = val;
  } else {
    tmp___8 = strncmp((char const *)argv, "reserve_mode:", 13UL);
    if (tmp___8 == 0) {
      reserve_mode = val;
    } else {
      tmp___7 = strncmp((char const *)argv, "reverse_scan:", 13UL);
      if (tmp___7 == 0) {
        reverse_scan = val;
      } else {
        tmp___6 = strncmp((char const *)argv, "hdr_channel:", 12UL);
        if (tmp___6 == 0) {
          hdr_channel = val;
        } else {
          tmp___5 = strncmp((char const *)argv, "max_ids:", 8UL);
          if (tmp___5 == 0) {
            max_ids = val;
          } else {
            tmp___4 = strncmp((char const *)argv, "rescan:", 7UL);
            if (tmp___4 == 0) {
              rescan = val;
            } else {
              tmp___3 = strncmp((char const *)argv, "shared_access:", 14UL);
              if (tmp___3 == 0) {
                shared_access = val;
              } else {
                tmp___2 = strncmp((char const *)argv, "probe_eisa_isa:", 15UL);
                if (tmp___2 == 0) {
                  probe_eisa_isa = val;
                } else {
                  tmp___1 = strncmp((char const *)argv, "reserve_list:", 13UL);
                  if (tmp___1 == 0) {
                    reserve_list[0] = val;
                    i = 1;
                    goto ldv_31748;
                    ldv_31747:
                    cur_str = strchr((char const *)cur_str, 44);
                    if ((unsigned long )cur_str == (unsigned long )((char *)0)) {
                      goto ldv_31746;
                    } else {
                    }
                    cur_str = cur_str + 1;
                    if (((int )_ctype[(int )((unsigned char )*cur_str)] & 4) == 0) {
                      cur_str = cur_str - 1;
                      goto ldv_31746;
                    } else {
                    }
                    tmp___0 = simple_strtoul((char const *)cur_str, 0, 0U);
                    reserve_list[i] = (int )tmp___0;
                    i = i + 1;
                    ldv_31748: ;
                    if (i <= 39) {
                      goto ldv_31747;
                    } else {
                    }
                    ldv_31746: ;
                    if ((unsigned long )cur_str == (unsigned long )((char *)0)) {
                      goto ldv_31749;
                    } else {
                    }
                    cur_str = cur_str + 1;
                    argv = cur_str;
                    goto ldv_31750;
                  } else {
                  }
                }
              }
            }
          }
        }
      }
    }
  }
  argv = strchr((char const *)argv, 44);
  if ((unsigned long )argv != (unsigned long )((char *)0)) {
    argv = argv + 1;
  } else {
  }
  ldv_31750: ;
  if ((unsigned long )argv != (unsigned long )((char *)0)) {
    cur_str = strchr((char const *)argv, 58);
    if ((unsigned long )cur_str != (unsigned long )((char *)0)) {
      goto ldv_31751;
    } else {
      goto ldv_31749;
    }
  } else {
  }
  ldv_31749: ;
  return;
}
}
int option_setup(char *str )
{
  int ints[16U] ;
  char *cur ;
  int i ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  cur = str;
  i = 1;
  goto ldv_31759;
  ldv_31758:
  tmp = i;
  i = i + 1;
  tmp___0 = simple_strtoul((char const *)cur, 0, 0U);
  ints[tmp] = (int )tmp___0;
  cur = strchr((char const *)cur, 44);
  if ((unsigned long )cur != (unsigned long )((char *)0)) {
    cur = cur + 1;
  } else {
  }
  ldv_31759: ;
  if (((unsigned long )cur != (unsigned long )((char *)0) && ((int )_ctype[(int )((unsigned char )*cur)] & 4) != 0) && i <= 15) {
    goto ldv_31758;
  } else {
  }
  ints[0] = i + -1;
  internal_setup(cur, (int *)(& ints));
  return (1);
}
}
static char const *gdth_ctr_name(gdth_ha_str *ha )
{
  {
  if ((unsigned int )ha->type == 2U) {
    switch (ha->stype) {
    case 19960860U: ;
    return ("GDT3000/3020");
    case 36738076U: ;
    return ("GDT3000A/3020A/3050A");
    case 53515292U: ;
    return ("GDT3000B/3010A");
    }
  } else
  if ((unsigned int )ha->type == 1U) {
    return ("GDT2000/2020");
  } else
  if ((unsigned int )ha->type == 3U) {
    switch ((int )(ha->pdev)->device) {
    case 0: ;
    return ("GDT6000/6020/6050");
    case 1: ;
    return ("GDT6000B/6010");
    }
  } else {
  }
  return ("");
}
}
static char const *gdth_info(struct Scsi_Host *shp )
{
  gdth_ha_str *ha ;
  void *tmp ;
  {
  tmp = shost_priv(shp);
  ha = (gdth_ha_str *)tmp;
  return ((char const *)(& ha->binfo.type_string));
}
}
static enum blk_eh_timer_return gdth_timed_out(struct scsi_cmnd *scp )
{
  gdth_ha_str *ha ;
  void *tmp ;
  struct gdth_cmndinfo *cmndinfo ;
  struct gdth_cmndinfo *tmp___0 ;
  u8 b ;
  u8 t ;
  unsigned long flags ;
  enum blk_eh_timer_return retval ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = shost_priv((scp->device)->host);
  ha = (gdth_ha_str *)tmp;
  tmp___0 = gdth_cmnd_priv(scp);
  cmndinfo = tmp___0;
  retval = 0;
  b = (u8 )(scp->device)->channel;
  t = (u8 )(scp->device)->id;
  cmndinfo->timeout_count = cmndinfo->timeout_count + 1;
  if (cmndinfo->timeout_count <= 5) {
    retval = 2;
  } else {
  }
  tmp___1 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if (((int )ha->virt_bus != (int )b && (unsigned int )ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].lock != 0U) || (((int )ha->virt_bus == (int )b && (unsigned int )t != 255U) && (unsigned int )ha->hdr[(int )t].lock != 0U)) {
    retval = 2;
  } else {
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  return (retval);
}
}
static int gdth_eh_bus_reset(Scsi_Cmnd *scp )
{
  gdth_ha_str *ha ;
  void *tmp ;
  int i ;
  unsigned long flags ;
  Scsi_Cmnd *cmnd ;
  u8 b ;
  raw_spinlock_t *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  int tmp___5 ;
  {
  tmp = shost_priv((scp->device)->host);
  ha = (gdth_ha_str *)tmp;
  b = (u8 )(scp->device)->channel;
  tmp___0 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_31797;
  ldv_31796:
  cmnd = ha->cmd_tab[i].cmnd;
  if ((((unsigned long )cmnd != 0xffffffffffffffffUL && (unsigned long )cmnd != 0xfffffffffffffffeUL) && (unsigned long )cmnd != 0xfffffffffffffffdUL) && (cmnd->device)->channel == (unsigned int )b) {
    ha->cmd_tab[i].cmnd = 0xffffffffffffffffUL;
  } else {
  }
  i = i + 1;
  ldv_31797: ;
  if (i <= 119) {
    goto ldv_31796;
  } else {
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  if ((int )ha->virt_bus == (int )b) {
    i = 0;
    goto ldv_31806;
    ldv_31805: ;
    if ((unsigned int )ha->hdr[i].present != 0U) {
      tmp___1 = spinlock_check(& ha->smp_lock);
      flags = _raw_spin_lock_irqsave(tmp___1);
      gdth_polling = 1U;
      goto ldv_31803;
      ldv_31802:
      gdth_delay(0);
      ldv_31803:
      tmp___2 = gdth_test_busy(ha);
      if (tmp___2 != 0) {
        goto ldv_31802;
      } else {
      }
      tmp___3 = gdth_internal_cmd(ha, 9, 24, (u32 )i, 0ULL, 0ULL);
      if (tmp___3 != 0) {
        ha->hdr[i].cluster_type = (unsigned int )ha->hdr[i].cluster_type & 251U;
      } else {
      }
      gdth_polling = 0U;
      spin_unlock_irqrestore(& ha->smp_lock, flags);
    } else {
    }
    i = i + 1;
    ldv_31806: ;
    if (i <= 254) {
      goto ldv_31805;
    } else {
    }
  } else {
    tmp___4 = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp___4);
    i = 0;
    goto ldv_31812;
    ldv_31811:
    ha->raw[(int )ha->virt_bus < (int )b ? (int )b + -1 : (int )b].io_cnt[i] = 0U;
    i = i + 1;
    ldv_31812: ;
    if (i <= 126) {
      goto ldv_31811;
    } else {
    }
    gdth_polling = 1U;
    goto ldv_31815;
    ldv_31814:
    gdth_delay(0);
    ldv_31815:
    tmp___5 = gdth_test_busy(ha);
    if (tmp___5 != 0) {
      goto ldv_31814;
    } else {
    }
    gdth_internal_cmd(ha, 3, 18, (int )ha->virt_bus < (int )b ? (u32 )((int )b + -1) : (u32 )b,
                      0ULL, 0ULL);
    gdth_polling = 0U;
    spin_unlock_irqrestore(& ha->smp_lock, flags);
  }
  return (8194);
}
}
static int gdth_bios_param(struct scsi_device *sdev , struct block_device *bdev ,
                           sector_t cap , int *ip )
{
  u8 b ;
  u8 t ;
  gdth_ha_str *ha ;
  void *tmp ;
  struct scsi_device *sd ;
  unsigned int capacity ;
  {
  tmp = shost_priv(sdev->host);
  ha = (gdth_ha_str *)tmp;
  sd = sdev;
  capacity = (unsigned int )cap;
  b = (u8 )sd->channel;
  t = (u8 )sd->id;
  if ((int )ha->virt_bus != (int )b || (unsigned int )ha->hdr[(int )t].heads == 0U) {
    gdth_eval_mapping(capacity, (u32 *)ip + 2U, ip, ip + 1UL);
  } else {
    *ip = (int )ha->hdr[(int )t].heads;
    *(ip + 1UL) = (int )ha->hdr[(int )t].secs;
    *(ip + 2UL) = (int )((capacity / (unsigned int )*ip) / (unsigned int )*(ip + 1UL));
  }
  return (0);
}
}
static int gdth_queuecommand(struct scsi_cmnd *scp , void (*done)(struct scsi_cmnd * ) )
{
  gdth_ha_str *ha ;
  void *tmp ;
  struct gdth_cmndinfo *cmndinfo ;
  long tmp___0 ;
  int tmp___1 ;
  {
  tmp = shost_priv((scp->device)->host);
  ha = (gdth_ha_str *)tmp;
  cmndinfo = gdth_get_cmndinfo(ha);
  tmp___0 = ldv__builtin_expect((unsigned long )cmndinfo == (unsigned long )((struct gdth_cmndinfo *)0),
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared"),
                         "i" (4022), "i" (12UL));
    ldv_31835: ;
    goto ldv_31835;
  } else {
  }
  scp->scsi_done = done;
  cmndinfo->timeout_count = 0;
  cmndinfo->priority = 32U;
  tmp___1 = __gdth_queuecommand(ha, scp, cmndinfo);
  return (tmp___1);
}
}
static int __gdth_queuecommand(gdth_ha_str *ha , struct scsi_cmnd *scp , struct gdth_cmndinfo *cmndinfo )
{
  {
  scp->host_scribble = (unsigned char *)cmndinfo;
  cmndinfo->wait_for_completion = 1;
  cmndinfo->phase = -1;
  cmndinfo->OpCode = -1;
  act_ios = act_ios + 1U;
  gdth_putq(ha, scp, (int )cmndinfo->priority);
  gdth_next(ha);
  return (0);
}
}
static int gdth_open(struct inode *inode , struct file *filep )
{
  gdth_ha_str *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  _lock_kernel("gdth_open", "/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared",
               4053);
  __mptr = (struct list_head const *)gdth_instances.next;
  ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_31852;
  ldv_31851: ;
  if ((unsigned long )ha->sdev == (unsigned long )((struct scsi_device *)0)) {
    ha->sdev = scsi_get_host_dev(ha->shost);
  } else {
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (gdth_ha_str *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_31852:
  __builtin_prefetch((void const *)ha->list.next);
  if ((unsigned long )(& ha->list) != (unsigned long )(& gdth_instances)) {
    goto ldv_31851;
  } else {
  }
  _unlock_kernel("gdth_open", "/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared",
                 4058);
  return (0);
}
}
static int gdth_close(struct inode *inode , struct file *filep )
{
  {
  return (0);
}
}
static int ioc_event(void *arg )
{
  gdth_ioctl_event evt ;
  gdth_ha_str *ha ;
  unsigned long flags ;
  unsigned long tmp ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv_copy_from_user_5((void *)(& evt), (void const *)arg, 308UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ha = gdth_find_ha((int )evt.ionode);
  if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
    return (-14);
  } else {
  }
  if (evt.erase == 255) {
    if ((unsigned int )evt.event.event_source == 3U) {
      evt.event.event_data.size = 16U;
    } else
    if ((unsigned int )evt.event.event_source == 2U) {
      evt.event.event_data.size = 8U;
    } else
    if ((unsigned int )evt.event.event_source == 4U) {
      evt.event.event_data.size = 16U;
    } else {
      evt.event.event_data.size = 13U;
    }
    tmp___0 = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    gdth_store_event(ha, (int )evt.event.event_source, (int )evt.event.event_idx,
                     & evt.event.event_data);
    spin_unlock_irqrestore(& ha->smp_lock, flags);
  } else
  if (evt.erase == 254) {
    gdth_clear_events();
  } else
  if (evt.erase == 0) {
    evt.handle = gdth_read_event(ha, evt.handle, & evt.event);
  } else {
    gdth_readapp_event(ha, (int )((u8 )evt.erase), & evt.event);
  }
  tmp___1 = copy_to_user(arg, (void const *)(& evt), 308U);
  if (tmp___1 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int ioc_lockdrv(void *arg )
{
  gdth_ioctl_lockdrv ldrv ;
  u8 i ;
  u8 j ;
  unsigned long flags ;
  gdth_ha_str *ha ;
  unsigned long tmp ;
  raw_spinlock_t *tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = ldv_copy_from_user_5((void *)(& ldrv), (void const *)arg, 514UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ha = gdth_find_ha((int )ldrv.ionode);
  if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
    return (-14);
  } else {
  }
  i = 0U;
  goto ldv_31883;
  ldv_31882:
  j = (u8 )ldrv.drives[(int )i];
  if ((unsigned int )j == 255U || (unsigned int )ha->hdr[(int )j].present == 0U) {
    goto ldv_31875;
  } else {
  }
  if ((unsigned int )ldrv.lock != 0U) {
    tmp___0 = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    ha->hdr[(int )j].lock = 1U;
    spin_unlock_irqrestore(& ha->smp_lock, flags);
    gdth_wait_completion(ha, (int )ha->bus_cnt, (int )j);
  } else {
    tmp___1 = spinlock_check(& ha->smp_lock);
    flags = _raw_spin_lock_irqsave(tmp___1);
    ha->hdr[(int )j].lock = 0U;
    spin_unlock_irqrestore(& ha->smp_lock, flags);
    gdth_next(ha);
  }
  ldv_31875:
  i = (u8 )((int )i + 1);
  ldv_31883: ;
  if ((int )ldrv.drive_cnt > (int )i && (unsigned int )i != 255U) {
    goto ldv_31882;
  } else {
  }
  return (0);
}
}
static int ioc_resetdrv(void *arg , char *cmnd )
{
  gdth_ioctl_reset res ;
  gdth_cmd_str cmd ;
  gdth_ha_str *ha ;
  int rval ;
  unsigned long tmp ;
  int tmp___0 ;
  {
  tmp = ldv_copy_from_user_5((void *)(& res), (void const *)arg, 6UL);
  if (tmp != 0UL || (unsigned int )res.number > 254U) {
    return (-14);
  } else {
  }
  ha = gdth_find_ha((int )res.ionode);
  if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
    return (-14);
  } else {
  }
  if ((unsigned int )ha->hdr[(int )res.number].present == 0U) {
    return (0);
  } else {
  }
  memset((void *)(& cmd), 0, 476UL);
  cmd.Service = 9U;
  cmd.OpCode = 24U;
  if (((int )ha->cache_feat & 512) != 0) {
    cmd.u.cache64.DeviceNo = res.number;
  } else {
    cmd.u.cache.DeviceNo = res.number;
  }
  rval = __gdth_execute(ha->sdev, & cmd, cmnd, 30, 0);
  if (rval < 0) {
    return (rval);
  } else {
  }
  res.status = (u16 )rval;
  tmp___0 = copy_to_user(arg, (void const *)(& res), 6U);
  if (tmp___0 != 0) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int ioc_general(void *arg , char *cmnd )
{
  gdth_ioctl_general gen ;
  char *buf ;
  u64 paddr ;
  gdth_ha_str *ha ;
  int rval ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  char cmd[16U] ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  buf = 0;
  tmp = ldv_copy_from_user_5((void *)(& gen), (void const *)arg, 512UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  ha = gdth_find_ha((int )gen.ionode);
  if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
    return (-14);
  } else {
  }
  if (gen.data_len + gen.sense_len != 0UL) {
    buf = gdth_ioctl_alloc(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                           0, & paddr);
    if ((unsigned long )buf == (unsigned long )((char *)0)) {
      return (-14);
    } else {
    }
    tmp___0 = ldv_copy_from_user_5((void *)buf, (void const *)arg + 512U, gen.data_len + gen.sense_len);
    if (tmp___0 != 0UL) {
      gdth_ioctl_free(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                      buf, paddr);
      return (-14);
    } else {
    }
    if ((unsigned int )gen.command.OpCode == 5U) {
      gen.command.u.ioctl.p_param = paddr;
    } else
    if ((unsigned int )gen.command.Service == 9U) {
      if (((int )ha->cache_feat & 512) != 0) {
        gen.command.u.cache64.BlockCnt = gen.command.u.cache.BlockCnt;
        gen.command.u.cache64.BlockNo = (u64 )gen.command.u.cache.BlockNo;
        gen.command.u.cache64.DeviceNo = gen.command.u.cache.DeviceNo;
        if ((int )ha->cache_feat & 1) {
          gen.command.u.cache64.DestAddr = 0xffffffffffffffffULL;
          gen.command.u.cache64.sg_canz = 1U;
          gen.command.u.cache64.sg_lst[0].sg_ptr = paddr;
          gen.command.u.cache64.sg_lst[0].sg_len = (u32 )gen.data_len;
          gen.command.u.cache64.sg_lst[1].sg_len = 0U;
        } else {
          gen.command.u.cache64.DestAddr = paddr;
          gen.command.u.cache64.sg_canz = 0U;
        }
      } else
      if ((int )ha->cache_feat & 1) {
        gen.command.u.cache.DestAddr = 4294967295U;
        gen.command.u.cache.sg_canz = 1U;
        gen.command.u.cache.sg_lst[0].sg_ptr = (unsigned int )paddr;
        gen.command.u.cache.sg_lst[0].sg_len = (u32 )gen.data_len;
        gen.command.u.cache.sg_lst[1].sg_len = 0U;
      } else {
        gen.command.u.cache.DestAddr = (u32 )paddr;
        gen.command.u.cache.sg_canz = 0U;
      }
    } else
    if ((unsigned int )gen.command.Service == 3U) {
      if (((int )ha->raw_feat & 512) != 0) {
        gen.command.u.raw64.sense_len = gen.command.u.raw.sense_len;
        gen.command.u.raw64.bus = gen.command.u.raw.bus;
        gen.command.u.raw64.lun = gen.command.u.raw.lun;
        gen.command.u.raw64.target = gen.command.u.raw.target;
        __len = 16UL;
        if (__len > 63UL) {
          __ret = memcpy((void *)(& cmd), (void const *)(& gen.command.u.raw.cmd),
                           __len);
        } else {
          __ret = memcpy((void *)(& cmd), (void const *)(& gen.command.u.raw.cmd),
                                   __len);
        }
        __len___0 = 16UL;
        if (__len___0 > 63UL) {
          __ret___0 = memcpy((void *)(& gen.command.u.raw64.cmd), (void const *)(& cmd),
                               __len___0);
        } else {
          __ret___0 = memcpy((void *)(& gen.command.u.raw64.cmd), (void const *)(& cmd),
                                       __len___0);
        }
        gen.command.u.raw64.clen = gen.command.u.raw.clen;
        gen.command.u.raw64.sdlen = gen.command.u.raw.sdlen;
        gen.command.u.raw64.direction = gen.command.u.raw.direction;
        if ((int )ha->raw_feat & 1) {
          gen.command.u.raw64.sdata = 0xffffffffffffffffULL;
          gen.command.u.raw64.sg_ranz = 1U;
          gen.command.u.raw64.sg_lst[0].sg_ptr = paddr;
          gen.command.u.raw64.sg_lst[0].sg_len = (u32 )gen.data_len;
          gen.command.u.raw64.sg_lst[1].sg_len = 0U;
        } else {
          gen.command.u.raw64.sdata = paddr;
          gen.command.u.raw64.sg_ranz = 0U;
        }
        gen.command.u.raw64.sense_data = (unsigned long long )gen.data_len + paddr;
      } else {
        if ((int )ha->raw_feat & 1) {
          gen.command.u.raw.sdata = 4294967295U;
          gen.command.u.raw.sg_ranz = 1U;
          gen.command.u.raw.sg_lst[0].sg_ptr = (unsigned int )paddr;
          gen.command.u.raw.sg_lst[0].sg_len = (u32 )gen.data_len;
          gen.command.u.raw.sg_lst[1].sg_len = 0U;
        } else {
          gen.command.u.raw.sdata = (u32 )paddr;
          gen.command.u.raw.sg_ranz = 0U;
        }
        gen.command.u.raw.sense_data = (u32 )paddr + (u32 )gen.data_len;
      }
    } else {
      gdth_ioctl_free(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                      buf, paddr);
      return (-14);
    }
  } else {
  }
  rval = __gdth_execute(ha->sdev, & gen.command, cmnd, (int )gen.timeout, & gen.info);
  if (rval < 0) {
    return (rval);
  } else {
  }
  gen.status = (u16 )rval;
  tmp___1 = copy_to_user(arg + 512UL, (void const *)buf, (unsigned int )gen.data_len + (unsigned int )gen.sense_len);
  if (tmp___1 != 0) {
    gdth_ioctl_free(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                    buf, paddr);
    return (-14);
  } else {
  }
  tmp___2 = copy_to_user(arg, (void const *)(& gen), 36U);
  if (tmp___2 != 0) {
    gdth_ioctl_free(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                    buf, paddr);
    return (-14);
  } else {
  }
  gdth_ioctl_free(ha, (int )((unsigned int )gen.data_len + (unsigned int )gen.sense_len),
                  buf, paddr);
  return (0);
}
}
static int ioc_hdrlist(void *arg , char *cmnd )
{
  gdth_ioctl_rescan *rsc ;
  gdth_cmd_str *cmd ;
  gdth_ha_str *ha ;
  u8 i ;
  int rc ;
  u32 cluster_type ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  rc = -12;
  cluster_type = 0U;
  tmp = kmalloc(1026UL, 208U);
  rsc = (gdth_ioctl_rescan *)tmp;
  tmp___0 = kmalloc(476UL, 208U);
  cmd = (gdth_cmd_str *)tmp___0;
  if ((unsigned long )rsc == (unsigned long )((gdth_ioctl_rescan *)0) || (unsigned long )cmd == (unsigned long )((gdth_cmd_str *)0)) {
    goto free_fail;
  } else {
  }
  tmp___1 = ldv_copy_from_user_5((void *)rsc, (void const *)arg, 1026UL);
  if (tmp___1 != 0UL) {
    rc = -14;
    goto free_fail;
  } else {
    ha = gdth_find_ha((int )rsc->ionode);
    if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
      rc = -14;
      goto free_fail;
    } else {
    }
  }
  memset((void *)cmd, 0, 476UL);
  i = 0U;
  goto ldv_31922;
  ldv_31921: ;
  if ((unsigned int )ha->hdr[(int )i].present == 0U) {
    rsc->hdr_list[(int )i].bus = 255U;
    goto ldv_31920;
  } else {
  }
  rsc->hdr_list[(int )i].bus = ha->virt_bus;
  rsc->hdr_list[(int )i].target = i;
  rsc->hdr_list[(int )i].lun = 0U;
  rsc->hdr_list[(int )i].cluster_type = ha->hdr[(int )i].cluster_type;
  if ((int )ha->hdr[(int )i].cluster_type & 1) {
    cmd->Service = 9U;
    cmd->OpCode = 22U;
    if (((int )ha->cache_feat & 512) != 0) {
      cmd->u.cache64.DeviceNo = (u16 )i;
    } else {
      cmd->u.cache.DeviceNo = (u16 )i;
    }
    tmp___2 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & cluster_type);
    if (tmp___2 == 1) {
      rsc->hdr_list[(int )i].cluster_type = (u8 )cluster_type;
    } else {
    }
  } else {
  }
  ldv_31920:
  i = (u8 )((int )i + 1);
  ldv_31922: ;
  if ((unsigned int )i != 255U) {
    goto ldv_31921;
  } else {
  }
  tmp___3 = copy_to_user(arg, (void const *)rsc, 1026U);
  if (tmp___3 != 0) {
    rc = -14;
  } else {
    rc = 0;
  }
  free_fail:
  kfree((void const *)rsc);
  kfree((void const *)cmd);
  return (rc);
}
}
static int ioc_rescan(void *arg , char *cmnd )
{
  gdth_ioctl_rescan *rsc ;
  gdth_cmd_str *cmd ;
  u16 i ;
  u16 status ;
  u16 hdr_cnt ;
  u32 info ;
  int cyls ;
  int hds ;
  int secs ;
  int rc ;
  unsigned long flags ;
  gdth_ha_str *ha ;
  void *tmp ;
  void *tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  int tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  int tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  int tmp___9 ;
  raw_spinlock_t *tmp___10 ;
  int tmp___11 ;
  {
  rc = -12;
  tmp = kmalloc(1026UL, 208U);
  rsc = (gdth_ioctl_rescan *)tmp;
  tmp___0 = kmalloc(476UL, 208U);
  cmd = (gdth_cmd_str *)tmp___0;
  if ((unsigned long )cmd == (unsigned long )((gdth_cmd_str *)0) || (unsigned long )rsc == (unsigned long )((gdth_ioctl_rescan *)0)) {
    goto free_fail;
  } else {
  }
  tmp___1 = ldv_copy_from_user_5((void *)rsc, (void const *)arg, 1026UL);
  if (tmp___1 != 0UL) {
    rc = -14;
    goto free_fail;
  } else {
    ha = gdth_find_ha((int )rsc->ionode);
    if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
      rc = -14;
      goto free_fail;
    } else {
    }
  }
  memset((void *)cmd, 0, 476UL);
  if ((unsigned int )rsc->flag == 0U) {
    cmd->Service = 9U;
    if (((int )ha->cache_feat & 512) != 0) {
      cmd->OpCode = 29U;
      cmd->u.cache64.DeviceNo = 8U;
    } else {
      cmd->OpCode = 0U;
      cmd->u.cache.DeviceNo = 8U;
    }
    tmp___2 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & info);
    status = (u16 )tmp___2;
    i = 0U;
    hdr_cnt = (unsigned int )status == 1U ? (u16 )info : 0U;
  } else {
    i = rsc->hdr_no;
    hdr_cnt = (unsigned int )i + 1U;
  }
  goto ldv_31955;
  ldv_31954:
  cmd->Service = 9U;
  cmd->OpCode = 3U;
  if (((int )ha->cache_feat & 512) != 0) {
    cmd->u.cache64.DeviceNo = i;
  } else {
    cmd->u.cache.DeviceNo = i;
  }
  tmp___3 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & info);
  status = (u16 )tmp___3;
  tmp___4 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  rsc->hdr_list[(int )i].bus = ha->virt_bus;
  rsc->hdr_list[(int )i].target = (u8 )i;
  rsc->hdr_list[(int )i].lun = 0U;
  if ((unsigned int )status != 1U) {
    ha->hdr[(int )i].present = 0U;
  } else {
    ha->hdr[(int )i].present = 1U;
    ha->hdr[(int )i].size = (u64 )info;
    ha->hdr[(int )i].size = ha->hdr[(int )i].size & 0xffffffffffffffe0ULL;
    gdth_eval_mapping((u32 )ha->hdr[(int )i].size, (u32 *)(& cyls), & hds, & secs);
    ha->hdr[(int )i].heads = (u8 )hds;
    ha->hdr[(int )i].secs = (u8 )secs;
    ha->hdr[(int )i].size = (u64 )((cyls * hds) * secs);
  }
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  if ((unsigned int )status != 1U) {
    goto ldv_31944;
  } else {
  }
  cmd->Service = 9U;
  cmd->OpCode = 9U;
  if (((int )ha->cache_feat & 512) != 0) {
    cmd->u.cache64.DeviceNo = i;
  } else {
    cmd->u.cache.DeviceNo = i;
  }
  tmp___5 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & info);
  status = (u16 )tmp___5;
  tmp___6 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___6);
  ha->hdr[(int )i].devtype = (unsigned int )status == 1U ? (u16 )info : 0U;
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  cmd->Service = 9U;
  cmd->OpCode = 22U;
  if (((int )ha->cache_feat & 512) != 0) {
    cmd->u.cache64.DeviceNo = i;
  } else {
    cmd->u.cache.DeviceNo = i;
  }
  tmp___7 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & info);
  status = (u16 )tmp___7;
  tmp___8 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___8);
  ha->hdr[(int )i].cluster_type = (unsigned int )status == 1U && shared_access == 0 ? (u8 )info : 0U;
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  rsc->hdr_list[(int )i].cluster_type = ha->hdr[(int )i].cluster_type;
  cmd->Service = 9U;
  cmd->OpCode = 23U;
  if (((int )ha->cache_feat & 512) != 0) {
    cmd->u.cache64.DeviceNo = i;
  } else {
    cmd->u.cache.DeviceNo = i;
  }
  tmp___9 = __gdth_execute(ha->sdev, cmd, cmnd, 30, & info);
  status = (u16 )tmp___9;
  tmp___10 = spinlock_check(& ha->smp_lock);
  flags = _raw_spin_lock_irqsave(tmp___10);
  ha->hdr[(int )i].rw_attribs = (unsigned int )status == 1U ? (u8 )info : 0U;
  spin_unlock_irqrestore(& ha->smp_lock, flags);
  ldv_31944:
  i = (u16 )((int )i + 1);
  ldv_31955: ;
  if ((int )i < (int )hdr_cnt && (unsigned int )i <= 254U) {
    goto ldv_31954;
  } else {
  }
  tmp___11 = copy_to_user(arg, (void const *)rsc, 1026U);
  if (tmp___11 != 0) {
    rc = -14;
  } else {
    rc = 0;
  }
  free_fail:
  kfree((void const *)rsc);
  kfree((void const *)cmd);
  return (rc);
}
}
static int gdth_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{
  gdth_ha_str *ha ;
  Scsi_Cmnd *scp ;
  unsigned long flags ;
  char cmnd[16U] ;
  void *argp ;
  int cnt ;
  int __ret_pu ;
  int __pu_val ;
  int ver ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  gdth_ioctl_osvers osv ;
  int tmp ;
  gdth_ioctl_ctrtype ctrt ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  gdth_ioctl_lockchn lchn ;
  u8 i ;
  u8 j ;
  unsigned long tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  gdth_ioctl_reset res ;
  int rval ;
  unsigned long tmp___10 ;
  void *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  argp = (void *)arg;
  memset((void *)(& cmnd), 255, 12UL);
  switch (cmd) {
  case 18949U:
  cnt = gdth_ctr_count;
  might_fault();
  __pu_val = cnt;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)argp): "ebx");
  goto ldv_31972;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)argp): "ebx");
  goto ldv_31972;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)argp): "ebx");
  goto ldv_31972;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)argp): "ebx");
  goto ldv_31972;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((int *)argp): "ebx");
  goto ldv_31972;
  }
  ldv_31972: ;
  if (__ret_pu != 0) {
    return (-14);
  } else {
  }
  goto ldv_31978;
  case 18945U:
  ver = 773;
  might_fault();
  __pu_val___0 = ver;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)argp): "ebx");
  goto ldv_31984;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)argp): "ebx");
  goto ldv_31984;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)argp): "ebx");
  goto ldv_31984;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)argp): "ebx");
  goto ldv_31984;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((int *)argp): "ebx");
  goto ldv_31984;
  }
  ldv_31984: ;
  if (__ret_pu___0 != 0) {
    return (-14);
  } else {
  }
  goto ldv_31978;
  case 18947U:
  osv.version = 2U;
  osv.subversion = 6U;
  osv.revision = 35U;
  tmp = copy_to_user(argp, (void const *)(& osv), 4U);
  if (tmp != 0) {
    return (-14);
  } else {
  }
  goto ldv_31978;
  case 18946U:
  tmp___0 = ldv_copy_from_user_5((void *)(& ctrt), (void const *)argp, 18UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
    ha = gdth_find_ha((int )ctrt.ionode);
    if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
      return (-14);
    } else {
    }
  }
  if ((unsigned int )ha->type == 1U || (unsigned int )ha->type == 2U) {
    ctrt.type = (unsigned int )((unsigned char )(ha->stype >> 20)) - 16U;
  } else {
    if ((unsigned int )ha->type != 5U) {
      ctrt.type = (unsigned int )((int )((unsigned char )ha->stype) << 4U) + 6U;
    } else {
      ctrt.type = (unsigned int )ha->oem_id == 32768U ? 253U : 254U;
      if (ha->stype > 767U) {
        ctrt.ext_type = (u16 )((unsigned int )(ha->pdev)->subsystem_device | 24576U);
      } else {
        ctrt.ext_type = (unsigned int )((u16 )ha->stype) | 24576U;
      }
    }
    ctrt.device_id = (ha->pdev)->device;
    ctrt.sub_device_id = (ha->pdev)->subsystem_device;
  }
  ctrt.info = (u16 )ha->brd_phys;
  ctrt.oem_id = ha->oem_id;
  tmp___1 = copy_to_user(argp, (void const *)(& ctrt), 18U);
  if (tmp___1 != 0) {
    return (-14);
  } else {
  }
  goto ldv_31978;
  case 18944U:
  tmp___2 = ioc_general(argp, (char *)(& cmnd));
  return (tmp___2);
  case 18952U:
  tmp___3 = ioc_event(argp);
  return (tmp___3);
  case 18950U:
  tmp___4 = ioc_lockdrv(argp);
  return (tmp___4);
  case 18951U:
  tmp___5 = ldv_copy_from_user_5((void *)(& lchn), (void const *)argp, 4UL);
  if (tmp___5 != 0UL) {
    return (-14);
  } else {
    ha = gdth_find_ha((int )lchn.ionode);
    if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
      return (-14);
    } else {
    }
  }
  i = lchn.channel;
  if ((int )ha->bus_cnt > (int )i) {
    if ((unsigned int )lchn.lock != 0U) {
      tmp___6 = spinlock_check(& ha->smp_lock);
      flags = _raw_spin_lock_irqsave(tmp___6);
      ha->raw[(int )i].lock = 1U;
      spin_unlock_irqrestore(& ha->smp_lock, flags);
      j = 0U;
      goto ldv_32005;
      ldv_32004:
      gdth_wait_completion(ha, (int )i, (int )j);
      j = (u8 )((int )j + 1);
      ldv_32005: ;
      if ((int )ha->tid_cnt > (int )j) {
        goto ldv_32004;
      } else {
      }
    } else {
      tmp___7 = spinlock_check(& ha->smp_lock);
      flags = _raw_spin_lock_irqsave(tmp___7);
      ha->raw[(int )i].lock = 0U;
      spin_unlock_irqrestore(& ha->smp_lock, flags);
      j = 0U;
      goto ldv_32011;
      ldv_32010:
      gdth_next(ha);
      j = (u8 )((int )j + 1);
      ldv_32011: ;
      if ((int )ha->tid_cnt > (int )j) {
        goto ldv_32010;
      } else {
      }
    }
  } else {
  }
  goto ldv_31978;
  case 18955U:
  tmp___8 = ioc_rescan(argp, (char *)(& cmnd));
  return (tmp___8);
  case 18948U:
  tmp___9 = ioc_hdrlist(argp, (char *)(& cmnd));
  return (tmp___9);
  case 18954U:
  tmp___10 = ldv_copy_from_user_5((void *)(& res), (void const *)argp, 6UL);
  if (tmp___10 != 0UL) {
    return (-14);
  } else {
    ha = gdth_find_ha((int )res.ionode);
    if ((unsigned long )ha == (unsigned long )((gdth_ha_str *)0)) {
      return (-14);
    } else {
    }
  }
  tmp___11 = kzalloc(232UL, 208U);
  scp = (Scsi_Cmnd *)tmp___11;
  if ((unsigned long )scp == (unsigned long )((Scsi_Cmnd *)0)) {
    return (-12);
  } else {
  }
  scp->device = ha->sdev;
  scp->cmd_len = 12U;
  (scp->device)->channel = (unsigned int )res.number;
  rval = gdth_eh_bus_reset(scp);
  res.status = rval == 8194 ? 1U : 6U;
  kfree((void const *)scp);
  tmp___12 = copy_to_user(argp, (void const *)(& res), 6U);
  if (tmp___12 != 0) {
    return (-14);
  } else {
  }
  goto ldv_31978;
  case 18956U:
  tmp___13 = ioc_resetdrv(argp, (char *)(& cmnd));
  return (tmp___13);
  default: ;
  goto ldv_31978;
  }
  ldv_31978: ;
  return (0);
}
}
static long gdth_unlocked_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int ret ;
  {
  _lock_kernel("gdth_unlocked_ioctl", "/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared",
               4626);
  ret = gdth_ioctl(file, cmd, arg);
  _unlock_kernel("gdth_unlocked_ioctl", "/work/vladimir/commit-test/commit-test-work/task-064--linux-stable--dir/work/current--X--drivers/scsi/gdth.ko--X--defaultlinux-stable-5934df9-1--X--111_1a--X--cpachecker/linux-stable-5934df9-1/csd_deg_dscv/11/dscv_tempdir/dscv/ri/111_1a/drivers/scsi/gdth.c.prepared",
                 4628);
  return ((long )ret);
}
}
static void gdth_flush(gdth_ha_str *ha )
{
  int i ;
  gdth_cmd_str gdtcmd ;
  char cmnd[16U] ;
  {
  memset((void *)(& cmnd), 255, 16UL);
  i = 0;
  goto ldv_32034;
  ldv_32033: ;
  if ((unsigned int )ha->hdr[i].present != 0U) {
    gdtcmd.BoardNode = 0U;
    gdtcmd.Service = 9U;
    gdtcmd.OpCode = 4U;
    if (((int )ha->cache_feat & 512) != 0) {
      gdtcmd.u.cache64.DeviceNo = (u16 )i;
      gdtcmd.u.cache64.BlockNo = 1ULL;
      gdtcmd.u.cache64.sg_canz = 0U;
    } else {
      gdtcmd.u.cache.DeviceNo = (u16 )i;
      gdtcmd.u.cache.BlockNo = 1U;
      gdtcmd.u.cache.sg_canz = 0U;
    }
    gdth_execute(ha->shost, & gdtcmd, (char *)(& cmnd), 30, 0);
  } else {
  }
  i = i + 1;
  ldv_32034: ;
  if (i <= 254) {
    goto ldv_32033;
  } else {
  }
  return;
}
}
static int gdth_slave_configure(struct scsi_device *sdev )
{
  {
  scsi_adjust_queue_depth(sdev, 0, (int )(sdev->host)->cmd_per_lun);
  sdev->skip_ms_page_3f = 1U;
  sdev->skip_ms_page_8 = 1U;
  return (0);
}
}
static struct scsi_host_template gdth_template =
     {0, "GDT SCSI Disk Array Controller", 0, 0, & gdth_info, 0, 0, & gdth_queuecommand,
    0, 0, 0, 0, & gdth_eh_bus_reset, 0, 0, & gdth_slave_configure, 0, 0, 0, 0, 0,
    0, 0, & gdth_bios_param, 0, & gdth_proc_info, & gdth_timed_out, "gdth", 0, 120,
    -1, 32U, (unsigned short)0, 0UL, 16, (unsigned char)0, (unsigned char)0, 1U, 1U,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 0U, 0, 0, {0, 0}, 0ULL};
static int gdth_pci_probe_one(gdth_pci_str *pcistr , gdth_ha_str **ha_out )
{
  struct Scsi_Host *shp ;
  gdth_ha_str *ha ;
  dma_addr_t scratch_dma_handle ;
  int error ;
  int i ;
  struct pci_dev *pdev ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  struct lock_class_key __key ;
  {
  scratch_dma_handle = 0ULL;
  pdev = pcistr->pdev;
  *ha_out = 0;
  shp = scsi_host_alloc(& gdth_template, 21784);
  if ((unsigned long )shp == (unsigned long )((struct Scsi_Host *)0)) {
    return (-12);
  } else {
  }
  tmp = shost_priv(shp);
  ha = (gdth_ha_str *)tmp;
  error = -19;
  tmp___0 = gdth_init_pci(pdev, pcistr, ha);
  if (tmp___0 == 0) {
    goto out_host_put;
  } else {
  }
  printk("Configuring GDT-PCI HA at %d/%d IRQ %u\n", (int )(pdev->bus)->number, (pdev->devfn >> 3) & 31U,
         (int )ha->irq);
  error = request_irq((unsigned int )ha->irq, & gdth_interrupt, 160UL, "gdth", (void *)ha);
  if (error != 0) {
    printk("GDT-PCI: Unable to allocate IRQ\n");
    goto out_host_put;
  } else {
  }
  shp->unchecked_isa_dma = 0U;
  shp->irq = (unsigned int )ha->irq;
  shp->dma_channel = 255U;
  tmp___1 = gdth_ctr_count;
  gdth_ctr_count = gdth_ctr_count + 1;
  ha->hanum = (u16 )tmp___1;
  ha->shost = shp;
  ha->pccb = & ha->cmdext;
  ha->ccb_phys = 0U;
  error = -12;
  tmp___2 = pci_alloc_consistent(ha->pdev, 4096UL, & scratch_dma_handle);
  ha->pscratch = (char *)tmp___2;
  if ((unsigned long )ha->pscratch == (unsigned long )((char *)0)) {
    goto out_free_irq;
  } else {
  }
  ha->scratch_phys = scratch_dma_handle;
  tmp___3 = pci_alloc_consistent(ha->pdev, 34UL, & scratch_dma_handle);
  ha->pmsg = (gdth_msg_str *)tmp___3;
  if ((unsigned long )ha->pmsg == (unsigned long )((gdth_msg_str *)0)) {
    goto out_free_pscratch;
  } else {
  }
  ha->msg_phys = scratch_dma_handle;
  ha->scratch_busy = 0U;
  ha->req_first = 0;
  ha->tid_cnt = (unsigned int )pdev->device > 511U ? 127U : 255U;
  if (max_ids > 0 && (int )ha->tid_cnt > max_ids) {
    ha->tid_cnt = (u8 )max_ids;
  } else {
  }
  i = 0;
  goto ldv_32054;
  ldv_32053:
  ha->cmd_tab[i].cmnd = 0xffffffffffffffffUL;
  i = i + 1;
  ldv_32054: ;
  if (i <= 119) {
    goto ldv_32053;
  } else {
  }
  ha->scan_mode = rescan != 0 ? 16U : 0U;
  error = -19;
  tmp___4 = gdth_search_drives(ha);
  if (tmp___4 == 0) {
    printk("GDT-PCI %d: Error during device scan\n", (int )ha->hanum);
    goto out_free_coal_stat;
  } else {
  }
  if (hdr_channel < 0 || (int )ha->bus_cnt < hdr_channel) {
    hdr_channel = (int )ha->bus_cnt;
  } else {
  }
  ha->virt_bus = (u8 )hdr_channel;
  if (((((int )ha->cache_feat & (int )ha->raw_feat) & (int )ha->screen_feat) & 512) == 0 || (unsigned int )ha->dma64_support == 0U) {
    tmp___5 = pci_set_dma_mask(pdev, 4294967295ULL);
    if (tmp___5 != 0) {
      printk("<4>GDT-PCI %d: Unable to set 32-bit DMA\n", (int )ha->hanum);
      goto out_free_coal_stat;
    } else {
    }
  } else {
    shp->max_cmd_len = 16U;
    tmp___7 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___7 == 0) {
      printk("GDT-PCI %d: 64-bit DMA enabled\n", (int )ha->hanum);
    } else {
      tmp___6 = pci_set_dma_mask(pdev, 4294967295ULL);
      if (tmp___6 != 0) {
        printk("<4>GDT-PCI %d: Unable to set 64/32-bit DMA\n", (int )ha->hanum);
        goto out_free_coal_stat;
      } else {
      }
    }
  }
  shp->max_id = (unsigned int )ha->tid_cnt;
  shp->max_lun = 8U;
  shp->max_channel = (unsigned int )ha->bus_cnt;
  spinlock_check(& ha->smp_lock);
  __raw_spin_lock_init(& ha->smp_lock.ldv_5750.rlock, "&(&ha->smp_lock)->rlock", & __key);
  gdth_enable_int(ha);
  error = scsi_add_host(shp, & pdev->dev);
  if (error != 0) {
    goto out_free_coal_stat;
  } else {
  }
  list_add_tail(& ha->list, & gdth_instances);
  pci_set_drvdata(ha->pdev, (void *)ha);
  gdth_timer_init();
  scsi_scan_host(shp);
  *ha_out = ha;
  return (0);
  out_free_coal_stat:
  pci_free_consistent(ha->pdev, 34UL, (void *)ha->pmsg, ha->msg_phys);
  out_free_pscratch:
  pci_free_consistent(ha->pdev, 4096UL, (void *)ha->pscratch, ha->scratch_phys);
  out_free_irq:
  free_irq((unsigned int )ha->irq, (void *)ha);
  gdth_ctr_count = gdth_ctr_count - 1;
  out_host_put:
  scsi_host_put(shp);
  return (error);
}
}
static void gdth_remove_one(gdth_ha_str *ha )
{
  struct Scsi_Host *shp ;
  {
  shp = ha->shost;
  scsi_remove_host(shp);
  gdth_flush(ha);
  if ((unsigned long )ha->sdev != (unsigned long )((struct scsi_device *)0)) {
    scsi_free_host_dev(ha->sdev);
    ha->sdev = 0;
  } else {
  }
  if (shp->irq != 0U) {
    free_irq(shp->irq, (void *)ha);
  } else {
  }
  if ((unsigned long )ha->pscratch != (unsigned long )((char *)0)) {
    pci_free_consistent(ha->pdev, 4096UL, (void *)ha->pscratch, ha->scratch_phys);
  } else {
  }
  if ((unsigned long )ha->pmsg != (unsigned long )((gdth_msg_str *)0)) {
    pci_free_consistent(ha->pdev, 34UL, (void *)ha->pmsg, ha->msg_phys);
  } else {
  }
  if (ha->ccb_phys != 0U) {
    pci_unmap_single(ha->pdev, (dma_addr_t )ha->ccb_phys, 476UL, 0);
  } else {
  }
  scsi_host_put(shp);
  return;
}
}
static int gdth_halt(struct notifier_block *nb , unsigned long event , void *buf )
{
  gdth_ha_str *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  if ((event != 1UL && event != 2UL) && event != 3UL) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)gdth_instances.next;
  ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_32073;
  ldv_32072:
  gdth_flush(ha);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (gdth_ha_str *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_32073:
  __builtin_prefetch((void const *)ha->list.next);
  if ((unsigned long )(& ha->list) != (unsigned long )(& gdth_instances)) {
    goto ldv_32072;
  } else {
  }
  return (1);
}
}
static struct notifier_block gdth_notifier = {& gdth_halt, 0, 0};
static int gdth_init(void)
{
  struct lock_class_key __key ;
  gdth_ha_str *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  if (disable != 0) {
    printk("GDT-HA: Controller driver disabled from command line !\n");
    return (0);
  } else {
  }
  printk("GDT-HA: Storage RAID Controller Driver. Version: %s\n", (char *)"3.05");
  gdth_polling = 1U;
  gdth_clear_events();
  init_timer_key(& gdth_timer, "&gdth_timer", & __key);
  tmp = __pci_register_driver(& gdth_pci_driver, & __this_module, "gdth");
  if (tmp != 0) {
    __mptr = (struct list_head const *)gdth_instances.next;
    ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
    goto ldv_32086;
    ldv_32085:
    gdth_remove_one(ha);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (gdth_ha_str *)__mptr___0 + 0xfffffffffffffff8UL;
    ldv_32086:
    __builtin_prefetch((void const *)ha->list.next);
    if ((unsigned long )(& ha->list) != (unsigned long )(& gdth_instances)) {
      goto ldv_32085;
    } else {
    }
    return (-19);
  } else {
  }
  major = register_chrdev(0U, "gdth", & gdth_fops);
  register_reboot_notifier(& gdth_notifier);
  gdth_polling = 0U;
  return (0);
}
}
static void gdth_exit(void)
{
  gdth_ha_str *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  unregister_chrdev((unsigned int )major, "gdth");
  unregister_reboot_notifier(& gdth_notifier);
  del_timer_sync(& gdth_timer);
  pci_unregister_driver(& gdth_pci_driver);
  __mptr = (struct list_head const *)gdth_instances.next;
  ha = (gdth_ha_str *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_32097;
  ldv_32096:
  gdth_remove_one(ha);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (gdth_ha_str *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_32097:
  __builtin_prefetch((void const *)ha->list.next);
  if ((unsigned long )(& ha->list) != (unsigned long )(& gdth_instances)) {
    goto ldv_32096;
  } else {
  }
  return;
}
}
extern void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
extern void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct file *var_group1 ;
  unsigned int var_gdth_unlocked_ioctl_66_p1 ;
  unsigned long var_gdth_unlocked_ioctl_66_p2 ;
  struct inode *var_group2 ;
  int res_gdth_open_57 ;
  struct pci_dev *var_group3 ;
  struct pci_device_id const *var_gdth_pci_init_one_15_p1 ;
  int res_gdth_pci_init_one_15 ;
  struct Scsi_Host *var_group4 ;
  Scsi_Cmnd *var_gdth_eh_bus_reset_54_p0 ;
  struct scsi_device *var_group5 ;
  struct block_device *var_group6 ;
  sector_t var_gdth_bios_param_55_p2 ;
  int *var_gdth_bios_param_55_p3 ;
  struct scsi_cmnd *var_group7 ;
  int var_gdth_interrupt_42_p0 ;
  void *var_gdth_interrupt_42_p1 ;
  int ldv_s_gdth_fops_file_operations ;
  int ldv_s_gdth_pci_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_gdth_fops_file_operations = 0;
  ldv_s_gdth_pci_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = gdth_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_32160;
  ldv_32159:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_s_gdth_fops_file_operations == 0) {
    ldv_handler_precall();
    res_gdth_open_57 = gdth_open(var_group2, var_group1);
    ldv_check_return_value(res_gdth_open_57);
    if (res_gdth_open_57 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_gdth_fops_file_operations = ldv_s_gdth_fops_file_operations + 1;
  } else {
  }
  goto ldv_32147;
  case 1: ;
  if (ldv_s_gdth_fops_file_operations == 1) {
    ldv_handler_precall();
    gdth_close(var_group2, var_group1);
    ldv_s_gdth_fops_file_operations = 0;
  } else {
  }
  goto ldv_32147;
  case 2:
  ldv_handler_precall();
  gdth_unlocked_ioctl(var_group1, var_gdth_unlocked_ioctl_66_p1, var_gdth_unlocked_ioctl_66_p2);
  goto ldv_32147;
  case 3: ;
  if (ldv_s_gdth_pci_driver_pci_driver == 0) {
    res_gdth_pci_init_one_15 = gdth_pci_init_one(var_group3, var_gdth_pci_init_one_15_p1);
    ldv_check_return_value(res_gdth_pci_init_one_15);
    ldv_check_return_value_probe(res_gdth_pci_init_one_15);
    if (res_gdth_pci_init_one_15 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_gdth_pci_driver_pci_driver = ldv_s_gdth_pci_driver_pci_driver + 1;
  } else {
  }
  goto ldv_32147;
  case 4: ;
  if (ldv_s_gdth_pci_driver_pci_driver == 1) {
    ldv_handler_precall();
    gdth_pci_remove_one(var_group3);
    ldv_s_gdth_pci_driver_pci_driver = 0;
  } else {
  }
  goto ldv_32147;
  case 5:
  ldv_handler_precall();
  gdth_info(var_group4);
  goto ldv_32147;
  case 6:
  ldv_handler_precall();
  gdth_eh_bus_reset(var_gdth_eh_bus_reset_54_p0);
  goto ldv_32147;
  case 7:
  ldv_handler_precall();
  gdth_slave_configure(var_group5);
  goto ldv_32147;
  case 8:
  ldv_handler_precall();
  gdth_bios_param(var_group5, var_group6, var_gdth_bios_param_55_p2, var_gdth_bios_param_55_p3);
  goto ldv_32147;
  case 9:
  ldv_handler_precall();
  gdth_timed_out(var_group7);
  goto ldv_32147;
  case 10:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  gdth_interrupt(var_gdth_interrupt_42_p0, var_gdth_interrupt_42_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_32147;
  default: ;
  goto ldv_32147;
  }
  ldv_32147: ;
  ldv_32160:
  tmp___1 = __VERIFIER_nondet_int();
  if ((tmp___1 != 0 || ldv_s_gdth_fops_file_operations != 0) || ldv_s_gdth_pci_driver_pci_driver != 0) {
    goto ldv_32159;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  gdth_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
unsigned long ldv__copy_from_user_1(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                    unsigned int ldv_func_arg3 )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = _copy_from_user(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  return (tmp);
}
}
unsigned long ldv__copy_to_user_2(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                                  unsigned int ldv_func_arg3 )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = _copy_to_user(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  return (tmp);
}
}
long ldv___copy_user_nocache_3(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 )
{
  long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = __copy_user_nocache(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  return (tmp);
}
}
long ldv___copy_user_nocache_4(void *ldv_func_arg1 , void const *ldv_func_arg2 ,
                               unsigned int ldv_func_arg3 , int ldv_func_arg4 )
{
  long tmp ;
  {
  ldv_check_len((long )ldv_func_arg3);
  tmp = __copy_user_nocache(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  return (tmp);
}
}
__inline static unsigned long ldv_copy_from_user_5(void *to , void const *from ,
                                                   unsigned long n )
{
  unsigned long tmp ;
  {
  ldv_check_len((long )n);
  tmp = copy_from_user(to, from, n);
  return (tmp);
}
}
unsigned long strlen(char const *str ) ;
__kernel_size_t strnlen(char const *s , __kernel_size_t count ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP:
  goto LDV_STOP;
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
void ldv_check_ret_val(int res ) ;
unsigned long strlen(char const *str )
{
  size_t res ;
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  res = tmp;
  ldv_check_ret_val(res);
  return (res);
}
}
__kernel_size_t strnlen(char const *s , __kernel_size_t count )
{
  size_t res ;
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  res = tmp;
  ldv_check_ret_val(res);
  return (res);
}
}
void ldv_check_len(long n )
{
  {
  if (n >= 0L) {
  } else {
    ldv_error();
  }
  return;
}
}
void ldv_check_ret_val(int res )
{
  {
  if (res >= 0) {
  } else {
    ldv_stop();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int __copy_user_nocache(void *arg0, const void *arg1, unsigned int arg2, int arg3) {
  return __VERIFIER_nondet_long();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, struct lock_class_key *arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _lock_kernel(const char *arg0, const char *arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void _unlock_kernel(const char *arg0, const char *arg1, int arg2) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
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
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void debug_dma_unmap_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
void dev_set_drvdata(struct device *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void ldv_initialize() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_rcu_dereference(const char *arg0, const int arg1) {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_adjust_queue_depth(struct scsi_device *arg0, int arg1, int arg2) {
  return;
}
void scsi_free_host_dev(struct scsi_device *arg0) {
  return;
}
struct scsi_device *scsi_get_host_dev(struct Scsi_Host *arg0) {
  return ldv_malloc(sizeof(struct scsi_device));
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int simple_strtoul(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void trace_hardirqs_off() {
  return;
}
void trace_hardirqs_on() {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
