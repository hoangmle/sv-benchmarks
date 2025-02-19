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
typedef short s16;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
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
typedef unsigned int oom_flags_t;
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
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct completion;
struct pt_regs;
struct atomic_notifier_head;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
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
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
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
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
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
   unsigned int last_cpu ;
   unsigned int has_fpu ;
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
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
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
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6439_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6439_31 ldv_6439 ;
};
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
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
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
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
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
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct atomic_notifier_head {
   spinlock_t lock ;
   struct notifier_block *head ;
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
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
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
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13322_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13324_128 {
   struct __anonstruct_ldv_13322_129 ldv_13322 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13324_128 ldv_13324 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
struct cred;
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
struct sock;
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
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
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
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_14102_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14102_134 ldv_14102 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
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
   bool sig_ok ;
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
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
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
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_14781_136 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_14783_135 {
   struct __anonstruct_ldv_14781_136 ldv_14781 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_14783_135 ldv_14783 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_137 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_137 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
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
   struct callback_head rcu ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
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
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_15803_139 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_15803_139 ldv_15803 ;
   enum quota_type type ;
};
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
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
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
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_141 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_140 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_141 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_140 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
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
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_16239_142 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_16259_143 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_16275_144 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_16239_142 ldv_16239 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_16259_143 ldv_16259 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_16275_144 ldv_16275 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
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
union __anonunion_f_u_145 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_145 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
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
   struct list_head f_tfile_llink ;
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
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
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
struct __anonstruct_afs_147 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_146 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_147 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_146 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
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
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
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
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
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
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
union __anonunion_ldv_18627_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_18637_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_18639_153 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_18637_154 ldv_18637 ;
   int units ;
};
struct __anonstruct_ldv_18641_152 {
   union __anonunion_ldv_18639_153 ldv_18639 ;
   atomic_t _count ;
};
union __anonunion_ldv_18642_151 {
   unsigned long counters ;
   struct __anonstruct_ldv_18641_152 ldv_18641 ;
};
struct __anonstruct_ldv_18643_149 {
   union __anonunion_ldv_18627_150 ldv_18627 ;
   union __anonunion_ldv_18642_151 ldv_18642 ;
};
struct __anonstruct_ldv_18650_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_18654_155 {
   struct list_head lru ;
   struct __anonstruct_ldv_18650_156 ldv_18650 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_18659_157 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_18643_149 ldv_18643 ;
   union __anonunion_ldv_18654_155 ldv_18654 ;
   union __anonunion_ldv_18659_157 ldv_18659 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_159 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_158 {
   struct __anonstruct_linear_159 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_158 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
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
   atomic_long_t count[3U] ;
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
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
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
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
struct siginfo;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
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
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_19735_171 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_19744_172 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_173 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_19735_171 ldv_19735 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_19744_172 ldv_19744 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
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
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
   struct list_head ki_batch ;
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
   struct callback_head callback_head ;
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
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
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
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
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
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
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
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
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
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
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
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   struct cputime prev_cputime ;
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
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
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
   struct blk_plug *plug ;
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
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
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
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct __anonstruct_ldv_21844_178 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_21845_177 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_21844_178 ldv_21844 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_21845_177 ldv_21845 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
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
   int object_size ;
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
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct ipmi_addr {
   int addr_type ;
   short channel ;
   char data[32U] ;
};
struct ipmi_system_interface_addr {
   int addr_type ;
   short channel ;
   unsigned char lun ;
};
struct ipmi_ipmb_addr {
   int addr_type ;
   short channel ;
   unsigned char slave_addr ;
   unsigned char lun ;
};
struct ipmi_lan_addr {
   int addr_type ;
   short channel ;
   unsigned char privilege ;
   unsigned char session_handle ;
   unsigned char remote_SWID ;
   unsigned char local_SWID ;
   unsigned char lun ;
};
struct kernel_ipmi_msg {
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned short data_len ;
   unsigned char *data ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
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
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct proc_ns_operations {
   char const *name ;
   int type ;
   void *(*get)(struct task_struct * ) ;
   void (*put)(void * ) ;
   int (*install)(struct nsproxy * , void * ) ;
   unsigned int (*inum)(void * ) ;
};
union proc_op {
   int (*proc_get_link)(struct dentry * , struct path * ) ;
   int (*proc_read)(struct task_struct * , char * ) ;
   int (*proc_show)(struct seq_file * , struct pid_namespace * , struct pid * , struct task_struct * ) ;
};
struct proc_inode {
   struct pid *pid ;
   int fd ;
   union proc_op op ;
   struct proc_dir_entry *pde ;
   struct ctl_table_header *sysctl ;
   struct ctl_table *sysctl_entry ;
   void *ns ;
   struct proc_ns_operations const *ns_ops ;
   struct inode vfs_inode ;
};
struct ipmi_user;
typedef struct ipmi_user *ipmi_user_t;
struct ipmi_recv_msg {
   struct list_head link ;
   int recv_type ;
   ipmi_user_t user ;
   struct ipmi_addr addr ;
   long msgid ;
   struct kernel_ipmi_msg msg ;
   void *user_msg_data ;
   void (*done)(struct ipmi_recv_msg * ) ;
   unsigned char msg_data[272U] ;
};
struct ipmi_user_hndl {
   void (*ipmi_recv_hndl)(struct ipmi_recv_msg * , void * ) ;
   void (*ipmi_watchdog_pretimeout)(void * ) ;
};
struct ipmi_smi_watcher {
   struct list_head link ;
   struct module *owner ;
   void (*new_smi)(int , struct device * ) ;
   void (*smi_gone)(int ) ;
};
enum ipmi_addr_src {
    SI_INVALID = 0,
    SI_HOTMOD = 1,
    SI_HARDCODED = 2,
    SI_SPMI = 3,
    SI_ACPI = 4,
    SI_SMBIOS = 5,
    SI_PCI = 6,
    SI_DEVICETREE = 7,
    SI_DEFAULT = 8
} ;
struct __anonstruct_acpi_info_179 {
   void *acpi_handle ;
};
union ipmi_smi_info_union {
   struct __anonstruct_acpi_info_179 acpi_info ;
};
struct ipmi_smi_info {
   enum ipmi_addr_src addr_src ;
   struct device *dev ;
   union ipmi_smi_info_union addr_info ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct pdev_archdata {
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
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
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct of_device_id;
struct acpi_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
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
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
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
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
};
struct ipmi_smi;
typedef struct ipmi_smi *ipmi_smi_t;
struct ipmi_smi_msg {
   struct list_head link ;
   long msgid ;
   void *user_data ;
   int data_size ;
   unsigned char data[272U] ;
   int rsp_size ;
   unsigned char rsp[272U] ;
   void (*done)(struct ipmi_smi_msg * ) ;
};
struct ipmi_smi_handlers {
   struct module *owner ;
   int (*start_processing)(void * , ipmi_smi_t ) ;
   int (*get_smi_info)(void * , struct ipmi_smi_info * ) ;
   void (*sender)(void * , struct ipmi_smi_msg * , int ) ;
   void (*request_events)(void * ) ;
   void (*set_run_to_completion)(void * , int ) ;
   void (*poll)(void * ) ;
   void (*set_maintenance_mode)(void * , int ) ;
   int (*inc_usecount)(void * ) ;
   void (*dec_usecount)(void * ) ;
};
struct ipmi_device_id {
   unsigned char device_id ;
   unsigned char device_revision ;
   unsigned char firmware_revision_1 ;
   unsigned char firmware_revision_2 ;
   unsigned char ipmi_version ;
   unsigned char additional_device_support ;
   unsigned int manufacturer_id ;
   unsigned int product_id ;
   unsigned char aux_firmware_revision[4U] ;
   unsigned char aux_firmware_revision_set : 1 ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct ipmi_user {
   struct list_head link ;
   int valid ;
   struct kref refcount ;
   struct ipmi_user_hndl *handler ;
   void *handler_data ;
   ipmi_smi_t intf ;
   int gets_events ;
};
struct cmd_rcvr {
   struct list_head link ;
   ipmi_user_t user ;
   unsigned char netfn ;
   unsigned char cmd ;
   unsigned int chans ;
   struct cmd_rcvr *next ;
};
struct seq_table {
   unsigned char inuse : 1 ;
   unsigned char broadcast : 1 ;
   unsigned long timeout ;
   unsigned long orig_timeout ;
   unsigned int retries_left ;
   long seqid ;
   struct ipmi_recv_msg *recv_msg ;
};
struct ipmi_channel {
   unsigned char medium ;
   unsigned char protocol ;
   unsigned char address ;
   unsigned char lun ;
};
struct ipmi_proc_entry {
   char *name ;
   struct ipmi_proc_entry *next ;
};
struct bmc_device {
   struct platform_device *dev ;
   struct ipmi_device_id id ;
   unsigned char guid[16U] ;
   int guid_set ;
   struct kref refcount ;
   struct device_attribute device_id_attr ;
   struct device_attribute provides_dev_sdrs_attr ;
   struct device_attribute revision_attr ;
   struct device_attribute firmware_rev_attr ;
   struct device_attribute version_attr ;
   struct device_attribute add_dev_support_attr ;
   struct device_attribute manufacturer_id_attr ;
   struct device_attribute product_id_attr ;
   struct device_attribute guid_attr ;
   struct device_attribute aux_firmware_rev_attr ;
};
struct ipmi_smi {
   int intf_num ;
   struct kref refcount ;
   struct list_head link ;
   struct list_head users ;
   unsigned char ipmi_version_major ;
   unsigned char ipmi_version_minor ;
   wait_queue_head_t waitq ;
   struct bmc_device *bmc ;
   char *my_dev_name ;
   char *sysfs_name ;
   struct ipmi_smi_handlers *handlers ;
   void *send_info ;
   struct mutex proc_entry_lock ;
   struct ipmi_proc_entry *proc_entries ;
   struct device *si_dev ;
   spinlock_t seq_lock ;
   struct seq_table seq_table[64U] ;
   int curr_seq ;
   spinlock_t waiting_msgs_lock ;
   struct list_head waiting_msgs ;
   atomic_t watchdog_pretimeouts_to_deliver ;
   struct tasklet_struct recv_tasklet ;
   struct mutex cmd_rcvrs_mutex ;
   struct list_head cmd_rcvrs ;
   spinlock_t events_lock ;
   struct list_head waiting_events ;
   unsigned int waiting_events_count ;
   char delivering_events ;
   char event_msg_printed ;
   unsigned char event_receiver ;
   unsigned char event_receiver_lun ;
   unsigned char local_sel_device ;
   unsigned char local_event_generator ;
   int maintenance_mode ;
   int maintenance_mode_enable ;
   int auto_maintenance_timeout ;
   spinlock_t maintenance_mode_lock ;
   void (*null_user_handler)(ipmi_smi_t , struct ipmi_recv_msg * ) ;
   int curr_channel ;
   struct ipmi_channel channels[16U] ;
   struct proc_dir_entry *proc_dir ;
   char proc_dir_name[10U] ;
   atomic_t stats[28U] ;
   int run_to_completion ;
};
struct watcher_entry {
   int intf_num ;
   ipmi_smi_t intf ;
   struct list_head link ;
};
struct prod_dev_id {
   unsigned int product_id ;
   unsigned char device_id ;
};
typedef int ldv_func_ret_type___4;
long ldv__builtin_expect(long exp , long c ) ;
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern struct atomic_notifier_head panic_notifier_list ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{ struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern char *kstrdup(char const * , gfp_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __cmpxchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{ unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2,%0; sete %1": "+m" (v->counter),
                       "=qm" (c): "ir" (i): "memory");
  return ((int )c);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_cmpxchg(atomic_t *v , int old , int new )
{ int __ret ;
  int __old ;
  int __new ;
  u8 volatile *__ptr ;
  u16 volatile *__ptr___0 ;
  u32 volatile *__ptr___1 ;
  u64 volatile *__ptr___2 ;
  {
  __old = old;
  __new = new;
  switch (4UL) {
  case 1:
  __ptr = (u8 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgb %2,%1": "=a" (__ret),
                       "+m" (*__ptr): "q" (__new), "0" (__old): "memory");
  goto ldv_5494;
  case 2:
  __ptr___0 = (u16 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgw %2,%1": "=a" (__ret),
                       "+m" (*__ptr___0): "r" (__new), "0" (__old): "memory");
  goto ldv_5494;
  case 4:
  __ptr___1 = (u32 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgl %2,%1": "=a" (__ret),
                       "+m" (*__ptr___1): "r" (__new), "0" (__old): "memory");
  goto ldv_5494;
  case 8:
  __ptr___2 = (u64 volatile *)(& v->counter);
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; cmpxchgq %2,%1": "=a" (__ret),
                       "+m" (*__ptr___2): "r" (__new), "0" (__old): "memory");
  goto ldv_5494;
  default:
  __cmpxchg_wrong_size();
  }
  ldv_5494: ;
  return (__ret);
}
}
__inline static int __atomic_add_unless(atomic_t *v , int a , int u )
{ int c ;
  int old ;
  long tmp ;
  long tmp___0 ;
  {
  c = atomic_read((atomic_t const *)v);
  ldv_5523:
  tmp = ldv__builtin_expect(c == u, 0L);
  if (tmp != 0L) {
    goto ldv_5522;
  } else {
  }
  old = atomic_cmpxchg(v, c, c + a);
  tmp___0 = ldv__builtin_expect(old == c, 1L);
  if (tmp___0 != 0L) {
    goto ldv_5522;
  } else {
  }
  c = old;
  goto ldv_5523;
  ldv_5522: ;
  return (c);
}
}
__inline static int atomic_add_unless(atomic_t *v , int a , int u )
{ int tmp ;
  {
  tmp = __atomic_add_unless(v, a, u);
  return (tmp != u);
}
}
extern void lock_acquire(struct lockdep_map * , unsigned int , int , int , int ,
                         struct lockdep_map * , unsigned long ) ;
extern void lock_release(struct lockdep_map * , int , unsigned long ) ;
extern int lock_is_held(struct lockdep_map * ) ;
extern void lockdep_rcu_suspicious(char const * , int const , char const * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_6(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock ) ;
void ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_ipmi_interfaces_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_ipmi_interfaces_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_ipmidriver_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_ipmidriver_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_proc_entry_lock_of_ipmi_smi(struct mutex *lock ) ;
void ldv_mutex_unlock_proc_entry_lock_of_ipmi_smi(struct mutex *lock ) ;
void ldv_mutex_lock_smi_watchers_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_smi_watchers_mutex(struct mutex *lock ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_4 ;
int ref_cnt ;
int ldv_state_variable_0 ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{ struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6462;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6462;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6462;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6462;
  default:
  __bad_percpu_size();
  }
  ldv_6462:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void synchronize_sched(void) ;
__inline static void __rcu_read_lock(void)
{ struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void __rcu_read_unlock(void)
{ struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void synchronize_rcu(void)
{
  {
  synchronize_sched();
  return;
}
}
extern int rcu_is_cpu_idle(void) ;
extern bool rcu_lockdep_current_cpu_online(void) ;
__inline static void rcu_lock_acquire(struct lockdep_map *map )
{
  {
  lock_acquire(map, 0U, 0, 2, 1, 0, (unsigned long )((void *)0));
  return;
}
}
__inline static void rcu_lock_release(struct lockdep_map *map )
{
  {
  lock_release(map, 1, (unsigned long )((void *)0));
  return;
}
}
extern struct lockdep_map rcu_lock_map ;
extern int debug_lockdep_rcu_enabled(void) ;
__inline static int rcu_read_lock_held(void)
{ int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp == 0) {
    return (1);
  } else {
  }
  tmp___0 = rcu_is_cpu_idle();
  if (tmp___0 != 0) {
    return (0);
  } else {
  }
  tmp___1 = rcu_lockdep_current_cpu_online();
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (0);
  } else {
  }
  tmp___3 = lock_is_held(& rcu_lock_map);
  return (tmp___3);
}
}
__inline static void rcu_read_lock(void)
{ bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  __rcu_read_lock();
  rcu_lock_acquire(& rcu_lock_map);
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 763, "rcu_read_lock() used illegally while idle");
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{ bool __warned ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    tmp___0 = rcu_is_cpu_idle();
    if (tmp___0 != 0) {
      __warned = 1;
      lockdep_rcu_suspicious("include/linux/rcupdate.h", 784, "rcu_read_unlock() used illegally while idle");
    } else {
    }
  } else {
  }
  rcu_lock_release(& rcu_lock_map);
  __rcu_read_unlock();
  return;
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern int atomic_notifier_chain_register(struct atomic_notifier_head * , struct notifier_block * ) ;
extern int atomic_notifier_chain_unregister(struct atomic_notifier_head * , struct notifier_block * ) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static void kref_init(struct kref *kref )
{
  {
  atomic_set(& kref->refcount, 1);
  return;
}
}
__inline static void kref_get(struct kref *kref )
{ int __ret_warn_on ;
  int tmp ;
  long tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& kref->refcount));
  __ret_warn_on = tmp == 0;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    warn_slowpath_null("include/linux/kref.h", 42);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  atomic_inc(& kref->refcount);
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{ int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 67);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{ int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern void __list_add_rcu(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head, head->next);
  return;
}
}
__inline static void list_add_tail_rcu(struct list_head *new , struct list_head *head )
{
  {
  __list_add_rcu(new, head->prev, head);
  return;
}
}
__inline static void list_del_rcu(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  entry->prev = 0xdead000000200200UL;
  return;
}
}
__inline static void list_splice_init_rcu(struct list_head *list , struct list_head *head ,
                                          void (*sync)(void) )
{ struct list_head *first ;
  struct list_head *last ;
  struct list_head *at ;
  int tmp ;
  {
  first = list->next;
  last = list->prev;
  at = head->next;
  tmp = list_empty((struct list_head const *)list);
  if (tmp != 0) {
    return;
  } else {
  }
  INIT_LIST_HEAD(list);
  (*sync)();
  last->next = at;
  __asm__ volatile ("": : : "memory");
  head->next = first;
  first->prev = head;
  at->prev = last;
  return;
}
}
extern void schedule(void) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_putc(struct seq_file * , char ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern int single_open(struct file * , int (*)(struct seq_file * , void * ) , void * ) ;
extern int single_release(struct inode * , struct file * ) ;
extern void kfree(void const * ) ;
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
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern struct proc_dir_entry *proc_mkdir(char const * , struct proc_dir_entry * ) ;
__inline static struct proc_inode *PROC_I(struct inode const *inode )
{ struct inode const *__mptr ;
  {
  __mptr = inode;
  return ((struct proc_inode *)__mptr + 0xffffffffffffffc0UL);
}
}
__inline static struct proc_dir_entry *PDE(struct inode const *inode )
{ struct proc_inode *tmp ;
  {
  tmp = PROC_I(inode);
  return (tmp->pde);
}
}
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg ) ;
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user ) ;
int ipmi_destroy_user(ipmi_user_t user ) ;
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor ) ;
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address ) ;
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN ) ;
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address ) ;
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms ) ;
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority ) ;
void ipmi_poll_interface(ipmi_user_t user ) ;
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans ) ;
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans ) ;
int ipmi_get_maintenance_mode(ipmi_user_t user ) ;
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode ) ;
int ipmi_set_gets_events(ipmi_user_t user , int val ) ;
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher ) ;
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher ) ;
unsigned int ipmi_addr_length(int addr_type ) ;
int ipmi_validate_addr(struct ipmi_addr *addr , int len ) ;
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
extern struct device *driver_find_device(struct device_driver * , struct device * ,
                                         void * , int (*)(struct device * , void * ) ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern void platform_device_unregister(struct platform_device * ) ;
extern struct bus_type platform_bus_type ;
extern struct platform_device *platform_device_alloc(char const * , int ) ;
extern int platform_device_add(struct platform_device * ) ;
extern void platform_device_put(struct platform_device * ) ;
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , char const *sysfs_name , unsigned char slave_addr ) ;
int ipmi_unregister_smi(ipmi_smi_t intf ) ;
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg ) ;
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf ) ;
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void) ;
__inline static void ipmi_free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  (*(msg->done))(msg);
  return;
}
}
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{ int tmp ;
  {
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void) ;
static int ipmi_init_msghandler(void) ;
static void smi_recv_tasklet(unsigned long val ) ;
static void handle_new_recv_msgs(ipmi_smi_t intf ) ;
static int initialized ;
static struct proc_dir_entry *proc_ipmi_root ;
static struct platform_driver ipmidriver = {0, 0, 0, 0, 0, {"ipmi", & platform_bus_type, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                    0, 0, 0, 0}, 0};
static struct mutex ipmidriver_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "ipmidriver_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& ipmidriver_mutex.wait_list,
                                                                                  & ipmidriver_mutex.wait_list},
    0, 0, (void *)(& ipmidriver_mutex), {0, {0, 0}, "ipmidriver_mutex", 0, 0UL}};
static struct list_head ipmi_interfaces = {& ipmi_interfaces, & ipmi_interfaces};
static struct mutex ipmi_interfaces_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "ipmi_interfaces_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& ipmi_interfaces_mutex.wait_list,
                                                                                  & ipmi_interfaces_mutex.wait_list},
    0, 0, (void *)(& ipmi_interfaces_mutex), {0, {0, 0}, "ipmi_interfaces_mutex",
                                              0, 0UL}};
static struct list_head smi_watchers = {& smi_watchers, & smi_watchers};
static struct mutex smi_watchers_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "smi_watchers_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& smi_watchers_mutex.wait_list,
                                                                                  & smi_watchers_mutex.wait_list},
    0, 0, (void *)(& smi_watchers_mutex), {0, {0, 0}, "smi_watchers_mutex", 0, 0UL}};
static int is_lan_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 4);
}
}
static int is_ipmb_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 1);
}
}
static int is_ipmb_bcast_addr(struct ipmi_addr *addr )
{
  {
  return (addr->addr_type == 65);
}
}
static void free_recv_msg_list(struct list_head *q )
{ struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_25160;
  ldv_25159:
  list_del(& msg->link);
  ipmi_free_recv_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  ldv_25160: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_25159;
  } else {
    goto ldv_25161;
  }
  ldv_25161: ;
  return;
}
}
static void free_smi_msg_list(struct list_head *q )
{ struct ipmi_smi_msg *msg ;
  struct ipmi_smi_msg *msg2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)q->next;
  msg = (struct ipmi_smi_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___0;
  goto ldv_25174;
  ldv_25173:
  list_del(& msg->link);
  ipmi_free_smi_msg(msg);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_smi_msg *)__mptr___1;
  ldv_25174: ;
  if ((unsigned long )(& msg->link) != (unsigned long )q) {
    goto ldv_25173;
  } else {
    goto ldv_25175;
  }
  ldv_25175: ;
  return;
}
}
static void clean_up_interface_data(ipmi_smi_t intf )
{ int i ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvr2 ;
  struct list_head list ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tasklet_kill(& intf->recv_tasklet);
  free_smi_msg_list(& intf->waiting_msgs);
  free_recv_msg_list(& intf->waiting_events);
  ldv_mutex_lock_8(& intf->cmd_rcvrs_mutex);
  INIT_LIST_HEAD(& list);
  list_splice_init_rcu(& intf->cmd_rcvrs, & list, & synchronize_rcu);
  ldv_mutex_unlock_9(& intf->cmd_rcvrs_mutex);
  __mptr = (struct list_head const *)list.next;
  rcvr = (struct cmd_rcvr *)__mptr;
  __mptr___0 = (struct list_head const *)rcvr->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___0;
  goto ldv_25190;
  ldv_25189:
  kfree((void const *)rcvr);
  rcvr = rcvr2;
  __mptr___1 = (struct list_head const *)rcvr2->link.next;
  rcvr2 = (struct cmd_rcvr *)__mptr___1;
  ldv_25190: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& list)) {
    goto ldv_25189;
  } else {
    goto ldv_25191;
  }
  ldv_25191:
  i = 0;
  goto ldv_25193;
  ldv_25192: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )intf->seq_table[i].recv_msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
  } else {
  }
  i = i + 1;
  ldv_25193: ;
  if (i <= 63) {
    goto ldv_25192;
  } else {
    goto ldv_25194;
  }
  ldv_25194: ;
  return;
}
}
static void intf_free(struct kref *ref )
{ ipmi_smi_t intf ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffffcUL;
  clean_up_interface_data(intf);
  kfree((void const *)intf);
  return;
}
}
int ipmi_smi_watcher_register(struct ipmi_smi_watcher *watcher )
{ ipmi_smi_t intf ;
  struct list_head to_deliver ;
  struct watcher_entry *e ;
  struct watcher_entry *e2 ;
  struct list_head const *__mptr ;
  void *tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  to_deliver.next = & to_deliver;
  to_deliver.prev = & to_deliver;
  ldv_mutex_lock_10(& smi_watchers_mutex);
  ldv_mutex_lock_11(& ipmi_interfaces_mutex);
  __mptr = (struct list_head const *)ipmi_interfaces.next;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_25219;
  ldv_25218: ;
  if (intf->intf_num == -1) {
    goto ldv_25216;
  } else {
  }
  tmp = kmalloc(32UL, 208U);
  e = (struct watcher_entry *)tmp;
  if ((unsigned long )e == (unsigned long )((struct watcher_entry *)0)) {
    goto out_err;
  } else {
  }
  kref_get(& intf->refcount);
  e->intf = intf;
  e->intf_num = intf->intf_num;
  list_add_tail(& e->link, & to_deliver);
  ldv_25216:
  __mptr___0 = (struct list_head const *)intf->link.next;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_25219: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_25218;
  } else {
    goto ldv_25220;
  }
  ldv_25220:
  list_add(& watcher->link, & smi_watchers);
  ldv_mutex_unlock_12(& ipmi_interfaces_mutex);
  __mptr___1 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___1 + 0xfffffffffffffff0UL;
  __mptr___2 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___2 + 0xfffffffffffffff0UL;
  goto ldv_25228;
  ldv_25227:
  list_del(& e->link);
  (*(watcher->new_smi))(e->intf_num, (e->intf)->si_dev);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___3 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___3 + 0xfffffffffffffff0UL;
  ldv_25228: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_25227;
  } else {
    goto ldv_25229;
  }
  ldv_25229:
  ldv_mutex_unlock_13(& smi_watchers_mutex);
  return (0);
  out_err:
  ldv_mutex_unlock_14(& ipmi_interfaces_mutex);
  ldv_mutex_unlock_15(& smi_watchers_mutex);
  __mptr___4 = (struct list_head const *)to_deliver.next;
  e = (struct watcher_entry *)__mptr___4 + 0xfffffffffffffff0UL;
  __mptr___5 = (struct list_head const *)e->link.next;
  e2 = (struct watcher_entry *)__mptr___5 + 0xfffffffffffffff0UL;
  goto ldv_25237;
  ldv_25236:
  list_del(& e->link);
  kref_put(& (e->intf)->refcount, & intf_free);
  kfree((void const *)e);
  e = e2;
  __mptr___6 = (struct list_head const *)e2->link.next;
  e2 = (struct watcher_entry *)__mptr___6 + 0xfffffffffffffff0UL;
  ldv_25237: ;
  if ((unsigned long )(& e->link) != (unsigned long )(& to_deliver)) {
    goto ldv_25236;
  } else {
    goto ldv_25238;
  }
  ldv_25238: ;
  return (-12);
}
}
int ipmi_smi_watcher_unregister(struct ipmi_smi_watcher *watcher )
{
  {
  ldv_mutex_lock_16(& smi_watchers_mutex);
  list_del(& watcher->link);
  ldv_mutex_unlock_17(& smi_watchers_mutex);
  return (0);
}
}
static void call_smi_watchers(int i , struct device *dev )
{ struct ipmi_smi_watcher *w ;
  struct list_head const *__mptr ;
  bool tmp ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr;
  goto ldv_25264;
  ldv_25263:
  tmp = try_module_get(w->owner);
  if ((int )tmp) {
    (*(w->new_smi))(i, dev);
    module_put(w->owner);
  } else {
  }
  __mptr___0 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___0;
  ldv_25264: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_25263;
  } else {
    goto ldv_25265;
  }
  ldv_25265: ;
  return;
}
}
static int ipmi_addr_equal(struct ipmi_addr *addr1 , struct ipmi_addr *addr2 )
{ struct ipmi_system_interface_addr *smi_addr1 ;
  struct ipmi_system_interface_addr *smi_addr2 ;
  struct ipmi_ipmb_addr *ipmb_addr1 ;
  struct ipmi_ipmb_addr *ipmb_addr2 ;
  int tmp ;
  int tmp___0 ;
  struct ipmi_lan_addr *lan_addr1 ;
  struct ipmi_lan_addr *lan_addr2 ;
  int tmp___1 ;
  {
  if (addr1->addr_type != addr2->addr_type) {
    return (0);
  } else {
  }
  if ((int )addr1->channel != (int )addr2->channel) {
    return (0);
  } else {
  }
  if (addr1->addr_type == 12) {
    smi_addr1 = (struct ipmi_system_interface_addr *)addr1;
    smi_addr2 = (struct ipmi_system_interface_addr *)addr2;
    return ((int )smi_addr1->lun == (int )smi_addr2->lun);
  } else {
  }
  tmp = is_ipmb_addr(addr1);
  if (tmp != 0) {
    ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
    ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
    return ((int )ipmb_addr1->slave_addr == (int )ipmb_addr2->slave_addr && (int )ipmb_addr1->lun == (int )ipmb_addr2->lun);
  } else {
    tmp___0 = is_ipmb_bcast_addr(addr1);
    if (tmp___0 != 0) {
      ipmb_addr1 = (struct ipmi_ipmb_addr *)addr1;
      ipmb_addr2 = (struct ipmi_ipmb_addr *)addr2;
      return ((int )ipmb_addr1->slave_addr == (int )ipmb_addr2->slave_addr && (int )ipmb_addr1->lun == (int )ipmb_addr2->lun);
    } else {
    }
  }
  tmp___1 = is_lan_addr(addr1);
  if (tmp___1 != 0) {
    lan_addr1 = (struct ipmi_lan_addr *)addr1;
    lan_addr2 = (struct ipmi_lan_addr *)addr2;
    return ((((int )lan_addr1->remote_SWID == (int )lan_addr2->remote_SWID && (int )lan_addr1->local_SWID == (int )lan_addr2->local_SWID) && (int )lan_addr1->session_handle == (int )lan_addr2->session_handle) && (int )lan_addr1->lun == (int )lan_addr2->lun);
  } else {
  }
  return (1);
}
}
int ipmi_validate_addr(struct ipmi_addr *addr , int len )
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )len <= 7U) {
    return (-22);
  } else {
  }
  if (addr->addr_type == 12) {
    if ((int )addr->channel != 15) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  if (((int )addr->channel == 15 || (int )addr->channel > 15) || (int )addr->channel < 0) {
    return (-22);
  } else {
  }
  tmp = is_ipmb_addr(addr);
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = is_ipmb_bcast_addr(addr);
    if (tmp___0 != 0) {
      _L:
      if ((unsigned int )len <= 7U) {
        return (-22);
      } else {
      }
      return (0);
    } else {
    }
  }
  tmp___1 = is_lan_addr(addr);
  if (tmp___1 != 0) {
    if ((unsigned int )len <= 11U) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  return (-22);
}
}
unsigned int ipmi_addr_length(int addr_type )
{
  {
  if (addr_type == 12) {
    return (8U);
  } else {
  }
  if (addr_type == 1 || addr_type == 65) {
    return (8U);
  } else {
  }
  if (addr_type == 4) {
    return (12U);
  } else {
  }
  return (0U);
}
}
static void deliver_response(struct ipmi_recv_msg *msg )
{ ipmi_smi_t intf ;
  ipmi_user_t user ;
  {
  if ((unsigned long )msg->user == (unsigned long )((ipmi_user_t )0)) {
    intf = (ipmi_smi_t )msg->user_msg_data;
    if ((unsigned long )intf->null_user_handler != (unsigned long )((void (*)(ipmi_smi_t ,
                                                                              struct ipmi_recv_msg * ))0)) {
      (*(intf->null_user_handler))(intf, msg);
      atomic_inc((atomic_t *)(& intf->stats) + 2UL);
    } else {
      atomic_inc((atomic_t *)(& intf->stats) + 3UL);
    }
    ipmi_free_recv_msg(msg);
  } else {
    user = msg->user;
    (*((user->handler)->ipmi_recv_hndl))(msg, user->handler_data);
  }
  return;
}
}
static void deliver_err_response(struct ipmi_recv_msg *msg , int err )
{
  {
  msg->recv_type = 1;
  msg->msg_data[0] = (unsigned char )err;
  msg->msg.netfn = (unsigned int )msg->msg.netfn | 1U;
  msg->msg.data_len = 1U;
  msg->msg.data = (unsigned char *)(& msg->msg_data);
  deliver_response(msg);
  return;
}
}
static int intf_next_seq(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg , unsigned long timeout ,
                         int retries , int broadcast , unsigned char *seq , long *seqid )
{ int rv ;
  unsigned int i ;
  {
  rv = 0;
  i = (unsigned int )intf->curr_seq;
  goto ldv_25318;
  ldv_25317: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    goto ldv_25316;
  } else {
  }
  i = (i + 1U) & 63U;
  ldv_25318: ;
  if (((i + 1U) & 63U) != (unsigned int )intf->curr_seq) {
    goto ldv_25317;
  } else {
    goto ldv_25316;
  }
  ldv_25316: ;
  if ((unsigned int )intf->seq_table[i].inuse == 0U) {
    intf->seq_table[i].recv_msg = recv_msg;
    intf->seq_table[i].timeout = 60000UL;
    intf->seq_table[i].orig_timeout = timeout;
    intf->seq_table[i].retries_left = (unsigned int )retries;
    intf->seq_table[i].broadcast = (unsigned char )broadcast;
    intf->seq_table[i].inuse = 1U;
    intf->seq_table[i].seqid = (intf->seq_table[i].seqid + 1L) & 4194303L;
    *seq = (unsigned char )i;
    *seqid = intf->seq_table[i].seqid;
    intf->curr_seq = (int )(i + 1U) & 63;
  } else {
    rv = -11;
  }
  return (rv);
}
}
static int intf_find_seq(ipmi_smi_t intf , unsigned char seq , short channel , unsigned char cmd ,
                         unsigned char netfn , struct ipmi_addr *addr , struct ipmi_recv_msg **recv_msg )
{ int rv ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct ipmi_recv_msg *msg ;
  int tmp___0 ;
  {
  rv = -19;
  if ((unsigned int )seq > 63U) {
    return (-22);
  } else {
  }
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U) {
    msg = intf->seq_table[(int )seq].recv_msg;
    if (((int )msg->addr.channel == (int )channel && (int )msg->msg.cmd == (int )cmd) && (int )msg->msg.netfn == (int )netfn) {
      tmp___0 = ipmi_addr_equal(addr, & msg->addr);
      if (tmp___0 != 0) {
        *recv_msg = msg;
        intf->seq_table[(int )seq].inuse = 0U;
        rv = 0;
      } else {
      }
    } else {
    }
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  return (rv);
}
}
static int intf_start_seq_timer(ipmi_smi_t intf , long msgid )
{ int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  raw_spinlock_t *tmp ;
  struct seq_table *ent ;
  {
  rv = -19;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->timeout = ent->orig_timeout;
    rv = 0;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  return (rv);
}
}
static int intf_err_seq(ipmi_smi_t intf , long msgid , unsigned int err )
{ int rv ;
  unsigned long flags ;
  unsigned char seq ;
  unsigned long seqid ;
  struct ipmi_recv_msg *msg ;
  raw_spinlock_t *tmp ;
  struct seq_table *ent ;
  {
  rv = -19;
  msg = 0;
  seq = (unsigned int )((unsigned char )(msgid >> 26)) & 63U;
  seqid = (unsigned long )msgid & 4194303UL;
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )intf->seq_table[(int )seq].inuse != 0U && (unsigned long )intf->seq_table[(int )seq].seqid == seqid) {
    ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )seq;
    ent->inuse = 0U;
    msg = ent->recv_msg;
    rv = 0;
  } else {
  }
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  if ((unsigned long )msg != (unsigned long )((struct ipmi_recv_msg *)0)) {
    deliver_err_response(msg, (int )err);
  } else {
  }
  return (rv);
}
}
int ipmi_create_user(unsigned int if_num , struct ipmi_user_hndl *handler , void *handler_data ,
                     ipmi_user_t **user )
{ unsigned long flags ;
  ipmi_user_t new_user ;
  int rv ;
  ipmi_smi_t intf ;
  void *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  {
  rv = 0;
  if ((unsigned long )handler == (unsigned long )((struct ipmi_user_hndl *)0)) {
    return (-22);
  } else {
  }
  if (initialized == 0) {
    rv = ipmi_init_msghandler();
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  tmp = kmalloc(56UL, 208U);
  new_user = (ipmi_user_t )tmp;
  if ((unsigned long )new_user == (unsigned long )((ipmi_user_t )0)) {
    return (-12);
  } else {
  }
  ldv_mutex_lock_18(& ipmi_interfaces_mutex);
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_25386;
  ldv_25385: ;
  if ((unsigned int )intf->intf_num == if_num) {
    goto found;
  } else {
  }
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_25386: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_25385;
  } else {
    goto ldv_25387;
  }
  ldv_25387:
  rv = -22;
  goto out_kfree;
  found:
  kref_get(& intf->refcount);
  kref_init(& new_user->refcount);
  new_user->handler = handler;
  new_user->handler_data = handler_data;
  new_user->intf = intf;
  new_user->gets_events = 0;
  tmp___2 = try_module_get((intf->handlers)->owner);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    rv = -19;
    goto out_kref;
  } else {
  }
  if ((unsigned long )(intf->handlers)->inc_usecount != (unsigned long )((int (*)(void * ))0)) {
    rv = (*((intf->handlers)->inc_usecount))(intf->send_info);
    if (rv != 0) {
      module_put((intf->handlers)->owner);
      goto out_kref;
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_19(& ipmi_interfaces_mutex);
  new_user->valid = 1;
  tmp___4 = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp___4);
  list_add_rcu(& new_user->link, & intf->users);
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  *user = new_user;
  return (0);
  out_kref:
  kref_put(& intf->refcount, & intf_free);
  out_kfree:
  ldv_mutex_unlock_20(& ipmi_interfaces_mutex);
  kfree((void const *)new_user);
  return (rv);
}
}
int ipmi_get_smi_info(int if_num , struct ipmi_smi_info *data )
{ int rv ;
  ipmi_smi_t intf ;
  struct ipmi_smi_handlers *handlers ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  rv = 0;
  ldv_mutex_lock_21(& ipmi_interfaces_mutex);
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_25425;
  ldv_25424: ;
  if (intf->intf_num == if_num) {
    goto found;
  } else {
  }
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_25425: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_25424;
  } else {
    goto ldv_25426;
  }
  ldv_25426:
  rv = -22;
  ldv_mutex_unlock_22(& ipmi_interfaces_mutex);
  return (rv);
  found:
  handlers = intf->handlers;
  rv = -38;
  if ((unsigned long )handlers->get_smi_info != (unsigned long )((int (*)(void * ,
                                                                          struct ipmi_smi_info * ))0)) {
    rv = (*(handlers->get_smi_info))(intf->send_info, data);
  } else {
  }
  ldv_mutex_unlock_23(& ipmi_interfaces_mutex);
  return (rv);
}
}
static void free_user(struct kref *ref )
{ ipmi_user_t user ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  user = (struct ipmi_user *)__mptr + 0xffffffffffffffecUL;
  kfree((void const *)user);
  return;
}
}
int ipmi_destroy_user(ipmi_user_t user )
{ ipmi_smi_t intf ;
  int i ;
  unsigned long flags ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  raw_spinlock_t *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  {
  intf = user->intf;
  rcvrs = 0;
  user->valid = 0;
  tmp = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_del_rcu(& user->link);
  i = 0;
  goto ldv_25452;
  ldv_25451: ;
  if ((unsigned int )intf->seq_table[i].inuse != 0U && (unsigned long )(intf->seq_table[i].recv_msg)->user == (unsigned long )user) {
    intf->seq_table[i].inuse = 0U;
    ipmi_free_recv_msg(intf->seq_table[i].recv_msg);
  } else {
  }
  i = i + 1;
  ldv_25452: ;
  if (i <= 63) {
    goto ldv_25451;
  } else {
    goto ldv_25453;
  }
  ldv_25453:
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  ldv_mutex_lock_24(& intf->cmd_rcvrs_mutex);
  __ptr = intf->cmd_rcvrs.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_25469;
  ldv_25468: ;
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    list_del_rcu(& rcvr->link);
    rcvr->next = rcvrs;
    rcvrs = rcvr;
  } else {
  }
  __ptr___0 = rcvr->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_25469: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_25468;
  } else {
    goto ldv_25470;
  }
  ldv_25470:
  ldv_mutex_unlock_25(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  goto ldv_25472;
  ldv_25471:
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  ldv_25472: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_25471;
  } else {
    goto ldv_25473;
  }
  ldv_25473:
  ldv_mutex_lock_26(& ipmi_interfaces_mutex);
  if ((unsigned long )intf->handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
    module_put((intf->handlers)->owner);
    if ((unsigned long )(intf->handlers)->dec_usecount != (unsigned long )((void (*)(void * ))0)) {
      (*((intf->handlers)->dec_usecount))(intf->send_info);
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_27(& ipmi_interfaces_mutex);
  kref_put(& intf->refcount, & intf_free);
  kref_put(& user->refcount, & free_user);
  return (0);
}
}
void ipmi_get_version(ipmi_user_t user , unsigned char *major , unsigned char *minor )
{
  {
  *major = (user->intf)->ipmi_version_major;
  *minor = (user->intf)->ipmi_version_minor;
  return;
}
}
int ipmi_set_my_address(ipmi_user_t user , unsigned int channel , unsigned char address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].address = address;
  return (0);
}
}
int ipmi_get_my_address(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].address;
  return (0);
}
}
int ipmi_set_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char LUN )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  (user->intf)->channels[channel].lun = (unsigned int )LUN & 3U;
  return (0);
}
}
int ipmi_get_my_LUN(ipmi_user_t user , unsigned int channel , unsigned char *address )
{
  {
  if (channel > 15U) {
    return (-22);
  } else {
  }
  *address = (user->intf)->channels[channel].lun;
  return (0);
}
}
int ipmi_get_maintenance_mode(ipmi_user_t user )
{ int mode ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& (user->intf)->maintenance_mode_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  mode = (user->intf)->maintenance_mode;
  spin_unlock_irqrestore(& (user->intf)->maintenance_mode_lock, flags);
  return (mode);
}
}
static void maintenance_mode_update(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->set_maintenance_mode != (unsigned long )((void (*)(void * ,
                                                                                           int ))0)) {
    (*((intf->handlers)->set_maintenance_mode))(intf->send_info, intf->maintenance_mode_enable);
  } else {
  }
  return;
}
}
int ipmi_set_maintenance_mode(ipmi_user_t user , int mode )
{ int rv ;
  unsigned long flags ;
  ipmi_smi_t intf ;
  raw_spinlock_t *tmp ;
  {
  rv = 0;
  intf = user->intf;
  tmp = spinlock_check(& intf->maintenance_mode_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if (intf->maintenance_mode != mode) {
    switch (mode) {
    case 0:
    intf->maintenance_mode = mode;
    intf->maintenance_mode_enable = intf->auto_maintenance_timeout > 0;
    goto ldv_25573;
    case 1:
    intf->maintenance_mode = mode;
    intf->maintenance_mode_enable = 0;
    goto ldv_25573;
    case 2:
    intf->maintenance_mode = mode;
    intf->maintenance_mode_enable = 1;
    goto ldv_25573;
    default:
    rv = -22;
    goto out_unlock;
    }
    ldv_25573:
    maintenance_mode_update(intf);
  } else {
  }
  out_unlock:
  spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
  return (rv);
}
}
int ipmi_set_gets_events(ipmi_user_t user , int val )
{ unsigned long flags ;
  ipmi_smi_t intf ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  struct list_head msgs ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  {
  intf = user->intf;
  INIT_LIST_HEAD(& msgs);
  tmp = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  user->gets_events = val;
  if ((int )((signed char )intf->delivering_events) != 0) {
    goto out;
  } else {
  }
  goto ldv_25620;
  ldv_25619:
  __mptr = (struct list_head const *)intf->waiting_events.next;
  msg = (struct ipmi_recv_msg *)__mptr;
  __mptr___0 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___0;
  goto ldv_25605;
  ldv_25604:
  list_move_tail(& msg->link, & msgs);
  msg = msg2;
  __mptr___1 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  ldv_25605: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& intf->waiting_events)) {
    goto ldv_25604;
  } else {
    goto ldv_25606;
  }
  ldv_25606:
  intf->waiting_events_count = 0U;
  if ((int )((signed char )intf->event_msg_printed) != 0) {
    printk("\fIPMI message handler: Event queue no longer full\n");
    intf->event_msg_printed = 0;
  } else {
  }
  intf->delivering_events = 1;
  spin_unlock_irqrestore(& intf->events_lock, flags);
  __mptr___2 = (struct list_head const *)msgs.next;
  msg = (struct ipmi_recv_msg *)__mptr___2;
  __mptr___3 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___3;
  goto ldv_25614;
  ldv_25613:
  msg->user = user;
  kref_get(& user->refcount);
  deliver_response(msg);
  msg = msg2;
  __mptr___4 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___4;
  ldv_25614: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& msgs)) {
    goto ldv_25613;
  } else {
    goto ldv_25615;
  }
  ldv_25615:
  tmp___0 = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  intf->delivering_events = 0;
  ldv_25620: ;
  if (user->gets_events != 0) {
    tmp___1 = list_empty((struct list_head const *)(& intf->waiting_events));
    if (tmp___1 == 0) {
      goto ldv_25619;
    } else {
      goto ldv_25621;
    }
  } else {
    goto ldv_25621;
  }
  ldv_25621: ;
  out:
  spin_unlock_irqrestore(& intf->events_lock, flags);
  return (0);
}
}
static struct cmd_rcvr *find_cmd_rcvr(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                      unsigned char chan )
{ struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  __ptr = intf->cmd_rcvrs.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_25651;
  ldv_25650: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & (unsigned int )(1 << (int )chan)) != 0U) {
    return (rcvr);
  } else {
  }
  __ptr___0 = rcvr->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_25651: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_25650;
  } else {
    goto ldv_25652;
  }
  ldv_25652: ;
  return (0);
}
}
static int is_cmd_rcvr_exclusive(ipmi_smi_t intf , unsigned char netfn , unsigned char cmd ,
                                 unsigned int chans )
{ struct cmd_rcvr *rcvr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  __ptr = intf->cmd_rcvrs.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  rcvr = (struct cmd_rcvr *)__mptr;
  goto ldv_25675;
  ldv_25674: ;
  if (((int )rcvr->netfn == (int )netfn && (int )rcvr->cmd == (int )cmd) && (rcvr->chans & chans) != 0U) {
    return (0);
  } else {
  }
  __ptr___0 = rcvr->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  rcvr = (struct cmd_rcvr *)__mptr___0;
  ldv_25675: ;
  if ((unsigned long )(& rcvr->link) != (unsigned long )(& intf->cmd_rcvrs)) {
    goto ldv_25674;
  } else {
    goto ldv_25676;
  }
  ldv_25676: ;
  return (1);
}
}
int ipmi_register_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                          unsigned int chans )
{ ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  int rv ;
  void *tmp ;
  int tmp___0 ;
  {
  intf = user->intf;
  rv = 0;
  tmp = kmalloc(40UL, 208U);
  rcvr = (struct cmd_rcvr *)tmp;
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    return (-12);
  } else {
  }
  rcvr->cmd = cmd;
  rcvr->netfn = netfn;
  rcvr->chans = chans;
  rcvr->user = user;
  ldv_mutex_lock_28(& intf->cmd_rcvrs_mutex);
  tmp___0 = is_cmd_rcvr_exclusive(intf, (int )netfn, (int )cmd, chans);
  if (tmp___0 == 0) {
    rv = -16;
    goto out_unlock;
  } else {
  }
  list_add_rcu(& rcvr->link, & intf->cmd_rcvrs);
  out_unlock:
  ldv_mutex_unlock_29(& intf->cmd_rcvrs_mutex);
  if (rv != 0) {
    kfree((void const *)rcvr);
  } else {
  }
  return (rv);
}
}
int ipmi_unregister_for_cmd(ipmi_user_t user , unsigned char netfn , unsigned char cmd ,
                            unsigned int chans )
{ ipmi_smi_t intf ;
  struct cmd_rcvr *rcvr ;
  struct cmd_rcvr *rcvrs ;
  int i ;
  int rv ;
  {
  intf = user->intf;
  rcvrs = 0;
  rv = -2;
  ldv_mutex_lock_30(& intf->cmd_rcvrs_mutex);
  i = 0;
  goto ldv_25709;
  ldv_25708: ;
  if (((unsigned int )(1 << i) & chans) == 0U) {
    goto ldv_25707;
  } else {
  }
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )((unsigned char )i));
  if ((unsigned long )rcvr == (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_25707;
  } else {
  }
  if ((unsigned long )rcvr->user == (unsigned long )user) {
    rv = 0;
    rcvr->chans = rcvr->chans & ~ chans;
    if (rcvr->chans == 0U) {
      list_del_rcu(& rcvr->link);
      rcvr->next = rcvrs;
      rcvrs = rcvr;
    } else {
    }
  } else {
  }
  ldv_25707:
  i = i + 1;
  ldv_25709: ;
  if (i <= 15) {
    goto ldv_25708;
  } else {
    goto ldv_25710;
  }
  ldv_25710:
  ldv_mutex_unlock_31(& intf->cmd_rcvrs_mutex);
  synchronize_rcu();
  goto ldv_25712;
  ldv_25711:
  rcvr = rcvrs;
  rcvrs = rcvr->next;
  kfree((void const *)rcvr);
  ldv_25712: ;
  if ((unsigned long )rcvrs != (unsigned long )((struct cmd_rcvr *)0)) {
    goto ldv_25711;
  } else {
    goto ldv_25713;
  }
  ldv_25713: ;
  return (rv);
}
}
static unsigned char ipmb_checksum(unsigned char *data , int size )
{ unsigned char csum ;
  {
  csum = 0U;
  goto ldv_25729;
  ldv_25728:
  csum = (int )*data + (int )csum;
  size = size - 1;
  data = data + 1;
  ldv_25729: ;
  if (size > 0) {
    goto ldv_25728;
  } else {
    goto ldv_25730;
  }
  ldv_25730: ;
  return (- ((int )csum));
}
}
__inline static void format_ipmb_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                     struct ipmi_ipmb_addr *ipmb_addr , long msgid ,
                                     unsigned char ipmb_seq , int broadcast , unsigned char source_address ,
                                     unsigned char source_lun )
{ int i ;
  size_t __len ;
  void *__ret ;
  {
  i = broadcast;
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )ipmb_addr->channel;
  if (broadcast != 0) {
    smi_msg->data[3] = 0U;
  } else {
  }
  smi_msg->data[i + 3] = ipmb_addr->slave_addr;
  smi_msg->data[i + 4] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )ipmb_addr->lun) & 3));
  smi_msg->data[i + 5] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 3UL),
                                       2);
  smi_msg->data[i + 6] = source_address;
  smi_msg->data[i + 7] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[i + 8] = msg->cmd;
  if ((unsigned int )msg->data_len != 0U) {
    __len = (size_t )msg->data_len;
    __ret = memcpy((void *)(& smi_msg->data) + ((unsigned long )i + 9UL),
                             (void const *)msg->data, __len);
  } else {
  }
  smi_msg->data_size = (int )msg->data_len + 9;
  smi_msg->data[smi_msg->data_size + i] = ipmb_checksum((unsigned char *)(& smi_msg->data) + ((unsigned long )i + 6UL),
                                                        smi_msg->data_size + -6);
  smi_msg->data_size = smi_msg->data_size + (i + 1);
  smi_msg->msgid = msgid;
  return;
}
}
__inline static void format_lan_msg(struct ipmi_smi_msg *smi_msg , struct kernel_ipmi_msg *msg ,
                                    struct ipmi_lan_addr *lan_addr , long msgid ,
                                    unsigned char ipmb_seq , unsigned char source_lun )
{ size_t __len ;
  void *__ret ;
  {
  smi_msg->data[0] = 24U;
  smi_msg->data[1] = 52U;
  smi_msg->data[2] = (unsigned char )lan_addr->channel;
  smi_msg->data[3] = lan_addr->session_handle;
  smi_msg->data[4] = lan_addr->remote_SWID;
  smi_msg->data[5] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )lan_addr->lun) & 3));
  smi_msg->data[6] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 4UL, 2);
  smi_msg->data[7] = lan_addr->local_SWID;
  smi_msg->data[8] = (unsigned char )((int )((signed char )((int )ipmb_seq << 2)) | (int )((signed char )source_lun));
  smi_msg->data[9] = msg->cmd;
  if ((unsigned int )msg->data_len != 0U) {
    __len = (size_t )msg->data_len;
    __ret = memcpy((void *)(& smi_msg->data) + 10U, (void const *)msg->data,
                             __len);
  } else {
  }
  smi_msg->data_size = (int )msg->data_len + 10;
  smi_msg->data[smi_msg->data_size] = ipmb_checksum((unsigned char *)(& smi_msg->data) + 7UL,
                                                    smi_msg->data_size + -7);
  smi_msg->data_size = smi_msg->data_size + 1;
  smi_msg->msgid = msgid;
  return;
}
}
static int i_ipmi_request(ipmi_user_t user , ipmi_smi_t intf , struct ipmi_addr *addr ,
                          long msgid , struct kernel_ipmi_msg *msg , void *user_msg_data ,
                          void *supplied_smi , struct ipmi_recv_msg *supplied_recv ,
                          int priority , unsigned char source_address , unsigned char source_lun ,
                          int retries , unsigned int retry_time_ms )
{ int rv ;
  struct ipmi_smi_msg *smi_msg ;
  struct ipmi_recv_msg *recv_msg ;
  unsigned long flags ;
  struct ipmi_smi_handlers *handlers ;
  struct ipmi_system_interface_addr *smi_addr ;
  size_t __len ;
  void *__ret ;
  raw_spinlock_t *tmp ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  unsigned char ipmb_seq ;
  long seqid ;
  int broadcast ;
  size_t __len___1 ;
  void *__ret___1 ;
  raw_spinlock_t *tmp___0 ;
  size_t __len___2 ;
  void *__ret___2 ;
  struct ipmi_lan_addr *lan_addr ;
  unsigned char ipmb_seq___0 ;
  long seqid___0 ;
  size_t __len___3 ;
  void *__ret___3 ;
  raw_spinlock_t *tmp___1 ;
  size_t __len___4 ;
  void *__ret___4 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  rv = 0;
  if ((unsigned long )supplied_recv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    recv_msg = supplied_recv;
  } else {
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      return (-12);
    } else {
    }
  }
  recv_msg->user_msg_data = user_msg_data;
  if ((unsigned long )supplied_smi != (unsigned long )((void *)0)) {
    smi_msg = (struct ipmi_smi_msg *)supplied_smi;
  } else {
    smi_msg = ipmi_alloc_smi_msg();
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      ipmi_free_recv_msg(recv_msg);
      return (-12);
    } else {
    }
  }
  rcu_read_lock();
  handlers = intf->handlers;
  if ((unsigned long )handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    rv = -19;
    goto out_err;
  } else {
  }
  recv_msg->user = user;
  if ((unsigned long )user != (unsigned long )((ipmi_user_t )0)) {
    kref_get(& user->refcount);
  } else {
  }
  recv_msg->msgid = msgid;
  recv_msg->msg = *msg;
  if (addr->addr_type == 12) {
    if ((int )msg->netfn & 1) {
      rv = -22;
      goto out_err;
    } else {
    }
    smi_addr = (struct ipmi_system_interface_addr *)addr;
    if ((unsigned int )smi_addr->lun > 3U) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      goto out_err;
    } else {
    }
    __len = 8UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& recv_msg->addr), (void const *)smi_addr, __len);
    } else {
      __ret = memcpy((void *)(& recv_msg->addr), (void const *)smi_addr,
                               __len);
    }
    if ((unsigned int )msg->netfn == 6U && (((unsigned int )msg->cmd == 52U || (unsigned int )msg->cmd == 51U) || (unsigned int )msg->cmd == 53U)) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -22;
      goto out_err;
    } else {
    }
    if (((unsigned int )msg->netfn == 6U && ((unsigned int )msg->cmd == 2U || (unsigned int )msg->cmd == 3U)) || (unsigned int )msg->netfn == 8U) {
      tmp = spinlock_check(& intf->maintenance_mode_lock);
      flags = _raw_spin_lock_irqsave(tmp);
      intf->auto_maintenance_timeout = 30000;
      if (intf->maintenance_mode == 0 && intf->maintenance_mode_enable == 0) {
        intf->maintenance_mode_enable = 1;
        maintenance_mode_update(intf);
      } else {
      }
      spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
    } else {
    }
    if ((int )msg->data_len + 2 > 272) {
      atomic_inc((atomic_t *)(& intf->stats));
      rv = -90;
      goto out_err;
    } else {
    }
    smi_msg->data[0] = (unsigned char )((int )((signed char )((int )msg->netfn << 2)) | ((int )((signed char )smi_addr->lun) & 3));
    smi_msg->data[1] = msg->cmd;
    smi_msg->msgid = msgid;
    smi_msg->user_data = (void *)recv_msg;
    if ((unsigned int )msg->data_len != 0U) {
      __len___0 = (size_t )msg->data_len;
      __ret___0 = memcpy((void *)(& smi_msg->data) + 2U, (void const *)msg->data,
                                   __len___0);
    } else {
    }
    smi_msg->data_size = (int )msg->data_len + 2;
    atomic_inc((atomic_t *)(& intf->stats) + 1UL);
  } else {
    tmp___3 = is_ipmb_addr(addr);
    if (tmp___3 != 0) {
      goto _L;
    } else {
      tmp___4 = is_ipmb_bcast_addr(addr);
      if (tmp___4 != 0) {
        _L:
        broadcast = 0;
        if ((int )addr->channel > 15) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        if ((unsigned int )intf->channels[(int )addr->channel].medium != 1U) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        if (retries < 0) {
          if (addr->addr_type == 65) {
            retries = 0;
          } else {
            retries = 4;
          }
        } else {
        }
        if (addr->addr_type == 65) {
          addr->addr_type = 1;
          broadcast = 1;
        } else {
        }
        if (retry_time_ms == 0U) {
          retry_time_ms = 1000U;
        } else {
        }
        if (((int )msg->data_len + 10) + broadcast > 272) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -90;
          goto out_err;
        } else {
        }
        ipmb_addr = (struct ipmi_ipmb_addr *)addr;
        if ((unsigned int )ipmb_addr->lun > 3U) {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        } else {
        }
        __len___1 = 8UL;
        if (__len___1 > 63UL) {
          __ret___1 = memcpy((void *)(& recv_msg->addr), (void const *)ipmb_addr,
                               __len___1);
        } else {
          __ret___1 = memcpy((void *)(& recv_msg->addr), (void const *)ipmb_addr,
                                       __len___1);
        }
        if ((int )recv_msg->msg.netfn & 1) {
          atomic_inc((atomic_t *)(& intf->stats) + 9UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, msgid, (int )((unsigned char )msgid),
                          broadcast, (int )source_address, (int )source_lun);
          smi_msg->user_data = (void *)recv_msg;
        } else {
          tmp___0 = spinlock_check(& intf->seq_lock);
          flags = _raw_spin_lock_irqsave(tmp___0);
          rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                             broadcast, & ipmb_seq, & seqid);
          if (rv != 0) {
            spin_unlock_irqrestore(& intf->seq_lock, flags);
            goto out_err;
          } else {
          }
          atomic_inc((atomic_t *)(& intf->stats) + 4UL);
          format_ipmb_msg(smi_msg, msg, ipmb_addr, (long )((int )ipmb_seq << 26) | (seqid & 67108863L),
                          (int )ipmb_seq, broadcast, (int )source_address, (int )source_lun);
          __len___2 = (size_t )smi_msg->data_size;
          __ret___2 = memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                                       __len___2);
          recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
          recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
          spin_unlock_irqrestore(& intf->seq_lock, flags);
        }
      } else {
        tmp___2 = is_lan_addr(addr);
        if (tmp___2 != 0) {
          if ((int )addr->channel > 15) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          if ((unsigned int )intf->channels[(int )addr->channel].medium != 4U && (unsigned int )intf->channels[(int )addr->channel].medium != 5U) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          retries = 4;
          if (retry_time_ms == 0U) {
            retry_time_ms = 1000U;
          } else {
          }
          if ((int )msg->data_len + 12 > 272) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -90;
            goto out_err;
          } else {
          }
          lan_addr = (struct ipmi_lan_addr *)addr;
          if ((unsigned int )lan_addr->lun > 3U) {
            atomic_inc((atomic_t *)(& intf->stats));
            rv = -22;
            goto out_err;
          } else {
          }
          __len___3 = 12UL;
          if (__len___3 > 63UL) {
            __ret___3 = memcpy((void *)(& recv_msg->addr), (void const *)lan_addr,
                                 __len___3);
          } else {
            __ret___3 = memcpy((void *)(& recv_msg->addr), (void const *)lan_addr,
                                         __len___3);
          }
          if ((int )recv_msg->msg.netfn & 1) {
            atomic_inc((atomic_t *)(& intf->stats) + 17UL);
            format_lan_msg(smi_msg, msg, lan_addr, msgid, (int )((unsigned char )msgid),
                           (int )source_lun);
            smi_msg->user_data = (void *)recv_msg;
          } else {
            tmp___1 = spinlock_check(& intf->seq_lock);
            flags = _raw_spin_lock_irqsave(tmp___1);
            rv = intf_next_seq(intf, recv_msg, (unsigned long )retry_time_ms, retries,
                               0, & ipmb_seq___0, & seqid___0);
            if (rv != 0) {
              spin_unlock_irqrestore(& intf->seq_lock, flags);
              goto out_err;
            } else {
            }
            atomic_inc((atomic_t *)(& intf->stats) + 13UL);
            format_lan_msg(smi_msg, msg, lan_addr, (long )((int )ipmb_seq___0 << 26) | (seqid___0 & 67108863L),
                           (int )ipmb_seq___0, (int )source_lun);
            __len___4 = (size_t )smi_msg->data_size;
            __ret___4 = memcpy((void *)(& recv_msg->msg_data), (void const *)(& smi_msg->data),
                                         __len___4);
            recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
            recv_msg->msg.data_len = (unsigned short )smi_msg->data_size;
            spin_unlock_irqrestore(& intf->seq_lock, flags);
          }
        } else {
          atomic_inc((atomic_t *)(& intf->stats));
          rv = -22;
          goto out_err;
        }
      }
    }
  }
  (*(handlers->sender))(intf->send_info, smi_msg, priority);
  rcu_read_unlock();
  return (0);
  out_err:
  rcu_read_unlock();
  ipmi_free_smi_msg(smi_msg);
  ipmi_free_recv_msg(recv_msg);
  return (rv);
}
}
static int check_addr(ipmi_smi_t intf , struct ipmi_addr *addr , unsigned char *saddr ,
                      unsigned char *lun )
{
  {
  if ((int )addr->channel > 15) {
    return (-22);
  } else {
  }
  *lun = intf->channels[(int )addr->channel].lun;
  *saddr = intf->channels[(int )addr->channel].address;
  return (0);
}
}
int ipmi_request_settime(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                         struct kernel_ipmi_msg *msg , void *user_msg_data , int priority ,
                         int retries , unsigned int retry_time_ms )
{ unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  rv = check_addr(user->intf, addr, & saddr, & lun);
  if (rv != 0) {
    return (rv);
  } else {
  }
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, 0, 0, priority,
                       (int )saddr, (int )lun, retries, retry_time_ms);
  return (tmp);
}
}
int ipmi_request_supply_msgs(ipmi_user_t user , struct ipmi_addr *addr , long msgid ,
                             struct kernel_ipmi_msg *msg , void *user_msg_data , void *supplied_smi ,
                             struct ipmi_recv_msg *supplied_recv , int priority )
{ unsigned char saddr ;
  unsigned char lun ;
  int rv ;
  int tmp ;
  {
  saddr = 0U;
  lun = 0U;
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    return (-22);
  } else {
  }
  rv = check_addr(user->intf, addr, & saddr, & lun);
  if (rv != 0) {
    return (rv);
  } else {
  }
  tmp = i_ipmi_request(user, user->intf, addr, msgid, msg, user_msg_data, supplied_smi,
                       supplied_recv, priority, (int )saddr, (int )lun, -1, 0U);
  return (tmp);
}
}
static int smi_ipmb_proc_show(struct seq_file *m , void *v )
{ ipmi_smi_t intf ;
  int i ;
  int tmp ;
  {
  intf = (ipmi_smi_t )m->private;
  seq_printf(m, "%x", (int )intf->channels[0].address);
  i = 1;
  goto ldv_25877;
  ldv_25876:
  seq_printf(m, " %x", (int )intf->channels[i].address);
  i = i + 1;
  ldv_25877: ;
  if (i <= 15) {
    goto ldv_25876;
  } else {
    goto ldv_25878;
  }
  ldv_25878:
  tmp = seq_putc(m, 10);
  return (tmp);
}
}
static int smi_ipmb_proc_open(struct inode *inode , struct file *file )
{ struct proc_dir_entry *tmp ;
  int tmp___0 ;
  {
  tmp = PDE((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_ipmb_proc_show, tmp->data);
  return (tmp___0);
}
}
static struct file_operations const smi_ipmb_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & smi_ipmb_proc_open, 0, & single_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_version_proc_show(struct seq_file *m , void *v )
{ ipmi_smi_t intf ;
  int tmp ;
  {
  intf = (ipmi_smi_t )m->private;
  tmp = seq_printf(m, "%u.%u\n", (int )(intf->bmc)->id.ipmi_version & 15, (int )(intf->bmc)->id.ipmi_version >> 4);
  return (tmp);
}
}
static int smi_version_proc_open(struct inode *inode , struct file *file )
{ struct proc_dir_entry *tmp ;
  int tmp___0 ;
  {
  tmp = PDE((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_version_proc_show, tmp->data);
  return (tmp___0);
}
}
static struct file_operations const smi_version_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & smi_version_proc_open, 0,
    & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static int smi_stats_proc_show(struct seq_file *m , void *v )
{ ipmi_smi_t intf ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
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
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  {
  intf = (ipmi_smi_t )m->private;
  tmp = atomic_read((atomic_t const *)(& intf->stats));
  seq_printf(m, "sent_invalid_commands:       %u\n", (unsigned int )tmp);
  tmp___0 = atomic_read((atomic_t const *)(& intf->stats) + 1U);
  seq_printf(m, "sent_local_commands:         %u\n", (unsigned int )tmp___0);
  tmp___1 = atomic_read((atomic_t const *)(& intf->stats) + 2U);
  seq_printf(m, "handled_local_responses:     %u\n", (unsigned int )tmp___1);
  tmp___2 = atomic_read((atomic_t const *)(& intf->stats) + 3U);
  seq_printf(m, "unhandled_local_responses:   %u\n", (unsigned int )tmp___2);
  tmp___3 = atomic_read((atomic_t const *)(& intf->stats) + 4U);
  seq_printf(m, "sent_ipmb_commands:          %u\n", (unsigned int )tmp___3);
  tmp___4 = atomic_read((atomic_t const *)(& intf->stats) + 5U);
  seq_printf(m, "sent_ipmb_command_errs:      %u\n", (unsigned int )tmp___4);
  tmp___5 = atomic_read((atomic_t const *)(& intf->stats) + 6U);
  seq_printf(m, "retransmitted_ipmb_commands: %u\n", (unsigned int )tmp___5);
  tmp___6 = atomic_read((atomic_t const *)(& intf->stats) + 7U);
  seq_printf(m, "timed_out_ipmb_commands:     %u\n", (unsigned int )tmp___6);
  tmp___7 = atomic_read((atomic_t const *)(& intf->stats) + 8U);
  seq_printf(m, "timed_out_ipmb_broadcasts:   %u\n", (unsigned int )tmp___7);
  tmp___8 = atomic_read((atomic_t const *)(& intf->stats) + 9U);
  seq_printf(m, "sent_ipmb_responses:         %u\n", (unsigned int )tmp___8);
  tmp___9 = atomic_read((atomic_t const *)(& intf->stats) + 10U);
  seq_printf(m, "handled_ipmb_responses:      %u\n", (unsigned int )tmp___9);
  tmp___10 = atomic_read((atomic_t const *)(& intf->stats) + 11U);
  seq_printf(m, "invalid_ipmb_responses:      %u\n", (unsigned int )tmp___10);
  tmp___11 = atomic_read((atomic_t const *)(& intf->stats) + 12U);
  seq_printf(m, "unhandled_ipmb_responses:    %u\n", (unsigned int )tmp___11);
  tmp___12 = atomic_read((atomic_t const *)(& intf->stats) + 13U);
  seq_printf(m, "sent_lan_commands:           %u\n", (unsigned int )tmp___12);
  tmp___13 = atomic_read((atomic_t const *)(& intf->stats) + 14U);
  seq_printf(m, "sent_lan_command_errs:       %u\n", (unsigned int )tmp___13);
  tmp___14 = atomic_read((atomic_t const *)(& intf->stats) + 15U);
  seq_printf(m, "retransmitted_lan_commands:  %u\n", (unsigned int )tmp___14);
  tmp___15 = atomic_read((atomic_t const *)(& intf->stats) + 16U);
  seq_printf(m, "timed_out_lan_commands:      %u\n", (unsigned int )tmp___15);
  tmp___16 = atomic_read((atomic_t const *)(& intf->stats) + 17U);
  seq_printf(m, "sent_lan_responses:          %u\n", (unsigned int )tmp___16);
  tmp___17 = atomic_read((atomic_t const *)(& intf->stats) + 18U);
  seq_printf(m, "handled_lan_responses:       %u\n", (unsigned int )tmp___17);
  tmp___18 = atomic_read((atomic_t const *)(& intf->stats) + 19U);
  seq_printf(m, "invalid_lan_responses:       %u\n", (unsigned int )tmp___18);
  tmp___19 = atomic_read((atomic_t const *)(& intf->stats) + 20U);
  seq_printf(m, "unhandled_lan_responses:     %u\n", (unsigned int )tmp___19);
  tmp___20 = atomic_read((atomic_t const *)(& intf->stats) + 21U);
  seq_printf(m, "handled_commands:            %u\n", (unsigned int )tmp___20);
  tmp___21 = atomic_read((atomic_t const *)(& intf->stats) + 22U);
  seq_printf(m, "invalid_commands:            %u\n", (unsigned int )tmp___21);
  tmp___22 = atomic_read((atomic_t const *)(& intf->stats) + 23U);
  seq_printf(m, "unhandled_commands:          %u\n", (unsigned int )tmp___22);
  tmp___23 = atomic_read((atomic_t const *)(& intf->stats) + 24U);
  seq_printf(m, "invalid_events:              %u\n", (unsigned int )tmp___23);
  tmp___24 = atomic_read((atomic_t const *)(& intf->stats) + 25U);
  seq_printf(m, "events:                      %u\n", (unsigned int )tmp___24);
  tmp___25 = atomic_read((atomic_t const *)(& intf->stats) + 27U);
  seq_printf(m, "failed rexmit LAN msgs:      %u\n", (unsigned int )tmp___25);
  tmp___26 = atomic_read((atomic_t const *)(& intf->stats) + 26U);
  seq_printf(m, "failed rexmit IPMB msgs:     %u\n", (unsigned int )tmp___26);
  return (0);
}
}
static int smi_stats_proc_open(struct inode *inode , struct file *file )
{ struct proc_dir_entry *tmp ;
  int tmp___0 ;
  {
  tmp = PDE((struct inode const *)inode);
  tmp___0 = single_open(file, & smi_stats_proc_show, tmp->data);
  return (tmp___0);
}
}
static struct file_operations const smi_stats_proc_ops =
     {0, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, & smi_stats_proc_open, 0,
    & single_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
int ipmi_smi_add_proc_entry(ipmi_smi_t smi , char *name , struct file_operations const *proc_ops ,
                            void *data )
{ int rv ;
  struct proc_dir_entry *file ;
  struct ipmi_proc_entry *entry ;
  void *tmp ;
  size_t tmp___0 ;
  void *tmp___1 ;
  {
  rv = 0;
  tmp = kmalloc(16UL, 208U);
  entry = (struct ipmi_proc_entry *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct ipmi_proc_entry *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = strlen((char const *)name);
  tmp___1 = kmalloc(tmp___0 + 1UL, 208U);
  entry->name = (char *)tmp___1;
  if ((unsigned long )entry->name == (unsigned long )((char *)0)) {
    kfree((void const *)entry);
    return (-12);
  } else {
  }
  strcpy(entry->name, (char const *)name);
  file = proc_create_data((char const *)name, 0, smi->proc_dir, proc_ops, data);
  if ((unsigned long )file == (unsigned long )((struct proc_dir_entry *)0)) {
    kfree((void const *)entry->name);
    kfree((void const *)entry);
    rv = -12;
  } else {
    ldv_mutex_lock_32(& smi->proc_entry_lock);
    entry->next = smi->proc_entries;
    smi->proc_entries = entry;
    ldv_mutex_unlock_33(& smi->proc_entry_lock);
  }
  return (rv);
}
}
static int add_proc_entries(ipmi_smi_t smi , int num )
{ int rv ;
  {
  rv = 0;
  sprintf((char *)(& smi->proc_dir_name), "%d", num);
  smi->proc_dir = proc_mkdir((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  if ((unsigned long )smi->proc_dir == (unsigned long )((struct proc_dir_entry *)0)) {
    rv = -12;
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"stats", & smi_stats_proc_ops, (void *)smi);
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"ipmb", & smi_ipmb_proc_ops, (void *)smi);
  } else {
  }
  if (rv == 0) {
    rv = ipmi_smi_add_proc_entry(smi, (char *)"version", & smi_version_proc_ops, (void *)smi);
  } else {
  }
  return (rv);
}
}
static void remove_proc_entries(ipmi_smi_t smi )
{ struct ipmi_proc_entry *entry ;
  {
  ldv_mutex_lock_34(& smi->proc_entry_lock);
  goto ldv_25932;
  ldv_25931:
  entry = smi->proc_entries;
  smi->proc_entries = entry->next;
  remove_proc_entry((char const *)entry->name, smi->proc_dir);
  kfree((void const *)entry->name);
  kfree((void const *)entry);
  ldv_25932: ;
  if ((unsigned long )smi->proc_entries != (unsigned long )((struct ipmi_proc_entry *)0)) {
    goto ldv_25931;
  } else {
    goto ldv_25933;
  }
  ldv_25933:
  ldv_mutex_unlock_35(& smi->proc_entry_lock);
  remove_proc_entry((char const *)(& smi->proc_dir_name), proc_ipmi_root);
  return;
}
}
static int __find_bmc_guid(struct device *dev , void *data )
{ unsigned char *id ;
  struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  id = (unsigned char *)data;
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = memcmp((void const *)(& bmc->guid), (void const *)id, 16UL);
  return (tmp___0 == 0);
}
}
static struct bmc_device *ipmi_find_bmc_guid(struct device_driver *drv , unsigned char *guid )
{ struct device *dev ;
  void *tmp ;
  {
  dev = driver_find_device(drv, 0, (void *)guid, & __find_bmc_guid);
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    tmp = dev_get_drvdata((struct device const *)dev);
    return ((struct bmc_device *)tmp);
  } else {
    return (0);
  }
}
}
static int __find_bmc_prod_dev_id(struct device *dev , void *data )
{ struct prod_dev_id *id ;
  struct bmc_device *bmc ;
  void *tmp ;
  {
  id = (struct prod_dev_id *)data;
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  return (bmc->id.product_id == id->product_id && (int )bmc->id.device_id == (int )id->device_id);
}
}
static struct bmc_device *ipmi_find_bmc_prod_dev_id(struct device_driver *drv , unsigned int product_id ,
                                                    unsigned char device_id )
{ struct prod_dev_id id ;
  struct device *dev ;
  void *tmp ;
  {
  id.product_id = product_id;
  id.device_id = device_id;
  dev = driver_find_device(drv, 0, (void *)(& id), & __find_bmc_prod_dev_id);
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    tmp = dev_get_drvdata((struct device const *)dev);
    return ((struct bmc_device *)tmp);
  } else {
    return (0);
  }
}
}
static ssize_t device_id_show(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_id);
  return ((ssize_t )tmp___0);
}
}
static ssize_t provides_dev_sdrs_show(struct device *dev , struct device_attribute *attr ,
                                      char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 10UL, "%u\n", (int )bmc->id.device_revision >> 7);
  return ((ssize_t )tmp___0);
}
}
static ssize_t revision_show(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 20UL, "%u\n", (int )bmc->id.device_revision & 15);
  return ((ssize_t )tmp___0);
}
}
static ssize_t firmware_rev_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 20UL, "%u.%x\n", (int )bmc->id.firmware_revision_1, (int )bmc->id.firmware_revision_2);
  return ((ssize_t )tmp___0);
}
}
static ssize_t ipmi_version_show(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 20UL, "%u.%u\n", (int )bmc->id.ipmi_version & 15, (int )bmc->id.ipmi_version >> 4);
  return ((ssize_t )tmp___0);
}
}
static ssize_t add_dev_support_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 10UL, "0x%02x\n", (int )bmc->id.additional_device_support);
  return ((ssize_t )tmp___0);
}
}
static ssize_t manufacturer_id_show(struct device *dev , struct device_attribute *attr ,
                                    char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 20UL, "0x%6.6x\n", bmc->id.manufacturer_id);
  return ((ssize_t )tmp___0);
}
}
static ssize_t product_id_show(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 10UL, "0x%4.4x\n", bmc->id.product_id);
  return ((ssize_t )tmp___0);
}
}
static ssize_t aux_firmware_rev_show(struct device *dev , struct device_attribute *attr ,
                                     char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 21UL, "0x%02x 0x%02x 0x%02x 0x%02x\n", (int )bmc->id.aux_firmware_revision[3],
                     (int )bmc->id.aux_firmware_revision[2], (int )bmc->id.aux_firmware_revision[1],
                     (int )bmc->id.aux_firmware_revision[0]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t guid_show(struct device *dev , struct device_attribute *attr , char *buf )
{ struct bmc_device *bmc ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  bmc = (struct bmc_device *)tmp;
  tmp___0 = snprintf(buf, 100UL, "%Lx%Lx\n", (long long )bmc->guid[0], (long long )bmc->guid[8]);
  return ((ssize_t )tmp___0);
}
}
static void remove_files(struct bmc_device *bmc )
{
  {
  if ((unsigned long )bmc->dev == (unsigned long )((struct platform_device *)0)) {
    return;
  } else {
  }
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->device_id_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->provides_dev_sdrs_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->revision_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->firmware_rev_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->version_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->add_dev_support_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->manufacturer_id_attr));
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->product_id_attr));
  if ((unsigned int )*((unsigned char *)bmc + 28UL) != 0U) {
    device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->aux_firmware_rev_attr));
  } else {
  }
  if (bmc->guid_set != 0) {
    device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->guid_attr));
  } else {
  }
  return;
}
}
static void cleanup_bmc_device(struct kref *ref )
{ struct bmc_device *bmc ;
  struct kref const *__mptr ;
  {
  __mptr = (struct kref const *)ref;
  bmc = (struct bmc_device *)__mptr + 0xffffffffffffffccUL;
  remove_files(bmc);
  platform_device_unregister(bmc->dev);
  kfree((void const *)bmc);
  return;
}
}
static void ipmi_bmc_unregister(ipmi_smi_t intf )
{ struct bmc_device *bmc ;
  {
  bmc = intf->bmc;
  if ((unsigned long )intf->sysfs_name != (unsigned long )((char *)0)) {
    sysfs_remove_link(& (intf->si_dev)->kobj, (char const *)intf->sysfs_name);
    kfree((void const *)intf->sysfs_name);
    intf->sysfs_name = 0;
  } else {
  }
  if ((unsigned long )intf->my_dev_name != (unsigned long )((char *)0)) {
    sysfs_remove_link(& (bmc->dev)->dev.kobj, (char const *)intf->my_dev_name);
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = 0;
  } else {
  }
  ldv_mutex_lock_36(& ipmidriver_mutex);
  kref_put(& bmc->refcount, & cleanup_bmc_device);
  intf->bmc = 0;
  ldv_mutex_unlock_37(& ipmidriver_mutex);
  return;
}
}
static int create_files(struct bmc_device *bmc )
{ int err ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  struct lock_class_key __key___8 ;
  {
  bmc->device_id_attr.attr.name = "device_id";
  bmc->device_id_attr.attr.mode = 292U;
  bmc->device_id_attr.show = & device_id_show;
  bmc->device_id_attr.attr.key = & __key;
  bmc->provides_dev_sdrs_attr.attr.name = "provides_device_sdrs";
  bmc->provides_dev_sdrs_attr.attr.mode = 292U;
  bmc->provides_dev_sdrs_attr.show = & provides_dev_sdrs_show;
  bmc->provides_dev_sdrs_attr.attr.key = & __key___0;
  bmc->revision_attr.attr.name = "revision";
  bmc->revision_attr.attr.mode = 292U;
  bmc->revision_attr.show = & revision_show;
  bmc->revision_attr.attr.key = & __key___1;
  bmc->firmware_rev_attr.attr.name = "firmware_revision";
  bmc->firmware_rev_attr.attr.mode = 292U;
  bmc->firmware_rev_attr.show = & firmware_rev_show;
  bmc->firmware_rev_attr.attr.key = & __key___2;
  bmc->version_attr.attr.name = "ipmi_version";
  bmc->version_attr.attr.mode = 292U;
  bmc->version_attr.show = & ipmi_version_show;
  bmc->version_attr.attr.key = & __key___3;
  bmc->add_dev_support_attr.attr.name = "additional_device_support";
  bmc->add_dev_support_attr.attr.mode = 292U;
  bmc->add_dev_support_attr.show = & add_dev_support_show;
  bmc->add_dev_support_attr.attr.key = & __key___4;
  bmc->manufacturer_id_attr.attr.name = "manufacturer_id";
  bmc->manufacturer_id_attr.attr.mode = 292U;
  bmc->manufacturer_id_attr.show = & manufacturer_id_show;
  bmc->manufacturer_id_attr.attr.key = & __key___5;
  bmc->product_id_attr.attr.name = "product_id";
  bmc->product_id_attr.attr.mode = 292U;
  bmc->product_id_attr.show = & product_id_show;
  bmc->product_id_attr.attr.key = & __key___6;
  bmc->guid_attr.attr.name = "guid";
  bmc->guid_attr.attr.mode = 292U;
  bmc->guid_attr.show = & guid_show;
  bmc->guid_attr.attr.key = & __key___7;
  bmc->aux_firmware_rev_attr.attr.name = "aux_firmware_revision";
  bmc->aux_firmware_rev_attr.attr.mode = 292U;
  bmc->aux_firmware_rev_attr.show = & aux_firmware_rev_show;
  bmc->aux_firmware_rev_attr.attr.key = & __key___8;
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->device_id_attr));
  if (err != 0) {
    goto out;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->provides_dev_sdrs_attr));
  if (err != 0) {
    goto out_devid;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->revision_attr));
  if (err != 0) {
    goto out_sdrs;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->firmware_rev_attr));
  if (err != 0) {
    goto out_rev;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->version_attr));
  if (err != 0) {
    goto out_firm;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->add_dev_support_attr));
  if (err != 0) {
    goto out_version;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->manufacturer_id_attr));
  if (err != 0) {
    goto out_add_dev;
  } else {
  }
  err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->product_id_attr));
  if (err != 0) {
    goto out_manu;
  } else {
  }
  if ((unsigned int )*((unsigned char *)bmc + 28UL) != 0U) {
    err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->aux_firmware_rev_attr));
    if (err != 0) {
      goto out_prod_id;
    } else {
    }
  } else {
  }
  if (bmc->guid_set != 0) {
    err = device_create_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->guid_attr));
    if (err != 0) {
      goto out_aux_firm;
    } else {
    }
  } else {
  }
  return (0);
  out_aux_firm: ;
  if ((unsigned int )*((unsigned char *)bmc + 28UL) != 0U) {
    device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->aux_firmware_rev_attr));
  } else {
  }
  out_prod_id:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->product_id_attr));
  out_manu:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->manufacturer_id_attr));
  out_add_dev:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->add_dev_support_attr));
  out_version:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->version_attr));
  out_firm:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->firmware_rev_attr));
  out_rev:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->revision_attr));
  out_sdrs:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->provides_dev_sdrs_attr));
  out_devid:
  device_remove_file(& (bmc->dev)->dev, (struct device_attribute const *)(& bmc->device_id_attr));
  out: ;
  return (err);
}
}
static int ipmi_bmc_register(ipmi_smi_t intf , int ifnum , char const *sysfs_name )
{ int rv ;
  struct bmc_device *bmc ;
  struct bmc_device *old_bmc ;
  int size ;
  char dummy[1U] ;
  char name[14U] ;
  unsigned char orig_dev_id ;
  int warn_printed ;
  struct bmc_device *tmp ;
  void *tmp___0 ;
  {
  bmc = intf->bmc;
  ldv_mutex_lock_38(& ipmidriver_mutex);
  if (bmc->guid_set != 0) {
    old_bmc = ipmi_find_bmc_guid(& ipmidriver.driver, (unsigned char *)(& bmc->guid));
  } else {
    old_bmc = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
  }
  if ((unsigned long )old_bmc != (unsigned long )((struct bmc_device *)0)) {
    kfree((void const *)bmc);
    intf->bmc = old_bmc;
    bmc = old_bmc;
    kref_get(& bmc->refcount);
    ldv_mutex_unlock_39(& ipmidriver_mutex);
    printk("\016ipmi: interfacing existing BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
           bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
  } else {
    orig_dev_id = bmc->id.device_id;
    warn_printed = 0;
    snprintf((char *)(& name), 14UL, "ipmi_bmc.%4.4x", bmc->id.product_id);
    goto ldv_26073;
    ldv_26072: ;
    if (warn_printed == 0) {
      printk("\fIPMI message handler: This machine has two different BMCs with the same product id and device id.  This is an error in the firmware, but incrementing the device id to work around the problem. Prod ID = 0x%x, Dev ID = 0x%x\n",
             bmc->id.product_id, (int )bmc->id.device_id);
      warn_printed = 1;
    } else {
    }
    bmc->id.device_id = (unsigned char )((int )bmc->id.device_id + 1);
    if ((int )bmc->id.device_id == (int )orig_dev_id) {
      printk("\vIPMI message handler: Out of device ids!\n");
      goto ldv_26071;
    } else {
    }
    ldv_26073:
    tmp = ipmi_find_bmc_prod_dev_id(& ipmidriver.driver, bmc->id.product_id, (int )bmc->id.device_id);
    if ((unsigned long )tmp != (unsigned long )((struct bmc_device *)0)) {
      goto ldv_26072;
    } else {
      goto ldv_26071;
    }
    ldv_26071:
    bmc->dev = platform_device_alloc((char const *)(& name), (int )bmc->id.device_id);
    if ((unsigned long )bmc->dev == (unsigned long )((struct platform_device *)0)) {
      ldv_mutex_unlock_40(& ipmidriver_mutex);
      printk("\vipmi_msghandler: Unable to allocate platform device\n");
      return (-12);
    } else {
    }
    (bmc->dev)->dev.driver = & ipmidriver.driver;
    dev_set_drvdata(& (bmc->dev)->dev, (void *)bmc);
    kref_init(& bmc->refcount);
    rv = platform_device_add(bmc->dev);
    ldv_mutex_unlock_41(& ipmidriver_mutex);
    if (rv != 0) {
      platform_device_put(bmc->dev);
      bmc->dev = 0;
      printk("\vipmi_msghandler: Unable to register bmc device: %d\n", rv);
      return (rv);
    } else {
    }
    rv = create_files(bmc);
    if (rv != 0) {
      ldv_mutex_lock_42(& ipmidriver_mutex);
      platform_device_unregister(bmc->dev);
      ldv_mutex_unlock_43(& ipmidriver_mutex);
      return (rv);
    } else {
    }
    _dev_info((struct device const *)intf->si_dev, "Found new BMC (man_id: 0x%6.6x, prod_id: 0x%4.4x, dev_id: 0x%2.2x)\n",
              bmc->id.manufacturer_id, bmc->id.product_id, (int )bmc->id.device_id);
  }
  intf->sysfs_name = kstrdup(sysfs_name, 208U);
  if ((unsigned long )intf->sysfs_name == (unsigned long )((char *)0)) {
    rv = -12;
    printk("\vipmi_msghandler: allocate link to BMC: %d\n", rv);
    goto out_err;
  } else {
  }
  rv = sysfs_create_link(& (intf->si_dev)->kobj, & (bmc->dev)->dev.kobj, (char const *)intf->sysfs_name);
  if (rv != 0) {
    kfree((void const *)intf->sysfs_name);
    intf->sysfs_name = 0;
    printk("\vipmi_msghandler: Unable to create bmc symlink: %d\n", rv);
    goto out_err;
  } else {
  }
  size = snprintf((char *)(& dummy), 0UL, "ipmi%d", ifnum);
  tmp___0 = kmalloc((size_t )(size + 1), 208U);
  intf->my_dev_name = (char *)tmp___0;
  if ((unsigned long )intf->my_dev_name == (unsigned long )((char *)0)) {
    kfree((void const *)intf->sysfs_name);
    intf->sysfs_name = 0;
    rv = -12;
    printk("\vipmi_msghandler: allocate link from BMC: %d\n", rv);
    goto out_err;
  } else {
  }
  snprintf(intf->my_dev_name, (size_t )(size + 1), "ipmi%d", ifnum);
  rv = sysfs_create_link(& (bmc->dev)->dev.kobj, & (intf->si_dev)->kobj, (char const *)intf->my_dev_name);
  if (rv != 0) {
    kfree((void const *)intf->sysfs_name);
    intf->sysfs_name = 0;
    kfree((void const *)intf->my_dev_name);
    intf->my_dev_name = 0;
    printk("\vipmi_msghandler: Unable to create symlink to bmc: %d\n", rv);
    goto out_err;
  } else {
  }
  return (0);
  out_err:
  ipmi_bmc_unregister(intf);
  return (rv);
}
}
static int send_guid_cmd(ipmi_smi_t intf , int chan )
{ struct kernel_ipmi_msg msg ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 8U;
  msg.data = 0;
  msg.data_len = 0U;
  tmp = i_ipmi_request(0, intf, (struct ipmi_addr *)(& si), 0L, & msg, (void *)intf,
                       0, 0, 0, (int )intf->channels[0].address, (int )intf->channels[0].lun,
                       -1, 0U);
  return (tmp);
}
}
static void guid_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{ size_t __len ;
  void *__ret ;
  {
  if ((msg->addr.addr_type != 12 || (unsigned int )msg->msg.netfn != 7U) || (unsigned int )msg->msg.cmd != 8U) {
    return;
  } else {
  }
  if ((unsigned int )*(msg->msg.data) != 0U) {
    (intf->bmc)->guid_set = 0;
    goto out;
  } else {
  }
  if ((unsigned int )msg->msg.data_len <= 16U) {
    (intf->bmc)->guid_set = 0;
    printk("\fIPMI message handler: guid_handler: The GUID response from the BMC was too short, it was %d but should have been 17.  Assuming GUID is not available.\n",
           (int )msg->msg.data_len);
    goto out;
  } else {
  }
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& (intf->bmc)->guid), (void const *)msg->msg.data,
                     __len);
  } else {
    __ret = memcpy((void *)(& (intf->bmc)->guid), (void const *)msg->msg.data,
                             __len);
  }
  (intf->bmc)->guid_set = 1;
  out:
  __wake_up(& intf->waitq, 3U, 1, 0);
  return;
}
}
static void get_guid(ipmi_smi_t intf )
{ int rv ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  {
  (intf->bmc)->guid_set = 2;
  intf->null_user_handler = & guid_handler;
  rv = send_guid_cmd(intf, 0);
  if (rv != 0) {
    (intf->bmc)->guid_set = 0;
  } else {
  }
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_26093;
  } else {
  }
  tmp = get_current();
  __wait.flags = 0U;
  __wait.private = (void *)tmp;
  __wait.func = & autoremove_wake_function;
  __wait.task_list.next = & __wait.task_list;
  __wait.task_list.prev = & __wait.task_list;
  ldv_26096:
  prepare_to_wait(& intf->waitq, & __wait, 2);
  if ((intf->bmc)->guid_set != 2) {
    goto ldv_26095;
  } else {
  }
  schedule();
  goto ldv_26096;
  ldv_26095:
  finish_wait(& intf->waitq, & __wait);
  ldv_26093:
  intf->null_user_handler = 0;
  return;
}
}
static int send_channel_info_cmd(ipmi_smi_t intf , int chan )
{ struct kernel_ipmi_msg msg ;
  unsigned char data[1U] ;
  struct ipmi_system_interface_addr si ;
  int tmp ;
  {
  si.addr_type = 12;
  si.channel = 15;
  si.lun = 0U;
  msg.netfn = 6U;
  msg.cmd = 66U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 1U;
  data[0] = (unsigned char )chan;
  tmp = i_ipmi_request(0, intf, (struct ipmi_addr *)(& si), 0L, & msg, (void *)intf,
                       0, 0, 0, (int )intf->channels[0].address, (int )intf->channels[0].lun,
                       -1, 0U);
  return (tmp);
}
}
static void channel_handler(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{ int rv ;
  int chan ;
  {
  rv = 0;
  if ((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 7U) && (unsigned int )msg->msg.cmd == 66U) {
    if ((unsigned int )*(msg->msg.data) != 0U) {
      if ((unsigned int )*(msg->msg.data) == 193U) {
        intf->channels[0].medium = 1U;
        intf->channels[0].protocol = 1U;
        rv = -38;
        intf->curr_channel = 16;
        __wake_up(& intf->waitq, 3U, 1, 0);
        goto out;
      } else {
      }
      goto next_channel;
    } else {
    }
    if ((unsigned int )msg->msg.data_len <= 3U) {
      goto next_channel;
    } else {
    }
    chan = intf->curr_channel;
    intf->channels[chan].medium = (unsigned int )*(msg->msg.data + 2UL) & 127U;
    intf->channels[chan].protocol = (unsigned int )*(msg->msg.data + 3UL) & 31U;
    next_channel:
    intf->curr_channel = intf->curr_channel + 1;
    if (intf->curr_channel > 15) {
      __wake_up(& intf->waitq, 3U, 1, 0);
    } else {
      rv = send_channel_info_cmd(intf, intf->curr_channel);
    }
    if (rv != 0) {
      intf->curr_channel = 16;
      __wake_up(& intf->waitq, 3U, 1, 0);
      printk("\fIPMI message handler: Error sending channel information: %d\n", rv);
    } else {
    }
  } else {
  }
  out: ;
  return;
}
}
static void ipmi_poll(ipmi_smi_t intf )
{
  {
  if ((unsigned long )(intf->handlers)->poll != (unsigned long )((void (*)(void * ))0)) {
    (*((intf->handlers)->poll))(intf->send_info);
  } else {
  }
  handle_new_recv_msgs(intf);
  return;
}
}
void ipmi_poll_interface(ipmi_user_t user )
{
  {
  ipmi_poll(user->intf);
  return;
}
}
int ipmi_register_smi(struct ipmi_smi_handlers *handlers , void *send_info , struct ipmi_device_id *device_id ,
                      struct device *si_dev , char const *sysfs_name , unsigned char slave_addr )
{ int i ;
  int j ;
  int rv ;
  ipmi_smi_t intf ;
  ipmi_smi_t tintf ;
  struct list_head *link ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___3 ;
  {
  if (initialized == 0) {
    rv = ipmi_init_msghandler();
    if (rv != 0) {
      return (rv);
    } else {
    }
    if (initialized == 0) {
      return (-19);
    } else {
    }
  } else {
  }
  tmp = kzalloc(4232UL, 208U);
  intf = (ipmi_smi_t )tmp;
  if ((unsigned long )intf == (unsigned long )((ipmi_smi_t )0)) {
    return (-12);
  } else {
  }
  intf->ipmi_version_major = (unsigned int )device_id->ipmi_version & 15U;
  intf->ipmi_version_minor = (int )device_id->ipmi_version >> 4;
  tmp___0 = kzalloc(536UL, 208U);
  intf->bmc = (struct bmc_device *)tmp___0;
  if ((unsigned long )intf->bmc == (unsigned long )((struct bmc_device *)0)) {
    kfree((void const *)intf);
    return (-12);
  } else {
  }
  intf->intf_num = -1;
  kref_init(& intf->refcount);
  (intf->bmc)->id = *device_id;
  intf->si_dev = si_dev;
  j = 0;
  goto ldv_26139;
  ldv_26138:
  intf->channels[j].address = 32U;
  intf->channels[j].lun = 2U;
  j = j + 1;
  ldv_26139: ;
  if (j <= 15) {
    goto ldv_26138;
  } else {
    goto ldv_26140;
  }
  ldv_26140: ;
  if ((unsigned int )slave_addr != 0U) {
    intf->channels[0].address = slave_addr;
  } else {
  }
  INIT_LIST_HEAD(& intf->users);
  intf->handlers = handlers;
  intf->send_info = send_info;
  spinlock_check(& intf->seq_lock);
  __raw_spin_lock_init(& intf->seq_lock.ldv_5961.rlock, "&(&intf->seq_lock)->rlock",
                       & __key);
  j = 0;
  goto ldv_26143;
  ldv_26142:
  intf->seq_table[j].inuse = 0U;
  intf->seq_table[j].seqid = 0L;
  j = j + 1;
  ldv_26143: ;
  if (j <= 63) {
    goto ldv_26142;
  } else {
    goto ldv_26144;
  }
  ldv_26144:
  intf->curr_seq = 0;
  __mutex_init(& intf->proc_entry_lock, "&intf->proc_entry_lock", & __key___0);
  spinlock_check(& intf->waiting_msgs_lock);
  __raw_spin_lock_init(& intf->waiting_msgs_lock.ldv_5961.rlock, "&(&intf->waiting_msgs_lock)->rlock",
                       & __key___1);
  INIT_LIST_HEAD(& intf->waiting_msgs);
  tasklet_init(& intf->recv_tasklet, & smi_recv_tasklet, (unsigned long )intf);
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 0);
  spinlock_check(& intf->events_lock);
  __raw_spin_lock_init(& intf->events_lock.ldv_5961.rlock, "&(&intf->events_lock)->rlock",
                       & __key___2);
  INIT_LIST_HEAD(& intf->waiting_events);
  intf->waiting_events_count = 0U;
  __mutex_init(& intf->cmd_rcvrs_mutex, "&intf->cmd_rcvrs_mutex", & __key___3);
  spinlock_check(& intf->maintenance_mode_lock);
  __raw_spin_lock_init(& intf->maintenance_mode_lock.ldv_5961.rlock, "&(&intf->maintenance_mode_lock)->rlock",
                       & __key___4);
  INIT_LIST_HEAD(& intf->cmd_rcvrs);
  __init_waitqueue_head(& intf->waitq, "&intf->waitq", & __key___5);
  i = 0;
  goto ldv_26152;
  ldv_26151:
  atomic_set((atomic_t *)(& intf->stats) + (unsigned long )i, 0);
  i = i + 1;
  ldv_26152: ;
  if (i <= 27) {
    goto ldv_26151;
  } else {
    goto ldv_26153;
  }
  ldv_26153:
  intf->proc_dir = 0;
  ldv_mutex_lock_44(& smi_watchers_mutex);
  ldv_mutex_lock_45(& ipmi_interfaces_mutex);
  i = 0;
  link = & ipmi_interfaces;
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  tintf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_26170;
  ldv_26169: ;
  if (tintf->intf_num != i) {
    link = & tintf->link;
    goto ldv_26168;
  } else {
  }
  i = i + 1;
  __ptr___0 = tintf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  tintf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_26170: ;
  if ((unsigned long )(& tintf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26169;
  } else {
    goto ldv_26168;
  }
  ldv_26168: ;
  if (i == 0) {
    list_add_rcu(& intf->link, & ipmi_interfaces);
  } else {
    list_add_tail_rcu(& intf->link, link);
  }
  rv = (*(handlers->start_processing))(send_info, intf);
  if (rv != 0) {
    goto out;
  } else {
  }
  get_guid(intf);
  if ((unsigned int )intf->ipmi_version_major > 1U || ((unsigned int )intf->ipmi_version_major == 1U && (unsigned int )intf->ipmi_version_minor > 4U)) {
    intf->null_user_handler = & channel_handler;
    intf->curr_channel = 0;
    rv = send_channel_info_cmd(intf, 0);
    if (rv != 0) {
      goto out;
    } else {
    }
    if (intf->curr_channel > 15) {
      goto ldv_26172;
    } else {
    }
    tmp___3 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___3;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_26175:
    prepare_to_wait(& intf->waitq, & __wait, 2);
    if (intf->curr_channel > 15) {
      goto ldv_26174;
    } else {
    }
    schedule();
    goto ldv_26175;
    ldv_26174:
    finish_wait(& intf->waitq, & __wait);
    ldv_26172:
    intf->null_user_handler = 0;
  } else {
    intf->channels[0].medium = 1U;
    intf->channels[0].protocol = 1U;
    intf->curr_channel = 16;
  }
  if (rv == 0) {
    rv = add_proc_entries(intf, i);
  } else {
  }
  rv = ipmi_bmc_register(intf, i, sysfs_name);
  out: ;
  if (rv != 0) {
    if ((unsigned long )intf->proc_dir != (unsigned long )((struct proc_dir_entry *)0)) {
      remove_proc_entries(intf);
    } else {
    }
    intf->handlers = 0;
    list_del_rcu(& intf->link);
    ldv_mutex_unlock_46(& ipmi_interfaces_mutex);
    ldv_mutex_unlock_47(& smi_watchers_mutex);
    synchronize_rcu();
    kref_put(& intf->refcount, & intf_free);
  } else {
    __asm__ volatile ("": : : "memory");
    intf->intf_num = i;
    ldv_mutex_unlock_48(& ipmi_interfaces_mutex);
    call_smi_watchers(i, intf->si_dev);
    ldv_mutex_unlock_49(& smi_watchers_mutex);
  }
  return (rv);
}
}
static void cleanup_smi_msgs(ipmi_smi_t intf )
{ int i ;
  struct seq_table *ent ;
  {
  i = 0;
  goto ldv_26194;
  ldv_26193:
  ent = (struct seq_table *)(& intf->seq_table) + (unsigned long )i;
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    goto ldv_26192;
  } else {
  }
  deliver_err_response(ent->recv_msg, 255);
  ldv_26192:
  i = i + 1;
  ldv_26194: ;
  if (i <= 63) {
    goto ldv_26193;
  } else {
    goto ldv_26195;
  }
  ldv_26195: ;
  return;
}
}
int ipmi_unregister_smi(ipmi_smi_t intf )
{ struct ipmi_smi_watcher *w ;
  int intf_num ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  intf_num = intf->intf_num;
  ipmi_bmc_unregister(intf);
  ldv_mutex_lock_50(& smi_watchers_mutex);
  ldv_mutex_lock_51(& ipmi_interfaces_mutex);
  intf->intf_num = -1;
  intf->handlers = 0;
  list_del_rcu(& intf->link);
  ldv_mutex_unlock_52(& ipmi_interfaces_mutex);
  synchronize_rcu();
  cleanup_smi_msgs(intf);
  remove_proc_entries(intf);
  __mptr = (struct list_head const *)smi_watchers.next;
  w = (struct ipmi_smi_watcher *)__mptr;
  goto ldv_26206;
  ldv_26205:
  (*(w->smi_gone))(intf_num);
  __mptr___0 = (struct list_head const *)w->link.next;
  w = (struct ipmi_smi_watcher *)__mptr___0;
  ldv_26206: ;
  if ((unsigned long )(& w->link) != (unsigned long )(& smi_watchers)) {
    goto ldv_26205;
  } else {
    goto ldv_26207;
  }
  ldv_26207:
  ldv_mutex_unlock_53(& smi_watchers_mutex);
  kref_put(& intf->refcount, & intf_free);
  return (0);
}
}
static int handle_ipmb_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct ipmi_ipmb_addr ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  {
  if (msg->rsp_size <= 10) {
    atomic_inc((atomic_t *)(& intf->stats) + 11UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  ipmb_addr.addr_type = 1;
  ipmb_addr.slave_addr = msg->rsp[6];
  ipmb_addr.channel = (int )((short )msg->rsp[3]) & 15;
  ipmb_addr.lun = (unsigned int )msg->rsp[7] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[7] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[8],
                      ((int )msg->rsp[4] >> 2) & 254, (struct ipmi_addr *)(& ipmb_addr),
                      & recv_msg);
  if (tmp != 0) {
    atomic_inc((atomic_t *)(& intf->stats) + 12UL);
    return (0);
  } else {
  }
  __len = (size_t )(msg->rsp_size + -9);
  __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U,
                           __len);
  recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 10UL);
  deliver_response(recv_msg);
  return (0);
}
}
static int handle_ipmb_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_ipmb_addr *ipmb_addr ;
  struct ipmi_recv_msg *recv_msg ;
  struct ipmi_smi_handlers *handlers ;
  size_t __len ;
  void *__ret ;
  {
  rv = 0;
  user = 0;
  if (msg->rsp_size <= 9) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[4] >> 2;
  cmd = msg->rsp[8];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = 0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    msg->data[0] = 24U;
    msg->data[1] = 52U;
    msg->data[2] = msg->rsp[3];
    msg->data[3] = msg->rsp[6];
    msg->data[4] = (unsigned char )((int )((signed char )(((int )netfn + 1) << 2)) | ((int )((signed char )msg->rsp[7]) & 3));
    msg->data[5] = ipmb_checksum((unsigned char *)(& msg->data) + 3UL, 2);
    msg->data[6] = intf->channels[(int )msg->rsp[3] & 15].address;
    msg->data[7] = (unsigned char )(((int )((signed char )msg->rsp[7]) & -4) | ((int )((signed char )msg->rsp[4]) & 3));
    msg->data[8] = msg->rsp[8];
    msg->data[9] = 193U;
    msg->data[10] = ipmb_checksum((unsigned char *)(& msg->data) + 6UL, 4);
    msg->data_size = 11;
    rcu_read_lock();
    handlers = intf->handlers;
    if ((unsigned long )handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
      (*(handlers->sender))(intf->send_info, msg, 0);
      rv = -1;
    } else {
    }
    rcu_read_unlock();
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      ipmb_addr = (struct ipmi_ipmb_addr *)(& recv_msg->addr);
      ipmb_addr->addr_type = 1;
      ipmb_addr->slave_addr = msg->rsp[6];
      ipmb_addr->lun = (unsigned int )msg->rsp[7] & 3U;
      ipmb_addr->channel = (int )((short )msg->rsp[3]) & 15;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[7] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[4] >> 2;
      recv_msg->msg.cmd = msg->rsp[8];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65526U;
      __len = (size_t )(msg->rsp_size + -10);
      __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 9U,
                               __len);
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static int handle_lan_get_msg_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct ipmi_lan_addr lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  int tmp ;
  size_t __len ;
  void *__ret ;
  {
  if (msg->rsp_size <= 12) {
    atomic_inc((atomic_t *)(& intf->stats) + 19UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  lan_addr.addr_type = 4;
  lan_addr.session_handle = msg->rsp[4];
  lan_addr.remote_SWID = msg->rsp[8];
  lan_addr.local_SWID = msg->rsp[5];
  lan_addr.channel = (int )((short )msg->rsp[3]) & 15;
  lan_addr.privilege = (int )msg->rsp[3] >> 4;
  lan_addr.lun = (unsigned int )msg->rsp[9] & 3U;
  tmp = intf_find_seq(intf, (int )msg->rsp[9] >> 2, (int )msg->rsp[3] & 15, (int )msg->rsp[10],
                      ((int )msg->rsp[6] >> 2) & 254, (struct ipmi_addr *)(& lan_addr),
                      & recv_msg);
  if (tmp != 0) {
    atomic_inc((atomic_t *)(& intf->stats) + 20UL);
    return (0);
  } else {
  }
  __len = (size_t )(msg->rsp_size + -11);
  __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U,
                           __len);
  recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
  recv_msg->recv_type = 1;
  atomic_inc((atomic_t *)(& intf->stats) + 18UL);
  deliver_response(recv_msg);
  return (0);
}
}
static int handle_lan_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_lan_addr *lan_addr ;
  struct ipmi_recv_msg *recv_msg ;
  size_t __len ;
  void *__ret ;
  {
  rv = 0;
  user = 0;
  if (msg->rsp_size <= 11) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[6] >> 2;
  cmd = msg->rsp[10];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = 0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      lan_addr = (struct ipmi_lan_addr *)(& recv_msg->addr);
      lan_addr->addr_type = 4;
      lan_addr->session_handle = msg->rsp[4];
      lan_addr->remote_SWID = msg->rsp[8];
      lan_addr->local_SWID = msg->rsp[5];
      lan_addr->lun = (unsigned int )msg->rsp[9] & 3U;
      lan_addr->channel = (int )((short )msg->rsp[3]) & 15;
      lan_addr->privilege = (int )msg->rsp[3] >> 4;
      recv_msg->user = user;
      recv_msg->recv_type = 3;
      recv_msg->msgid = (long )((int )msg->rsp[9] >> 2);
      recv_msg->msg.netfn = (int )msg->rsp[6] >> 2;
      recv_msg->msg.cmd = msg->rsp[10];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65524U;
      __len = (size_t )(msg->rsp_size + -12);
      __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 11U,
                               __len);
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static int handle_oem_get_msg_cmd(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct cmd_rcvr *rcvr ;
  int rv ;
  unsigned char netfn ;
  unsigned char cmd ;
  unsigned char chan ;
  ipmi_user_t user ;
  struct ipmi_system_interface_addr *smi_addr ;
  struct ipmi_recv_msg *recv_msg ;
  size_t __len ;
  void *__ret ;
  {
  rv = 0;
  user = 0;
  if (msg->rsp_size <= 3) {
    atomic_inc((atomic_t *)(& intf->stats) + 22UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  netfn = (int )msg->rsp[0] >> 2;
  cmd = msg->rsp[1];
  chan = (unsigned int )msg->rsp[3] & 15U;
  rcu_read_lock();
  rcvr = find_cmd_rcvr(intf, (int )netfn, (int )cmd, (int )chan);
  if ((unsigned long )rcvr != (unsigned long )((struct cmd_rcvr *)0)) {
    user = rcvr->user;
    kref_get(& user->refcount);
  } else {
    user = 0;
  }
  rcu_read_unlock();
  if ((unsigned long )user == (unsigned long )((ipmi_user_t )0)) {
    atomic_inc((atomic_t *)(& intf->stats) + 23UL);
    rv = 0;
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 21UL);
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      kref_put(& user->refcount, & free_user);
    } else {
      smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
      smi_addr->addr_type = 12;
      smi_addr->channel = 15;
      smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
      recv_msg->user = user;
      recv_msg->user_msg_data = 0;
      recv_msg->recv_type = 5;
      recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
      recv_msg->msg.cmd = msg->rsp[1];
      recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
      recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65532U;
      __len = (size_t )(msg->rsp_size + -4);
      __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 4U,
                               __len);
      deliver_response(recv_msg);
    }
  }
  return (rv);
}
}
static void copy_event_into_recv_msg(struct ipmi_recv_msg *recv_msg , struct ipmi_smi_msg *msg )
{ struct ipmi_system_interface_addr *smi_addr ;
  size_t __len ;
  void *__ret ;
  {
  recv_msg->msgid = 0L;
  smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
  smi_addr->addr_type = 12;
  smi_addr->channel = 15;
  smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
  recv_msg->recv_type = 2;
  recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
  recv_msg->msg.cmd = msg->rsp[1];
  __len = (size_t )(msg->rsp_size + -3);
  __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 3U,
                           __len);
  recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
  recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65533U;
  return;
}
}
static int handle_read_event_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct ipmi_recv_msg *recv_msg ;
  struct ipmi_recv_msg *recv_msg2 ;
  struct list_head msgs ;
  ipmi_user_t user ;
  int rv ;
  int deliver_count ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___3 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  rv = 0;
  deliver_count = 0;
  if (msg->rsp_size <= 18) {
    atomic_inc((atomic_t *)(& intf->stats) + 24UL);
    return (0);
  } else {
  }
  if ((unsigned int )msg->rsp[2] != 0U) {
    return (0);
  } else {
  }
  INIT_LIST_HEAD(& msgs);
  tmp = spinlock_check(& intf->events_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  atomic_inc((atomic_t *)(& intf->stats) + 25UL);
  rcu_read_lock();
  __ptr = intf->users.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  user = (struct ipmi_user *)__mptr;
  goto ldv_26326;
  ldv_26325: ;
  if (user->gets_events == 0) {
    goto ldv_26314;
  } else {
  }
  recv_msg = ipmi_alloc_recv_msg();
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    rcu_read_unlock();
    __mptr___0 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___0;
    __mptr___1 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___1;
    goto ldv_26322;
    ldv_26321:
    list_del(& recv_msg->link);
    ipmi_free_recv_msg(recv_msg);
    recv_msg = recv_msg2;
    __mptr___2 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___2;
    ldv_26322: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_26321;
    } else {
      goto ldv_26323;
    }
    ldv_26323:
    rv = 1;
    goto out;
  } else {
  }
  deliver_count = deliver_count + 1;
  copy_event_into_recv_msg(recv_msg, msg);
  recv_msg->user = user;
  kref_get(& user->refcount);
  list_add_tail(& recv_msg->link, & msgs);
  ldv_26314:
  __ptr___0 = user->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___3 = (struct list_head const *)_________p1___0;
  user = (struct ipmi_user *)__mptr___3;
  ldv_26326: ;
  if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
    goto ldv_26325;
  } else {
    goto ldv_26327;
  }
  ldv_26327:
  rcu_read_unlock();
  if (deliver_count != 0) {
    __mptr___4 = (struct list_head const *)msgs.next;
    recv_msg = (struct ipmi_recv_msg *)__mptr___4;
    __mptr___5 = (struct list_head const *)recv_msg->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___5;
    goto ldv_26335;
    ldv_26334:
    list_del(& recv_msg->link);
    deliver_response(recv_msg);
    recv_msg = recv_msg2;
    __mptr___6 = (struct list_head const *)recv_msg2->link.next;
    recv_msg2 = (struct ipmi_recv_msg *)__mptr___6;
    ldv_26335: ;
    if ((unsigned long )(& recv_msg->link) != (unsigned long )(& msgs)) {
      goto ldv_26334;
    } else {
      goto ldv_26336;
    }
    ldv_26336: ;
  } else
  if (intf->waiting_events_count <= 24U) {
    recv_msg = ipmi_alloc_recv_msg();
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      rv = 1;
      goto out;
    } else {
    }
    copy_event_into_recv_msg(recv_msg, msg);
    list_add_tail(& recv_msg->link, & intf->waiting_events);
    intf->waiting_events_count = intf->waiting_events_count + 1U;
  } else
  if ((int )((signed char )intf->event_msg_printed) == 0) {
    printk("\fIPMI message handler: Event queue full, discarding incoming events\n");
    intf->event_msg_printed = 1;
  } else {
  }
  out:
  spin_unlock_irqrestore(& intf->events_lock, flags);
  return (rv);
}
}
static int handle_bmc_rsp(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ struct ipmi_recv_msg *recv_msg ;
  struct ipmi_user *user ;
  struct ipmi_system_interface_addr *smi_addr ;
  size_t __len ;
  void *__ret ;
  {
  recv_msg = (struct ipmi_recv_msg *)msg->user_data;
  if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
    printk("\fIPMI message received with no owner. This\ncould be because of a malformed message, or\nbecause of a hardware error.  Contact your\nhardware vender for assistance\n");
    return (0);
  } else {
  }
  user = recv_msg->user;
  if ((unsigned long )user != (unsigned long )((struct ipmi_user *)0) && user->valid == 0) {
    atomic_inc((atomic_t *)(& intf->stats) + 3UL);
    ipmi_free_recv_msg(recv_msg);
  } else {
    atomic_inc((atomic_t *)(& intf->stats) + 2UL);
    recv_msg->recv_type = 1;
    recv_msg->msgid = msg->msgid;
    smi_addr = (struct ipmi_system_interface_addr *)(& recv_msg->addr);
    smi_addr->addr_type = 12;
    smi_addr->channel = 15;
    smi_addr->lun = (unsigned int )msg->rsp[0] & 3U;
    recv_msg->msg.netfn = (int )msg->rsp[0] >> 2;
    recv_msg->msg.cmd = msg->rsp[1];
    __len = (size_t )(msg->rsp_size + -2);
    __ret = memcpy((void *)(& recv_msg->msg_data), (void const *)(& msg->rsp) + 2U,
                             __len);
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = (unsigned int )((unsigned short )msg->rsp_size) + 65534U;
    deliver_response(recv_msg);
  }
  return (0);
}
}
static int handle_one_recv_msg(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ int requeue ;
  int chan ;
  struct ipmi_recv_msg *recv_msg ;
  {
  if (msg->rsp_size <= 1) {
    printk("\fIPMI message handler: BMC returned to small a message for netfn %x cmd %x, got %d bytes\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           msg->rsp_size);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
  } else
  if ((unsigned int )((int )msg->rsp[0] >> 2) != ((unsigned int )((int )msg->data[0] >> 2) | 1U) || (int )msg->rsp[1] != (int )msg->data[1]) {
    printk("\fIPMI message handler: BMC returned incorrect response, expected netfn %x cmd %x, got netfn %x cmd %x\n",
           (int )((unsigned int )((int )msg->data[0] >> 2) | 1U), (int )msg->data[1],
           (int )msg->rsp[0] >> 2, (int )msg->rsp[1]);
    msg->rsp[0] = (unsigned int )msg->data[0] | 4U;
    msg->rsp[1] = msg->data[1];
    msg->rsp[2] = 255U;
    msg->rsp_size = 3;
  } else {
  }
  if (((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 52U) && (unsigned long )msg->user_data != (unsigned long )((void *)0)) {
    recv_msg = (struct ipmi_recv_msg *)msg->user_data;
    requeue = 0;
    if (msg->rsp_size <= 1) {
      goto out;
    } else {
    }
    chan = (int )msg->data[2] & 15;
    if (chan > 15) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg == (unsigned long )((struct ipmi_recv_msg *)0)) {
      goto out;
    } else {
    }
    if ((unsigned long )recv_msg->user == (unsigned long )((ipmi_user_t )0) || (recv_msg->user)->valid == 0) {
      goto out;
    } else {
    }
    recv_msg->recv_type = 4;
    recv_msg->msg.data = (unsigned char *)(& recv_msg->msg_data);
    recv_msg->msg.data_len = 1U;
    recv_msg->msg_data[0] = msg->rsp[2];
    deliver_response(recv_msg);
  } else
  if ((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 51U) {
    chan = (int )msg->rsp[3] & 15;
    if (chan > 15) {
      requeue = 0;
      goto out;
    } else {
    }
    if (intf->curr_channel <= 15) {
      requeue = 0;
      goto out;
    } else {
    }
    switch ((int )intf->channels[chan].medium) {
    case 1: ;
    if (((int )msg->rsp[4] & 4) != 0) {
      requeue = handle_ipmb_get_msg_rsp(intf, msg);
    } else {
      requeue = handle_ipmb_get_msg_cmd(intf, msg);
    }
    goto ldv_26356;
    case 4: ;
    case 5: ;
    if (((int )msg->rsp[6] & 4) != 0) {
      requeue = handle_lan_get_msg_rsp(intf, msg);
    } else {
      requeue = handle_lan_get_msg_cmd(intf, msg);
    }
    goto ldv_26356;
    default: ;
    if ((unsigned int )intf->channels[chan].medium > 95U && (int )((signed char )intf->channels[chan].medium) >= 0) {
      requeue = handle_oem_get_msg_cmd(intf, msg);
    } else {
      requeue = 0;
    }
    }
    ldv_26356: ;
  } else
  if ((unsigned int )msg->rsp[0] == 28U && (unsigned int )msg->rsp[1] == 53U) {
    requeue = handle_read_event_rsp(intf, msg);
  } else {
    requeue = handle_bmc_rsp(intf, msg);
  }
  out: ;
  return (requeue);
}
}
static void handle_new_recv_msgs(ipmi_smi_t intf )
{ struct ipmi_smi_msg *smi_msg ;
  unsigned long flags ;
  int rv ;
  int run_to_completion ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  ipmi_user_t user ;
  struct list_head *__ptr ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp___2 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  flags = 0UL;
  run_to_completion = intf->run_to_completion;
  if (run_to_completion == 0) {
    tmp = spinlock_check(& intf->waiting_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  goto ldv_26377;
  ldv_26376:
  __mptr = (struct list_head const *)intf->waiting_msgs.next;
  smi_msg = (struct ipmi_smi_msg *)__mptr;
  list_del(& smi_msg->link);
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->waiting_msgs_lock, flags);
  } else {
  }
  rv = handle_one_recv_msg(intf, smi_msg);
  if (run_to_completion == 0) {
    tmp___0 = spinlock_check(& intf->waiting_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
  } else {
  }
  if (rv == 0) {
    ipmi_free_smi_msg(smi_msg);
  } else
  if (rv < 0) {
  } else {
    list_add(& smi_msg->link, & intf->waiting_msgs);
    goto ldv_26375;
  }
  ldv_26377:
  tmp___1 = list_empty((struct list_head const *)(& intf->waiting_msgs));
  if (tmp___1 == 0) {
    goto ldv_26376;
  } else {
    goto ldv_26375;
  }
  ldv_26375: ;
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->waiting_msgs_lock, flags);
  } else {
  }
  tmp___4 = atomic_add_unless(& intf->watchdog_pretimeouts_to_deliver, -1, 0);
  if (tmp___4 != 0) {
    rcu_read_lock();
    __ptr = intf->users.next;
    _________p1 = *((struct list_head * volatile *)(& __ptr));
    tmp___2 = debug_lockdep_rcu_enabled();
    if (tmp___2 != 0 && ! __warned) {
      rcu_read_lock_held();
    } else {
    }
    __mptr___0 = (struct list_head const *)_________p1;
    user = (struct ipmi_user *)__mptr___0;
    goto ldv_26394;
    ldv_26393: ;
    if ((unsigned long )(user->handler)->ipmi_watchdog_pretimeout != (unsigned long )((void (*)(void * ))0)) {
      (*((user->handler)->ipmi_watchdog_pretimeout))(user->handler_data);
    } else {
    }
    __ptr___0 = user->link.next;
    _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
    tmp___3 = debug_lockdep_rcu_enabled();
    if (tmp___3 != 0 && ! __warned___0) {
      rcu_read_lock_held();
    } else {
    }
    __mptr___1 = (struct list_head const *)_________p1___0;
    user = (struct ipmi_user *)__mptr___1;
    ldv_26394: ;
    if ((unsigned long )(& user->link) != (unsigned long )(& intf->users)) {
      goto ldv_26393;
    } else {
      goto ldv_26395;
    }
    ldv_26395:
    rcu_read_unlock();
  } else {
  }
  return;
}
}
static void smi_recv_tasklet(unsigned long val )
{
  {
  handle_new_recv_msgs((struct ipmi_smi *)val);
  return;
}
}
void ipmi_smi_msg_received(ipmi_smi_t intf , struct ipmi_smi_msg *msg )
{ unsigned long flags ;
  int run_to_completion ;
  int chan ;
  raw_spinlock_t *tmp ;
  {
  flags = 0UL;
  if (((msg->data_size > 1 && (unsigned int )msg->data[0] == 24U) && (unsigned int )msg->data[1] == 52U) && (unsigned long )msg->user_data == (unsigned long )((void *)0)) {
    if (((((msg->rsp_size > 2 && (unsigned int )msg->rsp[2] != 0U) && (unsigned int )msg->rsp[2] != 192U) && (unsigned int )msg->rsp[2] != 129U) && (unsigned int )msg->rsp[2] != 130U) && (unsigned int )msg->rsp[2] != 131U) {
      chan = (int )msg->rsp[3] & 15;
      if (chan > 15) {
      } else
      if ((unsigned int )intf->channels[chan].medium == 4U || (unsigned int )intf->channels[chan].medium == 5U) {
        atomic_inc((atomic_t *)(& intf->stats) + 14UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 5UL);
      }
      intf_err_seq(intf, msg->msgid, (unsigned int )msg->rsp[2]);
    } else {
      intf_start_seq_timer(intf, msg->msgid);
    }
    ipmi_free_smi_msg(msg);
    goto out;
  } else {
  }
  run_to_completion = intf->run_to_completion;
  if (run_to_completion == 0) {
    tmp = spinlock_check(& intf->waiting_msgs_lock);
    flags = _raw_spin_lock_irqsave(tmp);
  } else {
  }
  list_add_tail(& msg->link, & intf->waiting_msgs);
  if (run_to_completion == 0) {
    spin_unlock_irqrestore(& intf->waiting_msgs_lock, flags);
  } else {
  }
  tasklet_schedule(& intf->recv_tasklet);
  out: ;
  return;
}
}
void ipmi_smi_watchdog_pretimeout(ipmi_smi_t intf )
{
  {
  atomic_set(& intf->watchdog_pretimeouts_to_deliver, 1);
  tasklet_schedule(& intf->recv_tasklet);
  return;
}
}
static struct ipmi_smi_msg *smi_from_recv_msg(ipmi_smi_t intf , struct ipmi_recv_msg *recv_msg ,
                                              unsigned char seq , long seqid )
{ struct ipmi_smi_msg *smi_msg ;
  struct ipmi_smi_msg *tmp ;
  size_t __len ;
  void *__ret ;
  {
  tmp = ipmi_alloc_smi_msg();
  smi_msg = tmp;
  if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
    return (0);
  } else {
  }
  __len = (size_t )recv_msg->msg.data_len;
  __ret = memcpy((void *)(& smi_msg->data), (void const *)recv_msg->msg.data,
                           __len);
  smi_msg->data_size = (int )recv_msg->msg.data_len;
  smi_msg->msgid = (long )((int )seq << 26) | (seqid & 67108863L);
  return (smi_msg);
}
}
static void check_msg_timeout(ipmi_smi_t intf , struct seq_table *ent , struct list_head *timeouts ,
                              long timeout_period , int slot , unsigned long *flags )
{ struct ipmi_recv_msg *msg ;
  struct ipmi_smi_handlers *handlers ;
  int tmp ;
  struct ipmi_smi_msg *smi_msg ;
  int tmp___0 ;
  int tmp___1 ;
  raw_spinlock_t *tmp___2 ;
  {
  if (intf->intf_num == -1) {
    return;
  } else {
  }
  if ((unsigned int )*((unsigned char *)ent + 0UL) == 0U) {
    return;
  } else {
  }
  ent->timeout = ent->timeout - (unsigned long )timeout_period;
  if (ent->timeout != 0UL) {
    return;
  } else {
  }
  if (ent->retries_left == 0U) {
    ent->inuse = 0U;
    msg = ent->recv_msg;
    list_add_tail(& msg->link, timeouts);
    if ((unsigned int )*((unsigned char *)ent + 0UL) != 0U) {
      atomic_inc((atomic_t *)(& intf->stats) + 8UL);
    } else {
      tmp = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 16UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 7UL);
      }
    }
  } else {
    ent->timeout = 60000UL;
    ent->retries_left = ent->retries_left - 1U;
    smi_msg = smi_from_recv_msg(intf, ent->recv_msg, (int )((unsigned char )slot),
                                ent->seqid);
    if ((unsigned long )smi_msg == (unsigned long )((struct ipmi_smi_msg *)0)) {
      tmp___0 = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp___0 != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 27UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 26UL);
      }
      return;
    } else {
    }
    spin_unlock_irqrestore(& intf->seq_lock, *flags);
    handlers = intf->handlers;
    if ((unsigned long )handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
      tmp___1 = is_lan_addr(& (ent->recv_msg)->addr);
      if (tmp___1 != 0) {
        atomic_inc((atomic_t *)(& intf->stats) + 15UL);
      } else {
        atomic_inc((atomic_t *)(& intf->stats) + 6UL);
      }
      (*((intf->handlers)->sender))(intf->send_info, smi_msg, 0);
    } else {
      ipmi_free_smi_msg(smi_msg);
    }
    tmp___2 = spinlock_check(& intf->seq_lock);
    *flags = _raw_spin_lock_irqsave(tmp___2);
  }
  return;
}
}
static void ipmi_timeout_handler(long timeout_period )
{ ipmi_smi_t intf ;
  struct list_head timeouts ;
  struct ipmi_recv_msg *msg ;
  struct ipmi_recv_msg *msg2 ;
  unsigned long flags ;
  int i ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  raw_spinlock_t *tmp___1 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___3 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___2 ;
  {
  rcu_read_lock();
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_26492;
  ldv_26491:
  tasklet_schedule(& intf->recv_tasklet);
  INIT_LIST_HEAD(& timeouts);
  tmp___0 = spinlock_check(& intf->seq_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_26477;
  ldv_26476:
  check_msg_timeout(intf, (struct seq_table *)(& intf->seq_table) + (unsigned long )i,
                    & timeouts, timeout_period, i, & flags);
  i = i + 1;
  ldv_26477: ;
  if (i <= 63) {
    goto ldv_26476;
  } else {
    goto ldv_26478;
  }
  ldv_26478:
  spin_unlock_irqrestore(& intf->seq_lock, flags);
  __mptr___0 = (struct list_head const *)timeouts.next;
  msg = (struct ipmi_recv_msg *)__mptr___0;
  __mptr___1 = (struct list_head const *)msg->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___1;
  goto ldv_26486;
  ldv_26485:
  deliver_err_response(msg, 195);
  msg = msg2;
  __mptr___2 = (struct list_head const *)msg2->link.next;
  msg2 = (struct ipmi_recv_msg *)__mptr___2;
  ldv_26486: ;
  if ((unsigned long )(& msg->link) != (unsigned long )(& timeouts)) {
    goto ldv_26485;
  } else {
    goto ldv_26487;
  }
  ldv_26487: ;
  if (intf->auto_maintenance_timeout > 0) {
    tmp___1 = spinlock_check(& intf->maintenance_mode_lock);
    flags = _raw_spin_lock_irqsave(tmp___1);
    if (intf->auto_maintenance_timeout > 0) {
      intf->auto_maintenance_timeout = (int )((unsigned int )intf->auto_maintenance_timeout - (unsigned int )timeout_period);
      if (intf->maintenance_mode == 0 && intf->auto_maintenance_timeout <= 0) {
        intf->maintenance_mode_enable = 0;
        maintenance_mode_update(intf);
      } else {
      }
    } else {
    }
    spin_unlock_irqrestore(& intf->maintenance_mode_lock, flags);
  } else {
  }
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___2 = debug_lockdep_rcu_enabled();
  if (tmp___2 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___3 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___3 + 0xfffffffffffffff8UL;
  ldv_26492: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26491;
  } else {
    goto ldv_26493;
  }
  ldv_26493:
  rcu_read_unlock();
  return;
}
}
static void ipmi_request_event(void)
{ ipmi_smi_t intf ;
  struct ipmi_smi_handlers *handlers ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  rcu_read_lock();
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_26515;
  ldv_26514: ;
  if (intf->maintenance_mode_enable != 0) {
    goto ldv_26513;
  } else {
  }
  handlers = intf->handlers;
  if ((unsigned long )handlers != (unsigned long )((struct ipmi_smi_handlers *)0)) {
    (*(handlers->request_events))(intf->send_info);
  } else {
  }
  ldv_26513:
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_26515: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26514;
  } else {
    goto ldv_26516;
  }
  ldv_26516:
  rcu_read_unlock();
  return;
}
}
static struct timer_list ipmi_timer ;
static atomic_t stop_operation ;
static unsigned int ticks_to_req_ev = 1U;
static void ipmi_timeout(unsigned long data )
{ int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& stop_operation));
  if (tmp != 0) {
    return;
  } else {
  }
  ticks_to_req_ev = ticks_to_req_ev - 1U;
  if (ticks_to_req_ev == 0U) {
    ipmi_request_event();
    ticks_to_req_ev = 1U;
  } else {
  }
  ipmi_timeout_handler(1000L);
  mod_timer(& ipmi_timer, (unsigned long )jiffies + 250UL);
  return;
}
}
static atomic_t smi_msg_inuse_count = {0};
static atomic_t recv_msg_inuse_count = {0};
static void free_smi_msg(struct ipmi_smi_msg *msg )
{
  {
  atomic_dec(& smi_msg_inuse_count);
  kfree((void const *)msg);
  return;
}
}
struct ipmi_smi_msg *ipmi_alloc_smi_msg(void)
{ struct ipmi_smi_msg *rv ;
  void *tmp ;
  {
  tmp = kmalloc(592UL, 32U);
  rv = (struct ipmi_smi_msg *)tmp;
  if ((unsigned long )rv != (unsigned long )((struct ipmi_smi_msg *)0)) {
    rv->done = & free_smi_msg;
    rv->user_data = 0;
    atomic_inc(& smi_msg_inuse_count);
  } else {
  }
  return (rv);
}
}
static void free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  atomic_dec(& recv_msg_inuse_count);
  kfree((void const *)msg);
  return;
}
}
static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void)
{ struct ipmi_recv_msg *rv ;
  void *tmp ;
  {
  tmp = kmalloc(384UL, 32U);
  rv = (struct ipmi_recv_msg *)tmp;
  if ((unsigned long )rv != (unsigned long )((struct ipmi_recv_msg *)0)) {
    rv->user = 0;
    rv->done = & free_recv_msg;
    atomic_inc(& recv_msg_inuse_count);
  } else {
  }
  return (rv);
}
}
void ipmi_free_recv_msg(struct ipmi_recv_msg *msg )
{
  {
  if ((unsigned long )msg->user != (unsigned long )((ipmi_user_t )0)) {
    kref_put(& (msg->user)->refcount, & free_user);
  } else {
  }
  (*(msg->done))(msg);
  return;
}
}
static atomic_t panic_done_count = {0};
static void dummy_smi_done_handler(struct ipmi_smi_msg *msg )
{
  {
  atomic_dec(& panic_done_count);
  return;
}
}
static void dummy_recv_done_handler(struct ipmi_recv_msg *msg )
{
  {
  atomic_dec(& panic_done_count);
  return;
}
}
static void ipmi_panic_request_and_wait(ipmi_smi_t intf , struct ipmi_addr *addr ,
                                        struct kernel_ipmi_msg *msg )
{ struct ipmi_smi_msg smi_msg ;
  struct ipmi_recv_msg recv_msg ;
  int rv ;
  int tmp ;
  {
  smi_msg.done = & dummy_smi_done_handler;
  recv_msg.done = & dummy_recv_done_handler;
  atomic_add(2, & panic_done_count);
  rv = i_ipmi_request(0, intf, addr, 0L, msg, (void *)intf, (void *)(& smi_msg), & recv_msg,
                      0, (int )intf->channels[0].address, (int )intf->channels[0].lun,
                      0, 1U);
  if (rv != 0) {
    atomic_sub(2, & panic_done_count);
  } else {
  }
  goto ldv_26569;
  ldv_26568:
  ipmi_poll(intf);
  ldv_26569:
  tmp = atomic_read((atomic_t const *)(& panic_done_count));
  if (tmp != 0) {
    goto ldv_26568;
  } else {
    goto ldv_26570;
  }
  ldv_26570: ;
  return;
}
}
static void event_receiver_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if (((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 5U) && (unsigned int )msg->msg.cmd == 1U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->event_receiver = *(msg->msg.data + 1UL);
    intf->event_receiver_lun = (unsigned int )*(msg->msg.data + 2UL) & 3U;
  } else {
  }
  return;
}
}
static void device_id_fetcher(ipmi_smi_t intf , struct ipmi_recv_msg *msg )
{
  {
  if (((msg->addr.addr_type == 12 && (unsigned int )msg->msg.netfn == 7U) && (unsigned int )msg->msg.cmd == 1U) && (unsigned int )*(msg->msg.data) == 0U) {
    intf->local_sel_device = (unsigned int )((int )*(msg->msg.data + 6UL) >> 2) & 1U;
    intf->local_event_generator = (unsigned int )((int )*(msg->msg.data + 6UL) >> 5) & 1U;
  } else {
  }
  return;
}
}
static void send_panic_events(char *str )
{ struct kernel_ipmi_msg msg ;
  ipmi_smi_t intf ;
  unsigned char data[16U] ;
  struct ipmi_system_interface_addr *si ;
  struct ipmi_addr addr ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  struct list_head *__ptr___1 ;
  struct list_head const *__mptr___1 ;
  struct list_head *_________p1___1 ;
  bool __warned___1 ;
  int tmp___1 ;
  char *p ;
  struct ipmi_ipmb_addr *ipmb ;
  int j ;
  int size ;
  size_t tmp___2 ;
  int tmp___3 ;
  struct list_head *__ptr___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head *_________p1___2 ;
  bool __warned___2 ;
  int tmp___4 ;
  {
  si = (struct ipmi_system_interface_addr *)(& addr);
  si->addr_type = 12;
  si->channel = 15;
  si->lun = 0U;
  msg.netfn = 4U;
  msg.cmd = 2U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 8U;
  data[0] = 65U;
  data[1] = 3U;
  data[2] = 32U;
  data[4] = 111U;
  data[5] = 161U;
  if ((unsigned long )str != (unsigned long )((char *)0)) {
    data[3] = (unsigned char )*str;
    data[6] = (unsigned char )*(str + 1UL);
    data[7] = (unsigned char )*(str + 2UL);
  } else {
  }
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_26603;
  ldv_26602: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_26601;
  } else {
  }
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  ldv_26601:
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_26603: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26602;
  } else {
    goto ldv_26604;
  }
  ldv_26604: ;
  if ((unsigned long )str == (unsigned long )((char *)0)) {
    return;
  } else {
  }
  __ptr___1 = ipmi_interfaces.next;
  _________p1___1 = *((struct list_head * volatile *)(& __ptr___1));
  tmp___1 = debug_lockdep_rcu_enabled();
  if (tmp___1 != 0 && ! __warned___1) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___1 = (struct list_head const *)_________p1___1;
  intf = (struct ipmi_smi *)__mptr___1 + 0xfffffffffffffff8UL;
  goto ldv_26628;
  ldv_26627:
  p = str;
  if (intf->intf_num == -1) {
    goto ldv_26622;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  intf->local_sel_device = 0U;
  intf->local_event_generator = 0U;
  intf->event_receiver = 0U;
  msg.netfn = 6U;
  msg.cmd = 1U;
  msg.data = 0;
  msg.data_len = 0U;
  intf->null_user_handler = & device_id_fetcher;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  if ((unsigned int )intf->local_event_generator != 0U) {
    msg.netfn = 4U;
    msg.cmd = 1U;
    msg.data = 0;
    msg.data_len = 0U;
    intf->null_user_handler = & event_receiver_fetcher;
    ipmi_panic_request_and_wait(intf, & addr, & msg);
  } else {
  }
  intf->null_user_handler = 0;
  if ((((int )intf->event_receiver & 1) == 0 && (unsigned int )intf->event_receiver != 0U) && (int )intf->event_receiver != (int )intf->channels[0].address) {
    ipmb = (struct ipmi_ipmb_addr *)(& addr);
    ipmb->addr_type = 1;
    ipmb->channel = 0;
    ipmb->lun = intf->event_receiver_lun;
    ipmb->slave_addr = intf->event_receiver;
  } else
  if ((unsigned int )intf->local_sel_device != 0U) {
    si = (struct ipmi_system_interface_addr *)(& addr);
    si->addr_type = 12;
    si->channel = 15;
    si->lun = 0U;
  } else {
    goto ldv_26622;
  }
  msg.netfn = 10U;
  msg.cmd = 68U;
  msg.data = (unsigned char *)(& data);
  msg.data_len = 16U;
  j = 0;
  goto ldv_26625;
  ldv_26624:
  tmp___2 = strlen((char const *)p);
  size = (int )tmp___2;
  if (size > 11) {
    size = 11;
  } else {
  }
  data[0] = 0U;
  data[1] = 0U;
  data[2] = 240U;
  data[3] = intf->channels[0].address;
  tmp___3 = j;
  j = j + 1;
  data[4] = (unsigned char )tmp___3;
  strncpy((char *)(& data) + 5U, (char const *)p, 11UL);
  p = p + (unsigned long )size;
  ipmi_panic_request_and_wait(intf, & addr, & msg);
  ldv_26625: ;
  if ((int )((signed char )*p) != 0) {
    goto ldv_26624;
  } else {
    goto ldv_26626;
  }
  ldv_26626: ;
  ldv_26622:
  __ptr___2 = intf->link.next;
  _________p1___2 = *((struct list_head * volatile *)(& __ptr___2));
  tmp___4 = debug_lockdep_rcu_enabled();
  if (tmp___4 != 0 && ! __warned___2) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___2 = (struct list_head const *)_________p1___2;
  intf = (struct ipmi_smi *)__mptr___2 + 0xfffffffffffffff8UL;
  ldv_26628: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26627;
  } else {
    goto ldv_26629;
  }
  ldv_26629: ;
  return;
}
}
static int has_panicked ;
static int panic_event(struct notifier_block *this , unsigned long event , void *ptr )
{ ipmi_smi_t intf ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *_________p1 ;
  bool __warned ;
  int tmp ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *_________p1___0 ;
  bool __warned___0 ;
  int tmp___0 ;
  {
  if (has_panicked != 0) {
    return (0);
  } else {
  }
  has_panicked = 1;
  __ptr = ipmi_interfaces.next;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  tmp = debug_lockdep_rcu_enabled();
  if (tmp != 0 && ! __warned) {
    rcu_read_lock_held();
  } else {
  }
  __mptr = (struct list_head const *)_________p1;
  intf = (struct ipmi_smi *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_26653;
  ldv_26652: ;
  if ((unsigned long )intf->handlers == (unsigned long )((struct ipmi_smi_handlers *)0)) {
    goto ldv_26651;
  } else {
  }
  intf->run_to_completion = 1;
  (*((intf->handlers)->set_run_to_completion))(intf->send_info, 1);
  ldv_26651:
  __ptr___0 = intf->link.next;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  tmp___0 = debug_lockdep_rcu_enabled();
  if (tmp___0 != 0 && ! __warned___0) {
    rcu_read_lock_held();
  } else {
  }
  __mptr___0 = (struct list_head const *)_________p1___0;
  intf = (struct ipmi_smi *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_26653: ;
  if ((unsigned long )(& intf->link) != (unsigned long )(& ipmi_interfaces)) {
    goto ldv_26652;
  } else {
    goto ldv_26654;
  }
  ldv_26654:
  send_panic_events((char *)ptr);
  return (0);
}
}
static struct notifier_block panic_block = {& panic_event, 0, 200};
static int ipmi_init_msghandler(void)
{ int rv ;
  struct lock_class_key __key ;
  {
  if (initialized != 0) {
    return (0);
  } else {
  }
  rv = driver_register(& ipmidriver.driver);
  if (rv != 0) {
    printk("\vIPMI message handler: Could not register IPMI driver\n");
    return (rv);
  } else {
  }
  printk("\016ipmi message handler version 39.2\n");
  proc_ipmi_root = proc_mkdir("ipmi", 0);
  if ((unsigned long )proc_ipmi_root == (unsigned long )((struct proc_dir_entry *)0)) {
    printk("\vIPMI message handler: Unable to create IPMI proc dir");
    return (-12);
  } else {
  }
  init_timer_key(& ipmi_timer, 0U, "((&ipmi_timer))", & __key);
  ipmi_timer.function = & ipmi_timeout;
  ipmi_timer.data = 0UL;
  mod_timer(& ipmi_timer, (unsigned long )jiffies + 250UL);
  atomic_notifier_chain_register(& panic_notifier_list, & panic_block);
  initialized = 1;
  return (0);
}
}
static int ipmi_init_msghandler_mod(void)
{
  {
  ipmi_init_msghandler();
  return (0);
}
}
static void cleanup_ipmi(void)
{ int count ;
  {
  if (initialized == 0) {
    return;
  } else {
  }
  atomic_notifier_chain_unregister(& panic_notifier_list, & panic_block);
  atomic_inc(& stop_operation);
  del_timer_sync(& ipmi_timer);
  remove_proc_entry((char const *)(& proc_ipmi_root->name), 0);
  driver_unregister(& ipmidriver.driver);
  initialized = 0;
  count = atomic_read((atomic_t const *)(& smi_msg_inuse_count));
  if (count != 0) {
    printk("\fIPMI message handler: SMI message count %d at exit\n", count);
  } else {
  }
  count = atomic_read((atomic_t const *)(& recv_msg_inuse_count));
  if (count != 0) {
    printk("\fIPMI message handler: recv message count %d at exit\n", count);
  } else {
  }
  return;
}
}
int ldv_retval_ipmi_init_msghandler_mod ;
extern int ldv_smi_ipmb_proc_ops_release(void) ;
int ldv_retval_smi_stats_proc_open ;
int ldv_retval_smi_version_proc_open ;
void *ldvarg1 ;
void ldv_initialize(void) ;
struct file *smi_stats_proc_ops_group2 ;
struct inode *smi_ipmb_proc_ops_group1 ;
struct file *smi_ipmb_proc_ops_group2 ;
struct notifier_block *ldvarg0 ;
extern int ldv_smi_stats_proc_ops_release(void) ;
int ldv_retval_smi_ipmb_proc_open ;
extern int ldv_smi_version_proc_ops_release(void) ;
struct inode *smi_version_proc_ops_group1 ;
struct file *smi_version_proc_ops_group2 ;
struct inode *smi_stats_proc_ops_group1 ;
void ldv_check_final_state(void) ;
unsigned long ldvarg2 ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  ldv_initialize();
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_26735:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      panic_event(ldvarg0, ldvarg2, ldvarg1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_26710;
    default: ;
    goto ldv_26710;
    }
    ldv_26710: ;
  } else {
  }
  goto ldv_26712;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_smi_ipmb_proc_open = smi_ipmb_proc_open(smi_ipmb_proc_ops_group1,
                                                         smi_ipmb_proc_ops_group2);
      if (ldv_retval_smi_ipmb_proc_open == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_26715;
    case 1: ;
    if (ldv_state_variable_1 == 2) {
      ldv_smi_ipmb_proc_ops_release();
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_26715;
    default: ;
    goto ldv_26715;
    }
    ldv_26715: ;
  } else {
  }
  goto ldv_26712;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      cleanup_ipmi();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_26721;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_ipmi_init_msghandler_mod = ipmi_init_msghandler_mod();
      if (ldv_retval_ipmi_init_msghandler_mod != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_ipmi_init_msghandler_mod == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_2 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
      } else {
      }
    } else {
    }
    goto ldv_26721;
    default: ;
    goto ldv_26721;
    }
    ldv_26721: ;
  } else {
  }
  goto ldv_26712;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_smi_stats_proc_open = smi_stats_proc_open(smi_stats_proc_ops_group1,
                                                           smi_stats_proc_ops_group2);
      if (ldv_retval_smi_stats_proc_open == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_26726;
    case 1: ;
    if (ldv_state_variable_3 == 2) {
      ldv_smi_stats_proc_ops_release();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_26726;
    default: ;
    goto ldv_26726;
    }
    ldv_26726: ;
  } else {
  }
  goto ldv_26712;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_smi_version_proc_open = smi_version_proc_open(smi_version_proc_ops_group1,
                                                               smi_version_proc_ops_group2);
      if (ldv_retval_smi_version_proc_open == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_26731;
    case 1: ;
    if (ldv_state_variable_2 == 2) {
      ldv_smi_version_proc_ops_release();
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_26731;
    default: ;
    goto ldv_26731;
    }
    ldv_26731: ;
  } else {
  }
  goto ldv_26712;
  default: ;
  goto ldv_26712;
  }
  ldv_26712: ;
  goto ldv_26735;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_6(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_proc_entry_lock_of_ipmi_smi(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmidriver_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmidriver_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmidriver_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmidriver_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_smi_watchers_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ipmi_interfaces_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_smi_watchers_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
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
static int ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi ;
int ldv_mutex_lock_interruptible_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 2;
  return;
}
}
int ldv_mutex_trylock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cmd_rcvrs_mutex_of_ipmi_smi(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cmd_rcvrs_mutex_of_ipmi_smi(struct mutex *lock )
{
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 1;
  return;
}
}
static int ldv_mutex_cred_guard_mutex_of_signal_struct ;
int ldv_mutex_lock_interruptible_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex_of_signal_struct(atomic_t *cnt ,
                                                                    struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  return;
}
}
static int ldv_mutex_ipmi_interfaces_mutex ;
int ldv_mutex_lock_interruptible_ipmi_interfaces_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ipmi_interfaces_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ipmi_interfaces_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ipmi_interfaces_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ipmi_interfaces_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ipmi_interfaces_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_ipmi_interfaces_mutex(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ipmi_interfaces_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ipmi_interfaces_mutex(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ipmi_interfaces_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ipmi_interfaces_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_ipmi_interfaces_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_ipmi_interfaces_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ipmi_interfaces_mutex = 1;
  return;
}
}
static int ldv_mutex_ipmidriver_mutex ;
int ldv_mutex_lock_interruptible_ipmidriver_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ipmidriver_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ipmidriver_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ipmidriver_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ipmidriver_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ipmidriver_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_ipmidriver_mutex(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ipmidriver_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ipmidriver_mutex(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ipmidriver_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ipmidriver_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_ipmidriver_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_ipmidriver_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_ipmidriver_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ipmidriver_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
static int ldv_mutex_proc_entry_lock_of_ipmi_smi ;
int ldv_mutex_lock_interruptible_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_proc_entry_lock_of_ipmi_smi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_proc_entry_lock_of_ipmi_smi = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_proc_entry_lock_of_ipmi_smi = 2;
  return;
}
}
int ldv_mutex_trylock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_proc_entry_lock_of_ipmi_smi = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_proc_entry_lock_of_ipmi_smi(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_proc_entry_lock_of_ipmi_smi = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_proc_entry_lock_of_ipmi_smi(struct mutex *lock )
{
  {
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_proc_entry_lock_of_ipmi_smi = 1;
  return;
}
}
static int ldv_mutex_smi_watchers_mutex ;
int ldv_mutex_lock_interruptible_smi_watchers_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_smi_watchers_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_smi_watchers_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_smi_watchers_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_smi_watchers_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_smi_watchers_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_smi_watchers_mutex(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_smi_watchers_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_smi_watchers_mutex(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_smi_watchers_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_smi_watchers_mutex(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_smi_watchers_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_smi_watchers_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_smi_watchers_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_smi_watchers_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi = 1;
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_ipmi_interfaces_mutex = 1;
  ldv_mutex_ipmidriver_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_proc_entry_lock_of_ipmi_smi = 1;
  ldv_mutex_smi_watchers_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cmd_rcvrs_mutex_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_ipmi_interfaces_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_ipmidriver_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_proc_entry_lock_of_ipmi_smi == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_smi_watchers_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_add_rcu(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_register(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int atomic_notifier_chain_unregister(struct atomic_notifier_head *arg0, struct notifier_block *arg1) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
struct device *driver_find_device(struct device_driver *arg0, struct device *arg1, void *arg2, int (*arg3)(struct device *, void *)) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int ldv_smi_ipmb_proc_ops_release() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_smi_stats_proc_ops_release() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_smi_version_proc_ops_release() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_acquire(struct lockdep_map *arg0, unsigned int arg1, int arg2, int arg3, int arg4, struct lockdep_map *arg5, unsigned long arg6) {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_is_held(struct lockdep_map *arg0) {
  return __VERIFIER_nondet_int();
}
void lock_release(struct lockdep_map *arg0, int arg1, unsigned long arg2) {
  return;
}
void lockdep_rcu_suspicious(const char *arg0, const int arg1, const char *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void module_put(struct module *arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_device_add(struct platform_device *arg0) {
  return __VERIFIER_nondet_int();
}
struct platform_device *platform_device_alloc(const char *arg0, int arg1) {
  return ldv_malloc(sizeof(struct platform_device));
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_device_unregister(struct platform_device *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(sizeof(struct proc_dir_entry));
}
struct proc_dir_entry *proc_mkdir(const char *arg0, struct proc_dir_entry *arg1) {
  return ldv_malloc(sizeof(struct proc_dir_entry));
}
int __VERIFIER_nondet_int(void);
int rcu_is_cpu_idle() {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool rcu_lockdep_current_cpu_online() {
  return __VERIFIER_nondet_bool();
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_putc(struct seq_file *arg0, char arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int single_open(struct file *arg0, int (*arg1)(struct seq_file *, void *), void *arg2) {
  return __VERIFIER_nondet_int();
}
void synchronize_sched() {
  return;
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
