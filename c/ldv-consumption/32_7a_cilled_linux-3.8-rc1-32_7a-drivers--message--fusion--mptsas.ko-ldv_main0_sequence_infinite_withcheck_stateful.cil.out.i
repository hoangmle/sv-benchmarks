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
typedef __u64 __le64;
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
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
typedef __u32 u_int32_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
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
struct net_device;
struct completion;
struct pt_regs;
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
union __anonunion_ldv_6433_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6433_31 ldv_6433 ;
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
   int cpu ;
};
struct execute_work {
   struct work_struct work ;
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
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct bio_vec;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
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
union __anonunion_ldv_14096_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14096_134 ldv_14096 ;
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
struct mem_cgroup;
struct __anonstruct_ldv_14614_136 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_14615_135 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_14614_136 ldv_14614 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14615_135 ldv_14615 ;
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
struct inode;
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
struct address_space;
union __anonunion_ldv_14992_138 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_15002_142 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_15004_141 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_15002_142 ldv_15002 ;
   int units ;
};
struct __anonstruct_ldv_15006_140 {
   union __anonunion_ldv_15004_141 ldv_15004 ;
   atomic_t _count ;
};
union __anonunion_ldv_15007_139 {
   unsigned long counters ;
   struct __anonstruct_ldv_15006_140 ldv_15006 ;
};
struct __anonstruct_ldv_15008_137 {
   union __anonunion_ldv_14992_138 ldv_14992 ;
   union __anonunion_ldv_15007_139 ldv_15007 ;
};
struct __anonstruct_ldv_15015_144 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_15019_143 {
   struct list_head lru ;
   struct __anonstruct_ldv_15015_144 ldv_15015 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_15024_145 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_15008_137 ldv_15008 ;
   union __anonunion_ldv_15019_143 ldv_15019 ;
   union __anonunion_ldv_15024_145 ldv_15024 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_147 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_146 {
   struct __anonstruct_linear_147 linear ;
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
   union __anonunion_shared_146 shared ;
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
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct scsi_cmnd;
struct scsi_lun {
   __u8 scsi_lun[8U] ;
};
struct klist_node;
struct klist {
   spinlock_t k_lock ;
   struct list_head k_list ;
   void (*get)(struct klist_node * ) ;
   void (*put)(struct klist_node * ) ;
};
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
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_149 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_149 sigset_t;
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
struct __anonstruct__kill_151 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_152 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_153 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_154 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_155 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_156 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_157 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_150 {
   int _pad[28U] ;
   struct __anonstruct__kill_151 _kill ;
   struct __anonstruct__timer_152 _timer ;
   struct __anonstruct__rt_153 _rt ;
   struct __anonstruct__sigchld_154 _sigchld ;
   struct __anonstruct__sigfault_155 _sigfault ;
   struct __anonstruct__sigpoll_156 _sigpoll ;
   struct __anonstruct__sigsys_157 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_150 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
union __anonunion_ldv_20717_160 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_20726_161 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_162 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_163 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_20717_160 ldv_20717 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_20726_161 ldv_20726 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_162 type_data ;
   union __anonunion_payload_163 payload ;
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
union __anonunion_ki_obj_164 {
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
   union __anonunion_ki_obj_164 ki_obj ;
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
struct backing_dev_info;
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
struct io_context;
struct pipe_inode_info;
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
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct files_struct;
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
struct __anonstruct_ldv_22762_167 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_22764_166 {
   struct __anonstruct_ldv_22762_167 ldv_22762 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_22764_166 ldv_22764 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_168 {
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
   union __anonunion_d_u_168 d_u ;
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
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
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
union __anonunion_ldv_23498_169 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_23498_169 ldv_23498 ;
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
union __anonunion_arg_171 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_170 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_171 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_170 read_descriptor_t;
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
union __anonunion_ldv_23931_172 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_23951_173 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_23967_174 {
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
   union __anonunion_ldv_23931_172 ldv_23931 ;
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
   union __anonunion_ldv_23951_173 ldv_23951 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_23967_174 ldv_23967 ;
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
union __anonunion_f_u_175 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_175 f_u ;
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
struct __anonstruct_afs_177 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_176 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_177 afs ;
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
   union __anonunion_fl_u_176 fl_u ;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
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
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct proc_dir_entry;
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
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
union __anonunion_ldv_28569_179 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_28573_180 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_28569_179 ldv_28569 ;
   union __anonunion_ldv_28573_180 ldv_28573 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
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
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_pool ;
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
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_29020_181 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_183 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_184 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_29031_182 {
   struct __anonstruct_elv_183 elv ;
   struct __anonstruct_flush_184 flush ;
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
   union __anonunion_ldv_29020_181 ldv_29020 ;
   union __anonunion_ldv_29031_182 ldv_29031 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
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
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * );
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
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned char registered : 1 ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
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
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct throtl_data;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
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
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
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
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
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
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
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
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char can_power_off : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
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
   struct work_struct requeue_work ;
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
   bool (*match)(struct scsi_device * ) ;
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
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
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
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
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
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
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
   unsigned short sg_prot_tablesize ;
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
   unsigned char eh_noresume : 1 ;
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
struct attribute_container {
   struct list_head node ;
   struct klist containers ;
   struct class *class ;
   struct attribute_group const *grp ;
   struct device_attribute **attrs ;
   int (*match)(struct attribute_container * , struct device * ) ;
   unsigned long flags ;
};
struct transport_container;
struct transport_container {
   struct attribute_container ac ;
   struct attribute_group const *statistics ;
};
enum sas_protocol {
    SAS_PROTOCOL_NONE = 0,
    SAS_PROTOCOL_SATA = 1,
    SAS_PROTOCOL_SMP = 2,
    SAS_PROTOCOL_STP = 4,
    SAS_PROTOCOL_SSP = 8,
    SAS_PROTOCOL_ALL = 14,
    SAS_PROTOCOL_STP_ALL = 5
} ;
struct sas_rphy;
enum sas_device_type {
    SAS_PHY_UNUSED = 0,
    SAS_END_DEVICE = 1,
    SAS_EDGE_EXPANDER_DEVICE = 2,
    SAS_FANOUT_EXPANDER_DEVICE = 3
} ;
enum sas_linkrate {
    SAS_LINK_RATE_UNKNOWN = 0,
    SAS_PHY_DISABLED = 1,
    SAS_PHY_RESET_PROBLEM = 2,
    SAS_SATA_SPINUP_HOLD = 3,
    SAS_SATA_PORT_SELECTOR = 4,
    SAS_PHY_RESET_IN_PROGRESS = 5,
    SAS_LINK_RATE_1_5_GBPS = 8,
    SAS_LINK_RATE_G1 = 8,
    SAS_LINK_RATE_3_0_GBPS = 9,
    SAS_LINK_RATE_G2 = 9,
    SAS_LINK_RATE_6_0_GBPS = 10,
    SAS_LINK_RATE_12_0_GBPS = 11,
    SAS_LINK_RATE_FAILED = 16,
    SAS_PHY_VIRTUAL = 17
} ;
struct sas_identify {
   enum sas_device_type device_type ;
   enum sas_protocol initiator_port_protocols ;
   enum sas_protocol target_port_protocols ;
   u64 sas_address ;
   u8 phy_identifier ;
};
struct sas_phy {
   struct device dev ;
   int number ;
   int enabled ;
   struct sas_identify identify ;
   enum sas_linkrate negotiated_linkrate ;
   enum sas_linkrate minimum_linkrate_hw ;
   enum sas_linkrate minimum_linkrate ;
   enum sas_linkrate maximum_linkrate_hw ;
   enum sas_linkrate maximum_linkrate ;
   u32 invalid_dword_count ;
   u32 running_disparity_error_count ;
   u32 loss_of_dword_sync_count ;
   u32 phy_reset_problem_count ;
   struct list_head port_siblings ;
   void *hostdata ;
};
struct sas_rphy {
   struct device dev ;
   struct sas_identify identify ;
   struct list_head list ;
   struct request_queue *q ;
   u32 scsi_target_id ;
};
struct sas_expander_device {
   int level ;
   int next_port_id ;
   char vendor_id[9U] ;
   char product_id[17U] ;
   char product_rev[5U] ;
   char component_vendor_id[9U] ;
   u16 component_id ;
   u8 component_revision_id ;
   struct sas_rphy rphy ;
};
struct sas_port {
   struct device dev ;
   int port_identifier ;
   int num_phys ;
   unsigned char is_backlink : 1 ;
   struct sas_rphy *rphy ;
   struct mutex phy_list_mutex ;
   struct list_head phy_list ;
};
struct sas_phy_linkrates {
   enum sas_linkrate maximum_linkrate ;
   enum sas_linkrate minimum_linkrate ;
};
struct sas_function_template {
   int (*get_linkerrors)(struct sas_phy * ) ;
   int (*get_enclosure_identifier)(struct sas_rphy * , u64 * ) ;
   int (*get_bay_identifier)(struct sas_rphy * ) ;
   int (*phy_reset)(struct sas_phy * , int ) ;
   int (*phy_enable)(struct sas_phy * , int ) ;
   int (*phy_setup)(struct sas_phy * ) ;
   void (*phy_release)(struct sas_phy * ) ;
   int (*set_phy_speed)(struct sas_phy * , struct sas_phy_linkrates * ) ;
   int (*smp_handler)(struct Scsi_Host * , struct sas_rphy * , struct request * ) ;
};
struct scsi_transport_template {
   struct transport_container host_attrs ;
   struct transport_container target_attrs ;
   struct transport_container device_attrs ;
   int (*user_scan)(struct Scsi_Host * , uint , uint , uint ) ;
   int device_size ;
   int device_private_offset ;
   int target_size ;
   int target_private_offset ;
   int host_size ;
   unsigned char create_work_queue : 1 ;
   void (*eh_strategy_handler)(struct Scsi_Host * ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*it_nexus_response)(struct Scsi_Host * , u64 , int ) ;
   int (*tsk_mgmt_response)(struct Scsi_Host * , u64 , u64 , int ) ;
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
struct pci_driver;
union __anonunion_ldv_32104_198 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
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
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_32104_198 ldv_32104 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
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
   struct resource busn_res ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
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
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
typedef unsigned char U8;
typedef unsigned short U16;
typedef u_int32_t U32;
struct _U64 {
   U32 Low ;
   U32 High ;
};
typedef struct _U64 U64;
union __anonunion_u_199 {
   U32 Address32 ;
   U64 Address64 ;
};
struct _SGE_SIMPLE_UNION {
   U32 FlagsLength ;
   union __anonunion_u_199 u ;
};
typedef struct _SGE_SIMPLE_UNION SGE_SIMPLE_UNION;
union __anonunion_u_200 {
   U32 Address32 ;
   U64 Address64 ;
};
struct _SGE_CHAIN_UNION {
   U16 Length ;
   U8 NextChainOffset ;
   U8 Flags ;
   union __anonunion_u_200 u ;
};
typedef struct _SGE_CHAIN_UNION SGE_CHAIN_UNION;
union __anonunion_u_202 {
   SGE_SIMPLE_UNION Simple ;
   SGE_CHAIN_UNION Chain ;
};
struct _SGE_IO_UNION {
   union __anonunion_u_202 u ;
};
typedef struct _SGE_IO_UNION SGE_IO_UNION;
struct _MSG_REQUEST_HEADER {
   U8 Reserved[2U] ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
};
typedef struct _MSG_REQUEST_HEADER MPIHeader_t;
struct _MSG_DEFAULT_REPLY {
   U8 Reserved[2U] ;
   U8 MsgLength ;
   U8 Function ;
   U8 Reserved1[3U] ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
};
typedef struct _MSG_DEFAULT_REPLY MPIDefaultReply_t;
struct _MPI_FW_VERSION_STRUCT {
   U8 Dev ;
   U8 Unit ;
   U8 Minor ;
   U8 Major ;
};
typedef struct _MPI_FW_VERSION_STRUCT MPI_FW_VERSION_STRUCT;
union _MPI_FW_VERSION {
   MPI_FW_VERSION_STRUCT Struct ;
   U32 Word ;
};
typedef union _MPI_FW_VERSION MPI_FW_VERSION;
struct _MSG_IOC_FACTS_REPLY {
   U16 MsgVersion ;
   U8 MsgLength ;
   U8 Function ;
   U16 HeaderVersion ;
   U8 IOCNumber ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 IOCExceptions ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U8 MaxChainDepth ;
   U8 WhoInit ;
   U8 BlockSize ;
   U8 Flags ;
   U16 ReplyQueueDepth ;
   U16 RequestFrameSize ;
   U16 Reserved_0101_FWVersion ;
   U16 ProductID ;
   U32 CurrentHostMfaHighAddr ;
   U16 GlobalCredits ;
   U8 NumberOfPorts ;
   U8 EventState ;
   U32 CurrentSenseBufferHighAddr ;
   U16 CurReplyFrameSize ;
   U8 MaxDevices ;
   U8 MaxBuses ;
   U32 FWImageSize ;
   U32 IOCCapabilities ;
   MPI_FW_VERSION FWVersion ;
   U16 HighPriorityQueueDepth ;
   U16 Reserved2 ;
   SGE_SIMPLE_UNION HostPageBufferSGE ;
   U32 ReplyFifoHostSignalingAddr ;
};
typedef struct _MSG_IOC_FACTS_REPLY IOCFactsReply_t;
struct _MSG_PORT_FACTS_REPLY {
   U16 Reserved ;
   U8 MsgLength ;
   U8 Function ;
   U16 Reserved1 ;
   U8 PortNumber ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 Reserved2 ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U8 Reserved3 ;
   U8 PortType ;
   U16 MaxDevices ;
   U16 PortSCSIID ;
   U16 ProtocolFlags ;
   U16 MaxPostedCmdBuffers ;
   U16 MaxPersistentIDs ;
   U16 MaxLanBuckets ;
   U8 MaxInitiators ;
   U8 Reserved4 ;
   U32 Reserved5 ;
};
typedef struct _MSG_PORT_FACTS_REPLY PortFactsReply_t;
struct _MSG_EVENT_NOTIFY_REPLY {
   U16 EventDataLength ;
   U8 MsgLength ;
   U8 Function ;
   U8 Reserved1[2U] ;
   U8 AckRequired ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 Event ;
   U32 EventContext ;
   U32 Data[1U] ;
};
typedef struct _MSG_EVENT_NOTIFY_REPLY EventNotificationReply_t;
struct _EVENT_DATA_SAS_DEVICE_STATUS_CHANGE {
   U8 TargetID ;
   U8 Bus ;
   U8 ReasonCode ;
   U8 Reserved ;
   U8 ASC ;
   U8 ASCQ ;
   U16 DevHandle ;
   U32 DeviceInfo ;
   U16 ParentDevHandle ;
   U8 PhyNum ;
   U8 Reserved1 ;
   U64 SASAddress ;
   U8 LUN[8U] ;
   U16 TaskTag ;
   U16 Reserved2 ;
};
typedef struct _EVENT_DATA_SAS_DEVICE_STATUS_CHANGE EVENT_DATA_SAS_DEVICE_STATUS_CHANGE;
typedef struct _EVENT_DATA_SAS_DEVICE_STATUS_CHANGE MpiEventDataSasDeviceStatusChange_t;
struct _EVENT_DATA_QUEUE_FULL {
   U8 TargetID ;
   U8 Bus ;
   U16 CurrentDepth ;
};
typedef struct _EVENT_DATA_QUEUE_FULL EventDataQueueFull_t;
struct _EVENT_DATA_RAID {
   U8 VolumeID ;
   U8 VolumeBus ;
   U8 ReasonCode ;
   U8 PhysDiskNum ;
   U8 ASC ;
   U8 ASCQ ;
   U16 Reserved ;
   U32 SettingsStatus ;
};
typedef struct _EVENT_DATA_RAID EVENT_DATA_RAID;
struct _IR2_STATE_CHANGED {
   U16 PreviousState ;
   U16 NewState ;
};
typedef struct _IR2_STATE_CHANGED IR2_STATE_CHANGED;
struct _IR2_PD_INFO {
   U16 DeviceHandle ;
   U8 TruncEnclosureHandle ;
   U8 TruncatedSlot ;
};
typedef struct _IR2_PD_INFO IR2_PD_INFO;
union _MPI_IR2_RC_EVENT_DATA {
   IR2_STATE_CHANGED StateChanged ;
   U32 Lba ;
   IR2_PD_INFO PdInfo ;
};
typedef union _MPI_IR2_RC_EVENT_DATA MPI_IR2_RC_EVENT_DATA;
struct _MPI_EVENT_DATA_IR2 {
   U8 TargetID ;
   U8 Bus ;
   U8 ReasonCode ;
   U8 PhysDiskNum ;
   MPI_IR2_RC_EVENT_DATA IR2EventData ;
};
typedef struct _MPI_EVENT_DATA_IR2 MPI_EVENT_DATA_IR2;
struct _EVENT_DATA_SAS_BROADCAST_PRIMITIVE {
   U8 PhyNum ;
   U8 Port ;
   U8 PortWidth ;
   U8 Primitive ;
};
typedef struct _EVENT_DATA_SAS_BROADCAST_PRIMITIVE EVENT_DATA_SAS_BROADCAST_PRIMITIVE;
struct _EVENT_DATA_SAS_PHY_LINK_STATUS {
   U8 PhyNum ;
   U8 LinkRates ;
   U16 DevHandle ;
   U64 SASAddress ;
};
typedef struct _EVENT_DATA_SAS_PHY_LINK_STATUS MpiEventDataSasPhyLinkStatus_t;
struct _EVENT_DATA_SAS_DISCOVERY {
   U32 DiscoveryStatus ;
   U32 Reserved1 ;
};
typedef struct _EVENT_DATA_SAS_DISCOVERY EventDataSasDiscovery_t;
struct _EVENT_DATA_SAS_EXPANDER_STATUS_CHANGE {
   U8 ReasonCode ;
   U8 Reserved1 ;
   U16 Reserved2 ;
   U8 PhysicalPort ;
   U8 Reserved3 ;
   U16 EnclosureHandle ;
   U64 SASAddress ;
   U32 DiscoveryStatus ;
   U16 DevHandle ;
   U16 ParentDevHandle ;
   U16 ExpanderChangeCount ;
   U16 ExpanderRouteIndexes ;
   U8 NumPhys ;
   U8 SASLevel ;
   U8 Flags ;
   U8 Reserved4 ;
};
typedef struct _EVENT_DATA_SAS_EXPANDER_STATUS_CHANGE MpiEventDataSasExpanderStatusChange_t;
struct _CONFIG_PAGE_HEADER {
   U8 PageVersion ;
   U8 PageLength ;
   U8 PageNumber ;
   U8 PageType ;
};
typedef struct _CONFIG_PAGE_HEADER CONFIG_PAGE_HEADER;
typedef struct _CONFIG_PAGE_HEADER ConfigPageHeader_t;
struct _CONFIG_EXTENDED_PAGE_HEADER {
   U8 PageVersion ;
   U8 Reserved1 ;
   U8 PageNumber ;
   U8 PageType ;
   U16 ExtPageLength ;
   U8 ExtPageType ;
   U8 Reserved2 ;
};
typedef struct _CONFIG_EXTENDED_PAGE_HEADER CONFIG_EXTENDED_PAGE_HEADER;
typedef struct _CONFIG_EXTENDED_PAGE_HEADER ConfigExtendedPageHeader_t;
struct _MSG_CONFIG_REPLY {
   U8 Action ;
   U8 Reserved ;
   U8 MsgLength ;
   U8 Function ;
   U16 ExtPageLength ;
   U8 ExtPageType ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   CONFIG_PAGE_HEADER Header ;
};
typedef struct _MSG_CONFIG_REPLY ConfigReply_t;
struct _CONFIG_PAGE_IOC_2_RAID_VOL {
   U8 VolumeID ;
   U8 VolumeBus ;
   U8 VolumeIOC ;
   U8 VolumePageNumber ;
   U8 VolumeType ;
   U8 Flags ;
   U16 Reserved3 ;
};
typedef struct _CONFIG_PAGE_IOC_2_RAID_VOL CONFIG_PAGE_IOC_2_RAID_VOL;
struct _CONFIG_PAGE_IOC_2 {
   CONFIG_PAGE_HEADER Header ;
   U32 CapabilitiesFlags ;
   U8 NumActiveVolumes ;
   U8 MaxVolumes ;
   U8 NumActivePhysDisks ;
   U8 MaxPhysDisks ;
   CONFIG_PAGE_IOC_2_RAID_VOL RaidVolume[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_2 IOCPage2_t;
struct _IOC_3_PHYS_DISK {
   U8 PhysDiskID ;
   U8 PhysDiskBus ;
   U8 PhysDiskIOC ;
   U8 PhysDiskNum ;
};
typedef struct _IOC_3_PHYS_DISK IOC_3_PHYS_DISK;
struct _CONFIG_PAGE_IOC_3 {
   CONFIG_PAGE_HEADER Header ;
   U8 NumPhysDisks ;
   U8 Reserved1 ;
   U16 Reserved2 ;
   IOC_3_PHYS_DISK PhysDisk[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_3 IOCPage3_t;
struct _IOC_4_SEP {
   U8 SEPTargetID ;
   U8 SEPBus ;
   U16 Reserved ;
};
typedef struct _IOC_4_SEP IOC_4_SEP;
struct _CONFIG_PAGE_IOC_4 {
   CONFIG_PAGE_HEADER Header ;
   U8 ActiveSEP ;
   U8 MaxSEP ;
   U16 Reserved1 ;
   IOC_4_SEP SEP[1U] ;
};
typedef struct _CONFIG_PAGE_IOC_4 IOCPage4_t;
struct _CONFIG_PAGE_FC_PORT_0 {
   CONFIG_PAGE_HEADER Header ;
   U32 Flags ;
   U8 MPIPortNumber ;
   U8 LinkType ;
   U8 PortState ;
   U8 Reserved ;
   U32 PortIdentifier ;
   U64 WWNN ;
   U64 WWPN ;
   U32 SupportedServiceClass ;
   U32 SupportedSpeeds ;
   U32 CurrentSpeed ;
   U32 MaxFrameSize ;
   U64 FabricWWNN ;
   U64 FabricWWPN ;
   U32 DiscoveredPortsCount ;
   U32 MaxInitiators ;
   U8 MaxAliasesSupported ;
   U8 MaxHardAliasesSupported ;
   U8 NumCurrentAliases ;
   U8 Reserved1 ;
};
typedef struct _CONFIG_PAGE_FC_PORT_0 FCPortPage0_t;
struct _CONFIG_PAGE_FC_PORT_1 {
   CONFIG_PAGE_HEADER Header ;
   U32 Flags ;
   U64 NoSEEPROMWWNN ;
   U64 NoSEEPROMWWPN ;
   U8 HardALPA ;
   U8 LinkConfig ;
   U8 TopologyConfig ;
   U8 AltConnector ;
   U8 NumRequestedAliases ;
   U8 RR_TOV ;
   U8 InitiatorDeviceTimeout ;
   U8 InitiatorIoPendTimeout ;
};
typedef struct _CONFIG_PAGE_FC_PORT_1 FCPortPage1_t;
struct _RAID_VOL0_PHYS_DISK {
   U16 Reserved ;
   U8 PhysDiskMap ;
   U8 PhysDiskNum ;
};
typedef struct _RAID_VOL0_PHYS_DISK RAID_VOL0_PHYS_DISK;
struct _RAID_VOL0_STATUS {
   U8 Flags ;
   U8 State ;
   U16 Reserved ;
};
typedef struct _RAID_VOL0_STATUS RAID_VOL0_STATUS;
struct _RAID_VOL0_SETTINGS {
   U16 Settings ;
   U8 HotSparePool ;
   U8 Reserved ;
};
typedef struct _RAID_VOL0_SETTINGS RAID_VOL0_SETTINGS;
struct _CONFIG_PAGE_RAID_VOL_0 {
   CONFIG_PAGE_HEADER Header ;
   U8 VolumeID ;
   U8 VolumeBus ;
   U8 VolumeIOC ;
   U8 VolumeType ;
   RAID_VOL0_STATUS VolumeStatus ;
   RAID_VOL0_SETTINGS VolumeSettings ;
   U32 MaxLBA ;
   U32 MaxLBAHigh ;
   U32 StripeSize ;
   U32 Reserved2 ;
   U32 Reserved3 ;
   U8 NumPhysDisks ;
   U8 DataScrubRate ;
   U8 ResyncRate ;
   U8 InactiveStatus ;
   RAID_VOL0_PHYS_DISK PhysDisk[1U] ;
};
typedef struct _CONFIG_PAGE_RAID_VOL_0 *pRaidVolumePage0_t;
struct _RAID_PHYS_DISK0_ERROR_DATA {
   U8 ErrorCdbByte ;
   U8 ErrorSenseKey ;
   U16 Reserved ;
   U16 ErrorCount ;
   U8 ErrorASC ;
   U8 ErrorASCQ ;
   U16 SmartCount ;
   U8 SmartASC ;
   U8 SmartASCQ ;
};
typedef struct _RAID_PHYS_DISK0_ERROR_DATA RAID_PHYS_DISK0_ERROR_DATA;
struct _RAID_PHYS_DISK_INQUIRY_DATA {
   U8 VendorID[8U] ;
   U8 ProductID[16U] ;
   U8 ProductRevLevel[4U] ;
   U8 Info[32U] ;
};
typedef struct _RAID_PHYS_DISK_INQUIRY_DATA RAID_PHYS_DISK0_INQUIRY_DATA;
struct _RAID_PHYS_DISK0_SETTINGS {
   U8 SepID ;
   U8 SepBus ;
   U8 HotSparePool ;
   U8 PhysDiskSettings ;
};
typedef struct _RAID_PHYS_DISK0_SETTINGS RAID_PHYS_DISK0_SETTINGS;
struct _RAID_PHYS_DISK0_STATUS {
   U8 Flags ;
   U8 State ;
   U16 Reserved ;
};
typedef struct _RAID_PHYS_DISK0_STATUS RAID_PHYS_DISK0_STATUS;
struct _CONFIG_PAGE_RAID_PHYS_DISK_0 {
   CONFIG_PAGE_HEADER Header ;
   U8 PhysDiskID ;
   U8 PhysDiskBus ;
   U8 PhysDiskIOC ;
   U8 PhysDiskNum ;
   RAID_PHYS_DISK0_SETTINGS PhysDiskSettings ;
   U32 Reserved1 ;
   U8 ExtDiskIdentifier[8U] ;
   U8 DiskIdentifier[16U] ;
   RAID_PHYS_DISK0_INQUIRY_DATA InquiryData ;
   RAID_PHYS_DISK0_STATUS PhysDiskStatus ;
   U32 MaxLBA ;
   RAID_PHYS_DISK0_ERROR_DATA ErrorData ;
};
typedef struct _CONFIG_PAGE_RAID_PHYS_DISK_0 RaidPhysDiskPage0_t;
typedef struct _CONFIG_PAGE_RAID_PHYS_DISK_0 *pRaidPhysDiskPage0_t;
struct _RAID_PHYS_DISK1_PATH {
   U8 PhysDiskID ;
   U8 PhysDiskBus ;
   U16 Reserved1 ;
   U64 WWID ;
   U64 OwnerWWID ;
   U8 OwnerIdentifier ;
   U8 Reserved2 ;
   U16 Flags ;
};
typedef struct _RAID_PHYS_DISK1_PATH RAID_PHYS_DISK1_PATH;
struct _CONFIG_PAGE_RAID_PHYS_DISK_1 {
   CONFIG_PAGE_HEADER Header ;
   U8 NumPhysDiskPaths ;
   U8 PhysDiskNum ;
   U16 Reserved2 ;
   U32 Reserved1 ;
   RAID_PHYS_DISK1_PATH Path[1U] ;
};
typedef struct _CONFIG_PAGE_RAID_PHYS_DISK_1 RaidPhysDiskPage1_t;
typedef struct _CONFIG_PAGE_RAID_PHYS_DISK_1 *pRaidPhysDiskPage1_t;
struct _CONFIG_PAGE_LAN_0 {
   ConfigPageHeader_t Header ;
   U16 TxRxModes ;
   U16 Reserved ;
   U32 PacketPrePad ;
};
typedef struct _CONFIG_PAGE_LAN_0 LANPage0_t;
struct _CONFIG_PAGE_LAN_1 {
   ConfigPageHeader_t Header ;
   U16 Reserved ;
   U8 CurrentDeviceState ;
   U8 Reserved1 ;
   U32 MinPacketSize ;
   U32 MaxPacketSize ;
   U32 HardwareAddressLow ;
   U32 HardwareAddressHigh ;
   U32 MaxWireSpeedLow ;
   U32 MaxWireSpeedHigh ;
   U32 BucketsRemaining ;
   U32 MaxReplySize ;
   U32 NegWireSpeedLow ;
   U32 NegWireSpeedHigh ;
};
typedef struct _CONFIG_PAGE_LAN_1 LANPage1_t;
struct _MPI_SAS_IO_UNIT0_PHY_DATA {
   U8 Port ;
   U8 PortFlags ;
   U8 PhyFlags ;
   U8 NegotiatedLinkRate ;
   U32 ControllerPhyDeviceInfo ;
   U16 AttachedDeviceHandle ;
   U16 ControllerDevHandle ;
   U32 DiscoveryStatus ;
};
typedef struct _MPI_SAS_IO_UNIT0_PHY_DATA MPI_SAS_IO_UNIT0_PHY_DATA;
struct _CONFIG_PAGE_SAS_IO_UNIT_0 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U16 NvdataVersionDefault ;
   U16 NvdataVersionPersistent ;
   U8 NumPhys ;
   U8 Reserved2 ;
   U16 Reserved3 ;
   MPI_SAS_IO_UNIT0_PHY_DATA PhyData[1U] ;
};
typedef struct _CONFIG_PAGE_SAS_IO_UNIT_0 SasIOUnitPage0_t;
struct _MPI_SAS_IO_UNIT1_PHY_DATA {
   U8 Port ;
   U8 PortFlags ;
   U8 PhyFlags ;
   U8 MaxMinLinkRate ;
   U32 ControllerPhyDeviceInfo ;
   U16 MaxTargetPortConnectTime ;
   U16 Reserved1 ;
};
typedef struct _MPI_SAS_IO_UNIT1_PHY_DATA MPI_SAS_IO_UNIT1_PHY_DATA;
struct _CONFIG_PAGE_SAS_IO_UNIT_1 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U16 ControlFlags ;
   U16 MaxNumSATATargets ;
   U16 AdditionalControlFlags ;
   U16 Reserved1 ;
   U8 NumPhys ;
   U8 SATAMaxQDepth ;
   U8 ReportDeviceMissingDelay ;
   U8 IODeviceMissingDelay ;
   MPI_SAS_IO_UNIT1_PHY_DATA PhyData[1U] ;
};
typedef struct _CONFIG_PAGE_SAS_IO_UNIT_1 SasIOUnitPage1_t;
struct _CONFIG_PAGE_SAS_EXPANDER_0 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U8 PhysicalPort ;
   U8 Reserved1 ;
   U16 EnclosureHandle ;
   U64 SASAddress ;
   U32 DiscoveryStatus ;
   U16 DevHandle ;
   U16 ParentDevHandle ;
   U16 ExpanderChangeCount ;
   U16 ExpanderRouteIndexes ;
   U8 NumPhys ;
   U8 SASLevel ;
   U8 Flags ;
   U8 Reserved3 ;
};
typedef struct _CONFIG_PAGE_SAS_EXPANDER_0 SasExpanderPage0_t;
struct _CONFIG_PAGE_SAS_EXPANDER_1 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U8 PhysicalPort ;
   U8 Reserved1 ;
   U16 Reserved2 ;
   U8 NumPhys ;
   U8 Phy ;
   U16 NumTableEntriesProgrammed ;
   U8 ProgrammedLinkRate ;
   U8 HwLinkRate ;
   U16 AttachedDevHandle ;
   U32 PhyInfo ;
   U32 AttachedDeviceInfo ;
   U16 OwnerDevHandle ;
   U8 ChangeCount ;
   U8 NegotiatedLinkRate ;
   U8 PhyIdentifier ;
   U8 AttachedPhyIdentifier ;
   U8 Reserved3 ;
   U8 DiscoveryInfo ;
   U32 Reserved4 ;
};
typedef struct _CONFIG_PAGE_SAS_EXPANDER_1 SasExpanderPage1_t;
struct _CONFIG_PAGE_SAS_DEVICE_0 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U16 Slot ;
   U16 EnclosureHandle ;
   U64 SASAddress ;
   U16 ParentDevHandle ;
   U8 PhyNum ;
   U8 AccessStatus ;
   U16 DevHandle ;
   U8 TargetID ;
   U8 Bus ;
   U32 DeviceInfo ;
   U16 Flags ;
   U8 PhysicalPort ;
   U8 Reserved2 ;
};
typedef struct _CONFIG_PAGE_SAS_DEVICE_0 SasDevicePage0_t;
struct _CONFIG_PAGE_SAS_PHY_0 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U16 OwnerDevHandle ;
   U16 Reserved1 ;
   U64 SASAddress ;
   U16 AttachedDevHandle ;
   U8 AttachedPhyIdentifier ;
   U8 Reserved2 ;
   U32 AttachedDeviceInfo ;
   U8 ProgrammedLinkRate ;
   U8 HwLinkRate ;
   U8 ChangeCount ;
   U8 Flags ;
   U32 PhyInfo ;
};
typedef struct _CONFIG_PAGE_SAS_PHY_0 SasPhyPage0_t;
struct _CONFIG_PAGE_SAS_PHY_1 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U32 Reserved1 ;
   U32 InvalidDwordCount ;
   U32 RunningDisparityErrorCount ;
   U32 LossDwordSynchCount ;
   U32 PhyResetProblemCount ;
};
typedef struct _CONFIG_PAGE_SAS_PHY_1 SasPhyPage1_t;
struct _CONFIG_PAGE_SAS_ENCLOSURE_0 {
   CONFIG_EXTENDED_PAGE_HEADER Header ;
   U32 Reserved1 ;
   U64 EnclosureLogicalID ;
   U16 Flags ;
   U16 EnclosureHandle ;
   U16 NumSlots ;
   U16 StartSlot ;
   U8 StartTargetID ;
   U8 StartBus ;
   U8 SEPTargetID ;
   U8 SEPBus ;
   U32 Reserved2 ;
   U32 Reserved3 ;
};
typedef struct _CONFIG_PAGE_SAS_ENCLOSURE_0 SasEnclosurePage0_t;
struct _MSG_SCSI_IO_REQUEST {
   U8 TargetID ;
   U8 Bus ;
   U8 ChainOffset ;
   U8 Function ;
   U8 CDBLength ;
   U8 SenseBufferLength ;
   U8 Reserved ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 LUN[8U] ;
   U32 Control ;
   U8 CDB[16U] ;
   U32 DataLength ;
   U32 SenseBufferLowAddr ;
   SGE_IO_UNION SGL ;
};
typedef struct _MSG_SCSI_IO_REQUEST SCSIIORequest_t;
struct _MSG_SCSI_IO_REPLY {
   U8 TargetID ;
   U8 Bus ;
   U8 MsgLength ;
   U8 Function ;
   U8 CDBLength ;
   U8 SenseBufferLength ;
   U8 Reserved ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 SCSIStatus ;
   U8 SCSIState ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 TransferCount ;
   U32 SenseCount ;
   U32 ResponseInfo ;
   U16 TaskTag ;
   U16 Reserved1 ;
};
typedef struct _MSG_SCSI_IO_REPLY SCSIIOReply_t;
struct _MSG_SCSI_TASK_MGMT {
   U8 TargetID ;
   U8 Bus ;
   U8 ChainOffset ;
   U8 Function ;
   U8 Reserved ;
   U8 TaskType ;
   U8 Reserved1 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 LUN[8U] ;
   U32 Reserved2[7U] ;
   U32 TaskMsgContext ;
};
typedef struct _MSG_SCSI_TASK_MGMT SCSITaskMgmt_t;
struct _MSG_SCSI_TASK_MGMT_REPLY {
   U8 TargetID ;
   U8 Bus ;
   U8 MsgLength ;
   U8 Function ;
   U8 ResponseCode ;
   U8 TaskType ;
   U8 Reserved1 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2[2U] ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 TerminationCount ;
};
typedef struct _MSG_SCSI_TASK_MGMT_REPLY SCSITaskMgmtReply_t;
struct _MSG_SMP_PASSTHROUGH_REQUEST {
   U8 PassthroughFlags ;
   U8 PhysicalPort ;
   U8 ChainOffset ;
   U8 Function ;
   U16 RequestDataLength ;
   U8 ConnectionRate ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U32 Reserved1 ;
   U64 SASAddress ;
   U32 Reserved2 ;
   U32 Reserved3 ;
   SGE_SIMPLE_UNION SGL ;
};
typedef struct _MSG_SMP_PASSTHROUGH_REQUEST SmpPassthroughRequest_t;
struct _MSG_SMP_PASSTHROUGH_REPLY {
   U8 PassthroughFlags ;
   U8 PhysicalPort ;
   U8 MsgLength ;
   U8 Function ;
   U16 ResponseDataLength ;
   U8 Reserved1 ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 Reserved2 ;
   U8 SASStatus ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
   U32 Reserved3 ;
   U8 ResponseData[4U] ;
};
typedef struct _MSG_SMP_PASSTHROUGH_REPLY SmpPassthroughReply_t;
struct _MSG_SAS_IOUNIT_CONTROL_REQUEST {
   U8 Operation ;
   U8 Reserved1 ;
   U8 ChainOffset ;
   U8 Function ;
   U16 DevHandle ;
   U8 IOCParameter ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U8 TargetID ;
   U8 Bus ;
   U8 PhyNum ;
   U8 PrimFlags ;
   U32 Primitive ;
   U64 SASAddress ;
   U32 IOCParameterValue ;
};
typedef struct _MSG_SAS_IOUNIT_CONTROL_REQUEST SasIoUnitControlRequest_t;
struct _MSG_SAS_IOUNIT_CONTROL_REPLY {
   U8 Operation ;
   U8 Reserved1 ;
   U8 MsgLength ;
   U8 Function ;
   U16 DevHandle ;
   U8 IOCParameter ;
   U8 MsgFlags ;
   U32 MsgContext ;
   U16 Reserved4 ;
   U16 IOCStatus ;
   U32 IOCLogInfo ;
};
typedef struct _MSG_SAS_IOUNIT_CONTROL_REPLY SasIoUnitControlReply_t;
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
enum ldv_26802 {
    MPTBASE_DRIVER = 0,
    MPTCTL_DRIVER = 1,
    MPTSPI_DRIVER = 2,
    MPTFC_DRIVER = 3,
    MPTSAS_DRIVER = 4,
    MPTLAN_DRIVER = 5,
    MPTSTM_DRIVER = 6,
    MPTUNKNOWN_DRIVER = 7
} ;
typedef enum ldv_26802 MPT_DRIVER_CLASS;
struct __anonstruct_linkage_226 {
   struct list_head list ;
   u32 arg1 ;
   u32 pad ;
   void *argp1 ;
};
struct __anonstruct_fld_229 {
   u16 req_idx ;
   u8 cb_idx ;
   u8 rsvd ;
};
union __anonunion_msgctxu_228 {
   u32 MsgContext ;
   struct __anonstruct_fld_229 fld ;
};
struct __anonstruct_hwhdr_227 {
   u32 __hdr[2U] ;
   union __anonunion_msgctxu_228 msgctxu ;
};
union _MPT_FRAME_TRACKER {
   struct __anonstruct_linkage_226 linkage ;
   struct __anonstruct_hwhdr_227 hwhdr ;
};
typedef union _MPT_FRAME_TRACKER MPT_FRAME_TRACKER;
union __anonunion_u_230 {
   MPIHeader_t hdr ;
   SCSIIORequest_t scsireq ;
   SCSIIOReply_t sreply ;
   ConfigReply_t configreply ;
   MPIDefaultReply_t reply ;
   MPT_FRAME_TRACKER frame ;
};
struct _MPT_FRAME_HDR {
   union __anonunion_u_230 u ;
};
typedef struct _MPT_FRAME_HDR MPT_FRAME_HDR;
struct _SYSIF_REGS {
   u32 Doorbell ;
   u32 WriteSequence ;
   u32 Diagnostic ;
   u32 TestBase ;
   u32 DiagRwData ;
   u32 DiagRwAddress ;
   u32 Reserved1[6U] ;
   u32 IntStatus ;
   u32 IntMask ;
   u32 Reserved2[2U] ;
   u32 RequestFifo ;
   u32 ReplyFifo ;
   u32 RequestHiPriFifo ;
   u32 Reserved3 ;
   u32 HostIndex ;
   u32 Reserved4[15U] ;
   u32 Fubar ;
   u32 Reserved5[1050U] ;
   u32 Reset_1078 ;
};
typedef struct _SYSIF_REGS SYSIF_REGS;
struct _VirtTarget {
   struct scsi_target *starget ;
   u8 tflags ;
   u8 ioc_id ;
   u8 id ;
   u8 channel ;
   u8 minSyncFactor ;
   u8 maxOffset ;
   u8 maxWidth ;
   u8 negoFlags ;
   u8 raidVolume ;
   u8 type ;
   u8 deleted ;
   u8 inDMD ;
   u32 num_luns ;
};
typedef struct _VirtTarget VirtTarget;
struct _VirtDevice {
   VirtTarget *vtarget ;
   u8 configured_lun ;
   int lun ;
};
typedef struct _VirtDevice VirtDevice;
struct _MPT_MGMT {
   struct mutex mutex ;
   struct completion done ;
   u8 reply[128U] ;
   u8 sense[64U] ;
   u8 status ;
   int completion_code ;
   u32 msg_context ;
};
typedef struct _MPT_MGMT MPT_MGMT;
struct _mpt_ioctl_events {
   u32 event ;
   u32 eventContext ;
   u32 data[2U] ;
};
struct _SpiCfgData {
   u32 PortFlags ;
   int *nvram ;
   IOCPage4_t *pIocPg4 ;
   dma_addr_t IocPg4_dma ;
   int IocPg4Sz ;
   u8 minSyncFactor ;
   u8 maxSyncOffset ;
   u8 maxBusWidth ;
   u8 busType ;
   u8 sdp1version ;
   u8 sdp1length ;
   u8 sdp0version ;
   u8 sdp0length ;
   u8 dvScheduled ;
   u8 noQas ;
   u8 Saf_Te ;
   u8 bus_reset ;
   u8 rsvd[1U] ;
};
typedef struct _SpiCfgData SpiCfgData;
struct _SasCfgData {
   u8 ptClear ;
};
typedef struct _SasCfgData SasCfgData;
struct _RaidCfgData {
   IOCPage2_t *pIocPg2 ;
   IOCPage3_t *pIocPg3 ;
   struct mutex inactive_list_mutex ;
   struct list_head inactive_list ;
};
typedef struct _RaidCfgData RaidCfgData;
struct __anonstruct_fc_port_page1_231 {
   FCPortPage1_t *data ;
   dma_addr_t dma ;
   int pg_sz ;
};
struct _FcCfgData {
   struct __anonstruct_fc_port_page1_231 fc_port_page1[2U] ;
};
typedef struct _FcCfgData FcCfgData;
struct _MPT_ADAPTER;
struct _MPT_SCSI_HOST {
   struct _MPT_ADAPTER *ioc ;
   ushort sel_timeout[255U] ;
   char *info_kbuf ;
   long last_queue_full ;
   u16 spi_pending ;
   struct list_head target_reset_list ;
};
typedef struct _MPT_SCSI_HOST MPT_SCSI_HOST;
struct mptsas_portinfo;
struct _MPT_ADAPTER {
   int id ;
   int pci_irq ;
   char name[32U] ;
   char prod_name[32U] ;
   char evStr[100U] ;
   char board_name[16U] ;
   char board_assembly[16U] ;
   char board_tracer[16U] ;
   u16 nvdata_version_persistent ;
   u16 nvdata_version_default ;
   int debug_level ;
   u8 io_missing_delay ;
   u16 device_missing_delay ;
   SYSIF_REGS *chip ;
   SYSIF_REGS *pio_chip ;
   u8 bus_type ;
   u32 mem_phys ;
   u32 pio_mem_phys ;
   int mem_size ;
   int number_of_buses ;
   int devices_per_bus ;
   int alloc_total ;
   u32 last_state ;
   int active ;
   u8 *alloc ;
   dma_addr_t alloc_dma ;
   u32 alloc_sz ;
   MPT_FRAME_HDR *reply_frames ;
   u32 reply_frames_low_dma ;
   int reply_depth ;
   int reply_sz ;
   int num_chain ;
   void (*add_sge)(void * , u32 , dma_addr_t ) ;
   void (*add_chain)(void * , u8 , u16 , dma_addr_t ) ;
   int *ReqToChain ;
   int *RequestNB ;
   int *ChainToChain ;
   u8 *ChainBuffer ;
   dma_addr_t ChainBufferDMA ;
   struct list_head FreeChainQ ;
   spinlock_t FreeChainQlock ;
   dma_addr_t req_frames_dma ;
   MPT_FRAME_HDR *req_frames ;
   u32 req_frames_low_dma ;
   int req_depth ;
   int req_sz ;
   spinlock_t FreeQlock ;
   struct list_head FreeQ ;
   u8 *sense_buf_pool ;
   dma_addr_t sense_buf_pool_dma ;
   u32 sense_buf_low_dma ;
   u8 *HostPageBuffer ;
   u32 HostPageBuffer_sz ;
   dma_addr_t HostPageBuffer_dma ;
   int mtrr_reg ;
   struct pci_dev *pcidev ;
   int bars ;
   int msi_enable ;
   u8 *memmap ;
   struct Scsi_Host *sh ;
   SpiCfgData spi_data ;
   RaidCfgData raid_data ;
   SasCfgData sas_data ;
   FcCfgData fc_data ;
   struct proc_dir_entry *ioc_dentry ;
   struct _MPT_ADAPTER *alt_ioc ;
   u32 biosVersion ;
   int eventTypes ;
   int eventContext ;
   int eventLogSize ;
   struct _mpt_ioctl_events *events ;
   u8 *cached_fw ;
   dma_addr_t cached_fw_dma ;
   int hs_reply_idx ;
   u32 pad0 ;
   u32 NB_for_64_byte_frame ;
   u32 hs_req[32U] ;
   u16 hs_reply[64U] ;
   IOCFactsReply_t facts ;
   PortFactsReply_t pfacts[2U] ;
   FCPortPage0_t fc_port_page0[2U] ;
   LANPage0_t lan_cnfg_page0 ;
   LANPage1_t lan_cnfg_page1 ;
   u8 ir_firmware ;
   int errata_flag_1064 ;
   int aen_event_read_flag ;
   u8 FirstWhoInit ;
   u8 upload_fw ;
   u8 NBShiftFactor ;
   u8 pad1[4U] ;
   u8 DoneCtx ;
   u8 TaskCtx ;
   u8 InternalCtx ;
   struct list_head list ;
   struct net_device *netdev ;
   struct list_head sas_topology ;
   struct mutex sas_topology_mutex ;
   struct workqueue_struct *fw_event_q ;
   struct list_head fw_event_list ;
   spinlock_t fw_event_lock ;
   u8 fw_events_off ;
   char fw_event_q_name[20U] ;
   struct mutex sas_discovery_mutex ;
   u8 sas_discovery_runtime ;
   u8 sas_discovery_ignore_events ;
   struct mptsas_portinfo *hba_port_info ;
   u64 hba_port_sas_addr ;
   u16 hba_port_num_phy ;
   struct list_head sas_device_info_list ;
   struct mutex sas_device_info_mutex ;
   u8 old_sas_discovery_protocal ;
   u8 sas_discovery_quiesce_io ;
   int sas_index ;
   MPT_MGMT sas_mgmt ;
   MPT_MGMT mptbase_cmds ;
   MPT_MGMT internal_cmds ;
   MPT_MGMT taskmgmt_cmds ;
   MPT_MGMT ioctl_cmds ;
   spinlock_t taskmgmt_lock ;
   int taskmgmt_in_progress ;
   u8 taskmgmt_quiesce_io ;
   u8 ioc_reset_in_progress ;
   u8 reset_status ;
   u8 wait_on_reset_completion ;
   void (*schedule_target_reset)(void * ) ;
   void (*schedule_dead_ioc_flush_running_cmds)(MPT_SCSI_HOST * ) ;
   struct work_struct sas_persist_task ;
   struct work_struct fc_setup_reset_work ;
   struct list_head fc_rports ;
   struct work_struct fc_lsc_work ;
   u8 fc_link_speed[2U] ;
   spinlock_t fc_rescan_work_lock ;
   struct work_struct fc_rescan_work ;
   char fc_rescan_work_q_name[20U] ;
   struct workqueue_struct *fc_rescan_work_q ;
   unsigned long hard_resets ;
   unsigned long soft_resets ;
   unsigned long timeouts ;
   struct scsi_cmnd **ScsiLookup ;
   spinlock_t scsi_lookup_lock ;
   u64 dma_mask ;
   u32 broadcast_aen_busy ;
   char reset_work_q_name[20U] ;
   struct workqueue_struct *reset_work_q ;
   struct delayed_work fault_reset_work ;
   u8 sg_addr_size ;
   u8 in_rescan ;
   u8 SGE_size ;
};
typedef struct _MPT_ADAPTER MPT_ADAPTER;
union __anonunion_cfghdr_232 {
   ConfigExtendedPageHeader_t *ehdr ;
   ConfigPageHeader_t *hdr ;
};
struct _x_config_parms {
   union __anonunion_cfghdr_232 cfghdr ;
   dma_addr_t physAddr ;
   u32 pageAddr ;
   u16 status ;
   u8 action ;
   u8 dir ;
   u8 timeout ;
};
typedef struct _x_config_parms CONFIGPARMS;
struct mptsas_target_reset_event {
   struct list_head list ;
   EVENT_DATA_SAS_DEVICE_STATUS_CHANGE sas_event_data ;
   u8 target_reset_issued ;
   unsigned long time_count ;
};
enum mptsas_hotplug_action {
    MPTSAS_ADD_DEVICE = 0,
    MPTSAS_DEL_DEVICE = 1,
    MPTSAS_ADD_RAID = 2,
    MPTSAS_DEL_RAID = 3,
    MPTSAS_ADD_PHYSDISK = 4,
    MPTSAS_ADD_PHYSDISK_REPROBE = 5,
    MPTSAS_DEL_PHYSDISK = 6,
    MPTSAS_DEL_PHYSDISK_REPROBE = 7,
    MPTSAS_ADD_INACTIVE_VOLUME = 8,
    MPTSAS_IGNORE_EVENT = 9
} ;
struct mptsas_mapping {
   u8 id ;
   u8 channel ;
};
struct mptsas_device_info {
   struct list_head list ;
   struct mptsas_mapping os ;
   struct mptsas_mapping fw ;
   u64 sas_address ;
   u32 device_info ;
   u16 slot ;
   u64 enclosure_logical_id ;
   u8 is_logical_volume ;
   u8 is_hidden_raid_component ;
   u8 volume_id ;
   u8 is_cached ;
};
struct mptsas_hotplug_event {
   MPT_ADAPTER *ioc ;
   enum mptsas_hotplug_action event_type ;
   u64 sas_address ;
   u8 channel ;
   u8 id ;
   u32 device_info ;
   u16 handle ;
   u8 phy_id ;
   u8 phys_disk_num ;
   struct scsi_device *sdev ;
};
struct fw_event_work {
   struct list_head list ;
   struct delayed_work work ;
   MPT_ADAPTER *ioc ;
   u32 event ;
   u8 retries ;
   u8 event_data[1U] ;
};
struct mptsas_devinfo {
   u16 handle ;
   u16 handle_parent ;
   u16 handle_enclosure ;
   u16 slot ;
   u8 phy_id ;
   u8 port_id ;
   u8 id ;
   u32 phys_disk_num ;
   u8 channel ;
   u64 sas_address ;
   u32 device_info ;
   u16 flags ;
};
struct mptsas_portinfo_details {
   u16 num_phys ;
   u64 phy_bitmask ;
   struct sas_rphy *rphy ;
   struct sas_port *port ;
   struct scsi_target *starget ;
   struct mptsas_portinfo *port_info ;
};
struct mptsas_phyinfo {
   u16 handle ;
   u8 phy_id ;
   u8 port_id ;
   u8 negotiated_link_rate ;
   u8 hw_link_rate ;
   u8 programmed_link_rate ;
   u8 sas_port_add_phy ;
   struct mptsas_devinfo identify ;
   struct mptsas_devinfo attached ;
   struct sas_phy *phy ;
   struct mptsas_portinfo *portinfo ;
   struct mptsas_portinfo_details *port_details ;
};
struct mptsas_portinfo {
   struct list_head list ;
   u16 num_phys ;
   struct mptsas_phyinfo *phy_info ;
};
struct mptsas_enclosure {
   u64 enclosure_logical_id ;
   u16 enclosure_handle ;
   u16 flags ;
   u16 num_slot ;
   u16 start_slot ;
   u8 start_id ;
   u8 start_channel ;
   u8 sep_id ;
   u8 sep_channel ;
};
struct rep_manu_request {
   u8 smp_frame_type ;
   u8 function ;
   u8 reserved ;
   u8 request_length ;
};
struct rep_manu_reply {
   u8 smp_frame_type ;
   u8 function ;
   u8 function_result ;
   u8 response_length ;
   u16 expander_change_count ;
   u8 reserved0[2U] ;
   unsigned char sas_format : 1 ;
   unsigned char reserved1 : 7 ;
   u8 reserved2[3U] ;
   u8 vendor_id[8U] ;
   u8 product_id[16U] ;
   u8 product_rev[4U] ;
   u8 component_vendor_id[8U] ;
   u16 component_id ;
   u8 component_revision_id ;
   u8 reserved3 ;
   u8 vendor_specific[8U] ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___26;
typedef int ldv_func_ret_type___33;
typedef int ldv_func_ret_type___37;
long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
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
extern unsigned long __phys_addr(unsigned long ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_28(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_39(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_sas_device_info_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_sas_device_info_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_sas_topology_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_sas_topology_mutex(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6456;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6456;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6456;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6456;
  default:
  __bad_percpu_size();
  }
  ldv_6456:
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
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
extern struct module __this_module ;
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
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return (0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
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
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
extern void *dev_get_drvdata(struct device const * ) ;
extern int device_reprobe(struct device * ) ;
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
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
                         "i" (19), "i" (12UL));
    ldv_19153: ;
    goto ldv_19153;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
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
                         "i" (36), "i" (12UL));
    ldv_19162: ;
    goto ldv_19162;
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
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
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
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return (0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
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
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/dma-mapping.h",
                       166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
__inline static void *bio_data(struct bio *bio )
{
  void *tmp ;
  {
  if ((unsigned int )bio->bi_vcnt != 0U) {
    tmp = lowmem_page_address((struct page const *)(bio->bi_io_vec + (unsigned long )bio->bi_idx)->bv_page);
    return (tmp + (unsigned long )(bio->bi_io_vec + (unsigned long )bio->bi_idx)->bv_offset);
  } else {
  }
  return (0);
}
}
__inline static unsigned int blk_rq_bytes(struct request const *rq )
{
  {
  return ((unsigned int )rq->__data_len);
}
}
__inline static struct scsi_target *scsi_target(struct scsi_device *sdev )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)sdev->sdev_gendev.parent;
  return ((struct scsi_target *)__mptr + 0xffffffffffffffd8UL);
}
}
extern int scsi_add_device(struct Scsi_Host * , uint , uint , uint ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern struct scsi_device *scsi_device_lookup(struct Scsi_Host * , uint , uint ,
                                              uint ) ;
extern void starget_for_each_device(struct scsi_target * , void * , void (*)(struct scsi_device * ,
                                                                             void * ) ) ;
extern struct scsi_device *__scsi_iterate_devices(struct Scsi_Host * , struct scsi_device * ) ;
extern int scsi_track_queue_full(struct scsi_device * , int ) ;
extern int scsi_device_set_state(struct scsi_device * , enum scsi_device_state ) ;
extern void int_to_scsilun(unsigned int , struct scsi_lun * ) ;
__inline static int scsi_device_reprobe(struct scsi_device *sdev )
{
  int tmp ;
  {
  tmp = device_reprobe(& sdev->sdev_gendev);
  return (tmp);
}
}
__inline static void *shost_priv(struct Scsi_Host *shost )
{
  {
  return ((void *)(& shost->hostdata));
}
}
extern int scsi_is_host_device(struct device const * ) ;
__inline static struct Scsi_Host *dev_to_shost(struct device *dev )
{
  int tmp ;
  struct device const *__mptr ;
  {
  goto ldv_30935;
  ldv_30934: ;
  if ((unsigned long )dev->parent == (unsigned long )((struct device *)0)) {
    return (0);
  } else {
  }
  dev = dev->parent;
  ldv_30935:
  tmp = scsi_is_host_device((struct device const *)dev);
  if (tmp == 0) {
    goto ldv_30934;
  } else {
  }
  __mptr = (struct device const *)dev;
  return ((struct Scsi_Host *)__mptr + 0xfffffffffffffd38UL);
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(host, dev, dev);
  return (tmp);
}
}
extern void sas_remove_host(struct Scsi_Host * ) ;
extern struct sas_phy *sas_phy_alloc(struct device * , int ) ;
extern void sas_phy_free(struct sas_phy * ) ;
extern int sas_phy_add(struct sas_phy * ) ;
extern struct sas_rphy *sas_end_device_alloc(struct sas_port * ) ;
extern struct sas_rphy *sas_expander_alloc(struct sas_port * , enum sas_device_type ) ;
extern void sas_rphy_free(struct sas_rphy * ) ;
extern int sas_rphy_add(struct sas_rphy * ) ;
extern int scsi_is_sas_rphy(struct device const * ) ;
extern struct sas_port *sas_port_alloc_num(struct device * ) ;
extern int sas_port_add(struct sas_port * ) ;
extern void sas_port_delete(struct sas_port * ) ;
extern void sas_port_add_phy(struct sas_port * , struct sas_phy * ) ;
extern void sas_port_delete_phy(struct sas_port * , struct sas_phy * ) ;
extern void sas_port_mark_backlink(struct sas_port * ) ;
extern struct scsi_transport_template *sas_attach_transport(struct sas_function_template * ) ;
extern void sas_release_transport(struct scsi_transport_template * ) ;
extern int sas_read_port_mode_page(struct scsi_device * ) ;
extern void scsi_print_command(struct scsi_cmnd * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                        size, dma_handle, 32U, 0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 size, vaddr, dma_handle, 0);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             ptr, size, (enum dma_data_direction )direction, 0);
  return (tmp);
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
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
extern int mpt_attach(struct pci_dev * , struct pci_device_id const * ) ;
extern void mpt_detach(struct pci_dev * ) ;
extern u8 mpt_register(int (*)(MPT_ADAPTER * , MPT_FRAME_HDR * , MPT_FRAME_HDR * ) ,
                       MPT_DRIVER_CLASS , char * ) ;
extern void mpt_deregister(u8 ) ;
extern int mpt_event_register(u8 , int (*)(MPT_ADAPTER * , EventNotificationReply_t * ) ) ;
extern void mpt_event_deregister(u8 ) ;
extern int mpt_reset_register(u8 , int (*)(MPT_ADAPTER * , int ) ) ;
extern void mpt_reset_deregister(u8 ) ;
extern MPT_FRAME_HDR *mpt_get_msg_frame(u8 , MPT_ADAPTER * ) ;
extern void mpt_free_msg_frame(MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern void mpt_put_msg_frame(u8 , MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern void mpt_put_msg_frame_hi_pri(u8 , MPT_ADAPTER * , MPT_FRAME_HDR * ) ;
extern u32 mpt_GetIocState(MPT_ADAPTER * , int ) ;
extern int mpt_Soft_Hard_ResetHandler(MPT_ADAPTER * , int ) ;
extern int mpt_config(MPT_ADAPTER * , CONFIGPARMS * ) ;
extern int mpt_findImVolumes(MPT_ADAPTER * ) ;
extern int mptbase_sas_persist_operation(MPT_ADAPTER * , u8 ) ;
extern int mpt_raid_phys_disk_pg0(MPT_ADAPTER * , u8 , pRaidPhysDiskPage0_t ) ;
extern int mpt_raid_phys_disk_pg1(MPT_ADAPTER * , u8 , pRaidPhysDiskPage1_t ) ;
extern int mpt_raid_phys_disk_get_num_paths(MPT_ADAPTER * , u8 ) ;
extern int mpt_set_taskmgmt_in_progress_flag(MPT_ADAPTER * ) ;
extern void mpt_clear_taskmgmt_in_progress_flag(MPT_ADAPTER * ) ;
extern void mptscsih_remove(struct pci_dev * ) ;
extern int mptscsih_suspend(struct pci_dev * , pm_message_t ) ;
extern int mptscsih_resume(struct pci_dev * ) ;
extern int mptscsih_proc_info(struct Scsi_Host * , char * , char ** , off_t , int ,
                              int ) ;
extern char const *mptscsih_info(struct Scsi_Host * ) ;
extern int mptscsih_qcmd(struct scsi_cmnd * , void (*)(struct scsi_cmnd * ) ) ;
extern void mptscsih_slave_destroy(struct scsi_device * ) ;
extern int mptscsih_slave_configure(struct scsi_device * ) ;
extern int mptscsih_abort(struct scsi_cmnd * ) ;
extern int mptscsih_dev_reset(struct scsi_cmnd * ) ;
extern int mptscsih_host_reset(struct scsi_cmnd * ) ;
extern int mptscsih_bios_param(struct scsi_device * , struct block_device * , sector_t ,
                               int * ) ;
extern int mptscsih_io_done(MPT_ADAPTER * , MPT_FRAME_HDR * , MPT_FRAME_HDR * ) ;
extern int mptscsih_taskmgmt_complete(MPT_ADAPTER * , MPT_FRAME_HDR * , MPT_FRAME_HDR * ) ;
extern int mptscsih_scandv_complete(MPT_ADAPTER * , MPT_FRAME_HDR * , MPT_FRAME_HDR * ) ;
extern int mptscsih_ioc_reset(MPT_ADAPTER * , int ) ;
extern int mptscsih_change_queue_depth(struct scsi_device * , int , int ) ;
extern u8 mptscsih_raid_id_to_num(MPT_ADAPTER * , u8 , u8 ) ;
extern int mptscsih_is_phys_disk(MPT_ADAPTER * , u8 , u8 ) ;
extern struct device_attribute *mptscsih_host_attrs[] ;
extern struct scsi_cmnd *mptscsih_get_scsi_lookup(MPT_ADAPTER * , int ) ;
extern void mptscsih_taskmgmt_response_code(MPT_ADAPTER * , u8 ) ;
extern void mptscsih_flush_running_cmds(MPT_SCSI_HOST * ) ;
static int mpt_pt_clear ;
static int max_lun = 16895;
static int mpt_loadtime_max_sectors = 8192;
static u8 mptsasDoneCtx = 16U;
static u8 mptsasTaskCtx = 16U;
static u8 mptsasInternalCtx = 16U;
static u8 mptsasMgmtCtx = 16U;
static u8 mptsasDeviceResetCtx = 16U;
static void mptsas_firmware_event_work(struct work_struct *work ) ;
static void mptsas_send_sas_event(struct fw_event_work *fw_event ) ;
static void mptsas_send_raid_event(struct fw_event_work *fw_event ) ;
static void mptsas_send_ir2_event(struct fw_event_work *fw_event ) ;
static void mptsas_parse_device_info(struct sas_identify *identify , struct mptsas_devinfo *device_info ) ;
__inline static void mptsas_set_rphy(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ,
                                     struct sas_rphy *rphy ) ;
static struct mptsas_phyinfo *mptsas_find_phyinfo_by_sas_address(MPT_ADAPTER *ioc ,
                                                                 u64 sas_address ) ;
static int mptsas_sas_device_pg0(MPT_ADAPTER *ioc , struct mptsas_devinfo *device_info ,
                                 u32 form , u32 form_specific ) ;
static int mptsas_sas_enclosure_pg0(MPT_ADAPTER *ioc , struct mptsas_enclosure *enclosure ,
                                    u32 form , u32 form_specific ) ;
static int mptsas_add_end_device(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ) ;
static void mptsas_del_end_device(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ) ;
static void mptsas_send_link_status_event(struct fw_event_work *fw_event ) ;
static struct mptsas_portinfo *mptsas_find_portinfo_by_sas_address(MPT_ADAPTER *ioc ,
                                                                   u64 sas_address ) ;
static void mptsas_expander_delete(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info ,
                                   u8 force ) ;
static void mptsas_send_expander_event(struct fw_event_work *fw_event ) ;
static void mptsas_not_responding_devices(MPT_ADAPTER *ioc ) ;
static void mptsas_scan_sas_topology(MPT_ADAPTER *ioc ) ;
static void mptsas_broadcast_primative_work(struct fw_event_work *fw_event ) ;
static void mptsas_handle_queue_full_event(struct fw_event_work *fw_event ) ;
static void mptsas_volume_delete(MPT_ADAPTER *ioc , u8 id ) ;
void mptsas_schedule_target_reset(void *iocp ) ;
static void mptsas_print_phy_data(MPT_ADAPTER *ioc , MPI_SAS_IO_UNIT0_PHY_DATA *phy_data )
{
  {
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: ---- IO UNIT PAGE 0 ------------\n", (char *)(& ioc->name));
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Handle=0x%X\n", (char *)(& ioc->name), (int )phy_data->AttachedDeviceHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Controller Handle=0x%X\n", (char *)(& ioc->name), (int )phy_data->ControllerDevHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Port=0x%X\n", (char *)(& ioc->name), (int )phy_data->Port);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Port Flags=0x%X\n", (char *)(& ioc->name), (int )phy_data->PortFlags);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: PHY Flags=0x%X\n", (char *)(& ioc->name), (int )phy_data->PhyFlags);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Negotiated Link Rate=0x%X\n", (char *)(& ioc->name), (int )phy_data->NegotiatedLinkRate);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Controller PHY Device Info=0x%X\n", (char *)(& ioc->name),
           phy_data->ControllerPhyDeviceInfo);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: DiscoveryStatus=0x%X\n\n", (char *)(& ioc->name), phy_data->DiscoveryStatus);
  } else {
  }
  return;
}
}
static void mptsas_print_phy_pg0(MPT_ADAPTER *ioc , SasPhyPage0_t *pg0 )
{
  __le64 sas_address ;
  size_t __len ;
  void *__ret ;
  {
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& pg0->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& pg0->SASAddress),
                             __len);
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: ---- SAS PHY PAGE 0 ------------\n", (char *)(& ioc->name));
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Attached Device Handle=0x%X\n", (char *)(& ioc->name),
           (int )pg0->AttachedDevHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: SAS Address=0x%llX\n", (char *)(& ioc->name), sas_address);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Attached PHY Identifier=0x%X\n", (char *)(& ioc->name),
           (int )pg0->AttachedPhyIdentifier);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Attached Device Info=0x%X\n", (char *)(& ioc->name), pg0->AttachedDeviceInfo);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Programmed Link Rate=0x%X\n", (char *)(& ioc->name), (int )pg0->ProgrammedLinkRate);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Change Count=0x%X\n", (char *)(& ioc->name), (int )pg0->ChangeCount);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: PHY Info=0x%X\n\n", (char *)(& ioc->name), pg0->PhyInfo);
  } else {
  }
  return;
}
}
static void mptsas_print_phy_pg1(MPT_ADAPTER *ioc , SasPhyPage1_t *pg1 )
{
  {
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: ---- SAS PHY PAGE 1 ------------\n", (char *)(& ioc->name));
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Invalid Dword Count=0x%x\n", (char *)(& ioc->name), pg1->InvalidDwordCount);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Running Disparity Error Count=0x%x\n", (char *)(& ioc->name),
           pg1->RunningDisparityErrorCount);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Loss Dword Synch Count=0x%x\n", (char *)(& ioc->name),
           pg1->LossDwordSynchCount);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: PHY Reset Problem Count=0x%x\n\n", (char *)(& ioc->name),
           pg1->PhyResetProblemCount);
  } else {
  }
  return;
}
}
static void mptsas_print_device_pg0(MPT_ADAPTER *ioc , SasDevicePage0_t *pg0 )
{
  __le64 sas_address ;
  size_t __len ;
  void *__ret ;
  {
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& pg0->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& pg0->SASAddress),
                             __len);
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: ---- SAS DEVICE PAGE 0 ---------\n", (char *)(& ioc->name));
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Handle=0x%X\n", (char *)(& ioc->name), (int )pg0->DevHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Parent Handle=0x%X\n", (char *)(& ioc->name), (int )pg0->ParentDevHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Enclosure Handle=0x%X\n", (char *)(& ioc->name), (int )pg0->EnclosureHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Slot=0x%X\n", (char *)(& ioc->name), (int )pg0->Slot);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: SAS Address=0x%llX\n", (char *)(& ioc->name), sas_address);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Target ID=0x%X\n", (char *)(& ioc->name), (int )pg0->TargetID);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Bus=0x%X\n", (char *)(& ioc->name), (int )pg0->Bus);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Parent Phy Num=0x%X\n", (char *)(& ioc->name), (int )pg0->PhyNum);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Access Status=0x%X\n", (char *)(& ioc->name), (int )pg0->AccessStatus);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Device Info=0x%X\n", (char *)(& ioc->name), pg0->DeviceInfo);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Flags=0x%X\n", (char *)(& ioc->name), (int )pg0->Flags);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Physical Port=0x%X\n\n", (char *)(& ioc->name), (int )pg0->PhysicalPort);
  } else {
  }
  return;
}
}
static void mptsas_print_expander_pg1(MPT_ADAPTER *ioc , SasExpanderPage1_t *pg1 )
{
  {
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: ---- SAS EXPANDER PAGE 1 ------------\n", (char *)(& ioc->name));
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Physical Port=0x%X\n", (char *)(& ioc->name), (int )pg1->PhysicalPort);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: PHY Identifier=0x%X\n", (char *)(& ioc->name), (int )pg1->PhyIdentifier);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Negotiated Link Rate=0x%X\n", (char *)(& ioc->name), (int )pg1->NegotiatedLinkRate);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Programmed Link Rate=0x%X\n", (char *)(& ioc->name), (int )pg1->ProgrammedLinkRate);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Hardware Link Rate=0x%X\n", (char *)(& ioc->name), (int )pg1->HwLinkRate);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Owner Device Handle=0x%X\n", (char *)(& ioc->name), (int )pg1->OwnerDevHandle);
  } else {
  }
  if ((ioc->debug_level & 1048576) != 0) {
    printk("\017mptsas: %s: Attached Device Handle=0x%X\n\n", (char *)(& ioc->name),
           (int )pg1->AttachedDevHandle);
  } else {
  }
  return;
}
}
static void mptsas_fw_event_off(MPT_ADAPTER *ioc )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& ioc->fw_event_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ioc->fw_events_off = 1U;
  ioc->sas_discovery_quiesce_io = 0U;
  spin_unlock_irqrestore(& ioc->fw_event_lock, flags);
  return;
}
}
static void mptsas_fw_event_on(MPT_ADAPTER *ioc )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& ioc->fw_event_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ioc->fw_events_off = 0U;
  spin_unlock_irqrestore(& ioc->fw_event_lock, flags);
  return;
}
}
static void mptsas_add_fw_event(MPT_ADAPTER *ioc , struct fw_event_work *fw_event ,
                                unsigned long delay )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  {
  tmp = spinlock_check(& ioc->fw_event_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_add_tail(& fw_event->list, & ioc->fw_event_list);
  __init_work(& fw_event->work.work, 0);
  __constr_expr_0.counter = 4195328L;
  fw_event->work.work.data = __constr_expr_0;
  lockdep_init_map(& fw_event->work.work.lockdep_map, "(&(&fw_event->work)->work)",
                   & __key, 0);
  INIT_LIST_HEAD(& fw_event->work.work.entry);
  fw_event->work.work.func = & mptsas_firmware_event_work;
  init_timer_key(& fw_event->work.timer, 2U, "(&(&fw_event->work)->timer)", & __key___0);
  fw_event->work.timer.function = & delayed_work_timer_fn;
  fw_event->work.timer.data = (unsigned long )(& fw_event->work);
  if ((ioc->debug_level & 8) != 0) {
    __vpp_verify = 0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_37850;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37850;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37850;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37850;
    default:
    __bad_percpu_size();
    }
    ldv_37850:
    pscr_ret__ = pfo_ret__;
    goto ldv_37856;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37860;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37860;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37860;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37860;
    default:
    __bad_percpu_size();
    }
    ldv_37860:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_37856;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37869;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37869;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37869;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37869;
    default:
    __bad_percpu_size();
    }
    ldv_37869:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_37856;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37878;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37878;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37878;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37878;
    default:
    __bad_percpu_size();
    }
    ldv_37878:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_37856;
    default:
    __bad_size_call_parameter();
    goto ldv_37856;
    }
    ldv_37856:
    printk("\017mptsas: %s: %s: add (fw_event=0x%p)on cpuid %d\n", (char *)(& ioc->name),
           "mptsas_add_fw_event", fw_event, pscr_ret__);
  } else {
  }
  __vpp_verify___0 = 0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37891;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37891;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37891;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37891;
  default:
  __bad_percpu_size();
  }
  ldv_37891:
  pscr_ret_____0 = pfo_ret_____3;
  goto ldv_37897;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37901;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37901;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37901;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37901;
  default:
  __bad_percpu_size();
  }
  ldv_37901:
  pscr_ret_____0 = pfo_ret_____4;
  goto ldv_37897;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_37910;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_37910;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_37910;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_37910;
  default:
  __bad_percpu_size();
  }
  ldv_37910:
  pscr_ret_____0 = pfo_ret_____5;
  goto ldv_37897;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_37919;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_37919;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_37919;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_37919;
  default:
  __bad_percpu_size();
  }
  ldv_37919:
  pscr_ret_____0 = pfo_ret_____6;
  goto ldv_37897;
  default:
  __bad_size_call_parameter();
  goto ldv_37897;
  }
  ldv_37897:
  queue_delayed_work_on(pscr_ret_____0, ioc->fw_event_q, & fw_event->work, delay);
  spin_unlock_irqrestore(& ioc->fw_event_lock, flags);
  return;
}
}
static void mptsas_requeue_fw_event(MPT_ADAPTER *ioc , struct fw_event_work *fw_event ,
                                    unsigned long delay )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  unsigned long tmp___0 ;
  int pscr_ret_____0 ;
  void const *__vpp_verify___0 ;
  int pfo_ret_____3 ;
  int pfo_ret_____4 ;
  int pfo_ret_____5 ;
  int pfo_ret_____6 ;
  {
  tmp = spinlock_check(& ioc->fw_event_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((ioc->debug_level & 8) != 0) {
    __vpp_verify = 0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_37942;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37942;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37942;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_37942;
    default:
    __bad_percpu_size();
    }
    ldv_37942:
    pscr_ret__ = pfo_ret__;
    goto ldv_37948;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37952;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37952;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37952;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_37952;
    default:
    __bad_percpu_size();
    }
    ldv_37952:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_37948;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37961;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37961;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37961;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_37961;
    default:
    __bad_percpu_size();
    }
    ldv_37961:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_37948;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37970;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37970;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37970;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_37970;
    default:
    __bad_percpu_size();
    }
    ldv_37970:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_37948;
    default:
    __bad_size_call_parameter();
    goto ldv_37948;
    }
    ldv_37948:
    printk("\017mptsas: %s: %s: reschedule task (fw_event=0x%p)on cpuid %d\n", (char *)(& ioc->name),
           "mptsas_requeue_fw_event", fw_event, pscr_ret__);
  } else {
  }
  fw_event->retries = (u8 )((int )fw_event->retries + 1);
  tmp___0 = msecs_to_jiffies((unsigned int const )delay);
  __vpp_verify___0 = 0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37983;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37983;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37983;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____3): "m" (cpu_number));
  goto ldv_37983;
  default:
  __bad_percpu_size();
  }
  ldv_37983:
  pscr_ret_____0 = pfo_ret_____3;
  goto ldv_37989;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37993;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37993;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37993;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____4): "m" (cpu_number));
  goto ldv_37993;
  default:
  __bad_percpu_size();
  }
  ldv_37993:
  pscr_ret_____0 = pfo_ret_____4;
  goto ldv_37989;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_38002;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_38002;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_38002;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____5): "m" (cpu_number));
  goto ldv_38002;
  default:
  __bad_percpu_size();
  }
  ldv_38002:
  pscr_ret_____0 = pfo_ret_____5;
  goto ldv_37989;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_38011;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_38011;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_38011;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____6): "m" (cpu_number));
  goto ldv_38011;
  default:
  __bad_percpu_size();
  }
  ldv_38011:
  pscr_ret_____0 = pfo_ret_____6;
  goto ldv_37989;
  default:
  __bad_size_call_parameter();
  goto ldv_37989;
  }
  ldv_37989:
  queue_delayed_work_on(pscr_ret_____0, ioc->fw_event_q, & fw_event->work, tmp___0);
  spin_unlock_irqrestore(& ioc->fw_event_lock, flags);
  return;
}
}
static void mptsas_free_fw_event(MPT_ADAPTER *ioc , struct fw_event_work *fw_event )
{
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(& ioc->fw_event_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((ioc->debug_level & 8) != 0) {
    printk("\017mptsas: %s: %s: kfree (fw_event=0x%p)\n", (char *)(& ioc->name), "mptsas_free_fw_event",
           fw_event);
  } else {
  }
  list_del(& fw_event->list);
  kfree((void const *)fw_event);
  spin_unlock_irqrestore(& ioc->fw_event_lock, flags);
  return;
}
}
static void mptsas_cleanup_fw_event_q(MPT_ADAPTER *ioc )
{
  struct fw_event_work *fw_event ;
  struct fw_event_work *next ;
  struct mptsas_target_reset_event *target_reset_list ;
  struct mptsas_target_reset_event *n ;
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  int tmp___1 ;
  struct thread_info *tmp___2 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  bool tmp___3 ;
  struct list_head const *__mptr___4 ;
  {
  tmp = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp;
  tmp___0 = list_empty((struct list_head const *)(& hd->target_reset_list));
  if (tmp___0 == 0) {
    __mptr = (struct list_head const *)hd->target_reset_list.next;
    target_reset_list = (struct mptsas_target_reset_event *)__mptr;
    __mptr___0 = (struct list_head const *)target_reset_list->list.next;
    n = (struct mptsas_target_reset_event *)__mptr___0;
    goto ldv_38044;
    ldv_38043: ;
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptsas: %s: %s: removing target reset for id=%d\n", (char *)(& ioc->name),
             "mptsas_cleanup_fw_event_q", (int )target_reset_list->sas_event_data.TargetID);
    } else {
    }
    list_del(& target_reset_list->list);
    kfree((void const *)target_reset_list);
    target_reset_list = n;
    __mptr___1 = (struct list_head const *)n->list.next;
    n = (struct mptsas_target_reset_event *)__mptr___1;
    ldv_38044: ;
    if ((unsigned long )(& target_reset_list->list) != (unsigned long )(& hd->target_reset_list)) {
      goto ldv_38043;
    } else {
    }
  } else {
  }
  tmp___1 = list_empty((struct list_head const *)(& ioc->fw_event_list));
  if (tmp___1 != 0 || (unsigned long )ioc->fw_event_q == (unsigned long )((struct workqueue_struct *)0)) {
    return;
  } else {
    tmp___2 = current_thread_info();
    if (((unsigned long )tmp___2->preempt_count & 134217472UL) != 0UL) {
      return;
    } else {
    }
  }
  __mptr___2 = (struct list_head const *)ioc->fw_event_list.next;
  fw_event = (struct fw_event_work *)__mptr___2;
  __mptr___3 = (struct list_head const *)fw_event->list.next;
  next = (struct fw_event_work *)__mptr___3;
  goto ldv_38053;
  ldv_38052:
  tmp___3 = cancel_delayed_work(& fw_event->work);
  if ((int )tmp___3) {
    mptsas_free_fw_event(ioc, fw_event);
  } else {
  }
  fw_event = next;
  __mptr___4 = (struct list_head const *)next->list.next;
  next = (struct fw_event_work *)__mptr___4;
  ldv_38053: ;
  if ((unsigned long )(& fw_event->list) != (unsigned long )(& ioc->fw_event_list)) {
    goto ldv_38052;
  } else {
  }
  return;
}
}
__inline static MPT_ADAPTER *phy_to_ioc(struct sas_phy *phy )
{
  struct Scsi_Host *shost ;
  struct Scsi_Host *tmp ;
  {
  tmp = dev_to_shost(phy->dev.parent);
  shost = tmp;
  return (((MPT_SCSI_HOST *)(& shost->hostdata))->ioc);
}
}
__inline static MPT_ADAPTER *rphy_to_ioc(struct sas_rphy *rphy )
{
  struct Scsi_Host *shost ;
  struct Scsi_Host *tmp ;
  {
  tmp = dev_to_shost((rphy->dev.parent)->parent);
  shost = tmp;
  return (((MPT_SCSI_HOST *)(& shost->hostdata))->ioc);
}
}
static struct mptsas_portinfo *mptsas_find_portinfo_by_handle(MPT_ADAPTER *ioc , u16 handle )
{
  struct mptsas_portinfo *port_info ;
  struct mptsas_portinfo *rc ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  port_info = (struct mptsas_portinfo *)__mptr;
  goto ldv_38079;
  ldv_38078:
  i = 0;
  goto ldv_38076;
  ldv_38075: ;
  if ((int )(port_info->phy_info + (unsigned long )i)->identify.handle == (int )handle) {
    rc = port_info;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_38076: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38075;
  } else {
  }
  __mptr___0 = (struct list_head const *)port_info->list.next;
  port_info = (struct mptsas_portinfo *)__mptr___0;
  ldv_38079: ;
  if ((unsigned long )(& port_info->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38078;
  } else {
  }
  out: ;
  return (rc);
}
}
static struct mptsas_portinfo *mptsas_find_portinfo_by_sas_address(MPT_ADAPTER *ioc ,
                                                                   u64 sas_address )
{
  struct mptsas_portinfo *port_info ;
  struct mptsas_portinfo *rc ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  if (ioc->hba_port_sas_addr <= sas_address && ioc->hba_port_sas_addr + (u64 )ioc->hba_port_num_phy > sas_address) {
    return (ioc->hba_port_info);
  } else {
  }
  ldv_mutex_lock_8(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  port_info = (struct mptsas_portinfo *)__mptr;
  goto ldv_38097;
  ldv_38096:
  i = 0;
  goto ldv_38094;
  ldv_38093: ;
  if ((port_info->phy_info + (unsigned long )i)->identify.sas_address == sas_address) {
    rc = port_info;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_38094: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38093;
  } else {
  }
  __mptr___0 = (struct list_head const *)port_info->list.next;
  port_info = (struct mptsas_portinfo *)__mptr___0;
  ldv_38097: ;
  if ((unsigned long )(& port_info->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38096;
  } else {
  }
  out:
  ldv_mutex_unlock_9(& ioc->sas_topology_mutex);
  return (rc);
}
}
__inline static int mptsas_is_end_device(struct mptsas_devinfo *attached )
{
  {
  if ((attached->sas_address != 0ULL && (int )attached->device_info & 1) && (attached->device_info & 1664U) != 0U) {
    return (1);
  } else {
    return (0);
  }
}
}
static void mptsas_port_delete(MPT_ADAPTER *ioc , struct mptsas_portinfo_details *port_details )
{
  struct mptsas_portinfo *port_info ;
  struct mptsas_phyinfo *phy_info ;
  u8 i ;
  {
  if ((unsigned long )port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    return;
  } else {
  }
  port_info = port_details->port_info;
  phy_info = port_info->phy_info;
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: %s: [%p]: num_phys=%02d bitmask=0x%016llX\n", (char *)(& ioc->name),
           "mptsas_port_delete", port_details, (int )port_details->num_phys, port_details->phy_bitmask);
  } else {
  }
  i = 0U;
  goto ldv_38112;
  ldv_38111: ;
  if ((unsigned long )phy_info->port_details != (unsigned long )port_details) {
    goto ldv_38110;
  } else {
  }
  memset((void *)(& phy_info->attached), 0, 40UL);
  mptsas_set_rphy(ioc, phy_info, 0);
  phy_info->port_details = 0;
  ldv_38110:
  i = (u8 )((int )i + 1);
  phy_info = phy_info + 1;
  ldv_38112: ;
  if ((int )((unsigned short )i) < (int )port_info->num_phys) {
    goto ldv_38111;
  } else {
  }
  kfree((void const *)port_details);
  return;
}
}
__inline static struct sas_rphy *mptsas_get_rphy(struct mptsas_phyinfo *phy_info )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    return ((phy_info->port_details)->rphy);
  } else {
    return (0);
  }
}
}
__inline static void mptsas_set_rphy(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ,
                                     struct sas_rphy *rphy )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    (phy_info->port_details)->rphy = rphy;
    if ((ioc->debug_level & 2097152) != 0) {
      printk("\017mptsas: %s: sas_rphy_add: rphy=%p\n", (char *)(& ioc->name), rphy);
    } else {
    }
  } else {
  }
  if ((unsigned long )rphy != (unsigned long )((struct sas_rphy *)0)) {
    if ((ioc->debug_level & 2097152) != 0) {
      dev_printk("\017", (struct device const *)(& rphy->dev), "mptsas: %s: add:",
                 (char *)(& ioc->name));
    } else {
    }
    if ((ioc->debug_level & 2097152) != 0) {
      printk("\017mptsas: %s: rphy=%p release=%p\n", (char *)(& ioc->name), rphy,
             rphy->dev.release);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static struct sas_port *mptsas_get_port(struct mptsas_phyinfo *phy_info )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    return ((phy_info->port_details)->port);
  } else {
    return (0);
  }
}
}
__inline static void mptsas_set_port(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ,
                                     struct sas_port *port )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    (phy_info->port_details)->port = port;
  } else {
  }
  if ((unsigned long )port != (unsigned long )((struct sas_port *)0)) {
    if ((ioc->debug_level & 2097152) != 0) {
      dev_printk("\017", (struct device const *)(& port->dev), "mptsas: %s: add:",
                 (char *)(& ioc->name));
    } else {
    }
    if ((ioc->debug_level & 2097152) != 0) {
      printk("\017mptsas: %s: port=%p release=%p\n", (char *)(& ioc->name), port,
             port->dev.release);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static struct scsi_target *mptsas_get_starget(struct mptsas_phyinfo *phy_info )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    return ((phy_info->port_details)->starget);
  } else {
    return (0);
  }
}
}
__inline static void mptsas_set_starget(struct mptsas_phyinfo *phy_info , struct scsi_target *starget )
{
  {
  if ((unsigned long )phy_info->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    (phy_info->port_details)->starget = starget;
  } else {
  }
  return;
}
}
static void mptsas_add_device_component(MPT_ADAPTER *ioc , u8 channel , u8 id , u64 sas_address ,
                                        u32 device_info , u16 slot , u64 enclosure_logical_id )
{
  struct mptsas_device_info *sas_info ;
  struct mptsas_device_info *next ;
  struct scsi_device *sdev ;
  struct scsi_target *starget ;
  struct sas_rphy *rphy ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  void *tmp ;
  struct device const *__mptr___2 ;
  {
  ldv_mutex_lock_10(& ioc->sas_device_info_mutex);
  __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr;
  __mptr___0 = (struct list_head const *)sas_info->list.next;
  next = (struct mptsas_device_info *)__mptr___0;
  goto ldv_38158;
  ldv_38157: ;
  if ((unsigned int )sas_info->is_logical_volume == 0U && (sas_info->sas_address == sas_address || ((int )sas_info->fw.channel == (int )channel && (int )sas_info->fw.id == (int )id))) {
    list_del(& sas_info->list);
    kfree((void const *)sas_info);
  } else {
  }
  sas_info = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mptsas_device_info *)__mptr___1;
  ldv_38158: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_38157;
  } else {
  }
  tmp = kzalloc(56UL, 208U);
  sas_info = (struct mptsas_device_info *)tmp;
  if ((unsigned long )sas_info == (unsigned long )((struct mptsas_device_info *)0)) {
    goto out;
  } else {
  }
  sas_info->fw.id = id;
  sas_info->fw.channel = channel;
  sas_info->sas_address = sas_address;
  sas_info->device_info = device_info;
  sas_info->slot = slot;
  sas_info->enclosure_logical_id = enclosure_logical_id;
  INIT_LIST_HEAD(& sas_info->list);
  list_add_tail(& sas_info->list, & ioc->sas_device_info_list);
  sdev = __scsi_iterate_devices(ioc->sh, 0);
  goto ldv_38164;
  ldv_38163:
  starget = scsi_target(sdev);
  __mptr___2 = (struct device const *)starget->dev.parent;
  rphy = (struct sas_rphy *)__mptr___2;
  if (rphy->identify.sas_address == sas_address) {
    sas_info->os.id = (u8 )starget->id;
    sas_info->os.channel = (u8 )starget->channel;
  } else {
  }
  sdev = __scsi_iterate_devices(ioc->sh, sdev);
  ldv_38164: ;
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    goto ldv_38163;
  } else {
  }
  out:
  ldv_mutex_unlock_11(& ioc->sas_device_info_mutex);
  return;
}
}
static void mptsas_add_device_component_by_fw(MPT_ADAPTER *ioc , u8 channel , u8 id )
{
  struct mptsas_devinfo sas_device ;
  struct mptsas_enclosure enclosure_info ;
  int rc ;
  {
  rc = mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )channel << 8) + (int )id));
  if (rc != 0) {
    return;
  } else {
  }
  memset((void *)(& enclosure_info), 0, 24UL);
  mptsas_sas_enclosure_pg0(ioc, & enclosure_info, 268435456U, (u32 )sas_device.handle_enclosure);
  mptsas_add_device_component(ioc, (int )sas_device.channel, (int )sas_device.id,
                              sas_device.sas_address, sas_device.device_info, (int )sas_device.slot,
                              enclosure_info.enclosure_logical_id);
  return;
}
}
static void mptsas_add_device_component_starget_ir(MPT_ADAPTER *ioc , struct scsi_target *starget )
{
  CONFIGPARMS cfg ;
  ConfigPageHeader_t hdr ;
  dma_addr_t dma_handle ;
  pRaidVolumePage0_t buffer ;
  int i ;
  RaidPhysDiskPage0_t phys_disk ;
  struct mptsas_device_info *sas_info ;
  struct mptsas_device_info *next ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  void *tmp___3 ;
  {
  buffer = 0;
  memset((void *)(& cfg), 0, 32UL);
  memset((void *)(& hdr), 0, 4UL);
  hdr.PageType = 8U;
  cfg.pageAddr = starget->id;
  cfg.cfghdr.hdr = & hdr;
  cfg.action = 0U;
  cfg.timeout = 30U;
  tmp = mpt_config(ioc, & cfg);
  if (tmp != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.PageLength == 0U) {
    goto out;
  } else {
  }
  tmp___0 = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4),
                                 & dma_handle);
  buffer = (pRaidVolumePage0_t )tmp___0;
  if ((unsigned long )buffer == (unsigned long )((pRaidVolumePage0_t )0)) {
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  tmp___1 = mpt_config(ioc, & cfg);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )buffer->NumPhysDisks == 0U) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_38196;
  ldv_38195:
  tmp___2 = mpt_raid_phys_disk_pg0(ioc, (int )buffer->PhysDisk[i].PhysDiskNum, & phys_disk);
  if (tmp___2 != 0) {
    goto ldv_38187;
  } else {
  }
  mptsas_add_device_component_by_fw(ioc, (int )phys_disk.PhysDiskBus, (int )phys_disk.PhysDiskID);
  ldv_mutex_lock_12(& ioc->sas_device_info_mutex);
  __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr;
  goto ldv_38193;
  ldv_38192: ;
  if ((unsigned int )sas_info->is_logical_volume == 0U && ((int )sas_info->fw.channel == (int )phys_disk.PhysDiskBus && (int )sas_info->fw.id == (int )phys_disk.PhysDiskID)) {
    sas_info->is_hidden_raid_component = 1U;
    sas_info->volume_id = (u8 )starget->id;
  } else {
  }
  __mptr___0 = (struct list_head const *)sas_info->list.next;
  sas_info = (struct mptsas_device_info *)__mptr___0;
  ldv_38193: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_38192;
  } else {
  }
  ldv_mutex_unlock_13(& ioc->sas_device_info_mutex);
  ldv_38187:
  i = i + 1;
  ldv_38196: ;
  if ((int )buffer->NumPhysDisks > i) {
    goto ldv_38195;
  } else {
  }
  ldv_mutex_lock_14(& ioc->sas_device_info_mutex);
  __mptr___1 = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr___1;
  __mptr___2 = (struct list_head const *)sas_info->list.next;
  next = (struct mptsas_device_info *)__mptr___2;
  goto ldv_38205;
  ldv_38204: ;
  if ((unsigned int )sas_info->is_logical_volume != 0U && (unsigned int )sas_info->fw.id == starget->id) {
    list_del(& sas_info->list);
    kfree((void const *)sas_info);
  } else {
  }
  sas_info = next;
  __mptr___3 = (struct list_head const *)next->list.next;
  next = (struct mptsas_device_info *)__mptr___3;
  ldv_38205: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_38204;
  } else {
  }
  tmp___3 = kzalloc(56UL, 208U);
  sas_info = (struct mptsas_device_info *)tmp___3;
  if ((unsigned long )sas_info != (unsigned long )((struct mptsas_device_info *)0)) {
    sas_info->fw.id = (u8 )starget->id;
    sas_info->os.id = (u8 )starget->id;
    sas_info->os.channel = (u8 )starget->channel;
    sas_info->is_logical_volume = 1U;
    INIT_LIST_HEAD(& sas_info->list);
    list_add_tail(& sas_info->list, & ioc->sas_device_info_list);
  } else {
  }
  ldv_mutex_unlock_15(& ioc->sas_device_info_mutex);
  out: ;
  if ((unsigned long )buffer != (unsigned long )((pRaidVolumePage0_t )0)) {
    pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4), (void *)buffer,
                        dma_handle);
  } else {
  }
  return;
}
}
static void mptsas_add_device_component_starget(MPT_ADAPTER *ioc , struct scsi_target *starget )
{
  VirtTarget *vtarget ;
  struct sas_rphy *rphy ;
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_enclosure enclosure_info ;
  struct device const *__mptr ;
  {
  phy_info = 0;
  __mptr = (struct device const *)starget->dev.parent;
  rphy = (struct sas_rphy *)__mptr;
  vtarget = (VirtTarget *)starget->hostdata;
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, rphy->identify.sas_address);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    return;
  } else {
  }
  memset((void *)(& enclosure_info), 0, 24UL);
  mptsas_sas_enclosure_pg0(ioc, & enclosure_info, 268435456U, (u32 )phy_info->attached.handle_enclosure);
  mptsas_add_device_component(ioc, (int )phy_info->attached.channel, (int )phy_info->attached.id,
                              phy_info->attached.sas_address, phy_info->attached.device_info,
                              (int )phy_info->attached.slot, enclosure_info.enclosure_logical_id);
  return;
}
}
static void mptsas_del_device_component_by_os(MPT_ADAPTER *ioc , u8 channel , u8 id )
{
  struct mptsas_device_info *sas_info ;
  struct mptsas_device_info *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr;
  __mptr___0 = (struct list_head const *)sas_info->list.next;
  next = (struct mptsas_device_info *)__mptr___0;
  goto ldv_38231;
  ldv_38230: ;
  if ((int )sas_info->os.channel == (int )channel && (int )sas_info->os.id == (int )id) {
    sas_info->is_cached = 1U;
  } else {
  }
  sas_info = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mptsas_device_info *)__mptr___1;
  ldv_38231: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_38230;
  } else {
  }
  return;
}
}
static void mptsas_del_device_components(MPT_ADAPTER *ioc )
{
  struct mptsas_device_info *sas_info ;
  struct mptsas_device_info *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ldv_mutex_lock_16(& ioc->sas_device_info_mutex);
  __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr;
  __mptr___0 = (struct list_head const *)sas_info->list.next;
  next = (struct mptsas_device_info *)__mptr___0;
  goto ldv_38245;
  ldv_38244:
  list_del(& sas_info->list);
  kfree((void const *)sas_info);
  sas_info = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mptsas_device_info *)__mptr___1;
  ldv_38245: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_38244;
  } else {
  }
  ldv_mutex_unlock_17(& ioc->sas_device_info_mutex);
  return;
}
}
static void mptsas_setup_wide_ports(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info )
{
  struct mptsas_portinfo_details *port_details ;
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_phyinfo *phy_info_cmp ;
  u64 sas_address ;
  int i ;
  int j ;
  void *tmp ;
  {
  ldv_mutex_lock_18(& ioc->sas_topology_mutex);
  phy_info = port_info->phy_info;
  i = 0;
  goto ldv_38260;
  ldv_38259: ;
  if ((unsigned int )phy_info->attached.handle != 0U) {
    goto ldv_38257;
  } else {
  }
  port_details = phy_info->port_details;
  if ((unsigned long )port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    goto ldv_38257;
  } else {
  }
  if ((unsigned int )port_details->num_phys <= 1U) {
    goto ldv_38257;
  } else {
  }
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: %s: [%p]: deleting phy = %d\n", (char *)(& ioc->name),
           "mptsas_setup_wide_ports", port_details, i);
  } else {
  }
  port_details->num_phys = (u16 )((int )port_details->num_phys - 1);
  port_details->phy_bitmask = port_details->phy_bitmask & (u64 )(~ (1 << (int )phy_info->phy_id));
  memset((void *)(& phy_info->attached), 0, 40UL);
  if ((unsigned long )phy_info->phy != (unsigned long )((struct sas_phy *)0)) {
    if ((ioc->debug_level & 8) != 0) {
      dev_printk("\017", (struct device const *)(& (phy_info->phy)->dev), "mptsas: %s: delete phy %d, phy-obj (0x%p)\n",
                 (char *)(& ioc->name), (int )phy_info->phy_id, phy_info->phy);
    } else {
    }
    sas_port_delete_phy(port_details->port, phy_info->phy);
  } else {
  }
  phy_info->port_details = 0;
  ldv_38257:
  i = i + 1;
  phy_info = phy_info + 1;
  ldv_38260: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38259;
  } else {
  }
  phy_info = port_info->phy_info;
  i = 0;
  goto ldv_38269;
  ldv_38268:
  sas_address = phy_info->attached.sas_address;
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: phy_id=%d sas_address=0x%018llX\n", (char *)(& ioc->name),
           i, sas_address);
  } else {
  }
  if (sas_address == 0ULL) {
    goto ldv_38262;
  } else {
  }
  port_details = phy_info->port_details;
  if ((unsigned long )port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    tmp = kzalloc(48UL, 208U);
    port_details = (struct mptsas_portinfo_details *)tmp;
    if ((unsigned long )port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
      goto out;
    } else {
    }
    port_details->num_phys = 1U;
    port_details->port_info = port_info;
    if ((unsigned int )phy_info->phy_id <= 63U) {
      port_details->phy_bitmask = port_details->phy_bitmask | (u64 )(1 << (int )phy_info->phy_id);
    } else {
    }
    phy_info->sas_port_add_phy = 1U;
    if ((ioc->debug_level & 2097152) != 0) {
      printk("\017mptsas: %s: \t\tForming port\n\t\tphy_id=%d sas_address=0x%018llX\n",
             (char *)(& ioc->name), i, sas_address);
    } else {
    }
    phy_info->port_details = port_details;
  } else {
  }
  if ((int )port_info->num_phys + -1 == i) {
    goto ldv_38262;
  } else {
  }
  phy_info_cmp = port_info->phy_info + ((unsigned long )i + 1UL);
  j = i + 1;
  goto ldv_38266;
  ldv_38265: ;
  if (phy_info_cmp->attached.sas_address == 0ULL) {
    goto ldv_38264;
  } else {
  }
  if (phy_info_cmp->attached.sas_address != sas_address) {
    goto ldv_38264;
  } else {
  }
  if ((unsigned long )phy_info_cmp->port_details == (unsigned long )port_details) {
    goto ldv_38264;
  } else {
  }
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: \t\tphy_id=%d sas_address=0x%018llX\n", (char *)(& ioc->name),
           j, phy_info_cmp->attached.sas_address);
  } else {
  }
  if ((unsigned long )phy_info_cmp->port_details != (unsigned long )((struct mptsas_portinfo_details *)0)) {
    port_details->rphy = mptsas_get_rphy(phy_info_cmp);
    port_details->port = mptsas_get_port(phy_info_cmp);
    port_details->starget = mptsas_get_starget(phy_info_cmp);
    port_details->num_phys = (phy_info_cmp->port_details)->num_phys;
    if ((unsigned int )(phy_info_cmp->port_details)->num_phys == 0U) {
      kfree((void const *)phy_info_cmp->port_details);
    } else {
    }
  } else {
    phy_info_cmp->sas_port_add_phy = 1U;
  }
  phy_info_cmp->port_details = port_details;
  if ((unsigned int )phy_info_cmp->phy_id <= 63U) {
    port_details->phy_bitmask = port_details->phy_bitmask | (u64 )(1 << (int )phy_info_cmp->phy_id);
  } else {
  }
  port_details->num_phys = (u16 )((int )port_details->num_phys + 1);
  ldv_38264:
  j = j + 1;
  phy_info_cmp = phy_info_cmp + 1;
  ldv_38266: ;
  if ((int )port_info->num_phys > j) {
    goto ldv_38265;
  } else {
  }
  ldv_38262:
  i = i + 1;
  phy_info = phy_info + 1;
  ldv_38269: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38268;
  } else {
  }
  out:
  i = 0;
  goto ldv_38273;
  ldv_38272:
  port_details = (port_info->phy_info + (unsigned long )i)->port_details;
  if ((unsigned long )port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    goto ldv_38271;
  } else {
  }
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: %s: [%p]: phy_id=%02d num_phys=%02d bitmask=0x%016llX\n",
           (char *)(& ioc->name), "mptsas_setup_wide_ports", port_details, i, (int )port_details->num_phys,
           port_details->phy_bitmask);
  } else {
  }
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\017mptsas: %s: \t\tport = %p rphy=%p\n", (char *)(& ioc->name), port_details->port,
           port_details->rphy);
  } else {
  }
  ldv_38271:
  i = i + 1;
  ldv_38273: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38272;
  } else {
  }
  if ((ioc->debug_level & 2097152) != 0) {
    printk("\n");
  } else {
  }
  ldv_mutex_unlock_19(& ioc->sas_topology_mutex);
  return;
}
}
static VirtTarget *mptsas_find_vtarget(MPT_ADAPTER *ioc , u8 channel , u8 id )
{
  struct scsi_device *sdev ;
  VirtDevice *vdevice ;
  VirtTarget *vtarget ;
  {
  vtarget = 0;
  sdev = __scsi_iterate_devices(ioc->sh, 0);
  goto ldv_38285;
  ldv_38284:
  vdevice = (VirtDevice *)sdev->hostdata;
  if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) {
    goto ldv_38283;
  } else {
  }
  if (((int )(vdevice->vtarget)->tflags & 64) != 0 || (unsigned int )(vdevice->vtarget)->raidVolume != 0U) {
    goto ldv_38283;
  } else {
  }
  if ((int )(vdevice->vtarget)->id == (int )id && (int )(vdevice->vtarget)->channel == (int )channel) {
    vtarget = vdevice->vtarget;
  } else {
  }
  ldv_38283:
  sdev = __scsi_iterate_devices(ioc->sh, sdev);
  ldv_38285: ;
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    goto ldv_38284;
  } else {
  }
  return (vtarget);
}
}
static void mptsas_queue_device_delete(MPT_ADAPTER *ioc , MpiEventDataSasDeviceStatusChange_t *sas_event_data )
{
  struct fw_event_work *fw_event ;
  int sz ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___0 ;
  {
  sz = 284;
  tmp = kzalloc((size_t )sz, 32U);
  fw_event = (struct fw_event_work *)tmp;
  if ((unsigned long )fw_event == (unsigned long )((struct fw_event_work *)0)) {
    printk("\fmptsas: %s: WARNING - %s: failed at (line=%d)\n", (char *)(& ioc->name),
           "mptsas_queue_device_delete", 1048);
    return;
  } else {
  }
  __len = 36UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& fw_event->event_data), (void const *)sas_event_data,
                     __len);
  } else {
    __ret = memcpy((void *)(& fw_event->event_data), (void const *)sas_event_data,
                             __len);
  }
  fw_event->event = 15U;
  fw_event->ioc = ioc;
  tmp___0 = msecs_to_jiffies(1U);
  mptsas_add_fw_event(ioc, fw_event, tmp___0);
  return;
}
}
static void mptsas_queue_rescan(MPT_ADAPTER *ioc )
{
  struct fw_event_work *fw_event ;
  int sz ;
  void *tmp ;
  unsigned long tmp___0 ;
  {
  sz = 248;
  tmp = kzalloc((size_t )sz, 32U);
  fw_event = (struct fw_event_work *)tmp;
  if ((unsigned long )fw_event == (unsigned long )((struct fw_event_work *)0)) {
    printk("\fmptsas: %s: WARNING - %s: failed at (line=%d)\n", (char *)(& ioc->name),
           "mptsas_queue_rescan", 1068);
    return;
  } else {
  }
  fw_event->event = 4294967295U;
  fw_event->ioc = ioc;
  tmp___0 = msecs_to_jiffies(1U);
  mptsas_add_fw_event(ioc, fw_event, tmp___0);
  return;
}
}
static int mptsas_target_reset(MPT_ADAPTER *ioc , u8 channel , u8 id )
{
  MPT_FRAME_HDR *mf ;
  SCSITaskMgmt_t *pScsiTm ;
  int tmp ;
  {
  tmp = mpt_set_taskmgmt_in_progress_flag(ioc);
  if (tmp != 0) {
    return (0);
  } else {
  }
  mf = mpt_get_msg_frame((int )mptsasDeviceResetCtx, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\fmptsas: %s: WARNING - %s, no msg frames @%d!!\n", (char *)(& ioc->name),
             "mptsas_target_reset", 1103);
    } else {
    }
    goto out_fail;
  } else {
  }
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: TaskMgmt request (mf=%p)\n", (char *)(& ioc->name), mf);
  } else {
  }
  pScsiTm = (SCSITaskMgmt_t *)mf;
  memset((void *)pScsiTm, 0, 52UL);
  pScsiTm->TargetID = id;
  pScsiTm->Bus = channel;
  pScsiTm->Function = 1U;
  pScsiTm->TaskType = 3U;
  pScsiTm->MsgFlags = 4U;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: TaskMgmt type=%d (sas device delete) fw_channel = %d fw_id = %d)\n",
           (char *)(& ioc->name), 3, (int )channel, (int )id);
  } else {
  }
  mpt_put_msg_frame_hi_pri((int )mptsasDeviceResetCtx, ioc, mf);
  return (1);
  out_fail:
  mpt_clear_taskmgmt_in_progress_flag(ioc);
  return (0);
}
}
static void mptsas_block_io_sdev(struct scsi_device *sdev , void *data )
{
  {
  scsi_device_set_state(sdev, 8);
  return;
}
}
static void mptsas_block_io_starget(struct scsi_target *starget )
{
  {
  if ((unsigned long )starget != (unsigned long )((struct scsi_target *)0)) {
    starget_for_each_device(starget, 0, & mptsas_block_io_sdev);
  } else {
  }
  return;
}
}
static void mptsas_target_reset_queue(MPT_ADAPTER *ioc , EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *sas_event_data )
{
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  VirtTarget *vtarget ;
  struct mptsas_target_reset_event *target_reset_list ;
  u8 id ;
  u8 channel ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  {
  tmp = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp;
  vtarget = 0;
  id = sas_event_data->TargetID;
  channel = sas_event_data->Bus;
  vtarget = mptsas_find_vtarget(ioc, (int )channel, (int )id);
  if ((unsigned long )vtarget != (unsigned long )((VirtTarget *)0)) {
    mptsas_block_io_starget(vtarget->starget);
    vtarget->deleted = 1U;
  } else {
  }
  tmp___0 = kzalloc(64UL, 32U);
  target_reset_list = (struct mptsas_target_reset_event *)tmp___0;
  if ((unsigned long )target_reset_list == (unsigned long )((struct mptsas_target_reset_event *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\fmptsas: %s: WARNING - %s, failed to allocate mem @%d..!!\n", (char *)(& ioc->name),
             "mptsas_target_reset_queue", 1183);
    } else {
    }
    return;
  } else {
  }
  __len = 36UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& target_reset_list->sas_event_data), (void const *)sas_event_data,
                     __len);
  } else {
    __ret = memcpy((void *)(& target_reset_list->sas_event_data), (void const *)sas_event_data,
                             __len);
  }
  list_add_tail(& target_reset_list->list, & hd->target_reset_list);
  target_reset_list->time_count = jiffies;
  tmp___1 = mptsas_target_reset(ioc, (int )channel, (int )id);
  if (tmp___1 != 0) {
    target_reset_list->target_reset_issued = 1U;
  } else {
  }
  return;
}
}
void mptsas_schedule_target_reset(void *iocp )
{
  MPT_ADAPTER *ioc ;
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  struct list_head *head ;
  struct mptsas_target_reset_event *target_reset_list ;
  u8 id ;
  u8 channel ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  {
  ioc = (MPT_ADAPTER *)iocp;
  tmp = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp;
  head = & hd->target_reset_list;
  head = & hd->target_reset_list;
  tmp___0 = list_empty((struct list_head const *)head);
  if (tmp___0 != 0) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)head->next;
  target_reset_list = (struct mptsas_target_reset_event *)__mptr;
  id = target_reset_list->sas_event_data.TargetID;
  channel = target_reset_list->sas_event_data.Bus;
  target_reset_list->time_count = jiffies;
  tmp___1 = mptsas_target_reset(ioc, (int )channel, (int )id);
  if (tmp___1 != 0) {
    target_reset_list->target_reset_issued = 1U;
  } else {
  }
  return;
}
}
static int mptsas_taskmgmt_complete(MPT_ADAPTER *ioc , MPT_FRAME_HDR *mf , MPT_FRAME_HDR *mr )
{
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  struct list_head *head ;
  u8 id ;
  u8 channel ;
  struct mptsas_target_reset_event *target_reset_list ;
  SCSITaskMgmtReply_t *pScsiTmReply ;
  size_t __len ;
  int _min1 ;
  int _min2 ;
  void *__ret ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  tmp = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp;
  head = & hd->target_reset_list;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: TaskMgmt completed: (mf = %p, mr = %p)\n", (char *)(& ioc->name),
           mf, mr);
  } else {
  }
  pScsiTmReply = (SCSITaskMgmtReply_t *)mr;
  if ((unsigned long )pScsiTmReply != (unsigned long )((SCSITaskMgmtReply_t *)0)) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptsas: %s: \tTaskMgmt completed: fw_channel = %d, fw_id = %d,\n\ttask_type = 0x%02X, iocstatus = 0x%04X loginfo = 0x%08X,\n\tresponse_code = 0x%02X, term_cmnds = %d\n",
             (char *)(& ioc->name), (int )pScsiTmReply->Bus, (int )pScsiTmReply->TargetID,
             (int )pScsiTmReply->TaskType, (int )pScsiTmReply->IOCStatus, pScsiTmReply->IOCLogInfo,
             (int )pScsiTmReply->ResponseCode, pScsiTmReply->TerminationCount);
    } else {
    }
    if ((unsigned int )pScsiTmReply->ResponseCode != 0U) {
      mptscsih_taskmgmt_response_code(ioc, (int )pScsiTmReply->ResponseCode);
    } else {
    }
  } else {
  }
  if ((unsigned long )pScsiTmReply != (unsigned long )((SCSITaskMgmtReply_t *)0) && ((unsigned int )pScsiTmReply->TaskType == 7U || (unsigned int )pScsiTmReply->TaskType == 2U)) {
    ioc->taskmgmt_cmds.status = (u8 )((unsigned int )ioc->taskmgmt_cmds.status | 2U);
    ioc->taskmgmt_cmds.status = (u8 )((unsigned int )ioc->taskmgmt_cmds.status | 1U);
    _min1 = 128;
    _min2 = (int )mr->u.reply.MsgLength * 4;
    __len = (size_t )(_min1 < _min2 ? _min1 : _min2);
    __ret = memcpy((void *)(& ioc->taskmgmt_cmds.reply), (void const *)mr,
                             __len);
    if (((int )ioc->taskmgmt_cmds.status & 4) != 0) {
      ioc->taskmgmt_cmds.status = (unsigned int )ioc->taskmgmt_cmds.status & 251U;
      complete(& ioc->taskmgmt_cmds.done);
      return (1);
    } else {
    }
    return (0);
  } else {
  }
  mpt_clear_taskmgmt_in_progress_flag(ioc);
  tmp___0 = list_empty((struct list_head const *)head);
  if (tmp___0 != 0) {
    return (1);
  } else {
  }
  __mptr = (struct list_head const *)head->next;
  target_reset_list = (struct mptsas_target_reset_event *)__mptr;
  if ((ioc->debug_level & 256) != 0) {
    tmp___1 = jiffies_to_msecs((unsigned long )jiffies - target_reset_list->time_count);
    printk("\017mptsas: %s: TaskMgmt: completed (%d seconds)\n", (char *)(& ioc->name),
           tmp___1 / 1000U);
  } else {
  }
  id = pScsiTmReply->TargetID;
  channel = pScsiTmReply->Bus;
  target_reset_list->time_count = jiffies;
  if ((unsigned int )target_reset_list->target_reset_issued == 0U) {
    tmp___2 = mptsas_target_reset(ioc, (int )channel, (int )id);
    if (tmp___2 != 0) {
      target_reset_list->target_reset_issued = 1U;
    } else {
    }
    return (1);
  } else {
  }
  list_del(& target_reset_list->list);
  if ((unsigned int )ioc->fw_events_off == 0U) {
    mptsas_queue_device_delete(ioc, & target_reset_list->sas_event_data);
  } else {
  }
  (*(ioc->schedule_target_reset))((void *)ioc);
  return (1);
}
}
static int mptsas_ioc_reset(MPT_ADAPTER *ioc , int reset_phase )
{
  MPT_SCSI_HOST *hd ;
  int rc ;
  void *tmp ;
  {
  rc = mptscsih_ioc_reset(ioc, reset_phase);
  if ((unsigned int )ioc->bus_type != 2U || rc == 0) {
    return (rc);
  } else {
  }
  tmp = shost_priv(ioc->sh);
  hd = (MPT_SCSI_HOST *)tmp;
  if ((unsigned long )hd->ioc == (unsigned long )((struct _MPT_ADAPTER *)0)) {
    goto out;
  } else {
  }
  switch (reset_phase) {
  case 2: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: %s: MPT_IOC_SETUP_RESET\n", (char *)(& ioc->name), "mptsas_ioc_reset");
  } else {
  }
  mptsas_fw_event_off(ioc);
  goto ldv_38374;
  case 0: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: %s: MPT_IOC_PRE_RESET\n", (char *)(& ioc->name), "mptsas_ioc_reset");
  } else {
  }
  goto ldv_38374;
  case 1: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: %s: MPT_IOC_POST_RESET\n", (char *)(& ioc->name), "mptsas_ioc_reset");
  } else {
  }
  if (((int )ioc->sas_mgmt.status & 4) != 0) {
    ioc->sas_mgmt.status = (u8 )((unsigned int )ioc->sas_mgmt.status | 8U);
    complete(& ioc->sas_mgmt.done);
  } else {
  }
  mptsas_cleanup_fw_event_q(ioc);
  mptsas_queue_rescan(ioc);
  goto ldv_38374;
  default: ;
  goto ldv_38374;
  }
  ldv_38374: ;
  out: ;
  return (rc);
}
}
static int mptsas_sas_enclosure_pg0(MPT_ADAPTER *ioc , struct mptsas_enclosure *enclosure ,
                                    u32 form , u32 form_specific )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasEnclosurePage0_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  __le64 le_identifier ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)(& hdr), 0, 8UL);
  hdr.PageVersion = 1U;
  hdr.PageNumber = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 21U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = form + form_specific;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasEnclosurePage0_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasEnclosurePage0_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& le_identifier), (void const *)(& buffer->EnclosureLogicalID),
                     __len);
  } else {
    __ret = memcpy((void *)(& le_identifier), (void const *)(& buffer->EnclosureLogicalID),
                             __len);
  }
  enclosure->enclosure_logical_id = le_identifier;
  enclosure->enclosure_handle = buffer->EnclosureHandle;
  enclosure->flags = buffer->Flags;
  enclosure->num_slot = buffer->NumSlots;
  enclosure->start_slot = buffer->StartSlot;
  enclosure->start_id = buffer->StartTargetID;
  enclosure->start_channel = buffer->StartBus;
  enclosure->sep_id = buffer->SEPTargetID;
  enclosure->sep_channel = buffer->SEPBus;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_add_end_device(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info )
{
  struct sas_rphy *rphy ;
  struct sas_port *port ;
  struct sas_identify identify ;
  char *ds ;
  u8 fw_id ;
  struct sas_rphy *tmp ;
  int tmp___0 ;
  {
  ds = 0;
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_add_end_device", 1478);
    } else {
    }
    return (1);
  } else {
  }
  fw_id = phy_info->attached.id;
  tmp = mptsas_get_rphy(phy_info);
  if ((unsigned long )tmp != (unsigned long )((struct sas_rphy *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_add_end_device", (int )fw_id, 1487);
    } else {
    }
    return (2);
  } else {
  }
  port = mptsas_get_port(phy_info);
  if ((unsigned long )port == (unsigned long )((struct sas_port *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_add_end_device", (int )fw_id, 1495);
    } else {
    }
    return (3);
  } else {
  }
  if ((phy_info->attached.device_info & 1024U) != 0U) {
    ds = (char *)"ssp";
  } else {
  }
  if ((phy_info->attached.device_info & 512U) != 0U) {
    ds = (char *)"stp";
  } else {
  }
  if ((phy_info->attached.device_info & 128U) != 0U) {
    ds = (char *)"sata";
  } else {
  }
  printk("\016mptsas: %s: attaching %s device: fw_channel %d, fw_id %d, phy %d, sas_addr 0x%llx\n",
         (char *)(& ioc->name), ds, (int )phy_info->attached.channel, (int )phy_info->attached.id,
         (int )phy_info->attached.phy_id, phy_info->attached.sas_address);
  mptsas_parse_device_info(& identify, & phy_info->attached);
  rphy = sas_end_device_alloc(port);
  if ((unsigned long )rphy == (unsigned long )((struct sas_rphy *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_add_end_device", (int )fw_id, 1520);
    } else {
    }
    return (5);
  } else {
  }
  rphy->identify = identify;
  tmp___0 = sas_rphy_add(rphy);
  if (tmp___0 != 0) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_add_end_device", (int )fw_id, 1528);
    } else {
    }
    sas_rphy_free(rphy);
    return (6);
  } else {
  }
  mptsas_set_rphy(ioc, phy_info, rphy);
  return (0);
}
}
static void mptsas_del_end_device(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info )
{
  struct sas_rphy *rphy ;
  struct sas_port *port ;
  struct mptsas_portinfo *port_info ;
  struct mptsas_phyinfo *phy_info_parent ;
  int i ;
  char *ds ;
  u8 fw_id ;
  u64 sas_address ;
  {
  ds = 0;
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    return;
  } else {
  }
  fw_id = phy_info->attached.id;
  sas_address = phy_info->attached.sas_address;
  if ((unsigned long )phy_info->port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_del_end_device", (int )fw_id, 1563);
    } else {
    }
    return;
  } else {
  }
  rphy = mptsas_get_rphy(phy_info);
  if ((unsigned long )rphy == (unsigned long )((struct sas_rphy *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_del_end_device", (int )fw_id, 1570);
    } else {
    }
    return;
  } else {
  }
  if (((phy_info->attached.device_info & 64U) != 0U || (phy_info->attached.device_info & 16U) != 0U) || (phy_info->attached.device_info & 32U) != 0U) {
    ds = (char *)"initiator";
  } else {
  }
  if ((phy_info->attached.device_info & 1024U) != 0U) {
    ds = (char *)"ssp";
  } else {
  }
  if ((phy_info->attached.device_info & 512U) != 0U) {
    ds = (char *)"stp";
  } else {
  }
  if ((phy_info->attached.device_info & 128U) != 0U) {
    ds = (char *)"sata";
  } else {
  }
  dev_printk("\017", (struct device const *)(& rphy->dev), "mptsas: %s: removing %s device: fw_channel %d, fw_id %d, phy %d,sas_addr 0x%llx\n",
             (char *)(& ioc->name), ds, (int )phy_info->attached.channel, (int )phy_info->attached.id,
             (int )phy_info->attached.phy_id, sas_address);
  port = mptsas_get_port(phy_info);
  if ((unsigned long )port == (unsigned long )((struct sas_port *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_del_end_device", (int )fw_id, 1600);
    } else {
    }
    return;
  } else {
  }
  port_info = phy_info->portinfo;
  phy_info_parent = port_info->phy_info;
  i = 0;
  goto ldv_38424;
  ldv_38423: ;
  if ((unsigned long )phy_info_parent->phy == (unsigned long )((struct sas_phy *)0)) {
    goto ldv_38422;
  } else {
  }
  if (phy_info_parent->attached.sas_address != sas_address) {
    goto ldv_38422;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (phy_info_parent->phy)->dev), "mptsas: %s: delete phy %d, phy-obj (0x%p)\n",
             (char *)(& ioc->name), (int )phy_info_parent->phy_id, phy_info_parent->phy);
  sas_port_delete_phy(port, phy_info_parent->phy);
  ldv_38422:
  i = i + 1;
  phy_info_parent = phy_info_parent + 1;
  ldv_38424: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38423;
  } else {
  }
  dev_printk("\017", (struct device const *)(& port->dev), "mptsas: %s: delete port %d, sas_addr (0x%llx)\n",
             (char *)(& ioc->name), port->port_identifier, sas_address);
  sas_port_delete(port);
  mptsas_set_port(ioc, phy_info, 0);
  mptsas_port_delete(ioc, phy_info->port_details);
  return;
}
}
struct mptsas_phyinfo *mptsas_refreshing_device_handles(MPT_ADAPTER *ioc , struct mptsas_devinfo *sas_device )
{
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_portinfo *port_info ;
  int i ;
  {
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_device->sas_address);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    goto out;
  } else {
  }
  port_info = phy_info->portinfo;
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    goto out;
  } else {
  }
  ldv_mutex_lock_20(& ioc->sas_topology_mutex);
  i = 0;
  goto ldv_38436;
  ldv_38435: ;
  if ((port_info->phy_info + (unsigned long )i)->attached.sas_address != sas_device->sas_address) {
    goto ldv_38434;
  } else {
  }
  (port_info->phy_info + (unsigned long )i)->attached.channel = sas_device->channel;
  (port_info->phy_info + (unsigned long )i)->attached.id = sas_device->id;
  (port_info->phy_info + (unsigned long )i)->attached.sas_address = sas_device->sas_address;
  (port_info->phy_info + (unsigned long )i)->attached.handle = sas_device->handle;
  (port_info->phy_info + (unsigned long )i)->attached.handle_parent = sas_device->handle_parent;
  (port_info->phy_info + (unsigned long )i)->attached.handle_enclosure = sas_device->handle_enclosure;
  ldv_38434:
  i = i + 1;
  ldv_38436: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38435;
  } else {
  }
  ldv_mutex_unlock_21(& ioc->sas_topology_mutex);
  out: ;
  return (phy_info);
}
}
static void mptsas_firmware_event_work(struct work_struct *work )
{
  struct fw_event_work *fw_event ;
  struct work_struct const *__mptr ;
  MPT_ADAPTER *ioc ;
  {
  __mptr = (struct work_struct const *)work;
  fw_event = (struct fw_event_work *)__mptr + 0xfffffffffffffff0UL;
  ioc = fw_event->ioc;
  if (fw_event->event == 4294967295U) {
    if ((unsigned int )ioc->in_rescan != 0U) {
      if ((ioc->debug_level & 8) != 0) {
        printk("\017mptsas: %s: %s: rescan ignored as it is in progress\n", (char *)(& ioc->name),
               "mptsas_firmware_event_work");
      } else {
      }
      return;
    } else {
    }
    if ((ioc->debug_level & 8) != 0) {
      printk("\017mptsas: %s: %s: rescan after reset\n", (char *)(& ioc->name), "mptsas_firmware_event_work");
    } else {
    }
    ioc->in_rescan = 1U;
    mptsas_not_responding_devices(ioc);
    mptsas_scan_sas_topology(ioc);
    ioc->in_rescan = 0U;
    mptsas_free_fw_event(ioc, fw_event);
    mptsas_fw_event_on(ioc);
    return;
  } else {
  }
  if ((unsigned int )ioc->fw_events_off != 0U) {
    mptsas_free_fw_event(ioc, fw_event);
    return;
  } else {
  }
  if ((ioc->debug_level & 8) != 0) {
    printk("\017mptsas: %s: %s: fw_event=(0x%p), event = (0x%02x)\n", (char *)(& ioc->name),
           "mptsas_firmware_event_work", fw_event, fw_event->event & 255U);
  } else {
  }
  switch (fw_event->event) {
  case 15U:
  mptsas_send_sas_event(fw_event);
  goto ldv_38447;
  case 11U:
  mptsas_send_raid_event(fw_event);
  goto ldv_38447;
  case 21U:
  mptsas_send_ir2_event(fw_event);
  goto ldv_38447;
  case 17U:
  mptbase_sas_persist_operation(ioc, 1);
  mptsas_free_fw_event(ioc, fw_event);
  goto ldv_38447;
  case 23U:
  mptsas_broadcast_primative_work(fw_event);
  goto ldv_38447;
  case 27U:
  mptsas_send_expander_event(fw_event);
  goto ldv_38447;
  case 18U:
  mptsas_send_link_status_event(fw_event);
  goto ldv_38447;
  case 14U:
  mptsas_handle_queue_full_event(fw_event);
  goto ldv_38447;
  }
  ldv_38447: ;
  return;
}
}
static int mptsas_slave_configure(struct scsi_device *sdev )
{
  struct Scsi_Host *host ;
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  MPT_ADAPTER *ioc ;
  VirtDevice *vdevice ;
  struct scsi_target *tmp___0 ;
  struct scsi_target *tmp___1 ;
  int tmp___2 ;
  {
  host = sdev->host;
  tmp = shost_priv(host);
  hd = (MPT_SCSI_HOST *)tmp;
  ioc = hd->ioc;
  vdevice = (VirtDevice *)sdev->hostdata;
  if ((unsigned int )(vdevice->vtarget)->deleted != 0U) {
    dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "clearing deleted flag\n");
    (vdevice->vtarget)->deleted = 0U;
  } else {
  }
  if (sdev->channel == 1U) {
    tmp___0 = scsi_target(sdev);
    mptsas_add_device_component_starget_ir(ioc, tmp___0);
    goto out;
  } else {
  }
  sas_read_port_mode_page(sdev);
  tmp___1 = scsi_target(sdev);
  mptsas_add_device_component_starget(ioc, tmp___1);
  out:
  tmp___2 = mptscsih_slave_configure(sdev);
  return (tmp___2);
}
}
static int mptsas_target_alloc(struct scsi_target *starget )
{
  struct Scsi_Host *host ;
  struct Scsi_Host *tmp ;
  MPT_SCSI_HOST *hd ;
  void *tmp___0 ;
  VirtTarget *vtarget ;
  u8 id ;
  u8 channel ;
  struct sas_rphy *rphy ;
  struct mptsas_portinfo *p ;
  int i ;
  MPT_ADAPTER *ioc ;
  void *tmp___1 ;
  struct device const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = dev_to_shost(& starget->dev);
  host = tmp;
  tmp___0 = shost_priv(host);
  hd = (MPT_SCSI_HOST *)tmp___0;
  ioc = hd->ioc;
  tmp___1 = kzalloc(24UL, 208U);
  vtarget = (VirtTarget *)tmp___1;
  if ((unsigned long )vtarget == (unsigned long )((VirtTarget *)0)) {
    return (-12);
  } else {
  }
  vtarget->starget = starget;
  vtarget->ioc_id = (u8 )ioc->id;
  vtarget->tflags = 8U;
  id = (u8 )starget->id;
  channel = 0U;
  if (starget->channel == 1U) {
    if ((unsigned long )ioc->raid_data.pIocPg2 == (unsigned long )((IOCPage2_t *)0)) {
      kfree((void const *)vtarget);
      return (-6);
    } else {
    }
    i = 0;
    goto ldv_38476;
    ldv_38475: ;
    if ((int )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID == (int )id) {
      channel = (ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeBus;
    } else {
    }
    i = i + 1;
    ldv_38476: ;
    if ((int )(ioc->raid_data.pIocPg2)->NumActiveVolumes > i) {
      goto ldv_38475;
    } else {
    }
    vtarget->raidVolume = 1U;
    goto out;
  } else {
  }
  __mptr = (struct device const *)starget->dev.parent;
  rphy = (struct sas_rphy *)__mptr;
  ldv_mutex_lock_22(& ioc->sas_topology_mutex);
  __mptr___0 = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr___0;
  goto ldv_38490;
  ldv_38489:
  i = 0;
  goto ldv_38487;
  ldv_38486: ;
  if ((p->phy_info + (unsigned long )i)->attached.sas_address != rphy->identify.sas_address) {
    goto ldv_38485;
  } else {
  }
  id = (p->phy_info + (unsigned long )i)->attached.id;
  channel = (p->phy_info + (unsigned long )i)->attached.channel;
  mptsas_set_starget(p->phy_info + (unsigned long )i, starget);
  tmp___2 = mptscsih_is_phys_disk(ioc, (int )channel, (int )id);
  if (tmp___2 != 0) {
    id = mptscsih_raid_id_to_num(ioc, (int )channel, (int )id);
    vtarget->tflags = (u8 )((unsigned int )vtarget->tflags | 64U);
    (p->phy_info + (unsigned long )i)->attached.phys_disk_num = (u32 )id;
  } else {
  }
  ldv_mutex_unlock_23(& ioc->sas_topology_mutex);
  goto out;
  ldv_38485:
  i = i + 1;
  ldv_38487: ;
  if ((int )p->num_phys > i) {
    goto ldv_38486;
  } else {
  }
  __mptr___1 = (struct list_head const *)p->list.next;
  p = (struct mptsas_portinfo *)__mptr___1;
  ldv_38490: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38489;
  } else {
  }
  ldv_mutex_unlock_24(& ioc->sas_topology_mutex);
  kfree((void const *)vtarget);
  return (-6);
  out:
  vtarget->id = id;
  vtarget->channel = channel;
  starget->hostdata = (void *)vtarget;
  return (0);
}
}
static void mptsas_target_destroy(struct scsi_target *starget )
{
  struct Scsi_Host *host ;
  struct Scsi_Host *tmp ;
  MPT_SCSI_HOST *hd ;
  void *tmp___0 ;
  struct sas_rphy *rphy ;
  struct mptsas_portinfo *p ;
  int i ;
  MPT_ADAPTER *ioc ;
  VirtTarget *vtarget ;
  struct device const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = dev_to_shost(& starget->dev);
  host = tmp;
  tmp___0 = shost_priv(host);
  hd = (MPT_SCSI_HOST *)tmp___0;
  ioc = hd->ioc;
  if ((unsigned long )starget->hostdata == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  vtarget = (VirtTarget *)starget->hostdata;
  mptsas_del_device_component_by_os(ioc, (int )((u8 )starget->channel), (int )((u8 )starget->id));
  if (starget->channel == 1U) {
    goto out;
  } else {
  }
  __mptr = (struct device const *)starget->dev.parent;
  rphy = (struct sas_rphy *)__mptr;
  __mptr___0 = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr___0;
  goto ldv_38514;
  ldv_38513:
  i = 0;
  goto ldv_38511;
  ldv_38510: ;
  if ((p->phy_info + (unsigned long )i)->attached.sas_address != rphy->identify.sas_address) {
    goto ldv_38509;
  } else {
  }
  dev_printk("\016", (struct device const *)(& starget->dev), "mptsas: %s: delete device: fw_channel %d, fw_id %d, phy %d, sas_addr 0x%llx\n",
             (char *)(& ioc->name), (int )(p->phy_info + (unsigned long )i)->attached.channel,
             (int )(p->phy_info + (unsigned long )i)->attached.id, (int )(p->phy_info + (unsigned long )i)->attached.phy_id,
             (p->phy_info + (unsigned long )i)->attached.sas_address);
  mptsas_set_starget(p->phy_info + (unsigned long )i, 0);
  ldv_38509:
  i = i + 1;
  ldv_38511: ;
  if ((int )p->num_phys > i) {
    goto ldv_38510;
  } else {
  }
  __mptr___1 = (struct list_head const *)p->list.next;
  p = (struct mptsas_portinfo *)__mptr___1;
  ldv_38514: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38513;
  } else {
  }
  out:
  vtarget->starget = 0;
  kfree((void const *)starget->hostdata);
  starget->hostdata = 0;
  return;
}
}
static int mptsas_slave_alloc(struct scsi_device *sdev )
{
  struct Scsi_Host *host ;
  MPT_SCSI_HOST *hd ;
  void *tmp ;
  struct sas_rphy *rphy ;
  struct mptsas_portinfo *p ;
  VirtDevice *vdevice ;
  struct scsi_target *starget ;
  int i ;
  MPT_ADAPTER *ioc ;
  void *tmp___0 ;
  struct device const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  struct list_head const *__mptr___1 ;
  {
  host = sdev->host;
  tmp = shost_priv(host);
  hd = (MPT_SCSI_HOST *)tmp;
  ioc = hd->ioc;
  tmp___0 = kzalloc(16UL, 208U);
  vdevice = (VirtDevice *)tmp___0;
  if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0)) {
    printk("\vmptsas: %s: ERROR - slave_alloc kzalloc(%zd) FAILED!\n", (char *)(& ioc->name),
           16UL);
    return (-12);
  } else {
  }
  starget = scsi_target(sdev);
  vdevice->vtarget = (VirtTarget *)starget->hostdata;
  if (sdev->channel == 1U) {
    goto out;
  } else {
  }
  __mptr = (struct device const *)(sdev->sdev_target)->dev.parent;
  rphy = (struct sas_rphy *)__mptr;
  ldv_mutex_lock_25(& ioc->sas_topology_mutex);
  __mptr___0 = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr___0;
  goto ldv_38539;
  ldv_38538:
  i = 0;
  goto ldv_38536;
  ldv_38535: ;
  if ((p->phy_info + (unsigned long )i)->attached.sas_address != rphy->identify.sas_address) {
    goto ldv_38534;
  } else {
  }
  vdevice->lun = (int )sdev->lun;
  tmp___1 = mptscsih_is_phys_disk(ioc, (int )(p->phy_info + (unsigned long )i)->attached.channel,
                                  (int )(p->phy_info + (unsigned long )i)->attached.id);
  if (tmp___1 != 0) {
    sdev->no_uld_attach = 1U;
  } else {
  }
  ldv_mutex_unlock_26(& ioc->sas_topology_mutex);
  goto out;
  ldv_38534:
  i = i + 1;
  ldv_38536: ;
  if ((int )p->num_phys > i) {
    goto ldv_38535;
  } else {
  }
  __mptr___1 = (struct list_head const *)p->list.next;
  p = (struct mptsas_portinfo *)__mptr___1;
  ldv_38539: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38538;
  } else {
  }
  ldv_mutex_unlock_27(& ioc->sas_topology_mutex);
  kfree((void const *)vdevice);
  return (-6);
  out:
  (vdevice->vtarget)->num_luns = (vdevice->vtarget)->num_luns + 1U;
  sdev->hostdata = (void *)vdevice;
  return (0);
}
}
static int mptsas_qcmd_lck(struct scsi_cmnd *SCpnt , void (*done)(struct scsi_cmnd * ) )
{
  MPT_SCSI_HOST *hd ;
  MPT_ADAPTER *ioc ;
  VirtDevice *vdevice ;
  void *tmp ;
  int tmp___0 ;
  {
  vdevice = (VirtDevice *)(SCpnt->device)->hostdata;
  if (((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) || (unsigned int )(vdevice->vtarget)->deleted != 0U) {
    SCpnt->result = 65536;
    (*done)(SCpnt);
    return (0);
  } else {
  }
  tmp = shost_priv((SCpnt->device)->host);
  hd = (MPT_SCSI_HOST *)tmp;
  ioc = hd->ioc;
  if ((unsigned int )ioc->sas_discovery_quiesce_io != 0U) {
    return (4181);
  } else {
  }
  if ((ioc->debug_level & 65536) != 0) {
    scsi_print_command(SCpnt);
  } else {
  }
  tmp___0 = mptscsih_qcmd(SCpnt, done);
  return (tmp___0);
}
}
static int mptsas_qcmd(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  raw_spinlock_t *tmp ;
  {
  tmp = spinlock_check(shost->host_lock);
  irq_flags = _raw_spin_lock_irqsave(tmp);
  scsi_cmd_get_serial(shost, cmd);
  rc = mptsas_qcmd_lck(cmd, cmd->scsi_done);
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return (rc);
}
}
static enum blk_eh_timer_return mptsas_eh_timed_out(struct scsi_cmnd *sc )
{
  MPT_SCSI_HOST *hd ;
  MPT_ADAPTER *ioc ;
  VirtDevice *vdevice ;
  enum blk_eh_timer_return rc ;
  void *tmp ;
  {
  rc = 0;
  tmp = shost_priv((sc->device)->host);
  hd = (MPT_SCSI_HOST *)tmp;
  if ((unsigned long )hd == (unsigned long )((MPT_SCSI_HOST *)0)) {
    printk("\vmptsas: %s: Can\'t locate host! (sc=%p)\n", "mptsas_eh_timed_out", sc);
    goto done;
  } else {
  }
  ioc = hd->ioc;
  if ((unsigned int )ioc->bus_type != 2U) {
    printk("\vmptsas: %s: Wrong bus type (sc=%p)\n", "mptsas_eh_timed_out", sc);
    goto done;
  } else {
  }
  if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\fmptsas: %s: WARNING - : %s: ioc is in reset,SML need to reset the timer (sc=%p)\n",
             (char *)(& ioc->name), "mptsas_eh_timed_out", sc);
    } else {
    }
    rc = 2;
  } else {
  }
  vdevice = (VirtDevice *)(sc->device)->hostdata;
  if (((unsigned long )vdevice != (unsigned long )((VirtDevice *)0) && (unsigned long )vdevice->vtarget != (unsigned long )((VirtTarget *)0)) && ((unsigned int )(vdevice->vtarget)->inDMD != 0U || (unsigned int )(vdevice->vtarget)->deleted != 0U)) {
    if ((ioc->debug_level & 256) != 0) {
      printk("\fmptsas: %s: WARNING - : %s: target removed or in device removal delay (sc=%p)\n",
             (char *)(& ioc->name), "mptsas_eh_timed_out", sc);
    } else {
    }
    rc = 2;
    goto done;
  } else {
  }
  done: ;
  return (rc);
}
}
static struct scsi_host_template mptsas_driver_template =
     {& __this_module, "MPT SAS Host", 0, 0, & mptscsih_info, 0, 0, & mptsas_qcmd, 0,
    & mptscsih_abort, & mptscsih_dev_reset, 0, 0, & mptscsih_host_reset, & mptsas_slave_alloc,
    & mptsas_slave_configure, & mptscsih_slave_destroy, & mptsas_target_alloc, & mptsas_target_destroy,
    0, 0, & mptscsih_change_queue_depth, 0, & mptscsih_bios_param, 0, & mptscsih_proc_info,
    0, 0, "mptsas", 0, 127, -1, 128U, (unsigned short)0, 8192U, 0UL, 7, (unsigned char)0,
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    0U, (struct device_attribute **)(& mptscsih_host_attrs), 0, {0, 0}, 0ULL};
static int mptsas_get_linkerrors(struct sas_phy *phy )
{
  MPT_ADAPTER *ioc ;
  MPT_ADAPTER *tmp ;
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasPhyPage1_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  tmp = phy_to_ioc(phy);
  ioc = tmp;
  tmp___0 = scsi_is_host_device((struct device const *)phy->dev.parent);
  if (tmp___0 == 0) {
    return (-22);
  } else {
  }
  hdr.PageVersion = 0U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 1U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 19U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = (u32 )phy->identify.phy_identifier;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    return (-6);
  } else {
  }
  tmp___1 = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                                 & dma_handle);
  buffer = (SasPhyPage1_t *)tmp___1;
  if ((unsigned long )buffer == (unsigned long )((SasPhyPage1_t *)0)) {
    return (-12);
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  mptsas_print_phy_pg1(ioc, buffer);
  phy->invalid_dword_count = buffer->InvalidDwordCount;
  phy->running_disparity_error_count = buffer->RunningDisparityErrorCount;
  phy->loss_of_dword_sync_count = buffer->LossDwordSynchCount;
  phy->phy_reset_problem_count = buffer->PhyResetProblemCount;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  return (error);
}
}
static int mptsas_mgmt_done(MPT_ADAPTER *ioc , MPT_FRAME_HDR *req , MPT_FRAME_HDR *reply )
{
  size_t __len ;
  int _min1 ;
  int _min2 ;
  void *__ret ;
  {
  ioc->sas_mgmt.status = (u8 )((unsigned int )ioc->sas_mgmt.status | 2U);
  if ((unsigned long )reply != (unsigned long )((MPT_FRAME_HDR *)0)) {
    ioc->sas_mgmt.status = (u8 )((unsigned int )ioc->sas_mgmt.status | 1U);
    _min1 = ioc->reply_sz;
    _min2 = (int )reply->u.reply.MsgLength * 4;
    __len = (size_t )(_min1 < _min2 ? _min1 : _min2);
    __ret = memcpy((void *)(& ioc->sas_mgmt.reply), (void const *)reply,
                             __len);
  } else {
  }
  if (((int )ioc->sas_mgmt.status & 4) != 0) {
    ioc->sas_mgmt.status = (unsigned int )ioc->sas_mgmt.status & 251U;
    complete(& ioc->sas_mgmt.done);
    return (1);
  } else {
  }
  return (0);
}
}
static int mptsas_phy_reset(struct sas_phy *phy , int hard_reset )
{
  MPT_ADAPTER *ioc ;
  MPT_ADAPTER *tmp ;
  SasIoUnitControlRequest_t *req ;
  SasIoUnitControlReply_t *reply ;
  MPT_FRAME_HDR *mf ;
  MPIHeader_t *hdr ;
  unsigned long timeleft ;
  int error ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = phy_to_ioc(phy);
  ioc = tmp;
  error = -512;
  tmp___0 = scsi_is_host_device((struct device const *)phy->dev.parent);
  if (tmp___0 == 0) {
    return (-22);
  } else {
  }
  if (((unsigned int )phy->identify.target_port_protocols & 2U) != 0U) {
    return (-6);
  } else {
  }
  tmp___1 = ldv_mutex_lock_interruptible_28(& ioc->sas_mgmt.mutex);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  mf = mpt_get_msg_frame((int )mptsasMgmtCtx, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    error = -12;
    goto out_unlock;
  } else {
  }
  hdr = (MPIHeader_t *)mf;
  req = (SasIoUnitControlRequest_t *)mf;
  memset((void *)req, 0, 32UL);
  req->Function = 27U;
  req->MsgContext = hdr->MsgContext;
  req->Operation = hard_reset != 0 ? 7U : 6U;
  req->PhyNum = phy->identify.phy_identifier;
  ioc->sas_mgmt.status = 4U;
  mpt_put_msg_frame((int )mptsasMgmtCtx, ioc, mf);
  timeleft = wait_for_completion_timeout(& ioc->sas_mgmt.done, 2500UL);
  if (((int )ioc->sas_mgmt.status & 2) == 0) {
    error = -62;
    mpt_free_msg_frame(ioc, mf);
    if (((int )ioc->sas_mgmt.status & 8) != 0) {
      goto out_unlock;
    } else {
    }
    if (timeleft == 0UL) {
      mpt_Soft_Hard_ResetHandler(ioc, 1);
    } else {
    }
    goto out_unlock;
  } else {
  }
  if (((int )ioc->sas_mgmt.status & 1) == 0) {
    error = -6;
    goto out_unlock;
  } else {
  }
  reply = (SasIoUnitControlReply_t *)(& ioc->sas_mgmt.reply);
  if ((unsigned int )reply->IOCStatus != 0U) {
    printk("\016mptsas: %s: %s: IOCStatus=0x%X IOCLogInfo=0x%X\n", (char *)(& ioc->name),
           "mptsas_phy_reset", (int )reply->IOCStatus, reply->IOCLogInfo);
    error = -6;
    goto out_unlock;
  } else {
  }
  error = 0;
  out_unlock:
  ioc->sas_mgmt.status = 0U;
  ldv_mutex_unlock_29(& ioc->sas_mgmt.mutex);
  out: ;
  return (error);
}
}
static int mptsas_get_enclosure_identifier(struct sas_rphy *rphy , u64 *identifier )
{
  MPT_ADAPTER *ioc ;
  MPT_ADAPTER *tmp ;
  int i ;
  int error ;
  struct mptsas_portinfo *p ;
  struct mptsas_enclosure enclosure_info ;
  u64 enclosure_handle ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = rphy_to_ioc(rphy);
  ioc = tmp;
  ldv_mutex_lock_30(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr;
  goto ldv_38625;
  ldv_38624:
  i = 0;
  goto ldv_38622;
  ldv_38621: ;
  if ((p->phy_info + (unsigned long )i)->attached.sas_address == rphy->identify.sas_address) {
    enclosure_handle = (u64 )(p->phy_info + (unsigned long )i)->attached.handle_enclosure;
    goto found_info;
  } else {
  }
  i = i + 1;
  ldv_38622: ;
  if ((int )p->num_phys > i) {
    goto ldv_38621;
  } else {
  }
  __mptr___0 = (struct list_head const *)p->list.next;
  p = (struct mptsas_portinfo *)__mptr___0;
  ldv_38625: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38624;
  } else {
  }
  ldv_mutex_unlock_31(& ioc->sas_topology_mutex);
  return (-6);
  found_info:
  ldv_mutex_unlock_32(& ioc->sas_topology_mutex);
  memset((void *)(& enclosure_info), 0, 24UL);
  error = mptsas_sas_enclosure_pg0(ioc, & enclosure_info, 268435456U, (u32 )enclosure_handle);
  if (error == 0) {
    *identifier = enclosure_info.enclosure_logical_id;
  } else {
  }
  return (error);
}
}
static int mptsas_get_bay_identifier(struct sas_rphy *rphy )
{
  MPT_ADAPTER *ioc ;
  MPT_ADAPTER *tmp ;
  struct mptsas_portinfo *p ;
  int i ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = rphy_to_ioc(rphy);
  ioc = tmp;
  ldv_mutex_lock_33(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr;
  goto ldv_38643;
  ldv_38642:
  i = 0;
  goto ldv_38640;
  ldv_38639: ;
  if ((p->phy_info + (unsigned long )i)->attached.sas_address == rphy->identify.sas_address) {
    rc = (int )(p->phy_info + (unsigned long )i)->attached.slot;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_38640: ;
  if ((int )p->num_phys > i) {
    goto ldv_38639;
  } else {
  }
  __mptr___0 = (struct list_head const *)p->list.next;
  p = (struct mptsas_portinfo *)__mptr___0;
  ldv_38643: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_38642;
  } else {
  }
  rc = -6;
  out:
  ldv_mutex_unlock_34(& ioc->sas_topology_mutex);
  return (rc);
}
}
static int mptsas_smp_handler(struct Scsi_Host *shost , struct sas_rphy *rphy , struct request *req )
{
  MPT_ADAPTER *ioc ;
  MPT_FRAME_HDR *mf ;
  SmpPassthroughRequest_t *smpreq ;
  struct request *rsp ;
  int ret ;
  int flagsLength ;
  unsigned long timeleft ;
  char *psge ;
  dma_addr_t dma_addr_in ;
  dma_addr_t dma_addr_out ;
  u64 sas_address ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct mptsas_portinfo *port_info ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  void *tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  void *tmp___7 ;
  SmpPassthroughReply_t *smprep ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  {
  ioc = ((MPT_SCSI_HOST *)(& shost->hostdata))->ioc;
  rsp = req->next_rq;
  dma_addr_in = 0ULL;
  dma_addr_out = 0ULL;
  sas_address = 0ULL;
  if ((unsigned long )rsp == (unsigned long )((struct request *)0)) {
    printk("\vmptsas: %s: ERROR - %s: the smp response space is missing\n", (char *)(& ioc->name),
           "mptsas_smp_handler");
    return (-22);
  } else {
  }
  if ((unsigned int )(req->bio)->bi_vcnt > 1U || (unsigned int )(rsp->bio)->bi_vcnt > 1U) {
    tmp = blk_rq_bytes((struct request const *)rsp);
    tmp___0 = blk_rq_bytes((struct request const *)req);
    printk("\vmptsas: %s: ERROR - %s: multiple segments req %u %u, rsp %u %u\n", (char *)(& ioc->name),
           "mptsas_smp_handler", (int )(req->bio)->bi_vcnt, tmp___0, (int )(rsp->bio)->bi_vcnt,
           tmp);
    return (-22);
  } else {
  }
  ret = ldv_mutex_lock_interruptible_35(& ioc->sas_mgmt.mutex);
  if (ret != 0) {
    goto out;
  } else {
  }
  mf = mpt_get_msg_frame((int )mptsasMgmtCtx, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    ret = -12;
    goto out_unlock;
  } else {
  }
  smpreq = (SmpPassthroughRequest_t *)mf;
  memset((void *)smpreq, 0, 44UL);
  tmp___1 = blk_rq_bytes((struct request const *)req);
  smpreq->RequestDataLength = (unsigned int )((unsigned short )tmp___1) - 4U;
  smpreq->Function = 26U;
  if ((unsigned long )rphy != (unsigned long )((struct sas_rphy *)0)) {
    sas_address = rphy->identify.sas_address;
  } else {
    ldv_mutex_lock_36(& ioc->sas_topology_mutex);
    port_info = ioc->hba_port_info;
    if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0) && (unsigned long )port_info->phy_info != (unsigned long )((struct mptsas_phyinfo *)0)) {
      sas_address = ((port_info->phy_info)->phy)->identify.sas_address;
    } else {
    }
    ldv_mutex_unlock_37(& ioc->sas_topology_mutex);
  }
  *((u64 *)(& smpreq->SASAddress)) = sas_address;
  psge = (char *)mf + 8U;
  flagsLength = 1409286144;
  tmp___2 = blk_rq_bytes((struct request const *)req);
  flagsLength = (int )((tmp___2 - 4U) | (unsigned int )flagsLength);
  tmp___3 = blk_rq_bytes((struct request const *)req);
  tmp___4 = bio_data(req->bio);
  dma_addr_out = pci_map_single(ioc->pcidev, tmp___4, (size_t )tmp___3, 0);
  if (dma_addr_out == 0ULL) {
    goto put_mf;
  } else {
  }
  (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, dma_addr_out);
  psge = psge + (unsigned long )ioc->SGE_size;
  flagsLength = 80;
  flagsLength = flagsLength << 24;
  tmp___5 = blk_rq_bytes((struct request const *)rsp);
  flagsLength = (int )((tmp___5 + 4U) | (unsigned int )flagsLength);
  tmp___6 = blk_rq_bytes((struct request const *)rsp);
  tmp___7 = bio_data(rsp->bio);
  dma_addr_in = pci_map_single(ioc->pcidev, tmp___7, (size_t )tmp___6, 0);
  if (dma_addr_in == 0ULL) {
    goto unmap;
  } else {
  }
  (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, dma_addr_in);
  ioc->sas_mgmt.status = 4U;
  mpt_put_msg_frame((int )mptsasMgmtCtx, ioc, mf);
  timeleft = wait_for_completion_timeout(& ioc->sas_mgmt.done, 2500UL);
  if (((int )ioc->sas_mgmt.status & 2) == 0) {
    ret = -62;
    mpt_free_msg_frame(ioc, mf);
    mf = 0;
    if (((int )ioc->sas_mgmt.status & 8) != 0) {
      goto unmap;
    } else {
    }
    if (timeleft == 0UL) {
      mpt_Soft_Hard_ResetHandler(ioc, 1);
    } else {
    }
    goto unmap;
  } else {
  }
  mf = 0;
  if ((int )ioc->sas_mgmt.status & 1) {
    smprep = (SmpPassthroughReply_t *)(& ioc->sas_mgmt.reply);
    __len = 28UL;
    if (__len > 63UL) {
      __ret = memcpy(req->sense, (void const *)smprep, __len);
    } else {
      __ret = memcpy(req->sense, (void const *)smprep, __len);
    }
    req->sense_len = 28U;
    req->resid_len = 0U;
    rsp->resid_len = rsp->resid_len - (unsigned int )smprep->ResponseDataLength;
  } else {
    printk("\vmptsas: %s: ERROR - %s: smp passthru reply failed to be returned\n",
           (char *)(& ioc->name), "mptsas_smp_handler");
    ret = -6;
  }
  unmap: ;
  if (dma_addr_out != 0ULL) {
    tmp___8 = blk_rq_bytes((struct request const *)req);
    pci_unmap_single(ioc->pcidev, dma_addr_out, (size_t )tmp___8, 0);
  } else {
  }
  if (dma_addr_in != 0ULL) {
    tmp___9 = blk_rq_bytes((struct request const *)rsp);
    pci_unmap_single(ioc->pcidev, dma_addr_in, (size_t )tmp___9, 0);
  } else {
  }
  put_mf: ;
  if ((unsigned long )mf != (unsigned long )((MPT_FRAME_HDR *)0)) {
    mpt_free_msg_frame(ioc, mf);
  } else {
  }
  out_unlock:
  ioc->sas_mgmt.status = 0U;
  ldv_mutex_unlock_38(& ioc->sas_mgmt.mutex);
  out: ;
  return (ret);
}
}
static struct sas_function_template mptsas_transport_functions =
     {& mptsas_get_linkerrors, & mptsas_get_enclosure_identifier, & mptsas_get_bay_identifier,
    & mptsas_phy_reset, 0, 0, 0, 0, & mptsas_smp_handler};
static struct scsi_transport_template *mptsas_transport_template ;
static int mptsas_sas_io_unit_pg0(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasIOUnitPage0_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  hdr.PageVersion = 4U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 0U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 16U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = 0U;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasIOUnitPage0_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasIOUnitPage0_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  port_info->num_phys = (u16 )buffer->NumPhys;
  tmp___0 = kcalloc((size_t )port_info->num_phys, 112UL, 208U);
  port_info->phy_info = (struct mptsas_phyinfo *)tmp___0;
  if ((unsigned long )port_info->phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    error = -12;
    goto out_free_consistent;
  } else {
  }
  ioc->nvdata_version_persistent = buffer->NvdataVersionPersistent;
  ioc->nvdata_version_default = buffer->NvdataVersionDefault;
  i = 0;
  goto ldv_38686;
  ldv_38685:
  mptsas_print_phy_data(ioc, (MPI_SAS_IO_UNIT0_PHY_DATA *)(& buffer->PhyData) + (unsigned long )i);
  (port_info->phy_info + (unsigned long )i)->phy_id = (u8 )i;
  (port_info->phy_info + (unsigned long )i)->port_id = buffer->PhyData[i].Port;
  (port_info->phy_info + (unsigned long )i)->negotiated_link_rate = buffer->PhyData[i].NegotiatedLinkRate;
  (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
  (port_info->phy_info + (unsigned long )i)->handle = buffer->PhyData[i].ControllerDevHandle;
  i = i + 1;
  ldv_38686: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38685;
  } else {
  }
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_sas_io_unit_pg1(MPT_ADAPTER *ioc )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasIOUnitPage1_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  u8 device_missing_delay ;
  void *tmp ;
  {
  memset((void *)(& hdr), 0, 8UL);
  memset((void *)(& cfg), 0, 32UL);
  cfg.cfghdr.ehdr = & hdr;
  cfg.action = 0U;
  cfg.timeout = 30U;
  (cfg.cfghdr.ehdr)->PageType = 15U;
  (cfg.cfghdr.ehdr)->ExtPageType = 16U;
  (cfg.cfghdr.ehdr)->PageVersion = 7U;
  (cfg.cfghdr.ehdr)->PageNumber = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasIOUnitPage1_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasIOUnitPage1_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  ioc->io_missing_delay = buffer->IODeviceMissingDelay;
  device_missing_delay = buffer->ReportDeviceMissingDelay;
  ioc->device_missing_delay = (int )((signed char )device_missing_delay) < 0 ? ((unsigned int )((u16 )device_missing_delay) & 127U) * 16U : (unsigned int )((u16 )device_missing_delay) & 127U;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_sas_phy_pg0(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ,
                              u32 form , u32 form_specific )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasPhyPage0_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  void *tmp ;
  {
  hdr.PageVersion = 1U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 0U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 19U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = form + form_specific;
  cfg.action = 0U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasPhyPage0_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasPhyPage0_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  mptsas_print_phy_pg0(ioc, buffer);
  phy_info->hw_link_rate = buffer->HwLinkRate;
  phy_info->programmed_link_rate = buffer->ProgrammedLinkRate;
  phy_info->identify.handle = buffer->OwnerDevHandle;
  phy_info->attached.handle = buffer->AttachedDevHandle;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_sas_device_pg0(MPT_ADAPTER *ioc , struct mptsas_devinfo *device_info ,
                                 u32 form , u32 form_specific )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasDevicePage0_t *buffer ;
  dma_addr_t dma_handle ;
  __le64 sas_address ;
  int error ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  error = 0;
  hdr.PageVersion = 5U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 0U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 18U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.pageAddr = form + form_specific;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  memset((void *)device_info, 0, 40UL);
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasDevicePage0_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasDevicePage0_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error == 34) {
    error = -19;
    goto out_free_consistent;
  } else {
  }
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  mptsas_print_device_pg0(ioc, buffer);
  memset((void *)device_info, 0, 40UL);
  device_info->handle = buffer->DevHandle;
  device_info->handle_parent = buffer->ParentDevHandle;
  device_info->handle_enclosure = buffer->EnclosureHandle;
  device_info->slot = buffer->Slot;
  device_info->phy_id = buffer->PhyNum;
  device_info->port_id = buffer->PhysicalPort;
  device_info->id = buffer->TargetID;
  device_info->phys_disk_num = 4294967295U;
  device_info->channel = buffer->Bus;
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& buffer->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& buffer->SASAddress),
                             __len);
  }
  device_info->sas_address = sas_address;
  device_info->device_info = buffer->DeviceInfo;
  device_info->flags = buffer->Flags;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_sas_expander_pg0(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info ,
                                   u32 form , u32 form_specific )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasExpanderPage0_t *buffer ;
  dma_addr_t dma_handle ;
  int i ;
  int error ;
  __le64 sas_address ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  memset((void *)port_info, 0, 32UL);
  hdr.PageVersion = 3U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 0U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 17U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = form + form_specific;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  memset((void *)port_info, 0, 32UL);
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasExpanderPage0_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasExpanderPage0_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error == 34) {
    error = -19;
    goto out_free_consistent;
  } else {
  }
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  port_info->num_phys = (unsigned int )buffer->NumPhys != 0U ? (u16 )buffer->NumPhys : 1U;
  tmp___0 = kcalloc((size_t )port_info->num_phys, 112UL, 208U);
  port_info->phy_info = (struct mptsas_phyinfo *)tmp___0;
  if ((unsigned long )port_info->phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    error = -12;
    goto out_free_consistent;
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& buffer->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& buffer->SASAddress),
                             __len);
  }
  i = 0;
  goto ldv_38748;
  ldv_38747:
  (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
  (port_info->phy_info + (unsigned long )i)->handle = buffer->DevHandle;
  (port_info->phy_info + (unsigned long )i)->identify.sas_address = sas_address;
  (port_info->phy_info + (unsigned long )i)->identify.handle_parent = buffer->ParentDevHandle;
  i = i + 1;
  ldv_38748: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38747;
  } else {
  }
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_sas_expander_pg1(MPT_ADAPTER *ioc , struct mptsas_phyinfo *phy_info ,
                                   u32 form , u32 form_specific )
{
  ConfigExtendedPageHeader_t hdr ;
  CONFIGPARMS cfg ;
  SasExpanderPage1_t *buffer ;
  dma_addr_t dma_handle ;
  int error ;
  void *tmp ;
  {
  error = 0;
  hdr.PageVersion = 1U;
  hdr.ExtPageLength = 0U;
  hdr.PageNumber = 1U;
  hdr.Reserved1 = 0U;
  hdr.Reserved2 = 0U;
  hdr.PageType = 15U;
  hdr.ExtPageType = 17U;
  cfg.cfghdr.ehdr = & hdr;
  cfg.physAddr = 0xffffffffffffffffULL;
  cfg.pageAddr = form + form_specific;
  cfg.action = 0U;
  cfg.dir = 0U;
  cfg.timeout = 30U;
  error = mpt_config(ioc, & cfg);
  if (error != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.ExtPageLength == 0U) {
    error = -6;
    goto out;
  } else {
  }
  tmp = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4),
                             & dma_handle);
  buffer = (SasExpanderPage1_t *)tmp;
  if ((unsigned long )buffer == (unsigned long )((SasExpanderPage1_t *)0)) {
    error = -12;
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  error = mpt_config(ioc, & cfg);
  if (error == 34) {
    error = -19;
    goto out_free_consistent;
  } else {
  }
  if (error != 0) {
    goto out_free_consistent;
  } else {
  }
  mptsas_print_expander_pg1(ioc, buffer);
  phy_info->phy_id = buffer->PhyIdentifier;
  phy_info->port_id = buffer->PhysicalPort;
  phy_info->negotiated_link_rate = buffer->NegotiatedLinkRate;
  phy_info->programmed_link_rate = buffer->ProgrammedLinkRate;
  phy_info->hw_link_rate = buffer->HwLinkRate;
  phy_info->identify.handle = buffer->OwnerDevHandle;
  phy_info->attached.handle = buffer->AttachedDevHandle;
  out_free_consistent:
  pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.ExtPageLength * 4), (void *)buffer,
                      dma_handle);
  out: ;
  return (error);
}
}
static int mptsas_exp_repmanufacture_info(MPT_ADAPTER *ioc , u64 sas_address , struct sas_expander_device *edev )
{
  MPT_FRAME_HDR *mf ;
  SmpPassthroughRequest_t *smpreq ;
  SmpPassthroughReply_t *smprep ;
  struct rep_manu_reply *manufacture_reply ;
  struct rep_manu_request *manufacture_request ;
  int ret ;
  int flagsLength ;
  unsigned long timeleft ;
  char *psge ;
  unsigned long flags ;
  void *data_out ;
  dma_addr_t data_out_dma ;
  u32 sz ;
  raw_spinlock_t *tmp ;
  u8 *tmp___0 ;
  {
  data_out = 0;
  data_out_dma = 0ULL;
  tmp = spinlock_check(& ioc->taskmgmt_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
    spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
    printk("\016mptsas: %s: %s: host reset in progress!\n", "mptsas_exp_repmanufacture_info",
           (char *)(& ioc->name));
    return (-14);
  } else {
  }
  spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
  ret = ldv_mutex_lock_interruptible_39(& ioc->sas_mgmt.mutex);
  if (ret != 0) {
    goto out;
  } else {
  }
  mf = mpt_get_msg_frame((int )mptsasMgmtCtx, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    ret = -12;
    goto out_unlock;
  } else {
  }
  smpreq = (SmpPassthroughRequest_t *)mf;
  memset((void *)smpreq, 0, 44UL);
  sz = 64U;
  data_out = pci_alloc_consistent(ioc->pcidev, (size_t )sz, & data_out_dma);
  if ((unsigned long )data_out == (unsigned long )((void *)0)) {
    printk("\vMemory allocation failure at %s:%d/%s()!\n", (char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/fusion/mptsas.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptsas.c.prepared",
           2930, "mptsas_exp_repmanufacture_info");
    ret = -12;
    goto put_mf;
  } else {
  }
  manufacture_request = (struct rep_manu_request *)data_out;
  manufacture_request->smp_frame_type = 64U;
  manufacture_request->function = 1U;
  manufacture_request->reserved = 0U;
  manufacture_request->request_length = 0U;
  smpreq->Function = 26U;
  smpreq->PhysicalPort = 255U;
  *((u64 *)(& smpreq->SASAddress)) = sas_address;
  smpreq->RequestDataLength = 4U;
  psge = (char *)mf + 8U;
  flagsLength = 84;
  flagsLength = flagsLength << 24;
  flagsLength = flagsLength | 4;
  (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, data_out_dma);
  psge = psge + (unsigned long )ioc->SGE_size;
  flagsLength = 80;
  flagsLength = flagsLength << 24;
  flagsLength = flagsLength | 60;
  (*(ioc->add_sge))((void *)psge, (u32 )flagsLength, data_out_dma + 4ULL);
  ioc->sas_mgmt.status = 4U;
  mpt_put_msg_frame((int )mptsasMgmtCtx, ioc, mf);
  timeleft = wait_for_completion_timeout(& ioc->sas_mgmt.done, 2500UL);
  if (((int )ioc->sas_mgmt.status & 2) == 0) {
    ret = -62;
    mpt_free_msg_frame(ioc, mf);
    mf = 0;
    if (((int )ioc->sas_mgmt.status & 8) != 0) {
      goto out_free;
    } else {
    }
    if (timeleft == 0UL) {
      mpt_Soft_Hard_ResetHandler(ioc, 1);
    } else {
    }
    goto out_free;
  } else {
  }
  mf = 0;
  if ((int )ioc->sas_mgmt.status & 1) {
    smprep = (SmpPassthroughReply_t *)(& ioc->sas_mgmt.reply);
    if ((unsigned int )smprep->ResponseDataLength != 60U) {
      goto out_free;
    } else {
    }
    manufacture_reply = (struct rep_manu_reply *)data_out + 4U;
    strncpy((char *)(& edev->vendor_id), (char const *)(& manufacture_reply->vendor_id),
            8UL);
    strncpy((char *)(& edev->product_id), (char const *)(& manufacture_reply->product_id),
            16UL);
    strncpy((char *)(& edev->product_rev), (char const *)(& manufacture_reply->product_rev),
            4UL);
    edev->level = (int )manufacture_reply->sas_format;
    if ((unsigned int )*((unsigned char *)manufacture_reply + 8UL) != 0U) {
      strncpy((char *)(& edev->component_vendor_id), (char const *)(& manufacture_reply->component_vendor_id),
              8UL);
      tmp___0 = (u8 *)(& manufacture_reply->component_id);
      edev->component_id = (u16 )((int )((short )((int )*tmp___0 << 8)) | (int )((short )*(tmp___0 + 1UL)));
      edev->component_revision_id = manufacture_reply->component_revision_id;
    } else {
    }
  } else {
    printk("\vmptsas: %s: ERROR - %s: smp passthru reply failed to be returned\n",
           (char *)(& ioc->name), "mptsas_exp_repmanufacture_info");
    ret = -6;
  }
  out_free: ;
  if (data_out_dma != 0ULL) {
    pci_free_consistent(ioc->pcidev, (size_t )sz, data_out, data_out_dma);
  } else {
  }
  put_mf: ;
  if ((unsigned long )mf != (unsigned long )((MPT_FRAME_HDR *)0)) {
    mpt_free_msg_frame(ioc, mf);
  } else {
  }
  out_unlock:
  ioc->sas_mgmt.status = 0U;
  ldv_mutex_unlock_40(& ioc->sas_mgmt.mutex);
  out: ;
  return (ret);
}
}
static void mptsas_parse_device_info(struct sas_identify *identify , struct mptsas_devinfo *device_info )
{
  u16 protocols ;
  {
  identify->sas_address = device_info->sas_address;
  identify->phy_identifier = device_info->phy_id;
  protocols = (unsigned int )((u16 )device_info->device_info) & 120U;
  identify->initiator_port_protocols = 0;
  if (((int )protocols & 64) != 0) {
    identify->initiator_port_protocols = (enum sas_protocol )((unsigned int )identify->initiator_port_protocols | 8U);
  } else {
  }
  if (((int )protocols & 32) != 0) {
    identify->initiator_port_protocols = (enum sas_protocol )((unsigned int )identify->initiator_port_protocols | 4U);
  } else {
  }
  if (((int )protocols & 16) != 0) {
    identify->initiator_port_protocols = (enum sas_protocol )((unsigned int )identify->initiator_port_protocols | 2U);
  } else {
  }
  if (((int )protocols & 8) != 0) {
    identify->initiator_port_protocols = (enum sas_protocol )((unsigned int )identify->initiator_port_protocols | 1U);
  } else {
  }
  protocols = (unsigned int )((u16 )device_info->device_info) & 1920U;
  identify->target_port_protocols = 0;
  if (((int )protocols & 1024) != 0) {
    identify->target_port_protocols = (enum sas_protocol )((unsigned int )identify->target_port_protocols | 8U);
  } else {
  }
  if (((int )protocols & 512) != 0) {
    identify->target_port_protocols = (enum sas_protocol )((unsigned int )identify->target_port_protocols | 4U);
  } else {
  }
  if (((int )protocols & 256) != 0) {
    identify->target_port_protocols = (enum sas_protocol )((unsigned int )identify->target_port_protocols | 2U);
  } else {
  }
  if (((int )protocols & 128) != 0) {
    identify->target_port_protocols = (enum sas_protocol )((unsigned int )identify->target_port_protocols | 1U);
  } else {
  }
  switch (device_info->device_info & 7U) {
  case 0U:
  identify->device_type = 0;
  goto ldv_38819;
  case 1U:
  identify->device_type = 1;
  goto ldv_38819;
  case 2U:
  identify->device_type = 2;
  goto ldv_38819;
  case 3U:
  identify->device_type = 3;
  goto ldv_38819;
  }
  ldv_38819: ;
  return;
}
}
static int mptsas_probe_one_phy(struct device *dev , struct mptsas_phyinfo *phy_info ,
                                int index , int local )
{
  MPT_ADAPTER *ioc ;
  struct sas_phy *phy ;
  struct sas_port *port ;
  int error ;
  VirtTarget *vtarget ;
  struct sas_rphy *rphy ;
  struct device *parent ;
  struct sas_identify identify ;
  int tmp ;
  struct mptsas_portinfo *port_info ;
  int i ;
  struct sas_rphy *parent_rphy ;
  struct device const *__mptr ;
  int tmp___0 ;
  int tmp___1 ;
  struct sas_rphy const *__mptr___0 ;
  struct sas_rphy *tmp___2 ;
  {
  error = 0;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    error = -19;
    goto out;
  } else {
  }
  if ((unsigned long )phy_info->phy == (unsigned long )((struct sas_phy *)0)) {
    phy = sas_phy_alloc(dev, index);
    if ((unsigned long )phy == (unsigned long )((struct sas_phy *)0)) {
      error = -12;
      goto out;
    } else {
    }
  } else {
    phy = phy_info->phy;
  }
  mptsas_parse_device_info(& phy->identify, & phy_info->identify);
  switch ((int )phy_info->negotiated_link_rate) {
  case 1:
  phy->negotiated_linkrate = 1;
  goto ldv_38836;
  case 2:
  phy->negotiated_linkrate = 16;
  goto ldv_38836;
  case 8:
  phy->negotiated_linkrate = 8;
  goto ldv_38836;
  case 9:
  phy->negotiated_linkrate = 9;
  goto ldv_38836;
  case 10:
  phy->negotiated_linkrate = 10;
  goto ldv_38836;
  case 3: ;
  case 0: ;
  default:
  phy->negotiated_linkrate = 0;
  goto ldv_38836;
  }
  ldv_38836: ;
  switch ((int )phy_info->hw_link_rate & 240) {
  case 128:
  phy->maximum_linkrate_hw = 8;
  goto ldv_38845;
  case 144:
  phy->maximum_linkrate_hw = 9;
  goto ldv_38845;
  default: ;
  goto ldv_38845;
  }
  ldv_38845: ;
  switch ((int )phy_info->programmed_link_rate & 240) {
  case 128:
  phy->maximum_linkrate = 8;
  goto ldv_38849;
  case 144:
  phy->maximum_linkrate = 9;
  goto ldv_38849;
  default: ;
  goto ldv_38849;
  }
  ldv_38849: ;
  switch ((int )phy_info->hw_link_rate & 15) {
  case 8:
  phy->minimum_linkrate_hw = 8;
  goto ldv_38853;
  case 9:
  phy->minimum_linkrate_hw = 9;
  goto ldv_38853;
  default: ;
  goto ldv_38853;
  }
  ldv_38853: ;
  switch ((int )phy_info->programmed_link_rate & 15) {
  case 8:
  phy->minimum_linkrate = 8;
  goto ldv_38857;
  case 9:
  phy->minimum_linkrate = 9;
  goto ldv_38857;
  default: ;
  goto ldv_38857;
  }
  ldv_38857: ;
  if ((unsigned long )phy_info->phy == (unsigned long )((struct sas_phy *)0)) {
    error = sas_phy_add(phy);
    if (error != 0) {
      sas_phy_free(phy);
      goto out;
    } else {
    }
    phy_info->phy = phy;
  } else {
  }
  if ((unsigned int )phy_info->attached.handle == 0U || (unsigned long )phy_info->port_details == (unsigned long )((struct mptsas_portinfo_details *)0)) {
    goto out;
  } else {
  }
  port = mptsas_get_port(phy_info);
  ioc = phy_to_ioc(phy_info->phy);
  if ((unsigned int )phy_info->sas_port_add_phy != 0U) {
    if ((unsigned long )port == (unsigned long )((struct sas_port *)0)) {
      port = sas_port_alloc_num(dev);
      if ((unsigned long )port == (unsigned long )((struct sas_port *)0)) {
        error = -12;
        goto out;
      } else {
      }
      error = sas_port_add(port);
      if (error != 0) {
        if ((ioc->debug_level & 128) != 0) {
          printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
                 "mptsas_probe_one_phy", 3226);
        } else {
        }
        goto out;
      } else {
      }
      mptsas_set_port(ioc, phy_info, port);
      if ((ioc->debug_level & 8) != 0) {
        dev_printk("\017", (struct device const *)(& port->dev), "mptsas: %s: add port %d, sas_addr (0x%llx)\n",
                   (char *)(& ioc->name), port->port_identifier, phy_info->attached.sas_address);
      } else {
      }
    } else {
    }
    if ((ioc->debug_level & 2097152) != 0) {
      printk("\017mptsas: %s: sas_port_add_phy: phy_id=%d\n", (char *)(& ioc->name),
             (int )phy_info->phy_id);
    } else {
    }
    sas_port_add_phy(port, phy_info->phy);
    phy_info->sas_port_add_phy = 0U;
    if ((ioc->debug_level & 8) != 0) {
      dev_printk("\017", (struct device const *)(& (phy_info->phy)->dev), "mptsas: %s: add phy %d, phy-obj (0x%p)\n",
                 (char *)(& ioc->name), (int )phy_info->phy_id, phy_info->phy);
    } else {
    }
  } else {
  }
  tmp___2 = mptsas_get_rphy(phy_info);
  if (((unsigned long )tmp___2 == (unsigned long )((struct sas_rphy *)0) && (unsigned long )port != (unsigned long )((struct sas_port *)0)) && (unsigned long )port->rphy == (unsigned long )((struct sas_rphy *)0)) {
    parent = (dev->parent)->parent;
    tmp = mptsas_is_end_device(& phy_info->attached);
    if (tmp != 0 && (unsigned int )phy_info->attached.handle_parent != 0U) {
      goto out;
    } else {
    }
    mptsas_parse_device_info(& identify, & phy_info->attached);
    tmp___1 = scsi_is_host_device((struct device const *)parent);
    if (tmp___1 != 0) {
      port_info = ioc->hba_port_info;
      i = 0;
      goto ldv_38867;
      ldv_38866: ;
      if ((port_info->phy_info + (unsigned long )i)->identify.sas_address == identify.sas_address) {
        sas_port_mark_backlink(port);
        goto out;
      } else {
      }
      i = i + 1;
      ldv_38867: ;
      if ((int )port_info->num_phys > i) {
        goto ldv_38866;
      } else {
      }
    } else {
      tmp___0 = scsi_is_sas_rphy((struct device const *)parent);
      if (tmp___0 != 0) {
        __mptr = (struct device const *)parent;
        parent_rphy = (struct sas_rphy *)__mptr;
        if (identify.sas_address == parent_rphy->identify.sas_address) {
          sas_port_mark_backlink(port);
          goto out;
        } else {
        }
      } else {
      }
    }
    switch ((unsigned int )identify.device_type) {
    case 1U:
    rphy = sas_end_device_alloc(port);
    goto ldv_38873;
    case 2U: ;
    case 3U:
    rphy = sas_expander_alloc(port, identify.device_type);
    goto ldv_38873;
    default:
    rphy = 0;
    goto ldv_38873;
    }
    ldv_38873: ;
    if ((unsigned long )rphy == (unsigned long )((struct sas_rphy *)0)) {
      if ((ioc->debug_level & 128) != 0) {
        printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
               "mptsas_probe_one_phy", 3300);
      } else {
      }
      goto out;
    } else {
    }
    rphy->identify = identify;
    error = sas_rphy_add(rphy);
    if (error != 0) {
      if ((ioc->debug_level & 128) != 0) {
        printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
               "mptsas_probe_one_phy", 3309);
      } else {
      }
      sas_rphy_free(rphy);
      goto out;
    } else {
    }
    mptsas_set_rphy(ioc, phy_info, rphy);
    if ((unsigned int )identify.device_type == 2U || (unsigned int )identify.device_type == 3U) {
      __mptr___0 = (struct sas_rphy const *)rphy;
      mptsas_exp_repmanufacture_info(ioc, identify.sas_address, (struct sas_expander_device *)__mptr___0 + 0xffffffffffffffc8UL);
    } else {
    }
  } else {
  }
  vtarget = mptsas_find_vtarget(ioc, (int )phy_info->attached.channel, (int )phy_info->attached.id);
  if ((unsigned long )vtarget != (unsigned long )((VirtTarget *)0) && (unsigned int )vtarget->inDMD != 0U) {
    printk("\016Device returned, unsetting inDMD\n");
    vtarget->inDMD = 0U;
  } else {
  }
  out: ;
  return (error);
}
}
static int mptsas_probe_hba_phys(MPT_ADAPTER *ioc )
{
  struct mptsas_portinfo *port_info ;
  struct mptsas_portinfo *hba ;
  int error ;
  int i ;
  void *tmp ;
  u8 tmp___0 ;
  {
  error = -12;
  tmp = kzalloc(32UL, 208U);
  hba = (struct mptsas_portinfo *)tmp;
  if ((unsigned long )hba == (unsigned long )((struct mptsas_portinfo *)0)) {
    goto out;
  } else {
  }
  error = mptsas_sas_io_unit_pg0(ioc, hba);
  if (error != 0) {
    goto out_free_port_info;
  } else {
  }
  mptsas_sas_io_unit_pg1(ioc);
  ldv_mutex_lock_41(& ioc->sas_topology_mutex);
  port_info = ioc->hba_port_info;
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    port_info = hba;
    ioc->hba_port_info = port_info;
    ioc->hba_port_num_phy = port_info->num_phys;
    list_add_tail(& port_info->list, & ioc->sas_topology);
  } else {
    i = 0;
    goto ldv_38889;
    ldv_38888:
    (port_info->phy_info + (unsigned long )i)->negotiated_link_rate = (hba->phy_info + (unsigned long )i)->negotiated_link_rate;
    (port_info->phy_info + (unsigned long )i)->handle = (hba->phy_info + (unsigned long )i)->handle;
    (port_info->phy_info + (unsigned long )i)->port_id = (hba->phy_info + (unsigned long )i)->port_id;
    i = i + 1;
    ldv_38889: ;
    if ((int )hba->num_phys > i) {
      goto ldv_38888;
    } else {
    }
    kfree((void const *)hba->phy_info);
    kfree((void const *)hba);
    hba = 0;
  }
  ldv_mutex_unlock_42(& ioc->sas_topology_mutex);
  i = 0;
  goto ldv_38892;
  ldv_38891:
  mptsas_sas_phy_pg0(ioc, port_info->phy_info + (unsigned long )i, 0U, (u32 )i);
  (port_info->phy_info + (unsigned long )i)->identify.handle = (port_info->phy_info + (unsigned long )i)->handle;
  mptsas_sas_device_pg0(ioc, & (port_info->phy_info + (unsigned long )i)->identify,
                        536870912U, (u32 )(port_info->phy_info + (unsigned long )i)->identify.handle);
  if (ioc->hba_port_sas_addr == 0ULL) {
    ioc->hba_port_sas_addr = (port_info->phy_info + (unsigned long )i)->identify.sas_address;
  } else {
  }
  tmp___0 = (u8 )i;
  (port_info->phy_info + (unsigned long )i)->phy_id = tmp___0;
  (port_info->phy_info + (unsigned long )i)->identify.phy_id = tmp___0;
  if ((unsigned int )(port_info->phy_info + (unsigned long )i)->attached.handle != 0U) {
    mptsas_sas_device_pg0(ioc, & (port_info->phy_info + (unsigned long )i)->attached,
                          536870912U, (u32 )(port_info->phy_info + (unsigned long )i)->attached.handle);
  } else {
  }
  i = i + 1;
  ldv_38892: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38891;
  } else {
  }
  mptsas_setup_wide_ports(ioc, port_info);
  i = 0;
  goto ldv_38895;
  ldv_38894:
  mptsas_probe_one_phy(& (ioc->sh)->shost_gendev, port_info->phy_info + (unsigned long )i,
                       ioc->sas_index, 1);
  i = i + 1;
  ioc->sas_index = ioc->sas_index + 1;
  ldv_38895: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38894;
  } else {
  }
  return (0);
  out_free_port_info:
  kfree((void const *)hba);
  out: ;
  return (error);
}
}
static void mptsas_expander_refresh(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info )
{
  struct mptsas_portinfo *parent ;
  struct device *parent_dev ;
  struct sas_rphy *rphy ;
  int i ;
  u64 sas_address ;
  u32 handle ;
  {
  handle = (u32 )(port_info->phy_info)->handle;
  sas_address = (port_info->phy_info)->identify.sas_address;
  i = 0;
  goto ldv_38908;
  ldv_38907:
  mptsas_sas_expander_pg1(ioc, port_info->phy_info + (unsigned long )i, 268435456U,
                          (u32 )(i << 16) + handle);
  mptsas_sas_device_pg0(ioc, & (port_info->phy_info + (unsigned long )i)->identify,
                        536870912U, (u32 )(port_info->phy_info + (unsigned long )i)->identify.handle);
  (port_info->phy_info + (unsigned long )i)->identify.phy_id = (port_info->phy_info + (unsigned long )i)->phy_id;
  if ((unsigned int )(port_info->phy_info + (unsigned long )i)->attached.handle != 0U) {
    mptsas_sas_device_pg0(ioc, & (port_info->phy_info + (unsigned long )i)->attached,
                          536870912U, (u32 )(port_info->phy_info + (unsigned long )i)->attached.handle);
    (port_info->phy_info + (unsigned long )i)->attached.phy_id = (port_info->phy_info + (unsigned long )i)->phy_id;
  } else {
  }
  i = i + 1;
  ldv_38908: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38907;
  } else {
  }
  ldv_mutex_lock_43(& ioc->sas_topology_mutex);
  parent = mptsas_find_portinfo_by_handle(ioc, (int )(port_info->phy_info)->identify.handle_parent);
  if ((unsigned long )parent == (unsigned long )((struct mptsas_portinfo *)0)) {
    ldv_mutex_unlock_44(& ioc->sas_topology_mutex);
    return;
  } else {
  }
  i = 0;
  parent_dev = 0;
  goto ldv_38911;
  ldv_38910: ;
  if ((parent->phy_info + (unsigned long )i)->attached.sas_address == sas_address) {
    rphy = mptsas_get_rphy(parent->phy_info + (unsigned long )i);
    parent_dev = & rphy->dev;
  } else {
  }
  i = i + 1;
  ldv_38911: ;
  if ((int )parent->num_phys > i && (unsigned long )parent_dev == (unsigned long )((struct device *)0)) {
    goto ldv_38910;
  } else {
  }
  ldv_mutex_unlock_45(& ioc->sas_topology_mutex);
  mptsas_setup_wide_ports(ioc, port_info);
  i = 0;
  goto ldv_38914;
  ldv_38913:
  mptsas_probe_one_phy(parent_dev, port_info->phy_info + (unsigned long )i, ioc->sas_index,
                       0);
  i = i + 1;
  ioc->sas_index = ioc->sas_index + 1;
  ldv_38914: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38913;
  } else {
  }
  return;
}
}
static void mptsas_expander_event_add(MPT_ADAPTER *ioc , MpiEventDataSasExpanderStatusChange_t *expander_data )
{
  struct mptsas_portinfo *port_info ;
  int i ;
  __le64 sas_address ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = kzalloc(32UL, 208U);
  port_info = (struct mptsas_portinfo *)tmp;
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/fusion/mptsas.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptsas.c.prepared"),
                         "i" (3478), "i" (12UL));
    ldv_38923: ;
    goto ldv_38923;
  } else {
  }
  port_info->num_phys = (unsigned int )expander_data->NumPhys != 0U ? (u16 )expander_data->NumPhys : 1U;
  tmp___0 = kcalloc((size_t )port_info->num_phys, 112UL, 208U);
  port_info->phy_info = (struct mptsas_phyinfo *)tmp___0;
  if ((unsigned long )port_info->phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/fusion/mptsas.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/message/fusion/mptsas.c.prepared"),
                         "i" (3484), "i" (12UL));
    ldv_38924: ;
    goto ldv_38924;
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& expander_data->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& expander_data->SASAddress),
                             __len);
  }
  i = 0;
  goto ldv_38929;
  ldv_38928:
  (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
  (port_info->phy_info + (unsigned long )i)->handle = expander_data->DevHandle;
  (port_info->phy_info + (unsigned long )i)->identify.sas_address = sas_address;
  (port_info->phy_info + (unsigned long )i)->identify.handle_parent = expander_data->ParentDevHandle;
  i = i + 1;
  ldv_38929: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38928;
  } else {
  }
  ldv_mutex_lock_46(& ioc->sas_topology_mutex);
  list_add_tail(& port_info->list, & ioc->sas_topology);
  ldv_mutex_unlock_47(& ioc->sas_topology_mutex);
  printk("\016mptsas: %s: add expander: num_phys %d, sas_addr (0x%llx)\n", (char *)(& ioc->name),
         (int )port_info->num_phys, sas_address);
  mptsas_expander_refresh(ioc, port_info);
  return;
}
}
static void mptsas_delete_expander_siblings(MPT_ADAPTER *ioc , struct mptsas_portinfo *parent ,
                                            struct mptsas_portinfo *expander )
{
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_portinfo *port_info ;
  struct sas_rphy *rphy ;
  int i ;
  {
  phy_info = expander->phy_info;
  i = 0;
  goto ldv_38942;
  ldv_38941:
  rphy = mptsas_get_rphy(phy_info);
  if ((unsigned long )rphy == (unsigned long )((struct sas_rphy *)0)) {
    goto ldv_38940;
  } else {
  }
  if ((unsigned int )rphy->identify.device_type == 1U) {
    mptsas_del_end_device(ioc, phy_info);
  } else {
  }
  ldv_38940:
  i = i + 1;
  phy_info = phy_info + 1;
  ldv_38942: ;
  if ((int )expander->num_phys > i) {
    goto ldv_38941;
  } else {
  }
  phy_info = expander->phy_info;
  i = 0;
  goto ldv_38946;
  ldv_38945:
  rphy = mptsas_get_rphy(phy_info);
  if ((unsigned long )rphy == (unsigned long )((struct sas_rphy *)0)) {
    goto ldv_38944;
  } else {
  }
  if ((unsigned int )rphy->identify.device_type == 2U || (unsigned int )rphy->identify.device_type == 3U) {
    port_info = mptsas_find_portinfo_by_sas_address(ioc, rphy->identify.sas_address);
    if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
      goto ldv_38944;
    } else {
    }
    if ((unsigned long )port_info == (unsigned long )parent) {
      goto ldv_38944;
    } else {
    }
    mptsas_expander_delete(ioc, port_info, 1);
  } else {
  }
  ldv_38944:
  i = i + 1;
  phy_info = phy_info + 1;
  ldv_38946: ;
  if ((int )expander->num_phys > i) {
    goto ldv_38945;
  } else {
  }
  return;
}
}
static void mptsas_expander_delete(MPT_ADAPTER *ioc , struct mptsas_portinfo *port_info ,
                                   u8 force )
{
  struct mptsas_portinfo *parent ;
  int i ;
  u64 expander_sas_address ;
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_portinfo buffer ;
  struct mptsas_portinfo_details *port_details ;
  struct sas_port *port ;
  {
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    return;
  } else {
  }
  mptsas_sas_expander_pg0(ioc, & buffer, 536870912U, (u32 )(port_info->phy_info)->identify.handle);
  if ((unsigned int )buffer.num_phys != 0U) {
    kfree((void const *)buffer.phy_info);
    if ((unsigned int )force == 0U) {
      return;
    } else {
    }
  } else {
  }
  port_details = 0;
  expander_sas_address = (port_info->phy_info)->identify.sas_address;
  parent = mptsas_find_portinfo_by_handle(ioc, (int )(port_info->phy_info)->identify.handle_parent);
  mptsas_delete_expander_siblings(ioc, parent, port_info);
  if ((unsigned long )parent == (unsigned long )((struct mptsas_portinfo *)0)) {
    goto out;
  } else {
  }
  phy_info = parent->phy_info;
  port = 0;
  i = 0;
  goto ldv_38963;
  ldv_38962: ;
  if ((unsigned long )phy_info->phy == (unsigned long )((struct sas_phy *)0)) {
    goto ldv_38961;
  } else {
  }
  if (phy_info->attached.sas_address != expander_sas_address) {
    goto ldv_38961;
  } else {
  }
  if ((unsigned long )port == (unsigned long )((struct sas_port *)0)) {
    port = mptsas_get_port(phy_info);
    port_details = phy_info->port_details;
  } else {
  }
  dev_printk("\017", (struct device const *)(& (phy_info->phy)->dev), "mptsas: %s: delete phy %d, phy-obj (0x%p)\n",
             (char *)(& ioc->name), (int )phy_info->phy_id, phy_info->phy);
  sas_port_delete_phy(port, phy_info->phy);
  ldv_38961:
  i = i + 1;
  phy_info = phy_info + 1;
  ldv_38963: ;
  if ((int )parent->num_phys > i) {
    goto ldv_38962;
  } else {
  }
  if ((unsigned long )port != (unsigned long )((struct sas_port *)0)) {
    dev_printk("\017", (struct device const *)(& port->dev), "mptsas: %s: delete port %d, sas_addr (0x%llx)\n",
               (char *)(& ioc->name), port->port_identifier, expander_sas_address);
    sas_port_delete(port);
    mptsas_port_delete(ioc, port_details);
  } else {
  }
  out:
  printk("\016mptsas: %s: delete expander: num_phys %d, sas_addr (0x%llx)\n", (char *)(& ioc->name),
         (int )port_info->num_phys, expander_sas_address);
  list_del(& port_info->list);
  kfree((void const *)port_info->phy_info);
  kfree((void const *)port_info);
  return;
}
}
static void mptsas_send_expander_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  MpiEventDataSasExpanderStatusChange_t *expander_data ;
  struct mptsas_portinfo *port_info ;
  __le64 sas_address ;
  int i ;
  size_t __len ;
  void *__ret ;
  {
  ioc = fw_event->ioc;
  expander_data = (MpiEventDataSasExpanderStatusChange_t *)(& fw_event->event_data);
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& expander_data->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& expander_data->SASAddress),
                             __len);
  }
  sas_address = sas_address;
  port_info = mptsas_find_portinfo_by_sas_address(ioc, sas_address);
  if ((unsigned int )expander_data->ReasonCode == 0U) {
    if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0)) {
      i = 0;
      goto ldv_38977;
      ldv_38976:
      (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
      (port_info->phy_info + (unsigned long )i)->handle = expander_data->DevHandle;
      (port_info->phy_info + (unsigned long )i)->identify.sas_address = sas_address;
      (port_info->phy_info + (unsigned long )i)->identify.handle_parent = expander_data->ParentDevHandle;
      i = i + 1;
      ldv_38977: ;
      if ((int )port_info->num_phys > i) {
        goto ldv_38976;
      } else {
      }
      mptsas_expander_refresh(ioc, port_info);
    } else
    if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0) && (unsigned int )expander_data->NumPhys != 0U) {
      mptsas_expander_event_add(ioc, expander_data);
    } else
    if ((unsigned int )expander_data->ReasonCode == 1U) {
      mptsas_expander_delete(ioc, port_info, 0);
    } else {
    }
  } else {
  }
  mptsas_free_fw_event(ioc, fw_event);
  return;
}
}
struct mptsas_portinfo *mptsas_expander_add(MPT_ADAPTER *ioc , u16 handle )
{
  struct mptsas_portinfo buffer ;
  struct mptsas_portinfo *port_info ;
  int i ;
  int tmp ;
  void *tmp___0 ;
  {
  tmp = mptsas_sas_expander_pg0(ioc, & buffer, 536870912U, (u32 )handle);
  if (tmp != 0) {
    return (0);
  } else {
  }
  tmp___0 = kzalloc(32UL, 32U);
  port_info = (struct mptsas_portinfo *)tmp___0;
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_expander_add", 3716);
    } else {
    }
    return (0);
  } else {
  }
  port_info->num_phys = buffer.num_phys;
  port_info->phy_info = buffer.phy_info;
  i = 0;
  goto ldv_38988;
  ldv_38987:
  (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
  i = i + 1;
  ldv_38988: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_38987;
  } else {
  }
  ldv_mutex_lock_48(& ioc->sas_topology_mutex);
  list_add_tail(& port_info->list, & ioc->sas_topology);
  ldv_mutex_unlock_49(& ioc->sas_topology_mutex);
  printk("\016mptsas: %s: add expander: num_phys %d, sas_addr (0x%llx)\n", (char *)(& ioc->name),
         (int )port_info->num_phys, (buffer.phy_info)->identify.sas_address);
  mptsas_expander_refresh(ioc, port_info);
  return (port_info);
}
}
static void mptsas_send_link_status_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  MpiEventDataSasPhyLinkStatus_t *link_data ;
  struct mptsas_portinfo *port_info ;
  struct mptsas_phyinfo *phy_info ;
  __le64 sas_address ;
  u8 phy_num ;
  u8 link_rate ;
  size_t __len ;
  void *__ret ;
  struct scsi_device *sdev ;
  VirtDevice *vdevice ;
  u8 channel ;
  u8 id ;
  int tmp ;
  {
  phy_info = 0;
  ioc = fw_event->ioc;
  link_data = (MpiEventDataSasPhyLinkStatus_t *)(& fw_event->event_data);
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& link_data->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& link_data->SASAddress),
                             __len);
  }
  sas_address = sas_address;
  link_rate = (u8 )((int )link_data->LinkRates >> 4);
  phy_num = link_data->PhyNum;
  port_info = mptsas_find_portinfo_by_sas_address(ioc, sas_address);
  if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0)) {
    phy_info = port_info->phy_info + (unsigned long )phy_num;
    if ((unsigned long )phy_info != (unsigned long )((struct mptsas_phyinfo *)0)) {
      phy_info->negotiated_link_rate = link_rate;
    } else {
    }
  } else {
  }
  if (((unsigned int )link_rate == 8U || (unsigned int )link_rate == 9U) || (unsigned int )link_rate == 10U) {
    if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
      if ((unsigned int )ioc->old_sas_discovery_protocal != 0U) {
        port_info = mptsas_expander_add(ioc, (int )link_data->DevHandle);
        if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0)) {
          goto out;
        } else {
        }
      } else {
      }
      goto out;
    } else {
    }
    if ((unsigned long )ioc->hba_port_info == (unsigned long )port_info) {
      mptsas_probe_hba_phys(ioc);
    } else {
      mptsas_expander_refresh(ioc, port_info);
    }
  } else
  if ((unsigned long )phy_info != (unsigned long )((struct mptsas_phyinfo *)0) && (unsigned long )phy_info->phy != (unsigned long )((struct sas_phy *)0)) {
    if ((unsigned int )link_rate == 1U) {
      (phy_info->phy)->negotiated_linkrate = 1;
    } else
    if ((unsigned int )link_rate == 2U) {
      (phy_info->phy)->negotiated_linkrate = 16;
    } else {
      (phy_info->phy)->negotiated_linkrate = 0;
      if ((unsigned int )ioc->device_missing_delay != 0U) {
        tmp = mptsas_is_end_device(& phy_info->attached);
        if (tmp != 0) {
          id = phy_info->attached.id;
          channel = phy_info->attached.channel;
          if ((ioc->debug_level & 8) != 0) {
            printk("\017mptsas: %s: Link down for fw_id %d:fw_channel %d\n", (char *)(& ioc->name),
                   (int )phy_info->attached.id, (int )phy_info->attached.channel);
          } else {
          }
          sdev = __scsi_iterate_devices(ioc->sh, 0);
          goto ldv_39010;
          ldv_39009:
          vdevice = (VirtDevice *)sdev->hostdata;
          if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) {
            goto ldv_39008;
          } else {
          }
          if (((int )(vdevice->vtarget)->tflags & 64) != 0 || (unsigned int )(vdevice->vtarget)->raidVolume != 0U) {
            goto ldv_39008;
          } else {
          }
          if ((int )(vdevice->vtarget)->id == (int )id && (int )(vdevice->vtarget)->channel == (int )channel) {
            if ((ioc->debug_level & 8) != 0) {
              printk("\017mptsas: %s: SDEV OUTSTANDING CMDS%d\n", (char *)(& ioc->name),
                     sdev->device_busy);
            } else {
            }
          } else {
          }
          ldv_39008:
          sdev = __scsi_iterate_devices(ioc->sh, sdev);
          ldv_39010: ;
          if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
            goto ldv_39009;
          } else {
          }
        } else {
        }
      } else {
      }
    }
  } else {
  }
  out:
  mptsas_free_fw_event(ioc, fw_event);
  return;
}
}
static void mptsas_not_responding_devices(MPT_ADAPTER *ioc )
{
  struct mptsas_portinfo buffer ;
  struct mptsas_portinfo *port_info ;
  struct mptsas_device_info *sas_info ;
  struct mptsas_devinfo sas_device ;
  u32 handle ;
  VirtTarget *vtarget ;
  struct mptsas_phyinfo *phy_info ;
  u8 found_expander ;
  int retval ;
  int retry_count ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___1 ;
  struct list_head const *__mptr___2 ;
  {
  vtarget = 0;
  mpt_findImVolumes(ioc);
  tmp = spinlock_check(& ioc->taskmgmt_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\017mptsas: %s: %s: exiting due to a parallel reset \n", (char *)(& ioc->name),
             "mptsas_not_responding_devices");
    } else {
    }
    spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
    return;
  } else {
  }
  spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
  ldv_mutex_lock_50(& ioc->sas_device_info_mutex);
  redo_device_scan:
  __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
  sas_info = (struct mptsas_device_info *)__mptr;
  goto ldv_39041;
  ldv_39040: ;
  if ((unsigned int )sas_info->is_cached != 0U) {
    goto ldv_39035;
  } else {
  }
  if ((unsigned int )sas_info->is_logical_volume == 0U) {
    sas_device.handle = 0U;
    retry_count = 0;
    retry_page:
    retval = mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )sas_info->fw.channel << 8) + (int )sas_info->fw.id));
    if ((unsigned int )sas_device.handle != 0U) {
      goto ldv_39035;
    } else {
    }
    if (retval == -16) {
      tmp___0 = spinlock_check(& ioc->taskmgmt_lock);
      flags = _raw_spin_lock_irqsave(tmp___0);
      if ((unsigned int )ioc->ioc_reset_in_progress != 0U) {
        if ((ioc->debug_level & 128) != 0) {
          printk("\017mptsas: %s: %s: exiting due to reset\n", (char *)(& ioc->name),
                 "mptsas_not_responding_devices");
        } else {
        }
        spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
        ldv_mutex_unlock_51(& ioc->sas_device_info_mutex);
        return;
      } else {
      }
      spin_unlock_irqrestore(& ioc->taskmgmt_lock, flags);
    } else {
    }
    if (retval != 0 && retval != -19) {
      if (retry_count <= 9) {
        retry_count = retry_count + 1;
        goto retry_page;
      } else
      if ((ioc->debug_level & 8) != 0) {
        printk("\017mptsas: %s: %s: Config page retry exceeded retry count deleting device 0x%llx\n",
               (char *)(& ioc->name), "mptsas_not_responding_devices", sas_info->sas_address);
      } else {
      }
    } else {
    }
    vtarget = mptsas_find_vtarget(ioc, (int )sas_info->fw.channel, (int )sas_info->fw.id);
    if ((unsigned long )vtarget != (unsigned long )((VirtTarget *)0)) {
      vtarget->deleted = 1U;
    } else {
    }
    phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_info->sas_address);
    if ((unsigned long )phy_info != (unsigned long )((struct mptsas_phyinfo *)0)) {
      mptsas_del_end_device(ioc, phy_info);
      goto redo_device_scan;
    } else {
    }
  } else {
    mptsas_volume_delete(ioc, (int )sas_info->fw.id);
  }
  ldv_39035:
  __mptr___0 = (struct list_head const *)sas_info->list.next;
  sas_info = (struct mptsas_device_info *)__mptr___0;
  ldv_39041: ;
  if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
    goto ldv_39040;
  } else {
  }
  ldv_mutex_unlock_52(& ioc->sas_device_info_mutex);
  ldv_mutex_lock_53(& ioc->sas_topology_mutex);
  redo_expander_scan:
  __mptr___1 = (struct list_head const *)ioc->sas_topology.next;
  port_info = (struct mptsas_portinfo *)__mptr___1;
  goto ldv_39053;
  ldv_39052: ;
  if ((unsigned long )port_info->phy_info != (unsigned long )((struct mptsas_phyinfo *)0) && ((port_info->phy_info)->identify.device_info & 256U) == 0U) {
    goto ldv_39048;
  } else {
  }
  found_expander = 0U;
  handle = 65535U;
  goto ldv_39050;
  ldv_39049:
  handle = (u32 )(buffer.phy_info)->handle;
  if ((buffer.phy_info)->identify.sas_address == (port_info->phy_info)->identify.sas_address) {
    found_expander = 1U;
  } else {
  }
  kfree((void const *)buffer.phy_info);
  ldv_39050:
  tmp___1 = mptsas_sas_expander_pg0(ioc, & buffer, 0U, handle);
  if (tmp___1 == 0 && (unsigned int )found_expander == 0U) {
    goto ldv_39049;
  } else {
  }
  if ((unsigned int )found_expander == 0U) {
    mptsas_expander_delete(ioc, port_info, 0);
    goto redo_expander_scan;
  } else {
  }
  ldv_39048:
  __mptr___2 = (struct list_head const *)port_info->list.next;
  port_info = (struct mptsas_portinfo *)__mptr___2;
  ldv_39053: ;
  if ((unsigned long )(& port_info->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_39052;
  } else {
  }
  ldv_mutex_unlock_54(& ioc->sas_topology_mutex);
  return;
}
}
static void mptsas_probe_expanders(MPT_ADAPTER *ioc )
{
  struct mptsas_portinfo buffer ;
  struct mptsas_portinfo *port_info ;
  u32 handle ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  handle = 65535U;
  goto ldv_39065;
  ldv_39070:
  handle = (u32 )(buffer.phy_info)->handle;
  port_info = mptsas_find_portinfo_by_sas_address(ioc, (buffer.phy_info)->identify.sas_address);
  if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0)) {
    i = 0;
    goto ldv_39063;
    ldv_39062:
    (port_info->phy_info + (unsigned long )i)->handle = (u16 )handle;
    (port_info->phy_info + (unsigned long )i)->identify.handle_parent = (buffer.phy_info)->identify.handle_parent;
    i = i + 1;
    ldv_39063: ;
    if ((int )buffer.num_phys > i) {
      goto ldv_39062;
    } else {
    }
    mptsas_expander_refresh(ioc, port_info);
    kfree((void const *)buffer.phy_info);
    goto ldv_39065;
  } else {
  }
  tmp = kzalloc(32UL, 208U);
  port_info = (struct mptsas_portinfo *)tmp;
  if ((unsigned long )port_info == (unsigned long )((struct mptsas_portinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_probe_expanders", 3987);
    } else {
    }
    return;
  } else {
  }
  port_info->num_phys = buffer.num_phys;
  port_info->phy_info = buffer.phy_info;
  i = 0;
  goto ldv_39068;
  ldv_39067:
  (port_info->phy_info + (unsigned long )i)->portinfo = port_info;
  i = i + 1;
  ldv_39068: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_39067;
  } else {
  }
  ldv_mutex_lock_55(& ioc->sas_topology_mutex);
  list_add_tail(& port_info->list, & ioc->sas_topology);
  ldv_mutex_unlock_56(& ioc->sas_topology_mutex);
  printk("\016mptsas: %s: add expander: num_phys %d, sas_addr (0x%llx)\n", (char *)(& ioc->name),
         (int )port_info->num_phys, (buffer.phy_info)->identify.sas_address);
  mptsas_expander_refresh(ioc, port_info);
  ldv_39065:
  tmp___0 = mptsas_sas_expander_pg0(ioc, & buffer, 0U, handle);
  if (tmp___0 == 0) {
    goto ldv_39070;
  } else {
  }
  return;
}
}
static void mptsas_probe_devices(MPT_ADAPTER *ioc )
{
  u16 handle ;
  struct mptsas_devinfo sas_device ;
  struct mptsas_phyinfo *phy_info ;
  struct sas_rphy *tmp ;
  int tmp___0 ;
  {
  handle = 65535U;
  goto ldv_39078;
  ldv_39079:
  handle = sas_device.handle;
  if ((sas_device.device_info & 1664U) == 0U) {
    goto ldv_39078;
  } else {
  }
  if (((int )sas_device.flags & 1) == 0 || ((int )sas_device.flags & 2) == 0) {
    goto ldv_39078;
  } else {
  }
  phy_info = mptsas_refreshing_device_handles(ioc, & sas_device);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    goto ldv_39078;
  } else {
  }
  tmp = mptsas_get_rphy(phy_info);
  if ((unsigned long )tmp != (unsigned long )((struct sas_rphy *)0)) {
    goto ldv_39078;
  } else {
  }
  mptsas_add_end_device(ioc, phy_info);
  ldv_39078:
  tmp___0 = mptsas_sas_device_pg0(ioc, & sas_device, 0U, (u32 )handle);
  if (tmp___0 == 0) {
    goto ldv_39079;
  } else {
  }
  return;
}
}
static void mptsas_scan_sas_topology(MPT_ADAPTER *ioc )
{
  struct scsi_device *sdev ;
  int i ;
  {
  mptsas_probe_hba_phys(ioc);
  mptsas_probe_expanders(ioc);
  mptsas_probe_devices(ioc);
  if (((unsigned int )ioc->ir_firmware == 0U || (unsigned long )ioc->raid_data.pIocPg2 == (unsigned long )((IOCPage2_t *)0)) || (unsigned int )(ioc->raid_data.pIocPg2)->NumActiveVolumes == 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_39088;
  ldv_39087:
  sdev = scsi_device_lookup(ioc->sh, 1U, (uint )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID,
                            0U);
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    scsi_device_put(sdev);
    goto ldv_39086;
  } else {
  }
  printk("\016mptsas: %s: attaching raid volume, channel %d, id %d\n", (char *)(& ioc->name),
         1, (int )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID);
  scsi_add_device(ioc->sh, 1U, (uint )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID,
                  0U);
  ldv_39086:
  i = i + 1;
  ldv_39088: ;
  if ((int )(ioc->raid_data.pIocPg2)->NumActiveVolumes > i) {
    goto ldv_39087;
  } else {
  }
  return;
}
}
static void mptsas_handle_queue_full_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  EventDataQueueFull_t *qfull_data ;
  struct mptsas_device_info *sas_info ;
  struct scsi_device *sdev ;
  int depth ;
  int id ;
  int channel ;
  int fw_id ;
  int fw_channel ;
  u16 current_depth ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  {
  id = -1;
  channel = -1;
  ioc = fw_event->ioc;
  qfull_data = (EventDataQueueFull_t *)(& fw_event->event_data);
  fw_id = (int )qfull_data->TargetID;
  fw_channel = (int )qfull_data->Bus;
  current_depth = qfull_data->CurrentDepth;
  ldv_mutex_lock_57(& ioc->sas_device_info_mutex);
  tmp = mptscsih_is_phys_disk(ioc, (int )((u8 )fw_channel), (int )((u8 )fw_id));
  if (tmp != 0) {
    __mptr = (struct list_head const *)ioc->sas_device_info_list.next;
    sas_info = (struct mptsas_device_info *)__mptr;
    goto ldv_39110;
    ldv_39109: ;
    if ((unsigned int )sas_info->is_cached != 0U || (unsigned int )sas_info->is_logical_volume != 0U) {
      goto ldv_39107;
    } else {
    }
    if ((unsigned int )sas_info->is_hidden_raid_component != 0U && ((int )sas_info->fw.channel == fw_channel && (int )sas_info->fw.id == fw_id)) {
      id = (int )sas_info->volume_id;
      channel = 1;
      goto out;
    } else {
    }
    ldv_39107:
    __mptr___0 = (struct list_head const *)sas_info->list.next;
    sas_info = (struct mptsas_device_info *)__mptr___0;
    ldv_39110: ;
    if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
      goto ldv_39109;
    } else {
    }
  } else {
    __mptr___1 = (struct list_head const *)ioc->sas_device_info_list.next;
    sas_info = (struct mptsas_device_info *)__mptr___1;
    goto ldv_39118;
    ldv_39117: ;
    if (((unsigned int )sas_info->is_cached != 0U || (unsigned int )sas_info->is_hidden_raid_component != 0U) || (unsigned int )sas_info->is_logical_volume != 0U) {
      goto ldv_39116;
    } else {
    }
    if ((int )sas_info->fw.channel == fw_channel && (int )sas_info->fw.id == fw_id) {
      id = (int )sas_info->os.id;
      channel = (int )sas_info->os.channel;
      goto out;
    } else {
    }
    ldv_39116:
    __mptr___2 = (struct list_head const *)sas_info->list.next;
    sas_info = (struct mptsas_device_info *)__mptr___2;
    ldv_39118: ;
    if ((unsigned long )(& sas_info->list) != (unsigned long )(& ioc->sas_device_info_list)) {
      goto ldv_39117;
    } else {
    }
  }
  out:
  ldv_mutex_unlock_58(& ioc->sas_device_info_mutex);
  if (id != -1) {
    sdev = __scsi_iterate_devices(ioc->sh, 0);
    goto ldv_39122;
    ldv_39121: ;
    if (sdev->id == (unsigned int )id && sdev->channel == (unsigned int )channel) {
      if ((int )sdev->queue_depth < (int )current_depth) {
        dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "strange observation, the queue depth is (%d) meanwhile fw queue depth (%d)\n",
                   (int )sdev->queue_depth, (int )current_depth);
        goto ldv_39120;
      } else {
      }
      depth = scsi_track_queue_full(sdev, (int )current_depth + -1);
      if (depth > 0) {
        dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "Queue depth reduced to (%d)\n",
                   depth);
      } else
      if (depth < 0) {
        dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "Tagged Command Queueing is being disabled\n");
      } else
      if (depth == 0) {
        dev_printk("\016", (struct device const *)(& sdev->sdev_gendev), "Queue depth not changed yet\n");
      } else {
      }
    } else {
    }
    ldv_39120:
    sdev = __scsi_iterate_devices(ioc->sh, sdev);
    ldv_39122: ;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      goto ldv_39121;
    } else {
    }
  } else {
  }
  mptsas_free_fw_event(ioc, fw_event);
  return;
}
}
static struct mptsas_phyinfo *mptsas_find_phyinfo_by_sas_address(MPT_ADAPTER *ioc ,
                                                                 u64 sas_address )
{
  struct mptsas_portinfo *port_info ;
  struct mptsas_phyinfo *phy_info ;
  int i ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  phy_info = 0;
  ldv_mutex_lock_59(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  port_info = (struct mptsas_portinfo *)__mptr;
  goto ldv_39140;
  ldv_39139:
  i = 0;
  goto ldv_39138;
  ldv_39137:
  tmp = mptsas_is_end_device(& (port_info->phy_info + (unsigned long )i)->attached);
  if (tmp == 0) {
    goto ldv_39135;
  } else {
  }
  if ((port_info->phy_info + (unsigned long )i)->attached.sas_address != sas_address) {
    goto ldv_39135;
  } else {
  }
  phy_info = port_info->phy_info + (unsigned long )i;
  goto ldv_39136;
  ldv_39135:
  i = i + 1;
  ldv_39138: ;
  if ((int )port_info->num_phys > i) {
    goto ldv_39137;
  } else {
  }
  ldv_39136:
  __mptr___0 = (struct list_head const *)port_info->list.next;
  port_info = (struct mptsas_portinfo *)__mptr___0;
  ldv_39140: ;
  if ((unsigned long )(& port_info->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_39139;
  } else {
  }
  ldv_mutex_unlock_60(& ioc->sas_topology_mutex);
  return (phy_info);
}
}
static struct mptsas_phyinfo *mptsas_find_phyinfo_by_phys_disk_num(MPT_ADAPTER *ioc ,
                                                                   u8 phys_disk_num ,
                                                                   u8 channel , u8 id )
{
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_portinfo *port_info ;
  RaidPhysDiskPage1_t *phys_disk ;
  int num_paths ;
  u64 sas_address ;
  int i ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  phy_info = 0;
  phys_disk = 0;
  sas_address = 0ULL;
  phy_info = 0;
  if ((unsigned long )ioc->raid_data.pIocPg3 == (unsigned long )((IOCPage3_t *)0)) {
    return (0);
  } else {
  }
  num_paths = mpt_raid_phys_disk_get_num_paths(ioc, (int )phys_disk_num);
  if (num_paths == 0) {
    goto out;
  } else {
  }
  tmp = kzalloc((unsigned long )num_paths * 24UL + 12UL, 208U);
  phys_disk = (RaidPhysDiskPage1_t *)tmp;
  if ((unsigned long )phys_disk == (unsigned long )((RaidPhysDiskPage1_t *)0)) {
    goto out;
  } else {
  }
  mpt_raid_phys_disk_pg1(ioc, (int )phys_disk_num, phys_disk);
  i = 0;
  goto ldv_39160;
  ldv_39159: ;
  if ((int )phys_disk->Path[i].Flags & 1) {
    goto ldv_39155;
  } else {
  }
  if ((int )phys_disk->Path[i].PhysDiskID == (int )id && (int )phys_disk->Path[i].PhysDiskBus == (int )channel) {
    __len = 8UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& sas_address), (void const *)(& phys_disk->Path[i].WWID),
                       __len);
    } else {
      __ret = memcpy((void *)(& sas_address), (void const *)(& phys_disk->Path[i].WWID),
                               __len);
    }
    phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_address);
    goto out;
  } else {
  }
  ldv_39155:
  i = i + 1;
  ldv_39160: ;
  if (i < num_paths) {
    goto ldv_39159;
  } else {
  }
  out:
  kfree((void const *)phys_disk);
  if ((unsigned long )phy_info != (unsigned long )((struct mptsas_phyinfo *)0)) {
    return (phy_info);
  } else {
  }
  ldv_mutex_lock_61(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  port_info = (struct mptsas_portinfo *)__mptr;
  goto ldv_39171;
  ldv_39170:
  i = 0;
  goto ldv_39168;
  ldv_39167:
  tmp___0 = mptsas_is_end_device(& (port_info->phy_info + (unsigned long )i)->attached);
  if (tmp___0 == 0) {
    goto ldv_39166;
  } else {
  }
  if ((port_info->phy_info + (unsigned long )i)->attached.phys_disk_num == 4294967295U) {
    goto ldv_39166;
  } else {
  }
  if (((port_info->phy_info + (unsigned long )i)->attached.phys_disk_num == (u32 )phys_disk_num && (int )(port_info->phy_info + (unsigned long )i)->attached.id == (int )id) && (int )(port_info->phy_info + (unsigned long )i)->attached.channel == (int )channel) {
    phy_info = port_info->phy_info + (unsigned long )i;
  } else {
  }
  ldv_39166:
  i = i + 1;
  ldv_39168: ;
  if ((int )port_info->num_phys > i && (unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    goto ldv_39167;
  } else {
  }
  __mptr___0 = (struct list_head const *)port_info->list.next;
  port_info = (struct mptsas_portinfo *)__mptr___0;
  ldv_39171: ;
  if ((unsigned long )(& port_info->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_39170;
  } else {
  }
  ldv_mutex_unlock_62(& ioc->sas_topology_mutex);
  return (phy_info);
}
}
static void mptsas_reprobe_lun(struct scsi_device *sdev , void *data )
{
  int rc ;
  {
  sdev->no_uld_attach = (unsigned long )data != (unsigned long )((void *)0);
  rc = scsi_device_reprobe(sdev);
  return;
}
}
static void mptsas_reprobe_target(struct scsi_target *starget , int uld_attach )
{
  {
  starget_for_each_device(starget, uld_attach != 0 ? 1 : 0, & mptsas_reprobe_lun);
  return;
}
}
static void mptsas_adding_inactive_raid_components(MPT_ADAPTER *ioc , u8 channel ,
                                                   u8 id )
{
  CONFIGPARMS cfg ;
  ConfigPageHeader_t hdr ;
  dma_addr_t dma_handle ;
  pRaidVolumePage0_t buffer ;
  RaidPhysDiskPage0_t phys_disk ;
  int i ;
  struct mptsas_phyinfo *phy_info ;
  struct mptsas_devinfo sas_device ;
  int tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  buffer = 0;
  memset((void *)(& cfg), 0, 32UL);
  memset((void *)(& hdr), 0, 4UL);
  hdr.PageType = 8U;
  cfg.pageAddr = (u32 )(((int )channel << 8) + (int )id);
  cfg.cfghdr.hdr = & hdr;
  cfg.action = 0U;
  cfg.timeout = 30U;
  tmp = mpt_config(ioc, & cfg);
  if (tmp != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )hdr.PageLength == 0U) {
    goto out;
  } else {
  }
  tmp___0 = pci_alloc_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4),
                                 & dma_handle);
  buffer = (pRaidVolumePage0_t )tmp___0;
  if ((unsigned long )buffer == (unsigned long )((pRaidVolumePage0_t )0)) {
    goto out;
  } else {
  }
  cfg.physAddr = dma_handle;
  cfg.action = 1U;
  tmp___1 = mpt_config(ioc, & cfg);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  if (((int )buffer->VolumeStatus.Flags & 8) == 0) {
    goto out;
  } else {
  }
  if ((unsigned int )buffer->NumPhysDisks == 0U) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_39198;
  ldv_39197:
  tmp___2 = mpt_raid_phys_disk_pg0(ioc, (int )buffer->PhysDisk[i].PhysDiskNum, & phys_disk);
  if (tmp___2 != 0) {
    goto ldv_39196;
  } else {
  }
  tmp___3 = mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )phys_disk.PhysDiskBus << 8) + (int )phys_disk.PhysDiskID));
  if (tmp___3 != 0) {
    goto ldv_39196;
  } else {
  }
  if (((int )sas_device.flags & 1) == 0 || ((int )sas_device.flags & 2) == 0) {
    goto ldv_39196;
  } else {
  }
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_device.sas_address);
  mptsas_add_end_device(ioc, phy_info);
  ldv_39196:
  i = i + 1;
  ldv_39198: ;
  if ((int )buffer->NumPhysDisks > i) {
    goto ldv_39197;
  } else {
  }
  out: ;
  if ((unsigned long )buffer != (unsigned long )((pRaidVolumePage0_t )0)) {
    pci_free_consistent(ioc->pcidev, (size_t )((int )hdr.PageLength * 4), (void *)buffer,
                        dma_handle);
  } else {
  }
  return;
}
}
static void mptsas_hotplug_work(MPT_ADAPTER *ioc , struct fw_event_work *fw_event ,
                                struct mptsas_hotplug_event *hot_plug_info )
{
  struct mptsas_phyinfo *phy_info ;
  struct scsi_target *starget ;
  struct mptsas_devinfo sas_device ;
  VirtTarget *vtarget ;
  int i ;
  struct mptsas_portinfo *port_info ;
  struct sas_rphy *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  switch ((unsigned int )hot_plug_info->event_type) {
  case 4U: ;
  if ((unsigned long )ioc->raid_data.pIocPg2 == (unsigned long )((IOCPage2_t *)0)) {
    goto ldv_39212;
  } else {
  }
  i = 0;
  goto ldv_39214;
  ldv_39213: ;
  if ((int )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID == (int )hot_plug_info->id) {
    printk("\fmptsas: %s: WARNING - firmware bug: unable to add hidden disk - target_id matchs volume_id\n",
           (char *)(& ioc->name));
    mptsas_free_fw_event(ioc, fw_event);
    return;
  } else {
  }
  i = i + 1;
  ldv_39214: ;
  if ((int )(ioc->raid_data.pIocPg2)->NumActiveVolumes > i) {
    goto ldv_39213;
  } else {
  }
  mpt_findImVolumes(ioc);
  case 0U:
  memset((void *)(& sas_device), 0, 40UL);
  mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )hot_plug_info->channel << 8) + (int )hot_plug_info->id));
  if (((int )sas_device.flags & 1) == 0 || ((int )sas_device.flags & 2) == 0) {
    goto ldv_39212;
  } else {
  }
  if ((unsigned int )sas_device.handle == 0U) {
    return;
  } else {
  }
  phy_info = mptsas_refreshing_device_handles(ioc, & sas_device);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0) && (sas_device.device_info & 128U) != 0U) {
    if ((ioc->debug_level & 8) != 0) {
      printk("\017mptsas: %s: %s %d SATA HOT PLUG: parent handle of device %x\n",
             (char *)(& ioc->name), "mptsas_hotplug_work", 4415, (int )sas_device.handle_parent);
    } else {
    }
    port_info = mptsas_find_portinfo_by_handle(ioc, (int )sas_device.handle_parent);
    if ((unsigned long )ioc->hba_port_info == (unsigned long )port_info) {
      mptsas_probe_hba_phys(ioc);
    } else
    if ((unsigned long )port_info != (unsigned long )((struct mptsas_portinfo *)0)) {
      mptsas_expander_refresh(ioc, port_info);
    } else {
      if ((ioc->debug_level & 128) != 0) {
        printk("\vmptsas: %s: ERROR - %s %d port info is NULL\n", (char *)(& ioc->name),
               "mptsas_hotplug_work", 4426);
      } else {
      }
      goto ldv_39212;
    }
    phy_info = mptsas_refreshing_device_handles(ioc, & sas_device);
  } else {
  }
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s %d phy info is NULL\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", 4436);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  tmp = mptsas_get_rphy(phy_info);
  if ((unsigned long )tmp != (unsigned long )((struct sas_rphy *)0)) {
    goto ldv_39212;
  } else {
  }
  mptsas_add_end_device(ioc, phy_info);
  goto ldv_39212;
  case 1U:
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, hot_plug_info->sas_address);
  mptsas_del_end_device(ioc, phy_info);
  goto ldv_39212;
  case 6U:
  mpt_findImVolumes(ioc);
  phy_info = mptsas_find_phyinfo_by_phys_disk_num(ioc, (int )hot_plug_info->phys_disk_num,
                                                  (int )hot_plug_info->channel, (int )hot_plug_info->id);
  mptsas_del_end_device(ioc, phy_info);
  goto ldv_39212;
  case 5U:
  tmp___0 = mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )hot_plug_info->channel << 8) + (int )hot_plug_info->id));
  if (tmp___0 != 0) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4471);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  if (((int )sas_device.flags & 1) == 0 || ((int )sas_device.flags & 2) == 0) {
    goto ldv_39212;
  } else {
  }
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_device.sas_address);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4488);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  starget = mptsas_get_starget(phy_info);
  if ((unsigned long )starget == (unsigned long )((struct scsi_target *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4496);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  vtarget = (VirtTarget *)starget->hostdata;
  if ((unsigned long )vtarget == (unsigned long )((VirtTarget *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4504);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  mpt_findImVolumes(ioc);
  dev_printk("\016", (struct device const *)(& starget->dev), "mptsas: %s: RAID Hidding: fw_channel=%d, fw_id=%d, physdsk %d, sas_addr 0x%llx\n",
             (char *)(& ioc->name), (int )hot_plug_info->channel, (int )hot_plug_info->id,
             (int )hot_plug_info->phys_disk_num, sas_device.sas_address);
  vtarget->id = hot_plug_info->phys_disk_num;
  vtarget->tflags = (u8 )((unsigned int )vtarget->tflags | 64U);
  phy_info->attached.phys_disk_num = (u32 )hot_plug_info->phys_disk_num;
  mptsas_reprobe_target(starget, 1);
  goto ldv_39212;
  case 7U:
  tmp___1 = mptsas_sas_device_pg0(ioc, & sas_device, 268435456U, (u32 )(((int )hot_plug_info->channel << 8) + (int )hot_plug_info->id));
  if (tmp___1 != 0) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4531);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  if (((int )sas_device.flags & 1) == 0 || ((int )sas_device.flags & 2) == 0) {
    goto ldv_39212;
  } else {
  }
  phy_info = mptsas_find_phyinfo_by_sas_address(ioc, sas_device.sas_address);
  if ((unsigned long )phy_info == (unsigned long )((struct mptsas_phyinfo *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4547);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  starget = mptsas_get_starget(phy_info);
  if ((unsigned long )starget == (unsigned long )((struct scsi_target *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4555);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  vtarget = (VirtTarget *)starget->hostdata;
  if ((unsigned long )vtarget == (unsigned long )((VirtTarget *)0)) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4563);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  if (((int )vtarget->tflags & 64) == 0) {
    if ((ioc->debug_level & 128) != 0) {
      printk("\vmptsas: %s: ERROR - %s: fw_id=%d exit at line=%d\n", (char *)(& ioc->name),
             "mptsas_hotplug_work", (int )hot_plug_info->id, 4570);
    } else {
    }
    goto ldv_39212;
  } else {
  }
  mpt_findImVolumes(ioc);
  dev_printk("\016", (struct device const *)(& starget->dev), "mptsas: %s: RAID Exposing: fw_channel=%d, fw_id=%d, physdsk %d, sas_addr 0x%llx\n",
             (char *)(& ioc->name), (int )hot_plug_info->channel, (int )hot_plug_info->id,
             (int )hot_plug_info->phys_disk_num, sas_device.sas_address);
  vtarget->tflags = (unsigned int )vtarget->tflags & 191U;
  vtarget->id = hot_plug_info->id;
  phy_info->attached.phys_disk_num = 4294967295U;
  mptsas_reprobe_target(starget, 0);
  mptsas_add_device_component_by_fw(ioc, (int )hot_plug_info->channel, (int )hot_plug_info->id);
  goto ldv_39212;
  case 2U:
  mpt_findImVolumes(ioc);
  printk("\016mptsas: %s: attaching raid volume, channel %d, id %d\n", (char *)(& ioc->name),
         1, (int )hot_plug_info->id);
  scsi_add_device(ioc->sh, 1U, (uint )hot_plug_info->id, 0U);
  goto ldv_39212;
  case 3U:
  mpt_findImVolumes(ioc);
  printk("\016mptsas: %s: removing raid volume, channel %d, id %d\n", (char *)(& ioc->name),
         1, (int )hot_plug_info->id);
  scsi_remove_device(hot_plug_info->sdev);
  scsi_device_put(hot_plug_info->sdev);
  goto ldv_39212;
  case 8U:
  mpt_findImVolumes(ioc);
  mptsas_adding_inactive_raid_components(ioc, (int )hot_plug_info->channel, (int )hot_plug_info->id);
  goto ldv_39212;
  default: ;
  goto ldv_39212;
  }
  ldv_39212:
  mptsas_free_fw_event(ioc, fw_event);
  return;
}
}
static void mptsas_send_sas_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  struct mptsas_hotplug_event hot_plug_info ;
  EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *sas_event_data ;
  u32 device_info ;
  u64 sas_address ;
  size_t __len ;
  void *__ret ;
  {
  ioc = fw_event->ioc;
  sas_event_data = (EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *)(& fw_event->event_data);
  device_info = sas_event_data->DeviceInfo;
  if ((device_info & 1664U) == 0U) {
    mptsas_free_fw_event(ioc, fw_event);
    return;
  } else {
  }
  if ((unsigned int )sas_event_data->ReasonCode == 6U) {
    mptbase_sas_persist_operation(ioc, 1);
    mptsas_free_fw_event(ioc, fw_event);
    return;
  } else {
  }
  switch ((int )sas_event_data->ReasonCode) {
  case 4: ;
  case 3:
  memset((void *)(& hot_plug_info), 0, 48UL);
  hot_plug_info.handle = sas_event_data->DevHandle;
  hot_plug_info.channel = sas_event_data->Bus;
  hot_plug_info.id = sas_event_data->TargetID;
  hot_plug_info.phy_id = sas_event_data->PhyNum;
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& sas_address), (void const *)(& sas_event_data->SASAddress),
                     __len);
  } else {
    __ret = memcpy((void *)(& sas_address), (void const *)(& sas_event_data->SASAddress),
                             __len);
  }
  hot_plug_info.sas_address = sas_address;
  hot_plug_info.device_info = device_info;
  if (((int )sas_event_data->ReasonCode & 3) != 0) {
    hot_plug_info.event_type = 0;
  } else {
    hot_plug_info.event_type = 1;
  }
  mptsas_hotplug_work(ioc, fw_event, & hot_plug_info);
  goto ldv_39239;
  case 6:
  mptbase_sas_persist_operation(ioc, 1);
  mptsas_free_fw_event(ioc, fw_event);
  goto ldv_39239;
  case 5: ;
  case 8: ;
  default:
  mptsas_free_fw_event(ioc, fw_event);
  goto ldv_39239;
  }
  ldv_39239: ;
  return;
}
}
static void mptsas_send_raid_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  EVENT_DATA_RAID *raid_event_data ;
  struct mptsas_hotplug_event hot_plug_info ;
  int status ;
  int state ;
  struct scsi_device *sdev ;
  VirtDevice *vdevice ;
  RaidPhysDiskPage0_t phys_disk ;
  {
  sdev = 0;
  vdevice = 0;
  ioc = fw_event->ioc;
  raid_event_data = (EVENT_DATA_RAID *)(& fw_event->event_data);
  status = (int )raid_event_data->SettingsStatus;
  state = (status >> 8) & 255;
  memset((void *)(& hot_plug_info), 0, 48UL);
  hot_plug_info.id = raid_event_data->VolumeID;
  hot_plug_info.channel = raid_event_data->VolumeBus;
  hot_plug_info.phys_disk_num = raid_event_data->PhysDiskNum;
  if (((unsigned int )raid_event_data->ReasonCode == 1U || (unsigned int )raid_event_data->ReasonCode == 0U) || (unsigned int )raid_event_data->ReasonCode == 3U) {
    sdev = scsi_device_lookup(ioc->sh, 1U, (uint )hot_plug_info.id, 0U);
    hot_plug_info.sdev = sdev;
    if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
      vdevice = (VirtDevice *)sdev->hostdata;
    } else {
    }
  } else {
  }
  if ((ioc->debug_level & 8) != 0) {
    printk("\017mptsas: %s: Entering %s: ReasonCode=%02x\n", (char *)(& ioc->name),
           "mptsas_send_raid_event", (int )raid_event_data->ReasonCode);
  } else {
  }
  switch ((int )raid_event_data->ReasonCode) {
  case 6:
  hot_plug_info.event_type = 7;
  goto ldv_39257;
  case 5:
  hot_plug_info.event_type = 5;
  goto ldv_39257;
  case 8: ;
  switch (state) {
  case 0: ;
  case 2:
  mpt_raid_phys_disk_pg0(ioc, (int )raid_event_data->PhysDiskNum, & phys_disk);
  hot_plug_info.id = phys_disk.PhysDiskID;
  hot_plug_info.channel = phys_disk.PhysDiskBus;
  hot_plug_info.event_type = 4;
  goto ldv_39262;
  case 3: ;
  case 1: ;
  case 5: ;
  case 6: ;
  case 255:
  hot_plug_info.event_type = 6;
  goto ldv_39262;
  default: ;
  goto ldv_39262;
  }
  ldv_39262: ;
  goto ldv_39257;
  case 1: ;
  if ((unsigned long )sdev == (unsigned long )((struct scsi_device *)0)) {
    goto ldv_39257;
  } else {
  }
  (vdevice->vtarget)->deleted = 1U;
  hot_plug_info.event_type = 3;
  goto ldv_39257;
  case 0: ;
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    scsi_device_put(sdev);
    goto ldv_39257;
  } else {
  }
  hot_plug_info.event_type = 2;
  goto ldv_39257;
  case 3: ;
  if ((status & 1) == 0) {
    if ((unsigned long )sdev == (unsigned long )((struct scsi_device *)0)) {
      goto ldv_39257;
    } else {
    }
    (vdevice->vtarget)->deleted = 1U;
    hot_plug_info.event_type = 3;
    goto ldv_39257;
  } else {
  }
  switch (state) {
  case 2: ;
  case 3: ;
  if ((unsigned long )sdev == (unsigned long )((struct scsi_device *)0)) {
    goto ldv_39274;
  } else {
  }
  (vdevice->vtarget)->deleted = 1U;
  hot_plug_info.event_type = 3;
  goto ldv_39274;
  case 0: ;
  case 1: ;
  if ((unsigned long )sdev != (unsigned long )((struct scsi_device *)0)) {
    scsi_device_put(sdev);
    goto ldv_39274;
  } else {
  }
  hot_plug_info.event_type = 2;
  goto ldv_39274;
  default: ;
  goto ldv_39274;
  }
  ldv_39274: ;
  goto ldv_39257;
  default: ;
  goto ldv_39257;
  }
  ldv_39257: ;
  if ((unsigned int )hot_plug_info.event_type != 9U) {
    mptsas_hotplug_work(ioc, fw_event, & hot_plug_info);
  } else {
    mptsas_free_fw_event(ioc, fw_event);
  }
  return;
}
}
static int mptsas_issue_tm(MPT_ADAPTER *ioc , u8 type , u8 channel , u8 id , u64 lun ,
                           int task_context , ulong timeout , u8 *issue_reset )
{
  MPT_FRAME_HDR *mf ;
  SCSITaskMgmt_t *pScsiTm ;
  int retval ;
  unsigned long timeleft ;
  {
  *issue_reset = 0U;
  mf = mpt_get_msg_frame((int )mptsasDeviceResetCtx, ioc);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    retval = -1;
    if ((ioc->debug_level & 256) != 0) {
      printk("\fmptsas: %s: WARNING - TaskMgmt request: no msg frames!!\n", (char *)(& ioc->name));
    } else {
    }
    goto out;
  } else {
  }
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: TaskMgmt request: mr = %p, task_type = 0x%02X,\n\t timeout = %ld, fw_channel = %d, fw_id = %d, lun = %lld,\n\t task_context = 0x%x\n",
           (char *)(& ioc->name), mf, (int )type, timeout, (int )channel, (int )id,
           lun, task_context);
  } else {
  }
  pScsiTm = (SCSITaskMgmt_t *)mf;
  memset((void *)pScsiTm, 0, 52UL);
  pScsiTm->Function = 1U;
  pScsiTm->TaskType = type;
  pScsiTm->MsgFlags = 0U;
  pScsiTm->TargetID = id;
  pScsiTm->Bus = channel;
  pScsiTm->ChainOffset = 0U;
  pScsiTm->Reserved = 0U;
  pScsiTm->Reserved1 = 0U;
  pScsiTm->TaskMsgContext = (U32 )task_context;
  int_to_scsilun((unsigned int )lun, (struct scsi_lun *)(& pScsiTm->LUN));
  ioc->taskmgmt_cmds.status = 4U;
  ioc->internal_cmds.status = 0U;
  retval = 0;
  mpt_put_msg_frame_hi_pri((int )mptsasDeviceResetCtx, ioc, mf);
  timeleft = wait_for_completion_timeout(& ioc->taskmgmt_cmds.done, timeout * 250UL);
  if (((int )ioc->taskmgmt_cmds.status & 2) == 0) {
    retval = -1;
    if ((ioc->debug_level & 256) != 0) {
      printk("\vmptsas: %s: ERROR - TaskMgmt request: TIMED OUT!(mr=%p)\n", (char *)(& ioc->name),
             mf);
    } else {
    }
    mpt_free_msg_frame(ioc, mf);
    if (((int )ioc->taskmgmt_cmds.status & 8) != 0) {
      goto out;
    } else {
    }
    *issue_reset = 1U;
    goto out;
  } else {
  }
  if (((int )ioc->taskmgmt_cmds.status & 1) == 0) {
    retval = -1;
    if ((ioc->debug_level & 256) != 0) {
      printk("\017mptsas: %s: TaskMgmt request: failed with no reply\n", (char *)(& ioc->name));
    } else {
    }
    goto out;
  } else {
  }
  out:
  ioc->taskmgmt_cmds.status = 0U;
  return (retval);
}
}
static void mptsas_broadcast_primative_work(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  MPT_FRAME_HDR *mf ;
  VirtDevice *vdevice ;
  int ii ;
  struct scsi_cmnd *sc ;
  SCSITaskMgmtReply_t *pScsiTmReply ;
  u8 issue_reset ;
  int task_context ;
  u8 channel ;
  u8 id ;
  int lun ;
  u32 termination_count ;
  u32 query_count ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  {
  ioc = fw_event->ioc;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: %s - enter\n", (char *)(& ioc->name), "mptsas_broadcast_primative_work");
  } else {
  }
  ldv_mutex_lock_63(& ioc->taskmgmt_cmds.mutex);
  tmp = mpt_set_taskmgmt_in_progress_flag(ioc);
  if (tmp != 0) {
    ldv_mutex_unlock_64(& ioc->taskmgmt_cmds.mutex);
    mptsas_requeue_fw_event(ioc, fw_event, 1000UL);
    return;
  } else {
  }
  issue_reset = 0U;
  termination_count = 0U;
  query_count = 0U;
  mpt_findImVolumes(ioc);
  pScsiTmReply = (SCSITaskMgmtReply_t *)(& ioc->taskmgmt_cmds.reply);
  ii = 0;
  goto ldv_39314;
  ldv_39313: ;
  if ((unsigned int )ioc->fw_events_off != 0U) {
    goto out;
  } else {
  }
  sc = mptscsih_get_scsi_lookup(ioc, ii);
  if ((unsigned long )sc == (unsigned long )((struct scsi_cmnd *)0)) {
    goto ldv_39312;
  } else {
  }
  mf = ioc->req_frames + (unsigned long )(ioc->req_sz * ii);
  if ((unsigned long )mf == (unsigned long )((MPT_FRAME_HDR *)0)) {
    goto ldv_39312;
  } else {
  }
  task_context = (int )mf->u.frame.hwhdr.msgctxu.MsgContext;
  vdevice = (VirtDevice *)(sc->device)->hostdata;
  if ((unsigned long )vdevice == (unsigned long )((VirtDevice *)0) || (unsigned long )vdevice->vtarget == (unsigned long )((VirtTarget *)0)) {
    goto ldv_39312;
  } else {
  }
  if (((int )(vdevice->vtarget)->tflags & 64) != 0) {
    goto ldv_39312;
  } else {
  }
  if ((unsigned int )(vdevice->vtarget)->raidVolume != 0U) {
    goto ldv_39312;
  } else {
  }
  channel = (vdevice->vtarget)->channel;
  id = (vdevice->vtarget)->id;
  lun = vdevice->lun;
  tmp___0 = mptsas_issue_tm(ioc, 7, (int )channel, (int )id, (unsigned long long )lun,
                            task_context, 30UL, & issue_reset);
  if (tmp___0 != 0) {
    goto out;
  } else {
  }
  query_count = query_count + 1U;
  termination_count = pScsiTmReply->TerminationCount + termination_count;
  if ((unsigned int )pScsiTmReply->IOCStatus == 0U && ((unsigned int )pScsiTmReply->ResponseCode == 8U || (unsigned int )pScsiTmReply->ResponseCode == 128U)) {
    goto ldv_39312;
  } else {
  }
  tmp___1 = mptsas_issue_tm(ioc, 2, (int )channel, (int )id, (unsigned long long )lun,
                            0, 30UL, & issue_reset);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  termination_count = pScsiTmReply->TerminationCount + termination_count;
  ldv_39312:
  ii = ii + 1;
  ldv_39314: ;
  if (ioc->req_depth > ii) {
    goto ldv_39313;
  } else {
  }
  out: ;
  if ((ioc->debug_level & 256) != 0) {
    printk("\017mptsas: %s: %s - exit, query_count = %d termination_count = %d\n",
           (char *)(& ioc->name), "mptsas_broadcast_primative_work", query_count,
           termination_count);
  } else {
  }
  ioc->broadcast_aen_busy = 0U;
  mpt_clear_taskmgmt_in_progress_flag(ioc);
  ldv_mutex_unlock_65(& ioc->taskmgmt_cmds.mutex);
  if ((unsigned int )issue_reset != 0U) {
    tmp___2 = mpt_GetIocState(ioc, 0);
    printk("\fmptsas: %s: WARNING - Issuing Reset from %s!! doorbell=0x%08x\n", (char *)(& ioc->name),
           "mptsas_broadcast_primative_work", tmp___2);
    mpt_Soft_Hard_ResetHandler(ioc, 1);
  } else {
  }
  mptsas_free_fw_event(ioc, fw_event);
  return;
}
}
static void mptsas_send_ir2_event(struct fw_event_work *fw_event )
{
  MPT_ADAPTER *ioc ;
  struct mptsas_hotplug_event hot_plug_info ;
  MPI_EVENT_DATA_IR2 *ir2_data ;
  u8 reasonCode ;
  RaidPhysDiskPage0_t phys_disk ;
  {
  ioc = fw_event->ioc;
  ir2_data = (MPI_EVENT_DATA_IR2 *)(& fw_event->event_data);
  reasonCode = ir2_data->ReasonCode;
  if ((ioc->debug_level & 8) != 0) {
    printk("\017mptsas: %s: Entering %s: ReasonCode=%02x\n", (char *)(& ioc->name),
           "mptsas_send_ir2_event", (int )reasonCode);
  } else {
  }
  memset((void *)(& hot_plug_info), 0, 48UL);
  hot_plug_info.id = ir2_data->TargetID;
  hot_plug_info.channel = ir2_data->Bus;
  switch ((int )reasonCode) {
  case 6:
  hot_plug_info.event_type = 8;
  goto ldv_39326;
  case 9:
  hot_plug_info.phys_disk_num = ir2_data->PhysDiskNum;
  hot_plug_info.event_type = 6;
  goto ldv_39326;
  case 8:
  hot_plug_info.phys_disk_num = ir2_data->PhysDiskNum;
  mpt_raid_phys_disk_pg0(ioc, (int )ir2_data->PhysDiskNum, & phys_disk);
  hot_plug_info.id = phys_disk.PhysDiskID;
  hot_plug_info.event_type = 4;
  goto ldv_39326;
  default:
  mptsas_free_fw_event(ioc, fw_event);
  return;
  }
  ldv_39326:
  mptsas_hotplug_work(ioc, fw_event, & hot_plug_info);
  return;
}
}
static int mptsas_event_process(MPT_ADAPTER *ioc , EventNotificationReply_t *reply )
{
  u32 event ;
  int sz ;
  int event_data_sz ;
  struct fw_event_work *fw_event ;
  unsigned long delay ;
  EVENT_DATA_SAS_BROADCAST_PRIMITIVE *broadcast_event_data ;
  EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *sas_event_data ;
  u16 ioc_stat ;
  VirtTarget *vtarget ;
  u8 id ;
  u8 channel ;
  MpiEventDataSasExpanderStatusChange_t *expander_data ;
  u32 discovery_status ;
  EventDataSasDiscovery_t *discovery_data ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  event = reply->Event;
  if ((unsigned int )ioc->bus_type != 2U) {
    return (0);
  } else {
  }
  if ((unsigned int )ioc->fw_events_off != 0U) {
    return (0);
  } else {
  }
  delay = msecs_to_jiffies(1U);
  switch (event) {
  case 23U:
  broadcast_event_data = (EVENT_DATA_SAS_BROADCAST_PRIMITIVE *)(& reply->Data);
  if ((unsigned int )broadcast_event_data->Primitive != 4U) {
    return (0);
  } else {
  }
  if (ioc->broadcast_aen_busy != 0U) {
    return (0);
  } else {
  }
  ioc->broadcast_aen_busy = 1U;
  goto ldv_39341;
  case 15U:
  sas_event_data = (EVENT_DATA_SAS_DEVICE_STATUS_CHANGE *)(& reply->Data);
  ioc_stat = reply->IOCStatus;
  if ((unsigned int )sas_event_data->ReasonCode == 4U) {
    mptsas_target_reset_queue(ioc, sas_event_data);
    return (0);
  } else {
  }
  if (((unsigned int )sas_event_data->ReasonCode == 8U && (unsigned int )ioc->device_missing_delay != 0U) && (int )((short )ioc_stat) < 0) {
    vtarget = 0;
    id = sas_event_data->TargetID;
    channel = sas_event_data->Bus;
    vtarget = mptsas_find_vtarget(ioc, (int )channel, (int )id);
    if ((unsigned long )vtarget != (unsigned long )((VirtTarget *)0)) {
      if ((ioc->debug_level & 8) != 0) {
        printk("\017mptsas: %s: LogInfo (0x%x) available for INTERNAL_DEVICE_RESETfw_id %d fw_channel %d\n",
               (char *)(& ioc->name), reply->IOCLogInfo, (int )id, (int )channel);
      } else {
      }
      if ((unsigned int )vtarget->raidVolume != 0U) {
        if ((ioc->debug_level & 8) != 0) {
          printk("\017mptsas: %s: Skipping Raid Volume for inDMD\n", (char *)(& ioc->name));
        } else {
          if ((ioc->debug_level & 8) != 0) {
            printk("\017mptsas: %s: Setting device flag inDMD\n", (char *)(& ioc->name));
          } else {
          }
          vtarget->inDMD = 1U;
        }
      } else {
      }
    } else {
    }
  } else {
  }
  goto ldv_39341;
  case 27U:
  expander_data = (MpiEventDataSasExpanderStatusChange_t *)(& reply->Data);
  if ((unsigned int )ioc->old_sas_discovery_protocal != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )expander_data->ReasonCode == 1U && (unsigned int )ioc->device_missing_delay != 0U) {
    delay = (unsigned long )((int )ioc->device_missing_delay * 250);
  } else {
  }
  goto ldv_39341;
  case 22U:
  discovery_data = (EventDataSasDiscovery_t *)(& reply->Data);
  discovery_status = discovery_data->DiscoveryStatus;
  ioc->sas_discovery_quiesce_io = discovery_status != 0U;
  if ((unsigned int )ioc->old_sas_discovery_protocal != 0U && discovery_status == 0U) {
    mptsas_queue_rescan(ioc);
  } else {
  }
  return (0);
  case 11U: ;
  case 17U: ;
  case 21U: ;
  case 18U: ;
  case 14U: ;
  goto ldv_39341;
  default: ;
  return (0);
  }
  ldv_39341:
  event_data_sz = (int )(((unsigned int )reply->MsgLength + 1073741817U) * 4U);
  sz = (int )((unsigned int )event_data_sz + 248U);
  tmp = kzalloc((size_t )sz, 32U);
  fw_event = (struct fw_event_work *)tmp;
  if ((unsigned long )fw_event == (unsigned long )((struct fw_event_work *)0)) {
    printk("\fmptsas: %s: WARNING - %s: failed at (line=%d)\n", (char *)(& ioc->name),
           "mptsas_event_process", 5150);
    return (0);
  } else {
  }
  __len = (size_t )event_data_sz;
  __ret = memcpy((void *)(& fw_event->event_data), (void const *)(& reply->Data),
                           __len);
  fw_event->event = event;
  fw_event->ioc = ioc;
  mptsas_add_fw_event(ioc, fw_event, delay);
  return (0);
}
}
static void mptsas_volume_delete(MPT_ADAPTER *ioc , u8 id )
{
  struct scsi_device *sdev ;
  int i ;
  {
  sdev = scsi_device_lookup(ioc->sh, 1U, (uint )id, 0U);
  if ((unsigned long )sdev == (unsigned long )((struct scsi_device *)0)) {
    return;
  } else {
  }
  if ((unsigned long )ioc->raid_data.pIocPg2 == (unsigned long )((IOCPage2_t *)0)) {
    goto out;
  } else {
  }
  if ((unsigned int )(ioc->raid_data.pIocPg2)->NumActiveVolumes == 0U) {
    goto out;
  } else {
  }
  i = 0;
  goto ldv_39372;
  ldv_39371: ;
  if ((int )(ioc->raid_data.pIocPg2)->RaidVolume[i].VolumeID == (int )id) {
    goto release_sdev;
  } else {
  }
  i = i + 1;
  ldv_39372: ;
  if ((int )(ioc->raid_data.pIocPg2)->NumActiveVolumes > i) {
    goto ldv_39371;
  } else {
  }
  out:
  printk("\016mptsas: %s: removing raid volume, channel %d, id %d\n", (char *)(& ioc->name),
         1, (int )id);
  scsi_remove_device(sdev);
  release_sdev:
  scsi_device_put(sdev);
  return;
}
}
static int mptsas_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct Scsi_Host *sh ;
  MPT_SCSI_HOST *hd ;
  MPT_ADAPTER *ioc ;
  unsigned long flags ;
  int ii ;
  int numSGE ;
  int scale ;
  int ioc_cap ;
  int error ;
  int r ;
  void *tmp ;
  raw_spinlock_t *tmp___0 ;
  int __min1 ;
  int __min2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  {
  numSGE = 0;
  error = 0;
  r = mpt_attach(pdev, id);
  if (r != 0) {
    return (r);
  } else {
  }
  tmp = pci_get_drvdata(pdev);
  ioc = (MPT_ADAPTER *)tmp;
  mptsas_fw_event_off(ioc);
  ioc->DoneCtx = mptsasDoneCtx;
  ioc->TaskCtx = mptsasTaskCtx;
  ioc->InternalCtx = mptsasInternalCtx;
  ioc->schedule_target_reset = & mptsas_schedule_target_reset;
  ioc->schedule_dead_ioc_flush_running_cmds = & mptscsih_flush_running_cmds;
  if (ioc->last_state != 536870912U) {
    printk("\fmptsas: %s: WARNING - Skipping because it\'s not operational!\n", (char *)(& ioc->name));
    error = -19;
    goto out_mptsas_probe;
  } else {
  }
  if (ioc->active == 0) {
    printk("\fmptsas: %s: WARNING - Skipping because it\'s disabled!\n", (char *)(& ioc->name));
    error = -19;
    goto out_mptsas_probe;
  } else {
  }
  ioc_cap = 0;
  ii = 0;
  goto ldv_39390;
  ldv_39389: ;
  if (((int )ioc->pfacts[ii].ProtocolFlags & 8) != 0) {
    ioc_cap = ioc_cap + 1;
  } else {
  }
  ii = ii + 1;
  ldv_39390: ;
  if ((int )ioc->facts.NumberOfPorts > ii) {
    goto ldv_39389;
  } else {
  }
  if (ioc_cap == 0) {
    printk("\fmptsas: %s: WARNING - Skipping ioc=%p because SCSI Initiator mode is NOT enabled!\n",
           (char *)(& ioc->name), ioc);
    return (0);
  } else {
  }
  sh = scsi_host_alloc(& mptsas_driver_template, 560);
  if ((unsigned long )sh == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\fmptsas: %s: WARNING - Unable to register controller with SCSI subsystem\n",
           (char *)(& ioc->name));
    error = -1;
    goto out_mptsas_probe;
  } else {
  }
  tmp___0 = spinlock_check(& ioc->FreeQlock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  ioc->sh = sh;
  sh->io_port = 0UL;
  sh->n_io_port = 0U;
  sh->irq = 0U;
  sh->max_cmd_len = 16U;
  __min1 = ioc->req_depth + -10;
  __min2 = sh->can_queue;
  sh->can_queue = __min1 < __min2 ? __min1 : __min2;
  sh->max_id = 4294967295U;
  sh->max_lun = (unsigned int )max_lun;
  sh->transportt = mptsas_transport_template;
  sh->unique_id = (unsigned int )ioc->id;
  INIT_LIST_HEAD(& ioc->sas_topology);
  __mutex_init(& ioc->sas_topology_mutex, "&ioc->sas_topology_mutex", & __key);
  __mutex_init(& ioc->sas_discovery_mutex, "&ioc->sas_discovery_mutex", & __key___0);
  __mutex_init(& ioc->sas_mgmt.mutex, "&ioc->sas_mgmt.mutex", & __key___1);
  init_completion(& ioc->sas_mgmt.done);
  scale = ioc->req_sz / (int )ioc->SGE_size;
  if ((unsigned int )ioc->sg_addr_size == 8U) {
    numSGE = ((scale + -1) * ((int )ioc->facts.MaxChainDepth + -1) + scale) + (ioc->req_sz + -60) / (int )ioc->SGE_size;
  } else {
    numSGE = (((scale + -1) * ((int )ioc->facts.MaxChainDepth + -1) + 1) + scale) + (ioc->req_sz + -64) / (int )ioc->SGE_size;
  }
  if ((int )sh->sg_tablesize > numSGE) {
    if (ioc->debug_level & 1) {
      printk("\017mptsas: %s: Resetting sg_tablesize to %d from %d\n", (char *)(& ioc->name),
             numSGE, (int )sh->sg_tablesize);
    } else {
    }
    sh->sg_tablesize = (unsigned short )numSGE;
  } else {
  }
  if (mpt_loadtime_max_sectors != 0) {
    if (mpt_loadtime_max_sectors <= 63 || mpt_loadtime_max_sectors > 8192) {
      printk("\016mptsas: %s: Invalid value passed formpt_loadtime_max_sectors %d.Range from 64 to 8192\n",
             (char *)(& ioc->name), mpt_loadtime_max_sectors);
    } else {
    }
    mpt_loadtime_max_sectors = mpt_loadtime_max_sectors & -2;
    if (ioc->debug_level & 1) {
      printk("\017mptsas: %s: Resetting max sector to %d from %d\n", (char *)(& ioc->name),
             mpt_loadtime_max_sectors, (int )sh->max_sectors);
    } else {
    }
    sh->max_sectors = (unsigned short )mpt_loadtime_max_sectors;
  } else {
  }
  tmp___1 = shost_priv(sh);
  hd = (MPT_SCSI_HOST *)tmp___1;
  hd->ioc = ioc;
  tmp___2 = kcalloc((size_t )ioc->req_depth, 8UL, 32U);
  ioc->ScsiLookup = (struct scsi_cmnd **)tmp___2;
  if ((unsigned long )ioc->ScsiLookup == (unsigned long )((struct scsi_cmnd **)0)) {
    error = -12;
    spin_unlock_irqrestore(& ioc->FreeQlock, flags);
    goto out_mptsas_probe;
  } else {
  }
  spinlock_check(& ioc->scsi_lookup_lock);
  __raw_spin_lock_init(& ioc->scsi_lookup_lock.ldv_5961.rlock, "&(&ioc->scsi_lookup_lock)->rlock",
                       & __key___2);
  if (ioc->debug_level & 1) {
    printk("\017mptsas: %s: ScsiLookup @ %p\n", (char *)(& ioc->name), ioc->ScsiLookup);
  } else {
  }
  ioc->sas_data.ptClear = (u8 )mpt_pt_clear;
  hd->last_queue_full = 0L;
  INIT_LIST_HEAD(& hd->target_reset_list);
  INIT_LIST_HEAD(& ioc->sas_device_info_list);
  __mutex_init(& ioc->sas_device_info_mutex, "&ioc->sas_device_info_mutex", & __key___3);
  spin_unlock_irqrestore(& ioc->FreeQlock, flags);
  if ((unsigned int )ioc->sas_data.ptClear == 1U) {
    mptbase_sas_persist_operation(ioc, 2);
  } else {
  }
  error = scsi_add_host(sh, & (ioc->pcidev)->dev);
  if (error != 0) {
    if (ioc->debug_level & 1) {
      printk("\vmptsas: %s: ERROR - scsi_add_host failed\n", (char *)(& ioc->name));
    } else {
    }
    goto out_mptsas_probe;
  } else {
  }
  if ((unsigned int )((int )ioc->facts.HeaderVersion >> 8) <= 13U) {
    ioc->old_sas_discovery_protocal = 1U;
  } else {
  }
  mptsas_scan_sas_topology(ioc);
  mptsas_fw_event_on(ioc);
  return (0);
  out_mptsas_probe:
  mptscsih_remove(pdev);
  return (error);
}
}
void mptsas_shutdown(struct pci_dev *pdev )
{
  MPT_ADAPTER *ioc ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  ioc = (MPT_ADAPTER *)tmp;
  mptsas_fw_event_off(ioc);
  mptsas_cleanup_fw_event_q(ioc);
  return;
}
}
static void mptsas_remove(struct pci_dev *pdev )
{
  MPT_ADAPTER *ioc ;
  void *tmp ;
  struct mptsas_portinfo *p ;
  struct mptsas_portinfo *n ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  ioc = (MPT_ADAPTER *)tmp;
  if ((unsigned long )ioc->sh == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\016mptsas: %s: IOC is in Target mode\n", (char *)(& ioc->name));
    mpt_detach(pdev);
    return;
  } else {
  }
  mptsas_shutdown(pdev);
  mptsas_del_device_components(ioc);
  ioc->sas_discovery_ignore_events = 1U;
  sas_remove_host(ioc->sh);
  ldv_mutex_lock_66(& ioc->sas_topology_mutex);
  __mptr = (struct list_head const *)ioc->sas_topology.next;
  p = (struct mptsas_portinfo *)__mptr;
  __mptr___0 = (struct list_head const *)p->list.next;
  n = (struct mptsas_portinfo *)__mptr___0;
  goto ldv_39424;
  ldv_39423:
  list_del(& p->list);
  i = 0;
  goto ldv_39421;
  ldv_39420:
  mptsas_port_delete(ioc, (p->phy_info + (unsigned long )i)->port_details);
  i = i + 1;
  ldv_39421: ;
  if ((int )p->num_phys > i) {
    goto ldv_39420;
  } else {
  }
  kfree((void const *)p->phy_info);
  kfree((void const *)p);
  p = n;
  __mptr___1 = (struct list_head const *)n->list.next;
  n = (struct mptsas_portinfo *)__mptr___1;
  ldv_39424: ;
  if ((unsigned long )(& p->list) != (unsigned long )(& ioc->sas_topology)) {
    goto ldv_39423;
  } else {
  }
  ldv_mutex_unlock_67(& ioc->sas_topology_mutex);
  ioc->hba_port_info = 0;
  mptscsih_remove(pdev);
  return;
}
}
static struct pci_device_id mptsas_pci_table[7U] = { {4096U, 80U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 84U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 86U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 88U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 98U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 89U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver mptsas_driver =
     {{0, 0}, "mptsas", (struct pci_device_id const *)(& mptsas_pci_table), & mptsas_probe,
    & mptsas_remove, & mptscsih_suspend, 0, 0, & mptscsih_resume, & mptsas_shutdown,
    0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}};
static int mptsas_init(void)
{
  int error ;
  {
  printk("\016%s %s\n", (char *)"Fusion MPT SAS Host driver", (char *)"3.04.20");
  mptsas_transport_template = sas_attach_transport(& mptsas_transport_functions);
  if ((unsigned long )mptsas_transport_template == (unsigned long )((struct scsi_transport_template *)0)) {
    return (-19);
  } else {
  }
  mptsas_transport_template->eh_timed_out = & mptsas_eh_timed_out;
  mptsasDoneCtx = mpt_register(& mptscsih_io_done, 4, (char *)"mptscsih_io_done");
  mptsasTaskCtx = mpt_register(& mptscsih_taskmgmt_complete, 4, (char *)"mptscsih_taskmgmt_complete");
  mptsasInternalCtx = mpt_register(& mptscsih_scandv_complete, 4, (char *)"mptscsih_scandv_complete");
  mptsasMgmtCtx = mpt_register(& mptsas_mgmt_done, 4, (char *)"mptsas_mgmt_done");
  mptsasDeviceResetCtx = mpt_register(& mptsas_taskmgmt_complete, 4, (char *)"mptsas_taskmgmt_complete");
  mpt_event_register((int )mptsasDoneCtx, & mptsas_event_process);
  mpt_reset_register((int )mptsasDoneCtx, & mptsas_ioc_reset);
  error = __pci_register_driver(& mptsas_driver, & __this_module, "mptsas");
  if (error != 0) {
    sas_release_transport(mptsas_transport_template);
  } else {
  }
  return (error);
}
}
static void mptsas_exit(void)
{
  {
  pci_unregister_driver(& mptsas_driver);
  sas_release_transport(mptsas_transport_template);
  mpt_reset_deregister((int )mptsasDoneCtx);
  mpt_event_deregister((int )mptsasDoneCtx);
  mpt_deregister((int )mptsasMgmtCtx);
  mpt_deregister((int )mptsasInternalCtx);
  mpt_deregister((int )mptsasTaskCtx);
  mpt_deregister((int )mptsasDoneCtx);
  mpt_deregister((int )mptsasDeviceResetCtx);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct scsi_target *var_group1 ;
  struct scsi_device *var_group2 ;
  struct sas_phy *var_group3 ;
  struct sas_rphy *var_group4 ;
  u64 *var_mptsas_get_enclosure_identifier_53_p1 ;
  int var_mptsas_phy_reset_52_p1 ;
  struct Scsi_Host *var_group5 ;
  struct request *var_mptsas_smp_handler_55_p2 ;
  struct pci_dev *var_group6 ;
  struct pci_device_id const *var_mptsas_probe_91_p1 ;
  int res_mptsas_probe_91 ;
  int ldv_s_mptsas_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_mptsas_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = mptsas_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_39491;
  ldv_39490:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  mptsas_target_alloc(var_group1);
  goto ldv_39476;
  case 1:
  ldv_handler_precall();
  mptsas_slave_alloc(var_group2);
  goto ldv_39476;
  case 2:
  ldv_handler_precall();
  mptsas_slave_configure(var_group2);
  goto ldv_39476;
  case 3:
  ldv_handler_precall();
  mptsas_target_destroy(var_group1);
  goto ldv_39476;
  case 4:
  ldv_handler_precall();
  mptsas_get_linkerrors(var_group3);
  goto ldv_39476;
  case 5:
  ldv_handler_precall();
  mptsas_get_enclosure_identifier(var_group4, var_mptsas_get_enclosure_identifier_53_p1);
  goto ldv_39476;
  case 6:
  ldv_handler_precall();
  mptsas_get_bay_identifier(var_group4);
  goto ldv_39476;
  case 7:
  ldv_handler_precall();
  mptsas_phy_reset(var_group3, var_mptsas_phy_reset_52_p1);
  goto ldv_39476;
  case 8:
  ldv_handler_precall();
  mptsas_smp_handler(var_group5, var_group4, var_mptsas_smp_handler_55_p2);
  goto ldv_39476;
  case 9: ;
  if (ldv_s_mptsas_driver_pci_driver == 0) {
    res_mptsas_probe_91 = mptsas_probe(var_group6, var_mptsas_probe_91_p1);
    ldv_check_return_value(res_mptsas_probe_91);
    ldv_check_return_value_probe(res_mptsas_probe_91);
    if (res_mptsas_probe_91 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_mptsas_driver_pci_driver = ldv_s_mptsas_driver_pci_driver + 1;
  } else {
  }
  goto ldv_39476;
  case 10: ;
  if (ldv_s_mptsas_driver_pci_driver == 1) {
    ldv_handler_precall();
    mptsas_remove(var_group6);
    ldv_s_mptsas_driver_pci_driver = 0;
  } else {
  }
  goto ldv_39476;
  case 11:
  ldv_handler_precall();
  mptsas_shutdown(var_group6);
  goto ldv_39476;
  default: ;
  goto ldv_39476;
  }
  ldv_39476: ;
  ldv_39491:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_mptsas_driver_pci_driver != 0) {
    goto ldv_39490;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  mptsas_exit();
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
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_28(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___26 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_35(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___33 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_39(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___37 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_device_info_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_device_info_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_66(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_sas_topology_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_67(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_sas_topology_mutex(ldv_func_arg1);
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
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
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
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
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
{
  int nondetermined ;
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
{
  int is_mutex_held_by_another_thread ;
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
{
  int atomic_value_after_dec ;
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
{
  int nondetermined ;
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
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
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
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
static int ldv_mutex_sas_device_info_mutex ;
int ldv_mutex_lock_interruptible_sas_device_info_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_sas_device_info_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_sas_device_info_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_sas_device_info_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_sas_device_info_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_sas_device_info_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_sas_device_info_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_sas_device_info_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_sas_device_info_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_sas_device_info_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_sas_device_info_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_device_info_mutex == 1) {
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
void ldv_mutex_unlock_sas_device_info_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_sas_device_info_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_sas_device_info_mutex = 1;
  return;
}
}
static int ldv_mutex_sas_topology_mutex ;
int ldv_mutex_lock_interruptible_sas_topology_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_sas_topology_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_sas_topology_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_sas_topology_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_sas_topology_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_sas_topology_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_sas_topology_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_sas_topology_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_sas_topology_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_sas_topology_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_sas_topology_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_sas_topology_mutex == 1) {
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
void ldv_mutex_unlock_sas_topology_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_sas_topology_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_sas_topology_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_sas_device_info_mutex = 1;
  ldv_mutex_sas_topology_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_sas_device_info_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_sas_topology_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
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
struct scsi_device *__scsi_iterate_devices(struct Scsi_Host *arg0, struct scsi_device *arg1) {
  return ldv_malloc(sizeof(struct scsi_device));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_reprobe(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void int_to_scsilun(unsigned int arg0, struct scsi_lun *arg1) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
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
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 mpt_GetIocState(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int mpt_Soft_Hard_ResetHandler(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_attach(struct pci_dev *arg0, const struct pci_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void mpt_clear_taskmgmt_in_progress_flag(MPT_ADAPTER *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_config(MPT_ADAPTER *arg0, CONFIGPARMS *arg1) {
  return __VERIFIER_nondet_int();
}
void mpt_deregister(u8 arg0) {
  return;
}
void mpt_detach(struct pci_dev *arg0) {
  return;
}
void mpt_event_deregister(u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_event_register(u8 arg0, int (*arg1)(MPT_ADAPTER *, EventNotificationReply_t *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_findImVolumes(MPT_ADAPTER *arg0) {
  return __VERIFIER_nondet_int();
}
void mpt_free_msg_frame(MPT_ADAPTER *arg0, MPT_FRAME_HDR *arg1) {
  return;
}
MPT_FRAME_HDR *mpt_get_msg_frame(u8 arg0, MPT_ADAPTER *arg1) {
  return ldv_malloc(sizeof(MPT_FRAME_HDR));
}
void mpt_put_msg_frame(u8 arg0, MPT_ADAPTER *arg1, MPT_FRAME_HDR *arg2) {
  return;
}
void mpt_put_msg_frame_hi_pri(u8 arg0, MPT_ADAPTER *arg1, MPT_FRAME_HDR *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_raid_phys_disk_get_num_paths(MPT_ADAPTER *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_raid_phys_disk_pg0(MPT_ADAPTER *arg0, u8 arg1, pRaidPhysDiskPage0_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_raid_phys_disk_pg1(MPT_ADAPTER *arg0, u8 arg1, pRaidPhysDiskPage1_t arg2) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 mpt_register(int (*arg0)(MPT_ADAPTER *, MPT_FRAME_HDR *, MPT_FRAME_HDR *), MPT_DRIVER_CLASS arg1, char *arg2) {
  return __VERIFIER_nondet_uchar();
}
void mpt_reset_deregister(u8 arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mpt_reset_register(u8 arg0, int (*arg1)(MPT_ADAPTER *, int)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mpt_set_taskmgmt_in_progress_flag(MPT_ADAPTER *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mptbase_sas_persist_operation(MPT_ADAPTER *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
struct scsi_cmnd *mptscsih_get_scsi_lookup(MPT_ADAPTER *arg0, int arg1) {
  return ldv_malloc(sizeof(struct scsi_cmnd));
}
int __VERIFIER_nondet_int(void);
int mptscsih_ioc_reset(MPT_ADAPTER *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mptscsih_is_phys_disk(MPT_ADAPTER *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mptscsih_qcmd(struct scsi_cmnd *arg0, void (*arg1)(struct scsi_cmnd *)) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 mptscsih_raid_id_to_num(MPT_ADAPTER *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_uchar();
}
void mptscsih_remove(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mptscsih_slave_configure(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void mptscsih_taskmgmt_response_code(MPT_ADAPTER *arg0, u8 arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
struct scsi_transport_template *sas_attach_transport(struct sas_function_template *arg0) {
  return ldv_malloc(sizeof(struct scsi_transport_template));
}
struct sas_rphy *sas_end_device_alloc(struct sas_port *arg0) {
  return ldv_malloc(sizeof(struct sas_rphy));
}
struct sas_rphy *sas_expander_alloc(struct sas_port *arg0, enum sas_device_type arg1) {
  return ldv_malloc(sizeof(struct sas_rphy));
}
int __VERIFIER_nondet_int(void);
int sas_phy_add(struct sas_phy *arg0) {
  return __VERIFIER_nondet_int();
}
struct sas_phy *sas_phy_alloc(struct device *arg0, int arg1) {
  return ldv_malloc(sizeof(struct sas_phy));
}
void sas_phy_free(struct sas_phy *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sas_port_add(struct sas_port *arg0) {
  return __VERIFIER_nondet_int();
}
void sas_port_add_phy(struct sas_port *arg0, struct sas_phy *arg1) {
  return;
}
struct sas_port *sas_port_alloc_num(struct device *arg0) {
  return ldv_malloc(sizeof(struct sas_port));
}
void sas_port_delete(struct sas_port *arg0) {
  return;
}
void sas_port_delete_phy(struct sas_port *arg0, struct sas_phy *arg1) {
  return;
}
void sas_port_mark_backlink(struct sas_port *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sas_read_port_mode_page(struct scsi_device *arg0) {
  return __VERIFIER_nondet_int();
}
void sas_release_transport(struct scsi_transport_template *arg0) {
  return;
}
void sas_remove_host(struct Scsi_Host *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int sas_rphy_add(struct sas_rphy *arg0) {
  return __VERIFIER_nondet_int();
}
void sas_rphy_free(struct sas_rphy *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
struct scsi_device *scsi_device_lookup(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return ldv_malloc(sizeof(struct scsi_device));
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_device_set_state(struct scsi_device *arg0, enum scsi_device_state arg1) {
  return __VERIFIER_nondet_int();
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
int __VERIFIER_nondet_int(void);
int scsi_is_host_device(const struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_is_sas_rphy(const struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_print_command(struct scsi_cmnd *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_track_queue_full(struct scsi_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void starget_for_each_device(struct scsi_target *arg0, void *arg1, void (*arg2)(struct scsi_device *, void *)) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
