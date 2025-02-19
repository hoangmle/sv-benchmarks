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
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_7 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_7 atomic_t;
struct __anonstruct_atomic64_t_8 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_8 atomic64_t;
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
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head *head ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct completion;
struct pt_regs;
struct pid;
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_11 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_12 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_13 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_10 {
   struct __anonstruct_futex_11 futex ;
   struct __anonstruct_nanosleep_12 nanosleep ;
   struct __anonstruct_poll_13 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_10 __annonCompField4 ;
};
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
struct __anonstruct____missing_field_name_15 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_16 {
   u16 limit0 ;
   u16 base0 ;
   unsigned int base1 : 8 ;
   unsigned int type : 4 ;
   unsigned int s : 1 ;
   unsigned int dpl : 2 ;
   unsigned int p : 1 ;
   unsigned int limit : 4 ;
   unsigned int avl : 1 ;
   unsigned int l : 1 ;
   unsigned int d : 1 ;
   unsigned int g : 1 ;
   unsigned int base2 : 8 ;
};
union __anonunion____missing_field_name_14 {
   struct __anonstruct____missing_field_name_15 __annonCompField5 ;
   struct __anonstruct____missing_field_name_16 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_14 __annonCompField7 ;
} __attribute__((__packed__)) ;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_20 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_20 pgd_t;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct cpumask;
struct arch_spinlock;
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
union __anonunion____missing_field_name_24 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_24 __annonCompField8 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[((4096UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct map_segment;
struct exec_domain {
   char *name ;
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
   u32 st_space[20] ;
   u32 status ;
};
struct __anonstruct____missing_field_name_31 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_32 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_30 {
   struct __anonstruct____missing_field_name_31 __annonCompField12 ;
   struct __anonstruct____missing_field_name_32 __annonCompField13 ;
};
union __anonunion____missing_field_name_33 {
   u32 padding1[12] ;
   u32 sw_reserved[12] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_30 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32] ;
   u32 xmm_space[64] ;
   u32 padding[12] ;
   union __anonunion____missing_field_name_33 __annonCompField15 ;
} __attribute__((__aligned__(16))) ;
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20] ;
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
   u32 ymmh_space[64] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2] ;
   u64 reserved2[5] ;
} __attribute__((__packed__)) ;
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
} __attribute__((__packed__, __aligned__(64))) ;
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
   struct desc_struct tls_array[3] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4] ;
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
struct __anonstruct_mm_segment_t_35 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_35 mm_segment_t;
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
   unsigned int sig_on_uaccess_error : 1 ;
   unsigned int uaccess_err : 1 ;
};
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
struct __anonstruct____missing_field_name_38 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_37 {
   s64 lock ;
   struct __anonstruct____missing_field_name_38 __annonCompField18 ;
};
typedef union __anonunion_arch_rwlock_t_37 arch_rwlock_t;
struct lock_class_key {
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct raw_spinlock raw_spinlock_t;
union __anonunion____missing_field_name_39 {
   struct raw_spinlock rlock ;
};
struct spinlock {
   union __anonunion____missing_field_name_39 __annonCompField19 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_40 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
};
typedef struct __anonstruct_rwlock_t_40 rwlock_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t *wait , unsigned int mode , int flags , void *key ) ;
   struct list_head task_list ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_42 {
   unsigned long bits[(((unsigned long )(1 << 10) + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
typedef struct __anonstruct_nodemask_t_42 nodemask_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char *name ;
   void *magic ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct notifier_block;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
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
   char start_comm[16] ;
};
struct hrtimer;
enum hrtimer_restart;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct *work ) ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
};
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device *dev ) ;
   void (*complete)(struct device *dev ) ;
   int (*suspend)(struct device *dev ) ;
   int (*resume)(struct device *dev ) ;
   int (*freeze)(struct device *dev ) ;
   int (*thaw)(struct device *dev ) ;
   int (*poweroff)(struct device *dev ) ;
   int (*restore)(struct device *dev ) ;
   int (*suspend_late)(struct device *dev ) ;
   int (*resume_early)(struct device *dev ) ;
   int (*freeze_late)(struct device *dev ) ;
   int (*thaw_early)(struct device *dev ) ;
   int (*poweroff_late)(struct device *dev ) ;
   int (*restore_early)(struct device *dev ) ;
   int (*suspend_noirq)(struct device *dev ) ;
   int (*resume_noirq)(struct device *dev ) ;
   int (*freeze_noirq)(struct device *dev ) ;
   int (*thaw_noirq)(struct device *dev ) ;
   int (*poweroff_noirq)(struct device *dev ) ;
   int (*restore_noirq)(struct device *dev ) ;
   int (*runtime_suspend)(struct device *dev ) ;
   int (*runtime_resume)(struct device *dev ) ;
   int (*runtime_idle)(struct device *dev ) ;
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
struct dev_pm_qos_request;
struct pm_qos_raints;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned int disable_depth : 3 ;
   unsigned int idle_notification : 1 ;
   unsigned int request_pending : 1 ;
   unsigned int deferred_resume : 1 ;
   unsigned int run_wake : 1 ;
   unsigned int runtime_auto : 1 ;
   unsigned int no_callbacks : 1 ;
   unsigned int irq_safe : 1 ;
   unsigned int use_autosuspend : 1 ;
   unsigned int timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   ktime_t suspend_time ;
   s64 max_time_suspended_ns ;
   struct dev_pm_qos_request *pq_req ;
   struct pm_subsys_data *subsys_data ;
   struct pm_qos_raints *raints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
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
   void *(*netlink_ns)(struct sock *sk ) ;
   void *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
enum kobj_ns_type;
struct attribute {
   char *name ;
   umode_t mode ;
};
struct attribute_group {
   char *name ;
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
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char * , size_t ) ;
   void *(*namespace)(struct kobject * , struct attribute * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations *(*child_ns_type)(struct kobject *kobj ) ;
   void *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* filter)(struct kset *kset , struct kobject *kobj ) ;
   char *(* name)(struct kset *kset , struct kobject *kobj ) ;
   int (* uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char *val , struct kernel_param *kp ) ;
   int (*get)(char *buffer , struct kernel_param *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string *str ;
   struct kparam_array *arr ;
};
struct kernel_param {
   char *name ;
   struct kernel_param_ops *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_199 __annonCompField32 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops *ops ;
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
   char *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char *name ;
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
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char * ,
                    size_t count ) ;
   void (*setup)(struct module * , char * ) ;
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
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[64UL - sizeof(unsigned long )] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char *version ;
   char *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol *syms ;
   unsigned long *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol *gpl_syms ;
   unsigned long *gpl_crcs ;
   struct kernel_symbol *unused_syms ;
   unsigned long *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol *unused_gpl_syms ;
   unsigned long *unused_gpl_crcs ;
   struct kernel_symbol *gpl_future_syms ;
   unsigned long *gpl_future_crcs ;
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
   struct tracepoint * *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
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
union __anonunion____missing_field_name_202 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_206 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_205 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_206 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_204 {
   union __anonunion____missing_field_name_205 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_203 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_204 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_201 {
   union __anonunion____missing_field_name_202 __annonCompField33 ;
   union __anonunion____missing_field_name_203 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_208 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_207 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_208 __annonCompField39 ;
};
union __anonunion____missing_field_name_209 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_201 __annonCompField38 ;
   union __anonunion____missing_field_name_207 __annonCompField40 ;
   union __anonunion____missing_field_name_209 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_211 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_210 {
   struct __anonstruct_vm_set_211 vm_set ;
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
   union __anonunion_shared_210 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct *vm_ops ;
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
   atomic_long_t count[3] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file *filp , unsigned long addr , unsigned long len ,
                                      unsigned long pgoff , unsigned long flags ) ;
   void (*unmap_area)(struct mm_struct *mm , unsigned long addr ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
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
   unsigned long saved_auxv[44] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
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
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control *sc ) ;
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
   void (*open)(struct vm_area_struct *area ) ;
   void (*close)(struct vm_area_struct *area ) ;
   int (*fault)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*page_mkwrite)(struct vm_area_struct *vma , struct vm_fault *vmf ) ;
   int (*access)(struct vm_area_struct *vma , unsigned long addr , void *buf , int len ,
                 int write ) ;
   int (*set_policy)(struct vm_area_struct *vma , struct mempolicy *new ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct *vma , unsigned long addr ) ;
   int (*migrate)(struct vm_area_struct *vma , nodemask_t *from , nodemask_t *to ,
                  unsigned long flags ) ;
};
struct inode;
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   int node ;
   unsigned int stat[26] ;
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
   char *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct tty_struct;
struct tty_driver;
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
struct of_device_id {
   char name[32] ;
   char type[32] ;
   char compatible[128] ;
   void *data ;
};
struct dmi_strmatch {
   unsigned char slot ;
   char substr[79] ;
};
struct dmi_system_id {
   int (*callback)(struct dmi_system_id * ) ;
   char *ident ;
   struct dmi_strmatch matches[4] ;
   void *driver_data ;
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
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char *buf , size_t count ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char *name ;
   char *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct device_driver {
   char *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group **groups ;
   struct dev_pm_ops *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*class_release)(struct class *class ) ;
   void (*dev_release)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct kobj_ns_type_operations *ns_type ;
   void *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char *buf ,
                    size_t count ) ;
   void *(*namespace)(struct class *class , struct class_attribute *attr ) ;
};
struct device_type {
   char *name ;
   struct attribute_group **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char *buf ,
                    size_t count ) ;
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
   char *init_name ;
   struct device_type *type ;
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
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group **groups ;
   void (*release)(struct device *dev ) ;
};
struct wakeup_source {
   char *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_215 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_215 sigset_t;
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
struct __anonstruct__kill_217 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_218 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_219 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_220 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_221 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_222 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_216 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_217 _kill ;
   struct __anonstruct__timer_218 _timer ;
   struct __anonstruct__rt_219 _rt ;
   struct __anonstruct__sigchld_220 _sigchld ;
   struct __anonstruct__sigfault_221 _sigfault ;
   struct __anonstruct__sigpoll_222 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_216 _sifields ;
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
   struct hlist_head tasks[3] ;
   struct rcu_head rcu ;
   struct upid numbers[1] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct __anonstruct_seccomp_t_225 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_225 seccomp_t;
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
   char start_comm[16] ;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3] ;
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
   unsigned long backtrace[12] ;
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
struct key_user;
union __anonunion____missing_field_name_226 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_227 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_228 {
   unsigned long value ;
   void *rcudata ;
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
   union __anonunion____missing_field_name_226 __annonCompField42 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_227 type_data ;
   union __anonunion_payload_228 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   gid_t small_block[32] ;
   gid_t *blocks[0] ;
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
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
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
union __anonunion_ki_obj_230 {
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
   union __anonunion_ki_obj_230 ki_obj ;
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
   struct page *internal_pages[8] ;
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
   struct k_sigaction action[64] ;
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
   raw_spinlock_t lock ;
};
struct autogroup;
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
   unsigned int is_child_subreaper : 1 ;
   unsigned int has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3] ;
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
   struct rlimit rlim[16] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   int oom_adj ;
   int oom_score_adj ;
   int oom_score_adj_min ;
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
   uid_t uid ;
   struct user_namespace *user_ns ;
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
   struct sched_class *next ;
   void (*enqueue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*dequeue_task)(struct rq *rq , struct task_struct *p , int flags ) ;
   void (*yield_task)(struct rq *rq ) ;
   bool (*yield_to_task)(struct rq *rq , struct task_struct *p , bool preempt ) ;
   void (*check_preempt_curr)(struct rq *rq , struct task_struct *p , int flags ) ;
   struct task_struct *(*pick_next_task)(struct rq *rq ) ;
   void (*put_prev_task)(struct rq *rq , struct task_struct *p ) ;
   int (*select_task_rq)(struct task_struct *p , int sd_flag , int flags ) ;
   void (*pre_schedule)(struct rq *this_rq , struct task_struct *task ) ;
   void (*post_schedule)(struct rq *this_rq ) ;
   void (*task_waking)(struct task_struct *task ) ;
   void (*task_woken)(struct rq *this_rq , struct task_struct *task ) ;
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask *newmask ) ;
   void (*rq_online)(struct rq *rq ) ;
   void (*rq_offline)(struct rq *rq ) ;
   void (*set_curr_task)(struct rq *rq ) ;
   void (*task_tick)(struct rq *rq , struct task_struct *p , int queued ) ;
   void (*task_fork)(struct task_struct *p ) ;
   void (*switched_from)(struct rq *this_rq , struct task_struct *task ) ;
   void (*switched_to)(struct rq *this_rq , struct task_struct *task ) ;
   void (*prio_changed)(struct rq *this_rq , struct task_struct *task , int oldprio ) ;
   unsigned int (*get_rr_interval)(struct rq *rq , struct task_struct *task ) ;
   void (*task_move_group)(struct task_struct *p , int on_rq ) ;
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
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct mem_cgroup;
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
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
   struct sched_class *sched_class ;
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
   unsigned int brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int did_exec : 1 ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   unsigned int irq_thread : 1 ;
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
   struct pid_link pids[3] ;
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
   struct list_head cpu_timers[3] ;
   struct cred *real_cred ;
   struct cred *cred ;
   struct cred *replacement_session_keyring ;
   char comm[16] ;
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
   int (*notifier)(void *priv ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct audit_context *audit_context ;
   uid_t loginuid ;
   unsigned int sessionid ;
   seccomp_t seccomp ;
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
   struct perf_event_context *perf_event_ctxp[2] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   struct rcu_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   struct list_head *scm_work_list ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
struct device_node {
   char *name ;
   char *type ;
   phandle phandle ;
   char *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct serial_icounter_struct {
   int cts ;
   int dsr ;
   int rng ;
   int dcd ;
   int rx ;
   int tx ;
   int frame ;
   int overrun ;
   int parity ;
   int brk ;
   int buf_overrun ;
   int reserved[9] ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct block_device;
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
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_240 {
   struct list_head d_child ;
   struct rcu_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_240 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
   int (*d_hash)(struct dentry * , struct inode * , struct qstr * ) ;
   int (*d_compare)(struct dentry * , struct inode * , struct dentry const * ,
                    struct inode * , unsigned int , char * , struct qstr const * ) ;
   int (*d_delete)(struct dentry * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
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
   __u64 fe_reserved64[2] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct export_operations;
struct poll_table_struct;
struct kstatfs;
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
   char d_padding4[8] ;
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
   int (*check_quota_file)(struct super_block *sb , int type ) ;
   int (*read_file_info)(struct super_block *sb , int type ) ;
   int (*write_file_info)(struct super_block *sb , int type ) ;
   int (*free_file_info)(struct super_block *sb , int type ) ;
   int (*read_dqblk)(struct dquot *dquot ) ;
   int (*commit_dqblk)(struct dquot *dquot ) ;
   int (*release_dqblk)(struct dquot *dquot ) ;
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
   struct quota_format_ops *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2] ;
   struct mem_dqinfo info[2] ;
   struct quota_format_ops *ops[2] ;
};
union __anonunion_arg_247 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_246 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_247 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_246 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page *page , struct writeback_control *wbc ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page *page ) ;
   int (*readpages)(struct file *filp , struct address_space *mapping , struct list_head *pages ,
                    unsigned int nr_pages ) ;
   int (*write_begin)(struct file * , struct address_space *mapping , loff_t pos ,
                      unsigned int len , unsigned int flags , struct page **pagep ,
                      void **fsdata ) ;
   int (*write_end)(struct file * , struct address_space *mapping , loff_t pos , unsigned int len ,
                    unsigned int copied , struct page *page , void *fsdata ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec *iov , loff_t offset ,
                        unsigned long nr_segs ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct prio_tree_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   struct address_space *assoc_mapping ;
} __attribute__((__aligned__(sizeof(long )))) ;
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
union __anonunion____missing_field_name_248 {
   unsigned int i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_249 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_250 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   uid_t i_uid ;
   gid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_248 __annonCompField44 ;
   dev_t i_rdev ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   blkcnt_t i_blocks ;
   loff_t i_size ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_249 __annonCompField45 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_250 __annonCompField46 ;
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
union __anonunion_f_u_251 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_251 f_u ;
   struct path f_path ;
   struct file_operations *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred *f_cred ;
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
   void (*lm_release_private)(struct file_lock * ) ;
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
struct __anonstruct_afs_253 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_252 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_253 afs ;
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
   struct file_lock_operations *fl_ops ;
   struct lock_manager_operations *fl_lmops ;
   union __anonunion_fl_u_252 fl_u ;
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
   struct super_operations *s_op ;
   struct dquot_operations *dq_op ;
   struct quotactl_ops *s_qcop ;
   struct export_operations *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   struct mutex s_lock ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock __attribute__((__aligned__((1) << (6) ))) ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   int s_frozen ;
   wait_queue_head_t s_wait_unfrozen ;
   char s_id[32] ;
   u8 s_uuid[16] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations *s_d_op ;
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
   ssize_t (*write)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t id ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int datasync ) ;
   int (*aio_fsync)(struct kiocb * , int datasync ) ;
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
   long (*fallocate)(struct file *file , int mode , loff_t offset , loff_t len ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char * , void * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 start , u64 len ) ;
} __attribute__((__aligned__((1) << (6) ))) ;
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block *sb ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int flags ) ;
   int (*write_inode)(struct inode * , struct writeback_control *wbc ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block *sb , int wait ) ;
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
   ssize_t (*quota_write)(struct super_block * , int , char * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19] ;
   speed_t c_ispeed ;
   speed_t c_ospeed ;
};
struct winsize {
   unsigned short ws_row ;
   unsigned short ws_col ;
   unsigned short ws_xpixel ;
   unsigned short ws_ypixel ;
};
struct termiox {
   __u16 x_hflag ;
   __u16 x_cflag ;
   __u16 x_rflag[5] ;
   __u16 x_sflag ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver *driver , struct inode *inode ,
                                int idx ) ;
   int (*install)(struct tty_driver *driver , struct tty_struct *tty ) ;
   void (*remove)(struct tty_driver *driver , struct tty_struct *tty ) ;
   int (*open)(struct tty_struct *tty , struct file *filp ) ;
   void (*close)(struct tty_struct *tty , struct file *filp ) ;
   void (*shutdown)(struct tty_struct *tty ) ;
   void (*cleanup)(struct tty_struct *tty ) ;
   int (*write)(struct tty_struct *tty , unsigned char *buf , int count ) ;
   int (*put_char)(struct tty_struct *tty , unsigned char ch ) ;
   void (*flush_chars)(struct tty_struct *tty ) ;
   int (*write_room)(struct tty_struct *tty ) ;
   int (*chars_in_buffer)(struct tty_struct *tty ) ;
   int (*ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   void (*throttle)(struct tty_struct *tty ) ;
   void (*unthrottle)(struct tty_struct *tty ) ;
   void (*stop)(struct tty_struct *tty ) ;
   void (*start)(struct tty_struct *tty ) ;
   void (*hangup)(struct tty_struct *tty ) ;
   int (*break_ctl)(struct tty_struct *tty , int state ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   void (*set_ldisc)(struct tty_struct *tty ) ;
   void (*wait_until_sent)(struct tty_struct *tty , int timeout ) ;
   void (*send_xchar)(struct tty_struct *tty , char ch ) ;
   int (*tiocmget)(struct tty_struct *tty ) ;
   int (*tiocmset)(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
   int (*resize)(struct tty_struct *tty , struct winsize *ws ) ;
   int (*set_termiox)(struct tty_struct *tty , struct termiox *tnew ) ;
   int (*get_icount)(struct tty_struct *tty , struct serial_icounter_struct *icount ) ;
   int (*poll_init)(struct tty_driver *driver , int line , char *options ) ;
   int (*poll_get_char)(struct tty_driver *driver , int line ) ;
   void (*poll_put_char)(struct tty_driver *driver , int line , char ch ) ;
   struct file_operations *proc_fops ;
};
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev cdev ;
   struct module *owner ;
   char *driver_name ;
   char *name ;
   int name_base ;
   int major ;
   int minor_start ;
   int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   int flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations *ops ;
   struct list_head tty_drivers ;
};
struct pps_event_time {
   struct timespec ts_real ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct *tty ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct *tty ) ;
   ssize_t (*read)(struct tty_struct *tty , struct file *file , unsigned char *buf ,
                   size_t nr ) ;
   ssize_t (*write)(struct tty_struct *tty , struct file *file , unsigned char *buf ,
                    size_t nr ) ;
   int (*ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd , unsigned long arg ) ;
   long (*compat_ioctl)(struct tty_struct *tty , struct file *file , unsigned int cmd ,
                        unsigned long arg ) ;
   void (*set_termios)(struct tty_struct *tty , struct ktermios *old ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct *tty ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char *cp , char *fp ,
                       int count ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int , struct pps_event_time * ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   atomic_t users ;
};
struct tty_buffer {
   struct tty_buffer *next ;
   char *char_buf_ptr ;
   unsigned char *flag_buf_ptr ;
   int used ;
   int size ;
   int commit ;
   int read ;
   unsigned long data[0] ;
};
struct tty_bufhead {
   struct work_struct work ;
   spinlock_t lock ;
   struct tty_buffer *head ;
   struct tty_buffer *tail ;
   struct tty_buffer *free ;
   int memory_used ;
};
struct tty_port;
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port *port ) ;
   void (*dtr_rts)(struct tty_port *port , int raise ) ;
   void (*shutdown)(struct tty_port *port ) ;
   void (*drop)(struct tty_port *port ) ;
   int (*activate)(struct tty_port *port , struct tty_struct *tty ) ;
   void (*destruct)(struct tty_port *port ) ;
};
struct tty_port {
   struct tty_struct *tty ;
   struct tty_port_operations *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   struct mutex mutex ;
   struct mutex buf_mutex ;
   unsigned char *xmit_buf ;
   unsigned int close_delay ;
   unsigned int closing_wait ;
   int drain_delay ;
   struct kref kref ;
};
struct tty_struct {
   int magic ;
   struct kref kref ;
   struct device *dev ;
   struct tty_driver *driver ;
   struct tty_operations *ops ;
   int index ;
   struct mutex ldisc_mutex ;
   struct tty_ldisc *ldisc ;
   struct mutex termios_mutex ;
   spinlock_t ctrl_lock ;
   struct ktermios *termios ;
   struct ktermios *termios_locked ;
   struct termiox *termiox ;
   char name[64] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char hw_stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned char packet : 1 ;
   unsigned char low_latency : 1 ;
   unsigned char warned : 1 ;
   unsigned char ctrl_status ;
   unsigned int receive_room ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   struct tty_bufhead buf ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   unsigned int column ;
   unsigned char lnext : 1 ;
   unsigned char erasing : 1 ;
   unsigned char raw : 1 ;
   unsigned char real_raw : 1 ;
   unsigned char icanon : 1 ;
   unsigned char closing : 1 ;
   unsigned char echo_overrun : 1 ;
   unsigned short minimum_to_wake ;
   unsigned long overrun_time ;
   int num_overrun ;
   unsigned long process_char_map[256UL / (8UL * sizeof(unsigned long ))] ;
   char *read_buf ;
   int read_head ;
   int read_tail ;
   int read_cnt ;
   unsigned long read_flags[4096UL / (8UL * sizeof(unsigned long ))] ;
   unsigned char *echo_buf ;
   unsigned int echo_pos ;
   unsigned int echo_cnt ;
   int canon_data ;
   unsigned long canon_head ;
   unsigned int canon_column ;
   struct mutex atomic_read_lock ;
   struct mutex atomic_write_lock ;
   struct mutex output_lock ;
   struct mutex echo_lock ;
   unsigned char *write_buf ;
   int write_cnt ;
   spinlock_t read_lock ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
struct fb_fix_screeninfo {
   char id[16] ;
   unsigned long smem_start ;
   __u32 smem_len ;
   __u32 type ;
   __u32 type_aux ;
   __u32 visual ;
   __u16 xpanstep ;
   __u16 ypanstep ;
   __u16 ywrapstep ;
   __u32 line_length ;
   unsigned long mmio_start ;
   __u32 mmio_len ;
   __u32 accel ;
   __u16 capabilities ;
   __u16 reserved[2] ;
};
struct fb_bitfield {
   __u32 offset ;
   __u32 length ;
   __u32 msb_right ;
};
struct fb_var_screeninfo {
   __u32 xres ;
   __u32 yres ;
   __u32 xres_virtual ;
   __u32 yres_virtual ;
   __u32 xoffset ;
   __u32 yoffset ;
   __u32 bits_per_pixel ;
   __u32 grayscale ;
   struct fb_bitfield red ;
   struct fb_bitfield green ;
   struct fb_bitfield blue ;
   struct fb_bitfield transp ;
   __u32 nonstd ;
   __u32 activate ;
   __u32 height ;
   __u32 width ;
   __u32 accel_flags ;
   __u32 pixclock ;
   __u32 left_margin ;
   __u32 right_margin ;
   __u32 upper_margin ;
   __u32 lower_margin ;
   __u32 hsync_len ;
   __u32 vsync_len ;
   __u32 sync ;
   __u32 vmode ;
   __u32 rotate ;
   __u32 colorspace ;
   __u32 reserved[4] ;
};
struct fb_cmap {
   __u32 start ;
   __u32 len ;
   __u16 *red ;
   __u16 *green ;
   __u16 *blue ;
   __u16 *transp ;
};
struct fb_copyarea {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 sx ;
   __u32 sy ;
};
struct fb_fillrect {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 color ;
   __u32 rop ;
};
struct fb_image {
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
   __u32 fg_color ;
   __u32 bg_color ;
   __u8 depth ;
   char *data ;
   struct fb_cmap cmap ;
};
struct fbcurpos {
   __u16 x ;
   __u16 y ;
};
struct fb_cursor {
   __u16 set ;
   __u16 enable ;
   __u16 rop ;
   char *mask ;
   struct fbcurpos hot ;
   struct fb_image image ;
};
enum backlight_type {
    BACKLIGHT_RAW = 1,
    BACKLIGHT_PLATFORM = 2,
    BACKLIGHT_FIRMWARE = 3,
    BACKLIGHT_TYPE_MAX = 4
} ;
struct backlight_device;
struct fb_info;
struct backlight_ops {
   unsigned int options ;
   int (*update_status)(struct backlight_device * ) ;
   int (*get_brightness)(struct backlight_device * ) ;
   int (*check_fb)(struct backlight_device * , struct fb_info * ) ;
};
struct backlight_properties {
   int brightness ;
   int max_brightness ;
   int power ;
   int fb_blank ;
   enum backlight_type type ;
   unsigned int state ;
};
struct backlight_device {
   struct backlight_properties props ;
   struct mutex update_lock ;
   struct mutex ops_lock ;
   struct backlight_ops *ops ;
   struct notifier_block fb_notif ;
   struct device dev ;
};
struct fb_chroma {
   __u32 redx ;
   __u32 greenx ;
   __u32 bluex ;
   __u32 whitex ;
   __u32 redy ;
   __u32 greeny ;
   __u32 bluey ;
   __u32 whitey ;
};
struct fb_videomode;
struct fb_monspecs {
   struct fb_chroma chroma ;
   struct fb_videomode *modedb ;
   __u8 manufacturer[4] ;
   __u8 monitor[14] ;
   __u8 serial_no[14] ;
   __u8 ascii[14] ;
   __u32 modedb_len ;
   __u32 model ;
   __u32 serial ;
   __u32 year ;
   __u32 week ;
   __u32 hfmin ;
   __u32 hfmax ;
   __u32 dclkmin ;
   __u32 dclkmax ;
   __u16 input ;
   __u16 dpms ;
   __u16 signal ;
   __u16 vfmin ;
   __u16 vfmax ;
   __u16 gamma ;
   __u16 gtf : 1 ;
   __u16 misc ;
   __u8 version ;
   __u8 revision ;
   __u8 max_x ;
   __u8 max_y ;
};
struct fb_blit_caps {
   u32 x ;
   u32 y ;
   u32 len ;
   u32 flags ;
};
struct fb_pixmap {
   u8 *addr ;
   u32 size ;
   u32 offset ;
   u32 buf_align ;
   u32 scan_align ;
   u32 access_align ;
   u32 flags ;
   u32 blit_x ;
   u32 blit_y ;
   void (*writeio)(struct fb_info *info , void *dst , void *src , unsigned int size ) ;
   void (*readio)(struct fb_info *info , void *dst , void *src , unsigned int size ) ;
};
struct fb_deferred_io {
   unsigned long delay ;
   struct mutex lock ;
   struct list_head pagelist ;
   void (*deferred_io)(struct fb_info *info , struct list_head *pagelist ) ;
};
struct fb_ops {
   struct module *owner ;
   int (*fb_open)(struct fb_info *info , int user ) ;
   int (*fb_release)(struct fb_info *info , int user ) ;
   ssize_t (*fb_read)(struct fb_info *info , char *buf , size_t count , loff_t *ppos ) ;
   ssize_t (*fb_write)(struct fb_info *info , char *buf , size_t count , loff_t *ppos ) ;
   int (*fb_check_var)(struct fb_var_screeninfo *var , struct fb_info *info ) ;
   int (*fb_set_par)(struct fb_info *info ) ;
   int (*fb_setcolreg)(unsigned int regno , unsigned int red , unsigned int green ,
                       unsigned int blue , unsigned int transp , struct fb_info *info ) ;
   int (*fb_setcmap)(struct fb_cmap *cmap , struct fb_info *info ) ;
   int (*fb_blank)(int blank , struct fb_info *info ) ;
   int (*fb_pan_display)(struct fb_var_screeninfo *var , struct fb_info *info ) ;
   void (*fb_fillrect)(struct fb_info *info , struct fb_fillrect *rect ) ;
   void (*fb_copyarea)(struct fb_info *info , struct fb_copyarea *region ) ;
   void (*fb_imageblit)(struct fb_info *info , struct fb_image *image ) ;
   int (*fb_cursor)(struct fb_info *info , struct fb_cursor *cursor ) ;
   void (*fb_rotate)(struct fb_info *info , int angle ) ;
   int (*fb_sync)(struct fb_info *info ) ;
   int (*fb_ioctl)(struct fb_info *info , unsigned int cmd , unsigned long arg ) ;
   int (*fb_compat_ioctl)(struct fb_info *info , unsigned int cmd , unsigned long arg ) ;
   int (*fb_mmap)(struct fb_info *info , struct vm_area_struct *vma ) ;
   void (*fb_get_caps)(struct fb_info *info , struct fb_blit_caps *caps , struct fb_var_screeninfo *var ) ;
   void (*fb_destroy)(struct fb_info *info ) ;
   int (*fb_debug_enter)(struct fb_info *info ) ;
   int (*fb_debug_leave)(struct fb_info *info ) ;
};
struct fb_tilemap {
   __u32 width ;
   __u32 height ;
   __u32 depth ;
   __u32 length ;
   __u8 *data ;
};
struct fb_tilerect {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 index ;
   __u32 fg ;
   __u32 bg ;
   __u32 rop ;
};
struct fb_tilearea {
   __u32 sx ;
   __u32 sy ;
   __u32 dx ;
   __u32 dy ;
   __u32 width ;
   __u32 height ;
};
struct fb_tileblit {
   __u32 sx ;
   __u32 sy ;
   __u32 width ;
   __u32 height ;
   __u32 fg ;
   __u32 bg ;
   __u32 length ;
   __u32 *indices ;
};
struct fb_tilecursor {
   __u32 sx ;
   __u32 sy ;
   __u32 mode ;
   __u32 shape ;
   __u32 fg ;
   __u32 bg ;
};
struct fb_tile_ops {
   void (*fb_settile)(struct fb_info *info , struct fb_tilemap *map ) ;
   void (*fb_tilecopy)(struct fb_info *info , struct fb_tilearea *area ) ;
   void (*fb_tilefill)(struct fb_info *info , struct fb_tilerect *rect ) ;
   void (*fb_tileblit)(struct fb_info *info , struct fb_tileblit *blit ) ;
   void (*fb_tilecursor)(struct fb_info *info , struct fb_tilecursor *cursor ) ;
   int (*fb_get_tilemax)(struct fb_info *info ) ;
};
struct aperture {
   resource_size_t base ;
   resource_size_t size ;
};
struct apertures_struct {
   unsigned int count ;
   struct aperture ranges[0] ;
};
struct fb_info {
   atomic_t count ;
   int node ;
   int flags ;
   struct mutex lock ;
   struct mutex mm_lock ;
   struct fb_var_screeninfo var ;
   struct fb_fix_screeninfo fix ;
   struct fb_monspecs monspecs ;
   struct work_struct queue ;
   struct fb_pixmap pixmap ;
   struct fb_pixmap sprite ;
   struct fb_cmap cmap ;
   struct list_head modelist ;
   struct fb_videomode *mode ;
   struct backlight_device *bl_dev ;
   struct mutex bl_curve_mutex ;
   u8 bl_curve[128] ;
   struct delayed_work deferred_work ;
   struct fb_deferred_io *fbdefio ;
   struct fb_ops *fbops ;
   struct device *device ;
   struct device *dev ;
   int class_flag ;
   struct fb_tile_ops *tileops ;
   char *screen_base ;
   unsigned long screen_size ;
   void *pseudo_palette ;
   u32 state ;
   void *fbcon_par ;
   void *par ;
   struct apertures_struct *apertures ;
};
struct fb_videomode {
   char *name ;
   u32 refresh ;
   u32 xres ;
   u32 yres ;
   u32 pixclock ;
   u32 left_margin ;
   u32 right_margin ;
   u32 upper_margin ;
   u32 lower_margin ;
   u32 hsync_len ;
   u32 vsync_len ;
   u32 sync ;
   u32 vmode ;
   u32 flag ;
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
union __anonunion____missing_field_name_259 {
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
   u8 pcie_type : 4 ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int d3_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17] ;
   unsigned int transparent : 1 ;
   unsigned int multifunction : 1 ;
   unsigned int is_added : 1 ;
   unsigned int is_busmaster : 1 ;
   unsigned int no_msi : 1 ;
   unsigned int block_cfg_access : 1 ;
   unsigned int broken_parity_status : 1 ;
   unsigned int irq_reroute_variant : 2 ;
   unsigned int msi_enabled : 1 ;
   unsigned int msix_enabled : 1 ;
   unsigned int ari_enabled : 1 ;
   unsigned int is_managed : 1 ;
   unsigned int is_pcie : 1 ;
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17] ;
   struct bin_attribute *res_attr_wc[17] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_259 __annonCompField47 ;
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
   struct resource *resource[4] ;
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
   char name[48] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned int is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus *bus , unsigned int devfn , int where , int size , u32 *val ) ;
   int (*write)(struct pci_bus *bus , unsigned int devfn , int where , int size ,
                u32 val ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev *dev , enum pci_channel_state error ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev *dev ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev *dev ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev *dev ) ;
   void (*resume)(struct pci_dev *dev ) ;
};
struct pci_driver {
   struct list_head node ;
   char *name ;
   struct pci_device_id *id_table ;
   int (*probe)(struct pci_dev *dev , struct pci_device_id *id ) ;
   void (*remove)(struct pci_dev *dev ) ;
   int (*suspend)(struct pci_dev *dev , pm_message_t state ) ;
   int (*suspend_late)(struct pci_dev *dev , pm_message_t state ) ;
   int (*resume_early)(struct pci_dev *dev ) ;
   int (*resume)(struct pci_dev *dev ) ;
   void (*shutdown)(struct pci_dev *dev ) ;
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
struct dma_attrs {
   unsigned long flags[((4UL + 8UL * sizeof(long )) - 1UL) / (8UL * sizeof(long ))] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct dma_map_ops {
   void *(*alloc)(struct device *dev , size_t size , dma_addr_t *dma_handle , gfp_t gfp ,
                  struct dma_attrs *attrs ) ;
   void (*free)(struct device *dev , size_t size , void *vaddr , dma_addr_t dma_handle ,
                struct dma_attrs *attrs ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs *attrs ) ;
   dma_addr_t (*map_page)(struct device *dev , struct page *page , unsigned long offset ,
                          size_t size , enum dma_data_direction dir , struct dma_attrs *attrs ) ;
   void (*unmap_page)(struct device *dev , dma_addr_t dma_handle , size_t size , enum dma_data_direction dir ,
                      struct dma_attrs *attrs ) ;
   int (*map_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                 struct dma_attrs *attrs ) ;
   void (*unmap_sg)(struct device *dev , struct scatterlist *sg , int nents , enum dma_data_direction dir ,
                    struct dma_attrs *attrs ) ;
   void (*sync_single_for_cpu)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                               enum dma_data_direction dir ) ;
   void (*sync_single_for_device)(struct device *dev , dma_addr_t dma_handle , size_t size ,
                                  enum dma_data_direction dir ) ;
   void (*sync_sg_for_cpu)(struct device *dev , struct scatterlist *sg , int nents ,
                           enum dma_data_direction dir ) ;
   void (*sync_sg_for_device)(struct device *dev , struct scatterlist *sg , int nents ,
                              enum dma_data_direction dir ) ;
   int (*mapping_error)(struct device *dev , dma_addr_t dma_addr ) ;
   int (*dma_supported)(struct device *dev , u64 mask ) ;
   int (*set_dma_mask)(struct device *dev , u64 mask ) ;
   int is_phys ;
};
struct crtc {
   u32 vxres ;
   u32 vyres ;
   u32 xoffset ;
   u32 yoffset ;
   u32 bpp ;
   u32 h_tot_disp ;
   u32 h_sync_strt_wid ;
   u32 v_tot_disp ;
   u32 v_sync_strt_wid ;
   u32 vline_crnt_vline ;
   u32 off_pitch ;
   u32 gen_cntl ;
   u32 dp_pix_width ;
   u32 dp_chain_mask ;
   u32 horz_stretching ;
   u32 vert_stretching ;
   u32 ext_vert_stretch ;
   u32 shadow_h_tot_disp ;
   u32 shadow_h_sync_strt_wid ;
   u32 shadow_v_tot_disp ;
   u32 shadow_v_sync_strt_wid ;
   u32 lcd_gen_cntl ;
   u32 lcd_config_panel ;
   u32 lcd_index ;
};
struct aty_interrupt {
   wait_queue_head_t wait ;
   unsigned int count ;
   int pan_display ;
};
struct pll_info {
   int pll_max ;
   int pll_min ;
   int sclk ;
   int mclk ;
   int mclk_pm ;
   int xclk ;
   int ref_div ;
   int ref_clk ;
   int ecp_max ;
};
struct pll_514 {
   u8 m ;
   u8 n ;
};
struct pll_18818 {
   u32 program_bits ;
   u32 locationAddr ;
   u32 period_in_ps ;
   u32 post_divider ;
};
struct pll_ct {
   u8 pll_ref_div ;
   u8 pll_gen_cntl ;
   u8 mclk_fb_div ;
   u8 mclk_fb_mult ;
   u8 sclk_fb_div ;
   u8 pll_vclk_cntl ;
   u8 vclk_post_div ;
   u8 vclk_fb_div ;
   u8 pll_ext_cntl ;
   u8 ext_vpll_cntl ;
   u8 spll_cntl2 ;
   u32 dsp_config ;
   u32 dsp_on_off ;
   u32 dsp_loop_latency ;
   u32 fifo_size ;
   u32 xclkpagefaultdelay ;
   u32 xclkmaxrasdelay ;
   u8 xclk_ref_div ;
   u8 xclk_post_div ;
   u8 mclk_post_div_real ;
   u8 xclk_post_div_real ;
   u8 vclk_post_div_real ;
   u8 features ;
   u32 xres ;
};
union aty_pll {
   struct pll_ct ct ;
   struct pll_514 ibm514 ;
   struct pll_18818 ics2595 ;
};
struct __anonstruct_palette_261 {
   u8 red ;
   u8 green ;
   u8 blue ;
};
struct aty_dac_ops;
struct aty_pll_ops;
struct atyfb_par {
   u32 pseudo_palette[16] ;
   struct __anonstruct_palette_261 palette[256] ;
   struct aty_dac_ops *dac_ops ;
   struct aty_pll_ops *pll_ops ;
   void *ati_regbase ;
   unsigned long clk_wr_offset ;
   struct crtc crtc ;
   union aty_pll pll ;
   struct pll_info pll_limits ;
   u32 features ;
   u32 ref_clk_per ;
   u32 pll_per ;
   u32 mclk_per ;
   u32 xclk_per ;
   u8 bus_type ;
   u8 ram_type ;
   u8 mem_refresh_rate ;
   u16 pci_id ;
   u32 accel_flags ;
   int blitter_may_be_busy ;
   int asleep ;
   int lock_blank ;
   unsigned long res_start ;
   unsigned long res_size ;
   struct pci_dev *pdev ;
   int open ;
   unsigned long bios_base_phys ;
   unsigned long bios_base ;
   unsigned long lcd_table ;
   u16 lcd_width ;
   u16 lcd_height ;
   u32 lcd_pixclock ;
   u16 lcd_refreshrate ;
   u16 lcd_htotal ;
   u16 lcd_hdisp ;
   u16 lcd_hsync_dly ;
   u16 lcd_hsync_len ;
   u16 lcd_vtotal ;
   u16 lcd_vdisp ;
   u16 lcd_vsync_len ;
   u16 lcd_right_margin ;
   u16 lcd_lower_margin ;
   u16 lcd_hblank_len ;
   u16 lcd_vblank_len ;
   unsigned long aux_start ;
   unsigned long aux_size ;
   struct aty_interrupt vblank ;
   unsigned long irq_flags ;
   unsigned int irq ;
   spinlock_t int_lock ;
   int mtrr_aper ;
   int mtrr_reg ;
   u32 mem_cntl ;
   struct crtc saved_crtc ;
   union aty_pll saved_pll ;
};
struct aty_dac_ops {
   int (*set_dac)(struct fb_info *info , union aty_pll *pll , u32 bpp ,
                  u32 accel ) ;
};
struct aty_pll_ops {
   int (*var_to_pll)(struct fb_info *info , u32 vclk_per , u32 bpp , union aty_pll *pll ) ;
   u32 (*pll_to_var)(struct fb_info *info , union aty_pll *pll ) ;
   void (*set_pll)(struct fb_info *info , union aty_pll *pll ) ;
   void (*get_pll)(struct fb_info *info , union aty_pll *pll ) ;
   int (*init_pll)(struct fb_info *info , union aty_pll *pll ) ;
   void (*resume_pll)(struct fb_info *info , union aty_pll *pll ) ;
};
typedef s32 compat_time_t;
typedef s32 compat_long_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct __anonstruct_aty_chips_280 {
   u16 pci_id ;
   char *name ;
   int pll ;
   int mclk ;
   int xclk ;
   int ecp_max ;
   u32 features ;
};
struct __anonstruct_281 {
   int : 0 ;
};
struct __anonstruct_282 {
   int : 0 ;
};
struct __anonstruct_283 {
   int : 0 ;
};
typedef __u32 __le32;
enum kobj_ns_type;
enum hrtimer_restart;
enum kobj_ns_type;
enum hrtimer_restart;
enum kobj_ns_type;
enum hrtimer_restart;
struct __anonstruct_tab_254 {
   u8 pixel_dly ;
   u8 misc2_cntl ;
   u8 pixel_rep ;
   u8 pixel_cntl_index ;
   u8 pixel_cntl_v1 ;
};
struct __anonstruct_RGB514_clocks_255 {
   u32 limit ;
   u8 m ;
   u8 n ;
};
struct __anonstruct_256 {
   int : 0 ;
};
typedef signed char s8;
enum kobj_ns_type;
enum hrtimer_restart;
long ldv__builtin_expect(long val , long res ) ;
__inline static void ( __attribute__((__always_inline__)) clear_bit)(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void ( __attribute__((__always_inline__)) clear_bit)(int nr , unsigned long volatile *addr )
{ long volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "btr %1,%0": "+m" (*__cil_tmp3): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  long volatile *__cil_tmp4 ;
  {
  __cil_tmp4 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "bts %2,%1\n\t"
                       "sbb %0,%0": "=r" (oldbit), "+m" (*__cil_tmp4): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  long volatile *__cil_tmp4 ;
  {
  __cil_tmp4 = (long volatile *)addr;
  __asm__ volatile (".section .smp_locks,\"a\"\n"
                       ".balign 4\n"
                       ".long 671f - .\n"
                       ".previous\n"
                       "671:"
                       "\n\tlock; "
                       "btr %2,%1\n\t"
                       "sbb %0,%0": "=r" (oldbit), "+m" (*__cil_tmp4): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int variable_test_bit(int nr , unsigned long volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static int variable_test_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  unsigned long *__cil_tmp4 ;
  {
  __cil_tmp4 = (unsigned long *)addr;
  __asm__ volatile ("bt %2,%1\n\t"
                       "sbb %0,%0": "=r" (oldbit): "m" (*__cil_tmp4), "Ir" (nr));
  return (oldbit);
}
}
extern int ( printk)(char *fmt , ...) ;
extern void __might_sleep(char *file , int line , int preempt_offset ) ;
__inline static void might_fault(void) __attribute__((__no_instrument_function__)) ;
__inline static void might_fault(void)
{
  {
  {
  while (1) {
    while_continue: ;
    {
    __might_sleep("include/linux/kernel.h", 196, 0);
    }
    {
    while (1) {
      while_continue___0: ;
      goto while_break___0;
    }
    while_break___0: ;
    }
    goto while_break;
  }
  while_break: ;
  }
  return;
}
}
extern int ( snprintf)(char *buf , size_t size , char *fmt
                                               , ...) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task __attribute__((__section__(".data..percpu"))) ;
__inline static struct task_struct *( __attribute__((__always_inline__)) get_current)(void) __attribute__((__no_instrument_function__)) ;
__inline static struct task_struct *( __attribute__((__always_inline__)) get_current)(void)
{ struct task_struct *pfo_ret__ ;
  {
  if ((int )8UL == 1) {
    goto case_1;
  } else
  if ((int )8UL == 2) {
    goto case_2;
  } else
  if ((int )8UL == 4) {
    goto case_4;
  } else
  if ((int )8UL == 8) {
    goto case_8;
  } else {
    {
    goto switch_default;
    if (0) {
      case_1:
      __asm__ ("mov"
                "b "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=q" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_2:
      __asm__ ("mov"
                "w "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_4:
      __asm__ ("mov"
                "l "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      case_8:
      __asm__ ("mov"
                "q "
                "%%"
                "gs"
                ":"
                "%P"
                "1"
                ",%0": "=r" (pfo_ret__): "p" (& current_task));
      goto switch_break;
      switch_default:
      {
      __bad_percpu_size();
      }
    } else {
      switch_break: ;
    }
    }
  }
  return (pfo_ret__);
}
}
extern void *memcpy(void *to , void *from , size_t len ) ;
extern void *memset(void *s , int c , size_t n ) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void *ptr ) __attribute__((__no_instrument_function__)) ;
__inline static long __attribute__((__warn_unused_result__)) IS_ERR(void *ptr )
{ long tmp ;
  unsigned long __cil_tmp3 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  long __cil_tmp7 ;
  {
  {
  __cil_tmp3 = (unsigned long )ptr;
  __cil_tmp4 = __cil_tmp3 >= 0xfffffffffffff001UL;
  __cil_tmp5 = ! __cil_tmp4;
  __cil_tmp6 = ! __cil_tmp5;
  __cil_tmp7 = (long )__cil_tmp6;
  tmp = ldv__builtin_expect(__cil_tmp7, 0L);
  }
  return (tmp);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag ) __attribute__((__no_instrument_function__)) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{ int tmp___0 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  __u32 *__cil_tmp7 ;
  unsigned long *__cil_tmp8 ;
  unsigned long volatile *__cil_tmp9 ;
  {
  {
  __cil_tmp5 = (unsigned long )ti;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = (__u32 *)__cil_tmp6;
  __cil_tmp8 = (unsigned long *)__cil_tmp7;
  __cil_tmp9 = (unsigned long volatile *)__cil_tmp8;
  tmp___0 = variable_test_bit(flag, __cil_tmp9);
  }
  return (tmp___0);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t *lock , char *name , struct lock_class_key *key ) ;
extern void _raw_spin_lock(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_lock_irq(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_unlock(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t *lock ) __attribute__((__section__(".spinlock.text"))) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return ((struct raw_spinlock *)lock);
}
}
__inline static void spin_lock(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_lock(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_lock(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_lock_irq(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_lock_irq(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_unlock(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_unlock(__cil_tmp2);
  }
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock ) __attribute__((__no_instrument_function__)) ;
__inline static void spin_unlock_irq(spinlock_t *lock )
{ struct raw_spinlock *__cil_tmp2 ;
  {
  {
  __cil_tmp2 = (struct raw_spinlock *)lock;
  _raw_spin_unlock_irq(__cil_tmp2);
  }
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t *q , char *name , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t *q , unsigned int mode , int nr , void *key ) ;
extern void prepare_to_wait(wait_queue_head_t *q , wait_queue_t *wait , int state ) ;
extern void finish_wait(wait_queue_head_t *q , wait_queue_t *wait ) ;
extern int autoremove_wake_function(wait_queue_t *wait , unsigned int mode , int sync ,
                                    void *key ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct resource iomem_resource ;
__inline static resource_size_t resource_size(struct resource *res ) __attribute__((__no_instrument_function__)) ;
__inline static resource_size_t resource_size(struct resource *res )
{ resource_size_t __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  resource_size_t __cil_tmp5 ;
  resource_size_t __cil_tmp6 ;
  resource_size_t __cil_tmp7 ;
  {
  {
  __cil_tmp2 = *((resource_size_t *)res);
  __cil_tmp3 = (unsigned long )res;
  __cil_tmp4 = __cil_tmp3 + 8;
  __cil_tmp5 = *((resource_size_t *)__cil_tmp4);
  __cil_tmp6 = __cil_tmp5 - __cil_tmp2;
  __cil_tmp7 = __cil_tmp6 + 1ULL;
  return ((resource_size_t )__cil_tmp7);
  }
}
}
extern struct resource *__request_region(struct resource * , resource_size_t start ,
                                         resource_size_t n , char *name ,
                                         int flags ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
__inline static unsigned char readb(void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char readb(void volatile *addr )
{ unsigned char ret ;
  unsigned char volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned char volatile *)addr;
  __asm__ volatile ("mov"
                       "b"
                       " %1,%0": "=q" (ret): "m" (*__cil_tmp3): "memory");
  return (ret);
}
}
__inline static unsigned int readl(void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned int readl(void volatile *addr )
{ unsigned int ret ;
  unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("mov"
                       "l"
                       " %1,%0": "=r" (ret): "m" (*__cil_tmp3): "memory");
  return (ret);
}
}
__inline static void writeb(unsigned char val , void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void writeb(unsigned char val , void volatile *addr )
{ unsigned char volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned char volatile *)addr;
  __asm__ volatile ("mov"
                       "b"
                       " %0,%1": : "q" (val), "m" (*__cil_tmp3): "memory");
  return;
}
}
__inline static void writel(unsigned int val , void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void writel(unsigned int val , void volatile *addr )
{ unsigned int volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned int volatile *)addr;
  __asm__ volatile ("mov"
                       "l"
                       " %0,%1": : "r" (val), "m" (*__cil_tmp3): "memory");
  return;
}
}
extern void *ioremap_nocache(resource_size_t offset , unsigned long size ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size ) __attribute__((__no_instrument_function__)) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{ void *tmp ;
  {
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile *addr ) ;
__inline static unsigned char inb(int port ) __attribute__((__no_instrument_function__)) ;
__inline static unsigned char inb(int port )
{ unsigned char value ;
  {
  __asm__ volatile ("in"
                       "b"
                       " %w1, %"
                       "b"
                       "0": "=a" (value): "Nd" (port));
  return (value);
}
}
extern struct kernel_param_ops param_ops_int ;
extern struct kernel_param_ops param_ops_charp ;
extern struct kernel_param_ops param_ops_bool ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
extern void ___udelay(unsigned long xloops ) ;
extern void console_lock(void) ;
extern void console_unlock(void) ;
extern void *dev_get_drvdata(struct device *dev ) ;
extern int dev_set_drvdata(struct device *dev , void *data ) ;
extern long schedule_timeout(long timeout ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag ) __attribute__((__no_instrument_function__)) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{ int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  struct thread_info *__cil_tmp7 ;
  {
  {
  __cil_tmp4 = (unsigned long )tsk;
  __cil_tmp5 = __cil_tmp4 + 8;
  __cil_tmp6 = *((void **)__cil_tmp5);
  __cil_tmp7 = (struct thread_info *)__cil_tmp6;
  tmp___7 = test_ti_thread_flag(__cil_tmp7, flag);
  }
  return (tmp___7);
}
}
__inline static int signal_pending(struct task_struct *p ) __attribute__((__no_instrument_function__)) ;
__inline static int signal_pending(struct task_struct *p )
{ int tmp___7 ;
  int tmp___8 ;
  long tmp___9 ;
  long __cil_tmp5 ;
  {
  {
  tmp___7 = test_tsk_thread_flag(p, 2);
  }
  if (tmp___7) {
    tmp___8 = 1;
  } else {
    tmp___8 = 0;
  }
  {
  __cil_tmp5 = (long )tmp___8;
  tmp___9 = ldv__builtin_expect(__cil_tmp5, 0L);
  }
  return ((int )tmp___9);
}
}
extern int __attribute__((__warn_unused_result__)) request_threaded_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         irqreturn_t (*thread_fn)(int ,
                                                                                                  void * ) ,
                                                                         unsigned long flags ,
                                                                         char *name ,
                                                                         void *dev ) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char *name ,
                                                                         void *dev ) __attribute__((__no_instrument_function__)) ;
__inline static int __attribute__((__warn_unused_result__)) request_irq(unsigned int irq ,
                                                                         irqreturn_t (*handler)(int ,
                                                                                                void * ) ,
                                                                         unsigned long flags ,
                                                                         char *name ,
                                                                         void *dev )
{ int tmp___7 ;
  void *__cil_tmp7 ;
  irqreturn_t (*__cil_tmp8)(int , void * ) ;
  {
  {
  __cil_tmp7 = (void *)0;
  __cil_tmp8 = (irqreturn_t (*)(int , void * ))__cil_tmp7;
  tmp___7 = (int )request_threaded_irq(irq, handler, __cil_tmp8, flags, name, dev);
  }
  return (tmp___7);
}
}
extern void free_irq(unsigned int , void * ) ;
__inline static void backlight_update_status(struct backlight_device *bd ) __attribute__((__no_instrument_function__)) ;
__inline static void backlight_update_status(struct backlight_device *bd )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct mutex *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct backlight_ops *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct backlight_ops *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int (* __cil_tmp17)(struct backlight_device * ) ;
  int (*__cil_tmp18)(struct backlight_device * ) ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  struct mutex *__cil_tmp21 ;
  {
  {
  __cil_tmp2 = (unsigned long )bd;
  __cil_tmp3 = __cil_tmp2 + 24;
  __cil_tmp4 = (struct mutex *)__cil_tmp3;
  mutex_lock(__cil_tmp4);
  }
  {
  __cil_tmp5 = (unsigned long )bd;
  __cil_tmp6 = __cil_tmp5 + 168;
  if (*((struct backlight_ops **)__cil_tmp6)) {
    {
    __cil_tmp7 = (unsigned long )bd;
    __cil_tmp8 = __cil_tmp7 + 168;
    __cil_tmp9 = *((struct backlight_ops **)__cil_tmp8);
    __cil_tmp10 = (unsigned long )__cil_tmp9;
    __cil_tmp11 = __cil_tmp10 + 8;
    if (*((int (* *)(struct backlight_device * ))__cil_tmp11)) {
      {
      __cil_tmp12 = (unsigned long )bd;
      __cil_tmp13 = __cil_tmp12 + 168;
      __cil_tmp14 = *((struct backlight_ops **)__cil_tmp13);
      __cil_tmp15 = (unsigned long )__cil_tmp14;
      __cil_tmp16 = __cil_tmp15 + 8;
      __cil_tmp17 = *((int (* *)(struct backlight_device * ))__cil_tmp16);
      __cil_tmp18 = (int (*)(struct backlight_device * ))__cil_tmp17;
      (*__cil_tmp18)(bd);
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp19 = (unsigned long )bd;
  __cil_tmp20 = __cil_tmp19 + 24;
  __cil_tmp21 = (struct mutex *)__cil_tmp20;
  mutex_unlock(__cil_tmp21);
  }
  return;
}
}
extern struct backlight_device *backlight_device_register(char *name , struct device *dev ,
                                                          void *devdata , struct backlight_ops *ops ,
                                                          struct backlight_properties *props ) ;
extern void backlight_device_unregister(struct backlight_device *bd ) ;
__inline static void *bl_get_data(struct backlight_device *bl_dev ) __attribute__((__no_instrument_function__)) ;
__inline static void *bl_get_data(struct backlight_device *bl_dev )
{ void *tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )bl_dev;
  __cil_tmp4 = __cil_tmp3 + 200;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device *)__cil_tmp5;
  tmp___7 = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp___7);
}
}
extern int register_framebuffer(struct fb_info *fb_info ) ;
extern int unregister_framebuffer(struct fb_info *fb_info ) ;
extern void fb_set_suspend(struct fb_info *info , int state ) ;
extern int lock_fb_info(struct fb_info *info ) ;
__inline static void unlock_fb_info(struct fb_info *info ) __attribute__((__no_instrument_function__)) ;
__inline static void unlock_fb_info(struct fb_info *info )
{ unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct mutex *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = (unsigned long )info;
  __cil_tmp3 = __cil_tmp2 + 16;
  __cil_tmp4 = (struct mutex *)__cil_tmp3;
  mutex_unlock(__cil_tmp4);
  }
  return;
}
}
extern struct fb_info *framebuffer_alloc(size_t size , struct device *dev ) ;
extern void framebuffer_release(struct fb_info *info ) ;
extern void fb_bl_default_curve(struct fb_info *fb_info , u8 off , u8 min , u8 max ) ;
extern int fb_alloc_cmap(struct fb_cmap *cmap , int len , int transp ) ;
extern void fb_dealloc_cmap(struct fb_cmap *cmap ) ;
extern int fb_find_mode(struct fb_var_screeninfo *var , struct fb_info *info , char *mode_option ,
                        struct fb_videomode *db , unsigned int dbsize , struct fb_videomode *default_mode ,
                        unsigned int default_bpp ) ;
extern int pci_bus_read_config_word(struct pci_bus *bus , unsigned int devfn , int where ,
                                    u16 *val ) ;
extern int pci_bus_write_config_word(struct pci_bus *bus , unsigned int devfn , int where ,
                                     u16 val ) ;
__inline static int pci_read_config_word(struct pci_dev *dev , int where ,
                                         u16 *val ) __attribute__((__no_instrument_function__)) ;
__inline static int pci_read_config_word(struct pci_dev *dev , int where ,
                                         u16 *val )
{ int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct pci_bus * __cil_tmp7 ;
  struct pci_bus *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  {
  {
  __cil_tmp5 = (unsigned long )dev;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = *((struct pci_bus * *)__cil_tmp6);
  __cil_tmp8 = (struct pci_bus *)__cil_tmp7;
  __cil_tmp9 = (unsigned long )dev;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((unsigned int *)__cil_tmp10);
  __cil_tmp12 = (unsigned int )__cil_tmp11;
  tmp___7 = pci_bus_read_config_word(__cil_tmp8, __cil_tmp12, where, val);
  }
  return (tmp___7);
}
}
__inline static int pci_write_config_word(struct pci_dev *dev , int where ,
                                          u16 val ) __attribute__((__no_instrument_function__)) ;
__inline static int pci_write_config_word(struct pci_dev *dev , int where ,
                                          u16 val )
{ int tmp___7 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  struct pci_bus * __cil_tmp7 ;
  struct pci_bus *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned int __cil_tmp12 ;
  {
  {
  __cil_tmp5 = (unsigned long )dev;
  __cil_tmp6 = __cil_tmp5 + 16;
  __cil_tmp7 = *((struct pci_bus * *)__cil_tmp6);
  __cil_tmp8 = (struct pci_bus *)__cil_tmp7;
  __cil_tmp9 = (unsigned long )dev;
  __cil_tmp10 = __cil_tmp9 + 56;
  __cil_tmp11 = *((unsigned int *)__cil_tmp10);
  __cil_tmp12 = (unsigned int )__cil_tmp11;
  tmp___7 = pci_bus_write_config_word(__cil_tmp8, __cil_tmp12, where, val);
  }
  return (tmp___7);
}
}
extern int __attribute__((__warn_unused_result__)) pci_enable_device(struct pci_dev *dev ) ;
extern int pci_save_state(struct pci_dev *dev ) ;
extern int pci_set_power_state(struct pci_dev *dev , pci_power_t state ) ;
extern pci_power_t pci_choose_state(struct pci_dev *dev , int stateevent ) ;
extern int __attribute__((__warn_unused_result__)) __pci_register_driver(struct pci_driver * ,
                                                                          struct module * ,
                                                                          char *mod_name ) ;
extern void pci_unregister_driver(struct pci_driver *dev ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev ) __attribute__((__no_instrument_function__)) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{ void *tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  struct device *__cil_tmp6 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  __cil_tmp6 = (struct device *)__cil_tmp5;
  tmp___7 = dev_get_drvdata(__cil_tmp6);
  }
  return (tmp___7);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data ) __attribute__((__no_instrument_function__)) ;
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  struct device *__cil_tmp5 ;
  {
  {
  __cil_tmp3 = (unsigned long )pdev;
  __cil_tmp4 = __cil_tmp3 + 144;
  __cil_tmp5 = (struct device *)__cil_tmp4;
  dev_set_drvdata(__cil_tmp5, data);
  }
  return;
}
}
extern int register_reboot_notifier(struct notifier_block * ) ;
extern int unregister_reboot_notifier(struct notifier_block * ) ;
extern int dmi_check_system(struct dmi_system_id *list ) ;
__inline static u32 aty_ld_le32(int regindex , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static u32 aty_ld_le32(int regindex , struct atyfb_par *par )
{ unsigned int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void * __cil_tmp6 ;
  void * __cil_tmp7 ;
  void volatile *__cil_tmp8 ;
  {
  if (regindex >= 1024) {
    regindex = regindex - 2048;
  } else {
  }
  {
  __cil_tmp4 = (unsigned long )par;
  __cil_tmp5 = __cil_tmp4 + 848;
  __cil_tmp6 = *((void * *)__cil_tmp5);
  __cil_tmp7 = __cil_tmp6 + regindex;
  __cil_tmp8 = (void volatile *)__cil_tmp7;
  tmp___7 = readl(__cil_tmp8);
  }
  return (tmp___7);
}
}
__inline static void aty_st_le32(int regindex , u32 val , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static void aty_st_le32(int regindex , u32 val , struct atyfb_par *par )
{ unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void * __cil_tmp6 ;
  void * __cil_tmp7 ;
  void volatile *__cil_tmp8 ;
  {
  if (regindex >= 1024) {
    regindex = regindex - 2048;
  } else {
  }
  {
  __cil_tmp4 = (unsigned long )par;
  __cil_tmp5 = __cil_tmp4 + 848;
  __cil_tmp6 = *((void * *)__cil_tmp5);
  __cil_tmp7 = __cil_tmp6 + regindex;
  __cil_tmp8 = (void volatile *)__cil_tmp7;
  writel(val, __cil_tmp8);
  }
  return;
}
}
__inline static u8 aty_ld_8(int regindex , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static u8 aty_ld_8(int regindex , struct atyfb_par *par )
{ unsigned char tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void * __cil_tmp6 ;
  void * __cil_tmp7 ;
  void volatile *__cil_tmp8 ;
  {
  if (regindex >= 1024) {
    regindex = regindex - 2048;
  } else {
  }
  {
  __cil_tmp4 = (unsigned long )par;
  __cil_tmp5 = __cil_tmp4 + 848;
  __cil_tmp6 = *((void * *)__cil_tmp5);
  __cil_tmp7 = __cil_tmp6 + regindex;
  __cil_tmp8 = (void volatile *)__cil_tmp7;
  tmp___7 = readb(__cil_tmp8);
  }
  return (tmp___7);
}
}
__inline static void aty_st_8(int regindex , u8 val , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static void aty_st_8(int regindex , u8 val , struct atyfb_par *par )
{ unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void * __cil_tmp6 ;
  void * __cil_tmp7 ;
  void volatile *__cil_tmp8 ;
  {
  if (regindex >= 1024) {
    regindex = regindex - 2048;
  } else {
  }
  {
  __cil_tmp4 = (unsigned long )par;
  __cil_tmp5 = __cil_tmp4 + 848;
  __cil_tmp6 = *((void * *)__cil_tmp5);
  __cil_tmp7 = __cil_tmp6 + regindex;
  __cil_tmp8 = (void volatile *)__cil_tmp7;
  writeb(val, __cil_tmp8);
  }
  return;
}
}
void aty_st_lcd(int index , u32 val , struct atyfb_par *par ) ;
u32 aty_ld_lcd(int index , struct atyfb_par *par ) ;
struct aty_dac_ops aty_dac_ibm514 ;
struct aty_dac_ops aty_dac_unsupported ;
struct aty_dac_ops aty_dac_ct ;
struct aty_pll_ops aty_pll_ibm514 ;
struct aty_pll_ops aty_pll_unsupported ;
struct aty_pll_ops aty_pll_ct ;
u8 aty_ld_pll_ct(int offset , struct atyfb_par *par ) ;
int aty_init_cursor(struct fb_info *info ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
__inline static void wait_for_fifo(u16 entries , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static void wait_for_fifo(u16 entries , struct atyfb_par *par )
{ u32 tmp___7 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  u32 __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  {
  {
  while (1) {
    while_continue: ;
    {
    tmp___7 = aty_ld_le32(784, par);
    }
    {
    __cil_tmp4 = (int )entries;
    __cil_tmp5 = 32768 >> __cil_tmp4;
    __cil_tmp6 = (u32 )__cil_tmp5;
    __cil_tmp7 = tmp___7 & 65535U;
    if (__cil_tmp7 > __cil_tmp6) {
    } else {
      goto while_break;
    }
    }
  }
  while_break: ;
  }
  return;
}
}
__inline static void wait_for_idle(struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static void wait_for_idle(struct atyfb_par *par )
{ u32 tmp___7 ;
  u16 __cil_tmp3 ;
  struct atyfb_par *__cil_tmp4 ;
  struct atyfb_par *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  {
  {
  __cil_tmp3 = (u16 )16;
  __cil_tmp4 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp3, __cil_tmp4);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = (struct atyfb_par *)par;
    tmp___7 = aty_ld_le32(824, __cil_tmp5);
    }
    {
    __cil_tmp6 = tmp___7 & 1U;
    if (__cil_tmp6 != 0U) {
    } else {
      goto while_break;
    }
    }
  }
  while_break: ;
  }
  __cil_tmp7 = (unsigned long )par;
  __cil_tmp8 = __cil_tmp7 + 1076;
  *((int *)__cil_tmp8) = 0;
  return;
}
}
void aty_reset_engine(struct atyfb_par *par ) ;
void aty_init_engine(struct atyfb_par *par , struct fb_info *info ) ;
void atyfb_copyarea(struct fb_info *info , struct fb_copyarea *area ) ;
void atyfb_fillrect(struct fb_info *info , struct fb_fillrect *rect ) ;
void atyfb_imageblit(struct fb_info *info , struct fb_image *image ) ;
extern int mtrr_add(unsigned long base , unsigned long size , unsigned int type ,
                    bool increment ) ;
extern int mtrr_del(int reg , unsigned long base , unsigned long size ) ;
static u32 lt_lcd_regs[9] =
  { (u32 )116, (u32 )212, (u32 const )60, (u32 const )168,
        (u32 )200, (u32 )204, (u32 const )0, (u32 const )188,
        (u32 )216};
void aty_st_lcd(int index , u32 val , struct atyfb_par *par )
{ unsigned long temp ;
  u32 tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u32 __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u32 __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u32 __cil_tmp16 ;
  {
  {
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 1044;
  __cil_tmp8 = *((u32 *)__cil_tmp7);
  if (__cil_tmp8 & 262144U) {
    {
    __cil_tmp9 = index * 4UL;
    __cil_tmp10 = (unsigned long )(lt_lcd_regs) + __cil_tmp9;
    __cil_tmp11 = *((u32 *)__cil_tmp10);
    __cil_tmp12 = (int )__cil_tmp11;
    aty_st_le32(__cil_tmp12, val, par);
    }
  } else {
    {
    tmp___7 = aty_ld_le32(164, par);
    temp = (unsigned long )tmp___7;
    __cil_tmp13 = (unsigned long )index;
    __cil_tmp14 = temp & 0xffffffffffffffc0UL;
    __cil_tmp15 = __cil_tmp14 | __cil_tmp13;
    __cil_tmp16 = (u32 )__cil_tmp15;
    aty_st_le32(164, __cil_tmp16, par);
    aty_st_le32(168, val, par);
    }
  }
  }
  return;
}
}
u32 aty_ld_lcd(int index , struct atyfb_par *par )
{ u32 tmp___7 ;
  unsigned long temp ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  u32 __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u32 __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  u32 __cil_tmp17 ;
  {
  {
  __cil_tmp7 = (unsigned long )par;
  __cil_tmp8 = __cil_tmp7 + 1044;
  __cil_tmp9 = *((u32 *)__cil_tmp8);
  if (__cil_tmp9 & 262144U) {
    {
    __cil_tmp10 = index * 4UL;
    __cil_tmp11 = (unsigned long )(lt_lcd_regs) + __cil_tmp10;
    __cil_tmp12 = *((u32 *)__cil_tmp11);
    __cil_tmp13 = (int )__cil_tmp12;
    tmp___7 = aty_ld_le32(__cil_tmp13, par);
    }
    return (tmp___7);
  } else {
    {
    tmp___8 = aty_ld_le32(164, par);
    temp = (unsigned long )tmp___8;
    __cil_tmp14 = (unsigned long )index;
    __cil_tmp15 = temp & 0xffffffffffffffc0UL;
    __cil_tmp16 = __cil_tmp15 | __cil_tmp14;
    __cil_tmp17 = (u32 )__cil_tmp16;
    aty_st_le32(164, __cil_tmp17, par);
    tmp___9 = aty_ld_le32(168, par);
    }
    return (tmp___9);
  }
  }
}
}
static void ATIReduceRatio(int *Numerator , int *Denominator )
{ int Multiplier ;
  int Divider ;
  int Remainder ;
  int __cil_tmp6 ;
  int __cil_tmp7 ;
  {
  Multiplier = *Numerator;
  Divider = *Denominator;
  {
  while (1) {
    while_continue: ;
    Remainder = Multiplier % Divider;
    if (Remainder) {
    } else {
      goto while_break;
    }
    Multiplier = Divider;
    Divider = Remainder;
  }
  while_break: ;
  }
  __cil_tmp6 = *Numerator;
  *Numerator = __cil_tmp6 / Divider;
  __cil_tmp7 = *Denominator;
  *Denominator = __cil_tmp7 / Divider;
  return;
}
}
static struct fb_fix_screeninfo atyfb_fix __attribute__((__section__(".devinit.data"))) =
     {{(char )'A', (char )'T', (char )'Y', (char )' ', (char )'M', (char )'a', (char )'c',
     (char )'h', (char )'6', (char )'4', (char )'\000', (char)0, (char)0, (char)0,
     (char)0, (char)0}, 0UL, 0U, (__u32 )0, 0U, (__u32 )3, (__u16 )8, (__u16 )1, (unsigned short)0,
    0U, 0UL, 0U, 0U, (unsigned short)0, {(unsigned short)0, (unsigned short)0}};
static int atyfb_open(struct fb_info *info , int user ) ;
static int atyfb_release(struct fb_info *info , int user ) ;
static int atyfb_check_var(struct fb_var_screeninfo *var , struct fb_info *info ) ;
static int atyfb_set_par(struct fb_info *info ) ;
static int atyfb_setcolreg(u_int regno , u_int red , u_int green , u_int blue , u_int transp ,
                           struct fb_info *info ) ;
static int atyfb_pan_display(struct fb_var_screeninfo *var , struct fb_info *info ) ;
static int atyfb_blank(int blank , struct fb_info *info ) ;
static int atyfb_ioctl(struct fb_info *info , u_int cmd , u_long arg ) ;
static int atyfb_sync(struct fb_info *info ) ;
static int aty_init(struct fb_info *info ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static void aty_get_crtc(struct atyfb_par *par , struct crtc *crtc ) ;
static void aty_set_crtc(struct atyfb_par *par , struct crtc *crtc ) ;
static int aty_var_to_crtc(struct fb_info *info , struct fb_var_screeninfo *var ,
                           struct crtc *crtc ) ;
static int aty_crtc_to_var(struct crtc *crtc , struct fb_var_screeninfo *var ) ;
static void set_off_pitch(struct atyfb_par *par , struct fb_info *info ) ;
static struct mutex reboot_lock = {{1}, {{{{{(__ticketpair_t )0}}, 3735899821U, 4294967295U, (void *)-1L}}}, {& reboot_lock.wait_list,
                                                                               & reboot_lock.wait_list},
    (struct task_struct *)0, (char *)0, (void *)(& reboot_lock)};
static struct fb_info *reboot_info ;
static struct fb_var_screeninfo default_var =
     {(__u32 )640, (__u32 )480, (__u32 )640, (__u32 )480, (__u32 )0, (__u32 )0, (__u32 )8,
    (__u32 )0, {(__u32 )0, (__u32 )8, (__u32 )0}, {(__u32 )0, (__u32 )8, (__u32 )0},
    {(__u32 )0, (__u32 )8, (__u32 )0}, {(__u32 )0, (__u32 )0, (__u32 )0}, (__u32 )0,
    (__u32 )0, (__u32 )-1, (__u32 )-1, (__u32 )0, (__u32 )39722, (__u32 )48, (__u32 )16,
    (__u32 )33, (__u32 )10, (__u32 )96, (__u32 )2, (__u32 )0, (__u32 )0, 0U, 0U, {0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U}};
static struct fb_videomode defmode =
     {(char *)((void *)0), (u32 )60, (u32 )640, (u32 )480, (u32 )39721, (u32 )40,
    (u32 )24, (u32 )32, (u32 )11, (u32 )96, (u32 )2, (u32 )0, (u32 )0, 0U};
static struct fb_ops atyfb_ops =
     {& __this_module, & atyfb_open, & atyfb_release, (ssize_t (*)(struct fb_info *info ,
                                                                 char *buf , size_t count ,
                                                                 loff_t *ppos ))0,
    (ssize_t (*)(struct fb_info *info , char *buf , size_t count , loff_t *ppos ))0,
    & atyfb_check_var, & atyfb_set_par, & atyfb_setcolreg, (int (*)(struct fb_cmap *cmap ,
                                                                    struct fb_info *info ))0,
    & atyfb_blank, & atyfb_pan_display, & atyfb_fillrect, & atyfb_copyarea, & atyfb_imageblit,
    (int (*)(struct fb_info *info , struct fb_cursor *cursor ))0, (void (*)(struct fb_info *info ,
                                                                            int angle ))0,
    & atyfb_sync, & atyfb_ioctl, (int (*)(struct fb_info *info , unsigned int cmd ,
                                          unsigned long arg ))0, (int (*)(struct fb_info *info ,
                                                                          struct vm_area_struct *vma ))0,
    (void (*)(struct fb_info *info , struct fb_blit_caps *caps , struct fb_var_screeninfo *var ))0,
    (void (*)(struct fb_info *info ))0, (int (*)(struct fb_info *info ))0, (int (*)(struct fb_info *info ))0};
static bool noaccel ;
static bool nomtrr ;
static int vram ;
static int pll ;
static int mclk ;
static int xclk ;
static int comp_sync __attribute__((__section__(".devinit.data"))) = -1;
static char *mode ;
static int backlight __attribute__((__section__(".devinit.data"))) = 0;
static struct __anonstruct_aty_chips_280 aty_chips[35] __attribute__((__section__(".devinit.data"))) =
  { {(u16 )18264, "ATI888GX00 (Mach64 GX)", 135, 50, 50, 0, (u32 )1024},
        {(u16 )17240, "ATI888CX00 (Mach64 CX)", 135, 50, 50, 0, (u32 )1024},
        {(u16 )17236, "ATI264CT (Mach64 CT)", 135, 60, 60, 0, (u32 )2242},
        {(u16 )17748, "ATI264ET (Mach64 ET)", 135, 60, 60, 0, (u32 )2242},
        {(u16 )19540, "ATI264LT (Mach64 LT)", 135, 63, 63, 0, (u32 )8260},
        {(u16 )22100, "ATI264VT (Mach64 VT)", 170, 67, 67, 80, (u32 )4418},
        {(u16 )18260, "3D RAGE (Mach64 GT)", 135, 63, 63, 80, (u32 )139330},
        {(u16 )22101, "ATI264VT3 (Mach64 VU)", 200, 67, 67, 80, (u32 )4436},
        {(u16 )18261, "3D RAGE II+ (Mach64 GU)", 200, 67, 67, 100, (u32 )139348},
        {(u16 )19527, "3D RAGE LT (Mach64 LG)", 230, 63, 63, 100, (u32 )467028},
        {(u16 )22102, "ATI264VT4 (Mach64 VV)", 230, 83, 83, 100, (u32 )4164},
        {(u16 )18262, "3D RAGE IIC (Mach64 GV, PCI)", 230, 83, 83, 100, (u32 )2236500},
        {(u16 )18263,
      "3D RAGE IIC (Mach64 GW, AGP)", 230, 83, 83, 100, (u32 )2236500},
        {(u16 )18265, "3D RAGE IIC (Mach64 GY, PCI)", 230, 83, 83, 100, (u32 )2236500},
        {(u16 )18266,
      "3D RAGE IIC (Mach64 GZ, AGP)", 230, 83, 83, 100, (u32 )2236500},
        {(u16 )18242, "3D RAGE PRO (Mach64 GB, BGA, AGP)", 230, 100, 100, 125, (u32 )2236509},
        {(u16 )18244,
      "3D RAGE PRO (Mach64 GD, BGA, AGP 1x)", 230, 100, 100, 125, (u32 )2236509},
        {(u16 )18249, "3D RAGE PRO (Mach64 GI, BGA, PCI)", 230, 100, 100, 125, (u32 )2252893},
        {(u16 )18256,
      "3D RAGE PRO (Mach64 GP, PQFP, PCI)", 230, 100, 100, 125, (u32 )2236509},
        {(u16 )18257, "3D RAGE PRO (Mach64 GQ, PQFP, PCI, limited 3D)", 230, 100, 100,
      125, (u32 )2236509},
        {(u16 )19522, "3D RAGE LT PRO (Mach64 LB, AGP)", 236, 75, 100, 135, (u32 )2236493},
        {(u16 )19524,
      "3D RAGE LT PRO (Mach64 LD, AGP)", 230, 100, 100, 135, (u32 )2236493},
        {(u16 )19529, "3D RAGE LT PRO (Mach64 LI, PCI)", 230, 100, 100, 135, (u32 )2334797},
        {(u16 )19536,
      "3D RAGE LT PRO (Mach64 LP, PCI)", 230, 100, 100, 135, (u32 )2302029},
        {(u16 )19537, "3D RAGE LT PRO (Mach64 LQ, PCI)", 230, 100, 100, 135, (u32 )2236493},
        {(u16 )18253,
      "3D RAGE XL (Mach64 GM, AGP 2x)", 230, 83, 63, 135, (u32 )8003661},
        {(u16 )18254, "3D RAGE XC (Mach64 GN, AGP 2x)", 230, 83, 63, 135, (u32 )8003661},
        {(u16 )18255,
      "3D RAGE XL (Mach64 GO, PCI-66)", 230, 83, 63, 135, (u32 )8003661},
        {(u16 )18252, "3D RAGE XC (Mach64 GL, PCI-66)", 230, 83, 63, 135, (u32 )8003661},
        {(u16 )18258,
      "3D RAGE XL (Mach64 GR, PCI-33)", 230, 83, 63, 135, (u32 )8003677},
        {(u16 )18259, "3D RAGE XC (Mach64 GS, PCI-33)", 230, 83, 63, 135, (u32 )8003661},
        {(u16 )19533,
      "3D RAGE Mobility P/M (Mach64 LM, AGP 2x)", 230, 83, 125, 135, (u32 )8004173},
        {(u16 )19534,
      "3D RAGE Mobility L (Mach64 LN, AGP 2x)", 230, 83, 125, 135, (u32 )8004173},
        {(u16 )19538,
      "3D RAGE Mobility P/M (Mach64 LR, PCI)", 230, 83, 125, 135, (u32 )8004173},
        {(u16 )19539, "3D RAGE Mobility L (Mach64 LS, PCI)", 230, 83, 125, 135, (u32 )8004173}};
static int correct_chipset(struct atyfb_par *par ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int correct_chipset(struct atyfb_par *par )
{ u8 rev ;
  u16 type ;
  u32 chip_id ;
  char *name ;
  int i ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  u16 __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u16 __cil_tmp16 ;
  int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct atyfb_par *__cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  u16 __cil_tmp55 ;
  int __cil_tmp56 ;
  int __cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  int __cil_tmp139 ;
  int __cil_tmp140 ;
  {
  __cil_tmp7 = 1400UL / 40UL;
  __cil_tmp8 = __cil_tmp7 + 0UL;
  __cil_tmp9 = __cil_tmp8 - 1UL;
  i = (int )__cil_tmp9;
  {
  while (1) {
    while_continue: ;
    if (i >= 0) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp10 = i * 40UL;
    __cil_tmp11 = (unsigned long )(aty_chips) + __cil_tmp10;
    __cil_tmp12 = *((u16 *)__cil_tmp11);
    __cil_tmp13 = (int )__cil_tmp12;
    __cil_tmp14 = (unsigned long )par;
    __cil_tmp15 = __cil_tmp14 + 1068;
    __cil_tmp16 = *((u16 *)__cil_tmp15);
    __cil_tmp17 = (int )__cil_tmp16;
    if (__cil_tmp17 == __cil_tmp13) {
      goto while_break;
    } else {
    }
    }
    i = i - 1;
  }
  while_break: ;
  }
  if (i < 0) {
    return (-19);
  } else {
  }
  {
  __cil_tmp18 = i * 40UL;
  __cil_tmp19 = __cil_tmp18 + 8;
  __cil_tmp20 = (unsigned long )(aty_chips) + __cil_tmp19;
  name = *((char **)__cil_tmp20);
  __cil_tmp21 = (unsigned long )par;
  __cil_tmp22 = __cil_tmp21 + 1008;
  __cil_tmp23 = i * 40UL;
  __cil_tmp24 = __cil_tmp23 + 16;
  __cil_tmp25 = (unsigned long )(aty_chips) + __cil_tmp24;
  *((int *)__cil_tmp22) = *((int *)__cil_tmp25);
  __cil_tmp26 = 1008 + 12;
  __cil_tmp27 = (unsigned long )par;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
  __cil_tmp29 = i * 40UL;
  __cil_tmp30 = __cil_tmp29 + 20;
  __cil_tmp31 = (unsigned long )(aty_chips) + __cil_tmp30;
  *((int *)__cil_tmp28) = *((int *)__cil_tmp31);
  __cil_tmp32 = 1008 + 20;
  __cil_tmp33 = (unsigned long )par;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  __cil_tmp35 = i * 40UL;
  __cil_tmp36 = __cil_tmp35 + 24;
  __cil_tmp37 = (unsigned long )(aty_chips) + __cil_tmp36;
  *((int *)__cil_tmp34) = *((int *)__cil_tmp37);
  __cil_tmp38 = 1008 + 32;
  __cil_tmp39 = (unsigned long )par;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  __cil_tmp41 = i * 40UL;
  __cil_tmp42 = __cil_tmp41 + 28;
  __cil_tmp43 = (unsigned long )(aty_chips) + __cil_tmp42;
  *((int *)__cil_tmp40) = *((int *)__cil_tmp43);
  __cil_tmp44 = (unsigned long )par;
  __cil_tmp45 = __cil_tmp44 + 1044;
  __cil_tmp46 = i * 40UL;
  __cil_tmp47 = __cil_tmp46 + 32;
  __cil_tmp48 = (unsigned long )(aty_chips) + __cil_tmp47;
  *((u32 *)__cil_tmp45) = *((u32 *)__cil_tmp48);
  __cil_tmp49 = (struct atyfb_par *)par;
  chip_id = aty_ld_le32(224, __cil_tmp49);
  __cil_tmp50 = chip_id & 65535U;
  type = (u16 )__cil_tmp50;
  __cil_tmp51 = chip_id & 4278190080U;
  __cil_tmp52 = __cil_tmp51 >> 24;
  rev = (u8 )__cil_tmp52;
  }
  {
  __cil_tmp53 = (unsigned long )par;
  __cil_tmp54 = __cil_tmp53 + 1068;
  __cil_tmp55 = *((u16 *)__cil_tmp54);
  if ((int )__cil_tmp55 == 18264) {
    goto case_18264;
  } else
  if ((int )__cil_tmp55 == 17240) {
    goto case_17240;
  } else
  if ((int )__cil_tmp55 == 22100) {
    goto case_22100;
  } else
  if ((int )__cil_tmp55 == 18260) {
    goto case_18260;
  } else
  if (0) {
    case_18264:
    {
    __cil_tmp56 = (int )type;
    if (__cil_tmp56 != 215) {
      return (-19);
    } else {
    }
    }
    goto switch_break;
    case_17240:
    {
    __cil_tmp57 = (int )type;
    if (__cil_tmp57 != 87) {
      return (-19);
    } else {
    }
    }
    goto switch_break;
    case_22100:
    {
    __cil_tmp58 = (int )rev;
    if ((__cil_tmp58 & 7) == 0) {
      goto case_0;
    } else
    if ((__cil_tmp58 & 7) == 1) {
      goto case_1;
    } else
    if ((__cil_tmp58 & 7) == 2) {
      goto case_2;
    } else
    if (0) {
      case_0:
      {
      __cil_tmp59 = (int )rev;
      if ((__cil_tmp59 & 192) == 0) {
        goto case_0___0;
      } else
      if ((__cil_tmp59 & 192) == 64) {
        goto case_64;
      } else
      if (0) {
        case_0___0:
        name = "ATI264VT (A3) (Mach64 VT)";
        __cil_tmp60 = (unsigned long )par;
        __cil_tmp61 = __cil_tmp60 + 1008;
        *((int *)__cil_tmp61) = 170;
        __cil_tmp62 = 1008 + 12;
        __cil_tmp63 = (unsigned long )par;
        __cil_tmp64 = __cil_tmp63 + __cil_tmp62;
        *((int *)__cil_tmp64) = 67;
        __cil_tmp65 = 1008 + 20;
        __cil_tmp66 = (unsigned long )par;
        __cil_tmp67 = __cil_tmp66 + __cil_tmp65;
        *((int *)__cil_tmp67) = 67;
        __cil_tmp68 = 1008 + 32;
        __cil_tmp69 = (unsigned long )par;
        __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
        *((int *)__cil_tmp70) = 80;
        __cil_tmp71 = (unsigned long )par;
        __cil_tmp72 = __cil_tmp71 + 1044;
        *((u32 *)__cil_tmp72) = (u32 )4418;
        goto switch_break___1;
        case_64:
        name = "ATI264VT2 (A4) (Mach64 VT)";
        __cil_tmp73 = (unsigned long )par;
        __cil_tmp74 = __cil_tmp73 + 1008;
        *((int *)__cil_tmp74) = 200;
        __cil_tmp75 = 1008 + 12;
        __cil_tmp76 = (unsigned long )par;
        __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
        *((int *)__cil_tmp77) = 67;
        __cil_tmp78 = 1008 + 20;
        __cil_tmp79 = (unsigned long )par;
        __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
        *((int *)__cil_tmp80) = 67;
        __cil_tmp81 = 1008 + 32;
        __cil_tmp82 = (unsigned long )par;
        __cil_tmp83 = __cil_tmp82 + __cil_tmp81;
        *((int *)__cil_tmp83) = 80;
        __cil_tmp84 = (unsigned long )par;
        __cil_tmp85 = __cil_tmp84 + 1044;
        *((u32 *)__cil_tmp85) = (u32 )4450;
        goto switch_break___1;
      } else {
        switch_break___1: ;
      }
      }
      goto switch_break___0;
      case_1:
      name = "ATI264VT3 (B1) (Mach64 VT)";
      __cil_tmp86 = (unsigned long )par;
      __cil_tmp87 = __cil_tmp86 + 1008;
      *((int *)__cil_tmp87) = 200;
      __cil_tmp88 = 1008 + 12;
      __cil_tmp89 = (unsigned long )par;
      __cil_tmp90 = __cil_tmp89 + __cil_tmp88;
      *((int *)__cil_tmp90) = 67;
      __cil_tmp91 = 1008 + 20;
      __cil_tmp92 = (unsigned long )par;
      __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
      *((int *)__cil_tmp93) = 67;
      __cil_tmp94 = 1008 + 32;
      __cil_tmp95 = (unsigned long )par;
      __cil_tmp96 = __cil_tmp95 + __cil_tmp94;
      *((int *)__cil_tmp96) = 80;
      __cil_tmp97 = (unsigned long )par;
      __cil_tmp98 = __cil_tmp97 + 1044;
      *((u32 *)__cil_tmp98) = (u32 )4420;
      goto switch_break___0;
      case_2:
      name = "ATI264VT3 (B2) (Mach64 VT)";
      __cil_tmp99 = (unsigned long )par;
      __cil_tmp100 = __cil_tmp99 + 1008;
      *((int *)__cil_tmp100) = 200;
      __cil_tmp101 = 1008 + 12;
      __cil_tmp102 = (unsigned long )par;
      __cil_tmp103 = __cil_tmp102 + __cil_tmp101;
      *((int *)__cil_tmp103) = 67;
      __cil_tmp104 = 1008 + 20;
      __cil_tmp105 = (unsigned long )par;
      __cil_tmp106 = __cil_tmp105 + __cil_tmp104;
      *((int *)__cil_tmp106) = 67;
      __cil_tmp107 = 1008 + 32;
      __cil_tmp108 = (unsigned long )par;
      __cil_tmp109 = __cil_tmp108 + __cil_tmp107;
      *((int *)__cil_tmp109) = 80;
      __cil_tmp110 = (unsigned long )par;
      __cil_tmp111 = __cil_tmp110 + 1044;
      *((u32 *)__cil_tmp111) = (u32 )4436;
      goto switch_break___0;
    } else {
      switch_break___0: ;
    }
    }
    goto switch_break;
    case_18260:
    {
    __cil_tmp112 = (int )rev;
    if ((__cil_tmp112 & 7) == 1) {
      goto case_1___0;
    } else
    if ((__cil_tmp112 & 7) == 2) {
      goto case_2___0;
    } else
    if (0) {
      case_1___0:
      name = "3D RAGE II (Mach64 GT)";
      __cil_tmp113 = (unsigned long )par;
      __cil_tmp114 = __cil_tmp113 + 1008;
      *((int *)__cil_tmp114) = 170;
      __cil_tmp115 = 1008 + 12;
      __cil_tmp116 = (unsigned long )par;
      __cil_tmp117 = __cil_tmp116 + __cil_tmp115;
      *((int *)__cil_tmp117) = 67;
      __cil_tmp118 = 1008 + 20;
      __cil_tmp119 = (unsigned long )par;
      __cil_tmp120 = __cil_tmp119 + __cil_tmp118;
      *((int *)__cil_tmp120) = 67;
      __cil_tmp121 = 1008 + 32;
      __cil_tmp122 = (unsigned long )par;
      __cil_tmp123 = __cil_tmp122 + __cil_tmp121;
      *((int *)__cil_tmp123) = 80;
      __cil_tmp124 = (unsigned long )par;
      __cil_tmp125 = __cil_tmp124 + 1044;
      *((u32 *)__cil_tmp125) = (u32 )139348;
      goto switch_break___2;
      case_2___0:
      name = "3D RAGE II+ (Mach64 GT)";
      __cil_tmp126 = (unsigned long )par;
      __cil_tmp127 = __cil_tmp126 + 1008;
      *((int *)__cil_tmp127) = 200;
      __cil_tmp128 = 1008 + 12;
      __cil_tmp129 = (unsigned long )par;
      __cil_tmp130 = __cil_tmp129 + __cil_tmp128;
      *((int *)__cil_tmp130) = 67;
      __cil_tmp131 = 1008 + 20;
      __cil_tmp132 = (unsigned long )par;
      __cil_tmp133 = __cil_tmp132 + __cil_tmp131;
      *((int *)__cil_tmp133) = 67;
      __cil_tmp134 = 1008 + 32;
      __cil_tmp135 = (unsigned long )par;
      __cil_tmp136 = __cil_tmp135 + __cil_tmp134;
      *((int *)__cil_tmp136) = 100;
      __cil_tmp137 = (unsigned long )par;
      __cil_tmp138 = __cil_tmp137 + 1044;
      *((u32 *)__cil_tmp138) = (u32 )139348;
      goto switch_break___2;
    } else {
      switch_break___2: ;
    }
    }
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  {
  __cil_tmp139 = (int )type;
  __cil_tmp140 = (int )rev;
  printk("<6>atyfb: %s [0x%04x rev 0x%02x]\n", name, __cil_tmp139, __cil_tmp140);
  }
  return (0);
}
}
static char ram_dram[5] __attribute__((__section__(".devinit.data"))) = { (char )'D', (char )'R', (char )'A', (char )'M',
        (char )'\000'};
static char ram_resv[5] __attribute__((__section__(".devinit.data"))) = { (char )'R', (char )'E', (char )'S', (char )'V',
        (char )'\000'};
static char ram_vram[5] __attribute__((__section__(".devinit.data"))) = { (char )'V', (char )'R', (char )'A', (char )'M',
        (char )'\000'};
static char ram_edo[4] __attribute__((__section__(".devinit.data"))) = { (char )'E', (char )'D', (char )'O', (char )'\000'};
static char ram_sdram[12] __attribute__((__section__(".devinit.data"))) =
  { (char )'S', (char )'D', (char )'R', (char )'A',
        (char )'M', (char )' ', (char )'(', (char )'1',
        (char )':', (char )'1', (char )')', (char )'\000'};
static char ram_sgram[12] __attribute__((__section__(".devinit.data"))) =
  { (char )'S', (char )'G', (char )'R', (char )'A',
        (char )'M', (char )' ', (char )'(', (char )'1',
        (char )':', (char )'1', (char )')', (char )'\000'};
static char ram_sdram32[21] __attribute__((__section__(".devinit.data"))) =
  { (char )'S', (char )'D', (char )'R', (char )'A',
        (char )'M', (char )' ', (char )'(', (char )'2',
        (char )':', (char )'1', (char )')', (char )' ',
        (char )'(', (char )'3', (char )'2', (char )'-',
        (char )'b', (char )'i', (char )'t', (char )')',
        (char )'\000'};
static char ram_wram[5] __attribute__((__section__(".devinit.data"))) = { (char )'W', (char )'R', (char )'A', (char )'M',
        (char )'\000'};
static char ram_off[4] __attribute__((__section__(".devinit.data"))) = { (char )'O', (char )'F', (char )'F', (char )'\000'};
static char *aty_gx_ram[8] __attribute__((__section__(".devinit.data"))) =
  { ram_dram, ram_vram, ram_vram, ram_dram,
        ram_dram, ram_vram, ram_vram, ram_resv};
static char *aty_ct_ram[8] __attribute__((__section__(".devinit.data"))) =
  { ram_off, ram_dram, ram_edo, ram_edo,
        ram_sdram, ram_sgram, ram_wram, ram_resv};
static char *aty_xl_ram[8] __attribute__((__section__(".devinit.data"))) =
  { ram_off, ram_dram, ram_edo, ram_edo,
        ram_sdram, ram_sgram, ram_sdram32, ram_resv};
static u32 atyfb_get_pixclock(struct fb_var_screeninfo *var , struct atyfb_par *par )
{ u32 pixclock ;
  u32 lcd_on_off ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  struct atyfb_par *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  {
  __cil_tmp5 = (unsigned long )var;
  __cil_tmp6 = __cil_tmp5 + 100;
  pixclock = *((__u32 *)__cil_tmp6);
  __cil_tmp7 = 0 + 44;
  __cil_tmp8 = 960 + __cil_tmp7;
  __cil_tmp9 = (unsigned long )par;
  __cil_tmp10 = __cil_tmp9 + __cil_tmp8;
  *((u32 *)__cil_tmp10) = (u32 )0;
  {
  __cil_tmp11 = (unsigned long )par;
  __cil_tmp12 = __cil_tmp11 + 1136;
  __cil_tmp13 = *((unsigned long *)__cil_tmp12);
  if (__cil_tmp13 != 0UL) {
    {
    __cil_tmp14 = (struct atyfb_par *)par;
    lcd_on_off = aty_ld_lcd(1, __cil_tmp14);
    }
    {
    __cil_tmp15 = (unsigned long )lcd_on_off;
    if (__cil_tmp15 & 2UL) {
      __cil_tmp16 = 0 + 44;
      __cil_tmp17 = 960 + __cil_tmp16;
      __cil_tmp18 = (unsigned long )par;
      __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
      *((u32 *)__cil_tmp19) = *((__u32 *)var);
      __cil_tmp20 = (unsigned long )par;
      __cil_tmp21 = __cil_tmp20 + 1148;
      pixclock = *((u32 *)__cil_tmp21);
    } else {
    }
    }
  } else {
  }
  }
  return (pixclock);
}
}
static void aty_get_crtc(struct atyfb_par *par , struct crtc *crtc )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u32 __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u32 __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  u32 __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u32 __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  u32 __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  u32 __cil_tmp70 ;
  {
  {
  __cil_tmp3 = (unsigned long )par;
  __cil_tmp4 = __cil_tmp3 + 1136;
  __cil_tmp5 = *((unsigned long *)__cil_tmp4);
  if (__cil_tmp5 != 0UL) {
    {
    __cil_tmp6 = (unsigned long )par;
    __cil_tmp7 = __cil_tmp6 + 1044;
    __cil_tmp8 = *((u32 *)__cil_tmp7);
    __cil_tmp9 = __cil_tmp8 & 262144U;
    if (! __cil_tmp9) {
      {
      __cil_tmp10 = (unsigned long )crtc;
      __cil_tmp11 = __cil_tmp10 + 92;
      *((u32 *)__cil_tmp11) = aty_ld_le32(164, par);
      __cil_tmp12 = (unsigned long )crtc;
      __cil_tmp13 = __cil_tmp12 + 92;
      __cil_tmp14 = *((u32 *)__cil_tmp13);
      aty_st_le32(164, __cil_tmp14, par);
      }
    } else {
    }
    }
    {
    __cil_tmp15 = (unsigned long )crtc;
    __cil_tmp16 = __cil_tmp15 + 88;
    *((u32 *)__cil_tmp16) = aty_ld_lcd(0, par);
    __cil_tmp17 = (unsigned long )crtc;
    __cil_tmp18 = __cil_tmp17 + 84;
    *((u32 *)__cil_tmp18) = aty_ld_lcd(1, par);
    __cil_tmp19 = (unsigned long )crtc;
    __cil_tmp20 = __cil_tmp19 + 84;
    __cil_tmp21 = *((u32 *)__cil_tmp20);
    __cil_tmp22 = (unsigned long )__cil_tmp21;
    __cil_tmp23 = __cil_tmp22 & 0xffffffff37ffffffUL;
    __cil_tmp24 = (u32 )__cil_tmp23;
    aty_st_lcd(1, __cil_tmp24, par);
    __cil_tmp25 = (unsigned long )crtc;
    __cil_tmp26 = __cil_tmp25 + 56;
    *((u32 *)__cil_tmp26) = aty_ld_lcd(4, par);
    __cil_tmp27 = (unsigned long )crtc;
    __cil_tmp28 = __cil_tmp27 + 60;
    *((u32 *)__cil_tmp28) = aty_ld_lcd(5, par);
    }
    {
    __cil_tmp29 = (unsigned long )par;
    __cil_tmp30 = __cil_tmp29 + 1044;
    __cil_tmp31 = *((u32 *)__cil_tmp30);
    __cil_tmp32 = __cil_tmp31 & 262144U;
    if (! __cil_tmp32) {
      {
      __cil_tmp33 = (unsigned long )crtc;
      __cil_tmp34 = __cil_tmp33 + 64;
      *((u32 *)__cil_tmp34) = aty_ld_lcd(6, par);
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp35 = (unsigned long )crtc;
  __cil_tmp36 = __cil_tmp35 + 20;
  *((u32 *)__cil_tmp36) = aty_ld_le32(0, par);
  __cil_tmp37 = (unsigned long )crtc;
  __cil_tmp38 = __cil_tmp37 + 24;
  *((u32 *)__cil_tmp38) = aty_ld_le32(4, par);
  __cil_tmp39 = (unsigned long )crtc;
  __cil_tmp40 = __cil_tmp39 + 28;
  *((u32 *)__cil_tmp40) = aty_ld_le32(8, par);
  __cil_tmp41 = (unsigned long )crtc;
  __cil_tmp42 = __cil_tmp41 + 32;
  *((u32 *)__cil_tmp42) = aty_ld_le32(12, par);
  __cil_tmp43 = (unsigned long )crtc;
  __cil_tmp44 = __cil_tmp43 + 36;
  *((u32 *)__cil_tmp44) = aty_ld_le32(16, par);
  __cil_tmp45 = (unsigned long )crtc;
  __cil_tmp46 = __cil_tmp45 + 40;
  *((u32 *)__cil_tmp46) = aty_ld_le32(20, par);
  __cil_tmp47 = (unsigned long )crtc;
  __cil_tmp48 = __cil_tmp47 + 44;
  *((u32 *)__cil_tmp48) = aty_ld_le32(28, par);
  }
  {
  __cil_tmp49 = (unsigned long )par;
  __cil_tmp50 = __cil_tmp49 + 1136;
  __cil_tmp51 = *((unsigned long *)__cil_tmp50);
  if (__cil_tmp51 != 0UL) {
    {
    __cil_tmp52 = (unsigned long )crtc;
    __cil_tmp53 = __cil_tmp52 + 84;
    __cil_tmp54 = *((u32 *)__cil_tmp53);
    __cil_tmp55 = (unsigned long )__cil_tmp54;
    __cil_tmp56 = __cil_tmp55 & 0xfffffffff7ffffffUL;
    __cil_tmp57 = __cil_tmp56 | 1073741824UL;
    __cil_tmp58 = __cil_tmp57 | 2147483648UL;
    __cil_tmp59 = (u32 )__cil_tmp58;
    aty_st_lcd(1, __cil_tmp59, par);
    __cil_tmp60 = (unsigned long )crtc;
    __cil_tmp61 = __cil_tmp60 + 68;
    *((u32 *)__cil_tmp61) = aty_ld_le32(0, par);
    __cil_tmp62 = (unsigned long )crtc;
    __cil_tmp63 = __cil_tmp62 + 72;
    *((u32 *)__cil_tmp63) = aty_ld_le32(4, par);
    __cil_tmp64 = (unsigned long )crtc;
    __cil_tmp65 = __cil_tmp64 + 76;
    *((u32 *)__cil_tmp65) = aty_ld_le32(8, par);
    __cil_tmp66 = (unsigned long )crtc;
    __cil_tmp67 = __cil_tmp66 + 80;
    *((u32 *)__cil_tmp67) = aty_ld_le32(12, par);
    __cil_tmp68 = (unsigned long )crtc;
    __cil_tmp69 = __cil_tmp68 + 84;
    __cil_tmp70 = *((u32 *)__cil_tmp69);
    aty_st_le32(1, __cil_tmp70, par);
    }
  } else {
  }
  }
  return;
}
}
static void aty_set_crtc(struct atyfb_par *par , struct crtc *crtc )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u32 __cil_tmp8 ;
  unsigned int __cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u32 __cil_tmp13 ;
  u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  u32 __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  u32 __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  u32 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u32 __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u32 __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u32 __cil_tmp40 ;
  u32 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  u32 __cil_tmp44 ;
  u32 __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u32 __cil_tmp48 ;
  u32 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  u32 __cil_tmp52 ;
  u32 __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  u32 __cil_tmp56 ;
  u32 __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u32 __cil_tmp60 ;
  u32 __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  u32 __cil_tmp64 ;
  u32 __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  u32 __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  u32 __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  u32 __cil_tmp79 ;
  u32 __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  u32 __cil_tmp83 ;
  u32 __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  u32 __cil_tmp87 ;
  u32 __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  u32 __cil_tmp91 ;
  u32 __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  u32 __cil_tmp95 ;
  u32 __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  u32 __cil_tmp99 ;
  u32 __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  u32 __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  u32 __cil_tmp111 ;
  u32 __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  u32 __cil_tmp115 ;
  u32 __cil_tmp116 ;
  {
  {
  __cil_tmp3 = (unsigned long )par;
  __cil_tmp4 = __cil_tmp3 + 1136;
  __cil_tmp5 = *((unsigned long *)__cil_tmp4);
  if (__cil_tmp5 != 0UL) {
    {
    __cil_tmp6 = (unsigned long )crtc;
    __cil_tmp7 = __cil_tmp6 + 44;
    __cil_tmp8 = *((u32 *)__cil_tmp7);
    __cil_tmp9 = __cil_tmp8 & 4244635647U;
    __cil_tmp10 = (u32 )__cil_tmp9;
    aty_st_le32(28, __cil_tmp10, par);
    __cil_tmp11 = (unsigned long )crtc;
    __cil_tmp12 = __cil_tmp11 + 88;
    __cil_tmp13 = *((u32 *)__cil_tmp12);
    __cil_tmp14 = (u32 )__cil_tmp13;
    aty_st_lcd(0, __cil_tmp14, par);
    __cil_tmp15 = (unsigned long )crtc;
    __cil_tmp16 = __cil_tmp15 + 84;
    __cil_tmp17 = *((u32 *)__cil_tmp16);
    __cil_tmp18 = (unsigned long )__cil_tmp17;
    __cil_tmp19 = __cil_tmp18 & 0xffffffff37ffffffUL;
    __cil_tmp20 = (u32 )__cil_tmp19;
    aty_st_lcd(1, __cil_tmp20, par);
    __cil_tmp21 = (unsigned long )crtc;
    __cil_tmp22 = __cil_tmp21 + 56;
    __cil_tmp23 = *((u32 *)__cil_tmp22);
    __cil_tmp24 = (unsigned long )__cil_tmp23;
    __cil_tmp25 = __cil_tmp24 & 0xffffffff3fffffffUL;
    __cil_tmp26 = (u32 )__cil_tmp25;
    aty_st_lcd(4, __cil_tmp26, par);
    __cil_tmp27 = (unsigned long )crtc;
    __cil_tmp28 = __cil_tmp27 + 60;
    __cil_tmp29 = *((u32 *)__cil_tmp28);
    __cil_tmp30 = (unsigned long )__cil_tmp29;
    __cil_tmp31 = __cil_tmp30 & 0xffffffff000003ffUL;
    __cil_tmp32 = (u32 )__cil_tmp31;
    aty_st_lcd(5, __cil_tmp32, par);
    }
  } else {
  }
  }
  {
  __cil_tmp33 = (unsigned long )crtc;
  __cil_tmp34 = __cil_tmp33 + 44;
  __cil_tmp35 = *((u32 *)__cil_tmp34);
  __cil_tmp36 = __cil_tmp35 & 4261412863U;
  __cil_tmp37 = (u32 )__cil_tmp36;
  aty_st_le32(28, __cil_tmp37, par);
  __cil_tmp38 = (unsigned long )crtc;
  __cil_tmp39 = __cil_tmp38 + 20;
  __cil_tmp40 = *((u32 *)__cil_tmp39);
  __cil_tmp41 = (u32 )__cil_tmp40;
  aty_st_le32(0, __cil_tmp41, par);
  __cil_tmp42 = (unsigned long )crtc;
  __cil_tmp43 = __cil_tmp42 + 24;
  __cil_tmp44 = *((u32 *)__cil_tmp43);
  __cil_tmp45 = (u32 )__cil_tmp44;
  aty_st_le32(4, __cil_tmp45, par);
  __cil_tmp46 = (unsigned long )crtc;
  __cil_tmp47 = __cil_tmp46 + 28;
  __cil_tmp48 = *((u32 *)__cil_tmp47);
  __cil_tmp49 = (u32 )__cil_tmp48;
  aty_st_le32(8, __cil_tmp49, par);
  __cil_tmp50 = (unsigned long )crtc;
  __cil_tmp51 = __cil_tmp50 + 32;
  __cil_tmp52 = *((u32 *)__cil_tmp51);
  __cil_tmp53 = (u32 )__cil_tmp52;
  aty_st_le32(12, __cil_tmp53, par);
  __cil_tmp54 = (unsigned long )crtc;
  __cil_tmp55 = __cil_tmp54 + 40;
  __cil_tmp56 = *((u32 *)__cil_tmp55);
  __cil_tmp57 = (u32 )__cil_tmp56;
  aty_st_le32(20, __cil_tmp57, par);
  __cil_tmp58 = (unsigned long )crtc;
  __cil_tmp59 = __cil_tmp58 + 36;
  __cil_tmp60 = *((u32 *)__cil_tmp59);
  __cil_tmp61 = (u32 )__cil_tmp60;
  aty_st_le32(16, __cil_tmp61, par);
  __cil_tmp62 = (unsigned long )crtc;
  __cil_tmp63 = __cil_tmp62 + 44;
  __cil_tmp64 = *((u32 *)__cil_tmp63);
  __cil_tmp65 = (u32 )__cil_tmp64;
  aty_st_le32(28, __cil_tmp65, par);
  }
  {
  __cil_tmp66 = (unsigned long )par;
  __cil_tmp67 = __cil_tmp66 + 1136;
  __cil_tmp68 = *((unsigned long *)__cil_tmp67);
  if (__cil_tmp68 != 0UL) {
    {
    __cil_tmp69 = (unsigned long )crtc;
    __cil_tmp70 = __cil_tmp69 + 84;
    __cil_tmp71 = *((u32 *)__cil_tmp70);
    __cil_tmp72 = (unsigned long )__cil_tmp71;
    __cil_tmp73 = __cil_tmp72 & 0xfffffffff7ffffffUL;
    __cil_tmp74 = __cil_tmp73 | 1073741824UL;
    __cil_tmp75 = __cil_tmp74 | 2147483648UL;
    __cil_tmp76 = (u32 )__cil_tmp75;
    aty_st_lcd(1, __cil_tmp76, par);
    __cil_tmp77 = (unsigned long )crtc;
    __cil_tmp78 = __cil_tmp77 + 68;
    __cil_tmp79 = *((u32 *)__cil_tmp78);
    __cil_tmp80 = (u32 )__cil_tmp79;
    aty_st_le32(0, __cil_tmp80, par);
    __cil_tmp81 = (unsigned long )crtc;
    __cil_tmp82 = __cil_tmp81 + 72;
    __cil_tmp83 = *((u32 *)__cil_tmp82);
    __cil_tmp84 = (u32 )__cil_tmp83;
    aty_st_le32(4, __cil_tmp84, par);
    __cil_tmp85 = (unsigned long )crtc;
    __cil_tmp86 = __cil_tmp85 + 76;
    __cil_tmp87 = *((u32 *)__cil_tmp86);
    __cil_tmp88 = (u32 )__cil_tmp87;
    aty_st_le32(8, __cil_tmp88, par);
    __cil_tmp89 = (unsigned long )crtc;
    __cil_tmp90 = __cil_tmp89 + 80;
    __cil_tmp91 = *((u32 *)__cil_tmp90);
    __cil_tmp92 = (u32 )__cil_tmp91;
    aty_st_le32(12, __cil_tmp92, par);
    __cil_tmp93 = (unsigned long )crtc;
    __cil_tmp94 = __cil_tmp93 + 84;
    __cil_tmp95 = *((u32 *)__cil_tmp94);
    __cil_tmp96 = (u32 )__cil_tmp95;
    aty_st_lcd(1, __cil_tmp96, par);
    __cil_tmp97 = (unsigned long )crtc;
    __cil_tmp98 = __cil_tmp97 + 56;
    __cil_tmp99 = *((u32 *)__cil_tmp98);
    __cil_tmp100 = (u32 )__cil_tmp99;
    aty_st_lcd(4, __cil_tmp100, par);
    __cil_tmp101 = (unsigned long )crtc;
    __cil_tmp102 = __cil_tmp101 + 60;
    __cil_tmp103 = *((u32 *)__cil_tmp102);
    __cil_tmp104 = (u32 )__cil_tmp103;
    aty_st_lcd(5, __cil_tmp104, par);
    }
    {
    __cil_tmp105 = (unsigned long )par;
    __cil_tmp106 = __cil_tmp105 + 1044;
    __cil_tmp107 = *((u32 *)__cil_tmp106);
    __cil_tmp108 = __cil_tmp107 & 262144U;
    if (! __cil_tmp108) {
      {
      __cil_tmp109 = (unsigned long )crtc;
      __cil_tmp110 = __cil_tmp109 + 64;
      __cil_tmp111 = *((u32 *)__cil_tmp110);
      __cil_tmp112 = (u32 )__cil_tmp111;
      aty_st_lcd(6, __cil_tmp112, par);
      aty_ld_le32(164, par);
      __cil_tmp113 = (unsigned long )crtc;
      __cil_tmp114 = __cil_tmp113 + 92;
      __cil_tmp115 = *((u32 *)__cil_tmp114);
      __cil_tmp116 = (u32 )__cil_tmp115;
      aty_st_le32(164, __cil_tmp116, par);
      }
    } else {
    }
    }
  } else {
  }
  }
  return;
}
}
static u32 calc_line_length(struct atyfb_par *par , u32 vxres , u32 bpp )
{ u32 line_length ;
  u32 __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  u8 __cil_tmp8 ;
  int __cil_tmp9 ;
  u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  u8 __cil_tmp17 ;
  int __cil_tmp18 ;
  u32 __cil_tmp19 ;
  {
  __cil_tmp5 = vxres * bpp;
  line_length = __cil_tmp5 / 8U;
  {
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 1065;
  __cil_tmp8 = *((u8 *)__cil_tmp7);
  __cil_tmp9 = (int )__cil_tmp8;
  if (__cil_tmp9 == 5) {
    __cil_tmp10 = line_length + 63U;
    line_length = __cil_tmp10 & 4294967232U;
  } else {
    {
    __cil_tmp11 = (unsigned long )par;
    __cil_tmp12 = __cil_tmp11 + 1044;
    __cil_tmp13 = *((u32 *)__cil_tmp12);
    __cil_tmp14 = __cil_tmp13 & 4194304U;
    if (! __cil_tmp14) {
      {
      __cil_tmp15 = (unsigned long )par;
      __cil_tmp16 = __cil_tmp15 + 1065;
      __cil_tmp17 = *((u8 *)__cil_tmp16);
      __cil_tmp18 = (int )__cil_tmp17;
      if (__cil_tmp18 == 6) {
        __cil_tmp19 = line_length + 63U;
        line_length = __cil_tmp19 & 4294967232U;
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  return (line_length);
}
}
static char StretchLoops[5] = { (char )10, (char const )12, (char const )13, (char const )15,
        (char )16};
static int aty_var_to_crtc(struct fb_info *info , struct fb_var_screeninfo *var ,
                           struct crtc *crtc )
{ struct atyfb_par *par ;
  u32 xres ;
  u32 yres ;
  u32 vxres ;
  u32 vyres ;
  u32 xoffset ;
  u32 yoffset ;
  u32 bpp ;
  u32 sync ;
  u32 vmode ;
  u32 vdisplay ;
  u32 h_total ;
  u32 h_disp ;
  u32 h_sync_strt ;
  u32 h_sync_end ;
  u32 h_sync_dly ;
  u32 h_sync_wid ;
  u32 h_sync_pol ;
  u32 v_total ;
  u32 v_disp ;
  u32 v_sync_strt ;
  u32 v_sync_end ;
  u32 v_sync_wid ;
  u32 v_sync_pol ;
  u32 c_sync ;
  u32 pix_width ;
  u32 dp_pix_width ;
  u32 dp_chain_mask ;
  u32 line_length ;
  u32 lcd_index ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  int VScan ;
  u32 tmp___10 ;
  int HDisplay ;
  int nStretch ;
  int Remainder ;
  int horz_stretch_loop ;
  int BestRemainder ;
  int Numerator ;
  int Denominator ;
  int Index ;
  int horz_stretch_ratio ;
  int Accumulator ;
  int reuse_previous ;
  int tmp___11 ;
  u32 tmp___12 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  void * __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  __u32 __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  __u32 __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  __u32 __cil_tmp63 ;
  __u32 __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  __u32 __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  __u32 __cil_tmp71 ;
  __u32 __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  __u32 __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  __u32 __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  __u32 __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  __u32 __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  __u32 __cil_tmp89 ;
  u32 __cil_tmp90 ;
  u32 __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  u32 __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  __u32 __cil_tmp97 ;
  unsigned int __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  __u32 __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  __u32 __cil_tmp107 ;
  unsigned int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  __u32 __cil_tmp111 ;
  unsigned int __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  __u32 __cil_tmp115 ;
  u32 __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  __u32 __cil_tmp119 ;
  u32 __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  __u32 __cil_tmp123 ;
  unsigned int __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  __u32 __cil_tmp127 ;
  u32 __cil_tmp128 ;
  u32 __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  __u32 __cil_tmp132 ;
  u32 __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  __u32 __cil_tmp136 ;
  u32 __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  __u32 __cil_tmp140 ;
  u32 __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  u32 __cil_tmp147 ;
  unsigned int __cil_tmp148 ;
  struct atyfb_par *__cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  struct atyfb_par *__cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  u32 __cil_tmp155 ;
  unsigned int __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  u32 __cil_tmp161 ;
  struct atyfb_par *__cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  struct atyfb_par *__cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  u32 __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  u32 __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  u32 __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  u16 __cil_tmp190 ;
  u32 __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  u16 __cil_tmp194 ;
  u32 __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  u32 __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  __u32 __cil_tmp202 ;
  unsigned int __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  u32 __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  __u32 __cil_tmp213 ;
  unsigned int __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  u32 __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  u16 __cil_tmp224 ;
  u32 __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  u16 __cil_tmp228 ;
  u32 __cil_tmp229 ;
  u32 __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  u16 __cil_tmp233 ;
  u32 __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  u16 __cil_tmp237 ;
  u32 __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  u16 __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  u16 __cil_tmp244 ;
  u32 __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  unsigned long __cil_tmp247 ;
  u16 __cil_tmp248 ;
  int __cil_tmp249 ;
  int __cil_tmp250 ;
  u32 __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  u16 __cil_tmp254 ;
  int __cil_tmp255 ;
  int __cil_tmp256 ;
  u32 __cil_tmp257 ;
  unsigned long __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  u16 __cil_tmp260 ;
  int __cil_tmp261 ;
  int __cil_tmp262 ;
  u32 __cil_tmp263 ;
  u32 __cil_tmp264 ;
  u32 __cil_tmp265 ;
  u32 __cil_tmp266 ;
  u32 __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  __u32 __cil_tmp270 ;
  unsigned int __cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  __u32 __cil_tmp274 ;
  unsigned int __cil_tmp275 ;
  unsigned long __cil_tmp276 ;
  unsigned long __cil_tmp277 ;
  __u32 __cil_tmp278 ;
  unsigned int __cil_tmp279 ;
  unsigned long __cil_tmp280 ;
  unsigned long __cil_tmp281 ;
  unsigned long __cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  unsigned long __cil_tmp284 ;
  u32 __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned long __cil_tmp287 ;
  unsigned long __cil_tmp288 ;
  u16 __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  unsigned long __cil_tmp291 ;
  __u32 __cil_tmp292 ;
  unsigned int __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  __u32 __cil_tmp296 ;
  unsigned int __cil_tmp297 ;
  unsigned long __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  __u32 __cil_tmp300 ;
  unsigned int __cil_tmp301 ;
  unsigned long __cil_tmp302 ;
  unsigned long __cil_tmp303 ;
  unsigned long __cil_tmp304 ;
  unsigned long __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  unsigned long __cil_tmp307 ;
  unsigned long __cil_tmp308 ;
  unsigned long __cil_tmp309 ;
  unsigned long __cil_tmp310 ;
  unsigned long __cil_tmp311 ;
  u32 __cil_tmp312 ;
  u32 __cil_tmp313 ;
  u32 __cil_tmp314 ;
  u32 __cil_tmp315 ;
  u32 __cil_tmp316 ;
  u32 __cil_tmp317 ;
  u32 __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  unsigned long __cil_tmp320 ;
  unsigned long __cil_tmp321 ;
  unsigned long __cil_tmp322 ;
  u32 __cil_tmp323 ;
  unsigned long __cil_tmp324 ;
  unsigned long __cil_tmp325 ;
  u32 __cil_tmp326 ;
  u32 __cil_tmp327 ;
  unsigned int __cil_tmp328 ;
  unsigned int __cil_tmp329 ;
  u32 __cil_tmp330 ;
  unsigned int __cil_tmp331 ;
  unsigned int __cil_tmp332 ;
  unsigned int __cil_tmp333 ;
  unsigned int __cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  unsigned long __cil_tmp336 ;
  u32 __cil_tmp337 ;
  unsigned long __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  u32 __cil_tmp340 ;
  u32 __cil_tmp341 ;
  unsigned int __cil_tmp342 ;
  unsigned long __cil_tmp343 ;
  unsigned long __cil_tmp344 ;
  unsigned int __cil_tmp345 ;
  unsigned long __cil_tmp346 ;
  unsigned long __cil_tmp347 ;
  unsigned long __cil_tmp348 ;
  unsigned long __cil_tmp349 ;
  u32 __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  unsigned long __cil_tmp352 ;
  unsigned long __cil_tmp353 ;
  unsigned long __cil_tmp354 ;
  u32 __cil_tmp355 ;
  unsigned long __cil_tmp356 ;
  unsigned long __cil_tmp357 ;
  unsigned long __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  u32 __cil_tmp360 ;
  unsigned long __cil_tmp361 ;
  unsigned long __cil_tmp362 ;
  unsigned long __cil_tmp363 ;
  unsigned long __cil_tmp364 ;
  unsigned long __cil_tmp365 ;
  unsigned long __cil_tmp366 ;
  unsigned long __cil_tmp367 ;
  u32 __cil_tmp368 ;
  unsigned long __cil_tmp369 ;
  unsigned long __cil_tmp370 ;
  unsigned long __cil_tmp371 ;
  unsigned long __cil_tmp372 ;
  u32 __cil_tmp373 ;
  unsigned long __cil_tmp374 ;
  unsigned long __cil_tmp375 ;
  unsigned long __cil_tmp376 ;
  unsigned long __cil_tmp377 ;
  unsigned long __cil_tmp378 ;
  unsigned long __cil_tmp379 ;
  u32 __cil_tmp380 ;
  unsigned long __cil_tmp381 ;
  unsigned long __cil_tmp382 ;
  unsigned long __cil_tmp383 ;
  unsigned long __cil_tmp384 ;
  struct atyfb_par *__cil_tmp385 ;
  unsigned long __cil_tmp386 ;
  unsigned long __cil_tmp387 ;
  u32 __cil_tmp388 ;
  unsigned int __cil_tmp389 ;
  struct atyfb_par *__cil_tmp390 ;
  unsigned long __cil_tmp391 ;
  unsigned long __cil_tmp392 ;
  unsigned long __cil_tmp393 ;
  unsigned long __cil_tmp394 ;
  unsigned long __cil_tmp395 ;
  unsigned long __cil_tmp396 ;
  unsigned long __cil_tmp397 ;
  unsigned long __cil_tmp398 ;
  u32 __cil_tmp399 ;
  unsigned long __cil_tmp400 ;
  unsigned long __cil_tmp401 ;
  unsigned long __cil_tmp402 ;
  unsigned long __cil_tmp403 ;
  u16 __cil_tmp404 ;
  u32 __cil_tmp405 ;
  unsigned long __cil_tmp406 ;
  unsigned long __cil_tmp407 ;
  u32 __cil_tmp408 ;
  unsigned long __cil_tmp409 ;
  unsigned int __cil_tmp410 ;
  unsigned long __cil_tmp411 ;
  unsigned long __cil_tmp412 ;
  u16 __cil_tmp413 ;
  int __cil_tmp414 ;
  unsigned long __cil_tmp415 ;
  unsigned long __cil_tmp416 ;
  u16 __cil_tmp417 ;
  int __cil_tmp418 ;
  unsigned long __cil_tmp419 ;
  unsigned long __cil_tmp420 ;
  u16 __cil_tmp421 ;
  int __cil_tmp422 ;
  int __cil_tmp423 ;
  int __cil_tmp424 ;
  int *__cil_tmp425 ;
  int *__cil_tmp426 ;
  unsigned long __cil_tmp427 ;
  unsigned long __cil_tmp428 ;
  u16 __cil_tmp429 ;
  int *__cil_tmp430 ;
  int __cil_tmp431 ;
  int *__cil_tmp432 ;
  int __cil_tmp433 ;
  int __cil_tmp434 ;
  int *__cil_tmp435 ;
  int __cil_tmp436 ;
  unsigned long __cil_tmp437 ;
  unsigned long __cil_tmp438 ;
  char __cil_tmp439 ;
  int __cil_tmp440 ;
  int *__cil_tmp441 ;
  int __cil_tmp442 ;
  int *__cil_tmp443 ;
  int __cil_tmp444 ;
  int __cil_tmp445 ;
  int __cil_tmp446 ;
  unsigned long __cil_tmp447 ;
  unsigned long __cil_tmp448 ;
  char __cil_tmp449 ;
  int *__cil_tmp450 ;
  int __cil_tmp451 ;
  int *__cil_tmp452 ;
  int __cil_tmp453 ;
  unsigned long __cil_tmp454 ;
  unsigned long __cil_tmp455 ;
  unsigned long __cil_tmp456 ;
  unsigned long __cil_tmp457 ;
  unsigned long __cil_tmp458 ;
  unsigned long __cil_tmp459 ;
  unsigned long __cil_tmp460 ;
  unsigned long __cil_tmp461 ;
  unsigned long __cil_tmp462 ;
  unsigned long __cil_tmp463 ;
  unsigned long __cil_tmp464 ;
  u32 __cil_tmp465 ;
  unsigned long __cil_tmp466 ;
  unsigned long __cil_tmp467 ;
  unsigned long __cil_tmp468 ;
  unsigned long __cil_tmp469 ;
  unsigned long __cil_tmp470 ;
  unsigned long __cil_tmp471 ;
  u16 __cil_tmp472 ;
  unsigned long __cil_tmp473 ;
  unsigned long __cil_tmp474 ;
  unsigned long __cil_tmp475 ;
  unsigned long __cil_tmp476 ;
  unsigned long __cil_tmp477 ;
  unsigned long __cil_tmp478 ;
  unsigned long __cil_tmp479 ;
  unsigned long __cil_tmp480 ;
  u32 __cil_tmp481 ;
  unsigned long __cil_tmp482 ;
  unsigned long __cil_tmp483 ;
  unsigned long __cil_tmp484 ;
  unsigned long __cil_tmp485 ;
  u16 __cil_tmp486 ;
  u32 __cil_tmp487 ;
  unsigned long __cil_tmp488 ;
  unsigned long __cil_tmp489 ;
  u32 __cil_tmp490 ;
  unsigned long __cil_tmp491 ;
  unsigned long __cil_tmp492 ;
  unsigned long __cil_tmp493 ;
  unsigned long __cil_tmp494 ;
  unsigned long __cil_tmp495 ;
  u16 __cil_tmp496 ;
  unsigned long __cil_tmp497 ;
  unsigned long __cil_tmp498 ;
  unsigned long __cil_tmp499 ;
  unsigned long __cil_tmp500 ;
  unsigned long __cil_tmp501 ;
  unsigned long __cil_tmp502 ;
  unsigned long __cil_tmp503 ;
  unsigned long __cil_tmp504 ;
  u32 __cil_tmp505 ;
  unsigned int __cil_tmp506 ;
  unsigned long __cil_tmp507 ;
  unsigned long __cil_tmp508 ;
  u32 __cil_tmp509 ;
  u32 __cil_tmp510 ;
  unsigned long __cil_tmp511 ;
  unsigned long __cil_tmp512 ;
  unsigned long __cil_tmp513 ;
  unsigned long __cil_tmp514 ;
  u32 __cil_tmp515 ;
  unsigned long __cil_tmp516 ;
  unsigned long __cil_tmp517 ;
  unsigned long __cil_tmp518 ;
  unsigned long __cil_tmp519 ;
  unsigned long __cil_tmp520 ;
  unsigned long __cil_tmp521 ;
  unsigned long __cil_tmp522 ;
  unsigned long __cil_tmp523 ;
  unsigned long __cil_tmp524 ;
  unsigned long __cil_tmp525 ;
  unsigned long __cil_tmp526 ;
  unsigned long __cil_tmp527 ;
  unsigned long __cil_tmp528 ;
  unsigned long __cil_tmp529 ;
  unsigned long __cil_tmp530 ;
  unsigned long __cil_tmp531 ;
  unsigned long __cil_tmp532 ;
  unsigned long __cil_tmp533 ;
  unsigned long __cil_tmp534 ;
  unsigned long __cil_tmp535 ;
  unsigned long __cil_tmp536 ;
  unsigned long __cil_tmp537 ;
  unsigned long __cil_tmp538 ;
  unsigned long __cil_tmp539 ;
  u32 __cil_tmp540 ;
  struct atyfb_par *__cil_tmp541 ;
  unsigned long __cil_tmp542 ;
  unsigned long __cil_tmp543 ;
  unsigned int __cil_tmp544 ;
  unsigned long __cil_tmp545 ;
  unsigned long __cil_tmp546 ;
  u32 __cil_tmp547 ;
  unsigned long __cil_tmp548 ;
  unsigned long __cil_tmp549 ;
  unsigned long __cil_tmp550 ;
  unsigned long __cil_tmp551 ;
  {
  __cil_tmp52 = (unsigned long )info;
  __cil_tmp53 = __cil_tmp52 + 1160;
  __cil_tmp54 = *((void * *)__cil_tmp53);
  par = (struct atyfb_par *)__cil_tmp54;
  __cil_tmp55 = *((__u32 *)var);
  __cil_tmp56 = __cil_tmp55 + 7U;
  __cil_tmp57 = __cil_tmp56 & 4294967288U;
  xres = (u32 )__cil_tmp57;
  __cil_tmp58 = (unsigned long )var;
  __cil_tmp59 = __cil_tmp58 + 4;
  __cil_tmp60 = *((__u32 *)__cil_tmp59);
  yres = (u32 )__cil_tmp60;
  __cil_tmp61 = (unsigned long )var;
  __cil_tmp62 = __cil_tmp61 + 8;
  __cil_tmp63 = *((__u32 *)__cil_tmp62);
  __cil_tmp64 = __cil_tmp63 + 7U;
  __cil_tmp65 = __cil_tmp64 & 4294967288U;
  vxres = (u32 )__cil_tmp65;
  __cil_tmp66 = (unsigned long )var;
  __cil_tmp67 = __cil_tmp66 + 12;
  __cil_tmp68 = *((__u32 *)__cil_tmp67);
  vyres = (u32 )__cil_tmp68;
  __cil_tmp69 = (unsigned long )var;
  __cil_tmp70 = __cil_tmp69 + 16;
  __cil_tmp71 = *((__u32 *)__cil_tmp70);
  __cil_tmp72 = __cil_tmp71 + 7U;
  __cil_tmp73 = __cil_tmp72 & 4294967288U;
  xoffset = (u32 )__cil_tmp73;
  __cil_tmp74 = (unsigned long )var;
  __cil_tmp75 = __cil_tmp74 + 20;
  __cil_tmp76 = *((__u32 *)__cil_tmp75);
  yoffset = (u32 )__cil_tmp76;
  __cil_tmp77 = (unsigned long )var;
  __cil_tmp78 = __cil_tmp77 + 24;
  __cil_tmp79 = *((__u32 *)__cil_tmp78);
  bpp = (u32 )__cil_tmp79;
  if (bpp == 16U) {
    {
    __cil_tmp80 = 44 + 4;
    __cil_tmp81 = (unsigned long )var;
    __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
    __cil_tmp83 = *((__u32 *)__cil_tmp82);
    if (__cil_tmp83 == 5U) {
      bpp = (u32 )15;
    } else {
      bpp = (u32 )16;
    }
    }
  } else {
  }
  __cil_tmp84 = (unsigned long )var;
  __cil_tmp85 = __cil_tmp84 + 128;
  __cil_tmp86 = *((__u32 *)__cil_tmp85);
  sync = (u32 )__cil_tmp86;
  __cil_tmp87 = (unsigned long )var;
  __cil_tmp88 = __cil_tmp87 + 132;
  __cil_tmp89 = *((__u32 *)__cil_tmp88);
  vmode = (u32 )__cil_tmp89;
  {
  __cil_tmp90 = xres + xoffset;
  if (vxres < __cil_tmp90) {
    vxres = xres + xoffset;
  } else {
  }
  }
  h_disp = xres;
  {
  __cil_tmp91 = yres + yoffset;
  if (vyres < __cil_tmp91) {
    vyres = yres + yoffset;
  } else {
  }
  }
  v_disp = yres;
  if (bpp <= 8U) {
    bpp = (u32 )8;
    pix_width = (u32 )512;
    dp_pix_width = (u32 )16908802;
    dp_chain_mask = (u32 )32896;
  } else
  if (bpp <= 15U) {
    bpp = (u32 )16;
    pix_width = (u32 )768;
    dp_pix_width = (u32 )16974595;
    dp_chain_mask = (u32 )16912;
  } else
  if (bpp <= 16U) {
    bpp = (u32 )16;
    pix_width = (u32 )1024;
    dp_pix_width = (u32 )17040388;
    dp_chain_mask = (u32 )33808;
  } else
  if (bpp <= 24U) {
    {
    __cil_tmp92 = (unsigned long )par;
    __cil_tmp93 = __cil_tmp92 + 1044;
    __cil_tmp94 = *((u32 *)__cil_tmp93);
    if (__cil_tmp94 & 64U) {
      bpp = (u32 )24;
      pix_width = (u32 )1280;
      dp_pix_width = (u32 )16908802;
      dp_chain_mask = (u32 )32896;
    } else {
      goto _L;
    }
    }
  } else
  _L:
  if (bpp <= 32U) {
    bpp = (u32 )32;
    pix_width = (u32 )1536;
    dp_pix_width = (u32 )17171974;
    dp_chain_mask = (u32 )32896;
  } else {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp95 = (unsigned long )var;
      __cil_tmp96 = __cil_tmp95 + 84;
      __cil_tmp97 = *((__u32 *)__cil_tmp96);
      __cil_tmp98 = __cil_tmp97 & 2U;
      if (! __cil_tmp98) {
        {
        printk("<2>atyfb: invalid bpp\n");
        }
      } else {
      }
      }
      return (-22);
      goto while_break;
    }
    while_break: ;
    }
  }
  {
  line_length = calc_line_length(par, vxres, bpp);
  }
  {
  __cil_tmp99 = 320 + 24;
  __cil_tmp100 = (unsigned long )info;
  __cil_tmp101 = __cil_tmp100 + __cil_tmp99;
  __cil_tmp102 = *((__u32 *)__cil_tmp101);
  __cil_tmp103 = (u32 )__cil_tmp102;
  __cil_tmp104 = vyres * line_length;
  if (__cil_tmp104 > __cil_tmp103) {
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp105 = (unsigned long )var;
      __cil_tmp106 = __cil_tmp105 + 84;
      __cil_tmp107 = *((__u32 *)__cil_tmp106);
      __cil_tmp108 = __cil_tmp107 & 2U;
      if (! __cil_tmp108) {
        {
        printk("<2>atyfb: not enough video RAM\n");
        }
      } else {
      }
      }
      return (-22);
      goto while_break___0;
    }
    while_break___0: ;
    }
  } else {
  }
  }
  if (sync & 1U) {
    h_sync_pol = (u32 )0;
  } else {
    h_sync_pol = (u32 )1;
  }
  if (sync & 2U) {
    v_sync_pol = (u32 )0;
  } else {
    v_sync_pol = (u32 )1;
  }
  if (xres > 1600U) {
    goto _L___0;
  } else
  if (yres > 1200U) {
    _L___0:
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp109 = (unsigned long )var;
      __cil_tmp110 = __cil_tmp109 + 84;
      __cil_tmp111 = *((__u32 *)__cil_tmp110);
      __cil_tmp112 = __cil_tmp111 & 2U;
      if (! __cil_tmp112) {
        {
        printk("<2>atyfb: MACH64 chips are designed for max 1600x1200\nselect anoter resolution.\n");
        }
      } else {
      }
      }
      return (-22);
      goto while_break___1;
    }
    while_break___1: ;
    }
  } else {
  }
  __cil_tmp113 = (unsigned long )var;
  __cil_tmp114 = __cil_tmp113 + 108;
  __cil_tmp115 = *((__u32 *)__cil_tmp114);
  __cil_tmp116 = (u32 )__cil_tmp115;
  h_sync_strt = h_disp + __cil_tmp116;
  __cil_tmp117 = (unsigned long )var;
  __cil_tmp118 = __cil_tmp117 + 120;
  __cil_tmp119 = *((__u32 *)__cil_tmp118);
  __cil_tmp120 = (u32 )__cil_tmp119;
  h_sync_end = h_sync_strt + __cil_tmp120;
  __cil_tmp121 = (unsigned long )var;
  __cil_tmp122 = __cil_tmp121 + 108;
  __cil_tmp123 = *((__u32 *)__cil_tmp122);
  __cil_tmp124 = __cil_tmp123 & 7U;
  h_sync_dly = (u32 )__cil_tmp124;
  __cil_tmp125 = (unsigned long )var;
  __cil_tmp126 = __cil_tmp125 + 104;
  __cil_tmp127 = *((__u32 *)__cil_tmp126);
  __cil_tmp128 = (u32 )__cil_tmp127;
  __cil_tmp129 = h_sync_end + h_sync_dly;
  h_total = __cil_tmp129 + __cil_tmp128;
  __cil_tmp130 = (unsigned long )var;
  __cil_tmp131 = __cil_tmp130 + 116;
  __cil_tmp132 = *((__u32 *)__cil_tmp131);
  __cil_tmp133 = (u32 )__cil_tmp132;
  v_sync_strt = v_disp + __cil_tmp133;
  __cil_tmp134 = (unsigned long )var;
  __cil_tmp135 = __cil_tmp134 + 124;
  __cil_tmp136 = *((__u32 *)__cil_tmp135);
  __cil_tmp137 = (u32 )__cil_tmp136;
  v_sync_end = v_sync_strt + __cil_tmp137;
  __cil_tmp138 = (unsigned long )var;
  __cil_tmp139 = __cil_tmp138 + 112;
  __cil_tmp140 = *((__u32 *)__cil_tmp139);
  __cil_tmp141 = (u32 )__cil_tmp140;
  v_total = v_sync_end + __cil_tmp141;
  {
  __cil_tmp142 = (unsigned long )par;
  __cil_tmp143 = __cil_tmp142 + 1136;
  __cil_tmp144 = *((unsigned long *)__cil_tmp143);
  if (__cil_tmp144 != 0UL) {
    {
    __cil_tmp145 = (unsigned long )par;
    __cil_tmp146 = __cil_tmp145 + 1044;
    __cil_tmp147 = *((u32 *)__cil_tmp146);
    __cil_tmp148 = __cil_tmp147 & 262144U;
    if (! __cil_tmp148) {
      {
      __cil_tmp149 = (struct atyfb_par *)par;
      tmp___7 = aty_ld_le32(164, __cil_tmp149);
      lcd_index = tmp___7;
      __cil_tmp150 = (unsigned long )crtc;
      __cil_tmp151 = __cil_tmp150 + 92;
      *((u32 *)__cil_tmp151) = lcd_index & 4294965440U;
      __cil_tmp152 = (struct atyfb_par *)par;
      aty_st_le32(164, lcd_index, __cil_tmp152);
      }
    } else {
    }
    }
    {
    __cil_tmp153 = (unsigned long )par;
    __cil_tmp154 = __cil_tmp153 + 1044;
    __cil_tmp155 = *((u32 *)__cil_tmp154);
    __cil_tmp156 = __cil_tmp155 & 512U;
    if (! __cil_tmp156) {
      __cil_tmp157 = (unsigned long )crtc;
      __cil_tmp158 = __cil_tmp157 + 92;
      __cil_tmp159 = (unsigned long )crtc;
      __cil_tmp160 = __cil_tmp159 + 92;
      __cil_tmp161 = *((u32 *)__cil_tmp160);
      *((u32 *)__cil_tmp158) = __cil_tmp161 | 1024U;
    } else {
    }
    }
    {
    __cil_tmp162 = (struct atyfb_par *)par;
    tmp___8 = aty_ld_lcd(0, __cil_tmp162);
    __cil_tmp163 = (unsigned long )crtc;
    __cil_tmp164 = __cil_tmp163 + 88;
    *((u32 *)__cil_tmp164) = tmp___8 | 16384U;
    __cil_tmp165 = (struct atyfb_par *)par;
    tmp___9 = aty_ld_lcd(1, __cil_tmp165);
    __cil_tmp166 = (unsigned long )crtc;
    __cil_tmp167 = __cil_tmp166 + 84;
    __cil_tmp168 = (unsigned long )tmp___9;
    __cil_tmp169 = __cil_tmp168 & 0xfffffffff7ffffffUL;
    *((u32 *)__cil_tmp167) = (u32 )__cil_tmp169;
    __cil_tmp170 = (unsigned long )crtc;
    __cil_tmp171 = __cil_tmp170 + 84;
    __cil_tmp172 = (unsigned long )crtc;
    __cil_tmp173 = __cil_tmp172 + 84;
    __cil_tmp174 = *((u32 *)__cil_tmp173);
    __cil_tmp175 = (unsigned long )__cil_tmp174;
    __cil_tmp176 = __cil_tmp175 & 0xffffffff1ffefbfbUL;
    *((u32 *)__cil_tmp171) = (u32 )__cil_tmp176;
    __cil_tmp177 = (unsigned long )crtc;
    __cil_tmp178 = __cil_tmp177 + 84;
    __cil_tmp179 = (unsigned long )crtc;
    __cil_tmp180 = __cil_tmp179 + 84;
    __cil_tmp181 = *((u32 *)__cil_tmp180);
    __cil_tmp182 = (unsigned long )__cil_tmp181;
    __cil_tmp183 = __cil_tmp182 | 80UL;
    *((u32 *)__cil_tmp178) = (u32 )__cil_tmp183;
    }
    {
    __cil_tmp184 = (unsigned long )crtc;
    __cil_tmp185 = __cil_tmp184 + 84;
    __cil_tmp186 = *((u32 *)__cil_tmp185);
    __cil_tmp187 = (unsigned long )__cil_tmp186;
    if (__cil_tmp187 & 2UL) {
      {
      __cil_tmp188 = (unsigned long )par;
      __cil_tmp189 = __cil_tmp188 + 1144;
      __cil_tmp190 = *((u16 *)__cil_tmp189);
      __cil_tmp191 = (u32 )__cil_tmp190;
      if (xres > __cil_tmp191) {
        goto _L___1;
      } else {
        {
        __cil_tmp192 = (unsigned long )par;
        __cil_tmp193 = __cil_tmp192 + 1146;
        __cil_tmp194 = *((u16 *)__cil_tmp193);
        __cil_tmp195 = (u32 )__cil_tmp194;
        if (yres > __cil_tmp195) {
          _L___1:
          {
          __cil_tmp196 = (unsigned long )crtc;
          __cil_tmp197 = __cil_tmp196 + 84;
          __cil_tmp198 = *((u32 *)__cil_tmp197);
          __cil_tmp199 = (unsigned long )__cil_tmp198;
          if (__cil_tmp199 & 1UL) {
            {
            __cil_tmp200 = (unsigned long )var;
            __cil_tmp201 = __cil_tmp200 + 84;
            __cil_tmp202 = *((__u32 *)__cil_tmp201);
            __cil_tmp203 = __cil_tmp202 & 2U;
            if (! __cil_tmp203) {
              {
              printk("<6>atyfb: Disable LCD panel, because video mode does not fit.\n");
              }
            } else {
            }
            }
            __cil_tmp204 = (unsigned long )crtc;
            __cil_tmp205 = __cil_tmp204 + 84;
            __cil_tmp206 = (unsigned long )crtc;
            __cil_tmp207 = __cil_tmp206 + 84;
            __cil_tmp208 = *((u32 *)__cil_tmp207);
            __cil_tmp209 = (unsigned long )__cil_tmp208;
            __cil_tmp210 = __cil_tmp209 & 0xfffffffffffffffdUL;
            *((u32 *)__cil_tmp205) = (u32 )__cil_tmp210;
          } else {
            {
            __cil_tmp211 = (unsigned long )var;
            __cil_tmp212 = __cil_tmp211 + 84;
            __cil_tmp213 = *((__u32 *)__cil_tmp212);
            __cil_tmp214 = __cil_tmp213 & 2U;
            if (! __cil_tmp214) {
              {
              printk("<3>atyfb: Video mode exceeds size of LCD panel.\nConnect this computer to a conventional monitor if you really need this mode.\n");
              }
            } else {
            }
            }
            return (-22);
          }
          }
        } else {
        }
        }
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp215 = (unsigned long )par;
  __cil_tmp216 = __cil_tmp215 + 1136;
  __cil_tmp217 = *((unsigned long *)__cil_tmp216);
  if (__cil_tmp217 != 0UL) {
    {
    __cil_tmp218 = (unsigned long )crtc;
    __cil_tmp219 = __cil_tmp218 + 84;
    __cil_tmp220 = *((u32 *)__cil_tmp219);
    __cil_tmp221 = (unsigned long )__cil_tmp220;
    if (__cil_tmp221 & 2UL) {
      VScan = 1;
      vmode = vmode & 4294967292U;
      {
      __cil_tmp222 = (unsigned long )par;
      __cil_tmp223 = __cil_tmp222 + 1146;
      __cil_tmp224 = *((u16 *)__cil_tmp223);
      __cil_tmp225 = (u32 )__cil_tmp224;
      if (yres < __cil_tmp225) {
        __cil_tmp226 = (unsigned long )par;
        __cil_tmp227 = __cil_tmp226 + 1146;
        __cil_tmp228 = *((u16 *)__cil_tmp227);
        __cil_tmp229 = (u32 )__cil_tmp228;
        __cil_tmp230 = __cil_tmp229 / yres;
        VScan = (int )__cil_tmp230;
        if (VScan > 1) {
          VScan = 2;
          vmode = vmode | 2U;
        } else {
        }
      } else {
      }
      }
      __cil_tmp231 = (unsigned long )par;
      __cil_tmp232 = __cil_tmp231 + 1168;
      __cil_tmp233 = *((u16 *)__cil_tmp232);
      __cil_tmp234 = (u32 )__cil_tmp233;
      h_sync_strt = h_disp + __cil_tmp234;
      __cil_tmp235 = (unsigned long )par;
      __cil_tmp236 = __cil_tmp235 + 1160;
      __cil_tmp237 = *((u16 *)__cil_tmp236);
      __cil_tmp238 = (u32 )__cil_tmp237;
      h_sync_end = h_sync_strt + __cil_tmp238;
      __cil_tmp239 = (unsigned long )par;
      __cil_tmp240 = __cil_tmp239 + 1158;
      __cil_tmp241 = *((u16 *)__cil_tmp240);
      h_sync_dly = (u32 )__cil_tmp241;
      __cil_tmp242 = (unsigned long )par;
      __cil_tmp243 = __cil_tmp242 + 1172;
      __cil_tmp244 = *((u16 *)__cil_tmp243);
      __cil_tmp245 = (u32 )__cil_tmp244;
      h_total = h_disp + __cil_tmp245;
      __cil_tmp246 = (unsigned long )par;
      __cil_tmp247 = __cil_tmp246 + 1170;
      __cil_tmp248 = *((u16 *)__cil_tmp247);
      __cil_tmp249 = (int )__cil_tmp248;
      __cil_tmp250 = __cil_tmp249 / VScan;
      __cil_tmp251 = (u32 )__cil_tmp250;
      v_sync_strt = v_disp + __cil_tmp251;
      __cil_tmp252 = (unsigned long )par;
      __cil_tmp253 = __cil_tmp252 + 1166;
      __cil_tmp254 = *((u16 *)__cil_tmp253);
      __cil_tmp255 = (int )__cil_tmp254;
      __cil_tmp256 = __cil_tmp255 / VScan;
      __cil_tmp257 = (u32 )__cil_tmp256;
      v_sync_end = v_sync_strt + __cil_tmp257;
      __cil_tmp258 = (unsigned long )par;
      __cil_tmp259 = __cil_tmp258 + 1174;
      __cil_tmp260 = *((u16 *)__cil_tmp259);
      __cil_tmp261 = (int )__cil_tmp260;
      __cil_tmp262 = __cil_tmp261 / VScan;
      __cil_tmp263 = (u32 )__cil_tmp262;
      v_total = v_disp + __cil_tmp263;
    } else {
    }
    }
  } else {
  }
  }
  __cil_tmp264 = h_disp >> 3;
  h_disp = __cil_tmp264 - 1U;
  __cil_tmp265 = h_sync_strt >> 3;
  h_sync_strt = __cil_tmp265 - 1U;
  __cil_tmp266 = h_sync_end >> 3;
  h_sync_end = __cil_tmp266 - 1U;
  __cil_tmp267 = h_total >> 3;
  h_total = __cil_tmp267 - 1U;
  h_sync_wid = h_sync_end - h_sync_strt;
  {
  while (1) {
    while_continue___2: ;
    if (h_disp > 255U) {
      {
      __cil_tmp268 = (unsigned long )var;
      __cil_tmp269 = __cil_tmp268 + 84;
      __cil_tmp270 = *((__u32 *)__cil_tmp269);
      __cil_tmp271 = __cil_tmp270 & 2U;
      if (! __cil_tmp271) {
        {
        printk("<2>atyfb: h_disp too large %x(%x)\n", h_disp, 255);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___2;
  }
  while_break___2: ;
  }
  {
  while (1) {
    while_continue___3: ;
    if (h_sync_strt > 511U) {
      {
      __cil_tmp272 = (unsigned long )var;
      __cil_tmp273 = __cil_tmp272 + 84;
      __cil_tmp274 = *((__u32 *)__cil_tmp273);
      __cil_tmp275 = __cil_tmp274 & 2U;
      if (! __cil_tmp275) {
        {
        printk("<2>atyfb: h_sync_strt too large %x(%x)\n", h_sync_strt, 511);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___3;
  }
  while_break___3: ;
  }
  if (h_sync_wid > 31U) {
    h_sync_wid = (u32 )31;
  } else {
  }
  {
  while (1) {
    while_continue___4: ;
    if (h_total > 511U) {
      {
      __cil_tmp276 = (unsigned long )var;
      __cil_tmp277 = __cil_tmp276 + 84;
      __cil_tmp278 = *((__u32 *)__cil_tmp277);
      __cil_tmp279 = __cil_tmp278 & 2U;
      if (! __cil_tmp279) {
        {
        printk("<2>atyfb: h_total too large %x(%x)\n", h_total, 511);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___4;
  }
  while_break___4: ;
  }
  if (vmode & 2U) {
    v_disp = v_disp << 1;
    v_sync_strt = v_sync_strt << 1;
    v_sync_end = v_sync_end << 1;
    v_total = v_total << 1;
  } else {
  }
  vdisplay = yres;
  {
  __cil_tmp280 = (unsigned long )par;
  __cil_tmp281 = __cil_tmp280 + 1136;
  __cil_tmp282 = *((unsigned long *)__cil_tmp281);
  if (__cil_tmp282 != 0UL) {
    {
    __cil_tmp283 = (unsigned long )crtc;
    __cil_tmp284 = __cil_tmp283 + 84;
    __cil_tmp285 = *((u32 *)__cil_tmp284);
    __cil_tmp286 = (unsigned long )__cil_tmp285;
    if (__cil_tmp286 & 2UL) {
      __cil_tmp287 = (unsigned long )par;
      __cil_tmp288 = __cil_tmp287 + 1146;
      __cil_tmp289 = *((u16 *)__cil_tmp288);
      vdisplay = (u32 )__cil_tmp289;
    } else {
    }
    }
  } else {
  }
  }
  v_disp = v_disp - 1U;
  v_sync_strt = v_sync_strt - 1U;
  v_sync_end = v_sync_end - 1U;
  v_total = v_total - 1U;
  v_sync_wid = v_sync_end - v_sync_strt;
  {
  while (1) {
    while_continue___5: ;
    if (v_disp > 2047U) {
      {
      __cil_tmp290 = (unsigned long )var;
      __cil_tmp291 = __cil_tmp290 + 84;
      __cil_tmp292 = *((__u32 *)__cil_tmp291);
      __cil_tmp293 = __cil_tmp292 & 2U;
      if (! __cil_tmp293) {
        {
        printk("<2>atyfb: v_disp too large %x(%x)\n", v_disp, 2047);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___5;
  }
  while_break___5: ;
  }
  {
  while (1) {
    while_continue___6: ;
    if (v_sync_strt > 2047U) {
      {
      __cil_tmp294 = (unsigned long )var;
      __cil_tmp295 = __cil_tmp294 + 84;
      __cil_tmp296 = *((__u32 *)__cil_tmp295);
      __cil_tmp297 = __cil_tmp296 & 2U;
      if (! __cil_tmp297) {
        {
        printk("<2>atyfb: v_sync_stsrt too large %x(%x)\n", v_sync_strt, 2047);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___6;
  }
  while_break___6: ;
  }
  if (v_sync_wid > 31U) {
    v_sync_wid = (u32 )31;
  } else {
  }
  {
  while (1) {
    while_continue___7: ;
    if (v_total > 2047U) {
      {
      __cil_tmp298 = (unsigned long )var;
      __cil_tmp299 = __cil_tmp298 + 84;
      __cil_tmp300 = *((__u32 *)__cil_tmp299);
      __cil_tmp301 = __cil_tmp300 & 2U;
      if (! __cil_tmp301) {
        {
        printk("<2>atyfb: v_total too large %x(%x)\n", v_total, 2047);
        }
      } else {
      }
      }
      return (-22);
    } else {
    }
    goto while_break___7;
  }
  while_break___7: ;
  }
  if (sync & 8U) {
    c_sync = (u32 )16;
  } else {
    c_sync = (u32 )0;
  }
  *((u32 *)crtc) = vxres;
  __cil_tmp302 = (unsigned long )crtc;
  __cil_tmp303 = __cil_tmp302 + 4;
  *((u32 *)__cil_tmp303) = vyres;
  __cil_tmp304 = (unsigned long )crtc;
  __cil_tmp305 = __cil_tmp304 + 8;
  *((u32 *)__cil_tmp305) = xoffset;
  __cil_tmp306 = (unsigned long )crtc;
  __cil_tmp307 = __cil_tmp306 + 12;
  *((u32 *)__cil_tmp307) = yoffset;
  __cil_tmp308 = (unsigned long )crtc;
  __cil_tmp309 = __cil_tmp308 + 16;
  *((u32 *)__cil_tmp309) = bpp;
  __cil_tmp310 = (unsigned long )crtc;
  __cil_tmp311 = __cil_tmp310 + 40;
  __cil_tmp312 = line_length / bpp;
  __cil_tmp313 = __cil_tmp312 << 22;
  __cil_tmp314 = xoffset * bpp;
  __cil_tmp315 = __cil_tmp314 / 8U;
  __cil_tmp316 = yoffset * line_length;
  __cil_tmp317 = __cil_tmp316 + __cil_tmp315;
  __cil_tmp318 = __cil_tmp317 / 8U;
  *((u32 *)__cil_tmp311) = __cil_tmp318 | __cil_tmp313;
  __cil_tmp319 = (unsigned long )crtc;
  __cil_tmp320 = __cil_tmp319 + 36;
  *((u32 *)__cil_tmp320) = (u32 )0;
  __cil_tmp321 = (unsigned long )crtc;
  __cil_tmp322 = __cil_tmp321 + 20;
  __cil_tmp323 = h_disp << 16;
  *((u32 *)__cil_tmp322) = h_total | __cil_tmp323;
  __cil_tmp324 = (unsigned long )crtc;
  __cil_tmp325 = __cil_tmp324 + 24;
  __cil_tmp326 = h_sync_pol << 21;
  __cil_tmp327 = h_sync_wid << 16;
  __cil_tmp328 = h_sync_strt & 256U;
  __cil_tmp329 = __cil_tmp328 << 4;
  __cil_tmp330 = h_sync_dly << 8;
  __cil_tmp331 = h_sync_strt & 255U;
  __cil_tmp332 = __cil_tmp331 | __cil_tmp330;
  __cil_tmp333 = __cil_tmp332 | __cil_tmp329;
  __cil_tmp334 = __cil_tmp333 | __cil_tmp327;
  *((u32 *)__cil_tmp325) = __cil_tmp334 | __cil_tmp326;
  __cil_tmp335 = (unsigned long )crtc;
  __cil_tmp336 = __cil_tmp335 + 28;
  __cil_tmp337 = v_disp << 16;
  *((u32 *)__cil_tmp336) = v_total | __cil_tmp337;
  __cil_tmp338 = (unsigned long )crtc;
  __cil_tmp339 = __cil_tmp338 + 32;
  __cil_tmp340 = v_sync_pol << 21;
  __cil_tmp341 = v_sync_wid << 16;
  __cil_tmp342 = v_sync_strt | __cil_tmp341;
  *((u32 *)__cil_tmp339) = __cil_tmp342 | __cil_tmp340;
  __cil_tmp343 = (unsigned long )crtc;
  __cil_tmp344 = __cil_tmp343 + 44;
  __cil_tmp345 = 50331648U | pix_width;
  *((u32 *)__cil_tmp344) = __cil_tmp345 | c_sync;
  __cil_tmp346 = (unsigned long )crtc;
  __cil_tmp347 = __cil_tmp346 + 44;
  __cil_tmp348 = (unsigned long )crtc;
  __cil_tmp349 = __cil_tmp348 + 44;
  __cil_tmp350 = *((u32 *)__cil_tmp349);
  *((u32 *)__cil_tmp347) = __cil_tmp350 | 134217728U;
  if (vmode & 2U) {
    __cil_tmp351 = (unsigned long )crtc;
    __cil_tmp352 = __cil_tmp351 + 44;
    __cil_tmp353 = (unsigned long )crtc;
    __cil_tmp354 = __cil_tmp353 + 44;
    __cil_tmp355 = *((u32 *)__cil_tmp354);
    *((u32 *)__cil_tmp352) = __cil_tmp355 | 1U;
  } else {
  }
  if (vmode & 1U) {
    __cil_tmp356 = (unsigned long )crtc;
    __cil_tmp357 = __cil_tmp356 + 44;
    __cil_tmp358 = (unsigned long )crtc;
    __cil_tmp359 = __cil_tmp358 + 44;
    __cil_tmp360 = *((u32 *)__cil_tmp359);
    *((u32 *)__cil_tmp357) = __cil_tmp360 | 2U;
  } else {
  }
  {
  __cil_tmp361 = (unsigned long )par;
  __cil_tmp362 = __cil_tmp361 + 1136;
  __cil_tmp363 = *((unsigned long *)__cil_tmp362);
  if (__cil_tmp363 != 0UL) {
    vdisplay = yres;
    if (vmode & 2U) {
      vdisplay = vdisplay << 1;
    } else {
    }
    {
    __cil_tmp364 = (unsigned long )crtc;
    __cil_tmp365 = __cil_tmp364 + 44;
    __cil_tmp366 = (unsigned long )crtc;
    __cil_tmp367 = __cil_tmp366 + 44;
    __cil_tmp368 = *((u32 *)__cil_tmp367);
    *((u32 *)__cil_tmp365) = __cil_tmp368 & 4291952639U;
    __cil_tmp369 = (unsigned long )crtc;
    __cil_tmp370 = __cil_tmp369 + 84;
    __cil_tmp371 = (unsigned long )crtc;
    __cil_tmp372 = __cil_tmp371 + 84;
    __cil_tmp373 = *((u32 *)__cil_tmp372);
    __cil_tmp374 = (unsigned long )__cil_tmp373;
    __cil_tmp375 = __cil_tmp374 & 0xffffffff0ffffbfbUL;
    *((u32 *)__cil_tmp370) = (u32 )__cil_tmp375;
    __cil_tmp376 = (unsigned long )crtc;
    __cil_tmp377 = __cil_tmp376 + 84;
    __cil_tmp378 = (unsigned long )crtc;
    __cil_tmp379 = __cil_tmp378 + 84;
    __cil_tmp380 = *((u32 *)__cil_tmp379);
    __cil_tmp381 = (unsigned long )__cil_tmp380;
    __cil_tmp382 = __cil_tmp381 | 64UL;
    *((u32 *)__cil_tmp377) = (u32 )__cil_tmp382;
    __cil_tmp383 = (unsigned long )crtc;
    __cil_tmp384 = __cil_tmp383 + 56;
    __cil_tmp385 = (struct atyfb_par *)par;
    *((u32 *)__cil_tmp384) = aty_ld_lcd(4, __cil_tmp385);
    }
    {
    __cil_tmp386 = (unsigned long )par;
    __cil_tmp387 = __cil_tmp386 + 1044;
    __cil_tmp388 = *((u32 *)__cil_tmp387);
    __cil_tmp389 = __cil_tmp388 & 262144U;
    if (! __cil_tmp389) {
      {
      __cil_tmp390 = (struct atyfb_par *)par;
      tmp___10 = aty_ld_lcd(6, __cil_tmp390);
      __cil_tmp391 = (unsigned long )crtc;
      __cil_tmp392 = __cil_tmp391 + 64;
      __cil_tmp393 = (unsigned long )tmp___10;
      __cil_tmp394 = __cil_tmp393 & 0xffffffffffbff800UL;
      *((u32 *)__cil_tmp392) = (u32 )__cil_tmp394;
      }
    } else {
    }
    }
    __cil_tmp395 = (unsigned long )crtc;
    __cil_tmp396 = __cil_tmp395 + 56;
    __cil_tmp397 = (unsigned long )crtc;
    __cil_tmp398 = __cil_tmp397 + 56;
    __cil_tmp399 = *((u32 *)__cil_tmp398);
    __cil_tmp400 = (unsigned long )__cil_tmp399;
    __cil_tmp401 = __cil_tmp400 & 0xffffffff1ff80000UL;
    *((u32 *)__cil_tmp396) = (u32 )__cil_tmp401;
    {
    __cil_tmp402 = (unsigned long )par;
    __cil_tmp403 = __cil_tmp402 + 1144;
    __cil_tmp404 = *((u16 *)__cil_tmp403);
    __cil_tmp405 = (u32 )__cil_tmp404;
    if (xres < __cil_tmp405) {
      {
      __cil_tmp406 = (unsigned long )crtc;
      __cil_tmp407 = __cil_tmp406 + 84;
      __cil_tmp408 = *((u32 *)__cil_tmp407);
      __cil_tmp409 = (unsigned long )__cil_tmp408;
      if (__cil_tmp409 & 2UL) {
        {
        while (1) {
          while_continue___8: ;
          __cil_tmp410 = xres & 4294967288U;
          HDisplay = (int )__cil_tmp410;
          __cil_tmp411 = (unsigned long )par;
          __cil_tmp412 = __cil_tmp411 + 1144;
          __cil_tmp413 = *((u16 *)__cil_tmp412);
          __cil_tmp414 = (int )__cil_tmp413;
          nStretch = __cil_tmp414 / HDisplay;
          __cil_tmp415 = (unsigned long )par;
          __cil_tmp416 = __cil_tmp415 + 1144;
          __cil_tmp417 = *((u16 *)__cil_tmp416);
          __cil_tmp418 = (int )__cil_tmp417;
          Remainder = __cil_tmp418 % HDisplay;
          if (! Remainder) {
            if (nStretch > 2) {
              goto _L___2;
            } else {
              goto _L___3;
            }
          } else {
            _L___3:
            {
            __cil_tmp419 = (unsigned long )par;
            __cil_tmp420 = __cil_tmp419 + 1144;
            __cil_tmp421 = *((u16 *)__cil_tmp420);
            __cil_tmp422 = (int )__cil_tmp421;
            __cil_tmp423 = HDisplay * 16;
            __cil_tmp424 = __cil_tmp423 / __cil_tmp422;
            if (__cil_tmp424 < 7) {
              _L___2:
              {
              horz_stretch_loop = -1;
              __cil_tmp425 = & Numerator;
              *__cil_tmp425 = HDisplay;
              __cil_tmp426 = & Denominator;
              __cil_tmp427 = (unsigned long )par;
              __cil_tmp428 = __cil_tmp427 + 1144;
              __cil_tmp429 = *((u16 *)__cil_tmp428);
              *__cil_tmp426 = (int )__cil_tmp429;
              Index = 5;
              ATIReduceRatio(& Numerator, & Denominator);
              __cil_tmp430 = & Denominator;
              __cil_tmp431 = *__cil_tmp430;
              __cil_tmp432 = & Numerator;
              __cil_tmp433 = *__cil_tmp432;
              __cil_tmp434 = __cil_tmp433 * 16;
              BestRemainder = __cil_tmp434 / __cil_tmp431;
              }
              {
              while (1) {
                while_continue___9: ;
                Index = Index - 1;
                if (Index >= 0) {
                } else {
                  goto while_break___9;
                }
                __cil_tmp435 = & Denominator;
                __cil_tmp436 = *__cil_tmp435;
                __cil_tmp437 = Index * 1UL;
                __cil_tmp438 = (unsigned long )(StretchLoops) + __cil_tmp437;
                __cil_tmp439 = *((char *)__cil_tmp438);
                __cil_tmp440 = (int )__cil_tmp439;
                __cil_tmp441 = & Numerator;
                __cil_tmp442 = *__cil_tmp441;
                __cil_tmp443 = & Denominator;
                __cil_tmp444 = *__cil_tmp443;
                __cil_tmp445 = __cil_tmp444 - __cil_tmp442;
                __cil_tmp446 = __cil_tmp445 * __cil_tmp440;
                Remainder = __cil_tmp446 % __cil_tmp436;
                if (Remainder < BestRemainder) {
                  horz_stretch_loop = Index;
                  BestRemainder = Remainder;
                  if (BestRemainder) {
                  } else {
                    goto while_break___9;
                  }
                } else {
                }
              }
              while_break___9: ;
              }
              if (horz_stretch_loop >= 0) {
                if (! BestRemainder) {
                  horz_stretch_ratio = 0;
                  Accumulator = 0;
                  reuse_previous = 1;
                  __cil_tmp447 = horz_stretch_loop * 1UL;
                  __cil_tmp448 = (unsigned long )(StretchLoops) + __cil_tmp447;
                  __cil_tmp449 = *((char *)__cil_tmp448);
                  Index = (int )__cil_tmp449;
                  {
                  while (1) {
                    while_continue___10: ;
                    Index = Index - 1;
                    if (Index >= 0) {
                    } else {
                      goto while_break___10;
                    }
                    if (Accumulator > 0) {
                      horz_stretch_ratio = horz_stretch_ratio | reuse_previous;
                    } else {
                      __cil_tmp450 = & Denominator;
                      __cil_tmp451 = *__cil_tmp450;
                      Accumulator = Accumulator + __cil_tmp451;
                    }
                    __cil_tmp452 = & Numerator;
                    __cil_tmp453 = *__cil_tmp452;
                    Accumulator = Accumulator - __cil_tmp453;
                    reuse_previous = reuse_previous << 1;
                  }
                  while_break___10: ;
                  }
                  __cil_tmp454 = (unsigned long )crtc;
                  __cil_tmp455 = __cil_tmp454 + 56;
                  __cil_tmp456 = (unsigned long )horz_stretch_ratio;
                  __cil_tmp457 = __cil_tmp456 & 65535UL;
                  __cil_tmp458 = (unsigned long )horz_stretch_loop;
                  __cil_tmp459 = __cil_tmp458 & 458752UL;
                  __cil_tmp460 = __cil_tmp459 << 16;
                  __cil_tmp461 = 2147483648UL | __cil_tmp460;
                  __cil_tmp462 = __cil_tmp461 | __cil_tmp457;
                  __cil_tmp463 = (unsigned long )crtc;
                  __cil_tmp464 = __cil_tmp463 + 56;
                  __cil_tmp465 = *((u32 *)__cil_tmp464);
                  __cil_tmp466 = (unsigned long )__cil_tmp465;
                  __cil_tmp467 = __cil_tmp466 | __cil_tmp462;
                  *((u32 *)__cil_tmp455) = (u32 )__cil_tmp467;
                  goto while_break___8;
                } else {
                }
              } else {
              }
            } else {
            }
            }
          }
          __cil_tmp468 = (unsigned long )crtc;
          __cil_tmp469 = __cil_tmp468 + 56;
          __cil_tmp470 = (unsigned long )par;
          __cil_tmp471 = __cil_tmp470 + 1144;
          __cil_tmp472 = *((u16 *)__cil_tmp471);
          __cil_tmp473 = (unsigned long )__cil_tmp472;
          __cil_tmp474 = (unsigned long )HDisplay;
          __cil_tmp475 = __cil_tmp474 * 4096UL;
          __cil_tmp476 = __cil_tmp475 / __cil_tmp473;
          __cil_tmp477 = __cil_tmp476 & 4095UL;
          __cil_tmp478 = 3221225472UL | __cil_tmp477;
          __cil_tmp479 = (unsigned long )crtc;
          __cil_tmp480 = __cil_tmp479 + 56;
          __cil_tmp481 = *((u32 *)__cil_tmp480);
          __cil_tmp482 = (unsigned long )__cil_tmp481;
          __cil_tmp483 = __cil_tmp482 | __cil_tmp478;
          *((u32 *)__cil_tmp469) = (u32 )__cil_tmp483;
          goto while_break___8;
        }
        while_break___8: ;
        }
      } else {
      }
      }
    } else {
    }
    }
    {
    __cil_tmp484 = (unsigned long )par;
    __cil_tmp485 = __cil_tmp484 + 1146;
    __cil_tmp486 = *((u16 *)__cil_tmp485);
    __cil_tmp487 = (u32 )__cil_tmp486;
    if (vdisplay < __cil_tmp487) {
      {
      __cil_tmp488 = (unsigned long )crtc;
      __cil_tmp489 = __cil_tmp488 + 84;
      __cil_tmp490 = *((u32 *)__cil_tmp489);
      __cil_tmp491 = (unsigned long )__cil_tmp490;
      if (__cil_tmp491 & 2UL) {
        __cil_tmp492 = (unsigned long )crtc;
        __cil_tmp493 = __cil_tmp492 + 60;
        __cil_tmp494 = (unsigned long )par;
        __cil_tmp495 = __cil_tmp494 + 1146;
        __cil_tmp496 = *((u16 *)__cil_tmp495);
        __cil_tmp497 = (unsigned long )__cil_tmp496;
        __cil_tmp498 = (unsigned long )vdisplay;
        __cil_tmp499 = __cil_tmp498 * 1024UL;
        __cil_tmp500 = __cil_tmp499 / __cil_tmp497;
        __cil_tmp501 = __cil_tmp500 & 1023UL;
        __cil_tmp502 = 3221225472UL | __cil_tmp501;
        *((u32 *)__cil_tmp493) = (u32 )__cil_tmp502;
        {
        __cil_tmp503 = (unsigned long )par;
        __cil_tmp504 = __cil_tmp503 + 1044;
        __cil_tmp505 = *((u32 *)__cil_tmp504);
        __cil_tmp506 = __cil_tmp505 & 262144U;
        if (! __cil_tmp506) {
          {
          __cil_tmp507 = (unsigned long )par;
          __cil_tmp508 = __cil_tmp507 + 1044;
          __cil_tmp509 = *((u32 *)__cil_tmp508);
          if (__cil_tmp509 & 512U) {
            tmp___11 = 1024;
          } else {
            tmp___11 = 800;
          }
          }
          {
          __cil_tmp510 = (u32 )tmp___11;
          if (xres <= __cil_tmp510) {
            __cil_tmp511 = (unsigned long )crtc;
            __cil_tmp512 = __cil_tmp511 + 64;
            __cil_tmp513 = (unsigned long )crtc;
            __cil_tmp514 = __cil_tmp513 + 64;
            __cil_tmp515 = *((u32 *)__cil_tmp514);
            __cil_tmp516 = (unsigned long )__cil_tmp515;
            __cil_tmp517 = __cil_tmp516 | 1024UL;
            *((u32 *)__cil_tmp512) = (u32 )__cil_tmp517;
          } else {
          }
          }
        } else {
        }
        }
      } else {
        __cil_tmp518 = (unsigned long )crtc;
        __cil_tmp519 = __cil_tmp518 + 60;
        *((u32 *)__cil_tmp519) = (u32 )0;
      }
      }
    } else {
      __cil_tmp520 = (unsigned long )crtc;
      __cil_tmp521 = __cil_tmp520 + 60;
      *((u32 *)__cil_tmp521) = (u32 )0;
    }
    }
    __cil_tmp522 = (unsigned long )crtc;
    __cil_tmp523 = __cil_tmp522 + 68;
    __cil_tmp524 = (unsigned long )crtc;
    __cil_tmp525 = __cil_tmp524 + 20;
    *((u32 *)__cil_tmp523) = *((u32 *)__cil_tmp525);
    __cil_tmp526 = (unsigned long )crtc;
    __cil_tmp527 = __cil_tmp526 + 72;
    __cil_tmp528 = (unsigned long )crtc;
    __cil_tmp529 = __cil_tmp528 + 24;
    *((u32 *)__cil_tmp527) = *((u32 *)__cil_tmp529);
    __cil_tmp530 = (unsigned long )crtc;
    __cil_tmp531 = __cil_tmp530 + 76;
    __cil_tmp532 = (unsigned long )crtc;
    __cil_tmp533 = __cil_tmp532 + 28;
    *((u32 *)__cil_tmp531) = *((u32 *)__cil_tmp533);
    __cil_tmp534 = (unsigned long )crtc;
    __cil_tmp535 = __cil_tmp534 + 80;
    __cil_tmp536 = (unsigned long )crtc;
    __cil_tmp537 = __cil_tmp536 + 32;
    *((u32 *)__cil_tmp535) = *((u32 *)__cil_tmp537);
  } else {
  }
  }
  {
  __cil_tmp538 = (unsigned long )par;
  __cil_tmp539 = __cil_tmp538 + 1044;
  __cil_tmp540 = *((u32 *)__cil_tmp539);
  if (__cil_tmp540 & 2U) {
    {
    __cil_tmp541 = (struct atyfb_par *)par;
    tmp___12 = aty_ld_le32(28, __cil_tmp541);
    __cil_tmp542 = (unsigned long )crtc;
    __cil_tmp543 = __cil_tmp542 + 44;
    __cil_tmp544 = tmp___12 & 983040U;
    __cil_tmp545 = (unsigned long )crtc;
    __cil_tmp546 = __cil_tmp545 + 44;
    __cil_tmp547 = *((u32 *)__cil_tmp546);
    *((u32 *)__cil_tmp543) = __cil_tmp547 | __cil_tmp544;
    }
  } else {
  }
  }
  __cil_tmp548 = (unsigned long )crtc;
  __cil_tmp549 = __cil_tmp548 + 48;
  *((u32 *)__cil_tmp549) = dp_pix_width;
  __cil_tmp550 = (unsigned long )crtc;
  __cil_tmp551 = __cil_tmp550 + 52;
  *((u32 *)__cil_tmp551) = dp_chain_mask;
  return (0);
}
}
static int aty_crtc_to_var(struct crtc *crtc , struct fb_var_screeninfo *var )
{ u32 xres ;
  u32 yres ;
  u32 bpp ;
  u32 left ;
  u32 right ;
  u32 upper ;
  u32 lower ;
  u32 hslen ;
  u32 vslen ;
  u32 sync ;
  u32 h_total ;
  u32 h_disp ;
  u32 h_sync_strt ;
  u32 h_sync_dly ;
  u32 h_sync_wid ;
  u32 h_sync_pol ;
  u32 v_total ;
  u32 v_disp ;
  u32 v_sync_strt ;
  u32 v_sync_wid ;
  u32 v_sync_pol ;
  u32 c_sync ;
  u32 pix_width ;
  u32 double_scan ;
  u32 interlace ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  u32 __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u32 __cil_tmp37 ;
  u32 __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  u32 __cil_tmp42 ;
  u32 __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  u32 __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  u32 __cil_tmp52 ;
  u32 __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u32 __cil_tmp57 ;
  u32 __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  u32 __cil_tmp62 ;
  u32 __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  u32 __cil_tmp67 ;
  unsigned int __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  u32 __cil_tmp71 ;
  u32 __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  u32 __cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  u32 __cil_tmp80 ;
  u32 __cil_tmp81 ;
  unsigned int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  u32 __cil_tmp85 ;
  u32 __cil_tmp86 ;
  unsigned int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  u32 __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  u32 __cil_tmp93 ;
  unsigned int __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  u32 __cil_tmp97 ;
  unsigned int __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  u32 __cil_tmp101 ;
  unsigned int __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  u32 __cil_tmp105 ;
  u32 __cil_tmp106 ;
  u32 __cil_tmp107 ;
  u32 __cil_tmp108 ;
  u32 __cil_tmp109 ;
  int __cil_tmp110 ;
  int __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  u32 __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  u32 __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  unsigned long __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  unsigned long __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  unsigned long __cil_tmp247 ;
  __u32 __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  unsigned long __cil_tmp250 ;
  unsigned long __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  __u32 __cil_tmp253 ;
  unsigned long __cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  unsigned long __cil_tmp257 ;
  __u32 __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  __u32 __cil_tmp263 ;
  {
  __cil_tmp31 = (unsigned long )crtc;
  __cil_tmp32 = __cil_tmp31 + 20;
  __cil_tmp33 = *((u32 *)__cil_tmp32);
  __cil_tmp34 = __cil_tmp33 & 511U;
  h_total = (u32 )__cil_tmp34;
  __cil_tmp35 = (unsigned long )crtc;
  __cil_tmp36 = __cil_tmp35 + 20;
  __cil_tmp37 = *((u32 *)__cil_tmp36);
  __cil_tmp38 = __cil_tmp37 >> 16;
  __cil_tmp39 = __cil_tmp38 & 255U;
  h_disp = (u32 )__cil_tmp39;
  __cil_tmp40 = (unsigned long )crtc;
  __cil_tmp41 = __cil_tmp40 + 24;
  __cil_tmp42 = *((u32 *)__cil_tmp41);
  __cil_tmp43 = __cil_tmp42 >> 4;
  __cil_tmp44 = __cil_tmp43 & 256U;
  __cil_tmp45 = (unsigned long )crtc;
  __cil_tmp46 = __cil_tmp45 + 24;
  __cil_tmp47 = *((u32 *)__cil_tmp46);
  __cil_tmp48 = __cil_tmp47 & 255U;
  __cil_tmp49 = __cil_tmp48 | __cil_tmp44;
  h_sync_strt = (u32 )__cil_tmp49;
  __cil_tmp50 = (unsigned long )crtc;
  __cil_tmp51 = __cil_tmp50 + 24;
  __cil_tmp52 = *((u32 *)__cil_tmp51);
  __cil_tmp53 = __cil_tmp52 >> 8;
  __cil_tmp54 = __cil_tmp53 & 7U;
  h_sync_dly = (u32 )__cil_tmp54;
  __cil_tmp55 = (unsigned long )crtc;
  __cil_tmp56 = __cil_tmp55 + 24;
  __cil_tmp57 = *((u32 *)__cil_tmp56);
  __cil_tmp58 = __cil_tmp57 >> 16;
  __cil_tmp59 = __cil_tmp58 & 31U;
  h_sync_wid = (u32 )__cil_tmp59;
  __cil_tmp60 = (unsigned long )crtc;
  __cil_tmp61 = __cil_tmp60 + 24;
  __cil_tmp62 = *((u32 *)__cil_tmp61);
  __cil_tmp63 = __cil_tmp62 >> 21;
  __cil_tmp64 = __cil_tmp63 & 1U;
  h_sync_pol = (u32 )__cil_tmp64;
  __cil_tmp65 = (unsigned long )crtc;
  __cil_tmp66 = __cil_tmp65 + 28;
  __cil_tmp67 = *((u32 *)__cil_tmp66);
  __cil_tmp68 = __cil_tmp67 & 2047U;
  v_total = (u32 )__cil_tmp68;
  __cil_tmp69 = (unsigned long )crtc;
  __cil_tmp70 = __cil_tmp69 + 28;
  __cil_tmp71 = *((u32 *)__cil_tmp70);
  __cil_tmp72 = __cil_tmp71 >> 16;
  __cil_tmp73 = __cil_tmp72 & 2047U;
  v_disp = (u32 )__cil_tmp73;
  __cil_tmp74 = (unsigned long )crtc;
  __cil_tmp75 = __cil_tmp74 + 32;
  __cil_tmp76 = *((u32 *)__cil_tmp75);
  __cil_tmp77 = __cil_tmp76 & 2047U;
  v_sync_strt = (u32 )__cil_tmp77;
  __cil_tmp78 = (unsigned long )crtc;
  __cil_tmp79 = __cil_tmp78 + 32;
  __cil_tmp80 = *((u32 *)__cil_tmp79);
  __cil_tmp81 = __cil_tmp80 >> 16;
  __cil_tmp82 = __cil_tmp81 & 31U;
  v_sync_wid = (u32 )__cil_tmp82;
  __cil_tmp83 = (unsigned long )crtc;
  __cil_tmp84 = __cil_tmp83 + 32;
  __cil_tmp85 = *((u32 *)__cil_tmp84);
  __cil_tmp86 = __cil_tmp85 >> 21;
  __cil_tmp87 = __cil_tmp86 & 1U;
  v_sync_pol = (u32 )__cil_tmp87;
  {
  __cil_tmp88 = (unsigned long )crtc;
  __cil_tmp89 = __cil_tmp88 + 44;
  __cil_tmp90 = *((u32 *)__cil_tmp89);
  if (__cil_tmp90 & 16U) {
    c_sync = (u32 )1;
  } else {
    c_sync = (u32 )0;
  }
  }
  __cil_tmp91 = (unsigned long )crtc;
  __cil_tmp92 = __cil_tmp91 + 44;
  __cil_tmp93 = *((u32 *)__cil_tmp92);
  __cil_tmp94 = __cil_tmp93 & 1792U;
  pix_width = (u32 )__cil_tmp94;
  __cil_tmp95 = (unsigned long )crtc;
  __cil_tmp96 = __cil_tmp95 + 44;
  __cil_tmp97 = *((u32 *)__cil_tmp96);
  __cil_tmp98 = __cil_tmp97 & 1U;
  double_scan = (u32 )__cil_tmp98;
  __cil_tmp99 = (unsigned long )crtc;
  __cil_tmp100 = __cil_tmp99 + 44;
  __cil_tmp101 = *((u32 *)__cil_tmp100);
  __cil_tmp102 = __cil_tmp101 & 2U;
  interlace = (u32 )__cil_tmp102;
  __cil_tmp103 = h_disp + 1U;
  xres = __cil_tmp103 * 8U;
  yres = v_disp + 1U;
  __cil_tmp104 = h_total - h_sync_strt;
  __cil_tmp105 = __cil_tmp104 - h_sync_wid;
  __cil_tmp106 = __cil_tmp105 * 8U;
  left = __cil_tmp106 - h_sync_dly;
  __cil_tmp107 = h_sync_strt - h_disp;
  __cil_tmp108 = __cil_tmp107 * 8U;
  right = __cil_tmp108 + h_sync_dly;
  hslen = h_sync_wid * 8U;
  __cil_tmp109 = v_total - v_sync_strt;
  upper = __cil_tmp109 - v_sync_wid;
  lower = v_sync_strt - v_disp;
  vslen = v_sync_wid;
  if (h_sync_pol) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (v_sync_pol) {
    tmp___8 = 0;
  } else {
    tmp___8 = 2;
  }
  if (c_sync) {
    tmp___9 = 8;
  } else {
    tmp___9 = 0;
  }
  __cil_tmp110 = tmp___7 | tmp___8;
  __cil_tmp111 = __cil_tmp110 | tmp___9;
  sync = (u32 )__cil_tmp111;
  if ((int )pix_width == 512) {
    goto case_512;
  } else
  if ((int )pix_width == 768) {
    goto case_768;
  } else
  if ((int )pix_width == 1024) {
    goto case_1024;
  } else
  if ((int )pix_width == 1280) {
    goto case_1280;
  } else
  if ((int )pix_width == 1536) {
    goto case_1536;
  } else {
    {
    goto switch_default;
    if (0) {
      case_512:
      bpp = (u32 )8;
      __cil_tmp112 = (unsigned long )var;
      __cil_tmp113 = __cil_tmp112 + 32;
      *((__u32 *)__cil_tmp113) = (__u32 )0;
      __cil_tmp114 = 32 + 4;
      __cil_tmp115 = (unsigned long )var;
      __cil_tmp116 = __cil_tmp115 + __cil_tmp114;
      *((__u32 *)__cil_tmp116) = (__u32 )8;
      __cil_tmp117 = (unsigned long )var;
      __cil_tmp118 = __cil_tmp117 + 44;
      *((__u32 *)__cil_tmp118) = (__u32 )0;
      __cil_tmp119 = 44 + 4;
      __cil_tmp120 = (unsigned long )var;
      __cil_tmp121 = __cil_tmp120 + __cil_tmp119;
      *((__u32 *)__cil_tmp121) = (__u32 )8;
      __cil_tmp122 = (unsigned long )var;
      __cil_tmp123 = __cil_tmp122 + 56;
      *((__u32 *)__cil_tmp123) = (__u32 )0;
      __cil_tmp124 = 56 + 4;
      __cil_tmp125 = (unsigned long )var;
      __cil_tmp126 = __cil_tmp125 + __cil_tmp124;
      *((__u32 *)__cil_tmp126) = (__u32 )8;
      __cil_tmp127 = (unsigned long )var;
      __cil_tmp128 = __cil_tmp127 + 68;
      *((__u32 *)__cil_tmp128) = (__u32 )0;
      __cil_tmp129 = 68 + 4;
      __cil_tmp130 = (unsigned long )var;
      __cil_tmp131 = __cil_tmp130 + __cil_tmp129;
      *((__u32 *)__cil_tmp131) = (__u32 )0;
      goto switch_break;
      case_768:
      bpp = (u32 )16;
      __cil_tmp132 = (unsigned long )var;
      __cil_tmp133 = __cil_tmp132 + 32;
      *((__u32 *)__cil_tmp133) = (__u32 )10;
      __cil_tmp134 = 32 + 4;
      __cil_tmp135 = (unsigned long )var;
      __cil_tmp136 = __cil_tmp135 + __cil_tmp134;
      *((__u32 *)__cil_tmp136) = (__u32 )5;
      __cil_tmp137 = (unsigned long )var;
      __cil_tmp138 = __cil_tmp137 + 44;
      *((__u32 *)__cil_tmp138) = (__u32 )5;
      __cil_tmp139 = 44 + 4;
      __cil_tmp140 = (unsigned long )var;
      __cil_tmp141 = __cil_tmp140 + __cil_tmp139;
      *((__u32 *)__cil_tmp141) = (__u32 )5;
      __cil_tmp142 = (unsigned long )var;
      __cil_tmp143 = __cil_tmp142 + 56;
      *((__u32 *)__cil_tmp143) = (__u32 )0;
      __cil_tmp144 = 56 + 4;
      __cil_tmp145 = (unsigned long )var;
      __cil_tmp146 = __cil_tmp145 + __cil_tmp144;
      *((__u32 *)__cil_tmp146) = (__u32 )5;
      __cil_tmp147 = (unsigned long )var;
      __cil_tmp148 = __cil_tmp147 + 68;
      *((__u32 *)__cil_tmp148) = (__u32 )0;
      __cil_tmp149 = 68 + 4;
      __cil_tmp150 = (unsigned long )var;
      __cil_tmp151 = __cil_tmp150 + __cil_tmp149;
      *((__u32 *)__cil_tmp151) = (__u32 )0;
      goto switch_break;
      case_1024:
      bpp = (u32 )16;
      __cil_tmp152 = (unsigned long )var;
      __cil_tmp153 = __cil_tmp152 + 32;
      *((__u32 *)__cil_tmp153) = (__u32 )11;
      __cil_tmp154 = 32 + 4;
      __cil_tmp155 = (unsigned long )var;
      __cil_tmp156 = __cil_tmp155 + __cil_tmp154;
      *((__u32 *)__cil_tmp156) = (__u32 )5;
      __cil_tmp157 = (unsigned long )var;
      __cil_tmp158 = __cil_tmp157 + 44;
      *((__u32 *)__cil_tmp158) = (__u32 )5;
      __cil_tmp159 = 44 + 4;
      __cil_tmp160 = (unsigned long )var;
      __cil_tmp161 = __cil_tmp160 + __cil_tmp159;
      *((__u32 *)__cil_tmp161) = (__u32 )6;
      __cil_tmp162 = (unsigned long )var;
      __cil_tmp163 = __cil_tmp162 + 56;
      *((__u32 *)__cil_tmp163) = (__u32 )0;
      __cil_tmp164 = 56 + 4;
      __cil_tmp165 = (unsigned long )var;
      __cil_tmp166 = __cil_tmp165 + __cil_tmp164;
      *((__u32 *)__cil_tmp166) = (__u32 )5;
      __cil_tmp167 = (unsigned long )var;
      __cil_tmp168 = __cil_tmp167 + 68;
      *((__u32 *)__cil_tmp168) = (__u32 )0;
      __cil_tmp169 = 68 + 4;
      __cil_tmp170 = (unsigned long )var;
      __cil_tmp171 = __cil_tmp170 + __cil_tmp169;
      *((__u32 *)__cil_tmp171) = (__u32 )0;
      goto switch_break;
      case_1280:
      bpp = (u32 )24;
      __cil_tmp172 = (unsigned long )var;
      __cil_tmp173 = __cil_tmp172 + 32;
      *((__u32 *)__cil_tmp173) = (__u32 )16;
      __cil_tmp174 = 32 + 4;
      __cil_tmp175 = (unsigned long )var;
      __cil_tmp176 = __cil_tmp175 + __cil_tmp174;
      *((__u32 *)__cil_tmp176) = (__u32 )8;
      __cil_tmp177 = (unsigned long )var;
      __cil_tmp178 = __cil_tmp177 + 44;
      *((__u32 *)__cil_tmp178) = (__u32 )8;
      __cil_tmp179 = 44 + 4;
      __cil_tmp180 = (unsigned long )var;
      __cil_tmp181 = __cil_tmp180 + __cil_tmp179;
      *((__u32 *)__cil_tmp181) = (__u32 )8;
      __cil_tmp182 = (unsigned long )var;
      __cil_tmp183 = __cil_tmp182 + 56;
      *((__u32 *)__cil_tmp183) = (__u32 )0;
      __cil_tmp184 = 56 + 4;
      __cil_tmp185 = (unsigned long )var;
      __cil_tmp186 = __cil_tmp185 + __cil_tmp184;
      *((__u32 *)__cil_tmp186) = (__u32 )8;
      __cil_tmp187 = (unsigned long )var;
      __cil_tmp188 = __cil_tmp187 + 68;
      *((__u32 *)__cil_tmp188) = (__u32 )0;
      __cil_tmp189 = 68 + 4;
      __cil_tmp190 = (unsigned long )var;
      __cil_tmp191 = __cil_tmp190 + __cil_tmp189;
      *((__u32 *)__cil_tmp191) = (__u32 )0;
      goto switch_break;
      case_1536:
      bpp = (u32 )32;
      __cil_tmp192 = (unsigned long )var;
      __cil_tmp193 = __cil_tmp192 + 32;
      *((__u32 *)__cil_tmp193) = (__u32 )16;
      __cil_tmp194 = 32 + 4;
      __cil_tmp195 = (unsigned long )var;
      __cil_tmp196 = __cil_tmp195 + __cil_tmp194;
      *((__u32 *)__cil_tmp196) = (__u32 )8;
      __cil_tmp197 = (unsigned long )var;
      __cil_tmp198 = __cil_tmp197 + 44;
      *((__u32 *)__cil_tmp198) = (__u32 )8;
      __cil_tmp199 = 44 + 4;
      __cil_tmp200 = (unsigned long )var;
      __cil_tmp201 = __cil_tmp200 + __cil_tmp199;
      *((__u32 *)__cil_tmp201) = (__u32 )8;
      __cil_tmp202 = (unsigned long )var;
      __cil_tmp203 = __cil_tmp202 + 56;
      *((__u32 *)__cil_tmp203) = (__u32 )0;
      __cil_tmp204 = 56 + 4;
      __cil_tmp205 = (unsigned long )var;
      __cil_tmp206 = __cil_tmp205 + __cil_tmp204;
      *((__u32 *)__cil_tmp206) = (__u32 )8;
      __cil_tmp207 = (unsigned long )var;
      __cil_tmp208 = __cil_tmp207 + 68;
      *((__u32 *)__cil_tmp208) = (__u32 )24;
      __cil_tmp209 = 68 + 4;
      __cil_tmp210 = (unsigned long )var;
      __cil_tmp211 = __cil_tmp210 + __cil_tmp209;
      *((__u32 *)__cil_tmp211) = (__u32 )8;
      goto switch_break;
      switch_default:
      {
      printk("<3>atyfb: Invalid pixel width\n");
      }
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  *((__u32 *)var) = xres;
  __cil_tmp212 = (unsigned long )var;
  __cil_tmp213 = __cil_tmp212 + 4;
  *((__u32 *)__cil_tmp213) = yres;
  __cil_tmp214 = (unsigned long )var;
  __cil_tmp215 = __cil_tmp214 + 8;
  __cil_tmp216 = *((u32 *)crtc);
  *((__u32 *)__cil_tmp215) = (__u32 )__cil_tmp216;
  __cil_tmp217 = (unsigned long )var;
  __cil_tmp218 = __cil_tmp217 + 12;
  __cil_tmp219 = (unsigned long )crtc;
  __cil_tmp220 = __cil_tmp219 + 4;
  __cil_tmp221 = *((u32 *)__cil_tmp220);
  *((__u32 *)__cil_tmp218) = (__u32 )__cil_tmp221;
  __cil_tmp222 = (unsigned long )var;
  __cil_tmp223 = __cil_tmp222 + 24;
  *((__u32 *)__cil_tmp223) = bpp;
  __cil_tmp224 = (unsigned long )var;
  __cil_tmp225 = __cil_tmp224 + 104;
  *((__u32 *)__cil_tmp225) = left;
  __cil_tmp226 = (unsigned long )var;
  __cil_tmp227 = __cil_tmp226 + 108;
  *((__u32 *)__cil_tmp227) = right;
  __cil_tmp228 = (unsigned long )var;
  __cil_tmp229 = __cil_tmp228 + 112;
  *((__u32 *)__cil_tmp229) = upper;
  __cil_tmp230 = (unsigned long )var;
  __cil_tmp231 = __cil_tmp230 + 116;
  *((__u32 *)__cil_tmp231) = lower;
  __cil_tmp232 = (unsigned long )var;
  __cil_tmp233 = __cil_tmp232 + 120;
  *((__u32 *)__cil_tmp233) = hslen;
  __cil_tmp234 = (unsigned long )var;
  __cil_tmp235 = __cil_tmp234 + 124;
  *((__u32 *)__cil_tmp235) = vslen;
  __cil_tmp236 = (unsigned long )var;
  __cil_tmp237 = __cil_tmp236 + 128;
  *((__u32 *)__cil_tmp237) = sync;
  __cil_tmp238 = (unsigned long )var;
  __cil_tmp239 = __cil_tmp238 + 132;
  *((__u32 *)__cil_tmp239) = (__u32 )0;
  if (interlace) {
    __cil_tmp240 = (unsigned long )var;
    __cil_tmp241 = __cil_tmp240 + 132;
    *((__u32 *)__cil_tmp241) = (__u32 )1;
  } else {
  }
  if (double_scan) {
    __cil_tmp242 = (unsigned long )var;
    __cil_tmp243 = __cil_tmp242 + 132;
    *((__u32 *)__cil_tmp243) = (__u32 )2;
    __cil_tmp244 = (unsigned long )var;
    __cil_tmp245 = __cil_tmp244 + 4;
    __cil_tmp246 = (unsigned long )var;
    __cil_tmp247 = __cil_tmp246 + 4;
    __cil_tmp248 = *((__u32 *)__cil_tmp247);
    *((__u32 *)__cil_tmp245) = __cil_tmp248 >> 1;
    __cil_tmp249 = (unsigned long )var;
    __cil_tmp250 = __cil_tmp249 + 112;
    __cil_tmp251 = (unsigned long )var;
    __cil_tmp252 = __cil_tmp251 + 112;
    __cil_tmp253 = *((__u32 *)__cil_tmp252);
    *((__u32 *)__cil_tmp250) = __cil_tmp253 >> 1;
    __cil_tmp254 = (unsigned long )var;
    __cil_tmp255 = __cil_tmp254 + 116;
    __cil_tmp256 = (unsigned long )var;
    __cil_tmp257 = __cil_tmp256 + 116;
    __cil_tmp258 = *((__u32 *)__cil_tmp257);
    *((__u32 *)__cil_tmp255) = __cil_tmp258 >> 1;
    __cil_tmp259 = (unsigned long )var;
    __cil_tmp260 = __cil_tmp259 + 124;
    __cil_tmp261 = (unsigned long )var;
    __cil_tmp262 = __cil_tmp261 + 124;
    __cil_tmp263 = *((__u32 *)__cil_tmp262);
    *((__u32 *)__cil_tmp260) = __cil_tmp263 >> 1;
  } else {
  }
  return (0);
}
}
static int atyfb_set_par(struct fb_info *info )
{ struct atyfb_par *par ;
  struct fb_var_screeninfo *var ;
  u32 tmp___7 ;
  u32 pixclock ;
  int err ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u32 tmp___12 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  struct fb_info *__cil_tmp19 ;
  struct fb_var_screeninfo *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  struct crtc *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct aty_pll_ops *__cil_tmp26 ;
  int (* __cil_tmp27)(struct fb_info *info , u32 vclk_per , u32 bpp ,
                             union aty_pll *pll ) ;
  int (*__cil_tmp28)(struct fb_info *info , u32 vclk_per , u32 bpp , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  union aty_pll *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  struct fb_ops *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  struct fb_ops *__cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  void *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  struct atyfb_par *__cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  struct crtc *__cil_tmp68 ;
  struct crtc *__cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  struct aty_dac_ops *__cil_tmp72 ;
  int (* __cil_tmp73)(struct fb_info *info , union aty_pll const *pll ,
                             u32 bpp , u32 accel ) ;
  int (*__cil_tmp74)(struct fb_info *info , union aty_pll *pll , u32 bpp ,
                     u32 accel ) ;
  struct fb_info *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  union aty_pll *__cil_tmp78 ;
  union aty_pll *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  __u32 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  u32 __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  struct aty_pll_ops *__cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  void (* __cil_tmp91)(struct fb_info *info , union aty_pll const *pll ) ;
  void (*__cil_tmp92)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  union aty_pll *__cil_tmp96 ;
  union aty_pll *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  u32 __cil_tmp100 ;
  unsigned int __cil_tmp101 ;
  struct atyfb_par *__cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  __u32 __cil_tmp105 ;
  struct atyfb_par *__cil_tmp106 ;
  struct atyfb_par *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  u32 __cil_tmp110 ;
  unsigned int __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  u8 __cil_tmp114 ;
  int __cil_tmp115 ;
  int __cil_tmp116 ;
  unsigned int __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  __u32 __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  u32 __cil_tmp123 ;
  struct atyfb_par *__cil_tmp124 ;
  u32 __cil_tmp125 ;
  struct atyfb_par *__cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  u32 __cil_tmp129 ;
  struct atyfb_par *__cil_tmp130 ;
  u32 __cil_tmp131 ;
  struct atyfb_par *__cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  u32 __cil_tmp135 ;
  struct atyfb_par *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  int __cil_tmp139 ;
  u32 __cil_tmp140 ;
  struct atyfb_par *__cil_tmp141 ;
  struct atyfb_par *__cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  int __cil_tmp145 ;
  u32 __cil_tmp146 ;
  struct atyfb_par *__cil_tmp147 ;
  struct atyfb_par *__cil_tmp148 ;
  unsigned int __cil_tmp149 ;
  struct atyfb_par *__cil_tmp150 ;
  struct atyfb_par *__cil_tmp151 ;
  u8 __cil_tmp152 ;
  struct atyfb_par *__cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  __u32 __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  __u32 __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  __u32 __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  unsigned long __cil_tmp173 ;
  u32 __cil_tmp174 ;
  {
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + 1160;
  __cil_tmp14 = *((void **)__cil_tmp13);
  par = (struct atyfb_par *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )info;
  __cil_tmp16 = __cil_tmp15 + 160;
  var = (struct fb_var_screeninfo *)__cil_tmp16;
  {
  __cil_tmp17 = (unsigned long )par;
  __cil_tmp18 = __cil_tmp17 + 1080;
  if (*((int *)__cil_tmp18)) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp19 = (struct fb_info *)info;
  __cil_tmp20 = (struct fb_var_screeninfo *)var;
  __cil_tmp21 = (unsigned long )par;
  __cil_tmp22 = __cil_tmp21 + 864;
  __cil_tmp23 = (struct crtc *)__cil_tmp22;
  err = aty_var_to_crtc(__cil_tmp19, __cil_tmp20, __cil_tmp23);
  }
  if (err) {
    return (err);
  } else {
  }
  {
  pixclock = atyfb_get_pixclock(var, par);
  }
  if (pixclock == 0U) {
    {
    printk("<3>atyfb: Invalid pixclock\n");
    }
    return (-22);
  } else {
    {
    __cil_tmp24 = (unsigned long )par;
    __cil_tmp25 = __cil_tmp24 + 840;
    __cil_tmp26 = *((struct aty_pll_ops **)__cil_tmp25);
    __cil_tmp27 = *((int (* *)(struct fb_info *info , u32 vclk_per ,
                                      u32 bpp , union aty_pll *pll ))__cil_tmp26);
    __cil_tmp28 = (int (*)(struct fb_info *info , u32 vclk_per , u32 bpp ,
                           union aty_pll *pll ))__cil_tmp27;
    __cil_tmp29 = (struct fb_info *)info;
    __cil_tmp30 = (unsigned long )var;
    __cil_tmp31 = __cil_tmp30 + 24;
    __cil_tmp32 = *((__u32 *)__cil_tmp31);
    __cil_tmp33 = (unsigned long )par;
    __cil_tmp34 = __cil_tmp33 + 960;
    __cil_tmp35 = (union aty_pll *)__cil_tmp34;
    err = (*__cil_tmp28)(__cil_tmp29, pixclock, __cil_tmp32, __cil_tmp35);
    }
    if (err) {
      return (err);
    } else {
    }
  }
  __cil_tmp36 = (unsigned long )par;
  __cil_tmp37 = __cil_tmp36 + 1072;
  __cil_tmp38 = (unsigned long )var;
  __cil_tmp39 = __cil_tmp38 + 96;
  *((u32 *)__cil_tmp37) = *((__u32 *)__cil_tmp39);
  {
  __cil_tmp40 = (unsigned long )var;
  __cil_tmp41 = __cil_tmp40 + 96;
  if (*((__u32 *)__cil_tmp41)) {
    __cil_tmp42 = (unsigned long )info;
    __cil_tmp43 = __cil_tmp42 + 1080;
    __cil_tmp44 = *((struct fb_ops **)__cil_tmp43);
    __cil_tmp45 = (unsigned long )__cil_tmp44;
    __cil_tmp46 = __cil_tmp45 + 128;
    *((int (**)(struct fb_info *info ))__cil_tmp46) = & atyfb_sync;
    __cil_tmp47 = (unsigned long )info;
    __cil_tmp48 = __cil_tmp47 + 8;
    __cil_tmp49 = (unsigned long )info;
    __cil_tmp50 = __cil_tmp49 + 8;
    __cil_tmp51 = *((int *)__cil_tmp50);
    *((int *)__cil_tmp48) = __cil_tmp51 & -3;
  } else {
    __cil_tmp52 = (unsigned long )info;
    __cil_tmp53 = __cil_tmp52 + 1080;
    __cil_tmp54 = *((struct fb_ops **)__cil_tmp53);
    __cil_tmp55 = (unsigned long )__cil_tmp54;
    __cil_tmp56 = __cil_tmp55 + 128;
    __cil_tmp57 = (void *)0;
    *((int (**)(struct fb_info *info ))__cil_tmp56) = (int (*)(struct fb_info *info ))__cil_tmp57;
    __cil_tmp58 = (unsigned long )info;
    __cil_tmp59 = __cil_tmp58 + 8;
    __cil_tmp60 = (unsigned long )info;
    __cil_tmp61 = __cil_tmp60 + 8;
    __cil_tmp62 = *((int *)__cil_tmp61);
    *((int *)__cil_tmp59) = __cil_tmp62 | 2;
  }
  }
  {
  __cil_tmp63 = (unsigned long )par;
  __cil_tmp64 = __cil_tmp63 + 1076;
  if (*((int *)__cil_tmp64)) {
    {
    wait_for_idle(par);
    }
  } else {
  }
  }
  {
  __cil_tmp65 = (struct atyfb_par *)par;
  __cil_tmp66 = (unsigned long )par;
  __cil_tmp67 = __cil_tmp66 + 864;
  __cil_tmp68 = (struct crtc *)__cil_tmp67;
  __cil_tmp69 = (struct crtc *)__cil_tmp68;
  aty_set_crtc(__cil_tmp65, __cil_tmp69);
  __cil_tmp70 = (unsigned long )par;
  __cil_tmp71 = __cil_tmp70 + 832;
  __cil_tmp72 = *((struct aty_dac_ops **)__cil_tmp71);
  __cil_tmp73 = *((int (* *)(struct fb_info *info , union aty_pll const *pll ,
                                    u32 bpp , u32 accel ))__cil_tmp72);
  __cil_tmp74 = (int (*)(struct fb_info *info , union aty_pll *pll ,
                         u32 bpp , u32 accel ))__cil_tmp73;
  __cil_tmp75 = (struct fb_info *)info;
  __cil_tmp76 = (unsigned long )par;
  __cil_tmp77 = __cil_tmp76 + 960;
  __cil_tmp78 = (union aty_pll *)__cil_tmp77;
  __cil_tmp79 = (union aty_pll *)__cil_tmp78;
  __cil_tmp80 = (unsigned long )var;
  __cil_tmp81 = __cil_tmp80 + 24;
  __cil_tmp82 = *((__u32 *)__cil_tmp81);
  __cil_tmp83 = (unsigned long )par;
  __cil_tmp84 = __cil_tmp83 + 1072;
  __cil_tmp85 = *((u32 *)__cil_tmp84);
  (*__cil_tmp74)(__cil_tmp75, __cil_tmp79, __cil_tmp82, __cil_tmp85);
  __cil_tmp86 = (unsigned long )par;
  __cil_tmp87 = __cil_tmp86 + 840;
  __cil_tmp88 = *((struct aty_pll_ops **)__cil_tmp87);
  __cil_tmp89 = (unsigned long )__cil_tmp88;
  __cil_tmp90 = __cil_tmp89 + 16;
  __cil_tmp91 = *((void (* *)(struct fb_info *info , union aty_pll const *pll ))__cil_tmp90);
  __cil_tmp92 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp91;
  __cil_tmp93 = (struct fb_info *)info;
  __cil_tmp94 = (unsigned long )par;
  __cil_tmp95 = __cil_tmp94 + 960;
  __cil_tmp96 = (union aty_pll *)__cil_tmp95;
  __cil_tmp97 = (union aty_pll *)__cil_tmp96;
  (*__cil_tmp92)(__cil_tmp93, __cil_tmp97);
  }
  {
  __cil_tmp98 = (unsigned long )par;
  __cil_tmp99 = __cil_tmp98 + 1044;
  __cil_tmp100 = *((u32 *)__cil_tmp99);
  __cil_tmp101 = __cil_tmp100 & 64U;
  if (! __cil_tmp101) {
    {
    __cil_tmp102 = (struct atyfb_par *)par;
    tmp___8 = aty_ld_le32(176, __cil_tmp102);
    tmp___7 = tmp___8 & 4043309055U;
    }
    {
    __cil_tmp103 = (unsigned long )var;
    __cil_tmp104 = __cil_tmp103 + 24;
    __cil_tmp105 = *((__u32 *)__cil_tmp104);
    if ((int )__cil_tmp105 == 8) {
      goto case_8;
    } else
    if ((int )__cil_tmp105 == 16) {
      goto case_16;
    } else
    if ((int )__cil_tmp105 == 32) {
      goto case_32;
    } else
    if (0) {
      case_8:
      tmp___7 = tmp___7 | 33554432U;
      goto switch_break;
      case_16:
      tmp___7 = tmp___7 | 50331648U;
      goto switch_break;
      case_32:
      tmp___7 = tmp___7 | 100663296U;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
    {
    __cil_tmp106 = (struct atyfb_par *)par;
    aty_st_le32(176, tmp___7, __cil_tmp106);
    }
  } else {
    {
    __cil_tmp107 = (struct atyfb_par *)par;
    tmp___9 = aty_ld_le32(176, __cil_tmp107);
    tmp___7 = tmp___9 & 4027580415U;
    }
    {
    __cil_tmp108 = (unsigned long )par;
    __cil_tmp109 = __cil_tmp108 + 1044;
    __cil_tmp110 = *((u32 *)__cil_tmp109);
    __cil_tmp111 = __cil_tmp110 & 32U;
    if (! __cil_tmp111) {
      __cil_tmp112 = (unsigned long )par;
      __cil_tmp113 = __cil_tmp112 + 1066;
      __cil_tmp114 = *((u8 *)__cil_tmp113);
      __cil_tmp115 = (int )__cil_tmp114;
      __cil_tmp116 = __cil_tmp115 << 20;
      __cil_tmp117 = (unsigned int )__cil_tmp116;
      tmp___7 = tmp___7 | __cil_tmp117;
    } else {
    }
    }
    {
    __cil_tmp118 = (unsigned long )var;
    __cil_tmp119 = __cil_tmp118 + 24;
    __cil_tmp120 = *((__u32 *)__cil_tmp119);
    if ((int )__cil_tmp120 == 8) {
      goto case_8___0;
    } else
    if ((int )__cil_tmp120 == 24) {
      goto case_8___0;
    } else
    if ((int )__cil_tmp120 == 16) {
      goto case_16___0;
    } else
    if ((int )__cil_tmp120 == 32) {
      goto case_32___0;
    } else
    if (0) {
      case_8___0:
      case_24:
      tmp___7 = tmp___7;
      goto switch_break___0;
      case_16___0:
      tmp___7 = tmp___7 | 67108864U;
      goto switch_break___0;
      case_32___0:
      tmp___7 = tmp___7 | 134217728U;
      goto switch_break___0;
    } else {
      switch_break___0: ;
    }
    }
    {
    __cil_tmp121 = (unsigned long )par;
    __cil_tmp122 = __cil_tmp121 + 1044;
    __cil_tmp123 = *((u32 *)__cil_tmp122);
    if (__cil_tmp123 & 128U) {
      {
      __cil_tmp124 = (struct atyfb_par *)par;
      aty_st_le32(196, 2264990084U, __cil_tmp124);
      __cil_tmp125 = (u32 )1744830713;
      __cil_tmp126 = (struct atyfb_par *)par;
      aty_st_le32(160, __cil_tmp125, __cil_tmp126);
      }
    } else {
      {
      __cil_tmp127 = (unsigned long )par;
      __cil_tmp128 = __cil_tmp127 + 1044;
      __cil_tmp129 = *((u32 *)__cil_tmp128);
      if (__cil_tmp129 & 256U) {
        {
        __cil_tmp130 = (struct atyfb_par *)par;
        aty_st_le32(196, 2264990084U, __cil_tmp130);
        __cil_tmp131 = (u32 )1744830713;
        __cil_tmp132 = (struct atyfb_par *)par;
        aty_st_le32(160, __cil_tmp131, __cil_tmp132);
        }
      } else {
        {
        __cil_tmp133 = (unsigned long )par;
        __cil_tmp134 = __cil_tmp133 + 1044;
        __cil_tmp135 = *((u32 *)__cil_tmp134);
        if (__cil_tmp135 & 512U) {
          {
          __cil_tmp136 = (struct atyfb_par *)par;
          aty_st_le32(196, 2147549442U, __cil_tmp136);
          }
          {
          __cil_tmp137 = (unsigned long )par;
          __cil_tmp138 = __cil_tmp137 + 1176;
          if (*((unsigned long *)__cil_tmp138)) {
            tmp___10 = 16;
          } else {
            tmp___10 = 0;
          }
          }
          {
          __cil_tmp139 = 2066980928 | tmp___10;
          __cil_tmp140 = (u32 )__cil_tmp139;
          __cil_tmp141 = (struct atyfb_par *)par;
          aty_st_le32(160, __cil_tmp140, __cil_tmp141);
          }
        } else {
          {
          __cil_tmp142 = (struct atyfb_par *)par;
          aty_st_le32(196, 2248212738U, __cil_tmp142);
          }
          {
          __cil_tmp143 = (unsigned long )par;
          __cil_tmp144 = __cil_tmp143 + 1176;
          if (*((unsigned long *)__cil_tmp144)) {
            tmp___11 = 16;
          } else {
            tmp___11 = 0;
          }
          }
          {
          __cil_tmp145 = 2065932352 | tmp___11;
          __cil_tmp146 = (u32 )__cil_tmp145;
          __cil_tmp147 = (struct atyfb_par *)par;
          aty_st_le32(160, __cil_tmp146, __cil_tmp147);
          __cil_tmp148 = (struct atyfb_par *)par;
          tmp___12 = aty_ld_le32(172, __cil_tmp148);
          __cil_tmp149 = tmp___12 | 83886081U;
          __cil_tmp150 = (struct atyfb_par *)par;
          aty_st_le32(172, __cil_tmp149, __cil_tmp150);
          }
        }
        }
      }
      }
    }
    }
    {
    __cil_tmp151 = (struct atyfb_par *)par;
    aty_st_le32(176, tmp___7, __cil_tmp151);
    }
  }
  }
  {
  __cil_tmp152 = (u8 )255;
  __cil_tmp153 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp152, __cil_tmp153);
  __cil_tmp154 = 320 + 48;
  __cil_tmp155 = (unsigned long )info;
  __cil_tmp156 = __cil_tmp155 + __cil_tmp154;
  __cil_tmp157 = (unsigned long )var;
  __cil_tmp158 = __cil_tmp157 + 8;
  __cil_tmp159 = *((__u32 *)__cil_tmp158);
  __cil_tmp160 = (unsigned long )var;
  __cil_tmp161 = __cil_tmp160 + 24;
  __cil_tmp162 = *((__u32 *)__cil_tmp161);
  *((__u32 *)__cil_tmp156) = calc_line_length(par, __cil_tmp159, __cil_tmp162);
  }
  {
  __cil_tmp163 = (unsigned long )var;
  __cil_tmp164 = __cil_tmp163 + 24;
  __cil_tmp165 = *((__u32 *)__cil_tmp164);
  if (__cil_tmp165 <= 8U) {
    __cil_tmp166 = 320 + 36;
    __cil_tmp167 = (unsigned long )info;
    __cil_tmp168 = __cil_tmp167 + __cil_tmp166;
    *((__u32 *)__cil_tmp168) = (__u32 )3;
  } else {
    __cil_tmp169 = 320 + 36;
    __cil_tmp170 = (unsigned long )info;
    __cil_tmp171 = __cil_tmp170 + __cil_tmp169;
    *((__u32 *)__cil_tmp171) = (__u32 )4;
  }
  }
  {
  __cil_tmp172 = (unsigned long )par;
  __cil_tmp173 = __cil_tmp172 + 1072;
  __cil_tmp174 = *((u32 *)__cil_tmp173);
  if (__cil_tmp174 & 1U) {
    {
    aty_init_engine(par, info);
    }
  } else {
  }
  }
  return (0);
}
}
static int atyfb_check_var(struct fb_var_screeninfo *var , struct fb_info *info )
{ struct atyfb_par *par ;
  int err ;
  struct crtc crtc ;
  union aty_pll pll___0 ;
  u32 pixclock ;
  size_t __len ;
  void *__ret ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void *__cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  union aty_pll *__cil_tmp16 ;
  void *__cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  union aty_pll *__cil_tmp21 ;
  void *__cil_tmp22 ;
  struct fb_info *__cil_tmp23 ;
  struct fb_var_screeninfo *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  __u32 __cil_tmp27 ;
  unsigned int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct aty_pll_ops *__cil_tmp31 ;
  int (* __cil_tmp32)(struct fb_info *info , u32 vclk_per , u32 bpp ,
                             union aty_pll *pll ) ;
  int (*__cil_tmp33)(struct fb_info *info , u32 vclk_per , u32 bpp , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  __u32 __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  struct crtc *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct aty_pll_ops *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  u32 (* __cil_tmp55)(struct fb_info *info , union aty_pll const *pll ) ;
  u32 (*__cil_tmp56)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp57 ;
  union aty_pll *__cil_tmp58 ;
  {
  __cil_tmp10 = (unsigned long )info;
  __cil_tmp11 = __cil_tmp10 + 1160;
  __cil_tmp12 = *((void **)__cil_tmp11);
  par = (struct atyfb_par *)__cil_tmp12;
  __len = 48UL;
  if (__len >= 64UL) {
    {
    __cil_tmp13 = (void *)(& pll___0);
    __cil_tmp14 = (unsigned long )par;
    __cil_tmp15 = __cil_tmp14 + 960;
    __cil_tmp16 = (union aty_pll *)__cil_tmp15;
    __cil_tmp17 = (void *)__cil_tmp16;
    __ret = memcpy(__cil_tmp13, __cil_tmp17, __len);
    }
  } else {
    {
    __cil_tmp18 = (void *)(& pll___0);
    __cil_tmp19 = (unsigned long )par;
    __cil_tmp20 = __cil_tmp19 + 960;
    __cil_tmp21 = (union aty_pll *)__cil_tmp20;
    __cil_tmp22 = (void *)__cil_tmp21;
    __ret = memcpy(__cil_tmp18, __cil_tmp22, __len);
    }
  }
  {
  __cil_tmp23 = (struct fb_info *)info;
  __cil_tmp24 = (struct fb_var_screeninfo *)var;
  err = aty_var_to_crtc(__cil_tmp23, __cil_tmp24, & crtc);
  }
  if (err) {
    return (err);
  } else {
  }
  {
  pixclock = atyfb_get_pixclock(var, par);
  }
  if (pixclock == 0U) {
    {
    __cil_tmp25 = (unsigned long )var;
    __cil_tmp26 = __cil_tmp25 + 84;
    __cil_tmp27 = *((__u32 *)__cil_tmp26);
    __cil_tmp28 = __cil_tmp27 & 2U;
    if (! __cil_tmp28) {
      {
      printk("<3>atyfb: Invalid pixclock\n");
      }
    } else {
    }
    }
    return (-22);
  } else {
    {
    __cil_tmp29 = (unsigned long )par;
    __cil_tmp30 = __cil_tmp29 + 840;
    __cil_tmp31 = *((struct aty_pll_ops **)__cil_tmp30);
    __cil_tmp32 = *((int (* *)(struct fb_info *info , u32 vclk_per ,
                                      u32 bpp , union aty_pll *pll ))__cil_tmp31);
    __cil_tmp33 = (int (*)(struct fb_info *info , u32 vclk_per , u32 bpp ,
                           union aty_pll *pll ))__cil_tmp32;
    __cil_tmp34 = (struct fb_info *)info;
    __cil_tmp35 = (unsigned long )var;
    __cil_tmp36 = __cil_tmp35 + 24;
    __cil_tmp37 = *((__u32 *)__cil_tmp36);
    err = (*__cil_tmp33)(__cil_tmp34, pixclock, __cil_tmp37, & pll___0);
    }
    if (err) {
      return (err);
    } else {
    }
  }
  {
  __cil_tmp38 = (unsigned long )var;
  __cil_tmp39 = __cil_tmp38 + 96;
  __cil_tmp40 = *((__u32 *)__cil_tmp39);
  if (__cil_tmp40 & 1U) {
    __cil_tmp41 = 160 + 96;
    __cil_tmp42 = (unsigned long )info;
    __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
    *((__u32 *)__cil_tmp43) = (__u32 )1;
  } else {
    __cil_tmp44 = 160 + 96;
    __cil_tmp45 = (unsigned long )info;
    __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
    *((__u32 *)__cil_tmp46) = (__u32 )0;
  }
  }
  {
  __cil_tmp47 = (struct crtc *)(& crtc);
  aty_crtc_to_var(__cil_tmp47, var);
  __cil_tmp48 = (unsigned long )var;
  __cil_tmp49 = __cil_tmp48 + 100;
  __cil_tmp50 = (unsigned long )par;
  __cil_tmp51 = __cil_tmp50 + 840;
  __cil_tmp52 = *((struct aty_pll_ops **)__cil_tmp51);
  __cil_tmp53 = (unsigned long )__cil_tmp52;
  __cil_tmp54 = __cil_tmp53 + 8;
  __cil_tmp55 = *((u32 (* *)(struct fb_info *info , union aty_pll const *pll ))__cil_tmp54);
  __cil_tmp56 = (u32 (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp55;
  __cil_tmp57 = (struct fb_info *)info;
  __cil_tmp58 = (union aty_pll *)(& pll___0);
  *((__u32 *)__cil_tmp49) = (*__cil_tmp56)(__cil_tmp57, __cil_tmp58);
  }
  return (0);
}
}
static void set_off_pitch(struct atyfb_par *par , struct fb_info *info )
{ u32 xoffset ;
  u32 yoffset ;
  u32 line_length ;
  u32 bpp ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  __u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  __u32 __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  __u32 __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u32 __cil_tmp26 ;
  u32 __cil_tmp27 ;
  u32 __cil_tmp28 ;
  u32 __cil_tmp29 ;
  u32 __cil_tmp30 ;
  u32 __cil_tmp31 ;
  u32 __cil_tmp32 ;
  {
  __cil_tmp7 = 160 + 16;
  __cil_tmp8 = (unsigned long )info;
  __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
  __cil_tmp10 = *((__u32 *)__cil_tmp9);
  xoffset = (u32 )__cil_tmp10;
  __cil_tmp11 = 160 + 20;
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
  __cil_tmp14 = *((__u32 *)__cil_tmp13);
  yoffset = (u32 )__cil_tmp14;
  __cil_tmp15 = 320 + 48;
  __cil_tmp16 = (unsigned long )info;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  __cil_tmp18 = *((__u32 *)__cil_tmp17);
  line_length = (u32 )__cil_tmp18;
  __cil_tmp19 = 160 + 24;
  __cil_tmp20 = (unsigned long )info;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = *((__u32 *)__cil_tmp21);
  bpp = (u32 )__cil_tmp22;
  __cil_tmp23 = 864 + 40;
  __cil_tmp24 = (unsigned long )par;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  __cil_tmp26 = line_length / bpp;
  __cil_tmp27 = __cil_tmp26 << 22;
  __cil_tmp28 = xoffset * bpp;
  __cil_tmp29 = __cil_tmp28 / 8U;
  __cil_tmp30 = yoffset * line_length;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  __cil_tmp32 = __cil_tmp31 / 8U;
  *((u32 *)__cil_tmp25) = __cil_tmp32 | __cil_tmp27;
  return;
}
}
static int atyfb_open(struct fb_info *info , int user )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  int __cil_tmp11 ;
  {
  __cil_tmp4 = (unsigned long )info;
  __cil_tmp5 = __cil_tmp4 + 1160;
  __cil_tmp6 = *((void **)__cil_tmp5);
  par = (struct atyfb_par *)__cil_tmp6;
  if (user) {
    __cil_tmp7 = (unsigned long )par;
    __cil_tmp8 = __cil_tmp7 + 1112;
    __cil_tmp9 = (unsigned long )par;
    __cil_tmp10 = __cil_tmp9 + 1112;
    __cil_tmp11 = *((int *)__cil_tmp10);
    *((int *)__cil_tmp8) = __cil_tmp11 + 1;
  } else {
  }
  return (0);
}
}
static irqreturn_t aty_irq(int irq , void *dev_id )
{ struct atyfb_par *par ;
  int handled ;
  u32 int_cntl ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  spinlock_t *__cil_tmp8 ;
  struct atyfb_par *__cil_tmp9 ;
  unsigned int __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  struct atyfb_par *__cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 __cil_tmp29 ;
  struct atyfb_par *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  wait_queue_head_t *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  spinlock_t *__cil_tmp37 ;
  int __cil_tmp38 ;
  {
  {
  par = (struct atyfb_par *)dev_id;
  handled = 0;
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 1256;
  __cil_tmp8 = (spinlock_t *)__cil_tmp7;
  spin_lock(__cil_tmp8);
  __cil_tmp9 = (struct atyfb_par *)par;
  int_cntl = aty_ld_le32(24, __cil_tmp9);
  }
  if (int_cntl & 4U) {
    {
    __cil_tmp10 = int_cntl & 626348682U;
    __cil_tmp11 = __cil_tmp10 | 4U;
    __cil_tmp12 = (struct atyfb_par *)par;
    aty_st_le32(24, __cil_tmp11, __cil_tmp12);
    __cil_tmp13 = 1192 + 40;
    __cil_tmp14 = (unsigned long )par;
    __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
    __cil_tmp16 = 1192 + 40;
    __cil_tmp17 = (unsigned long )par;
    __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
    __cil_tmp19 = *((unsigned int *)__cil_tmp18);
    *((unsigned int *)__cil_tmp15) = __cil_tmp19 + 1U;
    }
    {
    __cil_tmp20 = 1192 + 44;
    __cil_tmp21 = (unsigned long )par;
    __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
    if (*((int *)__cil_tmp22)) {
      {
      __cil_tmp23 = 1192 + 44;
      __cil_tmp24 = (unsigned long )par;
      __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
      *((int *)__cil_tmp25) = 0;
      __cil_tmp26 = 864 + 40;
      __cil_tmp27 = (unsigned long )par;
      __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
      __cil_tmp29 = *((u32 *)__cil_tmp28);
      __cil_tmp30 = (struct atyfb_par *)par;
      aty_st_le32(20, __cil_tmp29, __cil_tmp30);
      }
    } else {
    }
    }
    {
    __cil_tmp31 = (unsigned long )par;
    __cil_tmp32 = __cil_tmp31 + 1192;
    __cil_tmp33 = (wait_queue_head_t *)__cil_tmp32;
    __cil_tmp34 = (void *)0;
    __wake_up(__cil_tmp33, 1U, 1, __cil_tmp34);
    handled = 1;
    }
  } else {
  }
  {
  __cil_tmp35 = (unsigned long )par;
  __cil_tmp36 = __cil_tmp35 + 1256;
  __cil_tmp37 = (spinlock_t *)__cil_tmp36;
  spin_unlock(__cil_tmp37);
  }
  {
  __cil_tmp38 = handled != 0;
  return ((irqreturn_t )__cil_tmp38);
  }
}
}
static int aty_enable_irq(struct atyfb_par *par , int reenable )
{ u32 int_cntl ;
  int tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long *__cil_tmp10 ;
  unsigned long volatile *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  spinlock_t *__cil_tmp14 ;
  struct atyfb_par *__cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  struct atyfb_par *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  spinlock_t *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  void *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long *__cil_tmp28 ;
  unsigned long volatile *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  spinlock_t *__cil_tmp32 ;
  struct atyfb_par *__cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  struct atyfb_par *__cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  struct atyfb_par *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  spinlock_t *__cil_tmp40 ;
  {
  {
  __cil_tmp8 = (unsigned long )par;
  __cil_tmp9 = __cil_tmp8 + 1240;
  __cil_tmp10 = (unsigned long *)__cil_tmp9;
  __cil_tmp11 = (unsigned long volatile *)__cil_tmp10;
  tmp___10 = test_and_set_bit(0, __cil_tmp11);
  }
  if (tmp___10) {
    if (reenable) {
      {
      __cil_tmp12 = (unsigned long )par;
      __cil_tmp13 = __cil_tmp12 + 1256;
      __cil_tmp14 = (spinlock_t *)__cil_tmp13;
      spin_lock_irq(__cil_tmp14);
      __cil_tmp15 = (struct atyfb_par *)par;
      tmp___9 = aty_ld_le32(24, __cil_tmp15);
      int_cntl = tmp___9 & 626348682U;
      }
      {
      __cil_tmp16 = int_cntl & 2U;
      if (! __cil_tmp16) {
        {
        printk("atyfb: someone disabled IRQ [%08x]\n", int_cntl);
        __cil_tmp17 = int_cntl | 2U;
        __cil_tmp18 = (struct atyfb_par *)par;
        aty_st_le32(24, __cil_tmp17, __cil_tmp18);
        }
      } else {
      }
      }
      {
      __cil_tmp19 = (unsigned long )par;
      __cil_tmp20 = __cil_tmp19 + 1256;
      __cil_tmp21 = (spinlock_t *)__cil_tmp20;
      spin_unlock_irq(__cil_tmp21);
      }
    } else {
    }
  } else {
    {
    __cil_tmp22 = (unsigned long )par;
    __cil_tmp23 = __cil_tmp22 + 1248;
    __cil_tmp24 = *((unsigned int *)__cil_tmp23);
    __cil_tmp25 = (void *)par;
    tmp___7 = (int )request_irq(__cil_tmp24, & aty_irq, 128UL, "atyfb", __cil_tmp25);
    }
    if (tmp___7) {
      {
      __cil_tmp26 = (unsigned long )par;
      __cil_tmp27 = __cil_tmp26 + 1240;
      __cil_tmp28 = (unsigned long *)__cil_tmp27;
      __cil_tmp29 = (unsigned long volatile *)__cil_tmp28;
      clear_bit(0, __cil_tmp29);
      }
      return (-22);
    } else {
    }
    {
    __cil_tmp30 = (unsigned long )par;
    __cil_tmp31 = __cil_tmp30 + 1256;
    __cil_tmp32 = (spinlock_t *)__cil_tmp31;
    spin_lock_irq(__cil_tmp32);
    __cil_tmp33 = (struct atyfb_par *)par;
    tmp___8 = aty_ld_le32(24, __cil_tmp33);
    int_cntl = tmp___8 & 626348682U;
    __cil_tmp34 = int_cntl | 4U;
    __cil_tmp35 = (struct atyfb_par *)par;
    aty_st_le32(24, __cil_tmp34, __cil_tmp35);
    __cil_tmp36 = int_cntl | 2U;
    __cil_tmp37 = (struct atyfb_par *)par;
    aty_st_le32(24, __cil_tmp36, __cil_tmp37);
    __cil_tmp38 = (unsigned long )par;
    __cil_tmp39 = __cil_tmp38 + 1256;
    __cil_tmp40 = (spinlock_t *)__cil_tmp39;
    spin_unlock_irq(__cil_tmp40);
    }
  }
  return (0);
}
}
static int aty_disable_irq(struct atyfb_par *par )
{ u32 int_cntl ;
  u32 tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long *__cil_tmp7 ;
  unsigned long volatile *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u32 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  spinlock_t *__cil_tmp22 ;
  struct atyfb_par *__cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  spinlock_t *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  void *__cil_tmp32 ;
  {
  {
  __cil_tmp5 = (unsigned long )par;
  __cil_tmp6 = __cil_tmp5 + 1240;
  __cil_tmp7 = (unsigned long *)__cil_tmp6;
  __cil_tmp8 = (unsigned long volatile *)__cil_tmp7;
  tmp___8 = test_and_clear_bit(0, __cil_tmp8);
  }
  if (tmp___8) {
    {
    __cil_tmp9 = 1192 + 44;
    __cil_tmp10 = (unsigned long )par;
    __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
    if (*((int *)__cil_tmp11)) {
      {
      __cil_tmp12 = 1192 + 44;
      __cil_tmp13 = (unsigned long )par;
      __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
      *((int *)__cil_tmp14) = 0;
      __cil_tmp15 = 864 + 40;
      __cil_tmp16 = (unsigned long )par;
      __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
      __cil_tmp18 = *((u32 *)__cil_tmp17);
      __cil_tmp19 = (struct atyfb_par *)par;
      aty_st_le32(20, __cil_tmp18, __cil_tmp19);
      }
    } else {
    }
    }
    {
    __cil_tmp20 = (unsigned long )par;
    __cil_tmp21 = __cil_tmp20 + 1256;
    __cil_tmp22 = (spinlock_t *)__cil_tmp21;
    spin_lock_irq(__cil_tmp22);
    __cil_tmp23 = (struct atyfb_par *)par;
    tmp___7 = aty_ld_le32(24, __cil_tmp23);
    int_cntl = tmp___7 & 626348682U;
    __cil_tmp24 = int_cntl & 4294967293U;
    __cil_tmp25 = (struct atyfb_par *)par;
    aty_st_le32(24, __cil_tmp24, __cil_tmp25);
    __cil_tmp26 = (unsigned long )par;
    __cil_tmp27 = __cil_tmp26 + 1256;
    __cil_tmp28 = (spinlock_t *)__cil_tmp27;
    spin_unlock_irq(__cil_tmp28);
    __cil_tmp29 = (unsigned long )par;
    __cil_tmp30 = __cil_tmp29 + 1248;
    __cil_tmp31 = *((unsigned int *)__cil_tmp30);
    __cil_tmp32 = (void *)par;
    free_irq(__cil_tmp31, __cil_tmp32);
    }
  } else {
  }
  return (0);
}
}
static int atyfb_release(struct fb_info *info , int user )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  {
  __cil_tmp6 = (unsigned long )info;
  __cil_tmp7 = __cil_tmp6 + 1160;
  __cil_tmp8 = *((void **)__cil_tmp7);
  par = (struct atyfb_par *)__cil_tmp8;
  if (! user) {
    return (0);
  } else {
  }
  {
  __cil_tmp9 = (unsigned long )par;
  __cil_tmp10 = __cil_tmp9 + 1112;
  __cil_tmp11 = (unsigned long )par;
  __cil_tmp12 = __cil_tmp11 + 1112;
  __cil_tmp13 = *((int *)__cil_tmp12);
  *((int *)__cil_tmp10) = __cil_tmp13 - 1;
  ___udelay(4295000UL);
  wait_for_idle(par);
  }
  {
  __cil_tmp14 = (unsigned long )par;
  __cil_tmp15 = __cil_tmp14 + 1112;
  if (*((int *)__cil_tmp15)) {
    return (0);
  } else {
  }
  }
  {
  aty_disable_irq(par);
  }
  return (0);
}
}
static int atyfb_pan_display(struct fb_var_screeninfo *var , struct fb_info *info )
{ struct atyfb_par *par ;
  u32 xres ;
  u32 yres ;
  u32 xoffset ;
  u32 yoffset ;
  int tmp___7 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  u32 __cil_tmp15 ;
  u32 __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u32 __cil_tmp22 ;
  u32 __cil_tmp23 ;
  unsigned int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u32 __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  __u32 __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u32 __cil_tmp37 ;
  u32 __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  u32 __cil_tmp42 ;
  u32 __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  struct fb_info *__cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  u32 __cil_tmp62 ;
  struct atyfb_par *__cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  u32 __cil_tmp73 ;
  struct atyfb_par *__cil_tmp74 ;
  {
  __cil_tmp9 = (unsigned long )info;
  __cil_tmp10 = __cil_tmp9 + 1160;
  __cil_tmp11 = *((void **)__cil_tmp10);
  par = (struct atyfb_par *)__cil_tmp11;
  __cil_tmp12 = 864 + 20;
  __cil_tmp13 = (unsigned long )par;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = *((u32 *)__cil_tmp14);
  __cil_tmp16 = __cil_tmp15 >> 16;
  __cil_tmp17 = __cil_tmp16 & 255U;
  __cil_tmp18 = __cil_tmp17 + 1U;
  xres = __cil_tmp18 * 8U;
  __cil_tmp19 = 864 + 28;
  __cil_tmp20 = (unsigned long )par;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = *((u32 *)__cil_tmp21);
  __cil_tmp23 = __cil_tmp22 >> 16;
  __cil_tmp24 = __cil_tmp23 & 2047U;
  yres = __cil_tmp24 + 1U;
  {
  __cil_tmp25 = 864 + 44;
  __cil_tmp26 = (unsigned long )par;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  __cil_tmp28 = *((u32 *)__cil_tmp27);
  if (__cil_tmp28 & 1U) {
    yres = yres >> 1;
  } else {
  }
  }
  __cil_tmp29 = (unsigned long )var;
  __cil_tmp30 = __cil_tmp29 + 16;
  __cil_tmp31 = *((__u32 *)__cil_tmp30);
  __cil_tmp32 = __cil_tmp31 + 7U;
  xoffset = __cil_tmp32 & 4294967288U;
  __cil_tmp33 = (unsigned long )var;
  __cil_tmp34 = __cil_tmp33 + 20;
  yoffset = *((__u32 *)__cil_tmp34);
  {
  __cil_tmp35 = (unsigned long )par;
  __cil_tmp36 = __cil_tmp35 + 864;
  __cil_tmp37 = *((u32 *)__cil_tmp36);
  __cil_tmp38 = xoffset + xres;
  if (__cil_tmp38 > __cil_tmp37) {
    return (-22);
  } else {
    {
    __cil_tmp39 = 864 + 4;
    __cil_tmp40 = (unsigned long )par;
    __cil_tmp41 = __cil_tmp40 + __cil_tmp39;
    __cil_tmp42 = *((u32 *)__cil_tmp41);
    __cil_tmp43 = yoffset + yres;
    if (__cil_tmp43 > __cil_tmp42) {
      return (-22);
    } else {
    }
    }
  }
  }
  __cil_tmp44 = 160 + 16;
  __cil_tmp45 = (unsigned long )info;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  *((__u32 *)__cil_tmp46) = xoffset;
  __cil_tmp47 = 160 + 20;
  __cil_tmp48 = (unsigned long )info;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  *((__u32 *)__cil_tmp49) = yoffset;
  {
  __cil_tmp50 = (unsigned long )par;
  __cil_tmp51 = __cil_tmp50 + 1080;
  if (*((int *)__cil_tmp51)) {
    return (0);
  } else {
  }
  }
  {
  __cil_tmp52 = (struct fb_info *)info;
  set_off_pitch(par, __cil_tmp52);
  }
  {
  __cil_tmp53 = (unsigned long )var;
  __cil_tmp54 = __cil_tmp53 + 84;
  __cil_tmp55 = *((__u32 *)__cil_tmp54);
  if (__cil_tmp55 & 16U) {
    {
    tmp___7 = aty_enable_irq(par, 0);
    }
    if (tmp___7) {
      {
      __cil_tmp56 = 1192 + 44;
      __cil_tmp57 = (unsigned long )par;
      __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
      *((int *)__cil_tmp58) = 0;
      __cil_tmp59 = 864 + 40;
      __cil_tmp60 = (unsigned long )par;
      __cil_tmp61 = __cil_tmp60 + __cil_tmp59;
      __cil_tmp62 = *((u32 *)__cil_tmp61);
      __cil_tmp63 = (struct atyfb_par *)par;
      aty_st_le32(20, __cil_tmp62, __cil_tmp63);
      }
    } else {
      __cil_tmp64 = 1192 + 44;
      __cil_tmp65 = (unsigned long )par;
      __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
      *((int *)__cil_tmp66) = 1;
    }
  } else {
    {
    __cil_tmp67 = 1192 + 44;
    __cil_tmp68 = (unsigned long )par;
    __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
    *((int *)__cil_tmp69) = 0;
    __cil_tmp70 = 864 + 40;
    __cil_tmp71 = (unsigned long )par;
    __cil_tmp72 = __cil_tmp71 + __cil_tmp70;
    __cil_tmp73 = *((u32 *)__cil_tmp72);
    __cil_tmp74 = (struct atyfb_par *)par;
    aty_st_le32(20, __cil_tmp73, __cil_tmp74);
    }
  }
  }
  return (0);
}
}
static int aty_waitforvblank(struct atyfb_par *par , u32 crtc )
{ struct aty_interrupt *vbl ;
  unsigned int count ;
  int ret ;
  long __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___7 ;
  struct task_struct *tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  int __cil_tmp18 ;
  wait_queue_t *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  wait_queue_head_t *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  wait_queue_head_t *__cil_tmp31 ;
  {
  if ((int )crtc == 0) {
    goto case_0;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      __cil_tmp11 = (unsigned long )par;
      __cil_tmp12 = __cil_tmp11 + 1192;
      vbl = (struct aty_interrupt *)__cil_tmp12;
      goto switch_break;
      switch_default:
      return (-19);
    } else {
      switch_break: ;
    }
    }
  }
  {
  ret = aty_enable_irq(par, 0);
  }
  if (ret) {
    return (ret);
  } else {
  }
  __cil_tmp13 = (unsigned long )vbl;
  __cil_tmp14 = __cil_tmp13 + 40;
  count = *((unsigned int *)__cil_tmp14);
  __ret = 25L;
  {
  __cil_tmp15 = (unsigned long )vbl;
  __cil_tmp16 = __cil_tmp15 + 40;
  __cil_tmp17 = *((unsigned int *)__cil_tmp16);
  __cil_tmp18 = count != __cil_tmp17;
  if (! __cil_tmp18) {
    {
    while (1) {
      while_continue: ;
      {
      tmp___7 = get_current();
      __cil_tmp19 = & __wait;
      *((unsigned int *)__cil_tmp19) = 0U;
      __cil_tmp20 = (unsigned long )(& __wait) + 8;
      *((void **)__cil_tmp20) = (void *)tmp___7;
      __cil_tmp21 = (unsigned long )(& __wait) + 16;
      *((int (**)(wait_queue_t *wait , unsigned int mode , int flags , void *key ))__cil_tmp21) = & autoremove_wake_function;
      __cil_tmp22 = (unsigned long )(& __wait) + 24;
      __cil_tmp23 = (unsigned long )(& __wait) + 24;
      *((struct list_head **)__cil_tmp22) = (struct list_head *)__cil_tmp23;
      __cil_tmp24 = 24 + 8;
      __cil_tmp25 = (unsigned long )(& __wait) + __cil_tmp24;
      __cil_tmp26 = (unsigned long )(& __wait) + 24;
      *((struct list_head **)__cil_tmp25) = (struct list_head *)__cil_tmp26;
      }
      {
      while (1) {
        while_continue___0: ;
        {
        __cil_tmp27 = (wait_queue_head_t *)vbl;
        prepare_to_wait(__cil_tmp27, & __wait, 1);
        }
        {
        __cil_tmp28 = (unsigned long )vbl;
        __cil_tmp29 = __cil_tmp28 + 40;
        __cil_tmp30 = *((unsigned int *)__cil_tmp29);
        if (count != __cil_tmp30) {
          goto while_break___0;
        } else {
        }
        }
        {
        tmp___8 = get_current();
        tmp___9 = signal_pending(tmp___8);
        }
        if (tmp___9) {
        } else {
          {
          __ret = schedule_timeout(__ret);
          }
          if (! __ret) {
            goto while_break___0;
          } else {
          }
          goto __Cont;
        }
        __ret = -512L;
        goto while_break___0;
        __Cont: ;
      }
      while_break___0: ;
      }
      {
      __cil_tmp31 = (wait_queue_head_t *)vbl;
      finish_wait(__cil_tmp31, & __wait);
      }
      goto while_break;
    }
    while_break: ;
    }
  } else {
  }
  }
  ret = (int )__ret;
  if (ret < 0) {
    return (ret);
  } else {
  }
  if (ret == 0) {
    {
    aty_enable_irq(par, 1);
    }
    return (-110);
  } else {
  }
  return (0);
}
}
static int atyfb_ioctl(struct fb_info *info , u_int cmd , u_long arg )
{ struct atyfb_par *par ;
  u32 crtc ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int tmp___7 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  {
  __cil_tmp9 = (unsigned long )info;
  __cil_tmp10 = __cil_tmp9 + 1160;
  __cil_tmp11 = *((void **)__cil_tmp10);
  par = (struct atyfb_par *)__cil_tmp11;
  if ((int )cmd == (__cil_tmp18 | __cil_tmp12)) {
    goto case_exp;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_exp:
      {
      __cil_tmp12 = 4UL << 16;
      __cil_tmp13 = 70 << 8;
      __cil_tmp14 = (unsigned int )__cil_tmp13;
      __cil_tmp15 = 1U << 30;
      __cil_tmp16 = __cil_tmp15 | __cil_tmp14;
      __cil_tmp17 = __cil_tmp16 | 32U;
      __cil_tmp18 = (unsigned long )__cil_tmp17;
      {
      might_fault();
      }
      }
      if ((int )4UL == 1) {
        goto case_1;
      } else
      if ((int )4UL == 2) {
        goto case_2;
      } else
      if ((int )4UL == 4) {
        goto case_4;
      } else
      if ((int )4UL == 8) {
        goto case_8;
      } else {
        {
        goto switch_default;
        if (0) {
          case_1:
          __asm__ volatile ("call __get_user_"
                               "1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((__u32 *)arg));
          goto switch_break___0;
          case_2:
          __asm__ volatile ("call __get_user_"
                               "2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((__u32 *)arg));
          goto switch_break___0;
          case_4:
          __asm__ volatile ("call __get_user_"
                               "4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((__u32 *)arg));
          goto switch_break___0;
          case_8:
          __asm__ volatile ("call __get_user_"
                               "8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((__u32 *)arg));
          goto switch_break___0;
          switch_default:
          __asm__ volatile ("call __get_user_"
                               "X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((__u32 *)arg));
          goto switch_break___0;
        } else {
          switch_break___0: ;
        }
        }
      }
      crtc = (__u32 )__val_gu;
      if (__ret_gu) {
        return (-14);
      } else {
      }
      {
      tmp___7 = aty_waitforvblank(par, crtc);
      }
      return (tmp___7);
      goto switch_break;
      switch_default___0:
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  return (0);
}
}
static int atyfb_sync(struct fb_info *info )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  void *__cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  {
  __cil_tmp3 = (unsigned long )info;
  __cil_tmp4 = __cil_tmp3 + 1160;
  __cil_tmp5 = *((void **)__cil_tmp4);
  par = (struct atyfb_par *)__cil_tmp5;
  {
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 1076;
  if (*((int *)__cil_tmp7)) {
    {
    wait_for_idle(par);
    }
  } else {
  }
  }
  return (0);
}
}
static int atyfb_pci_suspend(struct pci_dev *pdev , int state_event22 )
{ struct fb_info *info ;
  void *tmp___7 ;
  struct atyfb_par *par ;
  pci_power_t tmp___8 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  struct atyfb_par *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  info = (struct fb_info *)tmp___7;
  __cil_tmp7 = (unsigned long )info;
  __cil_tmp8 = __cil_tmp7 + 1160;
  __cil_tmp9 = *((void **)__cil_tmp8);
  par = (struct atyfb_par *)__cil_tmp9;
  }
  {
  __cil_tmp10 = 144 + 192;
  __cil_tmp11 = (unsigned long )pdev;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = *((int *)__cil_tmp12);
  if (state_event22 == __cil_tmp13) {
    return (0);
  } else {
  }
  }
  {
  console_lock();
  fb_set_suspend(info, 1);
  wait_for_idle(par);
  __cil_tmp14 = (struct atyfb_par *)par;
  aty_reset_engine(__cil_tmp14);
  atyfb_blank(4, info);
  __cil_tmp15 = (unsigned long )par;
  __cil_tmp16 = __cil_tmp15 + 1080;
  *((int *)__cil_tmp16) = 1;
  __cil_tmp17 = (unsigned long )par;
  __cil_tmp18 = __cil_tmp17 + 1084;
  *((int *)__cil_tmp18) = 1;
  pci_save_state(pdev);
  tmp___8 = pci_choose_state(pdev, state_event22);
  pci_set_power_state(pdev, tmp___8);
  console_unlock();
  __cil_tmp19 = 144 + 192;
  __cil_tmp20 = (unsigned long )pdev;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  ((pm_message_t *)__cil_tmp21)->event = state_event22;
  }
  return (0);
}
}
static void aty_resume_chip(struct fb_info *info )
{ struct atyfb_par *par ;
  u32 tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  u32 __cil_tmp9 ;
  struct atyfb_par *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct aty_pll_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct aty_pll_ops *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void (* __cil_tmp21)(struct fb_info *info , union aty_pll *pll ) ;
  void (*__cil_tmp22)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  union aty_pll *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  struct atyfb_par *__cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  struct atyfb_par *__cil_tmp31 ;
  {
  {
  __cil_tmp4 = (unsigned long )info;
  __cil_tmp5 = __cil_tmp4 + 1160;
  __cil_tmp6 = *((void **)__cil_tmp5);
  par = (struct atyfb_par *)__cil_tmp6;
  __cil_tmp7 = (unsigned long )par;
  __cil_tmp8 = __cil_tmp7 + 1288;
  __cil_tmp9 = *((u32 *)__cil_tmp8);
  __cil_tmp10 = (struct atyfb_par *)par;
  aty_st_le32(176, __cil_tmp9, __cil_tmp10);
  }
  {
  __cil_tmp11 = (unsigned long )par;
  __cil_tmp12 = __cil_tmp11 + 840;
  __cil_tmp13 = *((struct aty_pll_ops **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 40;
  if (*((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp15)) {
    {
    __cil_tmp16 = (unsigned long )par;
    __cil_tmp17 = __cil_tmp16 + 840;
    __cil_tmp18 = *((struct aty_pll_ops **)__cil_tmp17);
    __cil_tmp19 = (unsigned long )__cil_tmp18;
    __cil_tmp20 = __cil_tmp19 + 40;
    __cil_tmp21 = *((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp20);
    __cil_tmp22 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp21;
    __cil_tmp23 = (struct fb_info *)info;
    __cil_tmp24 = (unsigned long )par;
    __cil_tmp25 = __cil_tmp24 + 960;
    __cil_tmp26 = (union aty_pll *)__cil_tmp25;
    (*__cil_tmp22)(__cil_tmp23, __cil_tmp26);
    }
  } else {
  }
  }
  {
  __cil_tmp27 = (unsigned long )par;
  __cil_tmp28 = __cil_tmp27 + 1176;
  if (*((unsigned long *)__cil_tmp28)) {
    {
    __cil_tmp29 = (struct atyfb_par *)par;
    tmp___7 = aty_ld_le32(160, __cil_tmp29);
    __cil_tmp30 = tmp___7 | 16U;
    __cil_tmp31 = (struct atyfb_par *)par;
    aty_st_le32(160, __cil_tmp30, __cil_tmp31);
    }
  } else {
  }
  }
  return;
}
}
static int atyfb_pci_resume(struct pci_dev *pdev )
{ struct fb_info *info ;
  void *tmp___7 ;
  struct atyfb_par *par ;
  struct pm_message __r_expr_0 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  int __r_expr_0_event20 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  info = (struct fb_info *)tmp___7;
  __cil_tmp6 = (unsigned long )info;
  __cil_tmp7 = __cil_tmp6 + 1160;
  __cil_tmp8 = *((void **)__cil_tmp7);
  par = (struct atyfb_par *)__cil_tmp8;
  }
  {
  __cil_tmp9 = 144 + 192;
  __cil_tmp10 = (unsigned long )pdev;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  __cil_tmp12 = *((int *)__cil_tmp11);
  if (__cil_tmp12 == 0) {
    return (0);
  } else {
  }
  }
  {
  console_lock();
  aty_resume_chip(info);
  __cil_tmp13 = (unsigned long )par;
  __cil_tmp14 = __cil_tmp13 + 1080;
  *((int *)__cil_tmp14) = 0;
  atyfb_set_par(info);
  fb_set_suspend(info, 0);
  __cil_tmp15 = (unsigned long )par;
  __cil_tmp16 = __cil_tmp15 + 1084;
  *((int *)__cil_tmp16) = 0;
  atyfb_blank(0, info);
  console_unlock();
  __r_expr_0_event20 = 0;
  __cil_tmp17 = 144 + 192;
  __cil_tmp18 = (unsigned long )pdev;
  __cil_tmp19 = __cil_tmp18 + __cil_tmp17;
  ((pm_message_t *)__cil_tmp19)->event = __r_expr_0_event20;
  }
  return (0);
}
}
static int aty_bl_get_level_brightness(struct atyfb_par *par , int level )
{ struct fb_info *info ;
  void *tmp___7 ;
  int atylevel ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  struct pci_dev *__cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u8 __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  {
  {
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 1104;
  __cil_tmp8 = *((struct pci_dev **)__cil_tmp7);
  tmp___7 = pci_get_drvdata(__cil_tmp8);
  info = (struct fb_info *)tmp___7;
  __cil_tmp9 = level * 1UL;
  __cil_tmp10 = 832 + __cil_tmp9;
  __cil_tmp11 = (unsigned long )info;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = *((u8 *)__cil_tmp12);
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 * 255;
  atylevel = __cil_tmp15 / 255;
  }
  if (atylevel < 0) {
    atylevel = 0;
  } else
  if (atylevel > 255) {
    atylevel = 255;
  } else {
  }
  return (atylevel);
}
}
static int aty_bl_update_status(struct backlight_device *bd )
{ struct atyfb_par *par ;
  void *tmp___7 ;
  unsigned int reg ;
  u32 tmp___8 ;
  int level ;
  int tmp___9 ;
  int tmp___10 ;
  struct atyfb_par *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  struct atyfb_par *__cil_tmp22 ;
  {
  {
  tmp___7 = bl_get_data(bd);
  par = (struct atyfb_par *)tmp___7;
  __cil_tmp9 = (struct atyfb_par *)par;
  tmp___8 = aty_ld_lcd(20, __cil_tmp9);
  reg = tmp___8;
  }
  {
  __cil_tmp10 = 0 + 8;
  __cil_tmp11 = (unsigned long )bd;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  __cil_tmp13 = *((int *)__cil_tmp12);
  if (__cil_tmp13 != 0) {
    level = 0;
  } else {
    {
    __cil_tmp14 = 0 + 12;
    __cil_tmp15 = (unsigned long )bd;
    __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
    __cil_tmp17 = *((int *)__cil_tmp16);
    if (__cil_tmp17 != 0) {
      level = 0;
    } else {
      level = *((int *)bd);
    }
    }
  }
  }
  reg = reg | 196608U;
  if (level > 0) {
    {
    reg = reg & 4294902015U;
    tmp___9 = aty_bl_get_level_brightness(par, level);
    __cil_tmp18 = tmp___9 << 8;
    __cil_tmp19 = (unsigned int )__cil_tmp18;
    reg = reg | __cil_tmp19;
    }
  } else {
    {
    reg = reg & 4294902015U;
    tmp___10 = aty_bl_get_level_brightness(par, 0);
    __cil_tmp20 = tmp___10 << 8;
    __cil_tmp21 = (unsigned int )__cil_tmp20;
    reg = reg | __cil_tmp21;
    }
  }
  {
  __cil_tmp22 = (struct atyfb_par *)par;
  aty_st_lcd(20, reg, __cil_tmp22);
  }
  return (0);
}
}
static int aty_bl_get_brightness(struct backlight_device *bd )
{
  {
  return (*((int *)bd));
}
}
static struct backlight_ops aty_bl_data = {0U, & aty_bl_update_status, & aty_bl_get_brightness, (int (*)(struct backlight_device * ,
                                                                  struct fb_info * ))0};
static void aty_bl_init(struct atyfb_par *par )
{ struct backlight_properties props ;
  struct fb_info *info ;
  void *tmp___7 ;
  struct backlight_device *bd ;
  char name[12] ;
  long tmp___8 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  struct pci_dev *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  char *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  int __cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  char *__cil_tmp22 ;
  char *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  struct device *__cil_tmp26 ;
  void *__cil_tmp27 ;
  struct backlight_properties *__cil_tmp28 ;
  void *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  void *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  u8 __cil_tmp36 ;
  u8 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  char *__cil_tmp46 ;
  {
  {
  __cil_tmp8 = (unsigned long )par;
  __cil_tmp9 = __cil_tmp8 + 1104;
  __cil_tmp10 = *((struct pci_dev **)__cil_tmp9);
  tmp___7 = pci_get_drvdata(__cil_tmp10);
  info = (struct fb_info *)tmp___7;
  __cil_tmp11 = 0 * 1UL;
  __cil_tmp12 = (unsigned long )(name) + __cil_tmp11;
  __cil_tmp13 = (char *)__cil_tmp12;
  __cil_tmp14 = (unsigned long )info;
  __cil_tmp15 = __cil_tmp14 + 4;
  __cil_tmp16 = *((int *)__cil_tmp15);
  snprintf(__cil_tmp13, 12UL, "atybl%d", __cil_tmp16);
  __cil_tmp17 = (void *)(& props);
  memset(__cil_tmp17, 0, 24UL);
  __cil_tmp18 = (unsigned long )(& props) + 16;
  *((enum backlight_type *)__cil_tmp18) = (enum backlight_type )1;
  __cil_tmp19 = (unsigned long )(& props) + 4;
  *((int *)__cil_tmp19) = 127;
  __cil_tmp20 = 0 * 1UL;
  __cil_tmp21 = (unsigned long )(name) + __cil_tmp20;
  __cil_tmp22 = (char *)__cil_tmp21;
  __cil_tmp23 = (char *)__cil_tmp22;
  __cil_tmp24 = (unsigned long )info;
  __cil_tmp25 = __cil_tmp24 + 1096;
  __cil_tmp26 = *((struct device **)__cil_tmp25);
  __cil_tmp27 = (void *)par;
  __cil_tmp28 = (struct backlight_properties *)(& props);
  bd = backlight_device_register(__cil_tmp23, __cil_tmp26, __cil_tmp27, & aty_bl_data,
                                 __cil_tmp28);
  __cil_tmp29 = (void *)bd;
  tmp___8 = (long )IS_ERR(__cil_tmp29);
  }
  if (tmp___8) {
    {
    __cil_tmp30 = (unsigned long )info;
    __cil_tmp31 = __cil_tmp30 + 752;
    __cil_tmp32 = (void *)0;
    *((struct backlight_device **)__cil_tmp31) = (struct backlight_device *)__cil_tmp32;
    printk("<4>aty: Backlight registration failed\n");
    }
    goto error;
  } else {
  }
  {
  __cil_tmp33 = (unsigned long )info;
  __cil_tmp34 = __cil_tmp33 + 752;
  *((struct backlight_device **)__cil_tmp34) = bd;
  __cil_tmp35 = (u8 )0;
  __cil_tmp36 = (u8 )63;
  __cil_tmp37 = (u8 )255;
  fb_bl_default_curve(info, __cil_tmp35, __cil_tmp36, __cil_tmp37);
  __cil_tmp38 = 0 + 4;
  __cil_tmp39 = (unsigned long )bd;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  *((int *)bd) = *((int *)__cil_tmp40);
  __cil_tmp41 = 0 + 8;
  __cil_tmp42 = (unsigned long )bd;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  *((int *)__cil_tmp43) = 0;
  backlight_update_status(bd);
  __cil_tmp44 = 0 * 1UL;
  __cil_tmp45 = (unsigned long )(name) + __cil_tmp44;
  __cil_tmp46 = (char *)__cil_tmp45;
  printk("aty: Backlight initialized (%s)\n", __cil_tmp46);
  }
  return;
  error:
  return;
}
}
static void aty_bl_exit(struct backlight_device *bd )
{
  {
  {
  backlight_device_unregister(bd);
  printk("aty: Backlight unloaded\n");
  }
  return;
}
}
static void aty_calc_mem_refresh(struct atyfb_par *par , int xclk___0 ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static void aty_calc_mem_refresh(struct atyfb_par *par , int xclk___0 )
{ int ragepro_tbl[7] ;
  int ragexl_tbl[15] ;
  int *refresh_tbl ;
  int i ;
  int size ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u32 __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  int *__cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  int *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  int *__cil_tmp65 ;
  int __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  {
  __cil_tmp8 = 0 * 4UL;
  __cil_tmp9 = (unsigned long )(ragepro_tbl) + __cil_tmp8;
  *((int *)__cil_tmp9) = 44;
  __cil_tmp10 = 1 * 4UL;
  __cil_tmp11 = (unsigned long )(ragepro_tbl) + __cil_tmp10;
  *((int *)__cil_tmp11) = 50;
  __cil_tmp12 = 2 * 4UL;
  __cil_tmp13 = (unsigned long )(ragepro_tbl) + __cil_tmp12;
  *((int *)__cil_tmp13) = 55;
  __cil_tmp14 = 3 * 4UL;
  __cil_tmp15 = (unsigned long )(ragepro_tbl) + __cil_tmp14;
  *((int *)__cil_tmp15) = 66;
  __cil_tmp16 = 4 * 4UL;
  __cil_tmp17 = (unsigned long )(ragepro_tbl) + __cil_tmp16;
  *((int *)__cil_tmp17) = 75;
  __cil_tmp18 = 5 * 4UL;
  __cil_tmp19 = (unsigned long )(ragepro_tbl) + __cil_tmp18;
  *((int *)__cil_tmp19) = 80;
  __cil_tmp20 = 6 * 4UL;
  __cil_tmp21 = (unsigned long )(ragepro_tbl) + __cil_tmp20;
  *((int *)__cil_tmp21) = 100;
  __cil_tmp22 = 0 * 4UL;
  __cil_tmp23 = (unsigned long )(ragexl_tbl) + __cil_tmp22;
  *((int *)__cil_tmp23) = 50;
  __cil_tmp24 = 1 * 4UL;
  __cil_tmp25 = (unsigned long )(ragexl_tbl) + __cil_tmp24;
  *((int *)__cil_tmp25) = 66;
  __cil_tmp26 = 2 * 4UL;
  __cil_tmp27 = (unsigned long )(ragexl_tbl) + __cil_tmp26;
  *((int *)__cil_tmp27) = 75;
  __cil_tmp28 = 3 * 4UL;
  __cil_tmp29 = (unsigned long )(ragexl_tbl) + __cil_tmp28;
  *((int *)__cil_tmp29) = 83;
  __cil_tmp30 = 4 * 4UL;
  __cil_tmp31 = (unsigned long )(ragexl_tbl) + __cil_tmp30;
  *((int *)__cil_tmp31) = 90;
  __cil_tmp32 = 5 * 4UL;
  __cil_tmp33 = (unsigned long )(ragexl_tbl) + __cil_tmp32;
  *((int *)__cil_tmp33) = 95;
  __cil_tmp34 = 6 * 4UL;
  __cil_tmp35 = (unsigned long )(ragexl_tbl) + __cil_tmp34;
  *((int *)__cil_tmp35) = 100;
  __cil_tmp36 = 7 * 4UL;
  __cil_tmp37 = (unsigned long )(ragexl_tbl) + __cil_tmp36;
  *((int *)__cil_tmp37) = 105;
  __cil_tmp38 = 8 * 4UL;
  __cil_tmp39 = (unsigned long )(ragexl_tbl) + __cil_tmp38;
  *((int *)__cil_tmp39) = 110;
  __cil_tmp40 = 9 * 4UL;
  __cil_tmp41 = (unsigned long )(ragexl_tbl) + __cil_tmp40;
  *((int *)__cil_tmp41) = 115;
  __cil_tmp42 = 10 * 4UL;
  __cil_tmp43 = (unsigned long )(ragexl_tbl) + __cil_tmp42;
  *((int *)__cil_tmp43) = 120;
  __cil_tmp44 = 11 * 4UL;
  __cil_tmp45 = (unsigned long )(ragexl_tbl) + __cil_tmp44;
  *((int *)__cil_tmp45) = 125;
  __cil_tmp46 = 12 * 4UL;
  __cil_tmp47 = (unsigned long )(ragexl_tbl) + __cil_tmp46;
  *((int *)__cil_tmp47) = 133;
  __cil_tmp48 = 13 * 4UL;
  __cil_tmp49 = (unsigned long )(ragexl_tbl) + __cil_tmp48;
  *((int *)__cil_tmp49) = 143;
  __cil_tmp50 = 14 * 4UL;
  __cil_tmp51 = (unsigned long )(ragexl_tbl) + __cil_tmp50;
  *((int *)__cil_tmp51) = 166;
  {
  __cil_tmp52 = (unsigned long )par;
  __cil_tmp53 = __cil_tmp52 + 1044;
  __cil_tmp54 = *((u32 *)__cil_tmp53);
  if (__cil_tmp54 & 4194304U) {
    __cil_tmp55 = 0 * 4UL;
    __cil_tmp56 = (unsigned long )(ragexl_tbl) + __cil_tmp55;
    __cil_tmp57 = (int *)__cil_tmp56;
    refresh_tbl = (int *)__cil_tmp57;
    __cil_tmp58 = 60UL / 4UL;
    __cil_tmp59 = __cil_tmp58 + 0UL;
    size = (int )__cil_tmp59;
  } else {
    __cil_tmp60 = 0 * 4UL;
    __cil_tmp61 = (unsigned long )(ragepro_tbl) + __cil_tmp60;
    __cil_tmp62 = (int *)__cil_tmp61;
    refresh_tbl = (int *)__cil_tmp62;
    __cil_tmp63 = 28UL / 4UL;
    __cil_tmp64 = __cil_tmp63 + 0UL;
    size = (int )__cil_tmp64;
  }
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < size) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp65 = refresh_tbl + i;
    __cil_tmp66 = *__cil_tmp65;
    __cil_tmp67 = (int )__cil_tmp66;
    if (xclk___0 < __cil_tmp67) {
      goto while_break;
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  __cil_tmp68 = (unsigned long )par;
  __cil_tmp69 = __cil_tmp68 + 1066;
  *((u8 *)__cil_tmp69) = (u8 )i;
  return;
}
}
static struct fb_info *fb_list = (struct fb_info *)((void *)0);
static struct lock_class_key __key___4 ;
static struct lock_class_key __key___5 ;
static int aty_init(struct fb_info *info ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int aty_init(struct fb_info *info )
{ struct atyfb_par *par ;
  char *ramname ;
  char *xtal ;
  int gtb_memsize ;
  int has_var ;
  struct fb_var_screeninfo var ;
  int ret ;
  u32 stat0 ;
  u8 dac_type ;
  u8 dac_subtype ;
  u8 clk_type ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u8 pll_ref_div ;
  u8 tmp___9 ;
  int diff1 ;
  int diff2 ;
  u32 tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  __u32 tmp___17 ;
  u32 tmp___18 ;
  int tmp___19 ;
  u32 videoram ;
  char *tmp___20 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  void *__cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  wait_queue_head_t *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  spinlock_t *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct raw_spinlock *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  u32 __cil_tmp46 ;
  unsigned int __cil_tmp47 ;
  struct atyfb_par *__cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u32 __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  u8 __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  char *__cil_tmp61 ;
  struct atyfb_par *__cil_tmp62 ;
  u32 __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  u32 __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  struct atyfb_par *__cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned int __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  u32 __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  u8 __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  char *__cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  u8 __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  char *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  int __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  u8 __cil_tmp107 ;
  int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  u32 __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  u8 __cil_tmp117 ;
  int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  int __cil_tmp125 ;
  int __cil_tmp126 ;
  int *__cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  int *__cil_tmp130 ;
  int *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  int *__cil_tmp135 ;
  int *__cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  int *__cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  int __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  int __cil_tmp149 ;
  int __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  int __cil_tmp156 ;
  int __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  int __cil_tmp163 ;
  int __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  u32 __cil_tmp169 ;
  struct atyfb_par *__cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  int __cil_tmp173 ;
  int __cil_tmp174 ;
  int __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  int __cil_tmp178 ;
  int __cil_tmp179 ;
  int __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  struct atyfb_par *__cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  struct crtc *__cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  struct aty_pll_ops *__cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  struct aty_pll_ops *__cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  void (* __cil_tmp197)(struct fb_info *info , union aty_pll *pll ) ;
  void (*__cil_tmp198)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  union aty_pll *__cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  struct atyfb_par *__cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  u32 __cil_tmp208 ;
  unsigned int __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  u32 __cil_tmp212 ;
  unsigned int __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  u32 __cil_tmp237 ;
  unsigned int __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  unsigned long __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  unsigned long __cil_tmp247 ;
  unsigned long __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  unsigned long __cil_tmp250 ;
  unsigned long __cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  unsigned long __cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  unsigned long __cil_tmp257 ;
  unsigned long __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  u32 __cil_tmp262 ;
  struct atyfb_par *__cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  unsigned long __cil_tmp265 ;
  unsigned long __cil_tmp266 ;
  unsigned long __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  __u32 __cil_tmp270 ;
  int *__cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  unsigned long __cil_tmp274 ;
  int *__cil_tmp275 ;
  int __cil_tmp276 ;
  int __cil_tmp277 ;
  unsigned long __cil_tmp278 ;
  unsigned long __cil_tmp279 ;
  int __cil_tmp280 ;
  unsigned int __cil_tmp281 ;
  unsigned long __cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  u32 __cil_tmp284 ;
  unsigned long __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned long __cil_tmp287 ;
  __u32 __cil_tmp288 ;
  unsigned long __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  unsigned long __cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  unsigned long __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  __u32 __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  unsigned long __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  u32 __cil_tmp301 ;
  unsigned long __cil_tmp302 ;
  unsigned long __cil_tmp303 ;
  unsigned long __cil_tmp304 ;
  __u32 __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  unsigned long __cil_tmp307 ;
  unsigned int __cil_tmp308 ;
  unsigned long __cil_tmp309 ;
  unsigned long __cil_tmp310 ;
  u32 __cil_tmp311 ;
  unsigned long __cil_tmp312 ;
  unsigned long __cil_tmp313 ;
  unsigned long __cil_tmp314 ;
  __u32 __cil_tmp315 ;
  unsigned long __cil_tmp316 ;
  unsigned long __cil_tmp317 ;
  unsigned int __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  unsigned long __cil_tmp320 ;
  u32 __cil_tmp321 ;
  unsigned long __cil_tmp322 ;
  unsigned long __cil_tmp323 ;
  unsigned long __cil_tmp324 ;
  __u32 __cil_tmp325 ;
  unsigned long __cil_tmp326 ;
  unsigned long __cil_tmp327 ;
  unsigned int __cil_tmp328 ;
  unsigned long __cil_tmp329 ;
  unsigned long __cil_tmp330 ;
  u32 __cil_tmp331 ;
  unsigned long __cil_tmp332 ;
  unsigned long __cil_tmp333 ;
  unsigned int __cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  unsigned long __cil_tmp336 ;
  u32 __cil_tmp337 ;
  unsigned long __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  u32 __cil_tmp340 ;
  struct atyfb_par *__cil_tmp341 ;
  unsigned long __cil_tmp342 ;
  unsigned long __cil_tmp343 ;
  u32 __cil_tmp344 ;
  unsigned long __cil_tmp345 ;
  unsigned long __cil_tmp346 ;
  unsigned long __cil_tmp347 ;
  unsigned long __cil_tmp348 ;
  unsigned long __cil_tmp349 ;
  unsigned long __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  unsigned long __cil_tmp352 ;
  u32 __cil_tmp353 ;
  unsigned long __cil_tmp354 ;
  unsigned long __cil_tmp355 ;
  unsigned long __cil_tmp356 ;
  unsigned long __cil_tmp357 ;
  unsigned long __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  unsigned long __cil_tmp360 ;
  unsigned long __cil_tmp361 ;
  u32 __cil_tmp362 ;
  unsigned long __cil_tmp363 ;
  unsigned long __cil_tmp364 ;
  unsigned long __cil_tmp365 ;
  unsigned long __cil_tmp366 ;
  unsigned long __cil_tmp367 ;
  unsigned long __cil_tmp368 ;
  unsigned long __cil_tmp369 ;
  unsigned long __cil_tmp370 ;
  unsigned long __cil_tmp371 ;
  unsigned long __cil_tmp372 ;
  unsigned long __cil_tmp373 ;
  unsigned long __cil_tmp374 ;
  unsigned long __cil_tmp375 ;
  unsigned long __cil_tmp376 ;
  unsigned long __cil_tmp377 ;
  unsigned long __cil_tmp378 ;
  unsigned long __cil_tmp379 ;
  unsigned long __cil_tmp380 ;
  unsigned long __cil_tmp381 ;
  unsigned long __cil_tmp382 ;
  unsigned long __cil_tmp383 ;
  unsigned long __cil_tmp384 ;
  unsigned long __cil_tmp385 ;
  unsigned long __cil_tmp386 ;
  unsigned long __cil_tmp387 ;
  unsigned long __cil_tmp388 ;
  unsigned long __cil_tmp389 ;
  unsigned long __cil_tmp390 ;
  unsigned long __cil_tmp391 ;
  __u32 __cil_tmp392 ;
  unsigned long __cil_tmp393 ;
  unsigned long __cil_tmp394 ;
  unsigned long __cil_tmp395 ;
  __u32 __cil_tmp396 ;
  unsigned long __cil_tmp397 ;
  unsigned long __cil_tmp398 ;
  unsigned long __cil_tmp399 ;
  __u32 __cil_tmp400 ;
  unsigned long __cil_tmp401 ;
  unsigned long __cil_tmp402 ;
  int __cil_tmp403 ;
  unsigned long __cil_tmp404 ;
  unsigned long __cil_tmp405 ;
  unsigned long __cil_tmp406 ;
  int __cil_tmp407 ;
  unsigned long __cil_tmp408 ;
  unsigned long __cil_tmp409 ;
  unsigned long __cil_tmp410 ;
  int __cil_tmp411 ;
  unsigned long __cil_tmp412 ;
  unsigned long __cil_tmp413 ;
  struct aty_pll_ops *__cil_tmp414 ;
  unsigned long __cil_tmp415 ;
  unsigned long __cil_tmp416 ;
  unsigned long __cil_tmp417 ;
  unsigned long __cil_tmp418 ;
  struct aty_pll_ops *__cil_tmp419 ;
  unsigned long __cil_tmp420 ;
  unsigned long __cil_tmp421 ;
  int (* __cil_tmp422)(struct fb_info *info , union aty_pll *pll ) ;
  int (*__cil_tmp423)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp424 ;
  unsigned long __cil_tmp425 ;
  unsigned long __cil_tmp426 ;
  union aty_pll *__cil_tmp427 ;
  unsigned long __cil_tmp428 ;
  unsigned long __cil_tmp429 ;
  struct aty_pll_ops *__cil_tmp430 ;
  unsigned long __cil_tmp431 ;
  unsigned long __cil_tmp432 ;
  unsigned long __cil_tmp433 ;
  unsigned long __cil_tmp434 ;
  struct aty_pll_ops *__cil_tmp435 ;
  unsigned long __cil_tmp436 ;
  unsigned long __cil_tmp437 ;
  void (* __cil_tmp438)(struct fb_info *info , union aty_pll *pll ) ;
  void (*__cil_tmp439)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp440 ;
  unsigned long __cil_tmp441 ;
  unsigned long __cil_tmp442 ;
  union aty_pll *__cil_tmp443 ;
  unsigned long __cil_tmp444 ;
  unsigned long __cil_tmp445 ;
  unsigned long __cil_tmp446 ;
  unsigned long __cil_tmp447 ;
  unsigned long __cil_tmp448 ;
  unsigned long __cil_tmp449 ;
  __u32 __cil_tmp450 ;
  unsigned long __cil_tmp451 ;
  unsigned long __cil_tmp452 ;
  unsigned long __cil_tmp453 ;
  unsigned long __cil_tmp454 ;
  unsigned long __cil_tmp455 ;
  unsigned long __cil_tmp456 ;
  unsigned long __cil_tmp457 ;
  __u32 __cil_tmp458 ;
  unsigned long __cil_tmp459 ;
  unsigned long __cil_tmp460 ;
  unsigned long __cil_tmp461 ;
  unsigned long __cil_tmp462 ;
  u8 __cil_tmp463 ;
  int __cil_tmp464 ;
  unsigned long __cil_tmp465 ;
  unsigned long __cil_tmp466 ;
  unsigned long __cil_tmp467 ;
  __u32 __cil_tmp468 ;
  unsigned long __cil_tmp469 ;
  unsigned long __cil_tmp470 ;
  unsigned long __cil_tmp471 ;
  unsigned long __cil_tmp472 ;
  unsigned long __cil_tmp473 ;
  unsigned long __cil_tmp474 ;
  unsigned long __cil_tmp475 ;
  __u32 __cil_tmp476 ;
  unsigned long __cil_tmp477 ;
  unsigned long __cil_tmp478 ;
  unsigned long __cil_tmp479 ;
  unsigned long __cil_tmp480 ;
  struct atyfb_par *__cil_tmp481 ;
  unsigned int __cil_tmp482 ;
  struct atyfb_par *__cil_tmp483 ;
  unsigned long __cil_tmp484 ;
  unsigned long __cil_tmp485 ;
  unsigned long __cil_tmp486 ;
  unsigned long __cil_tmp487 ;
  bool *__cil_tmp488 ;
  bool __cil_tmp489 ;
  unsigned long __cil_tmp490 ;
  unsigned long __cil_tmp491 ;
  unsigned long __cil_tmp492 ;
  unsigned long __cil_tmp493 ;
  unsigned long __cil_tmp494 ;
  unsigned long __cil_tmp495 ;
  unsigned long __cil_tmp496 ;
  unsigned long __cil_tmp497 ;
  bool __cil_tmp498 ;
  unsigned long __cil_tmp499 ;
  unsigned long __cil_tmp500 ;
  int __cil_tmp501 ;
  unsigned long __cil_tmp502 ;
  unsigned long __cil_tmp503 ;
  unsigned long __cil_tmp504 ;
  unsigned long __cil_tmp505 ;
  unsigned long __cil_tmp506 ;
  unsigned long __cil_tmp507 ;
  unsigned long __cil_tmp508 ;
  unsigned long __cil_tmp509 ;
  unsigned long __cil_tmp510 ;
  unsigned long __cil_tmp511 ;
  unsigned long __cil_tmp512 ;
  unsigned long __cil_tmp513 ;
  bool __cil_tmp514 ;
  unsigned long __cil_tmp515 ;
  unsigned long __cil_tmp516 ;
  int __cil_tmp517 ;
  unsigned long __cil_tmp518 ;
  unsigned long __cil_tmp519 ;
  int __cil_tmp520 ;
  unsigned long __cil_tmp521 ;
  unsigned long __cil_tmp522 ;
  unsigned long __cil_tmp523 ;
  unsigned long __cil_tmp524 ;
  unsigned long __cil_tmp525 ;
  unsigned long __cil_tmp526 ;
  unsigned long __cil_tmp527 ;
  unsigned long __cil_tmp528 ;
  unsigned long __cil_tmp529 ;
  unsigned long __cil_tmp530 ;
  u32 *__cil_tmp531 ;
  unsigned long __cil_tmp532 ;
  unsigned long __cil_tmp533 ;
  unsigned long __cil_tmp534 ;
  unsigned long __cil_tmp535 ;
  u32 __cil_tmp536 ;
  void *__cil_tmp537 ;
  char **__cil_tmp538 ;
  char **__cil_tmp539 ;
  char *__cil_tmp540 ;
  char *__cil_tmp541 ;
  void *__cil_tmp542 ;
  struct fb_videomode *__cil_tmp543 ;
  struct fb_videomode *__cil_tmp544 ;
  struct fb_var_screeninfo *__cil_tmp545 ;
  bool *__cil_tmp546 ;
  unsigned long __cil_tmp547 ;
  unsigned long __cil_tmp548 ;
  __u32 __cil_tmp549 ;
  unsigned long __cil_tmp550 ;
  unsigned long __cil_tmp551 ;
  __u32 __cil_tmp552 ;
  int *__cil_tmp553 ;
  int __cil_tmp554 ;
  int *__cil_tmp555 ;
  int __cil_tmp556 ;
  unsigned long __cil_tmp557 ;
  unsigned long __cil_tmp558 ;
  __u32 __cil_tmp559 ;
  unsigned long __cil_tmp560 ;
  unsigned long __cil_tmp561 ;
  __u32 __cil_tmp562 ;
  unsigned long __cil_tmp563 ;
  __u32 __cil_tmp564 ;
  unsigned long __cil_tmp565 ;
  __u32 __cil_tmp566 ;
  unsigned long __cil_tmp567 ;
  unsigned long __cil_tmp568 ;
  unsigned long __cil_tmp569 ;
  unsigned long __cil_tmp570 ;
  unsigned long __cil_tmp571 ;
  __u32 __cil_tmp572 ;
  unsigned long __cil_tmp573 ;
  unsigned long __cil_tmp574 ;
  unsigned long __cil_tmp575 ;
  unsigned long __cil_tmp576 ;
  __u32 __cil_tmp577 ;
  unsigned long __cil_tmp578 ;
  __u32 __cil_tmp579 ;
  u32 __cil_tmp580 ;
  u32 __cil_tmp581 ;
  unsigned long __cil_tmp582 ;
  __u32 __cil_tmp583 ;
  unsigned long __cil_tmp584 ;
  __u32 __cil_tmp585 ;
  unsigned long __cil_tmp586 ;
  unsigned long __cil_tmp587 ;
  bool *__cil_tmp588 ;
  bool __cil_tmp589 ;
  unsigned long __cil_tmp590 ;
  unsigned long __cil_tmp591 ;
  u32 __cil_tmp592 ;
  unsigned long __cil_tmp593 ;
  unsigned long __cil_tmp594 ;
  struct fb_var_screeninfo *__cil_tmp595 ;
  unsigned long __cil_tmp596 ;
  unsigned long __cil_tmp597 ;
  struct fb_cmap *__cil_tmp598 ;
  unsigned long __cil_tmp599 ;
  unsigned long __cil_tmp600 ;
  struct fb_cmap *__cil_tmp601 ;
  unsigned long __cil_tmp602 ;
  unsigned long __cil_tmp603 ;
  u8 __cil_tmp604 ;
  int __cil_tmp605 ;
  unsigned long __cil_tmp606 ;
  unsigned long __cil_tmp607 ;
  int __cil_tmp608 ;
  unsigned long __cil_tmp609 ;
  unsigned long __cil_tmp610 ;
  unsigned long __cil_tmp611 ;
  unsigned long __cil_tmp612 ;
  unsigned long __cil_tmp613 ;
  char *__cil_tmp614 ;
  struct atyfb_par *__cil_tmp615 ;
  unsigned long __cil_tmp616 ;
  unsigned long __cil_tmp617 ;
  struct crtc *__cil_tmp618 ;
  struct crtc *__cil_tmp619 ;
  unsigned long __cil_tmp620 ;
  unsigned long __cil_tmp621 ;
  struct aty_pll_ops *__cil_tmp622 ;
  unsigned long __cil_tmp623 ;
  unsigned long __cil_tmp624 ;
  void (* __cil_tmp625)(struct fb_info *info , union aty_pll const *pll ) ;
  void (*__cil_tmp626)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp627 ;
  unsigned long __cil_tmp628 ;
  unsigned long __cil_tmp629 ;
  union aty_pll *__cil_tmp630 ;
  union aty_pll *__cil_tmp631 ;
  unsigned long __cil_tmp632 ;
  unsigned long __cil_tmp633 ;
  int __cil_tmp634 ;
  unsigned long __cil_tmp635 ;
  unsigned long __cil_tmp636 ;
  int __cil_tmp637 ;
  unsigned long __cil_tmp638 ;
  unsigned long __cil_tmp639 ;
  unsigned long __cil_tmp640 ;
  unsigned long __cil_tmp641 ;
  int __cil_tmp642 ;
  unsigned long __cil_tmp643 ;
  unsigned long __cil_tmp644 ;
  int __cil_tmp645 ;
  unsigned long __cil_tmp646 ;
  unsigned long __cil_tmp647 ;
  {
  __cil_tmp31 = (unsigned long )info;
  __cil_tmp32 = __cil_tmp31 + 1160;
  __cil_tmp33 = *((void **)__cil_tmp32);
  par = (struct atyfb_par *)__cil_tmp33;
  __cil_tmp34 = (void *)0;
  ramname = (char *)__cil_tmp34;
  has_var = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp35 = (unsigned long )par;
    __cil_tmp36 = __cil_tmp35 + 1192;
    __cil_tmp37 = (wait_queue_head_t *)__cil_tmp36;
    __init_waitqueue_head(__cil_tmp37, "&par->vblank.wait", & __key___4);
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp38 = (unsigned long )par;
    __cil_tmp39 = __cil_tmp38 + 1256;
    __cil_tmp40 = (spinlock_t *)__cil_tmp39;
    spinlock_check(__cil_tmp40);
    }
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp41 = (unsigned long )par;
      __cil_tmp42 = __cil_tmp41 + 1256;
      __cil_tmp43 = (struct raw_spinlock *)__cil_tmp42;
      __raw_spin_lock_init(__cil_tmp43, "&(&par->int_lock)->rlock", & __key___5);
      }
      goto while_break___1;
    }
    while_break___1: ;
    }
    goto while_break___0;
  }
  while_break___0: ;
  }
  {
  __cil_tmp44 = (unsigned long )par;
  __cil_tmp45 = __cil_tmp44 + 1044;
  __cil_tmp46 = *((u32 *)__cil_tmp45);
  __cil_tmp47 = __cil_tmp46 & 64U;
  if (! __cil_tmp47) {
    {
    __cil_tmp48 = (struct atyfb_par *)par;
    stat0 = aty_ld_le32(228, __cil_tmp48);
    __cil_tmp49 = (unsigned long )par;
    __cil_tmp50 = __cil_tmp49 + 1064;
    __cil_tmp51 = stat0 & 7U;
    *((u8 *)__cil_tmp50) = (u8 )__cil_tmp51;
    __cil_tmp52 = (unsigned long )par;
    __cil_tmp53 = __cil_tmp52 + 1065;
    __cil_tmp54 = stat0 >> 3;
    __cil_tmp55 = __cil_tmp54 & 7U;
    *((u8 *)__cil_tmp53) = (u8 )__cil_tmp55;
    __cil_tmp56 = (unsigned long )par;
    __cil_tmp57 = __cil_tmp56 + 1065;
    __cil_tmp58 = *((u8 *)__cil_tmp57);
    __cil_tmp59 = __cil_tmp58 * 8UL;
    __cil_tmp60 = (unsigned long )(aty_gx_ram) + __cil_tmp59;
    __cil_tmp61 = *((char **)__cil_tmp60);
    ramname = (char *)__cil_tmp61;
    __cil_tmp62 = (struct atyfb_par *)par;
    tmp___7 = aty_ld_le32(196, __cil_tmp62);
    __cil_tmp63 = tmp___7 >> 16;
    __cil_tmp64 = __cil_tmp63 & 7U;
    dac_type = (u8 )__cil_tmp64;
    dac_type = (u8 )1;
    dac_subtype = (u8 )1;
    clk_type = (u8 )6;
    }
    if ((int )dac_subtype == 1) {
      goto case_1;
    } else {
      {
      goto switch_default;
      if (0) {
        case_1:
        __cil_tmp65 = (unsigned long )par;
        __cil_tmp66 = __cil_tmp65 + 832;
        *((struct aty_dac_ops **)__cil_tmp66) = & aty_dac_ibm514;
        goto switch_break;
        switch_default:
        {
        printk("<6>atyfb: aty_init: DAC type not implemented yet!\n");
        __cil_tmp67 = (unsigned long )par;
        __cil_tmp68 = __cil_tmp67 + 832;
        *((struct aty_dac_ops **)__cil_tmp68) = & aty_dac_unsupported;
        }
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
    if ((int )clk_type == 6) {
      goto case_6;
    } else {
      {
      goto switch_default___0;
      if (0) {
        case_6:
        __cil_tmp69 = (unsigned long )par;
        __cil_tmp70 = __cil_tmp69 + 840;
        *((struct aty_pll_ops **)__cil_tmp70) = & aty_pll_ibm514;
        goto switch_break___0;
        switch_default___0:
        {
        printk("<6>atyfb: aty_init: CLK type not implemented yet!");
        __cil_tmp71 = (unsigned long )par;
        __cil_tmp72 = __cil_tmp71 + 840;
        *((struct aty_pll_ops **)__cil_tmp72) = & aty_pll_unsupported;
        }
        goto switch_break___0;
      } else {
        switch_break___0: ;
      }
      }
    }
  } else {
  }
  }
  {
  __cil_tmp73 = (unsigned long )par;
  __cil_tmp74 = __cil_tmp73 + 1044;
  __cil_tmp75 = *((u32 *)__cil_tmp74);
  if (__cil_tmp75 & 64U) {
    {
    __cil_tmp76 = (unsigned long )par;
    __cil_tmp77 = __cil_tmp76 + 832;
    *((struct aty_dac_ops **)__cil_tmp77) = & aty_dac_ct;
    __cil_tmp78 = (unsigned long )par;
    __cil_tmp79 = __cil_tmp78 + 840;
    *((struct aty_pll_ops **)__cil_tmp79) = & aty_pll_ct;
    __cil_tmp80 = (unsigned long )par;
    __cil_tmp81 = __cil_tmp80 + 1064;
    *((u8 *)__cil_tmp81) = (u8 )7;
    __cil_tmp82 = (struct atyfb_par *)par;
    tmp___8 = aty_ld_le32(228, __cil_tmp82);
    __cil_tmp83 = (unsigned long )par;
    __cil_tmp84 = __cil_tmp83 + 1065;
    __cil_tmp85 = tmp___8 & 7U;
    *((u8 *)__cil_tmp84) = (u8 )__cil_tmp85;
    }
    {
    __cil_tmp86 = (unsigned long )par;
    __cil_tmp87 = __cil_tmp86 + 1044;
    __cil_tmp88 = *((u32 *)__cil_tmp87);
    if (__cil_tmp88 & 4194304U) {
      __cil_tmp89 = (unsigned long )par;
      __cil_tmp90 = __cil_tmp89 + 1065;
      __cil_tmp91 = *((u8 *)__cil_tmp90);
      __cil_tmp92 = __cil_tmp91 * 8UL;
      __cil_tmp93 = (unsigned long )(aty_xl_ram) + __cil_tmp92;
      __cil_tmp94 = *((char **)__cil_tmp93);
      ramname = (char *)__cil_tmp94;
    } else {
      __cil_tmp95 = (unsigned long )par;
      __cil_tmp96 = __cil_tmp95 + 1065;
      __cil_tmp97 = *((u8 *)__cil_tmp96);
      __cil_tmp98 = __cil_tmp97 * 8UL;
      __cil_tmp99 = (unsigned long )(aty_ct_ram) + __cil_tmp98;
      __cil_tmp100 = *((char **)__cil_tmp99);
      ramname = (char *)__cil_tmp100;
    }
    }
    {
    __cil_tmp101 = 1008 + 12;
    __cil_tmp102 = (unsigned long )par;
    __cil_tmp103 = __cil_tmp102 + __cil_tmp101;
    __cil_tmp104 = *((int *)__cil_tmp103);
    if (__cil_tmp104 == 67) {
      {
      __cil_tmp105 = (unsigned long )par;
      __cil_tmp106 = __cil_tmp105 + 1065;
      __cil_tmp107 = *((u8 *)__cil_tmp106);
      __cil_tmp108 = (int )__cil_tmp107;
      if (__cil_tmp108 < 4) {
        __cil_tmp109 = 1008 + 12;
        __cil_tmp110 = (unsigned long )par;
        __cil_tmp111 = __cil_tmp110 + __cil_tmp109;
        *((int *)__cil_tmp111) = 63;
      } else {
      }
      }
    } else {
    }
    }
    {
    __cil_tmp112 = (unsigned long )par;
    __cil_tmp113 = __cil_tmp112 + 1044;
    __cil_tmp114 = *((u32 *)__cil_tmp113);
    if (__cil_tmp114 & 512U) {
      {
      __cil_tmp115 = (unsigned long )par;
      __cil_tmp116 = __cil_tmp115 + 1065;
      __cil_tmp117 = *((u8 *)__cil_tmp116);
      __cil_tmp118 = (int )__cil_tmp117;
      if (__cil_tmp118 == 6) {
        __cil_tmp119 = 1008 + 20;
        __cil_tmp120 = (unsigned long )par;
        __cil_tmp121 = __cil_tmp120 + __cil_tmp119;
        __cil_tmp122 = 1008 + 20;
        __cil_tmp123 = (unsigned long )par;
        __cil_tmp124 = __cil_tmp123 + __cil_tmp122;
        __cil_tmp125 = *((int *)__cil_tmp124);
        __cil_tmp126 = __cil_tmp125 + 1;
        *((int *)__cil_tmp121) = __cil_tmp126 >> 1;
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp127 = & pll;
  if (*__cil_tmp127) {
    __cil_tmp128 = (unsigned long )par;
    __cil_tmp129 = __cil_tmp128 + 1008;
    __cil_tmp130 = & pll;
    *((int *)__cil_tmp129) = *__cil_tmp130;
  } else {
  }
  }
  {
  __cil_tmp131 = & mclk;
  if (*__cil_tmp131) {
    __cil_tmp132 = 1008 + 12;
    __cil_tmp133 = (unsigned long )par;
    __cil_tmp134 = __cil_tmp133 + __cil_tmp132;
    __cil_tmp135 = & mclk;
    *((int *)__cil_tmp134) = *__cil_tmp135;
  } else {
  }
  }
  {
  __cil_tmp136 = & xclk;
  if (*__cil_tmp136) {
    __cil_tmp137 = 1008 + 20;
    __cil_tmp138 = (unsigned long )par;
    __cil_tmp139 = __cil_tmp138 + __cil_tmp137;
    __cil_tmp140 = & xclk;
    *((int *)__cil_tmp139) = *__cil_tmp140;
  } else {
  }
  }
  {
  __cil_tmp141 = 1008 + 20;
  __cil_tmp142 = (unsigned long )par;
  __cil_tmp143 = __cil_tmp142 + __cil_tmp141;
  __cil_tmp144 = *((int *)__cil_tmp143);
  aty_calc_mem_refresh(par, __cil_tmp144);
  __cil_tmp145 = (unsigned long )par;
  __cil_tmp146 = __cil_tmp145 + 1052;
  __cil_tmp147 = (unsigned long )par;
  __cil_tmp148 = __cil_tmp147 + 1008;
  __cil_tmp149 = *((int *)__cil_tmp148);
  __cil_tmp150 = 1000000 / __cil_tmp149;
  *((u32 *)__cil_tmp146) = (u32 )__cil_tmp150;
  __cil_tmp151 = (unsigned long )par;
  __cil_tmp152 = __cil_tmp151 + 1056;
  __cil_tmp153 = 1008 + 12;
  __cil_tmp154 = (unsigned long )par;
  __cil_tmp155 = __cil_tmp154 + __cil_tmp153;
  __cil_tmp156 = *((int *)__cil_tmp155);
  __cil_tmp157 = 1000000 / __cil_tmp156;
  *((u32 *)__cil_tmp152) = (u32 )__cil_tmp157;
  __cil_tmp158 = (unsigned long )par;
  __cil_tmp159 = __cil_tmp158 + 1060;
  __cil_tmp160 = 1008 + 20;
  __cil_tmp161 = (unsigned long )par;
  __cil_tmp162 = __cil_tmp161 + __cil_tmp160;
  __cil_tmp163 = *((int *)__cil_tmp162);
  __cil_tmp164 = 1000000 / __cil_tmp163;
  *((u32 *)__cil_tmp159) = (u32 )__cil_tmp164;
  __cil_tmp165 = (unsigned long )par;
  __cil_tmp166 = __cil_tmp165 + 1048;
  *((u32 *)__cil_tmp166) = (u32 )69841ULL;
  xtal = "14.31818";
  }
  {
  __cil_tmp167 = (unsigned long )par;
  __cil_tmp168 = __cil_tmp167 + 1044;
  __cil_tmp169 = *((u32 *)__cil_tmp168);
  if (__cil_tmp169 & 4U) {
    {
    __cil_tmp170 = (struct atyfb_par *)par;
    tmp___9 = aty_ld_pll_ct(2, __cil_tmp170);
    pll_ref_div = tmp___9;
    }
    if (pll_ref_div) {
      __cil_tmp171 = (unsigned long )par;
      __cil_tmp172 = __cil_tmp171 + 1008;
      __cil_tmp173 = *((int *)__cil_tmp172);
      __cil_tmp174 = (int )pll_ref_div;
      __cil_tmp175 = 7140 / __cil_tmp174;
      diff1 = __cil_tmp175 - __cil_tmp173;
      __cil_tmp176 = (unsigned long )par;
      __cil_tmp177 = __cil_tmp176 + 1008;
      __cil_tmp178 = *((int *)__cil_tmp177);
      __cil_tmp179 = (int )pll_ref_div;
      __cil_tmp180 = 14790 / __cil_tmp179;
      diff2 = __cil_tmp180 - __cil_tmp178;
      if (diff1 < 0) {
        diff1 = - diff1;
      } else {
      }
      if (diff2 < 0) {
        diff2 = - diff2;
      } else {
      }
      if (diff2 < diff1) {
        __cil_tmp181 = (unsigned long )par;
        __cil_tmp182 = __cil_tmp181 + 1048;
        *((u32 *)__cil_tmp182) = (u32 )33899ULL;
        xtal = "29.498928";
      } else {
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp183 = (struct atyfb_par *)par;
  __cil_tmp184 = (unsigned long )par;
  __cil_tmp185 = __cil_tmp184 + 1292;
  __cil_tmp186 = (struct crtc *)__cil_tmp185;
  aty_get_crtc(__cil_tmp183, __cil_tmp186);
  }
  {
  __cil_tmp187 = (unsigned long )par;
  __cil_tmp188 = __cil_tmp187 + 840;
  __cil_tmp189 = *((struct aty_pll_ops **)__cil_tmp188);
  __cil_tmp190 = (unsigned long )__cil_tmp189;
  __cil_tmp191 = __cil_tmp190 + 24;
  if (*((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp191)) {
    {
    __cil_tmp192 = (unsigned long )par;
    __cil_tmp193 = __cil_tmp192 + 840;
    __cil_tmp194 = *((struct aty_pll_ops **)__cil_tmp193);
    __cil_tmp195 = (unsigned long )__cil_tmp194;
    __cil_tmp196 = __cil_tmp195 + 24;
    __cil_tmp197 = *((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp196);
    __cil_tmp198 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp197;
    __cil_tmp199 = (struct fb_info *)info;
    __cil_tmp200 = (unsigned long )par;
    __cil_tmp201 = __cil_tmp200 + 1388;
    __cil_tmp202 = (union aty_pll *)__cil_tmp201;
    (*__cil_tmp198)(__cil_tmp199, __cil_tmp202);
    }
  } else {
  }
  }
  {
  __cil_tmp203 = (unsigned long )par;
  __cil_tmp204 = __cil_tmp203 + 1288;
  __cil_tmp205 = (struct atyfb_par *)par;
  *((u32 *)__cil_tmp204) = aty_ld_le32(176, __cil_tmp205);
  __cil_tmp206 = (unsigned long )par;
  __cil_tmp207 = __cil_tmp206 + 1044;
  __cil_tmp208 = *((u32 *)__cil_tmp207);
  __cil_tmp209 = __cil_tmp208 & 4U;
  gtb_memsize = (int )__cil_tmp209;
  }
  if (gtb_memsize) {
    {
    __cil_tmp210 = (unsigned long )par;
    __cil_tmp211 = __cil_tmp210 + 1288;
    __cil_tmp212 = *((u32 *)__cil_tmp211);
    __cil_tmp213 = __cil_tmp212 & 15U;
    if ((int )__cil_tmp213 == 0) {
      goto case_0;
    } else
    if ((int )__cil_tmp213 == 1) {
      goto case_1___0;
    } else
    if ((int )__cil_tmp213 == 3) {
      goto case_3;
    } else
    if ((int )__cil_tmp213 == 7) {
      goto case_7;
    } else
    if ((int )__cil_tmp213 == 9) {
      goto case_9;
    } else
    if ((int )__cil_tmp213 == 11) {
      goto case_11;
    } else {
      {
      goto switch_default___1;
      if (0) {
        case_0:
        __cil_tmp214 = 320 + 24;
        __cil_tmp215 = (unsigned long )info;
        __cil_tmp216 = __cil_tmp215 + __cil_tmp214;
        *((__u32 *)__cil_tmp216) = (__u32 )524288;
        goto switch_break___1;
        case_1___0:
        __cil_tmp217 = 320 + 24;
        __cil_tmp218 = (unsigned long )info;
        __cil_tmp219 = __cil_tmp218 + __cil_tmp217;
        *((__u32 *)__cil_tmp219) = (__u32 )1048576;
        goto switch_break___1;
        case_3:
        __cil_tmp220 = 320 + 24;
        __cil_tmp221 = (unsigned long )info;
        __cil_tmp222 = __cil_tmp221 + __cil_tmp220;
        *((__u32 *)__cil_tmp222) = (__u32 )2097152;
        goto switch_break___1;
        case_7:
        __cil_tmp223 = 320 + 24;
        __cil_tmp224 = (unsigned long )info;
        __cil_tmp225 = __cil_tmp224 + __cil_tmp223;
        *((__u32 *)__cil_tmp225) = (__u32 )4194304;
        goto switch_break___1;
        case_9:
        __cil_tmp226 = 320 + 24;
        __cil_tmp227 = (unsigned long )info;
        __cil_tmp228 = __cil_tmp227 + __cil_tmp226;
        *((__u32 *)__cil_tmp228) = (__u32 )6291456;
        goto switch_break___1;
        case_11:
        __cil_tmp229 = 320 + 24;
        __cil_tmp230 = (unsigned long )info;
        __cil_tmp231 = __cil_tmp230 + __cil_tmp229;
        *((__u32 *)__cil_tmp231) = (__u32 )8388608;
        goto switch_break___1;
        switch_default___1:
        __cil_tmp232 = 320 + 24;
        __cil_tmp233 = (unsigned long )info;
        __cil_tmp234 = __cil_tmp233 + __cil_tmp232;
        *((__u32 *)__cil_tmp234) = (__u32 )524288;
      } else {
        switch_break___1: ;
      }
      }
    }
    }
  } else {
    {
    __cil_tmp235 = (unsigned long )par;
    __cil_tmp236 = __cil_tmp235 + 1288;
    __cil_tmp237 = *((u32 *)__cil_tmp236);
    __cil_tmp238 = __cil_tmp237 & 7U;
    if ((int )__cil_tmp238 == 0) {
      goto case_0___0;
    } else
    if ((int )__cil_tmp238 == 1) {
      goto case_1___1;
    } else
    if ((int )__cil_tmp238 == 2) {
      goto case_2;
    } else
    if ((int )__cil_tmp238 == 3) {
      goto case_3___0;
    } else
    if ((int )__cil_tmp238 == 4) {
      goto case_4;
    } else
    if ((int )__cil_tmp238 == 5) {
      goto case_5;
    } else {
      {
      goto switch_default___2;
      if (0) {
        case_0___0:
        __cil_tmp239 = 320 + 24;
        __cil_tmp240 = (unsigned long )info;
        __cil_tmp241 = __cil_tmp240 + __cil_tmp239;
        *((__u32 *)__cil_tmp241) = (__u32 )524288;
        goto switch_break___2;
        case_1___1:
        __cil_tmp242 = 320 + 24;
        __cil_tmp243 = (unsigned long )info;
        __cil_tmp244 = __cil_tmp243 + __cil_tmp242;
        *((__u32 *)__cil_tmp244) = (__u32 )1048576;
        goto switch_break___2;
        case_2:
        __cil_tmp245 = 320 + 24;
        __cil_tmp246 = (unsigned long )info;
        __cil_tmp247 = __cil_tmp246 + __cil_tmp245;
        *((__u32 *)__cil_tmp247) = (__u32 )2097152;
        goto switch_break___2;
        case_3___0:
        __cil_tmp248 = 320 + 24;
        __cil_tmp249 = (unsigned long )info;
        __cil_tmp250 = __cil_tmp249 + __cil_tmp248;
        *((__u32 *)__cil_tmp250) = (__u32 )4194304;
        goto switch_break___2;
        case_4:
        __cil_tmp251 = 320 + 24;
        __cil_tmp252 = (unsigned long )info;
        __cil_tmp253 = __cil_tmp252 + __cil_tmp251;
        *((__u32 *)__cil_tmp253) = (__u32 )6291456;
        goto switch_break___2;
        case_5:
        __cil_tmp254 = 320 + 24;
        __cil_tmp255 = (unsigned long )info;
        __cil_tmp256 = __cil_tmp255 + __cil_tmp254;
        *((__u32 *)__cil_tmp256) = (__u32 )8388608;
        goto switch_break___2;
        switch_default___2:
        __cil_tmp257 = 320 + 24;
        __cil_tmp258 = (unsigned long )info;
        __cil_tmp259 = __cil_tmp258 + __cil_tmp257;
        *((__u32 *)__cil_tmp259) = (__u32 )524288;
      } else {
        switch_break___2: ;
      }
      }
    }
    }
  }
  {
  __cil_tmp260 = (unsigned long )par;
  __cil_tmp261 = __cil_tmp260 + 1044;
  __cil_tmp262 = *((u32 *)__cil_tmp261);
  if (__cil_tmp262 & 16384U) {
    {
    __cil_tmp263 = (struct atyfb_par *)par;
    tmp___10 = aty_ld_le32(148, __cil_tmp263);
    }
    if (tmp___10 & 1073741824U) {
      __cil_tmp264 = 320 + 24;
      __cil_tmp265 = (unsigned long )info;
      __cil_tmp266 = __cil_tmp265 + __cil_tmp264;
      __cil_tmp267 = 320 + 24;
      __cil_tmp268 = (unsigned long )info;
      __cil_tmp269 = __cil_tmp268 + __cil_tmp267;
      __cil_tmp270 = *((__u32 *)__cil_tmp269);
      *((__u32 *)__cil_tmp266) = __cil_tmp270 + 4194304U;
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp271 = & vram;
  if (*__cil_tmp271) {
    __cil_tmp272 = 320 + 24;
    __cil_tmp273 = (unsigned long )info;
    __cil_tmp274 = __cil_tmp273 + __cil_tmp272;
    __cil_tmp275 = & vram;
    __cil_tmp276 = *__cil_tmp275;
    __cil_tmp277 = __cil_tmp276 * 1024;
    *((__u32 *)__cil_tmp274) = (__u32 )__cil_tmp277;
    if (gtb_memsize) {
      tmp___11 = 15;
    } else {
      tmp___11 = 7;
    }
    __cil_tmp278 = (unsigned long )par;
    __cil_tmp279 = __cil_tmp278 + 1288;
    __cil_tmp280 = ~ tmp___11;
    __cil_tmp281 = (unsigned int )__cil_tmp280;
    __cil_tmp282 = (unsigned long )par;
    __cil_tmp283 = __cil_tmp282 + 1288;
    __cil_tmp284 = *((u32 *)__cil_tmp283);
    *((u32 *)__cil_tmp279) = __cil_tmp284 & __cil_tmp281;
    {
    __cil_tmp285 = 320 + 24;
    __cil_tmp286 = (unsigned long )info;
    __cil_tmp287 = __cil_tmp286 + __cil_tmp285;
    __cil_tmp288 = *((__u32 *)__cil_tmp287);
    if (__cil_tmp288 <= 524288U) {
      __cil_tmp289 = (unsigned long )par;
      __cil_tmp290 = __cil_tmp289 + 1288;
      __cil_tmp291 = (unsigned long )par;
      __cil_tmp292 = __cil_tmp291 + 1288;
      *((u32 *)__cil_tmp290) = *((u32 *)__cil_tmp292);
    } else {
      {
      __cil_tmp293 = 320 + 24;
      __cil_tmp294 = (unsigned long )info;
      __cil_tmp295 = __cil_tmp294 + __cil_tmp293;
      __cil_tmp296 = *((__u32 *)__cil_tmp295);
      if (__cil_tmp296 <= 1048576U) {
        __cil_tmp297 = (unsigned long )par;
        __cil_tmp298 = __cil_tmp297 + 1288;
        __cil_tmp299 = (unsigned long )par;
        __cil_tmp300 = __cil_tmp299 + 1288;
        __cil_tmp301 = *((u32 *)__cil_tmp300);
        *((u32 *)__cil_tmp298) = __cil_tmp301 | 1U;
      } else {
        {
        __cil_tmp302 = 320 + 24;
        __cil_tmp303 = (unsigned long )info;
        __cil_tmp304 = __cil_tmp303 + __cil_tmp302;
        __cil_tmp305 = *((__u32 *)__cil_tmp304);
        if (__cil_tmp305 <= 2097152U) {
          if (gtb_memsize) {
            tmp___12 = 3;
          } else {
            tmp___12 = 2;
          }
          __cil_tmp306 = (unsigned long )par;
          __cil_tmp307 = __cil_tmp306 + 1288;
          __cil_tmp308 = (unsigned int )tmp___12;
          __cil_tmp309 = (unsigned long )par;
          __cil_tmp310 = __cil_tmp309 + 1288;
          __cil_tmp311 = *((u32 *)__cil_tmp310);
          *((u32 *)__cil_tmp307) = __cil_tmp311 | __cil_tmp308;
        } else {
          {
          __cil_tmp312 = 320 + 24;
          __cil_tmp313 = (unsigned long )info;
          __cil_tmp314 = __cil_tmp313 + __cil_tmp312;
          __cil_tmp315 = *((__u32 *)__cil_tmp314);
          if (__cil_tmp315 <= 4194304U) {
            if (gtb_memsize) {
              tmp___13 = 7;
            } else {
              tmp___13 = 3;
            }
            __cil_tmp316 = (unsigned long )par;
            __cil_tmp317 = __cil_tmp316 + 1288;
            __cil_tmp318 = (unsigned int )tmp___13;
            __cil_tmp319 = (unsigned long )par;
            __cil_tmp320 = __cil_tmp319 + 1288;
            __cil_tmp321 = *((u32 *)__cil_tmp320);
            *((u32 *)__cil_tmp317) = __cil_tmp321 | __cil_tmp318;
          } else {
            {
            __cil_tmp322 = 320 + 24;
            __cil_tmp323 = (unsigned long )info;
            __cil_tmp324 = __cil_tmp323 + __cil_tmp322;
            __cil_tmp325 = *((__u32 *)__cil_tmp324);
            if (__cil_tmp325 <= 6291456U) {
              if (gtb_memsize) {
                tmp___14 = 9;
              } else {
                tmp___14 = 4;
              }
              __cil_tmp326 = (unsigned long )par;
              __cil_tmp327 = __cil_tmp326 + 1288;
              __cil_tmp328 = (unsigned int )tmp___14;
              __cil_tmp329 = (unsigned long )par;
              __cil_tmp330 = __cil_tmp329 + 1288;
              __cil_tmp331 = *((u32 *)__cil_tmp330);
              *((u32 *)__cil_tmp327) = __cil_tmp331 | __cil_tmp328;
            } else {
              if (gtb_memsize) {
                tmp___15 = 11;
              } else {
                tmp___15 = 5;
              }
              __cil_tmp332 = (unsigned long )par;
              __cil_tmp333 = __cil_tmp332 + 1288;
              __cil_tmp334 = (unsigned int )tmp___15;
              __cil_tmp335 = (unsigned long )par;
              __cil_tmp336 = __cil_tmp335 + 1288;
              __cil_tmp337 = *((u32 *)__cil_tmp336);
              *((u32 *)__cil_tmp333) = __cil_tmp337 | __cil_tmp334;
            }
            }
          }
          }
        }
        }
      }
      }
    }
    }
    {
    __cil_tmp338 = (unsigned long )par;
    __cil_tmp339 = __cil_tmp338 + 1288;
    __cil_tmp340 = *((u32 *)__cil_tmp339);
    __cil_tmp341 = (struct atyfb_par *)par;
    aty_st_le32(176, __cil_tmp340, __cil_tmp341);
    }
  } else {
  }
  }
  {
  __cil_tmp342 = (unsigned long )par;
  __cil_tmp343 = __cil_tmp342 + 1044;
  __cil_tmp344 = *((u32 *)__cil_tmp343);
  if (__cil_tmp344 & 1024U) {
    __cil_tmp345 = 320 + 64;
    __cil_tmp346 = (unsigned long )info;
    __cil_tmp347 = __cil_tmp346 + __cil_tmp345;
    *((__u32 *)__cil_tmp347) = (__u32 )1024;
    __cil_tmp348 = 320 + 68;
    __cil_tmp349 = (unsigned long )info;
    __cil_tmp350 = __cil_tmp349 + __cil_tmp348;
    *((__u32 *)__cil_tmp350) = (__u32 )6;
  } else {
    {
    __cil_tmp351 = (unsigned long )par;
    __cil_tmp352 = __cil_tmp351 + 1044;
    __cil_tmp353 = *((u32 *)__cil_tmp352);
    if (__cil_tmp353 & 2048U) {
      __cil_tmp354 = 320 + 64;
      __cil_tmp355 = (unsigned long )info;
      __cil_tmp356 = __cil_tmp355 + __cil_tmp354;
      *((__u32 *)__cil_tmp356) = (__u32 )1024;
      __cil_tmp357 = 320 + 68;
      __cil_tmp358 = (unsigned long )info;
      __cil_tmp359 = __cil_tmp358 + __cil_tmp357;
      *((__u32 *)__cil_tmp359) = (__u32 )8;
    } else {
      {
      __cil_tmp360 = (unsigned long )par;
      __cil_tmp361 = __cil_tmp360 + 1044;
      __cil_tmp362 = *((u32 *)__cil_tmp361);
      if (__cil_tmp362 & 4096U) {
        __cil_tmp363 = 320 + 56;
        __cil_tmp364 = (unsigned long )info;
        __cil_tmp365 = __cil_tmp364 + __cil_tmp363;
        __cil_tmp366 = 320 + 56;
        __cil_tmp367 = (unsigned long )info;
        __cil_tmp368 = __cil_tmp367 + __cil_tmp366;
        __cil_tmp369 = *((unsigned long *)__cil_tmp368);
        *((unsigned long *)__cil_tmp365) = __cil_tmp369 - 1024UL;
        __cil_tmp370 = 320 + 64;
        __cil_tmp371 = (unsigned long )info;
        __cil_tmp372 = __cil_tmp371 + __cil_tmp370;
        *((__u32 *)__cil_tmp372) = (__u32 )2048;
        __cil_tmp373 = 320 + 68;
        __cil_tmp374 = (unsigned long )info;
        __cil_tmp375 = __cil_tmp374 + __cil_tmp373;
        *((__u32 *)__cil_tmp375) = (__u32 )9;
      } else {
        __cil_tmp376 = 320 + 56;
        __cil_tmp377 = (unsigned long )info;
        __cil_tmp378 = __cil_tmp377 + __cil_tmp376;
        __cil_tmp379 = 320 + 56;
        __cil_tmp380 = (unsigned long )info;
        __cil_tmp381 = __cil_tmp380 + __cil_tmp379;
        __cil_tmp382 = *((unsigned long *)__cil_tmp381);
        *((unsigned long *)__cil_tmp378) = __cil_tmp382 - 1024UL;
        __cil_tmp383 = 320 + 64;
        __cil_tmp384 = (unsigned long )info;
        __cil_tmp385 = __cil_tmp384 + __cil_tmp383;
        *((__u32 *)__cil_tmp385) = (__u32 )2048;
        __cil_tmp386 = 320 + 68;
        __cil_tmp387 = (unsigned long )info;
        __cil_tmp388 = __cil_tmp387 + __cil_tmp386;
        *((__u32 *)__cil_tmp388) = (__u32 )10;
      }
      }
    }
    }
  }
  }
  {
  __cil_tmp389 = 320 + 24;
  __cil_tmp390 = (unsigned long )info;
  __cil_tmp391 = __cil_tmp390 + __cil_tmp389;
  __cil_tmp392 = *((__u32 *)__cil_tmp391);
  if (__cil_tmp392 == 524288U) {
    tmp___16 = 'K';
  } else {
    tmp___16 = 'M';
  }
  }
  {
  __cil_tmp393 = 320 + 24;
  __cil_tmp394 = (unsigned long )info;
  __cil_tmp395 = __cil_tmp394 + __cil_tmp393;
  __cil_tmp396 = *((__u32 *)__cil_tmp395);
  if (__cil_tmp396 == 524288U) {
    tmp___17 = (__u32 )512;
  } else {
    __cil_tmp397 = 320 + 24;
    __cil_tmp398 = (unsigned long )info;
    __cil_tmp399 = __cil_tmp398 + __cil_tmp397;
    __cil_tmp400 = *((__u32 *)__cil_tmp399);
    tmp___17 = __cil_tmp400 >> 20;
  }
  }
  {
  __cil_tmp401 = (unsigned long )par;
  __cil_tmp402 = __cil_tmp401 + 1008;
  __cil_tmp403 = *((int *)__cil_tmp402);
  __cil_tmp404 = 1008 + 12;
  __cil_tmp405 = (unsigned long )par;
  __cil_tmp406 = __cil_tmp405 + __cil_tmp404;
  __cil_tmp407 = *((int *)__cil_tmp406);
  __cil_tmp408 = 1008 + 20;
  __cil_tmp409 = (unsigned long )par;
  __cil_tmp410 = __cil_tmp409 + __cil_tmp408;
  __cil_tmp411 = *((int *)__cil_tmp410);
  printk("<6>atyfb: %d%c %s, %s MHz XTAL, %d MHz PLL, %d Mhz MCLK, %d MHz XCLK\n",
         tmp___17, tmp___16, ramname, xtal, __cil_tmp403, __cil_tmp407, __cil_tmp411);
  }
  {
  __cil_tmp412 = (unsigned long )par;
  __cil_tmp413 = __cil_tmp412 + 840;
  __cil_tmp414 = *((struct aty_pll_ops **)__cil_tmp413);
  __cil_tmp415 = (unsigned long )__cil_tmp414;
  __cil_tmp416 = __cil_tmp415 + 32;
  if (*((int (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp416)) {
    {
    __cil_tmp417 = (unsigned long )par;
    __cil_tmp418 = __cil_tmp417 + 840;
    __cil_tmp419 = *((struct aty_pll_ops **)__cil_tmp418);
    __cil_tmp420 = (unsigned long )__cil_tmp419;
    __cil_tmp421 = __cil_tmp420 + 32;
    __cil_tmp422 = *((int (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp421);
    __cil_tmp423 = (int (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp422;
    __cil_tmp424 = (struct fb_info *)info;
    __cil_tmp425 = (unsigned long )par;
    __cil_tmp426 = __cil_tmp425 + 960;
    __cil_tmp427 = (union aty_pll *)__cil_tmp426;
    (*__cil_tmp423)(__cil_tmp424, __cil_tmp427);
    }
  } else {
  }
  }
  {
  __cil_tmp428 = (unsigned long )par;
  __cil_tmp429 = __cil_tmp428 + 840;
  __cil_tmp430 = *((struct aty_pll_ops **)__cil_tmp429);
  __cil_tmp431 = (unsigned long )__cil_tmp430;
  __cil_tmp432 = __cil_tmp431 + 40;
  if (*((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp432)) {
    {
    __cil_tmp433 = (unsigned long )par;
    __cil_tmp434 = __cil_tmp433 + 840;
    __cil_tmp435 = *((struct aty_pll_ops **)__cil_tmp434);
    __cil_tmp436 = (unsigned long )__cil_tmp435;
    __cil_tmp437 = __cil_tmp436 + 40;
    __cil_tmp438 = *((void (* *)(struct fb_info *info , union aty_pll *pll ))__cil_tmp437);
    __cil_tmp439 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp438;
    __cil_tmp440 = (struct fb_info *)info;
    __cil_tmp441 = (unsigned long )par;
    __cil_tmp442 = __cil_tmp441 + 960;
    __cil_tmp443 = (union aty_pll *)__cil_tmp442;
    (*__cil_tmp439)(__cil_tmp440, __cil_tmp443);
    }
  } else {
  }
  }
  {
  __cil_tmp444 = (unsigned long )par;
  __cil_tmp445 = __cil_tmp444 + 1176;
  __cil_tmp446 = *((unsigned long *)__cil_tmp445);
  if (! __cil_tmp446) {
    {
    __cil_tmp447 = 320 + 24;
    __cil_tmp448 = (unsigned long )info;
    __cil_tmp449 = __cil_tmp448 + __cil_tmp447;
    __cil_tmp450 = *((__u32 *)__cil_tmp449);
    if (__cil_tmp450 == 8388608U) {
      __cil_tmp451 = 320 + 24;
      __cil_tmp452 = (unsigned long )info;
      __cil_tmp453 = __cil_tmp452 + __cil_tmp451;
      __cil_tmp454 = 1UL << 12;
      __cil_tmp455 = 320 + 24;
      __cil_tmp456 = (unsigned long )info;
      __cil_tmp457 = __cil_tmp456 + __cil_tmp455;
      __cil_tmp458 = *((__u32 *)__cil_tmp457);
      __cil_tmp459 = (unsigned long )__cil_tmp458;
      __cil_tmp460 = __cil_tmp459 - __cil_tmp454;
      *((__u32 *)__cil_tmp453) = (__u32 )__cil_tmp460;
    } else {
      {
      __cil_tmp461 = (unsigned long )par;
      __cil_tmp462 = __cil_tmp461 + 1064;
      __cil_tmp463 = *((u8 *)__cil_tmp462);
      __cil_tmp464 = (int )__cil_tmp463;
      if (__cil_tmp464 == 0) {
        {
        __cil_tmp465 = 320 + 24;
        __cil_tmp466 = (unsigned long )info;
        __cil_tmp467 = __cil_tmp466 + __cil_tmp465;
        __cil_tmp468 = *((__u32 *)__cil_tmp467);
        if (__cil_tmp468 == 4194304U) {
          __cil_tmp469 = 320 + 24;
          __cil_tmp470 = (unsigned long )info;
          __cil_tmp471 = __cil_tmp470 + __cil_tmp469;
          __cil_tmp472 = 1UL << 12;
          __cil_tmp473 = 320 + 24;
          __cil_tmp474 = (unsigned long )info;
          __cil_tmp475 = __cil_tmp474 + __cil_tmp473;
          __cil_tmp476 = *((__u32 *)__cil_tmp475);
          __cil_tmp477 = (unsigned long )__cil_tmp476;
          __cil_tmp478 = __cil_tmp477 - __cil_tmp472;
          *((__u32 *)__cil_tmp471) = (__u32 )__cil_tmp478;
        } else {
        }
        }
      } else {
      }
      }
    }
    }
  } else {
  }
  }
  {
  __cil_tmp479 = (unsigned long )par;
  __cil_tmp480 = __cil_tmp479 + 1176;
  if (*((unsigned long *)__cil_tmp480)) {
    {
    __cil_tmp481 = (struct atyfb_par *)par;
    tmp___18 = aty_ld_le32(160, __cil_tmp481);
    __cil_tmp482 = tmp___18 | 16U;
    __cil_tmp483 = (struct atyfb_par *)par;
    aty_st_le32(160, __cil_tmp482, __cil_tmp483);
    }
  } else {
  }
  }
  __cil_tmp484 = (unsigned long )par;
  __cil_tmp485 = __cil_tmp484 + 1280;
  *((int *)__cil_tmp485) = -1;
  __cil_tmp486 = (unsigned long )par;
  __cil_tmp487 = __cil_tmp486 + 1284;
  *((int *)__cil_tmp487) = -1;
  {
  __cil_tmp488 = & nomtrr;
  __cil_tmp489 = *__cil_tmp488;
  if (! __cil_tmp489) {
    {
    __cil_tmp490 = (unsigned long )par;
    __cil_tmp491 = __cil_tmp490 + 1280;
    __cil_tmp492 = (unsigned long )par;
    __cil_tmp493 = __cil_tmp492 + 1088;
    __cil_tmp494 = *((unsigned long *)__cil_tmp493);
    __cil_tmp495 = (unsigned long )par;
    __cil_tmp496 = __cil_tmp495 + 1096;
    __cil_tmp497 = *((unsigned long *)__cil_tmp496);
    __cil_tmp498 = (bool )1;
    *((int *)__cil_tmp491) = mtrr_add(__cil_tmp494, __cil_tmp497, 1U, __cil_tmp498);
    }
    {
    __cil_tmp499 = (unsigned long )par;
    __cil_tmp500 = __cil_tmp499 + 1280;
    __cil_tmp501 = *((int *)__cil_tmp500);
    if (__cil_tmp501 >= 0) {
      {
      __cil_tmp502 = (unsigned long )par;
      __cil_tmp503 = __cil_tmp502 + 1176;
      __cil_tmp504 = *((unsigned long *)__cil_tmp503);
      if (! __cil_tmp504) {
        {
        __cil_tmp505 = (unsigned long )par;
        __cil_tmp506 = __cil_tmp505 + 1284;
        __cil_tmp507 = 1UL << 12;
        __cil_tmp508 = (unsigned long )par;
        __cil_tmp509 = __cil_tmp508 + 1088;
        __cil_tmp510 = *((unsigned long *)__cil_tmp509);
        __cil_tmp511 = __cil_tmp510 + 8388608UL;
        __cil_tmp512 = __cil_tmp511 - __cil_tmp507;
        __cil_tmp513 = 1UL << 12;
        __cil_tmp514 = (bool )1;
        *((int *)__cil_tmp506) = mtrr_add(__cil_tmp512, __cil_tmp513, 0U, __cil_tmp514);
        }
        {
        __cil_tmp515 = (unsigned long )par;
        __cil_tmp516 = __cil_tmp515 + 1284;
        __cil_tmp517 = *((int *)__cil_tmp516);
        if (__cil_tmp517 < 0) {
          {
          __cil_tmp518 = (unsigned long )par;
          __cil_tmp519 = __cil_tmp518 + 1280;
          __cil_tmp520 = *((int *)__cil_tmp519);
          mtrr_del(__cil_tmp520, 0UL, 0UL);
          __cil_tmp521 = (unsigned long )par;
          __cil_tmp522 = __cil_tmp521 + 1280;
          *((int *)__cil_tmp522) = -1;
          }
        } else {
        }
        }
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  __cil_tmp523 = (unsigned long )info;
  __cil_tmp524 = __cil_tmp523 + 1080;
  *((struct fb_ops **)__cil_tmp524) = & atyfb_ops;
  __cil_tmp525 = (unsigned long )info;
  __cil_tmp526 = __cil_tmp525 + 1136;
  __cil_tmp527 = 0 * 4UL;
  __cil_tmp528 = 0 + __cil_tmp527;
  __cil_tmp529 = (unsigned long )par;
  __cil_tmp530 = __cil_tmp529 + __cil_tmp528;
  __cil_tmp531 = (u32 *)__cil_tmp530;
  *((void **)__cil_tmp526) = (void *)__cil_tmp531;
  __cil_tmp532 = (unsigned long )info;
  __cil_tmp533 = __cil_tmp532 + 8;
  *((int *)__cil_tmp533) = 9985;
  {
  __cil_tmp534 = (unsigned long )par;
  __cil_tmp535 = __cil_tmp534 + 1044;
  __cil_tmp536 = *((u32 *)__cil_tmp535);
  if (__cil_tmp536 & 512U) {
    if (backlight) {
      {
      aty_bl_init(par);
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp537 = (void *)(& var);
  memset(__cil_tmp537, 0, 160UL);
  }
  {
  __cil_tmp538 = & mode;
  if (*__cil_tmp538) {
    {
    __cil_tmp539 = & mode;
    __cil_tmp540 = *__cil_tmp539;
    __cil_tmp541 = (char *)__cil_tmp540;
    __cil_tmp542 = (void *)0;
    __cil_tmp543 = (struct fb_videomode *)__cil_tmp542;
    __cil_tmp544 = (struct fb_videomode *)(& defmode);
    tmp___19 = fb_find_mode(& var, info, __cil_tmp541, __cil_tmp543, 0U, __cil_tmp544,
                            8U);
    }
    if (tmp___19) {
      has_var = 1;
    } else {
    }
  } else {
  }
  }
  if (! has_var) {
    __cil_tmp545 = & var;
    *__cil_tmp545 = default_var;
  } else {
  }
  {
  __cil_tmp546 = & noaccel;
  if (*__cil_tmp546) {
    __cil_tmp547 = (unsigned long )(& var) + 96;
    __cil_tmp548 = (unsigned long )(& var) + 96;
    __cil_tmp549 = *((__u32 *)__cil_tmp548);
    *((__u32 *)__cil_tmp547) = __cil_tmp549 & 4294967294U;
  } else {
    __cil_tmp550 = (unsigned long )(& var) + 96;
    __cil_tmp551 = (unsigned long )(& var) + 96;
    __cil_tmp552 = *((__u32 *)__cil_tmp551);
    *((__u32 *)__cil_tmp550) = __cil_tmp552 | 1U;
  }
  }
  {
  __cil_tmp553 = & comp_sync;
  __cil_tmp554 = *__cil_tmp553;
  if (__cil_tmp554 != -1) {
    {
    __cil_tmp555 = & comp_sync;
    __cil_tmp556 = *__cil_tmp555;
    if (! __cil_tmp556) {
      __cil_tmp557 = (unsigned long )(& var) + 128;
      __cil_tmp558 = (unsigned long )(& var) + 128;
      __cil_tmp559 = *((__u32 *)__cil_tmp558);
      *((__u32 *)__cil_tmp557) = __cil_tmp559 & 4294967287U;
    } else {
      __cil_tmp560 = (unsigned long )(& var) + 128;
      __cil_tmp561 = (unsigned long )(& var) + 128;
      __cil_tmp562 = *((__u32 *)__cil_tmp561);
      *((__u32 *)__cil_tmp560) = __cil_tmp562 | 8U;
    }
    }
  } else {
  }
  }
  {
  __cil_tmp563 = (unsigned long )(& var) + 12;
  __cil_tmp564 = *((__u32 *)__cil_tmp563);
  __cil_tmp565 = (unsigned long )(& var) + 4;
  __cil_tmp566 = *((__u32 *)__cil_tmp565);
  if (__cil_tmp566 == __cil_tmp564) {
    __cil_tmp567 = 1UL << 12;
    __cil_tmp568 = __cil_tmp567 << 2;
    __cil_tmp569 = 320 + 24;
    __cil_tmp570 = (unsigned long )info;
    __cil_tmp571 = __cil_tmp570 + __cil_tmp569;
    __cil_tmp572 = *((__u32 *)__cil_tmp571);
    __cil_tmp573 = (unsigned long )__cil_tmp572;
    __cil_tmp574 = __cil_tmp573 - __cil_tmp568;
    videoram = (u32 )__cil_tmp574;
    __cil_tmp575 = (unsigned long )(& var) + 12;
    __cil_tmp576 = (unsigned long )(& var) + 8;
    __cil_tmp577 = *((__u32 *)__cil_tmp576);
    __cil_tmp578 = (unsigned long )(& var) + 24;
    __cil_tmp579 = *((__u32 *)__cil_tmp578);
    __cil_tmp580 = videoram * 8U;
    __cil_tmp581 = __cil_tmp580 / __cil_tmp579;
    *((__u32 *)__cil_tmp575) = __cil_tmp581 / __cil_tmp577;
    {
    __cil_tmp582 = (unsigned long )(& var) + 4;
    __cil_tmp583 = *((__u32 *)__cil_tmp582);
    __cil_tmp584 = (unsigned long )(& var) + 12;
    __cil_tmp585 = *((__u32 *)__cil_tmp584);
    if (__cil_tmp585 < __cil_tmp583) {
      __cil_tmp586 = (unsigned long )(& var) + 12;
      __cil_tmp587 = (unsigned long )(& var) + 4;
      *((__u32 *)__cil_tmp586) = *((__u32 *)__cil_tmp587);
    } else {
    }
    }
  } else {
  }
  }
  {
  ret = atyfb_check_var(& var, info);
  }
  if (ret) {
    {
    printk("<3>atyfb: can\'t set default video mode\n");
    }
    goto aty_init_exit;
  } else {
  }
  {
  __cil_tmp588 = & noaccel;
  __cil_tmp589 = *__cil_tmp588;
  if (! __cil_tmp589) {
    {
    __cil_tmp590 = (unsigned long )par;
    __cil_tmp591 = __cil_tmp590 + 1044;
    __cil_tmp592 = *((u32 *)__cil_tmp591);
    if (__cil_tmp592 & 64U) {
      {
      aty_init_cursor(info);
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp593 = (unsigned long )info;
  __cil_tmp594 = __cil_tmp593 + 160;
  __cil_tmp595 = & var;
  *((struct fb_var_screeninfo *)__cil_tmp594) = *__cil_tmp595;
  __cil_tmp596 = (unsigned long )info;
  __cil_tmp597 = __cil_tmp596 + 688;
  __cil_tmp598 = (struct fb_cmap *)__cil_tmp597;
  ret = fb_alloc_cmap(__cil_tmp598, 256, 0);
  }
  if (ret < 0) {
    goto aty_init_exit;
  } else {
  }
  {
  ret = register_framebuffer(info);
  }
  if (ret < 0) {
    {
    __cil_tmp599 = (unsigned long )info;
    __cil_tmp600 = __cil_tmp599 + 688;
    __cil_tmp601 = (struct fb_cmap *)__cil_tmp600;
    fb_dealloc_cmap(__cil_tmp601);
    }
    goto aty_init_exit;
  } else {
  }
  fb_list = info;
  {
  __cil_tmp602 = (unsigned long )par;
  __cil_tmp603 = __cil_tmp602 + 1064;
  __cil_tmp604 = *((u8 *)__cil_tmp603);
  __cil_tmp605 = (int )__cil_tmp604;
  if (__cil_tmp605 == 0) {
    tmp___20 = "ISA";
  } else {
    tmp___20 = "PCI";
  }
  }
  {
  __cil_tmp606 = (unsigned long )info;
  __cil_tmp607 = __cil_tmp606 + 4;
  __cil_tmp608 = *((int *)__cil_tmp607);
  __cil_tmp609 = 0 * 1UL;
  __cil_tmp610 = 0 + __cil_tmp609;
  __cil_tmp611 = 320 + __cil_tmp610;
  __cil_tmp612 = (unsigned long )info;
  __cil_tmp613 = __cil_tmp612 + __cil_tmp611;
  __cil_tmp614 = (char *)__cil_tmp613;
  printk("<6>atyfb: fb%d: %s frame buffer device on %s\n", __cil_tmp608, __cil_tmp614,
         tmp___20);
  }
  return (0);
  aty_init_exit:
  {
  __cil_tmp615 = (struct atyfb_par *)par;
  __cil_tmp616 = (unsigned long )par;
  __cil_tmp617 = __cil_tmp616 + 1292;
  __cil_tmp618 = (struct crtc *)__cil_tmp617;
  __cil_tmp619 = (struct crtc *)__cil_tmp618;
  aty_set_crtc(__cil_tmp615, __cil_tmp619);
  __cil_tmp620 = (unsigned long )par;
  __cil_tmp621 = __cil_tmp620 + 840;
  __cil_tmp622 = *((struct aty_pll_ops **)__cil_tmp621);
  __cil_tmp623 = (unsigned long )__cil_tmp622;
  __cil_tmp624 = __cil_tmp623 + 16;
  __cil_tmp625 = *((void (* *)(struct fb_info *info , union aty_pll const *pll ))__cil_tmp624);
  __cil_tmp626 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp625;
  __cil_tmp627 = (struct fb_info *)info;
  __cil_tmp628 = (unsigned long )par;
  __cil_tmp629 = __cil_tmp628 + 1388;
  __cil_tmp630 = (union aty_pll *)__cil_tmp629;
  __cil_tmp631 = (union aty_pll *)__cil_tmp630;
  (*__cil_tmp626)(__cil_tmp627, __cil_tmp631);
  }
  {
  __cil_tmp632 = (unsigned long )par;
  __cil_tmp633 = __cil_tmp632 + 1284;
  __cil_tmp634 = *((int *)__cil_tmp633);
  if (__cil_tmp634 >= 0) {
    {
    __cil_tmp635 = (unsigned long )par;
    __cil_tmp636 = __cil_tmp635 + 1284;
    __cil_tmp637 = *((int *)__cil_tmp636);
    mtrr_del(__cil_tmp637, 0UL, 0UL);
    __cil_tmp638 = (unsigned long )par;
    __cil_tmp639 = __cil_tmp638 + 1284;
    *((int *)__cil_tmp639) = -1;
    }
  } else {
  }
  }
  {
  __cil_tmp640 = (unsigned long )par;
  __cil_tmp641 = __cil_tmp640 + 1280;
  __cil_tmp642 = *((int *)__cil_tmp641);
  if (__cil_tmp642 >= 0) {
    {
    __cil_tmp643 = (unsigned long )par;
    __cil_tmp644 = __cil_tmp643 + 1280;
    __cil_tmp645 = *((int *)__cil_tmp644);
    mtrr_del(__cil_tmp645, 0UL, 0UL);
    __cil_tmp646 = (unsigned long )par;
    __cil_tmp647 = __cil_tmp646 + 1280;
    *((int *)__cil_tmp647) = -1;
    }
  } else {
  }
  }
  return (ret);
}
}
static int atyfb_blank(int blank , struct fb_info *info )
{ struct atyfb_par *par ;
  u32 gen_cntl ;
  u32 pm ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 pm___0 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  struct atyfb_par *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct atyfb_par *__cil_tmp22 ;
  struct atyfb_par *__cil_tmp23 ;
  struct atyfb_par *__cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct atyfb_par *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  struct atyfb_par *__cil_tmp30 ;
  struct atyfb_par *__cil_tmp31 ;
  {
  __cil_tmp11 = (unsigned long )info;
  __cil_tmp12 = __cil_tmp11 + 1160;
  __cil_tmp13 = *((void **)__cil_tmp12);
  par = (struct atyfb_par *)__cil_tmp13;
  {
  __cil_tmp14 = (unsigned long )par;
  __cil_tmp15 = __cil_tmp14 + 1084;
  if (*((int *)__cil_tmp15)) {
    return (0);
  } else {
    {
    __cil_tmp16 = (unsigned long )par;
    __cil_tmp17 = __cil_tmp16 + 1080;
    if (*((int *)__cil_tmp17)) {
      return (0);
    } else {
    }
    }
  }
  }
  {
  __cil_tmp18 = (unsigned long )par;
  __cil_tmp19 = __cil_tmp18 + 1136;
  if (*((unsigned long *)__cil_tmp19)) {
    if (blank > 1) {
      {
      __cil_tmp20 = (struct atyfb_par *)par;
      tmp___8 = aty_ld_lcd(1, __cil_tmp20);
      }
      {
      __cil_tmp21 = (unsigned long )tmp___8;
      if (__cil_tmp21 & 2UL) {
        {
        __cil_tmp22 = (struct atyfb_par *)par;
        tmp___7 = aty_ld_lcd(8, __cil_tmp22);
        pm = tmp___7;
        pm = pm & 4261412863U;
        __cil_tmp23 = (struct atyfb_par *)par;
        aty_st_lcd(8, pm, __cil_tmp23);
        }
      } else {
      }
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp24 = (struct atyfb_par *)par;
  gen_cntl = aty_ld_le32(28, __cil_tmp24);
  gen_cntl = gen_cntl & 4227858355U;
  }
  if (blank == 0) {
    goto case_0;
  } else
  if (blank == 1) {
    goto case_1;
  } else
  if (blank == 2) {
    goto case_2;
  } else
  if (blank == 3) {
    goto case_3;
  } else
  if (blank == 4) {
    goto case_4;
  } else
  if (0) {
    case_0:
    goto switch_break;
    case_1:
    gen_cntl = gen_cntl | 67108928U;
    goto switch_break;
    case_2:
    gen_cntl = gen_cntl | 67108936U;
    goto switch_break;
    case_3:
    gen_cntl = gen_cntl | 67108932U;
    goto switch_break;
    case_4:
    gen_cntl = gen_cntl | 67108940U;
    goto switch_break;
  } else {
    switch_break: ;
  }
  {
  __cil_tmp25 = (struct atyfb_par *)par;
  aty_st_le32(28, gen_cntl, __cil_tmp25);
  }
  {
  __cil_tmp26 = (unsigned long )par;
  __cil_tmp27 = __cil_tmp26 + 1136;
  if (*((unsigned long *)__cil_tmp27)) {
    if (blank <= 1) {
      {
      __cil_tmp28 = (struct atyfb_par *)par;
      tmp___10 = aty_ld_lcd(1, __cil_tmp28);
      }
      {
      __cil_tmp29 = (unsigned long )tmp___10;
      if (__cil_tmp29 & 2UL) {
        {
        __cil_tmp30 = (struct atyfb_par *)par;
        tmp___9 = aty_ld_lcd(8, __cil_tmp30);
        pm___0 = tmp___9;
        pm___0 = pm___0 | 33554432U;
        __cil_tmp31 = (struct atyfb_par *)par;
        aty_st_lcd(8, pm___0, __cil_tmp31);
        }
      } else {
      }
      }
    } else {
    }
  } else {
  }
  }
  return (0);
}
}
static void aty_st_pal(u_int regno , u_int red , u_int green , u_int blue , struct atyfb_par *par )
{ u8 __cil_tmp6 ;
  u8 __cil_tmp7 ;
  u8 __cil_tmp8 ;
  u8 __cil_tmp9 ;
  {
  {
  __cil_tmp6 = (u8 )regno;
  aty_st_8(192, __cil_tmp6, par);
  __cil_tmp7 = (u8 )red;
  aty_st_8(193, __cil_tmp7, par);
  __cil_tmp8 = (u8 )green;
  aty_st_8(193, __cil_tmp8, par);
  __cil_tmp9 = (u8 )blue;
  aty_st_8(193, __cil_tmp9, par);
  }
  return;
}
}
static int atyfb_setcolreg(u_int regno , u_int red , u_int green , u_int blue , u_int transp ,
                           struct fb_info *info )
{ struct atyfb_par *par ;
  int i ;
  int depth ;
  u32 *pal ;
  u8 tmp___7 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  __u32 __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  __u32 __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  u32 *__cil_tmp43 ;
  u_int __cil_tmp44 ;
  u_int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  u32 *__cil_tmp47 ;
  u_int __cil_tmp48 ;
  u_int __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  u32 *__cil_tmp51 ;
  u_int __cil_tmp52 ;
  u_int __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  u_int __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  u32 *__cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  struct atyfb_par *__cil_tmp60 ;
  int __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  u32 __cil_tmp64 ;
  u8 __cil_tmp65 ;
  struct atyfb_par *__cil_tmp66 ;
  u8 __cil_tmp67 ;
  struct atyfb_par *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  u32 __cil_tmp71 ;
  u_int __cil_tmp72 ;
  u_int __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  u8 __cil_tmp79 ;
  u_int __cil_tmp80 ;
  struct atyfb_par *__cil_tmp81 ;
  u_int __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  u8 __cil_tmp87 ;
  u_int __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  u8 __cil_tmp94 ;
  u_int __cil_tmp95 ;
  u_int __cil_tmp96 ;
  struct atyfb_par *__cil_tmp97 ;
  struct atyfb_par *__cil_tmp98 ;
  {
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + 1160;
  __cil_tmp14 = *((void **)__cil_tmp13);
  par = (struct atyfb_par *)__cil_tmp14;
  __cil_tmp15 = (unsigned long )info;
  __cil_tmp16 = __cil_tmp15 + 1136;
  __cil_tmp17 = *((void **)__cil_tmp16);
  pal = (u32 *)__cil_tmp17;
  __cil_tmp18 = 160 + 24;
  __cil_tmp19 = (unsigned long )info;
  __cil_tmp20 = __cil_tmp19 + __cil_tmp18;
  __cil_tmp21 = *((__u32 *)__cil_tmp20);
  depth = (int )__cil_tmp21;
  if (depth == 16) {
    {
    __cil_tmp22 = 44 + 4;
    __cil_tmp23 = 160 + __cil_tmp22;
    __cil_tmp24 = (unsigned long )info;
    __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
    __cil_tmp26 = *((__u32 *)__cil_tmp25);
    if (__cil_tmp26 == 5U) {
      depth = 15;
    } else {
      depth = 16;
    }
    }
  } else {
  }
  {
  __cil_tmp27 = (unsigned long )par;
  __cil_tmp28 = __cil_tmp27 + 1080;
  if (*((int *)__cil_tmp28)) {
    return (0);
  } else {
  }
  }
  if (regno > 255U) {
    return (1);
  } else
  if (depth == 16) {
    if (regno > 63U) {
      return (1);
    } else {
      goto _L;
    }
  } else
  _L:
  if (depth == 15) {
    if (regno > 31U) {
      return (1);
    } else {
    }
  } else {
  }
  red = red >> 8;
  green = green >> 8;
  blue = blue >> 8;
  __cil_tmp29 = regno * 3UL;
  __cil_tmp30 = 64 + __cil_tmp29;
  __cil_tmp31 = (unsigned long )par;
  __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
  *((u8 *)__cil_tmp32) = (u8 )red;
  __cil_tmp33 = regno * 3UL;
  __cil_tmp34 = __cil_tmp33 + 1;
  __cil_tmp35 = 64 + __cil_tmp34;
  __cil_tmp36 = (unsigned long )par;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
  *((u8 *)__cil_tmp37) = (u8 )green;
  __cil_tmp38 = regno * 3UL;
  __cil_tmp39 = __cil_tmp38 + 2;
  __cil_tmp40 = 64 + __cil_tmp39;
  __cil_tmp41 = (unsigned long )par;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  *((u8 *)__cil_tmp42) = (u8 )blue;
  if (regno < 16U) {
    if (depth == 15) {
      goto case_15;
    } else
    if (depth == 16) {
      goto case_16;
    } else
    if (depth == 24) {
      goto case_24;
    } else
    if (depth == 32) {
      goto case_32;
    } else
    if (0) {
      case_15:
      __cil_tmp43 = pal + regno;
      __cil_tmp44 = regno << 5;
      __cil_tmp45 = regno << 10;
      __cil_tmp46 = __cil_tmp45 | __cil_tmp44;
      *__cil_tmp43 = __cil_tmp46 | regno;
      goto switch_break;
      case_16:
      __cil_tmp47 = pal + regno;
      __cil_tmp48 = regno << 5;
      __cil_tmp49 = regno << 11;
      __cil_tmp50 = __cil_tmp49 | __cil_tmp48;
      *__cil_tmp47 = __cil_tmp50 | regno;
      goto switch_break;
      case_24:
      __cil_tmp51 = pal + regno;
      __cil_tmp52 = regno << 8;
      __cil_tmp53 = regno << 16;
      __cil_tmp54 = __cil_tmp53 | __cil_tmp52;
      *__cil_tmp51 = __cil_tmp54 | regno;
      goto switch_break;
      case_32:
      __cil_tmp55 = regno << 8;
      __cil_tmp56 = __cil_tmp55 | regno;
      i = (int )__cil_tmp56;
      __cil_tmp57 = pal + regno;
      __cil_tmp58 = i << 16;
      __cil_tmp59 = __cil_tmp58 | i;
      *__cil_tmp57 = (u32 )__cil_tmp59;
      goto switch_break;
    } else {
      switch_break: ;
    }
  } else {
  }
  {
  __cil_tmp60 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_8(196, __cil_tmp60);
  __cil_tmp61 = (int )tmp___7;
  i = __cil_tmp61 & 252;
  }
  {
  __cil_tmp62 = (unsigned long )par;
  __cil_tmp63 = __cil_tmp62 + 1044;
  __cil_tmp64 = *((u32 *)__cil_tmp63);
  if (__cil_tmp64 & 131072U) {
    i = i | 2;
  } else {
  }
  }
  {
  __cil_tmp65 = (u8 )i;
  __cil_tmp66 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp65, __cil_tmp66);
  __cil_tmp67 = (u8 )255;
  __cil_tmp68 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp67, __cil_tmp68);
  }
  {
  __cil_tmp69 = (unsigned long )par;
  __cil_tmp70 = __cil_tmp69 + 1044;
  __cil_tmp71 = *((u32 *)__cil_tmp70);
  if (__cil_tmp71 & 64U) {
    if (depth == 16) {
      if (regno < 32U) {
        {
        __cil_tmp72 = regno << 3;
        __cil_tmp73 = regno << 1;
        __cil_tmp74 = __cil_tmp73 * 3UL;
        __cil_tmp75 = __cil_tmp74 + 1;
        __cil_tmp76 = 64 + __cil_tmp75;
        __cil_tmp77 = (unsigned long )par;
        __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
        __cil_tmp79 = *((u8 *)__cil_tmp78);
        __cil_tmp80 = (u_int )__cil_tmp79;
        __cil_tmp81 = (struct atyfb_par *)par;
        aty_st_pal(__cil_tmp72, red, __cil_tmp80, blue, __cil_tmp81);
        }
      } else {
      }
      __cil_tmp82 = regno >> 1;
      __cil_tmp83 = __cil_tmp82 * 3UL;
      __cil_tmp84 = 64 + __cil_tmp83;
      __cil_tmp85 = (unsigned long )par;
      __cil_tmp86 = __cil_tmp85 + __cil_tmp84;
      __cil_tmp87 = *((u8 *)__cil_tmp86);
      red = (u_int )__cil_tmp87;
      __cil_tmp88 = regno >> 1;
      __cil_tmp89 = __cil_tmp88 * 3UL;
      __cil_tmp90 = __cil_tmp89 + 2;
      __cil_tmp91 = 64 + __cil_tmp90;
      __cil_tmp92 = (unsigned long )par;
      __cil_tmp93 = __cil_tmp92 + __cil_tmp91;
      __cil_tmp94 = *((u8 *)__cil_tmp93);
      blue = (u_int )__cil_tmp94;
      regno = regno << 2;
    } else
    if (depth == 15) {
      regno = regno << 3;
      i = 0;
      {
      while (1) {
        while_continue: ;
        if (i < 8) {
        } else {
          goto while_break;
        }
        {
        __cil_tmp95 = (u_int )i;
        __cil_tmp96 = regno + __cil_tmp95;
        __cil_tmp97 = (struct atyfb_par *)par;
        aty_st_pal(__cil_tmp96, red, green, blue, __cil_tmp97);
        i = i + 1;
        }
      }
      while_break: ;
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp98 = (struct atyfb_par *)par;
  aty_st_pal(regno, red, green, blue, __cil_tmp98);
  }
  return (0);
}
}
static int atyfb_setup_generic(struct pci_dev *pdev , struct fb_info *info , unsigned long addr ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int atyfb_setup_generic(struct pci_dev *pdev , struct fb_info *info , unsigned long addr )
{ struct atyfb_par *par ;
  u16 tmp___7 ;
  unsigned long raddr ;
  struct resource *rrp ;
  int ret ;
  resource_size_t tmp___8 ;
  resource_size_t tmp___9 ;
  struct resource *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  void *tmp___13 ;
  unsigned char tmp___14 ;
  u8 tmp___15 ;
  u32 tmp___16 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct resource *__cil_tmp28 ;
  resource_size_t __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  resource_size_t __cil_tmp32 ;
  struct resource *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  resource_size_t __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  resource_size_t __cil_tmp46 ;
  void *__cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  void *__cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  void *__cil_tmp69 ;
  struct pci_dev *__cil_tmp70 ;
  u16 *__cil_tmp71 ;
  u16 __cil_tmp72 ;
  int __cil_tmp73 ;
  int __cil_tmp74 ;
  u16 *__cil_tmp75 ;
  u16 *__cil_tmp76 ;
  u16 __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  struct pci_dev *__cil_tmp80 ;
  u16 *__cil_tmp81 ;
  u16 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  resource_size_t __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  void *__cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  char *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  struct atyfb_par *__cil_tmp95 ;
  struct atyfb_par *__cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  unsigned int __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned int __cil_tmp103 ;
  unsigned int __cil_tmp104 ;
  unsigned int __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  void *__cil_tmp110 ;
  void volatile *__cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  char *__cil_tmp118 ;
  void volatile *__cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  void *__cil_tmp122 ;
  {
  __cil_tmp18 = (unsigned long )info;
  __cil_tmp19 = __cil_tmp18 + 1160;
  __cil_tmp20 = *((void **)__cil_tmp19);
  par = (struct atyfb_par *)__cil_tmp20;
  ret = 0;
  raddr = addr + 8384512UL;
  __cil_tmp21 = 2 * 56UL;
  __cil_tmp22 = 920 + __cil_tmp21;
  __cil_tmp23 = (unsigned long )pdev;
  __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
  rrp = (struct resource *)__cil_tmp24;
  {
  __cil_tmp25 = (unsigned long )rrp;
  __cil_tmp26 = __cil_tmp25 + 24;
  __cil_tmp27 = *((unsigned long *)__cil_tmp26);
  if (__cil_tmp27 & 512UL) {
    {
    __cil_tmp28 = (struct resource *)rrp;
    tmp___9 = resource_size(__cil_tmp28);
    __cil_tmp29 = *((resource_size_t *)rrp);
    tmp___10 = __request_region(& iomem_resource, __cil_tmp29, tmp___9, "atyfb", 0);
    }
    if (tmp___10) {
      {
      __cil_tmp30 = (unsigned long )par;
      __cil_tmp31 = __cil_tmp30 + 1176;
      __cil_tmp32 = *((resource_size_t *)rrp);
      *((unsigned long *)__cil_tmp31) = (unsigned long )__cil_tmp32;
      __cil_tmp33 = (struct resource *)rrp;
      tmp___8 = resource_size(__cil_tmp33);
      __cil_tmp34 = (unsigned long )par;
      __cil_tmp35 = __cil_tmp34 + 1184;
      *((unsigned long *)__cil_tmp35) = (unsigned long )tmp___8;
      __cil_tmp36 = *((resource_size_t *)rrp);
      raddr = (unsigned long )__cil_tmp36;
      printk("<6>atyfb: using auxiliary register aperture\n");
      }
    } else {
    }
  } else {
  }
  }
  {
  __cil_tmp37 = 320 + 56;
  __cil_tmp38 = (unsigned long )info;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  *((unsigned long *)__cil_tmp39) = raddr;
  __cil_tmp40 = (unsigned long )par;
  __cil_tmp41 = __cil_tmp40 + 848;
  __cil_tmp42 = 320 + 56;
  __cil_tmp43 = (unsigned long )info;
  __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
  __cil_tmp45 = *((unsigned long *)__cil_tmp44);
  __cil_tmp46 = (resource_size_t )__cil_tmp45;
  *((void **)__cil_tmp41) = ioremap(__cil_tmp46, 4096UL);
  }
  {
  __cil_tmp47 = (void *)0;
  __cil_tmp48 = (unsigned long )__cil_tmp47;
  __cil_tmp49 = (unsigned long )par;
  __cil_tmp50 = __cil_tmp49 + 848;
  __cil_tmp51 = *((void **)__cil_tmp50);
  __cil_tmp52 = (unsigned long )__cil_tmp51;
  if (__cil_tmp52 == __cil_tmp48) {
    return (-12);
  } else {
  }
  }
  {
  __cil_tmp53 = (unsigned long )par;
  __cil_tmp54 = __cil_tmp53 + 1176;
  if (*((unsigned long *)__cil_tmp54)) {
    tmp___11 = 1024;
  } else {
    tmp___11 = 3072;
  }
  }
  __cil_tmp55 = 320 + 56;
  __cil_tmp56 = (unsigned long )info;
  __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
  __cil_tmp58 = (unsigned long )tmp___11;
  __cil_tmp59 = 320 + 56;
  __cil_tmp60 = (unsigned long )info;
  __cil_tmp61 = __cil_tmp60 + __cil_tmp59;
  __cil_tmp62 = *((unsigned long *)__cil_tmp61);
  *((unsigned long *)__cil_tmp57) = __cil_tmp62 + __cil_tmp58;
  {
  __cil_tmp63 = (unsigned long )par;
  __cil_tmp64 = __cil_tmp63 + 1176;
  if (*((unsigned long *)__cil_tmp64)) {
    tmp___12 = 1024;
  } else {
    tmp___12 = 3072;
  }
  }
  {
  __cil_tmp65 = (unsigned long )par;
  __cil_tmp66 = __cil_tmp65 + 848;
  __cil_tmp67 = (unsigned long )par;
  __cil_tmp68 = __cil_tmp67 + 848;
  __cil_tmp69 = *((void **)__cil_tmp68);
  *((void **)__cil_tmp66) = __cil_tmp69 + tmp___12;
  __cil_tmp70 = (struct pci_dev *)pdev;
  pci_read_config_word(__cil_tmp70, 4, & tmp___7);
  }
  {
  __cil_tmp71 = & tmp___7;
  __cil_tmp72 = *__cil_tmp71;
  __cil_tmp73 = (int )__cil_tmp72;
  __cil_tmp74 = __cil_tmp73 & 2;
  if (! __cil_tmp74) {
    {
    __cil_tmp75 = & tmp___7;
    __cil_tmp76 = & tmp___7;
    __cil_tmp77 = *__cil_tmp76;
    __cil_tmp78 = (int )__cil_tmp77;
    __cil_tmp79 = __cil_tmp78 | 2;
    *__cil_tmp75 = (u16 )__cil_tmp79;
    __cil_tmp80 = (struct pci_dev *)pdev;
    __cil_tmp81 = & tmp___7;
    __cil_tmp82 = *__cil_tmp81;
    pci_write_config_word(__cil_tmp80, 4, __cil_tmp82);
    }
  } else {
  }
  }
  {
  __cil_tmp83 = 320 + 16;
  __cil_tmp84 = (unsigned long )info;
  __cil_tmp85 = __cil_tmp84 + __cil_tmp83;
  *((unsigned long *)__cil_tmp85) = addr;
  __cil_tmp86 = (resource_size_t )addr;
  tmp___13 = ioremap(__cil_tmp86, 8388608UL);
  __cil_tmp87 = (unsigned long )info;
  __cil_tmp88 = __cil_tmp87 + 1120;
  *((char **)__cil_tmp88) = (char *)tmp___13;
  }
  {
  __cil_tmp89 = (void *)0;
  __cil_tmp90 = (unsigned long )__cil_tmp89;
  __cil_tmp91 = (unsigned long )info;
  __cil_tmp92 = __cil_tmp91 + 1120;
  __cil_tmp93 = *((char **)__cil_tmp92);
  __cil_tmp94 = (unsigned long )__cil_tmp93;
  if (__cil_tmp94 == __cil_tmp90) {
    ret = -12;
    goto atyfb_setup_generic_fail;
  } else {
  }
  }
  {
  ret = correct_chipset(par);
  }
  if (ret) {
    goto atyfb_setup_generic_fail;
  } else {
  }
  {
  __cil_tmp95 = (struct atyfb_par *)par;
  tmp___16 = aty_ld_le32(28, __cil_tmp95);
  }
  if (tmp___16 & 16777216U) {
    {
    __cil_tmp96 = (struct atyfb_par *)par;
    tmp___15 = aty_ld_8(144, __cil_tmp96);
    __cil_tmp97 = (unsigned long )par;
    __cil_tmp98 = __cil_tmp97 + 856;
    __cil_tmp99 = (unsigned int )tmp___15;
    __cil_tmp100 = __cil_tmp99 & 3U;
    *((unsigned long *)__cil_tmp98) = (unsigned long )__cil_tmp100;
    }
  } else {
    {
    tmp___14 = inb(972);
    __cil_tmp101 = (unsigned long )par;
    __cil_tmp102 = __cil_tmp101 + 856;
    __cil_tmp103 = (unsigned int )tmp___14;
    __cil_tmp104 = __cil_tmp103 & 12U;
    __cil_tmp105 = __cil_tmp104 >> 2;
    *((unsigned long *)__cil_tmp102) = (unsigned long )__cil_tmp105;
    }
  }
  __cil_tmp106 = (unsigned long )par;
  __cil_tmp107 = __cil_tmp106 + 856;
  *((unsigned long *)__cil_tmp107) = 3UL;
  return (0);
  atyfb_setup_generic_fail:
  {
  __cil_tmp108 = (unsigned long )par;
  __cil_tmp109 = __cil_tmp108 + 848;
  __cil_tmp110 = *((void **)__cil_tmp109);
  __cil_tmp111 = (void volatile *)__cil_tmp110;
  iounmap(__cil_tmp111);
  __cil_tmp112 = (unsigned long )par;
  __cil_tmp113 = __cil_tmp112 + 848;
  *((void **)__cil_tmp113) = (void *)0;
  }
  {
  __cil_tmp114 = (unsigned long )info;
  __cil_tmp115 = __cil_tmp114 + 1120;
  if (*((char **)__cil_tmp115)) {
    {
    __cil_tmp116 = (unsigned long )info;
    __cil_tmp117 = __cil_tmp116 + 1120;
    __cil_tmp118 = *((char **)__cil_tmp117);
    __cil_tmp119 = (void volatile *)__cil_tmp118;
    iounmap(__cil_tmp119);
    __cil_tmp120 = (unsigned long )info;
    __cil_tmp121 = __cil_tmp120 + 1120;
    __cil_tmp122 = (void *)0;
    *((char **)__cil_tmp121) = (char *)__cil_tmp122;
    }
  } else {
  }
  }
  return (ret);
}
}
static int atyfb_pci_probe(struct pci_dev *pdev , struct pci_device_id *ent ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int atyfb_pci_probe(struct pci_dev *pdev , struct pci_device_id *ent )
{ unsigned long addr ;
  unsigned long res_start ;
  unsigned long res_size ;
  struct fb_info *info ;
  struct resource *rp ;
  struct atyfb_par *par ;
  int rc ;
  int tmp___7 ;
  resource_size_t tmp___8 ;
  struct resource *tmp___9 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  resource_size_t __cil_tmp24 ;
  resource_size_t __cil_tmp25 ;
  struct resource *__cil_tmp26 ;
  resource_size_t __cil_tmp27 ;
  resource_size_t __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  struct device *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  void *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  void *__cil_tmp60 ;
  void volatile *__cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  char *__cil_tmp66 ;
  void volatile *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  resource_size_t __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  resource_size_t __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  resource_size_t __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  resource_size_t __cil_tmp85 ;
  {
  {
  rc = -12;
  tmp___7 = (int )pci_enable_device(pdev);
  }
  if (tmp___7) {
    {
    printk("<3>atyfb: Cannot enable PCI device\n");
    }
    return (-6);
  } else {
  }
  __cil_tmp13 = 0 * 56UL;
  __cil_tmp14 = 920 + __cil_tmp13;
  __cil_tmp15 = (unsigned long )pdev;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
  rp = (struct resource *)__cil_tmp16;
  {
  __cil_tmp17 = (unsigned long )rp;
  __cil_tmp18 = __cil_tmp17 + 24;
  __cil_tmp19 = *((unsigned long *)__cil_tmp18);
  if (__cil_tmp19 & 256UL) {
    __cil_tmp20 = 1 * 56UL;
    __cil_tmp21 = 920 + __cil_tmp20;
    __cil_tmp22 = (unsigned long )pdev;
    __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
    rp = (struct resource *)__cil_tmp23;
  } else {
  }
  }
  __cil_tmp24 = *((resource_size_t *)rp);
  addr = (unsigned long )__cil_tmp24;
  if (! addr) {
    return (-6);
  } else {
  }
  {
  __cil_tmp25 = *((resource_size_t *)rp);
  res_start = (unsigned long )__cil_tmp25;
  __cil_tmp26 = (struct resource *)rp;
  tmp___8 = resource_size(__cil_tmp26);
  res_size = (unsigned long )tmp___8;
  __cil_tmp27 = (resource_size_t )res_start;
  __cil_tmp28 = (resource_size_t )res_size;
  tmp___9 = __request_region(& iomem_resource, __cil_tmp27, __cil_tmp28, "atyfb",
                             0);
  }
  if (tmp___9) {
  } else {
    return (-16);
  }
  {
  __cil_tmp29 = (unsigned long )pdev;
  __cil_tmp30 = __cil_tmp29 + 144;
  __cil_tmp31 = (struct device *)__cil_tmp30;
  info = framebuffer_alloc(1440UL, __cil_tmp31);
  }
  if (! info) {
    {
    printk("<3>atyfb: atyfb_pci_probe() can\'t alloc fb_info\n");
    }
    return (-12);
  } else {
  }
  {
  __cil_tmp32 = (unsigned long )info;
  __cil_tmp33 = __cil_tmp32 + 1160;
  __cil_tmp34 = *((void **)__cil_tmp33);
  par = (struct atyfb_par *)__cil_tmp34;
  __cil_tmp35 = (unsigned long )info;
  __cil_tmp36 = __cil_tmp35 + 320;
  *((struct fb_fix_screeninfo *)__cil_tmp36) = atyfb_fix;
  __cil_tmp37 = (unsigned long )info;
  __cil_tmp38 = __cil_tmp37 + 1088;
  __cil_tmp39 = (unsigned long )pdev;
  __cil_tmp40 = __cil_tmp39 + 144;
  *((struct device **)__cil_tmp38) = (struct device *)__cil_tmp40;
  __cil_tmp41 = (unsigned long )par;
  __cil_tmp42 = __cil_tmp41 + 1068;
  __cil_tmp43 = (unsigned long )pdev;
  __cil_tmp44 = __cil_tmp43 + 62;
  *((u16 *)__cil_tmp42) = *((unsigned short *)__cil_tmp44);
  __cil_tmp45 = (unsigned long )par;
  __cil_tmp46 = __cil_tmp45 + 1088;
  *((unsigned long *)__cil_tmp46) = res_start;
  __cil_tmp47 = (unsigned long )par;
  __cil_tmp48 = __cil_tmp47 + 1096;
  *((unsigned long *)__cil_tmp48) = res_size;
  __cil_tmp49 = (unsigned long )par;
  __cil_tmp50 = __cil_tmp49 + 1248;
  __cil_tmp51 = (unsigned long )pdev;
  __cil_tmp52 = __cil_tmp51 + 916;
  *((unsigned int *)__cil_tmp50) = *((unsigned int *)__cil_tmp52);
  __cil_tmp53 = (unsigned long )par;
  __cil_tmp54 = __cil_tmp53 + 1104;
  *((struct pci_dev **)__cil_tmp54) = pdev;
  rc = atyfb_setup_generic(pdev, info, addr);
  }
  if (rc) {
    goto err_release_mem;
  } else {
  }
  {
  __cil_tmp55 = (void *)info;
  pci_set_drvdata(pdev, __cil_tmp55);
  rc = aty_init(info);
  }
  if (rc) {
    goto err_release_io;
  } else {
  }
  {
  mutex_lock(& reboot_lock);
  }
  if (! reboot_info) {
    reboot_info = info;
  } else {
  }
  {
  mutex_unlock(& reboot_lock);
  }
  return (0);
  err_release_io:
  {
  __cil_tmp56 = (unsigned long )par;
  __cil_tmp57 = __cil_tmp56 + 848;
  if (*((void **)__cil_tmp57)) {
    {
    __cil_tmp58 = (unsigned long )par;
    __cil_tmp59 = __cil_tmp58 + 848;
    __cil_tmp60 = *((void **)__cil_tmp59);
    __cil_tmp61 = (void volatile *)__cil_tmp60;
    iounmap(__cil_tmp61);
    }
  } else {
  }
  }
  {
  __cil_tmp62 = (unsigned long )info;
  __cil_tmp63 = __cil_tmp62 + 1120;
  if (*((char **)__cil_tmp63)) {
    {
    __cil_tmp64 = (unsigned long )info;
    __cil_tmp65 = __cil_tmp64 + 1120;
    __cil_tmp66 = *((char **)__cil_tmp65);
    __cil_tmp67 = (void volatile *)__cil_tmp66;
    iounmap(__cil_tmp67);
    }
  } else {
  }
  }
  err_release_mem:
  {
  __cil_tmp68 = (unsigned long )par;
  __cil_tmp69 = __cil_tmp68 + 1176;
  if (*((unsigned long *)__cil_tmp69)) {
    {
    __cil_tmp70 = (unsigned long )par;
    __cil_tmp71 = __cil_tmp70 + 1176;
    __cil_tmp72 = *((unsigned long *)__cil_tmp71);
    __cil_tmp73 = (resource_size_t )__cil_tmp72;
    __cil_tmp74 = (unsigned long )par;
    __cil_tmp75 = __cil_tmp74 + 1184;
    __cil_tmp76 = *((unsigned long *)__cil_tmp75);
    __cil_tmp77 = (resource_size_t )__cil_tmp76;
    __release_region(& iomem_resource, __cil_tmp73, __cil_tmp77);
    }
  } else {
  }
  }
  {
  __cil_tmp78 = (unsigned long )par;
  __cil_tmp79 = __cil_tmp78 + 1088;
  __cil_tmp80 = *((unsigned long *)__cil_tmp79);
  __cil_tmp81 = (resource_size_t )__cil_tmp80;
  __cil_tmp82 = (unsigned long )par;
  __cil_tmp83 = __cil_tmp82 + 1096;
  __cil_tmp84 = *((unsigned long *)__cil_tmp83);
  __cil_tmp85 = (resource_size_t )__cil_tmp84;
  __release_region(& iomem_resource, __cil_tmp81, __cil_tmp85);
  framebuffer_release(info);
  }
  return (rc);
}
}
static void atyfb_remove(struct fb_info *info ) __attribute__((__section__(".devexit.text"),
__no_instrument_function__)) ;
static void atyfb_remove(struct fb_info *info )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  void *__cil_tmp5 ;
  struct atyfb_par *__cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  struct crtc *__cil_tmp9 ;
  struct crtc *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  struct aty_pll_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void (* __cil_tmp16)(struct fb_info *info , union aty_pll const *pll ) ;
  void (*__cil_tmp17)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  union aty_pll *__cil_tmp21 ;
  union aty_pll *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct backlight_device *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  void *__cil_tmp49 ;
  void volatile *__cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  char *__cil_tmp55 ;
  void volatile *__cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  resource_size_t __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  resource_size_t __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  resource_size_t __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  resource_size_t __cil_tmp76 ;
  {
  {
  __cil_tmp3 = (unsigned long )info;
  __cil_tmp4 = __cil_tmp3 + 1160;
  __cil_tmp5 = *((void **)__cil_tmp4);
  par = (struct atyfb_par *)__cil_tmp5;
  __cil_tmp6 = (struct atyfb_par *)par;
  __cil_tmp7 = (unsigned long )par;
  __cil_tmp8 = __cil_tmp7 + 1292;
  __cil_tmp9 = (struct crtc *)__cil_tmp8;
  __cil_tmp10 = (struct crtc *)__cil_tmp9;
  aty_set_crtc(__cil_tmp6, __cil_tmp10);
  __cil_tmp11 = (unsigned long )par;
  __cil_tmp12 = __cil_tmp11 + 840;
  __cil_tmp13 = *((struct aty_pll_ops **)__cil_tmp12);
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 + 16;
  __cil_tmp16 = *((void (* *)(struct fb_info *info , union aty_pll const *pll ))__cil_tmp15);
  __cil_tmp17 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp16;
  __cil_tmp18 = (struct fb_info *)info;
  __cil_tmp19 = (unsigned long )par;
  __cil_tmp20 = __cil_tmp19 + 1388;
  __cil_tmp21 = (union aty_pll *)__cil_tmp20;
  __cil_tmp22 = (union aty_pll *)__cil_tmp21;
  (*__cil_tmp17)(__cil_tmp18, __cil_tmp22);
  unregister_framebuffer(info);
  }
  {
  __cil_tmp23 = (unsigned long )par;
  __cil_tmp24 = __cil_tmp23 + 1044;
  __cil_tmp25 = *((u32 *)__cil_tmp24);
  if (__cil_tmp25 & 512U) {
    {
    __cil_tmp26 = (unsigned long )info;
    __cil_tmp27 = __cil_tmp26 + 752;
    __cil_tmp28 = *((struct backlight_device **)__cil_tmp27);
    aty_bl_exit(__cil_tmp28);
    }
  } else {
  }
  }
  {
  __cil_tmp29 = (unsigned long )par;
  __cil_tmp30 = __cil_tmp29 + 1284;
  __cil_tmp31 = *((int *)__cil_tmp30);
  if (__cil_tmp31 >= 0) {
    {
    __cil_tmp32 = (unsigned long )par;
    __cil_tmp33 = __cil_tmp32 + 1284;
    __cil_tmp34 = *((int *)__cil_tmp33);
    mtrr_del(__cil_tmp34, 0UL, 0UL);
    __cil_tmp35 = (unsigned long )par;
    __cil_tmp36 = __cil_tmp35 + 1284;
    *((int *)__cil_tmp36) = -1;
    }
  } else {
  }
  }
  {
  __cil_tmp37 = (unsigned long )par;
  __cil_tmp38 = __cil_tmp37 + 1280;
  __cil_tmp39 = *((int *)__cil_tmp38);
  if (__cil_tmp39 >= 0) {
    {
    __cil_tmp40 = (unsigned long )par;
    __cil_tmp41 = __cil_tmp40 + 1280;
    __cil_tmp42 = *((int *)__cil_tmp41);
    mtrr_del(__cil_tmp42, 0UL, 0UL);
    __cil_tmp43 = (unsigned long )par;
    __cil_tmp44 = __cil_tmp43 + 1280;
    *((int *)__cil_tmp44) = -1;
    }
  } else {
  }
  }
  {
  __cil_tmp45 = (unsigned long )par;
  __cil_tmp46 = __cil_tmp45 + 848;
  if (*((void **)__cil_tmp46)) {
    {
    __cil_tmp47 = (unsigned long )par;
    __cil_tmp48 = __cil_tmp47 + 848;
    __cil_tmp49 = *((void **)__cil_tmp48);
    __cil_tmp50 = (void volatile *)__cil_tmp49;
    iounmap(__cil_tmp50);
    }
  } else {
  }
  }
  {
  __cil_tmp51 = (unsigned long )info;
  __cil_tmp52 = __cil_tmp51 + 1120;
  if (*((char **)__cil_tmp52)) {
    {
    __cil_tmp53 = (unsigned long )info;
    __cil_tmp54 = __cil_tmp53 + 1120;
    __cil_tmp55 = *((char **)__cil_tmp54);
    __cil_tmp56 = (void volatile *)__cil_tmp55;
    iounmap(__cil_tmp56);
    }
  } else {
  }
  }
  {
  __cil_tmp57 = (unsigned long )par;
  __cil_tmp58 = __cil_tmp57 + 1176;
  if (*((unsigned long *)__cil_tmp58)) {
    {
    __cil_tmp59 = (unsigned long )par;
    __cil_tmp60 = __cil_tmp59 + 1176;
    __cil_tmp61 = *((unsigned long *)__cil_tmp60);
    __cil_tmp62 = (resource_size_t )__cil_tmp61;
    __cil_tmp63 = (unsigned long )par;
    __cil_tmp64 = __cil_tmp63 + 1184;
    __cil_tmp65 = *((unsigned long *)__cil_tmp64);
    __cil_tmp66 = (resource_size_t )__cil_tmp65;
    __release_region(& iomem_resource, __cil_tmp62, __cil_tmp66);
    }
  } else {
  }
  }
  {
  __cil_tmp67 = (unsigned long )par;
  __cil_tmp68 = __cil_tmp67 + 1088;
  if (*((unsigned long *)__cil_tmp68)) {
    {
    __cil_tmp69 = (unsigned long )par;
    __cil_tmp70 = __cil_tmp69 + 1088;
    __cil_tmp71 = *((unsigned long *)__cil_tmp70);
    __cil_tmp72 = (resource_size_t )__cil_tmp71;
    __cil_tmp73 = (unsigned long )par;
    __cil_tmp74 = __cil_tmp73 + 1096;
    __cil_tmp75 = *((unsigned long *)__cil_tmp74);
    __cil_tmp76 = (resource_size_t )__cil_tmp75;
    __release_region(& iomem_resource, __cil_tmp72, __cil_tmp76);
    }
  } else {
  }
  }
  {
  framebuffer_release(info);
  }
  return;
}
}
static void atyfb_pci_remove(struct pci_dev *pdev ) __attribute__((__section__(".devexit.text"),
__no_instrument_function__)) ;
static void atyfb_pci_remove(struct pci_dev *pdev )
{ struct fb_info *info ;
  void *tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void *__cil_tmp6 ;
  {
  {
  tmp___7 = pci_get_drvdata(pdev);
  info = (struct fb_info *)tmp___7;
  mutex_lock(& reboot_lock);
  }
  {
  __cil_tmp4 = (unsigned long )info;
  __cil_tmp5 = (unsigned long )reboot_info;
  if (__cil_tmp5 == __cil_tmp4) {
    __cil_tmp6 = (void *)0;
    reboot_info = (struct fb_info *)__cil_tmp6;
  } else {
  }
  }
  {
  mutex_unlock(& reboot_lock);
  atyfb_remove(info);
  }
  return;
}
}
static struct pci_device_id atyfb_pci_tbl[35] =
  { {(__u32 )4098, (__u32 )18264, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )17240, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )17236, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )17748, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19540, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )22100, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18260, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )22101, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18261, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19527, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )22102, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18262, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18263, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18265, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18266, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18242, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18244, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18249, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18256, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18257, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19522, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19524, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19529, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19536, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19537, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18253, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18254, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18255, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18252, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18258, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )18259, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19533, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19534, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19538, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL},
        {(__u32 )4098, (__u32 )19539, (__u32 )(~ 0), (__u32 )(~ 0), 0U, 0U, 0UL}};
extern struct pci_device_id __mod_pci_device_table __attribute__((__unused__,
__alias__("atyfb_pci_tbl"))) ;
static struct pci_driver atyfb_driver =
     {{(struct list_head *)0, (struct list_head *)0}, "atyfb", (struct pci_device_id *)(atyfb_pci_tbl),
    & atyfb_pci_probe, & atyfb_pci_remove, & atyfb_pci_suspend, (int (*)(struct pci_dev *dev ,
                                                                         pm_message_t state ))0,
    (int (*)(struct pci_dev *dev ))0, & atyfb_pci_resume, (void (*)(struct pci_dev *dev ))0,
    (struct pci_error_handlers *)0, {(char *)0, (struct bus_type *)0, (struct module *)0,
                                     (char *)0, (_Bool)0, (struct of_device_id *)0,
                                     (int (*)(struct device *dev ))0, (int (*)(struct device *dev ))0,
                                     (void (*)(struct device *dev ))0, (int (*)(struct device *dev ,
                                                                                pm_message_t state ))0,
                                     (int (*)(struct device *dev ))0, (struct attribute_group **)0,
                                     (struct dev_pm_ops *)0, (struct driver_private *)0},
    {{{{{{0U}}, 0U, 0U, (void *)0}}}, {(struct list_head *)0, (struct list_head *)0}}};
static int atyfb_reboot_notify(struct notifier_block *nb , unsigned long code , void *unused )
{ struct atyfb_par *par ;
  int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void *__cil_tmp8 ;
  struct atyfb_par *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  struct crtc *__cil_tmp12 ;
  struct crtc *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  struct aty_pll_ops *__cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void (* __cil_tmp19)(struct fb_info *info , union aty_pll const *pll ) ;
  void (*__cil_tmp20)(struct fb_info *info , union aty_pll *pll ) ;
  struct fb_info *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  union aty_pll *__cil_tmp24 ;
  union aty_pll *__cil_tmp25 ;
  {
  if (code != 1UL) {
    return (0);
  } else {
  }
  {
  mutex_lock(& reboot_lock);
  }
  if (! reboot_info) {
    goto out;
  } else {
  }
  {
  tmp___7 = lock_fb_info(reboot_info);
  }
  if (tmp___7) {
  } else {
    goto out;
  }
  {
  __cil_tmp6 = (unsigned long )reboot_info;
  __cil_tmp7 = __cil_tmp6 + 1160;
  __cil_tmp8 = *((void **)__cil_tmp7);
  par = (struct atyfb_par *)__cil_tmp8;
  __cil_tmp9 = (struct atyfb_par *)par;
  __cil_tmp10 = (unsigned long )par;
  __cil_tmp11 = __cil_tmp10 + 1292;
  __cil_tmp12 = (struct crtc *)__cil_tmp11;
  __cil_tmp13 = (struct crtc *)__cil_tmp12;
  aty_set_crtc(__cil_tmp9, __cil_tmp13);
  __cil_tmp14 = (unsigned long )par;
  __cil_tmp15 = __cil_tmp14 + 840;
  __cil_tmp16 = *((struct aty_pll_ops **)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = __cil_tmp17 + 16;
  __cil_tmp19 = *((void (* *)(struct fb_info *info , union aty_pll const *pll ))__cil_tmp18);
  __cil_tmp20 = (void (*)(struct fb_info *info , union aty_pll *pll ))__cil_tmp19;
  __cil_tmp21 = (struct fb_info *)reboot_info;
  __cil_tmp22 = (unsigned long )par;
  __cil_tmp23 = __cil_tmp22 + 1388;
  __cil_tmp24 = (union aty_pll *)__cil_tmp23;
  __cil_tmp25 = (union aty_pll *)__cil_tmp24;
  (*__cil_tmp20)(__cil_tmp21, __cil_tmp25);
  unlock_fb_info(reboot_info);
  }
  out:
  {
  mutex_unlock(& reboot_lock);
  }
  return (0);
}
}
static struct notifier_block atyfb_reboot_notifier = {& atyfb_reboot_notify, (struct notifier_block *)0, 0};
static struct dmi_system_id atyfb_reboot_ids[1] = { {(int (*)(struct dmi_system_id * ))0, "HP OmniBook 500", {{(unsigned char)4,
                                                                        {(char )'H',
                                                                         (char )'e',
                                                                         (char )'w',
                                                                         (char )'l',
                                                                         (char )'e',
                                                                         (char )'t',
                                                                         (char )'t',
                                                                         (char )'-',
                                                                         (char )'P',
                                                                         (char )'a',
                                                                         (char )'c',
                                                                         (char )'k',
                                                                         (char )'a',
                                                                         (char )'r',
                                                                         (char )'d',
                                                                         (char )'\000'}},
                                                                       {(unsigned char)5,
                                                                        {(char )'H',
                                                                         (char )'P',
                                                                         (char )' ',
                                                                         (char )'O',
                                                                         (char )'m',
                                                                         (char )'n',
                                                                         (char )'i',
                                                                         (char )'B',
                                                                         (char )'o',
                                                                         (char )'o',
                                                                         (char )'k',
                                                                         (char )' ',
                                                                         (char )'P',
                                                                         (char )'C',
                                                                         (char )'\000'}},
                                                                       {(unsigned char)6,
                                                                        {(char )'H',
                                                                         (char )'P',
                                                                         (char )' ',
                                                                         (char )'O',
                                                                         (char )'m',
                                                                         (char )'n',
                                                                         (char )'i',
                                                                         (char )'B',
                                                                         (char )'o',
                                                                         (char )'o',
                                                                         (char )'k',
                                                                         (char )' ',
                                                                         (char )'5',
                                                                         (char )'0',
                                                                         (char )'0',
                                                                         (char )' ',
                                                                         (char )'F',
                                                                         (char )'A',
                                                                         (char )'\000'}},
                                                                       {(unsigned char)0,
                                                                        {(char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0,
                                                                         (char)0}}},
      (void *)0}};
static int atyfb_init(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int atyfb_init(void)
{ int err1 ;
  int err2 ;
  int tmp___7 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  struct dmi_system_id *__cil_tmp6 ;
  {
  {
  err1 = 1;
  err2 = 1;
  err1 = (int )__pci_register_driver(& atyfb_driver, & __this_module, "atyfb");
  }
  if (err1) {
    if (err2) {
      return (-19);
    } else {
    }
  } else {
  }
  {
  __cil_tmp4 = 0 * 344UL;
  __cil_tmp5 = (unsigned long )(atyfb_reboot_ids) + __cil_tmp4;
  __cil_tmp6 = (struct dmi_system_id *)__cil_tmp5;
  tmp___7 = dmi_check_system(__cil_tmp6);
  }
  if (tmp___7) {
    {
    register_reboot_notifier(& atyfb_reboot_notifier);
    }
  } else {
  }
  return (0);
}
}
static void atyfb_exit(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void atyfb_exit(void)
{ int tmp___7 ;
  unsigned long __cil_tmp2 ;
  unsigned long __cil_tmp3 ;
  struct dmi_system_id *__cil_tmp4 ;
  {
  {
  __cil_tmp2 = 0 * 344UL;
  __cil_tmp3 = (unsigned long )(atyfb_reboot_ids) + __cil_tmp2;
  __cil_tmp4 = (struct dmi_system_id *)__cil_tmp3;
  tmp___7 = dmi_check_system(__cil_tmp4);
  }
  if (tmp___7) {
    {
    unregister_reboot_notifier(& atyfb_reboot_notifier);
    }
  } else {
  }
  {
  pci_unregister_driver(& atyfb_driver);
  }
  return;
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = atyfb_init();
  }
  return (tmp___7);
}
}
void cleanup_module(void)
{
  {
  {
  atyfb_exit();
  }
  return;
}
}
static char __mod_description4013[46] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'d', (char )'e', (char const )'s', (char const )'c',
        (char )'r', (char )'i', (char const )'p', (char const )'t',
        (char )'i', (char )'o', (char const )'n', (char const )'=',
        (char )'F', (char )'B', (char const )'D', (char const )'e',
        (char )'v', (char )' ', (char const )'d', (char const )'r',
        (char )'i', (char )'v', (char const )'e', (char const )'r',
        (char )' ', (char )'f', (char const )'o', (char const )'r',
        (char )' ', (char )'A', (char const )'T', (char const )'I',
        (char )' ', (char )'M', (char const )'a', (char const )'c',
        (char )'h', (char )'6', (char const )'4', (char const )' ',
        (char )'c', (char )'a', (char const )'r', (char const )'d',
        (char )'s', (char )'\000'};
static char __mod_license4014[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'l', (char )'i', (char const )'c', (char const )'e',
        (char )'n', (char )'s', (char const )'e', (char const )'=',
        (char )'G', (char )'P', (char const )'L', (char const )'\000'};
static char __param_str_noaccel[8] =
  { (char )'n', (char )'o', (char const )'a', (char const )'c',
        (char )'c', (char )'e', (char const )'l', (char const )'\000'};
static struct kernel_param __param_noaccel __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_noaccel, (struct kernel_param_ops *)(& param_ops_bool), (u16 )0,
    (s16 )0, {(void *)(& noaccel)}};
static char __mod_noacceltype4015[22] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'n', (char const )'o', (char const )'a',
        (char )'c', (char )'c', (char const )'e', (char const )'l',
        (char )':', (char )'b', (char const )'o', (char const )'o',
        (char )'l', (char )'\000'};
static char __mod_noaccel4016[40] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'n', (char const )'o', (char const )'a',
        (char )'c', (char )'c', (char const )'e', (char const )'l',
        (char )':', (char )'b', (char const )'o', (char const )'o',
        (char )'l', (char )':', (char const )' ', (char const )'d',
        (char )'i', (char )'s', (char const )'a', (char const )'b',
        (char )'l', (char )'e', (char const )' ', (char const )'a',
        (char )'c', (char )'c', (char const )'e', (char const )'l',
        (char )'e', (char )'r', (char const )'a', (char const )'t',
        (char )'i', (char )'o', (char const )'n', (char const )'\000'};
static char __param_str_vram[5] = { (char )'v', (char const )'r', (char const )'a', (char const )'m',
        (char )'\000'};
static struct kernel_param __param_vram __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_vram, (struct kernel_param_ops *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& vram)}};
static char __mod_vramtype4017[18] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'v', (char const )'r', (char const )'a',
        (char )'m', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )'\000'};
static char __mod_vram4018[42] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'v', (char const )'r', (char const )'a',
        (char )'m', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )':', (char const )' ', (char const )'o',
        (char )'v', (char )'e', (char const )'r', (char const )'r',
        (char )'i', (char )'d', (char const )'e', (char const )' ',
        (char )'s', (char )'i', (char const )'z', (char const )'e',
        (char )' ', (char )'o', (char const )'f', (char const )' ',
        (char )'v', (char )'i', (char const )'d', (char const )'e',
        (char )'o', (char )' ', (char const )'r', (char const )'a',
        (char )'m', (char )'\000'};
static char __param_str_pll[4] = { (char )'p', (char const )'l', (char const )'l', (char const )'\000'};
static struct kernel_param __param_pll __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_pll, (struct kernel_param_ops *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& pll)}};
static char __mod_plltype4019[17] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'p', (char const )'l', (char const )'l',
        (char )':', (char )'i', (char const )'n', (char const )'t',
        (char )'\000'};
static char __mod_pll4020[35] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'p', (char const )'l', (char const )'l',
        (char )':', (char )'i', (char const )'n', (char const )'t',
        (char )':', (char )' ', (char const )'o', (char const )'v',
        (char )'e', (char )'r', (char const )'r', (char const )'i',
        (char )'d', (char )'e', (char const )' ', (char const )'v',
        (char )'i', (char )'d', (char const )'e', (char const )'o',
        (char )' ', (char )'c', (char const )'l', (char const )'o',
        (char )'c', (char )'k', (char const )'\000'};
static char __param_str_mclk[5] = { (char )'m', (char const )'c', (char const )'l', (char const )'k',
        (char )'\000'};
static struct kernel_param __param_mclk __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_mclk, (struct kernel_param_ops *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& mclk)}};
static char __mod_mclktype4021[18] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'m', (char const )'c', (char const )'l',
        (char )'k', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )'\000'};
static char __mod_mclk4022[37] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'m', (char const )'c', (char const )'l',
        (char )'k', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )':', (char const )' ', (char const )'o',
        (char )'v', (char )'e', (char const )'r', (char const )'r',
        (char )'i', (char )'d', (char const )'e', (char const )' ',
        (char )'m', (char )'e', (char const )'m', (char const )'o',
        (char )'r', (char )'y', (char const )' ', (char const )'c',
        (char )'l', (char )'o', (char const )'c', (char const )'k',
        (char )'\000'};
static char __param_str_xclk[5] = { (char )'x', (char const )'c', (char const )'l', (char const )'k',
        (char )'\000'};
static struct kernel_param __param_xclk __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_xclk, (struct kernel_param_ops *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& xclk)}};
static char __mod_xclktype4023[18] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'x', (char const )'c', (char const )'l',
        (char )'k', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )'\000'};
static char __mod_xclk4024[49] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'x', (char const )'c', (char const )'l',
        (char )'k', (char )':', (char const )'i', (char const )'n',
        (char )'t', (char )':', (char const )' ', (char const )'o',
        (char )'v', (char )'e', (char const )'r', (char const )'r',
        (char )'i', (char )'d', (char const )'e', (char const )' ',
        (char )'a', (char )'c', (char const )'c', (char const )'e',
        (char )'l', (char )'e', (char const )'r', (char const )'a',
        (char )'t', (char )'e', (char const )'d', (char const )' ',
        (char )'e', (char )'n', (char const )'g', (char const )'i',
        (char )'n', (char )'e', (char const )' ', (char const )'c',
        (char )'l', (char )'o', (char const )'c', (char const )'k',
        (char )'\000'};
static char __param_str_comp_sync[10] =
  { (char )'c', (char )'o', (char const )'m', (char const )'p',
        (char )'_', (char )'s', (char const )'y', (char const )'n',
        (char )'c', (char )'\000'};
static struct kernel_param __param_comp_sync __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_comp_sync, (struct kernel_param_ops *)(& param_ops_int), (u16 )0,
    (s16 )0, {(void *)(& comp_sync)}};
static char __mod_comp_synctype4025[23] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'c', (char const )'o', (char const )'m',
        (char )'p', (char )'_', (char const )'s', (char const )'y',
        (char )'n', (char )'c', (char const )':', (char const )'i',
        (char )'n', (char )'t', (char const )'\000'};
static char __mod_comp_sync4026[64] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'c', (char const )'o', (char const )'m',
        (char )'p', (char )'_', (char const )'s', (char const )'y',
        (char )'n', (char )'c', (char const )':', (char const )'S',
        (char )'e', (char )'t', (char const )' ', (char const )'c',
        (char )'o', (char )'m', (char const )'p', (char const )'o',
        (char )'s', (char )'i', (char const )'t', (char const )'e',
        (char )' ', (char )'s', (char const )'y', (char const )'n',
        (char )'c', (char )' ', (char const )'s', (char const )'i',
        (char )'g', (char )'n', (char const )'a', (char const )'l',
        (char )' ', (char )'t', (char const )'o', (char const )' ',
        (char )'l', (char )'o', (char const )'w', (char const )' ',
        (char )'(', (char )'0', (char const )')', (char const )' ',
        (char )'o', (char )'r', (char const )' ', (char const )'h',
        (char )'i', (char )'g', (char const )'h', (char const )' ',
        (char )'(', (char )'1', (char const )')', (char const )'\000'};
static char __param_str_mode[5] = { (char )'m', (char const )'o', (char const )'d', (char const )'e',
        (char )'\000'};
static struct kernel_param __param_mode __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_mode, (struct kernel_param_ops *)(& param_ops_charp), (u16 )0,
    (s16 )0, {(void *)(& mode)}};
static char __mod_modetype4027[20] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'m', (char const )'o', (char const )'d',
        (char )'e', (char )':', (char const )'c', (char const )'h',
        (char )'a', (char )'r', (char const )'p', (char const )'\000'};
static char __mod_mode4028[69] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'m', (char const )'o', (char const )'d',
        (char )'e', (char )':', (char const )'S', (char const )'p',
        (char )'e', (char )'c', (char const )'i', (char const )'f',
        (char )'y', (char )' ', (char const )'r', (char const )'e',
        (char )'s', (char )'o', (char const )'l', (char const )'u',
        (char )'t', (char )'i', (char const )'o', (char const )'n',
        (char )' ', (char )'a', (char const )'s', (char const )' ',
        (char )'\"', (char )'<', (char const )'x', (char const )'r',
        (char )'e', (char )'s', (char const )'>', (char const )'x',
        (char )'<', (char )'y', (char const )'r', (char const )'e',
        (char )'s', (char )'>', (char const )'[', (char const )'-',
        (char )'<', (char )'b', (char const )'p', (char const )'p',
        (char )'>', (char )']', (char const )'[', (char const )'@',
        (char )'<', (char )'r', (char const )'e', (char const )'f',
        (char )'r', (char )'e', (char const )'s', (char const )'h',
        (char )'>', (char )']', (char const )'\"', (char const )' ',
        (char )'\000'};
static char __param_str_nomtrr[7] = { (char )'n', (char const )'o', (char const )'m', (char const )'t',
        (char )'r', (char )'r', (char const )'\000'};
static struct kernel_param __param_nomtrr __attribute__((__used__, __unused__,
__section__("__param"), __aligned__(sizeof(void *)))) = {__param_str_nomtrr, (struct kernel_param_ops *)(& param_ops_bool), (u16 )0,
    (s16 )0, {(void *)(& nomtrr)}};
static char __mod_nomtrrtype4030[21] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'t', (char )'y', (char const )'p', (char const )'e',
        (char )'=', (char )'n', (char const )'o', (char const )'m',
        (char )'t', (char )'r', (char const )'r', (char const )':',
        (char )'b', (char )'o', (char const )'o', (char const )'l',
        (char )'\000'};
static char __mod_nomtrr4031[48] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char )'p', (char )'a', (char const )'r', (char const )'m',
        (char )'=', (char )'n', (char const )'o', (char const )'m',
        (char )'t', (char )'r', (char const )'r', (char const )':',
        (char )'b', (char )'o', (char const )'o', (char const )'l',
        (char )':', (char )' ', (char const )'d', (char const )'i',
        (char )'s', (char )'a', (char const )'b', (char const )'l',
        (char )'e', (char )' ', (char const )'u', (char const )'s',
        (char )'e', (char )' ', (char const )'o', (char const )'f',
        (char )' ', (char )'M', (char const )'T', (char const )'R',
        (char )'R', (char )' ', (char const )'r', (char const )'e',
        (char )'g', (char )'i', (char const )'s', (char const )'t',
        (char )'e', (char )'r', (char const )'s', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int res ) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
static int res_atyfb_pci_probe_44 ;
void main(void)
{ struct fb_info *var_group1 ;
  int var_atyfb_open_14_p1 ;
  int var_atyfb_release_18_p1 ;
  struct fb_var_screeninfo *var_group2 ;
  u_int var_atyfb_setcolreg_39_p0 ;
  u_int var_atyfb_setcolreg_39_p1 ;
  u_int var_atyfb_setcolreg_39_p2 ;
  u_int var_atyfb_setcolreg_39_p3 ;
  u_int var_atyfb_setcolreg_39_p4 ;
  struct fb_info *var_atyfb_setcolreg_39_p5 ;
  int var_atyfb_blank_37_p0 ;
  u_int var_atyfb_ioctl_21_p1 ;
  u_long var_atyfb_ioctl_21_p2 ;
  struct backlight_device *var_group4 ;
  struct pci_dev *var_group5 ;
  struct pci_device_id *var_atyfb_pci_probe_44_p1 ;
  pm_message_t var_atyfb_pci_suspend_25_p1 ;
  struct notifier_block *var_group6 ;
  unsigned long var_atyfb_reboot_notify_49_p1 ;
  void *var_atyfb_reboot_notify_49_p2 ;
  int var_aty_irq_15_p0 ;
  void *var_aty_irq_15_p1 ;
  int tmp___7 ;
  int ldv_s_atyfb_driver_pci_driver ;
  int tmp___8 ;
  int tmp___9 ;
  int __cil_tmp27 ;
  int var_atyfb_pci_suspend_25_p1_event28 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp___7 = atyfb_init();
  }
  if (tmp___7) {
    goto ldv_final;
  } else {
  }
  ldv_s_atyfb_driver_pci_driver = 0;
  {
  while (1) {
    while_continue: ;
    {
    tmp___9 = __VERIFIER_nondet_int();
    }
    if (tmp___9) {
    } else {
      {
      __cil_tmp27 = ldv_s_atyfb_driver_pci_driver == 0;
      if (! __cil_tmp27) {
      } else {
        goto while_break;
      }
      }
    }
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8 == 0) {
      goto case_0;
    } else
    if (tmp___8 == 1) {
      goto case_1;
    } else
    if (tmp___8 == 2) {
      goto case_2;
    } else
    if (tmp___8 == 3) {
      goto case_3;
    } else
    if (tmp___8 == 4) {
      goto case_4;
    } else
    if (tmp___8 == 5) {
      goto case_5;
    } else
    if (tmp___8 == 6) {
      goto case_6;
    } else
    if (tmp___8 == 7) {
      goto case_7;
    } else
    if (tmp___8 == 8) {
      goto case_8;
    } else
    if (tmp___8 == 9) {
      goto case_9;
    } else
    if (tmp___8 == 10) {
      goto case_10;
    } else
    if (tmp___8 == 11) {
      goto case_11;
    } else
    if (tmp___8 == 12) {
      goto case_12;
    } else
    if (tmp___8 == 13) {
      goto case_13;
    } else
    if (tmp___8 == 14) {
      goto case_14;
    } else
    if (tmp___8 == 15) {
      goto case_15;
    } else
    if (tmp___8 == 16) {
      goto case_16;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        atyfb_open(var_group1, var_atyfb_open_14_p1);
        }
        goto switch_break;
        case_1:
        {
        atyfb_release(var_group1, var_atyfb_release_18_p1);
        }
        goto switch_break;
        case_2:
        {
        atyfb_check_var(var_group2, var_group1);
        }
        goto switch_break;
        case_3:
        {
        atyfb_set_par(var_group1);
        }
        goto switch_break;
        case_4:
        {
        atyfb_setcolreg(var_atyfb_setcolreg_39_p0, var_atyfb_setcolreg_39_p1, var_atyfb_setcolreg_39_p2,
                        var_atyfb_setcolreg_39_p3, var_atyfb_setcolreg_39_p4, var_atyfb_setcolreg_39_p5);
        }
        goto switch_break;
        case_5:
        {
        atyfb_pan_display(var_group2, var_group1);
        }
        goto switch_break;
        case_6:
        {
        atyfb_blank(var_atyfb_blank_37_p0, var_group1);
        }
        goto switch_break;
        case_7:
        {
        atyfb_ioctl(var_group1, var_atyfb_ioctl_21_p1, var_atyfb_ioctl_21_p2);
        }
        goto switch_break;
        case_8: ;
        goto switch_break;
        case_9:
        {
        atyfb_sync(var_group1);
        }
        goto switch_break;
        case_10:
        {
        aty_bl_get_brightness(var_group4);
        }
        goto switch_break;
        case_11:
        {
        aty_bl_update_status(var_group4);
        }
        goto switch_break;
        case_12:
        if (ldv_s_atyfb_driver_pci_driver == 0) {
          {
          res_atyfb_pci_probe_44 = atyfb_pci_probe(var_group5, var_atyfb_pci_probe_44_p1);
          ldv_check_return_value(res_atyfb_pci_probe_44);
          }
          if (res_atyfb_pci_probe_44) {
            goto ldv_module_exit;
          } else {
          }
          ldv_s_atyfb_driver_pci_driver = 0;
        } else {
        }
        goto switch_break;
        case_13:
        {
        atyfb_pci_suspend(var_group5, var_atyfb_pci_suspend_25_p1_event28);
        }
        goto switch_break;
        case_14:
        {
        atyfb_pci_resume(var_group5);
        }
        goto switch_break;
        case_15:
        {
        atyfb_reboot_notify(var_group6, var_atyfb_reboot_notify_49_p1, var_atyfb_reboot_notify_49_p2);
        }
        goto switch_break;
        case_16:
        {
        LDV_IN_INTERRUPT = 2;
        aty_irq(var_aty_irq_15_p0, var_aty_irq_15_p1);
        LDV_IN_INTERRUPT = 1;
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  ldv_module_exit:
  {
  atyfb_exit();
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
__inline static __u32 __le32_to_cpup(__le32 *p ) __attribute__((__no_instrument_function__)) ;
__inline static __u32 __le32_to_cpup(__le32 *p )
{ __le32 __cil_tmp2 ;
  {
  {
  __cil_tmp2 = *p;
  return ((__u32 )__cil_tmp2);
  }
}
}
extern void cfb_fillrect(struct fb_info *info , struct fb_fillrect *rect ) ;
extern void cfb_copyarea(struct fb_info *info , struct fb_copyarea *area ) ;
extern void cfb_imageblit(struct fb_info *info , struct fb_image *image ) ;
static u32 rotation24bpp(u32 dx , u32 direction )
{ u32 rotation ;
  u32 __cil_tmp4 ;
  u32 __cil_tmp5 ;
  u32 __cil_tmp6 ;
  u32 __cil_tmp7 ;
  {
  if (direction & 1U) {
    __cil_tmp4 = dx / 4U;
    rotation = __cil_tmp4 % 6U;
  } else {
    __cil_tmp5 = dx + 2U;
    __cil_tmp6 = __cil_tmp5 / 4U;
    rotation = __cil_tmp6 % 6U;
  }
  {
  __cil_tmp7 = rotation << 8;
  return (__cil_tmp7 | 128U);
  }
}
}
void aty_reset_engine(struct atyfb_par *par )
{ u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  unsigned int __cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned int __cil_tmp8 ;
  {
  {
  tmp___7 = aty_ld_le32(208, par);
  __cil_tmp5 = tmp___7 & 4294966911U;
  aty_st_le32(208, __cil_tmp5, par);
  tmp___8 = aty_ld_le32(208, par);
  __cil_tmp6 = tmp___8 | 256U;
  aty_st_le32(208, __cil_tmp6, par);
  tmp___9 = aty_ld_le32(160, par);
  __cil_tmp7 = tmp___9 | 8388608U;
  __cil_tmp8 = __cil_tmp7 | 2097152U;
  aty_st_le32(160, __cil_tmp8, par);
  }
  return;
}
}
static void reset_GTC_3D_engine(struct atyfb_par *par )
{ u32 __cil_tmp8 ;
  u32 __cil_tmp9 ;
  u32 __cil_tmp10 ;
  {
  {
  __cil_tmp8 = (u32 )192;
  aty_st_le32(508, __cil_tmp8, par);
  ___udelay(12885000UL);
  __cil_tmp9 = (u32 )0;
  aty_st_le32(1796, __cil_tmp9, par);
  ___udelay(12885000UL);
  __cil_tmp10 = (u32 )0;
  aty_st_le32(508, __cil_tmp10, par);
  ___udelay(12885000UL);
  }
  return;
}
}
void aty_init_engine(struct atyfb_par *par , struct fb_info *info )
{ u32 pitch_value ;
  u32 vxres ;
  u32 tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  __u32 __cil_tmp9 ;
  __u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  __u32 __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u32 __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  struct atyfb_par *__cil_tmp26 ;
  u32 __cil_tmp27 ;
  struct atyfb_par *__cil_tmp28 ;
  u32 __cil_tmp29 ;
  struct atyfb_par *__cil_tmp30 ;
  u16 __cil_tmp31 ;
  struct atyfb_par *__cil_tmp32 ;
  struct atyfb_par *__cil_tmp33 ;
  u32 __cil_tmp34 ;
  u32 __cil_tmp35 ;
  struct atyfb_par *__cil_tmp36 ;
  u32 __cil_tmp37 ;
  struct atyfb_par *__cil_tmp38 ;
  u32 __cil_tmp39 ;
  struct atyfb_par *__cil_tmp40 ;
  u32 __cil_tmp41 ;
  struct atyfb_par *__cil_tmp42 ;
  u32 __cil_tmp43 ;
  struct atyfb_par *__cil_tmp44 ;
  u32 __cil_tmp45 ;
  struct atyfb_par *__cil_tmp46 ;
  u32 __cil_tmp47 ;
  struct atyfb_par *__cil_tmp48 ;
  u32 __cil_tmp49 ;
  u32 __cil_tmp50 ;
  struct atyfb_par *__cil_tmp51 ;
  u32 __cil_tmp52 ;
  struct atyfb_par *__cil_tmp53 ;
  u32 __cil_tmp54 ;
  struct atyfb_par *__cil_tmp55 ;
  u32 __cil_tmp56 ;
  struct atyfb_par *__cil_tmp57 ;
  u32 __cil_tmp58 ;
  struct atyfb_par *__cil_tmp59 ;
  u32 __cil_tmp60 ;
  struct atyfb_par *__cil_tmp61 ;
  u16 __cil_tmp62 ;
  struct atyfb_par *__cil_tmp63 ;
  u32 __cil_tmp64 ;
  struct atyfb_par *__cil_tmp65 ;
  u32 __cil_tmp66 ;
  struct atyfb_par *__cil_tmp67 ;
  u32 __cil_tmp68 ;
  struct atyfb_par *__cil_tmp69 ;
  u32 __cil_tmp70 ;
  struct atyfb_par *__cil_tmp71 ;
  u32 __cil_tmp72 ;
  struct atyfb_par *__cil_tmp73 ;
  u32 __cil_tmp74 ;
  struct atyfb_par *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  u32 __cil_tmp79 ;
  u32 __cil_tmp80 ;
  struct atyfb_par *__cil_tmp81 ;
  u32 __cil_tmp82 ;
  struct atyfb_par *__cil_tmp83 ;
  u32 __cil_tmp84 ;
  struct atyfb_par *__cil_tmp85 ;
  struct atyfb_par *__cil_tmp86 ;
  struct atyfb_par *__cil_tmp87 ;
  u32 __cil_tmp88 ;
  struct atyfb_par *__cil_tmp89 ;
  u32 __cil_tmp90 ;
  struct atyfb_par *__cil_tmp91 ;
  u16 __cil_tmp92 ;
  struct atyfb_par *__cil_tmp93 ;
  u32 __cil_tmp94 ;
  struct atyfb_par *__cil_tmp95 ;
  struct atyfb_par *__cil_tmp96 ;
  u32 __cil_tmp97 ;
  struct atyfb_par *__cil_tmp98 ;
  u16 __cil_tmp99 ;
  struct atyfb_par *__cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  u32 __cil_tmp104 ;
  struct atyfb_par *__cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  u32 __cil_tmp109 ;
  struct atyfb_par *__cil_tmp110 ;
  u16 __cil_tmp111 ;
  struct atyfb_par *__cil_tmp112 ;
  u32 __cil_tmp113 ;
  struct atyfb_par *__cil_tmp114 ;
  u32 __cil_tmp115 ;
  struct atyfb_par *__cil_tmp116 ;
  struct atyfb_par *__cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  struct atyfb_par *__cil_tmp119 ;
  u32 __cil_tmp120 ;
  struct atyfb_par *__cil_tmp121 ;
  {
  __cil_tmp6 = 160 + 24;
  __cil_tmp7 = (unsigned long )info;
  __cil_tmp8 = __cil_tmp7 + __cil_tmp6;
  __cil_tmp9 = *((__u32 *)__cil_tmp8);
  __cil_tmp10 = __cil_tmp9 / 8U;
  __cil_tmp11 = 320 + 48;
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + __cil_tmp11;
  __cil_tmp14 = *((__u32 *)__cil_tmp13);
  pitch_value = __cil_tmp14 / __cil_tmp10;
  __cil_tmp15 = 160 + 8;
  __cil_tmp16 = (unsigned long )info;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  vxres = *((__u32 *)__cil_tmp17);
  {
  __cil_tmp18 = 160 + 24;
  __cil_tmp19 = (unsigned long )info;
  __cil_tmp20 = __cil_tmp19 + __cil_tmp18;
  __cil_tmp21 = *((__u32 *)__cil_tmp20);
  if (__cil_tmp21 == 24U) {
    pitch_value = pitch_value * 3U;
    vxres = vxres * 3U;
  } else {
  }
  }
  {
  __cil_tmp22 = (unsigned long )par;
  __cil_tmp23 = __cil_tmp22 + 1044;
  __cil_tmp24 = *((u32 *)__cil_tmp23);
  if (__cil_tmp24 & 1U) {
    {
    __cil_tmp25 = (struct atyfb_par *)par;
    reset_GTC_3D_engine(__cil_tmp25);
    }
  } else {
  }
  }
  {
  __cil_tmp26 = (struct atyfb_par *)par;
  aty_reset_engine(__cil_tmp26);
  __cil_tmp27 = (u32 )65536;
  __cil_tmp28 = (struct atyfb_par *)par;
  aty_st_le32(180, __cil_tmp27, __cil_tmp28);
  __cil_tmp29 = (u32 )65536;
  __cil_tmp30 = (struct atyfb_par *)par;
  aty_st_le32(184, __cil_tmp29, __cil_tmp30);
  __cil_tmp31 = (u16 )14;
  __cil_tmp32 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp31, __cil_tmp32);
  __cil_tmp33 = (struct atyfb_par *)par;
  aty_st_le32(800, 4294967295U, __cil_tmp33);
  __cil_tmp34 = pitch_value / 8U;
  __cil_tmp35 = __cil_tmp34 << 22;
  __cil_tmp36 = (struct atyfb_par *)par;
  aty_st_le32(256, __cil_tmp35, __cil_tmp36);
  __cil_tmp37 = (u32 )0;
  __cil_tmp38 = (struct atyfb_par *)par;
  aty_st_le32(268, __cil_tmp37, __cil_tmp38);
  __cil_tmp39 = (u32 )0;
  __cil_tmp40 = (struct atyfb_par *)par;
  aty_st_le32(276, __cil_tmp39, __cil_tmp40);
  __cil_tmp41 = (u32 )0;
  __cil_tmp42 = (struct atyfb_par *)par;
  aty_st_le32(292, __cil_tmp41, __cil_tmp42);
  __cil_tmp43 = (u32 )0;
  __cil_tmp44 = (struct atyfb_par *)par;
  aty_st_le32(296, __cil_tmp43, __cil_tmp44);
  __cil_tmp45 = (u32 )0;
  __cil_tmp46 = (struct atyfb_par *)par;
  aty_st_le32(300, __cil_tmp45, __cil_tmp46);
  __cil_tmp47 = (u32 )35;
  __cil_tmp48 = (struct atyfb_par *)par;
  aty_st_le32(304, __cil_tmp47, __cil_tmp48);
  __cil_tmp49 = pitch_value / 8U;
  __cil_tmp50 = __cil_tmp49 << 22;
  __cil_tmp51 = (struct atyfb_par *)par;
  aty_st_le32(384, __cil_tmp50, __cil_tmp51);
  __cil_tmp52 = (u32 )0;
  __cil_tmp53 = (struct atyfb_par *)par;
  aty_st_le32(396, __cil_tmp52, __cil_tmp53);
  __cil_tmp54 = (u32 )1;
  __cil_tmp55 = (struct atyfb_par *)par;
  aty_st_le32(408, __cil_tmp54, __cil_tmp55);
  __cil_tmp56 = (u32 )0;
  __cil_tmp57 = (struct atyfb_par *)par;
  aty_st_le32(420, __cil_tmp56, __cil_tmp57);
  __cil_tmp58 = (u32 )1;
  __cil_tmp59 = (struct atyfb_par *)par;
  aty_st_le32(432, __cil_tmp58, __cil_tmp59);
  __cil_tmp60 = (u32 )16;
  __cil_tmp61 = (struct atyfb_par *)par;
  aty_st_le32(436, __cil_tmp60, __cil_tmp61);
  __cil_tmp62 = (u16 )13;
  __cil_tmp63 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp62, __cil_tmp63);
  __cil_tmp64 = (u32 )0;
  __cil_tmp65 = (struct atyfb_par *)par;
  aty_st_le32(576, __cil_tmp64, __cil_tmp65);
  __cil_tmp66 = (u32 )0;
  __cil_tmp67 = (struct atyfb_par *)par;
  aty_st_le32(640, __cil_tmp66, __cil_tmp67);
  __cil_tmp68 = (u32 )0;
  __cil_tmp69 = (struct atyfb_par *)par;
  aty_st_le32(644, __cil_tmp68, __cil_tmp69);
  __cil_tmp70 = (u32 )0;
  __cil_tmp71 = (struct atyfb_par *)par;
  aty_st_le32(648, __cil_tmp70, __cil_tmp71);
  __cil_tmp72 = (u32 )0;
  __cil_tmp73 = (struct atyfb_par *)par;
  aty_st_le32(672, __cil_tmp72, __cil_tmp73);
  __cil_tmp74 = (u32 )0;
  __cil_tmp75 = (struct atyfb_par *)par;
  aty_st_le32(684, __cil_tmp74, __cil_tmp75);
  __cil_tmp76 = 864 + 4;
  __cil_tmp77 = (unsigned long )par;
  __cil_tmp78 = __cil_tmp77 + __cil_tmp76;
  __cil_tmp79 = *((u32 *)__cil_tmp78);
  __cil_tmp80 = __cil_tmp79 - 1U;
  __cil_tmp81 = (struct atyfb_par *)par;
  aty_st_le32(688, __cil_tmp80, __cil_tmp81);
  __cil_tmp82 = vxres - 1U;
  __cil_tmp83 = (struct atyfb_par *)par;
  aty_st_le32(676, __cil_tmp82, __cil_tmp83);
  __cil_tmp84 = (u32 )0;
  __cil_tmp85 = (struct atyfb_par *)par;
  aty_st_le32(704, __cil_tmp84, __cil_tmp85);
  __cil_tmp86 = (struct atyfb_par *)par;
  aty_st_le32(708, 4294967295U, __cil_tmp86);
  __cil_tmp87 = (struct atyfb_par *)par;
  aty_st_le32(712, 4294967295U, __cil_tmp87);
  __cil_tmp88 = (u32 )458755;
  __cil_tmp89 = (struct atyfb_par *)par;
  aty_st_le32(724, __cil_tmp88, __cil_tmp89);
  __cil_tmp90 = (u32 )256;
  __cil_tmp91 = (struct atyfb_par *)par;
  aty_st_le32(728, __cil_tmp90, __cil_tmp91);
  __cil_tmp92 = (u16 )3;
  __cil_tmp93 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp92, __cil_tmp93);
  __cil_tmp94 = (u32 )0;
  __cil_tmp95 = (struct atyfb_par *)par;
  aty_st_le32(768, __cil_tmp94, __cil_tmp95);
  __cil_tmp96 = (struct atyfb_par *)par;
  aty_st_le32(772, 4294967295U, __cil_tmp96);
  __cil_tmp97 = (u32 )0;
  __cil_tmp98 = (struct atyfb_par *)par;
  aty_st_le32(776, __cil_tmp97, __cil_tmp98);
  __cil_tmp99 = (u16 )2;
  __cil_tmp100 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp99, __cil_tmp100);
  __cil_tmp101 = 864 + 48;
  __cil_tmp102 = (unsigned long )par;
  __cil_tmp103 = __cil_tmp102 + __cil_tmp101;
  __cil_tmp104 = *((u32 *)__cil_tmp103);
  __cil_tmp105 = (struct atyfb_par *)par;
  aty_st_le32(720, __cil_tmp104, __cil_tmp105);
  __cil_tmp106 = 864 + 52;
  __cil_tmp107 = (unsigned long )par;
  __cil_tmp108 = __cil_tmp107 + __cil_tmp106;
  __cil_tmp109 = *((u32 *)__cil_tmp108);
  __cil_tmp110 = (struct atyfb_par *)par;
  aty_st_le32(716, __cil_tmp109, __cil_tmp110);
  __cil_tmp111 = (u16 )5;
  __cil_tmp112 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp111, __cil_tmp112);
  __cil_tmp113 = (u32 )0;
  __cil_tmp114 = (struct atyfb_par *)par;
  aty_st_le32(508, __cil_tmp113, __cil_tmp114);
  __cil_tmp115 = (u32 )0;
  __cil_tmp116 = (struct atyfb_par *)par;
  aty_st_le32(332, __cil_tmp115, __cil_tmp116);
  __cil_tmp117 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_le32(24, __cil_tmp117);
  __cil_tmp118 = tmp___7 & 4294967263U;
  __cil_tmp119 = (struct atyfb_par *)par;
  aty_st_le32(24, __cil_tmp118, __cil_tmp119);
  __cil_tmp120 = (u32 )1048611;
  __cil_tmp121 = (struct atyfb_par *)par;
  aty_st_le32(816, __cil_tmp120, __cil_tmp121);
  wait_for_idle(par);
  }
  return;
}
}
__inline static void draw_rect(s16 x , s16 y , u16 width , u16 height , struct atyfb_par *par ) __attribute__((__no_instrument_function__)) ;
__inline static void draw_rect(s16 x , s16 y , u16 width , u16 height , struct atyfb_par *par )
{ u16 __cil_tmp6 ;
  struct atyfb_par *__cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  u32 __cil_tmp12 ;
  struct atyfb_par *__cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  u32 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  {
  {
  __cil_tmp6 = (u16 )2;
  __cil_tmp7 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp6, __cil_tmp7);
  __cil_tmp8 = (int )y;
  __cil_tmp9 = (int )x;
  __cil_tmp10 = __cil_tmp9 << 16;
  __cil_tmp11 = __cil_tmp10 | __cil_tmp8;
  __cil_tmp12 = (u32 )__cil_tmp11;
  __cil_tmp13 = (struct atyfb_par *)par;
  aty_st_le32(268, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (int )height;
  __cil_tmp15 = (int )width;
  __cil_tmp16 = __cil_tmp15 << 16;
  __cil_tmp17 = __cil_tmp16 | __cil_tmp14;
  __cil_tmp18 = (u32 )__cil_tmp17;
  __cil_tmp19 = (struct atyfb_par *)par;
  aty_st_le32(280, __cil_tmp18, __cil_tmp19);
  __cil_tmp20 = (unsigned long )par;
  __cil_tmp21 = __cil_tmp20 + 1076;
  *((int *)__cil_tmp21) = 1;
  }
  return;
}
}
void atyfb_copyarea(struct fb_info *info , struct fb_copyarea *area )
{ struct atyfb_par *par ;
  u32 dy ;
  u32 sy ;
  u32 direction ;
  u32 sx ;
  u32 dx ;
  u32 width ;
  u32 rotation ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  __u32 __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  __u32 __cil_tmp22 ;
  __u32 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  __u32 __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  __u32 __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  __u32 __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  __u32 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  __u32 __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  __u32 __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  __u32 __cil_tmp50 ;
  __u32 __cil_tmp51 ;
  u32 __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  __u32 __cil_tmp56 ;
  u32 __cil_tmp57 ;
  u32 __cil_tmp58 ;
  u32 __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  __u32 __cil_tmp63 ;
  u16 __cil_tmp64 ;
  struct atyfb_par *__cil_tmp65 ;
  u32 __cil_tmp66 ;
  struct atyfb_par *__cil_tmp67 ;
  u32 __cil_tmp68 ;
  unsigned int __cil_tmp69 ;
  struct atyfb_par *__cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  __u32 __cil_tmp73 ;
  unsigned int __cil_tmp74 ;
  u32 __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  struct atyfb_par *__cil_tmp77 ;
  unsigned int __cil_tmp78 ;
  struct atyfb_par *__cil_tmp79 ;
  s16 __cil_tmp80 ;
  s16 __cil_tmp81 ;
  u16 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  __u32 __cil_tmp85 ;
  u16 __cil_tmp86 ;
  {
  __cil_tmp11 = (unsigned long )info;
  __cil_tmp12 = __cil_tmp11 + 1160;
  __cil_tmp13 = *((void **)__cil_tmp12);
  par = (struct atyfb_par *)__cil_tmp13;
  __cil_tmp14 = (unsigned long )area;
  __cil_tmp15 = __cil_tmp14 + 4;
  __cil_tmp16 = *((__u32 *)__cil_tmp15);
  dy = (u32 )__cil_tmp16;
  __cil_tmp17 = (unsigned long )area;
  __cil_tmp18 = __cil_tmp17 + 20;
  __cil_tmp19 = *((__u32 *)__cil_tmp18);
  sy = (u32 )__cil_tmp19;
  direction = (u32 )32;
  __cil_tmp20 = (unsigned long )area;
  __cil_tmp21 = __cil_tmp20 + 16;
  __cil_tmp22 = *((__u32 *)__cil_tmp21);
  sx = (u32 )__cil_tmp22;
  __cil_tmp23 = *((__u32 *)area);
  dx = (u32 )__cil_tmp23;
  __cil_tmp24 = (unsigned long )area;
  __cil_tmp25 = __cil_tmp24 + 8;
  __cil_tmp26 = *((__u32 *)__cil_tmp25);
  width = (u32 )__cil_tmp26;
  rotation = (u32 )0;
  {
  __cil_tmp27 = (unsigned long )par;
  __cil_tmp28 = __cil_tmp27 + 1080;
  if (*((int *)__cil_tmp28)) {
    return;
  } else {
  }
  }
  {
  __cil_tmp29 = (unsigned long )area;
  __cil_tmp30 = __cil_tmp29 + 8;
  __cil_tmp31 = *((__u32 *)__cil_tmp30);
  if (! __cil_tmp31) {
    return;
  } else {
    {
    __cil_tmp32 = (unsigned long )area;
    __cil_tmp33 = __cil_tmp32 + 12;
    __cil_tmp34 = *((__u32 *)__cil_tmp33);
    if (! __cil_tmp34) {
      return;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp35 = (unsigned long )par;
  __cil_tmp36 = __cil_tmp35 + 1072;
  __cil_tmp37 = *((u32 *)__cil_tmp36);
  if (! __cil_tmp37) {
    {
    cfb_copyarea(info, area);
    }
    return;
  } else {
  }
  }
  {
  __cil_tmp38 = 160 + 24;
  __cil_tmp39 = (unsigned long )info;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  __cil_tmp41 = *((__u32 *)__cil_tmp40);
  if (__cil_tmp41 == 24U) {
    sx = sx * 3U;
    dx = dx * 3U;
    width = width * 3U;
  } else {
  }
  }
  {
  __cil_tmp42 = (unsigned long )area;
  __cil_tmp43 = __cil_tmp42 + 4;
  __cil_tmp44 = *((__u32 *)__cil_tmp43);
  __cil_tmp45 = (unsigned long )area;
  __cil_tmp46 = __cil_tmp45 + 20;
  __cil_tmp47 = *((__u32 *)__cil_tmp46);
  if (__cil_tmp47 < __cil_tmp44) {
    __cil_tmp48 = (unsigned long )area;
    __cil_tmp49 = __cil_tmp48 + 12;
    __cil_tmp50 = *((__u32 *)__cil_tmp49);
    __cil_tmp51 = __cil_tmp50 - 1U;
    __cil_tmp52 = (u32 )__cil_tmp51;
    dy = dy + __cil_tmp52;
    __cil_tmp53 = (unsigned long )area;
    __cil_tmp54 = __cil_tmp53 + 12;
    __cil_tmp55 = *((__u32 *)__cil_tmp54);
    __cil_tmp56 = __cil_tmp55 - 1U;
    __cil_tmp57 = (u32 )__cil_tmp56;
    sy = sy + __cil_tmp57;
  } else {
    direction = direction | 2U;
  }
  }
  if (sx < dx) {
    __cil_tmp58 = width - 1U;
    dx = dx + __cil_tmp58;
    __cil_tmp59 = width - 1U;
    sx = sx + __cil_tmp59;
  } else {
    direction = direction | 1U;
  }
  {
  __cil_tmp60 = 160 + 24;
  __cil_tmp61 = (unsigned long )info;
  __cil_tmp62 = __cil_tmp61 + __cil_tmp60;
  __cil_tmp63 = *((__u32 *)__cil_tmp62);
  if (__cil_tmp63 == 24U) {
    {
    rotation = rotation24bpp(dx, direction);
    }
  } else {
  }
  }
  {
  __cil_tmp64 = (u16 )4;
  __cil_tmp65 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp64, __cil_tmp65);
  __cil_tmp66 = (u32 )768;
  __cil_tmp67 = (struct atyfb_par *)par;
  aty_st_le32(728, __cil_tmp66, __cil_tmp67);
  __cil_tmp68 = sx << 16;
  __cil_tmp69 = __cil_tmp68 | sy;
  __cil_tmp70 = (struct atyfb_par *)par;
  aty_st_le32(396, __cil_tmp69, __cil_tmp70);
  __cil_tmp71 = (unsigned long )area;
  __cil_tmp72 = __cil_tmp71 + 12;
  __cil_tmp73 = *((__u32 *)__cil_tmp72);
  __cil_tmp74 = (unsigned int )__cil_tmp73;
  __cil_tmp75 = width << 16;
  __cil_tmp76 = __cil_tmp75 | __cil_tmp74;
  __cil_tmp77 = (struct atyfb_par *)par;
  aty_st_le32(408, __cil_tmp76, __cil_tmp77);
  __cil_tmp78 = direction | rotation;
  __cil_tmp79 = (struct atyfb_par *)par;
  aty_st_le32(304, __cil_tmp78, __cil_tmp79);
  __cil_tmp80 = (s16 )dx;
  __cil_tmp81 = (s16 )dy;
  __cil_tmp82 = (u16 )width;
  __cil_tmp83 = (unsigned long )area;
  __cil_tmp84 = __cil_tmp83 + 12;
  __cil_tmp85 = *((__u32 *)__cil_tmp84);
  __cil_tmp86 = (u16 )__cil_tmp85;
  draw_rect(__cil_tmp80, __cil_tmp81, __cil_tmp82, __cil_tmp86, par);
  }
  return;
}
}
void atyfb_fillrect(struct fb_info *info , struct fb_fillrect *rect )
{ struct atyfb_par *par ;
  u32 color ;
  u32 dx ;
  u32 width ;
  u32 rotation ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void *__cil_tmp10 ;
  __u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  __u32 __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  __u32 __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  void *__cil_tmp35 ;
  u32 *__cil_tmp36 ;
  u32 *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  __u32 __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  __u32 __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  void *__cil_tmp47 ;
  u32 *__cil_tmp48 ;
  u32 *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  __u32 __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  __u32 __cil_tmp56 ;
  u32 __cil_tmp57 ;
  u16 __cil_tmp58 ;
  struct atyfb_par *__cil_tmp59 ;
  struct atyfb_par *__cil_tmp60 ;
  u32 __cil_tmp61 ;
  struct atyfb_par *__cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  struct atyfb_par *__cil_tmp64 ;
  s16 __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  __u32 __cil_tmp68 ;
  s16 __cil_tmp69 ;
  u16 __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  __u32 __cil_tmp73 ;
  u16 __cil_tmp74 ;
  {
  __cil_tmp8 = (unsigned long )info;
  __cil_tmp9 = __cil_tmp8 + 1160;
  __cil_tmp10 = *((void **)__cil_tmp9);
  par = (struct atyfb_par *)__cil_tmp10;
  __cil_tmp11 = *((__u32 *)rect);
  dx = (u32 )__cil_tmp11;
  __cil_tmp12 = (unsigned long )rect;
  __cil_tmp13 = __cil_tmp12 + 8;
  __cil_tmp14 = *((__u32 *)__cil_tmp13);
  width = (u32 )__cil_tmp14;
  rotation = (u32 )0;
  {
  __cil_tmp15 = (unsigned long )par;
  __cil_tmp16 = __cil_tmp15 + 1080;
  if (*((int *)__cil_tmp16)) {
    return;
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )rect;
  __cil_tmp18 = __cil_tmp17 + 8;
  __cil_tmp19 = *((__u32 *)__cil_tmp18);
  if (! __cil_tmp19) {
    return;
  } else {
    {
    __cil_tmp20 = (unsigned long )rect;
    __cil_tmp21 = __cil_tmp20 + 12;
    __cil_tmp22 = *((__u32 *)__cil_tmp21);
    if (! __cil_tmp22) {
      return;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp23 = (unsigned long )par;
  __cil_tmp24 = __cil_tmp23 + 1072;
  __cil_tmp25 = *((u32 *)__cil_tmp24);
  if (! __cil_tmp25) {
    {
    cfb_fillrect(info, rect);
    }
    return;
  } else {
  }
  }
  {
  __cil_tmp26 = 320 + 36;
  __cil_tmp27 = (unsigned long )info;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
  __cil_tmp29 = *((__u32 *)__cil_tmp28);
  if (__cil_tmp29 == 2U) {
    __cil_tmp30 = (unsigned long )rect;
    __cil_tmp31 = __cil_tmp30 + 16;
    __cil_tmp32 = *((__u32 *)__cil_tmp31);
    __cil_tmp33 = (unsigned long )info;
    __cil_tmp34 = __cil_tmp33 + 1136;
    __cil_tmp35 = *((void **)__cil_tmp34);
    __cil_tmp36 = (u32 *)__cil_tmp35;
    __cil_tmp37 = __cil_tmp36 + __cil_tmp32;
    color = *__cil_tmp37;
  } else {
    {
    __cil_tmp38 = 320 + 36;
    __cil_tmp39 = (unsigned long )info;
    __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
    __cil_tmp41 = *((__u32 *)__cil_tmp40);
    if (__cil_tmp41 == 4U) {
      __cil_tmp42 = (unsigned long )rect;
      __cil_tmp43 = __cil_tmp42 + 16;
      __cil_tmp44 = *((__u32 *)__cil_tmp43);
      __cil_tmp45 = (unsigned long )info;
      __cil_tmp46 = __cil_tmp45 + 1136;
      __cil_tmp47 = *((void **)__cil_tmp46);
      __cil_tmp48 = (u32 *)__cil_tmp47;
      __cil_tmp49 = __cil_tmp48 + __cil_tmp44;
      color = *__cil_tmp49;
    } else {
      __cil_tmp50 = (unsigned long )rect;
      __cil_tmp51 = __cil_tmp50 + 16;
      __cil_tmp52 = *((__u32 *)__cil_tmp51);
      color = (u32 )__cil_tmp52;
    }
    }
  }
  }
  {
  __cil_tmp53 = 160 + 24;
  __cil_tmp54 = (unsigned long )info;
  __cil_tmp55 = __cil_tmp54 + __cil_tmp53;
  __cil_tmp56 = *((__u32 *)__cil_tmp55);
  if (__cil_tmp56 == 24U) {
    {
    dx = dx * 3U;
    width = width * 3U;
    __cil_tmp57 = (u32 )1;
    rotation = rotation24bpp(dx, __cil_tmp57);
    }
  } else {
  }
  }
  {
  __cil_tmp58 = (u16 )3;
  __cil_tmp59 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp58, __cil_tmp59);
  __cil_tmp60 = (struct atyfb_par *)par;
  aty_st_le32(708, color, __cil_tmp60);
  __cil_tmp61 = (u32 )256;
  __cil_tmp62 = (struct atyfb_par *)par;
  aty_st_le32(728, __cil_tmp61, __cil_tmp62);
  __cil_tmp63 = 35U | rotation;
  __cil_tmp64 = (struct atyfb_par *)par;
  aty_st_le32(304, __cil_tmp63, __cil_tmp64);
  __cil_tmp65 = (s16 )dx;
  __cil_tmp66 = (unsigned long )rect;
  __cil_tmp67 = __cil_tmp66 + 4;
  __cil_tmp68 = *((__u32 *)__cil_tmp67);
  __cil_tmp69 = (s16 )__cil_tmp68;
  __cil_tmp70 = (u16 )width;
  __cil_tmp71 = (unsigned long )rect;
  __cil_tmp72 = __cil_tmp71 + 12;
  __cil_tmp73 = *((__u32 *)__cil_tmp72);
  __cil_tmp74 = (u16 )__cil_tmp73;
  draw_rect(__cil_tmp65, __cil_tmp69, __cil_tmp70, __cil_tmp74, par);
  }
  return;
}
}
void atyfb_imageblit(struct fb_info *info , struct fb_image *image )
{ struct atyfb_par *par ;
  u32 src_bytes ;
  u32 dx ;
  u32 dy ;
  u32 width ;
  u32 pix_width_save ;
  u32 pix_width ;
  u32 host_cntl ;
  u32 rotation ;
  u32 src ;
  u32 mix ;
  u32 tmp___7 ;
  u32 fg ;
  u32 bg ;
  int inbit ;
  int outbit ;
  int mult24 ;
  int byte_id_in_dword ;
  int width___0 ;
  u8 *pbitmapin ;
  u8 *pbitmapout ;
  u32 hostdword ;
  u32 *pbitmap ;
  u32 dwords ;
  __u32 tmp___8 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  void *__cil_tmp30 ;
  __u32 __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  __u32 __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  __u32 __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  __u32 __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u32 __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  __u8 __cil_tmp51 ;
  int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u8 __cil_tmp55 ;
  __u32 __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  __u32 __cil_tmp60 ;
  struct atyfb_par *__cil_tmp61 ;
  struct atyfb_par *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  __u8 __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  __u32 __cil_tmp69 ;
  u32 __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  u32 __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  __u32 __cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  __u8 __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  __u32 __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  __u32 __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  void *__cil_tmp91 ;
  u32 *__cil_tmp92 ;
  u32 *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  __u32 __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  void *__cil_tmp99 ;
  u32 *__cil_tmp100 ;
  u32 *__cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  __u32 __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  __u32 __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  void *__cil_tmp111 ;
  u32 *__cil_tmp112 ;
  u32 *__cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  __u32 __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  void *__cil_tmp119 ;
  u32 *__cil_tmp120 ;
  u32 *__cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  __u32 __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  __u32 __cil_tmp127 ;
  u16 __cil_tmp128 ;
  struct atyfb_par *__cil_tmp129 ;
  struct atyfb_par *__cil_tmp130 ;
  struct atyfb_par *__cil_tmp131 ;
  u16 __cil_tmp132 ;
  struct atyfb_par *__cil_tmp133 ;
  struct atyfb_par *__cil_tmp134 ;
  struct atyfb_par *__cil_tmp135 ;
  struct atyfb_par *__cil_tmp136 ;
  struct atyfb_par *__cil_tmp137 ;
  struct atyfb_par *__cil_tmp138 ;
  unsigned int __cil_tmp139 ;
  struct atyfb_par *__cil_tmp140 ;
  s16 __cil_tmp141 ;
  s16 __cil_tmp142 ;
  u16 __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  __u32 __cil_tmp146 ;
  u16 __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  __u32 __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  __u8 __cil_tmp153 ;
  __u32 __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  __u32 __cil_tmp157 ;
  __u32 __cil_tmp158 ;
  __u32 __cil_tmp159 ;
  __u32 __cil_tmp160 ;
  __u32 __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  __u32 __cil_tmp165 ;
  unsigned int __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  char * __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  __u32 __cil_tmp172 ;
  u32 *__cil_tmp173 ;
  u8 __cil_tmp174 ;
  int __cil_tmp175 ;
  int __cil_tmp176 ;
  int __cil_tmp177 ;
  int __cil_tmp178 ;
  u8 __cil_tmp179 ;
  int __cil_tmp180 ;
  int __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  __u32 __cil_tmp184 ;
  u16 __cil_tmp185 ;
  struct atyfb_par *__cil_tmp186 ;
  u32 *__cil_tmp187 ;
  u32 __cil_tmp188 ;
  struct atyfb_par *__cil_tmp189 ;
  u32 __cil_tmp190 ;
  unsigned long __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  char * __cil_tmp193 ;
  u16 __cil_tmp194 ;
  struct atyfb_par *__cil_tmp195 ;
  __le32 *__cil_tmp196 ;
  struct atyfb_par *__cil_tmp197 ;
  u16 __cil_tmp198 ;
  struct atyfb_par *__cil_tmp199 ;
  struct atyfb_par *__cil_tmp200 ;
  {
  __cil_tmp28 = (unsigned long )info;
  __cil_tmp29 = __cil_tmp28 + 1160;
  __cil_tmp30 = *((void **)__cil_tmp29);
  par = (struct atyfb_par *)__cil_tmp30;
  __cil_tmp31 = *((__u32 *)image);
  dx = (u32 )__cil_tmp31;
  __cil_tmp32 = (unsigned long )image;
  __cil_tmp33 = __cil_tmp32 + 4;
  __cil_tmp34 = *((__u32 *)__cil_tmp33);
  dy = (u32 )__cil_tmp34;
  __cil_tmp35 = (unsigned long )image;
  __cil_tmp36 = __cil_tmp35 + 8;
  __cil_tmp37 = *((__u32 *)__cil_tmp36);
  width = (u32 )__cil_tmp37;
  rotation = (u32 )0;
  {
  __cil_tmp38 = (unsigned long )par;
  __cil_tmp39 = __cil_tmp38 + 1080;
  if (*((int *)__cil_tmp39)) {
    return;
  } else {
  }
  }
  {
  __cil_tmp40 = (unsigned long )image;
  __cil_tmp41 = __cil_tmp40 + 8;
  __cil_tmp42 = *((__u32 *)__cil_tmp41);
  if (! __cil_tmp42) {
    return;
  } else {
    {
    __cil_tmp43 = (unsigned long )image;
    __cil_tmp44 = __cil_tmp43 + 12;
    __cil_tmp45 = *((__u32 *)__cil_tmp44);
    if (! __cil_tmp45) {
      return;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp46 = (unsigned long )par;
  __cil_tmp47 = __cil_tmp46 + 1072;
  __cil_tmp48 = *((u32 *)__cil_tmp47);
  if (! __cil_tmp48) {
    {
    cfb_imageblit(info, image);
    }
    return;
  } else {
    {
    __cil_tmp49 = (unsigned long )image;
    __cil_tmp50 = __cil_tmp49 + 24;
    __cil_tmp51 = *((__u8 *)__cil_tmp50);
    __cil_tmp52 = (int )__cil_tmp51;
    if (__cil_tmp52 != 1) {
      {
      __cil_tmp53 = (unsigned long )image;
      __cil_tmp54 = __cil_tmp53 + 24;
      __cil_tmp55 = *((__u8 *)__cil_tmp54);
      __cil_tmp56 = (__u32 )__cil_tmp55;
      __cil_tmp57 = 160 + 24;
      __cil_tmp58 = (unsigned long )info;
      __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
      __cil_tmp60 = *((__u32 *)__cil_tmp59);
      if (__cil_tmp60 != __cil_tmp56) {
        {
        cfb_imageblit(info, image);
        }
        return;
      } else {
      }
      }
    } else {
    }
    }
  }
  }
  {
  __cil_tmp61 = (struct atyfb_par *)par;
  pix_width_save = aty_ld_le32(720, __cil_tmp61);
  pix_width = pix_width_save;
  __cil_tmp62 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_le32(576, __cil_tmp62);
  host_cntl = tmp___7 | 1U;
  }
  {
  __cil_tmp63 = (unsigned long )image;
  __cil_tmp64 = __cil_tmp63 + 24;
  __cil_tmp65 = *((__u8 *)__cil_tmp64);
  if ((int )__cil_tmp65 == 1) {
    goto case_1;
  } else
  if ((int )__cil_tmp65 == 4) {
    goto case_4;
  } else
  if ((int )__cil_tmp65 == 8) {
    goto case_8;
  } else
  if ((int )__cil_tmp65 == 15) {
    goto case_15;
  } else
  if ((int )__cil_tmp65 == 16) {
    goto case_16;
  } else
  if ((int )__cil_tmp65 == 24) {
    goto case_24;
  } else
  if ((int )__cil_tmp65 == 32) {
    goto case_32;
  } else
  if (0) {
    case_1:
    pix_width = pix_width & 4277207039U;
    pix_width = pix_width;
    goto switch_break;
    case_4:
    pix_width = pix_width & 4277207039U;
    pix_width = pix_width | 65536U;
    goto switch_break;
    case_8:
    pix_width = pix_width & 4293984255U;
    pix_width = pix_width | 131072U;
    goto switch_break;
    case_15:
    pix_width = pix_width & 4293984255U;
    pix_width = pix_width | 196608U;
    goto switch_break;
    case_16:
    pix_width = pix_width & 4293984255U;
    pix_width = pix_width | 262144U;
    goto switch_break;
    case_24:
    pix_width = pix_width & 4293984255U;
    pix_width = pix_width | 327680U;
    goto switch_break;
    case_32:
    pix_width = pix_width & 4293984255U;
    pix_width = pix_width | 393216U;
    goto switch_break;
  } else {
    switch_break: ;
  }
  }
  {
  __cil_tmp66 = 160 + 24;
  __cil_tmp67 = (unsigned long )info;
  __cil_tmp68 = __cil_tmp67 + __cil_tmp66;
  __cil_tmp69 = *((__u32 *)__cil_tmp68);
  if (__cil_tmp69 == 24U) {
    {
    dx = dx * 3U;
    width = width * 3U;
    __cil_tmp70 = (u32 )1;
    rotation = rotation24bpp(dx, __cil_tmp70);
    pix_width = pix_width & 4294967280U;
    pix_width = pix_width | 2U;
    }
    {
    __cil_tmp71 = (unsigned long )par;
    __cil_tmp72 = __cil_tmp71 + 1044;
    __cil_tmp73 = *((u32 *)__cil_tmp72);
    if (__cil_tmp73 & 2097152U) {
      {
      __cil_tmp74 = (unsigned long )image;
      __cil_tmp75 = __cil_tmp74 + 8;
      __cil_tmp76 = *((__u32 *)__cil_tmp75);
      __cil_tmp77 = __cil_tmp76 % 8U;
      if (__cil_tmp77 == 0U) {
        pix_width = pix_width | 8192U;
      } else {
      }
      }
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp78 = (unsigned long )image;
  __cil_tmp79 = __cil_tmp78 + 24;
  __cil_tmp80 = *((__u8 *)__cil_tmp79);
  __cil_tmp81 = (int )__cil_tmp80;
  if (__cil_tmp81 == 1) {
    {
    __cil_tmp82 = 320 + 36;
    __cil_tmp83 = (unsigned long )info;
    __cil_tmp84 = __cil_tmp83 + __cil_tmp82;
    __cil_tmp85 = *((__u32 *)__cil_tmp84);
    if (__cil_tmp85 == 2U) {
      __cil_tmp86 = (unsigned long )image;
      __cil_tmp87 = __cil_tmp86 + 16;
      __cil_tmp88 = *((__u32 *)__cil_tmp87);
      __cil_tmp89 = (unsigned long )info;
      __cil_tmp90 = __cil_tmp89 + 1136;
      __cil_tmp91 = *((void **)__cil_tmp90);
      __cil_tmp92 = (u32 *)__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 + __cil_tmp88;
      fg = *__cil_tmp93;
      __cil_tmp94 = (unsigned long )image;
      __cil_tmp95 = __cil_tmp94 + 20;
      __cil_tmp96 = *((__u32 *)__cil_tmp95);
      __cil_tmp97 = (unsigned long )info;
      __cil_tmp98 = __cil_tmp97 + 1136;
      __cil_tmp99 = *((void **)__cil_tmp98);
      __cil_tmp100 = (u32 *)__cil_tmp99;
      __cil_tmp101 = __cil_tmp100 + __cil_tmp96;
      bg = *__cil_tmp101;
    } else {
      {
      __cil_tmp102 = 320 + 36;
      __cil_tmp103 = (unsigned long )info;
      __cil_tmp104 = __cil_tmp103 + __cil_tmp102;
      __cil_tmp105 = *((__u32 *)__cil_tmp104);
      if (__cil_tmp105 == 4U) {
        __cil_tmp106 = (unsigned long )image;
        __cil_tmp107 = __cil_tmp106 + 16;
        __cil_tmp108 = *((__u32 *)__cil_tmp107);
        __cil_tmp109 = (unsigned long )info;
        __cil_tmp110 = __cil_tmp109 + 1136;
        __cil_tmp111 = *((void **)__cil_tmp110);
        __cil_tmp112 = (u32 *)__cil_tmp111;
        __cil_tmp113 = __cil_tmp112 + __cil_tmp108;
        fg = *__cil_tmp113;
        __cil_tmp114 = (unsigned long )image;
        __cil_tmp115 = __cil_tmp114 + 20;
        __cil_tmp116 = *((__u32 *)__cil_tmp115);
        __cil_tmp117 = (unsigned long )info;
        __cil_tmp118 = __cil_tmp117 + 1136;
        __cil_tmp119 = *((void **)__cil_tmp118);
        __cil_tmp120 = (u32 *)__cil_tmp119;
        __cil_tmp121 = __cil_tmp120 + __cil_tmp116;
        bg = *__cil_tmp121;
      } else {
        __cil_tmp122 = (unsigned long )image;
        __cil_tmp123 = __cil_tmp122 + 16;
        __cil_tmp124 = *((__u32 *)__cil_tmp123);
        fg = (u32 )__cil_tmp124;
        __cil_tmp125 = (unsigned long )image;
        __cil_tmp126 = __cil_tmp125 + 20;
        __cil_tmp127 = *((__u32 *)__cil_tmp126);
        bg = (u32 )__cil_tmp127;
      }
      }
    }
    }
    {
    __cil_tmp128 = (u16 )2;
    __cil_tmp129 = (struct atyfb_par *)par;
    wait_for_fifo(__cil_tmp128, __cil_tmp129);
    __cil_tmp130 = (struct atyfb_par *)par;
    aty_st_le32(704, bg, __cil_tmp130);
    __cil_tmp131 = (struct atyfb_par *)par;
    aty_st_le32(708, fg, __cil_tmp131);
    src = (u32 )131328;
    mix = (u32 )458759;
    }
  } else {
    src = (u32 )512;
    mix = (u32 )327683;
  }
  }
  {
  __cil_tmp132 = (u16 )6;
  __cil_tmp133 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp132, __cil_tmp133);
  __cil_tmp134 = (struct atyfb_par *)par;
  aty_st_le32(712, 4294967295U, __cil_tmp134);
  __cil_tmp135 = (struct atyfb_par *)par;
  aty_st_le32(720, pix_width, __cil_tmp135);
  __cil_tmp136 = (struct atyfb_par *)par;
  aty_st_le32(724, mix, __cil_tmp136);
  __cil_tmp137 = (struct atyfb_par *)par;
  aty_st_le32(728, src, __cil_tmp137);
  __cil_tmp138 = (struct atyfb_par *)par;
  aty_st_le32(576, host_cntl, __cil_tmp138);
  __cil_tmp139 = 3U | rotation;
  __cil_tmp140 = (struct atyfb_par *)par;
  aty_st_le32(304, __cil_tmp139, __cil_tmp140);
  __cil_tmp141 = (s16 )dx;
  __cil_tmp142 = (s16 )dy;
  __cil_tmp143 = (u16 )width;
  __cil_tmp144 = (unsigned long )image;
  __cil_tmp145 = __cil_tmp144 + 12;
  __cil_tmp146 = *((__u32 *)__cil_tmp145);
  __cil_tmp147 = (u16 )__cil_tmp146;
  draw_rect(__cil_tmp141, __cil_tmp142, __cil_tmp143, __cil_tmp147, par);
  __cil_tmp148 = (unsigned long )image;
  __cil_tmp149 = __cil_tmp148 + 12;
  __cil_tmp150 = *((__u32 *)__cil_tmp149);
  __cil_tmp151 = (unsigned long )image;
  __cil_tmp152 = __cil_tmp151 + 24;
  __cil_tmp153 = *((__u8 *)__cil_tmp152);
  __cil_tmp154 = (__u32 )__cil_tmp153;
  __cil_tmp155 = (unsigned long )image;
  __cil_tmp156 = __cil_tmp155 + 8;
  __cil_tmp157 = *((__u32 *)__cil_tmp156);
  __cil_tmp158 = __cil_tmp157 * __cil_tmp154;
  __cil_tmp159 = __cil_tmp158 + 7U;
  __cil_tmp160 = __cil_tmp159 / 8U;
  __cil_tmp161 = __cil_tmp160 * __cil_tmp150;
  src_bytes = (u32 )__cil_tmp161;
  }
  {
  __cil_tmp162 = 160 + 24;
  __cil_tmp163 = (unsigned long )info;
  __cil_tmp164 = __cil_tmp163 + __cil_tmp162;
  __cil_tmp165 = *((__u32 *)__cil_tmp164);
  if (__cil_tmp165 == 24U) {
    {
    __cil_tmp166 = pix_width & 8192U;
    if (! __cil_tmp166) {
      __cil_tmp167 = (unsigned long )image;
      __cil_tmp168 = __cil_tmp167 + 32;
      __cil_tmp169 = *((char * *)__cil_tmp168);
      pbitmapin = (u8 *)__cil_tmp169;
      __cil_tmp170 = (unsigned long )image;
      __cil_tmp171 = __cil_tmp170 + 8;
      __cil_tmp172 = *((__u32 *)__cil_tmp171);
      width___0 = (int )__cil_tmp172;
      inbit = 7;
      mult24 = 0;
      {
      while (1) {
        while_continue: ;
        if (src_bytes) {
        } else {
          goto while_break;
        }
        __cil_tmp173 = & hostdword;
        *__cil_tmp173 = (u32 )0;
        pbitmapout = (u8 *)(& hostdword);
        byte_id_in_dword = 0;
        {
        while (1) {
          while_continue___0: ;
          if (byte_id_in_dword < 4) {
            if (src_bytes) {
            } else {
              goto while_break___0;
            }
          } else {
            goto while_break___0;
          }
          outbit = 7;
          {
          while (1) {
            while_continue___1: ;
            if (outbit >= 0) {
            } else {
              goto while_break___1;
            }
            __cil_tmp174 = *pbitmapin;
            __cil_tmp175 = (int )__cil_tmp174;
            __cil_tmp176 = __cil_tmp175 >> inbit;
            __cil_tmp177 = __cil_tmp176 & 1;
            __cil_tmp178 = __cil_tmp177 << outbit;
            __cil_tmp179 = *pbitmapout;
            __cil_tmp180 = (int )__cil_tmp179;
            __cil_tmp181 = __cil_tmp180 | __cil_tmp178;
            *pbitmapout = (u8 )__cil_tmp181;
            mult24 = mult24 + 1;
            if (mult24 == 3) {
              mult24 = 0;
              inbit = inbit - 1;
              width___0 = width___0 - 1;
            } else {
            }
            if (inbit < 0) {
              goto _L;
            } else
            if (width___0 == 0) {
              _L:
              src_bytes = src_bytes - 1U;
              pbitmapin = pbitmapin + 1;
              inbit = 7;
              if (width___0 == 0) {
                __cil_tmp182 = (unsigned long )image;
                __cil_tmp183 = __cil_tmp182 + 8;
                __cil_tmp184 = *((__u32 *)__cil_tmp183);
                width___0 = (int )__cil_tmp184;
                outbit = 0;
              } else {
              }
            } else {
            }
            outbit = outbit - 1;
          }
          while_break___1: ;
          }
          byte_id_in_dword = byte_id_in_dword + 1;
          pbitmapout = pbitmapout + 1;
        }
        while_break___0: ;
        }
        {
        __cil_tmp185 = (u16 )1;
        __cil_tmp186 = (struct atyfb_par *)par;
        wait_for_fifo(__cil_tmp185, __cil_tmp186);
        __cil_tmp187 = & hostdword;
        __cil_tmp188 = *__cil_tmp187;
        __cil_tmp189 = (struct atyfb_par *)par;
        aty_st_le32(512, __cil_tmp188, __cil_tmp189);
        }
      }
      while_break: ;
      }
    } else {
      goto _L___0;
    }
    }
  } else {
    _L___0:
    __cil_tmp190 = src_bytes + 3U;
    dwords = __cil_tmp190 / 4U;
    __cil_tmp191 = (unsigned long )image;
    __cil_tmp192 = __cil_tmp191 + 32;
    __cil_tmp193 = *((char * *)__cil_tmp192);
    pbitmap = (u32 *)__cil_tmp193;
    {
    while (1) {
      while_continue___2: ;
      if (dwords) {
      } else {
        goto while_break___2;
      }
      {
      __cil_tmp194 = (u16 )1;
      __cil_tmp195 = (struct atyfb_par *)par;
      wait_for_fifo(__cil_tmp194, __cil_tmp195);
      __cil_tmp196 = (__le32 *)pbitmap;
      tmp___8 = __le32_to_cpup(__cil_tmp196);
      __cil_tmp197 = (struct atyfb_par *)par;
      aty_st_le32(512, tmp___8, __cil_tmp197);
      dwords = dwords - 1U;
      pbitmap = pbitmap + 1;
      }
    }
    while_break___2: ;
    }
  }
  }
  {
  __cil_tmp198 = (u16 )1;
  __cil_tmp199 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp198, __cil_tmp199);
  __cil_tmp200 = (struct atyfb_par *)par;
  aty_st_le32(720, pix_width_save, __cil_tmp200);
  }
  return;
}
}
__inline static void __writeb(unsigned char val , void volatile *addr ) __attribute__((__no_instrument_function__)) ;
__inline static void __writeb(unsigned char val , void volatile *addr )
{ unsigned char volatile *__cil_tmp3 ;
  {
  __cil_tmp3 = (unsigned char volatile *)addr;
  __asm__ volatile ("mov"
                       "b"
                       " %0,%1": : "q" (val), "m" (*__cil_tmp3));
  return;
}
}
__inline static void memset_io(void volatile *addr , unsigned char val , size_t count ) __attribute__((__no_instrument_function__)) ;
__inline static void memset_io(void volatile *addr , unsigned char val , size_t count )
{ void *__cil_tmp4 ;
  int __cil_tmp5 ;
  {
  {
  __cil_tmp4 = (void *)addr;
  __cil_tmp5 = (int )val;
  memset(__cil_tmp4, __cil_tmp5, count);
  }
  return;
}
}
static u8 cursor_bits_lookup[16] =
  { (u8 )0, (u8 )64, (u8 const )16, (u8 const )80,
        (u8 )4, (u8 )68, (u8 const )20, (u8 const )84,
        (u8 )1, (u8 )65, (u8 const )17, (u8 const )81,
        (u8 )5, (u8 )69, (u8 const )21, (u8 const )85};
static int atyfb_cursor(struct fb_info *info , struct fb_cursor *cursor )
{ struct atyfb_par *par ;
  u16 xoff ;
  u16 yoff ;
  int x ;
  int y ;
  int h ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 fg_idx ;
  u32 bg_idx ;
  u32 fg ;
  u32 bg ;
  u8 *src ;
  u8 *msk ;
  u8 *dst ;
  unsigned int width ;
  unsigned int height ;
  unsigned int align ;
  unsigned int i ;
  unsigned int j ;
  unsigned int offset ;
  u8 m ;
  u8 b ;
  u8 *tmp___9 ;
  u8 *tmp___10 ;
  u8 *tmp___11 ;
  u8 *tmp___12 ;
  u8 *tmp___13 ;
  u8 *tmp___14 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  void *__cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u16 __cil_tmp37 ;
  struct atyfb_par *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct atyfb_par *__cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  struct atyfb_par *__cil_tmp43 ;
  struct atyfb_par *__cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  struct atyfb_par *__cil_tmp46 ;
  __u16 __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  __u32 __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u16 __cil_tmp55 ;
  __u32 __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  __u32 __cil_tmp59 ;
  __u32 __cil_tmp60 ;
  __u32 __cil_tmp61 ;
  int __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  __u32 __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  __u16 __cil_tmp70 ;
  __u32 __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  __u32 __cil_tmp75 ;
  __u32 __cil_tmp76 ;
  __u32 __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  __u32 __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  u32 __cil_tmp86 ;
  u16 __cil_tmp87 ;
  struct atyfb_par *__cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  __u32 __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  __u32 __cil_tmp95 ;
  __u32 __cil_tmp96 ;
  __u32 __cil_tmp97 ;
  struct atyfb_par *__cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  int __cil_tmp100 ;
  int __cil_tmp101 ;
  int __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  unsigned int __cil_tmp105 ;
  struct atyfb_par *__cil_tmp106 ;
  unsigned int __cil_tmp107 ;
  u32 __cil_tmp108 ;
  u32 __cil_tmp109 ;
  unsigned int __cil_tmp110 ;
  struct atyfb_par *__cil_tmp111 ;
  __u16 __cil_tmp112 ;
  int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  __u16 *__cil_tmp123 ;
  __u16 *__cil_tmp124 ;
  __u16 __cil_tmp125 ;
  int __cil_tmp126 ;
  int __cil_tmp127 ;
  int __cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  __u16 *__cil_tmp132 ;
  __u16 *__cil_tmp133 ;
  __u16 __cil_tmp134 ;
  int __cil_tmp135 ;
  int __cil_tmp136 ;
  int __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  __u16 *__cil_tmp141 ;
  __u16 *__cil_tmp142 ;
  __u16 __cil_tmp143 ;
  int __cil_tmp144 ;
  int __cil_tmp145 ;
  int __cil_tmp146 ;
  int __cil_tmp147 ;
  int __cil_tmp148 ;
  int __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  __u16 *__cil_tmp153 ;
  __u16 *__cil_tmp154 ;
  __u16 __cil_tmp155 ;
  int __cil_tmp156 ;
  int __cil_tmp157 ;
  int __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  __u16 *__cil_tmp162 ;
  __u16 *__cil_tmp163 ;
  __u16 __cil_tmp164 ;
  int __cil_tmp165 ;
  int __cil_tmp166 ;
  int __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  __u16 *__cil_tmp171 ;
  __u16 *__cil_tmp172 ;
  __u16 __cil_tmp173 ;
  int __cil_tmp174 ;
  int __cil_tmp175 ;
  int __cil_tmp176 ;
  int __cil_tmp177 ;
  int __cil_tmp178 ;
  u16 __cil_tmp179 ;
  struct atyfb_par *__cil_tmp180 ;
  struct atyfb_par *__cil_tmp181 ;
  struct atyfb_par *__cil_tmp182 ;
  __u16 __cil_tmp183 ;
  int __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  char *__cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  char *__cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  __u32 __cil_tmp197 ;
  __u32 __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned long __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  void volatile *__cil_tmp205 ;
  size_t __cil_tmp206 ;
  unsigned int __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  __u16 __cil_tmp210 ;
  int __cil_tmp211 ;
  int __cil_tmp212 ;
  int __cil_tmp213 ;
  int __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  u8 __cil_tmp217 ;
  unsigned char __cil_tmp218 ;
  void volatile *__cil_tmp219 ;
  int __cil_tmp220 ;
  int __cil_tmp221 ;
  int __cil_tmp222 ;
  int __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  u8 __cil_tmp226 ;
  unsigned char __cil_tmp227 ;
  void volatile *__cil_tmp228 ;
  int __cil_tmp229 ;
  int __cil_tmp230 ;
  int __cil_tmp231 ;
  int __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  u8 __cil_tmp235 ;
  unsigned char __cil_tmp236 ;
  void volatile *__cil_tmp237 ;
  int __cil_tmp238 ;
  int __cil_tmp239 ;
  int __cil_tmp240 ;
  int __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  unsigned long __cil_tmp243 ;
  u8 __cil_tmp244 ;
  unsigned char __cil_tmp245 ;
  void volatile *__cil_tmp246 ;
  {
  __cil_tmp32 = (unsigned long )info;
  __cil_tmp33 = __cil_tmp32 + 1160;
  __cil_tmp34 = *((void **)__cil_tmp33);
  par = (struct atyfb_par *)__cil_tmp34;
  {
  __cil_tmp35 = (unsigned long )par;
  __cil_tmp36 = __cil_tmp35 + 1080;
  if (*((int *)__cil_tmp36)) {
    return (-1);
  } else {
  }
  }
  {
  __cil_tmp37 = (u16 )1;
  __cil_tmp38 = (struct atyfb_par *)par;
  wait_for_fifo(__cil_tmp37, __cil_tmp38);
  }
  {
  __cil_tmp39 = (unsigned long )cursor;
  __cil_tmp40 = __cil_tmp39 + 2;
  if (*((__u16 *)__cil_tmp40)) {
    {
    __cil_tmp41 = (struct atyfb_par *)par;
    tmp___7 = aty_ld_le32(208, __cil_tmp41);
    __cil_tmp42 = tmp___7 | 128U;
    __cil_tmp43 = (struct atyfb_par *)par;
    aty_st_le32(208, __cil_tmp42, __cil_tmp43);
    }
  } else {
    {
    __cil_tmp44 = (struct atyfb_par *)par;
    tmp___8 = aty_ld_le32(208, __cil_tmp44);
    __cil_tmp45 = tmp___8 & 4294967167U;
    __cil_tmp46 = (struct atyfb_par *)par;
    aty_st_le32(208, __cil_tmp45, __cil_tmp46);
    }
  }
  }
  {
  __cil_tmp47 = *((__u16 *)cursor);
  __cil_tmp48 = (int )__cil_tmp47;
  if (__cil_tmp48 & 2) {
    __cil_tmp49 = 160 + 16;
    __cil_tmp50 = (unsigned long )info;
    __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
    __cil_tmp52 = *((__u32 *)__cil_tmp51);
    __cil_tmp53 = (unsigned long )cursor;
    __cil_tmp54 = __cil_tmp53 + 16;
    __cil_tmp55 = *((__u16 *)__cil_tmp54);
    __cil_tmp56 = (__u32 )__cil_tmp55;
    __cil_tmp57 = (unsigned long )cursor;
    __cil_tmp58 = __cil_tmp57 + 24;
    __cil_tmp59 = *((__u32 *)__cil_tmp58);
    __cil_tmp60 = __cil_tmp59 - __cil_tmp56;
    __cil_tmp61 = __cil_tmp60 - __cil_tmp52;
    x = (int )__cil_tmp61;
    if (x < 0) {
      __cil_tmp62 = - x;
      xoff = (u16 )__cil_tmp62;
      x = 0;
    } else {
      xoff = (u16 )0;
    }
    __cil_tmp63 = 160 + 20;
    __cil_tmp64 = (unsigned long )info;
    __cil_tmp65 = __cil_tmp64 + __cil_tmp63;
    __cil_tmp66 = *((__u32 *)__cil_tmp65);
    __cil_tmp67 = 16 + 2;
    __cil_tmp68 = (unsigned long )cursor;
    __cil_tmp69 = __cil_tmp68 + __cil_tmp67;
    __cil_tmp70 = *((__u16 *)__cil_tmp69);
    __cil_tmp71 = (__u32 )__cil_tmp70;
    __cil_tmp72 = 24 + 4;
    __cil_tmp73 = (unsigned long )cursor;
    __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
    __cil_tmp75 = *((__u32 *)__cil_tmp74);
    __cil_tmp76 = __cil_tmp75 - __cil_tmp71;
    __cil_tmp77 = __cil_tmp76 - __cil_tmp66;
    y = (int )__cil_tmp77;
    if (y < 0) {
      __cil_tmp78 = - y;
      yoff = (u16 )__cil_tmp78;
      y = 0;
    } else {
      yoff = (u16 )0;
    }
    __cil_tmp79 = 24 + 12;
    __cil_tmp80 = (unsigned long )cursor;
    __cil_tmp81 = __cil_tmp80 + __cil_tmp79;
    __cil_tmp82 = *((__u32 *)__cil_tmp81);
    h = (int )__cil_tmp82;
    {
    __cil_tmp83 = 864 + 44;
    __cil_tmp84 = (unsigned long )par;
    __cil_tmp85 = __cil_tmp84 + __cil_tmp83;
    __cil_tmp86 = *((u32 *)__cil_tmp85);
    if (__cil_tmp86 & 1U) {
      y = y << 1;
      h = h << 1;
    } else {
    }
    }
    {
    __cil_tmp87 = (u16 )3;
    __cil_tmp88 = (struct atyfb_par *)par;
    wait_for_fifo(__cil_tmp87, __cil_tmp88);
    __cil_tmp89 = (int )yoff;
    __cil_tmp90 = __cil_tmp89 << 1;
    __cil_tmp91 = (__u32 )__cil_tmp90;
    __cil_tmp92 = 320 + 24;
    __cil_tmp93 = (unsigned long )info;
    __cil_tmp94 = __cil_tmp93 + __cil_tmp92;
    __cil_tmp95 = *((__u32 *)__cil_tmp94);
    __cil_tmp96 = __cil_tmp95 >> 3;
    __cil_tmp97 = __cil_tmp96 + __cil_tmp91;
    __cil_tmp98 = (struct atyfb_par *)par;
    aty_st_le32(104, __cil_tmp97, __cil_tmp98);
    __cil_tmp99 = (unsigned int )xoff;
    __cil_tmp100 = (int )yoff;
    __cil_tmp101 = 64 - h;
    __cil_tmp102 = __cil_tmp101 + __cil_tmp100;
    __cil_tmp103 = (u32 )__cil_tmp102;
    __cil_tmp104 = __cil_tmp103 << 16;
    __cil_tmp105 = __cil_tmp104 | __cil_tmp99;
    __cil_tmp106 = (struct atyfb_par *)par;
    aty_st_le32(112, __cil_tmp105, __cil_tmp106);
    __cil_tmp107 = (unsigned int )x;
    __cil_tmp108 = (u32 )y;
    __cil_tmp109 = __cil_tmp108 << 16;
    __cil_tmp110 = __cil_tmp109 | __cil_tmp107;
    __cil_tmp111 = (struct atyfb_par *)par;
    aty_st_le32(108, __cil_tmp110, __cil_tmp111);
    }
  } else {
  }
  }
  {
  __cil_tmp112 = *((__u16 *)cursor);
  __cil_tmp113 = (int )__cil_tmp112;
  if (__cil_tmp113 & 8) {
    {
    __cil_tmp114 = 24 + 16;
    __cil_tmp115 = (unsigned long )cursor;
    __cil_tmp116 = __cil_tmp115 + __cil_tmp114;
    fg_idx = *((__u32 *)__cil_tmp116);
    __cil_tmp117 = 24 + 20;
    __cil_tmp118 = (unsigned long )cursor;
    __cil_tmp119 = __cil_tmp118 + __cil_tmp117;
    bg_idx = *((__u32 *)__cil_tmp119);
    __cil_tmp120 = 688 + 24;
    __cil_tmp121 = (unsigned long )info;
    __cil_tmp122 = __cil_tmp121 + __cil_tmp120;
    __cil_tmp123 = *((__u16 **)__cil_tmp122);
    __cil_tmp124 = __cil_tmp123 + fg_idx;
    __cil_tmp125 = *__cil_tmp124;
    __cil_tmp126 = (int )__cil_tmp125;
    __cil_tmp127 = __cil_tmp126 & 255;
    __cil_tmp128 = __cil_tmp127 << 8;
    __cil_tmp129 = 688 + 16;
    __cil_tmp130 = (unsigned long )info;
    __cil_tmp131 = __cil_tmp130 + __cil_tmp129;
    __cil_tmp132 = *((__u16 **)__cil_tmp131);
    __cil_tmp133 = __cil_tmp132 + fg_idx;
    __cil_tmp134 = *__cil_tmp133;
    __cil_tmp135 = (int )__cil_tmp134;
    __cil_tmp136 = __cil_tmp135 & 255;
    __cil_tmp137 = __cil_tmp136 << 16;
    __cil_tmp138 = 688 + 8;
    __cil_tmp139 = (unsigned long )info;
    __cil_tmp140 = __cil_tmp139 + __cil_tmp138;
    __cil_tmp141 = *((__u16 **)__cil_tmp140);
    __cil_tmp142 = __cil_tmp141 + fg_idx;
    __cil_tmp143 = *__cil_tmp142;
    __cil_tmp144 = (int )__cil_tmp143;
    __cil_tmp145 = __cil_tmp144 & 255;
    __cil_tmp146 = __cil_tmp145 << 24;
    __cil_tmp147 = __cil_tmp146 | __cil_tmp137;
    __cil_tmp148 = __cil_tmp147 | __cil_tmp128;
    __cil_tmp149 = __cil_tmp148 | 255;
    fg = (u32 )__cil_tmp149;
    __cil_tmp150 = 688 + 24;
    __cil_tmp151 = (unsigned long )info;
    __cil_tmp152 = __cil_tmp151 + __cil_tmp150;
    __cil_tmp153 = *((__u16 **)__cil_tmp152);
    __cil_tmp154 = __cil_tmp153 + bg_idx;
    __cil_tmp155 = *__cil_tmp154;
    __cil_tmp156 = (int )__cil_tmp155;
    __cil_tmp157 = __cil_tmp156 & 255;
    __cil_tmp158 = __cil_tmp157 << 8;
    __cil_tmp159 = 688 + 16;
    __cil_tmp160 = (unsigned long )info;
    __cil_tmp161 = __cil_tmp160 + __cil_tmp159;
    __cil_tmp162 = *((__u16 **)__cil_tmp161);
    __cil_tmp163 = __cil_tmp162 + bg_idx;
    __cil_tmp164 = *__cil_tmp163;
    __cil_tmp165 = (int )__cil_tmp164;
    __cil_tmp166 = __cil_tmp165 & 255;
    __cil_tmp167 = __cil_tmp166 << 16;
    __cil_tmp168 = 688 + 8;
    __cil_tmp169 = (unsigned long )info;
    __cil_tmp170 = __cil_tmp169 + __cil_tmp168;
    __cil_tmp171 = *((__u16 **)__cil_tmp170);
    __cil_tmp172 = __cil_tmp171 + bg_idx;
    __cil_tmp173 = *__cil_tmp172;
    __cil_tmp174 = (int )__cil_tmp173;
    __cil_tmp175 = __cil_tmp174 & 255;
    __cil_tmp176 = __cil_tmp175 << 24;
    __cil_tmp177 = __cil_tmp176 | __cil_tmp167;
    __cil_tmp178 = __cil_tmp177 | __cil_tmp158;
    bg = (u32 )__cil_tmp178;
    __cil_tmp179 = (u16 )2;
    __cil_tmp180 = (struct atyfb_par *)par;
    wait_for_fifo(__cil_tmp179, __cil_tmp180);
    __cil_tmp181 = (struct atyfb_par *)par;
    aty_st_le32(96, bg, __cil_tmp181);
    __cil_tmp182 = (struct atyfb_par *)par;
    aty_st_le32(100, fg, __cil_tmp182);
    }
  } else {
  }
  }
  {
  __cil_tmp183 = *((__u16 *)cursor);
  __cil_tmp184 = (int )__cil_tmp183;
  if (__cil_tmp184 & 17) {
    {
    __cil_tmp185 = 24 + 32;
    __cil_tmp186 = (unsigned long )cursor;
    __cil_tmp187 = __cil_tmp186 + __cil_tmp185;
    __cil_tmp188 = *((char **)__cil_tmp187);
    src = (u8 *)__cil_tmp188;
    __cil_tmp189 = (unsigned long )cursor;
    __cil_tmp190 = __cil_tmp189 + 8;
    __cil_tmp191 = *((char **)__cil_tmp190);
    msk = (u8 *)__cil_tmp191;
    __cil_tmp192 = (unsigned long )info;
    __cil_tmp193 = __cil_tmp192 + 632;
    dst = *((u8 **)__cil_tmp193);
    __cil_tmp194 = 24 + 8;
    __cil_tmp195 = (unsigned long )cursor;
    __cil_tmp196 = __cil_tmp195 + __cil_tmp194;
    __cil_tmp197 = *((__u32 *)__cil_tmp196);
    __cil_tmp198 = __cil_tmp197 + 7U;
    width = __cil_tmp198 >> 3;
    __cil_tmp199 = 24 + 12;
    __cil_tmp200 = (unsigned long )cursor;
    __cil_tmp201 = __cil_tmp200 + __cil_tmp199;
    height = *((__u32 *)__cil_tmp201);
    __cil_tmp202 = 632 + 20;
    __cil_tmp203 = (unsigned long )info;
    __cil_tmp204 = __cil_tmp203 + __cil_tmp202;
    align = *((u32 *)__cil_tmp204);
    __cil_tmp205 = (void volatile *)dst;
    __cil_tmp206 = (size_t )1024;
    memset_io(__cil_tmp205, (unsigned char)170, __cil_tmp206);
    __cil_tmp207 = width * 2U;
    offset = align - __cil_tmp207;
    i = 0U;
    }
    {
    while (1) {
      while_continue: ;
      if (i < height) {
      } else {
        goto while_break;
      }
      j = 0U;
      {
      while (1) {
        while_continue___0: ;
        if (j < width) {
        } else {
          goto while_break___0;
        }
        tmp___9 = src;
        src = src + 1;
        b = *tmp___9;
        tmp___10 = msk;
        msk = msk + 1;
        m = *tmp___10;
        {
        __cil_tmp208 = (unsigned long )cursor;
        __cil_tmp209 = __cil_tmp208 + 4;
        __cil_tmp210 = *((__u16 *)__cil_tmp209);
        if ((int )__cil_tmp210 == 1) {
          goto case_1;
        } else
        if ((int )__cil_tmp210 == 0) {
          goto case_0;
        } else
        if (0) {
          case_1:
          {
          tmp___11 = dst;
          dst = dst + 1;
          __cil_tmp211 = (int )m;
          __cil_tmp212 = (int )b;
          __cil_tmp213 = __cil_tmp212 ^ __cil_tmp211;
          __cil_tmp214 = __cil_tmp213 >> 4;
          __cil_tmp215 = __cil_tmp214 * 1UL;
          __cil_tmp216 = (unsigned long )(cursor_bits_lookup) + __cil_tmp215;
          __cil_tmp217 = *((u8 *)__cil_tmp216);
          __cil_tmp218 = (unsigned char )__cil_tmp217;
          __cil_tmp219 = (void volatile *)tmp___11;
          __writeb(__cil_tmp218, __cil_tmp219);
          tmp___12 = dst;
          dst = dst + 1;
          __cil_tmp220 = (int )m;
          __cil_tmp221 = (int )b;
          __cil_tmp222 = __cil_tmp221 ^ __cil_tmp220;
          __cil_tmp223 = __cil_tmp222 & 15;
          __cil_tmp224 = __cil_tmp223 * 1UL;
          __cil_tmp225 = (unsigned long )(cursor_bits_lookup) + __cil_tmp224;
          __cil_tmp226 = *((u8 *)__cil_tmp225);
          __cil_tmp227 = (unsigned char )__cil_tmp226;
          __cil_tmp228 = (void volatile *)tmp___12;
          __writeb(__cil_tmp227, __cil_tmp228);
          }
          goto switch_break;
          case_0:
          {
          tmp___13 = dst;
          dst = dst + 1;
          __cil_tmp229 = (int )m;
          __cil_tmp230 = (int )b;
          __cil_tmp231 = __cil_tmp230 & __cil_tmp229;
          __cil_tmp232 = __cil_tmp231 >> 4;
          __cil_tmp233 = __cil_tmp232 * 1UL;
          __cil_tmp234 = (unsigned long )(cursor_bits_lookup) + __cil_tmp233;
          __cil_tmp235 = *((u8 *)__cil_tmp234);
          __cil_tmp236 = (unsigned char )__cil_tmp235;
          __cil_tmp237 = (void volatile *)tmp___13;
          __writeb(__cil_tmp236, __cil_tmp237);
          tmp___14 = dst;
          dst = dst + 1;
          __cil_tmp238 = (int )m;
          __cil_tmp239 = (int )b;
          __cil_tmp240 = __cil_tmp239 & __cil_tmp238;
          __cil_tmp241 = __cil_tmp240 & 15;
          __cil_tmp242 = __cil_tmp241 * 1UL;
          __cil_tmp243 = (unsigned long )(cursor_bits_lookup) + __cil_tmp242;
          __cil_tmp244 = *((u8 *)__cil_tmp243);
          __cil_tmp245 = (unsigned char )__cil_tmp244;
          __cil_tmp246 = (void volatile *)tmp___14;
          __writeb(__cil_tmp245, __cil_tmp246);
          }
          goto switch_break;
        } else {
          switch_break: ;
        }
        }
        j = j + 1U;
      }
      while_break___0: ;
      }
      dst = dst + offset;
      i = i + 1U;
    }
    while_break: ;
    }
  } else {
  }
  }
  return (0);
}
}
int aty_init_cursor(struct fb_info *info ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
int aty_init_cursor(struct fb_info *info )
{ unsigned long addr ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  __u32 __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  __u32 __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  char *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u8 *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  struct fb_ops *__cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  {
  __cil_tmp3 = 320 + 24;
  __cil_tmp4 = (unsigned long )info;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = 1UL << 12;
  __cil_tmp7 = 320 + 24;
  __cil_tmp8 = (unsigned long )info;
  __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
  __cil_tmp10 = *((__u32 *)__cil_tmp9);
  __cil_tmp11 = (unsigned long )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 - __cil_tmp6;
  *((__u32 *)__cil_tmp5) = (__u32 )__cil_tmp12;
  __cil_tmp13 = 320 + 24;
  __cil_tmp14 = (unsigned long )info;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  __cil_tmp16 = *((__u32 *)__cil_tmp15);
  __cil_tmp17 = (unsigned long )__cil_tmp16;
  __cil_tmp18 = (unsigned long )info;
  __cil_tmp19 = __cil_tmp18 + 1120;
  __cil_tmp20 = *((char **)__cil_tmp19);
  __cil_tmp21 = (unsigned long )__cil_tmp20;
  addr = __cil_tmp21 + __cil_tmp17;
  __cil_tmp22 = (unsigned long )info;
  __cil_tmp23 = __cil_tmp22 + 632;
  *((u8 **)__cil_tmp23) = (u8 *)addr;
  {
  __cil_tmp24 = (unsigned long )info;
  __cil_tmp25 = __cil_tmp24 + 632;
  __cil_tmp26 = *((u8 **)__cil_tmp25);
  if (! __cil_tmp26) {
    return (-6);
  } else {
  }
  }
  __cil_tmp27 = 632 + 8;
  __cil_tmp28 = (unsigned long )info;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = 1UL << 12;
  *((u32 *)__cil_tmp29) = (u32 )__cil_tmp30;
  __cil_tmp31 = 632 + 20;
  __cil_tmp32 = (unsigned long )info;
  __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
  *((u32 *)__cil_tmp33) = (u32 )16;
  __cil_tmp34 = 632 + 16;
  __cil_tmp35 = (unsigned long )info;
  __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
  *((u32 *)__cil_tmp36) = (u32 )16;
  __cil_tmp37 = 632 + 28;
  __cil_tmp38 = (unsigned long )info;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  *((u32 *)__cil_tmp39) = (u32 )4;
  __cil_tmp40 = (unsigned long )info;
  __cil_tmp41 = __cil_tmp40 + 1080;
  __cil_tmp42 = *((struct fb_ops **)__cil_tmp41);
  __cil_tmp43 = (unsigned long )__cil_tmp42;
  __cil_tmp44 = __cil_tmp43 + 112;
  *((int (**)(struct fb_info *info , struct fb_cursor *cursor ))__cil_tmp44) = & atyfb_cursor;
  return (0);
}
}
struct aty_dac_ops aty_dac_ati68860b ;
struct aty_dac_ops aty_dac_att21c498 ;
struct aty_pll_ops aty_pll_ati18818_1 ;
struct aty_pll_ops aty_pll_stg1703 ;
struct aty_pll_ops aty_pll_ch8398 ;
struct aty_pll_ops aty_pll_att20c408 ;
static void aty_dac_waste4(struct atyfb_par *par )
{
  {
  {
  aty_ld_8(192, par);
  aty_ld_8(194, par);
  aty_ld_8(194, par);
  aty_ld_8(194, par);
  aty_ld_8(194, par);
  }
  return;
}
}
static void aty_StrobeClock(struct atyfb_par *par )
{ u8 tmp___7 ;
  unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  {
  {
  ___udelay(111670UL);
  tmp___7 = aty_ld_8(144, par);
  __cil_tmp3 = (unsigned long )par;
  __cil_tmp4 = __cil_tmp3 + 856;
  __cil_tmp5 = *((unsigned long *)__cil_tmp4);
  __cil_tmp6 = 144UL + __cil_tmp5;
  __cil_tmp7 = (int )__cil_tmp6;
  __cil_tmp8 = (int )tmp___7;
  __cil_tmp9 = __cil_tmp8 | 64;
  __cil_tmp10 = (u8 )__cil_tmp9;
  aty_st_8(__cil_tmp7, __cil_tmp10, par);
  }
  return;
}
}
static void aty_st_514(int offset , u8 val , struct atyfb_par *par )
{ u8 __cil_tmp4 ;
  int __cil_tmp5 ;
  u8 __cil_tmp6 ;
  int __cil_tmp7 ;
  int __cil_tmp8 ;
  u8 __cil_tmp9 ;
  u8 __cil_tmp10 ;
  {
  {
  __cil_tmp4 = (u8 )1;
  aty_st_8(196, __cil_tmp4, par);
  __cil_tmp5 = offset & 255;
  __cil_tmp6 = (u8 )__cil_tmp5;
  aty_st_8(192, __cil_tmp6, par);
  __cil_tmp7 = offset >> 8;
  __cil_tmp8 = __cil_tmp7 & 255;
  __cil_tmp9 = (u8 )__cil_tmp8;
  aty_st_8(193, __cil_tmp9, par);
  aty_st_8(194, val, par);
  __cil_tmp10 = (u8 )0;
  aty_st_8(196, __cil_tmp10, par);
  }
  return;
}
}
static int aty_set_dac_514(struct fb_info *info , union aty_pll *pll___0 ,
                           u32 bpp , u32 accel ) ;
static struct __anonstruct_tab_254 tab[3] = { {(u8 )0, (u8 )65, (u8 )3, (u8 )113, (u8 )69},
        {(u8 )0, (u8 )69, (u8 )4, (u8 )12, (u8 )1},
        {(u8 )0, (u8 )69, (u8 )6, (u8 )14, (u8 )0}};
static int aty_set_dac_514(struct fb_info *info , union aty_pll *pll___0 ,
                           u32 bpp , u32 accel )
{ struct atyfb_par *par ;
  int i ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void * __cil_tmp9 ;
  u8 __cil_tmp10 ;
  struct atyfb_par *__cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u8 __cil_tmp14 ;
  struct atyfb_par *__cil_tmp15 ;
  u8 __cil_tmp16 ;
  struct atyfb_par *__cil_tmp17 ;
  u8 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  u8 __cil_tmp23 ;
  struct atyfb_par *__cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u8 __cil_tmp28 ;
  struct atyfb_par *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  u8 __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  u8 __cil_tmp38 ;
  struct atyfb_par *__cil_tmp39 ;
  {
  __cil_tmp7 = (unsigned long )info;
  __cil_tmp8 = __cil_tmp7 + 1160;
  __cil_tmp9 = *((void * *)__cil_tmp8);
  par = (struct atyfb_par *)__cil_tmp9;
  if ((int )bpp == 16) {
    goto case_16;
  } else
  if ((int )bpp == 32) {
    goto case_32;
  } else {
    {
    goto switch_default;
    if (0) {
      switch_default:
      i = 0;
      goto switch_break;
      case_16:
      i = 1;
      goto switch_break;
      case_32:
      i = 2;
      goto switch_break;
    } else {
      switch_break: ;
    }
    }
  }
  {
  __cil_tmp10 = (u8 )0;
  __cil_tmp11 = (struct atyfb_par *)par;
  aty_st_514(144, __cil_tmp10, __cil_tmp11);
  __cil_tmp12 = i * 5UL;
  __cil_tmp13 = (unsigned long )(tab) + __cil_tmp12;
  __cil_tmp14 = *((u8 *)__cil_tmp13);
  __cil_tmp15 = (struct atyfb_par *)par;
  aty_st_514(4, __cil_tmp14, __cil_tmp15);
  __cil_tmp16 = (u8 )0;
  __cil_tmp17 = (struct atyfb_par *)par;
  aty_st_514(5, __cil_tmp16, __cil_tmp17);
  __cil_tmp18 = (u8 )1;
  __cil_tmp19 = (struct atyfb_par *)par;
  aty_st_514(2, __cil_tmp18, __cil_tmp19);
  __cil_tmp20 = i * 5UL;
  __cil_tmp21 = __cil_tmp20 + 1;
  __cil_tmp22 = (unsigned long )(tab) + __cil_tmp21;
  __cil_tmp23 = *((u8 *)__cil_tmp22);
  __cil_tmp24 = (struct atyfb_par *)par;
  aty_st_514(113, __cil_tmp23, __cil_tmp24);
  __cil_tmp25 = i * 5UL;
  __cil_tmp26 = __cil_tmp25 + 2;
  __cil_tmp27 = (unsigned long )(tab) + __cil_tmp26;
  __cil_tmp28 = *((u8 *)__cil_tmp27);
  __cil_tmp29 = (struct atyfb_par *)par;
  aty_st_514(10, __cil_tmp28, __cil_tmp29);
  __cil_tmp30 = i * 5UL;
  __cil_tmp31 = __cil_tmp30 + 3;
  __cil_tmp32 = (unsigned long )(tab) + __cil_tmp31;
  __cil_tmp33 = *((u8 *)__cil_tmp32);
  __cil_tmp34 = (int )__cil_tmp33;
  __cil_tmp35 = i * 5UL;
  __cil_tmp36 = __cil_tmp35 + 4;
  __cil_tmp37 = (unsigned long )(tab) + __cil_tmp36;
  __cil_tmp38 = *((u8 *)__cil_tmp37);
  __cil_tmp39 = (struct atyfb_par *)par;
  aty_st_514(__cil_tmp34, __cil_tmp38, __cil_tmp39);
  }
  return (0);
}
}
static int aty_var_to_pll_514(struct fb_info *info , u32 vclk_per , u32 bpp ,
                              union aty_pll *pll___0 ) ;
static struct __anonstruct_RGB514_clocks_255 RGB514_clocks[7] = { {(u32 )8000, (u8 )((3 << 6) | 20), (u8 )9},
        {(u32 )10000, (u8 )((1 << 6) | 19), (u8 )3},
        {(u32 )13000, (u8 )((1 << 6) | 2), (u8 )3},
        {(u32 )14000, (u8 )((2 << 6) | 8), (u8 )7},
        {(u32 )16000, (u8 )((1 << 6) | 44), (u8 )6},
        {(u32 )25000, (u8 )((1 << 6) | 15), (u8 )5},
        {(u32 )50000, (u8 )53, (u8 )7}};
static int aty_var_to_pll_514(struct fb_info *info , u32 vclk_per , u32 bpp ,
                              union aty_pll *pll___0 )
{ int i ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  {
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp6 = 56UL / 8UL;
    __cil_tmp7 = __cil_tmp6 + 0UL;
    __cil_tmp8 = (unsigned long )i;
    if (__cil_tmp8 < __cil_tmp7) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp9 = i * 8UL;
    __cil_tmp10 = (unsigned long )(RGB514_clocks) + __cil_tmp9;
    __cil_tmp11 = *((u32 *)__cil_tmp10);
    if (vclk_per <= __cil_tmp11) {
      __cil_tmp12 = i * 8UL;
      __cil_tmp13 = __cil_tmp12 + 4;
      __cil_tmp14 = (unsigned long )(RGB514_clocks) + __cil_tmp13;
      *((u8 *)pll___0) = *((u8 *)__cil_tmp14);
      __cil_tmp15 = 0 + 1;
      __cil_tmp16 = (unsigned long )pll___0;
      __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
      __cil_tmp18 = i * 8UL;
      __cil_tmp19 = __cil_tmp18 + 5;
      __cil_tmp20 = (unsigned long )(RGB514_clocks) + __cil_tmp19;
      *((u8 *)__cil_tmp17) = *((u8 *)__cil_tmp20);
      return (0);
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  return (-22);
}
}
static u32 aty_pll_514_to_var(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u8 df ;
  u8 vco_div_count ;
  u8 ref_div_count ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void * __cil_tmp9 ;
  u8 __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  u8 __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  u8 __cil_tmp19 ;
  int __cil_tmp20 ;
  int __cil_tmp21 ;
  u32 __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u32 __cil_tmp28 ;
  u32 __cil_tmp29 ;
  u32 __cil_tmp30 ;
  {
  __cil_tmp7 = (unsigned long )info;
  __cil_tmp8 = __cil_tmp7 + 1160;
  __cil_tmp9 = *((void * *)__cil_tmp8);
  par = (struct atyfb_par *)__cil_tmp9;
  __cil_tmp10 = *((u8 *)pll___0);
  __cil_tmp11 = (int )__cil_tmp10;
  __cil_tmp12 = __cil_tmp11 >> 6;
  df = (u8 )__cil_tmp12;
  __cil_tmp13 = *((u8 *)pll___0);
  __cil_tmp14 = (int )__cil_tmp13;
  __cil_tmp15 = __cil_tmp14 & 63;
  vco_div_count = (u8 )__cil_tmp15;
  __cil_tmp16 = 0 + 1;
  __cil_tmp17 = (unsigned long )pll___0;
  __cil_tmp18 = __cil_tmp17 + __cil_tmp16;
  __cil_tmp19 = *((u8 *)__cil_tmp18);
  ref_div_count = (u8 )__cil_tmp19;
  {
  __cil_tmp20 = (int )vco_div_count;
  __cil_tmp21 = __cil_tmp20 + 65;
  __cil_tmp22 = (u32 )__cil_tmp21;
  __cil_tmp23 = (int )df;
  __cil_tmp24 = 3 - __cil_tmp23;
  __cil_tmp25 = (u32 )ref_div_count;
  __cil_tmp26 = (unsigned long )par;
  __cil_tmp27 = __cil_tmp26 + 1048;
  __cil_tmp28 = *((u32 *)__cil_tmp27);
  __cil_tmp29 = __cil_tmp28 * __cil_tmp25;
  __cil_tmp30 = __cil_tmp29 << __cil_tmp24;
  return (__cil_tmp30 / __cil_tmp22);
  }
}
}
static void aty_set_pll_514(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  void * __cil_tmp6 ;
  u8 __cil_tmp7 ;
  struct atyfb_par *__cil_tmp8 ;
  u8 __cil_tmp9 ;
  struct atyfb_par *__cil_tmp10 ;
  u8 __cil_tmp11 ;
  struct atyfb_par *__cil_tmp12 ;
  u8 __cil_tmp13 ;
  struct atyfb_par *__cil_tmp14 ;
  u8 __cil_tmp15 ;
  struct atyfb_par *__cil_tmp16 ;
  u8 __cil_tmp17 ;
  struct atyfb_par *__cil_tmp18 ;
  u8 __cil_tmp19 ;
  u8 __cil_tmp20 ;
  struct atyfb_par *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u8 __cil_tmp25 ;
  u8 __cil_tmp26 ;
  struct atyfb_par *__cil_tmp27 ;
  {
  {
  __cil_tmp4 = (unsigned long )info;
  __cil_tmp5 = __cil_tmp4 + 1160;
  __cil_tmp6 = *((void * *)__cil_tmp5);
  par = (struct atyfb_par *)__cil_tmp6;
  __cil_tmp7 = (u8 )2;
  __cil_tmp8 = (struct atyfb_par *)par;
  aty_st_514(6, __cil_tmp7, __cil_tmp8);
  __cil_tmp9 = (u8 )1;
  __cil_tmp10 = (struct atyfb_par *)par;
  aty_st_514(16, __cil_tmp9, __cil_tmp10);
  __cil_tmp11 = (u8 )1;
  __cil_tmp12 = (struct atyfb_par *)par;
  aty_st_514(112, __cil_tmp11, __cil_tmp12);
  __cil_tmp13 = (u8 )31;
  __cil_tmp14 = (struct atyfb_par *)par;
  aty_st_514(143, __cil_tmp13, __cil_tmp14);
  __cil_tmp15 = (u8 )0;
  __cil_tmp16 = (struct atyfb_par *)par;
  aty_st_514(3, __cil_tmp15, __cil_tmp16);
  __cil_tmp17 = (u8 )0;
  __cil_tmp18 = (struct atyfb_par *)par;
  aty_st_514(5, __cil_tmp17, __cil_tmp18);
  __cil_tmp19 = *((u8 *)pll___0);
  __cil_tmp20 = (u8 )__cil_tmp19;
  __cil_tmp21 = (struct atyfb_par *)par;
  aty_st_514(32, __cil_tmp20, __cil_tmp21);
  __cil_tmp22 = 0 + 1;
  __cil_tmp23 = (unsigned long )pll___0;
  __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
  __cil_tmp25 = *((u8 *)__cil_tmp24);
  __cil_tmp26 = (u8 )__cil_tmp25;
  __cil_tmp27 = (struct atyfb_par *)par;
  aty_st_514(33, __cil_tmp26, __cil_tmp27);
  }
  return;
}
}
struct aty_dac_ops aty_dac_ibm514 = {& aty_set_dac_514};
struct aty_pll_ops aty_pll_ibm514 = {& aty_var_to_pll_514, & aty_pll_514_to_var, & aty_set_pll_514, (void (*)(struct fb_info *info ,
                                                                             union aty_pll *pll ))0,
    (int (*)(struct fb_info *info , union aty_pll *pll ))0, (void (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0};
static int aty_set_dac_ATI68860_B(struct fb_info *info , union aty_pll *pll___0 ,
                                  u32 bpp , u32 accel )
{ struct atyfb_par *par ;
  u32 gModeReg ;
  u32 devSetupRegA ;
  u32 temp ;
  u32 mask ;
  u8 tmp___7 ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  void * __cil_tmp16 ;
  struct atyfb_par *__cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  unsigned int __cil_tmp19 ;
  u8 __cil_tmp20 ;
  struct atyfb_par *__cil_tmp21 ;
  u8 __cil_tmp22 ;
  struct atyfb_par *__cil_tmp23 ;
  u8 __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  u8 __cil_tmp26 ;
  struct atyfb_par *__cil_tmp27 ;
  struct atyfb_par *__cil_tmp28 ;
  unsigned int __cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  u8 __cil_tmp31 ;
  struct atyfb_par *__cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  __u32 __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  __u32 __cil_tmp40 ;
  struct atyfb_par *__cil_tmp41 ;
  unsigned int __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  u8 __cil_tmp45 ;
  struct atyfb_par *__cil_tmp46 ;
  struct atyfb_par *__cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  u8 __cil_tmp49 ;
  struct atyfb_par *__cil_tmp50 ;
  struct atyfb_par *__cil_tmp51 ;
  u32 __cil_tmp52 ;
  struct atyfb_par *__cil_tmp53 ;
  {
  __cil_tmp14 = (unsigned long )info;
  __cil_tmp15 = __cil_tmp14 + 1160;
  __cil_tmp16 = *((void * *)__cil_tmp15);
  par = (struct atyfb_par *)__cil_tmp16;
  gModeReg = (u32 )0;
  devSetupRegA = (u32 )0;
  if ((int )bpp == 8) {
    goto case_8;
  } else
  if ((int )bpp == 15) {
    goto case_15;
  } else
  if ((int )bpp == 16) {
    goto case_16;
  } else
  if ((int )bpp == 24) {
    goto case_24;
  } else
  if ((int )bpp == 32) {
    goto case_32;
  } else
  if (0) {
    case_8:
    gModeReg = (u32 )131;
    devSetupRegA = (u32 )96;
    goto switch_break;
    case_15:
    gModeReg = (u32 )160;
    devSetupRegA = (u32 )96;
    goto switch_break;
    case_16:
    gModeReg = (u32 )161;
    devSetupRegA = (u32 )96;
    goto switch_break;
    case_24:
    gModeReg = (u32 )192;
    devSetupRegA = (u32 )96;
    goto switch_break;
    case_32:
    gModeReg = (u32 )227;
    devSetupRegA = (u32 )96;
    goto switch_break;
  } else {
    switch_break: ;
  }
  if (! accel) {
    gModeReg = (u32 )128;
    devSetupRegA = (u32 )97;
  } else {
  }
  {
  __cil_tmp17 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_8(196, __cil_tmp17);
  temp = (u32 )tmp___7;
  __cil_tmp18 = temp & 4294967294U;
  __cil_tmp19 = __cil_tmp18 | 2U;
  __cil_tmp20 = (u8 )__cil_tmp19;
  __cil_tmp21 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp20, __cil_tmp21);
  __cil_tmp22 = (u8 )29;
  __cil_tmp23 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp22, __cil_tmp23);
  __cil_tmp24 = (u8 )gModeReg;
  __cil_tmp25 = (struct atyfb_par *)par;
  aty_st_8(195, __cil_tmp24, __cil_tmp25);
  __cil_tmp26 = (u8 )2;
  __cil_tmp27 = (struct atyfb_par *)par;
  aty_st_8(192, __cil_tmp26, __cil_tmp27);
  __cil_tmp28 = (struct atyfb_par *)par;
  tmp___8 = aty_ld_8(196, __cil_tmp28);
  temp = (u32 )tmp___8;
  __cil_tmp29 = temp | 1U;
  __cil_tmp30 = __cil_tmp29 | 2U;
  __cil_tmp31 = (u8 )__cil_tmp30;
  __cil_tmp32 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp31, __cil_tmp32);
  }
  {
  __cil_tmp33 = 320 + 24;
  __cil_tmp34 = (unsigned long )info;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
  __cil_tmp36 = *((__u32 *)__cil_tmp35);
  if (__cil_tmp36 < 1048576U) {
    mask = (u32 )4;
  } else {
    {
    __cil_tmp37 = 320 + 24;
    __cil_tmp38 = (unsigned long )info;
    __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
    __cil_tmp40 = *((__u32 *)__cil_tmp39);
    if (__cil_tmp40 == 1048576U) {
      mask = (u32 )8;
    } else {
      mask = (u32 )12;
    }
    }
  }
  }
  {
  __cil_tmp41 = (struct atyfb_par *)par;
  tmp___9 = aty_ld_8(192, __cil_tmp41);
  temp = (u32 )tmp___9;
  __cil_tmp42 = temp & 128U;
  __cil_tmp43 = devSetupRegA | mask;
  __cil_tmp44 = __cil_tmp43 | __cil_tmp42;
  __cil_tmp45 = (u8 )__cil_tmp44;
  __cil_tmp46 = (struct atyfb_par *)par;
  aty_st_8(192, __cil_tmp45, __cil_tmp46);
  __cil_tmp47 = (struct atyfb_par *)par;
  tmp___10 = aty_ld_8(196, __cil_tmp47);
  temp = (u32 )tmp___10;
  __cil_tmp48 = temp & 4294967292U;
  __cil_tmp49 = (u8 )__cil_tmp48;
  __cil_tmp50 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp49, __cil_tmp50);
  __cil_tmp51 = (struct atyfb_par *)par;
  aty_st_le32(160, 2299404529U, __cil_tmp51);
  __cil_tmp52 = (u32 )1191518464;
  __cil_tmp53 = (struct atyfb_par *)par;
  aty_st_le32(196, __cil_tmp52, __cil_tmp53);
  }
  return (0);
}
}
struct aty_dac_ops aty_dac_ati68860b = {& aty_set_dac_ATI68860_B};
static int aty_set_dac_ATT21C498(struct fb_info *info , union aty_pll *pll___0 ,
                                 u32 bpp , u32 accel )
{ struct atyfb_par *par ;
  u32 dotClock ;
  int muxmode ;
  int DACMask ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void * __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  u32 __cil_tmp15 ;
  u32 __cil_tmp16 ;
  struct atyfb_par *__cil_tmp17 ;
  u8 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  struct atyfb_par *__cil_tmp20 ;
  u32 __cil_tmp21 ;
  struct atyfb_par *__cil_tmp22 ;
  {
  __cil_tmp9 = (unsigned long )info;
  __cil_tmp10 = __cil_tmp9 + 1160;
  __cil_tmp11 = *((void * *)__cil_tmp10);
  par = (struct atyfb_par *)__cil_tmp11;
  muxmode = 0;
  DACMask = 0;
  __cil_tmp12 = 0 + 8;
  __cil_tmp13 = (unsigned long )pll___0;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  __cil_tmp15 = *((u32 *)__cil_tmp14);
  __cil_tmp16 = 100000000U / __cil_tmp15;
  dotClock = (u32 )__cil_tmp16;
  if ((int )bpp == 8) {
    goto case_8;
  } else
  if ((int )bpp == 15) {
    goto case_15;
  } else
  if ((int )bpp == 16) {
    goto case_16;
  } else
  if ((int )bpp == 24) {
    goto case_24;
  } else
  if ((int )bpp == 32) {
    goto case_32;
  } else
  if (0) {
    case_8:
    if (dotClock > 8000U) {
      DACMask = 36;
      muxmode = 1;
    } else {
      DACMask = 4;
    }
    goto switch_break;
    case_15:
    DACMask = 22;
    goto switch_break;
    case_16:
    DACMask = 54;
    goto switch_break;
    case_24:
    DACMask = 230;
    goto switch_break;
    case_32:
    DACMask = 230;
    goto switch_break;
  } else {
    switch_break: ;
  }
  {
  DACMask = DACMask | 2;
  __cil_tmp17 = (struct atyfb_par *)par;
  aty_dac_waste4(__cil_tmp17);
  __cil_tmp18 = (u8 )DACMask;
  __cil_tmp19 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp18, __cil_tmp19);
  __cil_tmp20 = (struct atyfb_par *)par;
  aty_st_le32(160, 2299404529U, __cil_tmp20);
  __cil_tmp21 = (u32 )466944;
  __cil_tmp22 = (struct atyfb_par *)par;
  aty_st_le32(196, __cil_tmp21, __cil_tmp22);
  }
  return (muxmode);
}
}
struct aty_dac_ops aty_dac_att21c498 = {& aty_set_dac_ATT21C498};
static int aty_var_to_pll_18818(struct fb_info *info , u32 vclk_per , u32 bpp ,
                                union aty_pll *pll___0 )
{ u32 MHz100 ;
  u32 program_bits ;
  u32 post_divider ;
  u32 __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  {
  MHz100 = 100000000U / vclk_per;
  program_bits = (u32 )-1;
  post_divider = (u32 )1;
  if (MHz100 > 15938U) {
    MHz100 = (u32 )15938;
    return (-22);
  } else
  if (MHz100 < 1000U) {
    program_bits = (u32 )0;
    return (-22);
  } else {
    {
    while (1) {
      while_continue: ;
      if (MHz100 < 8000U) {
      } else {
        goto while_break;
      }
      MHz100 = MHz100 * 2U;
      post_divider = post_divider * 2U;
    }
    while_break: ;
    }
  }
  MHz100 = MHz100 * 1000U;
  __cil_tmp8 = 46U * MHz100;
  MHz100 = __cil_tmp8 / 1432U;
  MHz100 = MHz100 + 500U;
  MHz100 = MHz100 / 1000U;
  if (program_bits == 4294967295U) {
    program_bits = MHz100 - 257U;
    if ((int )post_divider == 1) {
      goto case_1;
    } else
    if ((int )post_divider == 2) {
      goto case_2;
    } else
    if ((int )post_divider == 4) {
      goto case_4;
    } else {
      {
      goto switch_default;
      if (0) {
        case_1:
        program_bits = program_bits | 1536U;
        goto switch_break;
        case_2:
        program_bits = program_bits | 1024U;
        goto switch_break;
        case_4:
        program_bits = program_bits | 512U;
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  } else {
  }
  program_bits = program_bits | 6144U;
  *((u32 *)pll___0) = program_bits;
  __cil_tmp9 = 0 + 4;
  __cil_tmp10 = (unsigned long )pll___0;
  __cil_tmp11 = __cil_tmp10 + __cil_tmp9;
  *((u32 *)__cil_tmp11) = (u32 )0;
  __cil_tmp12 = 0 + 12;
  __cil_tmp13 = (unsigned long )pll___0;
  __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
  *((u32 *)__cil_tmp14) = post_divider;
  __cil_tmp15 = 0 + 8;
  __cil_tmp16 = (unsigned long )pll___0;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  *((u32 *)__cil_tmp17) = vclk_per;
  return (0);
}
}
static u32 aty_pll_18818_to_var(struct fb_info *info , union aty_pll *pll___0 )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u32 __cil_tmp6 ;
  {
  {
  __cil_tmp3 = 0 + 8;
  __cil_tmp4 = (unsigned long )pll___0;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = *((u32 *)__cil_tmp5);
  return ((u32 )__cil_tmp6);
  }
}
}
static void aty_ICS2595_put1bit(u8 data , struct atyfb_par *par )
{ u8 tmp___7 ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  int __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  int __cil_tmp15 ;
  u8 __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  int __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  u8 __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  u8 __cil_tmp34 ;
  {
  {
  __cil_tmp4 = (int )data;
  __cil_tmp5 = __cil_tmp4 & 1;
  data = (u8 )__cil_tmp5;
  tmp___7 = aty_ld_8(144, par);
  __cil_tmp6 = (unsigned long )par;
  __cil_tmp7 = __cil_tmp6 + 856;
  __cil_tmp8 = *((unsigned long *)__cil_tmp7);
  __cil_tmp9 = 144UL + __cil_tmp8;
  __cil_tmp10 = (int )__cil_tmp9;
  __cil_tmp11 = (int )data;
  __cil_tmp12 = __cil_tmp11 << 2;
  __cil_tmp13 = (int )tmp___7;
  __cil_tmp14 = __cil_tmp13 & -5;
  __cil_tmp15 = __cil_tmp14 | __cil_tmp12;
  __cil_tmp16 = (u8 )__cil_tmp15;
  aty_st_8(__cil_tmp10, __cil_tmp16, par);
  tmp___7 = aty_ld_8(144, par);
  __cil_tmp17 = (unsigned long )par;
  __cil_tmp18 = __cil_tmp17 + 856;
  __cil_tmp19 = *((unsigned long *)__cil_tmp18);
  __cil_tmp20 = 144UL + __cil_tmp19;
  __cil_tmp21 = (int )__cil_tmp20;
  __cil_tmp22 = (int )tmp___7;
  __cil_tmp23 = __cil_tmp22 & -9;
  __cil_tmp24 = (u8 )__cil_tmp23;
  aty_st_8(__cil_tmp21, __cil_tmp24, par);
  aty_StrobeClock(par);
  tmp___7 = aty_ld_8(144, par);
  __cil_tmp25 = (unsigned long )par;
  __cil_tmp26 = __cil_tmp25 + 856;
  __cil_tmp27 = *((unsigned long *)__cil_tmp26);
  __cil_tmp28 = 144UL + __cil_tmp27;
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = 1 << 3;
  __cil_tmp31 = (int )tmp___7;
  __cil_tmp32 = __cil_tmp31 & -9;
  __cil_tmp33 = __cil_tmp32 | __cil_tmp30;
  __cil_tmp34 = (u8 )__cil_tmp33;
  aty_st_8(__cil_tmp29, __cil_tmp34, par);
  aty_StrobeClock(par);
  }
  return;
}
}
static void aty_set_pll18818(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 program_bits ;
  u32 locationAddr ;
  u32 i ;
  u8 old_clock_cntl ;
  u8 old_crtc_ext_disp ;
  unsigned long __ms ;
  unsigned long tmp___7 ;
  unsigned long __ms___1 ;
  unsigned long tmp___9 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  void * __cil_tmp17 ;
  struct atyfb_par *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  int __cil_tmp23 ;
  u8 __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  struct atyfb_par *__cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  u8 __cil_tmp30 ;
  struct atyfb_par *__cil_tmp31 ;
  u32 __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  u32 __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  int __cil_tmp41 ;
  u8 __cil_tmp42 ;
  struct atyfb_par *__cil_tmp43 ;
  struct atyfb_par *__cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  int __cil_tmp49 ;
  u8 __cil_tmp50 ;
  struct atyfb_par *__cil_tmp51 ;
  struct atyfb_par *__cil_tmp52 ;
  u8 __cil_tmp53 ;
  struct atyfb_par *__cil_tmp54 ;
  u8 __cil_tmp55 ;
  struct atyfb_par *__cil_tmp56 ;
  u8 __cil_tmp57 ;
  struct atyfb_par *__cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  u8 __cil_tmp60 ;
  struct atyfb_par *__cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  u8 __cil_tmp63 ;
  struct atyfb_par *__cil_tmp64 ;
  struct atyfb_par *__cil_tmp65 ;
  struct atyfb_par *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  int __cil_tmp71 ;
  int __cil_tmp72 ;
  int __cil_tmp73 ;
  u8 __cil_tmp74 ;
  struct atyfb_par *__cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  u32 __cil_tmp84 ;
  unsigned int __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  u8 __cil_tmp87 ;
  struct atyfb_par *__cil_tmp88 ;
  {
  {
  __cil_tmp15 = (unsigned long )info;
  __cil_tmp16 = __cil_tmp15 + 1160;
  __cil_tmp17 = *((void * *)__cil_tmp16);
  par = (struct atyfb_par *)__cil_tmp17;
  __cil_tmp18 = (struct atyfb_par *)par;
  old_clock_cntl = aty_ld_8(144, __cil_tmp18);
  __cil_tmp19 = (unsigned long )par;
  __cil_tmp20 = __cil_tmp19 + 856;
  __cil_tmp21 = *((unsigned long *)__cil_tmp20);
  __cil_tmp22 = 144UL + __cil_tmp21;
  __cil_tmp23 = (int )__cil_tmp22;
  __cil_tmp24 = (u8 )0;
  __cil_tmp25 = (struct atyfb_par *)par;
  aty_st_8(__cil_tmp23, __cil_tmp24, __cil_tmp25);
  __cil_tmp26 = (struct atyfb_par *)par;
  old_crtc_ext_disp = aty_ld_8(31, __cil_tmp26);
  __cil_tmp27 = 16777216 >> 24;
  __cil_tmp28 = (int )old_crtc_ext_disp;
  __cil_tmp29 = __cil_tmp28 | __cil_tmp27;
  __cil_tmp30 = (u8 )__cil_tmp29;
  __cil_tmp31 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp30, __cil_tmp31);
  __ms = 15UL;
  }
  {
  while (1) {
    while_continue: ;
    tmp___7 = __ms;
    __ms = __ms - 1UL;
    if (tmp___7) {
    } else {
      goto while_break;
    }
    {
    ___udelay(4295000UL);
    }
  }
  while_break: ;
  }
  {
  __cil_tmp32 = *((u32 *)pll___0);
  program_bits = (u32 )__cil_tmp32;
  __cil_tmp33 = 0 + 4;
  __cil_tmp34 = (unsigned long )pll___0;
  __cil_tmp35 = __cil_tmp34 + __cil_tmp33;
  __cil_tmp36 = *((u32 *)__cil_tmp35);
  locationAddr = (u32 )__cil_tmp36;
  __cil_tmp37 = (unsigned long )par;
  __cil_tmp38 = __cil_tmp37 + 856;
  __cil_tmp39 = *((unsigned long *)__cil_tmp38);
  __cil_tmp40 = 144UL + __cil_tmp39;
  __cil_tmp41 = (int )__cil_tmp40;
  __cil_tmp42 = (u8 )0;
  __cil_tmp43 = (struct atyfb_par *)par;
  aty_st_8(__cil_tmp41, __cil_tmp42, __cil_tmp43);
  __cil_tmp44 = (struct atyfb_par *)par;
  aty_StrobeClock(__cil_tmp44);
  __cil_tmp45 = (unsigned long )par;
  __cil_tmp46 = __cil_tmp45 + 856;
  __cil_tmp47 = *((unsigned long *)__cil_tmp46);
  __cil_tmp48 = 144UL + __cil_tmp47;
  __cil_tmp49 = (int )__cil_tmp48;
  __cil_tmp50 = (u8 )1;
  __cil_tmp51 = (struct atyfb_par *)par;
  aty_st_8(__cil_tmp49, __cil_tmp50, __cil_tmp51);
  __cil_tmp52 = (struct atyfb_par *)par;
  aty_StrobeClock(__cil_tmp52);
  __cil_tmp53 = (u8 )1;
  __cil_tmp54 = (struct atyfb_par *)par;
  aty_ICS2595_put1bit(__cil_tmp53, __cil_tmp54);
  __cil_tmp55 = (u8 )0;
  __cil_tmp56 = (struct atyfb_par *)par;
  aty_ICS2595_put1bit(__cil_tmp55, __cil_tmp56);
  __cil_tmp57 = (u8 )0;
  __cil_tmp58 = (struct atyfb_par *)par;
  aty_ICS2595_put1bit(__cil_tmp57, __cil_tmp58);
  i = (u32 )0;
  }
  {
  while (1) {
    while_continue___0: ;
    if (i < 5U) {
    } else {
      goto while_break___0;
    }
    {
    __cil_tmp59 = locationAddr & 1U;
    __cil_tmp60 = (u8 )__cil_tmp59;
    __cil_tmp61 = (struct atyfb_par *)par;
    aty_ICS2595_put1bit(__cil_tmp60, __cil_tmp61);
    locationAddr = locationAddr >> 1;
    i = i + 1U;
    }
  }
  while_break___0: ;
  }
  i = (u32 )0;
  {
  while (1) {
    while_continue___1: ;
    if (i < 13U) {
    } else {
      goto while_break___1;
    }
    {
    __cil_tmp62 = program_bits & 1U;
    __cil_tmp63 = (u8 )__cil_tmp62;
    __cil_tmp64 = (struct atyfb_par *)par;
    aty_ICS2595_put1bit(__cil_tmp63, __cil_tmp64);
    program_bits = program_bits >> 1;
    i = i + 1U;
    }
  }
  while_break___1: ;
  }
  {
  ___udelay(4295000UL);
  __cil_tmp65 = (struct atyfb_par *)par;
  aty_ld_8(192, __cil_tmp65);
  __cil_tmp66 = (struct atyfb_par *)par;
  aty_st_8(31, old_crtc_ext_disp, __cil_tmp66);
  __cil_tmp67 = (unsigned long )par;
  __cil_tmp68 = __cil_tmp67 + 856;
  __cil_tmp69 = *((unsigned long *)__cil_tmp68);
  __cil_tmp70 = 144UL + __cil_tmp69;
  __cil_tmp71 = (int )__cil_tmp70;
  __cil_tmp72 = (int )old_clock_cntl;
  __cil_tmp73 = __cil_tmp72 | 64;
  __cil_tmp74 = (u8 )__cil_tmp73;
  __cil_tmp75 = (struct atyfb_par *)par;
  aty_st_8(__cil_tmp71, __cil_tmp74, __cil_tmp75);
  __ms___1 = 50UL;
  }
  {
  while (1) {
    while_continue___2: ;
    tmp___9 = __ms___1;
    __ms___1 = __ms___1 - 1UL;
    if (tmp___9) {
    } else {
      goto while_break___2;
    }
    {
    ___udelay(4295000UL);
    }
  }
  while_break___2: ;
  }
  {
  __cil_tmp76 = (unsigned long )par;
  __cil_tmp77 = __cil_tmp76 + 856;
  __cil_tmp78 = *((unsigned long *)__cil_tmp77);
  __cil_tmp79 = 144UL + __cil_tmp78;
  __cil_tmp80 = (int )__cil_tmp79;
  __cil_tmp81 = 0 + 4;
  __cil_tmp82 = (unsigned long )pll___0;
  __cil_tmp83 = __cil_tmp82 + __cil_tmp81;
  __cil_tmp84 = *((u32 *)__cil_tmp83);
  __cil_tmp85 = __cil_tmp84 & 15U;
  __cil_tmp86 = __cil_tmp85 | 64U;
  __cil_tmp87 = (u8 )__cil_tmp86;
  __cil_tmp88 = (struct atyfb_par *)par;
  aty_st_8(__cil_tmp80, __cil_tmp87, __cil_tmp88);
  }
  return;
}
}
struct aty_pll_ops aty_pll_ati18818_1 = {& aty_var_to_pll_18818, & aty_pll_18818_to_var, & aty_set_pll18818, (void (*)(struct fb_info *info ,
                                                                                  union aty_pll *pll ))0,
    (int (*)(struct fb_info *info , union aty_pll *pll ))0, (void (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0};
static int aty_var_to_pll_1703(struct fb_info *info , u32 vclk_per , u32 bpp ,
                               union aty_pll *pll___0 )
{ u32 mhz100 ;
  u32 program_bits ;
  u32 mach64MinFreq ;
  u32 mach64MaxFreq ;
  u32 mach64RefFreq ;
  u32 temp ;
  u32 tempB ;
  u16 remainder ;
  u16 preRemainder ;
  short divider ;
  short tempA ;
  u32 __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  u32 __cil_tmp19 ;
  short __cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  {
  divider = (short)0;
  mhz100 = 100000000U / vclk_per;
  mach64MinFreq = (u32 )8000;
  mach64MaxFreq = (u32 )15938;
  mach64RefFreq = (u32 )1432;
  if (mhz100 == 0U) {
    program_bits = (u32 )224;
  } else {
    if (mhz100 < mach64MinFreq) {
      mhz100 = mach64MinFreq;
    } else {
    }
    if (mhz100 > mach64MaxFreq) {
      mhz100 = mach64MaxFreq;
    } else {
    }
    divider = (short)0;
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp16 = mach64MinFreq << 3;
      if (mhz100 < __cil_tmp16) {
      } else {
        goto while_break;
      }
      }
      mhz100 = mhz100 << 1;
      __cil_tmp17 = (int )divider;
      __cil_tmp18 = __cil_tmp17 + 32;
      divider = (short )__cil_tmp18;
    }
    while_break: ;
    }
    temp = mhz100;
    temp = temp * 8U;
    __cil_tmp19 = mach64RefFreq << 1;
    __cil_tmp20 = (short )__cil_tmp19;
    __cil_tmp21 = (u32 )__cil_tmp20;
    temp = temp - __cil_tmp21;
    tempA = (short)6;
    preRemainder = (u16 )65535;
    {
    while (1) {
      while_continue___0: ;
      tempB = temp;
      __cil_tmp22 = tempB % mach64RefFreq;
      remainder = (u16 )__cil_tmp22;
      tempB = tempB / mach64RefFreq;
      {
      __cil_tmp23 = tempB & 65535U;
      if (__cil_tmp23 <= 127U) {
        {
        __cil_tmp24 = (int )preRemainder;
        __cil_tmp25 = (int )remainder;
        if (__cil_tmp25 <= __cil_tmp24) {
          preRemainder = remainder;
          __cil_tmp26 = (int )divider;
          __cil_tmp27 = __cil_tmp26 & -32;
          divider = (short )__cil_tmp27;
          __cil_tmp28 = (int )tempA;
          __cil_tmp29 = (int )divider;
          __cil_tmp30 = __cil_tmp29 | __cil_tmp28;
          divider = (short )__cil_tmp30;
          __cil_tmp31 = tempB & 255U;
          __cil_tmp32 = __cil_tmp31 << 8;
          __cil_tmp33 = (int )divider;
          __cil_tmp34 = __cil_tmp33 & 255;
          __cil_tmp35 = (unsigned int )__cil_tmp34;
          __cil_tmp36 = __cil_tmp35 + __cil_tmp32;
          divider = (short )__cil_tmp36;
        } else {
        }
        }
      } else {
      }
      }
      temp = temp + mhz100;
      __cil_tmp37 = (int )tempA;
      __cil_tmp38 = __cil_tmp37 + 1;
      tempA = (short )__cil_tmp38;
      {
      __cil_tmp39 = 6 << 1;
      __cil_tmp40 = (int )tempA;
      if (__cil_tmp40 <= __cil_tmp39) {
      } else {
        goto while_break___0;
      }
      }
    }
    while_break___0: ;
    }
    program_bits = (u32 )divider;
  }
  *((u32 *)pll___0) = program_bits;
  __cil_tmp41 = 0 + 4;
  __cil_tmp42 = (unsigned long )pll___0;
  __cil_tmp43 = __cil_tmp42 + __cil_tmp41;
  *((u32 *)__cil_tmp43) = (u32 )0;
  __cil_tmp44 = 0 + 12;
  __cil_tmp45 = (unsigned long )pll___0;
  __cil_tmp46 = __cil_tmp45 + __cil_tmp44;
  *((u32 *)__cil_tmp46) = (u32 )divider;
  __cil_tmp47 = 0 + 8;
  __cil_tmp48 = (unsigned long )pll___0;
  __cil_tmp49 = __cil_tmp48 + __cil_tmp47;
  *((u32 *)__cil_tmp49) = vclk_per;
  return (0);
}
}
static u32 aty_pll_1703_to_var(struct fb_info *info , union aty_pll *pll___0 )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u32 __cil_tmp6 ;
  {
  {
  __cil_tmp3 = 0 + 8;
  __cil_tmp4 = (unsigned long )pll___0;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = *((u32 *)__cil_tmp5);
  return ((u32 )__cil_tmp6);
  }
}
}
static void aty_set_pll_1703(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 program_bits ;
  u32 locationAddr ;
  char old_crtc_ext_disp ;
  u8 tmp___7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  void * __cil_tmp10 ;
  struct atyfb_par *__cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  int __cil_tmp14 ;
  u8 __cil_tmp15 ;
  struct atyfb_par *__cil_tmp16 ;
  u32 __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  u32 __cil_tmp21 ;
  struct atyfb_par *__cil_tmp22 ;
  struct atyfb_par *__cil_tmp23 ;
  u32 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  u8 __cil_tmp26 ;
  struct atyfb_par *__cil_tmp27 ;
  u8 __cil_tmp28 ;
  struct atyfb_par *__cil_tmp29 ;
  unsigned int __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  u8 __cil_tmp32 ;
  struct atyfb_par *__cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  u8 __cil_tmp35 ;
  struct atyfb_par *__cil_tmp36 ;
  struct atyfb_par *__cil_tmp37 ;
  u8 __cil_tmp38 ;
  struct atyfb_par *__cil_tmp39 ;
  {
  {
  __cil_tmp8 = (unsigned long )info;
  __cil_tmp9 = __cil_tmp8 + 1160;
  __cil_tmp10 = *((void * *)__cil_tmp9);
  par = (struct atyfb_par *)__cil_tmp10;
  __cil_tmp11 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_8(31, __cil_tmp11);
  old_crtc_ext_disp = (char )tmp___7;
  __cil_tmp12 = 16777216 >> 24;
  __cil_tmp13 = (int )old_crtc_ext_disp;
  __cil_tmp14 = __cil_tmp13 | __cil_tmp12;
  __cil_tmp15 = (u8 )__cil_tmp14;
  __cil_tmp16 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp15, __cil_tmp16);
  __cil_tmp17 = *((u32 *)pll___0);
  program_bits = (u32 )__cil_tmp17;
  __cil_tmp18 = 0 + 4;
  __cil_tmp19 = (unsigned long )pll___0;
  __cil_tmp20 = __cil_tmp19 + __cil_tmp18;
  __cil_tmp21 = *((u32 *)__cil_tmp20);
  locationAddr = (u32 )__cil_tmp21;
  __cil_tmp22 = (struct atyfb_par *)par;
  aty_dac_waste4(__cil_tmp22);
  __cil_tmp23 = (struct atyfb_par *)par;
  aty_ld_8(194, __cil_tmp23);
  __cil_tmp24 = locationAddr << 1;
  __cil_tmp25 = __cil_tmp24 + 32U;
  __cil_tmp26 = (u8 )__cil_tmp25;
  __cil_tmp27 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp26, __cil_tmp27);
  __cil_tmp28 = (u8 )0;
  __cil_tmp29 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp28, __cil_tmp29);
  __cil_tmp30 = program_bits & 65280U;
  __cil_tmp31 = __cil_tmp30 >> 8;
  __cil_tmp32 = (u8 )__cil_tmp31;
  __cil_tmp33 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp32, __cil_tmp33);
  __cil_tmp34 = program_bits & 255U;
  __cil_tmp35 = (u8 )__cil_tmp34;
  __cil_tmp36 = (struct atyfb_par *)par;
  aty_st_8(194, __cil_tmp35, __cil_tmp36);
  __cil_tmp37 = (struct atyfb_par *)par;
  aty_ld_8(192, __cil_tmp37);
  __cil_tmp38 = (u8 )old_crtc_ext_disp;
  __cil_tmp39 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp38, __cil_tmp39);
  }
  return;
}
}
struct aty_pll_ops aty_pll_stg1703 = {& aty_var_to_pll_1703, & aty_pll_1703_to_var, & aty_set_pll_1703, (void (*)(struct fb_info *info ,
                                                                                union aty_pll *pll ))0,
    (int (*)(struct fb_info *info , union aty_pll *pll ))0, (void (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0};
static int aty_var_to_pll_8398(struct fb_info *info , u32 vclk_per , u32 bpp ,
                               union aty_pll *pll___0 )
{ u32 tempA ;
  u32 tempB ;
  u32 fOut ;
  u32 longMHz100 ;
  u32 diff ;
  u32 preDiff ;
  u32 mhz100 ;
  u32 program_bits ;
  u32 mach64MinFreq ;
  u32 mach64MaxFreq ;
  u32 mach64RefFreq ;
  u16 m ;
  u16 n ;
  u16 k ;
  u16 save_m ;
  u16 save_n ;
  u16 twoToKth ;
  u32 __cil_tmp22 ;
  u32 __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  u32 __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  u32 __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  int __cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  {
  k = (u16 )0;
  mhz100 = 100000000U / vclk_per;
  mach64MinFreq = (u32 )8000;
  mach64MaxFreq = (u32 )15938;
  mach64RefFreq = (u32 )1432;
  save_m = (u16 )0;
  save_n = (u16 )0;
  if (mhz100 == 0U) {
    program_bits = (u32 )224;
  } else {
    if (mhz100 < mach64MinFreq) {
      mhz100 = mach64MinFreq;
    } else {
    }
    if (mhz100 > mach64MaxFreq) {
      mhz100 = mach64MaxFreq;
    } else {
    }
    __cil_tmp22 = mhz100 * 256U;
    longMHz100 = __cil_tmp22 / 100U;
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp23 = mach64MinFreq << 3;
      if (mhz100 < __cil_tmp23) {
      } else {
        goto while_break;
      }
      }
      mhz100 = mhz100 << 1;
      __cil_tmp24 = (int )k;
      __cil_tmp25 = __cil_tmp24 + 1;
      k = (u16 )__cil_tmp25;
    }
    while_break: ;
    }
    __cil_tmp26 = (int )k;
    __cil_tmp27 = 1 << __cil_tmp26;
    twoToKth = (u16 )__cil_tmp27;
    diff = (u32 )0;
    preDiff = 4294967295U;
    m = (u16 )2;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp28 = (int )m;
      if (__cil_tmp28 <= 30) {
      } else {
        goto while_break___0;
      }
      }
      n = (u16 )35;
      {
      while (1) {
        while_continue___1: ;
        {
        __cil_tmp29 = (int )n;
        if (__cil_tmp29 <= 247) {
        } else {
          goto while_break___1;
        }
        }
        tempA = (u32 )938356;
        __cil_tmp30 = (int )n;
        __cil_tmp31 = __cil_tmp30 + 8;
        __cil_tmp32 = (u32 )__cil_tmp31;
        tempA = tempA * __cil_tmp32;
        __cil_tmp33 = (int )twoToKth;
        __cil_tmp34 = __cil_tmp33 * 256;
        tempB = (u32 )__cil_tmp34;
        __cil_tmp35 = (int )m;
        __cil_tmp36 = __cil_tmp35 + 2;
        __cil_tmp37 = (u32 )__cil_tmp36;
        tempB = tempB * __cil_tmp37;
        fOut = tempA / tempB;
        if (longMHz100 > fOut) {
          diff = longMHz100 - fOut;
        } else {
          diff = fOut - longMHz100;
        }
        if (diff < preDiff) {
          save_m = m;
          save_n = n;
          preDiff = diff;
        } else {
        }
        __cil_tmp38 = (int )n;
        __cil_tmp39 = __cil_tmp38 + 1;
        n = (u16 )__cil_tmp39;
      }
      while_break___1: ;
      }
      __cil_tmp40 = (int )m;
      __cil_tmp41 = __cil_tmp40 + 1;
      m = (u16 )__cil_tmp41;
    }
    while_break___0: ;
    }
    __cil_tmp42 = (int )save_n;
    __cil_tmp43 = __cil_tmp42 << 8;
    __cil_tmp44 = (int )save_m;
    __cil_tmp45 = (int )k;
    __cil_tmp46 = __cil_tmp45 << 6;
    __cil_tmp47 = __cil_tmp46 + __cil_tmp44;
    __cil_tmp48 = __cil_tmp47 + __cil_tmp43;
    program_bits = (u32 )__cil_tmp48;
  }
  *((u32 *)pll___0) = program_bits;
  __cil_tmp49 = 0 + 4;
  __cil_tmp50 = (unsigned long )pll___0;
  __cil_tmp51 = __cil_tmp50 + __cil_tmp49;
  *((u32 *)__cil_tmp51) = (u32 )0;
  __cil_tmp52 = 0 + 12;
  __cil_tmp53 = (unsigned long )pll___0;
  __cil_tmp54 = __cil_tmp53 + __cil_tmp52;
  *((u32 *)__cil_tmp54) = (u32 )0;
  __cil_tmp55 = 0 + 8;
  __cil_tmp56 = (unsigned long )pll___0;
  __cil_tmp57 = __cil_tmp56 + __cil_tmp55;
  *((u32 *)__cil_tmp57) = vclk_per;
  return (0);
}
}
static u32 aty_pll_8398_to_var(struct fb_info *info , union aty_pll *pll___0 )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u32 __cil_tmp6 ;
  {
  {
  __cil_tmp3 = 0 + 8;
  __cil_tmp4 = (unsigned long )pll___0;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = *((u32 *)__cil_tmp5);
  return ((u32 )__cil_tmp6);
  }
}
}
static void aty_set_pll_8398(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 program_bits ;
  u32 locationAddr ;
  char old_crtc_ext_disp ;
  char tmp___7 ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  void * __cil_tmp13 ;
  struct atyfb_par *__cil_tmp14 ;
  int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  u8 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  u32 __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  u32 __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  u8 __cil_tmp29 ;
  struct atyfb_par *__cil_tmp30 ;
  u8 __cil_tmp31 ;
  struct atyfb_par *__cil_tmp32 ;
  unsigned int __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  u8 __cil_tmp35 ;
  struct atyfb_par *__cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  u8 __cil_tmp38 ;
  struct atyfb_par *__cil_tmp39 ;
  struct atyfb_par *__cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  u8 __cil_tmp44 ;
  struct atyfb_par *__cil_tmp45 ;
  struct atyfb_par *__cil_tmp46 ;
  u8 __cil_tmp47 ;
  struct atyfb_par *__cil_tmp48 ;
  {
  {
  __cil_tmp11 = (unsigned long )info;
  __cil_tmp12 = __cil_tmp11 + 1160;
  __cil_tmp13 = *((void * *)__cil_tmp12);
  par = (struct atyfb_par *)__cil_tmp13;
  __cil_tmp14 = (struct atyfb_par *)par;
  tmp___8 = aty_ld_8(31, __cil_tmp14);
  old_crtc_ext_disp = (char )tmp___8;
  __cil_tmp15 = 16777216 >> 24;
  __cil_tmp16 = (int )old_crtc_ext_disp;
  __cil_tmp17 = __cil_tmp16 | __cil_tmp15;
  __cil_tmp18 = (u8 )__cil_tmp17;
  __cil_tmp19 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp18, __cil_tmp19);
  __cil_tmp20 = *((u32 *)pll___0);
  program_bits = (u32 )__cil_tmp20;
  __cil_tmp21 = 0 + 4;
  __cil_tmp22 = (unsigned long )pll___0;
  __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
  __cil_tmp24 = *((u32 *)__cil_tmp23);
  locationAddr = (u32 )__cil_tmp24;
  __cil_tmp25 = (struct atyfb_par *)par;
  tmp___9 = aty_ld_8(196, __cil_tmp25);
  tmp___7 = (char )tmp___9;
  __cil_tmp26 = (int )tmp___7;
  __cil_tmp27 = __cil_tmp26 | 1;
  __cil_tmp28 = __cil_tmp27 | 2;
  __cil_tmp29 = (u8 )__cil_tmp28;
  __cil_tmp30 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp29, __cil_tmp30);
  __cil_tmp31 = (u8 )locationAddr;
  __cil_tmp32 = (struct atyfb_par *)par;
  aty_st_8(192, __cil_tmp31, __cil_tmp32);
  __cil_tmp33 = program_bits & 65280U;
  __cil_tmp34 = __cil_tmp33 >> 8;
  __cil_tmp35 = (u8 )__cil_tmp34;
  __cil_tmp36 = (struct atyfb_par *)par;
  aty_st_8(193, __cil_tmp35, __cil_tmp36);
  __cil_tmp37 = program_bits & 255U;
  __cil_tmp38 = (u8 )__cil_tmp37;
  __cil_tmp39 = (struct atyfb_par *)par;
  aty_st_8(193, __cil_tmp38, __cil_tmp39);
  __cil_tmp40 = (struct atyfb_par *)par;
  tmp___10 = aty_ld_8(196, __cil_tmp40);
  tmp___7 = (char )tmp___10;
  __cil_tmp41 = (int )tmp___7;
  __cil_tmp42 = __cil_tmp41 & -2;
  __cil_tmp43 = __cil_tmp42 | 2;
  __cil_tmp44 = (u8 )__cil_tmp43;
  __cil_tmp45 = (struct atyfb_par *)par;
  aty_st_8(196, __cil_tmp44, __cil_tmp45);
  __cil_tmp46 = (struct atyfb_par *)par;
  aty_ld_8(192, __cil_tmp46);
  __cil_tmp47 = (u8 )old_crtc_ext_disp;
  __cil_tmp48 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp47, __cil_tmp48);
  }
  return;
}
}
struct aty_pll_ops aty_pll_ch8398 = {& aty_var_to_pll_8398, & aty_pll_8398_to_var, & aty_set_pll_8398, (void (*)(struct fb_info *info ,
                                                                                union aty_pll *pll ))0,
    (int (*)(struct fb_info *info , union aty_pll *pll ))0, (void (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0};
static int aty_var_to_pll_408(struct fb_info *info , u32 vclk_per , u32 bpp ,
                              union aty_pll *pll___0 )
{ u32 mhz100 ;
  u32 program_bits ;
  u32 mach64MinFreq ;
  u32 mach64MaxFreq ;
  u32 mach64RefFreq ;
  u32 temp ;
  u32 tempB ;
  u16 remainder ;
  u16 preRemainder ;
  short divider ;
  short tempA ;
  u32 __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  u32 __cil_tmp19 ;
  short __cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned int __cil_tmp23 ;
  int __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  {
  divider = (short)0;
  mhz100 = 100000000U / vclk_per;
  mach64MinFreq = (u32 )8000;
  mach64MaxFreq = (u32 )15938;
  mach64RefFreq = (u32 )1432;
  if (mhz100 == 0U) {
    program_bits = (u32 )255;
  } else {
    if (mhz100 < mach64MinFreq) {
      mhz100 = mach64MinFreq;
    } else {
    }
    if (mhz100 > mach64MaxFreq) {
      mhz100 = mach64MaxFreq;
    } else {
    }
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp16 = mach64MinFreq << 3;
      if (mhz100 < __cil_tmp16) {
      } else {
        goto while_break;
      }
      }
      mhz100 = mhz100 << 1;
      __cil_tmp17 = (int )divider;
      __cil_tmp18 = __cil_tmp17 + 64;
      divider = (short )__cil_tmp18;
    }
    while_break: ;
    }
    temp = mhz100;
    temp = temp * 4U;
    __cil_tmp19 = mach64RefFreq << 1;
    __cil_tmp20 = (short )__cil_tmp19;
    __cil_tmp21 = (u32 )__cil_tmp20;
    temp = temp - __cil_tmp21;
    tempA = (short)2;
    preRemainder = (u16 )65535;
    {
    while (1) {
      while_continue___0: ;
      tempB = temp;
      __cil_tmp22 = tempB % mach64RefFreq;
      remainder = (u16 )__cil_tmp22;
      tempB = tempB / mach64RefFreq;
      {
      __cil_tmp23 = tempB & 65535U;
      if (__cil_tmp23 <= 255U) {
        {
        __cil_tmp24 = (int )preRemainder;
        __cil_tmp25 = (int )remainder;
        if (__cil_tmp25 <= __cil_tmp24) {
          preRemainder = remainder;
          __cil_tmp26 = (int )divider;
          __cil_tmp27 = __cil_tmp26 & -64;
          divider = (short )__cil_tmp27;
          __cil_tmp28 = (int )tempA;
          __cil_tmp29 = (int )divider;
          __cil_tmp30 = __cil_tmp29 | __cil_tmp28;
          divider = (short )__cil_tmp30;
          __cil_tmp31 = tempB & 255U;
          __cil_tmp32 = __cil_tmp31 << 8;
          __cil_tmp33 = (int )divider;
          __cil_tmp34 = __cil_tmp33 & 255;
          __cil_tmp35 = (unsigned int )__cil_tmp34;
          __cil_tmp36 = __cil_tmp35 + __cil_tmp32;
          divider = (short )__cil_tmp36;
        } else {
        }
        }
      } else {
      }
      }
      temp = temp + mhz100;
      __cil_tmp37 = (int )tempA;
      __cil_tmp38 = __cil_tmp37 + 1;
      tempA = (short )__cil_tmp38;
      {
      __cil_tmp39 = (int )tempA;
      if (__cil_tmp39 <= 32) {
      } else {
        goto while_break___0;
      }
      }
    }
    while_break___0: ;
    }
    program_bits = (u32 )divider;
  }
  *((u32 *)pll___0) = program_bits;
  __cil_tmp40 = 0 + 4;
  __cil_tmp41 = (unsigned long )pll___0;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  *((u32 *)__cil_tmp42) = (u32 )0;
  __cil_tmp43 = 0 + 12;
  __cil_tmp44 = (unsigned long )pll___0;
  __cil_tmp45 = __cil_tmp44 + __cil_tmp43;
  *((u32 *)__cil_tmp45) = (u32 )divider;
  __cil_tmp46 = 0 + 8;
  __cil_tmp47 = (unsigned long )pll___0;
  __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
  *((u32 *)__cil_tmp48) = vclk_per;
  return (0);
}
}
static u32 aty_pll_408_to_var(struct fb_info *info , union aty_pll *pll___0 )
{ unsigned long __cil_tmp3 ;
  unsigned long __cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  u32 __cil_tmp6 ;
  {
  {
  __cil_tmp3 = 0 + 8;
  __cil_tmp4 = (unsigned long )pll___0;
  __cil_tmp5 = __cil_tmp4 + __cil_tmp3;
  __cil_tmp6 = *((u32 *)__cil_tmp5);
  return ((u32 )__cil_tmp6);
  }
}
}
static void aty_set_pll_408(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 program_bits ;
  u32 locationAddr ;
  u8 tmpA ;
  u8 tmpB ;
  u8 tmpC ;
  char old_crtc_ext_disp ;
  u8 tmp___7 ;
  u8 tmp___8 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  void * __cil_tmp14 ;
  struct atyfb_par *__cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  int __cil_tmp18 ;
  u8 __cil_tmp19 ;
  struct atyfb_par *__cil_tmp20 ;
  u32 __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  u32 __cil_tmp25 ;
  struct atyfb_par *__cil_tmp26 ;
  struct atyfb_par *__cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  struct atyfb_par *__cil_tmp30 ;
  struct atyfb_par *__cil_tmp31 ;
  int __cil_tmp32 ;
  int __cil_tmp33 ;
  struct atyfb_par *__cil_tmp34 ;
  struct atyfb_par *__cil_tmp35 ;
  u32 __cil_tmp36 ;
  u32 __cil_tmp37 ;
  struct atyfb_par *__cil_tmp38 ;
  struct atyfb_par *__cil_tmp39 ;
  u32 __cil_tmp40 ;
  struct atyfb_par *__cil_tmp41 ;
  struct atyfb_par *__cil_tmp42 ;
  u32 __cil_tmp43 ;
  struct atyfb_par *__cil_tmp44 ;
  struct atyfb_par *__cil_tmp45 ;
  int __cil_tmp46 ;
  int __cil_tmp47 ;
  struct atyfb_par *__cil_tmp48 ;
  struct atyfb_par *__cil_tmp49 ;
  struct atyfb_par *__cil_tmp50 ;
  u8 __cil_tmp51 ;
  struct atyfb_par *__cil_tmp52 ;
  {
  {
  __cil_tmp12 = (unsigned long )info;
  __cil_tmp13 = __cil_tmp12 + 1160;
  __cil_tmp14 = *((void * *)__cil_tmp13);
  par = (struct atyfb_par *)__cil_tmp14;
  __cil_tmp15 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_8(31, __cil_tmp15);
  old_crtc_ext_disp = (char )tmp___7;
  __cil_tmp16 = 16777216 >> 24;
  __cil_tmp17 = (int )old_crtc_ext_disp;
  __cil_tmp18 = __cil_tmp17 | __cil_tmp16;
  __cil_tmp19 = (u8 )__cil_tmp18;
  __cil_tmp20 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp19, __cil_tmp20);
  __cil_tmp21 = *((u32 *)pll___0);
  program_bits = (u32 )__cil_tmp21;
  __cil_tmp22 = 0 + 4;
  __cil_tmp23 = (unsigned long )pll___0;
  __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
  __cil_tmp25 = *((u32 *)__cil_tmp24);
  locationAddr = (u32 )__cil_tmp25;
  __cil_tmp26 = (struct atyfb_par *)par;
  aty_dac_waste4(__cil_tmp26);
  __cil_tmp27 = (struct atyfb_par *)par;
  tmp___8 = aty_ld_8(194, __cil_tmp27);
  __cil_tmp28 = (int )tmp___8;
  __cil_tmp29 = __cil_tmp28 | 1;
  tmpB = (u8 )__cil_tmp29;
  __cil_tmp30 = (struct atyfb_par *)par;
  aty_dac_waste4(__cil_tmp30);
  __cil_tmp31 = (struct atyfb_par *)par;
  aty_st_8(194, tmpB, __cil_tmp31);
  tmpA = tmpB;
  tmpC = tmpA;
  __cil_tmp32 = (int )tmpA;
  __cil_tmp33 = __cil_tmp32 | 8;
  tmpA = (u8 )__cil_tmp33;
  tmpB = (u8 )1;
  __cil_tmp34 = (struct atyfb_par *)par;
  aty_st_8(192, tmpB, __cil_tmp34);
  __cil_tmp35 = (struct atyfb_par *)par;
  aty_st_8(194, tmpA, __cil_tmp35);
  ___udelay(1718000UL);
  __cil_tmp36 = locationAddr << 2;
  locationAddr = __cil_tmp36 + 64U;
  tmpB = (u8 )locationAddr;
  __cil_tmp37 = program_bits >> 8;
  tmpA = (u8 )__cil_tmp37;
  __cil_tmp38 = (struct atyfb_par *)par;
  aty_st_8(192, tmpB, __cil_tmp38);
  __cil_tmp39 = (struct atyfb_par *)par;
  aty_st_8(194, tmpA, __cil_tmp39);
  __cil_tmp40 = locationAddr + 1U;
  tmpB = (u8 )__cil_tmp40;
  tmpA = (u8 )program_bits;
  __cil_tmp41 = (struct atyfb_par *)par;
  aty_st_8(192, tmpB, __cil_tmp41);
  __cil_tmp42 = (struct atyfb_par *)par;
  aty_st_8(194, tmpA, __cil_tmp42);
  __cil_tmp43 = locationAddr + 2U;
  tmpB = (u8 )__cil_tmp43;
  tmpA = (u8 )119;
  __cil_tmp44 = (struct atyfb_par *)par;
  aty_st_8(192, tmpB, __cil_tmp44);
  __cil_tmp45 = (struct atyfb_par *)par;
  aty_st_8(194, tmpA, __cil_tmp45);
  ___udelay(1718000UL);
  __cil_tmp46 = (int )tmpC;
  __cil_tmp47 = __cil_tmp46 & -10;
  tmpA = (u8 )__cil_tmp47;
  tmpB = (u8 )1;
  __cil_tmp48 = (struct atyfb_par *)par;
  aty_st_8(192, tmpB, __cil_tmp48);
  __cil_tmp49 = (struct atyfb_par *)par;
  aty_st_8(194, tmpA, __cil_tmp49);
  __cil_tmp50 = (struct atyfb_par *)par;
  aty_ld_8(192, __cil_tmp50);
  __cil_tmp51 = (u8 )old_crtc_ext_disp;
  __cil_tmp52 = (struct atyfb_par *)par;
  aty_st_8(31, __cil_tmp51, __cil_tmp52);
  }
  return;
}
}
struct aty_pll_ops aty_pll_att20c408 = {& aty_var_to_pll_408, & aty_pll_408_to_var, & aty_set_pll_408, (void (*)(struct fb_info *info ,
                                                                             union aty_pll *pll ))0,
    (int (*)(struct fb_info *info , union aty_pll *pll ))0, (void (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0};
static int aty_set_dac_unsupported(struct fb_info *info , union aty_pll *pll___0 ,
                                   u32 bpp , u32 accel )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void * __cil_tmp8 ;
  struct atyfb_par *__cil_tmp9 ;
  u32 __cil_tmp10 ;
  struct atyfb_par *__cil_tmp11 ;
  u32 __cil_tmp12 ;
  struct atyfb_par *__cil_tmp13 ;
  u32 __cil_tmp14 ;
  struct atyfb_par *__cil_tmp15 ;
  {
  {
  __cil_tmp6 = (unsigned long )info;
  __cil_tmp7 = __cil_tmp6 + 1160;
  __cil_tmp8 = *((void * *)__cil_tmp7);
  par = (struct atyfb_par *)__cil_tmp8;
  __cil_tmp9 = (struct atyfb_par *)par;
  aty_st_le32(160, 2299404529U, __cil_tmp9);
  __cil_tmp10 = (u32 )1191518464;
  __cil_tmp11 = (struct atyfb_par *)par;
  aty_st_le32(196, __cil_tmp10, __cil_tmp11);
  __cil_tmp12 = (u32 )1494094079;
  __cil_tmp13 = (struct atyfb_par *)par;
  aty_st_le32(160, __cil_tmp12, __cil_tmp13);
  __cil_tmp14 = (u32 )1191256320;
  __cil_tmp15 = (struct atyfb_par *)par;
  aty_st_le32(196, __cil_tmp14, __cil_tmp15);
  }
  return (0);
}
}
static int dummy(void)
{
  {
  return (0);
}
}
struct aty_dac_ops aty_dac_unsupported = {& aty_set_dac_unsupported};
struct aty_pll_ops aty_pll_unsupported = {(int (*)(struct fb_info *info , u32 vclk_per , u32 bpp , union aty_pll *pll ))((void *)(& dummy)),
    (u32 (*)(struct fb_info *info , union aty_pll *pll ))((void *)(& dummy)),
    (void (*)(struct fb_info *info , union aty_pll *pll ))((void *)(& dummy)),
    (void (*)(struct fb_info *info , union aty_pll *pll ))0, (int (*)(struct fb_info *info ,
                                                                              union aty_pll *pll ))0,
    (void (*)(struct fb_info *info , union aty_pll *pll ))0};
void ldv_main3_sequence_infinite_withcheck_stateful(void)
{ struct fb_info *var_aty_set_dac_514_3_p0 ;
  union aty_pll *var_aty_set_dac_514_3_p1 ;
  u32 var_aty_set_dac_514_3_p2 ;
  u32 var_aty_set_dac_514_3_p3 ;
  struct fb_info *var_aty_var_to_pll_514_4_p0 ;
  u32 var_aty_var_to_pll_514_4_p1 ;
  u32 var_aty_var_to_pll_514_4_p2 ;
  union aty_pll *var_aty_var_to_pll_514_4_p3 ;
  struct fb_info *var_aty_pll_514_to_var_5_p0 ;
  union aty_pll *var_aty_pll_514_to_var_5_p1 ;
  struct fb_info *var_aty_set_pll_514_6_p0 ;
  union aty_pll *var_aty_set_pll_514_6_p1 ;
  struct fb_info *var_aty_set_dac_ATI68860_B_7_p0 ;
  union aty_pll *var_aty_set_dac_ATI68860_B_7_p1 ;
  u32 var_aty_set_dac_ATI68860_B_7_p2 ;
  u32 var_aty_set_dac_ATI68860_B_7_p3 ;
  struct fb_info *var_aty_set_dac_ATT21C498_8_p0 ;
  union aty_pll *var_aty_set_dac_ATT21C498_8_p1 ;
  u32 var_aty_set_dac_ATT21C498_8_p2 ;
  u32 var_aty_set_dac_ATT21C498_8_p3 ;
  struct fb_info *var_aty_var_to_pll_18818_9_p0 ;
  u32 var_aty_var_to_pll_18818_9_p1 ;
  u32 var_aty_var_to_pll_18818_9_p2 ;
  union aty_pll *var_aty_var_to_pll_18818_9_p3 ;
  struct fb_info *var_aty_pll_18818_to_var_10_p0 ;
  union aty_pll *var_aty_pll_18818_to_var_10_p1 ;
  struct fb_info *var_aty_set_pll18818_12_p0 ;
  union aty_pll *var_aty_set_pll18818_12_p1 ;
  struct fb_info *var_aty_var_to_pll_1703_13_p0 ;
  u32 var_aty_var_to_pll_1703_13_p1 ;
  u32 var_aty_var_to_pll_1703_13_p2 ;
  union aty_pll *var_aty_var_to_pll_1703_13_p3 ;
  struct fb_info *var_aty_pll_1703_to_var_14_p0 ;
  union aty_pll *var_aty_pll_1703_to_var_14_p1 ;
  struct fb_info *var_aty_set_pll_1703_15_p0 ;
  union aty_pll *var_aty_set_pll_1703_15_p1 ;
  struct fb_info *var_aty_var_to_pll_8398_16_p0 ;
  u32 var_aty_var_to_pll_8398_16_p1 ;
  u32 var_aty_var_to_pll_8398_16_p2 ;
  union aty_pll *var_aty_var_to_pll_8398_16_p3 ;
  struct fb_info *var_aty_pll_8398_to_var_17_p0 ;
  union aty_pll *var_aty_pll_8398_to_var_17_p1 ;
  struct fb_info *var_aty_set_pll_8398_18_p0 ;
  union aty_pll *var_aty_set_pll_8398_18_p1 ;
  struct fb_info *var_aty_var_to_pll_408_19_p0 ;
  u32 var_aty_var_to_pll_408_19_p1 ;
  u32 var_aty_var_to_pll_408_19_p2 ;
  union aty_pll *var_aty_var_to_pll_408_19_p3 ;
  struct fb_info *var_aty_pll_408_to_var_20_p0 ;
  union aty_pll *var_aty_pll_408_to_var_20_p1 ;
  struct fb_info *var_aty_set_pll_408_21_p0 ;
  union aty_pll *var_aty_set_pll_408_21_p1 ;
  struct fb_info *var_aty_set_dac_unsupported_22_p0 ;
  union aty_pll *var_aty_set_dac_unsupported_22_p1 ;
  u32 var_aty_set_dac_unsupported_22_p2 ;
  u32 var_aty_set_dac_unsupported_22_p3 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      goto while_break;
    }
    {
    tmp___7 = __VERIFIER_nondet_int();
    }
    if (tmp___7 == 0) {
      goto case_0;
    } else
    if (tmp___7 == 1) {
      goto case_1;
    } else
    if (tmp___7 == 2) {
      goto case_2;
    } else
    if (tmp___7 == 3) {
      goto case_3;
    } else
    if (tmp___7 == 4) {
      goto case_4;
    } else
    if (tmp___7 == 5) {
      goto case_5;
    } else
    if (tmp___7 == 6) {
      goto case_6;
    } else
    if (tmp___7 == 7) {
      goto case_7;
    } else
    if (tmp___7 == 8) {
      goto case_8;
    } else
    if (tmp___7 == 9) {
      goto case_9;
    } else
    if (tmp___7 == 10) {
      goto case_10;
    } else
    if (tmp___7 == 11) {
      goto case_11;
    } else
    if (tmp___7 == 12) {
      goto case_12;
    } else
    if (tmp___7 == 13) {
      goto case_13;
    } else
    if (tmp___7 == 14) {
      goto case_14;
    } else
    if (tmp___7 == 15) {
      goto case_15;
    } else
    if (tmp___7 == 16) {
      goto case_16;
    } else
    if (tmp___7 == 17) {
      goto case_17;
    } else
    if (tmp___7 == 18) {
      goto case_18;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        aty_set_dac_514(var_aty_set_dac_514_3_p0, var_aty_set_dac_514_3_p1, var_aty_set_dac_514_3_p2,
                        var_aty_set_dac_514_3_p3);
        }
        goto switch_break;
        case_1:
        {
        aty_var_to_pll_514(var_aty_var_to_pll_514_4_p0, var_aty_var_to_pll_514_4_p1,
                           var_aty_var_to_pll_514_4_p2, var_aty_var_to_pll_514_4_p3);
        }
        goto switch_break;
        case_2:
        {
        aty_pll_514_to_var(var_aty_pll_514_to_var_5_p0, var_aty_pll_514_to_var_5_p1);
        }
        goto switch_break;
        case_3:
        {
        aty_set_pll_514(var_aty_set_pll_514_6_p0, var_aty_set_pll_514_6_p1);
        }
        goto switch_break;
        case_4:
        {
        aty_set_dac_ATI68860_B(var_aty_set_dac_ATI68860_B_7_p0, var_aty_set_dac_ATI68860_B_7_p1,
                               var_aty_set_dac_ATI68860_B_7_p2, var_aty_set_dac_ATI68860_B_7_p3);
        }
        goto switch_break;
        case_5:
        {
        aty_set_dac_ATT21C498(var_aty_set_dac_ATT21C498_8_p0, var_aty_set_dac_ATT21C498_8_p1,
                              var_aty_set_dac_ATT21C498_8_p2, var_aty_set_dac_ATT21C498_8_p3);
        }
        goto switch_break;
        case_6:
        {
        aty_var_to_pll_18818(var_aty_var_to_pll_18818_9_p0, var_aty_var_to_pll_18818_9_p1,
                             var_aty_var_to_pll_18818_9_p2, var_aty_var_to_pll_18818_9_p3);
        }
        goto switch_break;
        case_7:
        {
        aty_pll_18818_to_var(var_aty_pll_18818_to_var_10_p0, var_aty_pll_18818_to_var_10_p1);
        }
        goto switch_break;
        case_8:
        {
        aty_set_pll18818(var_aty_set_pll18818_12_p0, var_aty_set_pll18818_12_p1);
        }
        goto switch_break;
        case_9:
        {
        aty_var_to_pll_1703(var_aty_var_to_pll_1703_13_p0, var_aty_var_to_pll_1703_13_p1,
                            var_aty_var_to_pll_1703_13_p2, var_aty_var_to_pll_1703_13_p3);
        }
        goto switch_break;
        case_10:
        {
        aty_pll_1703_to_var(var_aty_pll_1703_to_var_14_p0, var_aty_pll_1703_to_var_14_p1);
        }
        goto switch_break;
        case_11:
        {
        aty_set_pll_1703(var_aty_set_pll_1703_15_p0, var_aty_set_pll_1703_15_p1);
        }
        goto switch_break;
        case_12:
        {
        aty_var_to_pll_8398(var_aty_var_to_pll_8398_16_p0, var_aty_var_to_pll_8398_16_p1,
                            var_aty_var_to_pll_8398_16_p2, var_aty_var_to_pll_8398_16_p3);
        }
        goto switch_break;
        case_13:
        {
        aty_pll_8398_to_var(var_aty_pll_8398_to_var_17_p0, var_aty_pll_8398_to_var_17_p1);
        }
        goto switch_break;
        case_14:
        {
        aty_set_pll_8398(var_aty_set_pll_8398_18_p0, var_aty_set_pll_8398_18_p1);
        }
        goto switch_break;
        case_15:
        {
        aty_var_to_pll_408(var_aty_var_to_pll_408_19_p0, var_aty_var_to_pll_408_19_p1,
                           var_aty_var_to_pll_408_19_p2, var_aty_var_to_pll_408_19_p3);
        }
        goto switch_break;
        case_16:
        {
        aty_pll_408_to_var(var_aty_pll_408_to_var_20_p0, var_aty_pll_408_to_var_20_p1);
        }
        goto switch_break;
        case_17:
        {
        aty_set_pll_408(var_aty_set_pll_408_21_p0, var_aty_set_pll_408_21_p1);
        }
        goto switch_break;
        case_18:
        {
        aty_set_dac_unsupported(var_aty_set_dac_unsupported_22_p0, var_aty_set_dac_unsupported_22_p1,
                                var_aty_set_dac_unsupported_22_p2, var_aty_set_dac_unsupported_22_p3);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  {
  ldv_check_final_state();
  }
  return;
}
}
void aty_set_pll_ct(struct fb_info *info , union aty_pll *pll___0 ) ;
static int aty_valid_pll_ct(struct fb_info *info , u32 vclk_per , struct pll_ct *pll___0 ) ;
static int aty_dsp_gt(struct fb_info *info , u32 bpp , struct pll_ct *pll___0 ) ;
static int aty_var_to_pll_ct(struct fb_info *info , u32 vclk_per , u32 bpp ,
                             union aty_pll *pll___0 ) ;
static u32 aty_pll_to_var_ct(struct fb_info *info , union aty_pll *pll___0 ) ;
u8 aty_ld_pll_ct(int offset , struct atyfb_par *par )
{ u8 res ;
  int __cil_tmp4 ;
  int __cil_tmp5 ;
  u8 __cil_tmp6 ;
  {
  {
  __cil_tmp4 = offset << 2;
  __cil_tmp5 = __cil_tmp4 & 252;
  __cil_tmp6 = (u8 )__cil_tmp5;
  aty_st_8(145, __cil_tmp6, par);
  res = aty_ld_8(146, par);
  }
  return (res);
}
}
static void aty_st_pll_ct(int offset , u8 val , struct atyfb_par *par )
{ int __cil_tmp4 ;
  int __cil_tmp5 ;
  int __cil_tmp6 ;
  u8 __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  u8 __cil_tmp10 ;
  int __cil_tmp11 ;
  int __cil_tmp12 ;
  int __cil_tmp13 ;
  u8 __cil_tmp14 ;
  {
  {
  __cil_tmp4 = offset << 2;
  __cil_tmp5 = __cil_tmp4 & 252;
  __cil_tmp6 = __cil_tmp5 | 2;
  __cil_tmp7 = (u8 )__cil_tmp6;
  aty_st_8(145, __cil_tmp7, par);
  __cil_tmp8 = (int )val;
  __cil_tmp9 = __cil_tmp8 & 255;
  __cil_tmp10 = (u8 )__cil_tmp9;
  aty_st_8(146, __cil_tmp10, par);
  __cil_tmp11 = offset << 2;
  __cil_tmp12 = __cil_tmp11 & 252;
  __cil_tmp13 = __cil_tmp12 & -3;
  __cil_tmp14 = (u8 )__cil_tmp13;
  aty_st_8(145, __cil_tmp14, par);
  }
  return;
}
}
static u8 postdividers[5] = { (u8 )1, (u8 )2, (u8 )4, (u8 )8,
        (u8 )3};
static int aty_dsp_gt(struct fb_info *info , u32 bpp , struct pll_ct *pll___0 )
{ u32 dsp_off ;
  u32 dsp_on ;
  u32 dsp_xclks ;
  u32 multiplier ;
  u32 divider ;
  u32 ras_multiplier ;
  u32 ras_divider ;
  u32 tmp___7 ;
  u8 vshift ;
  u8 xshift ;
  s8 dsp_precision ;
  struct atyfb_par *par ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  u32 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u8 __cil_tmp22 ;
  u32 __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  u8 __cil_tmp26 ;
  u32 __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  u8 __cil_tmp30 ;
  u32 __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  u32 __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u8 __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  u32 __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  void * __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  u16 __cil_tmp50 ;
  u32 __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  u32 __cil_tmp54 ;
  u32 __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  u16 __cil_tmp58 ;
  u32 __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  u32 __cil_tmp62 ;
  u32 __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  int __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  u32 __cil_tmp69 ;
  u32 __cil_tmp70 ;
  u32 __cil_tmp71 ;
  int __cil_tmp72 ;
  int __cil_tmp73 ;
  int __cil_tmp74 ;
  int __cil_tmp75 ;
  int __cil_tmp76 ;
  int __cil_tmp77 ;
  int __cil_tmp78 ;
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  int __cil_tmp84 ;
  u32 __cil_tmp85 ;
  int __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  u32 __cil_tmp89 ;
  u32 __cil_tmp90 ;
  u32 __cil_tmp91 ;
  u32 __cil_tmp92 ;
  u32 __cil_tmp93 ;
  int __cil_tmp94 ;
  u32 __cil_tmp95 ;
  u32 __cil_tmp96 ;
  int __cil_tmp97 ;
  u32 __cil_tmp98 ;
  u32 __cil_tmp99 ;
  int __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned long __cil_tmp102 ;
  u32 __cil_tmp103 ;
  u32 __cil_tmp104 ;
  u32 __cil_tmp105 ;
  u32 __cil_tmp106 ;
  int __cil_tmp107 ;
  int __cil_tmp108 ;
  int __cil_tmp109 ;
  int __cil_tmp110 ;
  int __cil_tmp111 ;
  u32 __cil_tmp112 ;
  u32 __cil_tmp113 ;
  u32 __cil_tmp114 ;
  u32 __cil_tmp115 ;
  u32 __cil_tmp116 ;
  u32 __cil_tmp117 ;
  u32 __cil_tmp118 ;
  u32 __cil_tmp119 ;
  int __cil_tmp120 ;
  u32 __cil_tmp121 ;
  u32 __cil_tmp122 ;
  u32 __cil_tmp123 ;
  u32 __cil_tmp124 ;
  u32 __cil_tmp125 ;
  int __cil_tmp126 ;
  int __cil_tmp127 ;
  u32 __cil_tmp128 ;
  u32 __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  u32 __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  u32 __cil_tmp137 ;
  u32 __cil_tmp138 ;
  int __cil_tmp139 ;
  int __cil_tmp140 ;
  unsigned int __cil_tmp141 ;
  unsigned int __cil_tmp142 ;
  {
  __cil_tmp16 = (unsigned long )pll___0;
  __cil_tmp17 = __cil_tmp16 + 40;
  __cil_tmp18 = *((u8 *)__cil_tmp17);
  __cil_tmp19 = (u32 )__cil_tmp18;
  __cil_tmp20 = (unsigned long )pll___0;
  __cil_tmp21 = __cil_tmp20 + 2;
  __cil_tmp22 = *((u8 *)__cil_tmp21);
  __cil_tmp23 = (u32 )__cil_tmp22;
  multiplier = __cil_tmp23 * __cil_tmp19;
  __cil_tmp24 = (unsigned long )pll___0;
  __cil_tmp25 = __cil_tmp24 + 36;
  __cil_tmp26 = *((u8 *)__cil_tmp25);
  __cil_tmp27 = (u32 )__cil_tmp26;
  __cil_tmp28 = (unsigned long )pll___0;
  __cil_tmp29 = __cil_tmp28 + 7;
  __cil_tmp30 = *((u8 *)__cil_tmp29);
  __cil_tmp31 = (u32 )__cil_tmp30;
  divider = __cil_tmp31 * __cil_tmp27;
  __cil_tmp32 = (unsigned long )pll___0;
  __cil_tmp33 = __cil_tmp32 + 32;
  ras_multiplier = *((u32 *)__cil_tmp33);
  ras_divider = (u32 )1;
  if (bpp >= 8U) {
    __cil_tmp34 = bpp >> 2;
    divider = divider * __cil_tmp34;
  } else {
  }
  __cil_tmp35 = (unsigned long )pll___0;
  __cil_tmp36 = __cil_tmp35 + 37;
  __cil_tmp37 = *((u8 *)__cil_tmp36);
  __cil_tmp38 = (int )__cil_tmp37;
  __cil_tmp39 = 4 - __cil_tmp38;
  vshift = (u8 )__cil_tmp39;
  if (bpp == 0U) {
    __cil_tmp40 = (int )vshift;
    __cil_tmp41 = __cil_tmp40 - 1;
    vshift = (u8 )__cil_tmp41;
  } else {
  }
  {
  __cil_tmp42 = (unsigned long )pll___0;
  __cil_tmp43 = __cil_tmp42 + 44;
  __cil_tmp44 = *((u32 *)__cil_tmp43);
  if (__cil_tmp44 != 0U) {
    __cil_tmp45 = (unsigned long )info;
    __cil_tmp46 = __cil_tmp45 + 1160;
    __cil_tmp47 = *((void * *)__cil_tmp46);
    par = (struct atyfb_par *)__cil_tmp47;
    __cil_tmp48 = (unsigned long )par;
    __cil_tmp49 = __cil_tmp48 + 1144;
    __cil_tmp50 = *((u16 *)__cil_tmp49);
    __cil_tmp51 = (u32 )__cil_tmp50;
    multiplier = multiplier * __cil_tmp51;
    __cil_tmp52 = (unsigned long )pll___0;
    __cil_tmp53 = __cil_tmp52 + 44;
    __cil_tmp54 = *((u32 *)__cil_tmp53);
    __cil_tmp55 = divider * __cil_tmp54;
    divider = __cil_tmp55 & 4294967288U;
    __cil_tmp56 = (unsigned long )par;
    __cil_tmp57 = __cil_tmp56 + 1144;
    __cil_tmp58 = *((u16 *)__cil_tmp57);
    __cil_tmp59 = (u32 )__cil_tmp58;
    ras_multiplier = ras_multiplier * __cil_tmp59;
    __cil_tmp60 = (unsigned long )pll___0;
    __cil_tmp61 = __cil_tmp60 + 44;
    __cil_tmp62 = *((u32 *)__cil_tmp61);
    __cil_tmp63 = ras_divider * __cil_tmp62;
    ras_divider = __cil_tmp63 & 4294967288U;
  } else {
  }
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp64 = multiplier | divider;
    __cil_tmp65 = __cil_tmp64 & 1U;
    if (__cil_tmp65 == 0U) {
    } else {
      goto while_break;
    }
    }
    multiplier = multiplier >> 1;
    divider = divider >> 1;
  }
  while_break: ;
  }
  __cil_tmp66 = (int )vshift;
  __cil_tmp67 = (unsigned long )pll___0;
  __cil_tmp68 = __cil_tmp67 + 24;
  __cil_tmp69 = *((u32 *)__cil_tmp68);
  __cil_tmp70 = multiplier * __cil_tmp69;
  __cil_tmp71 = __cil_tmp70 << __cil_tmp66;
  tmp___7 = __cil_tmp71 / divider;
  dsp_precision = (s8 )-5;
  {
  while (1) {
    while_continue___0: ;
    if (tmp___7) {
    } else {
      goto while_break___0;
    }
    tmp___7 = tmp___7 >> 1;
    __cil_tmp72 = (int )dsp_precision;
    __cil_tmp73 = __cil_tmp72 + 1;
    dsp_precision = (s8 )__cil_tmp73;
  }
  while_break___0: ;
  }
  {
  __cil_tmp74 = (int )dsp_precision;
  if (__cil_tmp74 < 0) {
    dsp_precision = (s8 )0;
  } else {
    {
    __cil_tmp75 = (int )dsp_precision;
    if (__cil_tmp75 > 7) {
      dsp_precision = (s8 )7;
    } else {
    }
    }
  }
  }
  __cil_tmp76 = (int )dsp_precision;
  __cil_tmp77 = 6 - __cil_tmp76;
  xshift = (u8 )__cil_tmp77;
  __cil_tmp78 = (int )xshift;
  __cil_tmp79 = (int )vshift;
  __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
  vshift = (u8 )__cil_tmp80;
  __cil_tmp81 = (int )xshift;
  __cil_tmp82 = (int )vshift;
  __cil_tmp83 = __cil_tmp82 - __cil_tmp81;
  __cil_tmp84 = 1 << __cil_tmp83;
  __cil_tmp85 = (u32 )__cil_tmp84;
  __cil_tmp86 = (int )vshift;
  __cil_tmp87 = (unsigned long )pll___0;
  __cil_tmp88 = __cil_tmp87 + 24;
  __cil_tmp89 = *((u32 *)__cil_tmp88);
  __cil_tmp90 = __cil_tmp89 - 1U;
  __cil_tmp91 = multiplier * __cil_tmp90;
  __cil_tmp92 = __cil_tmp91 << __cil_tmp86;
  __cil_tmp93 = __cil_tmp92 / divider;
  dsp_off = __cil_tmp93 - __cil_tmp85;
  __cil_tmp94 = (int )vshift;
  __cil_tmp95 = multiplier << __cil_tmp94;
  __cil_tmp96 = __cil_tmp95 + divider;
  dsp_on = __cil_tmp96 / divider;
  __cil_tmp97 = (int )xshift;
  __cil_tmp98 = ras_multiplier << __cil_tmp97;
  __cil_tmp99 = __cil_tmp98 + ras_divider;
  tmp___7 = __cil_tmp99 / ras_divider;
  if (dsp_on < tmp___7) {
    dsp_on = tmp___7;
  } else {
  }
  __cil_tmp100 = (int )xshift;
  __cil_tmp101 = (unsigned long )pll___0;
  __cil_tmp102 = __cil_tmp101 + 28;
  __cil_tmp103 = *((u32 *)__cil_tmp102);
  __cil_tmp104 = __cil_tmp103 << __cil_tmp100;
  __cil_tmp105 = tmp___7 * 2U;
  __cil_tmp106 = dsp_on + __cil_tmp105;
  dsp_on = __cil_tmp106 + __cil_tmp104;
  __cil_tmp107 = (int )dsp_precision;
  __cil_tmp108 = 7 - __cil_tmp107;
  __cil_tmp109 = 1 << __cil_tmp108;
  __cil_tmp110 = __cil_tmp109 - 1;
  __cil_tmp111 = __cil_tmp110 >> 1;
  tmp___7 = (u32 )__cil_tmp111;
  __cil_tmp112 = tmp___7 + 1U;
  __cil_tmp113 = tmp___7 + 1U;
  __cil_tmp114 = dsp_on + tmp___7;
  __cil_tmp115 = __cil_tmp114 / __cil_tmp113;
  dsp_on = __cil_tmp115 * __cil_tmp112;
  {
  __cil_tmp116 = tmp___7 + 1U;
  __cil_tmp117 = tmp___7 + 1U;
  __cil_tmp118 = dsp_off / __cil_tmp117;
  __cil_tmp119 = __cil_tmp118 * __cil_tmp116;
  if (dsp_on >= __cil_tmp119) {
    __cil_tmp120 = (int )vshift;
    __cil_tmp121 = multiplier << __cil_tmp120;
    __cil_tmp122 = __cil_tmp121 / divider;
    dsp_on = dsp_off - __cil_tmp122;
    __cil_tmp123 = tmp___7 + 1U;
    __cil_tmp124 = tmp___7 + 1U;
    __cil_tmp125 = dsp_on / __cil_tmp124;
    dsp_on = __cil_tmp125 * __cil_tmp123;
  } else {
  }
  }
  __cil_tmp126 = (int )vshift;
  __cil_tmp127 = __cil_tmp126 + 5;
  __cil_tmp128 = multiplier << __cil_tmp127;
  __cil_tmp129 = __cil_tmp128 + divider;
  dsp_xclks = __cil_tmp129 / divider;
  __cil_tmp130 = (unsigned long )pll___0;
  __cil_tmp131 = __cil_tmp130 + 16;
  __cil_tmp132 = dsp_on << 16;
  *((u32 *)__cil_tmp131) = __cil_tmp132 + dsp_off;
  __cil_tmp133 = (unsigned long )pll___0;
  __cil_tmp134 = __cil_tmp133 + 12;
  __cil_tmp135 = (unsigned long )pll___0;
  __cil_tmp136 = __cil_tmp135 + 20;
  __cil_tmp137 = *((u32 *)__cil_tmp136);
  __cil_tmp138 = __cil_tmp137 << 16;
  __cil_tmp139 = (int )dsp_precision;
  __cil_tmp140 = __cil_tmp139 << 20;
  __cil_tmp141 = (unsigned int )__cil_tmp140;
  __cil_tmp142 = __cil_tmp141 | __cil_tmp138;
  *((u32 *)__cil_tmp134) = __cil_tmp142 | dsp_xclks;
  return (0);
}
}
static int aty_valid_pll_ct(struct fb_info *info , u32 vclk_per , struct pll_ct *pll___0 )
{ u32 q ;
  struct atyfb_par *par ;
  int pllvclk ;
  int ecp ;
  int ecp_div ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  void * __cil_tmp11 ;
  u8 __cil_tmp12 ;
  u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u32 __cil_tmp16 ;
  u32 __cil_tmp17 ;
  u32 __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  u8 __cil_tmp27 ;
  int __cil_tmp28 ;
  int __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  int __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  u8 __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  u8 __cil_tmp49 ;
  u32 __cil_tmp50 ;
  u32 __cil_tmp51 ;
  u32 __cil_tmp52 ;
  u8 __cil_tmp53 ;
  u32 __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u32 __cil_tmp57 ;
  u32 __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  u8 __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  u32 __cil_tmp64 ;
  u32 __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  u8 __cil_tmp73 ;
  int __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned long __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  int __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  int __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  u8 __cil_tmp84 ;
  int __cil_tmp85 ;
  int __cil_tmp86 ;
  {
  __cil_tmp9 = (unsigned long )info;
  __cil_tmp10 = __cil_tmp9 + 1160;
  __cil_tmp11 = *((void * *)__cil_tmp10);
  par = (struct atyfb_par *)__cil_tmp11;
  __cil_tmp12 = *((u8 *)pll___0);
  __cil_tmp13 = (u32 )__cil_tmp12;
  __cil_tmp14 = (unsigned long )par;
  __cil_tmp15 = __cil_tmp14 + 1048;
  __cil_tmp16 = *((u32 *)__cil_tmp15);
  __cil_tmp17 = __cil_tmp16 * __cil_tmp13;
  __cil_tmp18 = __cil_tmp17 * 4U;
  q = __cil_tmp18 / vclk_per;
  if (q < 128U) {
    {
    printk("<2>atyfb: vclk out of range\n");
    }
    return (-22);
  } else
  if (q > 2040U) {
    {
    printk("<2>atyfb: vclk out of range\n");
    }
    return (-22);
  } else {
    __cil_tmp19 = (unsigned long )pll___0;
    __cil_tmp20 = __cil_tmp19 + 6;
    __cil_tmp21 = q < 1024U;
    *((u8 *)__cil_tmp20) = (u8 )__cil_tmp21;
    __cil_tmp22 = (unsigned long )pll___0;
    __cil_tmp23 = __cil_tmp22 + 6;
    __cil_tmp24 = q < 512U;
    __cil_tmp25 = (unsigned long )pll___0;
    __cil_tmp26 = __cil_tmp25 + 6;
    __cil_tmp27 = *((u8 *)__cil_tmp26);
    __cil_tmp28 = (int )__cil_tmp27;
    __cil_tmp29 = __cil_tmp28 + __cil_tmp24;
    *((u8 *)__cil_tmp23) = (u8 )__cil_tmp29;
    __cil_tmp30 = (unsigned long )pll___0;
    __cil_tmp31 = __cil_tmp30 + 6;
    __cil_tmp32 = q < 256U;
    __cil_tmp33 = (unsigned long )pll___0;
    __cil_tmp34 = __cil_tmp33 + 6;
    __cil_tmp35 = *((u8 *)__cil_tmp34);
    __cil_tmp36 = (int )__cil_tmp35;
    __cil_tmp37 = __cil_tmp36 + __cil_tmp32;
    *((u8 *)__cil_tmp31) = (u8 )__cil_tmp37;
  }
  __cil_tmp38 = (unsigned long )pll___0;
  __cil_tmp39 = __cil_tmp38 + 40;
  __cil_tmp40 = (unsigned long )pll___0;
  __cil_tmp41 = __cil_tmp40 + 6;
  __cil_tmp42 = *((u8 *)__cil_tmp41);
  __cil_tmp43 = __cil_tmp42 * 1UL;
  __cil_tmp44 = (unsigned long )(postdividers) + __cil_tmp43;
  *((u8 *)__cil_tmp39) = *((u8 *)__cil_tmp44);
  __cil_tmp45 = (unsigned long )pll___0;
  __cil_tmp46 = __cil_tmp45 + 7;
  __cil_tmp47 = (unsigned long )pll___0;
  __cil_tmp48 = __cil_tmp47 + 40;
  __cil_tmp49 = *((u8 *)__cil_tmp48);
  __cil_tmp50 = (u32 )__cil_tmp49;
  __cil_tmp51 = q * __cil_tmp50;
  __cil_tmp52 = __cil_tmp51 / 8U;
  *((u8 *)__cil_tmp46) = (u8 )__cil_tmp52;
  __cil_tmp53 = *((u8 *)pll___0);
  __cil_tmp54 = (u32 )__cil_tmp53;
  __cil_tmp55 = (unsigned long )par;
  __cil_tmp56 = __cil_tmp55 + 1048;
  __cil_tmp57 = *((u32 *)__cil_tmp56);
  __cil_tmp58 = __cil_tmp57 * __cil_tmp54;
  __cil_tmp59 = (unsigned long )pll___0;
  __cil_tmp60 = __cil_tmp59 + 7;
  __cil_tmp61 = *((u8 *)__cil_tmp60);
  __cil_tmp62 = (int )__cil_tmp61;
  __cil_tmp63 = 2000000 * __cil_tmp62;
  __cil_tmp64 = (u32 )__cil_tmp63;
  __cil_tmp65 = __cil_tmp64 / __cil_tmp58;
  pllvclk = (int )__cil_tmp65;
  __cil_tmp66 = (unsigned long )pll___0;
  __cil_tmp67 = __cil_tmp66 + 5;
  *((u8 *)__cil_tmp67) = (u8 )3;
  {
  __cil_tmp68 = 1008 + 32;
  __cil_tmp69 = (unsigned long )par;
  __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
  if (*((int *)__cil_tmp70)) {
    __cil_tmp71 = (unsigned long )pll___0;
    __cil_tmp72 = __cil_tmp71 + 40;
    __cil_tmp73 = *((u8 *)__cil_tmp72);
    __cil_tmp74 = (int )__cil_tmp73;
    ecp = pllvclk / __cil_tmp74;
    ecp_div = 0;
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp75 = 1008 + 32;
      __cil_tmp76 = (unsigned long )par;
      __cil_tmp77 = __cil_tmp76 + __cil_tmp75;
      __cil_tmp78 = *((int *)__cil_tmp77);
      if (ecp > __cil_tmp78) {
        if (ecp_div < 2) {
        } else {
          goto while_break;
        }
      } else {
        goto while_break;
      }
      }
      ecp = ecp >> 1;
      ecp_div = ecp_div + 1;
    }
    while_break: ;
    }
    __cil_tmp79 = (unsigned long )pll___0;
    __cil_tmp80 = __cil_tmp79 + 5;
    __cil_tmp81 = ecp_div << 4;
    __cil_tmp82 = (unsigned long )pll___0;
    __cil_tmp83 = __cil_tmp82 + 5;
    __cil_tmp84 = *((u8 *)__cil_tmp83);
    __cil_tmp85 = (int )__cil_tmp84;
    __cil_tmp86 = __cil_tmp85 | __cil_tmp81;
    *((u8 *)__cil_tmp80) = (u8 )__cil_tmp86;
  } else {
  }
  }
  return (0);
}
}
static int aty_var_to_pll_ct(struct fb_info *info , u32 vclk_per , u32 bpp ,
                             union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  int err ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  void * __cil_tmp9 ;
  struct pll_ct *__cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  u32 __cil_tmp13 ;
  struct pll_ct *__cil_tmp14 ;
  {
  {
  __cil_tmp7 = (unsigned long )info;
  __cil_tmp8 = __cil_tmp7 + 1160;
  __cil_tmp9 = *((void * *)__cil_tmp8);
  par = (struct atyfb_par *)__cil_tmp9;
  __cil_tmp10 = (struct pll_ct *)pll___0;
  err = aty_valid_pll_ct(info, vclk_per, __cil_tmp10);
  }
  if (err) {
    return (err);
  } else {
  }
  {
  __cil_tmp11 = (unsigned long )par;
  __cil_tmp12 = __cil_tmp11 + 1044;
  __cil_tmp13 = *((u32 *)__cil_tmp12);
  if (__cil_tmp13 & 4U) {
    {
    __cil_tmp14 = (struct pll_ct *)pll___0;
    err = aty_dsp_gt(info, bpp, __cil_tmp14);
    }
    if (err) {
      return (err);
    } else {
    }
  } else {
  }
  }
  return (0);
}
}
static u32 aty_pll_to_var_ct(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 ret ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  void * __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u8 __cil_tmp11 ;
  u32 __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  u8 __cil_tmp16 ;
  u32 __cil_tmp17 ;
  u8 __cil_tmp18 ;
  u32 __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  u32 __cil_tmp22 ;
  u32 __cil_tmp23 ;
  u32 __cil_tmp24 ;
  u32 __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u32 __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  u16 __cil_tmp32 ;
  u32 __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  u32 __cil_tmp37 ;
  u32 __cil_tmp38 ;
  {
  __cil_tmp5 = (unsigned long )info;
  __cil_tmp6 = __cil_tmp5 + 1160;
  __cil_tmp7 = *((void * *)__cil_tmp6);
  par = (struct atyfb_par *)__cil_tmp7;
  __cil_tmp8 = 0 + 7;
  __cil_tmp9 = (unsigned long )pll___0;
  __cil_tmp10 = __cil_tmp9 + __cil_tmp8;
  __cil_tmp11 = *((u8 *)__cil_tmp10);
  __cil_tmp12 = (u32 )__cil_tmp11;
  __cil_tmp13 = 0 + 40;
  __cil_tmp14 = (unsigned long )pll___0;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  __cil_tmp16 = *((u8 *)__cil_tmp15);
  __cil_tmp17 = (u32 )__cil_tmp16;
  __cil_tmp18 = *((u8 *)pll___0);
  __cil_tmp19 = (u32 )__cil_tmp18;
  __cil_tmp20 = (unsigned long )par;
  __cil_tmp21 = __cil_tmp20 + 1048;
  __cil_tmp22 = *((u32 *)__cil_tmp21);
  __cil_tmp23 = __cil_tmp22 * __cil_tmp19;
  __cil_tmp24 = __cil_tmp23 * __cil_tmp17;
  __cil_tmp25 = __cil_tmp24 / __cil_tmp12;
  ret = __cil_tmp25 / 2U;
  {
  __cil_tmp26 = 0 + 44;
  __cil_tmp27 = (unsigned long )pll___0;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
  __cil_tmp29 = *((u32 *)__cil_tmp28);
  if (__cil_tmp29 > 0U) {
    __cil_tmp30 = (unsigned long )par;
    __cil_tmp31 = __cil_tmp30 + 1144;
    __cil_tmp32 = *((u16 *)__cil_tmp31);
    __cil_tmp33 = (u32 )__cil_tmp32;
    ret = ret * __cil_tmp33;
    __cil_tmp34 = 0 + 44;
    __cil_tmp35 = (unsigned long )pll___0;
    __cil_tmp36 = __cil_tmp35 + __cil_tmp34;
    __cil_tmp37 = *((u32 *)__cil_tmp36);
    __cil_tmp38 = (u32 )__cil_tmp37;
    ret = ret / __cil_tmp38;
  } else {
  }
  }
  return (ret);
}
}
void aty_set_pll_ct(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u32 crtc_gen_cntl ;
  u32 lcd_gen_cntrl ;
  u8 tmp___7 ;
  u8 tmp2 ;
  u8 dll_cntl ;
  unsigned long __ms___1 ;
  unsigned long tmp___10 ;
  unsigned long __ms___2 ;
  unsigned long tmp___11 ;
  unsigned long __ms___3 ;
  unsigned long tmp___12 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  void * __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  struct atyfb_par *__cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  u32 __cil_tmp28 ;
  struct atyfb_par *__cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  u8 __cil_tmp34 ;
  struct atyfb_par *__cil_tmp35 ;
  struct atyfb_par *__cil_tmp36 ;
  unsigned int __cil_tmp37 ;
  unsigned int __cil_tmp38 ;
  struct atyfb_par *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  u8 __cil_tmp43 ;
  u8 __cil_tmp44 ;
  struct atyfb_par *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  struct atyfb_par *__cil_tmp50 ;
  int __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  u8 __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  unsigned int __cil_tmp65 ;
  struct atyfb_par *__cil_tmp66 ;
  struct atyfb_par *__cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned int __cil_tmp71 ;
  unsigned int __cil_tmp72 ;
  unsigned int __cil_tmp73 ;
  unsigned int __cil_tmp74 ;
  unsigned int __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned long __cil_tmp79 ;
  u8 __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  struct atyfb_par *__cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  int __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  u8 __cil_tmp93 ;
  unsigned int __cil_tmp94 ;
  unsigned int __cil_tmp95 ;
  u8 __cil_tmp96 ;
  struct atyfb_par *__cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  u8 __cil_tmp101 ;
  int __cil_tmp102 ;
  int __cil_tmp103 ;
  int __cil_tmp104 ;
  u8 __cil_tmp105 ;
  struct atyfb_par *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  u8 __cil_tmp110 ;
  int __cil_tmp111 ;
  int __cil_tmp112 ;
  u8 __cil_tmp113 ;
  struct atyfb_par *__cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  u8 __cil_tmp118 ;
  u8 __cil_tmp119 ;
  struct atyfb_par *__cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  u8 __cil_tmp124 ;
  u8 __cil_tmp125 ;
  struct atyfb_par *__cil_tmp126 ;
  unsigned int __cil_tmp127 ;
  struct atyfb_par *__cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  u32 __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  u32 __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  u8 __cil_tmp137 ;
  int __cil_tmp138 ;
  struct atyfb_par *__cil_tmp139 ;
  u8 __cil_tmp140 ;
  struct atyfb_par *__cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  u32 __cil_tmp145 ;
  u32 __cil_tmp146 ;
  struct atyfb_par *__cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  u32 __cil_tmp151 ;
  u32 __cil_tmp152 ;
  struct atyfb_par *__cil_tmp153 ;
  struct atyfb_par *__cil_tmp154 ;
  int __cil_tmp155 ;
  int __cil_tmp156 ;
  u8 __cil_tmp157 ;
  struct atyfb_par *__cil_tmp158 ;
  int __cil_tmp159 ;
  int __cil_tmp160 ;
  u8 __cil_tmp161 ;
  struct atyfb_par *__cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  struct atyfb_par *__cil_tmp166 ;
  {
  __cil_tmp19 = (unsigned long )info;
  __cil_tmp20 = __cil_tmp19 + 1160;
  __cil_tmp21 = *((void * *)__cil_tmp20);
  par = (struct atyfb_par *)__cil_tmp21;
  lcd_gen_cntrl = (u32 )0;
  {
  __cil_tmp22 = (unsigned long )par;
  __cil_tmp23 = __cil_tmp22 + 1136;
  __cil_tmp24 = *((unsigned long *)__cil_tmp23);
  if (__cil_tmp24 != 0UL) {
    {
    __cil_tmp25 = (struct atyfb_par *)par;
    lcd_gen_cntrl = aty_ld_lcd(1, __cil_tmp25);
    __cil_tmp26 = (unsigned long )lcd_gen_cntrl;
    __cil_tmp27 = __cil_tmp26 & 0xfffffffffffffffdUL;
    __cil_tmp28 = (u32 )__cil_tmp27;
    __cil_tmp29 = (struct atyfb_par *)par;
    aty_st_lcd(1, __cil_tmp28, __cil_tmp29);
    }
  } else {
  }
  }
  {
  __cil_tmp30 = (unsigned long )par;
  __cil_tmp31 = __cil_tmp30 + 856;
  __cil_tmp32 = *((unsigned long *)__cil_tmp31);
  __cil_tmp33 = __cil_tmp32 | 64UL;
  __cil_tmp34 = (u8 )__cil_tmp33;
  __cil_tmp35 = (struct atyfb_par *)par;
  aty_st_8(144, __cil_tmp34, __cil_tmp35);
  __cil_tmp36 = (struct atyfb_par *)par;
  crtc_gen_cntl = aty_ld_le32(28, __cil_tmp36);
  }
  {
  __cil_tmp37 = crtc_gen_cntl & 16777216U;
  if (! __cil_tmp37) {
    {
    __cil_tmp38 = crtc_gen_cntl | 16777216U;
    __cil_tmp39 = (struct atyfb_par *)par;
    aty_st_le32(28, __cil_tmp38, __cil_tmp39);
    }
  } else {
  }
  }
  {
  __cil_tmp40 = 0 + 5;
  __cil_tmp41 = (unsigned long )pll___0;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  __cil_tmp43 = *((u8 *)__cil_tmp42);
  __cil_tmp44 = (u8 )__cil_tmp43;
  __cil_tmp45 = (struct atyfb_par *)par;
  aty_st_pll_ct(5, __cil_tmp44, __cil_tmp45);
  __cil_tmp46 = (unsigned long )par;
  __cil_tmp47 = __cil_tmp46 + 856;
  __cil_tmp48 = *((unsigned long *)__cil_tmp47);
  __cil_tmp49 = __cil_tmp48 << 1;
  tmp2 = (u8 )__cil_tmp49;
  __cil_tmp50 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_pll_ct(6, __cil_tmp50);
  __cil_tmp51 = (int )tmp2;
  __cil_tmp52 = 3U << __cil_tmp51;
  __cil_tmp53 = ~ __cil_tmp52;
  __cil_tmp54 = (unsigned int )tmp___7;
  __cil_tmp55 = __cil_tmp54 & __cil_tmp53;
  tmp___7 = (u8 )__cil_tmp55;
  __cil_tmp56 = (int )tmp2;
  __cil_tmp57 = 0 + 6;
  __cil_tmp58 = (unsigned long )pll___0;
  __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
  __cil_tmp60 = *((u8 *)__cil_tmp59);
  __cil_tmp61 = (unsigned int )__cil_tmp60;
  __cil_tmp62 = __cil_tmp61 & 3U;
  __cil_tmp63 = __cil_tmp62 << __cil_tmp56;
  __cil_tmp64 = (unsigned int )tmp___7;
  __cil_tmp65 = __cil_tmp64 | __cil_tmp63;
  tmp___7 = (u8 )__cil_tmp65;
  __cil_tmp66 = (struct atyfb_par *)par;
  aty_st_pll_ct(6, tmp___7, __cil_tmp66);
  __cil_tmp67 = (struct atyfb_par *)par;
  tmp___7 = aty_ld_pll_ct(11, __cil_tmp67);
  __cil_tmp68 = (unsigned long )par;
  __cil_tmp69 = __cil_tmp68 + 856;
  __cil_tmp70 = *((unsigned long *)__cil_tmp69);
  __cil_tmp71 = 16U << __cil_tmp70;
  __cil_tmp72 = ~ __cil_tmp71;
  __cil_tmp73 = (unsigned int )tmp___7;
  __cil_tmp74 = __cil_tmp73 & __cil_tmp72;
  tmp___7 = (u8 )__cil_tmp74;
  __cil_tmp75 = (unsigned int )tmp___7;
  __cil_tmp76 = __cil_tmp75 & 240U;
  tmp___7 = (u8 )__cil_tmp76;
  __cil_tmp77 = 0 + 8;
  __cil_tmp78 = (unsigned long )pll___0;
  __cil_tmp79 = __cil_tmp78 + __cil_tmp77;
  __cil_tmp80 = *((u8 *)__cil_tmp79);
  __cil_tmp81 = (int )__cil_tmp80;
  __cil_tmp82 = (int )tmp___7;
  __cil_tmp83 = __cil_tmp82 | __cil_tmp81;
  tmp___7 = (u8 )__cil_tmp83;
  __cil_tmp84 = (struct atyfb_par *)par;
  aty_st_pll_ct(11, tmp___7, __cil_tmp84);
  __cil_tmp85 = (unsigned long )par;
  __cil_tmp86 = __cil_tmp85 + 856;
  __cil_tmp87 = *((unsigned long *)__cil_tmp86);
  __cil_tmp88 = 7UL + __cil_tmp87;
  tmp___7 = (u8 )__cil_tmp88;
  __cil_tmp89 = (int )tmp___7;
  __cil_tmp90 = 0 + 7;
  __cil_tmp91 = (unsigned long )pll___0;
  __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
  __cil_tmp93 = *((u8 *)__cil_tmp92);
  __cil_tmp94 = (unsigned int )__cil_tmp93;
  __cil_tmp95 = __cil_tmp94 & 255U;
  __cil_tmp96 = (u8 )__cil_tmp95;
  __cil_tmp97 = (struct atyfb_par *)par;
  aty_st_pll_ct(__cil_tmp89, __cil_tmp96, __cil_tmp97);
  __cil_tmp98 = 0 + 1;
  __cil_tmp99 = (unsigned long )pll___0;
  __cil_tmp100 = __cil_tmp99 + __cil_tmp98;
  __cil_tmp101 = *((u8 *)__cil_tmp100);
  __cil_tmp102 = (int )__cil_tmp101;
  __cil_tmp103 = __cil_tmp102 & -4;
  __cil_tmp104 = __cil_tmp103 | 4;
  __cil_tmp105 = (u8 )__cil_tmp104;
  __cil_tmp106 = (struct atyfb_par *)par;
  aty_st_pll_ct(3, __cil_tmp105, __cil_tmp106);
  __cil_tmp107 = 0 + 5;
  __cil_tmp108 = (unsigned long )pll___0;
  __cil_tmp109 = __cil_tmp108 + __cil_tmp107;
  __cil_tmp110 = *((u8 *)__cil_tmp109);
  __cil_tmp111 = (int )__cil_tmp110;
  __cil_tmp112 = __cil_tmp111 & -5;
  __cil_tmp113 = (u8 )__cil_tmp112;
  __cil_tmp114 = (struct atyfb_par *)par;
  aty_st_pll_ct(5, __cil_tmp113, __cil_tmp114);
  ___udelay(21475000UL);
  __cil_tmp115 = 0 + 1;
  __cil_tmp116 = (unsigned long )pll___0;
  __cil_tmp117 = __cil_tmp116 + __cil_tmp115;
  __cil_tmp118 = *((u8 *)__cil_tmp117);
  __cil_tmp119 = (u8 )__cil_tmp118;
  __cil_tmp120 = (struct atyfb_par *)par;
  aty_st_pll_ct(3, __cil_tmp119, __cil_tmp120);
  __cil_tmp121 = 0 + 5;
  __cil_tmp122 = (unsigned long )pll___0;
  __cil_tmp123 = __cil_tmp122 + __cil_tmp121;
  __cil_tmp124 = *((u8 *)__cil_tmp123);
  __cil_tmp125 = (u8 )__cil_tmp124;
  __cil_tmp126 = (struct atyfb_par *)par;
  aty_st_pll_ct(5, __cil_tmp125, __cil_tmp126);
  ___udelay(4295000UL);
  }
  {
  __cil_tmp127 = crtc_gen_cntl & 16777216U;
  if (! __cil_tmp127) {
    {
    __cil_tmp128 = (struct atyfb_par *)par;
    aty_st_le32(28, crtc_gen_cntl, __cil_tmp128);
    }
  } else {
  }
  }
  {
  __cil_tmp129 = (unsigned long )par;
  __cil_tmp130 = __cil_tmp129 + 1044;
  __cil_tmp131 = *((u32 *)__cil_tmp130);
  if (__cil_tmp131 & 4U) {
    {
    __cil_tmp132 = (unsigned long )par;
    __cil_tmp133 = __cil_tmp132 + 1044;
    __cil_tmp134 = *((u32 *)__cil_tmp133);
    if (__cil_tmp134 & 524288U) {
      dll_cntl = (u8 )128;
    } else {
      {
      __cil_tmp135 = (unsigned long )par;
      __cil_tmp136 = __cil_tmp135 + 1065;
      __cil_tmp137 = *((u8 *)__cil_tmp136);
      __cil_tmp138 = (int )__cil_tmp137;
      if (__cil_tmp138 >= 4) {
        dll_cntl = (u8 )166;
      } else {
        dll_cntl = (u8 )160;
      }
      }
    }
    }
    {
    __cil_tmp139 = (struct atyfb_par *)par;
    aty_st_pll_ct(12, dll_cntl, __cil_tmp139);
    __cil_tmp140 = (u8 )27;
    __cil_tmp141 = (struct atyfb_par *)par;
    aty_st_pll_ct(13, __cil_tmp140, __cil_tmp141);
    __cil_tmp142 = 0 + 12;
    __cil_tmp143 = (unsigned long )pll___0;
    __cil_tmp144 = __cil_tmp143 + __cil_tmp142;
    __cil_tmp145 = *((u32 *)__cil_tmp144);
    __cil_tmp146 = (u32 )__cil_tmp145;
    __cil_tmp147 = (struct atyfb_par *)par;
    aty_st_le32(32, __cil_tmp146, __cil_tmp147);
    __cil_tmp148 = 0 + 16;
    __cil_tmp149 = (unsigned long )pll___0;
    __cil_tmp150 = __cil_tmp149 + __cil_tmp148;
    __cil_tmp151 = *((u32 *)__cil_tmp150);
    __cil_tmp152 = (u32 )__cil_tmp151;
    __cil_tmp153 = (struct atyfb_par *)par;
    aty_st_le32(36, __cil_tmp152, __cil_tmp153);
    __ms___1 = 10UL;
    }
    {
    while (1) {
      while_continue: ;
      tmp___10 = __ms___1;
      __ms___1 = __ms___1 - 1UL;
      if (tmp___10) {
      } else {
        goto while_break;
      }
      {
      ___udelay(4295000UL);
      }
    }
    while_break: ;
    }
    {
    __cil_tmp154 = (struct atyfb_par *)par;
    aty_st_pll_ct(12, dll_cntl, __cil_tmp154);
    __ms___2 = 10UL;
    }
    {
    while (1) {
      while_continue___0: ;
      tmp___11 = __ms___2;
      __ms___2 = __ms___2 - 1UL;
      if (tmp___11) {
      } else {
        goto while_break___0;
      }
      {
      ___udelay(4295000UL);
      }
    }
    while_break___0: ;
    }
    {
    __cil_tmp155 = (int )dll_cntl;
    __cil_tmp156 = __cil_tmp155 | 64;
    __cil_tmp157 = (u8 )__cil_tmp156;
    __cil_tmp158 = (struct atyfb_par *)par;
    aty_st_pll_ct(12, __cil_tmp157, __cil_tmp158);
    __ms___3 = 10UL;
    }
    {
    while (1) {
      while_continue___1: ;
      tmp___12 = __ms___3;
      __ms___3 = __ms___3 - 1UL;
      if (tmp___12) {
      } else {
        goto while_break___1;
      }
      {
      ___udelay(4295000UL);
      }
    }
    while_break___1: ;
    }
    {
    __cil_tmp159 = (int )dll_cntl;
    __cil_tmp160 = __cil_tmp159 & -65;
    __cil_tmp161 = (u8 )__cil_tmp160;
    __cil_tmp162 = (struct atyfb_par *)par;
    aty_st_pll_ct(12, __cil_tmp161, __cil_tmp162);
    }
  } else {
  }
  }
  {
  __cil_tmp163 = (unsigned long )par;
  __cil_tmp164 = __cil_tmp163 + 1136;
  __cil_tmp165 = *((unsigned long *)__cil_tmp164);
  if (__cil_tmp165 != 0UL) {
    {
    __cil_tmp166 = (struct atyfb_par *)par;
    aty_st_lcd(1, lcd_gen_cntrl, __cil_tmp166);
    }
  } else {
  }
  }
  return;
}
}
static void aty_get_pll_ct(struct fb_info *info , union aty_pll *pll___0 ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static void aty_get_pll_ct(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u8 tmp___7 ;
  u8 clock ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  u8 tmp___10 ;
  u8 tmp___11 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  void * __cil_tmp12 ;
  struct atyfb_par *__cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  int __cil_tmp16 ;
  int __cil_tmp17 ;
  struct atyfb_par *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  struct atyfb_par *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned int __cil_tmp31 ;
  unsigned int __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  struct atyfb_par *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned int __cil_tmp39 ;
  unsigned int __cil_tmp40 ;
  struct atyfb_par *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  struct atyfb_par *__cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  struct atyfb_par *__cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  struct atyfb_par *__cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  u32 __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  struct atyfb_par *__cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  struct atyfb_par *__cil_tmp64 ;
  {
  {
  __cil_tmp10 = (unsigned long )info;
  __cil_tmp11 = __cil_tmp10 + 1160;
  __cil_tmp12 = *((void * *)__cil_tmp11);
  par = (struct atyfb_par *)__cil_tmp12;
  __cil_tmp13 = (struct atyfb_par *)par;
  tmp___8 = aty_ld_8(144, __cil_tmp13);
  __cil_tmp14 = (unsigned int )tmp___8;
  __cil_tmp15 = __cil_tmp14 & 3U;
  clock = (u8 )__cil_tmp15;
  __cil_tmp16 = (int )clock;
  __cil_tmp17 = __cil_tmp16 << 1;
  tmp___7 = (u8 )__cil_tmp17;
  __cil_tmp18 = (struct atyfb_par *)par;
  tmp___9 = aty_ld_pll_ct(6, __cil_tmp18);
  __cil_tmp19 = 0 + 6;
  __cil_tmp20 = (unsigned long )pll___0;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = (int )tmp___7;
  __cil_tmp23 = (int )tmp___9;
  __cil_tmp24 = __cil_tmp23 >> __cil_tmp22;
  __cil_tmp25 = (unsigned int )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 & 3U;
  *((u8 *)__cil_tmp21) = (u8 )__cil_tmp26;
  __cil_tmp27 = (struct atyfb_par *)par;
  tmp___10 = aty_ld_pll_ct(11, __cil_tmp27);
  __cil_tmp28 = 0 + 8;
  __cil_tmp29 = (unsigned long )pll___0;
  __cil_tmp30 = __cil_tmp29 + __cil_tmp28;
  __cil_tmp31 = (unsigned int )tmp___10;
  __cil_tmp32 = __cil_tmp31 & 15U;
  *((u8 *)__cil_tmp30) = (u8 )__cil_tmp32;
  __cil_tmp33 = (int )clock;
  __cil_tmp34 = 7 + __cil_tmp33;
  __cil_tmp35 = (struct atyfb_par *)par;
  tmp___11 = aty_ld_pll_ct(__cil_tmp34, __cil_tmp35);
  __cil_tmp36 = 0 + 7;
  __cil_tmp37 = (unsigned long )pll___0;
  __cil_tmp38 = __cil_tmp37 + __cil_tmp36;
  __cil_tmp39 = (unsigned int )tmp___11;
  __cil_tmp40 = __cil_tmp39 & 255U;
  *((u8 *)__cil_tmp38) = (u8 )__cil_tmp40;
  __cil_tmp41 = (struct atyfb_par *)par;
  *((u8 *)pll___0) = aty_ld_pll_ct(2, __cil_tmp41);
  __cil_tmp42 = 0 + 2;
  __cil_tmp43 = (unsigned long )pll___0;
  __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
  __cil_tmp45 = (struct atyfb_par *)par;
  *((u8 *)__cil_tmp44) = aty_ld_pll_ct(4, __cil_tmp45);
  __cil_tmp46 = 0 + 1;
  __cil_tmp47 = (unsigned long )pll___0;
  __cil_tmp48 = __cil_tmp47 + __cil_tmp46;
  __cil_tmp49 = (struct atyfb_par *)par;
  *((u8 *)__cil_tmp48) = aty_ld_pll_ct(3, __cil_tmp49);
  __cil_tmp50 = 0 + 5;
  __cil_tmp51 = (unsigned long )pll___0;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  __cil_tmp53 = (struct atyfb_par *)par;
  *((u8 *)__cil_tmp52) = aty_ld_pll_ct(5, __cil_tmp53);
  }
  {
  __cil_tmp54 = (unsigned long )par;
  __cil_tmp55 = __cil_tmp54 + 1044;
  __cil_tmp56 = *((u32 *)__cil_tmp55);
  if (__cil_tmp56 & 4U) {
    {
    __cil_tmp57 = 0 + 12;
    __cil_tmp58 = (unsigned long )pll___0;
    __cil_tmp59 = __cil_tmp58 + __cil_tmp57;
    __cil_tmp60 = (struct atyfb_par *)par;
    *((u32 *)__cil_tmp59) = aty_ld_le32(32, __cil_tmp60);
    __cil_tmp61 = 0 + 16;
    __cil_tmp62 = (unsigned long )pll___0;
    __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
    __cil_tmp64 = (struct atyfb_par *)par;
    *((u32 *)__cil_tmp63) = aty_ld_le32(36, __cil_tmp64);
    }
  } else {
  }
  }
  return;
}
}
static int aty_init_pll_ct(struct fb_info *info , union aty_pll *pll___0 ) __attribute__((__section__(".devinit.text"),
__no_instrument_function__)) ;
static int aty_init_pll_ct(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  u8 mpost_div ;
  u8 xpost_div ;
  u8 sclk_post_div_real ;
  u32 q ;
  u32 memcntl ;
  u32 trp ;
  u32 dsp_config ;
  u32 dsp_on_off ;
  u32 vga_dsp_config ;
  u32 vga_dsp_on_off ;
  u8 mclk_fb_div ;
  u8 pll_ext_cntl ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  void * __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  struct atyfb_par *__cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  u8 __cil_tmp29 ;
  int __cil_tmp30 ;
  int __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  u8 __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  u8 __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  u8 __cil_tmp56 ;
  int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  unsigned long __cil_tmp66 ;
  u8 __cil_tmp67 ;
  int __cil_tmp68 ;
  int __cil_tmp69 ;
  struct atyfb_par *__cil_tmp70 ;
  unsigned int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned int __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  unsigned int __cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  unsigned int __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  unsigned int __cil_tmp84 ;
  unsigned int __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  u32 __cil_tmp89 ;
  unsigned long __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  u32 __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  u32 __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  u8 __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  __u32 __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  u32 __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  __u32 __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  unsigned long __cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  unsigned long __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  u32 __cil_tmp146 ;
  unsigned long __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  __u32 __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  u32 __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned long __cil_tmp168 ;
  unsigned long __cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  u32 __cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  unsigned long __cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned long __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  u32 __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  u32 __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  unsigned long __cil_tmp190 ;
  u32 __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  u32 __cil_tmp198 ;
  struct atyfb_par *__cil_tmp199 ;
  struct atyfb_par *__cil_tmp200 ;
  struct atyfb_par *__cil_tmp201 ;
  struct atyfb_par *__cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  unsigned long __cil_tmp205 ;
  unsigned int __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  u32 __cil_tmp209 ;
  struct atyfb_par *__cil_tmp210 ;
  struct atyfb_par *__cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  int __cil_tmp215 ;
  int __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  struct atyfb_par *__cil_tmp219 ;
  int __cil_tmp220 ;
  int __cil_tmp221 ;
  int __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  u32 __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  u32 __cil_tmp231 ;
  u32 __cil_tmp232 ;
  u32 __cil_tmp233 ;
  u32 __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  unsigned long __cil_tmp236 ;
  u32 __cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  u8 __cil_tmp241 ;
  u32 __cil_tmp242 ;
  u32 __cil_tmp243 ;
  u8 __cil_tmp244 ;
  u32 __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  unsigned long __cil_tmp247 ;
  u32 __cil_tmp248 ;
  u32 __cil_tmp249 ;
  u32 __cil_tmp250 ;
  int __cil_tmp251 ;
  int __cil_tmp252 ;
  int __cil_tmp253 ;
  int __cil_tmp254 ;
  int __cil_tmp255 ;
  int __cil_tmp256 ;
  int __cil_tmp257 ;
  unsigned long __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  unsigned long __cil_tmp265 ;
  unsigned long __cil_tmp266 ;
  unsigned long __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  u8 __cil_tmp269 ;
  u32 __cil_tmp270 ;
  u32 __cil_tmp271 ;
  u32 __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  unsigned long __cil_tmp274 ;
  u32 __cil_tmp275 ;
  unsigned long __cil_tmp276 ;
  unsigned long __cil_tmp277 ;
  u8 __cil_tmp278 ;
  int __cil_tmp279 ;
  unsigned long __cil_tmp280 ;
  unsigned long __cil_tmp281 ;
  unsigned long __cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  unsigned long __cil_tmp284 ;
  unsigned long __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned long __cil_tmp287 ;
  unsigned long __cil_tmp288 ;
  unsigned long __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  u32 __cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  unsigned long __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  unsigned long __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  unsigned long __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  u8 __cil_tmp301 ;
  int __cil_tmp302 ;
  unsigned long __cil_tmp303 ;
  unsigned long __cil_tmp304 ;
  unsigned long __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  unsigned long __cil_tmp307 ;
  unsigned long __cil_tmp308 ;
  u8 __cil_tmp309 ;
  int __cil_tmp310 ;
  int __cil_tmp311 ;
  unsigned long __cil_tmp312 ;
  unsigned long __cil_tmp313 ;
  u32 __cil_tmp314 ;
  unsigned long __cil_tmp315 ;
  unsigned long __cil_tmp316 ;
  u32 __cil_tmp317 ;
  unsigned long __cil_tmp318 ;
  unsigned long __cil_tmp319 ;
  unsigned long __cil_tmp320 ;
  int __cil_tmp321 ;
  int __cil_tmp322 ;
  unsigned long __cil_tmp323 ;
  unsigned long __cil_tmp324 ;
  unsigned long __cil_tmp325 ;
  u8 __cil_tmp326 ;
  int __cil_tmp327 ;
  int __cil_tmp328 ;
  unsigned long __cil_tmp329 ;
  unsigned long __cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  int __cil_tmp332 ;
  unsigned long __cil_tmp333 ;
  unsigned long __cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  u8 __cil_tmp336 ;
  int __cil_tmp337 ;
  int __cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  unsigned long __cil_tmp340 ;
  u32 __cil_tmp341 ;
  u8 __cil_tmp342 ;
  u32 __cil_tmp343 ;
  unsigned long __cil_tmp344 ;
  unsigned long __cil_tmp345 ;
  u32 __cil_tmp346 ;
  u32 __cil_tmp347 ;
  u32 __cil_tmp348 ;
  int __cil_tmp349 ;
  int __cil_tmp350 ;
  int __cil_tmp351 ;
  int __cil_tmp352 ;
  int __cil_tmp353 ;
  int __cil_tmp354 ;
  int __cil_tmp355 ;
  unsigned long __cil_tmp356 ;
  unsigned long __cil_tmp357 ;
  unsigned long __cil_tmp358 ;
  unsigned long __cil_tmp359 ;
  unsigned long __cil_tmp360 ;
  u32 __cil_tmp361 ;
  u32 __cil_tmp362 ;
  u32 __cil_tmp363 ;
  unsigned long __cil_tmp364 ;
  unsigned long __cil_tmp365 ;
  unsigned long __cil_tmp366 ;
  int __cil_tmp367 ;
  int __cil_tmp368 ;
  unsigned long __cil_tmp369 ;
  unsigned long __cil_tmp370 ;
  unsigned long __cil_tmp371 ;
  struct atyfb_par *__cil_tmp372 ;
  unsigned long __cil_tmp373 ;
  unsigned long __cil_tmp374 ;
  unsigned long __cil_tmp375 ;
  unsigned long __cil_tmp376 ;
  unsigned long __cil_tmp377 ;
  unsigned long __cil_tmp378 ;
  u8 __cil_tmp379 ;
  int __cil_tmp380 ;
  int __cil_tmp381 ;
  {
  {
  __cil_tmp16 = (unsigned long )info;
  __cil_tmp17 = __cil_tmp16 + 1160;
  __cil_tmp18 = *((void * *)__cil_tmp17);
  par = (struct atyfb_par *)__cil_tmp18;
  __cil_tmp19 = 0 + 8;
  __cil_tmp20 = (unsigned long )pll___0;
  __cil_tmp21 = __cil_tmp20 + __cil_tmp19;
  __cil_tmp22 = (struct atyfb_par *)par;
  *((u8 *)__cil_tmp21) = aty_ld_pll_ct(11, __cil_tmp22);
  __cil_tmp23 = 0 + 37;
  __cil_tmp24 = (unsigned long )pll___0;
  __cil_tmp25 = __cil_tmp24 + __cil_tmp23;
  __cil_tmp26 = 0 + 8;
  __cil_tmp27 = (unsigned long )pll___0;
  __cil_tmp28 = __cil_tmp27 + __cil_tmp26;
  __cil_tmp29 = *((u8 *)__cil_tmp28);
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = __cil_tmp30 & 7;
  *((u8 *)__cil_tmp25) = (u8 )__cil_tmp31;
  __cil_tmp32 = 0 + 36;
  __cil_tmp33 = (unsigned long )pll___0;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((u8 *)__cil_tmp34) = (u8 )1;
  }
  {
  __cil_tmp35 = 0 + 37;
  __cil_tmp36 = (unsigned long )pll___0;
  __cil_tmp37 = __cil_tmp36 + __cil_tmp35;
  __cil_tmp38 = *((u8 *)__cil_tmp37);
  if ((int )__cil_tmp38 == 0) {
    goto case_0;
  } else
  if ((int )__cil_tmp38 == 1) {
    goto case_0;
  } else
  if ((int )__cil_tmp38 == 2) {
    goto case_0;
  } else
  if ((int )__cil_tmp38 == 3) {
    goto case_0;
  } else
  if ((int )__cil_tmp38 == 4) {
    goto case_4;
  } else {
    {
    goto switch_default;
    if (0) {
      case_0:
      case_1:
      case_2:
      case_3:
      goto switch_break;
      case_4:
      __cil_tmp39 = 0 + 36;
      __cil_tmp40 = (unsigned long )pll___0;
      __cil_tmp41 = __cil_tmp40 + __cil_tmp39;
      *((u8 *)__cil_tmp41) = (u8 )3;
      __cil_tmp42 = 0 + 37;
      __cil_tmp43 = (unsigned long )pll___0;
      __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
      *((u8 *)__cil_tmp44) = (u8 )0;
      goto switch_break;
      switch_default:
      {
      __cil_tmp45 = 0 + 37;
      __cil_tmp46 = (unsigned long )pll___0;
      __cil_tmp47 = __cil_tmp46 + __cil_tmp45;
      __cil_tmp48 = *((u8 *)__cil_tmp47);
      __cil_tmp49 = (int )__cil_tmp48;
      printk("<2>atyfb: Unsupported xclk source:  %d.\n", __cil_tmp49);
      }
      return (-22);
    } else {
      switch_break: ;
    }
    }
  }
  }
  __cil_tmp50 = 0 + 3;
  __cil_tmp51 = (unsigned long )pll___0;
  __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
  *((u8 *)__cil_tmp52) = (u8 )2;
  {
  __cil_tmp53 = 0 + 8;
  __cil_tmp54 = (unsigned long )pll___0;
  __cil_tmp55 = __cil_tmp54 + __cil_tmp53;
  __cil_tmp56 = *((u8 *)__cil_tmp55);
  __cil_tmp57 = (int )__cil_tmp56;
  if (__cil_tmp57 & 8) {
    __cil_tmp58 = 0 + 3;
    __cil_tmp59 = (unsigned long )pll___0;
    __cil_tmp60 = __cil_tmp59 + __cil_tmp58;
    *((u8 *)__cil_tmp60) = (u8 )4;
    __cil_tmp61 = 0 + 37;
    __cil_tmp62 = (unsigned long )pll___0;
    __cil_tmp63 = __cil_tmp62 + __cil_tmp61;
    __cil_tmp64 = 0 + 37;
    __cil_tmp65 = (unsigned long )pll___0;
    __cil_tmp66 = __cil_tmp65 + __cil_tmp64;
    __cil_tmp67 = *((u8 *)__cil_tmp66);
    __cil_tmp68 = (int )__cil_tmp67;
    __cil_tmp69 = __cil_tmp68 - 1;
    *((u8 *)__cil_tmp63) = (u8 )__cil_tmp69;
  } else {
  }
  }
  {
  __cil_tmp70 = (struct atyfb_par *)par;
  memcntl = aty_ld_le32(176, __cil_tmp70);
  __cil_tmp71 = memcntl & 768U;
  trp = __cil_tmp71 >> 8;
  __cil_tmp72 = 0 + 28;
  __cil_tmp73 = (unsigned long )pll___0;
  __cil_tmp74 = __cil_tmp73 + __cil_tmp72;
  __cil_tmp75 = memcntl & 4096U;
  __cil_tmp76 = __cil_tmp75 >> 12;
  __cil_tmp77 = memcntl & 3072U;
  __cil_tmp78 = __cil_tmp77 >> 10;
  __cil_tmp79 = __cil_tmp78 + __cil_tmp76;
  __cil_tmp80 = __cil_tmp79 + trp;
  *((u32 *)__cil_tmp74) = __cil_tmp80 + 2U;
  __cil_tmp81 = 0 + 32;
  __cil_tmp82 = (unsigned long )pll___0;
  __cil_tmp83 = __cil_tmp82 + __cil_tmp81;
  __cil_tmp84 = memcntl & 458752U;
  __cil_tmp85 = __cil_tmp84 >> 16;
  __cil_tmp86 = __cil_tmp85 + trp;
  *((u32 *)__cil_tmp83) = __cil_tmp86 + 2U;
  }
  {
  __cil_tmp87 = (unsigned long )par;
  __cil_tmp88 = __cil_tmp87 + 1044;
  __cil_tmp89 = *((u32 *)__cil_tmp88);
  if (__cil_tmp89 & 8U) {
    __cil_tmp90 = 0 + 24;
    __cil_tmp91 = (unsigned long )pll___0;
    __cil_tmp92 = __cil_tmp91 + __cil_tmp90;
    *((u32 *)__cil_tmp92) = (u32 )32;
  } else {
    __cil_tmp93 = 0 + 24;
    __cil_tmp94 = (unsigned long )pll___0;
    __cil_tmp95 = __cil_tmp94 + __cil_tmp93;
    *((u32 *)__cil_tmp95) = (u32 )24;
    __cil_tmp96 = 0 + 28;
    __cil_tmp97 = (unsigned long )pll___0;
    __cil_tmp98 = __cil_tmp97 + __cil_tmp96;
    __cil_tmp99 = 0 + 28;
    __cil_tmp100 = (unsigned long )pll___0;
    __cil_tmp101 = __cil_tmp100 + __cil_tmp99;
    __cil_tmp102 = *((u32 *)__cil_tmp101);
    *((u32 *)__cil_tmp98) = __cil_tmp102 + 2U;
    __cil_tmp103 = 0 + 32;
    __cil_tmp104 = (unsigned long )pll___0;
    __cil_tmp105 = __cil_tmp104 + __cil_tmp103;
    __cil_tmp106 = 0 + 32;
    __cil_tmp107 = (unsigned long )pll___0;
    __cil_tmp108 = __cil_tmp107 + __cil_tmp106;
    __cil_tmp109 = *((u32 *)__cil_tmp108);
    *((u32 *)__cil_tmp105) = __cil_tmp109 + 3U;
  }
  }
  {
  __cil_tmp110 = (unsigned long )par;
  __cil_tmp111 = __cil_tmp110 + 1065;
  __cil_tmp112 = *((u8 *)__cil_tmp111);
  if ((int )__cil_tmp112 == 1) {
    goto case_1___0;
  } else
  if ((int )__cil_tmp112 == 2) {
    goto case_2___0;
  } else
  if ((int )__cil_tmp112 == 3) {
    goto case_2___0;
  } else
  if ((int )__cil_tmp112 == 4) {
    goto case_4___0;
  } else
  if ((int )__cil_tmp112 == 5) {
    goto case_5;
  } else {
    {
    goto switch_default___0;
    if (0) {
      case_1___0:
      {
      __cil_tmp113 = 320 + 24;
      __cil_tmp114 = (unsigned long )info;
      __cil_tmp115 = __cil_tmp114 + __cil_tmp113;
      __cil_tmp116 = *((__u32 *)__cil_tmp115);
      if (__cil_tmp116 <= 1048576U) {
        __cil_tmp117 = 0 + 20;
        __cil_tmp118 = (unsigned long )pll___0;
        __cil_tmp119 = __cil_tmp118 + __cil_tmp117;
        *((u32 *)__cil_tmp119) = (u32 )10;
      } else {
        __cil_tmp120 = 0 + 20;
        __cil_tmp121 = (unsigned long )pll___0;
        __cil_tmp122 = __cil_tmp121 + __cil_tmp120;
        *((u32 *)__cil_tmp122) = (u32 )8;
        __cil_tmp123 = 0 + 28;
        __cil_tmp124 = (unsigned long )pll___0;
        __cil_tmp125 = __cil_tmp124 + __cil_tmp123;
        __cil_tmp126 = 0 + 28;
        __cil_tmp127 = (unsigned long )pll___0;
        __cil_tmp128 = __cil_tmp127 + __cil_tmp126;
        __cil_tmp129 = *((u32 *)__cil_tmp128);
        *((u32 *)__cil_tmp125) = __cil_tmp129 + 2U;
      }
      }
      goto switch_break___0;
      case_2___0:
      case_3___0:
      {
      __cil_tmp130 = 320 + 24;
      __cil_tmp131 = (unsigned long )info;
      __cil_tmp132 = __cil_tmp131 + __cil_tmp130;
      __cil_tmp133 = *((__u32 *)__cil_tmp132);
      if (__cil_tmp133 <= 1048576U) {
        __cil_tmp134 = 0 + 20;
        __cil_tmp135 = (unsigned long )pll___0;
        __cil_tmp136 = __cil_tmp135 + __cil_tmp134;
        *((u32 *)__cil_tmp136) = (u32 )9;
      } else {
        __cil_tmp137 = 0 + 20;
        __cil_tmp138 = (unsigned long )pll___0;
        __cil_tmp139 = __cil_tmp138 + __cil_tmp137;
        *((u32 *)__cil_tmp139) = (u32 )8;
        __cil_tmp140 = 0 + 28;
        __cil_tmp141 = (unsigned long )pll___0;
        __cil_tmp142 = __cil_tmp141 + __cil_tmp140;
        __cil_tmp143 = 0 + 28;
        __cil_tmp144 = (unsigned long )pll___0;
        __cil_tmp145 = __cil_tmp144 + __cil_tmp143;
        __cil_tmp146 = *((u32 *)__cil_tmp145);
        *((u32 *)__cil_tmp142) = __cil_tmp146 + 1U;
      }
      }
      goto switch_break___0;
      case_4___0:
      {
      __cil_tmp147 = 320 + 24;
      __cil_tmp148 = (unsigned long )info;
      __cil_tmp149 = __cil_tmp148 + __cil_tmp147;
      __cil_tmp150 = *((__u32 *)__cil_tmp149);
      if (__cil_tmp150 <= 1048576U) {
        __cil_tmp151 = 0 + 20;
        __cil_tmp152 = (unsigned long )pll___0;
        __cil_tmp153 = __cil_tmp152 + __cil_tmp151;
        *((u32 *)__cil_tmp153) = (u32 )11;
      } else {
        __cil_tmp154 = 0 + 20;
        __cil_tmp155 = (unsigned long )pll___0;
        __cil_tmp156 = __cil_tmp155 + __cil_tmp154;
        *((u32 *)__cil_tmp156) = (u32 )10;
        __cil_tmp157 = 0 + 28;
        __cil_tmp158 = (unsigned long )pll___0;
        __cil_tmp159 = __cil_tmp158 + __cil_tmp157;
        __cil_tmp160 = 0 + 28;
        __cil_tmp161 = (unsigned long )pll___0;
        __cil_tmp162 = __cil_tmp161 + __cil_tmp160;
        __cil_tmp163 = *((u32 *)__cil_tmp162);
        *((u32 *)__cil_tmp159) = __cil_tmp163 + 1U;
      }
      }
      goto switch_break___0;
      case_5:
      __cil_tmp164 = 0 + 20;
      __cil_tmp165 = (unsigned long )pll___0;
      __cil_tmp166 = __cil_tmp165 + __cil_tmp164;
      *((u32 *)__cil_tmp166) = (u32 )8;
      __cil_tmp167 = 0 + 28;
      __cil_tmp168 = (unsigned long )pll___0;
      __cil_tmp169 = __cil_tmp168 + __cil_tmp167;
      __cil_tmp170 = 0 + 28;
      __cil_tmp171 = (unsigned long )pll___0;
      __cil_tmp172 = __cil_tmp171 + __cil_tmp170;
      __cil_tmp173 = *((u32 *)__cil_tmp172);
      *((u32 *)__cil_tmp169) = __cil_tmp173 + 3U;
      goto switch_break___0;
      switch_default___0:
      __cil_tmp174 = 0 + 20;
      __cil_tmp175 = (unsigned long )pll___0;
      __cil_tmp176 = __cil_tmp175 + __cil_tmp174;
      *((u32 *)__cil_tmp176) = (u32 )11;
      __cil_tmp177 = 0 + 28;
      __cil_tmp178 = (unsigned long )pll___0;
      __cil_tmp179 = __cil_tmp178 + __cil_tmp177;
      __cil_tmp180 = 0 + 28;
      __cil_tmp181 = (unsigned long )pll___0;
      __cil_tmp182 = __cil_tmp181 + __cil_tmp180;
      __cil_tmp183 = *((u32 *)__cil_tmp182);
      *((u32 *)__cil_tmp179) = __cil_tmp183 + 3U;
      goto switch_break___0;
    } else {
      switch_break___0: ;
    }
    }
  }
  }
  {
  __cil_tmp184 = 0 + 28;
  __cil_tmp185 = (unsigned long )pll___0;
  __cil_tmp186 = __cil_tmp185 + __cil_tmp184;
  __cil_tmp187 = *((u32 *)__cil_tmp186);
  __cil_tmp188 = 0 + 32;
  __cil_tmp189 = (unsigned long )pll___0;
  __cil_tmp190 = __cil_tmp189 + __cil_tmp188;
  __cil_tmp191 = *((u32 *)__cil_tmp190);
  if (__cil_tmp191 <= __cil_tmp187) {
    __cil_tmp192 = 0 + 32;
    __cil_tmp193 = (unsigned long )pll___0;
    __cil_tmp194 = __cil_tmp193 + __cil_tmp192;
    __cil_tmp195 = 0 + 28;
    __cil_tmp196 = (unsigned long )pll___0;
    __cil_tmp197 = __cil_tmp196 + __cil_tmp195;
    __cil_tmp198 = *((u32 *)__cil_tmp197);
    *((u32 *)__cil_tmp194) = __cil_tmp198 + 1U;
  } else {
  }
  }
  {
  __cil_tmp199 = (struct atyfb_par *)par;
  dsp_config = aty_ld_le32(32, __cil_tmp199);
  __cil_tmp200 = (struct atyfb_par *)par;
  dsp_on_off = aty_ld_le32(36, __cil_tmp200);
  __cil_tmp201 = (struct atyfb_par *)par;
  vga_dsp_config = aty_ld_le32(76, __cil_tmp201);
  __cil_tmp202 = (struct atyfb_par *)par;
  vga_dsp_on_off = aty_ld_le32(80, __cil_tmp202);
  }
  if (dsp_config) {
    __cil_tmp203 = 0 + 20;
    __cil_tmp204 = (unsigned long )pll___0;
    __cil_tmp205 = __cil_tmp204 + __cil_tmp203;
    __cil_tmp206 = dsp_config & 983040U;
    *((u32 *)__cil_tmp205) = __cil_tmp206 >> 16;
  } else {
  }
  {
  __cil_tmp207 = (unsigned long )par;
  __cil_tmp208 = __cil_tmp207 + 1056;
  __cil_tmp209 = *((u32 *)__cil_tmp208);
  if (__cil_tmp209 == 0U) {
    {
    __cil_tmp210 = (struct atyfb_par *)par;
    *((u8 *)pll___0) = aty_ld_pll_ct(2, __cil_tmp210);
    __cil_tmp211 = (struct atyfb_par *)par;
    pll_ext_cntl = aty_ld_pll_ct(11, __cil_tmp211);
    __cil_tmp212 = 0 + 39;
    __cil_tmp213 = (unsigned long )pll___0;
    __cil_tmp214 = __cil_tmp213 + __cil_tmp212;
    __cil_tmp215 = (int )pll_ext_cntl;
    __cil_tmp216 = __cil_tmp215 & 7;
    __cil_tmp217 = __cil_tmp216 * 1UL;
    __cil_tmp218 = (unsigned long )(postdividers) + __cil_tmp217;
    *((u8 *)__cil_tmp214) = *((u8 *)__cil_tmp218);
    __cil_tmp219 = (struct atyfb_par *)par;
    mclk_fb_div = aty_ld_pll_ct(4, __cil_tmp219);
    }
    {
    __cil_tmp220 = (int )pll_ext_cntl;
    if (__cil_tmp220 & 8) {
      __cil_tmp221 = (int )mclk_fb_div;
      __cil_tmp222 = __cil_tmp221 << 1;
      mclk_fb_div = (u8 )__cil_tmp222;
    } else {
    }
    }
    __cil_tmp223 = 0 + 2;
    __cil_tmp224 = (unsigned long )pll___0;
    __cil_tmp225 = __cil_tmp224 + __cil_tmp223;
    *((u8 *)__cil_tmp225) = mclk_fb_div;
    return (0);
  } else {
  }
  }
  __cil_tmp226 = (unsigned long )par;
  __cil_tmp227 = __cil_tmp226 + 1048;
  __cil_tmp228 = *((u32 *)__cil_tmp227);
  __cil_tmp229 = (unsigned long )par;
  __cil_tmp230 = __cil_tmp229 + 1052;
  __cil_tmp231 = *((u32 *)__cil_tmp230);
  __cil_tmp232 = __cil_tmp231 * 2U;
  __cil_tmp233 = __cil_tmp232 * 255U;
  __cil_tmp234 = __cil_tmp233 / __cil_tmp228;
  *((u8 *)pll___0) = (u8 )__cil_tmp234;
  __cil_tmp235 = (unsigned long )par;
  __cil_tmp236 = __cil_tmp235 + 1060;
  __cil_tmp237 = *((u32 *)__cil_tmp236);
  __cil_tmp238 = 0 + 3;
  __cil_tmp239 = (unsigned long )pll___0;
  __cil_tmp240 = __cil_tmp239 + __cil_tmp238;
  __cil_tmp241 = *((u8 *)__cil_tmp240);
  __cil_tmp242 = (u32 )__cil_tmp241;
  __cil_tmp243 = __cil_tmp242 * __cil_tmp237;
  __cil_tmp244 = *((u8 *)pll___0);
  __cil_tmp245 = (u32 )__cil_tmp244;
  __cil_tmp246 = (unsigned long )par;
  __cil_tmp247 = __cil_tmp246 + 1048;
  __cil_tmp248 = *((u32 *)__cil_tmp247);
  __cil_tmp249 = __cil_tmp248 * __cil_tmp245;
  __cil_tmp250 = __cil_tmp249 * 8U;
  q = __cil_tmp250 / __cil_tmp243;
  if (q < 128U) {
    {
    printk("<2>atxfb: xclk out of range\n");
    }
    return (-22);
  } else
  if (q > 2040U) {
    {
    printk("<2>atxfb: xclk out of range\n");
    }
    return (-22);
  } else {
    __cil_tmp251 = q < 1024U;
    xpost_div = (u8 )__cil_tmp251;
    __cil_tmp252 = q < 512U;
    __cil_tmp253 = (int )xpost_div;
    __cil_tmp254 = __cil_tmp253 + __cil_tmp252;
    xpost_div = (u8 )__cil_tmp254;
    __cil_tmp255 = q < 256U;
    __cil_tmp256 = (int )xpost_div;
    __cil_tmp257 = __cil_tmp256 + __cil_tmp255;
    xpost_div = (u8 )__cil_tmp257;
  }
  __cil_tmp258 = 0 + 39;
  __cil_tmp259 = (unsigned long )pll___0;
  __cil_tmp260 = __cil_tmp259 + __cil_tmp258;
  __cil_tmp261 = xpost_div * 1UL;
  __cil_tmp262 = (unsigned long )(postdividers) + __cil_tmp261;
  *((u8 *)__cil_tmp260) = *((u8 *)__cil_tmp262);
  __cil_tmp263 = 0 + 2;
  __cil_tmp264 = (unsigned long )pll___0;
  __cil_tmp265 = __cil_tmp264 + __cil_tmp263;
  __cil_tmp266 = 0 + 39;
  __cil_tmp267 = (unsigned long )pll___0;
  __cil_tmp268 = __cil_tmp267 + __cil_tmp266;
  __cil_tmp269 = *((u8 *)__cil_tmp268);
  __cil_tmp270 = (u32 )__cil_tmp269;
  __cil_tmp271 = q * __cil_tmp270;
  __cil_tmp272 = __cil_tmp271 / 8U;
  *((u8 *)__cil_tmp265) = (u8 )__cil_tmp272;
  {
  __cil_tmp273 = (unsigned long )par;
  __cil_tmp274 = __cil_tmp273 + 1044;
  __cil_tmp275 = *((u32 *)__cil_tmp274);
  if (__cil_tmp275 & 16U) {
    {
    __cil_tmp276 = (unsigned long )par;
    __cil_tmp277 = __cil_tmp276 + 1065;
    __cil_tmp278 = *((u8 *)__cil_tmp277);
    __cil_tmp279 = (int )__cil_tmp278;
    if (__cil_tmp279 >= 4) {
      __cil_tmp280 = 0 + 1;
      __cil_tmp281 = (unsigned long )pll___0;
      __cil_tmp282 = __cil_tmp281 + __cil_tmp280;
      *((u8 *)__cil_tmp282) = (u8 )4;
    } else {
      __cil_tmp283 = 0 + 1;
      __cil_tmp284 = (unsigned long )pll___0;
      __cil_tmp285 = __cil_tmp284 + __cil_tmp283;
      *((u8 *)__cil_tmp285) = (u8 )132;
    }
    }
  } else {
    __cil_tmp286 = 0 + 1;
    __cil_tmp287 = (unsigned long )pll___0;
    __cil_tmp288 = __cil_tmp287 + __cil_tmp286;
    *((u8 *)__cil_tmp288) = (u8 )132;
  }
  }
  {
  __cil_tmp289 = (unsigned long )par;
  __cil_tmp290 = __cil_tmp289 + 1044;
  __cil_tmp291 = *((u32 *)__cil_tmp290);
  if (__cil_tmp291 & 32U) {
    __cil_tmp292 = 0 + 8;
    __cil_tmp293 = (unsigned long )pll___0;
    __cil_tmp294 = __cil_tmp293 + __cil_tmp292;
    *((u8 *)__cil_tmp294) = (u8 )0;
  } else {
    __cil_tmp295 = 0 + 8;
    __cil_tmp296 = (unsigned long )pll___0;
    __cil_tmp297 = __cil_tmp296 + __cil_tmp295;
    *((u8 *)__cil_tmp297) = xpost_div;
  }
  }
  {
  __cil_tmp298 = 0 + 3;
  __cil_tmp299 = (unsigned long )pll___0;
  __cil_tmp300 = __cil_tmp299 + __cil_tmp298;
  __cil_tmp301 = *((u8 *)__cil_tmp300);
  __cil_tmp302 = (int )__cil_tmp301;
  if (__cil_tmp302 == 4) {
    __cil_tmp303 = 0 + 8;
    __cil_tmp304 = (unsigned long )pll___0;
    __cil_tmp305 = __cil_tmp304 + __cil_tmp303;
    __cil_tmp306 = 0 + 8;
    __cil_tmp307 = (unsigned long )pll___0;
    __cil_tmp308 = __cil_tmp307 + __cil_tmp306;
    __cil_tmp309 = *((u8 *)__cil_tmp308);
    __cil_tmp310 = (int )__cil_tmp309;
    __cil_tmp311 = __cil_tmp310 | 8;
    *((u8 *)__cil_tmp305) = (u8 )__cil_tmp311;
  } else {
  }
  }
  {
  __cil_tmp312 = (unsigned long )par;
  __cil_tmp313 = __cil_tmp312 + 1060;
  __cil_tmp314 = *((u32 *)__cil_tmp313);
  __cil_tmp315 = (unsigned long )par;
  __cil_tmp316 = __cil_tmp315 + 1056;
  __cil_tmp317 = *((u32 *)__cil_tmp316);
  if (__cil_tmp317 == __cil_tmp314) {
    __cil_tmp318 = 0 + 1;
    __cil_tmp319 = (unsigned long )pll___0;
    __cil_tmp320 = __cil_tmp319 + __cil_tmp318;
    __cil_tmp321 = (int )xpost_div;
    __cil_tmp322 = __cil_tmp321 << 4;
    __cil_tmp323 = 0 + 1;
    __cil_tmp324 = (unsigned long )pll___0;
    __cil_tmp325 = __cil_tmp324 + __cil_tmp323;
    __cil_tmp326 = *((u8 *)__cil_tmp325);
    __cil_tmp327 = (int )__cil_tmp326;
    __cil_tmp328 = __cil_tmp327 | __cil_tmp322;
    *((u8 *)__cil_tmp320) = (u8 )__cil_tmp328;
  } else {
    __cil_tmp329 = 0 + 1;
    __cil_tmp330 = (unsigned long )pll___0;
    __cil_tmp331 = __cil_tmp330 + __cil_tmp329;
    __cil_tmp332 = 6 << 4;
    __cil_tmp333 = 0 + 1;
    __cil_tmp334 = (unsigned long )pll___0;
    __cil_tmp335 = __cil_tmp334 + __cil_tmp333;
    __cil_tmp336 = *((u8 *)__cil_tmp335);
    __cil_tmp337 = (int )__cil_tmp336;
    __cil_tmp338 = __cil_tmp337 | __cil_tmp332;
    *((u8 *)__cil_tmp331) = (u8 )__cil_tmp338;
    __cil_tmp339 = (unsigned long )par;
    __cil_tmp340 = __cil_tmp339 + 1056;
    __cil_tmp341 = *((u32 *)__cil_tmp340);
    __cil_tmp342 = *((u8 *)pll___0);
    __cil_tmp343 = (u32 )__cil_tmp342;
    __cil_tmp344 = (unsigned long )par;
    __cil_tmp345 = __cil_tmp344 + 1048;
    __cil_tmp346 = *((u32 *)__cil_tmp345);
    __cil_tmp347 = __cil_tmp346 * __cil_tmp343;
    __cil_tmp348 = __cil_tmp347 * 4U;
    q = __cil_tmp348 / __cil_tmp341;
    if (q < 128U) {
      {
      printk("<2>atyfb: mclk out of range\n");
      }
      return (-22);
    } else
    if (q > 2040U) {
      {
      printk("<2>atyfb: mclk out of range\n");
      }
      return (-22);
    } else {
      __cil_tmp349 = q < 1024U;
      mpost_div = (u8 )__cil_tmp349;
      __cil_tmp350 = q < 512U;
      __cil_tmp351 = (int )mpost_div;
      __cil_tmp352 = __cil_tmp351 + __cil_tmp350;
      mpost_div = (u8 )__cil_tmp352;
      __cil_tmp353 = q < 256U;
      __cil_tmp354 = (int )mpost_div;
      __cil_tmp355 = __cil_tmp354 + __cil_tmp353;
      mpost_div = (u8 )__cil_tmp355;
    }
    __cil_tmp356 = mpost_div * 1UL;
    __cil_tmp357 = (unsigned long )(postdividers) + __cil_tmp356;
    sclk_post_div_real = *((u8 *)__cil_tmp357);
    __cil_tmp358 = 0 + 4;
    __cil_tmp359 = (unsigned long )pll___0;
    __cil_tmp360 = __cil_tmp359 + __cil_tmp358;
    __cil_tmp361 = (u32 )sclk_post_div_real;
    __cil_tmp362 = q * __cil_tmp361;
    __cil_tmp363 = __cil_tmp362 / 8U;
    *((u8 *)__cil_tmp360) = (u8 )__cil_tmp363;
    __cil_tmp364 = 0 + 10;
    __cil_tmp365 = (unsigned long )pll___0;
    __cil_tmp366 = __cil_tmp365 + __cil_tmp364;
    __cil_tmp367 = (int )mpost_div;
    __cil_tmp368 = __cil_tmp367 << 4;
    *((u8 *)__cil_tmp366) = (u8 )__cil_tmp368;
  }
  }
  {
  __cil_tmp369 = 0 + 9;
  __cil_tmp370 = (unsigned long )pll___0;
  __cil_tmp371 = __cil_tmp370 + __cil_tmp369;
  __cil_tmp372 = (struct atyfb_par *)par;
  *((u8 *)__cil_tmp371) = aty_ld_pll_ct(25, __cil_tmp372);
  __cil_tmp373 = 0 + 9;
  __cil_tmp374 = (unsigned long )pll___0;
  __cil_tmp375 = __cil_tmp374 + __cil_tmp373;
  __cil_tmp376 = 0 + 9;
  __cil_tmp377 = (unsigned long )pll___0;
  __cil_tmp378 = __cil_tmp377 + __cil_tmp376;
  __cil_tmp379 = *((u8 *)__cil_tmp378);
  __cil_tmp380 = (int )__cil_tmp379;
  __cil_tmp381 = __cil_tmp380 & -29;
  *((u8 *)__cil_tmp375) = (u8 )__cil_tmp381;
  }
  return (0);
}
}
static void aty_resume_pll_ct(struct fb_info *info , union aty_pll *pll___0 )
{ struct atyfb_par *par ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  void * __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  u32 __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  u8 __cil_tmp18 ;
  struct atyfb_par *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  u8 __cil_tmp23 ;
  struct atyfb_par *__cil_tmp24 ;
  u8 __cil_tmp25 ;
  struct atyfb_par *__cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  u8 __cil_tmp30 ;
  struct atyfb_par *__cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  u8 __cil_tmp35 ;
  struct atyfb_par *__cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  u8 __cil_tmp40 ;
  struct atyfb_par *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  u8 __cil_tmp45 ;
  struct atyfb_par *__cil_tmp46 ;
  {
  __cil_tmp6 = (unsigned long )info;
  __cil_tmp7 = __cil_tmp6 + 1160;
  __cil_tmp8 = *((void * *)__cil_tmp7);
  par = (struct atyfb_par *)__cil_tmp8;
  {
  __cil_tmp9 = (unsigned long )par;
  __cil_tmp10 = __cil_tmp9 + 1060;
  __cil_tmp11 = *((u32 *)__cil_tmp10);
  __cil_tmp12 = (unsigned long )par;
  __cil_tmp13 = __cil_tmp12 + 1056;
  __cil_tmp14 = *((u32 *)__cil_tmp13);
  if (__cil_tmp14 != __cil_tmp11) {
    {
    __cil_tmp15 = 0 + 4;
    __cil_tmp16 = (unsigned long )pll___0;
    __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
    __cil_tmp18 = *((u8 *)__cil_tmp17);
    __cil_tmp19 = (struct atyfb_par *)par;
    aty_st_pll_ct(21, __cil_tmp18, __cil_tmp19);
    __cil_tmp20 = 0 + 10;
    __cil_tmp21 = (unsigned long )pll___0;
    __cil_tmp22 = __cil_tmp21 + __cil_tmp20;
    __cil_tmp23 = *((u8 *)__cil_tmp22);
    __cil_tmp24 = (struct atyfb_par *)par;
    aty_st_pll_ct(23, __cil_tmp23, __cil_tmp24);
    ___udelay(21475000UL);
    }
  } else {
  }
  }
  {
  __cil_tmp25 = *((u8 *)pll___0);
  __cil_tmp26 = (struct atyfb_par *)par;
  aty_st_pll_ct(2, __cil_tmp25, __cil_tmp26);
  __cil_tmp27 = 0 + 1;
  __cil_tmp28 = (unsigned long )pll___0;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = *((u8 *)__cil_tmp29);
  __cil_tmp31 = (struct atyfb_par *)par;
  aty_st_pll_ct(3, __cil_tmp30, __cil_tmp31);
  __cil_tmp32 = 0 + 2;
  __cil_tmp33 = (unsigned long )pll___0;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  __cil_tmp35 = *((u8 *)__cil_tmp34);
  __cil_tmp36 = (struct atyfb_par *)par;
  aty_st_pll_ct(4, __cil_tmp35, __cil_tmp36);
  __cil_tmp37 = 0 + 8;
  __cil_tmp38 = (unsigned long )pll___0;
  __cil_tmp39 = __cil_tmp38 + __cil_tmp37;
  __cil_tmp40 = *((u8 *)__cil_tmp39);
  __cil_tmp41 = (struct atyfb_par *)par;
  aty_st_pll_ct(11, __cil_tmp40, __cil_tmp41);
  __cil_tmp42 = 0 + 9;
  __cil_tmp43 = (unsigned long )pll___0;
  __cil_tmp44 = __cil_tmp43 + __cil_tmp42;
  __cil_tmp45 = *((u8 *)__cil_tmp44);
  __cil_tmp46 = (struct atyfb_par *)par;
  aty_st_pll_ct(25, __cil_tmp45, __cil_tmp46);
  }
  return;
}
}
static int dummy___0(void)
{
  {
  return (0);
}
}
struct aty_dac_ops aty_dac_ct = {(int (*)(struct fb_info *info , union aty_pll const *pll , u32 bpp ,
             u32 accel ))((void *)(& dummy___0))};
struct aty_pll_ops aty_pll_ct = {& aty_var_to_pll_ct, & aty_pll_to_var_ct, & aty_set_pll_ct, & aty_get_pll_ct,
    & aty_init_pll_ct, & aty_resume_pll_ct};
void ldv_main4_sequence_infinite_withcheck_stateful(void)
{ struct fb_info *var_aty_var_to_pll_ct_4_p0 ;
  u32 var_aty_var_to_pll_ct_4_p1 ;
  u32 var_aty_var_to_pll_ct_4_p2 ;
  union aty_pll *var_aty_var_to_pll_ct_4_p3 ;
  struct fb_info *var_aty_pll_to_var_ct_5_p0 ;
  union aty_pll *var_aty_pll_to_var_ct_5_p1 ;
  struct fb_info *var_aty_set_pll_ct_6_p0 ;
  union aty_pll *var_aty_set_pll_ct_6_p1 ;
  struct fb_info *var_aty_get_pll_ct_7_p0 ;
  union aty_pll *var_aty_get_pll_ct_7_p1 ;
  struct fb_info *var_aty_init_pll_ct_8_p0 ;
  union aty_pll *var_aty_init_pll_ct_8_p1 ;
  struct fb_info *var_aty_resume_pll_ct_9_p0 ;
  union aty_pll *var_aty_resume_pll_ct_9_p1 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___8 = __VERIFIER_nondet_int();
    }
    if (tmp___8) {
    } else {
      goto while_break;
    }
    {
    tmp___7 = __VERIFIER_nondet_int();
    }
    if (tmp___7 == 0) {
      goto case_0;
    } else
    if (tmp___7 == 1) {
      goto case_1;
    } else
    if (tmp___7 == 2) {
      goto case_2;
    } else
    if (tmp___7 == 3) {
      goto case_3;
    } else
    if (tmp___7 == 4) {
      goto case_4;
    } else
    if (tmp___7 == 5) {
      goto case_5;
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        aty_var_to_pll_ct(var_aty_var_to_pll_ct_4_p0, var_aty_var_to_pll_ct_4_p1,
                          var_aty_var_to_pll_ct_4_p2, var_aty_var_to_pll_ct_4_p3);
        }
        goto switch_break;
        case_1:
        {
        aty_pll_to_var_ct(var_aty_pll_to_var_ct_5_p0, var_aty_pll_to_var_ct_5_p1);
        }
        goto switch_break;
        case_2:
        {
        aty_set_pll_ct(var_aty_set_pll_ct_6_p0, var_aty_set_pll_ct_6_p1);
        }
        goto switch_break;
        case_3:
        {
        aty_get_pll_ct(var_aty_get_pll_ct_7_p0, var_aty_get_pll_ct_7_p1);
        }
        goto switch_break;
        case_4:
        {
        aty_init_pll_ct(var_aty_init_pll_ct_8_p0, var_aty_init_pll_ct_8_p1);
        }
        goto switch_break;
        case_5:
        {
        aty_resume_pll_ct(var_aty_resume_pll_ct_9_p0, var_aty_resume_pll_ct_9_p1);
        }
        goto switch_break;
        switch_default:
        goto switch_break;
      } else {
        switch_break: ;
      }
      }
    }
  }
  while_break: ;
  }
  {
  ldv_check_final_state();
  }
  return;
}
}
void ___udelay(unsigned long arg0) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, char *arg1, struct lock_class_key *arg2) {
  return;
}
void __might_sleep(char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
struct backlight_device *backlight_device_register(char *arg0, struct device *arg1, void *arg2, struct backlight_ops *arg3, struct backlight_properties *arg4) {
  return ldv_malloc(sizeof(struct backlight_device));
}
void backlight_device_unregister(struct backlight_device *arg0) {
  return;
}
void cfb_copyarea(struct fb_info *arg0, struct fb_copyarea *arg1) {
  return;
}
void cfb_fillrect(struct fb_info *arg0, struct fb_fillrect *arg1) {
  return;
}
void cfb_imageblit(struct fb_info *arg0, struct fb_image *arg1) {
  return;
}
void console_lock() {
  return;
}
void console_unlock() {
  return;
}
void *dev_get_drvdata(struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dmi_check_system(struct dmi_system_id *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int fb_alloc_cmap(struct fb_cmap *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void fb_bl_default_curve(struct fb_info *arg0, u8 arg1, u8 arg2, u8 arg3) {
  return;
}
void fb_dealloc_cmap(struct fb_cmap *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int fb_find_mode(struct fb_var_screeninfo *arg0, struct fb_info *arg1, char *arg2, struct fb_videomode *arg3, unsigned int arg4, struct fb_videomode *arg5, unsigned int arg6) {
  return __VERIFIER_nondet_int();
}
void fb_set_suspend(struct fb_info *arg0, int arg1) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
struct fb_info *framebuffer_alloc(size_t arg0, struct device *arg1) {
  return ldv_malloc(sizeof(struct fb_info));
}
void framebuffer_release(struct fb_info *arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int lock_fb_info(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtrr_add(unsigned long arg0, unsigned long arg1, unsigned int arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtrr_del(int arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_framebuffer(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int unregister_framebuffer(struct fb_info *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int unregister_reboot_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
