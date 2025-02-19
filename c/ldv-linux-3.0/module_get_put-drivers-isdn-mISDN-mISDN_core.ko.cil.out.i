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
typedef unsigned char u_char;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
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
union __anonunion_ldv_2292_12 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2292_12 ldv_2292 ;
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
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct __anonstruct_ldv_2526_19 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2541_20 {
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
union __anonunion_ldv_2542_18 {
   struct __anonstruct_ldv_2526_19 ldv_2526 ;
   struct __anonstruct_ldv_2541_20 ldv_2541 ;
};
struct desc_struct {
   union __anonunion_ldv_2542_18 ldv_2542 ;
};
struct thread_struct;
struct cpumask;
struct arch_spinlock;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct __anonstruct_ldv_5171_24 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5177_25 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5178_23 {
   struct __anonstruct_ldv_5171_24 ldv_5171 ;
   struct __anonstruct_ldv_5177_25 ldv_5177 ;
};
union __anonunion_ldv_5187_26 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5178_23 ldv_5178 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5187_26 ldv_5187 ;
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
typedef atomic64_t atomic_long_t;
struct arch_spinlock {
   unsigned int slock ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_arch_rwlock_t_29 {
   unsigned int lock ;
};
typedef struct __anonstruct_arch_rwlock_t_29 arch_rwlock_t;
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
struct __anonstruct_ldv_6059_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6060_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6059_31 ldv_6059 ;
};
struct spinlock {
   union __anonunion_ldv_6060_30 ldv_6060 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct __anonstruct_seqlock_t_33 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
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
struct __anonstruct_nodemask_t_34 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_34 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct ctl_table;
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
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
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
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char ignore_children : 1 ;
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
   void *subsys_data ;
};
struct dev_power_domain {
   struct dev_pm_ops ops ;
};
struct __anonstruct_mm_context_t_99 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_99 mm_context_t;
struct vm_area_struct;
struct rcu_head {
   struct rcu_head *next ;
   void (*func)(struct rcu_head * ) ;
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
struct __anonstruct_ldv_12193_124 {
   struct ctl_table *ctl_table ;
   struct list_head ctl_entry ;
   int used ;
   int count ;
};
union __anonunion_ldv_12195_123 {
   struct __anonstruct_ldv_12193_124 ldv_12193 ;
   struct rcu_head rcu ;
};
struct ctl_table_header {
   union __anonunion_ldv_12195_123 ldv_12195 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_table *attached_by ;
   struct ctl_table *attached_to ;
   struct ctl_table_header *parent ;
};
struct cred;
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
union __anonunion_ldv_12924_129 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   u16 flags ;
   union __anonunion_ldv_12924_129 ldv_12924 ;
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
struct jump_label_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct jump_label_key key ;
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
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   int node ;
   unsigned int stat[19U] ;
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
struct sockaddr_mISDN {
   sa_family_t family ;
   unsigned char dev ;
   unsigned char channel ;
   unsigned char sapi ;
   unsigned char tei ;
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
struct rb_node {
   unsigned long rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct address_space;
struct __anonstruct_ldv_14162_131 {
   u16 inuse ;
   u16 objects ;
};
union __anonunion_ldv_14163_130 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14162_131 ldv_14162 ;
};
struct __anonstruct_ldv_14168_133 {
   unsigned long private ;
   struct address_space *mapping ;
};
union __anonunion_ldv_14171_132 {
   struct __anonstruct_ldv_14168_133 ldv_14168 ;
   struct kmem_cache *slab ;
   struct page *first_page ;
};
union __anonunion_ldv_14175_134 {
   unsigned long index ;
   void *freelist ;
};
struct page {
   unsigned long flags ;
   atomic_t _count ;
   union __anonunion_ldv_14163_130 ldv_14163 ;
   union __anonunion_ldv_14171_132 ldv_14171 ;
   union __anonunion_ldv_14175_134 ldv_14175 ;
   struct list_head lru ;
};
struct __anonstruct_vm_set_136 {
   struct list_head list ;
   void *parent ;
   struct vm_area_struct *head ;
};
union __anonunion_shared_135 {
   struct __anonstruct_vm_set_136 vm_set ;
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
   union __anonunion_shared_135 shared ;
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
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned int faultstamp ;
   unsigned int token_priority ;
   unsigned int last_interval ;
   atomic_t oom_disable_count ;
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
enum ldv_13800 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_13800 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct inode;
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
struct exception_table_entry {
   unsigned long insn ;
   unsigned long fixup ;
};
struct sk_buff;
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
   char *(*devnode)(struct device * , mode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
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
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_power_domain *pwr_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   dev_t devt ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
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
   unsigned char active : 1 ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
typedef s32 dma_cookie_t;
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
   unsigned long active_bases ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct net_device;
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
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_19528_139 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_19529_138 {
   __wsum csum ;
   struct __anonstruct_ldv_19528_139 ldv_19528 ;
};
union __anonunion_ldv_19559_140 {
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
   union __anonunion_ldv_19529_138 ldv_19529 ;
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
   unsigned char ooo_okay : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_19559_140 ldv_19559 ;
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
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct __anonstruct_sync_serial_settings_141 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_141 sync_serial_settings;
struct __anonstruct_te1_settings_142 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_142 te1_settings;
struct __anonstruct_raw_hdlc_proto_143 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_143 raw_hdlc_proto;
struct __anonstruct_fr_proto_144 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_144 fr_proto;
struct __anonstruct_fr_proto_pvc_145 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_145 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_146 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_146 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_147 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_147 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_148 {
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
   union __anonunion_ifs_ifsu_148 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_149 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_150 {
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
   union __anonunion_ifr_ifrn_149 ifr_ifrn ;
   union __anonunion_ifr_ifru_150 ifr_ifru ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct dentry;
struct user_namespace;
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
};
struct plist_head {
   struct list_head node_list ;
   raw_spinlock_t *rawlock ;
   spinlock_t *spinlock ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct file_operations;
struct pm_qos_request_list {
   struct plist_node list ;
   int pm_qos_class ;
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
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_153 {
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
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_153 d_u ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_155 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_154 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_155 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_154 read_descriptor_t;
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
   struct mutex i_mmap_mutex ;
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
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_22627_156 {
   struct list_head i_dentry ;
   struct rcu_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_22653_157 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   uid_t i_uid ;
   gid_t i_gid ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   spinlock_t i_lock ;
   unsigned int i_flags ;
   unsigned long i_state ;
   void *i_security ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_22627_156 ldv_22627 ;
   unsigned long i_ino ;
   atomic_t i_count ;
   unsigned int i_nlink ;
   dev_t i_rdev ;
   unsigned int i_blkbits ;
   u64 i_version ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   blkcnt_t i_blocks ;
   unsigned short i_bytes ;
   struct rw_semaphore i_alloc_sem ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space *i_mapping ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_22653_157 ldv_22653 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   atomic_t i_writecount ;
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
union __anonunion_f_u_158 {
   struct list_head fu_list ;
   struct rcu_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_158 f_u ;
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
   void (*fl_release_private)(struct file_lock * ) ;
   void (*fl_break)(struct file_lock * ) ;
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
struct __anonstruct_afs_160 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_159 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_160 afs ;
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
   union __anonunion_fl_u_159 fl_u ;
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
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
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
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , struct nameidata * ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int , unsigned int ) ;
   int (*check_acl)(struct inode * , int , unsigned int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , int , struct nameidata * ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , int ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , int , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   void (*truncate)(struct inode * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   void (*truncate_range)(struct inode * , loff_t , loff_t ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   void (*write_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct vfsmount * ) ;
   int (*show_devname)(struct seq_file * , struct vfsmount * ) ;
   int (*show_path)(struct seq_file * , struct vfsmount * ) ;
   int (*show_stats)(struct seq_file * , struct vfsmount * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
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
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
typedef unsigned long cputime_t;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
struct key_user;
union __anonunion_ldv_25207_172 {
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
   struct rb_node serial_node ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_25207_172 ldv_25207 ;
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
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct rcu_head rcu ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
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
   struct rw_semaphore threadgroup_fork_lock ;
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
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct irqaction;
struct css_set;
struct compat_robust_list_head;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct task_struct *wake_entry ;
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
   unsigned int btrace_seq ;
   unsigned int policy ;
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
   unsigned int group_stop ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
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
   int mems_allowed_change_disable ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   atomic_t ptrace_bp_refcnt ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
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
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
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
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[60U] ;
};
struct ethtool_flow_ext {
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
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
struct ethtool_rxfh_indir {
   __u32 cmd ;
   __u32 size ;
   __u32 ring_index[0U] ;
};
union __anonunion_h_u_182 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
union __anonunion_m_u_183 {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[72U] ;
};
struct ethtool_rx_ntuple_flow_spec {
   __u32 flow_type ;
   union __anonunion_h_u_182 h_u ;
   union __anonunion_m_u_183 m_u ;
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
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_rx_ntuple_list {
   struct list_head list ;
   unsigned int count ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
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
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
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
   int (*get_rxfh_indir)(struct net_device * , struct ethtool_rxfh_indir * ) ;
   int (*set_rxfh_indir)(struct net_device * , struct ethtool_rxfh_indir const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
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
   unsigned long mibs[80U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct proc_dir_entry;
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
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   int sysctl_rt_cache_rebuild_count ;
   int current_rt_cache_rebuild_count ;
   unsigned int sysctl_ping_group_range[2U] ;
   atomic_t rt_genid ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*default_mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , u32 ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
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
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   unsigned int namelen ;
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
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
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
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
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
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
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
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
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
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct vlan_group;
struct netpoll_info;
struct phy_device;
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
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   unsigned long state ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
};
struct rps_map {
   unsigned int len ;
   struct rcu_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
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
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct rcu_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct rcu_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
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
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   void (*ndo_vlan_rx_register)(struct net_device * , struct vlan_group * ) ;
   void (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   u32 (*ndo_fix_features)(struct net_device * , u32 ) ;
   int (*ndo_set_features)(struct net_device * , u32 ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_30952_191 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct pm_qos_request_list pm_qos_req ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   u32 features ;
   u32 hw_features ;
   u32 wanted_features ;
   u32 vlan_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   int uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_group *vlgrp ;
   void *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ec_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_30952_191 ldv_30952 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct ethtool_rx_ntuple_list ethtool_ntuple_list ;
   struct phy_device *phydev ;
   int group ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct irqaction {
   irqreturn_t (*handler)(int , void * ) ;
   unsigned long flags ;
   void *dev_id ;
   struct irqaction *next ;
   int irq ;
   irqreturn_t (*thread_fn)(int , void * ) ;
   struct task_struct *thread ;
   unsigned long thread_flags ;
   unsigned long thread_mask ;
   char const *name ;
   struct proc_dir_entry *dir ;
};
struct linux_binprm {
   char buf[128U] ;
   struct vm_area_struct *vma ;
   unsigned long vma_pages ;
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
   char const *filename ;
   char const *interp ;
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
};
struct xfrm_policy;
struct xfrm_state;
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   struct rcu_head rcu ;
   struct sock_filter insns[0U] ;
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
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache *hh ;
   int (*output)(struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct rcu_head rcu ;
   struct net_device *dev ;
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
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_mask ;
   __u32 hash_rnd ;
   struct rcu_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 ) ;
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
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion_ldv_36975_200 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct rcu_head rcu_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct neighbour *neighbour ;
   struct hh_cache *hh ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[1U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   int flags ;
   union __anonunion_ldv_36975_200 ldv_36975 ;
};
struct __anonstruct_socket_lock_t_201 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_201 socket_lock_t;
struct proto;
union __anonunion_ldv_37176_202 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
union __anonunion_ldv_37184_203 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_37191_204 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
   union __anonunion_ldv_37176_202 ldv_37176 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_37184_203 ldv_37184 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_37191_204 ldv_37191 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct __anonstruct_sk_backlog_205 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_205 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct sk_buff_head sk_async_wait_queue ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   int sk_route_caps ;
   int sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
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
union __anonunion_h_206 {
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
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
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
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_206 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
};
struct mISDNchannel;
struct mISDNdevice;
struct mISDNstack;
struct channel_req {
   u_int protocol ;
   struct sockaddr_mISDN adr ;
   struct mISDNchannel *ch ;
};
typedef int ctrl_func_t(struct mISDNchannel * , u_int , void * );
typedef int send_func_t(struct mISDNchannel * , struct sk_buff * );
typedef int create_func_t(struct channel_req * );
struct Bprotocol {
   struct list_head list ;
   char *name ;
   u_int Bprotocols ;
   create_func_t *create ;
};
struct mISDNchannel {
   struct list_head list ;
   u_int protocol ;
   u_int nr ;
   u_long opt ;
   u_int addr ;
   struct mISDNstack *st ;
   struct mISDNchannel *peer ;
   send_func_t *send ;
   send_func_t *recv ;
   ctrl_func_t *ctrl ;
};
struct mISDN_sock_list {
   struct hlist_head head ;
   rwlock_t lock ;
};
struct mISDNdevice {
   struct mISDNchannel D ;
   u_int id ;
   u_int Dprotocols ;
   u_int Bprotocols ;
   u_int nrbchan ;
   u_char channelmap[16U] ;
   struct list_head bchannels ;
   struct mISDNchannel *teimgr ;
   struct device dev ;
};
struct mISDNstack {
   u_long status ;
   struct mISDNdevice *dev ;
   struct task_struct *thread ;
   struct completion *notify ;
   wait_queue_head_t workq ;
   struct sk_buff_head msgq ;
   struct list_head layer2 ;
   struct mISDNchannel *layer1 ;
   struct mISDNchannel own ;
   struct mutex lmutex ;
   struct mISDN_sock_list l1sock ;
};
struct FsmInst;
typedef void (*FSMFNPTR)(struct FsmInst * , int , void * );
struct Fsm {
   FSMFNPTR (**jumpmatrix)(struct FsmInst * , int , void * ) ;
   int state_count ;
   int event_count ;
   char **strEvent ;
   char **strState ;
};
struct FsmInst {
   struct Fsm *fsm ;
   int state ;
   int debug ;
   void *userdata ;
   int userint ;
   void (*printdebug)(struct FsmInst * , char * , ...) ;
};
struct FsmNode {
   int state ;
   int event ;
   void (*routine)(struct FsmInst * , int , void * ) ;
};
struct FsmTimer {
   struct FsmInst *fi ;
   struct timer_list tl ;
   int event ;
   void *arg ;
};
typedef long __kernel_suseconds_t;
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct mISDNhead {
   unsigned int prim ;
   unsigned int id ;
};
struct mISDNversion {
   unsigned char major ;
   unsigned char minor ;
   unsigned short release ;
};
struct mISDN_devinfo {
   u_int id ;
   u_int Dprotocols ;
   u_int Bprotocols ;
   u_int protocol ;
   u_char channelmap[16U] ;
   u_int nrbchan ;
   char name[20U] ;
};
struct mISDN_devrename {
   u_int id ;
   char name[20U] ;
};
struct mISDN_ctrl_req {
   int op ;
   int channel ;
   int p1 ;
   int p2 ;
};
struct net_proto_family {
   int family ;
   int (*create)(struct net * , struct socket * , int , int ) ;
   struct module *owner ;
};
enum sock_flags {
    SOCK_DEAD = 0,
    SOCK_DONE = 1,
    SOCK_URGINLINE = 2,
    SOCK_KEEPOPEN = 3,
    SOCK_LINGER = 4,
    SOCK_DESTROY = 5,
    SOCK_BROADCAST = 6,
    SOCK_TIMESTAMP = 7,
    SOCK_ZAPPED = 8,
    SOCK_USE_WRITE_QUEUE = 9,
    SOCK_DBG = 10,
    SOCK_RCVTSTAMP = 11,
    SOCK_RCVTSTAMPNS = 12,
    SOCK_LOCALROUTE = 13,
    SOCK_QUEUE_SHRUNK = 14,
    SOCK_TIMESTAMPING_TX_HARDWARE = 15,
    SOCK_TIMESTAMPING_TX_SOFTWARE = 16,
    SOCK_TIMESTAMPING_RX_HARDWARE = 17,
    SOCK_TIMESTAMPING_RX_SOFTWARE = 18,
    SOCK_TIMESTAMPING_SOFTWARE = 19,
    SOCK_TIMESTAMPING_RAW_HARDWARE = 20,
    SOCK_TIMESTAMPING_SYS_HARDWARE = 21,
    SOCK_FASYNC = 22,
    SOCK_RXQ_OVFL = 23
} ;
struct mISDN_sock {
   struct sock sk ;
   struct mISDNchannel ch ;
   u_int cmask ;
   struct mISDNdevice *dev ;
};
struct mISDNclock;
typedef int clockctl_func_t(void * , int );
struct mISDNclock {
   struct list_head list ;
   char name[64U] ;
   int pri ;
   clockctl_func_t *ctl ;
   void *priv ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct dchannel {
   struct mISDNdevice dev ;
   u_long Flags ;
   struct work_struct workq ;
   void (*phfunc)(struct dchannel * ) ;
   u_int state ;
   void *l1 ;
   void *hw ;
   int slot ;
   struct timer_list timer ;
   struct sk_buff *rx_skb ;
   int maxlen ;
   struct sk_buff_head squeue ;
   struct sk_buff_head rqueue ;
   struct sk_buff *tx_skb ;
   int tx_idx ;
   int debug ;
   int err_crc ;
   int err_tx ;
   int err_rx ;
};
struct bchannel {
   struct mISDNchannel ch ;
   int nr ;
   u_long Flags ;
   struct work_struct workq ;
   u_int state ;
   void *hw ;
   int slot ;
   struct timer_list timer ;
   struct sk_buff *rx_skb ;
   int maxlen ;
   struct sk_buff *next_skb ;
   struct sk_buff *tx_skb ;
   struct sk_buff_head rqueue ;
   int rcount ;
   int tx_idx ;
   int debug ;
   int err_crc ;
   int err_tx ;
   int err_rx ;
};
struct compat_timespec;
struct __anonstruct_futex_9 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_10 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_11 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_2052_8 {
   struct __anonstruct_futex_9 futex ;
   struct __anonstruct_nanosleep_10 nanosleep ;
   struct __anonstruct_poll_11 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_2052_8 ldv_2052 ;
};
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
struct __anonstruct_mm_segment_t_28 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_28 mm_segment_t;
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
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef s32 compat_time_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list[1U];
typedef __gnuc_va_list va_list[1U];
struct va_format {
   char const *fmt ;
   va_list *va ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef int dchannel_l1callback(struct dchannel * , u_int );
struct layer1;
struct layer1 {
   u_long Flags ;
   struct FsmInst l1m ;
   struct FsmTimer timer ;
   int delay ;
   struct dchannel *dch ;
   dchannel_l1callback *dcb ;
};
enum hrtimer_restart;
enum hrtimer_restart;
struct manager {
   struct mISDNchannel ch ;
   struct mISDNchannel bcast ;
   u_long options ;
   struct list_head layer2 ;
   rwlock_t lock ;
   struct FsmInst deact ;
   struct FsmTimer datimer ;
   struct sk_buff_head sendq ;
   struct mISDNchannel *up ;
   u_int nextid ;
   u_int lastid ;
};
struct layer2;
struct teimgr {
   int ri ;
   int rcnt ;
   struct FsmInst tei_m ;
   struct FsmTimer timer ;
   int tval ;
   int nval ;
   struct layer2 *l2 ;
   struct manager *mgr ;
};
struct laddr {
   u_char A ;
   u_char B ;
};
struct layer2 {
   struct list_head list ;
   struct mISDNchannel ch ;
   u_long flag ;
   int id ;
   struct mISDNchannel *up ;
   signed char sapi ;
   signed char tei ;
   struct laddr addr ;
   u_int maxlen ;
   struct teimgr *tm ;
   u_int vs ;
   u_int va ;
   u_int vr ;
   int rc ;
   u_int window ;
   u_int sow ;
   struct FsmInst l2m ;
   struct FsmTimer t200 ;
   struct FsmTimer t203 ;
   int T200 ;
   int N200 ;
   int T203 ;
   u_int next_id ;
   u_int down_id ;
   struct sk_buff *windowar[8U] ;
   struct sk_buff_head i_queue ;
   struct sk_buff_head ui_queue ;
   struct sk_buff_head down_queue ;
   struct sk_buff_head tmp_queue ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef struct poll_table_struct poll_table;
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   mode_t mode ;
};
struct mISDNtimerdev {
   int next_id ;
   struct list_head pending ;
   struct list_head expired ;
   wait_queue_head_t wait ;
   u_int work ;
   spinlock_t lock ;
};
struct mISDNtimer {
   struct list_head list ;
   struct mISDNtimerdev *dev ;
   struct timer_list tl ;
   int id ;
};
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  {
  __list_add(new, head->prev, head);
  }
  return;
}
}
extern void list_del(struct list_head * ) ;
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern size_t strlen(char const * ) ;
extern char *strcpy(char * , char const * ) ;
extern void _raw_read_lock(rwlock_t * ) ;
extern unsigned long _raw_write_lock_irqsave(rwlock_t * ) ;
extern void _raw_read_unlock(rwlock_t * ) ;
extern void _raw_write_unlock_irqrestore(rwlock_t * , unsigned long ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern int add_uevent_var(struct kobj_uevent_env * , char const * , ...) ;
extern struct module __this_module ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
unsigned int ldv_module_refcount(void) ;
void ldv_module_put_and_exit(void) ;
__inline static int test_channelmap(u_int nr , u_char *map )
{
  {
  if (nr <= 127U) {
    return ((int )*(map + (unsigned long )(nr >> 3)) & (1 << ((int )nr & 7)));
  } else {
    return (0);
  }
}
}
extern int __class_register(struct class * , struct lock_class_key * ) ;
extern void class_unregister(struct class * ) ;
extern int class_for_each_device(struct class * , struct device * , void * , int (*)(struct device * ,
                                                                                     void * ) ) ;
extern struct device *class_find_device(struct class * , struct device * , void * ,
                                        int (*)(struct device * , void * ) ) ;
__inline static char const *dev_name(struct device const *dev )
{ char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * const )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
extern int dev_set_name(struct device * , char const * , ...) ;
extern void device_initialize(struct device * ) ;
extern int device_add(struct device * ) ;
extern void device_del(struct device * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern void put_device(struct device * ) ;
int mISDN_register_device(struct mISDNdevice *dev , struct device *parent , char *name ) ;
void mISDN_unregister_device(struct mISDNdevice *dev ) ;
int mISDN_register_Bprotocol(struct Bprotocol *bp ) ;
void mISDN_unregister_Bprotocol(struct Bprotocol *bp ) ;
__inline static struct mISDNdevice *dev_to_mISDN(struct device *dev )
{ void *tmp ;
  {
  if ((unsigned long )dev != (unsigned long )((struct device *)0)) {
    {
    tmp = dev_get_drvdata((struct device const *)dev);
    }
    return ((struct mISDNdevice *)tmp);
  } else {
    return ((struct mISDNdevice *)0);
  }
}
}
struct mISDNdevice *get_mdevice(u_int id ) ;
int get_mdevice_count(void) ;
int create_stack(struct mISDNdevice *dev ) ;
void delete_stack(struct mISDNdevice *dev ) ;
void mISDN_initstack(u_int *dp ) ;
int misdn_sock_init(u_int *deb ) ;
void misdn_sock_cleanup(void) ;
u_int get_all_Bprotocols(void) ;
struct Bprotocol *get_Bprotocol4mask(u_int m ) ;
struct Bprotocol *get_Bprotocol4id(u_int id ) ;
int mISDN_inittimer(u_int *deb ) ;
void mISDN_timer_cleanup(void) ;
int l1_init(u_int *deb ) ;
void l1_cleanup(void) ;
int Isdnl2_Init(u_int *deb ) ;
void Isdnl2_cleanup(void) ;
void mISDN_init_clock(u_int *dp ) ;
static u_int debug ;
static u64 device_ids ;
static struct list_head Bprotocols = {& Bprotocols, & Bprotocols};
static rwlock_t bp_lock = {{16777216U}, 3736018669U, 4294967295U, (void *)0x0fffffffffffffffUL, {(struct lock_class_key *)0,
                                                                          {(struct lock_class *)0,
                                                                           (struct lock_class *)0},
                                                                          "bp_lock",
                                                                          0, 0UL}};
static void mISDN_dev_release(struct device *dev )
{
  {
  return;
}
}
static ssize_t _show_id(struct device *dev , struct device_attribute *attr , char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%d\n", mdev->id);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t _show_nrbchan(struct device *dev , struct device_attribute *attr ,
                             char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%d\n", mdev->nrbchan);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t _show_d_protocols(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%d\n", mdev->Dprotocols);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t _show_b_protocols(struct device *dev , struct device_attribute *attr ,
                                 char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  u_int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp___0 = get_all_Bprotocols();
  tmp___1 = sprintf(buf, "%d\n", mdev->Bprotocols | tmp___0);
  }
  return ((ssize_t )tmp___1);
}
}
static ssize_t _show_protocol(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-19L);
  } else {
  }
  {
  tmp___0 = sprintf(buf, "%d\n", mdev->D.protocol);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t _show_name(struct device *dev , struct device_attribute *attr , char *buf )
{ char const *tmp ;
  size_t tmp___0 ;
  {
  {
  tmp = dev_name((struct device const *)dev);
  strcpy(buf, tmp);
  tmp___0 = strlen((char const *)buf);
  }
  return ((ssize_t )tmp___0);
}
}
static ssize_t _show_channelmap(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  char *bp ;
  int i ;
  char *tmp___0 ;
  int tmp___2 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  bp = buf;
  i = 0;
  }
  goto ldv_38429;
  ldv_38428:
  {
  tmp___0 = bp;
  bp = bp + 1;
  tmp___2 = test_channelmap((u_int )i, (u_char *)(& mdev->channelmap));
  }
  if (tmp___2 != 0) {
    *tmp___0 = (char)49;
  } else {
    *tmp___0 = (char)48;
  }
  i = i + 1;
  ldv_38429: ;
  if ((u_int )i <= mdev->nrbchan) {
    goto ldv_38428;
  } else {
    goto ldv_38430;
  }
  ldv_38430: ;
  return ((long )bp - (long )buf);
}
}
static struct device_attribute mISDN_dev_attrs[8U] =
  { {{"id", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}, {(char)0},
                                                 {(char)0}, {(char)0}}}}, & _show_id,
      (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                   size_t ))0},
        {{"d_protocols", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}}}},
      & _show_d_protocols, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0},
        {{"b_protocols", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}, {(char)0},
                                                          {(char)0}, {(char)0}}}},
      & _show_b_protocols, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0},
        {{"protocol", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}, {(char)0},
                                                       {(char)0}, {(char)0}}}}, & _show_protocol,
      (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                   size_t ))0},
        {{"channelmap", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                         {(char)0}, {(char)0}, {(char)0},
                                                         {(char)0}, {(char)0}}}},
      & _show_channelmap, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0},
        {{"nrbchan", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & _show_nrbchan,
      (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                   size_t ))0},
        {{"name", 292U, (struct lock_class_key *)0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & _show_name,
      (ssize_t (*)(struct device * , struct device_attribute * , char const * ,
                   size_t ))0},
        {{(char const *)0, 0U, (struct lock_class_key *)0, {{{(char)0}, {(char)0},
                                                            {(char)0}, {(char)0},
                                                            {(char)0}, {(char)0},
                                                            {(char)0}, {(char)0}}}},
      (ssize_t (*)(struct device * , struct device_attribute * , char * ))0, (ssize_t (*)(struct device * ,
                                                                                          struct device_attribute * ,
                                                                                          char const * ,
                                                                                          size_t ))0}};
static int mISDN_uevent(struct device *dev , struct kobj_uevent_env *env )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  int tmp___0 ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (0);
  } else {
  }
  {
  tmp___0 = add_uevent_var(env, "nchans=%d", mdev->nrbchan);
  }
  if (tmp___0 != 0) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void mISDN_class_release(struct class *cls )
{
  {
  return;
}
}
static struct class mISDN_class =
     {"mISDN", & __this_module, (struct class_attribute *)0, (struct device_attribute *)(& mISDN_dev_attrs),
    (struct bin_attribute *)0, (struct kobject *)0, & mISDN_uevent, (char *(*)(struct device * ,
                                                                               mode_t * ))0,
    & mISDN_class_release, & mISDN_dev_release, (int (*)(struct device * , pm_message_t ))0,
    (int (*)(struct device * ))0, (struct kobj_ns_type_operations const *)0, (void const *(*)(struct device * ))0,
    (struct dev_pm_ops const *)0, (struct subsys_private *)0};
static int _get_mdevice(struct device *dev , void *id )
{ struct mISDNdevice *mdev ;
  struct mISDNdevice *tmp ;
  {
  {
  tmp = dev_to_mISDN(dev);
  mdev = tmp;
  }
  if ((unsigned long )mdev == (unsigned long )((struct mISDNdevice *)0)) {
    return (0);
  } else {
  }
  if (mdev->id != *((u_int *)id)) {
    return (0);
  } else {
  }
  return (1);
}
}
struct mISDNdevice *get_mdevice(u_int id )
{ struct device *tmp ;
  struct mISDNdevice *tmp___0 ;
  {
  {
  tmp = class_find_device(& mISDN_class, (struct device *)0, (void *)(& id), & _get_mdevice);
  tmp___0 = dev_to_mISDN(tmp);
  }
  return (tmp___0);
}
}
static int _get_mdevice_count(struct device *dev , void *cnt )
{
  {
  *((int *)cnt) = *((int *)cnt) + 1;
  return (0);
}
}
int get_mdevice_count(void)
{ int cnt ;
  {
  {
  cnt = 0;
  class_for_each_device(& mISDN_class, (struct device *)0, (void *)(& cnt), & _get_mdevice_count);
  }
  return (cnt);
}
}
static int get_free_devid(void)
{ u_int i ;
  int tmp ;
  {
  i = 0U;
  goto ldv_38463;
  ldv_38462:
  {
  tmp = test_and_set_bit((int )i, (unsigned long volatile *)(& device_ids));
  }
  if (tmp == 0) {
    goto ldv_38461;
  } else {
  }
  i = i + 1U;
  ldv_38463: ;
  if (i <= 63U) {
    goto ldv_38462;
  } else {
    goto ldv_38461;
  }
  ldv_38461: ;
  if (i > 63U) {
    return (-16);
  } else {
  }
  return ((int )i);
}
}
int mISDN_register_device(struct mISDNdevice *dev , struct device *parent , char *name )
{ int err ;
  char const *tmp ;
  {
  {
  err = get_free_devid();
  }
  if (err < 0) {
    goto error1;
  } else {
  }
  {
  dev->id = (u_int )err;
  device_initialize(& dev->dev);
  }
  if ((unsigned long )name != (unsigned long )((char *)0)) {
    if ((int )((signed char )*name) != 0) {
      {
      dev_set_name(& dev->dev, "%s", name);
      }
    } else {
      {
      dev_set_name(& dev->dev, "mISDN%d", dev->id);
      }
    }
  } else {
    {
    dev_set_name(& dev->dev, "mISDN%d", dev->id);
    }
  }
  if ((debug & 255U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& dev->dev));
    printk("<7>mISDN_register %s %d\n", tmp, dev->id);
    }
  } else {
  }
  {
  err = create_stack(dev);
  }
  if (err != 0) {
    goto error1;
  } else {
  }
  {
  dev->dev.class = & mISDN_class;
  dev->dev.platform_data = (void *)dev;
  dev->dev.parent = parent;
  dev_set_drvdata(& dev->dev, (void *)dev);
  err = device_add(& dev->dev);
  }
  if (err != 0) {
    goto error3;
  } else {
  }
  return (0);
  error3:
  {
  delete_stack(dev);
  }
  return (err);
  error1: ;
  return (err);
}
}
void mISDN_unregister_device(struct mISDNdevice *dev )
{ char const *tmp ;
  {
  if ((debug & 255U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& dev->dev));
    printk("<7>mISDN_unregister %s %d\n", tmp, dev->id);
    }
  } else {
  }
  {
  device_del(& dev->dev);
  dev_set_drvdata(& dev->dev, (void *)0);
  test_and_clear_bit((int )dev->id, (unsigned long volatile *)(& device_ids));
  delete_stack(dev);
  put_device(& dev->dev);
  }
  return;
}
}
u_int get_all_Bprotocols(void)
{ struct Bprotocol *bp ;
  u_int m ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  m = 0U;
  _raw_read_lock(& bp_lock);
  __mptr = (struct list_head const *)Bprotocols.next;
  bp = (struct Bprotocol *)__mptr;
  }
  goto ldv_38499;
  ldv_38498:
  m = bp->Bprotocols | m;
  __mptr___0 = (struct list_head const *)bp->list.next;
  bp = (struct Bprotocol *)__mptr___0;
  ldv_38499: ;
  if ((unsigned long )(& bp->list) != (unsigned long )(& Bprotocols)) {
    goto ldv_38498;
  } else {
    goto ldv_38500;
  }
  ldv_38500:
  {
  _raw_read_unlock(& bp_lock);
  }
  return (m);
}
}
struct Bprotocol *get_Bprotocol4mask(u_int m )
{ struct Bprotocol *bp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  _raw_read_lock(& bp_lock);
  __mptr = (struct list_head const *)Bprotocols.next;
  bp = (struct Bprotocol *)__mptr;
  }
  goto ldv_38510;
  ldv_38509: ;
  if ((bp->Bprotocols & m) != 0U) {
    {
    _raw_read_unlock(& bp_lock);
    }
    return (bp);
  } else {
  }
  __mptr___0 = (struct list_head const *)bp->list.next;
  bp = (struct Bprotocol *)__mptr___0;
  ldv_38510: ;
  if ((unsigned long )(& bp->list) != (unsigned long )(& Bprotocols)) {
    goto ldv_38509;
  } else {
    goto ldv_38511;
  }
  ldv_38511:
  {
  _raw_read_unlock(& bp_lock);
  }
  return ((struct Bprotocol *)0);
}
}
struct Bprotocol *get_Bprotocol4id(u_int id )
{ u_int m ;
  struct Bprotocol *tmp ;
  {
  if (id <= 31U) {
    {
    printk("<4>%s id not in range  %d\n", "get_Bprotocol4id", id);
    }
    return ((struct Bprotocol *)0);
  } else
  if (id > 63U) {
    {
    printk("<4>%s id not in range  %d\n", "get_Bprotocol4id", id);
    }
    return ((struct Bprotocol *)0);
  } else {
  }
  {
  m = (u_int )(1 << ((int )id & 31));
  tmp = get_Bprotocol4mask(m);
  }
  return (tmp);
}
}
int mISDN_register_Bprotocol(struct Bprotocol *bp )
{ u_long flags ;
  struct Bprotocol *old ;
  {
  if ((debug & 255U) != 0U) {
    {
    printk("<7>%s: %s/%x\n", "mISDN_register_Bprotocol", bp->name, bp->Bprotocols);
    }
  } else {
  }
  {
  old = get_Bprotocol4mask(bp->Bprotocols);
  }
  if ((unsigned long )old != (unsigned long )((struct Bprotocol *)0)) {
    {
    printk("<4>register duplicate protocol old %s/%x new %s/%x\n", old->name, old->Bprotocols,
           bp->name, bp->Bprotocols);
    }
    return (-16);
  } else {
  }
  {
  flags = _raw_write_lock_irqsave(& bp_lock);
  list_add_tail(& bp->list, & Bprotocols);
  _raw_write_unlock_irqrestore(& bp_lock, flags);
  }
  return (0);
}
}
void mISDN_unregister_Bprotocol(struct Bprotocol *bp )
{ u_long flags ;
  {
  if ((debug & 255U) != 0U) {
    {
    printk("<7>%s: %s/%x\n", "mISDN_unregister_Bprotocol", bp->name, bp->Bprotocols);
    }
  } else {
  }
  {
  flags = _raw_write_lock_irqsave(& bp_lock);
  list_del(& bp->list);
  _raw_write_unlock_irqrestore(& bp_lock, flags);
  }
  return;
}
}
static int mISDNInit(void)
{ int err ;
  struct lock_class_key __key ;
  int tmp ;
  {
  {
  printk("<6>Modular ISDN core version %d.%d.%d\n", 1, 1, 21);
  mISDN_init_clock(& debug);
  mISDN_initstack(& debug);
  tmp = __class_register(& mISDN_class, & __key);
  err = tmp;
  }
  if (err != 0) {
    goto error1;
  } else {
  }
  {
  err = mISDN_inittimer(& debug);
  }
  if (err != 0) {
    goto error2;
  } else {
  }
  {
  err = l1_init(& debug);
  }
  if (err != 0) {
    goto error3;
  } else {
  }
  {
  err = Isdnl2_Init(& debug);
  }
  if (err != 0) {
    goto error4;
  } else {
  }
  {
  err = misdn_sock_init(& debug);
  }
  if (err != 0) {
    goto error5;
  } else {
  }
  return (0);
  error5:
  {
  Isdnl2_cleanup();
  }
  error4:
  {
  l1_cleanup();
  }
  error3:
  {
  mISDN_timer_cleanup();
  }
  error2:
  {
  class_unregister(& mISDN_class);
  }
  error1: ;
  return (err);
}
}
static void mISDN_cleanup(void)
{
  {
  {
  misdn_sock_cleanup();
  Isdnl2_cleanup();
  l1_cleanup();
  mISDN_timer_cleanup();
  class_unregister(& mISDN_class);
  printk("<7>mISDNcore unloaded\n");
  }
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_blast_assert(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int ldv_undefined_int(void) ;
int ldv_module_refcounter = 1;
void ldv_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_module_refcounter = ldv_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_try_module_get(struct module *module )
{ int module_get_succeeded ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    module_get_succeeded = ldv_undefined_int();
    }
    if (module_get_succeeded == 1) {
      ldv_module_refcounter = ldv_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    if (ldv_module_refcounter <= 1) {
      {
      ldv_blast_assert();
      }
    } else {
    }
    ldv_module_refcounter = ldv_module_refcounter - 1;
  } else {
  }
  return;
}
}
void ldv_module_put_and_exit(void)
{
  {
  {
  ldv_module_put((struct module *)1);
  }
  LDV_STOP: ;
  goto LDV_STOP;
}
}
unsigned int ldv_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_module_refcounter + -1));
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_module_refcounter != 1) {
    {
    ldv_blast_assert();
    }
  } else {
  }
  return;
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , char const * , struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * const )0));
}
}
extern int del_timer(struct timer_list * ) ;
extern void add_timer(struct timer_list * ) ;
extern void kfree(void const * ) ;
extern void *__kmalloc(size_t , gfp_t ) ;
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{ void *tmp___2 ;
  {
  {
  tmp___2 = __kmalloc(size, flags);
  }
  return (tmp___2);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  {
  tmp = kmalloc(size, flags | 32768U);
  }
  return (tmp);
}
}
void mISDN_FsmNew(struct Fsm *fsm , struct FsmNode *fnlist , int fncount ) ;
void mISDN_FsmFree(struct Fsm *fsm ) ;
int mISDN_FsmEvent(struct FsmInst *fi , int event , void *arg ) ;
void mISDN_FsmChangeState(struct FsmInst *fi , int newstate ) ;
void mISDN_FsmInitTimer(struct FsmInst *fi , struct FsmTimer *ft ) ;
int mISDN_FsmAddTimer(struct FsmTimer *ft , int millisec , int event , void *arg ,
                      int where ) ;
void mISDN_FsmRestartTimer(struct FsmTimer *ft , int millisec , int event , void *arg ,
                           int where ) ;
void mISDN_FsmDelTimer(struct FsmTimer *ft , int where ) ;
void mISDN_FsmNew(struct Fsm *fsm , struct FsmNode *fnlist , int fncount )
{ int i ;
  void *tmp ;
  {
  {
  tmp = kzalloc(((unsigned long )fsm->state_count * (unsigned long )fsm->event_count) * 8UL,
                208U);
  fsm->jumpmatrix = (FSMFNPTR (**)(struct FsmInst * , int , void * ))tmp;
  i = 0;
  }
  goto ldv_13951;
  ldv_13950: ;
  if ((fnlist + (unsigned long )i)->state >= fsm->state_count) {
    {
    printk("<3>mISDN_FsmNew Error: %d st(%ld/%ld) ev(%ld/%ld)\n", i, (long )(fnlist + (unsigned long )i)->state,
           (long )fsm->state_count, (long )(fnlist + (unsigned long )i)->event, (long )fsm->event_count);
    }
  } else
  if ((fnlist + (unsigned long )i)->event >= fsm->event_count) {
    {
    printk("<3>mISDN_FsmNew Error: %d st(%ld/%ld) ev(%ld/%ld)\n", i, (long )(fnlist + (unsigned long )i)->state,
           (long )fsm->state_count, (long )(fnlist + (unsigned long )i)->event, (long )fsm->event_count);
    }
  } else {
    *(fsm->jumpmatrix + (unsigned long )(fsm->state_count * (fnlist + (unsigned long )i)->event + (fnlist + (unsigned long )i)->state)) = (FSMFNPTR (*)(struct FsmInst * ,
                                                                                                                                                        int ,
                                                                                                                                                        void * ))(fnlist + (unsigned long )i)->routine;
  }
  i = i + 1;
  ldv_13951: ;
  if (i < fncount) {
    goto ldv_13950;
  } else {
    goto ldv_13952;
  }
  ldv_13952: ;
  return;
}
}
void mISDN_FsmFree(struct Fsm *fsm )
{
  {
  {
  kfree((void const *)fsm->jumpmatrix);
  }
  return;
}
}
int mISDN_FsmEvent(struct FsmInst *fi , int event , void *arg )
{ void (*r)(struct FsmInst * , int , void * ) ;
  {
  if (fi->state >= (fi->fsm)->state_count) {
    {
    printk("<3>mISDN_FsmEvent Error st(%ld/%ld) ev(%d/%ld)\n", (long )fi->state, (long )(fi->fsm)->state_count,
           event, (long )(fi->fsm)->event_count);
    }
    return (1);
  } else
  if ((fi->fsm)->event_count <= event) {
    {
    printk("<3>mISDN_FsmEvent Error st(%ld/%ld) ev(%d/%ld)\n", (long )fi->state, (long )(fi->fsm)->state_count,
           event, (long )(fi->fsm)->event_count);
    }
    return (1);
  } else {
  }
  r = (void (*)(struct FsmInst * , int , void * ))*((fi->fsm)->jumpmatrix + (unsigned long )((fi->fsm)->state_count * event + fi->state));
  if ((unsigned long )r != (unsigned long )((void (*)(struct FsmInst * , int , void * ))0)) {
    if (fi->debug != 0) {
      {
      (*(fi->printdebug))(fi, (char *)"State %s Event %s", *((fi->fsm)->strState + (unsigned long )fi->state),
                          *((fi->fsm)->strEvent + (unsigned long )event));
      }
    } else {
    }
    {
    (*r)(fi, event, arg);
    }
    return (0);
  } else {
    if (fi->debug != 0) {
      {
      (*(fi->printdebug))(fi, (char *)"State %s Event %s no action", *((fi->fsm)->strState + (unsigned long )fi->state),
                          *((fi->fsm)->strEvent + (unsigned long )event));
      }
    } else {
    }
    return (1);
  }
}
}
void mISDN_FsmChangeState(struct FsmInst *fi , int newstate )
{
  {
  fi->state = newstate;
  if (fi->debug != 0) {
    {
    (*(fi->printdebug))(fi, (char *)"ChangeState %s", *((fi->fsm)->strState + (unsigned long )newstate));
    }
  } else {
  }
  return;
}
}
static void FsmExpireTimer(struct FsmTimer *ft )
{
  {
  {
  mISDN_FsmEvent(ft->fi, ft->event, ft->arg);
  }
  return;
}
}
void mISDN_FsmInitTimer(struct FsmInst *fi , struct FsmTimer *ft )
{ struct lock_class_key __key ;
  {
  {
  ft->fi = fi;
  ft->tl.function = (void (*)(unsigned long ))(& FsmExpireTimer);
  ft->tl.data = (unsigned long )ft;
  init_timer_key(& ft->tl, "&ft->tl", & __key);
  }
  return;
}
}
void mISDN_FsmDelTimer(struct FsmTimer *ft , int where )
{
  {
  {
  del_timer(& ft->tl);
  }
  return;
}
}
int mISDN_FsmAddTimer(struct FsmTimer *ft , int millisec , int event , void *arg ,
                      int where )
{ int tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& ft->tl));
  }
  if (tmp != 0) {
    if ((ft->fi)->debug != 0) {
      {
      printk("<4>mISDN_FsmAddTimer: timer already active!\n");
      (*((ft->fi)->printdebug))(ft->fi, (char *)"mISDN_FsmAddTimer already active!");
      }
    } else {
    }
    return (-1);
  } else {
  }
  {
  init_timer_key(& ft->tl, "&ft->tl", & __key);
  ft->event = event;
  ft->arg = arg;
  ft->tl.expires = (unsigned long )((millisec * 250) / 1000) + (unsigned long )jiffies;
  add_timer(& ft->tl);
  }
  return (0);
}
}
void mISDN_FsmRestartTimer(struct FsmTimer *ft , int millisec , int event , void *arg ,
                           int where )
{ int tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& ft->tl));
  }
  if (tmp != 0) {
    {
    del_timer(& ft->tl);
    }
  } else {
  }
  {
  init_timer_key(& ft->tl, "&ft->tl", & __key);
  ft->event = event;
  ft->arg = arg;
  ft->tl.expires = (unsigned long )((millisec * 250) / 1000) + (unsigned long )jiffies;
  add_timer(& ft->tl);
  }
  return;
}
}
__inline static int hlist_unhashed(struct hlist_node const *h )
{
  {
  return ((unsigned long )h->pprev == (unsigned long )((struct hlist_node ** const )0));
}
}
__inline static void __hlist_del(struct hlist_node *n )
{ struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{ struct hlist_node *first ;
  {
  first = h->first;
  n->next = first;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  h->first = n;
  n->pprev = & h->first;
  return;
}
}
__inline static void __set_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void might_fault(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{ unsigned char c ;
  {
  __asm__ volatile (".section .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.previous\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((unsigned int )c != 0U);
}
}
extern void _raw_read_lock_bh(rwlock_t * ) ;
extern void _raw_write_lock_bh(rwlock_t * ) ;
extern void _raw_read_unlock_bh(rwlock_t * ) ;
extern void _raw_write_unlock_bh(rwlock_t * ) ;
extern struct timeval ns_to_timeval(s64 const ) ;
extern int memcpy_fromiovec(unsigned char * , struct iovec * , int ) ;
extern int put_cmsg(struct msghdr * , int , int , int , void * ) ;
extern int sock_register(struct net_proto_family const * ) ;
extern void sock_unregister(int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{ int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  {
  tmp = __builtin_object_size((void *)((void const *)to), 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = __builtin_expect((long )(sz == -1), 1L);
  }
  if (tmp___1 != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___2 = __builtin_expect((long )((unsigned long )sz >= n), 1L);
    }
    if (tmp___2 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __ret_warn_on = 1;
      tmp___0 = __builtin_expect((long )(__ret_warn_on != 0), 0L);
      }
      if (tmp___0 != 0L) {
        {
        warn_slowpath_fmt("/anthill/stuff/tacas-comp/inst/current/envs/linux-3.0.1/linux-3.0.1/arch/x86/include/asm/uaccess_64.h",
                          (int const )57, "Buffer overflow detected!\n");
        }
      } else {
      }
      {
      __builtin_expect((long )(__ret_warn_on != 0), 0L);
      }
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{ unsigned long tmp ;
  {
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  }
  return ((int )tmp);
}
}
extern int device_rename(struct device * , char const * ) ;
extern ktime_t ktime_get_real(void) ;
extern void kfree_skb(struct sk_buff * ) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{ struct sk_buff *tmp ;
  {
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  }
  return (tmp);
}
}
extern void skb_queue_head(struct sk_buff_head * , struct sk_buff * ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern void skb_queue_purge(struct sk_buff_head * ) ;
extern struct sk_buff *skb_recv_datagram(struct sock * , unsigned int , int , int * ) ;
extern unsigned int datagram_poll(struct file * , struct socket * , struct poll_table_struct * ) ;
extern int skb_copy_datagram_iovec(struct sk_buff const * , int , struct iovec * ,
                                   int ) ;
extern void skb_free_datagram(struct sock * , struct sk_buff * ) ;
__inline static void skb_get_timestamp(struct sk_buff const *skb , struct timeval *stamp )
{
  {
  {
  *stamp = ns_to_timeval(skb->tstamp.tv64);
  }
  return;
}
}
__inline static void __net_timestamp(struct sk_buff *skb )
{
  {
  {
  skb->tstamp = ktime_get_real();
  }
  return;
}
}
__inline static int sk_unhashed(struct sock const *sk )
{ int tmp ;
  {
  {
  tmp = hlist_unhashed(& sk->__sk_common.ldv_37191.skc_node);
  }
  return (tmp);
}
}
__inline static int sk_hashed(struct sock const *sk )
{ int tmp ;
  {
  {
  tmp = sk_unhashed(sk);
  }
  return (tmp == 0);
}
}
__inline static void sk_node_init(struct hlist_node *node )
{
  {
  node->pprev = (struct hlist_node **)0;
  return;
}
}
__inline static void __sk_del_node(struct sock *sk )
{
  {
  {
  __hlist_del(& sk->__sk_common.ldv_37191.skc_node);
  }
  return;
}
}
__inline static int __sk_del_node_init(struct sock *sk )
{ int tmp ;
  {
  {
  tmp = sk_hashed((struct sock const *)sk);
  }
  if (tmp != 0) {
    {
    __sk_del_node(sk);
    sk_node_init(& sk->__sk_common.ldv_37191.skc_node);
    }
    return (1);
  } else {
  }
  return (0);
}
}
__inline static void sock_hold(struct sock *sk )
{
  {
  {
  atomic_inc(& sk->__sk_common.skc_refcnt);
  }
  return;
}
}
__inline static void __sock_put(struct sock *sk )
{
  {
  {
  atomic_dec(& sk->__sk_common.skc_refcnt);
  }
  return;
}
}
__inline static int sk_del_node_init(struct sock *sk )
{ int rc ;
  int tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = __sk_del_node_init(sk);
  rc = tmp;
  }
  if (rc != 0) {
    {
    tmp___0 = atomic_read((atomic_t const *)(& sk->__sk_common.skc_refcnt));
    __ret_warn_on = tmp___0 == 1;
    tmp___1 = __builtin_expect((long )(__ret_warn_on != 0), 0L);
    }
    if (tmp___1 != 0L) {
      {
      warn_slowpath_null("include/net/sock.h", (int const )453);
      }
    } else {
    }
    {
    __builtin_expect((long )(__ret_warn_on != 0), 0L);
    __sock_put(sk);
    }
  } else {
  }
  return (rc);
}
}
__inline static void __sk_add_node(struct sock *sk , struct hlist_head *list )
{
  {
  {
  hlist_add_head(& sk->__sk_common.ldv_37191.skc_node, list);
  }
  return;
}
}
__inline static void sk_add_node(struct sock *sk , struct hlist_head *list )
{
  {
  {
  sock_hold(sk);
  __sk_add_node(sk, list);
  }
  return;
}
}
__inline static void sock_set_flag(struct sock *sk , enum sock_flags flag )
{
  {
  {
  __set_bit((int )flag, (unsigned long volatile *)(& sk->sk_flags));
  }
  return;
}
}
__inline static void sock_reset_flag(struct sock *sk , enum sock_flags flag )
{
  {
  {
  __clear_bit((int )flag, (unsigned long volatile *)(& sk->sk_flags));
  }
  return;
}
}
extern void lock_sock_nested(struct sock * , int ) ;
__inline static void lock_sock(struct sock *sk )
{
  {
  {
  lock_sock_nested(sk, 0);
  }
  return;
}
}
extern void release_sock(struct sock * ) ;
extern struct sock *sk_alloc(struct net * , int , gfp_t , struct proto * ) ;
extern void sk_free(struct sock * ) ;
extern int sock_no_connect(struct socket * , struct sockaddr * , int , int ) ;
extern int sock_no_socketpair(struct socket * , struct socket * ) ;
extern int sock_no_accept(struct socket * , struct socket * , int ) ;
extern int sock_no_getname(struct socket * , struct sockaddr * , int * , int ) ;
extern unsigned int sock_no_poll(struct file * , struct socket * , struct poll_table_struct * ) ;
extern int sock_no_listen(struct socket * , int ) ;
extern int sock_no_shutdown(struct socket * , int ) ;
extern int sock_no_getsockopt(struct socket * , int , int , char * , int * ) ;
extern int sock_no_setsockopt(struct socket * , int , int , char * , unsigned int ) ;
extern int sock_no_sendmsg(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
extern int sock_no_recvmsg(struct kiocb * , struct socket * , struct msghdr * , size_t ,
                           int ) ;
extern int sock_no_mmap(struct file * , struct socket * , struct vm_area_struct * ) ;
extern void sock_init_data(struct socket * , struct sock * ) ;
__inline static void sock_put(struct sock *sk )
{ int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& sk->__sk_common.skc_refcnt);
  }
  if (tmp != 0) {
    {
    sk_free(sk);
    }
  } else {
  }
  return;
}
}
__inline static void sk_tx_queue_clear(struct sock *sk )
{
  {
  sk->__sk_common.skc_tx_queue_mapping = -1;
  return;
}
}
__inline static void sk_set_socket(struct sock *sk , struct socket *sock )
{
  {
  {
  sk_tx_queue_clear(sk);
  sk->sk_socket = sock;
  }
  return;
}
}
__inline static void sock_orphan(struct sock *sk )
{
  {
  {
  _raw_write_lock_bh(& sk->sk_callback_lock);
  sock_set_flag(sk, (enum sock_flags )0);
  sk_set_socket(sk, (struct socket *)0);
  sk->sk_wq = (struct socket_wq *)0;
  _raw_write_unlock_bh(& sk->sk_callback_lock);
  }
  return;
}
}
extern int sock_queue_rcv_skb(struct sock * , struct sk_buff * ) ;
int connect_Bstack(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                   struct sockaddr_mISDN *adr ) ;
int connect_layer1(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                   struct sockaddr_mISDN *adr ) ;
int create_l2entity(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                    struct sockaddr_mISDN *adr ) ;
void delete_channel(struct mISDNchannel *ch ) ;
static u_int *debug___0 ;
static struct proto mISDN_proto =
     {(void (*)(struct sock * , long ))0, (int (*)(struct sock * , struct sockaddr * ,
                                                  int ))0, (int (*)(struct sock * ,
                                                                     int ))0, (struct sock *(*)(struct sock * ,
                                                                                                 int ,
                                                                                                 int * ))0,
    (int (*)(struct sock * , int , unsigned long ))0, (int (*)(struct sock * ))0,
    (void (*)(struct sock * ))0, (void (*)(struct sock * , int ))0, (int (*)(struct sock * ,
                                                                              int ,
                                                                              int ,
                                                                              char * ,
                                                                              unsigned int ))0,
    (int (*)(struct sock * , int , int , char * , int * ))0, (int (*)(struct sock * ,
                                                                        int , int ,
                                                                        char * , unsigned int ))0,
    (int (*)(struct sock * , int , int , char * , int * ))0, (int (*)(struct sock * ,
                                                                        unsigned int ,
                                                                        unsigned long ))0,
    (int (*)(struct kiocb * , struct sock * , struct msghdr * , size_t ))0, (int (*)(struct kiocb * ,
                                                                                      struct sock * ,
                                                                                      struct msghdr * ,
                                                                                      size_t ,
                                                                                      int ,
                                                                                      int ,
                                                                                      int * ))0,
    (int (*)(struct sock * , struct page * , int , size_t , int ))0, (int (*)(struct sock * ,
                                                                                 struct sockaddr * ,
                                                                                 int ))0,
    (int (*)(struct sock * , struct sk_buff * ))0, (void (*)(struct sock * ))0, (void (*)(struct sock * ))0,
    (void (*)(struct sock * ))0, (int (*)(struct sock * , unsigned short ))0, (void (*)(struct sock * ,
                                                                                         int ))0,
    0U, (void (*)(struct sock * ))0, (atomic_long_t *)0, (struct percpu_counter *)0,
    (int *)0, (long *)0, (int *)0, (int *)0, 0, (_Bool)0, (struct kmem_cache *)0,
    1368U, 0, (struct percpu_counter *)0, (struct request_sock_ops *)0, (struct timewait_sock_ops *)0,
    {(struct inet_hashinfo *)0}, & __this_module, {(char )'m', (char )'i', (char )'s',
                                                   (char )'d', (char )'n', (char )'\000'},
    {(struct list_head *)0, (struct list_head *)0}};
static struct mISDN_sock_list data_sockets = {{(struct hlist_node *)0}, {{16777216U}, 3736018669U, 4294967295U, (void *)0x0fffffffffffffffUL,
                               {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                             (struct lock_class *)0},
                                "data_sockets.lock", 0, 0UL}}};
static struct mISDN_sock_list base_sockets = {{(struct hlist_node *)0}, {{16777216U}, 3736018669U, 4294967295U, (void *)0x0fffffffffffffffUL,
                               {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                             (struct lock_class *)0},
                                "base_sockets.lock", 0, 0UL}}};
__inline static struct sk_buff *_l2_alloc_skb(unsigned int len , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  long tmp ;
  {
  {
  skb = alloc_skb(len + 4U, gfp_mask);
  tmp = __builtin_expect((long )((unsigned long )skb != (unsigned long )((struct sk_buff *)0)),
                         1L);
  }
  if (tmp != 0L) {
    {
    skb_reserve(skb, 4);
    }
  } else {
  }
  return (skb);
}
}
static void mISDN_sock_link(struct mISDN_sock_list *l , struct sock *sk )
{
  {
  {
  _raw_write_lock_bh(& l->lock);
  sk_add_node(sk, & l->head);
  _raw_write_unlock_bh(& l->lock);
  }
  return;
}
}
static void mISDN_sock_unlink(struct mISDN_sock_list *l , struct sock *sk )
{
  {
  {
  _raw_write_lock_bh(& l->lock);
  sk_del_node_init(sk);
  _raw_write_unlock_bh(& l->lock);
  }
  return;
}
}
static int mISDN_send(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct mISDN_sock *msk ;
  int err ;
  struct mISDNchannel const *__mptr ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  msk = (struct mISDN_sock *)__mptr + 0x0ffffffffffffb08UL;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s len %d %p\n", "mISDN_send", skb->len, skb);
    }
  } else {
  }
  if ((unsigned int )((unsigned char )msk->sk.__sk_common.skc_state) == 3U) {
    return (-49);
  } else {
  }
  {
  __net_timestamp(skb);
  err = sock_queue_rcv_skb(& msk->sk, skb);
  }
  if (err != 0) {
    {
    printk("<4>%s: error %d\n", "mISDN_send", err);
    }
  } else {
  }
  return (err);
}
}
static int mISDN_ctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ struct mISDN_sock *msk ;
  struct mISDNchannel const *__mptr ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  msk = (struct mISDN_sock *)__mptr + 0x0ffffffffffffb08UL;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s(%p, %x, %p)\n", "mISDN_ctrl", ch, cmd, arg);
    }
  } else {
  }
  if ((int )cmd == 512) {
    goto case_512;
  } else
  if (0) {
    case_512:
    msk->sk.__sk_common.skc_state = (unsigned char volatile )3U;
    goto ldv_38402;
  } else {
  }
  ldv_38402: ;
  return (0);
}
}
__inline static void mISDN_sock_cmsg(struct sock *sk , struct msghdr *msg , struct sk_buff *skb )
{ struct timeval tv ;
  {
  if ((int )((struct mISDN_sock *)sk)->cmask & 1) {
    {
    skb_get_timestamp((struct sk_buff const *)skb, & tv);
    put_cmsg(msg, 0, 1, 16, (void *)(& tv));
    }
  } else {
  }
  return;
}
}
static int mISDN_sock_recvmsg(struct kiocb *iocb , struct socket *sock , struct msghdr *msg ,
                              size_t len , int flags )
{ struct sk_buff *skb ;
  struct sock *sk ;
  struct sockaddr_mISDN *maddr ;
  int copied ;
  int err ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  {
  sk = sock->sk;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s: len %d, flags %x ch.nr %d, proto %x\n", "mISDN_sock_recvmsg", (int )len,
           flags, ((struct mISDN_sock *)sk)->ch.nr, (int )sk->sk_protocol);
    }
  } else {
  }
  if (flags & 1) {
    return (-95);
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 3U) {
    return (0);
  } else {
  }
  {
  skb = skb_recv_datagram(sk, (unsigned int )flags, flags & 64, & err);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (err);
  } else {
  }
  if ((unsigned int )msg->msg_namelen > 5U) {
    msg->msg_namelen = 6;
    maddr = (struct sockaddr_mISDN *)msg->msg_name;
    maddr->family = (sa_family_t )34U;
    maddr->dev = (unsigned char )(((struct mISDN_sock *)sk)->dev)->id;
    if ((unsigned int )sk->sk_protocol == 16U) {
      maddr->channel = (unsigned char )(((struct mISDNhead *)(& skb->cb))->id >> 16);
      maddr->tei = (unsigned char )(((struct mISDNhead *)(& skb->cb))->id >> 8);
      maddr->sapi = (unsigned char )((struct mISDNhead *)(& skb->cb))->id;
    } else
    if ((unsigned int )sk->sk_protocol == 17U) {
      maddr->channel = (unsigned char )(((struct mISDNhead *)(& skb->cb))->id >> 16);
      maddr->tei = (unsigned char )(((struct mISDNhead *)(& skb->cb))->id >> 8);
      maddr->sapi = (unsigned char )((struct mISDNhead *)(& skb->cb))->id;
    } else {
      maddr->channel = (unsigned char )((struct mISDN_sock *)sk)->ch.nr;
      maddr->sapi = (unsigned char )((struct mISDN_sock *)sk)->ch.addr;
      maddr->tei = (unsigned char )(((struct mISDN_sock *)sk)->ch.addr >> 8);
    }
  } else {
    if (msg->msg_namelen != 0) {
      {
      printk("<4>%s: too small namelen %d\n", "mISDN_sock_recvmsg", msg->msg_namelen);
      }
    } else {
    }
    msg->msg_namelen = 0;
  }
  copied = (int )(skb->len + 8U);
  if ((size_t )copied > len) {
    if ((flags & 2) != 0) {
      {
      atomic_dec(& skb->users);
      }
    } else {
      {
      skb_queue_head(& sk->sk_receive_queue, skb);
      }
    }
    return (-28);
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    {
    tmp = skb_push(skb, 8U);
    __ret = memcpy((void *)tmp, (void const *)(& skb->cb), __len);
    }
  } else {
    {
    tmp___0 = skb_push(skb, 8U);
    __ret = memcpy((void *)tmp___0, (void const *)(& skb->cb), __len);
    }
  }
  {
  err = skb_copy_datagram_iovec((struct sk_buff const *)skb, 0, msg->msg_iov, copied);
  mISDN_sock_cmsg(sk, msg, skb);
  skb_free_datagram(sk, skb);
  }
  if (err != 0) {
    tmp___1 = err;
  } else {
    tmp___1 = copied;
  }
  return (tmp___1);
}
}
static int mISDN_sock_sendmsg(struct kiocb *iocb , struct socket *sock , struct msghdr *msg ,
                              size_t len )
{ struct sock *sk ;
  struct sk_buff *skb ;
  int err ;
  struct sockaddr_mISDN *maddr ;
  unsigned char *tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  sk = sock->sk;
  err = -12;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s: len %d flags %x ch %d proto %x\n", "mISDN_sock_sendmsg", (int )len,
           msg->msg_flags, ((struct mISDN_sock *)sk)->ch.nr, (int )sk->sk_protocol);
    }
  } else {
  }
  if ((int )msg->msg_flags & 1) {
    return (-95);
  } else {
  }
  if ((msg->msg_flags & 4294942655U) != 0U) {
    return (-22);
  } else {
  }
  if (len <= 7UL) {
    return (-22);
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 2U) {
    return (-77);
  } else {
  }
  {
  lock_sock(sk);
  skb = _l2_alloc_skb((unsigned int )len, 208U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto done;
  } else {
  }
  {
  tmp = skb_put(skb, (unsigned int )len);
  tmp___0 = memcpy_fromiovec(tmp, msg->msg_iov, (int )len);
  }
  if (tmp___0 != 0) {
    err = -14;
    goto done;
  } else {
  }
  __len = 8UL;
  if (__len > 63UL) {
    {
    __ret = memcpy((void *)(& skb->cb), (void const *)skb->data, __len);
    }
  } else {
    {
    __ret = memcpy((void *)(& skb->cb), (void const *)skb->data, __len);
    }
  }
  {
  skb_pull(skb, 8U);
  }
  if ((unsigned int )msg->msg_namelen > 5U) {
    maddr = (struct sockaddr_mISDN *)msg->msg_name;
    ((struct mISDNhead *)(& skb->cb))->id = (unsigned int )maddr->channel;
  } else
  if ((unsigned int )sk->sk_protocol == 16U) {
    ((struct mISDNhead *)(& skb->cb))->id = ((struct mISDN_sock *)sk)->ch.nr;
  } else
  if ((unsigned int )sk->sk_protocol == 17U) {
    ((struct mISDNhead *)(& skb->cb))->id = ((struct mISDN_sock *)sk)->ch.nr;
  } else {
  }
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s: ID:%x\n", "mISDN_sock_sendmsg", ((struct mISDNhead *)(& skb->cb))->id);
    }
  } else {
  }
  err = -19;
  if ((unsigned long )((struct mISDN_sock *)sk)->ch.peer == (unsigned long )((struct mISDNchannel *)0)) {
    goto done;
  } else {
  }
  {
  err = (*(((struct mISDN_sock *)sk)->ch.recv))(((struct mISDN_sock *)sk)->ch.peer,
                                                skb);
  }
  if (err != 0) {
    goto done;
  } else {
    skb = (struct sk_buff *)0;
    err = (int )len;
  }
  done: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(skb);
    }
  } else {
  }
  {
  release_sock(sk);
  }
  return (err);
}
}
static int data_sock_release(struct socket *sock )
{ struct sock *sk ;
  {
  sk = sock->sk;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s(%p) sk=%p\n", "data_sock_release", sock, sk);
    }
  } else {
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (0);
  } else {
  }
  if ((int )sk->sk_protocol == 1) {
    goto case_1;
  } else
  if ((int )sk->sk_protocol == 2) {
    goto case_2;
  } else
  if ((int )sk->sk_protocol == 3) {
    goto case_3;
  } else
  if ((int )sk->sk_protocol == 4) {
    goto case_4;
  } else
  if ((int )sk->sk_protocol == 16) {
    goto case_16;
  } else
  if ((int )sk->sk_protocol == 17) {
    goto case_17;
  } else
  if ((int )sk->sk_protocol == 33) {
    goto case_33;
  } else
  if ((int )sk->sk_protocol == 34) {
    goto case_34;
  } else
  if ((int )sk->sk_protocol == 35) {
    goto case_35;
  } else
  if ((int )sk->sk_protocol == 36) {
    goto case_36;
  } else
  if ((int )sk->sk_protocol == 37) {
    goto case_37;
  } else
  if ((int )sk->sk_protocol == 38) {
    goto case_38;
  } else
  if (0) {
    case_1: ;
    case_2: ;
    case_3: ;
    case_4: ;
    if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 2U) {
      {
      delete_channel(& ((struct mISDN_sock *)sk)->ch);
      }
    } else {
      {
      mISDN_sock_unlink(& data_sockets, sk);
      }
    }
    goto ldv_38449;
    case_16: ;
    case_17: ;
    case_33: ;
    case_34: ;
    case_35: ;
    case_36: ;
    case_37: ;
    case_38:
    {
    delete_channel(& ((struct mISDN_sock *)sk)->ch);
    mISDN_sock_unlink(& data_sockets, sk);
    }
    goto ldv_38449;
  } else {
  }
  ldv_38449:
  {
  lock_sock(sk);
  sock_orphan(sk);
  skb_queue_purge(& sk->sk_receive_queue);
  release_sock(sk);
  sock_put(sk);
  }
  return (0);
}
}
static int data_sock_ioctl_bound(struct sock *sk , unsigned int cmd , void *p )
{ struct mISDN_ctrl_req cq ;
  int err ;
  int val[2U] ;
  struct mISDNchannel *bchan ;
  struct mISDNchannel *next ;
  unsigned long tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  int tmp___0 ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int __ret_gu___0 ;
  unsigned long __val_gu___0 ;
  {
  {
  err = -22;
  lock_sock(sk);
  }
  if ((unsigned long )((struct mISDN_sock *)sk)->dev == (unsigned long )((struct mISDNdevice *)0)) {
    err = -19;
    goto done;
  } else {
  }
  if ((int )cmd == -2147202747) {
    goto case_neg_2147202747;
  } else
  if ((int )cmd == -2147202746) {
    goto case_neg_2147202746;
  } else
  if ((int )cmd == -2147202744) {
    goto case_neg_2147202744;
  } else {
    goto switch_default___1;
    if (0) {
      case_neg_2147202747:
      {
      tmp = copy_from_user((void *)(& cq), (void const *)p, 16UL);
      }
      if (tmp != 0UL) {
        err = -14;
        goto ldv_38470;
      } else {
      }
      if (((int )sk->sk_protocol & -32) == 32) {
        __mptr = (struct list_head const *)(((struct mISDN_sock *)sk)->dev)->bchannels.next;
        bchan = (struct mISDNchannel *)__mptr;
        __mptr___0 = (struct list_head const *)bchan->list.next;
        next = (struct mISDNchannel *)__mptr___0;
        goto ldv_38479;
        ldv_38478: ;
        if (bchan->nr == (u_int )cq.channel) {
          {
          err = (*(bchan->ctrl))(bchan, 768U, (void *)(& cq));
          }
          goto ldv_38477;
        } else {
        }
        bchan = next;
        __mptr___1 = (struct list_head const *)next->list.next;
        next = (struct mISDNchannel *)__mptr___1;
        ldv_38479: ;
        if ((unsigned long )(& bchan->list) != (unsigned long )(& (((struct mISDN_sock *)sk)->dev)->bchannels)) {
          goto ldv_38478;
        } else {
          goto ldv_38477;
        }
        ldv_38477: ;
      } else {
        {
        err = (*((((struct mISDN_sock *)sk)->dev)->D.ctrl))(& (((struct mISDN_sock *)sk)->dev)->D,
                                                            768U, (void *)(& cq));
        }
      }
      if (err != 0) {
        goto ldv_38470;
      } else {
      }
      {
      tmp___0 = copy_to_user(p, (void const *)(& cq), 16U);
      }
      if (tmp___0 != 0) {
        err = -14;
      } else {
      }
      goto ldv_38470;
      case_neg_2147202746: ;
      if ((unsigned int )sk->sk_protocol != 17U) {
        err = -22;
        goto ldv_38470;
      } else {
      }
      {
      val[0] = (int )cmd;
      might_fault();
      }
      if (1) {
        goto case_4;
      } else {
        goto switch_default;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)p));
          goto ldv_38484;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)p));
          goto ldv_38484;
          case_4:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)p));
          goto ldv_38484;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)p));
          goto ldv_38484;
          switch_default:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)p));
          goto ldv_38484;
        } else {
        }
      }
      ldv_38484:
      val[1] = (int )__val_gu;
      if (__ret_gu != 0) {
        err = -14;
        goto ldv_38470;
      } else {
      }
      {
      err = (*(((((struct mISDN_sock *)sk)->dev)->teimgr)->ctrl))((((struct mISDN_sock *)sk)->dev)->teimgr,
                                                                  768U, (void *)(& val));
      }
      goto ldv_38470;
      case_neg_2147202744: ;
      if ((unsigned int )sk->sk_protocol != 17U) {
        if ((unsigned int )sk->sk_protocol != 16U) {
          err = -22;
          goto ldv_38470;
        } else {
        }
      } else {
      }
      {
      val[0] = (int )cmd;
      might_fault();
      }
      if (1) {
        goto case_4___0;
      } else {
        goto switch_default___0;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)p));
          goto ldv_38494;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)p));
          goto ldv_38494;
          case_4___0:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)p));
          goto ldv_38494;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)p));
          goto ldv_38494;
          switch_default___0:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)p));
          goto ldv_38494;
        } else {
        }
      }
      ldv_38494:
      val[1] = (int )__val_gu___0;
      if (__ret_gu___0 != 0) {
        err = -14;
        goto ldv_38470;
      } else {
      }
      {
      err = (*(((((struct mISDN_sock *)sk)->dev)->teimgr)->ctrl))((((struct mISDN_sock *)sk)->dev)->teimgr,
                                                                  768U, (void *)(& val));
      }
      goto ldv_38470;
      switch_default___1:
      err = -22;
      goto ldv_38470;
    } else {
    }
  }
  ldv_38470: ;
  done:
  {
  release_sock(sk);
  }
  return (err);
}
}
static int data_sock_ioctl(struct socket *sock , unsigned int cmd , unsigned long arg )
{ int err ;
  int id ;
  struct sock *sk ;
  struct mISDNdevice *dev ;
  struct mISDNversion ver ;
  int tmp ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_gu ;
  unsigned long __val_gu ;
  struct mISDN_devinfo di ;
  u_int tmp___0 ;
  size_t __len ;
  void *__ret ;
  char const *tmp___1 ;
  int tmp___2 ;
  {
  err = 0;
  sk = sock->sk;
  if ((int )cmd == -2147202750) {
    goto case_neg_2147202750;
  } else
  if ((int )cmd == -2147202749) {
    goto case_neg_2147202749;
  } else
  if ((int )cmd == -2147202748) {
    goto case_neg_2147202748;
  } else {
    goto switch_default___1;
    if (0) {
      case_neg_2147202750:
      {
      ver.major = (unsigned char)1;
      ver.minor = (unsigned char)1;
      ver.release = (unsigned short)21;
      tmp = copy_to_user((void *)arg, (void const *)(& ver), 4U);
      }
      if (tmp != 0) {
        err = -14;
      } else {
      }
      goto ldv_38512;
      case_neg_2147202749:
      {
      id = get_mdevice_count();
      might_fault();
      __pu_val = id;
      }
      if (1) {
        goto case_4;
      } else {
        goto switch_default;
        if (0) {
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38517;
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38517;
          case_4:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38517;
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38517;
          switch_default:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38517;
        } else {
        }
      }
      ldv_38517: ;
      if (__ret_pu != 0) {
        err = -14;
      } else {
      }
      goto ldv_38512;
      case_neg_2147202748:
      {
      might_fault();
      }
      if (1) {
        goto case_4___0;
      } else {
        goto switch_default___0;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38527;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38527;
          case_4___0:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38527;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38527;
          switch_default___0:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38527;
        } else {
        }
      }
      ldv_38527:
      id = (int )__val_gu;
      if (__ret_gu != 0) {
        err = -14;
        goto ldv_38512;
      } else {
      }
      {
      dev = get_mdevice((u_int )id);
      }
      if ((unsigned long )dev != (unsigned long )((struct mISDNdevice *)0)) {
        {
        memset((void *)(& di), 0, 56UL);
        di.id = dev->id;
        di.Dprotocols = dev->Dprotocols;
        tmp___0 = get_all_Bprotocols();
        di.Bprotocols = dev->Bprotocols | tmp___0;
        di.protocol = dev->D.protocol;
        __len = 16UL;
        }
        if (__len > 63UL) {
          {
          __ret = memcpy((void *)(& di.channelmap), (void const *)(& dev->channelmap),
                           __len);
          }
        } else {
          {
          __ret = memcpy((void *)(& di.channelmap), (void const *)(& dev->channelmap),
                                   __len);
          }
        }
        {
        di.nrbchan = dev->nrbchan;
        tmp___1 = dev_name((struct device const *)(& dev->dev));
        strcpy((char *)(& di.name), tmp___1);
        tmp___2 = copy_to_user((void *)arg, (void const *)(& di), 56U);
        }
        if (tmp___2 != 0) {
          err = -14;
        } else {
        }
      } else {
        err = -19;
      }
      goto ldv_38512;
      switch_default___1: ;
      if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 2U) {
        {
        err = data_sock_ioctl_bound(sk, cmd, (void *)arg);
        }
      } else {
        err = -107;
      }
    } else {
    }
  }
  ldv_38512: ;
  return (err);
}
}
static int data_sock_setsockopt(struct socket *sock , int level , int optname , char *optval ,
                                unsigned int len )
{ struct sock *sk ;
  int err ;
  int opt ;
  int __ret_gu ;
  unsigned long __val_gu ;
  {
  sk = sock->sk;
  err = 0;
  opt = 0;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s(%p, %d, %x, %p, %d)\n", "data_sock_setsockopt", sock, level, optname,
           optval, len);
    }
  } else {
  }
  {
  lock_sock(sk);
  }
  if (optname == 1) {
    goto case_1;
  } else {
    goto switch_default___0;
    if (0) {
      case_1:
      {
      might_fault();
      }
      if (1) {
        goto case_4;
      } else {
        goto switch_default;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)optval));
          goto ldv_38553;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)optval));
          goto ldv_38553;
          case_4:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)optval));
          goto ldv_38553;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)optval));
          goto ldv_38553;
          switch_default:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)optval));
          goto ldv_38553;
        } else {
        }
      }
      ldv_38553:
      opt = (int )__val_gu;
      if (__ret_gu != 0) {
        err = -14;
        goto ldv_38559;
      } else {
      }
      if (opt != 0) {
        ((struct mISDN_sock *)sk)->cmask = ((struct mISDN_sock *)sk)->cmask | 1U;
      } else {
        ((struct mISDN_sock *)sk)->cmask = ((struct mISDN_sock *)sk)->cmask & 4294967294U;
      }
      goto ldv_38559;
      switch_default___0:
      err = -92;
      goto ldv_38559;
    } else {
    }
  }
  ldv_38559:
  {
  release_sock(sk);
  }
  return (err);
}
}
static int data_sock_getsockopt(struct socket *sock , int level , int optname , char *optval ,
                                int *optlen )
{ struct sock *sk ;
  int len ;
  int opt ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int __ret_pu ;
  char __pu_val ;
  {
  {
  sk = sock->sk;
  might_fault();
  }
  if (1) {
    goto case_4;
  } else {
    goto switch_default;
    if (0) {
      __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" (optlen));
      goto ldv_38574;
      __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" (optlen));
      goto ldv_38574;
      case_4:
      __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" (optlen));
      goto ldv_38574;
      __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" (optlen));
      goto ldv_38574;
      switch_default:
      __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" (optlen));
      goto ldv_38574;
    } else {
    }
  }
  ldv_38574:
  len = (int )__val_gu;
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  if (len != 1) {
    return (-22);
  } else {
  }
  if (optname == 1) {
    goto case_1___0;
  } else {
    goto switch_default___1;
    if (0) {
      case_1___0: ;
      if ((int )((struct mISDN_sock *)sk)->cmask & 1) {
        opt = 1;
      } else {
        opt = 0;
      }
      {
      might_fault();
      __pu_val = (char )opt;
      }
      if (1) {
        goto case_1___1;
      } else {
        goto switch_default___0;
        if (0) {
          case_1___1:
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (optval): "ebx");
          goto ldv_38584;
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (optval): "ebx");
          goto ldv_38584;
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (optval): "ebx");
          goto ldv_38584;
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (optval): "ebx");
          goto ldv_38584;
          switch_default___0:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                               "c" (optval): "ebx");
          goto ldv_38584;
        } else {
        }
      }
      ldv_38584: ;
      if (__ret_pu != 0) {
        return (-14);
      } else {
      }
      goto ldv_38590;
      switch_default___1: ;
      return (-92);
    } else {
    }
  }
  ldv_38590: ;
  return (0);
}
}
static int data_sock_bind(struct socket *sock , struct sockaddr *addr , int addr_len )
{ struct sockaddr_mISDN *maddr ;
  struct sock *sk ;
  struct hlist_node *node ;
  struct sock *csk ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct hlist_node const *__mptr ;
  {
  maddr = (struct sockaddr_mISDN *)addr;
  sk = sock->sk;
  err = 0;
  if ((*debug___0 & 4U) != 0U) {
    {
    printk("<7>%s(%p) sk=%p\n", "data_sock_bind", sock, sk);
    }
  } else {
  }
  if (addr_len != 6) {
    return (-22);
  } else {
  }
  if ((unsigned long )maddr == (unsigned long )((struct sockaddr_mISDN *)0)) {
    return (-22);
  } else
  if ((unsigned int )maddr->family != 34U) {
    return (-22);
  } else {
  }
  {
  lock_sock(sk);
  }
  if ((unsigned long )((struct mISDN_sock *)sk)->dev != (unsigned long )((struct mISDNdevice *)0)) {
    err = -114;
    goto done;
  } else {
  }
  {
  ((struct mISDN_sock *)sk)->dev = get_mdevice((u_int )maddr->dev);
  }
  if ((unsigned long )((struct mISDN_sock *)sk)->dev == (unsigned long )((struct mISDNdevice *)0)) {
    err = -19;
    goto done;
  } else {
  }
  if ((unsigned int )sk->sk_protocol <= 31U) {
    {
    _raw_read_lock_bh(& data_sockets.lock);
    node = data_sockets.head.first;
    }
    goto ldv_38609;
    ldv_38608: ;
    if ((unsigned long )sk == (unsigned long )csk) {
      goto ldv_38607;
    } else {
    }
    if ((unsigned long )((struct mISDN_sock *)csk)->dev != (unsigned long )((struct mISDN_sock *)sk)->dev) {
      goto ldv_38607;
    } else {
    }
    if ((unsigned int )csk->sk_protocol > 31U) {
      goto ldv_38607;
    } else {
    }
    if ((unsigned int )csk->sk_protocol == 1U) {
      tmp = 1;
    } else
    if ((unsigned int )csk->sk_protocol == 3U) {
      tmp = 1;
    } else
    if ((unsigned int )csk->sk_protocol == 5U) {
      tmp = 1;
    } else
    if ((unsigned int )csk->sk_protocol == 16U) {
      tmp = 1;
    } else {
      tmp = 0;
    }
    if ((_Bool )tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if ((unsigned int )sk->sk_protocol == 1U) {
      tmp___1 = 1;
    } else
    if ((unsigned int )sk->sk_protocol == 3U) {
      tmp___1 = 1;
    } else
    if ((unsigned int )sk->sk_protocol == 5U) {
      tmp___1 = 1;
    } else
    if ((unsigned int )sk->sk_protocol == 16U) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
    if (tmp___0 ^ (int )((_Bool )tmp___1)) {
      goto ldv_38607;
    } else {
    }
    {
    _raw_read_unlock_bh(& data_sockets.lock);
    err = -16;
    }
    goto done;
    ldv_38607:
    node = node->next;
    ldv_38609: ;
    if ((unsigned long )node != (unsigned long )((struct hlist_node *)0)) {
      __mptr = (struct hlist_node const *)node;
      csk = (struct sock *)__mptr + 0x0fffffffffffffc8UL;
      goto ldv_38608;
    } else {
      goto ldv_38610;
    }
    ldv_38610:
    {
    _raw_read_unlock_bh(& data_sockets.lock);
    }
  } else {
  }
  ((struct mISDN_sock *)sk)->ch.send = & mISDN_send;
  ((struct mISDN_sock *)sk)->ch.ctrl = & mISDN_ctrl;
  if ((int )sk->sk_protocol == 1) {
    goto case_1;
  } else
  if ((int )sk->sk_protocol == 2) {
    goto case_2;
  } else
  if ((int )sk->sk_protocol == 3) {
    goto case_3;
  } else
  if ((int )sk->sk_protocol == 4) {
    goto case_4;
  } else
  if ((int )sk->sk_protocol == 16) {
    goto case_16;
  } else
  if ((int )sk->sk_protocol == 17) {
    goto case_17;
  } else
  if ((int )sk->sk_protocol == 33) {
    goto case_33;
  } else
  if ((int )sk->sk_protocol == 34) {
    goto case_34;
  } else
  if ((int )sk->sk_protocol == 35) {
    goto case_35;
  } else
  if ((int )sk->sk_protocol == 36) {
    goto case_36;
  } else
  if ((int )sk->sk_protocol == 37) {
    goto case_37;
  } else
  if ((int )sk->sk_protocol == 38) {
    goto case_38;
  } else {
    goto switch_default;
    if (0) {
      case_1: ;
      case_2: ;
      case_3: ;
      case_4:
      {
      mISDN_sock_unlink(& data_sockets, sk);
      err = connect_layer1(((struct mISDN_sock *)sk)->dev, & ((struct mISDN_sock *)sk)->ch,
                           (u_int )sk->sk_protocol, maddr);
      }
      if (err != 0) {
        {
        mISDN_sock_link(& data_sockets, sk);
        }
      } else {
      }
      goto ldv_38615;
      case_16: ;
      case_17:
      {
      err = create_l2entity(((struct mISDN_sock *)sk)->dev, & ((struct mISDN_sock *)sk)->ch,
                            (u_int )sk->sk_protocol, maddr);
      }
      goto ldv_38615;
      case_33: ;
      case_34: ;
      case_35: ;
      case_36: ;
      case_37: ;
      case_38:
      {
      err = connect_Bstack(((struct mISDN_sock *)sk)->dev, & ((struct mISDN_sock *)sk)->ch,
                           (u_int )sk->sk_protocol, maddr);
      }
      goto ldv_38615;
      switch_default:
      err = -93;
    } else {
    }
  }
  ldv_38615: ;
  if (err != 0) {
    goto done;
  } else {
  }
  sk->__sk_common.skc_state = (unsigned char volatile )2U;
  ((struct mISDN_sock *)sk)->ch.protocol = (u_int )sk->sk_protocol;
  done:
  {
  release_sock(sk);
  }
  return (err);
}
}
static int data_sock_getname(struct socket *sock , struct sockaddr *addr , int *addr_len ,
                             int peer )
{ struct sockaddr_mISDN *maddr ;
  struct sock *sk ;
  {
  maddr = (struct sockaddr_mISDN *)addr;
  sk = sock->sk;
  if ((unsigned long )((struct mISDN_sock *)sk)->dev == (unsigned long )((struct mISDNdevice *)0)) {
    return (-77);
  } else {
  }
  {
  lock_sock(sk);
  *addr_len = 6;
  maddr->dev = (unsigned char )(((struct mISDN_sock *)sk)->dev)->id;
  maddr->channel = (unsigned char )((struct mISDN_sock *)sk)->ch.nr;
  maddr->sapi = (unsigned char )((struct mISDN_sock *)sk)->ch.addr;
  maddr->tei = (unsigned char )(((struct mISDN_sock *)sk)->ch.addr >> 8);
  release_sock(sk);
  }
  return (0);
}
}
static struct proto_ops const data_sock_ops =
     {34, & __this_module, & data_sock_release, & data_sock_bind, & sock_no_connect,
    & sock_no_socketpair, & sock_no_accept, & data_sock_getname, & datagram_poll,
    & data_sock_ioctl, (int (*)(struct socket * , unsigned int , unsigned long ))0,
    & sock_no_listen, & sock_no_shutdown, & data_sock_setsockopt, & data_sock_getsockopt,
    (int (*)(struct socket * , int , int , char * , unsigned int ))0, (int (*)(struct socket * ,
                                                                                  int ,
                                                                                  int ,
                                                                                  char * ,
                                                                                  int * ))0,
    & mISDN_sock_sendmsg, & mISDN_sock_recvmsg, & sock_no_mmap, (ssize_t (*)(struct socket * ,
                                                                             struct page * ,
                                                                             int ,
                                                                             size_t ,
                                                                             int ))0,
    (ssize_t (*)(struct socket * , loff_t * , struct pipe_inode_info * , size_t ,
                 unsigned int ))0};
static int data_sock_create(struct net *net , struct socket *sock , int protocol )
{ struct sock *sk ;
  {
  if ((int )sock->type != 2) {
    return (-94);
  } else {
  }
  {
  sk = sk_alloc(net, 34, 208U, & mISDN_proto);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (-12);
  } else {
  }
  {
  sock_init_data(sock, sk);
  sock->ops = & data_sock_ops;
  sock->state = (socket_state )1;
  sock_reset_flag(sk, (enum sock_flags )8);
  sk->sk_protocol = (unsigned char )protocol;
  sk->__sk_common.skc_state = (unsigned char volatile )1U;
  mISDN_sock_link(& data_sockets, sk);
  }
  return (0);
}
}
static int base_sock_release(struct socket *sock )
{ struct sock *sk ;
  {
  {
  sk = sock->sk;
  printk("<7>%s(%p) sk=%p\n", "base_sock_release", sock, sk);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (0);
  } else {
  }
  {
  mISDN_sock_unlink(& base_sockets, sk);
  sock_orphan(sk);
  sock_put(sk);
  }
  return (0);
}
}
static int base_sock_ioctl(struct socket *sock , unsigned int cmd , unsigned long arg )
{ int err ;
  int id ;
  struct mISDNdevice *dev ;
  struct mISDNversion ver ;
  int tmp ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_gu ;
  unsigned long __val_gu ;
  struct mISDN_devinfo di ;
  u_int tmp___0 ;
  size_t __len ;
  void *__ret ;
  char const *tmp___1 ;
  int tmp___2 ;
  struct mISDN_devrename dn ;
  unsigned long tmp___3 ;
  {
  err = 0;
  if ((int )cmd == -2147202750) {
    goto case_neg_2147202750;
  } else
  if ((int )cmd == -2147202749) {
    goto case_neg_2147202749;
  } else
  if ((int )cmd == -2147202748) {
    goto case_neg_2147202748;
  } else
  if ((int )cmd == -2145892025) {
    goto case_neg_2145892025;
  } else {
    goto switch_default___1;
    if (0) {
      case_neg_2147202750:
      {
      ver.major = (unsigned char)1;
      ver.minor = (unsigned char)1;
      ver.release = (unsigned short)21;
      tmp = copy_to_user((void *)arg, (void const *)(& ver), 4U);
      }
      if (tmp != 0) {
        err = -14;
      } else {
      }
      goto ldv_38655;
      case_neg_2147202749:
      {
      id = get_mdevice_count();
      might_fault();
      __pu_val = id;
      }
      if (1) {
        goto case_4;
      } else {
        goto switch_default;
        if (0) {
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38660;
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38660;
          case_4:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38660;
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38660;
          switch_default:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38660;
        } else {
        }
      }
      ldv_38660: ;
      if (__ret_pu != 0) {
        err = -14;
      } else {
      }
      goto ldv_38655;
      case_neg_2147202748:
      {
      might_fault();
      }
      if (1) {
        goto case_4___0;
      } else {
        goto switch_default___0;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38670;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38670;
          case_4___0:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38670;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38670;
          switch_default___0:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38670;
        } else {
        }
      }
      ldv_38670:
      id = (int )__val_gu;
      if (__ret_gu != 0) {
        err = -14;
        goto ldv_38655;
      } else {
      }
      {
      dev = get_mdevice((u_int )id);
      }
      if ((unsigned long )dev != (unsigned long )((struct mISDNdevice *)0)) {
        {
        memset((void *)(& di), 0, 56UL);
        di.id = dev->id;
        di.Dprotocols = dev->Dprotocols;
        tmp___0 = get_all_Bprotocols();
        di.Bprotocols = dev->Bprotocols | tmp___0;
        di.protocol = dev->D.protocol;
        __len = 16UL;
        }
        if (__len > 63UL) {
          {
          __ret = memcpy((void *)(& di.channelmap), (void const *)(& dev->channelmap),
                           __len);
          }
        } else {
          {
          __ret = memcpy((void *)(& di.channelmap), (void const *)(& dev->channelmap),
                                   __len);
          }
        }
        {
        di.nrbchan = dev->nrbchan;
        tmp___1 = dev_name((struct device const *)(& dev->dev));
        strcpy((char *)(& di.name), tmp___1);
        tmp___2 = copy_to_user((void *)arg, (void const *)(& di), 56U);
        }
        if (tmp___2 != 0) {
          err = -14;
        } else {
        }
      } else {
        err = -19;
      }
      goto ldv_38655;
      case_neg_2145892025:
      {
      tmp___3 = copy_from_user((void *)(& dn), (void const *)arg, 24UL);
      }
      if (tmp___3 != 0UL) {
        err = -14;
        goto ldv_38655;
      } else {
      }
      {
      dev = get_mdevice(dn.id);
      }
      if ((unsigned long )dev != (unsigned long )((struct mISDNdevice *)0)) {
        {
        err = device_rename(& dev->dev, (char const *)(& dn.name));
        }
      } else {
        err = -19;
      }
      goto ldv_38655;
      switch_default___1:
      err = -22;
    } else {
    }
  }
  ldv_38655: ;
  return (err);
}
}
static int base_sock_bind(struct socket *sock , struct sockaddr *addr , int addr_len )
{ struct sockaddr_mISDN *maddr ;
  struct sock *sk ;
  int err ;
  {
  maddr = (struct sockaddr_mISDN *)addr;
  sk = sock->sk;
  err = 0;
  if ((unsigned long )maddr == (unsigned long )((struct sockaddr_mISDN *)0)) {
    return (-22);
  } else
  if ((unsigned int )maddr->family != 34U) {
    return (-22);
  } else {
  }
  {
  lock_sock(sk);
  }
  if ((unsigned long )((struct mISDN_sock *)sk)->dev != (unsigned long )((struct mISDNdevice *)0)) {
    err = -114;
    goto done;
  } else {
  }
  {
  ((struct mISDN_sock *)sk)->dev = get_mdevice((u_int )maddr->dev);
  }
  if ((unsigned long )((struct mISDN_sock *)sk)->dev == (unsigned long )((struct mISDNdevice *)0)) {
    err = -19;
    goto done;
  } else {
  }
  sk->__sk_common.skc_state = (unsigned char volatile )2U;
  done:
  {
  release_sock(sk);
  }
  return (err);
}
}
static struct proto_ops const base_sock_ops =
     {34, & __this_module, & base_sock_release, & base_sock_bind, & sock_no_connect,
    & sock_no_socketpair, & sock_no_accept, & sock_no_getname, & sock_no_poll, & base_sock_ioctl,
    (int (*)(struct socket * , unsigned int , unsigned long ))0, & sock_no_listen,
    & sock_no_shutdown, & sock_no_setsockopt, & sock_no_getsockopt, (int (*)(struct socket * ,
                                                                             int ,
                                                                             int ,
                                                                             char * ,
                                                                             unsigned int ))0,
    (int (*)(struct socket * , int , int , char * , int * ))0, & sock_no_sendmsg,
    & sock_no_recvmsg, & sock_no_mmap, (ssize_t (*)(struct socket * , struct page * ,
                                                    int , size_t , int ))0, (ssize_t (*)(struct socket * ,
                                                                                            loff_t * ,
                                                                                            struct pipe_inode_info * ,
                                                                                            size_t ,
                                                                                            unsigned int ))0};
static int base_sock_create(struct net *net , struct socket *sock , int protocol )
{ struct sock *sk ;
  {
  if ((int )sock->type != 3) {
    return (-94);
  } else {
  }
  {
  sk = sk_alloc(net, 34, 208U, & mISDN_proto);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (-12);
  } else {
  }
  {
  sock_init_data(sock, sk);
  sock->ops = & base_sock_ops;
  sock->state = (socket_state )1;
  sock_reset_flag(sk, (enum sock_flags )8);
  sk->sk_protocol = (unsigned char )protocol;
  sk->__sk_common.skc_state = (unsigned char volatile )1U;
  mISDN_sock_link(& base_sockets, sk);
  }
  return (0);
}
}
static int mISDN_sock_create(struct net *net , struct socket *sock , int proto , int kern )
{ int err ;
  {
  err = -93;
  if (proto == 0) {
    goto case_0;
  } else
  if (proto == 1) {
    goto case_1;
  } else
  if (proto == 2) {
    goto case_2;
  } else
  if (proto == 3) {
    goto case_3;
  } else
  if (proto == 4) {
    goto case_4;
  } else
  if (proto == 16) {
    goto case_16;
  } else
  if (proto == 17) {
    goto case_17;
  } else
  if (proto == 33) {
    goto case_33;
  } else
  if (proto == 34) {
    goto case_34;
  } else
  if (proto == 35) {
    goto case_35;
  } else
  if (proto == 36) {
    goto case_36;
  } else
  if (proto == 37) {
    goto case_37;
  } else
  if (proto == 38) {
    goto case_38;
  } else {
    goto switch_default;
    if (0) {
      case_0:
      {
      err = base_sock_create(net, sock, proto);
      }
      goto ldv_38707;
      case_1: ;
      case_2: ;
      case_3: ;
      case_4: ;
      case_16: ;
      case_17: ;
      case_33: ;
      case_34: ;
      case_35: ;
      case_36: ;
      case_37: ;
      case_38:
      {
      err = data_sock_create(net, sock, proto);
      }
      goto ldv_38707;
      switch_default: ;
      return (err);
    } else {
    }
  }
  ldv_38707: ;
  return (err);
}
}
static struct net_proto_family const mISDN_sock_family_ops = {34, & mISDN_sock_create, & __this_module};
int misdn_sock_init(u_int *deb )
{ int err ;
  {
  {
  debug___0 = deb;
  err = sock_register(& mISDN_sock_family_ops);
  }
  if (err != 0) {
    {
    printk("<3>%s: error(%d)\n", "misdn_sock_init", err);
    }
  } else {
  }
  return (err);
}
}
void misdn_sock_cleanup(void)
{
  {
  {
  sock_unregister(34);
  }
  return;
}
}
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern unsigned long _raw_read_lock_irqsave(rwlock_t * ) ;
extern void _raw_read_unlock_irqrestore(rwlock_t * , unsigned long ) ;
extern void do_gettimeofday(struct timeval * ) ;
struct mISDNclock *mISDN_register_clock(char *name , int pri , clockctl_func_t *ctl ,
                                        void *priv ) ;
void mISDN_unregister_clock(struct mISDNclock *iclock ) ;
void mISDN_clock_update(struct mISDNclock *iclock , int samples , struct timeval *tv ) ;
unsigned short mISDN_clock_get(void) ;
static u_int *debug___1 ;
static struct list_head iclock_list = {& iclock_list, & iclock_list};
static rwlock_t iclock_lock = {{16777216U}, 3736018669U, 4294967295U, (void *)0x0fffffffffffffffUL, {(struct lock_class_key *)0,
                                                                          {(struct lock_class *)0,
                                                                           (struct lock_class *)0},
                                                                          "iclock_lock",
                                                                          0, 0UL}};
static u16 iclock_count ;
static struct timeval iclock_tv ;
static int iclock_tv_valid ;
static struct mISDNclock *iclock_current ;
void mISDN_init_clock(u_int *dp )
{
  {
  {
  debug___1 = dp;
  do_gettimeofday(& iclock_tv);
  }
  return;
}
}
static void select_iclock(void)
{ struct mISDNclock *iclock ;
  struct mISDNclock *bestclock ;
  struct mISDNclock *lastclock ;
  int pri ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  bestclock = (struct mISDNclock *)0;
  lastclock = (struct mISDNclock *)0;
  pri = -128;
  __mptr = (struct list_head const *)iclock_list.next;
  iclock = (struct mISDNclock *)__mptr;
  goto ldv_38387;
  ldv_38386: ;
  if (iclock->pri > pri) {
    pri = iclock->pri;
    bestclock = iclock;
  } else {
  }
  if ((unsigned long )iclock_current == (unsigned long )iclock) {
    lastclock = iclock;
  } else {
  }
  __mptr___0 = (struct list_head const *)iclock->list.next;
  iclock = (struct mISDNclock *)__mptr___0;
  ldv_38387: ;
  if ((unsigned long )(& iclock->list) != (unsigned long )(& iclock_list)) {
    goto ldv_38386;
  } else {
    goto ldv_38388;
  }
  ldv_38388: ;
  if ((unsigned long )lastclock != (unsigned long )((struct mISDNclock *)0)) {
    if ((unsigned long )bestclock != (unsigned long )lastclock) {
      if ((*debug___1 & 33554432U) != 0U) {
        {
        printk("<7>Old clock source \'%s\' disable.\n", (char *)(& lastclock->name));
        }
      } else {
      }
      {
      (*(lastclock->ctl))(lastclock->priv, 0);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )bestclock != (unsigned long )((struct mISDNclock *)0)) {
    if ((unsigned long )bestclock != (unsigned long )iclock_current) {
      if ((*debug___1 & 33554432U) != 0U) {
        {
        printk("<7>New clock source \'%s\' enable.\n", (char *)(& bestclock->name));
        }
      } else {
      }
      {
      (*(bestclock->ctl))(bestclock->priv, 1);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )bestclock != (unsigned long )iclock_current) {
    iclock_tv_valid = 0;
  } else {
  }
  iclock_current = bestclock;
  return;
}
}
struct mISDNclock *mISDN_register_clock(char *name , int pri , clockctl_func_t *ctl ,
                                        void *priv )
{ u_long flags ;
  struct mISDNclock *iclock ;
  void *tmp ;
  {
  if ((*debug___1 & 33554687U) != 0U) {
    {
    printk("<7>%s: %s %d\n", "mISDN_register_clock", name, pri);
    }
  } else {
  }
  {
  tmp = kzalloc(104UL, 32U);
  iclock = (struct mISDNclock *)tmp;
  }
  if ((unsigned long )iclock == (unsigned long )((struct mISDNclock *)0)) {
    {
    printk("<3>%s: No memory for clock entry.\n", "mISDN_register_clock");
    }
    return ((struct mISDNclock *)0);
  } else {
  }
  {
  strncpy((char *)(& iclock->name), (char const *)name, 63UL);
  iclock->pri = pri;
  iclock->priv = priv;
  iclock->ctl = ctl;
  flags = _raw_write_lock_irqsave(& iclock_lock);
  list_add_tail(& iclock->list, & iclock_list);
  select_iclock();
  _raw_write_unlock_irqrestore(& iclock_lock, flags);
  }
  return (iclock);
}
}
void mISDN_unregister_clock(struct mISDNclock *iclock )
{ u_long flags ;
  {
  if ((*debug___1 & 33554687U) != 0U) {
    {
    printk("<7>%s: %s %d\n", "mISDN_unregister_clock", (char *)(& iclock->name), iclock->pri);
    }
  } else {
  }
  {
  flags = _raw_write_lock_irqsave(& iclock_lock);
  }
  if ((unsigned long )iclock_current == (unsigned long )iclock) {
    if ((*debug___1 & 33554432U) != 0U) {
      {
      printk("<7>Current clock source \'%s\' unregisters.\n", (char *)(& iclock->name));
      }
    } else {
    }
    {
    (*(iclock->ctl))(iclock->priv, 0);
    }
  } else {
  }
  {
  list_del(& iclock->list);
  select_iclock();
  _raw_write_unlock_irqrestore(& iclock_lock, flags);
  }
  return;
}
}
void mISDN_clock_update(struct mISDNclock *iclock , int samples , struct timeval *tv )
{ u_long flags ;
  struct timeval tv_now ;
  time_t elapsed_sec ;
  int elapsed_8000th ;
  char *tmp ;
  char *tmp___0 ;
  {
  {
  flags = _raw_write_lock_irqsave(& iclock_lock);
  }
  if ((unsigned long )iclock_current != (unsigned long )iclock) {
    if ((unsigned long )iclock_current != (unsigned long )((struct mISDNclock *)0)) {
      tmp = (char *)(& iclock_current->name);
    } else {
      tmp = (char *)"nothing";
    }
    {
    printk("<3>%s: \'%s\' sends us clock updates, but we do listen to \'%s\'. This is a bug!\n",
           "mISDN_clock_update", (char *)(& iclock->name), tmp);
    (*(iclock->ctl))(iclock->priv, 0);
    _raw_write_unlock_irqrestore(& iclock_lock, flags);
    }
    return;
  } else {
  }
  if (iclock_tv_valid != 0) {
    iclock_count = (u16 )((int )((u16 )samples) + (int )iclock_count);
    if ((unsigned long )tv != (unsigned long )((struct timeval *)0)) {
      iclock_tv.tv_sec = tv->tv_sec;
      iclock_tv.tv_usec = tv->tv_usec;
    } else {
      {
      do_gettimeofday(& iclock_tv);
      }
    }
  } else {
    if ((unsigned long )tv != (unsigned long )((struct timeval *)0)) {
      tv_now.tv_sec = tv->tv_sec;
      tv_now.tv_usec = tv->tv_usec;
    } else {
      {
      do_gettimeofday(& tv_now);
      }
    }
    elapsed_sec = tv_now.tv_sec - iclock_tv.tv_sec;
    elapsed_8000th = (int )((unsigned int )(tv_now.tv_usec / 125L) - (unsigned int )(iclock_tv.tv_usec / 125L));
    if (elapsed_8000th < 0) {
      elapsed_sec = elapsed_sec + -1L;
      elapsed_8000th = elapsed_8000th + 8000;
    } else {
    }
    iclock_count = (u16 )(((unsigned int )((u16 )elapsed_sec) * 8000U + (unsigned int )((u16 )elapsed_8000th)) + (unsigned int )iclock_count);
    iclock_tv.tv_sec = tv_now.tv_sec;
    iclock_tv.tv_usec = tv_now.tv_usec;
    iclock_tv_valid = 1;
    if ((*debug___1 & 33554432U) != 0U) {
      if ((unsigned long )iclock_current != (unsigned long )((struct mISDNclock *)0)) {
        tmp___0 = (char *)(& iclock_current->name);
      } else {
        tmp___0 = (char *)"nothing";
      }
      {
      printk("Received first clock from source \'%s\'.\n", tmp___0);
      }
    } else {
    }
  }
  {
  _raw_write_unlock_irqrestore(& iclock_lock, flags);
  }
  return;
}
}
unsigned short mISDN_clock_get(void)
{ u_long flags ;
  struct timeval tv_now ;
  time_t elapsed_sec ;
  int elapsed_8000th ;
  u16 count ;
  {
  {
  flags = _raw_read_lock_irqsave(& iclock_lock);
  do_gettimeofday(& tv_now);
  elapsed_sec = tv_now.tv_sec - iclock_tv.tv_sec;
  elapsed_8000th = (int )((unsigned int )(tv_now.tv_usec / 125L) - (unsigned int )(iclock_tv.tv_usec / 125L));
  }
  if (elapsed_8000th < 0) {
    elapsed_sec = elapsed_sec + -1L;
    elapsed_8000th = elapsed_8000th + 8000;
  } else {
  }
  {
  count = (u16 )(((unsigned int )((u16 )elapsed_sec) * 8000U + (unsigned int )iclock_count) + (unsigned int )((u16 )elapsed_8000th));
  _raw_read_unlock_irqrestore(& iclock_lock, flags);
  }
  return (count);
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
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6060.rlock);
}
}
extern void __init_work(struct work_struct * , int ) ;
extern int schedule_work(struct work_struct * ) ;
extern bool flush_work_sync(struct work_struct * ) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{ struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{ struct lock_class_key __key ;
  {
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.ldv_6060.rlock, "&(&list->lock)->rlock", & __key);
  __skb_queue_head_init(list);
  }
  return;
}
}
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
__inline static struct sk_buff *mI_alloc_skb(unsigned int len , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  long tmp ;
  {
  {
  skb = alloc_skb(len + 8U, gfp_mask);
  tmp = __builtin_expect((long )((unsigned long )skb != (unsigned long )((struct sk_buff *)0)),
                         1L);
  }
  if (tmp != 0L) {
    {
    skb_reserve(skb, 8);
    }
  } else {
  }
  return (skb);
}
}
__inline static struct sk_buff *_alloc_mISDN_skb(u_int prim , u_int id , u_int len ,
                                                 void *dp , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  struct sk_buff *tmp ;
  struct mISDNhead *hh ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___1 ;
  {
  {
  tmp = mI_alloc_skb(len, gfp_mask);
  skb = tmp;
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  if (len != 0U) {
    {
    __len = (size_t )len;
    tmp___1 = skb_put(skb, len);
    __ret = memcpy((void *)tmp___1, (void const *)dp, __len);
    }
  } else {
  }
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = id;
  return (skb);
}
}
__inline static void _queue_data(struct mISDNchannel *ch , u_int prim , u_int id ,
                                 u_int len , void *dp , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  int tmp ;
  {
  if ((unsigned long )ch->peer == (unsigned long )((struct mISDNchannel *)0)) {
    return;
  } else {
  }
  {
  skb = _alloc_mISDN_skb(prim, id, len, dp, gfp_mask);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  tmp = (*(ch->recv))(ch->peer, skb);
  }
  if (tmp != 0) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
int mISDN_initdchannel(struct dchannel *ch , int maxlen , void *phf ) ;
int mISDN_initbchannel(struct bchannel *ch , int maxlen ) ;
int mISDN_freedchannel(struct dchannel *ch ) ;
void mISDN_clear_bchannel(struct bchannel *ch ) ;
int mISDN_freebchannel(struct bchannel *ch ) ;
void queue_ch_frame(struct mISDNchannel *ch , u_int pr , int id , struct sk_buff *skb ) ;
int dchannel_senddata(struct dchannel *ch , struct sk_buff *skb ) ;
int bchannel_senddata(struct bchannel *ch , struct sk_buff *skb ) ;
void recv_Dchannel(struct dchannel *dch ) ;
void recv_Echannel(struct dchannel *ech , struct dchannel *dch ) ;
void recv_Bchannel(struct bchannel *bch , unsigned int id ) ;
void recv_Dchannel_skb(struct dchannel *dch , struct sk_buff *skb ) ;
void recv_Bchannel_skb(struct bchannel *bch , struct sk_buff *skb ) ;
void confirm_Bsend(struct bchannel *bch ) ;
int get_next_bframe(struct bchannel *bch ) ;
int get_next_dframe(struct dchannel *dch ) ;
static void dchannel_bh(struct work_struct *ws )
{ struct dchannel *dch ;
  struct work_struct const *__mptr ;
  struct sk_buff *skb ;
  int err ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  __mptr = (struct work_struct const *)ws;
  dch = (struct dchannel *)__mptr + 0x0ffffffffffffb18UL;
  tmp___0 = test_and_clear_bit(30, (unsigned long volatile *)(& dch->Flags));
  }
  if (tmp___0 != 0) {
    goto ldv_38407;
    ldv_38406:
    {
    tmp = __builtin_expect((long )((unsigned long )dch->dev.D.peer != (unsigned long )((struct mISDNchannel *)0)),
                           1L);
    }
    if (tmp != 0L) {
      {
      err = (*(dch->dev.D.recv))(dch->dev.D.peer, skb);
      }
      if (err != 0) {
        {
        consume_skb(skb);
        }
      } else {
      }
    } else {
      {
      consume_skb(skb);
      }
    }
    ldv_38407:
    {
    skb = skb_dequeue(& dch->rqueue);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_38406;
    } else {
      goto ldv_38408;
    }
    ldv_38408: ;
  } else {
  }
  {
  tmp___1 = test_and_clear_bit(31, (unsigned long volatile *)(& dch->Flags));
  }
  if (tmp___1 != 0) {
    if ((unsigned long )dch->phfunc != (unsigned long )((void (*)(struct dchannel * ))0)) {
      {
      (*(dch->phfunc))(dch);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void bchannel_bh(struct work_struct *ws )
{ struct bchannel *bch ;
  struct work_struct const *__mptr ;
  struct sk_buff *skb ;
  int err ;
  long tmp ;
  int tmp___0 ;
  {
  {
  __mptr = (struct work_struct const *)ws;
  bch = (struct bchannel *)__mptr + 0x0fffffffffffffa0UL;
  tmp___0 = test_and_clear_bit(30, (unsigned long volatile *)(& bch->Flags));
  }
  if (tmp___0 != 0) {
    goto ldv_38418;
    ldv_38417:
    {
    bch->rcount = bch->rcount - 1;
    tmp = __builtin_expect((long )((unsigned long )bch->ch.peer != (unsigned long )((struct mISDNchannel *)0)),
                           1L);
    }
    if (tmp != 0L) {
      {
      err = (*(bch->ch.recv))(bch->ch.peer, skb);
      }
      if (err != 0) {
        {
        consume_skb(skb);
        }
      } else {
      }
    } else {
      {
      consume_skb(skb);
      }
    }
    ldv_38418:
    {
    skb = skb_dequeue(& bch->rqueue);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_38417;
    } else {
      goto ldv_38419;
    }
    ldv_38419: ;
  } else {
  }
  return;
}
}
int mISDN_initdchannel(struct dchannel *ch , int maxlen , void *phf )
{ struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  test_and_set_bit(13, (unsigned long volatile *)(& ch->Flags));
  ch->maxlen = maxlen;
  ch->hw = (void *)0;
  ch->rx_skb = (struct sk_buff *)0;
  ch->tx_skb = (struct sk_buff *)0;
  ch->tx_idx = 0;
  ch->phfunc = (void (*)(struct dchannel * ))phf;
  skb_queue_head_init(& ch->squeue);
  skb_queue_head_init(& ch->rqueue);
  INIT_LIST_HEAD(& ch->dev.bchannels);
  __init_work(& ch->workq, 0);
  __constr_expr_0.counter = 2097664L;
  ch->workq.data = __constr_expr_0;
  lockdep_init_map(& ch->workq.lockdep_map, "(&ch->workq)", & __key, 0);
  INIT_LIST_HEAD(& ch->workq.entry);
  ch->workq.func = & dchannel_bh;
  }
  return (0);
}
}
int mISDN_initbchannel(struct bchannel *ch , int maxlen )
{ struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  {
  ch->Flags = 0UL;
  ch->maxlen = maxlen;
  ch->hw = (void *)0;
  ch->rx_skb = (struct sk_buff *)0;
  ch->tx_skb = (struct sk_buff *)0;
  ch->tx_idx = 0;
  skb_queue_head_init(& ch->rqueue);
  ch->rcount = 0;
  ch->next_skb = (struct sk_buff *)0;
  __init_work(& ch->workq, 0);
  __constr_expr_0.counter = 2097664L;
  ch->workq.data = __constr_expr_0;
  lockdep_init_map(& ch->workq.lockdep_map, "(&ch->workq)", & __key, 0);
  INIT_LIST_HEAD(& ch->workq.entry);
  ch->workq.func = & bchannel_bh;
  }
  return (0);
}
}
int mISDN_freedchannel(struct dchannel *ch )
{
  {
  if ((unsigned long )ch->tx_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(ch->tx_skb);
    ch->tx_skb = (struct sk_buff *)0;
    }
  } else {
  }
  if ((unsigned long )ch->rx_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(ch->rx_skb);
    ch->rx_skb = (struct sk_buff *)0;
    }
  } else {
  }
  {
  skb_queue_purge(& ch->squeue);
  skb_queue_purge(& ch->rqueue);
  flush_work_sync(& ch->workq);
  }
  return (0);
}
}
void mISDN_clear_bchannel(struct bchannel *ch )
{
  {
  if ((unsigned long )ch->tx_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(ch->tx_skb);
    ch->tx_skb = (struct sk_buff *)0;
    }
  } else {
  }
  ch->tx_idx = 0;
  if ((unsigned long )ch->rx_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(ch->rx_skb);
    ch->rx_skb = (struct sk_buff *)0;
    }
  } else {
  }
  if ((unsigned long )ch->next_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(ch->next_skb);
    ch->next_skb = (struct sk_buff *)0;
    }
  } else {
  }
  {
  test_and_clear_bit(0, (unsigned long volatile *)(& ch->Flags));
  test_and_clear_bit(1, (unsigned long volatile *)(& ch->Flags));
  test_and_clear_bit(6, (unsigned long volatile *)(& ch->Flags));
  }
  return;
}
}
int mISDN_freebchannel(struct bchannel *ch )
{
  {
  {
  mISDN_clear_bchannel(ch);
  skb_queue_purge(& ch->rqueue);
  ch->rcount = 0;
  flush_work_sync(& ch->workq);
  }
  return (0);
}
}
__inline static u_int get_sapi_tei(u_char *p )
{ u_int sapi ;
  u_int tei ;
  {
  sapi = (u_int )((int )*p >> 2);
  tei = (u_int )((int )*(p + 1UL) >> 1);
  return ((tei << 8) | sapi);
}
}
void recv_Dchannel(struct dchannel *dch )
{ struct mISDNhead *hh ;
  {
  if ((dch->rx_skb)->len <= 1U) {
    {
    consume_skb(dch->rx_skb);
    dch->rx_skb = (struct sk_buff *)0;
    }
    return;
  } else {
  }
  {
  hh = (struct mISDNhead *)(& (dch->rx_skb)->cb);
  hh->prim = 8194U;
  hh->id = get_sapi_tei((dch->rx_skb)->data);
  skb_queue_tail(& dch->rqueue, dch->rx_skb);
  dch->rx_skb = (struct sk_buff *)0;
  test_and_set_bit(30, (unsigned long volatile *)(& dch->Flags));
  schedule_work(& dch->workq);
  }
  return;
}
}
void recv_Echannel(struct dchannel *ech , struct dchannel *dch )
{ struct mISDNhead *hh ;
  {
  if ((ech->rx_skb)->len <= 1U) {
    {
    consume_skb(ech->rx_skb);
    ech->rx_skb = (struct sk_buff *)0;
    }
    return;
  } else {
  }
  {
  hh = (struct mISDNhead *)(& (ech->rx_skb)->cb);
  hh->prim = 12290U;
  hh->id = get_sapi_tei((ech->rx_skb)->data);
  skb_queue_tail(& dch->rqueue, ech->rx_skb);
  ech->rx_skb = (struct sk_buff *)0;
  test_and_set_bit(30, (unsigned long volatile *)(& dch->Flags));
  schedule_work(& dch->workq);
  }
  return;
}
}
void recv_Bchannel(struct bchannel *bch , unsigned int id )
{ struct mISDNhead *hh ;
  {
  hh = (struct mISDNhead *)(& (bch->rx_skb)->cb);
  hh->prim = 8194U;
  hh->id = id;
  if (bch->rcount > 63) {
    {
    printk("<4>B-channel %p receive queue overflow, flushing!\n", bch);
    skb_queue_purge(& bch->rqueue);
    bch->rcount = 0;
    }
    return;
  } else {
  }
  {
  bch->rcount = bch->rcount + 1;
  skb_queue_tail(& bch->rqueue, bch->rx_skb);
  bch->rx_skb = (struct sk_buff *)0;
  test_and_set_bit(30, (unsigned long volatile *)(& bch->Flags));
  schedule_work(& bch->workq);
  }
  return;
}
}
void recv_Dchannel_skb(struct dchannel *dch , struct sk_buff *skb )
{
  {
  {
  skb_queue_tail(& dch->rqueue, skb);
  test_and_set_bit(30, (unsigned long volatile *)(& dch->Flags));
  schedule_work(& dch->workq);
  }
  return;
}
}
void recv_Bchannel_skb(struct bchannel *bch , struct sk_buff *skb )
{
  {
  if (bch->rcount > 63) {
    {
    printk("<4>B-channel %p receive queue overflow, flushing!\n", bch);
    skb_queue_purge(& bch->rqueue);
    bch->rcount = 0;
    }
  } else {
  }
  {
  bch->rcount = bch->rcount + 1;
  skb_queue_tail(& bch->rqueue, skb);
  test_and_set_bit(30, (unsigned long volatile *)(& bch->Flags));
  schedule_work(& bch->workq);
  }
  return;
}
}
static void confirm_Dsend(struct dchannel *dch )
{ struct sk_buff *skb ;
  {
  {
  skb = _alloc_mISDN_skb(24578U, ((struct mISDNhead *)(& (dch->tx_skb)->cb))->id,
                         0U, (void *)0, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<3>%s: no skb id %x\n", "confirm_Dsend", ((struct mISDNhead *)(& (dch->tx_skb)->cb))->id);
    }
    return;
  } else {
  }
  {
  skb_queue_tail(& dch->rqueue, skb);
  test_and_set_bit(30, (unsigned long volatile *)(& dch->Flags));
  schedule_work(& dch->workq);
  }
  return;
}
}
int get_next_dframe(struct dchannel *dch )
{
  {
  {
  dch->tx_idx = 0;
  dch->tx_skb = skb_dequeue(& dch->squeue);
  }
  if ((unsigned long )dch->tx_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    confirm_Dsend(dch);
    }
    return (1);
  } else {
  }
  {
  dch->tx_skb = (struct sk_buff *)0;
  test_and_clear_bit(0, (unsigned long volatile *)(& dch->Flags));
  }
  return (0);
}
}
void confirm_Bsend(struct bchannel *bch )
{ struct sk_buff *skb ;
  {
  if (bch->rcount > 63) {
    {
    printk("<4>B-channel %p receive queue overflow, flushing!\n", bch);
    skb_queue_purge(& bch->rqueue);
    bch->rcount = 0;
    }
  } else {
  }
  {
  skb = _alloc_mISDN_skb(24578U, ((struct mISDNhead *)(& (bch->tx_skb)->cb))->id,
                         0U, (void *)0, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<3>%s: no skb id %x\n", "confirm_Bsend", ((struct mISDNhead *)(& (bch->tx_skb)->cb))->id);
    }
    return;
  } else {
  }
  {
  bch->rcount = bch->rcount + 1;
  skb_queue_tail(& bch->rqueue, skb);
  test_and_set_bit(30, (unsigned long volatile *)(& bch->Flags));
  schedule_work(& bch->workq);
  }
  return;
}
}
int get_next_bframe(struct bchannel *bch )
{ int tmp ;
  int tmp___0 ;
  {
  {
  bch->tx_idx = 0;
  tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& bch->Flags));
  }
  if (tmp___0 != 0) {
    bch->tx_skb = bch->next_skb;
    if ((unsigned long )bch->tx_skb != (unsigned long )((struct sk_buff *)0)) {
      {
      bch->next_skb = (struct sk_buff *)0;
      test_and_clear_bit(1, (unsigned long volatile *)(& bch->Flags));
      tmp = constant_test_bit(12U, (unsigned long const volatile *)(& bch->Flags));
      }
      if (tmp == 0) {
        {
        confirm_Bsend(bch);
        }
      } else {
      }
      return (1);
    } else {
      {
      test_and_clear_bit(1, (unsigned long volatile *)(& bch->Flags));
      printk("<4>B TX_NEXT without skb\n");
      }
    }
  } else {
  }
  {
  bch->tx_skb = (struct sk_buff *)0;
  test_and_clear_bit(0, (unsigned long volatile *)(& bch->Flags));
  }
  return (0);
}
}
void queue_ch_frame(struct mISDNchannel *ch , u_int pr , int id , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  int tmp ;
  {
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    _queue_data(ch, pr, (u_int )id, 0U, (void *)0, 32U);
    }
  } else {
    if ((unsigned long )ch->peer != (unsigned long )((struct mISDNchannel *)0)) {
      {
      hh = (struct mISDNhead *)(& skb->cb);
      hh->prim = pr;
      hh->id = (unsigned int )id;
      tmp = (*(ch->recv))(ch->peer, skb);
      }
      if (tmp == 0) {
        return;
      } else {
      }
    } else {
    }
    {
    consume_skb(skb);
    }
  }
  return;
}
}
int dchannel_senddata(struct dchannel *ch , struct sk_buff *skb )
{ int tmp ;
  {
  if (skb->len == 0U) {
    {
    printk("<4>%s: skb too small\n", "dchannel_senddata");
    }
    return (-22);
  } else {
  }
  if (skb->len > (unsigned int )ch->maxlen) {
    {
    printk("<4>%s: skb too large(%d/%d)\n", "dchannel_senddata", skb->len, ch->maxlen);
    }
    return (-22);
  } else {
  }
  {
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& ch->Flags));
  }
  if (tmp != 0) {
    {
    skb_queue_tail(& ch->squeue, skb);
    }
    return (0);
  } else {
    ch->tx_skb = skb;
    ch->tx_idx = 0;
    return (1);
  }
}
}
int bchannel_senddata(struct bchannel *ch , struct sk_buff *skb )
{ int tmp ;
  {
  if (skb->len == 0U) {
    {
    printk("<4>%s: skb too small\n", "bchannel_senddata");
    }
    return (-22);
  } else {
  }
  if (skb->len > (unsigned int )ch->maxlen) {
    {
    printk("<4>%s: skb too large(%d/%d)\n", "bchannel_senddata", skb->len, ch->maxlen);
    }
    return (-22);
  } else {
  }
  if ((unsigned long )ch->next_skb != (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<4>%s: next_skb exist ERROR (skb->len=%d next_skb->len=%d)\n", "bchannel_senddata",
           skb->len, (ch->next_skb)->len);
    }
    return (-16);
  } else {
  }
  {
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& ch->Flags));
  }
  if (tmp != 0) {
    {
    test_and_set_bit(1, (unsigned long volatile *)(& ch->Flags));
    ch->next_skb = skb;
    }
    return (0);
  } else {
    ch->tx_skb = skb;
    ch->tx_idx = 0;
    return (1);
  }
}
}
__inline static int list_is_last(struct list_head const *list , struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)list->next) == (unsigned long )head);
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static int hlist_empty(struct hlist_head const *h )
{
  {
  return ((unsigned long )h->first == (unsigned long )((struct hlist_node * const )0));
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{ struct task_struct *pfo_ret__ ;
  {
  if (1) {
    goto case_8;
  } else {
    goto switch_default;
    if (0) {
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
      goto ldv_2386;
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
      goto ldv_2386;
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
      goto ldv_2386;
      case_8:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
      goto ldv_2386;
      switch_default:
      {
      __bad_percpu_size();
      }
    } else {
    }
  }
  ldv_2386: ;
  return (pfo_ret__);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  {
  {
  tmp = __builtin_expect((long )((unsigned long )ptr > 0x0ffffffffffff000UL), 0L);
  }
  return (tmp);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{ int tmp ;
  {
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  }
  return (tmp);
}
}
extern void __rwlock_init(rwlock_t * , char const * , struct lock_class_key * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
__inline static void init_completion(struct completion *x )
{ struct lock_class_key __key ;
  {
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, & __key);
  }
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern struct sk_buff *skb_copy(struct sk_buff const * , gfp_t ) ;
__inline static int skb_queue_empty(struct sk_buff_head const *list )
{
  {
  return ((unsigned long )((struct sk_buff *)list->next) == (unsigned long )((struct sk_buff *)list));
}
}
__inline static void sigfillset(sigset_t *set )
{
  {
  if (1) {
    goto case_1;
  } else {
    goto switch_default;
    if (0) {
      switch_default:
      {
      memset((void *)set, -1, 8UL);
      }
      goto ldv_24894;
      set->sig[1] = 0x0fffffffffffffffUL;
      case_1:
      set->sig[0] = 0x0fffffffffffffffUL;
      goto ldv_24894;
    } else {
    }
  }
  ldv_24894: ;
  return;
}
}
extern void schedule(void) ;
extern int wake_up_process(struct task_struct * ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{ int tmp ;
  {
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  }
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{ int tmp ;
  long tmp___0 ;
  {
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = __builtin_expect((long )(tmp != 0), 0L);
  }
  return ((int )tmp___0);
}
}
void set_channel_address(struct mISDNchannel *ch , u_int sapi , u_int tei ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
int create_teimanager(struct mISDNdevice *dev ) ;
void delete_teimanager(struct mISDNchannel *ch ) ;
void add_layer2(struct mISDNchannel *ch , struct mISDNstack *st ) ;
void __add_layer2(struct mISDNchannel *ch , struct mISDNstack *st ) ;
static u_int *debug___2 ;
__inline static void _queue_message(struct mISDNstack *st , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  int tmp ;
  long tmp___0 ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  if ((*debug___2 & 64U) != 0U) {
    {
    printk("<7>%s prim(%x) id(%x) %p\n", "_queue_message", hh->prim, hh->id, skb);
    }
  } else {
  }
  {
  skb_queue_tail(& st->msgq, skb);
  tmp = constant_test_bit(16U, (unsigned long const volatile *)(& st->status));
  tmp___0 = __builtin_expect((long )(tmp == 0), 1L);
  }
  if (tmp___0 != 0L) {
    {
    test_and_set_bit(0, (unsigned long volatile *)(& st->status));
    __wake_up(& st->workq, 1U, 1, (void *)0);
    }
  } else {
  }
  return;
}
}
static int mISDN_queue_message(struct mISDNchannel *ch , struct sk_buff *skb )
{
  {
  {
  _queue_message(ch->st, skb);
  }
  return (0);
}
}
static struct mISDNchannel *get_channel4id(struct mISDNstack *st , u_int id )
{ struct mISDNchannel *ch ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  mutex_lock_nested(& st->lmutex, 0U);
  __mptr = (struct list_head const *)st->layer2.next;
  ch = (struct mISDNchannel *)__mptr;
  }
  goto ldv_38432;
  ldv_38431: ;
  if (ch->nr == id) {
    goto unlock;
  } else {
  }
  __mptr___0 = (struct list_head const *)ch->list.next;
  ch = (struct mISDNchannel *)__mptr___0;
  ldv_38432: ;
  if ((unsigned long )(& ch->list) != (unsigned long )(& st->layer2)) {
    goto ldv_38431;
  } else {
    goto ldv_38433;
  }
  ldv_38433:
  ch = (struct mISDNchannel *)0;
  unlock:
  {
  mutex_unlock(& st->lmutex);
  }
  return (ch);
}
}
static void send_socklist(struct mISDN_sock_list *sl , struct sk_buff *skb )
{ struct hlist_node *node ;
  struct sock *sk ;
  struct sk_buff *cskb ;
  int tmp ;
  struct hlist_node const *__mptr ;
  {
  {
  cskb = (struct sk_buff *)0;
  _raw_read_lock(& sl->lock);
  node = sl->head.first;
  }
  goto ldv_38448;
  ldv_38447: ;
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 2U) {
    goto ldv_38444;
  } else {
  }
  if ((unsigned long )cskb == (unsigned long )((struct sk_buff *)0)) {
    {
    cskb = skb_copy((struct sk_buff const *)skb, 208U);
    }
  } else {
  }
  if ((unsigned long )cskb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<4>%s no skb\n", "send_socklist");
    }
    goto ldv_38446;
  } else {
  }
  {
  tmp = sock_queue_rcv_skb(sk, cskb);
  }
  if (tmp == 0) {
    cskb = (struct sk_buff *)0;
  } else {
  }
  ldv_38444:
  node = node->next;
  ldv_38448: ;
  if ((unsigned long )node != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)node;
    sk = (struct sock *)__mptr + 0x0fffffffffffffc8UL;
    goto ldv_38447;
  } else {
    goto ldv_38446;
  }
  ldv_38446:
  {
  _raw_read_unlock(& sl->lock);
  }
  if ((unsigned long )cskb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(cskb);
    }
  } else {
  }
  return;
}
}
static void send_layer2(struct mISDNstack *st , struct sk_buff *skb )
{ struct sk_buff *cskb ;
  struct mISDNhead *hh ;
  struct mISDNchannel *ch ;
  int ret ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  if ((unsigned long )st == (unsigned long )((struct mISDNstack *)0)) {
    return;
  } else {
  }
  {
  mutex_lock_nested(& st->lmutex, 0U);
  }
  if ((hh->id & 65535U) == 65535U) {
    __mptr = (struct list_head const *)st->layer2.next;
    ch = (struct mISDNchannel *)__mptr;
    goto ldv_38464;
    ldv_38463:
    {
    tmp = list_is_last((struct list_head const *)(& ch->list), (struct list_head const *)(& st->layer2));
    }
    if (tmp != 0) {
      cskb = skb;
      skb = (struct sk_buff *)0;
    } else {
      {
      cskb = skb_copy((struct sk_buff const *)skb, 208U);
      }
    }
    if ((unsigned long )cskb != (unsigned long )((struct sk_buff *)0)) {
      {
      ret = (*(ch->send))(ch, cskb);
      }
      if (ret != 0) {
        if ((*debug___2 & 16U) != 0U) {
          {
          printk("<7>%s ch%d prim(%x) addr(%x) err %d\n", "send_layer2", ch->nr, hh->prim,
                 ch->addr, ret);
          }
        } else {
        }
        {
        consume_skb(cskb);
        }
      } else {
      }
    } else {
      {
      printk("<4>%s ch%d addr %x no mem\n", "send_layer2", ch->nr, ch->addr);
      }
      goto out;
    }
    __mptr___0 = (struct list_head const *)ch->list.next;
    ch = (struct mISDNchannel *)__mptr___0;
    ldv_38464: ;
    if ((unsigned long )(& ch->list) != (unsigned long )(& st->layer2)) {
      goto ldv_38463;
    } else {
      goto ldv_38465;
    }
    ldv_38465: ;
  } else {
    __mptr___1 = (struct list_head const *)st->layer2.next;
    ch = (struct mISDNchannel *)__mptr___1;
    goto ldv_38471;
    ldv_38470: ;
    if ((hh->id & 65535U) == ch->addr) {
      {
      ret = (*(ch->send))(ch, skb);
      }
      if (ret == 0) {
        skb = (struct sk_buff *)0;
      } else {
      }
      goto out;
    } else {
    }
    __mptr___2 = (struct list_head const *)ch->list.next;
    ch = (struct mISDNchannel *)__mptr___2;
    ldv_38471: ;
    if ((unsigned long )(& ch->list) != (unsigned long )(& st->layer2)) {
      goto ldv_38470;
    } else {
      goto ldv_38472;
    }
    ldv_38472:
    {
    ret = (*(((st->dev)->teimgr)->ctrl))((st->dev)->teimgr, 1024U, (void *)skb);
    }
    if (ret == 0) {
      skb = (struct sk_buff *)0;
    } else
    if ((*debug___2 & 16U) != 0U) {
      {
      printk("<7>%s ch%d mgr prim(%x) addr(%x) err %d\n", "send_layer2", ch->nr, hh->prim,
             ch->addr, ret);
      }
    } else {
    }
  }
  out:
  {
  mutex_unlock(& st->lmutex);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
__inline static int send_msg_to_layer(struct mISDNstack *st , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  struct mISDNchannel *ch ;
  int lm ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  int __ret_warn_on ;
  long tmp___4 ;
  int tmp___5 ;
  char const *tmp___6 ;
  char const *tmp___7 ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  lm = (int )hh->prim & 255;
  if ((*debug___2 & 64U) != 0U) {
    {
    printk("<7>%s prim(%x) id(%x) %p\n", "send_msg_to_layer", hh->prim, hh->id, skb);
    }
  } else {
  }
  if (lm == 1) {
    {
    tmp = hlist_empty((struct hlist_head const *)(& st->l1sock.head));
    }
    if (tmp == 0) {
      {
      __net_timestamp(skb);
      send_socklist(& st->l1sock, skb);
      }
    } else {
    }
    {
    tmp___0 = (*((st->layer1)->send))(st->layer1, skb);
    }
    return (tmp___0);
  } else
  if (lm == 2) {
    {
    tmp___1 = hlist_empty((struct hlist_head const *)(& st->l1sock.head));
    }
    if (tmp___1 == 0) {
      {
      send_socklist(& st->l1sock, skb);
      }
    } else {
    }
    {
    send_layer2(st, skb);
    }
    return (0);
  } else
  if (lm == 4) {
    {
    ch = get_channel4id(st, hh->id);
    }
    if ((unsigned long )ch != (unsigned long )((struct mISDNchannel *)0)) {
      {
      tmp___2 = (*(ch->send))(ch, skb);
      }
      return (tmp___2);
    } else {
      {
      tmp___3 = dev_name((struct device const *)(& (st->dev)->dev));
      printk("<4>%s: dev(%s) prim(%x) id(%x) no channel\n", "send_msg_to_layer", tmp___3,
             hh->prim, hh->id);
      }
    }
  } else
  if (lm == 8) {
    {
    __ret_warn_on = lm == 8;
    tmp___4 = __builtin_expect((long )(__ret_warn_on != 0), 0L);
    }
    if (tmp___4 != 0L) {
      {
      warn_slowpath_null("/anthill/stuff/tacas-comp/work/current--X--drivers/isdn/mISDN/mISDN_core.ko--X--bulklinux-3.0.1--X--08_1/linux-3.0.1/csd_deg_dscv/30/dscv_tempdir/dscv/ri/08_1/drivers/isdn/mISDN/stack.c.p",
                         (int const )186);
      }
    } else {
    }
    {
    __builtin_expect((long )(__ret_warn_on != 0), 0L);
    ch = get_channel4id(st, hh->id);
    }
    if ((unsigned long )ch != (unsigned long )((struct mISDNchannel *)0)) {
      {
      tmp___5 = (*(ch->send))(ch, skb);
      }
      return (tmp___5);
    } else {
      {
      tmp___6 = dev_name((struct device const *)(& (st->dev)->dev));
      printk("<4>%s: dev(%s) prim(%x) id(%x) no channel\n", "send_msg_to_layer", tmp___6,
             hh->prim, hh->id);
      }
    }
  } else {
    {
    tmp___7 = dev_name((struct device const *)(& (st->dev)->dev));
    printk("<4>%s: dev(%s) prim %x not delivered\n", "send_msg_to_layer", tmp___7,
           hh->prim);
    }
  }
  return (-3);
}
}
static void do_clear_stack(struct mISDNstack *st )
{
  {
  return;
}
}
static int mISDNStackd(void *data )
{ struct mISDNstack *st ;
  int err ;
  struct task_struct *tmp ;
  char const *tmp___0 ;
  struct sk_buff *skb ;
  int tmp___1 ;
  long tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___12 ;
  struct task_struct *tmp___13 ;
  int tmp___14 ;
  char const *tmp___15 ;
  int tmp___16 ;
  {
  {
  st = (struct mISDNstack *)data;
  err = 0;
  tmp = get_current();
  sigfillset(& tmp->blocked);
  }
  if ((*debug___2 & 32U) != 0U) {
    {
    tmp___0 = dev_name((struct device const *)(& (st->dev)->dev));
    printk("<7>mISDNStackd %s started\n", tmp___0);
    }
  } else {
  }
  if ((unsigned long )st->notify != (unsigned long )((struct completion *)0)) {
    {
    complete(st->notify);
    st->notify = (struct completion *)0;
    }
  } else {
  }
  ldv_38503:
  {
  tmp___1 = constant_test_bit(16U, (unsigned long const volatile *)(& st->status));
  tmp___2 = __builtin_expect((long )(tmp___1 != 0), 0L);
  }
  if (tmp___2 != 0L) {
    {
    test_and_clear_bit(0, (unsigned long volatile *)(& st->status));
    test_and_clear_bit(30, (unsigned long volatile *)(& st->status));
    }
  } else {
    {
    test_and_set_bit(30, (unsigned long volatile *)(& st->status));
    }
  }
  goto ldv_38492;
  ldv_38495:
  {
  skb = skb_dequeue(& st->msgq);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    test_and_clear_bit(0, (unsigned long volatile *)(& st->status));
    skb = skb_dequeue(& st->msgq);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      goto ldv_38492;
    } else {
    }
    {
    test_and_set_bit(0, (unsigned long volatile *)(& st->status));
    }
  } else {
  }
  {
  err = send_msg_to_layer(st, skb);
  tmp___4 = __builtin_expect((long )(err != 0), 0L);
  }
  if (tmp___4 != 0L) {
    if ((*debug___2 & 16U) != 0U) {
      {
      tmp___3 = dev_name((struct device const *)(& (st->dev)->dev));
      printk("<7>%s: %s prim(%x) id(%x) send call(%d)\n", "mISDNStackd", tmp___3,
             ((struct mISDNhead *)(& skb->cb))->prim, ((struct mISDNhead *)(& skb->cb))->id,
             err);
      }
    } else {
    }
    {
    consume_skb(skb);
    }
    goto ldv_38492;
  } else {
  }
  {
  tmp___5 = constant_test_bit(16U, (unsigned long const volatile *)(& st->status));
  tmp___6 = __builtin_expect((long )(tmp___5 != 0), 0L);
  }
  if (tmp___6 != 0L) {
    {
    test_and_clear_bit(0, (unsigned long volatile *)(& st->status));
    test_and_clear_bit(30, (unsigned long volatile *)(& st->status));
    }
    goto ldv_38494;
  } else {
  }
  ldv_38492:
  {
  tmp___7 = constant_test_bit(0U, (unsigned long const volatile *)(& st->status));
  }
  if (tmp___7 != 0) {
    goto ldv_38495;
  } else {
    goto ldv_38494;
  }
  ldv_38494:
  {
  tmp___8 = constant_test_bit(2U, (unsigned long const volatile *)(& st->status));
  }
  if (tmp___8 != 0) {
    {
    test_and_set_bit(16, (unsigned long volatile *)(& st->status));
    test_and_clear_bit(30, (unsigned long volatile *)(& st->status));
    do_clear_stack(st);
    test_and_clear_bit(2, (unsigned long volatile *)(& st->status));
    test_and_set_bit(3, (unsigned long volatile *)(& st->status));
    }
  } else {
  }
  {
  tmp___10 = test_and_clear_bit(3, (unsigned long volatile *)(& st->status));
  }
  if (tmp___10 != 0) {
    {
    test_and_clear_bit(16, (unsigned long volatile *)(& st->status));
    test_and_set_bit(30, (unsigned long volatile *)(& st->status));
    tmp___9 = skb_queue_empty((struct sk_buff_head const *)(& st->msgq));
    }
    if (tmp___9 == 0) {
      {
      test_and_set_bit(0, (unsigned long volatile *)(& st->status));
      }
    } else {
    }
  } else {
  }
  {
  tmp___11 = constant_test_bit(15U, (unsigned long const volatile *)(& st->status));
  }
  if (tmp___11 != 0) {
    goto ldv_38496;
  } else {
  }
  if ((unsigned long )st->notify != (unsigned long )((struct completion *)0)) {
    {
    complete(st->notify);
    st->notify = (struct completion *)0;
    }
  } else {
  }
  {
  test_and_clear_bit(29, (unsigned long volatile *)(& st->status));
  __ret = 0;
  }
  if ((st->status & 65535UL) == 0UL) {
    {
    tmp___12 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___12;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    }
    ldv_38501:
    {
    prepare_to_wait(& st->workq, & __wait, 1);
    }
    if ((st->status & 65535UL) != 0UL) {
      goto ldv_38499;
    } else {
    }
    {
    tmp___13 = get_current();
    tmp___14 = signal_pending(tmp___13);
    }
    if (tmp___14 == 0) {
      {
      schedule();
      }
      goto ldv_38500;
    } else {
    }
    __ret = -512;
    goto ldv_38499;
    ldv_38500: ;
    goto ldv_38501;
    ldv_38499:
    {
    finish_wait(& st->workq, & __wait);
    }
  } else {
  }
  if ((*debug___2 & 32U) != 0U) {
    {
    tmp___15 = dev_name((struct device const *)(& (st->dev)->dev));
    printk("<7>%s: %s wake status %08lx\n", "mISDNStackd", tmp___15, st->status);
    }
  } else {
  }
  {
  test_and_set_bit(29, (unsigned long volatile *)(& st->status));
  test_and_clear_bit(4, (unsigned long volatile *)(& st->status));
  tmp___16 = constant_test_bit(16U, (unsigned long const volatile *)(& st->status));
  }
  if (tmp___16 != 0) {
    {
    test_and_clear_bit(30, (unsigned long volatile *)(& st->status));
    }
  } else {
  }
  goto ldv_38503;
  ldv_38496:
  {
  test_and_set_bit(31, (unsigned long volatile *)(& st->status));
  test_and_clear_bit(30, (unsigned long volatile *)(& st->status));
  test_and_clear_bit(29, (unsigned long volatile *)(& st->status));
  test_and_clear_bit(15, (unsigned long volatile *)(& st->status));
  skb_queue_purge(& st->msgq);
  st->thread = (struct task_struct *)0;
  }
  if ((unsigned long )st->notify != (unsigned long )((struct completion *)0)) {
    {
    complete(st->notify);
    st->notify = (struct completion *)0;
    }
  } else {
  }
  return (0);
}
}
static int l1_receive(struct mISDNchannel *ch , struct sk_buff *skb )
{
  {
  if ((unsigned long )ch->st == (unsigned long )((struct mISDNstack *)0)) {
    return (-19);
  } else {
  }
  {
  __net_timestamp(skb);
  _queue_message(ch->st, skb);
  }
  return (0);
}
}
void set_channel_address(struct mISDNchannel *ch , u_int sapi , u_int tei )
{
  {
  ch->addr = (tei << 8) | sapi;
  return;
}
}
void __add_layer2(struct mISDNchannel *ch , struct mISDNstack *st )
{
  {
  {
  list_add_tail(& ch->list, & st->layer2);
  }
  return;
}
}
void add_layer2(struct mISDNchannel *ch , struct mISDNstack *st )
{
  {
  {
  mutex_lock_nested(& st->lmutex, 0U);
  __add_layer2(ch, st);
  mutex_unlock(& st->lmutex);
  }
  return;
}
}
static int st_own_ctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ int tmp ;
  {
  if ((unsigned long )ch->st == (unsigned long )((struct mISDNstack *)0)) {
    return (-22);
  } else
  if ((unsigned long )(ch->st)->layer1 == (unsigned long )((struct mISDNchannel *)0)) {
    return (-22);
  } else {
  }
  {
  tmp = (*(((ch->st)->layer1)->ctrl))((ch->st)->layer1, cmd, arg);
  }
  return (tmp);
}
}
int create_stack(struct mISDNdevice *dev )
{ struct mISDNstack *newst ;
  int err ;
  struct completion done ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  char const *tmp___0 ;
  struct task_struct *__k ;
  char const *tmp___1 ;
  struct task_struct *tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  long tmp___6 ;
  {
  {
  init_completion(& done);
  done = done;
  tmp = kzalloc(568UL, 208U);
  newst = (struct mISDNstack *)tmp;
  }
  if ((unsigned long )newst == (unsigned long )((struct mISDNstack *)0)) {
    {
    printk("<3>kmalloc mISDN_stack failed\n");
    }
    return (-12);
  } else {
  }
  {
  newst->dev = dev;
  INIT_LIST_HEAD(& newst->layer2);
  newst->l1sock.head.first = (struct hlist_node *)0;
  __rwlock_init(& newst->l1sock.lock, "&newst->l1sock.lock", & __key);
  __init_waitqueue_head(& newst->workq, & __key___0);
  skb_queue_head_init(& newst->msgq);
  __mutex_init(& newst->lmutex, "&newst->lmutex", & __key___1);
  dev->D.st = newst;
  err = create_teimanager(dev);
  }
  if (err != 0) {
    {
    printk("<3>kmalloc teimanager failed\n");
    kfree((void const *)newst);
    }
    return (err);
  } else {
  }
  (dev->teimgr)->peer = & newst->own;
  (dev->teimgr)->recv = & mISDN_queue_message;
  (dev->teimgr)->st = newst;
  newst->layer1 = & dev->D;
  dev->D.recv = & l1_receive;
  dev->D.peer = & newst->own;
  newst->own.st = newst;
  newst->own.ctrl = & st_own_ctrl;
  newst->own.send = & mISDN_queue_message;
  newst->own.recv = & mISDN_queue_message;
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp___0 = dev_name((struct device const *)(& (newst->dev)->dev));
    printk("<7>%s: st(%s)\n", "create_stack", tmp___0);
    }
  } else {
  }
  {
  newst->notify = & done;
  tmp___1 = dev_name((struct device const *)(& (newst->dev)->dev));
  tmp___2 = kthread_create_on_node(& mISDNStackd, (void *)newst, -1, "mISDN_%s", tmp___1);
  __k = tmp___2;
  tmp___3 = IS_ERR((void const *)__k);
  }
  if (tmp___3 == 0L) {
    {
    wake_up_process(__k);
    }
  } else {
  }
  {
  newst->thread = __k;
  tmp___6 = IS_ERR((void const *)newst->thread);
  }
  if (tmp___6 != 0L) {
    {
    tmp___4 = PTR_ERR((void const *)newst->thread);
    err = (int )tmp___4;
    tmp___5 = dev_name((struct device const *)(& (newst->dev)->dev));
    printk("<3>mISDN:cannot create kernel thread for %s (%d)\n", tmp___5, err);
    delete_teimanager(dev->teimgr);
    kfree((void const *)newst);
    }
  } else {
    {
    wait_for_completion(& done);
    }
  }
  return (err);
}
}
int connect_layer1(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                   struct sockaddr_mISDN *adr )
{ struct mISDN_sock *msk ;
  struct mISDNchannel const *__mptr ;
  struct channel_req rq ;
  int err ;
  char const *tmp ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  msk = (struct mISDN_sock *)__mptr + 0x0ffffffffffffb08UL;
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& dev->dev));
    printk("<7>%s: %s proto(%x) adr(%d %d %d %d)\n", "connect_layer1", tmp, protocol,
           (int )adr->dev, (int )adr->channel, (int )adr->sapi, (int )adr->tei);
    }
  } else {
  }
  if ((int )protocol == 2) {
    goto case_2;
  } else
  if ((int )protocol == 4) {
    goto case_4;
  } else
  if ((int )protocol == 1) {
    goto case_1;
  } else
  if ((int )protocol == 3) {
    goto case_3;
  } else {
    goto switch_default;
    if (0) {
      case_2: ;
      case_4: ;
      case_1: ;
      case_3:
      {
      ch->recv = & mISDN_queue_message;
      ch->peer = & (dev->D.st)->own;
      ch->st = dev->D.st;
      rq.protocol = protocol;
      rq.adr.channel = adr->channel;
      err = (*(dev->D.ctrl))(& dev->D, 256U, (void *)(& rq));
      printk("<7>%s: ret %d (dev %d)\n", "connect_layer1", err, dev->id);
      }
      if (err != 0) {
        return (err);
      } else {
      }
      {
      _raw_write_lock_bh(& (dev->D.st)->l1sock.lock);
      sk_add_node(& msk->sk, & (dev->D.st)->l1sock.head);
      _raw_write_unlock_bh(& (dev->D.st)->l1sock.lock);
      }
      goto ldv_38555;
      switch_default: ;
      return (-92);
    } else {
    }
  }
  ldv_38555: ;
  return (0);
}
}
int connect_Bstack(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                   struct sockaddr_mISDN *adr )
{ struct channel_req rq ;
  struct channel_req rq2 ;
  int pmask ;
  int err ;
  struct Bprotocol *bp ;
  char const *tmp ;
  {
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& dev->dev));
    printk("<7>%s: %s proto(%x) adr(%d %d %d %d)\n", "connect_Bstack", tmp, protocol,
           (int )adr->dev, (int )adr->channel, (int )adr->sapi, (int )adr->tei);
    }
  } else {
  }
  ch->st = dev->D.st;
  pmask = 1 << ((int )protocol & 31);
  if ((dev->Bprotocols & (u_int )pmask) != 0U) {
    {
    rq.protocol = protocol;
    rq.adr = *adr;
    err = (*(dev->D.ctrl))(& dev->D, 256U, (void *)(& rq));
    }
    if (err != 0) {
      return (err);
    } else {
    }
    ch->recv = (rq.ch)->send;
    ch->peer = rq.ch;
    (rq.ch)->recv = ch->send;
    (rq.ch)->peer = ch;
    (rq.ch)->st = dev->D.st;
  } else {
    {
    bp = get_Bprotocol4mask((u_int )pmask);
    }
    if ((unsigned long )bp == (unsigned long )((struct Bprotocol *)0)) {
      return (-92);
    } else {
    }
    {
    rq2.protocol = protocol;
    rq2.adr = *adr;
    rq2.ch = ch;
    err = (*(bp->create))(& rq2);
    }
    if (err != 0) {
      return (err);
    } else {
    }
    {
    ch->recv = (rq2.ch)->send;
    ch->peer = rq2.ch;
    (rq2.ch)->st = dev->D.st;
    rq.protocol = rq2.protocol;
    rq.adr = *adr;
    err = (*(dev->D.ctrl))(& dev->D, 256U, (void *)(& rq));
    }
    if (err != 0) {
      {
      (*((rq2.ch)->ctrl))(rq2.ch, 512U, (void *)0);
      }
      return (err);
    } else {
    }
    (rq2.ch)->recv = (rq.ch)->send;
    (rq2.ch)->peer = rq.ch;
    (rq.ch)->recv = (rq2.ch)->send;
    (rq.ch)->peer = rq2.ch;
    (rq.ch)->st = dev->D.st;
  }
  ch->protocol = protocol;
  ch->nr = (rq.ch)->nr;
  return (0);
}
}
int create_l2entity(struct mISDNdevice *dev , struct mISDNchannel *ch , u_int protocol ,
                    struct sockaddr_mISDN *adr )
{ struct channel_req rq ;
  int err ;
  char const *tmp ;
  {
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& dev->dev));
    printk("<7>%s: %s proto(%x) adr(%d %d %d %d)\n", "create_l2entity", tmp, protocol,
           (int )adr->dev, (int )adr->channel, (int )adr->sapi, (int )adr->tei);
    }
  } else {
  }
  rq.protocol = 1U;
  if ((dev->Dprotocols & 8U) != 0U) {
    rq.protocol = 3U;
  } else {
  }
  if ((int )protocol == 17) {
    goto case_17;
  } else
  if ((int )protocol == 16) {
    goto case_16;
  } else {
    goto switch_default;
    if (0) {
      case_17:
      rq.protocol = 2U;
      if ((dev->Dprotocols & 16U) != 0U) {
        rq.protocol = 4U;
      } else {
      }
      case_16:
      {
      ch->recv = & mISDN_queue_message;
      ch->peer = & (dev->D.st)->own;
      ch->st = dev->D.st;
      rq.adr.channel = (unsigned char)0;
      err = (*(dev->D.ctrl))(& dev->D, 256U, (void *)(& rq));
      printk("<7>%s: ret 1 %d\n", "create_l2entity", err);
      }
      if (err != 0) {
        goto ldv_38580;
      } else {
      }
      {
      rq.protocol = protocol;
      rq.adr = *adr;
      rq.ch = ch;
      err = (*((dev->teimgr)->ctrl))(dev->teimgr, 256U, (void *)(& rq));
      printk("<7>%s: ret 2 %d\n", "create_l2entity", err);
      }
      if (err == 0) {
        if (protocol == 17U) {
          if ((unsigned long )rq.ch == (unsigned long )((struct mISDNchannel *)0)) {
            goto ldv_38580;
          } else {
          }
        } else {
        }
        {
        add_layer2(rq.ch, dev->D.st);
        (rq.ch)->recv = & mISDN_queue_message;
        (rq.ch)->peer = & (dev->D.st)->own;
        (*((rq.ch)->ctrl))(rq.ch, 256U, (void *)0);
        }
      } else {
      }
      goto ldv_38580;
      switch_default:
      err = -93;
    } else {
    }
  }
  ldv_38580: ;
  return (err);
}
}
void delete_channel(struct mISDNchannel *ch )
{ struct mISDN_sock *msk ;
  struct mISDNchannel const *__mptr ;
  struct mISDNchannel *pch ;
  char const *tmp ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  msk = (struct mISDN_sock *)__mptr + 0x0ffffffffffffb08UL;
  if ((unsigned long )ch->st == (unsigned long )((struct mISDNstack *)0)) {
    {
    printk("<4>%s: no stack\n", "delete_channel");
    }
    return;
  } else {
  }
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& ((ch->st)->dev)->dev));
    printk("<7>%s: st(%s) protocol(%x)\n", "delete_channel", tmp, ch->protocol);
    }
  } else {
  }
  if (ch->protocol > 31U) {
    if ((unsigned long )ch->peer != (unsigned long )((struct mISDNchannel *)0)) {
      {
      (*((ch->peer)->ctrl))(ch->peer, 512U, (void *)0);
      ch->peer = (struct mISDNchannel *)0;
      }
    } else {
    }
    return;
  } else {
  }
  if ((int )ch->protocol == 2) {
    goto case_2;
  } else
  if ((int )ch->protocol == 1) {
    goto case_1;
  } else
  if ((int )ch->protocol == 4) {
    goto case_4;
  } else
  if ((int )ch->protocol == 3) {
    goto case_3;
  } else
  if ((int )ch->protocol == 16) {
    goto case_16;
  } else
  if ((int )ch->protocol == 17) {
    goto case_17;
  } else {
    goto switch_default;
    if (0) {
      case_2: ;
      case_1: ;
      case_4: ;
      case_3:
      {
      _raw_write_lock_bh(& (ch->st)->l1sock.lock);
      sk_del_node_init(& msk->sk);
      _raw_write_unlock_bh(& (ch->st)->l1sock.lock);
      (*(((ch->st)->dev)->D.ctrl))(& ((ch->st)->dev)->D, 512U, (void *)0);
      }
      goto ldv_38594;
      case_16:
      {
      pch = get_channel4id(ch->st, ch->nr);
      }
      if ((unsigned long )pch != (unsigned long )((struct mISDNchannel *)0)) {
        {
        mutex_lock_nested(& (ch->st)->lmutex, 0U);
        list_del(& pch->list);
        mutex_unlock(& (ch->st)->lmutex);
        (*(pch->ctrl))(pch, 512U, (void *)0);
        pch = ((ch->st)->dev)->teimgr;
        (*(pch->ctrl))(pch, 512U, (void *)0);
        }
      } else {
        {
        printk("<4>%s: no l2 channel\n", "delete_channel");
        }
      }
      goto ldv_38594;
      case_17:
      pch = ((ch->st)->dev)->teimgr;
      if ((unsigned long )pch != (unsigned long )((struct mISDNchannel *)0)) {
        {
        (*(pch->ctrl))(pch, 512U, (void *)0);
        }
      } else {
        {
        printk("<4>%s: no l2 channel\n", "delete_channel");
        }
      }
      goto ldv_38594;
      switch_default: ;
      goto ldv_38594;
    } else {
    }
  }
  ldv_38594: ;
  return;
}
}
void delete_stack(struct mISDNdevice *dev )
{ struct mISDNstack *st ;
  struct completion done ;
  char const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  st = dev->D.st;
  init_completion(& done);
  done = done;
  }
  if ((*debug___2 & 2U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& (st->dev)->dev));
    printk("<7>%s: st(%s)\n", "delete_stack", tmp);
    }
  } else {
  }
  if ((unsigned long )dev->teimgr != (unsigned long )((struct mISDNchannel *)0)) {
    {
    delete_teimanager(dev->teimgr);
    }
  } else {
  }
  if ((unsigned long )st->thread != (unsigned long )((struct task_struct *)0)) {
    if ((unsigned long )st->notify != (unsigned long )((struct completion *)0)) {
      {
      printk("<4>%s: notifier in use\n", "delete_stack");
      complete(st->notify);
      }
    } else {
    }
    {
    st->notify = & done;
    test_and_set_bit(15, (unsigned long volatile *)(& st->status));
    test_and_set_bit(4, (unsigned long volatile *)(& st->status));
    __wake_up(& st->workq, 1U, 1, (void *)0);
    wait_for_completion(& done);
    }
  } else {
  }
  {
  tmp___0 = list_empty((struct list_head const *)(& st->layer2));
  }
  if (tmp___0 == 0) {
    {
    printk("<4>%s: layer2 list not empty\n", "delete_stack");
    }
  } else {
  }
  {
  tmp___1 = hlist_empty((struct hlist_head const *)(& st->l1sock.head));
  }
  if (tmp___1 == 0) {
    {
    printk("<4>%s: layer1 list not empty\n", "delete_stack");
    }
  } else {
  }
  {
  kfree((void const *)st);
  }
  return;
}
}
void mISDN_initstack(u_int *dp )
{
  {
  debug___2 = dp;
  return;
}
}
__inline static void ldv___module_get_2(struct module *module ) ;
void ldv_module_put_1(struct module *ldv_func_arg1 ) ;
int create_l1(struct dchannel *dch , dchannel_l1callback *dcb ) ;
int l1_event(struct layer1 *l1 , u_int event ) ;
static u_int *debug___3 ;
static struct Fsm l1fsm_s = {(FSMFNPTR (**)(struct FsmInst * , int , void * ))0, 0, 0, (char **)0, (char **)0};
static char *strL1SState[7U] = { (char *)"ST_L1_F2", (char *)"ST_L1_F3", (char *)"ST_L1_F4", (char *)"ST_L1_F5",
        (char *)"ST_L1_F6", (char *)"ST_L1_F7", (char *)"ST_L1_F8"};
static char *strL1Event[12U] =
  { (char *)"EV_PH_ACTIVATE", (char *)"EV_PH_DEACTIVATE", (char *)"EV_RESET_IND", (char *)"EV_DEACT_CNF",
        (char *)"EV_DEACT_IND", (char *)"EV_POWER_UP", (char *)"EV_ANYSIG_IND", (char *)"EV_INFO2_IND",
        (char *)"EV_INFO4_IND", (char *)"EV_TIMER_DEACT", (char *)"EV_TIMER_ACT", (char *)"EV_TIMER3"};
static void l1m_debug(struct FsmInst *fi , char *fmt , ...)
{ struct layer1 *l1 ;
  struct va_format vaf ;
  va_list va ;
  char const *tmp ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  __builtin_va_start(((& va)), fmt);
  vaf.fmt = (char const *)fmt;
  vaf.va = & va;
  tmp = dev_name((struct device const *)(& (l1->dch)->dev.dev));
  printk("<7>%s: %pV\n", tmp, & vaf);
  __builtin_va_end(((& va)));
  }
  return;
}
}
static void l1_reset(struct FsmInst *fi , int event , void *arg )
{
  {
  {
  mISDN_FsmChangeState(fi, 1);
  }
  return;
}
}
static void l1_deact_cnf(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  mISDN_FsmChangeState(fi, 1);
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l1->Flags));
  }
  if (tmp != 0) {
    {
    (*(l1->dcb))(l1->dch, 35586U);
    }
  } else {
  }
  return;
}
}
static void l1_deact_req_s(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  mISDN_FsmChangeState(fi, 1);
  mISDN_FsmRestartTimer(& l1->timer, 550, 9, (void *)0, 2);
  test_and_set_bit(3, (unsigned long volatile *)(& l1->Flags));
  }
  return;
}
}
static void l1_power_up_s(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l1->Flags));
  }
  if (tmp != 0) {
    {
    mISDN_FsmChangeState(fi, 2);
    (*(l1->dcb))(l1->dch, 33538U);
    }
  } else {
    {
    mISDN_FsmChangeState(fi, 1);
    }
  }
  return;
}
}
static void l1_go_F5(struct FsmInst *fi , int event , void *arg )
{
  {
  {
  mISDN_FsmChangeState(fi, 3);
  }
  return;
}
}
static void l1_go_F8(struct FsmInst *fi , int event , void *arg )
{
  {
  {
  mISDN_FsmChangeState(fi, 6);
  }
  return;
}
}
static void l1_info2_ind(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  mISDN_FsmChangeState(fi, 4);
  (*(l1->dcb))(l1->dch, 33538U);
  }
  return;
}
}
static void l1_info4_ind(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  mISDN_FsmChangeState(fi, 5);
  (*(l1->dcb))(l1->dch, 33538U);
  tmp = test_and_clear_bit(3, (unsigned long volatile *)(& l1->Flags));
  }
  if (tmp != 0) {
    {
    mISDN_FsmDelTimer(& l1->timer, 4);
    }
  } else {
  }
  {
  tmp___1 = constant_test_bit(2U, (unsigned long const volatile *)(& l1->Flags));
  }
  if (tmp___1 == 0) {
    {
    tmp___0 = test_and_clear_bit(5, (unsigned long volatile *)(& l1->Flags));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmDelTimer(& l1->timer, 3);
      }
    } else {
    }
    {
    mISDN_FsmRestartTimer(& l1->timer, 110, 10, (void *)0, 2);
    test_and_set_bit(4, (unsigned long volatile *)(& l1->Flags));
    }
  } else {
  }
  return;
}
}
static void l1_timer3(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  int tmp___0 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  test_and_clear_bit(5, (unsigned long volatile *)(& l1->Flags));
  tmp___0 = test_and_clear_bit(1, (unsigned long volatile *)(& l1->Flags));
  }
  if (tmp___0 != 0) {
    {
    tmp = test_and_clear_bit(8, (unsigned long volatile *)(& l1->Flags));
    }
    if (tmp != 0) {
      {
      (*(l1->dcb))(l1->dch, 36610U);
      }
    } else {
    }
    {
    (*(l1->dcb))(l1->dch, 514U);
    }
  } else {
  }
  if (l1->l1m.state != 4) {
    {
    mISDN_FsmChangeState(fi, 1);
    (*(l1->dcb))(l1->dch, 35586U);
    }
  } else {
  }
  return;
}
}
static void l1_timer_act(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  test_and_clear_bit(4, (unsigned long volatile *)(& l1->Flags));
  test_and_set_bit(2, (unsigned long volatile *)(& l1->Flags));
  (*(l1->dcb))(l1->dch, 258U);
  }
  return;
}
}
static void l1_timer_deact(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  test_and_clear_bit(3, (unsigned long volatile *)(& l1->Flags));
  test_and_clear_bit(2, (unsigned long volatile *)(& l1->Flags));
  tmp = test_and_clear_bit(8, (unsigned long volatile *)(& l1->Flags));
  }
  if (tmp != 0) {
    {
    (*(l1->dcb))(l1->dch, 36610U);
    }
  } else {
  }
  {
  (*(l1->dcb))(l1->dch, 514U);
  (*(l1->dcb))(l1->dch, 35842U);
  }
  return;
}
}
static void l1_activate_s(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  mISDN_FsmRestartTimer(& l1->timer, 7000, 11, (void *)0, 2);
  test_and_set_bit(5, (unsigned long volatile *)(& l1->Flags));
  (*(l1->dcb))(l1->dch, 35330U);
  }
  return;
}
}
static void l1_activate_no(struct FsmInst *fi , int event , void *arg )
{ struct layer1 *l1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  l1 = (struct layer1 *)fi->userdata;
  tmp___0 = constant_test_bit(3U, (unsigned long const volatile *)(& l1->Flags));
  }
  if (tmp___0 == 0) {
    {
    tmp___1 = constant_test_bit(5U, (unsigned long const volatile *)(& l1->Flags));
    }
    if (tmp___1 == 0) {
      {
      test_and_clear_bit(1, (unsigned long volatile *)(& l1->Flags));
      tmp = test_and_clear_bit(8, (unsigned long volatile *)(& l1->Flags));
      }
      if (tmp != 0) {
        {
        (*(l1->dcb))(l1->dch, 36610U);
        }
      } else {
      }
      {
      (*(l1->dcb))(l1->dch, 514U);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static struct FsmNode L1SFnList[44U] =
  { {1, 0, & l1_activate_s},
        {4, 0, & l1_activate_no},
        {6, 0, & l1_activate_no},
        {1, 2, & l1_reset},
        {2, 2, & l1_reset},
        {3, 2, & l1_reset},
        {4, 2, & l1_reset},
        {5, 2, & l1_reset},
        {6, 2, & l1_reset},
        {1, 3, & l1_deact_cnf},
        {2, 3, & l1_deact_cnf},
        {3, 3, & l1_deact_cnf},
        {4, 3, & l1_deact_cnf},
        {5, 3, & l1_deact_cnf},
        {6, 3, & l1_deact_cnf},
        {4, 4, & l1_deact_req_s},
        {5, 4, & l1_deact_req_s},
        {6, 4, & l1_deact_req_s},
        {1, 5, & l1_power_up_s},
        {2, 6, & l1_go_F5},
        {4, 6, & l1_go_F8},
        {5, 6, & l1_go_F8},
        {1, 7, & l1_info2_ind},
        {2, 7, & l1_info2_ind},
        {3, 7, & l1_info2_ind},
        {5, 7, & l1_info2_ind},
        {6, 7, & l1_info2_ind},
        {1, 8, & l1_info4_ind},
        {2, 8, & l1_info4_ind},
        {3, 8, & l1_info4_ind},
        {4, 8, & l1_info4_ind},
        {6, 8, & l1_info4_ind},
        {1, 11, & l1_timer3},
        {2, 11, & l1_timer3},
        {3, 11, & l1_timer3},
        {4, 11, & l1_timer3},
        {6, 11, & l1_timer3},
        {5, 10, & l1_timer_act},
        {1, 9, & l1_timer_deact},
        {2, 9, & l1_timer_deact},
        {3, 9, & l1_timer_deact},
        {4, 9, & l1_timer_deact},
        {5, 9, & l1_timer_deact},
        {6, 9, & l1_timer_deact}};
static void release_l1(struct layer1 *l1 )
{
  {
  {
  mISDN_FsmDelTimer(& l1->timer, 0);
  }
  if ((unsigned long )l1->dch != (unsigned long )((struct dchannel *)0)) {
    (l1->dch)->l1 = (void *)0;
  } else {
  }
  {
  ldv_module_put_1(& __this_module);
  kfree((void const *)l1);
  }
  return;
}
}
int l1_event(struct layer1 *l1 , u_int event )
{ int err ;
  int tmp ;
  {
  err = 0;
  if ((unsigned long )l1 == (unsigned long )((struct layer1 *)0)) {
    return (-22);
  } else {
  }
  if ((int )event == 36866) {
    goto case_36866;
  } else
  if ((int )event == 37378) {
    goto case_37378;
  } else
  if ((int )event == 37122) {
    goto case_37122;
  } else
  if ((int )event == 37890) {
    goto case_37890;
  } else
  if ((int )event == 34818) {
    goto case_34818;
  } else
  if ((int )event == 34562) {
    goto case_34562;
  } else
  if ((int )event == 33282) {
    goto case_33282;
  } else
  if ((int )event == 34050) {
    goto case_34050;
  } else
  if ((int )event == 34306) {
    goto case_34306;
  } else
  if ((int )event == 257) {
    goto case_257;
  } else
  if ((int )event == 512) {
    goto case_512;
  } else {
    goto switch_default;
    if (0) {
      case_36866:
      {
      mISDN_FsmEvent(& l1->l1m, 2, (void *)0);
      }
      goto ldv_38653;
      case_37378:
      {
      mISDN_FsmEvent(& l1->l1m, 4, (void *)0);
      }
      goto ldv_38653;
      case_37122:
      {
      mISDN_FsmEvent(& l1->l1m, 5, (void *)0);
      }
      goto ldv_38653;
      case_37890:
      {
      mISDN_FsmEvent(& l1->l1m, 3, (void *)0);
      }
      goto ldv_38653;
      case_34818:
      {
      mISDN_FsmEvent(& l1->l1m, 6, (void *)0);
      }
      goto ldv_38653;
      case_34562:
      {
      mISDN_FsmEvent(& l1->l1m, 6, (void *)0);
      }
      goto ldv_38653;
      case_33282:
      {
      mISDN_FsmEvent(& l1->l1m, 7, (void *)0);
      }
      goto ldv_38653;
      case_34050:
      {
      mISDN_FsmEvent(& l1->l1m, 8, (void *)0);
      }
      goto ldv_38653;
      case_34306:
      {
      mISDN_FsmEvent(& l1->l1m, 8, (void *)0);
      }
      goto ldv_38653;
      case_257:
      {
      tmp = constant_test_bit(2U, (unsigned long const volatile *)(& l1->Flags));
      }
      if (tmp != 0) {
        {
        (*(l1->dcb))(l1->dch, 258U);
        }
      } else {
        {
        test_and_set_bit(1, (unsigned long volatile *)(& l1->Flags));
        mISDN_FsmEvent(& l1->l1m, 0, (void *)0);
        }
      }
      goto ldv_38653;
      case_512:
      {
      release_l1(l1);
      }
      goto ldv_38653;
      switch_default: ;
      if ((*debug___3 & 65280U) != 0U) {
        {
        printk("<7>%s %x unhandled\n", "l1_event", event);
        }
      } else {
      }
      err = -22;
    } else {
    }
  }
  ldv_38653: ;
  return (err);
}
}
int create_l1(struct dchannel *dch , dchannel_l1callback *dcb )
{ struct layer1 *nl1 ;
  void *tmp ;
  {
  {
  tmp = kzalloc(224UL, 32U);
  nl1 = (struct layer1 *)tmp;
  }
  if ((unsigned long )nl1 == (unsigned long )((struct layer1 *)0)) {
    {
    printk("<3>kmalloc struct layer1 failed\n");
    }
    return (-12);
  } else {
  }
  {
  nl1->l1m.fsm = & l1fsm_s;
  nl1->l1m.state = 1;
  nl1->Flags = 0UL;
  nl1->l1m.debug = (int )*debug___3 & 512;
  nl1->l1m.userdata = (void *)nl1;
  nl1->l1m.userint = 0;
  nl1->l1m.printdebug = & l1m_debug;
  nl1->dch = dch;
  nl1->dcb = dcb;
  mISDN_FsmInitTimer(& nl1->l1m, & nl1->timer);
  ldv___module_get_2(& __this_module);
  dch->l1 = (void *)nl1;
  }
  return (0);
}
}
int l1_init(u_int *deb )
{
  {
  {
  debug___3 = deb;
  l1fsm_s.state_count = 7;
  l1fsm_s.event_count = 12;
  l1fsm_s.strEvent = (char **)(& strL1Event);
  l1fsm_s.strState = (char **)(& strL1SState);
  mISDN_FsmNew(& l1fsm_s, (struct FsmNode *)(& L1SFnList), 44);
  }
  return (0);
}
}
void l1_cleanup(void)
{
  {
  {
  mISDN_FsmFree(& l1fsm_s);
  }
  return;
}
}
void ldv_module_put_1(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_module_put(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv___module_get_2(struct module *module )
{
  {
  {
  ldv_module_get(module);
  }
  return;
}
}
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
__inline static __u32 skb_queue_len(struct sk_buff_head const *list_ )
{
  {
  return ((__u32 )list_->qlen);
}
}
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
struct layer2 *create_l2(struct mISDNchannel *ch , u_int protocol , u_long options ,
                         int tei , int sapi ) ;
int tei_l2(struct layer2 *l2 , u_int cmd , u_long arg ) ;
int l2_tei(struct layer2 *l2 , u_int cmd , u_long arg ) ;
void TEIrelease(struct layer2 *l2 ) ;
int TEIInit(u_int *deb ) ;
void TEIFree(void) ;
static u_int *debug___4 ;
static struct Fsm l2fsm = {(FSMFNPTR (**)(struct FsmInst * , int , void * ))0, 0, 0, (char **)0, (char **)0};
static char *strL2State[8U] =
  { (char *)"ST_L2_1", (char *)"ST_L2_2", (char *)"ST_L2_3", (char *)"ST_L2_4",
        (char *)"ST_L2_5", (char *)"ST_L2_6", (char *)"ST_L2_7", (char *)"ST_L2_8"};
static char *strL2Event[22U] =
  { (char *)"EV_L2_UI", (char *)"EV_L2_SABME", (char *)"EV_L2_DISC", (char *)"EV_L2_DM",
        (char *)"EV_L2_UA", (char *)"EV_L2_FRMR", (char *)"EV_L2_SUPER", (char *)"EV_L2_I",
        (char *)"EV_L2_DL_DATA", (char *)"EV_L2_ACK_PULL", (char *)"EV_L2_DL_UNITDATA", (char *)"EV_L2_DL_ESTABLISH_REQ",
        (char *)"EV_L2_DL_RELEASE_REQ", (char *)"EV_L2_MDL_ASSIGN", (char *)"EV_L2_MDL_REMOVE", (char *)"EV_L2_MDL_ERROR",
        (char *)"EV_L1_DEACTIVATE", (char *)"EV_L2_T200", (char *)"EV_L2_T203", (char *)"EV_L2_SET_OWN_BUSY",
        (char *)"EV_L2_CLEAR_OWN_BUSY", (char *)"EV_L2_FRAME_ERROR"};
static void l2m_debug(struct FsmInst *fi , char *fmt , ...)
{ struct layer2 *l2 ;
  struct va_format vaf ;
  va_list va ;
  {
  l2 = (struct layer2 *)fi->userdata;
  if ((*debug___4 & 131072U) == 0U) {
    return;
  } else {
  }
  {
  __builtin_va_start(((& va)), fmt);
  vaf.fmt = (char const *)fmt;
  vaf.va = & va;
  printk("<7>l2 (sapi %d tei %d): %pV\n", (int )l2->sapi, (int )l2->tei, & vaf);
  __builtin_va_end(((& va)));
  }
  return;
}
}
__inline u_int l2headersize(struct layer2 *l2 , int ui )
{ int tmp___0 ;
  int tmp___1 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    if (ui == 0) {
      tmp___0 = 2;
    } else {
      tmp___0 = 1;
    }
  } else {
    tmp___0 = 1;
  }
  {
  tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___4 != 0) {
    tmp___3 = 2;
  } else {
    tmp___3 = 1;
  }
  return ((u_int )(tmp___0 + tmp___3));
}
}
__inline u_int l2addrsize(struct layer2 *l2 )
{ unsigned int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    tmp___0 = 2U;
  } else {
    tmp___0 = 1U;
  }
  return (tmp___0);
}
}
static u_int l2_newid(struct layer2 *l2 )
{ u_int id ;
  u_int tmp ;
  {
  tmp = l2->next_id;
  l2->next_id = l2->next_id + 1U;
  id = tmp;
  if (id == 32767U) {
    l2->next_id = 1U;
  } else {
  }
  id = id << 16;
  id = (u_int )((int )l2->tei << 8) | id;
  id = (u_int )l2->sapi | id;
  return (id);
}
}
static void l2up(struct layer2 *l2 , u_int prim , struct sk_buff *skb )
{ int err ;
  {
  if ((unsigned long )l2->up == (unsigned long )((struct mISDNchannel *)0)) {
    return;
  } else {
  }
  {
  ((struct mISDNhead *)(& skb->cb))->prim = prim;
  ((struct mISDNhead *)(& skb->cb))->id = (l2->ch.nr << 16) | l2->ch.addr;
  err = (*((l2->up)->send))(l2->up, skb);
  }
  if (err != 0) {
    {
    printk("<4>%s: err=%d\n", "l2up", err);
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static void l2up_create(struct layer2 *l2 , u_int prim , int len , void *arg )
{ struct sk_buff *skb ;
  struct mISDNhead *hh ;
  int err ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___0 ;
  {
  if ((unsigned long )l2->up == (unsigned long )((struct mISDNchannel *)0)) {
    return;
  } else {
  }
  {
  skb = mI_alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = (l2->ch.nr << 16) | l2->ch.addr;
  if (len != 0) {
    {
    __len = (size_t )len;
    tmp___0 = skb_put(skb, (unsigned int )len);
    __ret = memcpy((void *)tmp___0, (void const *)arg, __len);
    }
  } else {
  }
  {
  err = (*((l2->up)->send))(l2->up, skb);
  }
  if (err != 0) {
    {
    printk("<4>%s: err=%d\n", "l2up_create", err);
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static int l2down_skb(struct layer2 *l2 , struct sk_buff *skb )
{ int ret ;
  {
  {
  ret = (*(l2->ch.recv))(l2->ch.peer, skb);
  }
  if (ret != 0) {
    if ((*debug___4 & 524288U) != 0U) {
      {
      printk("<7>l2down_skb: ret(%d)\n", ret);
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int l2down_raw(struct layer2 *l2 , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  int tmp ;
  int tmp___0 ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  if (hh->prim == 8193U) {
    {
    tmp = test_and_set_bit(17, (unsigned long volatile *)(& l2->flag));
    }
    if (tmp != 0) {
      {
      skb_queue_tail(& l2->down_queue, skb);
      }
      return (0);
    } else {
    }
    l2->down_id = ((struct mISDNhead *)(& skb->cb))->id;
  } else {
  }
  {
  tmp___0 = l2down_skb(l2, skb);
  }
  return (tmp___0);
}
}
static int l2down(struct layer2 *l2 , u_int prim , u_int id , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  int tmp ;
  {
  {
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = id;
  tmp = l2down_raw(l2, skb);
  }
  return (tmp);
}
}
static int l2down_create(struct layer2 *l2 , u_int prim , u_int id , int len , void *arg )
{ struct sk_buff *skb ;
  int err ;
  struct mISDNhead *hh ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___0 ;
  {
  {
  skb = mI_alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = id;
  if (len != 0) {
    {
    __len = (size_t )len;
    tmp___0 = skb_put(skb, (unsigned int )len);
    __ret = memcpy((void *)tmp___0, (void const *)arg, __len);
    }
  } else {
  }
  {
  err = l2down_raw(l2, skb);
  }
  if (err != 0) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return (err);
}
}
static int ph_data_confirm(struct layer2 *l2 , struct mISDNhead *hh , struct sk_buff *skb )
{ struct sk_buff *nskb ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  nskb = skb;
  ret = -11;
  tmp___0 = constant_test_bit(17U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    if (hh->id == l2->down_id) {
      {
      nskb = skb_dequeue(& l2->down_queue);
      }
      if ((unsigned long )nskb != (unsigned long )((struct sk_buff *)0)) {
        {
        l2->down_id = ((struct mISDNhead *)(& nskb->cb))->id;
        tmp = l2down_skb(l2, nskb);
        }
        if (tmp != 0) {
          {
          consume_skb(nskb);
          l2->down_id = 65534U;
          }
        } else {
        }
      } else {
        l2->down_id = 65534U;
      }
      if (ret != 0) {
        {
        consume_skb(skb);
        ret = 0;
        }
      } else {
      }
      if (l2->down_id == 65534U) {
        {
        test_and_clear_bit(17, (unsigned long volatile *)(& l2->flag));
        mISDN_FsmEvent(& l2->l2m, 9, (void *)0);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  tmp___2 = test_and_set_bit(17, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp___2 == 0) {
    {
    nskb = skb_dequeue(& l2->down_queue);
    }
    if ((unsigned long )nskb != (unsigned long )((struct sk_buff *)0)) {
      {
      l2->down_id = ((struct mISDNhead *)(& nskb->cb))->id;
      tmp___1 = l2down_skb(l2, nskb);
      }
      if (tmp___1 != 0) {
        {
        consume_skb(nskb);
        l2->down_id = 65534U;
        test_and_clear_bit(17, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
    } else {
      {
      test_and_clear_bit(17, (unsigned long volatile *)(& l2->flag));
      }
    }
  } else {
  }
  return (ret);
}
}
static int l2mgr(struct layer2 *l2 , u_int prim , void *arg )
{ long c ;
  int tmp ;
  int tmp___0 ;
  {
  {
  c = (long )arg;
  printk("<4>l2mgr: addr:%x prim %x %c\n", l2->id, prim, (int )((char )c));
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    tmp___0 = constant_test_bit(15U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 == 0) {
      if ((int )c == 67) {
        goto case_67;
      } else
      if ((int )c == 68) {
        goto case_68;
      } else
      if ((int )c == 71) {
        goto case_71;
      } else
      if ((int )c == 72) {
        goto case_72;
      } else
      if (0) {
        case_67: ;
        case_68: ;
        case_71: ;
        case_72:
        {
        l2_tei(l2, prim, (unsigned long )arg);
        }
        goto ldv_38621;
      } else {
      }
      ldv_38621: ;
    } else {
    }
  } else {
  }
  return (0);
}
}
static void set_peer_busy(struct layer2 *l2 )
{ __u32 tmp ;
  __u32 tmp___0 ;
  {
  {
  test_and_set_bit(10, (unsigned long volatile *)(& l2->flag));
  tmp = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
  }
  if (tmp != 0U) {
    {
    test_and_set_bit(16, (unsigned long volatile *)(& l2->flag));
    }
  } else {
    {
    tmp___0 = skb_queue_len((struct sk_buff_head const *)(& l2->ui_queue));
    }
    if (tmp___0 != 0U) {
      {
      test_and_set_bit(16, (unsigned long volatile *)(& l2->flag));
      }
    } else {
    }
  }
  return;
}
}
static void clear_peer_busy(struct layer2 *l2 )
{ int tmp ;
  {
  {
  tmp = test_and_clear_bit(10, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    test_and_clear_bit(16, (unsigned long volatile *)(& l2->flag));
    }
  } else {
  }
  return;
}
}
static void InitWin(struct layer2 *l2 )
{ int i ;
  {
  i = 0;
  goto ldv_38633;
  ldv_38632:
  l2->windowar[i] = (struct sk_buff *)0;
  i = i + 1;
  ldv_38633: ;
  if (i <= 7) {
    goto ldv_38632;
  } else {
    goto ldv_38634;
  }
  ldv_38634: ;
  return;
}
}
static int freewin(struct layer2 *l2 )
{ int i ;
  int cnt ;
  {
  cnt = 0;
  i = 0;
  goto ldv_38641;
  ldv_38640: ;
  if ((unsigned long )l2->windowar[i] != (unsigned long )((struct sk_buff *)0)) {
    {
    cnt = cnt + 1;
    consume_skb(l2->windowar[i]);
    l2->windowar[i] = (struct sk_buff *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_38641: ;
  if (i <= 7) {
    goto ldv_38640;
  } else {
    goto ldv_38642;
  }
  ldv_38642: ;
  return (cnt);
}
}
static void ReleaseWin(struct layer2 *l2 )
{ int cnt ;
  int tmp ;
  {
  {
  tmp = freewin(l2);
  cnt = tmp;
  }
  if (cnt != 0) {
    {
    printk("<4>isdnl2 freed %d skbuffs in release\n", cnt);
    }
  } else {
  }
  return;
}
}
__inline unsigned int cansend(struct layer2 *l2 )
{ unsigned int p1 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    p1 = (l2->vs - l2->va) & 127U;
  } else {
    p1 = (l2->vs - l2->va) & 7U;
  }
  if (l2->window > p1) {
    {
    tmp___0 = constant_test_bit(10U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 == 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return ((unsigned int )tmp___1);
}
}
__inline void clear_exception(struct layer2 *l2 )
{
  {
  {
  test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
  test_and_clear_bit(8, (unsigned long volatile *)(& l2->flag));
  test_and_clear_bit(9, (unsigned long volatile *)(& l2->flag));
  clear_peer_busy(l2);
  }
  return;
}
}
static int sethdraddr(struct layer2 *l2 , u_char *header , int rsp )
{ u_char *ptr ;
  int crbit ;
  int tmp ;
  u_char *tmp___0 ;
  int tmp___1 ;
  u_char *tmp___2 ;
  int tmp___3 ;
  u_char *tmp___4 ;
  u_char *tmp___5 ;
  int tmp___6 ;
  {
  {
  ptr = header;
  crbit = rsp;
  tmp___6 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___6 != 0) {
    {
    tmp = constant_test_bit(18U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp != 0) {
      crbit = crbit == 0;
    } else {
    }
    tmp___0 = ptr;
    ptr = ptr + 1;
    if (crbit != 0) {
      tmp___1 = 2;
    } else {
      tmp___1 = 0;
    }
    *tmp___0 = (u_char )((int )((signed char )((int )l2->sapi << 2)) | tmp___1);
    tmp___2 = ptr;
    ptr = ptr + 1;
    *tmp___2 = (u_char )((int )((signed char )((int )l2->tei << 1)) | 1);
    return (2);
  } else {
    {
    tmp___3 = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___3 != 0) {
      crbit = crbit == 0;
    } else {
    }
    if (crbit != 0) {
      tmp___4 = ptr;
      ptr = ptr + 1;
      *tmp___4 = l2->addr.B;
    } else {
      tmp___5 = ptr;
      ptr = ptr + 1;
      *tmp___5 = l2->addr.A;
    }
    return (1);
  }
}
}
__inline static void enqueue_super(struct layer2 *l2 , struct sk_buff *skb )
{ u_int tmp ;
  int tmp___0 ;
  {
  {
  tmp = l2_newid(l2);
  tmp___0 = l2down(l2, 8193U, tmp, skb);
  }
  if (tmp___0 != 0) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
__inline static void enqueue_ui(struct layer2 *l2 , struct sk_buff *skb )
{ u_int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7684U, 0UL);
    }
  } else {
  }
  {
  tmp = l2_newid(l2);
  tmp___0 = l2down(l2, 8193U, tmp, skb);
  }
  if (tmp___0 != 0) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
__inline int IsUI(u_char *data )
{
  {
  return (((int )*data & 239) == 3);
}
}
__inline int IsUA(u_char *data )
{
  {
  return (((int )*data & 239) == 99);
}
}
__inline int IsDM(u_char *data )
{
  {
  return (((int )*data & 239) == 15);
}
}
__inline int IsDISC(u_char *data )
{
  {
  return (((int )*data & 239) == 67);
}
}
__inline int IsRR(u_char *data , struct layer2 *l2 )
{ int tmp ;
  {
  {
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    return ((unsigned int )*data == 1U);
  } else {
    return (((int )*data & 15) == 1);
  }
}
}
__inline int IsSFrame(u_char *data , struct layer2 *l2 )
{ register u_char d ;
  int tmp ;
  int tmp___0 ;
  {
  {
  d = *data;
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp == 0) {
    d = (u_char )((unsigned int )d & 15U);
  } else {
  }
  if (((int )d & 243) == 1) {
    if (((int )d & 12) != 12) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
__inline int IsSABME(u_char *data , struct layer2 *l2 )
{ u_char d ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  d = (u_char )((unsigned int )*data & 239U);
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    tmp___0 = (unsigned int )d == 111U;
  } else {
    tmp___0 = (unsigned int )d == 47U;
  }
  return (tmp___0);
}
}
__inline int IsREJ(u_char *data , struct layer2 *l2 )
{ int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    tmp___0 = (unsigned int )*data == 9U;
  } else {
    tmp___0 = ((int )*data & 15) == 9;
  }
  return (tmp___0);
}
}
__inline int IsFRMR(u_char *data )
{
  {
  return (((int )*data & 239) == 135);
}
}
__inline int IsRNR(u_char *data , struct layer2 *l2 )
{ int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    tmp___0 = (unsigned int )*data == 5U;
  } else {
    tmp___0 = ((int )*data & 15) == 5;
  }
  return (tmp___0);
}
}
static int iframe_error(struct layer2 *l2 , struct sk_buff *skb )
{ u_int i ;
  int rsp ;
  u_int tmp ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  {
  rsp = (int )*(skb->data) & 2;
  tmp = l2addrsize(l2);
  tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___2 != 0) {
    tmp___1 = 2U;
  } else {
    tmp___1 = 1U;
  }
  {
  i = tmp + tmp___1;
  tmp___3 = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___3 != 0) {
    rsp = rsp == 0;
  } else {
  }
  if (rsp != 0) {
    return (76);
  } else {
  }
  if (skb->len < i) {
    return (78);
  } else {
  }
  if (skb->len - i > l2->maxlen) {
    return (79);
  } else {
  }
  return (0);
}
}
static int super_error(struct layer2 *l2 , struct sk_buff *skb )
{ u_int tmp ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = l2addrsize(l2);
  tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___2 != 0) {
    tmp___1 = 2U;
  } else {
    tmp___1 = 1U;
  }
  if (skb->len != tmp + tmp___1) {
    return (78);
  } else {
  }
  return (0);
}
}
static int unnum_error(struct layer2 *l2 , struct sk_buff *skb , int wantrsp )
{ int rsp ;
  int tmp ;
  u_int tmp___0 ;
  {
  {
  rsp = ((int )*(skb->data) & 2) >> 1;
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    rsp = rsp == 0;
  } else {
  }
  if (rsp != wantrsp) {
    return (76);
  } else {
  }
  {
  tmp___0 = l2addrsize(l2);
  }
  if (skb->len != tmp___0 + 1U) {
    return (78);
  } else {
  }
  return (0);
}
}
static int UI_error(struct layer2 *l2 , struct sk_buff *skb )
{ int rsp ;
  int tmp ;
  u_int tmp___0 ;
  {
  {
  rsp = (int )*(skb->data) & 2;
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    rsp = rsp == 0;
  } else {
  }
  if (rsp != 0) {
    return (76);
  } else {
  }
  {
  tmp___0 = l2addrsize(l2);
  }
  if (skb->len > (l2->maxlen + tmp___0) + 1U) {
    return (79);
  } else {
  }
  return (0);
}
}
static int FRMR_error(struct layer2 *l2 , struct sk_buff *skb )
{ u_int headers ;
  u_int tmp ;
  u_char *datap ;
  int rsp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = l2addrsize(l2);
  headers = tmp + 1U;
  datap = skb->data + (unsigned long )headers;
  rsp = (int )*(skb->data) & 2;
  tmp___0 = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    rsp = rsp == 0;
  } else {
  }
  if (rsp == 0) {
    return (76);
  } else {
  }
  {
  tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    if (skb->len < headers + 5U) {
      return (78);
    } else
    if ((*debug___4 & 16711680U) != 0U) {
      {
      l2m_debug(& l2->l2m, (char *)"FRMR information %2x %2x %2x %2x %2x", (int )*datap,
                (int )*(datap + 1UL), (int )*(datap + 2UL), (int )*(datap + 3UL),
                (int )*(datap + 4UL));
      }
    } else
    if (skb->len < headers + 3U) {
      return (78);
    } else
    if ((*debug___4 & 16711680U) != 0U) {
      {
      l2m_debug(& l2->l2m, (char *)"FRMR information %2x %2x %2x", (int )*datap, (int )*(datap + 1UL),
                (int )*(datap + 2UL));
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned int legalnr(struct layer2 *l2 , unsigned int nr )
{ int tmp ;
  {
  {
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    return ((unsigned int )(((nr - l2->va) & 127U) <= ((l2->vs - l2->va) & 127U)));
  } else {
    return ((unsigned int )(((nr - l2->va) & 7U) <= ((l2->vs - l2->va) & 7U)));
  }
}
}
static void setva(struct layer2 *l2 , unsigned int nr )
{ struct sk_buff *skb ;
  int tmp ;
  {
  goto ldv_38744;
  ldv_38743:
  {
  l2->va = l2->va + 1U;
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    l2->va = l2->va & 127U;
  } else {
    l2->va = l2->va & 7U;
  }
  if ((unsigned long )l2->windowar[l2->sow] != (unsigned long )((struct sk_buff *)0)) {
    {
    skb_trim(l2->windowar[l2->sow], 0U);
    skb_queue_tail(& l2->tmp_queue, l2->windowar[l2->sow]);
    l2->windowar[l2->sow] = (struct sk_buff *)0;
    }
  } else {
  }
  l2->sow = (l2->sow + 1U) % l2->window;
  ldv_38744: ;
  if (l2->va != nr) {
    goto ldv_38743;
  } else {
    goto ldv_38745;
  }
  ldv_38745:
  {
  skb = skb_dequeue(& l2->tmp_queue);
  }
  goto ldv_38747;
  ldv_38746:
  {
  consume_skb(skb);
  skb = skb_dequeue(& l2->tmp_queue);
  }
  ldv_38747: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_38746;
  } else {
    goto ldv_38748;
  }
  ldv_38748: ;
  return;
}
}
static void send_uframe(struct layer2 *l2 , struct sk_buff *skb , u_char cmd , u_char cr )
{ u_char tmp[4U] ;
  int i ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___2 ;
  {
  {
  i = sethdraddr(l2, (u_char *)(& tmp), (int )cr);
  tmp___0 = i;
  i = i + 1;
  tmp[tmp___0] = cmd;
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    skb_trim(skb, 0U);
    }
  } else {
    {
    skb = mI_alloc_skb((unsigned int )i, 32U);
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      {
      printk("<4>%s: can\'t alloc skbuff\n", "send_uframe");
      }
      return;
    } else {
    }
  }
  {
  __len = (size_t )i;
  tmp___2 = skb_put(skb, (unsigned int )i);
  __ret = memcpy((void *)tmp___2, (void const *)(& tmp), __len);
  enqueue_super(l2, skb);
  }
  return;
}
}
__inline u_char get_PollFlag(struct layer2 *l2 , struct sk_buff *skb )
{ u_int tmp ;
  {
  {
  tmp = l2addrsize(l2);
  }
  return ((u_char )((unsigned int )*(skb->data + (unsigned long )tmp) & 16U));
}
}
__inline u_char get_PollFlagFree(struct layer2 *l2 , struct sk_buff *skb )
{ u_char PF ;
  {
  {
  PF = get_PollFlag(l2, skb);
  consume_skb(skb);
  }
  return (PF);
}
}
__inline void start_t200(struct layer2 *l2 , int i )
{
  {
  {
  mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, i);
  test_and_set_bit(6, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
__inline void restart_t200(struct layer2 *l2 , int i )
{
  {
  {
  mISDN_FsmRestartTimer(& l2->t200, l2->T200, 17, (void *)0, i);
  test_and_set_bit(6, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
__inline void stop_t200(struct layer2 *l2 , int i )
{ int tmp ;
  {
  {
  tmp = test_and_clear_bit(6, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    mISDN_FsmDelTimer(& l2->t200, i);
    }
  } else {
  }
  return;
}
}
__inline void st5_dl_release_l2l3(struct layer2 *l2 )
{ int pr ;
  int tmp ;
  {
  {
  tmp = test_and_clear_bit(4, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    pr = 20744;
  } else {
    pr = 4360;
  }
  {
  l2up_create(l2, (u_int )pr, 0, (void *)0);
  }
  return;
}
}
__inline void lapb_dl_release_l2l3(struct layer2 *l2 , int f )
{ u_int tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    {
    tmp = l2_newid(l2);
    l2down_create(l2, 513U, tmp, 0, (void *)0);
    }
  } else {
  }
  {
  l2up_create(l2, (u_int )f, 0, (void *)0);
  }
  return;
}
}
static void establishlink(struct FsmInst *fi )
{ struct layer2 *l2 ;
  u_char cmd ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  clear_exception(l2);
  l2->rc = 0;
  tmp___0 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    cmd = (u_char )127U;
  } else {
    cmd = (u_char )63U;
  }
  {
  send_uframe(l2, (struct sk_buff *)0, (u_char )((int )cmd), (u_char )0);
  mISDN_FsmDelTimer(& l2->t203, 1);
  restart_t200(l2, 1);
  test_and_clear_bit(4, (unsigned long volatile *)(& l2->flag));
  freewin(l2);
  mISDN_FsmChangeState(fi, 4);
  }
  return;
}
}
static void l2_mdl_error_ua(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  u_char tmp ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  tmp = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp != 0U) {
    {
    l2mgr(l2, 7940U, (void *)67);
    }
  } else {
    {
    l2mgr(l2, 7940U, (void *)68);
    }
  }
  return;
}
}
static void l2_mdl_error_dm(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  u_char tmp ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  tmp = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp != 0U) {
    {
    l2mgr(l2, 7940U, (void *)66);
    }
  } else {
    {
    l2mgr(l2, 7940U, (void *)69);
    establishlink(fi);
    test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  }
  return;
}
}
static void l2_st8_mdl_error_dm(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  u_char tmp ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  tmp = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp != 0U) {
    {
    l2mgr(l2, 7940U, (void *)66);
    }
  } else {
    {
    l2mgr(l2, 7940U, (void *)69);
    }
  }
  {
  establishlink(fi);
  test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
static void l2_go_st3(struct FsmInst *fi , int event , void *arg )
{
  {
  {
  consume_skb((struct sk_buff *)arg);
  mISDN_FsmChangeState(fi, 2);
  }
  return;
}
}
static void l2_mdl_assign(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  mISDN_FsmChangeState(fi, 2);
  consume_skb((struct sk_buff *)arg);
  l2_tei(l2, 6404U, 0UL);
  }
  return;
}
}
static void l2_queue_ui_assign(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_tail(& l2->ui_queue, skb);
  mISDN_FsmChangeState(fi, 1);
  l2_tei(l2, 6404U, 0UL);
  }
  return;
}
}
static void l2_queue_ui(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_tail(& l2->ui_queue, skb);
  }
  return;
}
}
static void tx_ui(struct layer2 *l2 )
{ struct sk_buff *skb ;
  u_char header[4U] ;
  int i ;
  int tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___2 ;
  {
  {
  i = sethdraddr(l2, (u_char *)(& header), 0);
  tmp = constant_test_bit(18U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    header[1] = (u_char )255U;
  } else {
  }
  tmp___0 = i;
  i = i + 1;
  header[tmp___0] = (u_char )3U;
  goto ldv_38851;
  ldv_38850:
  {
  __len = (size_t )i;
  tmp___2 = skb_push(skb, (unsigned int )i);
  __ret = memcpy((void *)tmp___2, (void const *)(& header), __len);
  enqueue_ui(l2, skb);
  }
  ldv_38851:
  {
  skb = skb_dequeue(& l2->ui_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_38850;
  } else {
    goto ldv_38852;
  }
  ldv_38852: ;
  return;
}
}
static void l2_send_ui(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_tail(& l2->ui_queue, skb);
  tx_ui(l2);
  }
  return;
}
}
static void l2_got_ui(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_int tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = l2headersize(l2, 1);
  skb_pull(skb, tmp);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7684U, 0UL);
    }
  } else {
  }
  {
  l2up(l2, 12552U, skb);
  }
  return;
}
}
static void l2_establish(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  establishlink(fi);
  test_and_set_bit(5, (unsigned long volatile *)(& l2->flag));
  consume_skb(skb);
  }
  return;
}
}
static void l2_discard_i_setl3(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->i_queue);
  test_and_set_bit(5, (unsigned long volatile *)(& l2->flag));
  test_and_clear_bit(4, (unsigned long volatile *)(& l2->flag));
  consume_skb(skb);
  }
  return;
}
}
static void l2_l3_reestablish(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->i_queue);
  establishlink(fi);
  test_and_set_bit(5, (unsigned long volatile *)(& l2->flag));
  consume_skb(skb);
  }
  return;
}
}
static void l2_release(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_trim(skb, 0U);
  l2up(l2, 20744U, skb);
  }
  return;
}
}
static void l2_pend_rel(struct FsmInst *fi , int event , void *arg )
{ struct sk_buff *skb ;
  struct layer2 *l2 ;
  {
  {
  skb = (struct sk_buff *)arg;
  l2 = (struct layer2 *)fi->userdata;
  test_and_set_bit(4, (unsigned long volatile *)(& l2->flag));
  consume_skb(skb);
  }
  return;
}
}
static void l2_disconnect(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_purge(& l2->i_queue);
  freewin(l2);
  mISDN_FsmChangeState(fi, 5);
  l2->rc = 0;
  send_uframe(l2, (struct sk_buff *)0, (u_char )83, (u_char )0);
  mISDN_FsmDelTimer(& l2->t203, 1);
  restart_t200(l2, 2);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static void l2_start_multi(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  l2->vs = 0U;
  l2->va = 0U;
  l2->vr = 0U;
  l2->sow = 0U;
  clear_exception(l2);
  tmp = get_PollFlag(l2, skb);
  send_uframe(l2, (struct sk_buff *)0, (u_char )((int )((unsigned int )tmp | 99U)),
              (u_char )1);
  mISDN_FsmChangeState(fi, 6);
  mISDN_FsmAddTimer(& l2->t203, l2->T203, 18, (void *)0, 3);
  skb_trim(skb, 0U);
  l2up(l2, 4104U, skb);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7172U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_send_UA(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = get_PollFlag(l2, skb);
  send_uframe(l2, skb, (u_char )((int )((unsigned int )tmp | 99U)), (u_char )1);
  }
  return;
}
}
static void l2_send_DM(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = get_PollFlag(l2, skb);
  send_uframe(l2, skb, (u_char )((int )((unsigned int )tmp | 15U)), (u_char )1);
  }
  return;
}
}
static void l2_restart_multi(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int est ;
  u_char tmp ;
  __u32 tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  est = 0;
  tmp = get_PollFlag(l2, skb);
  send_uframe(l2, skb, (u_char )((int )((unsigned int )tmp | 99U)), (u_char )1);
  l2mgr(l2, 7940U, (void *)70);
  }
  if (l2->vs != l2->va) {
    {
    skb_queue_purge(& l2->i_queue);
    est = 1;
    }
  } else {
  }
  {
  clear_exception(l2);
  l2->vs = 0U;
  l2->va = 0U;
  l2->vr = 0U;
  l2->sow = 0U;
  mISDN_FsmChangeState(fi, 6);
  stop_t200(l2, 3);
  mISDN_FsmRestartTimer(& l2->t203, l2->T203, 18, (void *)0, 3);
  }
  if (est != 0) {
    {
    l2up_create(l2, 4104U, 0, (void *)0);
    }
  } else {
  }
  {
  tmp___0 = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
  }
  if (tmp___0 != 0U) {
    {
    tmp___1 = cansend(l2);
    }
    if (tmp___1 != 0U) {
      {
      mISDN_FsmEvent(fi, 9, (void *)0);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void l2_stop_multi(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  mISDN_FsmChangeState(fi, 3);
  mISDN_FsmDelTimer(& l2->t203, 3);
  stop_t200(l2, 4);
  tmp = get_PollFlag(l2, skb);
  send_uframe(l2, skb, (u_char )((int )((unsigned int )tmp | 99U)), (u_char )1);
  skb_queue_purge(& l2->i_queue);
  freewin(l2);
  lapb_dl_release_l2l3(l2, 4360);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7428U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_connected(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int pr ;
  u_char tmp ;
  int tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  unsigned int tmp___3 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  pr = -1;
  tmp = get_PollFlag(l2, skb);
  }
  if ((unsigned int )tmp == 0U) {
    {
    l2_mdl_error_ua(fi, event, arg);
    }
    return;
  } else {
  }
  {
  consume_skb(skb);
  tmp___0 = test_and_clear_bit(4, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    {
    l2_disconnect(fi, event, (void *)0);
    }
  } else {
  }
  {
  tmp___1 = test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    pr = 20488;
  } else
  if (l2->vs != l2->va) {
    {
    skb_queue_purge(& l2->i_queue);
    pr = 4104;
    }
  } else {
  }
  {
  stop_t200(l2, 5);
  l2->vr = 0U;
  l2->vs = 0U;
  l2->va = 0U;
  l2->sow = 0U;
  mISDN_FsmChangeState(fi, 6);
  mISDN_FsmAddTimer(& l2->t203, l2->T203, 18, (void *)0, 4);
  }
  if (pr != -1) {
    {
    l2up_create(l2, (u_int )pr, 0, (void *)0);
    }
  } else {
  }
  {
  tmp___2 = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
  }
  if (tmp___2 != 0U) {
    {
    tmp___3 = cansend(l2);
    }
    if (tmp___3 != 0U) {
      {
      mISDN_FsmEvent(fi, 9, (void *)0);
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7172U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_released(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = get_PollFlag(l2, skb);
  }
  if ((unsigned int )tmp == 0U) {
    {
    l2_mdl_error_ua(fi, event, arg);
    }
    return;
  } else {
  }
  {
  consume_skb(skb);
  stop_t200(l2, 6);
  lapb_dl_release_l2l3(l2, 20744);
  mISDN_FsmChangeState(fi, 3);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7428U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_reestablish(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp == 0U) {
    {
    establishlink(fi);
    test_and_set_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  } else {
  }
  return;
}
}
static void l2_st5_dm_release(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int tmp ;
  u_int tmp___0 ;
  int tmp___1 ;
  u_char tmp___2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp___2 = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp___2 != 0U) {
    {
    stop_t200(l2, 7);
    tmp = constant_test_bit(5U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp == 0) {
      {
      skb_queue_purge(& l2->i_queue);
      }
    } else {
    }
    {
    tmp___1 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = l2_newid(l2);
      l2down_create(l2, 513U, tmp___0, 0, (void *)0);
      }
    } else {
    }
    {
    st5_dl_release_l2l3(l2);
    mISDN_FsmChangeState(fi, 3);
    }
    if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
      {
      l2_tei(l2, 7428U, 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void l2_st6_dm_release(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_char tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = get_PollFlagFree(l2, skb);
  }
  if ((unsigned int )tmp != 0U) {
    {
    stop_t200(l2, 8);
    lapb_dl_release_l2l3(l2, 20744);
    mISDN_FsmChangeState(fi, 3);
    }
    if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
      {
      l2_tei(l2, 7428U, 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void enquiry_cr(struct layer2 *l2 , u_char typ , u_char cr , u_char pf )
{ struct sk_buff *skb ;
  u_char tmp[4U] ;
  int i ;
  int tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  unsigned int tmp___4 ;
  int tmp___5 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___7 ;
  {
  {
  i = sethdraddr(l2, (u_char *)(& tmp), (int )cr);
  tmp___5 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___5 != 0) {
    tmp___0 = i;
    i = i + 1;
    tmp[tmp___0] = typ;
    tmp___1 = i;
    i = i + 1;
    if ((unsigned int )pf != 0U) {
      tmp___2 = 1U;
    } else {
      tmp___2 = 0U;
    }
    tmp[tmp___1] = (u_char )((unsigned int )((int )((u_char )l2->vr) << 1U) | tmp___2);
  } else {
    tmp___3 = i;
    i = i + 1;
    if ((unsigned int )pf != 0U) {
      tmp___4 = 16U;
    } else {
      tmp___4 = 0U;
    }
    tmp[tmp___3] = (u_char )((unsigned int )(((int )((u_char )l2->vr) << 5U) | (int )typ) | tmp___4);
  }
  {
  skb = mI_alloc_skb((unsigned int )i, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<4>isdnl2 can\'t alloc sbbuff for enquiry_cr\n");
    }
    return;
  } else {
  }
  {
  __len = (size_t )i;
  tmp___7 = skb_put(skb, (unsigned int )i);
  __ret = memcpy((void *)tmp___7, (void const *)(& tmp), __len);
  enqueue_super(l2, skb);
  }
  return;
}
}
__inline void enquiry_response(struct layer2 *l2 )
{ int tmp ;
  {
  {
  tmp = constant_test_bit(9U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    enquiry_cr(l2, (u_char )5, (u_char )1, (u_char )1);
    }
  } else {
    {
    enquiry_cr(l2, (u_char )1, (u_char )1, (u_char )1);
    }
  }
  {
  test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
__inline void transmit_enquiry(struct layer2 *l2 )
{ int tmp ;
  {
  {
  tmp = constant_test_bit(9U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    enquiry_cr(l2, (u_char )5, (u_char )0, (u_char )1);
    }
  } else {
    {
    enquiry_cr(l2, (u_char )1, (u_char )0, (u_char )1);
    }
  }
  {
  test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
  start_t200(l2, 9);
  }
  return;
}
}
static void nrerrorrecovery(struct FsmInst *fi )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  l2mgr(l2, 7940U, (void *)74);
  establishlink(fi);
  test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
static void invoke_retransmission(struct layer2 *l2 , unsigned int nr )
{ u_int p1 ;
  int tmp ;
  {
  if (l2->vs != nr) {
    goto ldv_39010;
    ldv_39009:
    {
    l2->vs = l2->vs - 1U;
    tmp = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp != 0) {
      l2->vs = l2->vs & 127U;
      p1 = (l2->vs - l2->va) & 127U;
    } else {
      l2->vs = l2->vs & 7U;
      p1 = (l2->vs - l2->va) & 7U;
    }
    p1 = (l2->sow + p1) % l2->window;
    if ((unsigned long )l2->windowar[p1] != (unsigned long )((struct sk_buff *)0)) {
      {
      skb_queue_head(& l2->i_queue, l2->windowar[p1]);
      }
    } else {
      {
      printk("<4>%s: windowar[%d] is NULL\n", "invoke_retransmission", p1);
      }
    }
    l2->windowar[p1] = (struct sk_buff *)0;
    ldv_39010: ;
    if (l2->vs != nr) {
      goto ldv_39009;
    } else {
      goto ldv_39011;
    }
    ldv_39011:
    {
    mISDN_FsmEvent(& l2->l2m, 9, (void *)0);
    }
  } else {
  }
  return;
}
}
static void l2_st7_got_super(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int PollFlag ;
  int rsp ;
  int typ ;
  unsigned int nr ;
  int tmp ;
  u_int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  unsigned int tmp___6 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  typ = 1;
  rsp = (int )*(skb->data) & 2;
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    rsp = rsp == 0;
  } else {
  }
  {
  tmp___0 = l2addrsize(l2);
  skb_pull(skb, tmp___0);
  tmp___1 = IsRNR(skb->data, l2);
  }
  if (tmp___1 != 0) {
    {
    set_peer_busy(l2);
    typ = 5;
    }
  } else {
    {
    clear_peer_busy(l2);
    }
  }
  {
  tmp___2 = IsREJ(skb->data, l2);
  }
  if (tmp___2 != 0) {
    typ = 9;
  } else {
  }
  {
  tmp___3 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___3 != 0) {
    PollFlag = (int )*(skb->data + 1UL) & 1;
    nr = (unsigned int )((int )*(skb->data + 1UL) >> 1);
  } else {
    PollFlag = (int )*(skb->data) & 16;
    nr = (unsigned int )((int )*(skb->data) >> 5) & 7U;
  }
  {
  consume_skb(skb);
  }
  if (PollFlag != 0) {
    if (rsp != 0) {
      {
      l2mgr(l2, 7940U, (void *)65);
      }
    } else {
      {
      enquiry_response(l2);
      }
    }
  } else {
  }
  {
  tmp___6 = legalnr(l2, nr);
  }
  if (tmp___6 != 0U) {
    if (typ == 9) {
      {
      setva(l2, nr);
      invoke_retransmission(l2, nr);
      stop_t200(l2, 10);
      tmp___4 = mISDN_FsmAddTimer(& l2->t203, l2->T203, 18, (void *)0, 6);
      }
      if (tmp___4 != 0) {
        {
        l2m_debug(& l2->l2m, (char *)"Restart T203 ST7 REJ");
        }
      } else {
      }
    } else
    if (l2->vs == nr) {
      if (typ == 1) {
        {
        setva(l2, nr);
        stop_t200(l2, 11);
        mISDN_FsmRestartTimer(& l2->t203, l2->T203, 18, (void *)0, 7);
        }
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if (l2->va != nr) {
      goto _L;
    } else
    if (typ == 5) {
      _L:
      {
      setva(l2, nr);
      }
      if (typ != 1) {
        {
        mISDN_FsmDelTimer(& l2->t203, 9);
        }
      } else {
      }
      {
      restart_t200(l2, 12);
      }
    } else {
    }
    {
    tmp___5 = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
    }
    if (tmp___5 != 0U) {
      if (typ == 1) {
        {
        mISDN_FsmEvent(fi, 9, (void *)0);
        }
      } else {
      }
    } else {
    }
  } else {
    {
    nrerrorrecovery(fi);
    }
  }
  return;
}
}
static void l2_feed_i_if_reest(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = constant_test_bit(5U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp == 0) {
    {
    skb_queue_tail(& l2->i_queue, skb);
    }
  } else {
    {
    consume_skb(skb);
    }
  }
  return;
}
}
static void l2_feed_i_pull(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_tail(& l2->i_queue, skb);
  mISDN_FsmEvent(fi, 9, (void *)0);
  }
  return;
}
}
static void l2_feed_iqueue(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_tail(& l2->i_queue, skb);
  }
  return;
}
}
static void l2_got_iframe(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int PollFlag ;
  int i ;
  u_int ns ;
  u_int nr ;
  u_int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u_int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned int tmp___6 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = l2addrsize(l2);
  i = (int )tmp;
  tmp___0 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    PollFlag = (int )*(skb->data + ((unsigned long )i + 1UL)) & 1;
    ns = (u_int )((int )*(skb->data + (unsigned long )i) >> 1);
    nr = (u_int )((int )*(skb->data + ((unsigned long )i + 1UL)) >> 1) & 127U;
  } else {
    PollFlag = (int )*(skb->data + (unsigned long )i) & 16;
    ns = (u_int )((int )*(skb->data + (unsigned long )i) >> 1) & 7U;
    nr = (u_int )((int )*(skb->data + (unsigned long )i) >> 5) & 7U;
  }
  {
  tmp___4 = constant_test_bit(9U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___4 != 0) {
    {
    consume_skb(skb);
    }
    if (PollFlag != 0) {
      {
      enquiry_response(l2);
      }
    } else {
    }
  } else
  if (l2->vr == ns) {
    {
    l2->vr = l2->vr + 1U;
    tmp___1 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___1 != 0) {
      l2->vr = l2->vr & 127U;
    } else {
      l2->vr = l2->vr & 7U;
    }
    {
    test_and_clear_bit(8, (unsigned long volatile *)(& l2->flag));
    }
    if (PollFlag != 0) {
      {
      enquiry_response(l2);
      }
    } else {
      {
      test_and_set_bit(7, (unsigned long volatile *)(& l2->flag));
      }
    }
    {
    tmp___2 = l2headersize(l2, 0);
    skb_pull(skb, tmp___2);
    l2up(l2, 12296U, skb);
    }
  } else {
    {
    consume_skb(skb);
    tmp___3 = test_and_set_bit(8, (unsigned long volatile *)(& l2->flag));
    }
    if (tmp___3 != 0) {
      if (PollFlag != 0) {
        {
        enquiry_response(l2);
        }
      } else {
        {
        enquiry_cr(l2, (u_char )9, (u_char )1, (u_char )((int )((u_char )PollFlag)));
        test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
        }
      }
    } else {
    }
  }
  {
  tmp___6 = legalnr(l2, nr);
  }
  if (tmp___6 != 0U) {
    {
    tmp___5 = constant_test_bit(10U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___5 == 0) {
      if (fi->state == 6) {
        if (l2->vs == nr) {
          {
          stop_t200(l2, 13);
          mISDN_FsmRestartTimer(& l2->t203, l2->T203, 18, (void *)0, 7);
          }
        } else
        if (l2->va != nr) {
          {
          restart_t200(l2, 14);
          }
        } else {
        }
      } else {
      }
    } else {
    }
    {
    setva(l2, nr);
    }
  } else {
    {
    nrerrorrecovery(fi);
    }
    return;
  }
  {
  tmp___7 = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
  }
  if (tmp___7 != 0U) {
    if (fi->state == 6) {
      {
      mISDN_FsmEvent(fi, 9, (void *)0);
      }
    } else {
    }
  } else {
  }
  {
  tmp___8 = test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp___8 != 0) {
    {
    enquiry_cr(l2, (u_char )1, (u_char )1, (u_char )0);
    }
  } else {
  }
  return;
}
}
static void l2_got_tei(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  u_int info ;
  __u32 tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  l2->tei = (signed char )((long )arg);
  set_channel_address(& l2->ch, (u_int )l2->sapi, (u_int )l2->tei);
  info = 1U;
  l2up_create(l2, 8U, 4, (void *)(& info));
  }
  if (fi->state == 2) {
    {
    establishlink(fi);
    test_and_set_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  } else {
    {
    mISDN_FsmChangeState(fi, 3);
    }
  }
  {
  tmp = skb_queue_len((struct sk_buff_head const *)(& l2->ui_queue));
  }
  if (tmp != 0U) {
    {
    tx_ui(l2);
    }
  } else {
  }
  return;
}
}
static void l2_st5_tout_200(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  u_int tmp ;
  int tmp___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___4 != 0) {
    {
    tmp___5 = constant_test_bit(11U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___5 != 0) {
      {
      mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
      }
    } else {
      goto _L;
    }
  } else
  _L:
  if (l2->rc == l2->N200) {
    {
    mISDN_FsmChangeState(fi, 3);
    test_and_clear_bit(6, (unsigned long volatile *)(& l2->flag));
    skb_queue_purge(& l2->i_queue);
    l2mgr(l2, 7940U, (void *)71);
    tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 != 0) {
      {
      tmp = l2_newid(l2);
      l2down_create(l2, 513U, tmp, 0, (void *)0);
      }
    } else {
    }
    {
    st5_dl_release_l2l3(l2);
    }
    if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
      {
      l2_tei(l2, 7428U, 0UL);
      }
    } else {
    }
  } else {
    {
    l2->rc = l2->rc + 1;
    mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
    tmp___3 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___3 != 0) {
      tmp___2 = 127;
    } else {
      tmp___2 = 63;
    }
    {
    send_uframe(l2, (struct sk_buff *)0, (u_char )tmp___2, (u_char )0);
    }
  }
  return;
}
}
static void l2_st6_tout_200(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  int tmp ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    tmp___0 = constant_test_bit(11U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
      }
    } else {
      goto _L;
    }
  } else
  _L:
  if (l2->rc == l2->N200) {
    {
    mISDN_FsmChangeState(fi, 3);
    test_and_clear_bit(6, (unsigned long volatile *)(& l2->flag));
    l2mgr(l2, 7940U, (void *)72);
    lapb_dl_release_l2l3(l2, 20744);
    }
    if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
      {
      l2_tei(l2, 7428U, 0UL);
      }
    } else {
    }
  } else {
    {
    l2->rc = l2->rc + 1;
    mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
    send_uframe(l2, (struct sk_buff *)0, (u_char )83, (u_char )0);
    }
  }
  return;
}
}
static void l2_st7_tout_200(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  int tmp ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    tmp___0 = constant_test_bit(11U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
      }
      return;
    } else {
    }
  } else {
  }
  {
  test_and_clear_bit(6, (unsigned long volatile *)(& l2->flag));
  l2->rc = 0;
  mISDN_FsmChangeState(fi, 7);
  transmit_enquiry(l2);
  l2->rc = l2->rc + 1;
  }
  return;
}
}
static void l2_st8_tout_200(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  int tmp ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    tmp___0 = constant_test_bit(11U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 9);
      }
      return;
    } else {
    }
  } else {
  }
  {
  test_and_clear_bit(6, (unsigned long volatile *)(& l2->flag));
  }
  if (l2->rc == l2->N200) {
    {
    l2mgr(l2, 7940U, (void *)73);
    establishlink(fi);
    test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  } else {
    {
    transmit_enquiry(l2);
    l2->rc = l2->rc + 1;
    }
  }
  return;
}
}
static void l2_st7_tout_203(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  int tmp ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    tmp___0 = constant_test_bit(11U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmAddTimer(& l2->t203, l2->T203, 18, (void *)0, 9);
      }
      return;
    } else {
    }
  } else {
  }
  {
  mISDN_FsmChangeState(fi, 7);
  transmit_enquiry(l2);
  l2->rc = 0;
  }
  return;
}
}
static void l2_pull_iqueue(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  struct sk_buff *nskb ;
  struct sk_buff *oskb ;
  u_char header[4U] ;
  u_int i ;
  u_int p1 ;
  unsigned int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u_int tmp___2 ;
  u_int tmp___3 ;
  u_int tmp___4 ;
  int tmp___5 ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___7 ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned char *tmp___9 ;
  size_t __len___1 ;
  void *__ret___1 ;
  unsigned char *tmp___11 ;
  u_int tmp___12 ;
  int tmp___13 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  tmp = cansend(l2);
  }
  if (tmp == 0U) {
    return;
  } else {
  }
  {
  skb = skb_dequeue(& l2->i_queue);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  tmp___0 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___0 != 0) {
    p1 = (l2->vs - l2->va) & 127U;
  } else {
    p1 = (l2->vs - l2->va) & 7U;
  }
  p1 = (l2->sow + p1) % l2->window;
  if ((unsigned long )l2->windowar[p1] != (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<4>isdnl2 try overwrite ack queue entry %d\n", p1);
    consume_skb(l2->windowar[p1]);
    }
  } else {
  }
  {
  l2->windowar[p1] = skb;
  tmp___1 = sethdraddr(l2, (u_char *)(& header), 0);
  i = (u_int )tmp___1;
  tmp___5 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___5 != 0) {
    tmp___2 = i;
    i = i + 1U;
    header[tmp___2] = (u_char )((int )((u_char )l2->vs) << 1U);
    tmp___3 = i;
    i = i + 1U;
    header[tmp___3] = (u_char )((int )((u_char )l2->vr) << 1U);
    l2->vs = (l2->vs + 1U) & 127U;
  } else {
    tmp___4 = i;
    i = i + 1U;
    header[tmp___4] = (u_char )(((int )((u_char )l2->vr) << 5U) | ((int )((u_char )l2->vs) << 1U));
    l2->vs = (l2->vs + 1U) & 7U;
  }
  {
  nskb = skb_clone(skb, 32U);
  p1 = skb_headroom((struct sk_buff const *)nskb);
  }
  if (p1 >= i) {
    {
    __len = (size_t )i;
    tmp___7 = skb_push(nskb, i);
    __ret = memcpy((void *)tmp___7, (void const *)(& header), __len);
    }
  } else {
    {
    printk("<4>isdnl2 pull_iqueue skb header(%d/%d) too short\n", i, p1);
    oskb = nskb;
    nskb = mI_alloc_skb(oskb->len + i, 32U);
    }
    if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
      {
      consume_skb(oskb);
      printk("<4>%s: no skb mem\n", "l2_pull_iqueue");
      }
      return;
    } else {
    }
    {
    __len___0 = (size_t )i;
    tmp___9 = skb_put(nskb, i);
    __ret___0 = memcpy((void *)tmp___9, (void const *)(& header), __len___0);
    __len___1 = (size_t )oskb->len;
    tmp___11 = skb_put(nskb, oskb->len);
    __ret___1 = memcpy((void *)tmp___11, (void const *)oskb->data, __len___1);
    consume_skb(oskb);
    }
  }
  {
  tmp___12 = l2_newid(l2);
  l2down(l2, 8193U, tmp___12, nskb);
  test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
  tmp___13 = test_and_set_bit(6, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp___13 == 0) {
    {
    mISDN_FsmDelTimer(& l2->t203, 13);
    mISDN_FsmAddTimer(& l2->t200, l2->T200, 17, (void *)0, 11);
    }
  } else {
  }
  return;
}
}
static void l2_st8_got_super(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int PollFlag ;
  int rsp ;
  int rnr ;
  unsigned int nr ;
  int tmp ;
  u_int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  unsigned int tmp___6 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  rnr = 0;
  rsp = (int )*(skb->data) & 2;
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    rsp = rsp == 0;
  } else {
  }
  {
  tmp___0 = l2addrsize(l2);
  skb_pull(skb, tmp___0);
  tmp___1 = IsRNR(skb->data, l2);
  }
  if (tmp___1 != 0) {
    {
    set_peer_busy(l2);
    rnr = 1;
    }
  } else {
    {
    clear_peer_busy(l2);
    }
  }
  {
  tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___2 != 0) {
    PollFlag = (int )*(skb->data + 1UL) & 1;
    nr = (unsigned int )((int )*(skb->data + 1UL) >> 1);
  } else {
    PollFlag = (int )*(skb->data) & 16;
    nr = (unsigned int )((int )*(skb->data) >> 5) & 7U;
  }
  {
  consume_skb(skb);
  }
  if (rsp != 0) {
    if (PollFlag != 0) {
      {
      tmp___5 = legalnr(l2, nr);
      }
      if (tmp___5 != 0U) {
        if (rnr != 0) {
          {
          restart_t200(l2, 15);
          }
        } else {
          {
          stop_t200(l2, 16);
          mISDN_FsmAddTimer(& l2->t203, l2->T203, 18, (void *)0, 5);
          setva(l2, nr);
          }
        }
        {
        invoke_retransmission(l2, nr);
        mISDN_FsmChangeState(fi, 6);
        tmp___3 = skb_queue_len((struct sk_buff_head const *)(& l2->i_queue));
        }
        if (tmp___3 != 0U) {
          {
          tmp___4 = cansend(l2);
          }
          if (tmp___4 != 0U) {
            {
            mISDN_FsmEvent(fi, 9, (void *)0);
            }
          } else {
          }
        } else {
        }
      } else {
        {
        nrerrorrecovery(fi);
        }
      }
    } else {
      goto _L;
    }
  } else {
    _L:
    if (rsp == 0) {
      if (PollFlag != 0) {
        {
        enquiry_response(l2);
        }
      } else {
      }
    } else {
    }
    {
    tmp___6 = legalnr(l2, nr);
    }
    if (tmp___6 != 0U) {
      {
      setva(l2, nr);
      }
    } else {
      {
      nrerrorrecovery(fi);
      }
    }
  }
  return;
}
}
static void l2_got_FRMR(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  u_int tmp ;
  int tmp___0 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = l2addrsize(l2);
  skb_pull(skb, tmp + 1U);
  }
  if (((int )*(skb->data) & 1) == 0) {
    {
    l2mgr(l2, 7940U, (void *)75);
    establishlink(fi);
    test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  } else
  if (((int )*(skb->data) & 3) == 1) {
    {
    l2mgr(l2, 7940U, (void *)75);
    establishlink(fi);
    test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
    }
  } else {
    {
    tmp___0 = IsUA(skb->data);
    }
    if (tmp___0 != 0) {
      if (fi->state == 6) {
        {
        l2mgr(l2, 7940U, (void *)75);
        establishlink(fi);
        test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
    } else {
    }
  }
  {
  consume_skb(skb);
  }
  return;
}
}
static void l2_st24_tei_remove(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->ui_queue);
  l2->tei = (signed char)127;
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void l2_st3_tei_remove(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->ui_queue);
  l2->tei = (signed char)127;
  l2up_create(l2, 4360U, 0, (void *)0);
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void l2_st5_tei_remove(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  freewin(l2);
  l2->tei = (signed char)127;
  stop_t200(l2, 17);
  st5_dl_release_l2l3(l2);
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void l2_st6_tei_remove(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->ui_queue);
  l2->tei = (signed char)127;
  stop_t200(l2, 18);
  l2up_create(l2, 4360U, 0, (void *)0);
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void l2_tei_remove(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  freewin(l2);
  l2->tei = (signed char)127;
  stop_t200(l2, 17);
  mISDN_FsmDelTimer(& l2->t203, 19);
  l2up_create(l2, 4360U, 0, (void *)0);
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void l2_st14_persistent_da(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  tmp = test_and_clear_bit(13, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    l2up(l2, 4360U, skb);
    }
  } else {
    {
    consume_skb(skb);
    }
  }
  return;
}
}
static void l2_st5_persistent_da(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  freewin(l2);
  stop_t200(l2, 19);
  st5_dl_release_l2l3(l2);
  mISDN_FsmChangeState(fi, 3);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7428U, 0UL);
    }
  } else {
  }
  {
  consume_skb(skb);
  }
  return;
}
}
static void l2_st6_persistent_da(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_purge(& l2->ui_queue);
  stop_t200(l2, 20);
  l2up(l2, 20744U, skb);
  mISDN_FsmChangeState(fi, 3);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7428U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_persistent_da(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  freewin(l2);
  stop_t200(l2, 19);
  mISDN_FsmDelTimer(& l2->t203, 19);
  l2up(l2, 4360U, skb);
  mISDN_FsmChangeState(fi, 3);
  }
  if ((unsigned long )l2->tm != (unsigned long )((struct teimgr *)0)) {
    {
    l2_tei(l2, 7428U, 0UL);
    }
  } else {
  }
  return;
}
}
static void l2_set_own_busy(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = test_and_set_bit(9, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp == 0) {
    {
    enquiry_cr(l2, (u_char )5, (u_char )1, (u_char )0);
    test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
    }
  } else {
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static void l2_clear_own_busy(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  struct sk_buff *skb ;
  int tmp ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  skb = (struct sk_buff *)arg;
  tmp = test_and_clear_bit(9, (unsigned long volatile *)(& l2->flag));
  }
  if (tmp == 0) {
    {
    enquiry_cr(l2, (u_char )1, (u_char )1, (u_char )0);
    test_and_clear_bit(7, (unsigned long volatile *)(& l2->flag));
    }
  } else {
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static void l2_frame_error(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  l2mgr(l2, 7940U, arg);
  }
  return;
}
}
static void l2_frame_error_reest(struct FsmInst *fi , int event , void *arg )
{ struct layer2 *l2 ;
  {
  {
  l2 = (struct layer2 *)fi->userdata;
  l2mgr(l2, 7940U, arg);
  establishlink(fi);
  test_and_clear_bit(5, (unsigned long volatile *)(& l2->flag));
  }
  return;
}
}
static struct FsmNode L2FnList[88U] =
  { {0, 11, & l2_mdl_assign},
        {1, 11, & l2_go_st3},
        {3, 11, & l2_establish},
        {4, 11, & l2_discard_i_setl3},
        {6, 11, & l2_l3_reestablish},
        {7, 11, & l2_l3_reestablish},
        {3, 12, & l2_release},
        {4, 12, & l2_pend_rel},
        {6, 12, & l2_disconnect},
        {7, 12, & l2_disconnect},
        {4, 8, & l2_feed_i_if_reest},
        {6, 8, & l2_feed_i_pull},
        {7, 8, & l2_feed_iqueue},
        {0, 10, & l2_queue_ui_assign},
        {1, 10, & l2_queue_ui},
        {2, 10, & l2_queue_ui},
        {3, 10, & l2_send_ui},
        {4, 10, & l2_send_ui},
        {5, 10, & l2_send_ui},
        {6, 10, & l2_send_ui},
        {7, 10, & l2_send_ui},
        {0, 13, & l2_got_tei},
        {1, 13, & l2_got_tei},
        {2, 13, & l2_got_tei},
        {1, 15, & l2_st24_tei_remove},
        {2, 15, & l2_st3_tei_remove},
        {3, 14, & l2_st24_tei_remove},
        {4, 14, & l2_st5_tei_remove},
        {5, 14, & l2_st6_tei_remove},
        {6, 14, & l2_tei_remove},
        {7, 14, & l2_tei_remove},
        {3, 1, & l2_start_multi},
        {4, 1, & l2_send_UA},
        {5, 1, & l2_send_DM},
        {6, 1, & l2_restart_multi},
        {7, 1, & l2_restart_multi},
        {3, 2, & l2_send_DM},
        {4, 2, & l2_send_DM},
        {5, 2, & l2_send_UA},
        {6, 2, & l2_stop_multi},
        {7, 2, & l2_stop_multi},
        {3, 4, & l2_mdl_error_ua},
        {4, 4, & l2_connected},
        {5, 4, & l2_released},
        {6, 4, & l2_mdl_error_ua},
        {7, 4, & l2_mdl_error_ua},
        {3, 3, & l2_reestablish},
        {4, 3, & l2_st5_dm_release},
        {5, 3, & l2_st6_dm_release},
        {6, 3, & l2_mdl_error_dm},
        {7, 3, & l2_st8_mdl_error_dm},
        {0, 0, & l2_got_ui},
        {1, 0, & l2_got_ui},
        {2, 0, & l2_got_ui},
        {3, 0, & l2_got_ui},
        {4, 0, & l2_got_ui},
        {5, 0, & l2_got_ui},
        {6, 0, & l2_got_ui},
        {7, 0, & l2_got_ui},
        {6, 5, & l2_got_FRMR},
        {7, 5, & l2_got_FRMR},
        {6, 6, & l2_st7_got_super},
        {7, 6, & l2_st8_got_super},
        {6, 7, & l2_got_iframe},
        {7, 7, & l2_got_iframe},
        {4, 17, & l2_st5_tout_200},
        {5, 17, & l2_st6_tout_200},
        {6, 17, & l2_st7_tout_200},
        {7, 17, & l2_st8_tout_200},
        {6, 18, & l2_st7_tout_203},
        {6, 9, & l2_pull_iqueue},
        {6, 19, & l2_set_own_busy},
        {7, 19, & l2_set_own_busy},
        {6, 20, & l2_clear_own_busy},
        {7, 20, & l2_clear_own_busy},
        {3, 21, & l2_frame_error},
        {4, 21, & l2_frame_error},
        {5, 21, & l2_frame_error},
        {6, 21, & l2_frame_error_reest},
        {7, 21, & l2_frame_error_reest},
        {0, 16, & l2_st14_persistent_da},
        {1, 16, & l2_st24_tei_remove},
        {2, 16, & l2_st3_tei_remove},
        {3, 16, & l2_st14_persistent_da},
        {4, 16, & l2_st5_persistent_da},
        {5, 16, & l2_st6_persistent_da},
        {6, 16, & l2_persistent_da},
        {7, 16, & l2_persistent_da}};
static int ph_data_indication(struct layer2 *l2 , struct mISDNhead *hh , struct sk_buff *skb )
{ u_char *datap ;
  int ret ;
  int psapi ;
  int ptei ;
  u_int l ;
  int c ;
  u_char *tmp ;
  u_char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  {
  datap = skb->data;
  ret = -22;
  c = 0;
  l = l2addrsize(l2);
  }
  if (skb->len <= l) {
    {
    mISDN_FsmEvent(& l2->l2m, 21, (void *)78);
    }
    return (ret);
  } else {
  }
  {
  tmp___1 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___1 != 0) {
    tmp = datap;
    datap = datap + 1;
    psapi = (int )*tmp;
    tmp___0 = datap;
    datap = datap + 1;
    ptei = (int )*tmp___0;
    if (psapi & 1) {
      {
      printk("<4>l2 D-channel frame wrong EA0/EA1\n");
      }
      return (ret);
    } else
    if ((ptei & 1) == 0) {
      {
      printk("<4>l2 D-channel frame wrong EA0/EA1\n");
      }
      return (ret);
    } else {
    }
    psapi = psapi >> 2;
    ptei = ptei >> 1;
    if ((int )l2->sapi != psapi) {
      if ((*debug___4 & 16711680U) != 0U) {
        {
        printk("<7>%s: sapi %d/%d mismatch\n", "ph_data_indication", psapi, (int )l2->sapi);
        }
      } else {
      }
      {
      consume_skb(skb);
      }
      return (0);
    } else {
    }
    if ((int )l2->tei != ptei) {
      if (ptei != 127) {
        if ((*debug___4 & 16711680U) != 0U) {
          {
          printk("<7>%s: tei %d/%d mismatch\n", "ph_data_indication", ptei, (int )l2->tei);
          }
        } else {
        }
        {
        consume_skb(skb);
        }
        return (0);
      } else {
      }
    } else {
    }
  } else {
    datap = datap + (unsigned long )l;
  }
  if (((int )*datap & 1) == 0) {
    {
    c = iframe_error(l2, skb);
    }
    if (c == 0) {
      {
      ret = mISDN_FsmEvent(& l2->l2m, 7, (void *)skb);
      }
    } else {
    }
  } else {
    {
    tmp___8 = IsSFrame(datap, l2);
    }
    if (tmp___8 != 0) {
      {
      c = super_error(l2, skb);
      }
      if (c == 0) {
        {
        ret = mISDN_FsmEvent(& l2->l2m, 6, (void *)skb);
        }
      } else {
      }
    } else {
      {
      tmp___7 = IsUI(datap);
      }
      if (tmp___7 != 0) {
        {
        c = UI_error(l2, skb);
        }
        if (c == 0) {
          {
          ret = mISDN_FsmEvent(& l2->l2m, 0, (void *)skb);
          }
        } else {
        }
      } else {
        {
        tmp___6 = IsSABME(datap, l2);
        }
        if (tmp___6 != 0) {
          {
          c = unnum_error(l2, skb, 0);
          }
          if (c == 0) {
            {
            ret = mISDN_FsmEvent(& l2->l2m, 1, (void *)skb);
            }
          } else {
          }
        } else {
          {
          tmp___5 = IsUA(datap);
          }
          if (tmp___5 != 0) {
            {
            c = unnum_error(l2, skb, 1);
            }
            if (c == 0) {
              {
              ret = mISDN_FsmEvent(& l2->l2m, 4, (void *)skb);
              }
            } else {
            }
          } else {
            {
            tmp___4 = IsDISC(datap);
            }
            if (tmp___4 != 0) {
              {
              c = unnum_error(l2, skb, 0);
              }
              if (c == 0) {
                {
                ret = mISDN_FsmEvent(& l2->l2m, 2, (void *)skb);
                }
              } else {
              }
            } else {
              {
              tmp___3 = IsDM(datap);
              }
              if (tmp___3 != 0) {
                {
                c = unnum_error(l2, skb, 1);
                }
                if (c == 0) {
                  {
                  ret = mISDN_FsmEvent(& l2->l2m, 3, (void *)skb);
                  }
                } else {
                }
              } else {
                {
                tmp___2 = IsFRMR(datap);
                }
                if (tmp___2 != 0) {
                  {
                  c = FRMR_error(l2, skb);
                  }
                  if (c == 0) {
                    {
                    ret = mISDN_FsmEvent(& l2->l2m, 5, (void *)skb);
                    }
                  } else {
                  }
                } else {
                  c = 76;
                }
              }
            }
          }
        }
      }
    }
  }
  if (c != 0) {
    {
    printk("<4>l2 D-channel frame error %c\n", c);
    mISDN_FsmEvent(& l2->l2m, 21, (void *)((long )c));
    }
  } else {
  }
  return (ret);
}
}
static int l2_send(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct layer2 *l2 ;
  struct mISDNchannel const *__mptr ;
  struct mISDNhead *hh ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u_int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  u_int tmp___7 ;
  int tmp___8 ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  l2 = (struct layer2 *)__mptr + 0x0ffffffffffffff0UL;
  hh = (struct mISDNhead *)(& skb->cb);
  ret = -22;
  if ((*debug___4 & 524288U) != 0U) {
    {
    printk("<7>%s: prim(%x) id(%x) sapi(%d) tei(%d)\n", "l2_send", hh->prim, hh->id,
           (int )l2->sapi, (int )l2->tei);
    }
  } else {
  }
  if ((int )hh->prim == 8194) {
    goto case_8194;
  } else
  if ((int )hh->prim == 24578) {
    goto case_24578;
  } else
  if ((int )hh->prim == 258) {
    goto case_258;
  } else
  if ((int )hh->prim == 514) {
    goto case_514;
  } else
  if ((int )hh->prim == 1794) {
    goto case_1794;
  } else
  if ((int )hh->prim == 12292) {
    goto case_12292;
  } else
  if ((int )hh->prim == 12548) {
    goto case_12548;
  } else
  if ((int )hh->prim == 4100) {
    goto case_4100;
  } else
  if ((int )hh->prim == 4356) {
    goto case_4356;
  } else {
    goto switch_default;
    if (0) {
      case_8194:
      {
      ret = ph_data_indication(l2, hh, skb);
      }
      goto ldv_39240;
      case_24578:
      {
      ret = ph_data_confirm(l2, hh, skb);
      }
      goto ldv_39240;
      case_258:
      {
      test_and_set_bit(12, (unsigned long volatile *)(& l2->flag));
      l2up_create(l2, 1282U, 0, (void *)0);
      tmp = test_and_clear_bit(13, (unsigned long volatile *)(& l2->flag));
      }
      if (tmp != 0) {
        {
        ret = mISDN_FsmEvent(& l2->l2m, 11, (void *)skb);
        }
      } else {
      }
      goto ldv_39240;
      case_514:
      {
      test_and_clear_bit(12, (unsigned long volatile *)(& l2->flag));
      l2up_create(l2, 1538U, 0, (void *)0);
      ret = mISDN_FsmEvent(& l2->l2m, 16, (void *)skb);
      }
      goto ldv_39240;
      case_1794: ;
      if ((unsigned long )l2->up == (unsigned long )((struct mISDNchannel *)0)) {
        goto ldv_39240;
      } else {
      }
      {
      ret = (*((l2->up)->send))(l2->up, skb);
      }
      goto ldv_39240;
      case_12292:
      {
      ret = mISDN_FsmEvent(& l2->l2m, 8, (void *)skb);
      }
      goto ldv_39240;
      case_12548:
      {
      ret = mISDN_FsmEvent(& l2->l2m, 10, (void *)skb);
      }
      goto ldv_39240;
      case_4100:
      {
      tmp___0 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
      }
      if (tmp___0 != 0) {
        {
        test_and_set_bit(2, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
      {
      tmp___6 = constant_test_bit(12U, (unsigned long const volatile *)(& l2->flag));
      }
      if (tmp___6 != 0) {
        {
        tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
        }
        if (tmp___4 != 0) {
          {
          ret = mISDN_FsmEvent(& l2->l2m, 11, (void *)skb);
          }
        } else {
          {
          tmp___5 = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
          }
          if (tmp___5 != 0) {
            {
            ret = mISDN_FsmEvent(& l2->l2m, 11, (void *)skb);
            }
          } else {
            {
            tmp___1 = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
            }
            if (tmp___1 != 0) {
              {
              test_and_set_bit(13, (unsigned long volatile *)(& l2->flag));
              }
            } else {
              {
              tmp___2 = constant_test_bit(2U, (unsigned long const volatile *)(& l2->flag));
              }
              if (tmp___2 != 0) {
                {
                test_and_set_bit(13, (unsigned long volatile *)(& l2->flag));
                }
              } else {
              }
            }
            {
            tmp___3 = l2_newid(l2);
            ret = l2down(l2, 257U, tmp___3, skb);
            }
          }
        }
      } else {
      }
      goto ldv_39240;
      case_4356:
      {
      tmp___8 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
      }
      if (tmp___8 != 0) {
        {
        tmp___7 = l2_newid(l2);
        l2down_create(l2, 513U, tmp___7, 0, (void *)0);
        }
      } else {
      }
      {
      ret = mISDN_FsmEvent(& l2->l2m, 12, (void *)skb);
      }
      goto ldv_39240;
      switch_default: ;
      if ((*debug___4 & 16711680U) != 0U) {
        {
        l2m_debug(& l2->l2m, (char *)"l2 unknown pr %04x", hh->prim);
        }
      } else {
      }
    } else {
    }
  }
  ldv_39240: ;
  if (ret != 0) {
    {
    consume_skb(skb);
    ret = 0;
    }
  } else {
  }
  return (ret);
}
}
int tei_l2(struct layer2 *l2 , u_int cmd , u_long arg )
{ int ret ;
  {
  ret = -22;
  if ((*debug___4 & 1048576U) != 0U) {
    {
    printk("<7>%s: cmd(%x)\n", "tei_l2", cmd);
    }
  } else {
  }
  if ((int )cmd == 6148) {
    goto case_6148;
  } else
  if ((int )cmd == 6660) {
    goto case_6660;
  } else
  if ((int )cmd == 7940) {
    goto case_7940;
  } else
  if ((int )cmd == 24324) {
    goto case_24324;
  } else
  if (0) {
    case_6148:
    {
    ret = mISDN_FsmEvent(& l2->l2m, 13, (void *)arg);
    }
    goto ldv_39258;
    case_6660:
    {
    ret = mISDN_FsmEvent(& l2->l2m, 14, (void *)0);
    }
    goto ldv_39258;
    case_7940:
    {
    ret = mISDN_FsmEvent(& l2->l2m, 15, (void *)0);
    }
    goto ldv_39258;
    case_24324:
    {
    printk("<5>MDL_ERROR|REQ (tei_l2)\n");
    ret = mISDN_FsmEvent(& l2->l2m, 15, (void *)0);
    }
    goto ldv_39258;
  } else {
  }
  ldv_39258: ;
  return (ret);
}
}
static void release_l2(struct layer2 *l2 )
{ int tmp ;
  {
  {
  mISDN_FsmDelTimer(& l2->t200, 21);
  mISDN_FsmDelTimer(& l2->t203, 16);
  skb_queue_purge(& l2->i_queue);
  skb_queue_purge(& l2->ui_queue);
  skb_queue_purge(& l2->down_queue);
  ReleaseWin(l2);
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    {
    TEIrelease(l2);
    }
    if ((unsigned long )l2->ch.st != (unsigned long )((struct mISDNstack *)0)) {
      {
      (*(((l2->ch.st)->dev)->D.ctrl))(& ((l2->ch.st)->dev)->D, 512U, (void *)0);
      }
    } else {
    }
  } else {
  }
  {
  kfree((void const *)l2);
  }
  return;
}
}
static int l2_ctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ struct layer2 *l2 ;
  struct mISDNchannel const *__mptr ;
  u_int info ;
  int tmp ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  l2 = (struct layer2 *)__mptr + 0x0ffffffffffffff0UL;
  if ((*debug___4 & 262144U) != 0U) {
    {
    printk("<7>%s:(%x)\n", "l2_ctrl", cmd);
    }
  } else {
  }
  if ((int )cmd == 256) {
    goto case_256;
  } else
  if ((int )cmd == 512) {
    goto case_512;
  } else
  if (0) {
    case_256:
    {
    tmp = constant_test_bit(1U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp != 0) {
      {
      set_channel_address(& l2->ch, (u_int )l2->sapi, (u_int )l2->tei);
      info = 1U;
      l2up_create(l2, 8U, 4, (void *)(& info));
      }
    } else {
    }
    goto ldv_39276;
    case_512: ;
    if ((unsigned long )l2->ch.peer != (unsigned long )((struct mISDNchannel *)0)) {
      {
      (*((l2->ch.peer)->ctrl))(l2->ch.peer, 512U, (void *)0);
      }
    } else {
    }
    {
    release_l2(l2);
    }
    goto ldv_39276;
  } else {
  }
  ldv_39276: ;
  return (0);
}
}
struct layer2 *create_l2(struct mISDNchannel *ch , u_int protocol , u_long options ,
                         int tei , int sapi )
{ struct layer2 *l2 ;
  struct channel_req rq ;
  void *tmp ;
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
  {
  {
  tmp = kzalloc(976UL, 208U);
  l2 = (struct layer2 *)tmp;
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    {
    printk("<3>kzalloc layer2 failed\n");
    }
    return ((struct layer2 *)0);
  } else {
  }
  l2->next_id = 1U;
  l2->down_id = 65534U;
  l2->up = ch;
  l2->ch.st = ch->st;
  l2->ch.send = & l2_send;
  l2->ch.ctrl = & l2_ctrl;
  if ((int )protocol == 17) {
    goto case_17;
  } else
  if ((int )protocol == 16) {
    goto case_16;
  } else
  if ((int )protocol == 35) {
    goto case_35;
  } else {
    goto switch_default;
    if (0) {
      case_17:
      {
      test_and_set_bit(1, (unsigned long volatile *)(& l2->flag));
      test_and_set_bit(18, (unsigned long volatile *)(& l2->flag));
      test_and_set_bit(3, (unsigned long volatile *)(& l2->flag));
      l2->sapi = (signed char )sapi;
      l2->maxlen = 260U;
      tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& options));
      }
      if (tmp___0 != 0) {
        l2->window = 7U;
      } else {
        l2->window = 1U;
      }
      {
      tmp___1 = constant_test_bit(2U, (unsigned long const volatile *)(& options));
      }
      if (tmp___1 != 0) {
        {
        test_and_set_bit(14, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
      {
      tmp___2 = constant_test_bit(3U, (unsigned long const volatile *)(& options));
      }
      if (tmp___2 != 0) {
        {
        test_and_set_bit(15, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
      {
      l2->tei = (signed char )tei;
      l2->T200 = 1000;
      l2->N200 = 3;
      l2->T203 = 10000;
      tmp___3 = constant_test_bit(1U, (unsigned long const volatile *)(& options));
      }
      if (tmp___3 != 0) {
        rq.protocol = 4U;
      } else {
        rq.protocol = 2U;
      }
      {
      rq.adr.channel = (unsigned char)0;
      (*(((l2->ch.st)->dev)->D.ctrl))(& ((l2->ch.st)->dev)->D, 256U, (void *)(& rq));
      }
      goto ldv_39288;
      case_16:
      {
      test_and_set_bit(1, (unsigned long volatile *)(& l2->flag));
      test_and_set_bit(3, (unsigned long volatile *)(& l2->flag));
      test_and_set_bit(2, (unsigned long volatile *)(& l2->flag));
      l2->sapi = (signed char )sapi;
      l2->maxlen = 260U;
      tmp___4 = constant_test_bit(1U, (unsigned long const volatile *)(& options));
      }
      if (tmp___4 != 0) {
        l2->window = 7U;
      } else {
        l2->window = 1U;
      }
      {
      tmp___5 = constant_test_bit(2U, (unsigned long const volatile *)(& options));
      }
      if (tmp___5 != 0) {
        {
        test_and_set_bit(14, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
      {
      tmp___6 = constant_test_bit(3U, (unsigned long const volatile *)(& options));
      }
      if (tmp___6 != 0) {
        {
        test_and_set_bit(15, (unsigned long volatile *)(& l2->flag));
        }
      } else {
      }
      {
      l2->tei = (signed char )tei;
      l2->T200 = 1000;
      l2->N200 = 3;
      l2->T203 = 10000;
      tmp___7 = constant_test_bit(1U, (unsigned long const volatile *)(& options));
      }
      if (tmp___7 != 0) {
        rq.protocol = 3U;
      } else {
        rq.protocol = 1U;
      }
      {
      rq.adr.channel = (unsigned char)0;
      (*(((l2->ch.st)->dev)->D.ctrl))(& ((l2->ch.st)->dev)->D, 256U, (void *)(& rq));
      }
      goto ldv_39288;
      case_35:
      {
      test_and_set_bit(0, (unsigned long volatile *)(& l2->flag));
      l2->window = 7U;
      l2->maxlen = 2048U;
      l2->T200 = 1000;
      l2->N200 = 4;
      l2->T203 = 5000;
      l2->addr.A = (u_char )3U;
      l2->addr.B = (u_char )1U;
      }
      goto ldv_39288;
      switch_default:
      {
      printk("<3>layer2 create failed prt %x\n", protocol);
      kfree((void const *)l2);
      }
      return ((struct layer2 *)0);
    } else {
    }
  }
  ldv_39288:
  {
  skb_queue_head_init(& l2->i_queue);
  skb_queue_head_init(& l2->ui_queue);
  skb_queue_head_init(& l2->down_queue);
  skb_queue_head_init(& l2->tmp_queue);
  InitWin(l2);
  l2->l2m.fsm = & l2fsm;
  tmp___8 = constant_test_bit(0U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp___8 != 0) {
    l2->l2m.state = 3;
  } else {
    {
    tmp___9 = constant_test_bit(14U, (unsigned long const volatile *)(& l2->flag));
    }
    if (tmp___9 != 0) {
      l2->l2m.state = 3;
    } else {
      {
      tmp___10 = constant_test_bit(18U, (unsigned long const volatile *)(& l2->flag));
      }
      if (tmp___10 != 0) {
        l2->l2m.state = 3;
      } else {
        l2->l2m.state = 0;
      }
    }
  }
  {
  l2->l2m.debug = (int )*debug___4;
  l2->l2m.userdata = (void *)l2;
  l2->l2m.userint = 0;
  l2->l2m.printdebug = & l2m_debug;
  mISDN_FsmInitTimer(& l2->l2m, & l2->t200);
  mISDN_FsmInitTimer(& l2->l2m, & l2->t203);
  }
  return (l2);
}
}
static int x75create(struct channel_req *crq )
{ struct layer2 *l2 ;
  {
  if (crq->protocol != 35U) {
    return (-93);
  } else {
  }
  {
  l2 = create_l2(crq->ch, crq->protocol, 0UL, 0, 0);
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    return (-12);
  } else {
  }
  crq->ch = & l2->ch;
  crq->protocol = 34U;
  return (0);
}
}
static struct Bprotocol X75SLP = {{(struct list_head *)0, (struct list_head *)0}, (char *)"X75SLP", 8U, & x75create};
int Isdnl2_Init(u_int *deb )
{
  {
  {
  debug___4 = deb;
  mISDN_register_Bprotocol(& X75SLP);
  l2fsm.state_count = 8;
  l2fsm.event_count = 22;
  l2fsm.strEvent = (char **)(& strL2Event);
  l2fsm.strState = (char **)(& strL2State);
  mISDN_FsmNew(& l2fsm, (struct FsmNode *)(& L2FnList), 88);
  TEIInit(deb);
  }
  return (0);
}
}
void Isdnl2_cleanup(void)
{
  {
  {
  mISDN_unregister_Bprotocol(& X75SLP);
  TEIFree();
  mISDN_FsmFree(& l2fsm);
  }
  return;
}
}
extern void get_random_bytes(void * , int ) ;
static u_int *debug___5 ;
static struct Fsm deactfsm = {(FSMFNPTR (**)(struct FsmInst * , int , void * ))0, 0, 0, (char **)0, (char **)0};
static struct Fsm teifsmu = {(FSMFNPTR (**)(struct FsmInst * , int , void * ))0, 0, 0, (char **)0, (char **)0};
static struct Fsm teifsmn = {(FSMFNPTR (**)(struct FsmInst * , int , void * ))0, 0, 0, (char **)0, (char **)0};
static char *strDeactState[3U] = { (char *)"ST_L1_DEACT", (char *)"ST_L1_DEACT_PENDING", (char *)"ST_L1_ACTIV"};
static char *strDeactEvent[6U] = { (char *)"EV_ACTIVATE", (char *)"EV_ACTIVATE_IND", (char *)"EV_DEACTIVATE", (char *)"EV_DEACTIVATE_IND",
        (char *)"EV_UI", (char *)"EV_DATIMER"};
static void da_debug(struct FsmInst *fi , char *fmt , ...)
{ struct manager *mgr ;
  struct va_format vaf ;
  va_list va ;
  {
  mgr = (struct manager *)fi->userdata;
  if ((*debug___5 & 2097152U) == 0U) {
    return;
  } else {
  }
  {
  __builtin_va_start(((__va_list_tag *)(& va)), fmt);
  vaf.fmt = (char const *)fmt;
  vaf.va = & va;
  printk("<7>mgr(%d): %pV\n", ((mgr->ch.st)->dev)->id, & vaf);
  __builtin_va_end(((& va)));
  }
  return;
}
}
static void da_activate(struct FsmInst *fi , int event , void *arg )
{ struct manager *mgr ;
  {
  mgr = (struct manager *)fi->userdata;
  if (fi->state == 1) {
    {
    mISDN_FsmDelTimer(& mgr->datimer, 1);
    }
  } else {
  }
  {
  mISDN_FsmChangeState(fi, 2);
  }
  return;
}
}
static void da_deactivate_ind(struct FsmInst *fi , int event , void *arg )
{
  {
  {
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void da_deactivate(struct FsmInst *fi , int event , void *arg )
{ struct manager *mgr ;
  struct layer2 *l2 ;
  u_long flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  {
  mgr = (struct manager *)fi->userdata;
  flags = _raw_read_lock_irqsave(& mgr->lock);
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  }
  goto ldv_38563;
  ldv_38562: ;
  if (l2->l2m.state > 3) {
    {
    _raw_read_unlock_irqrestore(& mgr->lock, flags);
    }
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___0;
  ldv_38563: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38562;
  } else {
    goto ldv_38564;
  }
  ldv_38564:
  {
  _raw_read_unlock_irqrestore(& mgr->lock, flags);
  tmp = constant_test_bit(5U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp == 0) {
    {
    mISDN_FsmAddTimer(& mgr->datimer, 10000, 5, (void *)0, 1);
    mISDN_FsmChangeState(fi, 1);
    }
  } else {
  }
  return;
}
}
static void da_ui(struct FsmInst *fi , int event , void *arg )
{ struct manager *mgr ;
  int tmp ;
  {
  {
  mgr = (struct manager *)fi->userdata;
  tmp = constant_test_bit(5U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp == 0) {
    {
    mISDN_FsmDelTimer(& mgr->datimer, 2);
    mISDN_FsmAddTimer(& mgr->datimer, 10000, 5, (void *)0, 2);
    }
  } else {
  }
  return;
}
}
static void da_timer(struct FsmInst *fi , int event , void *arg )
{ struct manager *mgr ;
  struct layer2 *l2 ;
  u_long flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  mgr = (struct manager *)fi->userdata;
  flags = _raw_read_lock_irqsave(& mgr->lock);
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  }
  goto ldv_38593;
  ldv_38592: ;
  if (l2->l2m.state > 3) {
    {
    _raw_read_unlock_irqrestore(& mgr->lock, flags);
    mISDN_FsmChangeState(fi, 2);
    }
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___0;
  ldv_38593: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38592;
  } else {
    goto ldv_38594;
  }
  ldv_38594:
  {
  _raw_read_unlock_irqrestore(& mgr->lock, flags);
  mISDN_FsmChangeState(fi, 0);
  _queue_data(& mgr->ch, 513U, 65535U, 0U, (void *)0, 32U);
  }
  return;
}
}
static struct FsmNode DeactFnList[6U] = { {0, 1, & da_activate},
        {2, 3, & da_deactivate_ind},
        {2, 2, & da_deactivate},
        {1, 0, & da_activate},
        {1, 4, & da_ui},
        {1, 5, & da_timer}};
static char *strTeiState[3U] = { (char *)"ST_TEI_NOP", (char *)"ST_TEI_IDREQ", (char *)"ST_TEI_IDVERIFY"};
static char *strTeiEvent[9U] =
  { (char *)"EV_IDREQ", (char *)"EV_ASSIGN", (char *)"EV_ASSIGN_REQ", (char *)"EV_DENIED",
        (char *)"EV_CHKREQ", (char *)"EV_CHKRESP", (char *)"EV_REMOVE", (char *)"EV_VERIFY",
        (char *)"EV_TIMER"};
static void tei_debug(struct FsmInst *fi , char *fmt , ...)
{ struct teimgr *tm ;
  struct va_format vaf ;
  va_list va ;
  {
  tm = (struct teimgr *)fi->userdata;
  if ((*debug___5 & 2097152U) == 0U) {
    return;
  } else {
  }
  {
  __builtin_va_start(((& va)), fmt);
  vaf.fmt = (char const *)fmt;
  vaf.va = & va;
  printk("<7>sapi(%d) tei(%d): %pV\n", (int )(tm->l2)->sapi, (int )(tm->l2)->tei,
         & vaf);
  __builtin_va_end(((& va)));
  }
  return;
}
}
static int get_free_id(struct manager *mgr )
{ u64 ids ;
  int i ;
  struct layer2 *l2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  ids = 0ULL;
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  goto ldv_38634;
  ldv_38633: ;
  if (l2->ch.nr > 63U) {
    {
    printk("<4>%s: more as 63 layer2 for one device\n", "get_free_id");
    }
    return (-16);
  } else {
  }
  {
  test_and_set_bit((int )l2->ch.nr, (unsigned long volatile *)(& ids));
  __mptr___0 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___0;
  }
  ldv_38634: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38633;
  } else {
    goto ldv_38635;
  }
  ldv_38635:
  i = 1;
  goto ldv_38637;
  ldv_38636:
  {
  tmp = variable_test_bit(i, (unsigned long const volatile *)(& ids));
  }
  if (tmp == 0) {
    return (i);
  } else {
  }
  i = i + 1;
  ldv_38637: ;
  if (i <= 63) {
    goto ldv_38636;
  } else {
    goto ldv_38638;
  }
  ldv_38638:
  {
  printk("<4>%s: more as 63 layer2 for one device\n", "get_free_id");
  }
  return (-16);
}
}
static int get_free_tei(struct manager *mgr )
{ u64 ids ;
  int i ;
  struct layer2 *l2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  {
  ids = 0ULL;
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  goto ldv_38651;
  ldv_38650: ;
  if (l2->ch.nr == 0U) {
    goto ldv_38649;
  } else {
  }
  if ((l2->ch.addr & 255U) != 0U) {
    goto ldv_38649;
  } else {
  }
  i = (int )(l2->ch.addr >> 8);
  if (i <= 63) {
    goto ldv_38649;
  } else {
  }
  {
  i = i + -64;
  test_and_set_bit(i, (unsigned long volatile *)(& ids));
  }
  ldv_38649:
  __mptr___0 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___0;
  ldv_38651: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38650;
  } else {
    goto ldv_38652;
  }
  ldv_38652:
  i = 0;
  goto ldv_38654;
  ldv_38653:
  {
  tmp = variable_test_bit(i, (unsigned long const volatile *)(& ids));
  }
  if (tmp == 0) {
    return (i + 64);
  } else {
  }
  i = i + 1;
  ldv_38654: ;
  if (i <= 63) {
    goto ldv_38653;
  } else {
    goto ldv_38655;
  }
  ldv_38655:
  {
  printk("<4>%s: more as 63 dynamic tei for one device\n", "get_free_tei");
  }
  return (-1);
}
}
static void teiup_create(struct manager *mgr , u_int prim , int len , void *arg )
{ struct sk_buff *skb ;
  struct mISDNhead *hh ;
  int err ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___0 ;
  {
  {
  skb = mI_alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = (mgr->ch.nr << 16) | mgr->ch.addr;
  if (len != 0) {
    {
    __len = (size_t )len;
    tmp___0 = skb_put(skb, (unsigned int )len);
    __ret = memcpy((void *)tmp___0, (void const *)arg, __len);
    }
  } else {
  }
  {
  err = (*((mgr->up)->send))(mgr->up, skb);
  }
  if (err != 0) {
    {
    printk("<4>%s: err=%d\n", "teiup_create", err);
    consume_skb(skb);
    }
  } else {
  }
  return;
}
}
static u_int new_id(struct manager *mgr )
{ u_int id ;
  u_int tmp ;
  {
  tmp = mgr->nextid;
  mgr->nextid = mgr->nextid + 1U;
  id = tmp;
  if (id == 32767U) {
    mgr->nextid = 1U;
  } else {
  }
  id = id << 16;
  id = id | 32512U;
  id = id | 63U;
  return (id);
}
}
static void do_send(struct manager *mgr )
{ int tmp ;
  struct sk_buff *skb ;
  struct sk_buff *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = constant_test_bit(16U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp == 0) {
    return;
  } else {
  }
  {
  tmp___2 = test_and_set_bit(17, (unsigned long volatile *)(& mgr->options));
  }
  if (tmp___2 == 0) {
    {
    tmp___0 = skb_dequeue(& mgr->sendq);
    skb = tmp___0;
    }
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      {
      test_and_clear_bit(17, (unsigned long volatile *)(& mgr->options));
      }
      return;
    } else {
    }
    {
    mgr->lastid = ((struct mISDNhead *)(& skb->cb))->id;
    mISDN_FsmEvent(& mgr->deact, 4, (void *)0);
    tmp___1 = (*(mgr->ch.recv))(mgr->ch.peer, skb);
    }
    if (tmp___1 != 0) {
      {
      consume_skb(skb);
      test_and_clear_bit(17, (unsigned long volatile *)(& mgr->options));
      mgr->lastid = 65534U;
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void do_ack(struct manager *mgr , u_int id )
{ struct sk_buff *skb ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = constant_test_bit(17U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp___1 != 0) {
    if (mgr->lastid == id) {
      {
      tmp___0 = constant_test_bit(16U, (unsigned long const volatile *)(& mgr->options));
      }
      if (tmp___0 != 0) {
        {
        skb = skb_dequeue(& mgr->sendq);
        }
        if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
          {
          mgr->lastid = ((struct mISDNhead *)(& skb->cb))->id;
          tmp = (*(mgr->ch.recv))(mgr->ch.peer, skb);
          }
          if (tmp == 0) {
            return;
          } else {
          }
          {
          consume_skb(skb);
          }
        } else {
        }
      } else {
      }
      {
      mgr->lastid = 65534U;
      test_and_clear_bit(17, (unsigned long volatile *)(& mgr->options));
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void mgr_send_down(struct manager *mgr , struct sk_buff *skb )
{ int tmp ;
  {
  {
  skb_queue_tail(& mgr->sendq, skb);
  tmp = constant_test_bit(16U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp == 0) {
    {
    _queue_data(& mgr->ch, 257U, 65535U, 0U, (void *)0, 208U);
    }
  } else {
    {
    do_send(mgr);
    }
  }
  return;
}
}
static int dl_unit_data(struct manager *mgr , struct sk_buff *skb )
{ int tmp ;
  int tmp___0 ;
  {
  {
  tmp = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp == 0) {
    return (-22);
  } else {
  }
  {
  tmp___0 = constant_test_bit(16U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp___0 == 0) {
    {
    _queue_data(& mgr->ch, 257U, 65535U, 0U, (void *)0, 208U);
    }
  } else {
  }
  {
  skb_push(skb, 3U);
  *(skb->data) = (unsigned char)2;
  *(skb->data + 1UL) = (unsigned char)255;
  *(skb->data + 2UL) = (unsigned char)3;
  ((struct mISDNhead *)(& skb->cb))->prim = 8193U;
  ((struct mISDNhead *)(& skb->cb))->id = new_id(mgr);
  skb_queue_tail(& mgr->sendq, skb);
  do_send(mgr);
  }
  return (0);
}
}
static unsigned int random_ri(void)
{ u16 x ;
  {
  {
  get_random_bytes((void *)(& x), 2);
  }
  return ((unsigned int )x);
}
}
static struct layer2 *findtei(struct manager *mgr , int tei )
{ struct layer2 *l2 ;
  u_long flags ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  flags = _raw_read_lock_irqsave(& mgr->lock);
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  }
  goto ldv_38710;
  ldv_38709: ;
  if ((int )l2->sapi == 0) {
    if ((int )l2->tei > 0) {
      if ((int )l2->tei != 127) {
        if ((int )l2->tei == tei) {
          goto done;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___0;
  ldv_38710: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38709;
  } else {
    goto ldv_38711;
  }
  ldv_38711:
  l2 = (struct layer2 *)0;
  done:
  {
  _raw_read_unlock_irqrestore(& mgr->lock, flags);
  }
  return (l2);
}
}
static void put_tei_msg(struct manager *mgr , u_char m_id , unsigned int ri , int tei )
{ struct sk_buff *skb ;
  u_char bp[8U] ;
  int tmp ;
  u_int tmp___0 ;
  {
  {
  bp[0] = (u_char )252U;
  tmp = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp != 0) {
    bp[0] = (u_char )((unsigned int )bp[0] | 2U);
  } else {
  }
  {
  bp[1] = (u_char )255U;
  bp[2] = (u_char )3U;
  bp[3] = (u_char )15U;
  bp[4] = (u_char )(ri >> 8);
  bp[5] = (u_char )ri;
  bp[6] = m_id;
  bp[7] = (u_char )((int )((signed char )(tei << 1)) | 1);
  tmp___0 = new_id(mgr);
  skb = _alloc_mISDN_skb(8193U, tmp___0, 8U, (void *)(& bp), 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    {
    printk("<4>%s: no skb for tei msg\n", "put_tei_msg");
    }
    return;
  } else {
  }
  {
  mgr_send_down(mgr, skb);
  }
  return;
}
}
static void tei_id_request(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  unsigned int tmp ;
  {
  tm = (struct teimgr *)fi->userdata;
  if ((int )(tm->l2)->tei != 127) {
    {
    (*(tm->tei_m.printdebug))(& tm->tei_m, (char *)"assign request for already assigned tei %d",
                              (int )(tm->l2)->tei);
    }
    return;
  } else {
  }
  {
  tmp = random_ri();
  tm->ri = (int )tmp;
  }
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(& tm->tei_m, (char *)"assign request ri %d", tm->ri);
    }
  } else {
  }
  {
  put_tei_msg(tm->mgr, (u_char )1, (unsigned int )tm->ri, 127);
  mISDN_FsmChangeState(fi, 1);
  mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 1);
  tm->nval = 3;
  }
  return;
}
}
static void tei_id_assign(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  struct layer2 *l2 ;
  u_char *dp ;
  int ri ;
  int tei ;
  u_char *tmp ;
  u_char *tmp___0 ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tmp = dp;
  dp = dp + 1;
  ri = (int )((unsigned int )*tmp << 8);
  tmp___0 = dp;
  dp = dp + 1;
  ri = (int )*tmp___0 + ri;
  dp = dp + 1;
  tei = (int )*dp >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity assign ri %d tei %d", ri, tei);
    }
  } else {
  }
  {
  l2 = findtei(tm->mgr, tei);
  }
  if ((unsigned long )l2 != (unsigned long )((struct layer2 *)0)) {
    if ((l2->tm)->ri != ri) {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"possible duplicate assignment tei %d",
                                tei);
      tei_l2(l2, 24324U, 0UL);
      }
    } else
    if (tm->ri == ri) {
      {
      mISDN_FsmDelTimer(& tm->timer, 1);
      mISDN_FsmChangeState(fi, 0);
      tei_l2(tm->l2, 6148U, (u_long )tei);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void tei_id_test_dup(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  struct layer2 *l2 ;
  u_char *dp ;
  int tei ;
  int ri ;
  u_char *tmp ;
  u_char *tmp___0 ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tmp = dp;
  dp = dp + 1;
  ri = (int )((unsigned int )*tmp << 8);
  tmp___0 = dp;
  dp = dp + 1;
  ri = (int )*tmp___0 + ri;
  dp = dp + 1;
  tei = (int )*dp >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"foreign identity assign ri %d tei %d",
                              ri, tei);
    }
  } else {
  }
  {
  l2 = findtei(tm->mgr, tei);
  }
  if ((unsigned long )l2 != (unsigned long )((struct layer2 *)0)) {
    if ((l2->tm)->ri != ri) {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"possible duplicate assignment tei %d",
                                tei);
      mISDN_FsmEvent(& (l2->tm)->tei_m, 7, (void *)0);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void tei_id_denied(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  int ri ;
  int tei ;
  u_char *tmp ;
  u_char *tmp___0 ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tmp = dp;
  dp = dp + 1;
  ri = (int )((unsigned int )*tmp << 8);
  tmp___0 = dp;
  dp = dp + 1;
  ri = (int )*tmp___0 + ri;
  dp = dp + 1;
  tei = (int )*dp >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity denied ri %d tei %d", ri, tei);
    }
  } else {
  }
  return;
}
}
static void tei_id_chk_req(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  int tei ;
  unsigned int tmp ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tei = (int )*(dp + 3UL) >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity check req tei %d", tei);
    }
  } else {
  }
  if ((int )(tm->l2)->tei != 127) {
    if (tei == 127) {
      {
      mISDN_FsmDelTimer(& tm->timer, 4);
      mISDN_FsmChangeState(& tm->tei_m, 0);
      tmp = random_ri();
      put_tei_msg(tm->mgr, (u_char )5, tmp, (int )(tm->l2)->tei);
      }
    } else
    if ((int )(tm->l2)->tei == tei) {
      {
      mISDN_FsmDelTimer(& tm->timer, 4);
      mISDN_FsmChangeState(& tm->tei_m, 0);
      tmp = random_ri();
      put_tei_msg(tm->mgr, (u_char )5, tmp, (int )(tm->l2)->tei);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void tei_id_remove(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  int tei ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tei = (int )*(dp + 3UL) >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity remove tei %d", tei);
    }
  } else {
  }
  if ((int )(tm->l2)->tei != 127) {
    if (tei == 127) {
      {
      mISDN_FsmDelTimer(& tm->timer, 5);
      mISDN_FsmChangeState(& tm->tei_m, 0);
      tei_l2(tm->l2, 6660U, 0UL);
      }
    } else
    if ((int )(tm->l2)->tei == tei) {
      {
      mISDN_FsmDelTimer(& tm->timer, 5);
      mISDN_FsmChangeState(& tm->tei_m, 0);
      tei_l2(tm->l2, 6660U, 0UL);
      }
    } else {
    }
  } else {
  }
  return;
}
}
static void tei_id_verify(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  {
  tm = (struct teimgr *)fi->userdata;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"id verify request for tei %d", (int )(tm->l2)->tei);
    }
  } else {
  }
  {
  put_tei_msg(tm->mgr, (u_char )7, 0U, (int )(tm->l2)->tei);
  mISDN_FsmChangeState(& tm->tei_m, 2);
  mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 2);
  tm->nval = 2;
  }
  return;
}
}
static void tei_id_req_tout(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  unsigned int tmp ;
  {
  tm = (struct teimgr *)fi->userdata;
  tm->nval = tm->nval - 1;
  if (tm->nval != 0) {
    {
    tmp = random_ri();
    tm->ri = (int )tmp;
    }
    if ((*debug___5 & 1048576U) != 0U) {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"assign req(%d) ri %d", 4 - tm->nval,
                                tm->ri);
      }
    } else {
    }
    {
    put_tei_msg(tm->mgr, (u_char )1, (unsigned int )tm->ri, 127);
    mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 3);
    }
  } else {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"assign req failed");
    tei_l2(tm->l2, 24324U, 0UL);
    mISDN_FsmChangeState(fi, 0);
    }
  }
  return;
}
}
static void tei_id_ver_tout(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  {
  tm = (struct teimgr *)fi->userdata;
  tm->nval = tm->nval - 1;
  if (tm->nval != 0) {
    if ((*debug___5 & 1048576U) != 0U) {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"id verify req(%d) for tei %d", 3 - tm->nval,
                                (int )(tm->l2)->tei);
      }
    } else {
    }
    {
    put_tei_msg(tm->mgr, (u_char )7, 0U, (int )(tm->l2)->tei);
    mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 4);
    }
  } else {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"verify req for tei %d failed", (int )(tm->l2)->tei);
    tei_l2(tm->l2, 6660U, 0UL);
    mISDN_FsmChangeState(fi, 0);
    }
  }
  return;
}
}
static struct FsmNode TeiFnListUser[11U] =
  { {0, 0, & tei_id_request},
        {0, 1, & tei_id_test_dup},
        {0, 7, & tei_id_verify},
        {0, 6, & tei_id_remove},
        {0, 4, & tei_id_chk_req},
        {1, 8, & tei_id_req_tout},
        {1, 1, & tei_id_assign},
        {1, 3, & tei_id_denied},
        {2, 8, & tei_id_ver_tout},
        {2, 6, & tei_id_remove},
        {2, 4, & tei_id_chk_req}};
static void tei_l2remove(struct layer2 *l2 )
{
  {
  {
  put_tei_msg((l2->tm)->mgr, (u_char )6, 0U, (int )l2->tei);
  tei_l2(l2, 6660U, 0UL);
  list_del(& l2->ch.list);
  (*(l2->ch.ctrl))(& l2->ch, 512U, (void *)0);
  }
  return;
}
}
static void tei_assign_req(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  u_char *tmp ;
  u_char *tmp___0 ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  if ((int )(tm->l2)->tei == 127) {
    {
    (*(tm->tei_m.printdebug))(& tm->tei_m, (char *)"net tei assign request without tei");
    }
    return;
  } else {
  }
  tmp = dp;
  dp = dp + 1;
  tm->ri = (int )((unsigned int )*tmp << 8);
  tmp___0 = dp;
  dp = dp + 1;
  tm->ri = tm->ri + (int )*tmp___0;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(& tm->tei_m, (char *)"net assign request ri %d teim %d",
                              tm->ri, (int )*dp);
    }
  } else {
  }
  {
  put_tei_msg(tm->mgr, (u_char )2, (unsigned int )tm->ri, (int )(tm->l2)->tei);
  mISDN_FsmChangeState(fi, 0);
  }
  return;
}
}
static void tei_id_chk_req_net(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  {
  tm = (struct teimgr *)fi->userdata;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"id check request for tei %d", (int )(tm->l2)->tei);
    }
  } else {
  }
  {
  tm->rcnt = 0;
  put_tei_msg(tm->mgr, (u_char )4, 0U, (int )(tm->l2)->tei);
  mISDN_FsmChangeState(& tm->tei_m, 2);
  mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 2);
  tm->nval = 2;
  }
  return;
}
}
static void tei_id_chk_resp(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  int tei ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tei = (int )*(dp + 3UL) >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity check resp tei %d", tei);
    }
  } else {
  }
  if ((int )(tm->l2)->tei == tei) {
    tm->rcnt = tm->rcnt + 1;
  } else {
  }
  return;
}
}
static void tei_id_verify_net(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  u_char *dp ;
  int tei ;
  {
  tm = (struct teimgr *)fi->userdata;
  dp = (u_char *)arg;
  tei = (int )*(dp + 3UL) >> 1;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(fi, (char *)"identity verify req tei %d/%d", tei, (int )(tm->l2)->tei);
    }
  } else {
  }
  if ((int )(tm->l2)->tei == tei) {
    {
    tei_id_chk_req_net(fi, event, arg);
    }
  } else {
  }
  return;
}
}
static void tei_id_ver_tout_net(struct FsmInst *fi , int event , void *arg )
{ struct teimgr *tm ;
  {
  tm = (struct teimgr *)fi->userdata;
  if (tm->rcnt == 1) {
    if ((*debug___5 & 1048576U) != 0U) {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"check req for tei %d successful\n", (int )(tm->l2)->tei);
      }
    } else {
    }
    {
    mISDN_FsmChangeState(fi, 0);
    }
  } else
  if (tm->rcnt > 1) {
    {
    tei_l2remove(tm->l2);
    }
  } else {
    tm->nval = tm->nval - 1;
    if (tm->nval != 0) {
      if ((*debug___5 & 1048576U) != 0U) {
        {
        (*(tm->tei_m.printdebug))(fi, (char *)"id check req(%d) for tei %d", 3 - tm->nval,
                                  (int )(tm->l2)->tei);
        }
      } else {
      }
      {
      put_tei_msg(tm->mgr, (u_char )4, 0U, (int )(tm->l2)->tei);
      mISDN_FsmAddTimer(& tm->timer, tm->tval, 8, (void *)0, 4);
      }
    } else {
      {
      (*(tm->tei_m.printdebug))(fi, (char *)"check req for tei %d failed", (int )(tm->l2)->tei);
      mISDN_FsmChangeState(fi, 0);
      tei_l2remove(tm->l2);
      }
    }
  }
  return;
}
}
static struct FsmNode TeiFnListNet[5U] = { {0, 2, & tei_assign_req},
        {0, 7, & tei_id_verify_net},
        {0, 4, & tei_id_chk_req_net},
        {2, 8, & tei_id_ver_tout_net},
        {2, 5, & tei_id_chk_resp}};
static void tei_ph_data_ind(struct teimgr *tm , u_int mt , u_char *dp , int len )
{ int tmp ;
  {
  {
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& (tm->l2)->flag));
  }
  if (tmp != 0) {
    return;
  } else {
  }
  if ((*debug___5 & 1048576U) != 0U) {
    {
    (*(tm->tei_m.printdebug))(& tm->tei_m, (char *)"tei handler mt %x", mt);
    }
  } else {
  }
  if (mt == 2U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 1, (void *)dp);
    }
  } else
  if (mt == 3U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 3, (void *)dp);
    }
  } else
  if (mt == 4U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 4, (void *)dp);
    }
  } else
  if (mt == 6U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 6, (void *)dp);
    }
  } else
  if (mt == 7U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 7, (void *)dp);
    }
  } else
  if (mt == 5U) {
    {
    mISDN_FsmEvent(& tm->tei_m, 5, (void *)dp);
    }
  } else {
  }
  return;
}
}
static struct layer2 *create_new_tei(struct manager *mgr , int tei , int sapi )
{ u_long opt ;
  u_long flags ;
  int id ;
  struct layer2 *l2 ;
  void *tmp ;
  {
  opt = 0UL;
  if ((unsigned long )mgr->up == (unsigned long )((struct mISDNchannel *)0)) {
    return ((struct layer2 *)0);
  } else {
  }
  if (tei >= 0) {
    if (tei <= 63) {
      {
      test_and_set_bit(3, (unsigned long volatile *)(& opt));
      }
    } else {
    }
  } else {
  }
  if ((((mgr->ch.st)->dev)->Dprotocols & 24U) != 0U) {
    {
    test_and_set_bit(1, (unsigned long volatile *)(& opt));
    }
  } else {
  }
  {
  l2 = create_l2(mgr->up, 17U, opt, tei, sapi);
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    {
    printk("<4>%s:no memory for layer2\n", "create_new_tei");
    }
    return ((struct layer2 *)0);
  } else {
  }
  {
  tmp = kzalloc(224UL, 208U);
  l2->tm = (struct teimgr *)tmp;
  }
  if ((unsigned long )l2->tm == (unsigned long )((struct teimgr *)0)) {
    {
    kfree((void const *)l2);
    printk("<4>%s:no memory for teimgr\n", "create_new_tei");
    }
    return ((struct layer2 *)0);
  } else {
  }
  {
  (l2->tm)->mgr = mgr;
  (l2->tm)->l2 = l2;
  (l2->tm)->tei_m.debug = (int )*debug___5 & 2097152;
  (l2->tm)->tei_m.userdata = (void *)l2->tm;
  (l2->tm)->tei_m.printdebug = & tei_debug;
  (l2->tm)->tei_m.fsm = & teifsmn;
  (l2->tm)->tei_m.state = 0;
  (l2->tm)->tval = 2000;
  mISDN_FsmInitTimer(& (l2->tm)->tei_m, & (l2->tm)->timer);
  flags = _raw_write_lock_irqsave(& mgr->lock);
  id = get_free_id(mgr);
  list_add_tail(& l2->list, & mgr->layer2);
  _raw_write_unlock_irqrestore(& mgr->lock, flags);
  }
  if (id < 0) {
    {
    (*(l2->ch.ctrl))(& l2->ch, 512U, (void *)0);
    printk("<4>%s:no free id\n", "create_new_tei");
    }
    return ((struct layer2 *)0);
  } else {
    {
    l2->ch.nr = (u_int )id;
    __add_layer2(& l2->ch, mgr->ch.st);
    l2->ch.recv = mgr->ch.recv;
    l2->ch.peer = mgr->ch.peer;
    (*(l2->ch.ctrl))(& l2->ch, 256U, (void *)0);
    }
  }
  return (l2);
}
}
static void new_tei_req(struct manager *mgr , u_char *dp )
{ int tei ;
  int ri ;
  struct layer2 *l2 ;
  {
  ri = (int )*dp << 8;
  ri = (int )*(dp + 1UL) + ri;
  if ((unsigned long )mgr->up == (unsigned long )((struct mISDNchannel *)0)) {
    goto denied;
  } else {
  }
  if (((int )*(dp + 3UL) & 1) == 0) {
    goto denied;
  } else {
  }
  if ((unsigned int )*(dp + 3UL) != 255U) {
    tei = (int )*(dp + 3UL) >> 1;
  } else {
    {
    tei = get_free_tei(mgr);
    }
  }
  if (tei < 0) {
    {
    printk("<4>%s:No free tei\n", "new_tei_req");
    }
    goto denied;
  } else {
  }
  {
  l2 = create_new_tei(mgr, tei, 0);
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    goto denied;
  } else {
    {
    mISDN_FsmEvent(& (l2->tm)->tei_m, 2, (void *)dp);
    }
  }
  return;
  denied:
  {
  put_tei_msg(mgr, (u_char )3, (unsigned int )ri, 127);
  }
  return;
}
}
static int ph_data_ind(struct manager *mgr , struct sk_buff *skb )
{ int ret ;
  struct layer2 *l2 ;
  struct layer2 *nl2 ;
  u_char mt ;
  int tmp ;
  int tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ret = -22;
  if (skb->len <= 7U) {
    if ((*debug___5 & 1048576U) != 0U) {
      {
      printk("<7>%s: short mgr frame %d/8\n", "ph_data_ind", skb->len);
      }
    } else {
    }
    goto done;
  } else {
  }
  if ((unsigned int )((int )*(skb->data) >> 2) != 63U) {
    goto done;
  } else {
  }
  if ((int )*(skb->data) & 1) {
    goto done;
  } else {
  }
  if (((int )*(skb->data + 1UL) & 1) == 0) {
    goto done;
  } else {
  }
  if ((unsigned int )((int )*(skb->data + 1UL) >> 1) != 127U) {
    goto done;
  } else {
  }
  if (((int )*(skb->data + 2UL) & 239) != 3) {
    goto done;
  } else {
  }
  if ((unsigned int )*(skb->data + 3UL) != 15U) {
    goto done;
  } else {
  }
  mt = *(skb->data + 6UL);
  if ((int )mt == 1) {
    goto case_1;
  } else
  if ((int )mt == 5) {
    goto case_5;
  } else
  if ((int )mt == 7) {
    goto case_7;
  } else
  if ((int )mt == 2) {
    goto case_2;
  } else
  if ((int )mt == 3) {
    goto case_3;
  } else
  if ((int )mt == 4) {
    goto case_4;
  } else
  if ((int )mt == 6) {
    goto case_6;
  } else {
    goto switch_default;
    if (0) {
      case_1: ;
      case_5: ;
      case_7:
      {
      tmp = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
      }
      if (tmp == 0) {
        goto done;
      } else {
      }
      goto ldv_38877;
      case_2: ;
      case_3: ;
      case_4: ;
      case_6:
      {
      tmp___0 = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
      }
      if (tmp___0 != 0) {
        goto done;
      } else {
      }
      goto ldv_38877;
      switch_default: ;
      goto done;
    } else {
    }
  }
  ldv_38877:
  ret = 0;
  if ((unsigned int )mt == 1U) {
    {
    new_tei_req(mgr, skb->data + 4U);
    }
    goto done;
  } else {
  }
  __mptr = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr;
  __mptr___0 = (struct list_head const *)l2->list.next;
  nl2 = (struct layer2 *)__mptr___0;
  goto ldv_38890;
  ldv_38889:
  {
  tei_ph_data_ind(l2->tm, (u_int )mt, skb->data + 4U, (int )(skb->len - 4U));
  l2 = nl2;
  __mptr___1 = (struct list_head const *)nl2->list.next;
  nl2 = (struct layer2 *)__mptr___1;
  }
  ldv_38890: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_38889;
  } else {
    goto ldv_38891;
  }
  ldv_38891: ;
  done: ;
  return (ret);
}
}
int l2_tei(struct layer2 *l2 , u_int cmd , u_long arg )
{ struct teimgr *tm ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  tm = l2->tm;
  tmp = constant_test_bit(15U, (unsigned long const volatile *)(& l2->flag));
  }
  if (tmp != 0) {
    return (0);
  } else {
  }
  if ((*debug___5 & 1048576U) != 0U) {
    {
    printk("<7>%s: cmd(%x)\n", "l2_tei", cmd);
    }
  } else {
  }
  if ((int )cmd == 6404) {
    goto case_6404;
  } else
  if ((int )cmd == 7940) {
    goto case_7940;
  } else
  if ((int )cmd == 7172) {
    goto case_7172;
  } else
  if ((int )cmd == 7428) {
    goto case_7428;
  } else
  if ((int )cmd == 7684) {
    goto case_7684;
  } else
  if (0) {
    case_6404:
    {
    mISDN_FsmEvent(& tm->tei_m, 0, (void *)0);
    }
    goto ldv_38900;
    case_7940:
    {
    tmp___0 = constant_test_bit(25U, (unsigned long const volatile *)(& (tm->mgr)->options));
    }
    if (tmp___0 != 0) {
      {
      mISDN_FsmEvent(& tm->tei_m, 4, (void *)(& l2->tei));
      }
    } else {
    }
    {
    tmp___1 = constant_test_bit(24U, (unsigned long const volatile *)(& (tm->mgr)->options));
    }
    if (tmp___1 != 0) {
      {
      mISDN_FsmEvent(& tm->tei_m, 7, (void *)0);
      }
    } else {
    }
    goto ldv_38900;
    case_7172:
    {
    tmp___2 = constant_test_bit(25U, (unsigned long const volatile *)(& (tm->mgr)->options));
    }
    if (tmp___2 != 0) {
      {
      mISDN_FsmEvent(& (tm->mgr)->deact, 0, (void *)0);
      }
    } else {
    }
    goto ldv_38900;
    case_7428:
    {
    tmp___3 = constant_test_bit(25U, (unsigned long const volatile *)(& (tm->mgr)->options));
    }
    if (tmp___3 != 0) {
      {
      mISDN_FsmEvent(& (tm->mgr)->deact, 2, (void *)0);
      }
    } else {
    }
    goto ldv_38900;
    case_7684:
    {
    tmp___4 = constant_test_bit(25U, (unsigned long const volatile *)(& (tm->mgr)->options));
    }
    if (tmp___4 != 0) {
      {
      mISDN_FsmEvent(& (tm->mgr)->deact, 4, (void *)0);
      }
    } else {
    }
    goto ldv_38900;
  } else {
  }
  ldv_38900: ;
  return (0);
}
}
void TEIrelease(struct layer2 *l2 )
{ struct teimgr *tm ;
  u_long flags ;
  {
  {
  tm = l2->tm;
  mISDN_FsmDelTimer(& tm->timer, 1);
  flags = _raw_write_lock_irqsave(& (tm->mgr)->lock);
  list_del(& l2->list);
  _raw_write_unlock_irqrestore(& (tm->mgr)->lock, flags);
  l2->tm = (struct teimgr *)0;
  kfree((void const *)tm);
  }
  return;
}
}
static int create_teimgr(struct manager *mgr , struct channel_req *crq )
{ struct layer2 *l2 ;
  u_long opt ;
  u_long flags ;
  int id ;
  char const *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___2 ;
  void *tmp___3 ;
  {
  opt = 0UL;
  if ((*debug___5 & 1048576U) != 0U) {
    {
    tmp = dev_name((struct device const *)(& ((mgr->ch.st)->dev)->dev));
    printk("<7>%s: %s proto(%x) adr(%d %d %d %d)\n", "create_teimgr", tmp, crq->protocol,
           (int )crq->adr.dev, (int )crq->adr.channel, (int )crq->adr.sapi, (int )crq->adr.tei);
    }
  } else {
  }
  if ((int )((signed char )crq->adr.tei) < 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )crq->adr.tei <= 63U) {
    {
    test_and_set_bit(3, (unsigned long volatile *)(& opt));
    }
  } else {
  }
  if ((unsigned int )crq->adr.tei == 0U) {
    {
    test_and_set_bit(2, (unsigned long volatile *)(& opt));
    }
  } else {
  }
  {
  tmp___1 = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp___1 != 0) {
    if (crq->protocol == 16U) {
      return (-93);
    } else {
    }
    if ((unsigned int )crq->adr.tei != 0U) {
      if ((unsigned int )crq->adr.tei != 127U) {
        return (-22);
      } else {
      }
    } else {
    }
    if ((unsigned long )mgr->up != (unsigned long )((struct mISDNchannel *)0)) {
      {
      printk("<4>%s: only one network manager is allowed\n", "create_teimgr");
      }
      return (-16);
    } else {
    }
  } else {
    {
    tmp___0 = constant_test_bit(24U, (unsigned long const volatile *)(& mgr->options));
    }
    if (tmp___0 != 0) {
      if (crq->protocol == 17U) {
        return (-93);
      } else {
      }
      if ((unsigned int )crq->adr.tei > 63U) {
        if ((unsigned int )crq->adr.tei <= 126U) {
          return (-22);
        } else {
        }
      } else {
      }
    } else {
      if (crq->protocol == 17U) {
        {
        test_and_set_bit(25, (unsigned long volatile *)(& mgr->options));
        }
      } else {
      }
      if (crq->protocol == 16U) {
        {
        test_and_set_bit(24, (unsigned long volatile *)(& mgr->options));
        }
      } else {
      }
    }
  }
  if ((((mgr->ch.st)->dev)->Dprotocols & 24U) != 0U) {
    {
    test_and_set_bit(1, (unsigned long volatile *)(& opt));
    }
  } else {
  }
  if (crq->protocol == 17U) {
    if ((unsigned int )crq->adr.tei == 127U) {
      {
      mgr->up = crq->ch;
      id = 1;
      teiup_create(mgr, 8U, 4, (void *)(& id));
      crq->ch = (struct mISDNchannel *)0;
      tmp___2 = list_empty((struct list_head const *)(& mgr->layer2));
      }
      if (tmp___2 == 0) {
        {
        flags = _raw_read_lock_irqsave(& mgr->lock);
        __mptr = (struct list_head const *)mgr->layer2.next;
        l2 = (struct layer2 *)__mptr;
        }
        goto ldv_38933;
        ldv_38932:
        {
        l2->up = mgr->up;
        (*(l2->ch.ctrl))(& l2->ch, 256U, (void *)0);
        __mptr___0 = (struct list_head const *)l2->list.next;
        l2 = (struct layer2 *)__mptr___0;
        }
        ldv_38933: ;
        if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
          goto ldv_38932;
        } else {
          goto ldv_38934;
        }
        ldv_38934:
        {
        _raw_read_unlock_irqrestore(& mgr->lock, flags);
        }
      } else {
      }
      return (0);
    } else {
    }
  } else {
  }
  {
  l2 = create_l2(crq->ch, crq->protocol, opt, (int )crq->adr.tei, (int )crq->adr.sapi);
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___3 = kzalloc(224UL, 208U);
  l2->tm = (struct teimgr *)tmp___3;
  }
  if ((unsigned long )l2->tm == (unsigned long )((struct teimgr *)0)) {
    {
    kfree((void const *)l2);
    printk("<3>kmalloc teimgr failed\n");
    }
    return (-12);
  } else {
  }
  (l2->tm)->mgr = mgr;
  (l2->tm)->l2 = l2;
  (l2->tm)->tei_m.debug = (int )*debug___5 & 2097152;
  (l2->tm)->tei_m.userdata = (void *)l2->tm;
  (l2->tm)->tei_m.printdebug = & tei_debug;
  if (crq->protocol == 16U) {
    (l2->tm)->tei_m.fsm = & teifsmu;
    (l2->tm)->tei_m.state = 0;
    (l2->tm)->tval = 1000;
  } else {
    (l2->tm)->tei_m.fsm = & teifsmn;
    (l2->tm)->tei_m.state = 0;
    (l2->tm)->tval = 2000;
  }
  {
  mISDN_FsmInitTimer(& (l2->tm)->tei_m, & (l2->tm)->timer);
  flags = _raw_write_lock_irqsave(& mgr->lock);
  id = get_free_id(mgr);
  list_add_tail(& l2->list, & mgr->layer2);
  _raw_write_unlock_irqrestore(& mgr->lock, flags);
  }
  if (id < 0) {
    {
    (*(l2->ch.ctrl))(& l2->ch, 512U, (void *)0);
    }
  } else {
    l2->ch.nr = (u_int )id;
    (l2->up)->nr = (u_int )id;
    crq->ch = & l2->ch;
    id = 0;
  }
  return (id);
}
}
static int mgr_send(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct manager *mgr ;
  struct mISDNhead *hh ;
  int ret ;
  struct mISDNchannel const *__mptr ;
  int tmp ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  ret = -22;
  __mptr = (struct mISDNchannel const *)ch;
  mgr = (struct manager *)__mptr;
  if ((*debug___5 & 524288U) != 0U) {
    {
    printk("<7>%s: prim(%x) id(%x)\n", "mgr_send", hh->prim, hh->id);
    }
  } else {
  }
  if ((int )hh->prim == 8194) {
    goto case_8194;
  } else
  if ((int )hh->prim == 24578) {
    goto case_24578;
  } else
  if ((int )hh->prim == 258) {
    goto case_258;
  } else
  if ((int )hh->prim == 514) {
    goto case_514;
  } else
  if ((int )hh->prim == 12548) {
    goto case_12548;
  } else
  if (0) {
    case_8194:
    {
    mISDN_FsmEvent(& mgr->deact, 4, (void *)0);
    ret = ph_data_ind(mgr, skb);
    }
    goto ldv_38955;
    case_24578:
    {
    do_ack(mgr, hh->id);
    ret = 0;
    }
    goto ldv_38955;
    case_258:
    {
    test_and_set_bit(16, (unsigned long volatile *)(& mgr->options));
    mISDN_FsmEvent(& mgr->deact, 1, (void *)0);
    do_send(mgr);
    ret = 0;
    }
    goto ldv_38955;
    case_514:
    {
    test_and_clear_bit(16, (unsigned long volatile *)(& mgr->options));
    mISDN_FsmEvent(& mgr->deact, 3, (void *)0);
    ret = 0;
    }
    goto ldv_38955;
    case_12548:
    {
    tmp = dl_unit_data(mgr, skb);
    }
    return (tmp);
  } else {
  }
  ldv_38955: ;
  if (ret == 0) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return (ret);
}
}
static int free_teimanager(struct manager *mgr )
{ struct layer2 *l2 ;
  struct layer2 *nl2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  test_and_clear_bit(5, (unsigned long volatile *)(& mgr->options));
  tmp___0 = constant_test_bit(25U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp___0 != 0) {
    {
    mgr->up = (struct mISDNchannel *)0;
    tmp = constant_test_bit(4U, (unsigned long const volatile *)(& mgr->options));
    }
    if (tmp != 0) {
      __mptr = (struct list_head const *)mgr->layer2.next;
      l2 = (struct layer2 *)__mptr;
      __mptr___0 = (struct list_head const *)l2->list.next;
      nl2 = (struct layer2 *)__mptr___0;
      goto ldv_38972;
      ldv_38971:
      {
      put_tei_msg(mgr, (u_char )6, 0U, (int )l2->tei);
      mutex_lock_nested(& (mgr->ch.st)->lmutex, 0U);
      list_del(& l2->ch.list);
      mutex_unlock(& (mgr->ch.st)->lmutex);
      (*(l2->ch.ctrl))(& l2->ch, 512U, (void *)0);
      l2 = nl2;
      __mptr___1 = (struct list_head const *)nl2->list.next;
      nl2 = (struct layer2 *)__mptr___1;
      }
      ldv_38972: ;
      if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
        goto ldv_38971;
      } else {
        goto ldv_38973;
      }
      ldv_38973:
      {
      test_and_clear_bit(25, (unsigned long volatile *)(& mgr->options));
      }
    } else {
      __mptr___2 = (struct list_head const *)mgr->layer2.next;
      l2 = (struct layer2 *)__mptr___2;
      __mptr___3 = (struct list_head const *)l2->list.next;
      nl2 = (struct layer2 *)__mptr___3;
      goto ldv_38981;
      ldv_38980:
      l2->up = (struct mISDNchannel *)0;
      l2 = nl2;
      __mptr___4 = (struct list_head const *)nl2->list.next;
      nl2 = (struct layer2 *)__mptr___4;
      ldv_38981: ;
      if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
        goto ldv_38980;
      } else {
        goto ldv_38982;
      }
      ldv_38982: ;
    }
  } else {
  }
  {
  tmp___2 = constant_test_bit(24U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp___2 != 0) {
    {
    tmp___1 = list_empty((struct list_head const *)(& mgr->layer2));
    }
    if (tmp___1 != 0) {
      {
      test_and_clear_bit(24, (unsigned long volatile *)(& mgr->options));
      }
    } else {
    }
  } else {
  }
  {
  (*(((mgr->ch.st)->dev)->D.ctrl))(& ((mgr->ch.st)->dev)->D, 512U, (void *)0);
  }
  return (0);
}
}
static int ctrl_teimanager(struct manager *mgr , void *arg )
{ int *val ;
  int ret ;
  {
  val = (int *)arg;
  ret = 0;
  if (*val == -2147202746) {
    goto case_neg_2147202746;
  } else
  if (*val == -2147202744) {
    goto case_neg_2147202744;
  } else {
    goto switch_default;
    if (0) {
      case_neg_2147202746: ;
      if (*(val + 1UL) != 0) {
        {
        test_and_set_bit(4, (unsigned long volatile *)(& mgr->options));
        }
      } else {
        {
        test_and_clear_bit(4, (unsigned long volatile *)(& mgr->options));
        }
      }
      goto ldv_38990;
      case_neg_2147202744: ;
      if (*(val + 1UL) != 0) {
        {
        test_and_set_bit(5, (unsigned long volatile *)(& mgr->options));
        }
      } else {
        {
        test_and_clear_bit(5, (unsigned long volatile *)(& mgr->options));
        }
      }
      goto ldv_38990;
      switch_default:
      ret = -22;
    } else {
    }
  }
  ldv_38990: ;
  return (ret);
}
}
static int check_data(struct manager *mgr , struct sk_buff *skb )
{ struct mISDNhead *hh ;
  int ret ;
  int tei ;
  int sapi ;
  struct layer2 *l2 ;
  int tmp ;
  {
  hh = (struct mISDNhead *)(& skb->cb);
  if ((*debug___5 & 262144U) != 0U) {
    {
    printk("<7>%s: prim(%x) id(%x)\n", "check_data", hh->prim, hh->id);
    }
  } else {
  }
  {
  tmp = constant_test_bit(24U, (unsigned long const volatile *)(& mgr->options));
  }
  if (tmp != 0) {
    return (-107);
  } else {
  }
  if (hh->prim != 8194U) {
    return (-107);
  } else {
  }
  if (skb->len != 3U) {
    return (-107);
  } else {
  }
  if (((int )*(skb->data) & 3) != 0) {
    return (-22);
  } else {
  }
  sapi = (int )*(skb->data) >> 2;
  if (((int )*(skb->data + 1UL) & 1) == 0) {
    return (-22);
  } else {
  }
  tei = (int )*(skb->data + 1UL) >> 1;
  if (tei > 63) {
    return (-107);
  } else {
  }
  if (((int )*(skb->data + 2UL) & -17) != 111) {
    return (-107);
  } else {
  }
  if ((*debug___5 & 262144U) != 0U) {
    {
    printk("<7>%s: SABME sapi(%d) tei(%d)\n", "check_data", sapi, tei);
    }
  } else {
  }
  {
  l2 = create_new_tei(mgr, tei, sapi);
  }
  if ((unsigned long )l2 == (unsigned long )((struct layer2 *)0)) {
    if ((*debug___5 & 262144U) != 0U) {
      {
      printk("<7>%s: failed to create new tei\n", "check_data");
      }
    } else {
    }
    return (-12);
  } else {
  }
  {
  ret = (*(l2->ch.send))(& l2->ch, skb);
  }
  return (ret);
}
}
void delete_teimanager(struct mISDNchannel *ch )
{ struct manager *mgr ;
  struct layer2 *l2 ;
  struct layer2 *nl2 ;
  struct mISDNchannel const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  mgr = (struct manager *)__mptr;
  __mptr___0 = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr___0;
  __mptr___1 = (struct list_head const *)l2->list.next;
  nl2 = (struct layer2 *)__mptr___1;
  goto ldv_39018;
  ldv_39017:
  {
  mutex_lock_nested(& (mgr->ch.st)->lmutex, 0U);
  list_del(& l2->ch.list);
  mutex_unlock(& (mgr->ch.st)->lmutex);
  (*(l2->ch.ctrl))(& l2->ch, 512U, (void *)0);
  l2 = nl2;
  __mptr___2 = (struct list_head const *)nl2->list.next;
  nl2 = (struct layer2 *)__mptr___2;
  }
  ldv_39018: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_39017;
  } else {
    goto ldv_39019;
  }
  ldv_39019:
  {
  list_del(& mgr->ch.list);
  list_del(& mgr->bcast.list);
  skb_queue_purge(& mgr->sendq);
  kfree((void const *)mgr);
  }
  return;
}
}
static int mgr_ctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ struct manager *mgr ;
  int ret ;
  struct mISDNchannel const *__mptr ;
  {
  ret = -22;
  __mptr = (struct mISDNchannel const *)ch;
  mgr = (struct manager *)__mptr;
  if ((*debug___5 & 262144U) != 0U) {
    {
    printk("<7>%s(%x, %p)\n", "mgr_ctrl", cmd, arg);
    }
  } else {
  }
  if ((int )cmd == 256) {
    goto case_256;
  } else
  if ((int )cmd == 512) {
    goto case_512;
  } else
  if ((int )cmd == 768) {
    goto case_768;
  } else
  if ((int )cmd == 1024) {
    goto case_1024;
  } else
  if (0) {
    case_256:
    {
    ret = create_teimgr(mgr, (struct channel_req *)arg);
    }
    goto ldv_39031;
    case_512:
    {
    ret = free_teimanager(mgr);
    }
    goto ldv_39031;
    case_768:
    {
    ret = ctrl_teimanager(mgr, arg);
    }
    goto ldv_39031;
    case_1024:
    {
    ret = check_data(mgr, (struct sk_buff *)arg);
    }
    goto ldv_39031;
  } else {
  }
  ldv_39031: ;
  return (ret);
}
}
static int mgr_bcast(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct manager *mgr ;
  struct mISDNchannel const *__mptr ;
  struct mISDNhead *hh ;
  struct sk_buff *cskb ;
  struct layer2 *l2 ;
  u_long flags ;
  int ret ;
  struct list_head const *__mptr___0 ;
  int tmp ;
  struct list_head const *__mptr___1 ;
  {
  {
  __mptr = (struct mISDNchannel const *)ch;
  mgr = (struct manager *)__mptr + 0x0fffffffffffffb0UL;
  hh = (struct mISDNhead *)(& skb->cb);
  cskb = (struct sk_buff *)0;
  flags = _raw_read_lock_irqsave(& mgr->lock);
  __mptr___0 = (struct list_head const *)mgr->layer2.next;
  l2 = (struct layer2 *)__mptr___0;
  }
  goto ldv_39057;
  ldv_39056: ;
  if (((hh->id ^ l2->ch.addr) & 255U) == 0U) {
    {
    tmp = list_is_last((struct list_head const *)(& l2->list), (struct list_head const *)(& mgr->layer2));
    }
    if (tmp != 0) {
      cskb = skb;
      skb = (struct sk_buff *)0;
    } else
    if ((unsigned long )cskb == (unsigned long )((struct sk_buff *)0)) {
      {
      cskb = skb_copy((struct sk_buff const *)skb, 208U);
      }
    } else {
    }
    if ((unsigned long )cskb != (unsigned long )((struct sk_buff *)0)) {
      {
      ret = (*(l2->ch.send))(& l2->ch, cskb);
      }
      if (ret != 0) {
        if ((*debug___5 & 16U) != 0U) {
          {
          printk("<7>%s ch%d prim(%x) addr(%x) err %d\n", "mgr_bcast", l2->ch.nr,
                 hh->prim, l2->ch.addr, ret);
          }
        } else {
          cskb = (struct sk_buff *)0;
        }
      } else {
      }
    } else {
      {
      printk("<4>%s ch%d addr %x no mem\n", "mgr_bcast", ch->nr, ch->addr);
      }
      goto out;
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)l2->list.next;
  l2 = (struct layer2 *)__mptr___1;
  ldv_39057: ;
  if ((unsigned long )(& l2->list) != (unsigned long )(& mgr->layer2)) {
    goto ldv_39056;
  } else {
    goto ldv_39058;
  }
  ldv_39058: ;
  out:
  {
  _raw_read_unlock_irqrestore(& mgr->lock, flags);
  }
  if ((unsigned long )cskb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(cskb);
    }
  } else {
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    {
    consume_skb(skb);
    }
  } else {
  }
  return (0);
}
}
static int mgr_bcast_ctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{
  {
  return (-22);
}
}
int create_teimanager(struct mISDNdevice *dev )
{ struct manager *mgr ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  {
  tmp = kzalloc(560UL, 208U);
  mgr = (struct manager *)tmp;
  }
  if ((unsigned long )mgr == (unsigned long )((struct manager *)0)) {
    return (-12);
  } else {
  }
  {
  INIT_LIST_HEAD(& mgr->layer2);
  __rwlock_init(& mgr->lock, "&mgr->lock", & __key);
  skb_queue_head_init(& mgr->sendq);
  mgr->nextid = 1U;
  mgr->lastid = 65534U;
  mgr->ch.send = & mgr_send;
  mgr->ch.ctrl = & mgr_ctrl;
  mgr->ch.st = dev->D.st;
  set_channel_address(& mgr->ch, 63U, 127U);
  add_layer2(& mgr->ch, dev->D.st);
  mgr->bcast.send = & mgr_bcast;
  mgr->bcast.ctrl = & mgr_bcast_ctrl;
  mgr->bcast.st = dev->D.st;
  set_channel_address(& mgr->bcast, 0U, 127U);
  add_layer2(& mgr->bcast, dev->D.st);
  mgr->deact.debug = (int )*debug___5 & 8;
  mgr->deact.userdata = (void *)mgr;
  mgr->deact.printdebug = & da_debug;
  mgr->deact.fsm = & deactfsm;
  mgr->deact.state = 0;
  mISDN_FsmInitTimer(& mgr->deact, & mgr->datimer);
  dev->teimgr = & mgr->ch;
  }
  return (0);
}
}
int TEIInit(u_int *deb )
{
  {
  {
  debug___5 = deb;
  teifsmu.state_count = 3;
  teifsmu.event_count = 9;
  teifsmu.strEvent = (char **)(& strTeiEvent);
  teifsmu.strState = (char **)(& strTeiState);
  mISDN_FsmNew(& teifsmu, (struct FsmNode *)(& TeiFnListUser), 11);
  teifsmn.state_count = 3;
  teifsmn.event_count = 9;
  teifsmn.strEvent = (char **)(& strTeiEvent);
  teifsmn.strState = (char **)(& strTeiState);
  mISDN_FsmNew(& teifsmn, (struct FsmNode *)(& TeiFnListNet), 5);
  deactfsm.state_count = 3;
  deactfsm.event_count = 6;
  deactfsm.strEvent = (char **)(& strDeactEvent);
  deactfsm.strState = (char **)(& strDeactState);
  mISDN_FsmNew(& deactfsm, (struct FsmNode *)(& DeactFnList), 6);
  }
  return (0);
}
}
void TEIFree(void)
{
  {
  {
  mISDN_FsmFree(& teifsmu);
  mISDN_FsmFree(& teifsmn);
  mISDN_FsmFree(& deactfsm);
  }
  return;
}
}
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  }
  return;
}
}
__inline static void list_move_tail(struct list_head *list , struct list_head *head )
{
  {
  {
  __list_del_entry(list);
  list_add_tail(list, head);
  }
  return;
}
}
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6060.rlock, flags);
  }
  return;
}
}
__inline static void ldv___module_get_2(struct module *module ) ;
void ldv_module_put_3(struct module *ldv_func_arg1 ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
int ldv_nonseekable_open_2(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 ) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0)) {
    if ((unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
      {
      (*(p->qproc))(filp, wait_address, p);
      }
    } else {
    }
  } else {
  }
  return;
}
}
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
static struct mutex mISDN_mutex = {{1}, {{{{0U}, 3735899821U, 4294967295U, (void *)0x0fffffffffffffffUL, {(struct lock_class_key *)0,
                                                                           {(struct lock_class *)0,
                                                                            (struct lock_class *)0},
                                                                           "mISDN_mutex.wait_lock",
                                                                           0, 0UL}}}},
    {& mISDN_mutex.wait_list, & mISDN_mutex.wait_list}, (struct task_struct *)0, (char const *)0,
    (void *)(& mISDN_mutex), {(struct lock_class_key *)0, {(struct lock_class *)0,
                                                           (struct lock_class *)0},
                              "mISDN_mutex", 0, 0UL}};
static u_int *debug___6 ;
static int mISDN_open(struct inode *ino , struct file *filep )
{ struct mISDNtimerdev *dev ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___0 ;
  {
  if ((*debug___6 & 16777216U) != 0U) {
    {
    printk("<7>%s(%p,%p)\n", "mISDN_open", ino, filep);
    }
  } else {
  }
  {
  tmp = kmalloc(208UL, 208U);
  dev = (struct mISDNtimerdev *)tmp;
  }
  if ((unsigned long )dev == (unsigned long )((struct mISDNtimerdev *)0)) {
    return (-12);
  } else {
  }
  {
  dev->next_id = 1;
  INIT_LIST_HEAD(& dev->pending);
  INIT_LIST_HEAD(& dev->expired);
  spinlock_check(& dev->lock);
  __raw_spin_lock_init(& dev->lock.ldv_6060.rlock, "&(&dev->lock)->rlock", & __key);
  dev->work = 0U;
  __init_waitqueue_head(& dev->wait, & __key___0);
  filep->private_data = (void *)dev;
  ldv___module_get_2(& __this_module);
  tmp___0 = ldv_nonseekable_open_2(ino, filep);
  }
  return (tmp___0);
}
}
static int mISDN_close(struct inode *ino , struct file *filep )
{ struct mISDNtimerdev *dev ;
  struct mISDNtimer *timer ;
  struct mISDNtimer *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  dev = (struct mISDNtimerdev *)filep->private_data;
  if ((*debug___6 & 16777216U) != 0U) {
    {
    printk("<7>%s(%p,%p)\n", "mISDN_close", ino, filep);
    }
  } else {
  }
  __mptr = (struct list_head const *)dev->pending.next;
  timer = (struct mISDNtimer *)__mptr;
  __mptr___0 = (struct list_head const *)timer->list.next;
  next = (struct mISDNtimer *)__mptr___0;
  goto ldv_38417;
  ldv_38416:
  {
  del_timer(& timer->tl);
  kfree((void const *)timer);
  timer = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct mISDNtimer *)__mptr___1;
  }
  ldv_38417: ;
  if ((unsigned long )(& timer->list) != (unsigned long )(& dev->pending)) {
    goto ldv_38416;
  } else {
    goto ldv_38418;
  }
  ldv_38418:
  __mptr___2 = (struct list_head const *)dev->expired.next;
  timer = (struct mISDNtimer *)__mptr___2;
  __mptr___3 = (struct list_head const *)timer->list.next;
  next = (struct mISDNtimer *)__mptr___3;
  goto ldv_38426;
  ldv_38425:
  {
  kfree((void const *)timer);
  timer = next;
  __mptr___4 = (struct list_head const *)next->list.next;
  next = (struct mISDNtimer *)__mptr___4;
  }
  ldv_38426: ;
  if ((unsigned long )(& timer->list) != (unsigned long )(& dev->expired)) {
    goto ldv_38425;
  } else {
    goto ldv_38427;
  }
  ldv_38427:
  {
  kfree((void const *)dev);
  ldv_module_put_3(& __this_module);
  }
  return (0);
}
}
static ssize_t mISDN_read(struct file *filep , char *buf , size_t count , loff_t *off )
{ struct mISDNtimerdev *dev ;
  struct mISDNtimer *timer ;
  u_long flags ;
  int ret ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  int __ret_pu ;
  int __pu_val ;
  int tmp___8 ;
  {
  dev = (struct mISDNtimerdev *)filep->private_data;
  ret = 0;
  if ((*debug___6 & 16777216U) != 0U) {
    {
    printk("<7>%s(%p, %p, %d, %p)\n", "mISDN_read", filep, buf, (int )count, off);
    }
  } else {
  }
  {
  tmp___6 = list_empty((struct list_head const *)(& dev->expired));
  }
  if (tmp___6 != 0) {
    if (dev->work == 0U) {
      if ((filep->f_flags & 2048U) != 0U) {
        return (-11L);
      } else {
      }
      __ret = 0;
      if (dev->work == 0U) {
        {
        tmp___3 = list_empty((struct list_head const *)(& dev->expired));
        }
        if (tmp___3 != 0) {
          {
          tmp = get_current();
          __wait.flags = 0U;
          __wait.private = (void *)tmp;
          __wait.func = & autoremove_wake_function;
          __wait.task_list.next = & __wait.task_list;
          __wait.task_list.prev = & __wait.task_list;
          }
          ldv_38443:
          {
          prepare_to_wait(& dev->wait, & __wait, 1);
          }
          if (dev->work != 0U) {
            goto ldv_38441;
          } else {
            {
            tmp___0 = list_empty((struct list_head const *)(& dev->expired));
            }
            if (tmp___0 == 0) {
              goto ldv_38441;
            } else {
            }
          }
          {
          tmp___1 = get_current();
          tmp___2 = signal_pending(tmp___1);
          }
          if (tmp___2 == 0) {
            {
            schedule();
            }
            goto ldv_38442;
          } else {
          }
          __ret = -512;
          goto ldv_38441;
          ldv_38442: ;
          goto ldv_38443;
          ldv_38441:
          {
          finish_wait(& dev->wait, & __wait);
          }
        } else {
        }
      } else {
      }
      {
      tmp___4 = get_current();
      tmp___5 = signal_pending(tmp___4);
      }
      if (tmp___5 != 0) {
        return (-512L);
      } else {
      }
    } else {
    }
  } else {
  }
  if (count <= 3UL) {
    return (-28L);
  } else {
  }
  if (dev->work != 0U) {
    dev->work = 0U;
  } else {
  }
  {
  tmp___8 = list_empty((struct list_head const *)(& dev->expired));
  }
  if (tmp___8 == 0) {
    {
    tmp___7 = spinlock_check(& dev->lock);
    flags = _raw_spin_lock_irqsave(tmp___7);
    timer = (struct mISDNtimer *)dev->expired.next;
    list_del(& timer->list);
    spin_unlock_irqrestore(& dev->lock, flags);
    might_fault();
    __pu_val = timer->id;
    }
    if (1) {
      goto case_4;
    } else {
      goto switch_default;
      if (0) {
        __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                             "c" ((int *)buf): "ebx");
        goto ldv_38451;
        __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                             "c" ((int *)buf): "ebx");
        goto ldv_38451;
        case_4:
        __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                             "c" ((int *)buf): "ebx");
        goto ldv_38451;
        __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                             "c" ((int *)buf): "ebx");
        goto ldv_38451;
        switch_default:
        __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                             "c" ((int *)buf): "ebx");
        goto ldv_38451;
      } else {
      }
    }
    ldv_38451: ;
    if (__ret_pu != 0) {
      ret = -14;
    } else {
      ret = 4;
    }
    {
    kfree((void const *)timer);
    }
  } else {
  }
  return ((ssize_t )ret);
}
}
static unsigned int mISDN_poll(struct file *filep , poll_table *wait )
{ struct mISDNtimerdev *dev ;
  unsigned int mask ;
  int tmp ;
  int tmp___0 ;
  {
  dev = (struct mISDNtimerdev *)filep->private_data;
  mask = 8U;
  if ((*debug___6 & 16777216U) != 0U) {
    {
    printk("<7>%s(%p, %p)\n", "mISDN_poll", filep, wait);
    }
  } else {
  }
  if ((unsigned long )dev != (unsigned long )((struct mISDNtimerdev *)0)) {
    {
    poll_wait(filep, & dev->wait, wait);
    mask = 0U;
    }
    if (dev->work != 0U) {
      mask = mask | 65U;
    } else {
      {
      tmp = list_empty((struct list_head const *)(& dev->expired));
      }
      if (tmp == 0) {
        mask = mask | 65U;
      } else {
      }
    }
    if ((*debug___6 & 16777216U) != 0U) {
      {
      tmp___0 = list_empty((struct list_head const *)(& dev->expired));
      printk("<7>%s work(%d) empty(%d)\n", "mISDN_poll", dev->work, tmp___0);
      }
    } else {
    }
  } else {
  }
  return (mask);
}
}
static void dev_expire_timer(unsigned long data )
{ struct mISDNtimer *timer ;
  u_long flags ;
  raw_spinlock_t *tmp ;
  {
  {
  timer = (struct mISDNtimer *)data;
  tmp = spinlock_check(& (timer->dev)->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  list_move_tail(& timer->list, & (timer->dev)->expired);
  spin_unlock_irqrestore(& (timer->dev)->lock, flags);
  __wake_up(& (timer->dev)->wait, 1U, 1, (void *)0);
  }
  return;
}
}
static int misdn_add_timer(struct mISDNtimerdev *dev , int timeout )
{ int id ;
  u_long flags ;
  struct mISDNtimer *timer ;
  void *tmp ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  struct lock_class_key __key ;
  {
  if (timeout == 0) {
    {
    dev->work = 1U;
    __wake_up(& dev->wait, 1U, 1, (void *)0);
    id = 0;
    }
  } else {
    {
    tmp = kzalloc(160UL, 208U);
    timer = (struct mISDNtimer *)tmp;
    }
    if ((unsigned long )timer == (unsigned long )((struct mISDNtimer *)0)) {
      return (-12);
    } else {
    }
    {
    tmp___0 = spinlock_check(& dev->lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    tmp___1 = dev->next_id;
    dev->next_id = dev->next_id + 1;
    timer->id = tmp___1;
    }
    if (dev->next_id < 0) {
      dev->next_id = 1;
    } else {
    }
    {
    list_add_tail(& timer->list, & dev->pending);
    spin_unlock_irqrestore(& dev->lock, flags);
    timer->dev = dev;
    timer->tl.data = (unsigned long )timer;
    timer->tl.function = & dev_expire_timer;
    init_timer_key(& timer->tl, "&timer->tl", & __key);
    timer->tl.expires = ((unsigned long )timeout * 250UL) / 1000UL + (unsigned long )jiffies;
    add_timer(& timer->tl);
    id = timer->id;
    }
  }
  return (id);
}
}
static int misdn_del_timer(struct mISDNtimerdev *dev , int id )
{ u_long flags ;
  struct mISDNtimer *timer ;
  int ret ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  {
  ret = 0;
  tmp = spinlock_check(& dev->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)dev->pending.next;
  timer = (struct mISDNtimer *)__mptr;
  }
  goto ldv_38499;
  ldv_38498: ;
  if (timer->id == id) {
    {
    list_del_init(& timer->list);
    del_timer(& timer->tl);
    ret = timer->id;
    kfree((void const *)timer);
    }
    goto unlock;
  } else {
  }
  __mptr___0 = (struct list_head const *)timer->list.next;
  timer = (struct mISDNtimer *)__mptr___0;
  ldv_38499: ;
  if ((unsigned long )(& timer->list) != (unsigned long )(& dev->pending)) {
    goto ldv_38498;
  } else {
    goto ldv_38500;
  }
  ldv_38500: ;
  unlock:
  {
  spin_unlock_irqrestore(& dev->lock, flags);
  }
  return (ret);
}
}
static long mISDN_ioctl(struct file *filep , unsigned int cmd , unsigned long arg )
{ struct mISDNtimerdev *dev ;
  int id ;
  int tout ;
  int ret ;
  int __ret_gu ;
  unsigned long __val_gu ;
  int __ret_pu ;
  int __pu_val ;
  int __ret_gu___0 ;
  unsigned long __val_gu___0 ;
  int __ret_pu___0 ;
  int __pu_val___0 ;
  {
  dev = (struct mISDNtimerdev *)filep->private_data;
  ret = 0;
  if ((*debug___6 & 16777216U) != 0U) {
    {
    printk("<7>%s(%p, %x, %lx)\n", "mISDN_ioctl", filep, cmd, arg);
    }
  } else {
  }
  {
  mutex_lock_nested(& mISDN_mutex, 0U);
  }
  if ((int )cmd == -2147202752) {
    goto case_neg_2147202752;
  } else
  if ((int )cmd == -2147202751) {
    goto case_neg_2147202751;
  } else {
    goto switch_default___3;
    if (0) {
      case_neg_2147202752:
      {
      might_fault();
      }
      if (1) {
        goto case_4;
      } else {
        goto switch_default;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38515;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38515;
          case_4:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38515;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38515;
          switch_default:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu), "=d" (__val_gu): "0" ((int *)arg));
          goto ldv_38515;
        } else {
        }
      }
      ldv_38515:
      tout = (int )__val_gu;
      if (__ret_gu != 0) {
        ret = -14;
        goto ldv_38521;
      } else {
      }
      {
      id = misdn_add_timer(dev, tout);
      }
      if ((*debug___6 & 16777216U) != 0U) {
        {
        printk("<7>%s add %d id %d\n", "mISDN_ioctl", tout, id);
        }
      } else {
      }
      if (id < 0) {
        ret = id;
        goto ldv_38521;
      } else {
      }
      {
      might_fault();
      __pu_val = id;
      }
      if (1) {
        goto case_4___0;
      } else {
        goto switch_default___0;
        if (0) {
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38525;
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38525;
          case_4___0:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38525;
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38525;
          switch_default___0:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val),
                               "c" ((int *)arg): "ebx");
          goto ldv_38525;
        } else {
        }
      }
      ldv_38525: ;
      if (__ret_pu != 0) {
        ret = -14;
      } else {
      }
      goto ldv_38521;
      case_neg_2147202751:
      {
      might_fault();
      }
      if (1) {
        goto case_4___1;
      } else {
        goto switch_default___1;
        if (0) {
          __asm__ volatile ("call __get_user_1": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)arg));
          goto ldv_38535;
          __asm__ volatile ("call __get_user_2": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)arg));
          goto ldv_38535;
          case_4___1:
          __asm__ volatile ("call __get_user_4": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)arg));
          goto ldv_38535;
          __asm__ volatile ("call __get_user_8": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)arg));
          goto ldv_38535;
          switch_default___1:
          __asm__ volatile ("call __get_user_X": "=a" (__ret_gu___0), "=d" (__val_gu___0): "0" ((int *)arg));
          goto ldv_38535;
        } else {
        }
      }
      ldv_38535:
      id = (int )__val_gu___0;
      if (__ret_gu___0 != 0) {
        ret = -14;
        goto ldv_38521;
      } else {
      }
      if ((*debug___6 & 16777216U) != 0U) {
        {
        printk("<7>%s del id %d\n", "mISDN_ioctl", id);
        }
      } else {
      }
      {
      id = misdn_del_timer(dev, id);
      might_fault();
      __pu_val___0 = id;
      }
      if (1) {
        goto case_4___2;
      } else {
        goto switch_default___2;
        if (0) {
          __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" ((int *)arg): "ebx");
          goto ldv_38544;
          __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" ((int *)arg): "ebx");
          goto ldv_38544;
          case_4___2:
          __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" ((int *)arg): "ebx");
          goto ldv_38544;
          __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" ((int *)arg): "ebx");
          goto ldv_38544;
          switch_default___2:
          __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                               "c" ((int *)arg): "ebx");
          goto ldv_38544;
        } else {
        }
      }
      ldv_38544: ;
      if (__ret_pu___0 != 0) {
        ret = -14;
      } else {
      }
      goto ldv_38521;
      switch_default___3:
      ret = -22;
    } else {
    }
  }
  ldv_38521:
  {
  mutex_unlock(& mISDN_mutex);
  }
  return ((long )ret);
}
}
static struct file_operations const mISDN_fops =
     {(struct module *)0, & no_llseek, & mISDN_read, (ssize_t (*)(struct file * , char const * ,
                                                                size_t , loff_t * ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (ssize_t (*)(struct kiocb * , struct iovec const * , unsigned long , loff_t ))0,
    (int (*)(struct file * , void * , int (*)(void * , char const * , int , loff_t ,
                                              u64 , unsigned int ) ))0, & mISDN_poll,
    & mISDN_ioctl, (long (*)(struct file * , unsigned int , unsigned long ))0, (int (*)(struct file * ,
                                                                                          struct vm_area_struct * ))0,
    & mISDN_open, (int (*)(struct file * , fl_owner_t ))0, & mISDN_close, (int (*)(struct file * ,
                                                                                    int ))0,
    (int (*)(struct kiocb * , int ))0, (int (*)(int , struct file * , int ))0,
    (int (*)(struct file * , int , struct file_lock * ))0, (ssize_t (*)(struct file * ,
                                                                         struct page * ,
                                                                         int , size_t ,
                                                                         loff_t * ,
                                                                         int ))0,
    (unsigned long (*)(struct file * , unsigned long , unsigned long , unsigned long ,
                       unsigned long ))0, (int (*)(int ))0, (int (*)(struct file * ,
                                                                       int , struct file_lock * ))0,
    (ssize_t (*)(struct pipe_inode_info * , struct file * , loff_t * , size_t , unsigned int ))0,
    (ssize_t (*)(struct file * , loff_t * , struct pipe_inode_info * , size_t , unsigned int ))0,
    (int (*)(struct file * , long , struct file_lock ** ))0, (long (*)(struct file * ,
                                                                        int , loff_t ,
                                                                        loff_t ))0};
static struct miscdevice mISDNtimer =
     {255, "mISDNtimer", & mISDN_fops, {(struct list_head *)0, (struct list_head *)0},
    (struct device *)0, (struct device *)0, (char const *)0, 0U};
int mISDN_inittimer(u_int *deb )
{ int err ;
  {
  {
  debug___6 = deb;
  err = misc_register(& mISDNtimer);
  }
  if (err != 0) {
    {
    printk("<4>mISDN: Could not register timer device\n");
    }
  } else {
  }
  return (err);
}
}
void mISDN_timer_cleanup(void)
{
  {
  {
  misc_deregister(& mISDNtimer);
  }
  return;
}
}
extern void ldv_check_return_value(int ) ;
int main(void)
{ struct file *var_group1 ;
  char *var_mISDN_read_2_p1 ;
  size_t var_mISDN_read_2_p2 ;
  loff_t *var_mISDN_read_2_p3 ;
  ssize_t res_mISDN_read_2 ;
  poll_table *var_mISDN_poll_3_p1 ;
  unsigned int var_mISDN_ioctl_7_p1 ;
  unsigned long var_mISDN_ioctl_7_p2 ;
  struct inode *var_group2 ;
  int res_mISDN_open_0 ;
  unsigned long var_dev_expire_timer_4_p0 ;
  int ldv_s_mISDN_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  debug___0 = ldv_malloc(sizeof(u_int));
  debug___1 = ldv_malloc(sizeof(u_int));
  debug___2 = ldv_malloc(sizeof(u_int));
  debug___3 = ldv_malloc(sizeof(u_int));
  debug___4 = ldv_malloc(sizeof(u_int));
  debug___5 = ldv_malloc(sizeof(u_int));
  debug___6 = ldv_malloc(sizeof(u_int));
  {
  {
  ldv_s_mISDN_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  }
  goto ldv_38594;
  ldv_38593:
  {
  tmp = __VERIFIER_nondet_int();
  }
  if (tmp == 0) {
    goto case_0;
  } else
  if (tmp == 1) {
    goto case_1;
  } else
  if (tmp == 2) {
    goto case_2;
  } else
  if (tmp == 3) {
    goto case_3;
  } else
  if (tmp == 4) {
    goto case_4;
  } else
  if (tmp == 5) {
    goto case_5;
  } else {
    goto switch_default;
    if (0) {
      case_0: ;
      if (ldv_s_mISDN_fops_file_operations == 0) {
        {
        res_mISDN_open_0 = mISDN_open(var_group2, var_group1);
        ldv_check_return_value(res_mISDN_open_0);
        }
        if (res_mISDN_open_0 != 0) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_mISDN_fops_file_operations = ldv_s_mISDN_fops_file_operations + 1;
      } else {
      }
      goto ldv_38586;
      case_1: ;
      if (ldv_s_mISDN_fops_file_operations == 1) {
        {
        res_mISDN_read_2 = mISDN_read(var_group1, var_mISDN_read_2_p1, var_mISDN_read_2_p2,
                                      var_mISDN_read_2_p3);
        ldv_check_return_value((int )res_mISDN_read_2);
        }
        if (res_mISDN_read_2 < 0L) {
          goto ldv_module_exit;
        } else {
        }
        ldv_s_mISDN_fops_file_operations = ldv_s_mISDN_fops_file_operations + 1;
      } else {
      }
      goto ldv_38586;
      case_2: ;
      if (ldv_s_mISDN_fops_file_operations == 2) {
        {
        mISDN_close(var_group2, var_group1);
        ldv_s_mISDN_fops_file_operations = 0;
        }
      } else {
      }
      goto ldv_38586;
      case_3:
      {
      mISDN_poll(var_group1, var_mISDN_poll_3_p1);
      }
      goto ldv_38586;
      case_4:
      {
      mISDN_ioctl(var_group1, var_mISDN_ioctl_7_p1, var_mISDN_ioctl_7_p2);
      }
      goto ldv_38586;
      case_5:
      {
      dev_expire_timer(var_dev_expire_timer_4_p0);
      }
      goto ldv_38586;
      switch_default: ;
      goto ldv_38586;
    } else {
    }
  }
  ldv_38586: ;
  ldv_38594:
  {
  tmp___0 = __VERIFIER_nondet_int();
  }
  if (tmp___0 != 0) {
    goto ldv_38593;
  } else
  if (ldv_s_mISDN_fops_file_operations != 0) {
    goto ldv_38593;
  } else {
    goto ldv_38595;
  }
  ldv_38595: ;
  ldv_module_exit:
  {
  ldv_check_final_state();
  }
  return 0;
}
}
int ldv_nonseekable_open_2(struct inode *ldv_func_arg1 , struct file *ldv_func_arg2 )
{
  {
  return (0);
}
}
void ldv_module_put_3(struct module *ldv_func_arg1 )
{
  {
  {
  ldv_module_put(ldv_func_arg1);
  }
  return;
}
}
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __class_register(struct class *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, struct lock_class_key *arg1) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void *__kmalloc(size_t arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
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
void __rwlock_init(rwlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
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
void _raw_read_lock(rwlock_t *arg0) {
  return;
}
void _raw_read_lock_bh(rwlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_read_lock_irqsave(rwlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_read_unlock(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock_bh(rwlock_t *arg0) {
  return;
}
void _raw_read_unlock_irqrestore(rwlock_t *arg0, unsigned long arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void _raw_write_lock_bh(rwlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_write_lock_irqsave(rwlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_write_unlock_bh(rwlock_t *arg0) {
  return;
}
void _raw_write_unlock_irqrestore(rwlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int add_uevent_var(struct kobj_uevent_env *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
struct device *class_find_device(struct class *arg0, struct device *arg1, void *arg2, int (*arg3)(struct device *, void *)) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int class_for_each_device(struct class *arg0, struct device *arg1, void *arg2, int (*arg3)(struct device *, void *)) {
  return __VERIFIER_nondet_int();
}
void class_unregister(struct class *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
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
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_del(struct device *arg0) {
  return;
}
void device_initialize(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_rename(struct device *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return ldv_malloc(sizeof(struct task_struct));
}
ktime_t ktime_get_real() {
  return *(union ktime *)ldv_xmalloc(sizeof(union ktime));
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_undefined_int() {
  return __VERIFIER_nondet_int();
}
void list_del(struct list_head *arg0) {
  return;
}
void lock_sock_nested(struct sock *arg0, int arg1) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int memcpy_fromiovec(unsigned char *arg0, struct iovec *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
struct timeval ns_to_timeval(const s64 arg0) {
  return *(struct timeval *)ldv_xmalloc(sizeof(struct timeval));
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int put_cmsg(struct msghdr *arg0, int arg1, int arg2, int arg3, void *arg4) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
  return;
}
void release_sock(struct sock *arg0) {
  return;
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_int();
}
struct sock *sk_alloc(struct net *arg0, int arg1, gfp_t arg2, struct proto *arg3) {
  return ldv_malloc(sizeof(struct sock));
}
void sk_free(struct sock *arg0) {
  return;
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
struct sk_buff *skb_copy(const struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int skb_copy_datagram_iovec(const struct sk_buff *arg0, int arg1, struct iovec *arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
struct sk_buff *skb_dequeue(struct sk_buff_head *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void skb_free_datagram(struct sock *arg0, struct sk_buff *arg1) {
  return;
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_queue_head(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
void skb_queue_purge(struct sk_buff_head *arg0) {
  return;
}
void skb_queue_tail(struct sk_buff_head *arg0, struct sk_buff *arg1) {
  return;
}
struct sk_buff *skb_recv_datagram(struct sock *arg0, unsigned int arg1, int arg2, int *arg3) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
void sock_init_data(struct socket *arg0, struct sock *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int sock_queue_rcv_skb(struct sock *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sock_register(const struct net_proto_family *arg0) {
  return __VERIFIER_nondet_int();
}
void sock_unregister(int arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int autoremove_wake_function(wait_queue_t *arg0, unsigned int arg1, int arg2, void * arg3) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
