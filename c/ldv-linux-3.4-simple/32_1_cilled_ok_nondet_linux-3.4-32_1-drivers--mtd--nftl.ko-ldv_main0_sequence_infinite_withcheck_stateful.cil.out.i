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
typedef unsigned char u_char;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef __u16 __le16;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned int flags : 8 ;
} __attribute__((__aligned__(8))) ;
struct device;
struct completion;
struct pt_regs;
struct pid;
struct timespec;
struct page;
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
typedef atomic64_t atomic_long_t;
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
   char const *name ;
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
struct pm_qos_constraints;
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
   struct pm_qos_constraints *constraints ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_112 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_112 mm_context_t;
struct vm_area_struct;
struct bio_vec;
struct call_single_data {
   struct list_head list ;
   void (*func)(void *info ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
};
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
   void const *(*netlink_ns)(struct sock *sk ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
enum kobj_ns_type;
struct attribute {
   char const *name ;
   umode_t mode ;
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
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute *attr , struct vm_area_struct *vma ) ;
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
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject *kobj ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject *kobj ) ;
   void const *(*namespace)(struct kobject *kobj ) ;
};
struct kobj_uevent_env {
   char *envp[32] ;
   int envp_idx ;
   char buf[2048] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset *kset , struct kobject *kobj ) ;
   char const *(* const name)(struct kset *kset , struct kobject *kobj ) ;
   int (* const uevent)(struct kset *kset , struct kobject *kobj , struct kobj_uevent_env *env ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const *val , struct kernel_param const *kp ) ;
   int (*get)(char *buffer , struct kernel_param const *kp ) ;
   void (*free)(void *arg ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_199 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
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
                    size_t count ) ;
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
   ctor_fn_t *ctors ;
   unsigned int num_ctors ;
};
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
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
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct hd_geometry {
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   unsigned long start ;
};
struct kernel_cap_struct {
   __u32 cap[2] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
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
union __anonunion____missing_field_name_205 {
   unsigned long index ;
   void *freelist ;
};
struct __anonstruct____missing_field_name_209 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_208 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_209 __annonCompField34 ;
};
struct __anonstruct____missing_field_name_207 {
   union __anonunion____missing_field_name_208 __annonCompField35 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_206 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_207 __annonCompField36 ;
};
struct __anonstruct____missing_field_name_204 {
   union __anonunion____missing_field_name_205 __annonCompField33 ;
   union __anonunion____missing_field_name_206 __annonCompField37 ;
};
struct __anonstruct____missing_field_name_211 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_210 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
};
union __anonunion____missing_field_name_212 {
   unsigned long private ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct____missing_field_name_204 __annonCompField38 ;
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   union __anonunion____missing_field_name_212 __annonCompField41 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
struct __anonstruct_vm_set_214 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_213 {
   struct __anonstruct_vm_set_214 vm_set ;
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
   union __anonunion_shared_213 shared ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct siginfo;
struct __anonstruct_sigset_t_216 {
   unsigned long sig[1] ;
};
typedef struct __anonstruct_sigset_t_216 sigset_t;
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
struct __anonstruct__kill_218 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_219 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[sizeof(__kernel_uid32_t ) - sizeof(int )] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_220 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_221 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_222 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_223 {
   long _band ;
   int _fd ;
};
union __anonunion__sifields_217 {
   int _pad[(128UL - 4UL * sizeof(int )) / sizeof(int )] ;
   struct __anonstruct__kill_218 _kill ;
   struct __anonstruct__timer_219 _timer ;
   struct __anonstruct__rt_220 _rt ;
   struct __anonstruct__sigchld_221 _sigchld ;
   struct __anonstruct__sigfault_222 _sigfault ;
   struct __anonstruct__sigpoll_223 _sigpoll ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_217 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct prop_local_percpu {
   struct percpu_counter events ;
   int shift ;
   unsigned long period ;
   raw_spinlock_t lock ;
};
struct __anonstruct_seccomp_t_226 {
   int mode ;
};
typedef struct __anonstruct_seccomp_t_226 seccomp_t;
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
union __anonunion____missing_field_name_227 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_228 {
   struct list_head link ;
   unsigned long x[2] ;
   void *p[2] ;
   int reject_error ;
};
union __anonunion_payload_229 {
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
   union __anonunion____missing_field_name_227 __annonCompField42 ;
   uid_t uid ;
   gid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_228 type_data ;
   union __anonunion_payload_229 payload ;
};
struct audit_context;
struct inode;
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
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_231 {
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
   union __anonunion_ki_obj_231 ki_obj ;
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
   struct sched_class const *next ;
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
   void (*set_cpus_allowed)(struct task_struct *p , struct cpumask const *newmask ) ;
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
   struct cred const *real_cred ;
   struct cred const *cred ;
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
struct device_type;
struct class;
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
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type *bus , char *buf ) ;
   ssize_t (*store)(struct bus_type *bus , char const *buf , size_t count ) ;
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
   int (*match)(struct device *dev , struct device_driver *drv ) ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct of_device_id;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   int (*probe)(struct device *dev ) ;
   int (*remove)(struct device *dev ) ;
   void (*shutdown)(struct device *dev ) ;
   int (*suspend)(struct device *dev , pm_message_t state ) ;
   int (*resume)(struct device *dev ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver *driver , char *buf ) ;
   ssize_t (*store)(struct device_driver *driver , char const *buf , size_t count ) ;
};
struct class_attribute;
struct class {
   char const *name ;
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
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class *class , struct class_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct class *class , struct class_attribute *attr , char const *buf ,
                    size_t count ) ;
   void const *(*namespace)(struct class *class , struct class_attribute const *attr ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device *dev , struct kobj_uevent_env *env ) ;
   char *(*devnode)(struct device *dev , umode_t *mode ) ;
   void (*release)(struct device *dev ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device *dev , struct device_attribute *attr , char *buf ) ;
   ssize_t (*store)(struct device *dev , struct device_attribute *attr , char const *buf ,
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
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device *dev ) ;
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
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long hit_count ;
   unsigned int active : 1 ;
};
struct bio;
struct bio_integrity_payload;
struct block_device;
typedef void bio_end_io_t(struct bio * , int );
typedef void bio_destructor_t(struct bio * );
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
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct bio_integrity_payload *bi_integrity ;
   bio_destructor_t *bi_destructor ;
   struct bio_vec bi_inline_vecs[0] ;
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
struct qstr {
   unsigned int hash ;
   unsigned int len ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_234 {
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
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_234 d_u ;
   struct list_head d_subdirs ;
   struct list_head d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , struct nameidata * ) ;
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
   struct quota_format_ops const *qf_ops ;
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
   struct quota_format_ops const *ops[2] ;
};
struct writeback_control;
union __anonunion_arg_241 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_240 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_241 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_240 read_descriptor_t;
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const *iov , loff_t offset ,
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
   struct address_space_operations const *a_ops ;
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
union __anonunion____missing_field_name_242 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_243 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_operations;
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_244 {
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
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion____missing_field_name_242 __annonCompField44 ;
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
   union __anonunion____missing_field_name_243 __annonCompField45 ;
   atomic_t i_count ;
   unsigned int i_blkbits ;
   u64 i_version ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_244 __annonCompField46 ;
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
union __anonunion_f_u_245 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_245 f_u ;
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
struct __anonstruct_afs_247 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_246 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_247 afs ;
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
   union __anonunion_fl_u_246 fl_u ;
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
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount *mnt , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
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
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct disk_stats {
   unsigned long sectors[2] ;
   unsigned long ios[2] ;
   unsigned long merges[2] ;
   unsigned long ticks[2] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   u8 uuid[16] ;
   u8 volname[64] ;
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
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct rcu_head rcu_head ;
};
struct disk_part_tbl {
   struct rcu_head rcu_head ;
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
   char disk_name[32] ;
   char *(*devnode)(struct gendisk *gd , umode_t *mode ) ;
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
   int (*migrate)(struct vm_area_struct *vma , nodemask_t const *from , nodemask_t const *to ,
                  unsigned long flags ) ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   enum writeback_sync_modes sync_mode ;
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   unsigned int for_kupdate : 1 ;
   unsigned int for_background : 1 ;
   unsigned int tagged_writepages : 1 ;
   unsigned int for_reclaim : 1 ;
   unsigned int range_cyclic : 1 ;
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
   struct percpu_counter bdi_stat[4] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct prop_local_percpu completions ;
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
typedef void *mempool_alloc_t(gfp_t gfp_mask , void *pool_data );
typedef void mempool_free_t(void *element , void *pool_data );
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
union __anonunion____missing_field_name_258 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion____missing_field_name_259 {
   struct hlist_node ioc_node ;
   struct rcu_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion____missing_field_name_258 __annonCompField47 ;
   union __anonunion____missing_field_name_259 __annonCompField48 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
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
   struct bio_vec bip_vec[0] ;
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
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   int count[2] ;
   int starved[2] ;
   int elvpriv ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2] ;
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
union __anonunion____missing_field_name_262 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_264 {
   struct io_cq *icq ;
   void *priv[2] ;
};
struct __anonstruct_flush_265 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion____missing_field_name_263 {
   struct __anonstruct_elv_264 elv ;
   struct __anonstruct_flush_265 flush ;
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
   union __anonunion____missing_field_name_262 __annonCompField49 ;
   union __anonunion____missing_field_name_263 __annonCompField50 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16] ;
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
   char elevator_name[16] ;
   struct module *elevator_owner ;
   char icq_cache_name[21] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned int registered : 1 ;
};
typedef void request_fn_proc(struct request_queue *q );
typedef void make_request_fn(struct request_queue *q , struct bio *bio );
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
typedef int lld_busy_fn(struct request_queue *q );
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
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   struct request_list rq ;
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
   unsigned int in_flight[2] ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned int flush_not_queueable : 1 ;
   unsigned int flush_queue_delayed : 1 ;
   unsigned int flush_pending_idx : 1 ;
   unsigned int flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
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
   unsigned int (*check_events)(struct gendisk *disk , unsigned int clearing ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct otp_info {
   __u32 start ;
   __u32 length ;
   __u32 locked ;
};
struct nand_oobfree {
   __u32 offset ;
   __u32 length ;
};
struct mtd_ecc_stats {
   __u32 corrected ;
   __u32 failed ;
   __u32 badblocks ;
   __u32 bbtblocks ;
};
struct erase_info {
   struct mtd_info *mtd ;
   uint64_t addr ;
   uint64_t len ;
   uint64_t fail_addr ;
   u_long time ;
   u_long retries ;
   unsigned int dev ;
   unsigned int cell ;
   void (*callback)(struct erase_info *self ) ;
   u_long priv ;
   u_char state ;
   struct erase_info *next ;
};
struct mtd_erase_region_info {
   uint64_t offset ;
   uint32_t erasesize ;
   uint32_t numblocks ;
   unsigned long *lockmap ;
};
struct mtd_oob_ops {
   unsigned int mode ;
   size_t len ;
   size_t retlen ;
   size_t ooblen ;
   size_t oobretlen ;
   uint32_t ooboffs ;
   uint8_t *datbuf ;
   uint8_t *oobbuf ;
};
struct nand_ecclayout {
   __u32 eccbytes ;
   __u32 eccpos[448] ;
   __u32 oobavail ;
   struct nand_oobfree oobfree[32] ;
};
struct mtd_info {
   u_char type ;
   uint32_t flags ;
   uint64_t size ;
   uint32_t erasesize ;
   uint32_t writesize ;
   uint32_t writebufsize ;
   uint32_t oobsize ;
   uint32_t oobavail ;
   unsigned int erasesize_shift ;
   unsigned int writesize_shift ;
   unsigned int erasesize_mask ;
   unsigned int writesize_mask ;
   char const *name ;
   int index ;
   struct nand_ecclayout *ecclayout ;
   unsigned int ecc_strength ;
   int numeraseregions ;
   struct mtd_erase_region_info *eraseregions ;
   int (*_erase)(struct mtd_info *mtd , struct erase_info *instr ) ;
   int (*_point)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                 void **virt , resource_size_t *phys ) ;
   int (*_unpoint)(struct mtd_info *mtd , loff_t from , size_t len ) ;
   unsigned long (*_get_unmapped_area)(struct mtd_info *mtd , unsigned long len ,
                                       unsigned long offset , unsigned long flags ) ;
   int (*_read)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                u_char *buf ) ;
   int (*_write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                 u_char const *buf ) ;
   int (*_panic_write)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                       u_char const *buf ) ;
   int (*_read_oob)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
   int (*_write_oob)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
   int (*_get_fact_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*_read_fact_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                              u_char *buf ) ;
   int (*_get_user_prot_info)(struct mtd_info *mtd , struct otp_info *buf , size_t len ) ;
   int (*_read_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                              u_char *buf ) ;
   int (*_write_user_prot_reg)(struct mtd_info *mtd , loff_t to , size_t len , size_t *retlen ,
                               u_char *buf ) ;
   int (*_lock_user_prot_reg)(struct mtd_info *mtd , loff_t from , size_t len ) ;
   int (*_writev)(struct mtd_info *mtd , struct kvec const *vecs , unsigned long count ,
                  loff_t to , size_t *retlen ) ;
   void (*_sync)(struct mtd_info *mtd ) ;
   int (*_lock)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_unlock)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_is_locked)(struct mtd_info *mtd , loff_t ofs , uint64_t len ) ;
   int (*_block_isbad)(struct mtd_info *mtd , loff_t ofs ) ;
   int (*_block_markbad)(struct mtd_info *mtd , loff_t ofs ) ;
   int (*_suspend)(struct mtd_info *mtd ) ;
   void (*_resume)(struct mtd_info *mtd ) ;
   int (*_get_device)(struct mtd_info *mtd ) ;
   void (*_put_device)(struct mtd_info *mtd ) ;
   struct backing_dev_info *backing_dev_info ;
   struct notifier_block reboot_notifier ;
   struct mtd_ecc_stats ecc_stats ;
   int subpage_sft ;
   void *priv ;
   struct module *owner ;
   struct device dev ;
   int usecount ;
};
struct mtd_blktrans_ops;
struct mtd_blktrans_dev {
   struct mtd_blktrans_ops *tr ;
   struct list_head list ;
   struct mtd_info *mtd ;
   struct mutex lock ;
   int devnum ;
   bool bg_stop ;
   unsigned long size ;
   int readonly ;
   int open ;
   struct kref ref ;
   struct gendisk *disk ;
   struct attribute_group *disk_attributes ;
   struct task_struct *thread ;
   struct request_queue *rq ;
   spinlock_t queue_lock ;
   void *priv ;
   fmode_t file_mode ;
};
struct mtd_blktrans_ops {
   char *name ;
   int major ;
   int part_bits ;
   int blksize ;
   int blkshift ;
   int (*readsect)(struct mtd_blktrans_dev *dev , unsigned long block , char *buffer ) ;
   int (*writesect)(struct mtd_blktrans_dev *dev , unsigned long block , char *buffer ) ;
   int (*discard)(struct mtd_blktrans_dev *dev , unsigned long block , unsigned int nr_blocks ) ;
   void (*background)(struct mtd_blktrans_dev *dev ) ;
   int (*getgeo)(struct mtd_blktrans_dev *dev , struct hd_geometry *geo ) ;
   int (*flush)(struct mtd_blktrans_dev *dev ) ;
   int (*open)(struct mtd_blktrans_dev *dev ) ;
   int (*release)(struct mtd_blktrans_dev *dev ) ;
   void (*add_mtd)(struct mtd_blktrans_ops *tr , struct mtd_info *mtd ) ;
   void (*remove_dev)(struct mtd_blktrans_dev *dev ) ;
   struct list_head devs ;
   struct list_head list ;
   struct module *owner ;
};
struct nftl_bci {
   unsigned char ECCSig[6] ;
   __u8 Status ;
   __u8 Status1 ;
} __attribute__((__packed__)) ;
struct nftl_uci0 {
   __u16 VirtUnitNum ;
   __u16 ReplUnitNum ;
   __u16 SpareVirtUnitNum ;
   __u16 SpareReplUnitNum ;
} __attribute__((__packed__)) ;
struct nftl_uci1 {
   __u32 WearInfo ;
   __u16 EraseMark ;
   __u16 EraseMark1 ;
} __attribute__((__packed__)) ;
struct nftl_uci2 {
   __u16 FoldMark ;
   __u16 FoldMark1 ;
   __u32 unused ;
} __attribute__((__packed__)) ;
union nftl_uci {
   struct nftl_uci0 a ;
   struct nftl_uci1 b ;
   struct nftl_uci2 c ;
};
struct nftl_oob {
   struct nftl_bci b ;
   union nftl_uci u ;
};
struct NFTLMediaHeader {
   char DataOrgID[6] ;
   __u16 NumEraseUnits ;
   __u16 FirstPhysicalEUN ;
   __u32 FormattedSize ;
   unsigned char UnitSizeFactor ;
} __attribute__((__packed__)) ;
struct NFTLrecord {
   struct mtd_blktrans_dev mbd ;
   __u16 MediaUnit ;
   __u16 SpareMediaUnit ;
   __u32 EraseSize ;
   struct NFTLMediaHeader MediaHdr ;
   int usecount ;
   unsigned char heads ;
   unsigned char sectors ;
   unsigned short cylinders ;
   __u16 numvunits ;
   __u16 lastEUN ;
   __u16 numfreeEUNs ;
   __u16 LastFreeEUN ;
   int head ;
   int sect ;
   int cyl ;
   __u16 *EUNtable ;
   __u16 *ReplUnitTable ;
   unsigned int nb_blocks ;
   unsigned int nb_boot_blocks ;
   struct erase_info instr ;
   struct nand_ecclayout oobinfo ;
};
enum hrtimer_restart;
enum kobj_ns_type;
long ldv__builtin_expect(long val , long res ) ;
extern int ( printk)(char const *fmt , ...) ;
extern int ( __dynamic_pr_debug)(struct _ddebug *descriptor ,
                                                         char const *fmt , ...) ;
extern void *memset(void *s , int c , size_t n ) ;
extern int memcmp(void const *cs , void const *ct , unsigned long count ) ;
void mutex_lock(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_interruptible(struct mutex *lock ) ;
int __attribute__((__warn_unused_result__)) mutex_lock_killable(struct mutex *lock ) ;
int mutex_trylock(struct mutex *lock ) ;
void mutex_unlock(struct mutex *lock ) ;
int atomic_dec_and_mutex_lock(atomic_t *cnt , struct mutex *lock ) ;
extern struct module __this_module ;
int init_module(void) ;
void cleanup_module(void) ;
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
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags ) __attribute__((__no_instrument_function__)) ;
__inline static void *( __attribute__((__always_inline__)) kmalloc)(size_t size ,
                                                                    gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags ) __attribute__((__no_instrument_function__)) ;
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  unsigned int __cil_tmp4 ;
  {
  {
  __cil_tmp4 = flags | 32768U;
  tmp = kmalloc(size, __cil_tmp4);
  }
  return (tmp);
}
}
extern int mtd_read(struct mtd_info *mtd , loff_t from , size_t len , size_t *retlen ,
                    u_char *buf ) ;
__inline static int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) __attribute__((__no_instrument_function__)) ;
__inline static int mtd_read_oob(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops )
{ size_t tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int (*__cil_tmp12)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  int (*__cil_tmp15)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ) ;
  {
  tmp___7 = (size_t )0;
  __cil_tmp6 = (unsigned long )ops;
  __cil_tmp7 = __cil_tmp6 + 32;
  *((size_t *)__cil_tmp7) = tmp___7;
  __cil_tmp8 = (unsigned long )ops;
  __cil_tmp9 = __cil_tmp8 + 16;
  *((size_t *)__cil_tmp9) = tmp___7;
  {
  __cil_tmp10 = (unsigned long )mtd;
  __cil_tmp11 = __cil_tmp10 + 152;
  __cil_tmp12 = *((int (**)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ))__cil_tmp11);
  if (! __cil_tmp12) {
    return (-95);
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )mtd;
  __cil_tmp14 = __cil_tmp13 + 152;
  __cil_tmp15 = *((int (**)(struct mtd_info *mtd , loff_t from , struct mtd_oob_ops *ops ))__cil_tmp14);
  tmp___8 = (*__cil_tmp15)(mtd, from, ops);
  }
  return (tmp___8);
}
}
__inline static int mtd_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) __attribute__((__no_instrument_function__)) ;
__inline static int mtd_write_oob(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops )
{ size_t tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  int (*__cil_tmp12)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  uint32_t __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  int (*__cil_tmp19)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ) ;
  {
  tmp___7 = (size_t )0;
  __cil_tmp6 = (unsigned long )ops;
  __cil_tmp7 = __cil_tmp6 + 32;
  *((size_t *)__cil_tmp7) = tmp___7;
  __cil_tmp8 = (unsigned long )ops;
  __cil_tmp9 = __cil_tmp8 + 16;
  *((size_t *)__cil_tmp9) = tmp___7;
  {
  __cil_tmp10 = (unsigned long )mtd;
  __cil_tmp11 = __cil_tmp10 + 160;
  __cil_tmp12 = *((int (**)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ))__cil_tmp11);
  if (! __cil_tmp12) {
    return (-95);
  } else {
  }
  }
  {
  __cil_tmp13 = (unsigned long )mtd;
  __cil_tmp14 = __cil_tmp13 + 4;
  __cil_tmp15 = *((uint32_t *)__cil_tmp14);
  __cil_tmp16 = __cil_tmp15 & 1024U;
  if (! __cil_tmp16) {
    return (-30);
  } else {
  }
  }
  {
  __cil_tmp17 = (unsigned long )mtd;
  __cil_tmp18 = __cil_tmp17 + 160;
  __cil_tmp19 = *((int (**)(struct mtd_info *mtd , loff_t to , struct mtd_oob_ops *ops ))__cil_tmp18);
  tmp___8 = (*__cil_tmp19)(mtd, to, ops);
  }
  return (tmp___8);
}
}
__inline static int mtd_is_bitflip(int err ) __attribute__((__no_instrument_function__)) ;
__inline static int mtd_is_bitflip(int err )
{
  {
  return (err == -117);
}
}
extern int register_mtd_blktrans(struct mtd_blktrans_ops *tr ) ;
extern int deregister_mtd_blktrans(struct mtd_blktrans_ops *tr ) ;
extern int add_mtd_blktrans_dev(struct mtd_blktrans_dev *dev ) ;
extern int del_mtd_blktrans_dev(struct mtd_blktrans_dev *dev ) ;
int NFTL_mount(struct NFTLrecord *s ) ;
int NFTL_formatblock(struct NFTLrecord *nftl , int block ) ;
int nftl_read_oob(struct mtd_info *mtd , loff_t offs , size_t len , size_t *retlen ,
                  uint8_t *buf ) ;
int nftl_write_oob(struct mtd_info *mtd , loff_t offs , size_t len , size_t *retlen ,
                   uint8_t *buf ) ;
static void nftl_add_mtd(struct mtd_blktrans_ops *tr , struct mtd_info *mtd ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "nftl_add_mtd", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "NFTL: add_mtd for %s\n", 60U, 0U};
static void nftl_add_mtd(struct mtd_blktrans_ops *tr , struct mtd_info *mtd )
{ struct NFTLrecord *nftl ;
  unsigned long temp ;
  int tmp___7 ;
  long tmp___8 ;
  void *tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  u_char __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  uint64_t __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  char const *__cil_tmp17 ;
  void const *__cil_tmp18 ;
  void const *__cil_tmp19 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  int __cil_tmp23 ;
  int __cil_tmp24 ;
  long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  char const *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  void const *__cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned char __cil_tmp42 ;
  int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned short __cil_tmp46 ;
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
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  unsigned long __cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned char __cil_tmp64 ;
  int __cil_tmp65 ;
  int __cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned char __cil_tmp69 ;
  int __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned short __cil_tmp73 ;
  int __cil_tmp74 ;
  int __cil_tmp75 ;
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
  unsigned char __cil_tmp91 ;
  int __cil_tmp92 ;
  int __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned char __cil_tmp96 ;
  int __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned char __cil_tmp100 ;
  int __cil_tmp101 ;
  int __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned char __cil_tmp112 ;
  int __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned short __cil_tmp116 ;
  int __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned char __cil_tmp120 ;
  int __cil_tmp121 ;
  int __cil_tmp122 ;
  int __cil_tmp123 ;
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
  unsigned short __cil_tmp135 ;
  int __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned char __cil_tmp139 ;
  int __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned char __cil_tmp143 ;
  int __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  unsigned char __cil_tmp147 ;
  long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned char __cil_tmp151 ;
  long __cil_tmp152 ;
  unsigned long __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned short __cil_tmp155 ;
  long __cil_tmp156 ;
  long __cil_tmp157 ;
  long __cil_tmp158 ;
  struct mtd_blktrans_dev *__cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  unsigned long __cil_tmp161 ;
  __u16 *__cil_tmp162 ;
  void const *__cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned long __cil_tmp165 ;
  __u16 *__cil_tmp166 ;
  void const *__cil_tmp167 ;
  void const *__cil_tmp168 ;
  {
  {
  __cil_tmp10 = *((u_char *)mtd);
  __cil_tmp11 = (int )__cil_tmp10;
  if (__cil_tmp11 != 4) {
    return;
  } else {
    {
    __cil_tmp12 = (unsigned long )mtd;
    __cil_tmp13 = __cil_tmp12 + 8;
    __cil_tmp14 = *((uint64_t *)__cil_tmp13);
    if (__cil_tmp14 > 4294967295ULL) {
      return;
    } else {
    }
    }
  }
  }
  {
  __cil_tmp15 = (unsigned long )mtd;
  __cil_tmp16 = __cil_tmp15 + 56;
  __cil_tmp17 = *((char const **)__cil_tmp16);
  __cil_tmp18 = (void const *)__cil_tmp17;
  __cil_tmp19 = (void const *)"DiskOnChip";
  tmp___7 = memcmp(__cil_tmp18, __cil_tmp19, 10UL);
  }
  if (tmp___7) {
    return;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp20 = & descriptor;
    __cil_tmp21 = __cil_tmp20->flags;
    __cil_tmp22 = __cil_tmp21 & 1U;
    __cil_tmp23 = ! __cil_tmp22;
    __cil_tmp24 = ! __cil_tmp23;
    __cil_tmp25 = (long )__cil_tmp24;
    tmp___8 = ldv__builtin_expect(__cil_tmp25, 0L);
    }
    if (tmp___8) {
      {
      __cil_tmp26 = (unsigned long )mtd;
      __cil_tmp27 = __cil_tmp26 + 56;
      __cil_tmp28 = *((char const **)__cil_tmp27);
      __dynamic_pr_debug(& descriptor, "NFTL: add_mtd for %s\n", __cil_tmp28);
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  tmp___9 = kzalloc(2432UL, 208U);
  nftl = (struct NFTLrecord *)tmp___9;
  }
  if (! nftl) {
    return;
  } else {
  }
  {
  __cil_tmp29 = 0 + 24;
  __cil_tmp30 = (unsigned long )nftl;
  __cil_tmp31 = __cil_tmp30 + __cil_tmp29;
  *((struct mtd_info **)__cil_tmp31) = mtd;
  __cil_tmp32 = 0 + 104;
  __cil_tmp33 = (unsigned long )nftl;
  __cil_tmp34 = __cil_tmp33 + __cil_tmp32;
  *((int *)__cil_tmp34) = -1;
  *((struct mtd_blktrans_ops **)nftl) = tr;
  tmp___10 = NFTL_mount(nftl);
  }
  if (tmp___10 < 0) {
    {
    printk("<4>NFTL: could not mount device\n");
    __cil_tmp35 = (void const *)nftl;
    kfree(__cil_tmp35);
    }
    return;
  } else {
  }
  __cil_tmp36 = (unsigned long )nftl;
  __cil_tmp37 = __cil_tmp36 + 238;
  *((unsigned short *)__cil_tmp37) = (unsigned short)1024;
  __cil_tmp38 = (unsigned long )nftl;
  __cil_tmp39 = __cil_tmp38 + 236;
  *((unsigned char *)__cil_tmp39) = (unsigned char)16;
  __cil_tmp40 = (unsigned long )nftl;
  __cil_tmp41 = __cil_tmp40 + 236;
  __cil_tmp42 = *((unsigned char *)__cil_tmp41);
  __cil_tmp43 = (int )__cil_tmp42;
  __cil_tmp44 = (unsigned long )nftl;
  __cil_tmp45 = __cil_tmp44 + 238;
  __cil_tmp46 = *((unsigned short *)__cil_tmp45);
  __cil_tmp47 = (int )__cil_tmp46;
  __cil_tmp48 = __cil_tmp47 * __cil_tmp43;
  temp = (unsigned long )__cil_tmp48;
  __cil_tmp49 = (unsigned long )nftl;
  __cil_tmp50 = __cil_tmp49 + 237;
  __cil_tmp51 = 0 + 112;
  __cil_tmp52 = (unsigned long )nftl;
  __cil_tmp53 = __cil_tmp52 + __cil_tmp51;
  __cil_tmp54 = *((unsigned long *)__cil_tmp53);
  __cil_tmp55 = __cil_tmp54 / temp;
  *((unsigned char *)__cil_tmp50) = (unsigned char )__cil_tmp55;
  {
  __cil_tmp56 = 0 + 112;
  __cil_tmp57 = (unsigned long )nftl;
  __cil_tmp58 = __cil_tmp57 + __cil_tmp56;
  __cil_tmp59 = *((unsigned long *)__cil_tmp58);
  if (__cil_tmp59 % temp) {
    __cil_tmp60 = (unsigned long )nftl;
    __cil_tmp61 = __cil_tmp60 + 237;
    __cil_tmp62 = (unsigned long )nftl;
    __cil_tmp63 = __cil_tmp62 + 237;
    __cil_tmp64 = *((unsigned char *)__cil_tmp63);
    __cil_tmp65 = (int )__cil_tmp64;
    __cil_tmp66 = __cil_tmp65 + 1;
    *((unsigned char *)__cil_tmp61) = (unsigned char )__cil_tmp66;
    __cil_tmp67 = (unsigned long )nftl;
    __cil_tmp68 = __cil_tmp67 + 237;
    __cil_tmp69 = *((unsigned char *)__cil_tmp68);
    __cil_tmp70 = (int )__cil_tmp69;
    __cil_tmp71 = (unsigned long )nftl;
    __cil_tmp72 = __cil_tmp71 + 238;
    __cil_tmp73 = *((unsigned short *)__cil_tmp72);
    __cil_tmp74 = (int )__cil_tmp73;
    __cil_tmp75 = __cil_tmp74 * __cil_tmp70;
    temp = (unsigned long )__cil_tmp75;
    __cil_tmp76 = (unsigned long )nftl;
    __cil_tmp77 = __cil_tmp76 + 236;
    __cil_tmp78 = 0 + 112;
    __cil_tmp79 = (unsigned long )nftl;
    __cil_tmp80 = __cil_tmp79 + __cil_tmp78;
    __cil_tmp81 = *((unsigned long *)__cil_tmp80);
    __cil_tmp82 = __cil_tmp81 / temp;
    *((unsigned char *)__cil_tmp77) = (unsigned char )__cil_tmp82;
    {
    __cil_tmp83 = 0 + 112;
    __cil_tmp84 = (unsigned long )nftl;
    __cil_tmp85 = __cil_tmp84 + __cil_tmp83;
    __cil_tmp86 = *((unsigned long *)__cil_tmp85);
    if (__cil_tmp86 % temp) {
      __cil_tmp87 = (unsigned long )nftl;
      __cil_tmp88 = __cil_tmp87 + 236;
      __cil_tmp89 = (unsigned long )nftl;
      __cil_tmp90 = __cil_tmp89 + 236;
      __cil_tmp91 = *((unsigned char *)__cil_tmp90);
      __cil_tmp92 = (int )__cil_tmp91;
      __cil_tmp93 = __cil_tmp92 + 1;
      *((unsigned char *)__cil_tmp88) = (unsigned char )__cil_tmp93;
      __cil_tmp94 = (unsigned long )nftl;
      __cil_tmp95 = __cil_tmp94 + 237;
      __cil_tmp96 = *((unsigned char *)__cil_tmp95);
      __cil_tmp97 = (int )__cil_tmp96;
      __cil_tmp98 = (unsigned long )nftl;
      __cil_tmp99 = __cil_tmp98 + 236;
      __cil_tmp100 = *((unsigned char *)__cil_tmp99);
      __cil_tmp101 = (int )__cil_tmp100;
      __cil_tmp102 = __cil_tmp101 * __cil_tmp97;
      temp = (unsigned long )__cil_tmp102;
      __cil_tmp103 = (unsigned long )nftl;
      __cil_tmp104 = __cil_tmp103 + 238;
      __cil_tmp105 = 0 + 112;
      __cil_tmp106 = (unsigned long )nftl;
      __cil_tmp107 = __cil_tmp106 + __cil_tmp105;
      __cil_tmp108 = *((unsigned long *)__cil_tmp107);
      __cil_tmp109 = __cil_tmp108 / temp;
      *((unsigned short *)__cil_tmp104) = (unsigned short )__cil_tmp109;
    } else {
    }
    }
  } else {
  }
  }
  {
  __cil_tmp110 = (unsigned long )nftl;
  __cil_tmp111 = __cil_tmp110 + 237;
  __cil_tmp112 = *((unsigned char *)__cil_tmp111);
  __cil_tmp113 = (int )__cil_tmp112;
  __cil_tmp114 = (unsigned long )nftl;
  __cil_tmp115 = __cil_tmp114 + 238;
  __cil_tmp116 = *((unsigned short *)__cil_tmp115);
  __cil_tmp117 = (int )__cil_tmp116;
  __cil_tmp118 = (unsigned long )nftl;
  __cil_tmp119 = __cil_tmp118 + 236;
  __cil_tmp120 = *((unsigned char *)__cil_tmp119);
  __cil_tmp121 = (int )__cil_tmp120;
  __cil_tmp122 = __cil_tmp121 * __cil_tmp117;
  __cil_tmp123 = __cil_tmp122 * __cil_tmp113;
  __cil_tmp124 = (unsigned long )__cil_tmp123;
  __cil_tmp125 = 0 + 112;
  __cil_tmp126 = (unsigned long )nftl;
  __cil_tmp127 = __cil_tmp126 + __cil_tmp125;
  __cil_tmp128 = *((unsigned long *)__cil_tmp127);
  if (__cil_tmp128 != __cil_tmp124) {
    {
    __cil_tmp129 = 0 + 112;
    __cil_tmp130 = (unsigned long )nftl;
    __cil_tmp131 = __cil_tmp130 + __cil_tmp129;
    __cil_tmp132 = *((unsigned long *)__cil_tmp131);
    printk("<4>NFTL: cannot calculate a geometry to match size of 0x%lx.\n", __cil_tmp132);
    __cil_tmp133 = (unsigned long )nftl;
    __cil_tmp134 = __cil_tmp133 + 238;
    __cil_tmp135 = *((unsigned short *)__cil_tmp134);
    __cil_tmp136 = (int )__cil_tmp135;
    __cil_tmp137 = (unsigned long )nftl;
    __cil_tmp138 = __cil_tmp137 + 236;
    __cil_tmp139 = *((unsigned char *)__cil_tmp138);
    __cil_tmp140 = (int )__cil_tmp139;
    __cil_tmp141 = (unsigned long )nftl;
    __cil_tmp142 = __cil_tmp141 + 237;
    __cil_tmp143 = *((unsigned char *)__cil_tmp142);
    __cil_tmp144 = (int )__cil_tmp143;
    __cil_tmp145 = (unsigned long )nftl;
    __cil_tmp146 = __cil_tmp145 + 237;
    __cil_tmp147 = *((unsigned char *)__cil_tmp146);
    __cil_tmp148 = (long )__cil_tmp147;
    __cil_tmp149 = (unsigned long )nftl;
    __cil_tmp150 = __cil_tmp149 + 236;
    __cil_tmp151 = *((unsigned char *)__cil_tmp150);
    __cil_tmp152 = (long )__cil_tmp151;
    __cil_tmp153 = (unsigned long )nftl;
    __cil_tmp154 = __cil_tmp153 + 238;
    __cil_tmp155 = *((unsigned short *)__cil_tmp154);
    __cil_tmp156 = (long )__cil_tmp155;
    __cil_tmp157 = __cil_tmp156 * __cil_tmp152;
    __cil_tmp158 = __cil_tmp157 * __cil_tmp148;
    printk("<4>NFTL: using C:%d H:%d S:%d (== 0x%lx sects)\n", __cil_tmp136, __cil_tmp140,
           __cil_tmp144, __cil_tmp158);
    }
  } else {
  }
  }
  {
  __cil_tmp159 = (struct mtd_blktrans_dev *)nftl;
  tmp___11 = add_mtd_blktrans_dev(__cil_tmp159);
  }
  if (tmp___11) {
    {
    __cil_tmp160 = (unsigned long )nftl;
    __cil_tmp161 = __cil_tmp160 + 272;
    __cil_tmp162 = *((__u16 **)__cil_tmp161);
    __cil_tmp163 = (void const *)__cil_tmp162;
    kfree(__cil_tmp163);
    __cil_tmp164 = (unsigned long )nftl;
    __cil_tmp165 = __cil_tmp164 + 264;
    __cil_tmp166 = *((__u16 **)__cil_tmp165);
    __cil_tmp167 = (void const *)__cil_tmp166;
    kfree(__cil_tmp167);
    __cil_tmp168 = (void const *)nftl;
    kfree(__cil_tmp168);
    }
    return;
  } else {
  }
  return;
}
}
static void nftl_remove_dev(struct mtd_blktrans_dev *dev ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___0 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "nftl_remove_dev", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "NFTL: remove_dev (i=%d)\n", 127U, 0U};
static void nftl_remove_dev(struct mtd_blktrans_dev *dev )
{ struct NFTLrecord *nftl ;
  long tmp___7 ;
  void *__cil_tmp4 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp5 ;
  unsigned int __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  int __cil_tmp8 ;
  int __cil_tmp9 ;
  long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  int __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  __u16 *__cil_tmp16 ;
  void const *__cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  __u16 *__cil_tmp20 ;
  void const *__cil_tmp21 ;
  {
  __cil_tmp4 = (void *)dev;
  nftl = (struct NFTLrecord *)__cil_tmp4;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp5 = & descriptor___0;
    __cil_tmp6 = __cil_tmp5->flags;
    __cil_tmp7 = __cil_tmp6 & 1U;
    __cil_tmp8 = ! __cil_tmp7;
    __cil_tmp9 = ! __cil_tmp8;
    __cil_tmp10 = (long )__cil_tmp9;
    tmp___7 = ldv__builtin_expect(__cil_tmp10, 0L);
    }
    if (tmp___7) {
      {
      __cil_tmp11 = (unsigned long )dev;
      __cil_tmp12 = __cil_tmp11 + 104;
      __cil_tmp13 = *((int *)__cil_tmp12);
      __dynamic_pr_debug(& descriptor___0, "NFTL: remove_dev (i=%d)\n", __cil_tmp13);
      }
    } else {
    }
    goto while_break;
  }
  while_break: ;
  }
  {
  del_mtd_blktrans_dev(dev);
  __cil_tmp14 = (unsigned long )nftl;
  __cil_tmp15 = __cil_tmp14 + 272;
  __cil_tmp16 = *((__u16 **)__cil_tmp15);
  __cil_tmp17 = (void const *)__cil_tmp16;
  kfree(__cil_tmp17);
  __cil_tmp18 = (unsigned long )nftl;
  __cil_tmp19 = __cil_tmp18 + 264;
  __cil_tmp20 = *((__u16 **)__cil_tmp19);
  __cil_tmp21 = (void const *)__cil_tmp20;
  kfree(__cil_tmp21);
  }
  return;
}
}
int nftl_read_oob(struct mtd_info *mtd , loff_t offs , size_t len , size_t *retlen ,
                  uint8_t *buf )
{ loff_t mask ;
  struct mtd_oob_ops ops ;
  int res ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  uint32_t __cil_tmp11 ;
  uint32_t __cil_tmp12 ;
  struct mtd_oob_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  long long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  loff_t __cil_tmp20 ;
  long long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  {
  {
  __cil_tmp9 = (unsigned long )mtd;
  __cil_tmp10 = __cil_tmp9 + 20;
  __cil_tmp11 = *((uint32_t *)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 - 1U;
  mask = (loff_t )__cil_tmp12;
  __cil_tmp13 = & ops;
  *((unsigned int *)__cil_tmp13) = 0U;
  __cil_tmp14 = (unsigned long )(& ops) + 40;
  __cil_tmp15 = offs & mask;
  *((uint32_t *)__cil_tmp14) = (uint32_t )__cil_tmp15;
  __cil_tmp16 = (unsigned long )(& ops) + 24;
  *((size_t *)__cil_tmp16) = len;
  __cil_tmp17 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp17) = buf;
  __cil_tmp18 = (unsigned long )(& ops) + 48;
  __cil_tmp19 = (void *)0;
  *((uint8_t **)__cil_tmp18) = (uint8_t *)__cil_tmp19;
  __cil_tmp20 = ~ mask;
  __cil_tmp21 = offs & __cil_tmp20;
  res = mtd_read_oob(mtd, __cil_tmp21, & ops);
  __cil_tmp22 = (unsigned long )(& ops) + 32;
  *retlen = *((size_t *)__cil_tmp22);
  }
  return (res);
}
}
int nftl_write_oob(struct mtd_info *mtd , loff_t offs , size_t len , size_t *retlen ,
                   uint8_t *buf )
{ loff_t mask ;
  struct mtd_oob_ops ops ;
  int res ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  uint32_t __cil_tmp11 ;
  uint32_t __cil_tmp12 ;
  struct mtd_oob_ops *__cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  long long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  void *__cil_tmp19 ;
  loff_t __cil_tmp20 ;
  long long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  {
  {
  __cil_tmp9 = (unsigned long )mtd;
  __cil_tmp10 = __cil_tmp9 + 20;
  __cil_tmp11 = *((uint32_t *)__cil_tmp10);
  __cil_tmp12 = __cil_tmp11 - 1U;
  mask = (loff_t )__cil_tmp12;
  __cil_tmp13 = & ops;
  *((unsigned int *)__cil_tmp13) = 0U;
  __cil_tmp14 = (unsigned long )(& ops) + 40;
  __cil_tmp15 = offs & mask;
  *((uint32_t *)__cil_tmp14) = (uint32_t )__cil_tmp15;
  __cil_tmp16 = (unsigned long )(& ops) + 24;
  *((size_t *)__cil_tmp16) = len;
  __cil_tmp17 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp17) = buf;
  __cil_tmp18 = (unsigned long )(& ops) + 48;
  __cil_tmp19 = (void *)0;
  *((uint8_t **)__cil_tmp18) = (uint8_t *)__cil_tmp19;
  __cil_tmp20 = ~ mask;
  __cil_tmp21 = offs & __cil_tmp20;
  res = mtd_write_oob(mtd, __cil_tmp21, & ops);
  __cil_tmp22 = (unsigned long )(& ops) + 32;
  *retlen = *((size_t *)__cil_tmp22);
  }
  return (res);
}
}
static int nftl_write(struct mtd_info *mtd , loff_t offs , size_t len , size_t *retlen ,
                      uint8_t *buf , uint8_t *oob )
{ loff_t mask ;
  struct mtd_oob_ops ops ;
  int res ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  uint32_t __cil_tmp12 ;
  uint32_t __cil_tmp13 ;
  struct mtd_oob_ops *__cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  long long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  uint32_t __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  loff_t __cil_tmp24 ;
  long long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  {
  {
  __cil_tmp10 = (unsigned long )mtd;
  __cil_tmp11 = __cil_tmp10 + 20;
  __cil_tmp12 = *((uint32_t *)__cil_tmp11);
  __cil_tmp13 = __cil_tmp12 - 1U;
  mask = (loff_t )__cil_tmp13;
  __cil_tmp14 = & ops;
  *((unsigned int *)__cil_tmp14) = 0U;
  __cil_tmp15 = (unsigned long )(& ops) + 40;
  __cil_tmp16 = offs & mask;
  *((uint32_t *)__cil_tmp15) = (uint32_t )__cil_tmp16;
  __cil_tmp17 = (unsigned long )(& ops) + 24;
  __cil_tmp18 = (unsigned long )mtd;
  __cil_tmp19 = __cil_tmp18 + 28;
  __cil_tmp20 = *((uint32_t *)__cil_tmp19);
  *((size_t *)__cil_tmp17) = (size_t )__cil_tmp20;
  __cil_tmp21 = (unsigned long )(& ops) + 56;
  *((uint8_t **)__cil_tmp21) = oob;
  __cil_tmp22 = (unsigned long )(& ops) + 48;
  *((uint8_t **)__cil_tmp22) = buf;
  __cil_tmp23 = (unsigned long )(& ops) + 8;
  *((size_t *)__cil_tmp23) = len;
  __cil_tmp24 = ~ mask;
  __cil_tmp25 = offs & __cil_tmp24;
  res = mtd_write_oob(mtd, __cil_tmp25, & ops);
  __cil_tmp26 = (unsigned long )(& ops) + 16;
  *retlen = *((size_t *)__cil_tmp26);
  }
  return (res);
}
}
static u16 NFTL_findfreeblock(struct NFTLrecord *nftl , int desperate ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___1 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_findfreeblock", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "NFTL_findfreeblock: there are too few free EUNs\n", 215U, 0U};
static u16 NFTL_findfreeblock(struct NFTLrecord *nftl , int desperate )
{ u16 pot ;
  int silly ;
  long tmp___7 ;
  int tmp___8 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u16 __cil_tmp14 ;
  int __cil_tmp15 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp16 ;
  unsigned int __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  int __cil_tmp19 ;
  int __cil_tmp20 ;
  long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  __u16 *__cil_tmp24 ;
  __u16 *__cil_tmp25 ;
  __u16 __cil_tmp26 ;
  int __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  __u16 __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  __u16 __cil_tmp41 ;
  int __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  __u16 __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  __u16 __cil_tmp53 ;
  int __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  __u16 __cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  {
  __cil_tmp7 = (unsigned long )nftl;
  __cil_tmp8 = __cil_tmp7 + 246;
  pot = *((__u16 *)__cil_tmp8);
  __cil_tmp9 = (unsigned long )nftl;
  __cil_tmp10 = __cil_tmp9 + 280;
  __cil_tmp11 = *((unsigned int *)__cil_tmp10);
  silly = (int )__cil_tmp11;
  if (! desperate) {
    {
    __cil_tmp12 = (unsigned long )nftl;
    __cil_tmp13 = __cil_tmp12 + 244;
    __cil_tmp14 = *((__u16 *)__cil_tmp13);
    __cil_tmp15 = (int )__cil_tmp14;
    if (__cil_tmp15 < 2) {
      {
      while (1) {
        while_continue: ;
        {
        __cil_tmp16 = & descriptor___1;
        __cil_tmp17 = __cil_tmp16->flags;
        __cil_tmp18 = __cil_tmp17 & 1U;
        __cil_tmp19 = ! __cil_tmp18;
        __cil_tmp20 = ! __cil_tmp19;
        __cil_tmp21 = (long )__cil_tmp20;
        tmp___7 = ldv__builtin_expect(__cil_tmp21, 0L);
        }
        if (tmp___7) {
          {
          __dynamic_pr_debug(& descriptor___1, "NFTL_findfreeblock: there are too few free EUNs\n");
          }
        } else {
        }
        goto while_break;
      }
      while_break: ;
      }
      return ((u16 )65535);
    } else {
    }
    }
  } else {
  }
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp22 = (unsigned long )nftl;
    __cil_tmp23 = __cil_tmp22 + 272;
    __cil_tmp24 = *((__u16 **)__cil_tmp23);
    __cil_tmp25 = __cil_tmp24 + pot;
    __cil_tmp26 = *__cil_tmp25;
    __cil_tmp27 = (int )__cil_tmp26;
    if (__cil_tmp27 == 65534) {
      __cil_tmp28 = (unsigned long )nftl;
      __cil_tmp29 = __cil_tmp28 + 246;
      *((__u16 *)__cil_tmp29) = pot;
      __cil_tmp30 = (unsigned long )nftl;
      __cil_tmp31 = __cil_tmp30 + 244;
      __cil_tmp32 = (unsigned long )nftl;
      __cil_tmp33 = __cil_tmp32 + 244;
      __cil_tmp34 = *((__u16 *)__cil_tmp33);
      __cil_tmp35 = (int )__cil_tmp34;
      __cil_tmp36 = __cil_tmp35 - 1;
      *((__u16 *)__cil_tmp31) = (__u16 )__cil_tmp36;
      return (pot);
    } else {
    }
    }
    __cil_tmp37 = (int )pot;
    __cil_tmp38 = __cil_tmp37 + 1;
    pot = (u16 )__cil_tmp38;
    {
    __cil_tmp39 = (unsigned long )nftl;
    __cil_tmp40 = __cil_tmp39 + 242;
    __cil_tmp41 = *((__u16 *)__cil_tmp40);
    __cil_tmp42 = (int )__cil_tmp41;
    if (pot > __cil_tmp42) {
      __cil_tmp43 = 216 + 8;
      __cil_tmp44 = (unsigned long )nftl;
      __cil_tmp45 = __cil_tmp44 + __cil_tmp43;
      pot = *((__u16 *)__cil_tmp45);
    } else {
    }
    }
    tmp___8 = silly;
    silly = silly - 1;
    if (tmp___8) {
    } else {
      {
      __cil_tmp46 = (unsigned long )nftl;
      __cil_tmp47 = __cil_tmp46 + 246;
      __cil_tmp48 = *((__u16 *)__cil_tmp47);
      __cil_tmp49 = (int )__cil_tmp48;
      __cil_tmp50 = 216 + 8;
      __cil_tmp51 = (unsigned long )nftl;
      __cil_tmp52 = __cil_tmp51 + __cil_tmp50;
      __cil_tmp53 = *((__u16 *)__cil_tmp52);
      __cil_tmp54 = (int )__cil_tmp53;
      printk("Argh! No free blocks found! LastFreeEUN = %d, FirstEUN = %d\n", __cil_tmp49,
             __cil_tmp54);
      }
      return ((u16 )65535);
    }
    {
    __cil_tmp55 = (unsigned long )nftl;
    __cil_tmp56 = __cil_tmp55 + 246;
    __cil_tmp57 = *((__u16 *)__cil_tmp56);
    __cil_tmp58 = (int )__cil_tmp57;
    __cil_tmp59 = (int )pot;
    if (__cil_tmp59 != __cil_tmp58) {
    } else {
      goto while_break___0;
    }
    }
  }
  while_break___0: ;
  }
  return ((u16 )65535);
}
}
static u16 NFTL_foldchain(struct NFTLrecord *nftl , unsigned int thisVUC , unsigned int pendingblock ) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___2 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Write Inhibited on EUN %d\n", 286U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___3 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Setting inplace to 0. VUC %d, block %d was %x lastEUN, and is in EUN %d (%s) %d\n",
    357U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___4 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Pending write not free in EUN %d. Folding out of place.\n", 368U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___5 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Cannot fold Virtual Unit Chain %d in place. Trying out-of-place\n", 375U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___6 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Folding chain %d into unit %d\n", 404U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___7 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_foldchain", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Want to erase\n", 456U, 0U};
static u16 NFTL_foldchain(struct NFTLrecord *nftl , unsigned int thisVUC , unsigned int pendingblock )
{ struct mtd_info *mtd ;
  u16 BlockMap[64] ;
  unsigned char BlockLastState[64] ;
  unsigned char BlockFreeFound[64] ;
  unsigned int thisEUN ;
  int block ;
  int silly ;
  unsigned int targetEUN ;
  struct nftl_oob oob ;
  int inplace ;
  size_t retlen ;
  unsigned int status ;
  unsigned int foldmark ;
  long tmp___7 ;
  int tmp___8 ;
  char const *tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  long tmp___12 ;
  u16 tmp___13 ;
  long tmp___14 ;
  unsigned char movebuf[512] ;
  int ret ;
  int tmp___15 ;
  long tmp___16 ;
  unsigned int EUNtmp ;
  int tmp___17 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  u16 *__cil_tmp36 ;
  void *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned char *__cil_tmp40 ;
  void *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  __u16 *__cil_tmp44 ;
  __u16 *__cil_tmp45 ;
  __u16 __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  __u16 __cil_tmp49 ;
  unsigned int __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  __u32 __cil_tmp53 ;
  __u32 __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  int __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  __u32 __cil_tmp60 ;
  unsigned int __cil_tmp61 ;
  unsigned int __cil_tmp62 ;
  loff_t __cil_tmp63 ;
  size_t __cil_tmp64 ;
  char *__cil_tmp65 ;
  uint8_t *__cil_tmp66 ;
  unsigned long __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  __u16 __cil_tmp70 ;
  int __cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  __u16 __cil_tmp73 ;
  int __cil_tmp74 ;
  int __cil_tmp75 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp76 ;
  unsigned int __cil_tmp77 ;
  unsigned int __cil_tmp78 ;
  int __cil_tmp79 ;
  int __cil_tmp80 ;
  long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  __u8 __cil_tmp84 ;
  int __cil_tmp85 ;
  unsigned long __cil_tmp86 ;
  unsigned long __cil_tmp87 ;
  __u8 __cil_tmp88 ;
  int __cil_tmp89 ;
  int __cil_tmp90 ;
  unsigned long __cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  unsigned long __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned char __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  unsigned long __cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  unsigned char __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned long __cil_tmp106 ;
  __u16 *__cil_tmp107 ;
  __u16 *__cil_tmp108 ;
  __u16 __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  __u32 __cil_tmp112 ;
  __u32 __cil_tmp113 ;
  __u32 __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned char __cil_tmp117 ;
  int __cil_tmp118 ;
  unsigned long __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  u16 __cil_tmp121 ;
  int __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  unsigned long __cil_tmp124 ;
  u16 __cil_tmp125 ;
  unsigned int __cil_tmp126 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp127 ;
  unsigned int __cil_tmp128 ;
  unsigned int __cil_tmp129 ;
  int __cil_tmp130 ;
  int __cil_tmp131 ;
  long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  unsigned long __cil_tmp134 ;
  u16 __cil_tmp135 ;
  unsigned int __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned char __cil_tmp139 ;
  int __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  u16 __cil_tmp143 ;
  int __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned long __cil_tmp146 ;
  __u32 __cil_tmp147 ;
  __u32 __cil_tmp148 ;
  unsigned int __cil_tmp149 ;
  unsigned long __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  __u32 __cil_tmp152 ;
  __u32 __cil_tmp153 ;
  unsigned int __cil_tmp154 ;
  unsigned int __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  __u32 __cil_tmp158 ;
  __u32 __cil_tmp159 ;
  unsigned int __cil_tmp160 ;
  unsigned int __cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned char __cil_tmp164 ;
  int __cil_tmp165 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp166 ;
  unsigned int __cil_tmp167 ;
  unsigned int __cil_tmp168 ;
  int __cil_tmp169 ;
  int __cil_tmp170 ;
  long __cil_tmp171 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp172 ;
  unsigned int __cil_tmp173 ;
  unsigned int __cil_tmp174 ;
  int __cil_tmp175 ;
  int __cil_tmp176 ;
  long __cil_tmp177 ;
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
  __u32 __cil_tmp190 ;
  __u32 __cil_tmp191 ;
  __u32 __cil_tmp192 ;
  __u32 __cil_tmp193 ;
  loff_t __cil_tmp194 ;
  size_t __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  union nftl_uci *__cil_tmp197 ;
  char *__cil_tmp198 ;
  uint8_t *__cil_tmp199 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp200 ;
  unsigned int __cil_tmp201 ;
  unsigned int __cil_tmp202 ;
  int __cil_tmp203 ;
  int __cil_tmp204 ;
  long __cil_tmp205 ;
  unsigned long __cil_tmp206 ;
  unsigned long __cil_tmp207 ;
  __u32 __cil_tmp208 ;
  __u32 __cil_tmp209 ;
  __u32 __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned long __cil_tmp212 ;
  u16 __cil_tmp213 ;
  unsigned int __cil_tmp214 ;
  unsigned int __cil_tmp215 ;
  unsigned long __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  __u32 __cil_tmp218 ;
  __u32 __cil_tmp219 ;
  unsigned int __cil_tmp220 ;
  unsigned int __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  u16 __cil_tmp224 ;
  int __cil_tmp225 ;
  int __cil_tmp226 ;
  __u32 __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  u16 __cil_tmp230 ;
  __u32 __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  unsigned long __cil_tmp233 ;
  __u32 __cil_tmp234 ;
  __u32 __cil_tmp235 ;
  __u32 __cil_tmp236 ;
  loff_t __cil_tmp237 ;
  size_t __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned long __cil_tmp240 ;
  unsigned char *__cil_tmp241 ;
  int __cil_tmp242 ;
  __u32 __cil_tmp243 ;
  unsigned long __cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  u16 __cil_tmp246 ;
  __u32 __cil_tmp247 ;
  unsigned long __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  __u32 __cil_tmp250 ;
  __u32 __cil_tmp251 ;
  __u32 __cil_tmp252 ;
  loff_t __cil_tmp253 ;
  size_t __cil_tmp254 ;
  unsigned long __cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  unsigned char *__cil_tmp257 ;
  void *__cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  unsigned long __cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  unsigned long __cil_tmp265 ;
  unsigned long __cil_tmp266 ;
  unsigned long __cil_tmp267 ;
  struct mtd_info *__cil_tmp268 ;
  int __cil_tmp269 ;
  __u32 __cil_tmp270 ;
  unsigned long __cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  __u32 __cil_tmp273 ;
  __u32 __cil_tmp274 ;
  __u32 __cil_tmp275 ;
  loff_t __cil_tmp276 ;
  size_t __cil_tmp277 ;
  unsigned long __cil_tmp278 ;
  unsigned long __cil_tmp279 ;
  unsigned char *__cil_tmp280 ;
  char *__cil_tmp281 ;
  uint8_t *__cil_tmp282 ;
  unsigned long __cil_tmp283 ;
  unsigned long __cil_tmp284 ;
  unsigned long __cil_tmp285 ;
  unsigned long __cil_tmp286 ;
  unsigned long __cil_tmp287 ;
  unsigned long __cil_tmp288 ;
  unsigned long __cil_tmp289 ;
  unsigned long __cil_tmp290 ;
  unsigned long __cil_tmp291 ;
  unsigned long __cil_tmp292 ;
  unsigned long __cil_tmp293 ;
  unsigned long __cil_tmp294 ;
  unsigned long __cil_tmp295 ;
  unsigned long __cil_tmp296 ;
  unsigned long __cil_tmp297 ;
  unsigned long __cil_tmp298 ;
  unsigned long __cil_tmp299 ;
  unsigned long __cil_tmp300 ;
  __u32 __cil_tmp301 ;
  __u32 __cil_tmp302 ;
  __u32 __cil_tmp303 ;
  loff_t __cil_tmp304 ;
  size_t __cil_tmp305 ;
  unsigned long __cil_tmp306 ;
  union nftl_uci *__cil_tmp307 ;
  char *__cil_tmp308 ;
  uint8_t *__cil_tmp309 ;
  unsigned long __cil_tmp310 ;
  unsigned long __cil_tmp311 ;
  __u16 *__cil_tmp312 ;
  __u16 *__cil_tmp313 ;
  __u16 __cil_tmp314 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp315 ;
  unsigned int __cil_tmp316 ;
  unsigned int __cil_tmp317 ;
  int __cil_tmp318 ;
  int __cil_tmp319 ;
  long __cil_tmp320 ;
  unsigned long __cil_tmp321 ;
  unsigned long __cil_tmp322 ;
  __u16 __cil_tmp323 ;
  unsigned int __cil_tmp324 ;
  unsigned long __cil_tmp325 ;
  unsigned long __cil_tmp326 ;
  __u16 *__cil_tmp327 ;
  __u16 *__cil_tmp328 ;
  __u16 __cil_tmp329 ;
  int __cil_tmp330 ;
  unsigned long __cil_tmp331 ;
  unsigned long __cil_tmp332 ;
  __u16 *__cil_tmp333 ;
  __u16 *__cil_tmp334 ;
  unsigned long __cil_tmp335 ;
  unsigned long __cil_tmp336 ;
  __u16 *__cil_tmp337 ;
  __u16 *__cil_tmp338 ;
  unsigned long __cil_tmp339 ;
  unsigned long __cil_tmp340 ;
  unsigned long __cil_tmp341 ;
  unsigned long __cil_tmp342 ;
  __u16 __cil_tmp343 ;
  int __cil_tmp344 ;
  int __cil_tmp345 ;
  unsigned long __cil_tmp346 ;
  unsigned long __cil_tmp347 ;
  __u16 *__cil_tmp348 ;
  __u16 *__cil_tmp349 ;
  unsigned long __cil_tmp350 ;
  unsigned long __cil_tmp351 ;
  __u16 *__cil_tmp352 ;
  __u16 *__cil_tmp353 ;
  {
  {
  __cil_tmp31 = 0 + 24;
  __cil_tmp32 = (unsigned long )nftl;
  __cil_tmp33 = __cil_tmp32 + __cil_tmp31;
  mtd = *((struct mtd_info **)__cil_tmp33);
  inplace = 1;
  __cil_tmp34 = 0 * 2UL;
  __cil_tmp35 = (unsigned long )(BlockMap) + __cil_tmp34;
  __cil_tmp36 = (u16 *)__cil_tmp35;
  __cil_tmp37 = (void *)__cil_tmp36;
  memset(__cil_tmp37, 255, 128UL);
  __cil_tmp38 = 0 * 1UL;
  __cil_tmp39 = (unsigned long )(BlockFreeFound) + __cil_tmp38;
  __cil_tmp40 = (unsigned char *)__cil_tmp39;
  __cil_tmp41 = (void *)__cil_tmp40;
  memset(__cil_tmp41, 0, 64UL);
  __cil_tmp42 = (unsigned long )nftl;
  __cil_tmp43 = __cil_tmp42 + 264;
  __cil_tmp44 = *((__u16 **)__cil_tmp43);
  __cil_tmp45 = __cil_tmp44 + thisVUC;
  __cil_tmp46 = *__cil_tmp45;
  thisEUN = (unsigned int )__cil_tmp46;
  }
  if (thisEUN == 65535U) {
    {
    printk("<4>Trying to fold non-existent Virtual Unit Chain %d!\n", thisVUC);
    }
    return ((u16 )65535);
  } else {
  }
  silly = 10000;
  targetEUN = 65535U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp47 = (unsigned long )nftl;
    __cil_tmp48 = __cil_tmp47 + 242;
    __cil_tmp49 = *((__u16 *)__cil_tmp48);
    __cil_tmp50 = (unsigned int )__cil_tmp49;
    if (thisEUN <= __cil_tmp50) {
    } else {
      goto while_break;
    }
    }
    targetEUN = thisEUN;
    block = 0;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp51 = (unsigned long )nftl;
      __cil_tmp52 = __cil_tmp51 + 212;
      __cil_tmp53 = *((__u32 *)__cil_tmp52);
      __cil_tmp54 = __cil_tmp53 / 512U;
      __cil_tmp55 = (__u32 )block;
      if (__cil_tmp55 < __cil_tmp54) {
      } else {
        goto while_break___0;
      }
      }
      {
      __cil_tmp56 = block * 512;
      __cil_tmp57 = (unsigned int )__cil_tmp56;
      __cil_tmp58 = (unsigned long )nftl;
      __cil_tmp59 = __cil_tmp58 + 212;
      __cil_tmp60 = *((__u32 *)__cil_tmp59);
      __cil_tmp61 = thisEUN * __cil_tmp60;
      __cil_tmp62 = __cil_tmp61 + __cil_tmp57;
      __cil_tmp63 = (loff_t )__cil_tmp62;
      __cil_tmp64 = (size_t )16;
      __cil_tmp65 = (char *)(& oob);
      __cil_tmp66 = (uint8_t *)__cil_tmp65;
      nftl_read_oob(mtd, __cil_tmp63, __cil_tmp64, & retlen, __cil_tmp66);
      }
      if (block == 2) {
        __cil_tmp67 = 0 + 2;
        __cil_tmp68 = 8 + __cil_tmp67;
        __cil_tmp69 = (unsigned long )(& oob) + __cil_tmp68;
        __cil_tmp70 = *((__u16 *)__cil_tmp69);
        __cil_tmp71 = (int )__cil_tmp70;
        __cil_tmp72 = (unsigned long )(& oob) + 8;
        __cil_tmp73 = *((__u16 *)__cil_tmp72);
        __cil_tmp74 = (int )__cil_tmp73;
        __cil_tmp75 = __cil_tmp74 | __cil_tmp71;
        foldmark = (unsigned int )__cil_tmp75;
        if (foldmark == 21845U) {
          {
          while (1) {
            while_continue___1: ;
            {
            __cil_tmp76 = & descriptor___2;
            __cil_tmp77 = __cil_tmp76->flags;
            __cil_tmp78 = __cil_tmp77 & 1U;
            __cil_tmp79 = ! __cil_tmp78;
            __cil_tmp80 = ! __cil_tmp79;
            __cil_tmp81 = (long )__cil_tmp80;
            tmp___7 = ldv__builtin_expect(__cil_tmp81, 0L);
            }
            if (tmp___7) {
              {
              __dynamic_pr_debug(& descriptor___2, "Write Inhibited on EUN %d\n",
                                 thisEUN);
              }
            } else {
            }
            goto while_break___1;
          }
          while_break___1: ;
          }
          inplace = 0;
        } else {
          inplace = 1;
        }
      } else {
      }
      __cil_tmp82 = 0 + 7;
      __cil_tmp83 = (unsigned long )(& oob) + __cil_tmp82;
      __cil_tmp84 = *((__u8 *)__cil_tmp83);
      __cil_tmp85 = (int )__cil_tmp84;
      __cil_tmp86 = 0 + 6;
      __cil_tmp87 = (unsigned long )(& oob) + __cil_tmp86;
      __cil_tmp88 = *((__u8 *)__cil_tmp87);
      __cil_tmp89 = (int )__cil_tmp88;
      __cil_tmp90 = __cil_tmp89 | __cil_tmp85;
      status = (unsigned int )__cil_tmp90;
      __cil_tmp91 = block * 1UL;
      __cil_tmp92 = (unsigned long )(BlockLastState) + __cil_tmp91;
      *((unsigned char *)__cil_tmp92) = (unsigned char )status;
      if ((int )status == 255) {
        goto case_255;
      } else
      if ((int )status == 85) {
        goto case_85;
      } else
      if ((int )status == 0) {
        goto case_0;
      } else
      if ((int )status == 17) {
        goto case_17;
      } else {
        {
        goto switch_default;
        if (0) {
          case_255:
          __cil_tmp93 = block * 1UL;
          __cil_tmp94 = (unsigned long )(BlockFreeFound) + __cil_tmp93;
          *((unsigned char *)__cil_tmp94) = (unsigned char)1;
          goto switch_break;
          case_85:
          {
          __cil_tmp95 = block * 1UL;
          __cil_tmp96 = (unsigned long )(BlockFreeFound) + __cil_tmp95;
          __cil_tmp97 = *((unsigned char *)__cil_tmp96);
          if (! __cil_tmp97) {
            __cil_tmp98 = block * 2UL;
            __cil_tmp99 = (unsigned long )(BlockMap) + __cil_tmp98;
            *((u16 *)__cil_tmp99) = (u16 )thisEUN;
          } else {
            {
            printk("<4>SECTOR_USED found after SECTOR_FREE in Virtual Unit Chain %d for block %d\n",
                   thisVUC, block);
            }
          }
          }
          goto switch_break;
          case_0:
          {
          __cil_tmp100 = block * 1UL;
          __cil_tmp101 = (unsigned long )(BlockFreeFound) + __cil_tmp100;
          __cil_tmp102 = *((unsigned char *)__cil_tmp101);
          if (! __cil_tmp102) {
            __cil_tmp103 = block * 2UL;
            __cil_tmp104 = (unsigned long )(BlockMap) + __cil_tmp103;
            *((u16 *)__cil_tmp104) = (u16 )65535;
          } else {
            {
            printk("<4>SECTOR_DELETED found after SECTOR_FREE in Virtual Unit Chain %d for block %d\n",
                   thisVUC, block);
            }
          }
          }
          goto switch_break;
          case_17:
          goto switch_break;
          switch_default:
          {
          printk("Unknown status for block %d in EUN %d: %x\n", block, thisEUN, status);
          }
        } else {
          switch_break: ;
        }
        }
      }
      block = block + 1;
    }
    while_break___0: ;
    }
    tmp___8 = silly;
    silly = silly - 1;
    if (tmp___8) {
    } else {
      {
      printk("<4>Infinite loop in Virtual Unit Chain 0x%x\n", thisVUC);
      }
      return ((u16 )65535);
    }
    __cil_tmp105 = (unsigned long )nftl;
    __cil_tmp106 = __cil_tmp105 + 272;
    __cil_tmp107 = *((__u16 **)__cil_tmp106);
    __cil_tmp108 = __cil_tmp107 + thisEUN;
    __cil_tmp109 = *__cil_tmp108;
    thisEUN = (unsigned int )__cil_tmp109;
  }
  while_break: ;
  }
  if (inplace) {
    block = 0;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp110 = (unsigned long )nftl;
      __cil_tmp111 = __cil_tmp110 + 212;
      __cil_tmp112 = *((__u32 *)__cil_tmp111);
      __cil_tmp113 = __cil_tmp112 / 512U;
      __cil_tmp114 = (__u32 )block;
      if (__cil_tmp114 < __cil_tmp113) {
      } else {
        goto while_break___2;
      }
      }
      {
      __cil_tmp115 = block * 1UL;
      __cil_tmp116 = (unsigned long )(BlockLastState) + __cil_tmp115;
      __cil_tmp117 = *((unsigned char *)__cil_tmp116);
      __cil_tmp118 = (int )__cil_tmp117;
      if (__cil_tmp118 != 255) {
        {
        __cil_tmp119 = block * 2UL;
        __cil_tmp120 = (unsigned long )(BlockMap) + __cil_tmp119;
        __cil_tmp121 = *((u16 *)__cil_tmp120);
        __cil_tmp122 = (int )__cil_tmp121;
        if (__cil_tmp122 != 65535) {
          {
          __cil_tmp123 = block * 2UL;
          __cil_tmp124 = (unsigned long )(BlockMap) + __cil_tmp123;
          __cil_tmp125 = *((u16 *)__cil_tmp124);
          __cil_tmp126 = (unsigned int )__cil_tmp125;
          if (__cil_tmp126 != targetEUN) {
            {
            while (1) {
              while_continue___3: ;
              {
              __cil_tmp127 = & descriptor___3;
              __cil_tmp128 = __cil_tmp127->flags;
              __cil_tmp129 = __cil_tmp128 & 1U;
              __cil_tmp130 = ! __cil_tmp129;
              __cil_tmp131 = ! __cil_tmp130;
              __cil_tmp132 = (long )__cil_tmp131;
              tmp___10 = ldv__builtin_expect(__cil_tmp132, 0L);
              }
              if (tmp___10) {
                {
                __cil_tmp133 = block * 2UL;
                __cil_tmp134 = (unsigned long )(BlockMap) + __cil_tmp133;
                __cil_tmp135 = *((u16 *)__cil_tmp134);
                __cil_tmp136 = (unsigned int )__cil_tmp135;
                if (__cil_tmp136 == targetEUN) {
                  tmp___9 = "==";
                } else {
                  tmp___9 = "!=";
                }
                }
                {
                __cil_tmp137 = block * 1UL;
                __cil_tmp138 = (unsigned long )(BlockLastState) + __cil_tmp137;
                __cil_tmp139 = *((unsigned char *)__cil_tmp138);
                __cil_tmp140 = (int )__cil_tmp139;
                __cil_tmp141 = block * 2UL;
                __cil_tmp142 = (unsigned long )(BlockMap) + __cil_tmp141;
                __cil_tmp143 = *((u16 *)__cil_tmp142);
                __cil_tmp144 = (int )__cil_tmp143;
                __dynamic_pr_debug(& descriptor___3, "Setting inplace to 0. VUC %d, block %d was %x lastEUN, and is in EUN %d (%s) %d\n",
                                   thisVUC, block, __cil_tmp140, __cil_tmp144, tmp___9,
                                   targetEUN);
                }
              } else {
              }
              goto while_break___3;
            }
            while_break___3: ;
            }
            inplace = 0;
            goto while_break___2;
          } else {
          }
          }
        } else {
        }
        }
      } else {
      }
      }
      block = block + 1;
    }
    while_break___2: ;
    }
    {
    __cil_tmp145 = (unsigned long )nftl;
    __cil_tmp146 = __cil_tmp145 + 212;
    __cil_tmp147 = *((__u32 *)__cil_tmp146);
    __cil_tmp148 = __cil_tmp147 / 512U;
    __cil_tmp149 = thisVUC * __cil_tmp148;
    if (pendingblock >= __cil_tmp149) {
      {
      __cil_tmp150 = (unsigned long )nftl;
      __cil_tmp151 = __cil_tmp150 + 212;
      __cil_tmp152 = *((__u32 *)__cil_tmp151);
      __cil_tmp153 = __cil_tmp152 / 512U;
      __cil_tmp154 = thisVUC + 1U;
      __cil_tmp155 = __cil_tmp154 * __cil_tmp153;
      if (pendingblock < __cil_tmp155) {
        {
        __cil_tmp156 = (unsigned long )nftl;
        __cil_tmp157 = __cil_tmp156 + 212;
        __cil_tmp158 = *((__u32 *)__cil_tmp157);
        __cil_tmp159 = __cil_tmp158 / 512U;
        __cil_tmp160 = thisVUC * __cil_tmp159;
        __cil_tmp161 = pendingblock - __cil_tmp160;
        __cil_tmp162 = __cil_tmp161 * 1UL;
        __cil_tmp163 = (unsigned long )(BlockLastState) + __cil_tmp162;
        __cil_tmp164 = *((unsigned char *)__cil_tmp163);
        __cil_tmp165 = (int )__cil_tmp164;
        if (__cil_tmp165 != 255) {
          {
          while (1) {
            while_continue___4: ;
            {
            __cil_tmp166 = & descriptor___4;
            __cil_tmp167 = __cil_tmp166->flags;
            __cil_tmp168 = __cil_tmp167 & 1U;
            __cil_tmp169 = ! __cil_tmp168;
            __cil_tmp170 = ! __cil_tmp169;
            __cil_tmp171 = (long )__cil_tmp170;
            tmp___11 = ldv__builtin_expect(__cil_tmp171, 0L);
            }
            if (tmp___11) {
              {
              __dynamic_pr_debug(& descriptor___4, "Pending write not free in EUN %d. Folding out of place.\n",
                                 targetEUN);
              }
            } else {
            }
            goto while_break___4;
          }
          while_break___4: ;
          }
          inplace = 0;
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
  if (! inplace) {
    {
    while (1) {
      while_continue___5: ;
      {
      __cil_tmp172 = & descriptor___5;
      __cil_tmp173 = __cil_tmp172->flags;
      __cil_tmp174 = __cil_tmp173 & 1U;
      __cil_tmp175 = ! __cil_tmp174;
      __cil_tmp176 = ! __cil_tmp175;
      __cil_tmp177 = (long )__cil_tmp176;
      tmp___12 = ldv__builtin_expect(__cil_tmp177, 0L);
      }
      if (tmp___12) {
        {
        __dynamic_pr_debug(& descriptor___5, "Cannot fold Virtual Unit Chain %d in place. Trying out-of-place\n",
                           thisVUC);
        }
      } else {
      }
      goto while_break___5;
    }
    while_break___5: ;
    }
    {
    tmp___13 = NFTL_findfreeblock(nftl, 1);
    targetEUN = (unsigned int )tmp___13;
    }
    if (targetEUN == 65535U) {
      {
      printk("<4>NFTL_findfreeblock(desperate) returns 0xffff.\n");
      }
      return ((u16 )65535);
    } else {
    }
  } else {
    {
    __cil_tmp178 = 0 + 2;
    __cil_tmp179 = 8 + __cil_tmp178;
    __cil_tmp180 = (unsigned long )(& oob) + __cil_tmp179;
    *((__u16 *)__cil_tmp180) = (__u16 )21845;
    __cil_tmp181 = (unsigned long )(& oob) + 8;
    __cil_tmp182 = 0 + 2;
    __cil_tmp183 = 8 + __cil_tmp182;
    __cil_tmp184 = (unsigned long )(& oob) + __cil_tmp183;
    *((__u16 *)__cil_tmp181) = *((__u16 *)__cil_tmp184);
    __cil_tmp185 = 0 + 4;
    __cil_tmp186 = 8 + __cil_tmp185;
    __cil_tmp187 = (unsigned long )(& oob) + __cil_tmp186;
    *((__u32 *)__cil_tmp187) = 4294967295U;
    __cil_tmp188 = (unsigned long )nftl;
    __cil_tmp189 = __cil_tmp188 + 212;
    __cil_tmp190 = *((__u32 *)__cil_tmp189);
    __cil_tmp191 = __cil_tmp190 * targetEUN;
    __cil_tmp192 = __cil_tmp191 + 1024U;
    __cil_tmp193 = __cil_tmp192 + 8U;
    __cil_tmp194 = (loff_t )__cil_tmp193;
    __cil_tmp195 = (size_t )8;
    __cil_tmp196 = (unsigned long )(& oob) + 8;
    __cil_tmp197 = (union nftl_uci *)__cil_tmp196;
    __cil_tmp198 = (char *)__cil_tmp197;
    __cil_tmp199 = (uint8_t *)__cil_tmp198;
    nftl_write_oob(mtd, __cil_tmp194, __cil_tmp195, & retlen, __cil_tmp199);
    }
  }
  {
  while (1) {
    while_continue___6: ;
    {
    __cil_tmp200 = & descriptor___6;
    __cil_tmp201 = __cil_tmp200->flags;
    __cil_tmp202 = __cil_tmp201 & 1U;
    __cil_tmp203 = ! __cil_tmp202;
    __cil_tmp204 = ! __cil_tmp203;
    __cil_tmp205 = (long )__cil_tmp204;
    tmp___14 = ldv__builtin_expect(__cil_tmp205, 0L);
    }
    if (tmp___14) {
      {
      __dynamic_pr_debug(& descriptor___6, "Folding chain %d into unit %d\n", thisVUC,
                         targetEUN);
      }
    } else {
    }
    goto while_break___6;
  }
  while_break___6: ;
  }
  block = 0;
  {
  while (1) {
    while_continue___7: ;
    {
    __cil_tmp206 = (unsigned long )nftl;
    __cil_tmp207 = __cil_tmp206 + 212;
    __cil_tmp208 = *((__u32 *)__cil_tmp207);
    __cil_tmp209 = __cil_tmp208 / 512U;
    __cil_tmp210 = (__u32 )block;
    if (__cil_tmp210 < __cil_tmp209) {
    } else {
      goto while_break___7;
    }
    }
    {
    __cil_tmp211 = block * 2UL;
    __cil_tmp212 = (unsigned long )(BlockMap) + __cil_tmp211;
    __cil_tmp213 = *((u16 *)__cil_tmp212);
    __cil_tmp214 = (unsigned int )__cil_tmp213;
    if (__cil_tmp214 == targetEUN) {
      goto __Cont;
    } else {
      {
      __cil_tmp215 = (unsigned int )block;
      __cil_tmp216 = (unsigned long )nftl;
      __cil_tmp217 = __cil_tmp216 + 212;
      __cil_tmp218 = *((__u32 *)__cil_tmp217);
      __cil_tmp219 = __cil_tmp218 / 512U;
      __cil_tmp220 = thisVUC * __cil_tmp219;
      __cil_tmp221 = __cil_tmp220 + __cil_tmp215;
      if (pendingblock == __cil_tmp221) {
        goto __Cont;
      } else {
      }
      }
    }
    }
    {
    __cil_tmp222 = block * 2UL;
    __cil_tmp223 = (unsigned long )(BlockMap) + __cil_tmp222;
    __cil_tmp224 = *((u16 *)__cil_tmp223);
    __cil_tmp225 = (int )__cil_tmp224;
    if (__cil_tmp225 == 65535) {
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp226 = block * 512;
    __cil_tmp227 = (__u32 )__cil_tmp226;
    __cil_tmp228 = block * 2UL;
    __cil_tmp229 = (unsigned long )(BlockMap) + __cil_tmp228;
    __cil_tmp230 = *((u16 *)__cil_tmp229);
    __cil_tmp231 = (__u32 )__cil_tmp230;
    __cil_tmp232 = (unsigned long )nftl;
    __cil_tmp233 = __cil_tmp232 + 212;
    __cil_tmp234 = *((__u32 *)__cil_tmp233);
    __cil_tmp235 = __cil_tmp234 * __cil_tmp231;
    __cil_tmp236 = __cil_tmp235 + __cil_tmp227;
    __cil_tmp237 = (loff_t )__cil_tmp236;
    __cil_tmp238 = (size_t )512;
    __cil_tmp239 = 0 * 1UL;
    __cil_tmp240 = (unsigned long )(movebuf) + __cil_tmp239;
    __cil_tmp241 = (unsigned char *)__cil_tmp240;
    ret = mtd_read(mtd, __cil_tmp237, __cil_tmp238, & retlen, __cil_tmp241);
    }
    if (ret < 0) {
      {
      tmp___15 = mtd_is_bitflip(ret);
      }
      if (tmp___15) {
      } else {
        {
        __cil_tmp242 = block * 512;
        __cil_tmp243 = (__u32 )__cil_tmp242;
        __cil_tmp244 = block * 2UL;
        __cil_tmp245 = (unsigned long )(BlockMap) + __cil_tmp244;
        __cil_tmp246 = *((u16 *)__cil_tmp245);
        __cil_tmp247 = (__u32 )__cil_tmp246;
        __cil_tmp248 = (unsigned long )nftl;
        __cil_tmp249 = __cil_tmp248 + 212;
        __cil_tmp250 = *((__u32 *)__cil_tmp249);
        __cil_tmp251 = __cil_tmp250 * __cil_tmp247;
        __cil_tmp252 = __cil_tmp251 + __cil_tmp243;
        __cil_tmp253 = (loff_t )__cil_tmp252;
        __cil_tmp254 = (size_t )512;
        __cil_tmp255 = 0 * 1UL;
        __cil_tmp256 = (unsigned long )(movebuf) + __cil_tmp255;
        __cil_tmp257 = (unsigned char *)__cil_tmp256;
        ret = mtd_read(mtd, __cil_tmp253, __cil_tmp254, & retlen, __cil_tmp257);
        }
        if (ret != -5) {
          {
          printk("Error went away on retry.\n");
          }
        } else {
        }
      }
    } else {
    }
    {
    __cil_tmp258 = (void *)(& oob);
    memset(__cil_tmp258, 255, 16UL);
    __cil_tmp259 = 0 + 7;
    __cil_tmp260 = (unsigned long )(& oob) + __cil_tmp259;
    *((__u8 *)__cil_tmp260) = (__u8 )85;
    __cil_tmp261 = 0 + 6;
    __cil_tmp262 = (unsigned long )(& oob) + __cil_tmp261;
    __cil_tmp263 = 0 + 7;
    __cil_tmp264 = (unsigned long )(& oob) + __cil_tmp263;
    *((__u8 *)__cil_tmp262) = *((__u8 *)__cil_tmp264);
    __cil_tmp265 = 0 + 24;
    __cil_tmp266 = (unsigned long )nftl;
    __cil_tmp267 = __cil_tmp266 + __cil_tmp265;
    __cil_tmp268 = *((struct mtd_info **)__cil_tmp267);
    __cil_tmp269 = block * 512;
    __cil_tmp270 = (__u32 )__cil_tmp269;
    __cil_tmp271 = (unsigned long )nftl;
    __cil_tmp272 = __cil_tmp271 + 212;
    __cil_tmp273 = *((__u32 *)__cil_tmp272);
    __cil_tmp274 = __cil_tmp273 * targetEUN;
    __cil_tmp275 = __cil_tmp274 + __cil_tmp270;
    __cil_tmp276 = (loff_t )__cil_tmp275;
    __cil_tmp277 = (size_t )512;
    __cil_tmp278 = 0 * 1UL;
    __cil_tmp279 = (unsigned long )(movebuf) + __cil_tmp278;
    __cil_tmp280 = (unsigned char *)__cil_tmp279;
    __cil_tmp281 = (char *)(& oob);
    __cil_tmp282 = (uint8_t *)__cil_tmp281;
    nftl_write(__cil_tmp268, __cil_tmp276, __cil_tmp277, & retlen, __cil_tmp280, __cil_tmp282);
    }
    __Cont:
    block = block + 1;
  }
  while_break___7: ;
  }
  {
  __cil_tmp283 = 0 + 4;
  __cil_tmp284 = 8 + __cil_tmp283;
  __cil_tmp285 = (unsigned long )(& oob) + __cil_tmp284;
  *((__u16 *)__cil_tmp285) = (__u16 )thisVUC;
  __cil_tmp286 = (unsigned long )(& oob) + 8;
  __cil_tmp287 = 0 + 4;
  __cil_tmp288 = 8 + __cil_tmp287;
  __cil_tmp289 = (unsigned long )(& oob) + __cil_tmp288;
  *((__u16 *)__cil_tmp286) = *((__u16 *)__cil_tmp289);
  __cil_tmp290 = 0 + 6;
  __cil_tmp291 = 8 + __cil_tmp290;
  __cil_tmp292 = (unsigned long )(& oob) + __cil_tmp291;
  *((__u16 *)__cil_tmp292) = (__u16 )65535;
  __cil_tmp293 = 0 + 2;
  __cil_tmp294 = 8 + __cil_tmp293;
  __cil_tmp295 = (unsigned long )(& oob) + __cil_tmp294;
  __cil_tmp296 = 0 + 6;
  __cil_tmp297 = 8 + __cil_tmp296;
  __cil_tmp298 = (unsigned long )(& oob) + __cil_tmp297;
  *((__u16 *)__cil_tmp295) = *((__u16 *)__cil_tmp298);
  __cil_tmp299 = (unsigned long )nftl;
  __cil_tmp300 = __cil_tmp299 + 212;
  __cil_tmp301 = *((__u32 *)__cil_tmp300);
  __cil_tmp302 = __cil_tmp301 * targetEUN;
  __cil_tmp303 = __cil_tmp302 + 8U;
  __cil_tmp304 = (loff_t )__cil_tmp303;
  __cil_tmp305 = (size_t )8;
  __cil_tmp306 = (unsigned long )(& oob) + 8;
  __cil_tmp307 = (union nftl_uci *)__cil_tmp306;
  __cil_tmp308 = (char *)__cil_tmp307;
  __cil_tmp309 = (uint8_t *)__cil_tmp308;
  nftl_write_oob(mtd, __cil_tmp304, __cil_tmp305, & retlen, __cil_tmp309);
  __cil_tmp310 = (unsigned long )nftl;
  __cil_tmp311 = __cil_tmp310 + 264;
  __cil_tmp312 = *((__u16 **)__cil_tmp311);
  __cil_tmp313 = __cil_tmp312 + thisVUC;
  __cil_tmp314 = *__cil_tmp313;
  thisEUN = (unsigned int )__cil_tmp314;
  }
  {
  while (1) {
    while_continue___8: ;
    {
    __cil_tmp315 = & descriptor___7;
    __cil_tmp316 = __cil_tmp315->flags;
    __cil_tmp317 = __cil_tmp316 & 1U;
    __cil_tmp318 = ! __cil_tmp317;
    __cil_tmp319 = ! __cil_tmp318;
    __cil_tmp320 = (long )__cil_tmp319;
    tmp___16 = ldv__builtin_expect(__cil_tmp320, 0L);
    }
    if (tmp___16) {
      {
      __dynamic_pr_debug(& descriptor___7, "Want to erase\n");
      }
    } else {
    }
    goto while_break___8;
  }
  while_break___8: ;
  }
  {
  while (1) {
    while_continue___9: ;
    {
    __cil_tmp321 = (unsigned long )nftl;
    __cil_tmp322 = __cil_tmp321 + 242;
    __cil_tmp323 = *((__u16 *)__cil_tmp322);
    __cil_tmp324 = (unsigned int )__cil_tmp323;
    if (thisEUN <= __cil_tmp324) {
      if (thisEUN != targetEUN) {
      } else {
        goto while_break___9;
      }
    } else {
      goto while_break___9;
    }
    }
    {
    __cil_tmp325 = (unsigned long )nftl;
    __cil_tmp326 = __cil_tmp325 + 272;
    __cil_tmp327 = *((__u16 **)__cil_tmp326);
    __cil_tmp328 = __cil_tmp327 + thisEUN;
    __cil_tmp329 = *__cil_tmp328;
    EUNtmp = (unsigned int )__cil_tmp329;
    __cil_tmp330 = (int )thisEUN;
    tmp___17 = NFTL_formatblock(nftl, __cil_tmp330);
    }
    if (tmp___17 < 0) {
      __cil_tmp331 = (unsigned long )nftl;
      __cil_tmp332 = __cil_tmp331 + 272;
      __cil_tmp333 = *((__u16 **)__cil_tmp332);
      __cil_tmp334 = __cil_tmp333 + thisEUN;
      *__cil_tmp334 = (__u16 )65532;
    } else {
      __cil_tmp335 = (unsigned long )nftl;
      __cil_tmp336 = __cil_tmp335 + 272;
      __cil_tmp337 = *((__u16 **)__cil_tmp336);
      __cil_tmp338 = __cil_tmp337 + thisEUN;
      *__cil_tmp338 = (__u16 )65534;
      __cil_tmp339 = (unsigned long )nftl;
      __cil_tmp340 = __cil_tmp339 + 244;
      __cil_tmp341 = (unsigned long )nftl;
      __cil_tmp342 = __cil_tmp341 + 244;
      __cil_tmp343 = *((__u16 *)__cil_tmp342);
      __cil_tmp344 = (int )__cil_tmp343;
      __cil_tmp345 = __cil_tmp344 + 1;
      *((__u16 *)__cil_tmp340) = (__u16 )__cil_tmp345;
    }
    thisEUN = EUNtmp;
  }
  while_break___9: ;
  }
  __cil_tmp346 = (unsigned long )nftl;
  __cil_tmp347 = __cil_tmp346 + 272;
  __cil_tmp348 = *((__u16 **)__cil_tmp347);
  __cil_tmp349 = __cil_tmp348 + targetEUN;
  *__cil_tmp349 = (__u16 )65535;
  __cil_tmp350 = (unsigned long )nftl;
  __cil_tmp351 = __cil_tmp350 + 264;
  __cil_tmp352 = *((__u16 **)__cil_tmp351);
  __cil_tmp353 = __cil_tmp352 + thisVUC;
  *__cil_tmp353 = (__u16 )targetEUN;
  return ((u16 )targetEUN);
}
}
static u16 NFTL_makefreeblock(struct NFTLrecord *nftl , unsigned int pendingblock )
{ u16 LongestChain ;
  u16 ChainLength ;
  u16 thislen ;
  u16 chain ;
  u16 EUN ;
  u16 tmp___7 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  __u32 __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  __u32 __cil_tmp15 ;
  __u32 __cil_tmp16 ;
  __u32 __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  __u16 *__cil_tmp20 ;
  __u16 *__cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  __u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  int __cil_tmp27 ;
  int __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  __u16 *__cil_tmp31 ;
  __u16 *__cil_tmp32 ;
  __u16 __cil_tmp33 ;
  int __cil_tmp34 ;
  int __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  int __cil_tmp38 ;
  int __cil_tmp39 ;
  int __cil_tmp40 ;
  int __cil_tmp41 ;
  int __cil_tmp42 ;
  int __cil_tmp43 ;
  int __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  {
  LongestChain = (u16 )0;
  ChainLength = (u16 )0;
  chain = (u16 )0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp9 = (unsigned long )nftl;
    __cil_tmp10 = __cil_tmp9 + 212;
    __cil_tmp11 = *((__u32 *)__cil_tmp10);
    __cil_tmp12 = 216 + 10;
    __cil_tmp13 = (unsigned long )nftl;
    __cil_tmp14 = __cil_tmp13 + __cil_tmp12;
    __cil_tmp15 = *((__u32 *)__cil_tmp14);
    __cil_tmp16 = __cil_tmp15 / __cil_tmp11;
    __cil_tmp17 = (__u32 )chain;
    if (__cil_tmp17 < __cil_tmp16) {
    } else {
      goto while_break;
    }
    }
    __cil_tmp18 = (unsigned long )nftl;
    __cil_tmp19 = __cil_tmp18 + 264;
    __cil_tmp20 = *((__u16 **)__cil_tmp19);
    __cil_tmp21 = __cil_tmp20 + chain;
    EUN = *__cil_tmp21;
    thislen = (u16 )0;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp22 = (unsigned long )nftl;
      __cil_tmp23 = __cil_tmp22 + 242;
      __cil_tmp24 = *((__u16 *)__cil_tmp23);
      __cil_tmp25 = (int )__cil_tmp24;
      __cil_tmp26 = (int )EUN;
      if (__cil_tmp26 <= __cil_tmp25) {
      } else {
        goto while_break___0;
      }
      }
      __cil_tmp27 = (int )thislen;
      __cil_tmp28 = __cil_tmp27 + 1;
      thislen = (u16 )__cil_tmp28;
      __cil_tmp29 = (unsigned long )nftl;
      __cil_tmp30 = __cil_tmp29 + 272;
      __cil_tmp31 = *((__u16 **)__cil_tmp30);
      __cil_tmp32 = __cil_tmp31 + EUN;
      __cil_tmp33 = *__cil_tmp32;
      __cil_tmp34 = (int )__cil_tmp33;
      __cil_tmp35 = __cil_tmp34 & 32767;
      EUN = (u16 )__cil_tmp35;
      {
      __cil_tmp36 = (int )thislen;
      if (__cil_tmp36 > 65280) {
        {
        __cil_tmp37 = (int )chain;
        __cil_tmp38 = (int )EUN;
        printk("Endless loop in Virtual Chain %d: Unit %x\n", __cil_tmp37, __cil_tmp38);
        }
      } else {
      }
      }
      {
      __cil_tmp39 = (int )thislen;
      if (__cil_tmp39 > 65296) {
        thislen = (u16 )0;
        goto while_break___0;
      } else {
      }
      }
    }
    while_break___0: ;
    }
    {
    __cil_tmp40 = (int )ChainLength;
    __cil_tmp41 = (int )thislen;
    if (__cil_tmp41 > __cil_tmp40) {
      ChainLength = thislen;
      LongestChain = chain;
    } else {
    }
    }
    __cil_tmp42 = (int )chain;
    __cil_tmp43 = __cil_tmp42 + 1;
    chain = (u16 )__cil_tmp43;
  }
  while_break: ;
  }
  {
  __cil_tmp44 = (int )ChainLength;
  if (__cil_tmp44 < 2) {
    {
    printk("<4>No Virtual Unit Chains available for folding. Failing request\n");
    }
    return ((u16 )65535);
  } else {
  }
  }
  {
  __cil_tmp45 = (unsigned int )LongestChain;
  tmp___7 = NFTL_foldchain(nftl, __cil_tmp45, pendingblock);
  }
  return (tmp___7);
}
}
__inline static u16 NFTL_findwriteunit(struct NFTLrecord *nftl , unsigned int block ) __attribute__((__no_instrument_function__)) ;
static struct _ddebug __attribute__((__aligned__(8))) descriptor___8 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_findwriteunit", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Status of block %d in EUN %d is %x\n", 570U, 0U};
static struct _ddebug __attribute__((__aligned__(8))) descriptor___9 __attribute__((__used__,
__section__("__verbose"))) = {"nftl", "NFTL_findwriteunit", "/home/zakharov/launch/work/current--X--drivers/--X--defaultlinux-3.4--X--32_1--X--cpachecker/linux-3.4/csd_deg_dscv/5495/dscv_tempdir/dscv/ri/32_1/drivers/mtd/nftlcore.c.common.c",
    "Using desperate==1 to find free EUN to accommodate write to VUC %d\n", 622U,
    0U};
__inline static u16 NFTL_findwriteunit(struct NFTLrecord *nftl , unsigned int block ) __attribute__((__no_instrument_function__)) ;
__inline static u16 NFTL_findwriteunit(struct NFTLrecord *nftl , unsigned int block )
{ u16 lastEUN ;
  u16 thisVUC ;
  struct mtd_info *mtd ;
  unsigned int writeEUN ;
  unsigned long blockofs ;
  size_t retlen ;
  int silly ;
  int silly2 ;
  struct nftl_oob oob ;
  struct nftl_bci bci ;
  size_t retlen___0 ;
  unsigned int status ;
  long tmp___7 ;
  int tmp___8 ;
  u16 tmp___9 ;
  u16 tmp___10 ;
  long tmp___11 ;
  u16 tmp___12 ;
  int tmp___13 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  __u32 __cil_tmp24 ;
  __u32 __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  __u32 __cil_tmp33 ;
  unsigned int __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  __u16 *__cil_tmp38 ;
  __u16 *__cil_tmp39 ;
  __u16 __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  __u16 __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  __u32 __cil_tmp47 ;
  unsigned int __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  loff_t __cil_tmp51 ;
  size_t __cil_tmp52 ;
  char *__cil_tmp53 ;
  uint8_t *__cil_tmp54 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned int __cil_tmp57 ;
  int __cil_tmp58 ;
  int __cil_tmp59 ;
  long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  __u8 __cil_tmp62 ;
  __le16 __cil_tmp63 ;
  int __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  __u8 __cil_tmp66 ;
  int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  __u8 __cil_tmp69 ;
  int __cil_tmp70 ;
  int __cil_tmp71 ;
  int __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  __u16 *__cil_tmp75 ;
  __u16 *__cil_tmp76 ;
  __u16 __cil_tmp77 ;
  struct _ddebug __attribute__((__aligned__(8))) *__cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  unsigned int __cil_tmp80 ;
  int __cil_tmp81 ;
  int __cil_tmp82 ;
  long __cil_tmp83 ;
  int __cil_tmp84 ;
  int __cil_tmp85 ;
  int __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  unsigned long __cil_tmp89 ;
  __u16 *__cil_tmp90 ;
  __u16 *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  __u16 *__cil_tmp94 ;
  __u16 *__cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  __u32 __cil_tmp98 ;
  unsigned int __cil_tmp99 ;
  unsigned int __cil_tmp100 ;
  loff_t __cil_tmp101 ;
  size_t __cil_tmp102 ;
  unsigned long __cil_tmp103 ;
  union nftl_uci *__cil_tmp104 ;
  char *__cil_tmp105 ;
  uint8_t *__cil_tmp106 ;
  unsigned long __cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  unsigned long __cil_tmp115 ;
  __u32 __cil_tmp116 ;
  unsigned int __cil_tmp117 ;
  unsigned int __cil_tmp118 ;
  loff_t __cil_tmp119 ;
  size_t __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  union nftl_uci *__cil_tmp122 ;
  char *__cil_tmp123 ;
  uint8_t *__cil_tmp124 ;
  int __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  __u16 *__cil_tmp128 ;
  __u16 *__cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned long __cil_tmp131 ;
  __u32 __cil_tmp132 ;
  __u32 __cil_tmp133 ;
  __u32 __cil_tmp134 ;
  __u32 __cil_tmp135 ;
  loff_t __cil_tmp136 ;
  size_t __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  union nftl_uci *__cil_tmp139 ;
  char *__cil_tmp140 ;
  uint8_t *__cil_tmp141 ;
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
  __u32 __cil_tmp153 ;
  __u32 __cil_tmp154 ;
  __u32 __cil_tmp155 ;
  __u32 __cil_tmp156 ;
  loff_t __cil_tmp157 ;
  size_t __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  union nftl_uci *__cil_tmp160 ;
  char *__cil_tmp161 ;
  uint8_t *__cil_tmp162 ;
  int __cil_tmp163 ;
  {
  __cil_tmp22 = (unsigned long )nftl;
  __cil_tmp23 = __cil_tmp22 + 212;
  __cil_tmp24 = *((__u32 *)__cil_tmp23);
  __cil_tmp25 = __cil_tmp24 / 512U;
  __cil_tmp26 = block / __cil_tmp25;
  thisVUC = (u16 )__cil_tmp26;
  __cil_tmp27 = 0 + 24;
  __cil_tmp28 = (unsigned long )nftl;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  mtd = *((struct mtd_info **)__cil_tmp29);
  __cil_tmp30 = (unsigned long )nftl;
  __cil_tmp31 = __cil_tmp30 + 212;
  __cil_tmp32 = *((__u32 *)__cil_tmp31);
  __cil_tmp33 = __cil_tmp32 - 1U;
  __cil_tmp34 = block * 512U;
  __cil_tmp35 = __cil_tmp34 & __cil_tmp33;
  blockofs = (unsigned long )__cil_tmp35;
  silly2 = 3;
  {
  while (1) {
    while_continue: ;
    lastEUN = (u16 )65535;
    __cil_tmp36 = (unsigned long )nftl;
    __cil_tmp37 = __cil_tmp36 + 264;
    __cil_tmp38 = *((__u16 **)__cil_tmp37);
    __cil_tmp39 = __cil_tmp38 + thisVUC;
    __cil_tmp40 = *__cil_tmp39;
    writeEUN = (unsigned int )__cil_tmp40;
    silly = 10000;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp41 = (unsigned long )nftl;
      __cil_tmp42 = __cil_tmp41 + 242;
      __cil_tmp43 = *((__u16 *)__cil_tmp42);
      __cil_tmp44 = (unsigned int )__cil_tmp43;
      if (writeEUN <= __cil_tmp44) {
      } else {
        goto while_break___0;
      }
      }
      {
      lastEUN = (u16 )writeEUN;
      __cil_tmp45 = (unsigned long )nftl;
      __cil_tmp46 = __cil_tmp45 + 212;
      __cil_tmp47 = *((__u32 *)__cil_tmp46);
      __cil_tmp48 = writeEUN * __cil_tmp47;
      __cil_tmp49 = (unsigned long )__cil_tmp48;
      __cil_tmp50 = __cil_tmp49 + blockofs;
      __cil_tmp51 = (loff_t )__cil_tmp50;
      __cil_tmp52 = (size_t )8;
      __cil_tmp53 = (char *)(& bci);
      __cil_tmp54 = (uint8_t *)__cil_tmp53;
      nftl_read_oob(mtd, __cil_tmp51, __cil_tmp52, & retlen___0, __cil_tmp54);
      }
      {
      while (1) {
        while_continue___1: ;
        {
        __cil_tmp55 = & descriptor___8;
        __cil_tmp56 = __cil_tmp55->flags;
        __cil_tmp57 = __cil_tmp56 & 1U;
        __cil_tmp58 = ! __cil_tmp57;
        __cil_tmp59 = ! __cil_tmp58;
        __cil_tmp60 = (long )__cil_tmp59;
        tmp___7 = ldv__builtin_expect(__cil_tmp60, 0L);
        }
        if (tmp___7) {
          {
          __cil_tmp61 = (unsigned long )(& bci) + 6;
          __cil_tmp62 = *((__u8 *)__cil_tmp61);
          __cil_tmp63 = (__le16 )__cil_tmp62;
          __cil_tmp64 = (int )__cil_tmp63;
          __dynamic_pr_debug(& descriptor___8, "Status of block %d in EUN %d is %x\n",
                             block, writeEUN, __cil_tmp64);
          }
        } else {
        }
        goto while_break___1;
      }
      while_break___1: ;
      }
      __cil_tmp65 = (unsigned long )(& bci) + 7;
      __cil_tmp66 = *((__u8 *)__cil_tmp65);
      __cil_tmp67 = (int )__cil_tmp66;
      __cil_tmp68 = (unsigned long )(& bci) + 6;
      __cil_tmp69 = *((__u8 *)__cil_tmp68);
      __cil_tmp70 = (int )__cil_tmp69;
      __cil_tmp71 = __cil_tmp70 | __cil_tmp67;
      status = (unsigned int )__cil_tmp71;
      if ((int )status == 255) {
        goto case_255;
      } else
      if ((int )status == 0) {
        goto case_0;
      } else
      if ((int )status == 85) {
        goto case_0;
      } else
      if ((int )status == 17) {
        goto case_0;
      } else {
        {
        goto switch_default;
        if (0) {
          case_255:
          return ((u16 )writeEUN);
          case_0:
          case_85:
          case_17:
          goto switch_break;
          switch_default:
          goto switch_break;
        } else {
          switch_break: ;
        }
        }
      }
      tmp___8 = silly;
      silly = silly - 1;
      if (tmp___8) {
      } else {
        {
        __cil_tmp72 = (int )thisVUC;
        printk("<4>Infinite loop in Virtual Unit Chain 0x%x\n", __cil_tmp72);
        }
        return ((u16 )65535);
      }
      __cil_tmp73 = (unsigned long )nftl;
      __cil_tmp74 = __cil_tmp73 + 272;
      __cil_tmp75 = *((__u16 **)__cil_tmp74);
      __cil_tmp76 = __cil_tmp75 + writeEUN;
      __cil_tmp77 = *__cil_tmp76;
      writeEUN = (unsigned int )__cil_tmp77;
    }
    while_break___0: ;
    }
    {
    tmp___9 = NFTL_findfreeblock(nftl, 0);
    writeEUN = (unsigned int )tmp___9;
    }
    if (writeEUN == 65535U) {
      {
      tmp___10 = NFTL_makefreeblock(nftl, 65535U);
      writeEUN = (unsigned int )tmp___10;
      }
      if (writeEUN == 65535U) {
        {
        while (1) {
          while_continue___2: ;
          {
          __cil_tmp78 = & descriptor___9;
          __cil_tmp79 = __cil_tmp78->flags;
          __cil_tmp80 = __cil_tmp79 & 1U;
          __cil_tmp81 = ! __cil_tmp80;
          __cil_tmp82 = ! __cil_tmp81;
          __cil_tmp83 = (long )__cil_tmp82;
          tmp___11 = ldv__builtin_expect(__cil_tmp83, 0L);
          }
          if (tmp___11) {
            {
            __cil_tmp84 = (int )thisVUC;
            __dynamic_pr_debug(& descriptor___9, "Using desperate==1 to find free EUN to accommodate write to VUC %d\n",
                               __cil_tmp84);
            }
          } else {
          }
          goto while_break___2;
        }
        while_break___2: ;
        }
        {
        tmp___12 = NFTL_findfreeblock(nftl, 1);
        writeEUN = (unsigned int )tmp___12;
        }
      } else {
      }
      if (writeEUN == 65535U) {
        {
        printk("<4>Cannot make free space.\n");
        }
        return ((u16 )65535);
      } else {
      }
      lastEUN = (u16 )65535;
      goto __Cont;
    } else {
    }
    {
    __cil_tmp85 = (int )lastEUN;
    if (__cil_tmp85 != 65535) {
      __cil_tmp86 = (int )thisVUC;
      __cil_tmp87 = __cil_tmp86 | 32768;
      thisVUC = (u16 )__cil_tmp87;
    } else {
      __cil_tmp88 = (unsigned long )nftl;
      __cil_tmp89 = __cil_tmp88 + 264;
      __cil_tmp90 = *((__u16 **)__cil_tmp89);
      __cil_tmp91 = __cil_tmp90 + thisVUC;
      *__cil_tmp91 = (__u16 )writeEUN;
    }
    }
    {
    __cil_tmp92 = (unsigned long )nftl;
    __cil_tmp93 = __cil_tmp92 + 272;
    __cil_tmp94 = *((__u16 **)__cil_tmp93);
    __cil_tmp95 = __cil_tmp94 + writeEUN;
    *__cil_tmp95 = (__u16 )65535;
    __cil_tmp96 = (unsigned long )nftl;
    __cil_tmp97 = __cil_tmp96 + 212;
    __cil_tmp98 = *((__u32 *)__cil_tmp97);
    __cil_tmp99 = writeEUN * __cil_tmp98;
    __cil_tmp100 = __cil_tmp99 + 8U;
    __cil_tmp101 = (loff_t )__cil_tmp100;
    __cil_tmp102 = (size_t )8;
    __cil_tmp103 = (unsigned long )(& oob) + 8;
    __cil_tmp104 = (union nftl_uci *)__cil_tmp103;
    __cil_tmp105 = (char *)__cil_tmp104;
    __cil_tmp106 = (uint8_t *)__cil_tmp105;
    nftl_read_oob(mtd, __cil_tmp101, __cil_tmp102, & retlen, __cil_tmp106);
    __cil_tmp107 = 0 + 4;
    __cil_tmp108 = 8 + __cil_tmp107;
    __cil_tmp109 = (unsigned long )(& oob) + __cil_tmp108;
    *((__u16 *)__cil_tmp109) = thisVUC;
    __cil_tmp110 = (unsigned long )(& oob) + 8;
    __cil_tmp111 = 0 + 4;
    __cil_tmp112 = 8 + __cil_tmp111;
    __cil_tmp113 = (unsigned long )(& oob) + __cil_tmp112;
    *((__u16 *)__cil_tmp110) = *((__u16 *)__cil_tmp113);
    __cil_tmp114 = (unsigned long )nftl;
    __cil_tmp115 = __cil_tmp114 + 212;
    __cil_tmp116 = *((__u32 *)__cil_tmp115);
    __cil_tmp117 = writeEUN * __cil_tmp116;
    __cil_tmp118 = __cil_tmp117 + 8U;
    __cil_tmp119 = (loff_t )__cil_tmp118;
    __cil_tmp120 = (size_t )8;
    __cil_tmp121 = (unsigned long )(& oob) + 8;
    __cil_tmp122 = (union nftl_uci *)__cil_tmp121;
    __cil_tmp123 = (char *)__cil_tmp122;
    __cil_tmp124 = (uint8_t *)__cil_tmp123;
    nftl_write_oob(mtd, __cil_tmp119, __cil_tmp120, & retlen, __cil_tmp124);
    }
    {
    __cil_tmp125 = (int )lastEUN;
    if (__cil_tmp125 != 65535) {
      {
      __cil_tmp126 = (unsigned long )nftl;
      __cil_tmp127 = __cil_tmp126 + 272;
      __cil_tmp128 = *((__u16 **)__cil_tmp127);
      __cil_tmp129 = __cil_tmp128 + lastEUN;
      *__cil_tmp129 = (__u16 )writeEUN;
      __cil_tmp130 = (unsigned long )nftl;
      __cil_tmp131 = __cil_tmp130 + 212;
      __cil_tmp132 = *((__u32 *)__cil_tmp131);
      __cil_tmp133 = (__u32 )lastEUN;
      __cil_tmp134 = __cil_tmp133 * __cil_tmp132;
      __cil_tmp135 = __cil_tmp134 + 8U;
      __cil_tmp136 = (loff_t )__cil_tmp135;
      __cil_tmp137 = (size_t )8;
      __cil_tmp138 = (unsigned long )(& oob) + 8;
      __cil_tmp139 = (union nftl_uci *)__cil_tmp138;
      __cil_tmp140 = (char *)__cil_tmp139;
      __cil_tmp141 = (uint8_t *)__cil_tmp140;
      nftl_read_oob(mtd, __cil_tmp136, __cil_tmp137, & retlen, __cil_tmp141);
      __cil_tmp142 = 0 + 6;
      __cil_tmp143 = 8 + __cil_tmp142;
      __cil_tmp144 = (unsigned long )(& oob) + __cil_tmp143;
      *((__u16 *)__cil_tmp144) = (__u16 )writeEUN;
      __cil_tmp145 = 0 + 2;
      __cil_tmp146 = 8 + __cil_tmp145;
      __cil_tmp147 = (unsigned long )(& oob) + __cil_tmp146;
      __cil_tmp148 = 0 + 6;
      __cil_tmp149 = 8 + __cil_tmp148;
      __cil_tmp150 = (unsigned long )(& oob) + __cil_tmp149;
      *((__u16 *)__cil_tmp147) = *((__u16 *)__cil_tmp150);
      __cil_tmp151 = (unsigned long )nftl;
      __cil_tmp152 = __cil_tmp151 + 212;
      __cil_tmp153 = *((__u32 *)__cil_tmp152);
      __cil_tmp154 = (__u32 )lastEUN;
      __cil_tmp155 = __cil_tmp154 * __cil_tmp153;
      __cil_tmp156 = __cil_tmp155 + 8U;
      __cil_tmp157 = (loff_t )__cil_tmp156;
      __cil_tmp158 = (size_t )8;
      __cil_tmp159 = (unsigned long )(& oob) + 8;
      __cil_tmp160 = (union nftl_uci *)__cil_tmp159;
      __cil_tmp161 = (char *)__cil_tmp160;
      __cil_tmp162 = (uint8_t *)__cil_tmp161;
      nftl_write_oob(mtd, __cil_tmp157, __cil_tmp158, & retlen, __cil_tmp162);
      }
    } else {
    }
    }
    return ((u16 )writeEUN);
    __Cont:
    tmp___13 = silly2;
    silly2 = silly2 - 1;
    if (tmp___13) {
    } else {
      goto while_break;
    }
  }
  while_break: ;
  }
  {
  __cil_tmp163 = (int )thisVUC;
  printk("<4>Error folding to make room for Virtual Unit Chain 0x%x\n", __cil_tmp163);
  }
  return ((u16 )65535);
}
}
static int nftl_writeblock(struct mtd_blktrans_dev *mbd , unsigned long block , char *buffer )
{ struct NFTLrecord *nftl ;
  u16 writeEUN ;
  unsigned long blockofs ;
  size_t retlen ;
  struct nftl_oob oob ;
  void *__cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  __u32 __cil_tmp12 ;
  __u32 __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned int __cil_tmp16 ;
  int __cil_tmp17 ;
  void *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  struct mtd_info *__cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  __u32 __cil_tmp31 ;
  __u32 __cil_tmp32 ;
  __u32 __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  loff_t __cil_tmp36 ;
  size_t __cil_tmp37 ;
  uint8_t *__cil_tmp38 ;
  char *__cil_tmp39 ;
  uint8_t *__cil_tmp40 ;
  {
  {
  __cil_tmp9 = (void *)mbd;
  nftl = (struct NFTLrecord *)__cil_tmp9;
  __cil_tmp10 = (unsigned long )nftl;
  __cil_tmp11 = __cil_tmp10 + 212;
  __cil_tmp12 = *((__u32 *)__cil_tmp11);
  __cil_tmp13 = __cil_tmp12 - 1U;
  __cil_tmp14 = (unsigned long )__cil_tmp13;
  __cil_tmp15 = block * 512UL;
  blockofs = __cil_tmp15 & __cil_tmp14;
  __cil_tmp16 = (unsigned int )block;
  writeEUN = NFTL_findwriteunit(nftl, __cil_tmp16);
  }
  {
  __cil_tmp17 = (int )writeEUN;
  if (__cil_tmp17 == 65535) {
    {
    printk("<4>NFTL_writeblock(): Cannot find block to write to\n");
    }
    return (1);
  } else {
  }
  }
  {
  __cil_tmp18 = (void *)(& oob);
  memset(__cil_tmp18, 255, 16UL);
  __cil_tmp19 = 0 + 7;
  __cil_tmp20 = (unsigned long )(& oob) + __cil_tmp19;
  *((__u8 *)__cil_tmp20) = (__u8 )85;
  __cil_tmp21 = 0 + 6;
  __cil_tmp22 = (unsigned long )(& oob) + __cil_tmp21;
  __cil_tmp23 = 0 + 7;
  __cil_tmp24 = (unsigned long )(& oob) + __cil_tmp23;
  *((__u8 *)__cil_tmp22) = *((__u8 *)__cil_tmp24);
  __cil_tmp25 = 0 + 24;
  __cil_tmp26 = (unsigned long )nftl;
  __cil_tmp27 = __cil_tmp26 + __cil_tmp25;
  __cil_tmp28 = *((struct mtd_info **)__cil_tmp27);
  __cil_tmp29 = (unsigned long )nftl;
  __cil_tmp30 = __cil_tmp29 + 212;
  __cil_tmp31 = *((__u32 *)__cil_tmp30);
  __cil_tmp32 = (__u32 )writeEUN;
  __cil_tmp33 = __cil_tmp32 * __cil_tmp31;
  __cil_tmp34 = (unsigned long )__cil_tmp33;
  __cil_tmp35 = __cil_tmp34 + blockofs;
  __cil_tmp36 = (loff_t )__cil_tmp35;
  __cil_tmp37 = (size_t )512;
  __cil_tmp38 = (uint8_t *)buffer;
  __cil_tmp39 = (char *)(& oob);
  __cil_tmp40 = (uint8_t *)__cil_tmp39;
  nftl_write(__cil_tmp28, __cil_tmp36, __cil_tmp37, & retlen, __cil_tmp38, __cil_tmp40);
  }
  return (0);
}
}
static int nftl_readblock(struct mtd_blktrans_dev *mbd , unsigned long block , char *buffer )
{ struct NFTLrecord *nftl ;
  struct mtd_info *mtd ;
  u16 lastgoodEUN ;
  u16 thisEUN ;
  unsigned long blockofs ;
  unsigned int status ;
  int silly ;
  size_t retlen ;
  struct nftl_bci bci ;
  int tmp___7 ;
  int tmp___8 ;
  loff_t ptr ;
  size_t retlen___0 ;
  int res ;
  int tmp___9 ;
  int tmp___10 ;
  void *__cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  __u32 __cil_tmp26 ;
  __u32 __cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  unsigned long __cil_tmp29 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u16 *__cil_tmp32 ;
  __u16 *__cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  __u32 __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned int __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  __u32 __cil_tmp47 ;
  __u32 __cil_tmp48 ;
  __u32 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  loff_t __cil_tmp52 ;
  size_t __cil_tmp53 ;
  char *__cil_tmp54 ;
  uint8_t *__cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  __u8 __cil_tmp57 ;
  int __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  __u8 __cil_tmp60 ;
  int __cil_tmp61 ;
  int __cil_tmp62 ;
  int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  __u32 __cil_tmp66 ;
  __u32 __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  unsigned long __cil_tmp71 ;
  __u16 *__cil_tmp72 ;
  __u16 *__cil_tmp73 ;
  int __cil_tmp74 ;
  void *__cil_tmp75 ;
  size_t __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  __u32 __cil_tmp79 ;
  __u32 __cil_tmp80 ;
  __u32 __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  size_t __cil_tmp84 ;
  u_char *__cil_tmp85 ;
  {
  __cil_tmp20 = (void *)mbd;
  nftl = (struct NFTLrecord *)__cil_tmp20;
  __cil_tmp21 = 0 + 24;
  __cil_tmp22 = (unsigned long )nftl;
  __cil_tmp23 = __cil_tmp22 + __cil_tmp21;
  mtd = *((struct mtd_info **)__cil_tmp23);
  __cil_tmp24 = (unsigned long )nftl;
  __cil_tmp25 = __cil_tmp24 + 212;
  __cil_tmp26 = *((__u32 *)__cil_tmp25);
  __cil_tmp27 = __cil_tmp26 / 512U;
  __cil_tmp28 = (unsigned long )__cil_tmp27;
  __cil_tmp29 = block / __cil_tmp28;
  __cil_tmp30 = (unsigned long )nftl;
  __cil_tmp31 = __cil_tmp30 + 264;
  __cil_tmp32 = *((__u16 **)__cil_tmp31);
  __cil_tmp33 = __cil_tmp32 + __cil_tmp29;
  thisEUN = *__cil_tmp33;
  __cil_tmp34 = (unsigned long )nftl;
  __cil_tmp35 = __cil_tmp34 + 212;
  __cil_tmp36 = *((__u32 *)__cil_tmp35);
  __cil_tmp37 = __cil_tmp36 - 1U;
  __cil_tmp38 = (unsigned long )__cil_tmp37;
  __cil_tmp39 = block * 512UL;
  blockofs = __cil_tmp39 & __cil_tmp38;
  silly = 10000;
  lastgoodEUN = (u16 )65535;
  {
  __cil_tmp40 = (int )thisEUN;
  if (__cil_tmp40 != 65535) {
    {
    while (1) {
      while_continue: ;
      {
      __cil_tmp41 = (unsigned long )nftl;
      __cil_tmp42 = __cil_tmp41 + 280;
      __cil_tmp43 = *((unsigned int *)__cil_tmp42);
      __cil_tmp44 = (unsigned int )thisEUN;
      if (__cil_tmp44 < __cil_tmp43) {
      } else {
        goto while_break;
      }
      }
      {
      __cil_tmp45 = (unsigned long )nftl;
      __cil_tmp46 = __cil_tmp45 + 212;
      __cil_tmp47 = *((__u32 *)__cil_tmp46);
      __cil_tmp48 = (__u32 )thisEUN;
      __cil_tmp49 = __cil_tmp48 * __cil_tmp47;
      __cil_tmp50 = (unsigned long )__cil_tmp49;
      __cil_tmp51 = __cil_tmp50 + blockofs;
      __cil_tmp52 = (loff_t )__cil_tmp51;
      __cil_tmp53 = (size_t )8;
      __cil_tmp54 = (char *)(& bci);
      __cil_tmp55 = (uint8_t *)__cil_tmp54;
      tmp___7 = nftl_read_oob(mtd, __cil_tmp52, __cil_tmp53, & retlen, __cil_tmp55);
      }
      if (tmp___7 < 0) {
        status = 17U;
      } else {
        __cil_tmp56 = (unsigned long )(& bci) + 7;
        __cil_tmp57 = *((__u8 *)__cil_tmp56);
        __cil_tmp58 = (int )__cil_tmp57;
        __cil_tmp59 = (unsigned long )(& bci) + 6;
        __cil_tmp60 = *((__u8 *)__cil_tmp59);
        __cil_tmp61 = (int )__cil_tmp60;
        __cil_tmp62 = __cil_tmp61 | __cil_tmp58;
        status = (unsigned int )__cil_tmp62;
      }
      if ((int )status == 255) {
        goto case_255;
      } else
      if ((int )status == 0) {
        goto case_0;
      } else
      if ((int )status == 85) {
        goto case_85;
      } else
      if ((int )status == 17) {
        goto case_17;
      } else {
        {
        goto switch_default;
        if (0) {
          case_255:
          goto the_end;
          case_0:
          lastgoodEUN = (u16 )65535;
          goto switch_break;
          case_85:
          lastgoodEUN = thisEUN;
          goto switch_break;
          case_17:
          goto switch_break;
          switch_default:
          {
          __cil_tmp63 = (int )thisEUN;
          printk("Unknown status for block %ld in EUN %d: %x\n", block, __cil_tmp63,
                 status);
          }
          goto switch_break;
        } else {
          switch_break: ;
        }
        }
      }
      tmp___8 = silly;
      silly = silly - 1;
      if (tmp___8) {
      } else {
        {
        __cil_tmp64 = (unsigned long )nftl;
        __cil_tmp65 = __cil_tmp64 + 212;
        __cil_tmp66 = *((__u32 *)__cil_tmp65);
        __cil_tmp67 = __cil_tmp66 / 512U;
        __cil_tmp68 = (unsigned long )__cil_tmp67;
        __cil_tmp69 = block / __cil_tmp68;
        printk("<4>Infinite loop in Virtual Unit Chain 0x%lx\n", __cil_tmp69);
        }
        return (1);
      }
      __cil_tmp70 = (unsigned long )nftl;
      __cil_tmp71 = __cil_tmp70 + 272;
      __cil_tmp72 = *((__u16 **)__cil_tmp71);
      __cil_tmp73 = __cil_tmp72 + thisEUN;
      thisEUN = *__cil_tmp73;
    }
    while_break: ;
    }
  } else {
  }
  }
  the_end:
  {
  __cil_tmp74 = (int )lastgoodEUN;
  if (__cil_tmp74 == 65535) {
    {
    __cil_tmp75 = (void *)buffer;
    __cil_tmp76 = (size_t )512;
    memset(__cil_tmp75, 0, __cil_tmp76);
    }
  } else {
    {
    __cil_tmp77 = (unsigned long )nftl;
    __cil_tmp78 = __cil_tmp77 + 212;
    __cil_tmp79 = *((__u32 *)__cil_tmp78);
    __cil_tmp80 = (__u32 )lastgoodEUN;
    __cil_tmp81 = __cil_tmp80 * __cil_tmp79;
    __cil_tmp82 = (unsigned long )__cil_tmp81;
    __cil_tmp83 = __cil_tmp82 + blockofs;
    ptr = (loff_t )__cil_tmp83;
    __cil_tmp84 = (size_t )512;
    __cil_tmp85 = (u_char *)buffer;
    tmp___9 = mtd_read(mtd, ptr, __cil_tmp84, & retlen___0, __cil_tmp85);
    res = tmp___9;
    }
    if (res < 0) {
      {
      tmp___10 = mtd_is_bitflip(res);
      }
      if (tmp___10) {
      } else {
        return (-5);
      }
    } else {
    }
  }
  }
  return (0);
}
}
static int nftl_getgeo(struct mtd_blktrans_dev *dev , struct hd_geometry *geo )
{ struct NFTLrecord *nftl ;
  void *__cil_tmp4 ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  {
  __cil_tmp4 = (void *)dev;
  nftl = (struct NFTLrecord *)__cil_tmp4;
  __cil_tmp5 = (unsigned long )nftl;
  __cil_tmp6 = __cil_tmp5 + 236;
  *((unsigned char *)geo) = *((unsigned char *)__cil_tmp6);
  __cil_tmp7 = (unsigned long )geo;
  __cil_tmp8 = __cil_tmp7 + 1;
  __cil_tmp9 = (unsigned long )nftl;
  __cil_tmp10 = __cil_tmp9 + 237;
  *((unsigned char *)__cil_tmp8) = *((unsigned char *)__cil_tmp10);
  __cil_tmp11 = (unsigned long )geo;
  __cil_tmp12 = __cil_tmp11 + 2;
  __cil_tmp13 = (unsigned long )nftl;
  __cil_tmp14 = __cil_tmp13 + 238;
  *((unsigned short *)__cil_tmp12) = *((unsigned short *)__cil_tmp14);
  return (0);
}
}
static struct mtd_blktrans_ops nftl_tr =
     {(char *)"nftl", 93, 4, 512, 0, & nftl_readblock, & nftl_writeblock, (int (*)(struct mtd_blktrans_dev *dev ,
                                                                                 unsigned long block ,
                                                                                 unsigned int nr_blocks ))0,
    (void (*)(struct mtd_blktrans_dev *dev ))0, & nftl_getgeo, (int (*)(struct mtd_blktrans_dev *dev ))0,
    (int (*)(struct mtd_blktrans_dev *dev ))0, (int (*)(struct mtd_blktrans_dev *dev ))0,
    & nftl_add_mtd, & nftl_remove_dev, {(struct list_head *)0, (struct list_head *)0},
    {(struct list_head *)0, (struct list_head *)0}, & __this_module};
static int init_nftl(void) __attribute__((__section__(".init.text"), __no_instrument_function__)) ;
static int init_nftl(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = register_mtd_blktrans(& nftl_tr);
  }
  return (tmp___7);
}
}
static void cleanup_nftl(void) __attribute__((__section__(".exit.text"), __no_instrument_function__)) ;
static void cleanup_nftl(void)
{
  {
  {
  deregister_mtd_blktrans(& nftl_tr);
  }
  return;
}
}
int init_module(void)
{ int tmp___7 ;
  {
  {
  tmp___7 = init_nftl();
  }
  return (tmp___7);
}
}
void cleanup_module(void)
{
  {
  {
  cleanup_nftl();
  }
  return;
}
}
static char const __mod_license827[12] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'l', (char const )'i', (char const )'c', (char const )'e',
        (char const )'n', (char const )'s', (char const )'e', (char const )'=',
        (char const )'G', (char const )'P', (char const )'L', (char const )'\000'};
static char const __mod_author828[98] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'u', (char const )'t', (char const )'h',
        (char const )'o', (char const )'r', (char const )'=', (char const )'D',
        (char const )'a', (char const )'v', (char const )'i', (char const )'d',
        (char const )' ', (char const )'W', (char const )'o', (char const )'o',
        (char const )'d', (char const )'h', (char const )'o', (char const )'u',
        (char const )'s', (char const )'e', (char const )' ', (char const )'<',
        (char const )'d', (char const )'w', (char const )'m', (char const )'w',
        (char const )'2', (char const )'@', (char const )'i', (char const )'n',
        (char const )'f', (char const )'r', (char const )'a', (char const )'d',
        (char const )'e', (char const )'a', (char const )'d', (char const )'.',
        (char const )'o', (char const )'r', (char const )'g', (char const )'>',
        (char const )',', (char const )' ', (char const )'F', (char const )'a',
        (char const )'b', (char const )'r', (char const )'i', (char const )'c',
        (char const )'e', (char const )' ', (char const )'B', (char const )'e',
        (char const )'l', (char const )'l', (char const )'a', (char const )'r',
        (char const )'d', (char const )' ', (char const )'<', (char const )'f',
        (char const )'a', (char const )'b', (char const )'r', (char const )'i',
        (char const )'c', (char const )'e', (char const )'.', (char const )'b',
        (char const )'e', (char const )'l', (char const )'l', (char const )'a',
        (char const )'r', (char const )'d', (char const )'@', (char const )'n',
        (char const )'e', (char const )'t', (char const )'g', (char const )'e',
        (char const )'m', (char const )'.', (char const )'c', (char const )'o',
        (char const )'m', (char const )'>', (char const )' ', (char const )'e',
        (char const )'t', (char const )' ', (char const )'a', (char const )'l',
        (char const )'.', (char const )'\000'};
static char const __mod_description829[108] __attribute__((__used__, __unused__,
__section__(".modinfo"), __aligned__(1))) =
  { (char const )'d', (char const )'e', (char const )'s', (char const )'c',
        (char const )'r', (char const )'i', (char const )'p', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )'=',
        (char const )'S', (char const )'u', (char const )'p', (char const )'p',
        (char const )'o', (char const )'r', (char const )'t', (char const )' ',
        (char const )'c', (char const )'o', (char const )'d', (char const )'e',
        (char const )' ', (char const )'f', (char const )'o', (char const )'r',
        (char const )' ', (char const )'N', (char const )'A', (char const )'N',
        (char const )'D', (char const )' ', (char const )'F', (char const )'l',
        (char const )'a', (char const )'s', (char const )'h', (char const )' ',
        (char const )'T', (char const )'r', (char const )'a', (char const )'n',
        (char const )'s', (char const )'l', (char const )'a', (char const )'t',
        (char const )'i', (char const )'o', (char const )'n', (char const )' ',
        (char const )'L', (char const )'a', (char const )'y', (char const )'e',
        (char const )'r', (char const )',', (char const )' ', (char const )'u',
        (char const )'s', (char const )'e', (char const )'d', (char const )' ',
        (char const )'o', (char const )'n', (char const )' ', (char const )'M',
        (char const )'-', (char const )'S', (char const )'y', (char const )'s',
        (char const )'t', (char const )'e', (char const )'m', (char const )'s',
        (char const )' ', (char const )'D', (char const )'i', (char const )'s',
        (char const )'k', (char const )'O', (char const )'n', (char const )'C',
        (char const )'h', (char const )'i', (char const )'p', (char const )' ',
        (char const )'2', (char const )'0', (char const )'0', (char const )'0',
        (char const )' ', (char const )'a', (char const )'n', (char const )'d',
        (char const )' ', (char const )'M', (char const )'i', (char const )'l',
        (char const )'l', (char const )'e', (char const )'n', (char const )'n',
        (char const )'i', (char const )'u', (char const )'m', (char const )'\000'};
static char const __mod_alias830[23] __attribute__((__used__, __unused__, __section__(".modinfo"),
__aligned__(1))) =
  { (char const )'a', (char const )'l', (char const )'i', (char const )'a',
        (char const )'s', (char const )'=', (char const )'b', (char const )'l',
        (char const )'o', (char const )'c', (char const )'k', (char const )'-',
        (char const )'m', (char const )'a', (char const )'j', (char const )'o',
        (char const )'r', (char const )'-', (char const )'9', (char const )'3',
        (char const )'-', (char const )'*', (char const )'\000'};
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void main(void)
{ struct mtd_blktrans_dev *var_group1 ;
  struct hd_geometry *var_group2 ;
  unsigned long var_nftl_readblock_10_p1 ;
  char *var_nftl_readblock_10_p2 ;
  unsigned long var_nftl_writeblock_9_p1 ;
  char *var_nftl_writeblock_9_p2 ;
  struct mtd_blktrans_ops *var_group3 ;
  struct mtd_info *var_group4 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  tmp___7 = init_nftl();
  }
  if (tmp___7) {
    goto ldv_final;
  } else {
  }
  {
  while (1) {
    while_continue: ;
    {
    tmp___9 = __VERIFIER_nondet_int();
    }
    if (tmp___9) {
    } else {
      goto while_break;
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
    } else {
      {
      goto switch_default;
      if (0) {
        case_0:
        {
        nftl_getgeo(var_group1, var_group2);
        }
        goto switch_break;
        case_1:
        {
        nftl_readblock(var_group1, var_nftl_readblock_10_p1, var_nftl_readblock_10_p2);
        }
        goto switch_break;
        case_2:
        {
        nftl_writeblock(var_group1, var_nftl_writeblock_9_p1, var_nftl_writeblock_9_p2);
        }
        goto switch_break;
        case_3:
        {
        nftl_add_mtd(var_group3, var_group4);
        }
        goto switch_break;
        case_4:
        {
        nftl_remove_dev(var_group1);
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
  cleanup_nftl();
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
extern void *memcpy(void *to , void const *from , size_t len ) ;
extern int mtd_erase(struct mtd_info *mtd , struct erase_info *instr ) ;
extern int mtd_block_isbad(struct mtd_info *mtd , loff_t ofs ) ;
extern int mtd_block_markbad(struct mtd_info *mtd , loff_t ofs ) ;
static int find_boot_record(struct NFTLrecord *nftl ) ;
static int warncount = 5;
static int find_boot_record(struct NFTLrecord *nftl )
{ struct nftl_uci1 h1 ;
  unsigned int block ;
  unsigned int boot_record_count ;
  size_t retlen ;
  u8 buf[512] ;
  struct NFTLMediaHeader *mh ;
  struct mtd_info *mtd ;
  unsigned int i ;
  int ret ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  size_t __len ;
  void *__ret ;
  void *tmp___10 ;
  void *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
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
  struct mtd_info *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned long __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  __u32 __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  struct mtd_info *__cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  uint64_t __cil_tmp44 ;
  u32 __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  unsigned long __cil_tmp47 ;
  unsigned long __cil_tmp48 ;
  unsigned long __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned int __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  unsigned long __cil_tmp54 ;
  __u32 __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  loff_t __cil_tmp57 ;
  size_t __cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  u8 *__cil_tmp61 ;
  size_t *__cil_tmp62 ;
  size_t __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  __u32 __cil_tmp66 ;
  unsigned int __cil_tmp67 ;
  unsigned long __cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  struct mtd_info *__cil_tmp71 ;
  unsigned long __cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  int __cil_tmp74 ;
  size_t *__cil_tmp75 ;
  size_t __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  u8 *__cil_tmp79 ;
  void const *__cil_tmp80 ;
  void const *__cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  unsigned long __cil_tmp83 ;
  __u32 __cil_tmp84 ;
  unsigned int __cil_tmp85 ;
  unsigned int __cil_tmp86 ;
  unsigned int __cil_tmp87 ;
  loff_t __cil_tmp88 ;
  size_t __cil_tmp89 ;
  char *__cil_tmp90 ;
  uint8_t *__cil_tmp91 ;
  unsigned long __cil_tmp92 ;
  unsigned long __cil_tmp93 ;
  __u32 __cil_tmp94 ;
  unsigned int __cil_tmp95 ;
  unsigned long __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  unsigned long __cil_tmp98 ;
  struct mtd_info *__cil_tmp99 ;
  unsigned long __cil_tmp100 ;
  unsigned long __cil_tmp101 ;
  int __cil_tmp102 ;
  void const *__cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  u8 *__cil_tmp106 ;
  void const *__cil_tmp107 ;
  unsigned long __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  __u32 __cil_tmp110 ;
  unsigned long __cil_tmp111 ;
  unsigned long __cil_tmp112 ;
  __u16 __cil_tmp113 ;
  __u32 __cil_tmp114 ;
  __u32 __cil_tmp115 ;
  unsigned long __cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  __u32 __cil_tmp118 ;
  unsigned int __cil_tmp119 ;
  unsigned long __cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  unsigned long __cil_tmp123 ;
  __u16 *__cil_tmp124 ;
  __u16 *__cil_tmp125 ;
  void *__cil_tmp126 ;
  unsigned long __cil_tmp127 ;
  unsigned long __cil_tmp128 ;
  u8 *__cil_tmp129 ;
  void const *__cil_tmp130 ;
  void *__cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  u8 *__cil_tmp134 ;
  void const *__cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  unsigned long __cil_tmp138 ;
  unsigned long __cil_tmp139 ;
  __u16 __cil_tmp140 ;
  unsigned long __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned int __cil_tmp143 ;
  unsigned long __cil_tmp144 ;
  unsigned long __cil_tmp145 ;
  unsigned int __cil_tmp146 ;
  unsigned int __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  unsigned int __cil_tmp150 ;
  unsigned long __cil_tmp151 ;
  unsigned long __cil_tmp152 ;
  unsigned int __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  unsigned long __cil_tmp156 ;
  unsigned long __cil_tmp157 ;
  __u32 __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  unsigned long __cil_tmp160 ;
  __u32 __cil_tmp161 ;
  __u32 __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  unsigned long __cil_tmp164 ;
  unsigned int __cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  unsigned int __cil_tmp168 ;
  unsigned int __cil_tmp169 ;
  unsigned int __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  unsigned long __cil_tmp172 ;
  __u16 __cil_tmp173 ;
  unsigned int __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  unsigned long __cil_tmp176 ;
  __u16 __cil_tmp177 ;
  int __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  unsigned long __cil_tmp180 ;
  unsigned int __cil_tmp181 ;
  unsigned long __cil_tmp182 ;
  unsigned long __cil_tmp183 ;
  unsigned int __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  unsigned long __cil_tmp186 ;
  unsigned long __cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  __u32 __cil_tmp190 ;
  __u32 __cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  __u16 __cil_tmp194 ;
  __u32 __cil_tmp195 ;
  __u32 __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  __u16 __cil_tmp201 ;
  int __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  unsigned long __cil_tmp204 ;
  __u16 __cil_tmp205 ;
  int __cil_tmp206 ;
  int __cil_tmp207 ;
  unsigned long __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  unsigned long __cil_tmp211 ;
  unsigned int __cil_tmp212 ;
  unsigned int __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  unsigned long __cil_tmp215 ;
  unsigned int __cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  unsigned long __cil_tmp219 ;
  unsigned long __cil_tmp220 ;
  unsigned long __cil_tmp221 ;
  unsigned long __cil_tmp222 ;
  __u16 *__cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned int __cil_tmp226 ;
  unsigned long __cil_tmp227 ;
  unsigned long __cil_tmp228 ;
  unsigned long __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  unsigned long __cil_tmp232 ;
  __u16 *__cil_tmp233 ;
  unsigned long __cil_tmp234 ;
  unsigned long __cil_tmp235 ;
  __u16 *__cil_tmp236 ;
  void const *__cil_tmp237 ;
  unsigned long __cil_tmp238 ;
  unsigned long __cil_tmp239 ;
  unsigned int __cil_tmp240 ;
  unsigned long __cil_tmp241 ;
  unsigned long __cil_tmp242 ;
  __u16 *__cil_tmp243 ;
  __u16 *__cil_tmp244 ;
  unsigned long __cil_tmp245 ;
  unsigned long __cil_tmp246 ;
  unsigned int __cil_tmp247 ;
  unsigned long __cil_tmp248 ;
  unsigned long __cil_tmp249 ;
  __u16 *__cil_tmp250 ;
  __u16 *__cil_tmp251 ;
  unsigned long __cil_tmp252 ;
  unsigned long __cil_tmp253 ;
  __u16 *__cil_tmp254 ;
  __u16 *__cil_tmp255 ;
  unsigned long __cil_tmp256 ;
  unsigned long __cil_tmp257 ;
  unsigned int __cil_tmp258 ;
  unsigned long __cil_tmp259 ;
  unsigned long __cil_tmp260 ;
  unsigned long __cil_tmp261 ;
  struct mtd_info *__cil_tmp262 ;
  unsigned long __cil_tmp263 ;
  unsigned long __cil_tmp264 ;
  __u32 __cil_tmp265 ;
  unsigned int __cil_tmp266 ;
  loff_t __cil_tmp267 ;
  unsigned long __cil_tmp268 ;
  unsigned long __cil_tmp269 ;
  __u16 *__cil_tmp270 ;
  __u16 *__cil_tmp271 ;
  unsigned long __cil_tmp272 ;
  unsigned long __cil_tmp273 ;
  {
  boot_record_count = 0U;
  __cil_tmp20 = (unsigned long )nftl;
  __cil_tmp21 = __cil_tmp20 + 216;
  mh = (struct NFTLMediaHeader *)__cil_tmp21;
  __cil_tmp22 = 0 + 24;
  __cil_tmp23 = (unsigned long )nftl;
  __cil_tmp24 = __cil_tmp23 + __cil_tmp22;
  mtd = *((struct mtd_info **)__cil_tmp24);
  __cil_tmp25 = (unsigned long )nftl;
  __cil_tmp26 = __cil_tmp25 + 212;
  __cil_tmp27 = 0 + 24;
  __cil_tmp28 = (unsigned long )nftl;
  __cil_tmp29 = __cil_tmp28 + __cil_tmp27;
  __cil_tmp30 = *((struct mtd_info **)__cil_tmp29);
  __cil_tmp31 = (unsigned long )__cil_tmp30;
  __cil_tmp32 = __cil_tmp31 + 16;
  *((__u32 *)__cil_tmp26) = *((uint32_t *)__cil_tmp32);
  __cil_tmp33 = (unsigned long )nftl;
  __cil_tmp34 = __cil_tmp33 + 280;
  __cil_tmp35 = (unsigned long )nftl;
  __cil_tmp36 = __cil_tmp35 + 212;
  __cil_tmp37 = *((__u32 *)__cil_tmp36);
  __cil_tmp38 = 0 + 24;
  __cil_tmp39 = (unsigned long )nftl;
  __cil_tmp40 = __cil_tmp39 + __cil_tmp38;
  __cil_tmp41 = *((struct mtd_info **)__cil_tmp40);
  __cil_tmp42 = (unsigned long )__cil_tmp41;
  __cil_tmp43 = __cil_tmp42 + 8;
  __cil_tmp44 = *((uint64_t *)__cil_tmp43);
  __cil_tmp45 = (u32 )__cil_tmp44;
  *((unsigned int *)__cil_tmp34) = __cil_tmp45 / __cil_tmp37;
  __cil_tmp46 = (unsigned long )nftl;
  __cil_tmp47 = __cil_tmp46 + 208;
  *((__u16 *)__cil_tmp47) = (__u16 )65535;
  __cil_tmp48 = (unsigned long )nftl;
  __cil_tmp49 = __cil_tmp48 + 210;
  *((__u16 *)__cil_tmp49) = (__u16 )65535;
  block = 0U;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp50 = (unsigned long )nftl;
    __cil_tmp51 = __cil_tmp50 + 280;
    __cil_tmp52 = *((unsigned int *)__cil_tmp51);
    if (block < __cil_tmp52) {
    } else {
      goto while_break;
    }
    }
    {
    __cil_tmp53 = (unsigned long )nftl;
    __cil_tmp54 = __cil_tmp53 + 212;
    __cil_tmp55 = *((__u32 *)__cil_tmp54);
    __cil_tmp56 = block * __cil_tmp55;
    __cil_tmp57 = (loff_t )__cil_tmp56;
    __cil_tmp58 = (size_t )512;
    __cil_tmp59 = 0 * 1UL;
    __cil_tmp60 = (unsigned long )(buf) + __cil_tmp59;
    __cil_tmp61 = (u8 *)__cil_tmp60;
    ret = mtd_read(mtd, __cil_tmp57, __cil_tmp58, & retlen, __cil_tmp61);
    }
    {
    __cil_tmp62 = & retlen;
    __cil_tmp63 = *__cil_tmp62;
    if (__cil_tmp63 != 512UL) {
      if (warncount) {
        {
        __cil_tmp64 = (unsigned long )nftl;
        __cil_tmp65 = __cil_tmp64 + 212;
        __cil_tmp66 = *((__u32 *)__cil_tmp65);
        __cil_tmp67 = block * __cil_tmp66;
        __cil_tmp68 = 0 + 24;
        __cil_tmp69 = (unsigned long )nftl;
        __cil_tmp70 = __cil_tmp69 + __cil_tmp68;
        __cil_tmp71 = *((struct mtd_info **)__cil_tmp70);
        __cil_tmp72 = (unsigned long )__cil_tmp71;
        __cil_tmp73 = __cil_tmp72 + 64;
        __cil_tmp74 = *((int *)__cil_tmp73);
        printk("<4>Block read at 0x%x of mtd%d failed: %d\n", __cil_tmp67, __cil_tmp74,
               ret);
        warncount = warncount - 1;
        }
        if (warncount) {
        } else {
          {
          printk("<4>Further failures for this block will not be printed\n");
          }
        }
      } else {
      }
      goto __Cont;
    } else {
    }
    }
    {
    __cil_tmp75 = & retlen;
    __cil_tmp76 = *__cil_tmp75;
    if (__cil_tmp76 < 6UL) {
      goto __Cont;
    } else {
      {
      __cil_tmp77 = 0 * 1UL;
      __cil_tmp78 = (unsigned long )(buf) + __cil_tmp77;
      __cil_tmp79 = (u8 *)__cil_tmp78;
      __cil_tmp80 = (void const *)__cil_tmp79;
      __cil_tmp81 = (void const *)"ANAND";
      tmp___7 = memcmp(__cil_tmp80, __cil_tmp81, 6UL);
      }
      if (tmp___7) {
        goto __Cont;
      } else {
      }
    }
    }
    {
    __cil_tmp82 = (unsigned long )nftl;
    __cil_tmp83 = __cil_tmp82 + 212;
    __cil_tmp84 = *((__u32 *)__cil_tmp83);
    __cil_tmp85 = block * __cil_tmp84;
    __cil_tmp86 = __cil_tmp85 + 512U;
    __cil_tmp87 = __cil_tmp86 + 8U;
    __cil_tmp88 = (loff_t )__cil_tmp87;
    __cil_tmp89 = (size_t )8;
    __cil_tmp90 = (char *)(& h1);
    __cil_tmp91 = (uint8_t *)__cil_tmp90;
    tmp___8 = nftl_read_oob(mtd, __cil_tmp88, __cil_tmp89, & retlen, __cil_tmp91);
    ret = tmp___8 < 0;
    }
    if (ret) {
      {
      __cil_tmp92 = (unsigned long )nftl;
      __cil_tmp93 = __cil_tmp92 + 212;
      __cil_tmp94 = *((__u32 *)__cil_tmp93);
      __cil_tmp95 = block * __cil_tmp94;
      __cil_tmp96 = 0 + 24;
      __cil_tmp97 = (unsigned long )nftl;
      __cil_tmp98 = __cil_tmp97 + __cil_tmp96;
      __cil_tmp99 = *((struct mtd_info **)__cil_tmp98);
      __cil_tmp100 = (unsigned long )__cil_tmp99;
      __cil_tmp101 = __cil_tmp100 + 64;
      __cil_tmp102 = *((int *)__cil_tmp101);
      printk("<4>ANAND header found at 0x%x in mtd%d, but OOB data read failed (err %d)\n",
             __cil_tmp95, __cil_tmp102, ret);
      }
      goto __Cont;
    } else {
    }
    if (boot_record_count) {
      {
      __cil_tmp103 = (void const *)mh;
      __cil_tmp104 = 0 * 1UL;
      __cil_tmp105 = (unsigned long )(buf) + __cil_tmp104;
      __cil_tmp106 = (u8 *)__cil_tmp105;
      __cil_tmp107 = (void const *)__cil_tmp106;
      tmp___9 = memcmp(__cil_tmp103, __cil_tmp107, 15UL);
      }
      if (tmp___9) {
        {
        __cil_tmp108 = (unsigned long )nftl;
        __cil_tmp109 = __cil_tmp108 + 212;
        __cil_tmp110 = *((__u32 *)__cil_tmp109);
        __cil_tmp111 = (unsigned long )nftl;
        __cil_tmp112 = __cil_tmp111 + 208;
        __cil_tmp113 = *((__u16 *)__cil_tmp112);
        __cil_tmp114 = (__u32 )__cil_tmp113;
        __cil_tmp115 = __cil_tmp114 * __cil_tmp110;
        __cil_tmp116 = (unsigned long )nftl;
        __cil_tmp117 = __cil_tmp116 + 212;
        __cil_tmp118 = *((__u32 *)__cil_tmp117);
        __cil_tmp119 = block * __cil_tmp118;
        printk("<5>NFTL Media Headers at 0x%x and 0x%x disagree.\n", __cil_tmp115,
               __cil_tmp119);
        }
        if (boot_record_count < 2U) {
          return (-1);
        } else {
        }
        goto __Cont;
      } else {
      }
      if (boot_record_count == 1U) {
        __cil_tmp120 = (unsigned long )nftl;
        __cil_tmp121 = __cil_tmp120 + 210;
        *((__u16 *)__cil_tmp121) = (__u16 )block;
      } else {
      }
      __cil_tmp122 = (unsigned long )nftl;
      __cil_tmp123 = __cil_tmp122 + 272;
      __cil_tmp124 = *((__u16 **)__cil_tmp123);
      __cil_tmp125 = __cil_tmp124 + block;
      *__cil_tmp125 = (__u16 )65532;
      boot_record_count = boot_record_count + 1U;
      goto __Cont;
    } else {
    }
    __len = 15UL;
    if (__len >= 64UL) {
      {
      __cil_tmp126 = (void *)mh;
      __cil_tmp127 = 0 * 1UL;
      __cil_tmp128 = (unsigned long )(buf) + __cil_tmp127;
      __cil_tmp129 = (u8 *)__cil_tmp128;
      __cil_tmp130 = (void const *)__cil_tmp129;
      __ret = memcpy(__cil_tmp126, __cil_tmp130, __len);
      }
    } else {
      {
      __cil_tmp131 = (void *)mh;
      __cil_tmp132 = 0 * 1UL;
      __cil_tmp133 = (unsigned long )(buf) + __cil_tmp132;
      __cil_tmp134 = (u8 *)__cil_tmp133;
      __cil_tmp135 = (void const *)__cil_tmp134;
      __ret = memcpy(__cil_tmp131, __cil_tmp135, __len);
      }
    }
    __cil_tmp136 = (unsigned long )nftl;
    __cil_tmp137 = __cil_tmp136 + 284;
    __cil_tmp138 = (unsigned long )mh;
    __cil_tmp139 = __cil_tmp138 + 8;
    __cil_tmp140 = *((__u16 *)__cil_tmp139);
    *((unsigned int *)__cil_tmp137) = (unsigned int )__cil_tmp140;
    {
    __cil_tmp141 = (unsigned long )nftl;
    __cil_tmp142 = __cil_tmp141 + 280;
    __cil_tmp143 = *((unsigned int *)__cil_tmp142);
    __cil_tmp144 = (unsigned long )nftl;
    __cil_tmp145 = __cil_tmp144 + 284;
    __cil_tmp146 = *((unsigned int *)__cil_tmp145);
    __cil_tmp147 = __cil_tmp146 + 2U;
    if (__cil_tmp147 >= __cil_tmp143) {
      {
      printk("<5>NFTL Media Header sanity check failed:\n");
      __cil_tmp148 = (unsigned long )nftl;
      __cil_tmp149 = __cil_tmp148 + 284;
      __cil_tmp150 = *((unsigned int *)__cil_tmp149);
      __cil_tmp151 = (unsigned long )nftl;
      __cil_tmp152 = __cil_tmp151 + 280;
      __cil_tmp153 = *((unsigned int *)__cil_tmp152);
      printk("<5>nb_boot_blocks (%d) + 2 > nb_blocks (%d)\n", __cil_tmp150, __cil_tmp153);
      }
      return (-1);
    } else {
    }
    }
    __cil_tmp154 = (unsigned long )nftl;
    __cil_tmp155 = __cil_tmp154 + 240;
    __cil_tmp156 = (unsigned long )nftl;
    __cil_tmp157 = __cil_tmp156 + 212;
    __cil_tmp158 = *((__u32 *)__cil_tmp157);
    __cil_tmp159 = (unsigned long )mh;
    __cil_tmp160 = __cil_tmp159 + 10;
    __cil_tmp161 = *((__u32 *)__cil_tmp160);
    __cil_tmp162 = __cil_tmp161 / __cil_tmp158;
    *((__u16 *)__cil_tmp155) = (__u16 )__cil_tmp162;
    {
    __cil_tmp163 = (unsigned long )nftl;
    __cil_tmp164 = __cil_tmp163 + 284;
    __cil_tmp165 = *((unsigned int *)__cil_tmp164);
    __cil_tmp166 = (unsigned long )nftl;
    __cil_tmp167 = __cil_tmp166 + 280;
    __cil_tmp168 = *((unsigned int *)__cil_tmp167);
    __cil_tmp169 = __cil_tmp168 - __cil_tmp165;
    __cil_tmp170 = __cil_tmp169 - 2U;
    __cil_tmp171 = (unsigned long )nftl;
    __cil_tmp172 = __cil_tmp171 + 240;
    __cil_tmp173 = *((__u16 *)__cil_tmp172);
    __cil_tmp174 = (unsigned int )__cil_tmp173;
    if (__cil_tmp174 > __cil_tmp170) {
      {
      printk("<5>NFTL Media Header sanity check failed:\n");
      __cil_tmp175 = (unsigned long )nftl;
      __cil_tmp176 = __cil_tmp175 + 240;
      __cil_tmp177 = *((__u16 *)__cil_tmp176);
      __cil_tmp178 = (int )__cil_tmp177;
      __cil_tmp179 = (unsigned long )nftl;
      __cil_tmp180 = __cil_tmp179 + 280;
      __cil_tmp181 = *((unsigned int *)__cil_tmp180);
      __cil_tmp182 = (unsigned long )nftl;
      __cil_tmp183 = __cil_tmp182 + 284;
      __cil_tmp184 = *((unsigned int *)__cil_tmp183);
      printk("<5>numvunits (%d) > nb_blocks (%d) - nb_boot_blocks(%d) - 2\n", __cil_tmp178,
             __cil_tmp181, __cil_tmp184);
      }
      return (-1);
    } else {
    }
    }
    {
    __cil_tmp185 = 0 + 112;
    __cil_tmp186 = (unsigned long )nftl;
    __cil_tmp187 = __cil_tmp186 + __cil_tmp185;
    __cil_tmp188 = (unsigned long )nftl;
    __cil_tmp189 = __cil_tmp188 + 212;
    __cil_tmp190 = *((__u32 *)__cil_tmp189);
    __cil_tmp191 = __cil_tmp190 / 512U;
    __cil_tmp192 = (unsigned long )nftl;
    __cil_tmp193 = __cil_tmp192 + 240;
    __cil_tmp194 = *((__u16 *)__cil_tmp193);
    __cil_tmp195 = (__u32 )__cil_tmp194;
    __cil_tmp196 = __cil_tmp195 * __cil_tmp191;
    *((unsigned long *)__cil_tmp187) = (unsigned long )__cil_tmp196;
    __cil_tmp197 = (unsigned long )nftl;
    __cil_tmp198 = __cil_tmp197 + 280;
    __cil_tmp199 = (unsigned long )mh;
    __cil_tmp200 = __cil_tmp199 + 8;
    __cil_tmp201 = *((__u16 *)__cil_tmp200);
    __cil_tmp202 = (int )__cil_tmp201;
    __cil_tmp203 = (unsigned long )mh;
    __cil_tmp204 = __cil_tmp203 + 6;
    __cil_tmp205 = *((__u16 *)__cil_tmp204);
    __cil_tmp206 = (int )__cil_tmp205;
    __cil_tmp207 = __cil_tmp206 + __cil_tmp202;
    *((unsigned int *)__cil_tmp198) = (unsigned int )__cil_tmp207;
    __cil_tmp208 = (unsigned long )nftl;
    __cil_tmp209 = __cil_tmp208 + 242;
    __cil_tmp210 = (unsigned long )nftl;
    __cil_tmp211 = __cil_tmp210 + 280;
    __cil_tmp212 = *((unsigned int *)__cil_tmp211);
    __cil_tmp213 = __cil_tmp212 - 1U;
    *((__u16 *)__cil_tmp209) = (__u16 )__cil_tmp213;
    __cil_tmp214 = (unsigned long )nftl;
    __cil_tmp215 = __cil_tmp214 + 280;
    __cil_tmp216 = *((unsigned int *)__cil_tmp215);
    __cil_tmp217 = (unsigned long )__cil_tmp216;
    __cil_tmp218 = __cil_tmp217 * 2UL;
    tmp___10 = kmalloc(__cil_tmp218, 208U);
    __cil_tmp219 = (unsigned long )nftl;
    __cil_tmp220 = __cil_tmp219 + 264;
    *((__u16 **)__cil_tmp220) = (__u16 *)tmp___10;
    }
    {
    __cil_tmp221 = (unsigned long )nftl;
    __cil_tmp222 = __cil_tmp221 + 264;
    __cil_tmp223 = *((__u16 **)__cil_tmp222);
    if (! __cil_tmp223) {
      {
      printk("<5>NFTL: allocation of EUNtable failed\n");
      }
      return (-12);
    } else {
    }
    }
    {
    __cil_tmp224 = (unsigned long )nftl;
    __cil_tmp225 = __cil_tmp224 + 280;
    __cil_tmp226 = *((unsigned int *)__cil_tmp225);
    __cil_tmp227 = (unsigned long )__cil_tmp226;
    __cil_tmp228 = __cil_tmp227 * 2UL;
    tmp___11 = kmalloc(__cil_tmp228, 208U);
    __cil_tmp229 = (unsigned long )nftl;
    __cil_tmp230 = __cil_tmp229 + 272;
    *((__u16 **)__cil_tmp230) = (__u16 *)tmp___11;
    }
    {
    __cil_tmp231 = (unsigned long )nftl;
    __cil_tmp232 = __cil_tmp231 + 272;
    __cil_tmp233 = *((__u16 **)__cil_tmp232);
    if (! __cil_tmp233) {
      {
      __cil_tmp234 = (unsigned long )nftl;
      __cil_tmp235 = __cil_tmp234 + 264;
      __cil_tmp236 = *((__u16 **)__cil_tmp235);
      __cil_tmp237 = (void const *)__cil_tmp236;
      kfree(__cil_tmp237);
      printk("<5>NFTL: allocation of ReplUnitTable failed\n");
      }
      return (-12);
    } else {
    }
    }
    i = 0U;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp238 = (unsigned long )nftl;
      __cil_tmp239 = __cil_tmp238 + 284;
      __cil_tmp240 = *((unsigned int *)__cil_tmp239);
      if (i < __cil_tmp240) {
      } else {
        goto while_break___0;
      }
      }
      __cil_tmp241 = (unsigned long )nftl;
      __cil_tmp242 = __cil_tmp241 + 272;
      __cil_tmp243 = *((__u16 **)__cil_tmp242);
      __cil_tmp244 = __cil_tmp243 + i;
      *__cil_tmp244 = (__u16 )65532;
      i = i + 1U;
    }
    while_break___0: ;
    }
    {
    while (1) {
      while_continue___1: ;
      {
      __cil_tmp245 = (unsigned long )nftl;
      __cil_tmp246 = __cil_tmp245 + 280;
      __cil_tmp247 = *((unsigned int *)__cil_tmp246);
      if (i < __cil_tmp247) {
      } else {
        goto while_break___1;
      }
      }
      __cil_tmp248 = (unsigned long )nftl;
      __cil_tmp249 = __cil_tmp248 + 272;
      __cil_tmp250 = *((__u16 **)__cil_tmp249);
      __cil_tmp251 = __cil_tmp250 + i;
      *__cil_tmp251 = (__u16 )65533;
      i = i + 1U;
    }
    while_break___1: ;
    }
    __cil_tmp252 = (unsigned long )nftl;
    __cil_tmp253 = __cil_tmp252 + 272;
    __cil_tmp254 = *((__u16 **)__cil_tmp253);
    __cil_tmp255 = __cil_tmp254 + block;
    *__cil_tmp255 = (__u16 )65532;
    i = 0U;
    {
    while (1) {
      while_continue___2: ;
      {
      __cil_tmp256 = (unsigned long )nftl;
      __cil_tmp257 = __cil_tmp256 + 280;
      __cil_tmp258 = *((unsigned int *)__cil_tmp257);
      if (i < __cil_tmp258) {
      } else {
        goto while_break___2;
      }
      }
      {
      __cil_tmp259 = 0 + 24;
      __cil_tmp260 = (unsigned long )nftl;
      __cil_tmp261 = __cil_tmp260 + __cil_tmp259;
      __cil_tmp262 = *((struct mtd_info **)__cil_tmp261);
      __cil_tmp263 = (unsigned long )nftl;
      __cil_tmp264 = __cil_tmp263 + 212;
      __cil_tmp265 = *((__u32 *)__cil_tmp264);
      __cil_tmp266 = i * __cil_tmp265;
      __cil_tmp267 = (loff_t )__cil_tmp266;
      tmp___12 = mtd_block_isbad(__cil_tmp262, __cil_tmp267);
      }
      if (tmp___12) {
        __cil_tmp268 = (unsigned long )nftl;
        __cil_tmp269 = __cil_tmp268 + 272;
        __cil_tmp270 = *((__u16 **)__cil_tmp269);
        __cil_tmp271 = __cil_tmp270 + i;
        *__cil_tmp271 = (__u16 )65532;
      } else {
      }
      i = i + 1U;
    }
    while_break___2: ;
    }
    __cil_tmp272 = (unsigned long )nftl;
    __cil_tmp273 = __cil_tmp272 + 208;
    *((__u16 *)__cil_tmp273) = (__u16 )block;
    boot_record_count = boot_record_count + 1U;
    __Cont:
    block = block + 1U;
  }
  while_break: ;
  }
  if (boot_record_count) {
    tmp___13 = 0;
  } else {
    tmp___13 = -1;
  }
  return (tmp___13);
}
}
static int memcmpb(void *a , int c , int n )
{ int i ;
  unsigned char *__cil_tmp5 ;
  unsigned char *__cil_tmp6 ;
  unsigned char __cil_tmp7 ;
  int __cil_tmp8 ;
  {
  i = 0;
  {
  while (1) {
    while_continue: ;
    if (i < n) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp5 = (unsigned char *)a;
    __cil_tmp6 = __cil_tmp5 + i;
    __cil_tmp7 = *__cil_tmp6;
    __cil_tmp8 = (int )__cil_tmp7;
    if (c != __cil_tmp8) {
      return (1);
    } else {
    }
    }
    i = i + 1;
  }
  while_break: ;
  }
  return (0);
}
}
static int check_free_sectors(struct NFTLrecord *nftl , unsigned int address , int len ,
                              int check_oob )
{ u8 *buf ;
  unsigned long __lengthofbuf ;
  void *tmp___7 ;
  struct mtd_info *mtd ;
  size_t retlen ;
  int i ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  struct mtd_info *__cil_tmp18 ;
  unsigned long __cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  uint32_t __cil_tmp21 ;
  uint32_t __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned long __cil_tmp25 ;
  unsigned long __cil_tmp26 ;
  loff_t __cil_tmp27 ;
  size_t __cil_tmp28 ;
  void *__cil_tmp29 ;
  loff_t __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  uint32_t __cil_tmp33 ;
  size_t __cil_tmp34 ;
  u8 *__cil_tmp35 ;
  u8 *__cil_tmp36 ;
  void *__cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  uint32_t __cil_tmp40 ;
  int __cil_tmp41 ;
  {
  {
  __cil_tmp15 = 0 + 24;
  __cil_tmp16 = (unsigned long )nftl;
  __cil_tmp17 = __cil_tmp16 + __cil_tmp15;
  __cil_tmp18 = *((struct mtd_info **)__cil_tmp17);
  __cil_tmp19 = (unsigned long )__cil_tmp18;
  __cil_tmp20 = __cil_tmp19 + 28;
  __cil_tmp21 = *((uint32_t *)__cil_tmp20);
  __cil_tmp22 = 512U + __cil_tmp21;
  __lengthofbuf = (unsigned long )__cil_tmp22;
  __cil_tmp23 = 1UL * __lengthofbuf;
  tmp___7 = __builtin_alloca(__cil_tmp23);
  buf = (u8 *)tmp___7;
  __cil_tmp24 = 0 + 24;
  __cil_tmp25 = (unsigned long )nftl;
  __cil_tmp26 = __cil_tmp25 + __cil_tmp24;
  mtd = *((struct mtd_info **)__cil_tmp26);
  i = 0;
  }
  {
  while (1) {
    while_continue: ;
    if (i < len) {
    } else {
      goto while_break;
    }
    {
    __cil_tmp27 = (loff_t )address;
    __cil_tmp28 = (size_t )512;
    tmp___8 = mtd_read(mtd, __cil_tmp27, __cil_tmp28, & retlen, buf);
    }
    if (tmp___8) {
      return (-1);
    } else {
    }
    {
    __cil_tmp29 = (void *)buf;
    tmp___9 = memcmpb(__cil_tmp29, 255, 512);
    }
    if (tmp___9 != 0) {
      return (-1);
    } else {
    }
    if (check_oob) {
      {
      __cil_tmp30 = (loff_t )address;
      __cil_tmp31 = (unsigned long )mtd;
      __cil_tmp32 = __cil_tmp31 + 28;
      __cil_tmp33 = *((uint32_t *)__cil_tmp32);
      __cil_tmp34 = (size_t )__cil_tmp33;
      __cil_tmp35 = buf + 512;
      tmp___10 = nftl_read_oob(mtd, __cil_tmp30, __cil_tmp34, & retlen, __cil_tmp35);
      }
      if (tmp___10 < 0) {
        return (-1);
      } else {
      }
      {
      __cil_tmp36 = buf + 512;
      __cil_tmp37 = (void *)__cil_tmp36;
      __cil_tmp38 = (unsigned long )mtd;
      __cil_tmp39 = __cil_tmp38 + 28;
      __cil_tmp40 = *((uint32_t *)__cil_tmp39);
      __cil_tmp41 = (int )__cil_tmp40;
      tmp___11 = memcmpb(__cil_tmp37, 255, __cil_tmp41);
      }
      if (tmp___11 != 0) {
        return (-1);
      } else {
      }
    } else {
    }
    address = address + 512U;
    i = i + 512;
  }
  while_break: ;
  }
  return (0);
}
}
int NFTL_formatblock(struct NFTLrecord *nftl , int block )
{ size_t retlen ;
  unsigned int nb_erases ;
  unsigned int erase_mark ;
  struct nftl_uci1 uci ;
  struct erase_info *instr ;
  struct mtd_info *mtd ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned long __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  __u32 __cil_tmp20 ;
  __u32 __cil_tmp21 ;
  __u32 __cil_tmp22 ;
  __u32 __cil_tmp23 ;
  loff_t __cil_tmp24 ;
  size_t __cil_tmp25 ;
  char *__cil_tmp26 ;
  uint8_t *__cil_tmp27 ;
  unsigned long __cil_tmp28 ;
  __u16 __cil_tmp29 ;
  int __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u16 __cil_tmp32 ;
  int __cil_tmp33 ;
  int __cil_tmp34 ;
  __le16 __cil_tmp35 ;
  unsigned long __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  struct nftl_uci1 *__cil_tmp38 ;
  void *__cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  unsigned long __cil_tmp46 ;
  __u32 __cil_tmp47 ;
  __u32 __cil_tmp48 ;
  __u32 __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  __u32 __cil_tmp54 ;
  unsigned long __cil_tmp55 ;
  unsigned long __cil_tmp56 ;
  u_char __cil_tmp57 ;
  int __cil_tmp58 ;
  struct nftl_uci1 *__cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  uint64_t __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  unsigned long __cil_tmp65 ;
  __u32 __cil_tmp66 ;
  int __cil_tmp67 ;
  struct nftl_uci1 *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  __u32 __cil_tmp71 ;
  __u32 __cil_tmp72 ;
  __u32 __cil_tmp73 ;
  __u32 __cil_tmp74 ;
  __u32 __cil_tmp75 ;
  loff_t __cil_tmp76 ;
  size_t __cil_tmp77 ;
  char *__cil_tmp78 ;
  uint8_t *__cil_tmp79 ;
  unsigned long __cil_tmp80 ;
  unsigned long __cil_tmp81 ;
  unsigned long __cil_tmp82 ;
  struct mtd_info *__cil_tmp83 ;
  unsigned long __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  uint64_t __cil_tmp86 ;
  loff_t __cil_tmp87 ;
  {
  {
  __cil_tmp12 = (unsigned long )nftl;
  __cil_tmp13 = __cil_tmp12 + 288;
  instr = (struct erase_info *)__cil_tmp13;
  __cil_tmp14 = 0 + 24;
  __cil_tmp15 = (unsigned long )nftl;
  __cil_tmp16 = __cil_tmp15 + __cil_tmp14;
  mtd = *((struct mtd_info **)__cil_tmp16);
  __cil_tmp17 = (unsigned long )nftl;
  __cil_tmp18 = __cil_tmp17 + 212;
  __cil_tmp19 = *((__u32 *)__cil_tmp18);
  __cil_tmp20 = (__u32 )block;
  __cil_tmp21 = __cil_tmp20 * __cil_tmp19;
  __cil_tmp22 = __cil_tmp21 + 512U;
  __cil_tmp23 = __cil_tmp22 + 8U;
  __cil_tmp24 = (loff_t )__cil_tmp23;
  __cil_tmp25 = (size_t )8;
  __cil_tmp26 = (char *)(& uci);
  __cil_tmp27 = (uint8_t *)__cil_tmp26;
  tmp___7 = nftl_read_oob(mtd, __cil_tmp24, __cil_tmp25, & retlen, __cil_tmp27);
  }
  if (tmp___7 < 0) {
    goto default_uci1;
  } else {
  }
  __cil_tmp28 = (unsigned long )(& uci) + 6;
  __cil_tmp29 = *((__u16 *)__cil_tmp28);
  __cil_tmp30 = (int )__cil_tmp29;
  __cil_tmp31 = (unsigned long )(& uci) + 4;
  __cil_tmp32 = *((__u16 *)__cil_tmp31);
  __cil_tmp33 = (int )__cil_tmp32;
  __cil_tmp34 = __cil_tmp33 | __cil_tmp30;
  __cil_tmp35 = (__le16 )__cil_tmp34;
  erase_mark = (unsigned int )__cil_tmp35;
  if (erase_mark != 15465U) {
    default_uci1:
    __cil_tmp36 = (unsigned long )(& uci) + 4;
    *((__u16 *)__cil_tmp36) = (__u16 )15465;
    __cil_tmp37 = (unsigned long )(& uci) + 6;
    *((__u16 *)__cil_tmp37) = (__u16 )15465;
    __cil_tmp38 = & uci;
    *((__u32 *)__cil_tmp38) = (__u32 )0;
  } else {
  }
  {
  __cil_tmp39 = (void *)instr;
  memset(__cil_tmp39, 0, 88UL);
  __cil_tmp40 = 0 + 24;
  __cil_tmp41 = (unsigned long )nftl;
  __cil_tmp42 = __cil_tmp41 + __cil_tmp40;
  *((struct mtd_info **)instr) = *((struct mtd_info **)__cil_tmp42);
  __cil_tmp43 = (unsigned long )instr;
  __cil_tmp44 = __cil_tmp43 + 8;
  __cil_tmp45 = (unsigned long )nftl;
  __cil_tmp46 = __cil_tmp45 + 212;
  __cil_tmp47 = *((__u32 *)__cil_tmp46);
  __cil_tmp48 = (__u32 )block;
  __cil_tmp49 = __cil_tmp48 * __cil_tmp47;
  *((uint64_t *)__cil_tmp44) = (uint64_t )__cil_tmp49;
  __cil_tmp50 = (unsigned long )instr;
  __cil_tmp51 = __cil_tmp50 + 16;
  __cil_tmp52 = (unsigned long )nftl;
  __cil_tmp53 = __cil_tmp52 + 212;
  __cil_tmp54 = *((__u32 *)__cil_tmp53);
  *((uint64_t *)__cil_tmp51) = (uint64_t )__cil_tmp54;
  mtd_erase(mtd, instr);
  }
  {
  __cil_tmp55 = (unsigned long )instr;
  __cil_tmp56 = __cil_tmp55 + 72;
  __cil_tmp57 = *((u_char *)__cil_tmp56);
  __cil_tmp58 = (int )__cil_tmp57;
  if (__cil_tmp58 == 16) {
    {
    printk("Error while formatting block %d\n", block);
    }
    goto fail;
  } else {
  }
  }
  __cil_tmp59 = & uci;
  nb_erases = *((__u32 *)__cil_tmp59);
  nb_erases = nb_erases + 1U;
  if (nb_erases == 0U) {
    nb_erases = 1U;
  } else {
  }
  {
  __cil_tmp60 = (unsigned long )instr;
  __cil_tmp61 = __cil_tmp60 + 8;
  __cil_tmp62 = *((uint64_t *)__cil_tmp61);
  __cil_tmp63 = (unsigned int )__cil_tmp62;
  __cil_tmp64 = (unsigned long )nftl;
  __cil_tmp65 = __cil_tmp64 + 212;
  __cil_tmp66 = *((__u32 *)__cil_tmp65);
  __cil_tmp67 = (int )__cil_tmp66;
  tmp___8 = check_free_sectors(nftl, __cil_tmp63, __cil_tmp67, 1);
  }
  if (tmp___8 != 0) {
    goto fail;
  } else {
  }
  {
  __cil_tmp68 = & uci;
  *((__u32 *)__cil_tmp68) = nb_erases;
  __cil_tmp69 = (unsigned long )nftl;
  __cil_tmp70 = __cil_tmp69 + 212;
  __cil_tmp71 = *((__u32 *)__cil_tmp70);
  __cil_tmp72 = (__u32 )block;
  __cil_tmp73 = __cil_tmp72 * __cil_tmp71;
  __cil_tmp74 = __cil_tmp73 + 512U;
  __cil_tmp75 = __cil_tmp74 + 8U;
  __cil_tmp76 = (loff_t )__cil_tmp75;
  __cil_tmp77 = (size_t )8;
  __cil_tmp78 = (char *)(& uci);
  __cil_tmp79 = (uint8_t *)__cil_tmp78;
  tmp___9 = nftl_write_oob(mtd, __cil_tmp76, __cil_tmp77, & retlen, __cil_tmp79);
  }
  if (tmp___9 < 0) {
    goto fail;
  } else {
  }
  return (0);
  fail:
  {
  __cil_tmp80 = 0 + 24;
  __cil_tmp81 = (unsigned long )nftl;
  __cil_tmp82 = __cil_tmp81 + __cil_tmp80;
  __cil_tmp83 = *((struct mtd_info **)__cil_tmp82);
  __cil_tmp84 = (unsigned long )instr;
  __cil_tmp85 = __cil_tmp84 + 8;
  __cil_tmp86 = *((uint64_t *)__cil_tmp85);
  __cil_tmp87 = (loff_t )__cil_tmp86;
  mtd_block_markbad(__cil_tmp83, __cil_tmp87);
  }
  return (-1);
}
}
static void check_sectors_in_chain(struct NFTLrecord *nftl , unsigned int first_block )
{ struct mtd_info *mtd ;
  unsigned int block ;
  unsigned int i ;
  unsigned int status ;
  struct nftl_bci bci ;
  int sectors_per_block ;
  size_t retlen ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned long __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  __u32 __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  unsigned int __cil_tmp20 ;
  unsigned int __cil_tmp21 ;
  unsigned long __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  __u32 __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  unsigned int __cil_tmp26 ;
  loff_t __cil_tmp27 ;
  size_t __cil_tmp28 ;
  char *__cil_tmp29 ;
  uint8_t *__cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  __u8 __cil_tmp32 ;
  int __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  __u8 __cil_tmp35 ;
  int __cil_tmp36 ;
  int __cil_tmp37 ;
  void *__cil_tmp38 ;
  unsigned long __cil_tmp39 ;
  unsigned long __cil_tmp40 ;
  unsigned int __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned long __cil_tmp43 ;
  __u32 __cil_tmp44 ;
  unsigned int __cil_tmp45 ;
  unsigned int __cil_tmp46 ;
  loff_t __cil_tmp47 ;
  size_t __cil_tmp48 ;
  char *__cil_tmp49 ;
  uint8_t *__cil_tmp50 ;
  unsigned int __cil_tmp51 ;
  unsigned long __cil_tmp52 ;
  unsigned long __cil_tmp53 ;
  __u32 __cil_tmp54 ;
  unsigned int __cil_tmp55 ;
  unsigned int __cil_tmp56 ;
  unsigned long __cil_tmp57 ;
  unsigned long __cil_tmp58 ;
  unsigned int __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  unsigned long __cil_tmp61 ;
  __u32 __cil_tmp62 ;
  unsigned int __cil_tmp63 ;
  unsigned int __cil_tmp64 ;
  loff_t __cil_tmp65 ;
  size_t __cil_tmp66 ;
  char *__cil_tmp67 ;
  uint8_t *__cil_tmp68 ;
  unsigned long __cil_tmp69 ;
  unsigned long __cil_tmp70 ;
  __u16 *__cil_tmp71 ;
  __u16 *__cil_tmp72 ;
  __u16 __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  unsigned long __cil_tmp75 ;
  unsigned int __cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  unsigned long __cil_tmp78 ;
  unsigned int __cil_tmp79 ;
  {
  __cil_tmp13 = 0 + 24;
  __cil_tmp14 = (unsigned long )nftl;
  __cil_tmp15 = __cil_tmp14 + __cil_tmp13;
  mtd = *((struct mtd_info **)__cil_tmp15);
  __cil_tmp16 = (unsigned long )nftl;
  __cil_tmp17 = __cil_tmp16 + 212;
  __cil_tmp18 = *((__u32 *)__cil_tmp17);
  __cil_tmp19 = __cil_tmp18 / 512U;
  sectors_per_block = (int )__cil_tmp19;
  block = first_block;
  {
  while (1) {
    while_continue: ;
    i = 0U;
    {
    while (1) {
      while_continue___0: ;
      {
      __cil_tmp20 = (unsigned int )sectors_per_block;
      if (i < __cil_tmp20) {
      } else {
        goto while_break___0;
      }
      }
      {
      __cil_tmp21 = i * 512U;
      __cil_tmp22 = (unsigned long )nftl;
      __cil_tmp23 = __cil_tmp22 + 212;
      __cil_tmp24 = *((__u32 *)__cil_tmp23);
      __cil_tmp25 = block * __cil_tmp24;
      __cil_tmp26 = __cil_tmp25 + __cil_tmp21;
      __cil_tmp27 = (loff_t )__cil_tmp26;
      __cil_tmp28 = (size_t )8;
      __cil_tmp29 = (char *)(& bci);
      __cil_tmp30 = (uint8_t *)__cil_tmp29;
      tmp___7 = nftl_read_oob(mtd, __cil_tmp27, __cil_tmp28, & retlen, __cil_tmp30);
      }
      if (tmp___7 < 0) {
        status = 17U;
      } else {
        __cil_tmp31 = (unsigned long )(& bci) + 7;
        __cil_tmp32 = *((__u8 *)__cil_tmp31);
        __cil_tmp33 = (int )__cil_tmp32;
        __cil_tmp34 = (unsigned long )(& bci) + 6;
        __cil_tmp35 = *((__u8 *)__cil_tmp34);
        __cil_tmp36 = (int )__cil_tmp35;
        __cil_tmp37 = __cil_tmp36 | __cil_tmp33;
        status = (unsigned int )__cil_tmp37;
      }
      if ((int )status == 255) {
        goto case_255;
      } else {
        {
        goto switch_default;
        if (0) {
          case_255:
          {
          __cil_tmp38 = (void *)(& bci);
          tmp___8 = memcmpb(__cil_tmp38, 255, 8);
          }
          if (tmp___8 != 0) {
            {
            printk("Incorrect free sector %d in block %d: marking it as ignored\n",
                   i, block);
            __cil_tmp39 = (unsigned long )(& bci) + 6;
            *((__u8 *)__cil_tmp39) = (__u8 )17;
            __cil_tmp40 = (unsigned long )(& bci) + 7;
            *((__u8 *)__cil_tmp40) = (__u8 )17;
            __cil_tmp41 = i * 512U;
            __cil_tmp42 = (unsigned long )nftl;
            __cil_tmp43 = __cil_tmp42 + 212;
            __cil_tmp44 = *((__u32 *)__cil_tmp43);
            __cil_tmp45 = block * __cil_tmp44;
            __cil_tmp46 = __cil_tmp45 + __cil_tmp41;
            __cil_tmp47 = (loff_t )__cil_tmp46;
            __cil_tmp48 = (size_t )8;
            __cil_tmp49 = (char *)(& bci);
            __cil_tmp50 = (uint8_t *)__cil_tmp49;
            nftl_write_oob(mtd, __cil_tmp47, __cil_tmp48, & retlen, __cil_tmp50);
            }
          } else {
            {
            __cil_tmp51 = i * 512U;
            __cil_tmp52 = (unsigned long )nftl;
            __cil_tmp53 = __cil_tmp52 + 212;
            __cil_tmp54 = *((__u32 *)__cil_tmp53);
            __cil_tmp55 = block * __cil_tmp54;
            __cil_tmp56 = __cil_tmp55 + __cil_tmp51;
            tmp___9 = check_free_sectors(nftl, __cil_tmp56, 512, 0);
            }
            if (tmp___9 != 0) {
              {
              printk("Incorrect free sector %d in block %d: marking it as ignored\n",
                     i, block);
              __cil_tmp57 = (unsigned long )(& bci) + 6;
              *((__u8 *)__cil_tmp57) = (__u8 )17;
              __cil_tmp58 = (unsigned long )(& bci) + 7;
              *((__u8 *)__cil_tmp58) = (__u8 )17;
              __cil_tmp59 = i * 512U;
              __cil_tmp60 = (unsigned long )nftl;
              __cil_tmp61 = __cil_tmp60 + 212;
              __cil_tmp62 = *((__u32 *)__cil_tmp61);
              __cil_tmp63 = block * __cil_tmp62;
              __cil_tmp64 = __cil_tmp63 + __cil_tmp59;
              __cil_tmp65 = (loff_t )__cil_tmp64;
              __cil_tmp66 = (size_t )8;
              __cil_tmp67 = (char *)(& bci);
              __cil_tmp68 = (uint8_t *)__cil_tmp67;
              nftl_write_oob(mtd, __cil_tmp65, __cil_tmp66, & retlen, __cil_tmp68);
              }
            } else {
            }
          }
          goto switch_break;
          switch_default:
          goto switch_break;
        } else {
          switch_break: ;
        }
        }
      }
      i = i + 1U;
    }
    while_break___0: ;
    }
    __cil_tmp69 = (unsigned long )nftl;
    __cil_tmp70 = __cil_tmp69 + 272;
    __cil_tmp71 = *((__u16 **)__cil_tmp70);
    __cil_tmp72 = __cil_tmp71 + block;
    __cil_tmp73 = *__cil_tmp72;
    block = (unsigned int )__cil_tmp73;
    if (block == 65535U) {
    } else {
      {
      __cil_tmp74 = (unsigned long )nftl;
      __cil_tmp75 = __cil_tmp74 + 280;
      __cil_tmp76 = *((unsigned int *)__cil_tmp75);
      if (block < __cil_tmp76) {
      } else {
        {
        printk("incorrect ReplUnitTable[] : %d\n", block);
        }
      }
      }
    }
    if (block == 65535U) {
      goto while_break;
    } else {
      {
      __cil_tmp77 = (unsigned long )nftl;
      __cil_tmp78 = __cil_tmp77 + 280;
      __cil_tmp79 = *((unsigned int *)__cil_tmp78);
      if (block >= __cil_tmp79) {
        goto while_break;
      } else {
      }
      }
    }
  }
  while_break: ;
  }
  return;
}
}
static int calc_chain_length(struct NFTLrecord *nftl , unsigned int first_block )
{ unsigned int length ;
  unsigned int block ;
  unsigned long __cil_tmp5 ;
  unsigned long __cil_tmp6 ;
  unsigned int __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  __u16 *__cil_tmp10 ;
  __u16 *__cil_tmp11 ;
  __u16 __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  unsigned int __cil_tmp18 ;
  {
  length = 0U;
  block = first_block;
  {
  while (1) {
    while_continue: ;
    length = length + 1U;
    {
    __cil_tmp5 = (unsigned long )nftl;
    __cil_tmp6 = __cil_tmp5 + 280;
    __cil_tmp7 = *((unsigned int *)__cil_tmp6);
    if (length >= __cil_tmp7) {
      {
      printk("nftl: length too long %d !\n", length);
      }
      goto while_break;
    } else {
    }
    }
    __cil_tmp8 = (unsigned long )nftl;
    __cil_tmp9 = __cil_tmp8 + 272;
    __cil_tmp10 = *((__u16 **)__cil_tmp9);
    __cil_tmp11 = __cil_tmp10 + block;
    __cil_tmp12 = *__cil_tmp11;
    block = (unsigned int )__cil_tmp12;
    if (block == 65535U) {
    } else {
      {
      __cil_tmp13 = (unsigned long )nftl;
      __cil_tmp14 = __cil_tmp13 + 280;
      __cil_tmp15 = *((unsigned int *)__cil_tmp14);
      if (block < __cil_tmp15) {
      } else {
        {
        printk("incorrect ReplUnitTable[] : %d\n", block);
        }
      }
      }
    }
    if (block == 65535U) {
      goto while_break;
    } else {
      {
      __cil_tmp16 = (unsigned long )nftl;
      __cil_tmp17 = __cil_tmp16 + 280;
      __cil_tmp18 = *((unsigned int *)__cil_tmp17);
      if (block >= __cil_tmp18) {
        goto while_break;
      } else {
      }
      }
    }
  }
  while_break: ;
  }
  return ((int )length);
}
}
static void format_chain(struct NFTLrecord *nftl , unsigned int first_block )
{ unsigned int block ;
  unsigned int block1 ;
  int tmp___7 ;
  unsigned long __cil_tmp6 ;
  unsigned long __cil_tmp7 ;
  __u16 *__cil_tmp8 ;
  __u16 *__cil_tmp9 ;
  __u16 __cil_tmp10 ;
  int __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  __u16 *__cil_tmp14 ;
  __u16 *__cil_tmp15 ;
  unsigned long __cil_tmp16 ;
  unsigned long __cil_tmp17 ;
  __u16 *__cil_tmp18 ;
  __u16 *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  unsigned long __cil_tmp21 ;
  unsigned int __cil_tmp22 ;
  unsigned long __cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  unsigned int __cil_tmp25 ;
  {
  {
  block = first_block;
  printk("Formatting chain at block %d\n", first_block);
  }
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp6 = (unsigned long )nftl;
    __cil_tmp7 = __cil_tmp6 + 272;
    __cil_tmp8 = *((__u16 **)__cil_tmp7);
    __cil_tmp9 = __cil_tmp8 + block;
    __cil_tmp10 = *__cil_tmp9;
    block1 = (unsigned int )__cil_tmp10;
    printk("Formatting block %d\n", block);
    __cil_tmp11 = (int )block;
    tmp___7 = NFTL_formatblock(nftl, __cil_tmp11);
    }
    if (tmp___7 < 0) {
      __cil_tmp12 = (unsigned long )nftl;
      __cil_tmp13 = __cil_tmp12 + 272;
      __cil_tmp14 = *((__u16 **)__cil_tmp13);
      __cil_tmp15 = __cil_tmp14 + block;
      *__cil_tmp15 = (__u16 )65532;
    } else {
      __cil_tmp16 = (unsigned long )nftl;
      __cil_tmp17 = __cil_tmp16 + 272;
      __cil_tmp18 = *((__u16 **)__cil_tmp17);
      __cil_tmp19 = __cil_tmp18 + block;
      *__cil_tmp19 = (__u16 )65534;
    }
    block = block1;
    if (block == 65535U) {
    } else {
      {
      __cil_tmp20 = (unsigned long )nftl;
      __cil_tmp21 = __cil_tmp20 + 280;
      __cil_tmp22 = *((unsigned int *)__cil_tmp21);
      if (block < __cil_tmp22) {
      } else {
        {
        printk("incorrect ReplUnitTable[] : %d\n", block);
        }
      }
      }
    }
    if (block == 65535U) {
      goto while_break;
    } else {
      {
      __cil_tmp23 = (unsigned long )nftl;
      __cil_tmp24 = __cil_tmp23 + 280;
      __cil_tmp25 = *((unsigned int *)__cil_tmp24);
      if (block >= __cil_tmp25) {
        goto while_break;
      } else {
      }
      }
    }
  }
  while_break: ;
  }
  return;
}
}
static int check_and_mark_free_block(struct NFTLrecord *nftl , int block )
{ struct mtd_info *mtd ;
  struct nftl_uci1 h1 ;
  unsigned int erase_mark ;
  size_t retlen ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  unsigned long __cil_tmp12 ;
  unsigned long __cil_tmp13 ;
  unsigned long __cil_tmp14 ;
  __u32 __cil_tmp15 ;
  __u32 __cil_tmp16 ;
  __u32 __cil_tmp17 ;
  __u32 __cil_tmp18 ;
  __u32 __cil_tmp19 ;
  loff_t __cil_tmp20 ;
  size_t __cil_tmp21 ;
  char *__cil_tmp22 ;
  uint8_t *__cil_tmp23 ;
  unsigned long __cil_tmp24 ;
  __u16 __cil_tmp25 ;
  int __cil_tmp26 ;
  unsigned long __cil_tmp27 ;
  __u16 __cil_tmp28 ;
  int __cil_tmp29 ;
  int __cil_tmp30 ;
  __le16 __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  __u32 __cil_tmp34 ;
  __u32 __cil_tmp35 ;
  __u32 __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  __u32 __cil_tmp39 ;
  int __cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  struct nftl_uci1 *__cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  __u32 __cil_tmp46 ;
  __u32 __cil_tmp47 ;
  __u32 __cil_tmp48 ;
  __u32 __cil_tmp49 ;
  __u32 __cil_tmp50 ;
  loff_t __cil_tmp51 ;
  size_t __cil_tmp52 ;
  char *__cil_tmp53 ;
  uint8_t *__cil_tmp54 ;
  {
  {
  __cil_tmp10 = 0 + 24;
  __cil_tmp11 = (unsigned long )nftl;
  __cil_tmp12 = __cil_tmp11 + __cil_tmp10;
  mtd = *((struct mtd_info **)__cil_tmp12);
  __cil_tmp13 = (unsigned long )nftl;
  __cil_tmp14 = __cil_tmp13 + 212;
  __cil_tmp15 = *((__u32 *)__cil_tmp14);
  __cil_tmp16 = (__u32 )block;
  __cil_tmp17 = __cil_tmp16 * __cil_tmp15;
  __cil_tmp18 = __cil_tmp17 + 512U;
  __cil_tmp19 = __cil_tmp18 + 8U;
  __cil_tmp20 = (loff_t )__cil_tmp19;
  __cil_tmp21 = (size_t )8;
  __cil_tmp22 = (char *)(& h1);
  __cil_tmp23 = (uint8_t *)__cil_tmp22;
  tmp___7 = nftl_read_oob(mtd, __cil_tmp20, __cil_tmp21, & retlen, __cil_tmp23);
  }
  if (tmp___7 < 0) {
    return (-1);
  } else {
  }
  __cil_tmp24 = (unsigned long )(& h1) + 6;
  __cil_tmp25 = *((__u16 *)__cil_tmp24);
  __cil_tmp26 = (int )__cil_tmp25;
  __cil_tmp27 = (unsigned long )(& h1) + 4;
  __cil_tmp28 = *((__u16 *)__cil_tmp27);
  __cil_tmp29 = (int )__cil_tmp28;
  __cil_tmp30 = __cil_tmp29 | __cil_tmp26;
  __cil_tmp31 = (__le16 )__cil_tmp30;
  erase_mark = (unsigned int )__cil_tmp31;
  if (erase_mark != 15465U) {
    {
    __cil_tmp32 = (unsigned long )nftl;
    __cil_tmp33 = __cil_tmp32 + 212;
    __cil_tmp34 = *((__u32 *)__cil_tmp33);
    __cil_tmp35 = (__u32 )block;
    __cil_tmp36 = __cil_tmp35 * __cil_tmp34;
    __cil_tmp37 = (unsigned long )nftl;
    __cil_tmp38 = __cil_tmp37 + 212;
    __cil_tmp39 = *((__u32 *)__cil_tmp38);
    __cil_tmp40 = (int )__cil_tmp39;
    tmp___8 = check_free_sectors(nftl, __cil_tmp36, __cil_tmp40, 1);
    }
    if (tmp___8 != 0) {
      return (-1);
    } else {
    }
    {
    __cil_tmp41 = (unsigned long )(& h1) + 4;
    *((__u16 *)__cil_tmp41) = (__u16 )15465;
    __cil_tmp42 = (unsigned long )(& h1) + 6;
    *((__u16 *)__cil_tmp42) = (__u16 )15465;
    __cil_tmp43 = & h1;
    *((__u32 *)__cil_tmp43) = (__u32 )0;
    __cil_tmp44 = (unsigned long )nftl;
    __cil_tmp45 = __cil_tmp44 + 212;
    __cil_tmp46 = *((__u32 *)__cil_tmp45);
    __cil_tmp47 = (__u32 )block;
    __cil_tmp48 = __cil_tmp47 * __cil_tmp46;
    __cil_tmp49 = __cil_tmp48 + 512U;
    __cil_tmp50 = __cil_tmp49 + 8U;
    __cil_tmp51 = (loff_t )__cil_tmp50;
    __cil_tmp52 = (size_t )8;
    __cil_tmp53 = (char *)(& h1);
    __cil_tmp54 = (uint8_t *)__cil_tmp53;
    tmp___9 = nftl_write_oob(mtd, __cil_tmp51, __cil_tmp52, & retlen, __cil_tmp54);
    }
    if (tmp___9 < 0) {
      return (-1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int get_fold_mark(struct NFTLrecord *nftl , unsigned int block )
{ struct mtd_info *mtd ;
  struct nftl_uci2 uci ;
  size_t retlen ;
  int tmp___7 ;
  unsigned long __cil_tmp7 ;
  unsigned long __cil_tmp8 ;
  unsigned long __cil_tmp9 ;
  unsigned long __cil_tmp10 ;
  unsigned long __cil_tmp11 ;
  __u32 __cil_tmp12 ;
  unsigned int __cil_tmp13 ;
  unsigned int __cil_tmp14 ;
  unsigned int __cil_tmp15 ;
  loff_t __cil_tmp16 ;
  size_t __cil_tmp17 ;
  char *__cil_tmp18 ;
  uint8_t *__cil_tmp19 ;
  unsigned long __cil_tmp20 ;
  __u16 __cil_tmp21 ;
  int __cil_tmp22 ;
  struct nftl_uci2 *__cil_tmp23 ;
  __u16 __cil_tmp24 ;
  int __cil_tmp25 ;
  int __cil_tmp26 ;
  __le16 __cil_tmp27 ;
  {
  {
  __cil_tmp7 = 0 + 24;
  __cil_tmp8 = (unsigned long )nftl;
  __cil_tmp9 = __cil_tmp8 + __cil_tmp7;
  mtd = *((struct mtd_info **)__cil_tmp9);
  __cil_tmp10 = (unsigned long )nftl;
  __cil_tmp11 = __cil_tmp10 + 212;
  __cil_tmp12 = *((__u32 *)__cil_tmp11);
  __cil_tmp13 = block * __cil_tmp12;
  __cil_tmp14 = __cil_tmp13 + 1024U;
  __cil_tmp15 = __cil_tmp14 + 8U;
  __cil_tmp16 = (loff_t )__cil_tmp15;
  __cil_tmp17 = (size_t )8;
  __cil_tmp18 = (char *)(& uci);
  __cil_tmp19 = (uint8_t *)__cil_tmp18;
  tmp___7 = nftl_read_oob(mtd, __cil_tmp16, __cil_tmp17, & retlen, __cil_tmp19);
  }
  if (tmp___7 < 0) {
    return (0);
  } else {
  }
  {
  __cil_tmp20 = (unsigned long )(& uci) + 2;
  __cil_tmp21 = *((__u16 *)__cil_tmp20);
  __cil_tmp22 = (int )__cil_tmp21;
  __cil_tmp23 = & uci;
  __cil_tmp24 = *((__u16 *)__cil_tmp23);
  __cil_tmp25 = (int )__cil_tmp24;
  __cil_tmp26 = __cil_tmp25 | __cil_tmp22;
  __cil_tmp27 = (__le16 )__cil_tmp26;
  return ((int )__cil_tmp27);
  }
}
}
int NFTL_mount(struct NFTLrecord *s )
{ int i ;
  unsigned int first_logical_block ;
  unsigned int logical_block ;
  unsigned int rep_block ;
  unsigned int nb_erases ;
  unsigned int erase_mark ;
  unsigned int block ;
  unsigned int first_block ;
  unsigned int is_first_block ;
  int chain_length ;
  int do_format_chain ;
  struct nftl_uci0 h0 ;
  struct nftl_uci1 h1 ;
  struct mtd_info *mtd ;
  size_t retlen ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  unsigned int first_block1 ;
  unsigned int chain_to_format ;
  unsigned int chain_length1 ;
  int fold_mark ;
  int tmp___14 ;
  int tmp___15 ;
  unsigned long __cil_tmp30 ;
  unsigned long __cil_tmp31 ;
  unsigned long __cil_tmp32 ;
  unsigned long __cil_tmp33 ;
  unsigned long __cil_tmp34 ;
  unsigned int __cil_tmp35 ;
  unsigned int __cil_tmp36 ;
  unsigned long __cil_tmp37 ;
  unsigned long __cil_tmp38 ;
  __u16 *__cil_tmp39 ;
  __u16 *__cil_tmp40 ;
  unsigned long __cil_tmp41 ;
  unsigned long __cil_tmp42 ;
  unsigned int __cil_tmp43 ;
  unsigned long __cil_tmp44 ;
  unsigned long __cil_tmp45 ;
  __u16 *__cil_tmp46 ;
  __u16 *__cil_tmp47 ;
  __u16 __cil_tmp48 ;
  int __cil_tmp49 ;
  unsigned long __cil_tmp50 ;
  unsigned long __cil_tmp51 ;
  __u32 __cil_tmp52 ;
  unsigned int __cil_tmp53 ;
  unsigned int __cil_tmp54 ;
  loff_t __cil_tmp55 ;
  size_t __cil_tmp56 ;
  char *__cil_tmp57 ;
  uint8_t *__cil_tmp58 ;
  unsigned long __cil_tmp59 ;
  unsigned long __cil_tmp60 ;
  __u16 *__cil_tmp61 ;
  __u16 *__cil_tmp62 ;
  unsigned long __cil_tmp63 ;
  unsigned long __cil_tmp64 ;
  __u32 __cil_tmp65 ;
  unsigned int __cil_tmp66 ;
  unsigned int __cil_tmp67 ;
  unsigned int __cil_tmp68 ;
  loff_t __cil_tmp69 ;
  size_t __cil_tmp70 ;
  char *__cil_tmp71 ;
  uint8_t *__cil_tmp72 ;
  unsigned long __cil_tmp73 ;
  unsigned long __cil_tmp74 ;
  __u16 *__cil_tmp75 ;
  __u16 *__cil_tmp76 ;
  unsigned long __cil_tmp77 ;
  __u16 __cil_tmp78 ;
  int __cil_tmp79 ;
  struct nftl_uci0 *__cil_tmp80 ;
  __u16 __cil_tmp81 ;
  int __cil_tmp82 ;
  int __cil_tmp83 ;
  __le16 __cil_tmp84 ;
  unsigned long __cil_tmp85 ;
  __u16 __cil_tmp86 ;
  int __cil_tmp87 ;
  unsigned long __cil_tmp88 ;
  __u16 __cil_tmp89 ;
  int __cil_tmp90 ;
  int __cil_tmp91 ;
  __le16 __cil_tmp92 ;
  struct nftl_uci1 *__cil_tmp93 ;
  unsigned long __cil_tmp94 ;
  __u16 __cil_tmp95 ;
  int __cil_tmp96 ;
  unsigned long __cil_tmp97 ;
  __u16 __cil_tmp98 ;
  int __cil_tmp99 ;
  int __cil_tmp100 ;
  __le16 __cil_tmp101 ;
  unsigned int __cil_tmp102 ;
  int __cil_tmp103 ;
  unsigned long __cil_tmp104 ;
  unsigned long __cil_tmp105 ;
  unsigned int __cil_tmp106 ;
  int __cil_tmp107 ;
  int __cil_tmp108 ;
  unsigned long __cil_tmp109 ;
  unsigned long __cil_tmp110 ;
  __u16 *__cil_tmp111 ;
  __u16 *__cil_tmp112 ;
  unsigned long __cil_tmp113 ;
  unsigned long __cil_tmp114 ;
  __u16 *__cil_tmp115 ;
  __u16 *__cil_tmp116 ;
  unsigned long __cil_tmp117 ;
  unsigned long __cil_tmp118 ;
  __u16 *__cil_tmp119 ;
  __u16 *__cil_tmp120 ;
  unsigned long __cil_tmp121 ;
  unsigned long __cil_tmp122 ;
  __u16 *__cil_tmp123 ;
  __u16 *__cil_tmp124 ;
  unsigned long __cil_tmp125 ;
  unsigned long __cil_tmp126 ;
  __u16 *__cil_tmp127 ;
  __u16 *__cil_tmp128 ;
  unsigned long __cil_tmp129 ;
  unsigned long __cil_tmp130 ;
  unsigned int __cil_tmp131 ;
  unsigned long __cil_tmp132 ;
  unsigned long __cil_tmp133 ;
  __u16 *__cil_tmp134 ;
  __u16 *__cil_tmp135 ;
  unsigned long __cil_tmp136 ;
  unsigned long __cil_tmp137 ;
  __u16 *__cil_tmp138 ;
  __u16 *__cil_tmp139 ;
  __u16 __cil_tmp140 ;
  int __cil_tmp141 ;
  unsigned long __cil_tmp142 ;
  unsigned long __cil_tmp143 ;
  __u16 *__cil_tmp144 ;
  __u16 *__cil_tmp145 ;
  __u16 __cil_tmp146 ;
  int __cil_tmp147 ;
  unsigned long __cil_tmp148 ;
  unsigned long __cil_tmp149 ;
  __u16 *__cil_tmp150 ;
  __u16 *__cil_tmp151 ;
  __u16 __cil_tmp152 ;
  unsigned int __cil_tmp153 ;
  unsigned long __cil_tmp154 ;
  unsigned long __cil_tmp155 ;
  __u16 *__cil_tmp156 ;
  __u16 *__cil_tmp157 ;
  unsigned long __cil_tmp158 ;
  unsigned long __cil_tmp159 ;
  __u16 *__cil_tmp160 ;
  __u16 *__cil_tmp161 ;
  unsigned long __cil_tmp162 ;
  unsigned long __cil_tmp163 ;
  __u16 *__cil_tmp164 ;
  __u16 *__cil_tmp165 ;
  unsigned long __cil_tmp166 ;
  unsigned long __cil_tmp167 ;
  __u16 *__cil_tmp168 ;
  __u16 *__cil_tmp169 ;
  unsigned long __cil_tmp170 ;
  unsigned long __cil_tmp171 ;
  __u16 *__cil_tmp172 ;
  __u16 *__cil_tmp173 ;
  unsigned long __cil_tmp174 ;
  unsigned long __cil_tmp175 ;
  __u16 *__cil_tmp176 ;
  __u16 *__cil_tmp177 ;
  unsigned long __cil_tmp178 ;
  unsigned long __cil_tmp179 ;
  __u16 *__cil_tmp180 ;
  __u16 *__cil_tmp181 ;
  __u16 __cil_tmp182 ;
  unsigned int __cil_tmp183 ;
  unsigned long __cil_tmp184 ;
  unsigned long __cil_tmp185 ;
  __u16 *__cil_tmp186 ;
  __u16 *__cil_tmp187 ;
  unsigned long __cil_tmp188 ;
  unsigned long __cil_tmp189 ;
  __u16 *__cil_tmp190 ;
  __u16 *__cil_tmp191 ;
  unsigned long __cil_tmp192 ;
  unsigned long __cil_tmp193 ;
  unsigned long __cil_tmp194 ;
  unsigned long __cil_tmp195 ;
  unsigned long __cil_tmp196 ;
  unsigned long __cil_tmp197 ;
  unsigned long __cil_tmp198 ;
  unsigned long __cil_tmp199 ;
  unsigned long __cil_tmp200 ;
  unsigned int __cil_tmp201 ;
  unsigned long __cil_tmp202 ;
  unsigned long __cil_tmp203 ;
  __u16 *__cil_tmp204 ;
  __u16 *__cil_tmp205 ;
  __u16 __cil_tmp206 ;
  int __cil_tmp207 ;
  int __cil_tmp208 ;
  unsigned long __cil_tmp209 ;
  unsigned long __cil_tmp210 ;
  __u16 *__cil_tmp211 ;
  __u16 *__cil_tmp212 ;
  unsigned long __cil_tmp213 ;
  unsigned long __cil_tmp214 ;
  __u16 *__cil_tmp215 ;
  __u16 *__cil_tmp216 ;
  unsigned long __cil_tmp217 ;
  unsigned long __cil_tmp218 ;
  __u16 *__cil_tmp219 ;
  __u16 *__cil_tmp220 ;
  __u16 __cil_tmp221 ;
  int __cil_tmp222 ;
  unsigned long __cil_tmp223 ;
  unsigned long __cil_tmp224 ;
  unsigned long __cil_tmp225 ;
  unsigned long __cil_tmp226 ;
  __u16 __cil_tmp227 ;
  int __cil_tmp228 ;
  int __cil_tmp229 ;
  unsigned long __cil_tmp230 ;
  unsigned long __cil_tmp231 ;
  {
  {
  __cil_tmp30 = 0 + 24;
  __cil_tmp31 = (unsigned long )s;
  __cil_tmp32 = __cil_tmp31 + __cil_tmp30;
  mtd = *((struct mtd_info **)__cil_tmp32);
  tmp___7 = find_boot_record(s);
  }
  if (tmp___7 < 0) {
    {
    printk("Could not find valid boot record\n");
    }
    return (-1);
  } else {
  }
  i = 0;
  {
  while (1) {
    while_continue: ;
    {
    __cil_tmp33 = (unsigned long )s;
    __cil_tmp34 = __cil_tmp33 + 280;
    __cil_tmp35 = *((unsigned int *)__cil_tmp34);
    __cil_tmp36 = (unsigned int )i;
    if (__cil_tmp36 < __cil_tmp35) {
    } else {
      goto while_break;
    }
    }
    __cil_tmp37 = (unsigned long )s;
    __cil_tmp38 = __cil_tmp37 + 264;
    __cil_tmp39 = *((__u16 **)__cil_tmp38);
    __cil_tmp40 = __cil_tmp39 + i;
    *__cil_tmp40 = (__u16 )65535;
    i = i + 1;
  }
  while_break: ;
  }
  first_logical_block = 0U;
  first_block = 0U;
  {
  while (1) {
    while_continue___0: ;
    {
    __cil_tmp41 = (unsigned long )s;
    __cil_tmp42 = __cil_tmp41 + 280;
    __cil_tmp43 = *((unsigned int *)__cil_tmp42);
    if (first_block < __cil_tmp43) {
    } else {
      goto while_break___0;
    }
    }
    {
    __cil_tmp44 = (unsigned long )s;
    __cil_tmp45 = __cil_tmp44 + 272;
    __cil_tmp46 = *((__u16 **)__cil_tmp45);
    __cil_tmp47 = __cil_tmp46 + first_block;
    __cil_tmp48 = *__cil_tmp47;
    __cil_tmp49 = (int )__cil_tmp48;
    if (__cil_tmp49 == 65533) {
      block = first_block;
      chain_length = 0;
      do_format_chain = 0;
      {
      while (1) {
        while_continue___1: ;
        {
        __cil_tmp50 = (unsigned long )s;
        __cil_tmp51 = __cil_tmp50 + 212;
        __cil_tmp52 = *((__u32 *)__cil_tmp51);
        __cil_tmp53 = block * __cil_tmp52;
        __cil_tmp54 = __cil_tmp53 + 8U;
        __cil_tmp55 = (loff_t )__cil_tmp54;
        __cil_tmp56 = (size_t )8;
        __cil_tmp57 = (char *)(& h0);
        __cil_tmp58 = (uint8_t *)__cil_tmp57;
        tmp___8 = nftl_read_oob(mtd, __cil_tmp55, __cil_tmp56, & retlen, __cil_tmp58);
        }
        if (tmp___8 < 0) {
          __cil_tmp59 = (unsigned long )s;
          __cil_tmp60 = __cil_tmp59 + 272;
          __cil_tmp61 = *((__u16 **)__cil_tmp60);
          __cil_tmp62 = __cil_tmp61 + block;
          *__cil_tmp62 = (__u16 )65535;
          do_format_chain = 1;
          goto while_break___1;
        } else {
          {
          __cil_tmp63 = (unsigned long )s;
          __cil_tmp64 = __cil_tmp63 + 212;
          __cil_tmp65 = *((__u32 *)__cil_tmp64);
          __cil_tmp66 = block * __cil_tmp65;
          __cil_tmp67 = __cil_tmp66 + 512U;
          __cil_tmp68 = __cil_tmp67 + 8U;
          __cil_tmp69 = (loff_t )__cil_tmp68;
          __cil_tmp70 = (size_t )8;
          __cil_tmp71 = (char *)(& h1);
          __cil_tmp72 = (uint8_t *)__cil_tmp71;
          tmp___9 = nftl_read_oob(mtd, __cil_tmp69, __cil_tmp70, & retlen, __cil_tmp72);
          }
          if (tmp___9 < 0) {
            __cil_tmp73 = (unsigned long )s;
            __cil_tmp74 = __cil_tmp73 + 272;
            __cil_tmp75 = *((__u16 **)__cil_tmp74);
            __cil_tmp76 = __cil_tmp75 + block;
            *__cil_tmp76 = (__u16 )65535;
            do_format_chain = 1;
            goto while_break___1;
          } else {
          }
        }
        __cil_tmp77 = (unsigned long )(& h0) + 4;
        __cil_tmp78 = *((__u16 *)__cil_tmp77);
        __cil_tmp79 = (int )__cil_tmp78;
        __cil_tmp80 = & h0;
        __cil_tmp81 = *((__u16 *)__cil_tmp80);
        __cil_tmp82 = (int )__cil_tmp81;
        __cil_tmp83 = __cil_tmp82 | __cil_tmp79;
        __cil_tmp84 = (__le16 )__cil_tmp83;
        logical_block = (unsigned int )__cil_tmp84;
        __cil_tmp85 = (unsigned long )(& h0) + 6;
        __cil_tmp86 = *((__u16 *)__cil_tmp85);
        __cil_tmp87 = (int )__cil_tmp86;
        __cil_tmp88 = (unsigned long )(& h0) + 2;
        __cil_tmp89 = *((__u16 *)__cil_tmp88);
        __cil_tmp90 = (int )__cil_tmp89;
        __cil_tmp91 = __cil_tmp90 | __cil_tmp87;
        __cil_tmp92 = (__le16 )__cil_tmp91;
        rep_block = (unsigned int )__cil_tmp92;
        __cil_tmp93 = & h1;
        nb_erases = *((__u32 *)__cil_tmp93);
        __cil_tmp94 = (unsigned long )(& h1) + 6;
        __cil_tmp95 = *((__u16 *)__cil_tmp94);
        __cil_tmp96 = (int )__cil_tmp95;
        __cil_tmp97 = (unsigned long )(& h1) + 4;
        __cil_tmp98 = *((__u16 *)__cil_tmp97);
        __cil_tmp99 = (int )__cil_tmp98;
        __cil_tmp100 = __cil_tmp99 | __cil_tmp96;
        __cil_tmp101 = (__le16 )__cil_tmp100;
        erase_mark = (unsigned int )__cil_tmp101;
        __cil_tmp102 = logical_block >> 15;
        __cil_tmp103 = ! __cil_tmp102;
        is_first_block = (unsigned int )__cil_tmp103;
        logical_block = logical_block & 32767U;
        if (erase_mark != 15465U) {
          goto _L;
        } else {
          {
          __cil_tmp104 = (unsigned long )s;
          __cil_tmp105 = __cil_tmp104 + 280;
          __cil_tmp106 = *((unsigned int *)__cil_tmp105);
          if (logical_block >= __cil_tmp106) {
            _L:
            if (chain_length == 0) {
              {
              __cil_tmp107 = (int )block;
              tmp___11 = check_and_mark_free_block(s, __cil_tmp107);
              }
              if (tmp___11 < 0) {
                {
                printk("Formatting block %d\n", block);
                __cil_tmp108 = (int )block;
                tmp___10 = NFTL_formatblock(s, __cil_tmp108);
                }
                if (tmp___10 < 0) {
                  __cil_tmp109 = (unsigned long )s;
                  __cil_tmp110 = __cil_tmp109 + 272;
                  __cil_tmp111 = *((__u16 **)__cil_tmp110);
                  __cil_tmp112 = __cil_tmp111 + block;
                  *__cil_tmp112 = (__u16 )65532;
                } else {
                  __cil_tmp113 = (unsigned long )s;
                  __cil_tmp114 = __cil_tmp113 + 272;
                  __cil_tmp115 = *((__u16 **)__cil_tmp114);
                  __cil_tmp116 = __cil_tmp115 + block;
                  *__cil_tmp116 = (__u16 )65534;
                }
              } else {
                __cil_tmp117 = (unsigned long )s;
                __cil_tmp118 = __cil_tmp117 + 272;
                __cil_tmp119 = *((__u16 **)__cil_tmp118);
                __cil_tmp120 = __cil_tmp119 + block;
                *__cil_tmp120 = (__u16 )65534;
              }
              goto examine_ReplUnitTable;
            } else {
              {
              printk("Block %d: free but referenced in chain %d\n", block, first_block);
              __cil_tmp121 = (unsigned long )s;
              __cil_tmp122 = __cil_tmp121 + 272;
              __cil_tmp123 = *((__u16 **)__cil_tmp122);
              __cil_tmp124 = __cil_tmp123 + block;
              *__cil_tmp124 = (__u16 )65535;
              do_format_chain = 1;
              }
              goto while_break___1;
            }
          } else {
          }
          }
        }
        if (chain_length == 0) {
          if (! is_first_block) {
            goto examine_ReplUnitTable;
          } else {
          }
          first_logical_block = logical_block;
        } else {
          if (logical_block != first_logical_block) {
            {
            printk("Block %d: incorrect logical block: %d expected: %d\n", block,
                   logical_block, first_logical_block);
            do_format_chain = 1;
            }
          } else {
          }
          if (is_first_block) {
            {
            tmp___12 = get_fold_mark(s, block);
            }
            if (tmp___12 != 21845) {
              {
              printk("Block %d: incorrectly marked as first block in chain\n", block);
              do_format_chain = 1;
              }
            } else
            if (rep_block != 65535U) {
              {
              printk("Block %d: incorrectly marked as first block in chain\n", block);
              do_format_chain = 1;
              }
            } else {
              {
              printk("Block %d: folding in progress - ignoring first block flag\n",
                     block);
              }
            }
          } else {
          }
        }
        chain_length = chain_length + 1;
        if (rep_block == 65535U) {
          __cil_tmp125 = (unsigned long )s;
          __cil_tmp126 = __cil_tmp125 + 272;
          __cil_tmp127 = *((__u16 **)__cil_tmp126);
          __cil_tmp128 = __cil_tmp127 + block;
          *__cil_tmp128 = (__u16 )65535;
          goto while_break___1;
        } else {
          {
          __cil_tmp129 = (unsigned long )s;
          __cil_tmp130 = __cil_tmp129 + 280;
          __cil_tmp131 = *((unsigned int *)__cil_tmp130);
          if (rep_block >= __cil_tmp131) {
            {
            printk("Block %d: referencing invalid block %d\n", block, rep_block);
            do_format_chain = 1;
            __cil_tmp132 = (unsigned long )s;
            __cil_tmp133 = __cil_tmp132 + 272;
            __cil_tmp134 = *((__u16 **)__cil_tmp133);
            __cil_tmp135 = __cil_tmp134 + block;
            *__cil_tmp135 = (__u16 )65535;
            }
            goto while_break___1;
          } else {
            {
            __cil_tmp136 = (unsigned long )s;
            __cil_tmp137 = __cil_tmp136 + 272;
            __cil_tmp138 = *((__u16 **)__cil_tmp137);
            __cil_tmp139 = __cil_tmp138 + rep_block;
            __cil_tmp140 = *__cil_tmp139;
            __cil_tmp141 = (int )__cil_tmp140;
            if (__cil_tmp141 != 65533) {
              {
              __cil_tmp142 = (unsigned long )s;
              __cil_tmp143 = __cil_tmp142 + 272;
              __cil_tmp144 = *((__u16 **)__cil_tmp143);
              __cil_tmp145 = __cil_tmp144 + rep_block;
              __cil_tmp146 = *__cil_tmp145;
              __cil_tmp147 = (int )__cil_tmp146;
              if (__cil_tmp147 == 65535) {
                {
                __cil_tmp148 = (unsigned long )s;
                __cil_tmp149 = __cil_tmp148 + 264;
                __cil_tmp150 = *((__u16 **)__cil_tmp149);
                __cil_tmp151 = __cil_tmp150 + first_logical_block;
                __cil_tmp152 = *__cil_tmp151;
                __cil_tmp153 = (unsigned int )__cil_tmp152;
                if (__cil_tmp153 == rep_block) {
                  {
                  tmp___13 = get_fold_mark(s, first_block);
                  }
                  if (tmp___13 == 21845) {
                    {
                    printk("Block %d: folding in progress - ignoring first block flag\n",
                           rep_block);
                    __cil_tmp154 = (unsigned long )s;
                    __cil_tmp155 = __cil_tmp154 + 272;
                    __cil_tmp156 = *((__u16 **)__cil_tmp155);
                    __cil_tmp157 = __cil_tmp156 + block;
                    *__cil_tmp157 = (__u16 )rep_block;
                    __cil_tmp158 = (unsigned long )s;
                    __cil_tmp159 = __cil_tmp158 + 264;
                    __cil_tmp160 = *((__u16 **)__cil_tmp159);
                    __cil_tmp161 = __cil_tmp160 + first_logical_block;
                    *__cil_tmp161 = (__u16 )65535;
                    }
                  } else {
                    {
                    printk("Block %d: referencing block %d already in another chain\n",
                           block, rep_block);
                    do_format_chain = 1;
                    __cil_tmp162 = (unsigned long )s;
                    __cil_tmp163 = __cil_tmp162 + 272;
                    __cil_tmp164 = *((__u16 **)__cil_tmp163);
                    __cil_tmp165 = __cil_tmp164 + block;
                    *__cil_tmp165 = (__u16 )65535;
                    }
                  }
                } else {
                  {
                  printk("Block %d: referencing block %d already in another chain\n",
                         block, rep_block);
                  do_format_chain = 1;
                  __cil_tmp166 = (unsigned long )s;
                  __cil_tmp167 = __cil_tmp166 + 272;
                  __cil_tmp168 = *((__u16 **)__cil_tmp167);
                  __cil_tmp169 = __cil_tmp168 + block;
                  *__cil_tmp169 = (__u16 )65535;
                  }
                }
                }
              } else {
                {
                printk("Block %d: referencing block %d already in another chain\n",
                       block, rep_block);
                do_format_chain = 1;
                __cil_tmp170 = (unsigned long )s;
                __cil_tmp171 = __cil_tmp170 + 272;
                __cil_tmp172 = *((__u16 **)__cil_tmp171);
                __cil_tmp173 = __cil_tmp172 + block;
                *__cil_tmp173 = (__u16 )65535;
                }
              }
              }
              goto while_break___1;
            } else {
              __cil_tmp174 = (unsigned long )s;
              __cil_tmp175 = __cil_tmp174 + 272;
              __cil_tmp176 = *((__u16 **)__cil_tmp175);
              __cil_tmp177 = __cil_tmp176 + block;
              *__cil_tmp177 = (__u16 )rep_block;
              block = rep_block;
            }
            }
          }
          }
        }
      }
      while_break___1: ;
      }
      if (do_format_chain) {
        {
        format_chain(s, first_block);
        }
      } else {
        {
        fold_mark = get_fold_mark(s, first_block);
        }
        if (fold_mark == 0) {
          {
          printk("Could read foldmark at block %d\n", first_block);
          format_chain(s, first_block);
          }
        } else {
          if (fold_mark == 21845) {
            {
            check_sectors_in_chain(s, first_block);
            }
          } else {
          }
          __cil_tmp178 = (unsigned long )s;
          __cil_tmp179 = __cil_tmp178 + 264;
          __cil_tmp180 = *((__u16 **)__cil_tmp179);
          __cil_tmp181 = __cil_tmp180 + first_logical_block;
          __cil_tmp182 = *__cil_tmp181;
          first_block1 = (unsigned int )__cil_tmp182;
          if (first_block1 != 65535U) {
            {
            tmp___14 = calc_chain_length(s, first_block1);
            chain_length1 = (unsigned int )tmp___14;
            printk("Two chains at blocks %d (len=%d) and %d (len=%d)\n", first_block1,
                   chain_length1, first_block, chain_length);
            }
            {
            __cil_tmp183 = (unsigned int )chain_length;
            if (__cil_tmp183 >= chain_length1) {
              chain_to_format = first_block1;
              __cil_tmp184 = (unsigned long )s;
              __cil_tmp185 = __cil_tmp184 + 264;
              __cil_tmp186 = *((__u16 **)__cil_tmp185);
              __cil_tmp187 = __cil_tmp186 + first_logical_block;
              *__cil_tmp187 = (__u16 )first_block;
            } else {
              chain_to_format = first_block;
            }
            }
            {
            format_chain(s, chain_to_format);
            }
          } else {
            __cil_tmp188 = (unsigned long )s;
            __cil_tmp189 = __cil_tmp188 + 264;
            __cil_tmp190 = *((__u16 **)__cil_tmp189);
            __cil_tmp191 = __cil_tmp190 + first_logical_block;
            *__cil_tmp191 = (__u16 )first_block;
          }
        }
      }
    } else {
    }
    }
    examine_ReplUnitTable:
    first_block = first_block + 1U;
  }
  while_break___0: ;
  }
  __cil_tmp192 = (unsigned long )s;
  __cil_tmp193 = __cil_tmp192 + 244;
  *((__u16 *)__cil_tmp193) = (__u16 )0;
  __cil_tmp194 = (unsigned long )s;
  __cil_tmp195 = __cil_tmp194 + 246;
  __cil_tmp196 = 216 + 8;
  __cil_tmp197 = (unsigned long )s;
  __cil_tmp198 = __cil_tmp197 + __cil_tmp196;
  *((__u16 *)__cil_tmp195) = *((__u16 *)__cil_tmp198);
  block = 0U;
  {
  while (1) {
    while_continue___2: ;
    {
    __cil_tmp199 = (unsigned long )s;
    __cil_tmp200 = __cil_tmp199 + 280;
    __cil_tmp201 = *((unsigned int *)__cil_tmp200);
    if (block < __cil_tmp201) {
    } else {
      goto while_break___2;
    }
    }
    {
    __cil_tmp202 = (unsigned long )s;
    __cil_tmp203 = __cil_tmp202 + 272;
    __cil_tmp204 = *((__u16 **)__cil_tmp203);
    __cil_tmp205 = __cil_tmp204 + block;
    __cil_tmp206 = *__cil_tmp205;
    __cil_tmp207 = (int )__cil_tmp206;
    if (__cil_tmp207 == 65533) {
      {
      printk("Unreferenced block %d, formatting it\n", block);
      __cil_tmp208 = (int )block;
      tmp___15 = NFTL_formatblock(s, __cil_tmp208);
      }
      if (tmp___15 < 0) {
        __cil_tmp209 = (unsigned long )s;
        __cil_tmp210 = __cil_tmp209 + 272;
        __cil_tmp211 = *((__u16 **)__cil_tmp210);
        __cil_tmp212 = __cil_tmp211 + block;
        *__cil_tmp212 = (__u16 )65532;
      } else {
        __cil_tmp213 = (unsigned long )s;
        __cil_tmp214 = __cil_tmp213 + 272;
        __cil_tmp215 = *((__u16 **)__cil_tmp214);
        __cil_tmp216 = __cil_tmp215 + block;
        *__cil_tmp216 = (__u16 )65534;
      }
    } else {
    }
    }
    {
    __cil_tmp217 = (unsigned long )s;
    __cil_tmp218 = __cil_tmp217 + 272;
    __cil_tmp219 = *((__u16 **)__cil_tmp218);
    __cil_tmp220 = __cil_tmp219 + block;
    __cil_tmp221 = *__cil_tmp220;
    __cil_tmp222 = (int )__cil_tmp221;
    if (__cil_tmp222 == 65534) {
      __cil_tmp223 = (unsigned long )s;
      __cil_tmp224 = __cil_tmp223 + 244;
      __cil_tmp225 = (unsigned long )s;
      __cil_tmp226 = __cil_tmp225 + 244;
      __cil_tmp227 = *((__u16 *)__cil_tmp226);
      __cil_tmp228 = (int )__cil_tmp227;
      __cil_tmp229 = __cil_tmp228 + 1;
      *((__u16 *)__cil_tmp224) = (__u16 )__cil_tmp229;
      __cil_tmp230 = (unsigned long )s;
      __cil_tmp231 = __cil_tmp230 + 246;
      *((__u16 *)__cil_tmp231) = (__u16 )block;
    } else {
    }
    }
    block = block + 1U;
  }
  while_break___2: ;
  }
  return (0);
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int add_mtd_blktrans_dev(struct mtd_blktrans_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_mtd_blktrans_dev(struct mtd_blktrans_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int deregister_mtd_blktrans(struct mtd_blktrans_ops *arg0) {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int mtd_block_isbad(struct mtd_info *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_block_markbad(struct mtd_info *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_erase(struct mtd_info *arg0, struct erase_info *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mtd_read(struct mtd_info *arg0, loff_t arg1, size_t arg2, size_t *arg3, u_char *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_mtd_blktrans(struct mtd_blktrans_ops *arg0) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
