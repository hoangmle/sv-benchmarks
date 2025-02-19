extern void __VERIFIER_error() __attribute__ ((__noreturn__));
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
typedef __kernel_long_t __kernel_suseconds_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u32 __le32;
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
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2043_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2043_8 ldv_2043 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct_ldv_2050_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2050_10 ldv_2050 ;
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
struct __anonstruct_ldv_2103_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2118_13 {
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
union __anonunion_ldv_2119_11 {
   struct __anonstruct_ldv_2103_12 ldv_2103 ;
   struct __anonstruct_ldv_2118_13 ldv_2118 ;
};
struct desc_struct {
   union __anonunion_ldv_2119_11 ldv_2119 ;
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
union __anonunion_ldv_2775_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2775_18 ldv_2775 ;
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
struct __anonstruct_ldv_5181_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5187_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5188_22 {
   struct __anonstruct_ldv_5181_23 ldv_5181 ;
   struct __anonstruct_ldv_5187_24 ldv_5187 ;
};
union __anonunion_ldv_5197_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5188_22 ldv_5188 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5197_25 ldv_5197 ;
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
struct __anonstruct_ldv_6013_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6014_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6013_29 ldv_6013 ;
};
struct spinlock {
   union __anonunion_ldv_6014_28 ldv_6014 ;
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
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
   struct workqueue_struct *wq ;
   int cpu ;
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
   struct list_head clock_list ;
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
   unsigned char memalloc_noio : 1 ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct device_node;
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
union __anonunion_ldv_14166_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14166_134 ldv_14166 ;
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
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
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
typedef unsigned long kernel_ulong_t;
struct acpi_device_id {
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct input_device_id {
   kernel_ulong_t flags ;
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
   kernel_ulong_t evbit[1U] ;
   kernel_ulong_t keybit[12U] ;
   kernel_ulong_t relbit[1U] ;
   kernel_ulong_t absbit[1U] ;
   kernel_ulong_t mscbit[1U] ;
   kernel_ulong_t ledbit[1U] ;
   kernel_ulong_t sndbit[1U] ;
   kernel_ulong_t ffbit[2U] ;
   kernel_ulong_t swbit[1U] ;
   kernel_ulong_t driver_info ;
};
struct i2c_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
   struct hrtimer_clock_base clock_base[4U] ;
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
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
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
   struct lock_class_key lock_key ;
};
struct device_type;
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
   char *(*devnode)(struct device * , umode_t * , kuid_t * , kgid_t * ) ;
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
struct __anonstruct_ldv_17918_141 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_17920_140 {
   struct __anonstruct_ldv_17918_141 ldv_17918 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_17920_140 ldv_17920 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_142 {
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
   union __anonunion_d_u_142 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
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
union __anonunion_ldv_18946_144 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_18946_144 ldv_18946 ;
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
union __anonunion_arg_146 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_145 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_146 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_145 read_descriptor_t;
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
union __anonunion_ldv_19382_147 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_19402_148 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_19418_149 {
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
   union __anonunion_ldv_19382_147 ldv_19382 ;
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
   union __anonunion_ldv_19402_148 ldv_19402 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_19418_149 ldv_19418 ;
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
union __anonunion_f_u_150 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_150 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
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
struct __anonstruct_afs_152 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_151 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_152 afs ;
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
   union __anonunion_fl_u_151 fl_u ;
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
struct return_instance;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct return_instance *return_instances ;
   unsigned int depth ;
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
union __anonunion_ldv_21543_154 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_21553_158 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_21555_157 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_21553_158 ldv_21553 ;
   int units ;
};
struct __anonstruct_ldv_21557_156 {
   union __anonunion_ldv_21555_157 ldv_21555 ;
   atomic_t _count ;
};
union __anonunion_ldv_21558_155 {
   unsigned long counters ;
   struct __anonstruct_ldv_21557_156 ldv_21557 ;
};
struct __anonstruct_ldv_21559_153 {
   union __anonunion_ldv_21543_154 ldv_21543 ;
   union __anonunion_ldv_21558_155 ldv_21558 ;
};
struct __anonstruct_ldv_21566_160 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_21570_159 {
   struct list_head lru ;
   struct __anonstruct_ldv_21566_160 ldv_21566 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_21575_161 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_21559_153 ldv_21559 ;
   union __anonunion_ldv_21570_159 ldv_21570 ;
   union __anonunion_ldv_21575_161 ldv_21575 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_163 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_162 {
   struct __anonstruct_linear_163 linear ;
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
   union __anonunion_shared_162 shared ;
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
struct __anonstruct_sigset_t_164 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_164 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_167 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_170 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_165 {
   int _pad[28U] ;
   struct __anonstruct__kill_166 _kill ;
   struct __anonstruct__timer_167 _timer ;
   struct __anonstruct__rt_168 _rt ;
   struct __anonstruct__sigchld_169 _sigchld ;
   struct __anonstruct__sigfault_170 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_165 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_22409_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22418_176 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_178 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22409_175 ldv_22409 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22418_176 ldv_22418 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_payload_178 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
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
   int posix_timer_id ;
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
   unsigned int audit_tty_log_passwd ;
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
   unsigned long watchdog_stamp ;
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
struct sched_class;
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
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
};
struct usb_device;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   unsigned int resuming_ports ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned char poisoned : 1 ;
};
struct scatterlist;
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
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
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
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
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_client;
struct i2c_driver;
struct i2c_board_info;
struct i2c_driver {
   unsigned int class ;
   int (*attach_adapter)(struct i2c_adapter * ) ;
   int (*probe)(struct i2c_client * , struct i2c_device_id const * ) ;
   int (*remove)(struct i2c_client * ) ;
   void (*shutdown)(struct i2c_client * ) ;
   int (*suspend)(struct i2c_client * , pm_message_t ) ;
   int (*resume)(struct i2c_client * ) ;
   void (*alert)(struct i2c_client * , unsigned int ) ;
   int (*command)(struct i2c_client * , unsigned int , void * ) ;
   struct device_driver driver ;
   struct i2c_device_id const *id_table ;
   int (*detect)(struct i2c_client * , struct i2c_board_info * ) ;
   unsigned short const *address_list ;
   struct list_head clients ;
};
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct i2c_driver *driver ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
};
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_bus_recovery_info * ) ;
   void (*unprepare_recovery)(struct i2c_bus_recovery_info * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
   struct i2c_bus_recovery_info *bus_recovery_info ;
};
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
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct memcg_cache_params;
struct kmem_cache_node;
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
struct __anonstruct_ldv_28017_181 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_28018_180 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_28017_181 ldv_28017 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_28018_180 ldv_28018 ;
};
enum v4l2_buf_type {
    V4L2_BUF_TYPE_VIDEO_CAPTURE = 1,
    V4L2_BUF_TYPE_VIDEO_OUTPUT = 2,
    V4L2_BUF_TYPE_VIDEO_OVERLAY = 3,
    V4L2_BUF_TYPE_VBI_CAPTURE = 4,
    V4L2_BUF_TYPE_VBI_OUTPUT = 5,
    V4L2_BUF_TYPE_SLICED_VBI_CAPTURE = 6,
    V4L2_BUF_TYPE_SLICED_VBI_OUTPUT = 7,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_OVERLAY = 8,
    V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = 9,
    V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = 10,
    V4L2_BUF_TYPE_PRIVATE = 128
} ;
enum v4l2_memory {
    V4L2_MEMORY_MMAP = 1,
    V4L2_MEMORY_USERPTR = 2,
    V4L2_MEMORY_OVERLAY = 3,
    V4L2_MEMORY_DMABUF = 4
} ;
enum v4l2_priority {
    V4L2_PRIORITY_UNSET = 0,
    V4L2_PRIORITY_BACKGROUND = 1,
    V4L2_PRIORITY_INTERACTIVE = 2,
    V4L2_PRIORITY_RECORD = 3,
    V4L2_PRIORITY_DEFAULT = 2
} ;
struct v4l2_rect {
   __s32 left ;
   __s32 top ;
   __s32 width ;
   __s32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
};
struct v4l2_capability {
   __u8 driver[16U] ;
   __u8 card[32U] ;
   __u8 bus_info[32U] ;
   __u32 version ;
   __u32 capabilities ;
   __u32 device_caps ;
   __u32 reserved[3U] ;
};
struct v4l2_pix_format {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 bytesperline ;
   __u32 sizeimage ;
   __u32 colorspace ;
   __u32 priv ;
};
struct v4l2_fmtdesc {
   __u32 index ;
   __u32 type ;
   __u32 flags ;
   __u8 description[32U] ;
   __u32 pixelformat ;
   __u32 reserved[4U] ;
};
struct v4l2_frmsize_discrete {
   __u32 width ;
   __u32 height ;
};
struct v4l2_frmsize_stepwise {
   __u32 min_width ;
   __u32 max_width ;
   __u32 step_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 step_height ;
};
union __anonunion_ldv_28512_182 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion_ldv_28512_182 ldv_28512 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion_ldv_28531_183 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion_ldv_28531_183 ldv_28531 ;
   __u32 reserved[2U] ;
};
struct v4l2_timecode {
   __u32 type ;
   __u32 flags ;
   __u8 frames ;
   __u8 seconds ;
   __u8 minutes ;
   __u8 hours ;
   __u8 userbits[4U] ;
};
struct v4l2_jpegcompression {
   int quality ;
   int APPn ;
   int APP_len ;
   char APP_data[60U] ;
   int COM_len ;
   char COM_data[60U] ;
   __u32 jpeg_markers ;
};
struct v4l2_requestbuffers {
   __u32 count ;
   __u32 type ;
   __u32 memory ;
   __u32 reserved[2U] ;
};
union __anonunion_m_184 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_184 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_185 {
   __u32 offset ;
   unsigned long userptr ;
   struct v4l2_plane *planes ;
   __s32 fd ;
};
struct v4l2_buffer {
   __u32 index ;
   __u32 type ;
   __u32 bytesused ;
   __u32 flags ;
   __u32 field ;
   struct timeval timestamp ;
   struct v4l2_timecode timecode ;
   __u32 sequence ;
   __u32 memory ;
   union __anonunion_m_185 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
};
struct v4l2_exportbuffer {
   __u32 type ;
   __u32 index ;
   __u32 plane ;
   __u32 flags ;
   __s32 fd ;
   __u32 reserved[11U] ;
};
struct v4l2_framebuffer {
   __u32 capability ;
   __u32 flags ;
   void *base ;
   struct v4l2_pix_format fmt ;
};
struct v4l2_clip {
   struct v4l2_rect c ;
   struct v4l2_clip *next ;
};
struct v4l2_window {
   struct v4l2_rect w ;
   __u32 field ;
   __u32 chromakey ;
   struct v4l2_clip *clips ;
   __u32 clipcount ;
   void *bitmap ;
   __u8 global_alpha ;
};
struct v4l2_captureparm {
   __u32 capability ;
   __u32 capturemode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 readbuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_outputparm {
   __u32 capability ;
   __u32 outputmode ;
   struct v4l2_fract timeperframe ;
   __u32 extendedmode ;
   __u32 writebuffers ;
   __u32 reserved[4U] ;
};
struct v4l2_cropcap {
   __u32 type ;
   struct v4l2_rect bounds ;
   struct v4l2_rect defrect ;
   struct v4l2_fract pixelaspect ;
};
struct v4l2_crop {
   __u32 type ;
   struct v4l2_rect c ;
};
struct v4l2_selection {
   __u32 type ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[9U] ;
};
typedef __u64 v4l2_std_id;
struct v4l2_bt_timings {
   __u32 width ;
   __u32 height ;
   __u32 interlaced ;
   __u32 polarities ;
   __u64 pixelclock ;
   __u32 hfrontporch ;
   __u32 hsync ;
   __u32 hbackporch ;
   __u32 vfrontporch ;
   __u32 vsync ;
   __u32 vbackporch ;
   __u32 il_vfrontporch ;
   __u32 il_vsync ;
   __u32 il_vbackporch ;
   __u32 standards ;
   __u32 flags ;
   __u32 reserved[14U] ;
};
union __anonunion_ldv_28665_186 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion_ldv_28665_186 ldv_28665 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 reserved[3U] ;
   struct v4l2_dv_timings timings ;
};
struct v4l2_bt_timings_cap {
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u64 min_pixelclock ;
   __u64 max_pixelclock ;
   __u32 standards ;
   __u32 capabilities ;
   __u32 reserved[16U] ;
};
union __anonunion_ldv_28686_187 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion_ldv_28686_187 ldv_28686 ;
};
struct v4l2_input {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 tuner ;
   v4l2_std_id std ;
   __u32 status ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_output {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 audioset ;
   __u32 modulator ;
   v4l2_std_id std ;
   __u32 capabilities ;
   __u32 reserved[3U] ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion_ldv_28717_188 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion_ldv_28717_188 ldv_28717 ;
};
struct v4l2_ext_controls {
   __u32 ctrl_class ;
   __u32 count ;
   __u32 error_idx ;
   __u32 reserved[2U] ;
   struct v4l2_ext_control *controls ;
};
enum v4l2_ctrl_type {
    V4L2_CTRL_TYPE_INTEGER = 1,
    V4L2_CTRL_TYPE_BOOLEAN = 2,
    V4L2_CTRL_TYPE_MENU = 3,
    V4L2_CTRL_TYPE_BUTTON = 4,
    V4L2_CTRL_TYPE_INTEGER64 = 5,
    V4L2_CTRL_TYPE_CTRL_CLASS = 6,
    V4L2_CTRL_TYPE_STRING = 7,
    V4L2_CTRL_TYPE_BITMASK = 8,
    V4L2_CTRL_TYPE_INTEGER_MENU = 9
} ;
struct v4l2_queryctrl {
   __u32 id ;
   __u32 type ;
   __u8 name[32U] ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 step ;
   __s32 default_value ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
union __anonunion_ldv_28750_189 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion_ldv_28750_189 ldv_28750 ;
   __u32 reserved ;
};
struct v4l2_tuner {
   __u32 index ;
   __u8 name[32U] ;
   __u32 type ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 rxsubchans ;
   __u32 audmode ;
   __s32 signal ;
   __s32 afc ;
   __u32 reserved[4U] ;
};
struct v4l2_modulator {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 txsubchans ;
   __u32 reserved[4U] ;
};
struct v4l2_frequency {
   __u32 tuner ;
   __u32 type ;
   __u32 frequency ;
   __u32 reserved[8U] ;
};
struct v4l2_frequency_band {
   __u32 tuner ;
   __u32 type ;
   __u32 index ;
   __u32 capability ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 modulation ;
   __u32 reserved[9U] ;
};
struct v4l2_hw_freq_seek {
   __u32 tuner ;
   __u32 type ;
   __u32 seek_upward ;
   __u32 wrap_around ;
   __u32 spacing ;
   __u32 rangelow ;
   __u32 rangehigh ;
   __u32 reserved[5U] ;
};
struct v4l2_audio {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_audioout {
   __u32 index ;
   __u8 name[32U] ;
   __u32 capability ;
   __u32 mode ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx_entry {
   __u64 offset ;
   __u64 pts ;
   __u32 length ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_enc_idx {
   __u32 entries ;
   __u32 entries_cap ;
   __u32 reserved[4U] ;
   struct v4l2_enc_idx_entry entry[64U] ;
};
struct __anonstruct_raw_191 {
   __u32 data[8U] ;
};
union __anonunion_ldv_28829_190 {
   struct __anonstruct_raw_191 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_28829_190 ldv_28829 ;
};
struct __anonstruct_stop_193 {
   __u64 pts ;
};
struct __anonstruct_start_194 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_195 {
   __u32 data[16U] ;
};
union __anonunion_ldv_28844_192 {
   struct __anonstruct_stop_193 stop ;
   struct __anonstruct_start_194 start ;
   struct __anonstruct_raw_195 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion_ldv_28844_192 ldv_28844 ;
};
struct v4l2_vbi_format {
   __u32 sampling_rate ;
   __u32 offset ;
   __u32 samples_per_line ;
   __u32 sample_format ;
   __s32 start[2U] ;
   __u32 count[2U] ;
   __u32 flags ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_format {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 io_size ;
   __u32 reserved[2U] ;
};
struct v4l2_sliced_vbi_cap {
   __u16 service_set ;
   __u16 service_lines[2U][24U] ;
   __u32 type ;
   __u32 reserved[3U] ;
};
struct v4l2_sliced_vbi_data {
   __u32 id ;
   __u32 field ;
   __u32 line ;
   __u32 reserved ;
   __u8 data[48U] ;
};
struct v4l2_plane_pix_format {
   __u32 sizeimage ;
   __u16 bytesperline ;
   __u16 reserved[7U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 reserved[11U] ;
};
union __anonunion_fmt_197 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_197 fmt ;
};
union __anonunion_parm_198 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_198 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion_ldv_28953_201 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion_ldv_28953_201 ldv_28953 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
};
struct v4l2_dbg_chip_ident {
   struct v4l2_dbg_match match ;
   __u32 ident ;
   __u32 revision ;
};
struct v4l2_dbg_chip_info {
   struct v4l2_dbg_match match ;
   char name[32U] ;
   __u32 flags ;
   __u32 reserved[32U] ;
};
struct v4l2_create_buffers {
   __u32 index ;
   __u32 count ;
   __u32 memory ;
   struct v4l2_format format ;
   __u32 reserved[8U] ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
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
struct dma_buf;
struct dma_buf_attachment;
struct dma_buf_ops {
   int (*attach)(struct dma_buf * , struct device * , struct dma_buf_attachment * ) ;
   void (*detach)(struct dma_buf * , struct dma_buf_attachment * ) ;
   struct sg_table *(*map_dma_buf)(struct dma_buf_attachment * , enum dma_data_direction ) ;
   void (*unmap_dma_buf)(struct dma_buf_attachment * , struct sg_table * , enum dma_data_direction ) ;
   void (*release)(struct dma_buf * ) ;
   int (*begin_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void (*end_cpu_access)(struct dma_buf * , size_t , size_t , enum dma_data_direction ) ;
   void *(*kmap_atomic)(struct dma_buf * , unsigned long ) ;
   void (*kunmap_atomic)(struct dma_buf * , unsigned long , void * ) ;
   void *(*kmap)(struct dma_buf * , unsigned long ) ;
   void (*kunmap)(struct dma_buf * , unsigned long , void * ) ;
   int (*mmap)(struct dma_buf * , struct vm_area_struct * ) ;
   void *(*vmap)(struct dma_buf * ) ;
   void (*vunmap)(struct dma_buf * , void * ) ;
};
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct list_head list_node ;
   void *priv ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , int ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , int ) ;
   void (*detach_dmabuf)(void * ) ;
   int (*map_dmabuf)(void * ) ;
   void (*unmap_dmabuf)(void * ) ;
   void *(*vaddr)(void * ) ;
   void *(*cookie)(void * ) ;
   unsigned int (*num_users)(void * ) ;
   int (*mmap)(void * , struct vm_area_struct * ) ;
};
struct vb2_plane {
   void *mem_priv ;
   struct dma_buf *dbuf ;
   unsigned int dbuf_mapped ;
};
enum vb2_buffer_state {
    VB2_BUF_STATE_DEQUEUED = 0,
    VB2_BUF_STATE_PREPARED = 1,
    VB2_BUF_STATE_QUEUED = 2,
    VB2_BUF_STATE_ACTIVE = 3,
    VB2_BUF_STATE_DONE = 4,
    VB2_BUF_STATE_ERROR = 5
} ;
struct vb2_queue;
struct vb2_buffer {
   struct v4l2_buffer v4l2_buf ;
   struct v4l2_plane v4l2_planes[8U] ;
   struct vb2_queue *vb2_queue ;
   unsigned int num_planes ;
   enum vb2_buffer_state state ;
   struct list_head queued_entry ;
   struct list_head done_entry ;
   struct vb2_plane planes[8U] ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   int (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   int (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct v4l2_fh;
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned int io_flags ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_type ;
   gfp_t gfp_flags ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   atomic_t queued_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned char streaming : 1 ;
   struct vb2_fileio_data *fileio ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct media_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct media_devnode {
   struct media_file_operations const *fops ;
   struct device dev ;
   struct cdev cdev ;
   struct device *parent ;
   int minor ;
   unsigned long flags ;
   void (*release)(struct media_devnode * ) ;
};
struct media_pipeline {
};
struct media_pad;
struct media_link {
   struct media_pad *source ;
   struct media_pad *sink ;
   struct media_link *reverse ;
   unsigned long flags ;
};
struct media_entity;
struct media_pad {
   struct media_entity *entity ;
   u16 index ;
   unsigned long flags ;
};
struct media_entity_operations {
   int (*link_setup)(struct media_entity * , struct media_pad const * , struct media_pad const * ,
                     u32 ) ;
   int (*link_validate)(struct media_link * ) ;
};
struct media_device;
struct __anonstruct_v4l_208 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_209 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_210 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_207 {
   struct __anonstruct_v4l_208 v4l ;
   struct __anonstruct_fb_209 fb ;
   struct __anonstruct_alsa_210 alsa ;
   int dvb ;
};
struct media_entity {
   struct list_head list ;
   struct media_device *parent ;
   u32 id ;
   char const *name ;
   u32 type ;
   u32 revision ;
   unsigned long flags ;
   u32 group_id ;
   u16 num_pads ;
   u16 num_links ;
   u16 num_backlinks ;
   u16 max_links ;
   struct media_pad *pads ;
   struct media_link *links ;
   struct media_entity_operations const *ops ;
   int stream_count ;
   int use_count ;
   struct media_pipeline *pipe ;
   union __anonunion_info_207 info ;
};
struct media_device {
   struct device *dev ;
   struct media_devnode devnode ;
   char model[32U] ;
   char serial[40U] ;
   char bus_info[32U] ;
   u32 hw_revision ;
   u32 driver_version ;
   u32 entity_id ;
   struct list_head entities ;
   spinlock_t lock ;
   struct mutex graph_mutex ;
   int (*link_notify)(struct media_pad * , struct media_pad * , u32 ) ;
};
enum v4l2_mbus_pixelcode {
    V4L2_MBUS_FMT_FIXED = 1,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_BE = 4097,
    V4L2_MBUS_FMT_RGB444_2X8_PADHI_LE = 4098,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_BE = 4099,
    V4L2_MBUS_FMT_RGB555_2X8_PADHI_LE = 4100,
    V4L2_MBUS_FMT_BGR565_2X8_BE = 4101,
    V4L2_MBUS_FMT_BGR565_2X8_LE = 4102,
    V4L2_MBUS_FMT_RGB565_2X8_BE = 4103,
    V4L2_MBUS_FMT_RGB565_2X8_LE = 4104,
    V4L2_MBUS_FMT_RGB666_1X18 = 4105,
    V4L2_MBUS_FMT_RGB888_1X24 = 4106,
    V4L2_MBUS_FMT_RGB888_2X12_BE = 4107,
    V4L2_MBUS_FMT_RGB888_2X12_LE = 4108,
    V4L2_MBUS_FMT_Y8_1X8 = 8193,
    V4L2_MBUS_FMT_UV8_1X8 = 8213,
    V4L2_MBUS_FMT_UYVY8_1_5X8 = 8194,
    V4L2_MBUS_FMT_VYUY8_1_5X8 = 8195,
    V4L2_MBUS_FMT_YUYV8_1_5X8 = 8196,
    V4L2_MBUS_FMT_YVYU8_1_5X8 = 8197,
    V4L2_MBUS_FMT_UYVY8_2X8 = 8198,
    V4L2_MBUS_FMT_VYUY8_2X8 = 8199,
    V4L2_MBUS_FMT_YUYV8_2X8 = 8200,
    V4L2_MBUS_FMT_YVYU8_2X8 = 8201,
    V4L2_MBUS_FMT_Y10_1X10 = 8202,
    V4L2_MBUS_FMT_YUYV10_2X10 = 8203,
    V4L2_MBUS_FMT_YVYU10_2X10 = 8204,
    V4L2_MBUS_FMT_Y12_1X12 = 8211,
    V4L2_MBUS_FMT_UYVY8_1X16 = 8207,
    V4L2_MBUS_FMT_VYUY8_1X16 = 8208,
    V4L2_MBUS_FMT_YUYV8_1X16 = 8209,
    V4L2_MBUS_FMT_YVYU8_1X16 = 8210,
    V4L2_MBUS_FMT_YDYUYDYV8_1X16 = 8212,
    V4L2_MBUS_FMT_YUYV10_1X20 = 8205,
    V4L2_MBUS_FMT_YVYU10_1X20 = 8206,
    V4L2_MBUS_FMT_YUV10_1X30 = 8214,
    V4L2_MBUS_FMT_SBGGR8_1X8 = 12289,
    V4L2_MBUS_FMT_SGBRG8_1X8 = 12307,
    V4L2_MBUS_FMT_SGRBG8_1X8 = 12290,
    V4L2_MBUS_FMT_SRGGB8_1X8 = 12308,
    V4L2_MBUS_FMT_SBGGR10_ALAW8_1X8 = 12309,
    V4L2_MBUS_FMT_SGBRG10_ALAW8_1X8 = 12310,
    V4L2_MBUS_FMT_SGRBG10_ALAW8_1X8 = 12311,
    V4L2_MBUS_FMT_SRGGB10_ALAW8_1X8 = 12312,
    V4L2_MBUS_FMT_SBGGR10_DPCM8_1X8 = 12299,
    V4L2_MBUS_FMT_SGBRG10_DPCM8_1X8 = 12300,
    V4L2_MBUS_FMT_SGRBG10_DPCM8_1X8 = 12297,
    V4L2_MBUS_FMT_SRGGB10_DPCM8_1X8 = 12301,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_BE = 12291,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADHI_LE = 12292,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_BE = 12293,
    V4L2_MBUS_FMT_SBGGR10_2X8_PADLO_LE = 12294,
    V4L2_MBUS_FMT_SBGGR10_1X10 = 12295,
    V4L2_MBUS_FMT_SGBRG10_1X10 = 12302,
    V4L2_MBUS_FMT_SGRBG10_1X10 = 12298,
    V4L2_MBUS_FMT_SRGGB10_1X10 = 12303,
    V4L2_MBUS_FMT_SBGGR12_1X12 = 12296,
    V4L2_MBUS_FMT_SGBRG12_1X12 = 12304,
    V4L2_MBUS_FMT_SGRBG12_1X12 = 12305,
    V4L2_MBUS_FMT_SRGGB12_1X12 = 12306,
    V4L2_MBUS_FMT_JPEG_1X8 = 16385,
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481
} ;
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u32 reserved[7U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_crop {
   __u32 which ;
   __u32 pad ;
   struct v4l2_rect rect ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval {
   __u32 pad ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_frame_interval_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 width ;
   __u32 height ;
   struct v4l2_fract interval ;
   __u32 reserved[9U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
};
struct video_device;
struct v4l2_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl32)(struct file * , unsigned int , unsigned long ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct file * ) ;
   int (*release)(struct file * ) ;
};
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct device *parent ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct vb2_queue *queue ;
   struct v4l2_prio_state *prio ;
   char name[32U] ;
   int vfl_type ;
   int vfl_dir ;
   int minor ;
   u16 num ;
   unsigned long flags ;
   int index ;
   spinlock_t fh_lock ;
   struct list_head fh_list ;
   int debug ;
   v4l2_std_id tvnorms ;
   v4l2_std_id current_norm ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev;
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
};
struct v4l2_fh {
   struct list_head list ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   enum v4l2_priority prio ;
   wait_queue_head_t wait ;
   struct list_head subscribed ;
   struct list_head available ;
   unsigned int navailable ;
   u32 sequence ;
};
enum v4l2_mbus_type {
    V4L2_MBUS_PARALLEL = 0,
    V4L2_MBUS_BT656 = 1,
    V4L2_MBUS_CSI2 = 2
} ;
struct v4l2_mbus_config {
   enum v4l2_mbus_type type ;
   unsigned int flags ;
};
struct v4l2_subdev_fh;
struct tuner_setup;
struct v4l2_mbus_frame_desc;
struct v4l2_decode_vbi_line {
   u32 is_second_field ;
   u8 *p ;
   u32 line ;
   u32 type ;
};
struct v4l2_subdev_io_pin_config {
   u32 flags ;
   u8 pin ;
   u8 function ;
   u8 value ;
   u8 strength ;
};
struct v4l2_subdev_core_ops {
   int (*g_chip_ident)(struct v4l2_subdev * , struct v4l2_dbg_chip_ident * ) ;
   int (*log_status)(struct v4l2_subdev * ) ;
   int (*s_io_pin_config)(struct v4l2_subdev * , size_t , struct v4l2_subdev_io_pin_config * ) ;
   int (*init)(struct v4l2_subdev * , u32 ) ;
   int (*load_fw)(struct v4l2_subdev * ) ;
   int (*reset)(struct v4l2_subdev * , u32 ) ;
   int (*s_gpio)(struct v4l2_subdev * , u32 ) ;
   int (*queryctrl)(struct v4l2_subdev * , struct v4l2_queryctrl * ) ;
   int (*g_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*s_ctrl)(struct v4l2_subdev * , struct v4l2_control * ) ;
   int (*g_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*s_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*try_ext_ctrls)(struct v4l2_subdev * , struct v4l2_ext_controls * ) ;
   int (*querymenu)(struct v4l2_subdev * , struct v4l2_querymenu * ) ;
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   int (*g_register)(struct v4l2_subdev * , struct v4l2_dbg_register * ) ;
   int (*s_register)(struct v4l2_subdev * , struct v4l2_dbg_register const * ) ;
   int (*s_power)(struct v4l2_subdev * , int ) ;
   int (*interrupt_service_routine)(struct v4l2_subdev * , u32 , bool * ) ;
   int (*subscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
   int (*unsubscribe_event)(struct v4l2_subdev * , struct v4l2_fh * , struct v4l2_event_subscription * ) ;
};
struct v4l2_subdev_tuner_ops {
   int (*s_radio)(struct v4l2_subdev * ) ;
   int (*s_frequency)(struct v4l2_subdev * , struct v4l2_frequency const * ) ;
   int (*g_frequency)(struct v4l2_subdev * , struct v4l2_frequency * ) ;
   int (*g_tuner)(struct v4l2_subdev * , struct v4l2_tuner * ) ;
   int (*s_tuner)(struct v4l2_subdev * , struct v4l2_tuner const * ) ;
   int (*g_modulator)(struct v4l2_subdev * , struct v4l2_modulator * ) ;
   int (*s_modulator)(struct v4l2_subdev * , struct v4l2_modulator const * ) ;
   int (*s_type_addr)(struct v4l2_subdev * , struct tuner_setup * ) ;
   int (*s_config)(struct v4l2_subdev * , struct v4l2_priv_tun_config const * ) ;
};
struct v4l2_subdev_audio_ops {
   int (*s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_i2s_clock_freq)(struct v4l2_subdev * , u32 ) ;
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
};
struct v4l2_mbus_frame_desc_entry {
   u16 flags ;
   u32 pixelcode ;
   u32 length ;
};
struct v4l2_mbus_frame_desc {
   struct v4l2_mbus_frame_desc_entry entry[4U] ;
   unsigned short num_entries ;
};
struct v4l2_subdev_video_ops {
   int (*s_routing)(struct v4l2_subdev * , u32 , u32 , u32 ) ;
   int (*s_crystal_freq)(struct v4l2_subdev * , u32 , u32 ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_input_status)(struct v4l2_subdev * , u32 * ) ;
   int (*s_stream)(struct v4l2_subdev * , int ) ;
   int (*cropcap)(struct v4l2_subdev * , struct v4l2_cropcap * ) ;
   int (*g_crop)(struct v4l2_subdev * , struct v4l2_crop * ) ;
   int (*s_crop)(struct v4l2_subdev * , struct v4l2_crop const * ) ;
   int (*g_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*s_parm)(struct v4l2_subdev * , struct v4l2_streamparm * ) ;
   int (*g_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*s_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_frame_interval * ) ;
   int (*enum_framesizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*enum_frameintervals)(struct v4l2_subdev * , struct v4l2_frmivalenum * ) ;
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_mbus_fmt)(struct v4l2_subdev * , unsigned int , enum v4l2_mbus_pixelcode * ) ;
   int (*enum_mbus_fsizes)(struct v4l2_subdev * , struct v4l2_frmsizeenum * ) ;
   int (*g_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*try_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*s_mbus_fmt)(struct v4l2_subdev * , struct v4l2_mbus_framefmt * ) ;
   int (*g_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config * ) ;
   int (*s_mbus_config)(struct v4l2_subdev * , struct v4l2_mbus_config const * ) ;
   int (*s_rx_buffer)(struct v4l2_subdev * , void * , unsigned int * ) ;
};
struct v4l2_subdev_vbi_ops {
   int (*decode_vbi_line)(struct v4l2_subdev * , struct v4l2_decode_vbi_line * ) ;
   int (*s_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data const * ) ;
   int (*g_vbi_data)(struct v4l2_subdev * , struct v4l2_sliced_vbi_data * ) ;
   int (*g_sliced_vbi_cap)(struct v4l2_subdev * , struct v4l2_sliced_vbi_cap * ) ;
   int (*s_raw_fmt)(struct v4l2_subdev * , struct v4l2_vbi_format * ) ;
   int (*g_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
   int (*s_sliced_fmt)(struct v4l2_subdev * , struct v4l2_sliced_vbi_format * ) ;
};
struct v4l2_subdev_sensor_ops {
   int (*g_skip_top_lines)(struct v4l2_subdev * , u32 * ) ;
   int (*g_skip_frames)(struct v4l2_subdev * , u32 * ) ;
};
enum v4l2_subdev_ir_mode {
    V4L2_SUBDEV_IR_MODE_PULSE_WIDTH = 0
} ;
struct v4l2_subdev_ir_parameters {
   unsigned int bytes_per_data_element ;
   enum v4l2_subdev_ir_mode mode ;
   bool enable ;
   bool interrupt_enable ;
   bool shutdown ;
   bool modulation ;
   u32 max_pulse_width ;
   unsigned int carrier_freq ;
   unsigned int duty_cycle ;
   bool invert_level ;
   bool invert_carrier_sense ;
   u32 noise_filter_min_width ;
   unsigned int carrier_range_lower ;
   unsigned int carrier_range_upper ;
   u32 resolution ;
};
struct v4l2_subdev_ir_ops {
   int (*rx_read)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*rx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*rx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_write)(struct v4l2_subdev * , u8 * , size_t , ssize_t * ) ;
   int (*tx_g_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
   int (*tx_s_parameters)(struct v4l2_subdev * , struct v4l2_subdev_ir_parameters * ) ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_format * ) ;
   int (*set_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_crop)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_crop * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_fh * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_subdev_edid * ) ;
   int (*link_validate)(struct v4l2_subdev * , struct media_link * , struct v4l2_subdev_format * ,
                        struct v4l2_subdev_format * ) ;
   int (*get_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
   int (*set_frame_desc)(struct v4l2_subdev * , unsigned int , struct v4l2_mbus_frame_desc * ) ;
};
struct v4l2_subdev_ops {
   struct v4l2_subdev_core_ops const *core ;
   struct v4l2_subdev_tuner_ops const *tuner ;
   struct v4l2_subdev_audio_ops const *audio ;
   struct v4l2_subdev_video_ops const *video ;
   struct v4l2_subdev_vbi_ops const *vbi ;
   struct v4l2_subdev_ir_ops const *ir ;
   struct v4l2_subdev_sensor_ops const *sensor ;
   struct v4l2_subdev_pad_ops const *pad ;
};
struct v4l2_subdev_internal_ops {
   int (*registered)(struct v4l2_subdev * ) ;
   void (*unregistered)(struct v4l2_subdev * ) ;
   int (*open)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
   int (*close)(struct v4l2_subdev * , struct v4l2_subdev_fh * ) ;
};
struct v4l2_subdev {
   struct media_entity entity ;
   struct list_head list ;
   struct module *owner ;
   u32 flags ;
   struct v4l2_device *v4l2_dev ;
   struct v4l2_subdev_ops const *ops ;
   struct v4l2_subdev_internal_ops const *internal_ops ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   char name[32U] ;
   u32 grp_id ;
   void *dev_priv ;
   void *host_priv ;
   struct video_device *devnode ;
};
struct __anonstruct_pad_212 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_212 *pad ;
};
struct v4l2_device {
   struct device *dev ;
   struct media_device *mdev ;
   struct list_head subdevs ;
   spinlock_t lock ;
   char name[36U] ;
   void (*notify)(struct v4l2_subdev * , unsigned int , void * ) ;
   struct v4l2_ctrl_handler *ctrl_handler ;
   struct v4l2_prio_state prio ;
   struct mutex ioctl_lock ;
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion_ldv_31886_213 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion_ldv_31890_214 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_215 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion_ldv_31901_216 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion_ldv_31886_213 ldv_31886 ;
   union __anonunion_ldv_31890_214 ldv_31890 ;
   unsigned long flags ;
   union __anonunion_cur_215 cur ;
   union __anonunion_ldv_31901_216 ldv_31901 ;
   void *priv ;
};
struct v4l2_ctrl_ref {
   struct list_head node ;
   struct v4l2_ctrl_ref *next ;
   struct v4l2_ctrl *ctrl ;
   struct v4l2_ctrl_helper *helper ;
};
struct v4l2_ctrl_handler {
   struct mutex _lock ;
   struct mutex *lock ;
   struct list_head ctrls ;
   struct list_head ctrl_refs ;
   struct v4l2_ctrl_ref *cached ;
   struct v4l2_ctrl_ref **buckets ;
   void (*notify)(struct v4l2_ctrl * , void * ) ;
   void *notify_priv ;
   u16 nr_of_buckets ;
   int error ;
};
struct input_id {
   __u16 bustype ;
   __u16 vendor ;
   __u16 product ;
   __u16 version ;
};
struct input_absinfo {
   __s32 value ;
   __s32 minimum ;
   __s32 maximum ;
   __s32 fuzz ;
   __s32 flat ;
   __s32 resolution ;
};
struct input_keymap_entry {
   __u8 flags ;
   __u8 len ;
   __u16 index ;
   __u32 keycode ;
   __u8 scancode[32U] ;
};
struct ff_replay {
   __u16 length ;
   __u16 delay ;
};
struct ff_trigger {
   __u16 button ;
   __u16 interval ;
};
struct ff_envelope {
   __u16 attack_length ;
   __u16 attack_level ;
   __u16 fade_length ;
   __u16 fade_level ;
};
struct ff_constant_effect {
   __s16 level ;
   struct ff_envelope envelope ;
};
struct ff_ramp_effect {
   __s16 start_level ;
   __s16 end_level ;
   struct ff_envelope envelope ;
};
struct ff_condition_effect {
   __u16 right_saturation ;
   __u16 left_saturation ;
   __s16 right_coeff ;
   __s16 left_coeff ;
   __u16 deadband ;
   __s16 center ;
};
struct ff_periodic_effect {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   __s16 *custom_data ;
};
struct ff_rumble_effect {
   __u16 strong_magnitude ;
   __u16 weak_magnitude ;
};
union __anonunion_u_220 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_220 u ;
};
struct input_value {
   __u16 type ;
   __u16 code ;
   __s32 value ;
};
struct ff_device;
struct input_mt;
struct input_handle;
struct input_dev {
   char const *name ;
   char const *phys ;
   char const *uniq ;
   struct input_id id ;
   unsigned long propbit[1U] ;
   unsigned long evbit[1U] ;
   unsigned long keybit[12U] ;
   unsigned long relbit[1U] ;
   unsigned long absbit[1U] ;
   unsigned long mscbit[1U] ;
   unsigned long ledbit[1U] ;
   unsigned long sndbit[1U] ;
   unsigned long ffbit[2U] ;
   unsigned long swbit[1U] ;
   unsigned int hint_events_per_packet ;
   unsigned int keycodemax ;
   unsigned int keycodesize ;
   void *keycode ;
   int (*setkeycode)(struct input_dev * , struct input_keymap_entry const * , unsigned int * ) ;
   int (*getkeycode)(struct input_dev * , struct input_keymap_entry * ) ;
   struct ff_device *ff ;
   unsigned int repeat_key ;
   struct timer_list timer ;
   int rep[2U] ;
   struct input_mt *mt ;
   struct input_absinfo *absinfo ;
   unsigned long key[12U] ;
   unsigned long led[1U] ;
   unsigned long snd[1U] ;
   unsigned long sw[1U] ;
   int (*open)(struct input_dev * ) ;
   void (*close)(struct input_dev * ) ;
   int (*flush)(struct input_dev * , struct file * ) ;
   int (*event)(struct input_dev * , unsigned int , unsigned int , int ) ;
   struct input_handle *grab ;
   spinlock_t event_lock ;
   struct mutex mutex ;
   unsigned int users ;
   bool going_away ;
   struct device dev ;
   struct list_head h_list ;
   struct list_head node ;
   unsigned int num_vals ;
   unsigned int max_vals ;
   struct input_value *vals ;
   bool devres_managed ;
};
struct input_handler {
   void *private ;
   void (*event)(struct input_handle * , unsigned int , unsigned int , int ) ;
   void (*events)(struct input_handle * , struct input_value const * , unsigned int ) ;
   bool (*filter)(struct input_handle * , unsigned int , unsigned int , int ) ;
   bool (*match)(struct input_handler * , struct input_dev * ) ;
   int (*connect)(struct input_handler * , struct input_dev * , struct input_device_id const * ) ;
   void (*disconnect)(struct input_handle * ) ;
   void (*start)(struct input_handle * ) ;
   bool legacy_minors ;
   int minor ;
   char const *name ;
   struct input_device_id const *id_table ;
   struct list_head h_list ;
   struct list_head node ;
};
struct input_handle {
   void *private ;
   int open ;
   char const *name ;
   struct input_dev *dev ;
   struct input_handler *handler ;
   struct list_head d_node ;
   struct list_head h_node ;
};
struct ff_device {
   int (*upload)(struct input_dev * , struct ff_effect * , struct ff_effect * ) ;
   int (*erase)(struct input_dev * , int ) ;
   int (*playback)(struct input_dev * , int , int ) ;
   void (*set_gain)(struct input_dev * , u16 ) ;
   void (*set_autocenter)(struct input_dev * , u16 ) ;
   void (*destroy)(struct ff_device * ) ;
   void *private ;
   unsigned long ffbit[2U] ;
   struct mutex mutex ;
   int max_effects ;
   struct ff_effect *effects ;
   struct file *effect_owners[] ;
};
enum em28xx_chip_id {
    CHIP_ID_EM2800 = 7,
    CHIP_ID_EM2710 = 17,
    CHIP_ID_EM2820 = 18,
    CHIP_ID_EM2840 = 20,
    CHIP_ID_EM2750 = 33,
    CHIP_ID_EM2860 = 34,
    CHIP_ID_EM2870 = 35,
    CHIP_ID_EM2883 = 36,
    CHIP_ID_EM2765 = 54,
    CHIP_ID_EM2874 = 65,
    CHIP_ID_EM2884 = 68,
    CHIP_ID_EM28174 = 113
} ;
enum em28xx_mode {
    EM28XX_SUSPEND = 0,
    EM28XX_ANALOG_MODE = 1,
    EM28XX_DIGITAL_MODE = 2
} ;
struct em28xx;
struct em28xx_usb_bufs {
   int max_pkt_size ;
   int num_packets ;
   int num_bufs ;
   struct urb **urb ;
   char **transfer_buffer ;
};
struct em28xx_buffer;
struct em28xx_usb_ctl {
   struct em28xx_usb_bufs analog_bufs ;
   struct em28xx_usb_bufs digital_bufs ;
   struct em28xx_buffer *vid_buf ;
   struct em28xx_buffer *vbi_buf ;
   int (*urb_data_copy)(struct em28xx * , struct urb * ) ;
};
struct em28xx_fmt {
   char *name ;
   u32 fourcc ;
   int depth ;
   int reg ;
};
struct em28xx_buffer {
   struct vb2_buffer vb ;
   struct list_head list ;
   void *mem ;
   unsigned int length ;
   int top_field ;
   unsigned int pos ;
   char *vb_buf ;
};
struct em28xx_dmaqueue {
   struct list_head active ;
   wait_queue_head_t wq ;
};
enum enum28xx_itype {
    EM28XX_VMUX_COMPOSITE1 = 1,
    EM28XX_VMUX_COMPOSITE2 = 2,
    EM28XX_VMUX_COMPOSITE3 = 3,
    EM28XX_VMUX_COMPOSITE4 = 4,
    EM28XX_VMUX_SVIDEO = 5,
    EM28XX_VMUX_TELEVISION = 6,
    EM28XX_VMUX_CABLE = 7,
    EM28XX_VMUX_DVB = 8,
    EM28XX_VMUX_DEBUG = 9,
    EM28XX_RADIO = 10
} ;
enum em28xx_ac97_mode {
    EM28XX_NO_AC97 = 0,
    EM28XX_AC97_EM202 = 1,
    EM28XX_AC97_SIGMATEL = 2,
    EM28XX_AC97_OTHER = 3
} ;
struct em28xx_audio_mode {
   enum em28xx_ac97_mode ac97 ;
   u16 ac97_feat ;
   u32 ac97_vendor_id ;
   unsigned char has_audio : 1 ;
   unsigned char i2s_3rates : 1 ;
   unsigned char i2s_5rates : 1 ;
};
enum em28xx_amux {
    EM28XX_AMUX_VIDEO = 0,
    EM28XX_AMUX_LINE_IN = 1,
    EM28XX_AMUX_VIDEO2 = 2,
    EM28XX_AMUX_PHONE = 3,
    EM28XX_AMUX_MIC = 4,
    EM28XX_AMUX_CD = 5,
    EM28XX_AMUX_AUX = 6,
    EM28XX_AMUX_PCM_OUT = 7
} ;
enum em28xx_aout {
    EM28XX_AOUT_MASTER = 1,
    EM28XX_AOUT_LINE = 2,
    EM28XX_AOUT_MONO = 4,
    EM28XX_AOUT_LFE = 8,
    EM28XX_AOUT_SURR = 16,
    EM28XX_AOUT_PCM_IN = 128,
    EM28XX_AOUT_PCM_MIC_PCM = 0,
    EM28XX_AOUT_PCM_CD = 256,
    EM28XX_AOUT_PCM_VIDEO = 512,
    EM28XX_AOUT_PCM_AUX = 768,
    EM28XX_AOUT_PCM_LINE = 1024,
    EM28XX_AOUT_PCM_STEREO = 1280,
    EM28XX_AOUT_PCM_MONO = 1536,
    EM28XX_AOUT_PCM_PHONE = 1792
} ;
struct em28xx_reg_seq {
   int reg ;
   unsigned char val ;
   unsigned char mask ;
   int sleep ;
};
struct em28xx_input {
   enum enum28xx_itype type ;
   unsigned int vmux ;
   enum em28xx_amux amux ;
   enum em28xx_aout aout ;
   struct em28xx_reg_seq *gpio ;
};
enum em28xx_decoder {
    EM28XX_NODECODER = 0,
    EM28XX_TVP5150 = 1,
    EM28XX_SAA711X = 2
} ;
enum em28xx_sensor {
    EM28XX_NOSENSOR = 0,
    EM28XX_MT9V011 = 1,
    EM28XX_MT9M001 = 2,
    EM28XX_MT9M111 = 3,
    EM28XX_OV2640 = 4
} ;
enum em28xx_adecoder {
    EM28XX_NOADECODER = 0,
    EM28XX_TVAUDIO = 1
} ;
struct em28xx_board {
   char *name ;
   int vchannels ;
   int tuner_type ;
   int tuner_addr ;
   unsigned int def_i2c_bus ;
   unsigned int tda9887_conf ;
   struct em28xx_reg_seq *dvb_gpio ;
   struct em28xx_reg_seq *suspend_gpio ;
   struct em28xx_reg_seq *tuner_gpio ;
   struct em28xx_reg_seq *mute_gpio ;
   unsigned char is_em2800 : 1 ;
   unsigned char has_msp34xx : 1 ;
   unsigned char mts_firmware : 1 ;
   unsigned char max_range_640_480 : 1 ;
   unsigned char has_dvb : 1 ;
   unsigned char has_snapshot_button : 1 ;
   unsigned char is_webcam : 1 ;
   unsigned char valid : 1 ;
   unsigned char has_ir_i2c : 1 ;
   unsigned char xclk ;
   unsigned char i2c_speed ;
   unsigned char radio_addr ;
   unsigned short tvaudio_addr ;
   enum em28xx_decoder decoder ;
   enum em28xx_adecoder adecoder ;
   struct em28xx_input input[4U] ;
   struct em28xx_input radio ;
   char *ir_codes ;
};
struct snd_pcm_substream;
struct snd_card;
struct em28xx_audio {
   char name[50U] ;
   char *transfer_buffer[5U] ;
   struct urb *urb[5U] ;
   struct usb_device *udev ;
   unsigned int capture_transfer_done ;
   struct snd_pcm_substream *capture_pcm_substream ;
   unsigned int hwptr_done_capture ;
   struct snd_card *sndcard ;
   int users ;
   spinlock_t slock ;
};
struct em28xx_fh {
   struct v4l2_fh fh ;
   struct em28xx *dev ;
   enum v4l2_buf_type type ;
};
enum em28xx_i2c_algo_type {
    EM28XX_I2C_ALGO_EM28XX = 0,
    EM28XX_I2C_ALGO_EM2800 = 1,
    EM28XX_I2C_ALGO_EM25XX_BUS_B = 2
} ;
struct em28xx_i2c_bus {
   struct em28xx *dev ;
   unsigned int bus ;
   enum em28xx_i2c_algo_type algo_type ;
};
struct em28xx_IR;
struct em28xx_dvb;
struct em28xx {
   char name[30U] ;
   int model ;
   int devno ;
   enum em28xx_chip_id chip_id ;
   unsigned char is_em25xx : 1 ;
   unsigned char disconnected : 1 ;
   int audio_ifnum ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct em28xx_board board ;
   enum em28xx_sensor em28xx_sensor ;
   int sensor_xres ;
   int sensor_yres ;
   int sensor_xtal ;
   int progressive ;
   int vinmode ;
   int vinctl ;
   unsigned char has_audio_class : 1 ;
   unsigned char has_alsa_audio : 1 ;
   unsigned char is_audio_only : 1 ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
   struct em28xx_fmt *format ;
   struct em28xx_IR *ir ;
   unsigned int wait_after_write ;
   struct list_head devlist ;
   u32 i2s_speed ;
   struct em28xx_audio_mode audio_mode ;
   int tuner_type ;
   int tuner_addr ;
   int tda9887_conf ;
   struct i2c_adapter i2c_adap[2U] ;
   struct i2c_client i2c_client[2U] ;
   struct em28xx_i2c_bus i2c_bus[2U] ;
   unsigned char eeprom_addrwidth_16bit : 1 ;
   unsigned int def_i2c_bus ;
   unsigned int cur_i2c_bus ;
   struct rt_mutex i2c_bus_lock ;
   int users ;
   int streaming_users ;
   struct video_device *vdev ;
   v4l2_std_id norm ;
   int ctl_freq ;
   unsigned int ctl_input ;
   unsigned int ctl_ainput ;
   unsigned int ctl_aoutput ;
   int mute ;
   int volume ;
   int width ;
   int height ;
   unsigned int hscale ;
   unsigned int vscale ;
   int interlaced ;
   unsigned int video_bytesread ;
   unsigned long hash ;
   unsigned long i2c_hash ;
   struct em28xx_audio adev ;
   int capture_type ;
   unsigned char top_field : 1 ;
   int vbi_read ;
   unsigned int vbi_width ;
   unsigned int vbi_height ;
   struct work_struct request_module_wk ;
   struct mutex lock ;
   struct mutex ctrl_urb_lock ;
   struct list_head inqueue ;
   struct list_head outqueue ;
   struct video_device *vbi_dev ;
   struct video_device *radio_dev ;
   struct vb2_queue vb_vidq ;
   struct vb2_queue vb_vbiq ;
   struct mutex vb_queue_lock ;
   struct mutex vb_vbi_queue_lock ;
   unsigned int resources ;
   u8 *eedata ;
   u16 eedata_len ;
   struct em28xx_dmaqueue vidq ;
   struct em28xx_dmaqueue vbiq ;
   struct em28xx_usb_ctl usb_ctl ;
   spinlock_t slock ;
   unsigned int field_count ;
   unsigned int vbi_field_count ;
   struct usb_device *udev ;
   u8 analog_ep_isoc ;
   u8 analog_ep_bulk ;
   u8 dvb_ep_isoc ;
   u8 dvb_ep_bulk ;
   int alt ;
   int max_pkt_size ;
   int packet_multiplier ;
   int num_alt ;
   unsigned int *alt_max_pkt_size_isoc ;
   unsigned char analog_xfer_bulk : 1 ;
   int dvb_alt_isoc ;
   unsigned int dvb_max_pkt_size_isoc ;
   unsigned char dvb_xfer_bulk : 1 ;
   char urb_buf[80U] ;
   int (*em28xx_write_regs)(struct em28xx * , u16 , char * , int ) ;
   int (*em28xx_read_reg)(struct em28xx * , u16 ) ;
   int (*em28xx_read_reg_req_len)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_write_regs_req)(struct em28xx * , u8 , u16 , char * , int ) ;
   int (*em28xx_read_reg_req)(struct em28xx * , u8 , u16 ) ;
   enum em28xx_mode mode ;
   u16 reg_gpo_num ;
   u16 reg_gpio_num ;
   unsigned char reg_gpo ;
   unsigned char reg_gpio ;
   char snapshot_button_path[30U] ;
   struct input_dev *sbutton_input_dev ;
   struct delayed_work sbutton_query_work ;
   struct em28xx_dvb *dvb ;
};
struct v4l2_ioctl_ops {
   int (*vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
   int (*vidioc_g_priority)(struct file * , void * , enum v4l2_priority * ) ;
   int (*vidioc_s_priority)(struct file * , void * , enum v4l2_priority ) ;
   int (*vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_overlay)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_enum_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_fmtdesc * ) ;
   int (*vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_g_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_s_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_overlay)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_cap)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_sliced_vbi_out)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_cap_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_try_fmt_vid_out_mplane)(struct file * , void * , struct v4l2_format * ) ;
   int (*vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
   int (*vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_expbuf)(struct file * , void * , struct v4l2_exportbuffer * ) ;
   int (*vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_create_bufs)(struct file * , void * , struct v4l2_create_buffers * ) ;
   int (*vidioc_prepare_buf)(struct file * , void * , struct v4l2_buffer * ) ;
   int (*vidioc_overlay)(struct file * , void * , unsigned int ) ;
   int (*vidioc_g_fbuf)(struct file * , void * , struct v4l2_framebuffer * ) ;
   int (*vidioc_s_fbuf)(struct file * , void * , struct v4l2_framebuffer const * ) ;
   int (*vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
   int (*vidioc_g_std)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_s_std)(struct file * , void * , v4l2_std_id ) ;
   int (*vidioc_querystd)(struct file * , void * , v4l2_std_id * ) ;
   int (*vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
   int (*vidioc_g_input)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_input)(struct file * , void * , unsigned int ) ;
   int (*vidioc_enum_output)(struct file * , void * , struct v4l2_output * ) ;
   int (*vidioc_g_output)(struct file * , void * , unsigned int * ) ;
   int (*vidioc_s_output)(struct file * , void * , unsigned int ) ;
   int (*vidioc_queryctrl)(struct file * , void * , struct v4l2_queryctrl * ) ;
   int (*vidioc_g_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_s_ctrl)(struct file * , void * , struct v4l2_control * ) ;
   int (*vidioc_g_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_s_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_try_ext_ctrls)(struct file * , void * , struct v4l2_ext_controls * ) ;
   int (*vidioc_querymenu)(struct file * , void * , struct v4l2_querymenu * ) ;
   int (*vidioc_enumaudio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_g_audio)(struct file * , void * , struct v4l2_audio * ) ;
   int (*vidioc_s_audio)(struct file * , void * , struct v4l2_audio const * ) ;
   int (*vidioc_enumaudout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_g_audout)(struct file * , void * , struct v4l2_audioout * ) ;
   int (*vidioc_s_audout)(struct file * , void * , struct v4l2_audioout const * ) ;
   int (*vidioc_g_modulator)(struct file * , void * , struct v4l2_modulator * ) ;
   int (*vidioc_s_modulator)(struct file * , void * , struct v4l2_modulator const * ) ;
   int (*vidioc_cropcap)(struct file * , void * , struct v4l2_cropcap * ) ;
   int (*vidioc_g_crop)(struct file * , void * , struct v4l2_crop * ) ;
   int (*vidioc_s_crop)(struct file * , void * , struct v4l2_crop const * ) ;
   int (*vidioc_g_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_s_selection)(struct file * , void * , struct v4l2_selection * ) ;
   int (*vidioc_g_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression * ) ;
   int (*vidioc_s_jpegcomp)(struct file * , void * , struct v4l2_jpegcompression const * ) ;
   int (*vidioc_g_enc_index)(struct file * , void * , struct v4l2_enc_idx * ) ;
   int (*vidioc_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_try_encoder_cmd)(struct file * , void * , struct v4l2_encoder_cmd * ) ;
   int (*vidioc_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_try_decoder_cmd)(struct file * , void * , struct v4l2_decoder_cmd * ) ;
   int (*vidioc_g_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_s_parm)(struct file * , void * , struct v4l2_streamparm * ) ;
   int (*vidioc_g_tuner)(struct file * , void * , struct v4l2_tuner * ) ;
   int (*vidioc_s_tuner)(struct file * , void * , struct v4l2_tuner const * ) ;
   int (*vidioc_g_frequency)(struct file * , void * , struct v4l2_frequency * ) ;
   int (*vidioc_s_frequency)(struct file * , void * , struct v4l2_frequency const * ) ;
   int (*vidioc_enum_freq_bands)(struct file * , void * , struct v4l2_frequency_band * ) ;
   int (*vidioc_g_sliced_vbi_cap)(struct file * , void * , struct v4l2_sliced_vbi_cap * ) ;
   int (*vidioc_log_status)(struct file * , void * ) ;
   int (*vidioc_s_hw_freq_seek)(struct file * , void * , struct v4l2_hw_freq_seek const * ) ;
   int (*vidioc_g_register)(struct file * , void * , struct v4l2_dbg_register * ) ;
   int (*vidioc_s_register)(struct file * , void * , struct v4l2_dbg_register const * ) ;
   int (*vidioc_g_chip_info)(struct file * , void * , struct v4l2_dbg_chip_info * ) ;
   int (*vidioc_g_chip_ident)(struct file * , void * , struct v4l2_dbg_chip_ident * ) ;
   int (*vidioc_enum_framesizes)(struct file * , void * , struct v4l2_frmsizeenum * ) ;
   int (*vidioc_enum_frameintervals)(struct file * , void * , struct v4l2_frmivalenum * ) ;
   int (*vidioc_s_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_g_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_query_dv_timings)(struct file * , void * , struct v4l2_dv_timings * ) ;
   int (*vidioc_enum_dv_timings)(struct file * , void * , struct v4l2_enum_dv_timings * ) ;
   int (*vidioc_dv_timings_cap)(struct file * , void * , struct v4l2_dv_timings_cap * ) ;
   int (*vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   int (*vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
   long (*vidioc_default)(struct file * , void * , bool , unsigned int , void * ) ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
struct em28xx_eeprom {
   u8 id[4U] ;
   __le16 vendor_ID ;
   __le16 product_ID ;
   __le16 chip_conf ;
   __le16 board_conf ;
   __le16 string1 ;
   __le16 string2 ;
   __le16 string3 ;
   u8 string_idx_table ;
};
enum hrtimer_restart;
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
};
struct tveeprom {
   u32 has_radio ;
   u32 has_ir ;
   u32 has_MAC_address ;
   u32 tuner_type ;
   u32 tuner_formats ;
   u32 tuner_hauppauge_model ;
   u32 tuner2_type ;
   u32 tuner2_formats ;
   u32 tuner2_hauppauge_model ;
   u32 digitizer ;
   u32 digitizer_formats ;
   u32 audio_processor ;
   u32 decoder_processor ;
   u32 model ;
   u32 revision ;
   u32 serial_number ;
   char rev_str[5U] ;
   u8 MAC_address[6U] ;
};
enum v4l2_i2c_tuner_type {
    ADDRS_RADIO = 0,
    ADDRS_DEMOD = 1,
    ADDRS_TV = 2,
    ADDRS_TV_WITH_DEMOD = 3
} ;
struct xc2028_ctrl {
   char *fname ;
   int max_len ;
   int msleep ;
   unsigned int scode_table ;
   unsigned char mts : 1 ;
   unsigned char input1 : 1 ;
   unsigned char vhfbw7 : 1 ;
   unsigned char uhfbw8 : 1 ;
   unsigned char disable_power_mgmt : 1 ;
   unsigned char read_not_reliable : 1 ;
   unsigned int demod ;
   unsigned char type : 2 ;
};
struct em28xx_hash_table {
   unsigned long hash ;
   unsigned int model ;
   unsigned int tuner ;
};
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
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
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
union __anonunion_ldv_6334_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6334_31 ldv_6334 ;
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
struct notifier_block;
enum hrtimer_restart;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct snd_aes_iec958 {
   unsigned char status[24U] ;
   unsigned char subcode[147U] ;
   unsigned char pad ;
   unsigned char dig_subframe[4U] ;
};
typedef unsigned long snd_pcm_uframes_t;
typedef long snd_pcm_sframes_t;
typedef int snd_pcm_access_t;
typedef int snd_pcm_format_t;
typedef int snd_pcm_subformat_t;
typedef int snd_pcm_state_t;
union snd_pcm_sync_id {
   unsigned char id[16U] ;
   unsigned short id16[8U] ;
   unsigned int id32[4U] ;
};
struct snd_interval {
   unsigned int min ;
   unsigned int max ;
   unsigned char openmin : 1 ;
   unsigned char openmax : 1 ;
   unsigned char integer : 1 ;
   unsigned char empty : 1 ;
};
struct snd_mask {
   __u32 bits[8U] ;
};
struct snd_pcm_hw_params {
   unsigned int flags ;
   struct snd_mask masks[3U] ;
   struct snd_mask mres[5U] ;
   struct snd_interval intervals[12U] ;
   struct snd_interval ires[9U] ;
   unsigned int rmask ;
   unsigned int cmask ;
   unsigned int info ;
   unsigned int msbits ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   snd_pcm_uframes_t fifo_size ;
   unsigned char reserved[64U] ;
};
struct snd_pcm_mmap_status {
   snd_pcm_state_t state ;
   int pad1 ;
   snd_pcm_uframes_t hw_ptr ;
   struct timespec tstamp ;
   snd_pcm_state_t suspended_state ;
   struct timespec audio_tstamp ;
};
struct snd_pcm_mmap_control {
   snd_pcm_uframes_t appl_ptr ;
   snd_pcm_uframes_t avail_min ;
};
typedef int snd_ctl_elem_type_t;
typedef int snd_ctl_elem_iface_t;
struct snd_ctl_elem_id {
   unsigned int numid ;
   snd_ctl_elem_iface_t iface ;
   unsigned int device ;
   unsigned int subdevice ;
   unsigned char name[44U] ;
   unsigned int index ;
};
struct __anonstruct_integer_185 {
   long min ;
   long max ;
   long step ;
};
struct __anonstruct_integer64_186 {
   long long min ;
   long long max ;
   long long step ;
};
struct __anonstruct_enumerated_187 {
   unsigned int items ;
   unsigned int item ;
   char name[64U] ;
   __u64 names_ptr ;
   unsigned int names_length ;
};
union __anonunion_value_184 {
   struct __anonstruct_integer_185 integer ;
   struct __anonstruct_integer64_186 integer64 ;
   struct __anonstruct_enumerated_187 enumerated ;
   unsigned char reserved[128U] ;
};
union __anonunion_dimen_188 {
   unsigned short d[4U] ;
   unsigned short *d_ptr ;
};
struct snd_ctl_elem_info {
   struct snd_ctl_elem_id id ;
   snd_ctl_elem_type_t type ;
   unsigned int access ;
   unsigned int count ;
   __kernel_pid_t owner ;
   union __anonunion_value_184 value ;
   union __anonunion_dimen_188 dimen ;
   unsigned char reserved[56U] ;
};
union __anonunion_integer_190 {
   long value[128U] ;
   long *value_ptr ;
};
union __anonunion_integer64_191 {
   long long value[64U] ;
   long long *value_ptr ;
};
union __anonunion_enumerated_192 {
   unsigned int item[128U] ;
   unsigned int *item_ptr ;
};
union __anonunion_bytes_193 {
   unsigned char data[512U] ;
   unsigned char *data_ptr ;
};
union __anonunion_value_189 {
   union __anonunion_integer_190 integer ;
   union __anonunion_integer64_191 integer64 ;
   union __anonunion_enumerated_192 enumerated ;
   union __anonunion_bytes_193 bytes ;
   struct snd_aes_iec958 iec958 ;
};
struct snd_ctl_elem_value {
   struct snd_ctl_elem_id id ;
   unsigned char indirect : 1 ;
   union __anonunion_value_189 value ;
   struct timespec tstamp ;
   unsigned char reserved[112U] ;
};
struct snd_dma_device {
   int type ;
   struct device *dev ;
};
struct snd_dma_buffer {
   struct snd_dma_device dev ;
   unsigned char *area ;
   dma_addr_t addr ;
   size_t bytes ;
   void *private_data ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_197 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_197 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct snd_pcm_oss_setup {
   char *task_name ;
   unsigned char disable : 1 ;
   unsigned char direct : 1 ;
   unsigned char block : 1 ;
   unsigned char nonblock : 1 ;
   unsigned char partialfrag : 1 ;
   unsigned char nosilence : 1 ;
   unsigned char buggyptr : 1 ;
   unsigned int periods ;
   unsigned int period_size ;
   struct snd_pcm_oss_setup *next ;
};
struct snd_pcm_plugin;
struct snd_pcm_oss_runtime {
   unsigned char params : 1 ;
   unsigned char prepare : 1 ;
   unsigned char trigger : 1 ;
   unsigned char sync_trigger : 1 ;
   int rate ;
   int format ;
   unsigned int channels ;
   unsigned int fragshift ;
   unsigned int maxfrags ;
   unsigned int subdivision ;
   size_t period_bytes ;
   size_t period_frames ;
   size_t period_ptr ;
   unsigned int periods ;
   size_t buffer_bytes ;
   size_t bytes ;
   size_t mmap_bytes ;
   char *buffer ;
   size_t buffer_used ;
   struct mutex params_lock ;
   struct snd_pcm_plugin *plugin_first ;
   struct snd_pcm_plugin *plugin_last ;
   unsigned int prev_hw_ptr_period ;
};
struct snd_pcm_oss_substream {
   unsigned char oss : 1 ;
   struct snd_pcm_oss_setup setup ;
};
struct snd_info_entry;
struct snd_pcm_oss_stream {
   struct snd_pcm_oss_setup *setup_list ;
   struct mutex setup_mutex ;
   struct snd_info_entry *proc_entry ;
};
struct snd_pcm_oss {
   int reg ;
   unsigned int reg_mask ;
};
struct snd_pcm_hardware {
   unsigned int info ;
   u64 formats ;
   unsigned int rates ;
   unsigned int rate_min ;
   unsigned int rate_max ;
   unsigned int channels_min ;
   unsigned int channels_max ;
   size_t buffer_bytes_max ;
   size_t period_bytes_min ;
   size_t period_bytes_max ;
   unsigned int periods_min ;
   unsigned int periods_max ;
   size_t fifo_size ;
};
struct snd_pcm_ops {
   int (*open)(struct snd_pcm_substream * ) ;
   int (*close)(struct snd_pcm_substream * ) ;
   int (*ioctl)(struct snd_pcm_substream * , unsigned int , void * ) ;
   int (*hw_params)(struct snd_pcm_substream * , struct snd_pcm_hw_params * ) ;
   int (*hw_free)(struct snd_pcm_substream * ) ;
   int (*prepare)(struct snd_pcm_substream * ) ;
   int (*trigger)(struct snd_pcm_substream * , int ) ;
   snd_pcm_uframes_t (*pointer)(struct snd_pcm_substream * ) ;
   int (*wall_clock)(struct snd_pcm_substream * , struct timespec * ) ;
   int (*copy)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , void * , snd_pcm_uframes_t ) ;
   int (*silence)(struct snd_pcm_substream * , int , snd_pcm_uframes_t , snd_pcm_uframes_t ) ;
   struct page *(*page)(struct snd_pcm_substream * , unsigned long ) ;
   int (*mmap)(struct snd_pcm_substream * , struct vm_area_struct * ) ;
   int (*ack)(struct snd_pcm_substream * ) ;
};
struct snd_pcm_hw_rule;
struct snd_pcm_hw_rule {
   unsigned int cond ;
   int (*func)(struct snd_pcm_hw_params * , struct snd_pcm_hw_rule * ) ;
   int var ;
   int deps[4U] ;
   void *private ;
};
struct snd_pcm_hw_constraints {
   struct snd_mask masks[3U] ;
   struct snd_interval intervals[12U] ;
   unsigned int rules_num ;
   unsigned int rules_all ;
   struct snd_pcm_hw_rule *rules ;
};
struct snd_pcm_hwptr_log;
struct snd_pcm_runtime {
   struct snd_pcm_substream *trigger_master ;
   struct timespec trigger_tstamp ;
   int overrange ;
   snd_pcm_uframes_t avail_max ;
   snd_pcm_uframes_t hw_ptr_base ;
   snd_pcm_uframes_t hw_ptr_interrupt ;
   unsigned long hw_ptr_jiffies ;
   unsigned long hw_ptr_buffer_jiffies ;
   snd_pcm_sframes_t delay ;
   u64 hw_ptr_wrap ;
   snd_pcm_access_t access ;
   snd_pcm_format_t format ;
   snd_pcm_subformat_t subformat ;
   unsigned int rate ;
   unsigned int channels ;
   snd_pcm_uframes_t period_size ;
   unsigned int periods ;
   snd_pcm_uframes_t buffer_size ;
   snd_pcm_uframes_t min_align ;
   size_t byte_align ;
   unsigned int frame_bits ;
   unsigned int sample_bits ;
   unsigned int info ;
   unsigned int rate_num ;
   unsigned int rate_den ;
   unsigned char no_period_wakeup : 1 ;
   int tstamp_mode ;
   unsigned int period_step ;
   snd_pcm_uframes_t start_threshold ;
   snd_pcm_uframes_t stop_threshold ;
   snd_pcm_uframes_t silence_threshold ;
   snd_pcm_uframes_t silence_size ;
   snd_pcm_uframes_t boundary ;
   snd_pcm_uframes_t silence_start ;
   snd_pcm_uframes_t silence_filled ;
   union snd_pcm_sync_id sync ;
   struct snd_pcm_mmap_status *status ;
   struct snd_pcm_mmap_control *control ;
   snd_pcm_uframes_t twake ;
   wait_queue_head_t sleep ;
   wait_queue_head_t tsleep ;
   struct fasync_struct *fasync ;
   void *private_data ;
   void (*private_free)(struct snd_pcm_runtime * ) ;
   struct snd_pcm_hardware hw ;
   struct snd_pcm_hw_constraints hw_constraints ;
   void (*transfer_ack_begin)(struct snd_pcm_substream * ) ;
   void (*transfer_ack_end)(struct snd_pcm_substream * ) ;
   unsigned int timer_resolution ;
   int tstamp_type ;
   unsigned char *dma_area ;
   dma_addr_t dma_addr ;
   size_t dma_bytes ;
   struct snd_dma_buffer *dma_buffer_p ;
   struct snd_pcm_oss_runtime oss ;
   struct snd_pcm_hwptr_log *hwptr_log ;
};
struct snd_pcm_group {
   spinlock_t lock ;
   struct list_head substreams ;
   int count ;
};
struct snd_pcm;
struct snd_pcm_str;
struct snd_timer;
struct snd_pcm_substream {
   struct snd_pcm *pcm ;
   struct snd_pcm_str *pstr ;
   void *private_data ;
   int number ;
   char name[32U] ;
   int stream ;
   struct pm_qos_request latency_pm_qos_req ;
   size_t buffer_bytes_max ;
   struct snd_dma_buffer dma_buffer ;
   unsigned int dma_buf_id ;
   size_t dma_max ;
   struct snd_pcm_ops *ops ;
   struct snd_pcm_runtime *runtime ;
   struct snd_timer *timer ;
   unsigned char timer_running : 1 ;
   struct snd_pcm_substream *next ;
   struct list_head link_list ;
   struct snd_pcm_group self_group ;
   struct snd_pcm_group *group ;
   void *file ;
   int ref_count ;
   atomic_t mmap_count ;
   unsigned int f_flags ;
   void (*pcm_release)(struct snd_pcm_substream * ) ;
   struct pid *pid ;
   struct snd_pcm_oss_substream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   struct snd_info_entry *proc_hw_params_entry ;
   struct snd_info_entry *proc_sw_params_entry ;
   struct snd_info_entry *proc_status_entry ;
   struct snd_info_entry *proc_prealloc_entry ;
   struct snd_info_entry *proc_prealloc_max_entry ;
   unsigned char hw_opened : 1 ;
};
struct snd_kcontrol;
struct snd_pcm_str {
   int stream ;
   struct snd_pcm *pcm ;
   unsigned int substream_count ;
   unsigned int substream_opened ;
   struct snd_pcm_substream *substream ;
   struct snd_pcm_oss_stream oss ;
   struct snd_info_entry *proc_root ;
   struct snd_info_entry *proc_info_entry ;
   unsigned int xrun_debug ;
   struct snd_info_entry *proc_xrun_debug_entry ;
   struct snd_kcontrol *chmap_kctl ;
};
struct snd_pcm {
   struct snd_card *card ;
   struct list_head list ;
   int device ;
   unsigned int info_flags ;
   unsigned short dev_class ;
   unsigned short dev_subclass ;
   char id[64U] ;
   char name[80U] ;
   struct snd_pcm_str streams[2U] ;
   struct mutex open_mutex ;
   wait_queue_head_t open_wait ;
   void *private_data ;
   void (*private_free)(struct snd_pcm * ) ;
   struct device *dev ;
   bool internal ;
   struct snd_pcm_oss oss ;
};
typedef int snd_kcontrol_info_t(struct snd_kcontrol * , struct snd_ctl_elem_info * );
typedef int snd_kcontrol_get_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_put_t(struct snd_kcontrol * , struct snd_ctl_elem_value * );
typedef int snd_kcontrol_tlv_rw_t(struct snd_kcontrol * , int , unsigned int , unsigned int * );
struct snd_ctl_file;
struct snd_kcontrol_volatile {
   struct snd_ctl_file *owner ;
   unsigned int access ;
};
union __anonunion_tlv_199 {
   snd_kcontrol_tlv_rw_t *c ;
   unsigned int const *p ;
};
struct snd_kcontrol {
   struct list_head list ;
   struct snd_ctl_elem_id id ;
   unsigned int count ;
   snd_kcontrol_info_t *info ;
   snd_kcontrol_get_t *get ;
   snd_kcontrol_put_t *put ;
   union __anonunion_tlv_199 tlv ;
   unsigned long private_value ;
   void *private_data ;
   void (*private_free)(struct snd_kcontrol * ) ;
   struct snd_kcontrol_volatile vd[0U] ;
};
struct snd_ctl_file {
   struct list_head list ;
   struct snd_card *card ;
   struct pid *pid ;
   int prefer_pcm_subdevice ;
   int prefer_rawmidi_subdevice ;
   wait_queue_head_t change_sleep ;
   spinlock_t read_lock ;
   struct fasync_struct *fasync ;
   int subscribed ;
   struct list_head events ;
};
struct snd_info_buffer {
   char *buffer ;
   unsigned int curr ;
   unsigned int size ;
   unsigned int len ;
   int stop ;
   int error ;
};
struct snd_info_entry_text {
   void (*read)(struct snd_info_entry * , struct snd_info_buffer * ) ;
   void (*write)(struct snd_info_entry * , struct snd_info_buffer * ) ;
};
struct snd_info_entry_ops {
   int (*open)(struct snd_info_entry * , unsigned short , void ** ) ;
   int (*release)(struct snd_info_entry * , unsigned short , void * ) ;
   ssize_t (*read)(struct snd_info_entry * , void * , struct file * , char * , size_t ,
                   loff_t ) ;
   ssize_t (*write)(struct snd_info_entry * , void * , struct file * , char const * ,
                    size_t , loff_t ) ;
   loff_t (*llseek)(struct snd_info_entry * , void * , struct file * , loff_t , int ) ;
   unsigned int (*poll)(struct snd_info_entry * , void * , struct file * , poll_table * ) ;
   int (*ioctl)(struct snd_info_entry * , void * , struct file * , unsigned int ,
                unsigned long ) ;
   int (*mmap)(struct snd_info_entry * , void * , struct inode * , struct file * ,
               struct vm_area_struct * ) ;
};
union __anonunion_c_200 {
   struct snd_info_entry_text text ;
   struct snd_info_entry_ops *ops ;
};
struct snd_info_entry {
   char const *name ;
   umode_t mode ;
   long size ;
   unsigned short content ;
   union __anonunion_c_200 c ;
   struct snd_info_entry *parent ;
   struct snd_card *card ;
   struct module *module ;
   void *private_data ;
   void (*private_free)(struct snd_info_entry * ) ;
   struct proc_dir_entry *p ;
   struct mutex access ;
   struct list_head children ;
   struct list_head list ;
};
struct em28xx_ops {
   struct list_head next ;
   char *name ;
   int id ;
   int (*init)(struct em28xx * ) ;
   int (*fini)(struct em28xx * ) ;
};
struct em28xx_vol_itable {
   enum em28xx_amux mux ;
   u8 reg ;
};
struct em28xx_vol_otable {
   enum em28xx_aout mux ;
   u8 reg ;
};
enum hrtimer_restart;
typedef __u16 __be16;
enum hrtimer_restart;
enum v4l2_field {
    V4L2_FIELD_ANY = 0,
    V4L2_FIELD_NONE = 1,
    V4L2_FIELD_TOP = 2,
    V4L2_FIELD_BOTTOM = 3,
    V4L2_FIELD_INTERLACED = 4,
    V4L2_FIELD_SEQ_TB = 5,
    V4L2_FIELD_SEQ_BT = 6,
    V4L2_FIELD_ALTERNATE = 7,
    V4L2_FIELD_INTERLACED_TB = 8,
    V4L2_FIELD_INTERLACED_BT = 9
} ;
enum v4l2_colorspace {
    V4L2_COLORSPACE_SMPTE170M = 1,
    V4L2_COLORSPACE_SMPTE240M = 2,
    V4L2_COLORSPACE_REC709 = 3,
    V4L2_COLORSPACE_BT878 = 4,
    V4L2_COLORSPACE_470_SYSTEM_M = 5,
    V4L2_COLORSPACE_470_SYSTEM_BG = 6,
    V4L2_COLORSPACE_JPEG = 7,
    V4L2_COLORSPACE_SRGB = 8
} ;
struct videobuf_buffer;
struct videobuf_queue;
struct videobuf_mapping {
   unsigned int count ;
   struct videobuf_queue *q ;
};
enum videobuf_state {
    VIDEOBUF_NEEDS_INIT = 0,
    VIDEOBUF_PREPARED = 1,
    VIDEOBUF_QUEUED = 2,
    VIDEOBUF_ACTIVE = 3,
    VIDEOBUF_DONE = 4,
    VIDEOBUF_ERROR = 5,
    VIDEOBUF_IDLE = 6
} ;
struct videobuf_buffer {
   unsigned int i ;
   u32 magic ;
   unsigned int width ;
   unsigned int height ;
   unsigned int bytesperline ;
   unsigned long size ;
   enum v4l2_field field ;
   enum videobuf_state state ;
   struct list_head stream ;
   struct list_head queue ;
   wait_queue_head_t done ;
   unsigned int field_count ;
   struct timeval ts ;
   enum v4l2_memory memory ;
   size_t bsize ;
   size_t boff ;
   unsigned long baddr ;
   struct videobuf_mapping *map ;
   int privsize ;
   void *priv ;
};
struct videobuf_queue_ops {
   int (*buf_setup)(struct videobuf_queue * , unsigned int * , unsigned int * ) ;
   int (*buf_prepare)(struct videobuf_queue * , struct videobuf_buffer * , enum v4l2_field ) ;
   void (*buf_queue)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   void (*buf_release)(struct videobuf_queue * , struct videobuf_buffer * ) ;
};
struct videobuf_qtype_ops {
   u32 magic ;
   struct videobuf_buffer *(*alloc_vb)(size_t ) ;
   void *(*vaddr)(struct videobuf_buffer * ) ;
   int (*iolock)(struct videobuf_queue * , struct videobuf_buffer * , struct v4l2_framebuffer * ) ;
   int (*sync)(struct videobuf_queue * , struct videobuf_buffer * ) ;
   int (*mmap_mapper)(struct videobuf_queue * , struct videobuf_buffer * , struct vm_area_struct * ) ;
};
struct videobuf_queue {
   struct mutex vb_lock ;
   struct mutex *ext_lock ;
   spinlock_t *irqlock ;
   struct device *dev ;
   wait_queue_head_t wait ;
   enum v4l2_buf_type type ;
   unsigned int msize ;
   enum v4l2_field field ;
   enum v4l2_field last ;
   struct videobuf_buffer *bufs[32U] ;
   struct videobuf_queue_ops const *ops ;
   struct videobuf_qtype_ops *int_ops ;
   unsigned char streaming : 1 ;
   unsigned char reading : 1 ;
   struct list_head stream ;
   unsigned int read_off ;
   struct videobuf_buffer *read_buf ;
   void *priv_data ;
};
struct soc_camera_desc;
struct soc_camera_sense;
struct soc_camera_format_xlate;
union __anonunion_ldv_29102_210 {
   struct videobuf_queue vb_vidq ;
   struct vb2_queue vb2_vidq ;
};
struct soc_camera_device {
   struct list_head list ;
   struct soc_camera_desc *sdesc ;
   struct device *pdev ;
   struct device *parent ;
   struct device *control ;
   s32 user_width ;
   s32 user_height ;
   u32 bytesperline ;
   u32 sizeimage ;
   enum v4l2_colorspace colorspace ;
   unsigned char iface ;
   unsigned char devnum ;
   struct soc_camera_sense *sense ;
   struct video_device *vdev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct soc_camera_format_xlate const *current_fmt ;
   struct soc_camera_format_xlate *user_formats ;
   int num_user_formats ;
   enum v4l2_field field ;
   void *host_priv ;
   int use_count ;
   struct file *streamer ;
   union __anonunion_ldv_29102_210 ldv_29102 ;
};
struct regulator_bulk_data;
struct soc_camera_subdev_desc {
   unsigned long flags ;
   void *drv_priv ;
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   int (*power)(struct device * , int ) ;
   int (*reset)(struct device * ) ;
   int (*set_bus_param)(struct soc_camera_subdev_desc * , unsigned long ) ;
   unsigned long (*query_bus_param)(struct soc_camera_subdev_desc * ) ;
   void (*free_bus)(struct soc_camera_subdev_desc * ) ;
};
struct soc_camera_host_desc {
   int bus_id ;
   int i2c_adapter_id ;
   struct i2c_board_info *board_info ;
   char const *module_name ;
   int (*add_device)(struct soc_camera_device * ) ;
   void (*del_device)(struct soc_camera_device * ) ;
};
struct soc_camera_desc {
   struct soc_camera_subdev_desc subdev_desc ;
   struct soc_camera_host_desc host_desc ;
};
struct soc_camera_link {
   unsigned long flags ;
   void *priv ;
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   int (*power)(struct device * , int ) ;
   int (*reset)(struct device * ) ;
   int (*set_bus_param)(struct soc_camera_link * , unsigned long ) ;
   unsigned long (*query_bus_param)(struct soc_camera_link * ) ;
   void (*free_bus)(struct soc_camera_link * ) ;
   int bus_id ;
   int i2c_adapter_id ;
   struct i2c_board_info *board_info ;
   char const *module_name ;
   int (*add_device)(struct soc_camera_device * ) ;
   void (*del_device)(struct soc_camera_device * ) ;
};
struct soc_mbus_pixelfmt;
struct soc_camera_format_xlate {
   enum v4l2_mbus_pixelcode code ;
   struct soc_mbus_pixelfmt const *host_fmt ;
};
struct soc_camera_sense {
   unsigned long flags ;
   unsigned long master_clock ;
   unsigned long pixel_clock_max ;
   unsigned long pixel_clock ;
};
struct mt9v011_platform_data {
   unsigned int xtal ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
extern int printk(char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
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
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 ) ;
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_8(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock ) ;
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6014.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6014.rlock, flags);
  return;
}
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
extern int dev_set_drvdata(struct device * , void * ) ;
__inline static int usb_make_path(struct usb_device *dev , char *buf , size_t size )
{
  int actual ;
  {
  actual = snprintf(buf, size, "usb-%s-%s", (dev->bus)->bus_name, (char *)(& dev->devpath));
  return ((int )size > actual ? actual : -1);
}
}
extern int usb_set_interface(struct usb_device * , int , int ) ;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern void *vb2_plane_vaddr(struct vb2_buffer * , unsigned int ) ;
extern void vb2_buffer_done(struct vb2_buffer * , enum vb2_buffer_state ) ;
extern int vb2_queue_init(struct vb2_queue * ) ;
__inline static void *vb2_get_drv_priv(struct vb2_queue *q )
{
  {
  return (q->drv_priv);
}
}
__inline static void vb2_set_plane_payload(struct vb2_buffer *vb , unsigned int plane_no ,
                                           unsigned long size )
{
  {
  if (vb->num_planes > plane_no) {
    vb->v4l2_planes[plane_no].bytesused = (__u32 )size;
  } else {
  }
  return;
}
}
__inline static unsigned long vb2_plane_size(struct vb2_buffer *vb , unsigned int plane_no )
{
  {
  if (vb->num_planes > plane_no) {
    return ((unsigned long )vb->v4l2_planes[plane_no].length);
  } else {
  }
  return (0UL);
}
}
extern int vb2_ioctl_reqbufs(struct file * , void * , struct v4l2_requestbuffers * ) ;
extern int vb2_ioctl_create_bufs(struct file * , void * , struct v4l2_create_buffers * ) ;
extern int vb2_ioctl_prepare_buf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_querybuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_qbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_dqbuf(struct file * , void * , struct v4l2_buffer * ) ;
extern int vb2_ioctl_streamon(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_ioctl_streamoff(struct file * , void * , enum v4l2_buf_type ) ;
extern int vb2_fop_mmap(struct file * , struct vm_area_struct * ) ;
extern int vb2_fop_release(struct file * ) ;
extern ssize_t vb2_fop_read(struct file * , char * , size_t , loff_t * ) ;
extern unsigned int vb2_fop_poll(struct file * , poll_table * ) ;
extern void vb2_ops_wait_prepare(struct vb2_queue * ) ;
extern void vb2_ops_wait_finish(struct vb2_queue * ) ;
extern struct vb2_mem_ops const vb2_vmalloc_memops ;
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
extern void video_device_release_empty(struct video_device * ) ;
__inline static void v4l2_disable_ioctl(struct video_device *vdev , unsigned int cmd )
{
  {
  if ((cmd & 255U) <= 191U) {
    set_bit(cmd & 255U, (unsigned long volatile *)(& vdev->valid_ioctls));
  } else {
  }
  return;
}
}
__inline static void *video_get_drvdata(struct video_device *vdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static void video_set_drvdata(struct video_device *vdev , void *data )
{
  {
  dev_set_drvdata(& vdev->dev, data);
  return;
}
}
extern struct video_device *video_devdata(struct file * ) ;
__inline static void *video_drvdata(struct file *file )
{
  struct video_device *tmp ;
  void *tmp___0 ;
  {
  tmp = video_devdata(file);
  tmp___0 = video_get_drvdata(tmp);
  return (tmp___0);
}
}
__inline static char const *video_device_node_name(struct video_device *vdev )
{
  char const *tmp ;
  {
  tmp = dev_name((struct device const *)(& vdev->dev));
  return (tmp);
}
}
__inline static int video_is_registered(struct video_device *vdev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& vdev->flags));
  return (tmp);
}
}
extern void v4l_bound_align_image(unsigned int * , unsigned int , unsigned int ,
                                  unsigned int , unsigned int * , unsigned int ,
                                  unsigned int , unsigned int , unsigned int ) ;
extern void v4l2_get_timestamp(struct timeval * ) ;
extern void v4l2_fh_init(struct v4l2_fh * , struct video_device * ) ;
extern void v4l2_fh_add(struct v4l2_fh * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern struct v4l2_ctrl *v4l2_ctrl_find(struct v4l2_ctrl_handler * , u32 ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_read_reg(struct em28xx *dev , u16 reg ) ;
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len ) ;
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val ) ;
int em28xx_read_ac97(struct em28xx *dev , u8 reg ) ;
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val ) ;
int em28xx_audio_analog_set(struct em28xx *dev ) ;
int em28xx_colorlevels_set_default(struct em28xx *dev ) ;
int em28xx_vbi_supported(struct em28xx *dev ) ;
int em28xx_set_outfmt(struct em28xx *dev ) ;
int em28xx_resolution_set(struct em28xx *dev ) ;
int em28xx_set_alternate(struct em28xx *dev ) ;
int em28xx_init_usb_xfer(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                         int num_bufs , int max_pkt_size , int packet_multiplier ,
                         int (*urb_data_copy)(struct em28xx * , struct urb * ) ) ;
void em28xx_uninit_usb_xfer(struct em28xx *dev , enum em28xx_mode mode ) ;
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode ) ;
void em28xx_wake_i2c(struct em28xx *dev ) ;
int em28xx_vb2_setup(struct em28xx *dev ) ;
int em28xx_register_analog_devices(struct em28xx *dev ) ;
void em28xx_release_analog_resources(struct em28xx *dev ) ;
void em28xx_ctrl_notify(struct v4l2_ctrl *ctrl , void *priv ) ;
int em28xx_start_analog_streaming(struct vb2_queue *vq , unsigned int count ) ;
int em28xx_stop_vbi_streaming(struct vb2_queue *vq ) ;
struct v4l2_ctrl_ops const em28xx_ctrl_ops ;
struct em28xx_board em28xx_boards[89U] ;
void em28xx_release_resources(struct em28xx *dev ) ;
struct vb2_ops em28xx_vbi_qops ;
__inline static int em28xx_compression_disable(struct em28xx *dev )
{
  int tmp ;
  {
  tmp = em28xx_write_reg(dev, 38, 0);
  return (tmp);
}
}
__inline static unsigned int norm_maxw(struct em28xx *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    return ((unsigned int )dev->sensor_xres);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    return (640U);
  } else {
  }
  return (720U);
}
}
__inline static unsigned int norm_maxh(struct em28xx *dev )
{
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    return ((unsigned int )dev->sensor_yres);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    return (480U);
  } else {
  }
  return ((dev->norm & 16713471ULL) != 0ULL ? 576U : 480U);
}
}
extern void v4l2_video_std_frame_period(int , struct v4l2_fract * ) ;
extern char const *v4l2_type_names[] ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
static unsigned int isoc_debug ;
static unsigned int video_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int vbi_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int radio_nr[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static unsigned int video_debug ;
static struct em28xx_fmt format[6U] = { {(char *)"16 bpp YUY2, 4:2:2, packed", 1448695129U, 16, 20},
        {(char *)"16 bpp RGB 565, LE", 1346520914U, 16, 4},
        {(char *)"8 bpp Bayer BGBG..GRGR", 825770306U, 8, 3},
        {(char *)"8 bpp Bayer GRGR..BGBG", 1195528775U, 8, 1},
        {(char *)"8 bpp Bayer GBGB..RGRG", 1196573255U, 8, 2},
        {(char *)"12 bpp YUV411", 1345401140U, 12, 24}};
__inline static void finish_buffer(struct em28xx *dev , struct em28xx_buffer *buf )
{
  unsigned int tmp ;
  {
  if (isoc_debug != 0U) {
    printk("\016%s %s :[%p/%d] wakeup\n", (char *)(& dev->name), "finish_buffer",
           buf, buf->top_field);
  } else {
  }
  tmp = dev->field_count;
  dev->field_count = dev->field_count + 1U;
  buf->vb.v4l2_buf.sequence = tmp;
  buf->vb.v4l2_buf.field = 4U;
  v4l2_get_timestamp(& buf->vb.v4l2_buf.timestamp);
  vb2_buffer_done(& buf->vb, 4);
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
static void em28xx_copy_video(struct em28xx *dev , struct em28xx_buffer *buf , unsigned char *usb_buf ,
                              unsigned long len )
{
  void *fieldstart ;
  void *startwrite ;
  void *startread ;
  int linesdone ;
  int currlinedone ;
  int offset ;
  int lencopy ;
  int remain ;
  int bytesperline ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  bytesperline = dev->width << 1;
  if ((unsigned long )buf->pos + len > (unsigned long )buf->length) {
    len = (unsigned long )(buf->length - buf->pos);
  } else {
  }
  startread = (void *)usb_buf;
  remain = (int )len;
  if (dev->progressive != 0 || buf->top_field != 0) {
    fieldstart = (void *)buf->vb_buf;
  } else {
    fieldstart = (void *)buf->vb_buf + (unsigned long )bytesperline;
  }
  linesdone = (int )(buf->pos / (unsigned int )bytesperline);
  currlinedone = (int )(buf->pos % (unsigned int )bytesperline);
  if (dev->progressive != 0) {
    offset = linesdone * bytesperline + currlinedone;
  } else {
    offset = (linesdone * bytesperline) * 2 + currlinedone;
  }
  startwrite = fieldstart + (unsigned long )offset;
  lencopy = bytesperline - currlinedone;
  lencopy = remain < lencopy ? remain : lencopy;
  if ((unsigned long )((char *)startwrite + (unsigned long )lencopy) > (unsigned long )(buf->vb_buf + (unsigned long )buf->length)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :Overflow of %zi bytes past buffer end (1)\n", (char *)(& dev->name),
             "em28xx_copy_video", ((long )startwrite - (long )buf->vb_buf) + ((long )((unsigned long )lencopy) - (long )buf->length));
    } else {
    }
    remain = (int )((unsigned int )((long )(buf->vb_buf + (unsigned long )buf->length)) - (unsigned int )((long )startwrite));
    lencopy = remain;
  } else {
  }
  if (lencopy <= 0) {
    return;
  } else {
  }
  __len = (size_t )lencopy;
  __ret = memcpy(startwrite, (void const *)startread, __len);
  remain = remain - lencopy;
  goto ldv_34853;
  ldv_34852: ;
  if (dev->progressive != 0) {
    startwrite = startwrite + (unsigned long )lencopy;
  } else {
    startwrite = startwrite + (unsigned long )(lencopy + bytesperline);
  }
  startread = startread + (unsigned long )lencopy;
  if (bytesperline > remain) {
    lencopy = remain;
  } else {
    lencopy = bytesperline;
  }
  if ((unsigned long )((char *)startwrite + (unsigned long )lencopy) > (unsigned long )(buf->vb_buf + (unsigned long )buf->length)) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :Overflow of %zi bytes past buffer end(2)\n", (char *)(& dev->name),
             "em28xx_copy_video", ((long )startwrite - (long )buf->vb_buf) + ((long )((unsigned long )lencopy) - (long )buf->length));
    } else {
    }
    remain = (int )((unsigned int )((long )(buf->vb_buf + (unsigned long )buf->length)) - (unsigned int )((long )startwrite));
    lencopy = remain;
  } else {
  }
  if (lencopy <= 0) {
    goto ldv_34848;
  } else {
  }
  __len___0 = (size_t )lencopy;
  __ret___0 = memcpy(startwrite, (void const *)startread, __len___0);
  remain = remain - lencopy;
  ldv_34853: ;
  if (remain > 0) {
    goto ldv_34852;
  } else {
  }
  ldv_34848:
  buf->pos = buf->pos + (unsigned int )len;
  return;
}
}
static void em28xx_copy_vbi(struct em28xx *dev , struct em28xx_buffer *buf , unsigned char *usb_buf ,
                            unsigned long len )
{
  unsigned int offset ;
  size_t __len ;
  void *__ret ;
  {
  if ((unsigned long )buf->pos + len > (unsigned long )buf->length) {
    len = (unsigned long )(buf->length - buf->pos);
  } else {
  }
  offset = buf->pos;
  if (buf->top_field == 0) {
    offset = dev->vbi_width * dev->vbi_height + offset;
  } else {
  }
  __len = len;
  __ret = memcpy((void *)buf->vb_buf + (unsigned long )offset, (void const *)usb_buf,
                           __len);
  buf->pos = buf->pos + (unsigned int )len;
  return;
}
}
__inline static void print_err_status(struct em28xx *dev , int packet , int status )
{
  char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  switch (status) {
  case -2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_34871;
  case -104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_34871;
  case -63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_34871;
  case -32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_34871;
  case -75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_34871;
  case -71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_34871;
  case -84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_34871;
  case -62:
  errmsg = (char *)"Device does not respond";
  goto ldv_34871;
  }
  ldv_34871: ;
  if (packet < 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :URB status %d [%s].\n", (char *)(& dev->name), "print_err_status",
             status, errmsg);
    } else {
    }
  } else
  if (isoc_debug != 0U) {
    printk("\016%s %s :URB packet %d, status %d [%s].\n", (char *)(& dev->name), "print_err_status",
           packet, status, errmsg);
  } else {
  }
  return;
}
}
__inline static struct em28xx_buffer *get_next_buf(struct em28xx *dev , struct em28xx_dmaqueue *dma_q )
{
  struct em28xx_buffer *buf ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  tmp = list_empty((struct list_head const *)(& dma_q->active));
  if (tmp != 0) {
    if (isoc_debug != 0U) {
      printk("\016%s %s :No active queue to serve\n", (char *)(& dev->name), "get_next_buf");
    } else {
    }
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)dma_q->active.next;
  buf = (struct em28xx_buffer *)__mptr + 0xfffffffffffffcb8UL;
  list_del(& buf->list);
  buf->pos = 0U;
  buf->vb_buf = (char *)buf->mem;
  return (buf);
}
}
static struct em28xx_buffer *finish_field_prepare_next(struct em28xx *dev , struct em28xx_buffer *buf ,
                                                       struct em28xx_dmaqueue *dma_q )
{
  {
  if (dev->progressive != 0 || (unsigned int )*((unsigned char *)dev + 7308UL) != 0U) {
    if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
      finish_buffer(dev, buf);
    } else {
    }
    buf = get_next_buf(dev, dma_q);
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) {
    buf->top_field = (int )dev->top_field;
    buf->pos = 0U;
  } else {
  }
  return (buf);
}
}
__inline static void process_frame_data_em28xx(struct em28xx *dev , unsigned char *data_pkt ,
                                               unsigned int data_len )
{
  struct em28xx_buffer *buf ;
  struct em28xx_buffer *vbi_buf ;
  struct em28xx_dmaqueue *dma_q ;
  struct em28xx_dmaqueue *vbi_dma_q ;
  int vbi_size ;
  int vbi_data_len ;
  {
  buf = dev->usb_ctl.vid_buf;
  vbi_buf = dev->usb_ctl.vbi_buf;
  dma_q = & dev->vidq;
  vbi_dma_q = & dev->vbiq;
  if (data_len > 3U) {
    if ((((unsigned int )*data_pkt == 136U && (unsigned int )*(data_pkt + 1UL) == 136U) && (unsigned int )*(data_pkt + 2UL) == 136U) && (unsigned int )*(data_pkt + 3UL) == 136U) {
      data_pkt = data_pkt + 4UL;
      data_len = data_len - 4U;
    } else
    if ((unsigned int )*data_pkt == 51U && (unsigned int )*(data_pkt + 1UL) == 149U) {
      dev->capture_type = 0;
      dev->vbi_read = 0;
      if (isoc_debug != 0U) {
        printk("\016%s %s :VBI START HEADER !!!\n", (char *)(& dev->name), "process_frame_data_em28xx");
      } else {
      }
      dev->top_field = ((int )*(data_pkt + 2UL) & 1) == 0;
      data_pkt = data_pkt + 4UL;
      data_len = data_len - 4U;
    } else
    if ((unsigned int )*data_pkt == 34U && (unsigned int )*(data_pkt + 1UL) == 90U) {
      dev->capture_type = 2;
      if (isoc_debug != 0U) {
        printk("\016%s %s :VIDEO START HEADER !!!\n", (char *)(& dev->name), "process_frame_data_em28xx");
      } else {
      }
      dev->top_field = ((int )*(data_pkt + 2UL) & 1) == 0;
      data_pkt = data_pkt + 4UL;
      data_len = data_len - 4U;
    } else {
    }
  } else {
  }
  if (dev->capture_type == 0) {
    vbi_buf = finish_field_prepare_next(dev, vbi_buf, vbi_dma_q);
    dev->usb_ctl.vbi_buf = vbi_buf;
    dev->capture_type = 1;
  } else {
  }
  if (dev->capture_type == 1) {
    vbi_size = (int )(dev->vbi_width * dev->vbi_height);
    vbi_data_len = (unsigned int )dev->vbi_read + data_len > (unsigned int )vbi_size ? vbi_size - dev->vbi_read : (int )data_len;
    if ((unsigned long )vbi_buf != (unsigned long )((struct em28xx_buffer *)0)) {
      em28xx_copy_vbi(dev, vbi_buf, data_pkt, (unsigned long )vbi_data_len);
    } else {
    }
    dev->vbi_read = dev->vbi_read + vbi_data_len;
    if ((unsigned int )vbi_data_len < data_len) {
      dev->capture_type = 2;
      data_pkt = data_pkt + (unsigned long )vbi_data_len;
      data_len = data_len - (unsigned int )vbi_data_len;
    } else {
    }
  } else {
  }
  if (dev->capture_type == 2) {
    buf = finish_field_prepare_next(dev, buf, dma_q);
    dev->usb_ctl.vid_buf = buf;
    dev->capture_type = 3;
  } else {
  }
  if ((dev->capture_type == 3 && (unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0)) && data_len != 0U) {
    em28xx_copy_video(dev, buf, data_pkt, (unsigned long )data_len);
  } else {
  }
  return;
}
}
__inline static void process_frame_data_em25xx(struct em28xx *dev , unsigned char *data_pkt ,
                                               unsigned int data_len )
{
  struct em28xx_buffer *buf ;
  struct em28xx_dmaqueue *dmaq ;
  bool frame_end ;
  {
  buf = dev->usb_ctl.vid_buf;
  dmaq = & dev->vidq;
  frame_end = 0;
  if (data_len > 1U) {
    if ((unsigned int )*data_pkt == 2U && ((int )*(data_pkt + 1UL) & -36) == 0) {
      dev->top_field = ((int )*(data_pkt + 1UL) & 1) == 0;
      frame_end = ((int )*(data_pkt + 1UL) & 2) != 0;
      data_pkt = data_pkt + 2UL;
      data_len = data_len - 2U;
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 9864UL) != 0U && (int )frame_end) {
      buf = finish_field_prepare_next(dev, buf, dmaq);
      dev->usb_ctl.vid_buf = buf;
    } else {
    }
  } else {
  }
  if ((unsigned long )buf != (unsigned long )((struct em28xx_buffer *)0) && data_len != 0U) {
    em28xx_copy_video(dev, buf, data_pkt, (unsigned long )data_len);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 9864UL) == 0U && (int )frame_end) {
    buf = finish_field_prepare_next(dev, buf, dmaq);
    dev->usb_ctl.vid_buf = buf;
  } else {
  }
  return;
}
}
__inline static int em28xx_urb_data_copy(struct em28xx *dev , struct urb *urb )
{
  int xfer_bulk ;
  int num_packets ;
  int i ;
  unsigned char *usb_data_pkt ;
  unsigned int usb_data_len ;
  {
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    return (0);
  } else {
  }
  if (urb->status < 0) {
    print_err_status(dev, -1, urb->status);
  } else {
  }
  xfer_bulk = urb->pipe >> 30 == 3U;
  if (xfer_bulk != 0) {
    num_packets = 1;
  } else {
    num_packets = urb->number_of_packets;
  }
  i = 0;
  goto ldv_34925;
  ldv_34924: ;
  if (xfer_bulk != 0) {
    usb_data_len = urb->actual_length;
    usb_data_pkt = (unsigned char *)urb->transfer_buffer;
  } else {
    if (urb->iso_frame_desc[i].status < 0) {
      print_err_status(dev, i, urb->iso_frame_desc[i].status);
      if (urb->iso_frame_desc[i].status != -71) {
        goto ldv_34922;
      } else {
      }
    } else {
    }
    usb_data_len = urb->iso_frame_desc[i].actual_length;
    if ((unsigned int )dev->max_pkt_size < usb_data_len) {
      if (isoc_debug != 0U) {
        printk("\016%s %s :packet bigger than packet size", (char *)(& dev->name),
               "em28xx_urb_data_copy");
      } else {
      }
      goto ldv_34922;
    } else {
    }
    usb_data_pkt = (unsigned char *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset;
  }
  if (usb_data_len == 0U) {
    goto ldv_34922;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    process_frame_data_em25xx(dev, usb_data_pkt, usb_data_len);
  } else {
    process_frame_data_em28xx(dev, usb_data_pkt, usb_data_len);
  }
  ldv_34922:
  i = i + 1;
  ldv_34925: ;
  if (i < num_packets) {
    goto ldv_34924;
  } else {
  }
  return (1);
}
}
static int get_ressource(enum v4l2_buf_type f_type )
{
  {
  switch ((unsigned int )f_type) {
  case 1U: ;
  return (1);
  case 4U: ;
  return (2);
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/2685/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-video.c.prepared"),
                       "i" (613), "i" (12UL));
  ldv_34933: ;
  goto ldv_34933;
  return (0);
  }
}
}
static int res_get(struct em28xx *dev , enum v4l2_buf_type f_type )
{
  int res_type ;
  int tmp ;
  {
  tmp = get_ressource(f_type);
  res_type = tmp;
  if ((dev->resources & (unsigned int )res_type) != 0U) {
    return (-16);
  } else {
  }
  dev->resources = dev->resources | (unsigned int )res_type;
  if (video_debug != 0U) {
    printk("\016%s %s :res: get %d\n", (char *)(& dev->name), "res_get", res_type);
  } else {
  }
  return (0);
}
}
static void res_free(struct em28xx *dev , enum v4l2_buf_type f_type )
{
  int res_type ;
  int tmp ;
  {
  tmp = get_ressource(f_type);
  res_type = tmp;
  dev->resources = dev->resources & (unsigned int )(~ res_type);
  if (video_debug != 0U) {
    printk("\016%s %s :res: put %d\n", (char *)(& dev->name), "res_free", res_type);
  } else {
  }
  return;
}
}
static int queue_setup(struct vb2_queue *vq , struct v4l2_format const *fmt , unsigned int *nbuffers ,
                       unsigned int *nplanes , unsigned int *sizes , void **alloc_ctxs )
{
  struct em28xx *dev ;
  void *tmp ;
  unsigned long size ;
  {
  tmp = vb2_get_drv_priv(vq);
  dev = (struct em28xx *)tmp;
  if ((unsigned long )fmt != (unsigned long )((struct v4l2_format const *)0)) {
    size = (unsigned long )fmt->fmt.pix.sizeimage;
  } else {
    size = (unsigned long )(((dev->width * dev->height) * (dev->format)->depth + 7) >> 3);
  }
  if (size == 0UL) {
    return (-22);
  } else {
  }
  if (*nbuffers == 0U) {
    *nbuffers = 32U;
  } else {
  }
  *nplanes = 1U;
  *sizes = (unsigned int )size;
  return (0);
}
}
static int buffer_prepare(struct vb2_buffer *vb )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  unsigned long size ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  dev = (struct em28xx *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  if (video_debug != 0U) {
    printk("\016%s %s :%s, field=%d\n", (char *)(& dev->name), "buffer_prepare", "buffer_prepare",
           vb->v4l2_buf.field);
  } else {
  }
  size = (unsigned long )(((dev->width * dev->height) * (dev->format)->depth + 7) >> 3);
  tmp___1 = vb2_plane_size(vb, 0U);
  if (tmp___1 < size) {
    if (video_debug != 0U) {
      tmp___0 = vb2_plane_size(vb, 0U);
      printk("\016%s %s :%s data will not fit into plane (%lu < %lu)\n", (char *)(& dev->name),
             "buffer_prepare", "buffer_prepare", tmp___0, size);
    } else {
    }
    return (-22);
  } else {
  }
  vb2_set_plane_payload(& buf->vb, 0U, size);
  return (0);
}
}
int em28xx_start_analog_streaming(struct vb2_queue *vq , unsigned int count )
{
  struct em28xx *dev ;
  void *tmp ;
  struct v4l2_frequency f ;
  int rc ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  int tmp___0 ;
  {
  tmp = vb2_get_drv_priv(vq);
  dev = (struct em28xx *)tmp;
  rc = 0;
  if (video_debug != 0U) {
    printk("\016%s %s :%s\n", (char *)(& dev->name), "em28xx_start_analog_streaming",
           "em28xx_start_analog_streaming");
  } else {
  }
  rc = res_get(dev, vq->type);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___0 = dev->streaming_users;
  dev->streaming_users = dev->streaming_users + 1;
  if (tmp___0 == 0) {
    em28xx_set_alternate(dev);
    em28xx_wake_i2c(dev);
    dev->capture_type = -1;
    rc = em28xx_init_usb_xfer(dev, 1, (int )dev->analog_xfer_bulk, 5, dev->max_pkt_size,
                              dev->packet_multiplier, & em28xx_urb_data_copy);
    if (rc < 0) {
      goto fail;
    } else {
    }
    memset((void *)(& f), 0, 44UL);
    f.frequency = (__u32 )dev->ctl_freq;
    if ((unsigned long )vq->owner != (unsigned long )((struct v4l2_fh *)0) && ((vq->owner)->vdev)->vfl_type == 2) {
      f.type = 1U;
    } else {
      f.type = 2U;
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_34980;
    ldv_34979: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct v4l2_frequency const * ))0)) {
      (*(((__sd->ops)->tuner)->s_frequency))(__sd, (struct v4l2_frequency const *)(& f));
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_34980: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_34979;
    } else {
    }
  } else {
  }
  fail: ;
  return (rc);
}
}
static int em28xx_stop_streaming(struct vb2_queue *vq )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_dmaqueue *vidq ;
  unsigned long flags ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct em28xx_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  tmp = vb2_get_drv_priv(vq);
  dev = (struct em28xx *)tmp;
  vidq = & dev->vidq;
  flags = 0UL;
  if (video_debug != 0U) {
    printk("\016%s %s :%s\n", (char *)(& dev->name), "em28xx_stop_streaming", "em28xx_stop_streaming");
  } else {
  }
  res_free(dev, vq->type);
  tmp___0 = dev->streaming_users;
  dev->streaming_users = dev->streaming_users - 1;
  if (tmp___0 == 1) {
    em28xx_uninit_usb_xfer(dev, 1);
  } else {
  }
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  goto ldv_34996;
  ldv_34995:
  __mptr = (struct list_head const *)vidq->active.next;
  buf = (struct em28xx_buffer *)__mptr + 0xfffffffffffffcb8UL;
  list_del(& buf->list);
  vb2_buffer_done(& buf->vb, 5);
  ldv_34996:
  tmp___2 = list_empty((struct list_head const *)(& vidq->active));
  if (tmp___2 == 0) {
    goto ldv_34995;
  } else {
  }
  dev->usb_ctl.vid_buf = 0;
  spin_unlock_irqrestore(& dev->slock, flags);
  return (0);
}
}
int em28xx_stop_vbi_streaming(struct vb2_queue *vq )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_dmaqueue *vbiq ;
  unsigned long flags ;
  int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct em28xx_buffer *buf ;
  struct list_head const *__mptr ;
  int tmp___2 ;
  {
  tmp = vb2_get_drv_priv(vq);
  dev = (struct em28xx *)tmp;
  vbiq = & dev->vbiq;
  flags = 0UL;
  if (video_debug != 0U) {
    printk("\016%s %s :%s\n", (char *)(& dev->name), "em28xx_stop_vbi_streaming",
           "em28xx_stop_vbi_streaming");
  } else {
  }
  res_free(dev, vq->type);
  tmp___0 = dev->streaming_users;
  dev->streaming_users = dev->streaming_users - 1;
  if (tmp___0 == 1) {
    em28xx_uninit_usb_xfer(dev, 1);
  } else {
  }
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  goto ldv_35012;
  ldv_35011:
  __mptr = (struct list_head const *)vbiq->active.next;
  buf = (struct em28xx_buffer *)__mptr + 0xfffffffffffffcb8UL;
  list_del(& buf->list);
  vb2_buffer_done(& buf->vb, 5);
  ldv_35012:
  tmp___2 = list_empty((struct list_head const *)(& vbiq->active));
  if (tmp___2 == 0) {
    goto ldv_35011;
  } else {
  }
  dev->usb_ctl.vbi_buf = 0;
  spin_unlock_irqrestore(& dev->slock, flags);
  return (0);
}
}
static void buffer_queue(struct vb2_buffer *vb )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  struct em28xx_dmaqueue *vidq ;
  unsigned long flags ;
  unsigned long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  dev = (struct em28xx *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  vidq = & dev->vidq;
  flags = 0UL;
  if (video_debug != 0U) {
    printk("\016%s %s :%s\n", (char *)(& dev->name), "buffer_queue", "buffer_queue");
  } else {
  }
  buf->mem = vb2_plane_vaddr(vb, 0U);
  tmp___0 = vb2_plane_size(vb, 0U);
  buf->length = (unsigned int )tmp___0;
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  list_add_tail(& buf->list, & vidq->active);
  spin_unlock_irqrestore(& dev->slock, flags);
  return;
}
}
static struct vb2_ops em28xx_video_qops =
     {& queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, & buffer_prepare,
    0, 0, & em28xx_start_analog_streaming, & em28xx_stop_streaming, & buffer_queue};
int em28xx_vb2_setup(struct em28xx *dev )
{
  int rc ;
  struct vb2_queue *q ;
  {
  q = & dev->vb_vidq;
  q->type = 1;
  q->io_modes = 23U;
  q->timestamp_type = 8192U;
  q->drv_priv = (void *)dev;
  q->buf_struct_size = 888U;
  q->ops = (struct vb2_ops const *)(& em28xx_video_qops);
  q->mem_ops = & vb2_vmalloc_memops;
  rc = vb2_queue_init(q);
  if (rc < 0) {
    return (rc);
  } else {
  }
  q = & dev->vb_vbiq;
  q->type = 4;
  q->io_modes = 7U;
  q->timestamp_type = 8192U;
  q->drv_priv = (void *)dev;
  q->buf_struct_size = 888U;
  q->ops = (struct vb2_ops const *)(& em28xx_vbi_qops);
  q->mem_ops = & vb2_vmalloc_memops;
  rc = vb2_queue_init(q);
  if (rc < 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
static void video_mux(struct em28xx *dev , int index )
{
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct v4l2_subdev *__sd___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  dev->ctl_input = (unsigned int )index;
  dev->ctl_ainput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->amux;
  dev->ctl_aoutput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->aout;
  if (dev->ctl_aoutput == 0U) {
    dev->ctl_aoutput = 1U;
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35043;
  ldv_35042: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ,
                                                                                                                                                                                                                u32 ))0)) {
    (*(((__sd->ops)->video)->s_routing))(__sd, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )index)->vmux,
                                         0U, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35043: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35042;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if (dev->i2s_speed != 0U) {
      __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
      goto ldv_35051;
      ldv_35050: ;
      if ((unsigned long )(__sd___0->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___0->ops)->audio)->s_i2s_clock_freq != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                                   u32 ))0)) {
        (*(((__sd___0->ops)->audio)->s_i2s_clock_freq))(__sd___0, dev->i2s_speed);
      } else {
      }
      __mptr___2 = (struct list_head const *)__sd___0->list.next;
      __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
      ldv_35051: ;
      if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
        goto ldv_35050;
      } else {
      }
    } else {
    }
    __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
    goto ldv_35059;
    ldv_35058: ;
    if ((unsigned long )(__sd___1->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___1->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ))0)) {
      (*(((__sd___1->ops)->audio)->s_routing))(__sd___1, dev->ctl_ainput, 68U, 0U);
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
    ldv_35059: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35058;
    } else {
    }
  } else {
  }
  if ((unsigned int )dev->board.adecoder != 0U) {
    __mptr___5 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___5 + 0xffffffffffffff80UL;
    goto ldv_35067;
    ldv_35066: ;
    if ((unsigned long )(__sd___2->ops)->audio != (unsigned long )((struct v4l2_subdev_audio_ops const * )0) && (unsigned long )((__sd___2->ops)->audio)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ,
                                                                                                                                                                                                                          u32 ))0)) {
      (*(((__sd___2->ops)->audio)->s_routing))(__sd___2, dev->ctl_ainput, dev->ctl_aoutput,
                                               0U);
    } else {
    }
    __mptr___6 = (struct list_head const *)__sd___2->list.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___6 + 0xffffffffffffff80UL;
    ldv_35067: ;
    if ((unsigned long )(& __sd___2->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35066;
    } else {
    }
  } else {
  }
  em28xx_audio_analog_set(dev);
  return;
}
}
void em28xx_ctrl_notify(struct v4l2_ctrl *ctrl , void *priv )
{
  struct em28xx *dev ;
  {
  dev = (struct em28xx *)priv;
  switch (ctrl->id) {
  case 9963785U:
  dev->mute = ctrl->ldv_31901.val;
  em28xx_audio_analog_set(dev);
  goto ldv_35075;
  case 9963781U:
  dev->volume = ctrl->ldv_31901.val;
  em28xx_audio_analog_set(dev);
  goto ldv_35075;
  }
  ldv_35075: ;
  return;
}
}
static int em28xx_s_ctrl(struct v4l2_ctrl *ctrl )
{
  struct em28xx *dev ;
  struct v4l2_ctrl_handler const *__mptr ;
  int ret ;
  {
  __mptr = (struct v4l2_ctrl_handler const *)ctrl->handler;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffe60UL;
  ret = -22;
  switch (ctrl->id) {
  case 9963785U:
  dev->mute = ctrl->ldv_31901.val;
  ret = em28xx_audio_analog_set(dev);
  goto ldv_35085;
  case 9963781U:
  dev->volume = ctrl->ldv_31901.val;
  ret = em28xx_audio_analog_set(dev);
  goto ldv_35085;
  case 9963777U:
  ret = em28xx_write_reg(dev, 32, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  case 9963776U:
  ret = em28xx_write_reg(dev, 33, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  case 9963778U:
  ret = em28xx_write_reg(dev, 34, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  case 9963791U:
  ret = em28xx_write_reg(dev, 35, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  case 9963790U:
  ret = em28xx_write_reg(dev, 36, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  case 9963803U:
  ret = em28xx_write_reg(dev, 37, (int )((u8 )ctrl->ldv_31901.val));
  goto ldv_35085;
  }
  ldv_35085: ;
  return (0 < ret ? 0 : ret);
}
}
struct v4l2_ctrl_ops const em28xx_ctrl_ops = {0, 0, & em28xx_s_ctrl};
static void size_to_scale(struct em28xx *dev , unsigned int width , unsigned int height ,
                          unsigned int *hscale , unsigned int *vscale )
{
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  {
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  *hscale = (unsigned int )(((unsigned long )maxw << 12) / (unsigned long )width) - 4096U;
  if (*hscale > 16383U) {
    *hscale = 16383U;
  } else {
  }
  *vscale = (unsigned int )(((unsigned long )maxh << 12) / (unsigned long )height) - 4096U;
  if (*vscale > 16383U) {
    *vscale = 16383U;
  } else {
  }
  return;
}
}
static void scale_to_size(struct em28xx *dev , unsigned int hscale , unsigned int vscale ,
                          unsigned int *width , unsigned int *height )
{
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  {
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  *width = (unsigned int )(((unsigned long )maxw << 12) / (unsigned long )((long )hscale + 4096L));
  *height = (unsigned int )(((unsigned long )maxh << 12) / (unsigned long )((long )vscale + 4096L));
  return;
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  f->fmt.pix.width = (__u32 )dev->width;
  f->fmt.pix.height = (__u32 )dev->height;
  f->fmt.pix.pixelformat = (dev->format)->fourcc;
  f->fmt.pix.bytesperline = (__u32 )((dev->width * (dev->format)->depth + 7) >> 3);
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * (__u32 )dev->height;
  f->fmt.pix.colorspace = 1U;
  if (dev->progressive != 0) {
    f->fmt.pix.field = 1U;
  } else {
    f->fmt.pix.field = dev->interlaced != 0 ? 4U : 2U;
  }
  return (0);
}
}
static struct em28xx_fmt *format_by_fourcc(unsigned int fourcc )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_35126;
  ldv_35125: ;
  if (format[i].fourcc == fourcc) {
    return ((struct em28xx_fmt *)(& format) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_35126: ;
  if (i <= 5U) {
    goto ldv_35125;
  } else {
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned int width ;
  unsigned int height ;
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  unsigned int hscale ;
  unsigned int vscale ;
  struct em28xx_fmt *fmt ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  width = f->fmt.pix.width;
  height = f->fmt.pix.height;
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  fmt = format_by_fourcc(f->fmt.pix.pixelformat);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    if (video_debug != 0U) {
      printk("\016%s %s :Fourcc format (%08x) invalid.\n", (char *)(& dev->name),
             "vidioc_try_fmt_vid_cap", f->fmt.pix.pixelformat);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    height = (maxh * 3U) / 4U >= height ? maxh / 2U : maxh;
    width = (maxw * 3U) / 4U >= width ? maxw / 2U : maxw;
    if (width == maxw && height == maxh) {
      width = width / 2U;
    } else {
    }
  } else {
    v4l_bound_align_image(& width, 48U, maxw, 1U, & height, 32U, maxh, 1U, 0U);
  }
  size_to_scale(dev, width, height, & hscale, & vscale);
  scale_to_size(dev, hscale, vscale, & width, & height);
  f->fmt.pix.width = width;
  f->fmt.pix.height = height;
  f->fmt.pix.pixelformat = fmt->fourcc;
  f->fmt.pix.bytesperline = ((unsigned int )fmt->depth * width + 7U) >> 3;
  f->fmt.pix.sizeimage = f->fmt.pix.bytesperline * height;
  f->fmt.pix.colorspace = 1U;
  if (dev->progressive != 0) {
    f->fmt.pix.field = 1U;
  } else {
    f->fmt.pix.field = dev->interlaced != 0 ? 4U : 2U;
  }
  return (0);
}
}
static int em28xx_set_video_format(struct em28xx *dev , unsigned int fourcc , unsigned int width ,
                                   unsigned int height )
{
  struct em28xx_fmt *fmt ;
  {
  fmt = format_by_fourcc(fourcc);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    return (-22);
  } else {
  }
  dev->format = fmt;
  dev->width = (int )width;
  dev->height = (int )height;
  size_to_scale(dev, (unsigned int )dev->width, (unsigned int )dev->height, & dev->hscale,
                & dev->vscale);
  em28xx_resolution_set(dev);
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *priv , struct v4l2_format *f )
{
  struct em28xx *dev ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = video_drvdata(file);
  dev = (struct em28xx *)tmp;
  if (dev->streaming_users > 0) {
    return (-16);
  } else {
  }
  vidioc_try_fmt_vid_cap(file, priv, f);
  tmp___0 = em28xx_set_video_format(dev, f->fmt.pix.pixelformat, f->fmt.pix.width,
                                    f->fmt.pix.height);
  return (tmp___0);
}
}
static int vidioc_g_std(struct file *file , void *priv , v4l2_std_id *norm )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  *norm = dev->norm;
  return (0);
}
}
static int vidioc_querystd(struct file *file , void *priv , v4l2_std_id *norm )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35176;
  ldv_35175: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->querystd != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               v4l2_std_id * ))0)) {
    (*(((__sd->ops)->video)->querystd))(__sd, norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35176: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35175;
  } else {
  }
  return (0);
}
}
static int vidioc_s_std(struct file *file , void *priv , v4l2_std_id norm )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_format f ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (dev->norm == norm) {
    return (0);
  } else {
  }
  if (dev->streaming_users > 0) {
    return (-16);
  } else {
  }
  dev->norm = norm;
  f.fmt.pix.width = 720U;
  f.fmt.pix.height = (norm & 63744ULL) != 0ULL ? 480U : 576U;
  vidioc_try_fmt_vid_cap(file, priv, & f);
  dev->width = (int )f.fmt.pix.width;
  dev->height = (int )f.fmt.pix.height;
  size_to_scale(dev, (unsigned int )dev->width, (unsigned int )dev->height, & dev->hscale,
                & dev->vscale);
  em28xx_resolution_set(dev);
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35192;
  ldv_35191: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35192: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35191;
  } else {
  }
  return (0);
}
}
static int vidioc_g_parm(struct file *file , void *priv , struct v4l2_streamparm *p )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int rc ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  rc = 0;
  p->parm.capture.readbuffers = 4U;
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    __err = 0L;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_35210;
    ldv_35209: ;
    if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->g_parm != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                               struct v4l2_streamparm * ))0)) {
      tmp = (*(((__sd->ops)->video)->g_parm))(__sd, p);
      __err = (long )tmp;
    } else {
    }
    if (__err != 0L && __err != -515L) {
      goto ldv_35208;
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_35210: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35209;
    } else {
    }
    ldv_35208:
    rc = (int )(__err != -515L ? __err : 0L);
  } else {
    v4l2_video_std_frame_period((int )dev->norm, & p->parm.capture.timeperframe);
  }
  return (rc);
}
}
static int vidioc_s_parm(struct file *file , void *priv , struct v4l2_streamparm *p )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  long __err ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  p->parm.capture.readbuffers = 4U;
  __err = 0L;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35228;
  ldv_35227: ;
  if ((unsigned long )(__sd->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd->ops)->video)->s_parm != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             struct v4l2_streamparm * ))0)) {
    tmp = (*(((__sd->ops)->video)->s_parm))(__sd, p);
    __err = (long )tmp;
  } else {
  }
  if (__err != 0L && __err != -515L) {
    goto ldv_35226;
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35228: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35227;
  } else {
  }
  ldv_35226: ;
  return ((int )(__err != -515L ? __err : 0L));
}
}
static char const *iname[10U] =
  { 0, "Composite1", "Composite2", "Composite3",
        "Composite4", "S-Video", "Television", "Cable TV",
        "DVB", "for debug only"};
static int vidioc_enum_input(struct file *file , void *priv , struct v4l2_input *i )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  unsigned int n ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  n = i->index;
  if (n > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 0U) {
    return (-22);
  } else {
  }
  i->index = n;
  i->type = 2U;
  strcpy((char *)(& i->name), iname[(unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type]);
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 6U || (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )n)->type == 7U) {
    i->type = 1U;
  } else {
  }
  i->std = (dev->vdev)->tvnorms;
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    i->capabilities = 0U;
  } else {
  }
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *priv , unsigned int *i )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  *i = dev->ctl_input;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *priv , unsigned int i )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (i > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )i)->type == 0U) {
    return (-22);
  } else {
  }
  video_mux(dev, (int )i);
  return (0);
}
}
static int vidioc_g_audio(struct file *file , void *priv , struct v4l2_audio *a )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  switch (a->index) {
  case 0U:
  strcpy((char *)(& a->name), "Television");
  goto ldv_35262;
  case 1U:
  strcpy((char *)(& a->name), "Line In");
  goto ldv_35262;
  case 2U:
  strcpy((char *)(& a->name), "Television alt");
  goto ldv_35262;
  case 3U:
  strcpy((char *)(& a->name), "Phone");
  goto ldv_35262;
  case 4U:
  strcpy((char *)(& a->name), "Mic");
  goto ldv_35262;
  case 5U:
  strcpy((char *)(& a->name), "CD");
  goto ldv_35262;
  case 6U:
  strcpy((char *)(& a->name), "Aux");
  goto ldv_35262;
  case 7U:
  strcpy((char *)(& a->name), "PCM");
  goto ldv_35262;
  default: ;
  return (-22);
  }
  ldv_35262:
  a->index = dev->ctl_ainput;
  a->capability = 1U;
  return (0);
}
}
static int vidioc_s_audio(struct file *file , void *priv , struct v4l2_audio const *a )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )a->index > 3U) {
    return (-22);
  } else {
  }
  if ((unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->type == 0U) {
    return (-22);
  } else {
  }
  dev->ctl_ainput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->amux;
  dev->ctl_aoutput = (unsigned int )((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )a->index)->aout;
  if (dev->ctl_aoutput == 0U) {
    dev->ctl_aoutput = 1U;
  } else {
  }
  return (0);
}
}
static int vidioc_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (t->index != 0U) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Tuner");
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35291;
  ldv_35290: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35291: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35290;
  } else {
  }
  return (0);
}
}
static int vidioc_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35306;
  ldv_35305: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35306: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35305;
  } else {
  }
  return (0);
}
}
static int vidioc_g_frequency(struct file *file , void *priv , struct v4l2_frequency *f )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (f->tuner != 0U) {
    return (-22);
  } else {
  }
  f->frequency = (__u32 )dev->ctl_freq;
  return (0);
}
}
static int vidioc_s_frequency(struct file *file , void *priv , struct v4l2_frequency const *f )
{
  struct v4l2_frequency new_freq ;
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  new_freq = *f;
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if ((unsigned int )f->tuner != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35329;
  ldv_35328: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                  struct v4l2_frequency const * ))0)) {
    (*(((__sd->ops)->tuner)->s_frequency))(__sd, f);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35329: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35328;
  } else {
  }
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_35337;
  ldv_35336: ;
  if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->g_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_frequency * ))0)) {
    (*(((__sd___0->ops)->tuner)->g_frequency))(__sd___0, & new_freq);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_35337: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35336;
  } else {
  }
  dev->ctl_freq = (int )new_freq.frequency;
  return (0);
}
}
static int vidioc_g_chip_ident(struct file *file , void *priv , struct v4l2_dbg_chip_ident *chip )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  chip->ident = 0U;
  chip->revision = 0U;
  if (chip->match.type == 0U) {
    if (chip->match.ldv_28953.addr > 1U) {
      return (-22);
    } else {
    }
    return (0);
  } else {
  }
  if (chip->match.type != 1U && chip->match.type != 2U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35352;
  ldv_35351: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_chip_ident != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                struct v4l2_dbg_chip_ident * ))0)) {
    (*(((__sd->ops)->core)->g_chip_ident))(__sd, chip);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35352: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35351;
  } else {
  }
  return (0);
}
}
static int vidioc_g_chip_info(struct file *file , void *priv , struct v4l2_dbg_chip_info *chip )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  if (chip->match.ldv_28953.addr > 1U) {
    return (-22);
  } else {
  }
  if (chip->match.ldv_28953.addr == 1U) {
    strlcpy((char *)(& chip->name), "ac97", 32UL);
  } else {
    strlcpy((char *)(& chip->name), (char const *)(& dev->v4l2_dev.name), 32UL);
  }
  return (0);
}
}
static int em28xx_reg_len(int reg )
{
  {
  switch (reg) {
  case 64: ;
  case 48: ;
  case 50: ;
  return (2);
  default: ;
  return (1);
  }
}
}
static int vidioc_g_register(struct file *file , void *priv , struct v4l2_dbg_register *reg )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int ret ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp ;
  __le16 val ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  switch (reg->match.type) {
  case 0U: ;
  if (reg->match.ldv_28953.addr > 1U) {
    return (-22);
  } else {
  }
  if (reg->match.ldv_28953.addr == 0U) {
    goto ldv_35377;
  } else {
  }
  case 3U:
  ret = em28xx_read_ac97(dev, (int )((u8 )reg->reg));
  if (ret < 0) {
    return (ret);
  } else {
  }
  reg->val = (__u64 )ret;
  reg->size = 1U;
  return (0);
  case 1U:
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35386;
  ldv_35385: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->g_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_dbg_register * ))0)) {
    (*(((__sd->ops)->core)->g_register))(__sd, reg);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35386: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35385;
  } else {
  }
  return (0);
  case 2U:
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_35395;
  ldv_35394: ;
  if ((unsigned long )(__sd___0->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd___0->ops)->core)->g_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      struct v4l2_dbg_register * ))0)) {
    (*(((__sd___0->ops)->core)->g_register))(__sd___0, reg);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_35395: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35394;
  } else {
  }
  return (0);
  default: ;
  return (-22);
  }
  ldv_35377:
  tmp = em28xx_reg_len((int )reg->reg);
  reg->size = (__u32 )tmp;
  if (reg->size == 1U) {
    ret = em28xx_read_reg(dev, (int )((u16 )reg->reg));
    if (ret < 0) {
      return (ret);
    } else {
    }
    reg->val = (__u64 )ret;
  } else {
    val = 0U;
    ret = em28xx_read_reg_req_len(dev, 0, (int )((u16 )reg->reg), (char *)(& val),
                                  2);
    if (ret < 0) {
      return (ret);
    } else {
    }
    reg->val = (__u64 )val;
  }
  return (0);
}
}
static int vidioc_s_register(struct file *file , void *priv , struct v4l2_dbg_register const *reg )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  __le16 buf ;
  int tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  switch (reg->match.type) {
  case 0U: ;
  if ((unsigned int )reg->match.ldv_28953.addr > 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )reg->match.ldv_28953.addr == 0U) {
    goto ldv_35408;
  } else {
  }
  case 3U:
  tmp = em28xx_write_ac97(dev, (int )((u8 )reg->reg), (int )((u16 )reg->val));
  return (tmp);
  case 1U:
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35417;
  ldv_35416: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_dbg_register const * ))0)) {
    (*(((__sd->ops)->core)->s_register))(__sd, reg);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35417: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35416;
  } else {
  }
  return (0);
  case 2U:
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_35426;
  ldv_35425: ;
  if ((unsigned long )(__sd___0->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd___0->ops)->core)->s_register != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                      struct v4l2_dbg_register const * ))0)) {
    (*(((__sd___0->ops)->core)->s_register))(__sd___0, reg);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_35426: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35425;
  } else {
  }
  return (0);
  default: ;
  return (-22);
  }
  ldv_35408:
  buf = (unsigned short )reg->val;
  tmp___0 = em28xx_reg_len((int )reg->reg);
  tmp___1 = em28xx_write_regs(dev, (int )((u16 )reg->reg), (char *)(& buf), tmp___0);
  return (tmp___1);
}
}
static int vidioc_querycap(struct file *file , void *priv , struct v4l2_capability *cap )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  tmp = video_devdata(file);
  vdev = tmp;
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  strlcpy((char *)(& cap->driver), "em28xx", 16UL);
  strlcpy((char *)(& cap->card), (char const *)em28xx_boards[dev->model].name, 32UL);
  usb_make_path(dev->udev, (char *)(& cap->bus_info), 32UL);
  if (vdev->vfl_type == 0) {
    cap->device_caps = 83886081U;
  } else
  if (vdev->vfl_type == 2) {
    cap->device_caps = 262144U;
  } else {
    cap->device_caps = 16777232U;
  }
  if ((unsigned int )*((unsigned char *)dev + 1048UL) != 0U) {
    cap->device_caps = cap->device_caps | 131072U;
  } else {
  }
  if (dev->tuner_type != 4) {
    cap->device_caps = cap->device_caps | 65536U;
  } else {
  }
  cap->capabilities = cap->device_caps | 2231369729U;
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    cap->capabilities = cap->capabilities | 16U;
  } else {
  }
  if ((unsigned long )dev->radio_dev != (unsigned long )((struct video_device *)0)) {
    cap->capabilities = cap->capabilities | 262144U;
  } else {
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *priv , struct v4l2_fmtdesc *f )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(f->index > 5U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strlcpy((char *)(& f->description), (char const *)format[f->index].name, 32UL);
  f->pixelformat = format[f->index].fourcc;
  return (0);
}
}
static int vidioc_enum_framesizes(struct file *file , void *priv , struct v4l2_frmsizeenum *fsize )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  struct em28xx_fmt *fmt ;
  unsigned int maxw ;
  unsigned int tmp ;
  unsigned int maxh ;
  unsigned int tmp___0 ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  tmp = norm_maxw(dev);
  maxw = tmp;
  tmp___0 = norm_maxh(dev);
  maxh = tmp___0;
  fmt = format_by_fourcc(fsize->pixel_format);
  if ((unsigned long )fmt == (unsigned long )((struct em28xx_fmt *)0)) {
    if (video_debug != 0U) {
      printk("\016%s %s :Fourcc format (%08x) invalid.\n", (char *)(& dev->name),
             "vidioc_enum_framesizes", fsize->pixel_format);
    } else {
    }
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if (fsize->index > 1U) {
      return (-22);
    } else {
    }
    fsize->type = 1U;
    fsize->ldv_28512.discrete.width = maxw / (fsize->index + 1U);
    fsize->ldv_28512.discrete.height = maxh / (fsize->index + 1U);
    return (0);
  } else {
  }
  if (fsize->index != 0U) {
    return (-22);
  } else {
  }
  fsize->type = 3U;
  scale_to_size(dev, 16383U, 16383U, & fsize->ldv_28512.stepwise.min_width, & fsize->ldv_28512.stepwise.min_height);
  if (fsize->ldv_28512.stepwise.min_width <= 47U) {
    fsize->ldv_28512.stepwise.min_width = 48U;
  } else {
  }
  if (fsize->ldv_28512.stepwise.min_height <= 37U) {
    fsize->ldv_28512.stepwise.min_height = 38U;
  } else {
  }
  fsize->ldv_28512.stepwise.max_width = maxw;
  fsize->ldv_28512.stepwise.max_height = maxh;
  fsize->ldv_28512.stepwise.step_width = 1U;
  fsize->ldv_28512.stepwise.step_height = 1U;
  return (0);
}
}
static int vidioc_g_fmt_vbi_cap(struct file *file , void *priv , struct v4l2_format *format___0 )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  {
  fh = (struct em28xx_fh *)priv;
  dev = fh->dev;
  format___0->fmt.vbi.samples_per_line = dev->vbi_width;
  format___0->fmt.vbi.sample_format = 1497715271U;
  format___0->fmt.vbi.offset = 0U;
  format___0->fmt.vbi.flags = 0U;
  format___0->fmt.vbi.sampling_rate = 13500000U;
  format___0->fmt.vbi.count[0] = dev->vbi_height;
  format___0->fmt.vbi.count[1] = dev->vbi_height;
  memset((void *)(& format___0->fmt.vbi.reserved), 0, 8UL);
  if ((dev->norm & 63744ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 10;
    format___0->fmt.vbi.start[1] = 273;
  } else
  if ((dev->norm & 16713471ULL) != 0ULL) {
    format___0->fmt.vbi.start[0] = 6;
    format___0->fmt.vbi.start[1] = 318;
  } else {
  }
  return (0);
}
}
static int radio_g_tuner(struct file *file , void *priv , struct v4l2_tuner *t )
{
  struct em28xx *dev ;
  long tmp ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct em28xx_fh *)priv)->dev;
  tmp = ldv__builtin_expect(t->index != 0U, 0L);
  if (tmp != 0L) {
    return (-22);
  } else {
  }
  strcpy((char *)(& t->name), "Radio");
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35474;
  ldv_35473: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->g_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner * ))0)) {
    (*(((__sd->ops)->tuner)->g_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35474: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35473;
  } else {
  }
  return (0);
}
}
static int radio_s_tuner(struct file *file , void *priv , struct v4l2_tuner const *t )
{
  struct em28xx *dev ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = ((struct em28xx_fh *)priv)->dev;
  if ((unsigned int )t->index != 0U) {
    return (-22);
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35488;
  ldv_35487: ;
  if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_tuner != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                              struct v4l2_tuner const * ))0)) {
    (*(((__sd->ops)->tuner)->s_tuner))(__sd, t);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35488: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35487;
  } else {
  }
  return (0);
}
}
static int em28xx_v4l2_open(struct file *filp )
{
  struct video_device *vdev ;
  struct video_device *tmp ;
  struct em28xx *dev ;
  void *tmp___0 ;
  enum v4l2_buf_type fh_type ;
  struct em28xx_fh *fh ;
  char const *tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = video_devdata(filp);
  vdev = tmp;
  tmp___0 = video_drvdata(filp);
  dev = (struct em28xx *)tmp___0;
  fh_type = 0;
  switch (vdev->vfl_type) {
  case 0:
  fh_type = 1;
  goto ldv_35498;
  case 1:
  fh_type = 4;
  goto ldv_35498;
  }
  ldv_35498: ;
  if (video_debug != 0U) {
    tmp___1 = video_device_node_name(vdev);
    printk("\016%s %s :open dev=%s type=%s users=%d\n", (char *)(& dev->name), "em28xx_v4l2_open",
           tmp___1, v4l2_type_names[(unsigned int )fh_type], dev->users);
  } else {
  }
  tmp___2 = ldv_mutex_lock_interruptible_8(& dev->lock);
  if (tmp___2 != 0) {
    return (-512);
  } else {
  }
  tmp___3 = kzalloc(184UL, 208U);
  fh = (struct em28xx_fh *)tmp___3;
  if ((unsigned long )fh == (unsigned long )((struct em28xx_fh *)0)) {
    printk("\v%s: em28xx-video.c: Out of memory?!\n", (char *)(& dev->name));
    ldv_mutex_unlock_9(& dev->lock);
    return (-12);
  } else {
  }
  v4l2_fh_init(& fh->fh, vdev);
  fh->dev = dev;
  fh->type = fh_type;
  filp->private_data = (void *)fh;
  if ((unsigned int )fh->type == 1U && dev->users == 0) {
    em28xx_set_mode(dev, 1);
    em28xx_resolution_set(dev);
    em28xx_wake_i2c(dev);
  } else {
  }
  if (vdev->vfl_type == 2) {
    if (video_debug != 0U) {
      printk("\016%s %s :video_open: setting radio device\n", (char *)(& dev->name),
             "em28xx_v4l2_open");
    } else {
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_35507;
    ldv_35506: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_radio != (unsigned long )((int (* )(struct v4l2_subdev * ))0)) {
      (*(((__sd->ops)->tuner)->s_radio))(__sd);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_35507: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35506;
    } else {
    }
  } else {
  }
  dev->users = dev->users + 1;
  ldv_mutex_unlock_10(& dev->lock);
  v4l2_fh_add(& fh->fh);
  return (0);
}
}
void em28xx_release_analog_resources(struct em28xx *dev )
{
  int tmp ;
  char const *tmp___0 ;
  int tmp___1 ;
  char const *tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )dev->radio_dev != (unsigned long )((struct video_device *)0)) {
    tmp = video_is_registered(dev->radio_dev);
    if (tmp != 0) {
      video_unregister_device(dev->radio_dev);
    } else {
      video_device_release(dev->radio_dev);
    }
    dev->radio_dev = 0;
  } else {
  }
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    tmp___0 = video_device_node_name(dev->vbi_dev);
    printk("\016%s: V4L2 device %s deregistered\n", (char *)(& dev->name), tmp___0);
    tmp___1 = video_is_registered(dev->vbi_dev);
    if (tmp___1 != 0) {
      video_unregister_device(dev->vbi_dev);
    } else {
      video_device_release(dev->vbi_dev);
    }
    dev->vbi_dev = 0;
  } else {
  }
  if ((unsigned long )dev->vdev != (unsigned long )((struct video_device *)0)) {
    tmp___2 = video_device_node_name(dev->vdev);
    printk("\016%s: V4L2 device %s deregistered\n", (char *)(& dev->name), tmp___2);
    tmp___3 = video_is_registered(dev->vdev);
    if (tmp___3 != 0) {
      video_unregister_device(dev->vdev);
    } else {
      video_device_release(dev->vdev);
    }
    dev->vdev = 0;
  } else {
  }
  return;
}
}
static int em28xx_v4l2_close(struct file *filp )
{
  struct em28xx_fh *fh ;
  struct em28xx *dev ;
  int errCode ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  fh = (struct em28xx_fh *)filp->private_data;
  dev = fh->dev;
  if (video_debug != 0U) {
    printk("\016%s %s :users=%d\n", (char *)(& dev->name), "em28xx_v4l2_close", dev->users);
  } else {
  }
  ldv_mutex_lock_11(& dev->lock);
  vb2_fop_release(filp);
  if (dev->users == 1) {
    if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
      em28xx_release_resources(dev);
      kfree((void const *)dev->alt_max_pkt_size_isoc);
      ldv_mutex_unlock_12(& dev->lock);
      kfree((void const *)dev);
      return (0);
    } else {
    }
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_35525;
    ldv_35524: ;
    if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                             int ))0)) {
      (*(((__sd->ops)->core)->s_power))(__sd, 0);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_35525: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_35524;
    } else {
    }
    em28xx_set_mode(dev, 0);
    dev->alt = 0;
    if (video_debug != 0U) {
      printk("\016%s %s :setting alternate 0\n", (char *)(& dev->name), "em28xx_v4l2_close");
    } else {
    }
    errCode = usb_set_interface(dev->udev, 0, 0);
    if (errCode < 0) {
      printk("\v%s: cannot change alternate number to 0 (error=%i)\n", (char *)(& dev->name),
             errCode);
    } else {
    }
  } else {
  }
  dev->users = dev->users - 1;
  ldv_mutex_unlock_13(& dev->lock);
  return (0);
}
}
static struct v4l2_file_operations const em28xx_v4l_fops =
     {& __this_module, & vb2_fop_read, 0, & vb2_fop_poll, 0, & video_ioctl2, 0, 0, & vb2_fop_mmap,
    & em28xx_v4l2_open, & em28xx_v4l2_close};
static struct v4l2_ioctl_ops const video_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, & vidioc_g_fmt_vbi_cap, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0,
    0, & vidioc_g_fmt_vbi_cap, 0, 0, 0, 0, 0, & vidioc_try_fmt_vid_cap, 0, 0, 0, & vidioc_g_fmt_vbi_cap,
    0, 0, 0, 0, 0, & vb2_ioctl_reqbufs, & vb2_ioctl_querybuf, & vb2_ioctl_qbuf, 0,
    & vb2_ioctl_dqbuf, & vb2_ioctl_create_bufs, & vb2_ioctl_prepare_buf, 0, 0, 0,
    & vb2_ioctl_streamon, & vb2_ioctl_streamoff, & vidioc_g_std, & vidioc_s_std, & vidioc_querystd,
    & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, & vidioc_g_audio, & vidioc_s_audio, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, & vidioc_g_parm, & vidioc_s_parm, & vidioc_g_tuner, & vidioc_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register,
    & vidioc_g_chip_info, & vidioc_g_chip_ident, & vidioc_enum_framesizes, 0, 0, 0,
    0, 0, 0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, 0};
static struct video_device const em28xx_video_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & em28xx_v4l_fops,
    {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0, (unsigned char)0,
            (unsigned char)0, (unsigned char)0}, 0, 0, {{0}, {{{{{0U}}, 0U, 0U, 0,
                                                                {0, {0, 0}, 0, 0,
                                                                 0UL}}}}, {0, 0},
                                                        0, 0, 0, {0, {0, 0}, 0, 0,
                                                                  0UL}}, 0, 0, 0,
     {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0,
      {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0U, {{{{{{0U}}, 0U,
                                                                        0U, 0, {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}}}},
                                                                     {0, 0}}}, 0,
      (_Bool)0, (_Bool)0, {{0, 0}, 0UL, 0, 0, 0UL, 0, 0, 0, {(char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0, (char)0, (char)0,
                                                             (char)0}, {0, {0, 0},
                                                                        0, 0, 0UL}},
      0UL, {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                                  0},
                                                                              0, 0,
                                                                              0UL}}}},
                                                       {0, 0}}, {0}, {0}, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      0, 0, 0, 0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0, 0},
     0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, {0,
                                                                               {0,
                                                                                0},
                                                                               {{0}}},
     0, 0, 0, 0}, 0, 0, 0, 0, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0, (char)0, (char)0, (char)0,
                                     (char)0, (char)0}, 0, 0, 0, (unsigned short)0,
    0UL, 0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 16777215ULL,
    0ULL, & video_device_release_empty, & video_ioctl_ops, {0UL, 0UL, 0UL}, {0UL,
                                                                             0UL,
                                                                             0UL},
    0};
static struct v4l2_file_operations const radio_fops =
     {& __this_module, 0, 0, 0, 0, & video_ioctl2, 0, 0, 0, & em28xx_v4l2_open, & em28xx_v4l2_close};
static struct v4l2_ioctl_ops const radio_ioctl_ops =
     {& vidioc_querycap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & radio_g_tuner, & radio_s_tuner,
    & vidioc_g_frequency, & vidioc_s_frequency, 0, 0, 0, 0, & vidioc_g_register, & vidioc_s_register,
    & vidioc_g_chip_info, & vidioc_g_chip_ident, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_subscribe_event,
    & v4l2_event_unsubscribe, 0};
static struct video_device em28xx_radio_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & radio_fops, {0,
                                                                                  0,
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {{0}},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0},
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{{{{0U}},
                                                                                      0U,
                                                                                      0U,
                                                                                      0,
                                                                                      {0,
                                                                                       {0,
                                                                                        0},
                                                                                       0,
                                                                                       0,
                                                                                       0UL}}}},
                                                                                   {0,
                                                                                    0},
                                                                                   {0U,
                                                                                    {{{{{{0U}},
                                                                                        0U,
                                                                                        0U,
                                                                                        0,
                                                                                        {0,
                                                                                         {0,
                                                                                          0},
                                                                                         0,
                                                                                         0,
                                                                                         0UL}}}},
                                                                                     {0,
                                                                                      0}}},
                                                                                   0,
                                                                                   (_Bool)0,
                                                                                   (_Bool)0,
                                                                                   {{0,
                                                                                     0},
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0UL,
                                                                                    0,
                                                                                    0,
                                                                                    0,
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
                                                                                     (char)0},
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   0UL,
                                                                                   {{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
                                                                                   {{{{{{0U}},
                                                                                       0U,
                                                                                       0U,
                                                                                       0,
                                                                                       {0,
                                                                                        {0,
                                                                                         0},
                                                                                        0,
                                                                                        0,
                                                                                        0UL}}}},
                                                                                    {0,
                                                                                     0}},
                                                                                   {0},
                                                                                   {0},
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   (unsigned char)0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0UL,
                                                                                   0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0ULL,
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  {0},
                                                                                  0U,
                                                                                  0U,
                                                                                  {{{{{0U}},
                                                                                     0U,
                                                                                     0U,
                                                                                     0,
                                                                                     {0,
                                                                                      {0,
                                                                                       0},
                                                                                      0,
                                                                                      0,
                                                                                      0UL}}}},
                                                                                  {0,
                                                                                   0},
                                                                                  {0,
                                                                                   {0,
                                                                                    0},
                                                                                   {{0}}},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0},
    0, 0, 0, 0, 0, 0, {'e', 'm', '2', '8', 'x', 'x', '-', 'r', 'a', 'd', 'i', 'o',
                       '\000'}, 0, 0, 0, (unsigned short)0, 0UL, 0, {{{{{0U}}, 0U,
                                                                       0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}}}},
    {0, 0}, 0, 0ULL, 0ULL, 0, & radio_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL},
    0};
static struct video_device *em28xx_vdev_init(struct em28xx *dev , struct video_device const *template ,
                                             char const *type_name )
{
  struct video_device *vfd ;
  {
  vfd = video_device_alloc();
  if ((unsigned long )vfd == (unsigned long )((struct video_device *)0)) {
    return (0);
  } else {
  }
  *vfd = *template;
  vfd->v4l2_dev = & dev->v4l2_dev;
  vfd->debug = (int )video_debug;
  vfd->lock = & dev->lock;
  set_bit(2U, (unsigned long volatile *)(& vfd->flags));
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    vfd->tvnorms = 0ULL;
  } else {
  }
  snprintf((char *)(& vfd->name), 32UL, "%s %s", (char *)(& dev->name), type_name);
  video_set_drvdata(vfd, (void *)dev);
  return (vfd);
}
}
int em28xx_register_analog_devices(struct em28xx *dev )
{
  u8 val ;
  int ret ;
  unsigned int maxw ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  unsigned int tmp ;
  int tmp___0 ;
  struct v4l2_ctrl *tmp___1 ;
  struct v4l2_ctrl *tmp___2 ;
  struct v4l2_ctrl *tmp___3 ;
  struct v4l2_ctrl *tmp___4 ;
  struct v4l2_ctrl *tmp___5 ;
  struct v4l2_ctrl *tmp___6 ;
  int tmp___7 ;
  char const *tmp___8 ;
  char const *tmp___9 ;
  char const *tmp___10 ;
  {
  printk("\016%s: v4l2 driver version %s\n", (char *)(& dev->name), (char *)"0.2.0");
  dev->norm = 255ULL;
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_35551;
  ldv_35550: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_std != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         v4l2_std_id ))0)) {
    (*(((__sd->ops)->core)->s_std))(__sd, dev->norm);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_35551: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_35550;
  } else {
  }
  dev->interlaced = 1;
  dev->format = (struct em28xx_fmt *)(& format);
  maxw = norm_maxw(dev);
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    maxw = maxw / 2U;
  } else {
  }
  tmp = norm_maxh(dev);
  em28xx_set_video_format(dev, format[0].fourcc, maxw, tmp);
  video_mux(dev, 0);
  dev->mute = 1;
  dev->volume = 31;
  tmp___0 = em28xx_read_reg(dev, 15);
  val = (unsigned char )tmp___0;
  em28xx_write_reg(dev, 15, (int )((unsigned int )val | 128U));
  em28xx_set_outfmt(dev);
  em28xx_compression_disable(dev);
  tmp___1 = v4l2_ctrl_find(& dev->ctrl_handler, 9963777U);
  if ((unsigned long )tmp___1 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963777U, 0, 31, 1U,
                      16);
  } else {
  }
  tmp___2 = v4l2_ctrl_find(& dev->ctrl_handler, 9963776U);
  if ((unsigned long )tmp___2 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963776U, -128, 127,
                      1U, 0);
  } else {
  }
  tmp___3 = v4l2_ctrl_find(& dev->ctrl_handler, 9963778U);
  if ((unsigned long )tmp___3 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963778U, 0, 31, 1U,
                      16);
  } else {
  }
  tmp___4 = v4l2_ctrl_find(& dev->ctrl_handler, 9963791U);
  if ((unsigned long )tmp___4 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963791U, -48, 48, 1U,
                      0);
  } else {
  }
  tmp___5 = v4l2_ctrl_find(& dev->ctrl_handler, 9963790U);
  if ((unsigned long )tmp___5 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963790U, -48, 48, 1U,
                      0);
  } else {
  }
  tmp___6 = v4l2_ctrl_find(& dev->ctrl_handler, 9963803U);
  if ((unsigned long )tmp___6 == (unsigned long )((struct v4l2_ctrl *)0)) {
    v4l2_ctrl_new_std(& dev->ctrl_handler, & em28xx_ctrl_ops, 9963803U, 0, 15, 1U,
                      0);
  } else {
  }
  em28xx_colorlevels_set_default(dev);
  v4l2_ctrl_handler_setup(& dev->ctrl_handler);
  if (dev->ctrl_handler.error != 0) {
    return (dev->ctrl_handler.error);
  } else {
  }
  dev->vdev = em28xx_vdev_init(dev, & em28xx_video_template, "video");
  if ((unsigned long )dev->vdev == (unsigned long )((struct video_device *)0)) {
    printk("\v%s: cannot allocate video_device.\n", (char *)(& dev->name));
    return (-19);
  } else {
  }
  (dev->vdev)->queue = & dev->vb_vidq;
  ((dev->vdev)->queue)->lock = & dev->vb_queue_lock;
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    v4l2_disable_ioctl(dev->vdev, 2148030015U);
    v4l2_disable_ioctl(dev->vdev, 2148029975U);
    v4l2_disable_ioctl(dev->vdev, 1074288152U);
  } else {
    v4l2_disable_ioctl(dev->vdev, 3234616854U);
  }
  if (dev->tuner_type == 4) {
    v4l2_disable_ioctl(dev->vdev, 3226752541U);
    v4l2_disable_ioctl(dev->vdev, 1079268894U);
    v4l2_disable_ioctl(dev->vdev, 3224131128U);
    v4l2_disable_ioctl(dev->vdev, 1076647481U);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 1048UL) == 0U) {
    v4l2_disable_ioctl(dev->vdev, 2150913569U);
    v4l2_disable_ioctl(dev->vdev, 1077171746U);
  } else {
  }
  ret = video_register_device(dev->vdev, 0, (int )video_nr[dev->devno]);
  if (ret != 0) {
    printk("\v%s: unable to register video device (error=%i).\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  tmp___7 = em28xx_vbi_supported(dev);
  if (tmp___7 == 1) {
    dev->vbi_dev = em28xx_vdev_init(dev, & em28xx_video_template, "vbi");
    (dev->vbi_dev)->queue = & dev->vb_vbiq;
    ((dev->vbi_dev)->queue)->lock = & dev->vb_vbi_queue_lock;
    v4l2_disable_ioctl(dev->vdev, 3234616854U);
    if (dev->tuner_type == 4) {
      v4l2_disable_ioctl(dev->vbi_dev, 3226752541U);
      v4l2_disable_ioctl(dev->vbi_dev, 1079268894U);
      v4l2_disable_ioctl(dev->vbi_dev, 3224131128U);
      v4l2_disable_ioctl(dev->vbi_dev, 1076647481U);
    } else {
    }
    if ((unsigned int )*((unsigned char *)dev + 1048UL) == 0U) {
      v4l2_disable_ioctl(dev->vbi_dev, 2150913569U);
      v4l2_disable_ioctl(dev->vbi_dev, 1077171746U);
    } else {
    }
    ret = video_register_device(dev->vbi_dev, 1, (int )vbi_nr[dev->devno]);
    if (ret < 0) {
      printk("\v%s: unable to register vbi device\n", (char *)(& dev->name));
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )em28xx_boards[dev->model].radio.type == 10U) {
    dev->radio_dev = em28xx_vdev_init(dev, (struct video_device const *)(& em28xx_radio_template),
                                      "radio");
    if ((unsigned long )dev->radio_dev == (unsigned long )((struct video_device *)0)) {
      printk("\v%s: cannot allocate video_device.\n", (char *)(& dev->name));
      return (-19);
    } else {
    }
    ret = video_register_device(dev->radio_dev, 2, (int )radio_nr[dev->devno]);
    if (ret < 0) {
      printk("\v%s: can\'t register radio device\n", (char *)(& dev->name));
      return (ret);
    } else {
    }
    tmp___8 = video_device_node_name(dev->radio_dev);
    printk("\016%s: Registered radio device as %s\n", (char *)(& dev->name), tmp___8);
  } else {
  }
  tmp___9 = video_device_node_name(dev->vdev);
  printk("\016%s: V4L2 video device registered as %s\n", (char *)(& dev->name), tmp___9);
  if ((unsigned long )dev->vbi_dev != (unsigned long )((struct video_device *)0)) {
    tmp___10 = video_device_node_name(dev->vbi_dev);
    printk("\016%s: V4L2 VBI device registered as %s\n", (char *)(& dev->name), tmp___10);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct vb2_buffer *var_group1 ;
  struct vb2_queue *var_group2 ;
  unsigned int var_em28xx_start_analog_streaming_13_p1 ;
  struct v4l2_ctrl *var_group3 ;
  struct file *var_group4 ;
  int res_em28xx_v4l2_open_53 ;
  void *var_vidioc_querycap_47_p1 ;
  struct v4l2_capability *var_vidioc_querycap_47_p2 ;
  void *var_vidioc_enum_fmt_vid_cap_48_p1 ;
  struct v4l2_fmtdesc *var_vidioc_enum_fmt_vid_cap_48_p2 ;
  void *var_vidioc_g_fmt_vid_cap_23_p1 ;
  struct v4l2_format *var_vidioc_g_fmt_vid_cap_23_p2 ;
  void *var_vidioc_try_fmt_vid_cap_25_p1 ;
  struct v4l2_format *var_vidioc_try_fmt_vid_cap_25_p2 ;
  void *var_vidioc_s_fmt_vid_cap_27_p1 ;
  struct v4l2_format *var_vidioc_s_fmt_vid_cap_27_p2 ;
  void *var_vidioc_g_fmt_vbi_cap_50_p1 ;
  struct v4l2_format *var_vidioc_g_fmt_vbi_cap_50_p2 ;
  void *var_vidioc_enum_framesizes_49_p1 ;
  struct v4l2_frmsizeenum *var_vidioc_enum_framesizes_49_p2 ;
  void *var_vidioc_g_audio_36_p1 ;
  struct v4l2_audio *var_vidioc_g_audio_36_p2 ;
  void *var_vidioc_s_audio_37_p1 ;
  struct v4l2_audio const *var_vidioc_s_audio_37_p2 ;
  void *var_vidioc_g_std_28_p1 ;
  v4l2_std_id *var_vidioc_g_std_28_p2 ;
  void *var_vidioc_querystd_29_p1 ;
  v4l2_std_id *var_vidioc_querystd_29_p2 ;
  void *var_vidioc_s_std_30_p1 ;
  v4l2_std_id var_vidioc_s_std_30_p2 ;
  void *var_vidioc_g_parm_31_p1 ;
  struct v4l2_streamparm *var_vidioc_g_parm_31_p2 ;
  void *var_vidioc_s_parm_32_p1 ;
  struct v4l2_streamparm *var_vidioc_s_parm_32_p2 ;
  void *var_vidioc_enum_input_33_p1 ;
  struct v4l2_input *var_vidioc_enum_input_33_p2 ;
  void *var_vidioc_g_input_34_p1 ;
  unsigned int *var_vidioc_g_input_34_p2 ;
  void *var_vidioc_s_input_35_p1 ;
  unsigned int var_vidioc_s_input_35_p2 ;
  void *var_vidioc_g_tuner_38_p1 ;
  struct v4l2_tuner *var_vidioc_g_tuner_38_p2 ;
  void *var_vidioc_s_tuner_39_p1 ;
  struct v4l2_tuner const *var_vidioc_s_tuner_39_p2 ;
  void *var_vidioc_g_frequency_40_p1 ;
  struct v4l2_frequency *var_vidioc_g_frequency_40_p2 ;
  void *var_vidioc_s_frequency_41_p1 ;
  struct v4l2_frequency const *var_vidioc_s_frequency_41_p2 ;
  void *var_vidioc_g_chip_ident_42_p1 ;
  struct v4l2_dbg_chip_ident *var_vidioc_g_chip_ident_42_p2 ;
  void *var_vidioc_g_chip_info_43_p1 ;
  struct v4l2_dbg_chip_info *var_vidioc_g_chip_info_43_p2 ;
  void *var_vidioc_g_register_45_p1 ;
  struct v4l2_dbg_register *var_vidioc_g_register_45_p2 ;
  void *var_vidioc_s_register_46_p1 ;
  struct v4l2_dbg_register const *var_vidioc_s_register_46_p2 ;
  void *var_radio_g_tuner_51_p1 ;
  struct v4l2_tuner *var_radio_g_tuner_51_p2 ;
  void *var_radio_s_tuner_52_p1 ;
  struct v4l2_tuner const *var_radio_s_tuner_52_p2 ;
  int ldv_s_em28xx_v4l_fops_v4l2_file_operations ;
  int ldv_s_radio_fops_v4l2_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_em28xx_v4l_fops_v4l2_file_operations = 0;
  ldv_s_radio_fops_v4l2_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_35678;
  ldv_35677:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  buffer_prepare(var_group1);
  goto ldv_35632;
  case 1:
  ldv_handler_precall();
  buffer_queue(var_group1);
  goto ldv_35632;
  case 2:
  ldv_handler_precall();
  em28xx_start_analog_streaming(var_group2, var_em28xx_start_analog_streaming_13_p1);
  goto ldv_35632;
  case 3:
  ldv_handler_precall();
  em28xx_stop_streaming(var_group2);
  goto ldv_35632;
  case 4:
  ldv_handler_precall();
  em28xx_s_ctrl(var_group3);
  goto ldv_35632;
  case 5: ;
  if (ldv_s_em28xx_v4l_fops_v4l2_file_operations == 0) {
    ldv_handler_precall();
    res_em28xx_v4l2_open_53 = em28xx_v4l2_open(var_group4);
    ldv_check_return_value(res_em28xx_v4l2_open_53);
    if (res_em28xx_v4l2_open_53 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_em28xx_v4l_fops_v4l2_file_operations = ldv_s_em28xx_v4l_fops_v4l2_file_operations + 1;
  } else {
  }
  goto ldv_35632;
  case 6: ;
  if (ldv_s_em28xx_v4l_fops_v4l2_file_operations == 1) {
    ldv_handler_precall();
    em28xx_v4l2_close(var_group4);
    ldv_s_em28xx_v4l_fops_v4l2_file_operations = 0;
  } else {
  }
  goto ldv_35632;
  case 7:
  ldv_handler_precall();
  vidioc_querycap(var_group4, var_vidioc_querycap_47_p1, var_vidioc_querycap_47_p2);
  goto ldv_35632;
  case 8:
  ldv_handler_precall();
  vidioc_enum_fmt_vid_cap(var_group4, var_vidioc_enum_fmt_vid_cap_48_p1, var_vidioc_enum_fmt_vid_cap_48_p2);
  goto ldv_35632;
  case 9:
  ldv_handler_precall();
  vidioc_g_fmt_vid_cap(var_group4, var_vidioc_g_fmt_vid_cap_23_p1, var_vidioc_g_fmt_vid_cap_23_p2);
  goto ldv_35632;
  case 10:
  ldv_handler_precall();
  vidioc_try_fmt_vid_cap(var_group4, var_vidioc_try_fmt_vid_cap_25_p1, var_vidioc_try_fmt_vid_cap_25_p2);
  goto ldv_35632;
  case 11:
  ldv_handler_precall();
  vidioc_s_fmt_vid_cap(var_group4, var_vidioc_s_fmt_vid_cap_27_p1, var_vidioc_s_fmt_vid_cap_27_p2);
  goto ldv_35632;
  case 12:
  ldv_handler_precall();
  vidioc_g_fmt_vbi_cap(var_group4, var_vidioc_g_fmt_vbi_cap_50_p1, var_vidioc_g_fmt_vbi_cap_50_p2);
  goto ldv_35632;
  case 13:
  ldv_handler_precall();
  vidioc_enum_framesizes(var_group4, var_vidioc_enum_framesizes_49_p1, var_vidioc_enum_framesizes_49_p2);
  goto ldv_35632;
  case 14:
  ldv_handler_precall();
  vidioc_g_audio(var_group4, var_vidioc_g_audio_36_p1, var_vidioc_g_audio_36_p2);
  goto ldv_35632;
  case 15:
  ldv_handler_precall();
  vidioc_s_audio(var_group4, var_vidioc_s_audio_37_p1, var_vidioc_s_audio_37_p2);
  goto ldv_35632;
  case 16:
  ldv_handler_precall();
  vidioc_g_std(var_group4, var_vidioc_g_std_28_p1, var_vidioc_g_std_28_p2);
  goto ldv_35632;
  case 17:
  ldv_handler_precall();
  vidioc_querystd(var_group4, var_vidioc_querystd_29_p1, var_vidioc_querystd_29_p2);
  goto ldv_35632;
  case 18:
  ldv_handler_precall();
  vidioc_s_std(var_group4, var_vidioc_s_std_30_p1, var_vidioc_s_std_30_p2);
  goto ldv_35632;
  case 19:
  ldv_handler_precall();
  vidioc_g_parm(var_group4, var_vidioc_g_parm_31_p1, var_vidioc_g_parm_31_p2);
  goto ldv_35632;
  case 20:
  ldv_handler_precall();
  vidioc_s_parm(var_group4, var_vidioc_s_parm_32_p1, var_vidioc_s_parm_32_p2);
  goto ldv_35632;
  case 21:
  ldv_handler_precall();
  vidioc_enum_input(var_group4, var_vidioc_enum_input_33_p1, var_vidioc_enum_input_33_p2);
  goto ldv_35632;
  case 22:
  ldv_handler_precall();
  vidioc_g_input(var_group4, var_vidioc_g_input_34_p1, var_vidioc_g_input_34_p2);
  goto ldv_35632;
  case 23:
  ldv_handler_precall();
  vidioc_s_input(var_group4, var_vidioc_s_input_35_p1, var_vidioc_s_input_35_p2);
  goto ldv_35632;
  case 24:
  ldv_handler_precall();
  vidioc_g_tuner(var_group4, var_vidioc_g_tuner_38_p1, var_vidioc_g_tuner_38_p2);
  goto ldv_35632;
  case 25:
  ldv_handler_precall();
  vidioc_s_tuner(var_group4, var_vidioc_s_tuner_39_p1, var_vidioc_s_tuner_39_p2);
  goto ldv_35632;
  case 26:
  ldv_handler_precall();
  vidioc_g_frequency(var_group4, var_vidioc_g_frequency_40_p1, var_vidioc_g_frequency_40_p2);
  goto ldv_35632;
  case 27:
  ldv_handler_precall();
  vidioc_s_frequency(var_group4, var_vidioc_s_frequency_41_p1, var_vidioc_s_frequency_41_p2);
  goto ldv_35632;
  case 28:
  ldv_handler_precall();
  vidioc_g_chip_ident(var_group4, var_vidioc_g_chip_ident_42_p1, var_vidioc_g_chip_ident_42_p2);
  goto ldv_35632;
  case 29:
  ldv_handler_precall();
  vidioc_g_chip_info(var_group4, var_vidioc_g_chip_info_43_p1, var_vidioc_g_chip_info_43_p2);
  goto ldv_35632;
  case 30:
  ldv_handler_precall();
  vidioc_g_register(var_group4, var_vidioc_g_register_45_p1, var_vidioc_g_register_45_p2);
  goto ldv_35632;
  case 31:
  ldv_handler_precall();
  vidioc_s_register(var_group4, var_vidioc_s_register_46_p1, var_vidioc_s_register_46_p2);
  goto ldv_35632;
  case 32: ;
  if (ldv_s_radio_fops_v4l2_file_operations == 0) {
    ldv_handler_precall();
    res_em28xx_v4l2_open_53 = em28xx_v4l2_open(var_group4);
    ldv_check_return_value(res_em28xx_v4l2_open_53);
    if (res_em28xx_v4l2_open_53 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_radio_fops_v4l2_file_operations = ldv_s_radio_fops_v4l2_file_operations + 1;
  } else {
  }
  goto ldv_35632;
  case 33: ;
  if (ldv_s_radio_fops_v4l2_file_operations == 1) {
    ldv_handler_precall();
    em28xx_v4l2_close(var_group4);
    ldv_s_radio_fops_v4l2_file_operations = 0;
  } else {
  }
  goto ldv_35632;
  case 34:
  ldv_handler_precall();
  vidioc_querycap(var_group4, var_vidioc_querycap_47_p1, var_vidioc_querycap_47_p2);
  goto ldv_35632;
  case 35:
  ldv_handler_precall();
  radio_g_tuner(var_group4, var_radio_g_tuner_51_p1, var_radio_g_tuner_51_p2);
  goto ldv_35632;
  case 36:
  ldv_handler_precall();
  radio_s_tuner(var_group4, var_radio_s_tuner_52_p1, var_radio_s_tuner_52_p2);
  goto ldv_35632;
  case 37:
  ldv_handler_precall();
  vidioc_g_frequency(var_group4, var_vidioc_g_frequency_40_p1, var_vidioc_g_frequency_40_p2);
  goto ldv_35632;
  case 38:
  ldv_handler_precall();
  vidioc_s_frequency(var_group4, var_vidioc_s_frequency_41_p1, var_vidioc_s_frequency_41_p2);
  goto ldv_35632;
  case 39:
  ldv_handler_precall();
  vidioc_g_chip_ident(var_group4, var_vidioc_g_chip_ident_42_p1, var_vidioc_g_chip_ident_42_p2);
  goto ldv_35632;
  case 40:
  ldv_handler_precall();
  vidioc_g_chip_info(var_group4, var_vidioc_g_chip_info_43_p1, var_vidioc_g_chip_info_43_p2);
  goto ldv_35632;
  case 41:
  ldv_handler_precall();
  vidioc_g_register(var_group4, var_vidioc_g_register_45_p1, var_vidioc_g_register_45_p2);
  goto ldv_35632;
  case 42:
  ldv_handler_precall();
  vidioc_s_register(var_group4, var_vidioc_s_register_46_p1, var_vidioc_s_register_46_p2);
  goto ldv_35632;
  default: ;
  goto ldv_35632;
  }
  ldv_35632: ;
  ldv_35678:
  tmp___0 = __VERIFIER_nondet_int();
  if ((tmp___0 != 0 || ldv_s_em28xx_v4l_fops_v4l2_file_operations != 0) || ldv_s_radio_fops_v4l2_file_operations != 0) {
    goto ldv_35677;
  } else {
  }
  ldv_module_exit: ;
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
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
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_8(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_lock_of_em28xx(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
int ldv_mutex_trylock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
extern void msleep(unsigned int ) ;
extern int rt_mutex_trylock(struct rt_mutex * ) ;
extern void rt_mutex_unlock(struct rt_mutex * ) ;
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern int i2c_master_recv(struct i2c_client const * , char * , int ) ;
__inline static void i2c_set_adapdata(struct i2c_adapter *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int i2c_add_adapter(struct i2c_adapter * ) ;
extern void i2c_del_adapter(struct i2c_adapter * ) ;
void em28xx_do_i2c_scan(struct em28xx *dev , unsigned int bus ) ;
int em28xx_i2c_register(struct em28xx *dev , unsigned int bus , enum em28xx_i2c_algo_type algo_type ) ;
int em28xx_i2c_unregister(struct em28xx *dev , unsigned int bus ) ;
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask ) ;
static unsigned int i2c_scan ;
static unsigned int i2c_debug ;
static int em2800_i2c_send_bytes(struct em28xx *dev , u8 addr , u8 *buf , u16 len )
{
  int ret ;
  int write_timeout ;
  u8 b2[6U] ;
  long tmp ;
  long tmp___0 ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 4U) {
    return (-95);
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )len == 0U, 0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned int )len > 4U, 0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/2685/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (122), "i" (12UL));
      ldv_34054: ;
      goto ldv_34054;
    } else {
    }
  }
  b2[5] = (unsigned int )((u8 )len) + 127U;
  b2[4] = addr;
  b2[3] = *buf;
  if ((unsigned int )len > 1U) {
    b2[2] = *(buf + 1UL);
  } else {
  }
  if ((unsigned int )len > 2U) {
    b2[1] = *(buf + 2UL);
  } else {
  }
  if ((unsigned int )len > 3U) {
    b2[0] = *(buf + 3UL);
  } else {
  }
  ret = (*(dev->em28xx_write_regs))(dev, (int )(4U - (unsigned int )len), (char *)(& b2) + (unsigned long )(4 - (int )len),
                                    (int )len + 2);
  if ((int )len + 2 != ret) {
    printk("\f%s: failed to trigger write to i2c address 0x%x (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    return (ret < 0 ? ret : -5);
  } else {
  }
  write_timeout = 20;
  goto ldv_34056;
  ldv_34055:
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if ((int )len + 127 == ret) {
    return ((int )len);
  } else
  if ((int )len + 147 == ret) {
    return (-19);
  } else
  if (ret < 0) {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    return (ret);
  } else {
  }
  msleep(5U);
  write_timeout = write_timeout + -5;
  ldv_34056: ;
  if (write_timeout > 0) {
    goto ldv_34055;
  } else {
  }
  printk("\f%s: write to i2c device at 0x%x timed out\n", (char *)(& dev->name), (int )addr);
  return (-5);
}
}
static int em2800_i2c_recv_bytes(struct em28xx *dev , u8 addr , u8 *buf , u16 len )
{
  u8 buf2[4U] ;
  int ret ;
  int read_timeout ;
  int i ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 4U) {
    return (-95);
  } else {
  }
  buf2[1] = (unsigned int )((u8 )len) + 131U;
  buf2[0] = addr;
  ret = (*(dev->em28xx_write_regs))(dev, 4, (char *)(& buf2), 2);
  if (ret != 2) {
    printk("\f%s: failed to trigger read from i2c address 0x%x (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    return (ret < 0 ? ret : -5);
  } else {
  }
  read_timeout = 20;
  goto ldv_34070;
  ldv_34069:
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if ((int )len + 131 == ret) {
    goto ldv_34068;
  } else
  if ((int )len + 147 == ret) {
    return (-19);
  } else
  if (ret < 0) {
    printk("\f%s: failed to get i2c transfer status from bridge register (error=%i)\n",
           (char *)(& dev->name), ret);
    return (ret);
  } else {
  }
  msleep(5U);
  read_timeout = read_timeout + -5;
  ldv_34070: ;
  if (read_timeout > 0) {
    goto ldv_34069;
  } else {
  }
  ldv_34068: ;
  if ((int )len + 131 != ret) {
    printk("\f%s: read from i2c device at 0x%x timed out\n", (char *)(& dev->name),
           (int )addr);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, (int )(4U - (unsigned int )len),
                                          (char *)(& buf2), (int )len);
  if ((int )len != ret) {
    printk("\f%s: reading from i2c device at 0x%x failed: couldn\'t get the received message from the bridge (error=%i)\n",
           (char *)(& dev->name), (int )addr, ret);
    return (ret < 0 ? ret : -5);
  } else {
  }
  i = 0;
  goto ldv_34072;
  ldv_34071:
  *(buf + (unsigned long )i) = buf2[((int )len + -1) - i];
  i = i + 1;
  ldv_34072: ;
  if ((int )len > i) {
    goto ldv_34071;
  } else {
  }
  return (ret);
}
}
static int em2800_i2c_check_for_device(struct em28xx *dev , u8 addr )
{
  u8 buf ;
  int ret ;
  {
  ret = em2800_i2c_recv_bytes(dev, (int )addr, & buf, 1);
  if (ret == 1) {
    return (0);
  } else {
  }
  return (ret < 0 ? ret : -5);
}
}
static int em28xx_i2c_send_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len ,
                                 int stop )
{
  int write_timeout ;
  int ret ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 64U) {
    return (-95);
  } else {
  }
  ret = (*(dev->em28xx_write_regs_req))(dev, stop != 0 ? 2 : 3, (int )addr, (char *)buf,
                                        (int )len);
  if ((int )len != ret) {
    if (ret < 0) {
      printk("\f%s: writing to i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
             (int )addr, ret);
      return (ret);
    } else {
      printk("\f%s: %i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
             (char *)(& dev->name), (int )len, (int )addr, ret);
      return (-5);
    }
  } else {
  }
  write_timeout = 20;
  goto ldv_34090;
  ldv_34089:
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if (ret == 0) {
    return ((int )len);
  } else
  if (ret == 16) {
    return (-19);
  } else
  if (ret < 0) {
    printk("\f%s: failed to read i2c transfer status from bridge (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  msleep(5U);
  write_timeout = write_timeout + -5;
  ldv_34090: ;
  if (write_timeout > 0) {
    goto ldv_34089;
  } else {
  }
  printk("\f%s: write to i2c device at 0x%x timed out\n", (char *)(& dev->name), (int )addr);
  return (-5);
}
}
static int em28xx_i2c_recv_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 64U) {
    return (-95);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 2, (int )addr, (char *)buf, (int )len);
  if (ret < 0) {
    printk("\f%s: reading from i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    return (ret);
  } else {
  }
  ret = (*(dev->em28xx_read_reg))(dev, 5);
  if (ret < 0) {
    printk("\f%s: failed to read i2c transfer status from bridge (error=%i)\n", (char *)(& dev->name),
           ret);
    return (ret);
  } else {
  }
  if (ret > 0) {
    if (ret == 16) {
      return (-19);
    } else {
      printk("\f%s: unknown i2c error (status=%i)\n", (char *)(& dev->name), ret);
      return (-5);
    }
  } else {
  }
  return ((int )len);
}
}
static int em28xx_i2c_check_for_device(struct em28xx *dev , u16 addr )
{
  int ret ;
  u8 buf ;
  {
  ret = em28xx_i2c_recv_bytes(dev, (int )addr, & buf, 1);
  if (ret == 1) {
    return (0);
  } else {
  }
  return (ret < 0 ? ret : -5);
}
}
static int em25xx_bus_B_send_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 64U) {
    return (-95);
  } else {
  }
  ret = (*(dev->em28xx_write_regs_req))(dev, 6, (int )addr, (char *)buf, (int )len);
  if ((int )len != ret) {
    if (ret < 0) {
      printk("\f%s: writing to i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
             (int )addr, ret);
      return (ret);
    } else {
      printk("\f%s: %i bytes write to i2c device at 0x%x requested, but %i bytes written\n",
             (char *)(& dev->name), (int )len, (int )addr, ret);
      return (-5);
    }
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req))(dev, 8, 0);
  if (ret == 0) {
    return ((int )len);
  } else
  if (ret > 0) {
    return (-19);
  } else {
  }
  return (ret);
}
}
static int em25xx_bus_B_recv_bytes(struct em28xx *dev , u16 addr , u8 *buf , u16 len )
{
  int ret ;
  {
  if ((unsigned int )len == 0U || (unsigned int )len > 64U) {
    return (-95);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 6, (int )addr, (char *)buf, (int )len);
  if (ret < 0) {
    printk("\f%s: reading from i2c device at 0x%x failed (error=%i)\n", (char *)(& dev->name),
           (int )addr, ret);
    return (ret);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req))(dev, 8, 0);
  if (ret == 0) {
    return ((int )len);
  } else
  if (ret > 0) {
    return (-19);
  } else {
  }
  return (ret);
}
}
static int em25xx_bus_B_check_for_device(struct em28xx *dev , u16 addr )
{
  u8 buf ;
  int ret ;
  {
  ret = em25xx_bus_B_recv_bytes(dev, (int )addr, & buf, 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
__inline static int i2c_check_for_device(struct em28xx_i2c_bus *i2c_bus , u16 addr )
{
  struct em28xx *dev ;
  int rc ;
  {
  dev = i2c_bus->dev;
  rc = -95;
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    rc = em28xx_i2c_check_for_device(dev, (int )addr);
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    rc = em2800_i2c_check_for_device(dev, (int )((u8 )addr));
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    rc = em25xx_bus_B_check_for_device(dev, (int )addr);
  } else {
  }
  if (rc == -19) {
    if (i2c_debug != 0U) {
      printk(" no device\n");
    } else {
    }
  } else {
  }
  return (rc);
}
}
__inline static int i2c_recv_bytes(struct em28xx_i2c_bus *i2c_bus , struct i2c_msg msg )
{
  struct em28xx *dev ;
  u16 addr ;
  int byte ;
  int rc ;
  {
  dev = i2c_bus->dev;
  addr = (int )msg.addr << 1U;
  rc = -95;
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    rc = em28xx_i2c_recv_bytes(dev, (int )addr, msg.buf, (int )msg.len);
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    rc = em2800_i2c_recv_bytes(dev, (int )((u8 )addr), msg.buf, (int )msg.len);
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    rc = em25xx_bus_B_recv_bytes(dev, (int )addr, msg.buf, (int )msg.len);
  } else {
  }
  if (i2c_debug != 0U) {
    byte = 0;
    goto ldv_34140;
    ldv_34139:
    printk(" %02x", (int )*(msg.buf + (unsigned long )byte));
    byte = byte + 1;
    ldv_34140: ;
    if ((int )msg.len > byte) {
      goto ldv_34139;
    } else {
    }
  } else {
  }
  return (rc);
}
}
__inline static int i2c_send_bytes(struct em28xx_i2c_bus *i2c_bus , struct i2c_msg msg ,
                                   int stop )
{
  struct em28xx *dev ;
  u16 addr ;
  int byte ;
  int rc ;
  {
  dev = i2c_bus->dev;
  addr = (int )msg.addr << 1U;
  rc = -95;
  if (i2c_debug != 0U) {
    byte = 0;
    goto ldv_34152;
    ldv_34151:
    printk(" %02x", (int )*(msg.buf + (unsigned long )byte));
    byte = byte + 1;
    ldv_34152: ;
    if ((int )msg.len > byte) {
      goto ldv_34151;
    } else {
    }
  } else {
  }
  if ((unsigned int )i2c_bus->algo_type == 0U) {
    rc = em28xx_i2c_send_bytes(dev, (int )addr, msg.buf, (int )msg.len, stop);
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    rc = em2800_i2c_send_bytes(dev, (int )((u8 )addr), msg.buf, (int )msg.len);
  } else
  if ((unsigned int )i2c_bus->algo_type == 2U) {
    rc = em25xx_bus_B_send_bytes(dev, (int )addr, msg.buf, (int )msg.len);
  } else {
  }
  return (rc);
}
}
static int em28xx_i2c_xfer(struct i2c_adapter *i2c_adap , struct i2c_msg *msgs , int num )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  unsigned int bus ;
  int addr ;
  int rc ;
  int i ;
  u8 reg ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)i2c_adap->algo_data;
  dev = i2c_bus->dev;
  bus = i2c_bus->bus;
  rc = rt_mutex_trylock(& dev->i2c_bus_lock);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (dev->cur_i2c_bus != bus && (unsigned int )i2c_bus->algo_type == 0U) {
    if (bus == 1U) {
      reg = 4U;
    } else {
      reg = 0U;
    }
    em28xx_write_reg_bits(dev, 6, (int )reg, 4);
    dev->cur_i2c_bus = bus;
  } else {
  }
  if (num <= 0) {
    rt_mutex_unlock(& dev->i2c_bus_lock);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_34168;
  ldv_34167:
  addr = (int )(msgs + (unsigned long )i)->addr << 1;
  if (i2c_debug != 0U) {
    printk("\017%s at %s: %s %s addr=%02x len=%d:", (char *)(& dev->name), "em28xx_i2c_xfer",
           (int )(msgs + (unsigned long )i)->flags & 1 ? (char *)"read" : (char *)"write",
           num + -1 == i ? (char *)"stop" : (char *)"nonstop", addr, (int )(msgs + (unsigned long )i)->len);
  } else {
  }
  if ((unsigned int )(msgs + (unsigned long )i)->len == 0U) {
    rc = i2c_check_for_device(i2c_bus, (int )((u16 )addr));
    if (rc == -19) {
      rt_mutex_unlock(& dev->i2c_bus_lock);
      return (rc);
    } else {
    }
  } else
  if ((int )(msgs + (unsigned long )i)->flags & 1) {
    rc = i2c_recv_bytes(i2c_bus, *(msgs + (unsigned long )i));
  } else {
    rc = i2c_send_bytes(i2c_bus, *(msgs + (unsigned long )i), num + -1 == i);
  }
  if (rc < 0) {
    if (i2c_debug != 0U) {
      printk(" ERROR: %i\n", rc);
    } else {
    }
    rt_mutex_unlock(& dev->i2c_bus_lock);
    return (rc);
  } else {
  }
  if (i2c_debug != 0U) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_34168: ;
  if (i < num) {
    goto ldv_34167;
  } else {
  }
  rt_mutex_unlock(& dev->i2c_bus_lock);
  return (num);
}
}
__inline static unsigned long em28xx_hash_mem(char *buf , int length , int bits )
{
  unsigned long hash ;
  unsigned long l ;
  int len ;
  unsigned char c ;
  char *tmp ;
  {
  hash = 0UL;
  l = 0UL;
  len = 0;
  ldv_34179: ;
  if (len == length) {
    c = (unsigned char )len;
    len = -1;
  } else {
    tmp = buf;
    buf = buf + 1;
    c = (unsigned char )*tmp;
  }
  l = (l << 8) | (unsigned long )c;
  len = len + 1;
  if ((len & 3) == 0) {
    hash = (hash ^ l) * 2654404609UL;
  } else {
  }
  if (len != 0) {
    goto ldv_34179;
  } else {
  }
  return ((hash >> (32 - bits)) & 4294967295UL);
}
}
static int em28xx_i2c_read_block(struct em28xx *dev , unsigned int bus , u16 addr ,
                                 bool addr_w16 , u16 len , u8 *data )
{
  int remain ;
  int rsize ;
  int rsize_max ;
  int ret ;
  u8 buf[2U] ;
  {
  remain = (int )len;
  if ((int )addr + remain > (int )addr_w16 * 65280 + 256) {
    return (-22);
  } else {
  }
  buf[0] = (u8 )((int )addr >> 8);
  buf[1] = (u8 )addr;
  ret = i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char const *)(& buf) + (unsigned long )(! addr_w16), (int )addr_w16 + 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    rsize_max = 4;
  } else {
    rsize_max = 64;
  }
  goto ldv_34195;
  ldv_34194: ;
  if (remain > rsize_max) {
    rsize = rsize_max;
  } else {
    rsize = remain;
  }
  ret = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char *)data, rsize);
  if (ret < 0) {
    return (ret);
  } else {
  }
  remain = remain - rsize;
  data = data + (unsigned long )rsize;
  ldv_34195: ;
  if (remain > 0) {
    goto ldv_34194;
  } else {
  }
  return ((int )len);
}
}
static int em28xx_i2c_eeprom(struct em28xx *dev , unsigned int bus , u8 **eedata ,
                             u16 *eedata_len )
{
  u16 len ;
  int i ;
  int err ;
  struct em28xx_eeprom *dev_config ;
  u8 buf ;
  u8 *data ;
  void *tmp ;
  u16 mc_start ;
  u16 hwconf_offset ;
  {
  len = 256U;
  *eedata = 0;
  *eedata_len = 0U;
  dev->i2c_client[bus].addr = 80U;
  err = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                        (char *)(& buf), 0);
  if (err < 0) {
    printk("\016%s: board has no eeprom\n", (char *)(& dev->name));
    return (-19);
  } else {
  }
  tmp = kzalloc((size_t )len, 208U);
  data = (u8 *)tmp;
  if ((unsigned long )data == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  err = em28xx_i2c_read_block(dev, bus, 0, (unsigned int )*((unsigned char *)dev + 6808UL) != 0U,
                              (int )len, data);
  if ((int )len != err) {
    printk("\v%s: failed to read eeprom (err=%d)\n", (char *)(& dev->name), err);
    goto error;
  } else {
  }
  i = 0;
  goto ldv_34211;
  ldv_34210: ;
  if (((unsigned int )i & 15U) == 0U) {
    if ((unsigned int )*((unsigned char *)dev + 6808UL) != 0U) {
      printk("\016%s: i2c eeprom %04x:", (char *)(& dev->name), i);
    } else {
      printk("\016%s: i2c eeprom %02x:", (char *)(& dev->name), i);
    }
  } else {
  }
  printk(" %02x", (int )*(data + (unsigned long )i));
  if (i % 16 == 15) {
    printk("\n");
  } else {
  }
  i = i + 1;
  ldv_34211: ;
  if ((int )len > i) {
    goto ldv_34210;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 6808UL) != 0U) {
    printk("\016%s: i2c eeprom %04x: ... (skipped)\n", (char *)(& dev->name), i);
  } else {
  }
  if (((unsigned int )*((unsigned char *)dev + 6808UL) != 0U && (unsigned int )*data == 38U) && (unsigned int )*(data + 3UL) == 0U) {
    dev->hash = em28xx_hash_mem((char *)data, (int )len, 32);
    mc_start = (unsigned int )((int )((u16 )*(data + 1UL)) << 8U) + 4U;
    printk("\016%s: EEPROM ID = %02x %02x %02x %02x, EEPROM hash = 0x%08lx\n", (char *)(& dev->name),
           (int )*data, (int )*(data + 1UL), (int )*(data + 2UL), (int )*(data + 3UL),
           dev->hash);
    printk("\016%s: EEPROM info:\n", (char *)(& dev->name));
    printk("\016%s: \tmicrocode start address = 0x%04x, boot configuration = 0x%02x\n",
           (char *)(& dev->name), (int )mc_start, (int )*(data + 2UL));
    err = em28xx_i2c_read_block(dev, bus, (int )((unsigned int )mc_start + 46U), 1,
                                2, data);
    if (err != 2) {
      printk("\v%s: failed to read hardware configuration data from eeprom (err=%d)\n",
             (char *)(& dev->name), err);
      goto error;
    } else {
    }
    hwconf_offset = ((int )((u16 )*data) + (int )mc_start) + ((int )((u16 )*(data + 1UL)) << 8U);
    err = em28xx_i2c_read_block(dev, bus, (int )hwconf_offset, 1, (int )len, data);
    if ((int )len != err) {
      printk("\v%s: failed to read hardware configuration data from eeprom (err=%d)\n",
             (char *)(& dev->name), err);
      goto error;
    } else {
    }
    if ((((unsigned int )*data != 26U || (unsigned int )*(data + 1UL) != 235U) || (unsigned int )*(data + 2UL) != 103U) || (unsigned int )*(data + 3UL) != 149U) {
      printk("\016%s: \tno hardware configuration dataset found in eeprom\n", (char *)(& dev->name));
      kfree((void const *)data);
      return (0);
    } else {
    }
  } else
  if (((((unsigned int )*((unsigned char *)dev + 6808UL) == 0U && (unsigned int )*data == 26U) && (unsigned int )*(data + 1UL) == 235U) && (unsigned int )*(data + 2UL) == 103U) && (unsigned int )*(data + 3UL) == 149U) {
    dev->hash = em28xx_hash_mem((char *)data, (int )len, 32);
    printk("\016%s: EEPROM ID = %02x %02x %02x %02x, EEPROM hash = 0x%08lx\n", (char *)(& dev->name),
           (int )*data, (int )*(data + 1UL), (int )*(data + 2UL), (int )*(data + 3UL),
           dev->hash);
    printk("\016%s: EEPROM info:\n", (char *)(& dev->name));
  } else {
    printk("\016%s: unknown eeprom format or eeprom corrupted !\n", (char *)(& dev->name));
    err = -19;
    goto error;
  }
  *eedata = data;
  *eedata_len = len;
  dev_config = (struct em28xx_eeprom *)eedata;
  switch (((int )dev_config->chip_conf >> 4) & 3) {
  case 0:
  printk("\016%s: \tNo audio on board.\n", (char *)(& dev->name));
  goto ldv_34216;
  case 1:
  printk("\016%s: \tAC97 audio (5 sample rates)\n", (char *)(& dev->name));
  goto ldv_34216;
  case 2:
  printk("\016%s: \tI2S audio, sample rate=32k\n", (char *)(& dev->name));
  goto ldv_34216;
  case 3:
  printk("\016%s: \tI2S audio, 3 sample rates\n", (char *)(& dev->name));
  goto ldv_34216;
  }
  ldv_34216: ;
  if (((int )dev_config->chip_conf & 8) != 0) {
    printk("\016%s: \tUSB Remote wakeup capable\n", (char *)(& dev->name));
  } else {
  }
  if (((int )dev_config->chip_conf & 4) != 0) {
    printk("\016%s: \tUSB Self power capable\n", (char *)(& dev->name));
  } else {
  }
  switch ((int )dev_config->chip_conf & 3) {
  case 0:
  printk("\016%s: \t500mA max power\n", (char *)(& dev->name));
  goto ldv_34221;
  case 1:
  printk("\016%s: \t400mA max power\n", (char *)(& dev->name));
  goto ldv_34221;
  case 2:
  printk("\016%s: \t300mA max power\n", (char *)(& dev->name));
  goto ldv_34221;
  case 3:
  printk("\016%s: \t200mA max power\n", (char *)(& dev->name));
  goto ldv_34221;
  }
  ldv_34221:
  printk("\016%s: \tTable at offset 0x%02x, strings=0x%04x, 0x%04x, 0x%04x\n", (char *)(& dev->name),
         (int )dev_config->string_idx_table, (int )dev_config->string1, (int )dev_config->string2,
         (int )dev_config->string3);
  return (0);
  error:
  kfree((void const *)data);
  return (err);
}
}
static u32 functionality(struct i2c_adapter *i2c_adap )
{
  struct em28xx_i2c_bus *i2c_bus ;
  int __ret_warn_on ;
  long tmp ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)i2c_adap->algo_data;
  if ((unsigned int )i2c_bus->algo_type == 0U || (unsigned int )i2c_bus->algo_type == 2U) {
    return (251592713U);
  } else
  if ((unsigned int )i2c_bus->algo_type == 1U) {
    return (218038281U);
  } else {
  }
  __ret_warn_on = 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_fmt("/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/2685/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared",
                      860, "Unknown i2c bus algorithm.\n");
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  return (0U);
}
}
static struct i2c_algorithm em28xx_algo = {& em28xx_i2c_xfer, 0, & functionality};
static struct i2c_adapter em28xx_adap_template =
     {& __this_module, 0U, (struct i2c_algorithm const *)(& em28xx_algo), 0, {{{{0U}},
                                                                               0U,
                                                                               0U,
                                                                               0,
                                                                               {0,
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0UL}},
                                                                              {{0,
                                                                                0}},
                                                                              0, 0,
                                                                              0, 0,
                                                                              0, 0},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0, 0, {{0},
                                                                                {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
           0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                     (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                     {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                   {0, 0}}}, 0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                     0, 0, 0UL, 0,
                                                                     0, 0, {(char)0,
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
                                                                            (char)0},
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, 0UL,
                     {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}, {0}, {0},
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0, 0,
                     0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                 0},
           0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0},
           {0, {0, 0}, {{0}}}, 0, 0, 0, 0}, 0, {'e', 'm', '2', '8', 'x', 'x', '\000'},
    {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}}, {{0}, {{{{{0U}},
                                                                              0U,
                                                                              0U,
                                                                              0, {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                      {0, 0}, 0, 0,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}},
    {0, 0}, 0};
static struct i2c_client em28xx_client_template =
     {(unsigned short)0, (unsigned short)0, {'e', 'm', '2', '8', 'x', 'x', ' ', 'i',
                                           'n', 't', 'e', 'r', 'n', 'a', 'l', '\000'},
    0, 0, {0, 0, {0, {0, 0}, 0, 0, 0, 0, {{0}}, (unsigned char)0, (unsigned char)0,
                  (unsigned char)0, (unsigned char)0, (unsigned char)0}, 0, 0, {{0},
                                                                                {{{{{0U}},
                                                                                   0U,
                                                                                   0U,
                                                                                   0,
                                                                                   {0,
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    0,
                                                                                    0UL}}}},
                                                                                {0,
                                                                                 0},
                                                                                0,
                                                                                0,
                                                                                0,
                                                                                {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}},
           0, 0, 0, {{0}, (unsigned char)0, (unsigned char)0, (_Bool)0, (_Bool)0,
                     (_Bool)0, (_Bool)0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                     {0, 0}, {0U, {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}},
                                   {0, 0}}}, 0, (_Bool)0, (_Bool)0, {{0, 0}, 0UL,
                                                                     0, 0, 0UL, 0,
                                                                     0, 0, {(char)0,
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
                                                                            (char)0},
                                                                     {0, {0, 0}, 0,
                                                                      0, 0UL}}, 0UL,
                     {{0L}, {0, 0}, 0, {0, {0, 0}, 0, 0, 0UL}}, {{{{{{0U}}, 0U, 0U,
                                                                    0, {0, {0, 0},
                                                                        0, 0, 0UL}}}},
                                                                 {0, 0}}, {0}, {0},
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                     (unsigned char)0, (unsigned char)0, (unsigned char)0, 0, 0, 0,
                     0, 0UL, 0UL, 0UL, 0UL, 0, 0}, 0, 0, 0, 0ULL, 0, {0, 0}, 0, {0,
                                                                                 0},
           0, {0}, 0U, 0U, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0},
           {0, {0, 0}, {{0}}}, 0, 0, 0, 0}, 0, {0, 0}};
static char *i2c_devs[128U] =
  { 0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, (char *)"remote IR sensor",
        0, 0, 0, 0,
        0, (char *)"saa7113h", 0, 0,
        0, (char *)"drxk", 0, 0,
        0, 0, 0, 0,
        (char *)"remote IR sensor", 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"msp34xx", 0, 0, (char *)"tda9887",
        (char *)"msp34xx", 0, 0, (char *)"remote IR sensor",
        0, 0, 0, 0,
        0, 0, 0, 0,
        (char *)"eeprom", 0, 0, 0,
        0, 0, 0, 0,
        (char *)"tda9874", 0, 0, 0,
        (char *)"tvp5150a", (char *)"webcam sensor or tvp5150a", 0, 0,
        (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)", (char *)"tuner (analog)"};
void em28xx_do_i2c_scan(struct em28xx *dev , unsigned int bus )
{
  u8 i2c_devicelist[128U] ;
  unsigned char buf ;
  int i ;
  int rc ;
  {
  memset((void *)(& i2c_devicelist), 0, 128UL);
  i = 0;
  goto ldv_34249;
  ldv_34248:
  dev->i2c_client[bus].addr = (unsigned short )i;
  rc = i2c_master_recv((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )bus,
                       (char *)(& buf), 0);
  if (rc < 0) {
    goto ldv_34247;
  } else {
  }
  i2c_devicelist[i] = (u8 )i;
  printk("\016%s: found i2c device @ 0x%x on bus %d [%s]\n", (char *)(& dev->name),
         i << 1, bus, (unsigned long )i2c_devs[i] != (unsigned long )((char *)0) ? i2c_devs[i] : (char *)"???");
  ldv_34247:
  i = i + 1;
  ldv_34249: ;
  if ((unsigned int )i <= 127U) {
    goto ldv_34248;
  } else {
  }
  if (dev->def_i2c_bus == bus) {
    dev->i2c_hash = em28xx_hash_mem((char *)(& i2c_devicelist), 128, 32);
  } else {
  }
  return;
}
}
int em28xx_i2c_register(struct em28xx *dev , unsigned int bus , enum em28xx_i2c_algo_type algo_type )
{
  int retval ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs == (unsigned long )((int (*)(struct em28xx * ,
                                                                                             u16 ,
                                                                                             char * ,
                                                                                             int ))0),
                         0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                 u16 ))0),
                               0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/2685/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (940), "i" (12UL));
      ldv_34259: ;
      goto ldv_34259;
    } else {
    }
  }
  tmp___1 = ldv__builtin_expect((unsigned long )dev->em28xx_write_regs_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ,
                                                                                                     char * ,
                                                                                                     int ))0),
                             0L);
  if (tmp___1 != 0L) {
    goto _L___0;
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )dev->em28xx_read_reg_req == (unsigned long )((int (*)(struct em28xx * ,
                                                                                                     u8 ,
                                                                                                     u16 ))0),
                               0L);
    if (tmp___2 != 0L) {
      _L___0:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/work/current--X--drivers--X--defaultlinux-3.10-rc1.tar--X--32_7a--X--cpachecker/linux-3.10-rc1.tar/csd_deg_dscv/2685/dscv_tempdir/dscv/ri/32_7a/drivers/media/usb/em28xx/em28xx-i2c.c.prepared"),
                           "i" (941), "i" (12UL));
      ldv_34260: ;
      goto ldv_34260;
    } else {
    }
  }
  if (bus > 1U) {
    return (-19);
  } else {
  }
  dev->i2c_adap[bus] = em28xx_adap_template;
  dev->i2c_adap[bus].dev.parent = & (dev->udev)->dev;
  strcpy((char *)(& dev->i2c_adap[bus].name), (char const *)(& dev->name));
  dev->i2c_bus[bus].bus = bus;
  dev->i2c_bus[bus].algo_type = algo_type;
  dev->i2c_bus[bus].dev = dev;
  dev->i2c_adap[bus].algo_data = (void *)(& dev->i2c_bus) + (unsigned long )bus;
  i2c_set_adapdata((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus,
                   (void *)(& dev->v4l2_dev));
  retval = i2c_add_adapter((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus);
  if (retval < 0) {
    printk("\v%s: %s: i2c_add_adapter failed! retval [%d]\n", (char *)(& dev->name),
           "em28xx_i2c_register", retval);
    return (retval);
  } else {
  }
  dev->i2c_client[bus] = em28xx_client_template;
  dev->i2c_client[bus].adapter = (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus;
  if (bus == 0U) {
    retval = em28xx_i2c_eeprom(dev, bus, & dev->eedata, & dev->eedata_len);
    if (retval < 0 && retval != -19) {
      printk("\v%s: %s: em28xx_i2_eeprom failed! retval [%d]\n", (char *)(& dev->name),
             "em28xx_i2c_register", retval);
      return (retval);
    } else {
    }
  } else {
  }
  if (i2c_scan != 0U) {
    em28xx_do_i2c_scan(dev, bus);
  } else {
  }
  return (0);
}
}
int em28xx_i2c_unregister(struct em28xx *dev , unsigned int bus )
{
  {
  if (bus > 1U) {
    return (-19);
  } else {
  }
  i2c_del_adapter((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )bus);
  return (0);
}
}
void ldv_main1_sequence_infinite_withcheck_stateful(void)
{
  struct i2c_adapter *var_group1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_34287;
  ldv_34286:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  functionality(var_group1);
  goto ldv_34284;
  default: ;
  goto ldv_34284;
  }
  ldv_34284: ;
  ldv_34287:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_34286;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_30(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
extern unsigned long find_first_zero_bit(unsigned long const * , unsigned long ) ;
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
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool flush_work(struct work_struct * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(4096, wq, work);
  return (tmp);
}
}
__inline static bool schedule_work(struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work(system_wq, work);
  return (tmp);
}
}
extern int __request_module(bool , char const * , ...) ;
extern void __const_udelay(unsigned long ) ;
extern void __rt_mutex_init(struct rt_mutex * , char const * ) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff78UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern void tveeprom_hauppauge_analog(struct i2c_client * , struct tveeprom * , unsigned char * ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device * , struct i2c_adapter * ,
                                               char const * , u8 , unsigned short const * ) ;
extern unsigned short v4l2_i2c_subdev_addr(struct v4l2_subdev * ) ;
extern unsigned short const *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern void v4l2_device_disconnect(struct v4l2_device * ) ;
extern void v4l2_device_unregister(struct v4l2_device * ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern void v4l2_ctrl_notify(struct v4l2_ctrl * , void (*)(struct v4l2_ctrl * , void * ) ,
                             void * ) ;
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg ) ;
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len ) ;
int em28xx_audio_setup(struct em28xx *dev ) ;
int em28xx_alloc_urbs(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                      int num_bufs , int max_pkt_size , int packet_multiplier ) ;
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio ) ;
void em28xx_init_extension(struct em28xx *dev ) ;
void em28xx_close_extension(struct em28xx *dev ) ;
struct usb_device_id em28xx_id_table[79U] ;
int em28xx_tuner_callback(void *ptr , int component , int command , int arg ) ;
int em28xx_detect_sensor(struct em28xx *dev ) ;
int em28xx_init_camera(struct em28xx *dev ) ;
static int tuner = -1;
static unsigned int disable_ir ;
static unsigned int disable_usb_speed_check ;
static unsigned int card[4U] = { 4294967295U, 4294967295U, 4294967295U, 4294967295U};
static int usb_xfer_mode = -1;
static unsigned long em28xx_devused ;
static void em28xx_pre_card_setup(struct em28xx *dev ) ;
static struct em28xx_reg_seq default_analog[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_digital[2U] = { {8, 110U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_analog[3U] = { {8, 45U, 239U, 10},
        {5, 255U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900_digital[4U] = { {8, 46U, 239U, 10},
        {4, 4U, 15U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq hauppauge_wintv_hvr_900R2_digital[3U] = { {8, 46U, 239U, 10},
        {4, 12U, 15U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2880_msi_digivox_ad_analog[2U] = { {8, 105U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_digital[6U] = { {8, 255U, 255U, 10},
        {8, 254U, 255U, 10},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 10},
        {8, 126U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq em2882_kworld_315u_tuner_gpio[5U] = { {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {4, 8U, 255U, 10},
        {4, 12U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_330u_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_analog[2U] = { {8, 121U, 255U, 60},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq evga_indtube_digital[4U] = { {8, 122U, 255U, 1},
        {4, 4U, 255U, 10},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq kworld_a340_digital[2U] = { {8, 109U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_analog[2U] = { {8, 253U, 239U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pinnacle_hybrid_pro_digital[4U] = { {8, 110U, 239U, 10},
        {4, 4U, 255U, 100},
        {4, 12U, 255U, 1},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_analog[3U] = { {8, 109U, 239U, 10},
        {4, 0U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_cinergy_USB_XS_FR_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq reddo_dvb_c_usb_box[8U] =
  { {8, 254U, 255U, 10},
        {8, 222U, 255U, 10},
        {8, 254U, 255U, 10},
        {8, 255U, 255U, 10},
        {8, 127U, 255U, 10},
        {8, 111U, 255U, 10},
        {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq default_tuner_gpio[4U] = { {8, 16U, 16U, 10},
        {8, 0U, 16U, 10},
        {8, 16U, 16U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_tv_gpio[2U] = { {8, 5U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_unmute_svid_gpio[2U] = { {8, 4U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq compro_mute_gpio[2U] = { {8, 6U, 7U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_mute_gpio[2U] = { {8, 255U, 127U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq terratec_av350_unmute_gpio[2U] = { {8, 255U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq silvercrest_reg_seq[3U] = { {8, 255U, 255U, 10},
        {8, 1U, 247U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq vc211a_enable[4U] = { {8, 255U, 7U, 10},
        {8, 255U, 15U, 10},
        {8, 255U, 11U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq dikom_dk300_digital[3U] = { {8, 110U, 239U, 10},
        {4, 8U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_digital[2U] = { {128, 112U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq leadership_reset[4U] = { {128, 240U, 255U, 10},
        {128, 176U, 255U, 10},
        {128, 240U, 255U, 10},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_290e[4U] = { {128, 0U, 255U, 80},
        {128, 64U, 255U, 80},
        {128, 192U, 255U, 80},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_460e[6U] = { {128, 1U, 255U, 50},
        {13, 255U, 255U, 50},
        {128, 65U, 255U, 50},
        {13, 66U, 255U, 50},
        {128, 97U, 255U, 50},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq c3tech_digital_duo_digital[9U] =
  { {128, 255U, 255U, 10},
        {128, 253U, 255U, 10},
        {128, 249U, 255U, 35},
        {128, 253U, 255U, 10},
        {128, 255U, 255U, 10},
        {128, 254U, 255U, 10},
        {128, 190U, 255U, 10},
        {128, 254U, 255U, 20},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq maxmedia_ub425_tc[4U] = { {128, 131U, 255U, 100},
        {128, 195U, 255U, 100},
        {128, 67U, 255U, 0},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_510e[4U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {-1, 255U, 255U, -1}};
static struct em28xx_reg_seq pctv_520e[5U] = { {128, 16U, 255U, 100},
        {128, 20U, 255U, 100},
        {128, 84U, 255U, 40},
        {128, 212U, 255U, 0},
        {-1, 255U, 255U, -1}};
struct em28xx_board em28xx_boards[89U] =
  { {(char *)"Unknown EM2800 video grabber", 0, 4, 0, 0U, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0},
        {(char *)"Unknown EM2750/28xx video grabber", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy 250 USB", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV USB 2", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV USB 2", 0, 43, 0, 0U, 97U, 0, 0, 0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {5, 2U, 2236960,
                                                                     0, 0}}, {0, 0U,
                                                                              0, 0,
                                                                              0},
      0},
        {(char *)"MSI VOX USB 2.0", 0, 37, 0, 0U, 97U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 4U, 0, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy 200 USB", 0, 66, 0, 0U, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Leadtek Winfast USB II", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Kworld USB2800", 0, 42, 0, 0U, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Pinnacle Dazzle DVC 90/100/101/107 / Kaiser Baas Video to DVD maker / Kworld DVD Maker 2 / Plextor ConvertX PX-AV100U",
      0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV HVR 900", 0, 71, 0, 0U, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Terratec Hybrid XS", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs"},
        {(char *)"Kworld PVR TV 2800 RF", 0, 0, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Prodigy XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"SIIG AVTuner-PVR / Pixelview Prolink PlayTV USB 2.0", 0, 59, 0, 0U,
      1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0, 2,
      0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0, 0},
      0},
        {(char *)"V-Gear PocketTV", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Hauppauge WinTV HVR 950", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Pinnacle PCTV HD Pro Stick", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Hauppauge WinTV HVR 900 (R2)", 0, 71, 0, 0U, 1U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"EM2860/SAA711X Reference Design", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{5, 9U, 0, 0, 0}, {1, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"AMD ATI TV Wonder HD 600", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-ati-tv-wonder-hd-600"},
        {(char *)"eMPIA Technology, Inc. GrabBeeX+ Video Encoder", 0, 4, 0, 0U, 0U, 0,
      0, 0, 0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"EM2710/EM2750/EM2751 webcam grabber", 0, 4, 0, 0U, 0U, 0, 0, 0, 0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, 8U, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Huaqi DLCW-130", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      1U, (unsigned char)0, 10U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{1, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"D-Link DUB-T210 TV Tuner", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV310", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 1U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Hercules Smart TV USB 2.0", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV USB 2 (Philips FM1216ME)", 0, 38, 0, 0U, 1U, 0, 0, 0,
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 0,
                                                                     0}, {1, 0U, 1,
                                                                          0, 0}, {5,
                                                                                  9U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Leadtek Winfast USB II Deluxe", 0, 38, 0, 0U, 73U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      88U, 2, 1, {{6, 4U, 6, 0, 0}, {1, 5U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {10, 0U,
                                                                          6, 0, 0},
      0},
        {(char *)"EM2860/TVP5150 Reference Design", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{1, 1U, 1, 0, 0}, {5, 2U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Videology 20K14XUSB USB2.0", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{1, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"Usbgear VD204v9", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0},
        {(char *)"Supercomp USB 2.0 TV", 0, 43, 0, 0U, 97U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 0, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Elgato Video Capture", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Cinergy A Hybrid XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Typhoon DVD Maker", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"NetGMBH Cam", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{1, 0U, 0, 0, 0}}, {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV330", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Yakumo MovieMixer", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0,
                                                                     0}, {5, 2U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld PVRTV 300U", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Plextor ConvertX PX-TV100U", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 71U, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                                  {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                                  {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Kworld 350 U DVB-T", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Kworld 355 U DVB-T", 0, 4, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Cinergy T XS", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Cinergy T XS (MT2060)", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle PCTV DVB-T", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, 34U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Compro, VideoMate U3", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld DVB-T 305U", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld DVB-T 310U", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"MSI DigiVox A/D", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"MSI DigiVox A/D II", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& em2880_msi_digivox_ad_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Terratec Hybrid XS Secam", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& terratec_cinergy_USB_XS_FR_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"DNT DA2 Hybrid", 0, 71, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)},
                                                                    {1, 1U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)},
                                                                    {5, 2U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& default_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Pinnacle Hybrid Pro", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)},
                                {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& pinnacle_hybrid_pro_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Kworld VS-DVB-T 323UR", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, 0}, {1, 1U, 1, 0, 0}, {5, 2U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                     0}, (char *)"rc-kworld-315u"},
        {(char *)"Terratec Cinnergy Hybrid T USB XS (em2882)",
      0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-terratec-cinergy-xs"},
        {(char *)"Pinnacle Hybrid Pro (330e)", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900R2_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Kworld PlusTV HD Hybrid 330", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_330u_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, 76U, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U,
                                                                              0, 1408,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                             {1, 1U,
                                                                              1, 1408,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)},
                                                                             {5, 2U,
                                                                              1, 0,
                                                                              (struct em28xx_reg_seq *)(& kworld_330u_analog)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Compro VideoMate ForYou/Stereo", 0, 37, 0, 0U, 1U, 0, 0, 0, (struct em28xx_reg_seq *)(& compro_mute_gpio),
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 176U, 1, 1, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& compro_unmute_tv_gpio)},
                                                       {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& compro_unmute_svid_gpio)}},
      {0, 0U, 0, 0, 0}, 0},
        {0, 0, 0, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Hauppauge WinTV HVR 850", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {1, 1U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& hauppauge_wintv_hvr_900_analog)}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Pixelview PlayTV Box 4 USB 2.0", 0, 59, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{6, 2U, 0, 5, 0}, {1, 0U, 1, 0,
                                                                     0}, {5, 9U, 1,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei TVR200", 0, 37, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 1, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Kaiomy TVnPC U2", 3, 71, 97, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 1,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  1,
                                                                                  0,
                                                                                  0}},
      {10, 0U, 1, 0, 0}, (char *)"rc-kaiomy"},
        {(char *)"Easy Cap Capture DC-60", 2, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"IO-DATA GV-MVP/SZ", 0, 43, 0, 0U, 1U, 0, 0, (struct em28xx_reg_seq *)(& default_tuner_gpio),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{6, 0U, 0, 0,
                                                                     0}, {1, 1U, 0,
                                                                          0, 0}, {5,
                                                                                  2U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Empire dual TV", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& default_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}, {1, 1U, 1,
                                                                          0, (struct em28xx_reg_seq *)(& default_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Terratec Grabby", 2, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0, 0}}, {0, 0U, 0, 0,
                                                                      0}, 0},
        {(char *)"Terratec AV350", 2, 4, 0, 0U, 0U, 0, 0, 0, (struct em28xx_reg_seq *)(& terratec_av350_mute_gpio),
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 7U,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 1, 0, {{1, 1U, 128, 0,
                                                                     (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)},
                                                                    {5, 2U, 128, 0,
                                                                     (struct em28xx_reg_seq *)(& terratec_av350_unmute_gpio)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"KWorld ATSC 315U HDTV TV Box", 0, 60, 0, 0U, 1U, (struct em28xx_reg_seq *)(& em2882_kworld_315u_digital),
      0, (struct em28xx_reg_seq *)(& em2882_kworld_315u_tuner_gpio), 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, 1U, (unsigned char)0, 7U, 64U, (unsigned char)0, (unsigned short)0,
      2, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-kworld-315u"},
        {(char *)"Evga inDtube", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& evga_indtube_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& evga_indtube_analog)}, {1,
                                                                               1U,
                                                                               1,
                                                                               0,
                                                                               (struct em28xx_reg_seq *)(& evga_indtube_analog)},
             {5, 2U, 1, 0, (struct em28xx_reg_seq *)(& evga_indtube_analog)}}, {0,
                                                                                0U,
                                                                                0,
                                                                                0,
                                                                                0},
      (char *)"rc-evga-indtube"},
        {(char *)"Silvercrest Webcam 1.3mpix", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 0, 0, {{1, 0U, 0, 0, (struct em28xx_reg_seq *)(& silvercrest_reg_seq)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Gadmei UTV330+", 0, 69, 0, 0U, 1U, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 7U, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 2, 0, {{6, 2U, 0, 0, 0}, {1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-gadmei-rm008z"},
        {(char *)"Reddo DVB-C USB TV Box", 0, 4, 0, 0U, 0U, 0, 0, (struct em28xx_reg_seq *)(& reddo_dvb_c_usb_box),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                    {0, 0U, 0, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"Actionmaster/LinXcel/Digitus VC211A", 0, 4, 0, 0U, 0U, 0, 0, 0, 0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& vc211a_enable)},
                                                                    {5, 9U, 1, 0,
                                                                     (struct em28xx_reg_seq *)(& vc211a_enable)}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"Dikom DK300", 0, 71, 0, 0U, 0U, (struct em28xx_reg_seq *)(& dikom_dk300_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned short)0,
      1, 0, {{6, 0U, 0, 0, (struct em28xx_reg_seq *)(& default_analog)}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"KWorld PlusTV 340U or UB435-Q (ATSC)", 0, 4, 0, 0U, 0U, (struct em28xx_reg_seq *)(& kworld_a340_digital),
      0, (struct em28xx_reg_seq *)(& default_tuner_gpio), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"EM2874 Leadership ISDBT", 0, 4, 0, 1U, 0U, (struct em28xx_reg_seq *)(& leadership_digital),
      0, (struct em28xx_reg_seq *)(& leadership_reset), 0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, 2U, 64U, (unsigned char)0, (unsigned short)0,
      0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}, {0, 0U, 0, 0, 0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"PCTV nanoStick T2 290e", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_290e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      64U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Terratec Cinergy H5", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 65U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, 0},
        {(char *)"PCTV DVB-S2 Stick (460e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_460e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Hauppauge WinTV HVR 930C", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 65U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-hauppauge"},
        {(char *)"Terratec Cinergy HTC Stick", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 65U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs"},
        {(char *)"Honestech Vidbox NW03", 0, 4, 0, 0U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned short)0, 2, 0, {{1, 0U, 1, 0, 0}, {5, 9U, 1, 0,
                                                                     0}}, {0, 0U,
                                                                           0, 0, 0},
      0},
        {(char *)"MaxMedia UB425-TC", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& maxmedia_ub425_tc),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-reddo"},
        {(char *)"PCTV QuatroStick (510e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_510e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"PCTV QuatroStick nano (520e)", 0, 4, 0, 1U, 0U, 0, 0, (struct em28xx_reg_seq *)(& pctv_520e),
      0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                       {0, 0U, 0, 0, 0}}, {0, 0U,
                                                                           0, 0, 0},
      (char *)"rc-pinnacle-pctv-hd"},
        {(char *)"Terratec Cinergy HTC USB XS", 0, 4, 0, 1U, 0U, 0, 0, 0, 0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, 65U,
      (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0, 0, 0}, {0, 0U, 0, 0,
                                                                     0}, {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-nec-terratec-cinergy-xs"},
        {(char *)"C3 Tech Digital Duo HDTV/SDTV USB", 0, 4, 0, 1U, 0U, (struct em28xx_reg_seq *)(& c3tech_digital_duo_digital),
      0, 0, 0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 64U, (unsigned char)0, (unsigned short)0, 0, 0, {{0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0},
                                                                         {0, 0U, 0,
                                                                          0, 0}, {0,
                                                                                  0U,
                                                                                  0,
                                                                                  0,
                                                                                  0}},
      {0, 0U, 0, 0, 0}, (char *)"rc-empty"}};
unsigned int const em28xx_bcount = 89U;
struct usb_device_id em28xx_id_table[79U] =
  { {3U, 60186U, 10064U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10065U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 22UL},
        {3U, 60186U, 10240U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 0UL},
        {3U, 60186U, 10000U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10272U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10273U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10336U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10337U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10338U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10339U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10369U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10371U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10344U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 10357U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 1UL},
        {3U, 60186U, 58112U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 39UL},
        {3U, 60186U, 58115U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 63UL},
        {3U, 60186U, 58117U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 47UL},
        {3U, 60186U, 58128U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 49UL},
        {3U, 60186U, 41747U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 69UL},
        {3U, 60186U, 41750U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 57UL},
        {3U, 60186U, 58144U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 50UL},
        {3U, 60186U, 58147U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 54UL},
        {3U, 60186U, 58192U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 41UL},
        {3U, 60186U, 58197U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 10241U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 21UL},
        {3U, 60186U, 58199U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 60186U, 58201U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 42UL},
        {3U, 7040U, 58114U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 7040U, 58116U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 3277U, 54U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 3277U, 76U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      51UL},
        {3U, 3277U, 79U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      34UL},
        {3U, 3277U, 94U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 66U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      55UL},
        {3U, 3277U, 67U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      43UL},
        {3U, 3277U, 142U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 172U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      87UL},
        {3U, 3277U, 4258U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 4269U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 4278U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      79UL},
        {3U, 3277U, 132U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      68UL},
        {3U, 3277U, 150U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 4271U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      67UL},
        {3U, 3277U, 178U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      82UL},
        {3U, 4057U, 51U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      33UL},
        {3U, 6235U, 10352U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      46UL},
        {3U, 6235U, 8257U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      58UL},
        {3U, 8256U, 16896U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 16897U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 8256U, 25856U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      10UL},
        {3U, 8256U, 25858U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      18UL},
        {3U, 8256U, 25875U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25879U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25883U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      16UL},
        {3U, 8256U, 25887U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      60UL},
        {3U, 1080U, 45058U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      20UL},
        {3U, 8193U, 61714U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      24UL},
        {3U, 8964U, 519U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 520U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 8964U, 538U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 8964U, 550U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      56UL},
        {3U, 8964U, 551U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      17UL},
        {3U, 1043U, 24611U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 2363U, 40963U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      9UL},
        {3U, 2363U, 40965U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      40UL},
        {3U, 1211U, 1301U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      65UL},
        {3U, 60186U, 20646U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 37UL},
        {3U, 7040U, 41792U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      76UL},
        {3U, 8211U, 591U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      78UL},
        {3U, 8211U, 588U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      80UL},
        {3U, 8256U, 5637U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      81UL},
        {3U, 7040U, 59221U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      88UL},
        {3U, 60186U, 20486U, (unsigned short)0, (unsigned short)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, 83UL},
        {3U, 7040U, 58121U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      64UL},
        {3U, 7040U, 58405U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      84UL},
        {3U, 8964U, 578U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      85UL},
        {3U, 8211U, 593U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      86UL}};
struct usb_device_id const __mod_usb_device_table ;
static struct em28xx_hash_table em28xx_eeprom_hash[8U] =
  { {1826642575UL, 14U, 59U},
        {1925995147UL, 61U, 59U},
        {2523530305UL, 48U, 71U},
        {376046657UL, 66U, 71U},
        {3471067801UL, 70U, 71U},
        {3095685920UL, 53U, 71U},
        {1677087677UL, 73U, 4U},
        {1318138946UL, 75U, 71U}};
static struct em28xx_hash_table em28xx_i2c_hash[7U] = { {2959749827UL, 6U, 37U},
        {4111597795UL, 15U, 37U},
        {463798400UL, 19U, 4U},
        {2004877440UL, 29U, 4U},
        {3306291427UL, 62U, 37U},
        {1269104768UL, 72U, 69U},
        {1803550848UL, 77U, 4U}};
static unsigned short saa711x_addrs[5U] = { 37U, 36U, 33U, 32U,
        65534U};
static unsigned short tvp5150_addrs[3U] = { 92U, 93U, 65534U};
static unsigned short msp3400_addrs[3U] = { 64U, 68U, 65534U};
int em28xx_tuner_callback(void *ptr , int component , int command , int arg )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  int rc ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)ptr;
  dev = i2c_bus->dev;
  rc = 0;
  if (dev->tuner_type != 71 && dev->tuner_type != 76) {
    return (0);
  } else {
  }
  if (command != 0 && command != 0) {
    return (0);
  } else {
  }
  rc = em28xx_gpio_set(dev, dev->board.tuner_gpio);
  return (rc);
}
}
__inline static void em28xx_set_model(struct em28xx *dev )
{
  {
  dev->board = em28xx_boards[dev->model];
  if ((unsigned int )dev->board.xclk == 0U) {
    dev->board.xclk = 39U;
  } else {
  }
  if ((unsigned int )dev->board.i2c_speed == 0U) {
    dev->board.i2c_speed = 64U;
  } else {
  }
  dev->def_i2c_bus = dev->board.def_i2c_bus;
  return;
}
}
static void em28xx_pre_card_setup(struct em28xx *dev )
{
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  unsigned long __ms___1 ;
  unsigned long tmp___1 ;
  unsigned long __ms___2 ;
  unsigned long tmp___2 ;
  unsigned long __ms___3 ;
  unsigned long tmp___3 ;
  unsigned long __ms___4 ;
  unsigned long tmp___4 ;
  unsigned long __ms___5 ;
  unsigned long tmp___5 ;
  unsigned long __ms___6 ;
  unsigned long tmp___6 ;
  unsigned long __ms___7 ;
  unsigned long tmp___7 ;
  unsigned long __ms___8 ;
  unsigned long tmp___8 ;
  {
  em28xx_write_reg(dev, 15, (int )dev->board.xclk & 127);
  if ((unsigned int )*((unsigned char *)dev + 728UL) == 0U) {
    em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
  } else {
  }
  msleep(50U);
  switch (dev->model) {
  case 40:
  dev->i2s_speed = 2048000U;
  goto ldv_34401;
  case 39: ;
  case 47:
  em28xx_write_reg(dev, 8, 109);
  msleep(10U);
  em28xx_write_reg(dev, 8, 125);
  msleep(10U);
  goto ldv_34401;
  case 46:
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 1);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  __ms = 70UL;
  goto ldv_34407;
  ldv_34406:
  __const_udelay(4295000UL);
  ldv_34407:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_34406;
  } else {
  }
  em28xx_write_reg(dev, 8, 252);
  __ms___0 = 70UL;
  goto ldv_34411;
  ldv_34410:
  __const_udelay(4295000UL);
  ldv_34411:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_34410;
  } else {
  }
  em28xx_write_reg(dev, 8, 220);
  __ms___1 = 70UL;
  goto ldv_34415;
  ldv_34414:
  __const_udelay(4295000UL);
  ldv_34415:
  tmp___1 = __ms___1;
  __ms___1 = __ms___1 - 1UL;
  if (tmp___1 != 0UL) {
    goto ldv_34414;
  } else {
  }
  em28xx_write_reg(dev, 8, 252);
  __ms___2 = 70UL;
  goto ldv_34419;
  ldv_34418:
  __const_udelay(4295000UL);
  ldv_34419:
  tmp___2 = __ms___2;
  __ms___2 = __ms___2 - 1UL;
  if (tmp___2 != 0UL) {
    goto ldv_34418;
  } else {
  }
  goto ldv_34401;
  case 44:
  em28xx_write_reg(dev, 8, 254);
  __ms___3 = 70UL;
  goto ldv_34424;
  ldv_34423:
  __const_udelay(4295000UL);
  ldv_34424:
  tmp___3 = __ms___3;
  __ms___3 = __ms___3 - 1UL;
  if (tmp___3 != 0UL) {
    goto ldv_34423;
  } else {
  }
  em28xx_write_reg(dev, 8, 222);
  __ms___4 = 70UL;
  goto ldv_34428;
  ldv_34427:
  __const_udelay(4295000UL);
  ldv_34428:
  tmp___4 = __ms___4;
  __ms___4 = __ms___4 - 1UL;
  if (tmp___4 != 0UL) {
    goto ldv_34427;
  } else {
  }
  em28xx_write_reg(dev, 8, 254);
  __ms___5 = 70UL;
  goto ldv_34432;
  ldv_34431:
  __const_udelay(4295000UL);
  ldv_34432:
  tmp___5 = __ms___5;
  __ms___5 = __ms___5 - 1UL;
  if (tmp___5 != 0UL) {
    goto ldv_34431;
  } else {
  }
  goto ldv_34401;
  case 45:
  em28xx_write_reg(dev, 8, 254);
  __ms___6 = 70UL;
  goto ldv_34437;
  ldv_34436:
  __const_udelay(4295000UL);
  ldv_34437:
  tmp___6 = __ms___6;
  __ms___6 = __ms___6 - 1UL;
  if (tmp___6 != 0UL) {
    goto ldv_34436;
  } else {
  }
  em28xx_write_reg(dev, 8, 222);
  __ms___7 = 70UL;
  goto ldv_34441;
  ldv_34440:
  __const_udelay(4295000UL);
  ldv_34441:
  tmp___7 = __ms___7;
  __ms___7 = __ms___7 - 1UL;
  if (tmp___7 != 0UL) {
    goto ldv_34440;
  } else {
  }
  em28xx_write_reg(dev, 8, 254);
  __ms___8 = 70UL;
  goto ldv_34445;
  ldv_34444:
  __const_udelay(4295000UL);
  ldv_34445:
  tmp___8 = __ms___8;
  __ms___8 = __ms___8 - 1UL;
  if (tmp___8 != 0UL) {
    goto ldv_34444;
  } else {
  }
  goto ldv_34401;
  case 25: ;
  case 5:
  em28xx_write_reg(dev, 8, 253);
  goto ldv_34401;
  case 69:
  em28xx_write_reg(dev, 8, 255);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(10U);
  em28xx_write_reg(dev, 4, 0);
  msleep(10U);
  em28xx_write_reg(dev, 4, 8);
  msleep(10U);
  goto ldv_34401;
  case 63:
  em28xx_write_regs(dev, 15, (char *)"\a", 1);
  em28xx_write_regs(dev, 6, (char *)"@", 1);
  em28xx_write_regs(dev, 13, (char *)"B", 1);
  em28xx_write_regs(dev, 8, (char *)"\375", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\377", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"\177", 1);
  msleep(10U);
  em28xx_write_regs(dev, 8, (char *)"k", 1);
  goto ldv_34401;
  case 64:
  em28xx_write_regs(dev, 8, (char *)"\370", 1);
  goto ldv_34401;
  case 65:
  em28xx_write_reg(dev, 8, 255);
  msleep(70U);
  em28xx_write_reg(dev, 8, 247);
  msleep(10U);
  em28xx_write_reg(dev, 8, 254);
  msleep(70U);
  em28xx_write_reg(dev, 8, 253);
  msleep(70U);
  goto ldv_34401;
  }
  ldv_34401:
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  em28xx_set_mode(dev, 0);
  return;
}
}
static void em28xx_setup_xc3028(struct em28xx *dev , struct xc2028_ctrl *ctl )
{
  {
  memset((void *)ctl, 0, 32UL);
  ctl->fname = (char *)"xc3028-v27.fw";
  ctl->max_len = 64;
  ctl->mts = em28xx_boards[dev->model].mts_firmware;
  switch (dev->model) {
  case 66: ;
  case 10: ;
  case 55:
  ctl->demod = 4560U;
  goto ldv_34460;
  case 11: ;
  case 51: ;
  case 53:
  ctl->demod = 4560U;
  goto ldv_34460;
  case 18: ;
  case 56:
  ctl->demod = 0U;
  goto ldv_34460;
  case 20:
  ctl->demod = 0U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_34460;
  case 60: ;
  case 16: ;
  case 17:
  ctl->demod = 0U;
  goto ldv_34460;
  case 57: ;
  case 75: ;
  case 54:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028-v27.fw";
  goto ldv_34460;
  case 70:
  ctl->demod = 5200U;
  ctl->fname = (char *)"xc3028L-v36.fw";
  goto ldv_34460;
  default:
  ctl->demod = 5380U;
  }
  ldv_34460: ;
  return;
}
}
static void em28xx_tuner_setup(struct em28xx *dev )
{
  struct tuner_setup tun_setup ;
  struct v4l2_frequency f ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_priv_tun_config tda9887_cfg ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct v4l2_priv_tun_config xc2028_cfg ;
  struct xc2028_ctrl ctl ;
  struct v4l2_subdev *__sd___2 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  struct v4l2_subdev *__sd___3 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  {
  if (dev->tuner_type == 4) {
    return;
  } else {
  }
  memset((void *)(& tun_setup), 0, 32UL);
  tun_setup.mode_mask = 6U;
  tun_setup.tuner_callback = & em28xx_tuner_callback;
  if ((unsigned int )dev->board.radio.type != 0U) {
    tun_setup.type = (unsigned int )dev->board.radio.type;
    tun_setup.addr = (unsigned short )dev->board.radio_addr;
    __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
    goto ldv_34486;
    ldv_34485: ;
    if ((unsigned long )(__sd->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                    struct tuner_setup * ))0)) {
      (*(((__sd->ops)->tuner)->s_type_addr))(__sd, & tun_setup);
    } else {
    }
    __mptr___0 = (struct list_head const *)__sd->list.next;
    __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
    ldv_34486: ;
    if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_34485;
    } else {
    }
  } else {
  }
  if (dev->tuner_type != 4 && dev->tuner_type != 0) {
    tun_setup.type = (unsigned int )dev->tuner_type;
    tun_setup.addr = (unsigned short )dev->tuner_addr;
    __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
    goto ldv_34494;
    ldv_34493: ;
    if ((unsigned long )(__sd___0->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___0->ops)->tuner)->s_type_addr != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                            struct tuner_setup * ))0)) {
      (*(((__sd___0->ops)->tuner)->s_type_addr))(__sd___0, & tun_setup);
    } else {
    }
    __mptr___2 = (struct list_head const *)__sd___0->list.next;
    __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
    ldv_34494: ;
    if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_34493;
    } else {
    }
  } else {
  }
  if (dev->tda9887_conf != 0) {
    tda9887_cfg.tuner = 74;
    tda9887_cfg.priv = (void *)(& dev->tda9887_conf);
    __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
    goto ldv_34503;
    ldv_34502: ;
    if ((unsigned long )(__sd___1->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___1->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                         struct v4l2_priv_tun_config const * ))0)) {
      (*(((__sd___1->ops)->tuner)->s_config))(__sd___1, (struct v4l2_priv_tun_config const *)(& tda9887_cfg));
    } else {
    }
    __mptr___4 = (struct list_head const *)__sd___1->list.next;
    __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
    ldv_34503: ;
    if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_34502;
    } else {
    }
  } else {
  }
  if (dev->tuner_type == 71) {
    memset((void *)(& xc2028_cfg), 0, 16UL);
    memset((void *)(& ctl), 0, 32UL);
    em28xx_setup_xc3028(dev, & ctl);
    xc2028_cfg.tuner = 71;
    xc2028_cfg.priv = (void *)(& ctl);
    __mptr___5 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___5 + 0xffffffffffffff80UL;
    goto ldv_34513;
    ldv_34512: ;
    if ((unsigned long )(__sd___2->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___2->ops)->tuner)->s_config != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                         struct v4l2_priv_tun_config const * ))0)) {
      (*(((__sd___2->ops)->tuner)->s_config))(__sd___2, (struct v4l2_priv_tun_config const *)(& xc2028_cfg));
    } else {
    }
    __mptr___6 = (struct list_head const *)__sd___2->list.next;
    __sd___2 = (struct v4l2_subdev *)__mptr___6 + 0xffffffffffffff80UL;
    ldv_34513: ;
    if ((unsigned long )(& __sd___2->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
      goto ldv_34512;
    } else {
    }
  } else {
  }
  f.tuner = 0U;
  f.type = 2U;
  f.frequency = 9076U;
  dev->ctl_freq = (int )f.frequency;
  __mptr___7 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___3 = (struct v4l2_subdev *)__mptr___7 + 0xffffffffffffff80UL;
  goto ldv_34521;
  ldv_34520: ;
  if ((unsigned long )(__sd___3->ops)->tuner != (unsigned long )((struct v4l2_subdev_tuner_ops const * )0) && (unsigned long )((__sd___3->ops)->tuner)->s_frequency != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                          struct v4l2_frequency const * ))0)) {
    (*(((__sd___3->ops)->tuner)->s_frequency))(__sd___3, (struct v4l2_frequency const *)(& f));
  } else {
  }
  __mptr___8 = (struct list_head const *)__sd___3->list.next;
  __sd___3 = (struct v4l2_subdev *)__mptr___8 + 0xffffffffffffff80UL;
  ldv_34521: ;
  if ((unsigned long )(& __sd___3->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_34520;
  } else {
  }
  return;
}
}
static int em28xx_hint_board(struct em28xx *dev )
{
  int i ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if ((unsigned int )dev->em28xx_sensor == 1U) {
      dev->model = 71;
    } else
    if ((unsigned int )dev->em28xx_sensor == 2U || (unsigned int )dev->em28xx_sensor == 3U) {
      dev->model = 22;
    } else {
    }
    return (0);
  } else {
  }
  i = 0;
  goto ldv_34530;
  ldv_34529: ;
  if (dev->hash == em28xx_eeprom_hash[i].hash) {
    dev->model = (int )em28xx_eeprom_hash[i].model;
    dev->tuner_type = (int )em28xx_eeprom_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on eeprom hash.\n", (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_34530: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_34529;
  } else {
  }
  if (dev->i2c_hash == 0UL) {
    em28xx_do_i2c_scan(dev, dev->def_i2c_bus);
  } else {
  }
  i = 0;
  goto ldv_34535;
  ldv_34534: ;
  if (dev->i2c_hash == em28xx_i2c_hash[i].hash) {
    dev->model = (int )em28xx_i2c_hash[i].model;
    dev->tuner_type = (int )em28xx_i2c_hash[i].tuner;
    printk("\v%s: Your board has no unique USB ID.\n", (char *)(& dev->name));
    printk("\v%s: A hint were successfully done, based on i2c devicelist hash.\n",
           (char *)(& dev->name));
    printk("\v%s: This method is not 100%% failproof.\n", (char *)(& dev->name));
    printk("\v%s: If the board were missdetected, please email this log to:\n", (char *)(& dev->name));
    printk("\v%s: \tV4L Mailing List  <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
    printk("\v%s: Board detected as %s\n", (char *)(& dev->name), em28xx_boards[dev->model].name);
    return (0);
  } else {
  }
  i = i + 1;
  ldv_34535: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_34534;
  } else {
  }
  printk("\v%s: Your board has no unique USB ID and thus need a hint to be detected.\n",
         (char *)(& dev->name));
  printk("\v%s: You may try to use card=<n> insmod option to workaround that.\n",
         (char *)(& dev->name));
  printk("\v%s: Please send an email with this log to:\n", (char *)(& dev->name));
  printk("\v%s: \tV4L Mailing List <linux-media@vger.kernel.org>\n", (char *)(& dev->name));
  printk("\v%s: Board eeprom hash is 0x%08lx\n", (char *)(& dev->name), dev->hash);
  printk("\v%s: Board i2c devicelist hash is 0x%08lx\n", (char *)(& dev->name), dev->i2c_hash);
  printk("\v%s: Here is a list of valid choices for the card=<n> insmod option:\n",
         (char *)(& dev->name));
  i = 0;
  goto ldv_34538;
  ldv_34537:
  printk("\v%s:     card=%d -> %s\n", (char *)(& dev->name), i, em28xx_boards[i].name);
  i = i + 1;
  ldv_34538: ;
  if ((unsigned int )i < (unsigned int )em28xx_bcount) {
    goto ldv_34537;
  } else {
  }
  return (-1);
}
}
static void em28xx_card_setup(struct em28xx *dev )
{
  int tmp ;
  int tmp___0 ;
  struct tveeprom tv ;
  int tmp___1 ;
  int tmp___2 ;
  int has_demod ;
  unsigned short const *tmp___3 ;
  enum v4l2_i2c_tuner_type type ;
  struct v4l2_subdev *sd ;
  unsigned short const *tmp___4 ;
  unsigned short tmp___5 ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    tmp = em28xx_detect_sensor(dev);
    if (tmp < 0) {
      dev->board.is_webcam = 0U;
    } else {
      dev->progressive = 1;
    }
  } else {
  }
  switch (dev->model) {
  case 22: ;
  case 1: ;
  case 0:
  tmp___0 = em28xx_hint_board(dev);
  if (tmp___0 < 0) {
    printk("\v%s: Board not discovered\n", (char *)(& dev->name));
  } else {
    em28xx_set_model(dev);
    em28xx_pre_card_setup(dev);
  }
  goto ldv_34546;
  default:
  em28xx_set_model(dev);
  }
  ldv_34546:
  printk("\016%s: Identified as %s (card=%d)\n", (char *)(& dev->name), dev->board.name,
         dev->model);
  dev->tuner_type = em28xx_boards[dev->model].tuner_type;
  if (em28xx_boards[dev->model].tuner_addr != 0) {
    dev->tuner_addr = em28xx_boards[dev->model].tuner_addr;
  } else {
  }
  if (em28xx_boards[dev->model].tda9887_conf != 0U) {
    dev->tda9887_conf = (int )em28xx_boards[dev->model].tda9887_conf;
  } else {
  }
  switch (dev->model) {
  case 4: ;
  case 10: ;
  case 18: ;
  case 60: ;
  case 16: ;
  case 81: ;
  if ((unsigned long )dev->eedata == (unsigned long )((u8 *)0)) {
    goto ldv_34555;
  } else {
  }
  __request_module(1, "tveeprom");
  dev->i2c_client[dev->def_i2c_bus].addr = 80U;
  tveeprom_hauppauge_analog((struct i2c_client *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                            & tv, dev->eedata);
  dev->tuner_type = (int )tv.tuner_type;
  if (tv.audio_processor == 34000U) {
    dev->i2s_speed = 2048000U;
    dev->board.has_msp34xx = 1U;
  } else {
  }
  goto ldv_34555;
  case 69:
  em28xx_write_reg(dev, 13, 66);
  msleep(10U);
  em28xx_write_reg(dev, 8, 253);
  msleep(10U);
  goto ldv_34555;
  case 12:
  em28xx_write_reg(dev, 8, 249);
  goto ldv_34555;
  case 1: ;
  case 0: ;
  case 49:
  tmp___1 = em28xx_hint_board(dev);
  if (tmp___1 == 0) {
    em28xx_set_model(dev);
  } else {
  }
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  goto ldv_34555;
  case 54:
  tmp___2 = em28xx_hint_board(dev);
  if (tmp___2 == 0) {
    em28xx_set_model(dev);
  } else {
  }
  em28xx_gpio_set(dev, dev->board.tuner_gpio);
  em28xx_set_mode(dev, 1);
  goto ldv_34555;
  }
  ldv_34555: ;
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    printk("\v%s: \n\n", (char *)(& dev->name));
    printk("\v%s: The support for this board weren\'t valid yet.\n", (char *)(& dev->name));
    printk("\v%s: Please send a report of having this working\n", (char *)(& dev->name));
    printk("\v%s: not to V4L mailing list (and/or to other addresses)\n\n", (char *)(& dev->name));
  } else {
  }
  kfree((void const *)dev->eedata);
  dev->eedata = 0;
  if (tuner >= 0) {
    dev->tuner_type = tuner;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                        "msp3400", 0, (unsigned short const *)(& msp3400_addrs));
  } else {
  }
  if ((unsigned int )dev->board.decoder == 2U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                        "saa7115_auto", 0, (unsigned short const *)(& saa711x_addrs));
  } else {
  }
  if ((unsigned int )dev->board.decoder == 1U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                        "tvp5150", 0, (unsigned short const *)(& tvp5150_addrs));
  } else {
  }
  if ((unsigned int )dev->board.adecoder == 1U) {
    v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                        "tvaudio", (int )((u8 )dev->board.tvaudio_addr), 0);
  } else {
  }
  if (dev->board.tuner_type != 4) {
    has_demod = dev->tda9887_conf & 1;
    if ((unsigned int )dev->board.radio.type != 0U) {
      v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                          "tuner", (int )dev->board.radio_addr, 0);
    } else {
    }
    if (has_demod != 0) {
      tmp___3 = v4l2_i2c_tuner_addrs(1);
      v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                          "tuner", 0, tmp___3);
    } else {
    }
    if (dev->tuner_addr == 0) {
      type = has_demod != 0 ? 3 : 2;
      tmp___4 = v4l2_i2c_tuner_addrs(type);
      sd = v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                               "tuner", 0, tmp___4);
      if ((unsigned long )sd != (unsigned long )((struct v4l2_subdev *)0)) {
        tmp___5 = v4l2_i2c_subdev_addr(sd);
        dev->tuner_addr = (int )tmp___5;
      } else {
      }
    } else {
      v4l2_i2c_new_subdev(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                          "tuner", (int )((u8 )dev->tuner_addr), 0);
    }
  } else {
  }
  em28xx_tuner_setup(dev);
  em28xx_init_camera(dev);
  return;
}
}
static void request_module_async(struct work_struct *work )
{
  struct em28xx *dev ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  dev = (struct em28xx *)__mptr + 0xffffffffffffe360UL;
  em28xx_init_extension(dev);
  if ((unsigned int )*((unsigned char *)dev + 900UL) != 0U) {
    __request_module(1, "snd-usb-audio");
  } else
  if ((unsigned int )*((unsigned char *)dev + 900UL) != 0U) {
    __request_module(1, "em28xx-alsa");
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    __request_module(1, "em28xx-dvb");
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U || (((unsigned long )dev->board.ir_codes != (unsigned long )((char *)0) || (unsigned int )*((unsigned char *)dev + 729UL) != 0U) && disable_ir == 0U)) {
    __request_module(1, "em28xx-rc");
  } else {
  }
  return;
}
}
static void request_modules(struct em28xx *dev )
{
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  __init_work(& dev->request_module_wk, 0);
  __constr_expr_0.counter = 137438953408L;
  dev->request_module_wk.data = __constr_expr_0;
  lockdep_init_map(& dev->request_module_wk.lockdep_map, "(&dev->request_module_wk)",
                   & __key, 0);
  INIT_LIST_HEAD(& dev->request_module_wk.entry);
  dev->request_module_wk.func = & request_module_async;
  schedule_work(& dev->request_module_wk);
  return;
}
}
static void flush_request_modules(struct em28xx *dev )
{
  {
  flush_work(& dev->request_module_wk);
  return;
}
}
void em28xx_release_resources(struct em28xx *dev )
{
  {
  em28xx_release_analog_resources(dev);
  if (dev->def_i2c_bus != 0U) {
    em28xx_i2c_unregister(dev, 1U);
  } else {
  }
  em28xx_i2c_unregister(dev, 0U);
  v4l2_ctrl_handler_free(& dev->ctrl_handler);
  v4l2_device_unregister(& dev->v4l2_dev);
  usb_put_dev(dev->udev);
  clear_bit(dev->devno, (unsigned long volatile *)(& em28xx_devused));
  return;
}
}
static int em28xx_init_dev(struct em28xx *dev , struct usb_device *udev , struct usb_interface *interface ,
                           int minor )
{
  struct v4l2_ctrl_handler *hdl ;
  int retval ;
  char const *default_chip_name ;
  char const *chip_name ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  __le16 idProd ;
  struct lock_class_key _key ;
  struct v4l2_ctrl *tmp ;
  struct v4l2_ctrl *tmp___0 ;
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  hdl = & dev->ctrl_handler;
  default_chip_name = "em28xx";
  chip_name = default_chip_name;
  dev->udev = udev;
  __mutex_init(& dev->vb_queue_lock, "&dev->vb_queue_lock", & __key);
  __mutex_init(& dev->vb_vbi_queue_lock, "&dev->vb_vbi_queue_lock", & __key___0);
  __mutex_init(& dev->ctrl_urb_lock, "&dev->ctrl_urb_lock", & __key___1);
  spinlock_check(& dev->slock);
  __raw_spin_lock_init(& dev->slock.ldv_6014.rlock, "&(&dev->slock)->rlock", & __key___2);
  dev->em28xx_write_regs = & em28xx_write_regs;
  dev->em28xx_read_reg = & em28xx_read_reg;
  dev->em28xx_read_reg_req_len = & em28xx_read_reg_req_len;
  dev->em28xx_write_regs_req = & em28xx_write_regs_req;
  dev->em28xx_read_reg_req = & em28xx_read_reg_req;
  dev->board.is_em2800 = em28xx_boards[dev->model].is_em2800;
  em28xx_set_model(dev);
  dev->reg_gpo_num = 4U;
  dev->reg_gpio_num = 8U;
  dev->wait_after_write = 5U;
  retval = em28xx_read_reg(dev, 10);
  if (retval > 0) {
    dev->chip_id = (enum em28xx_chip_id )retval;
    switch ((unsigned int )dev->chip_id) {
    case 7U:
    chip_name = "em2800";
    goto ldv_34597;
    case 17U:
    chip_name = "em2710";
    goto ldv_34597;
    case 33U:
    chip_name = "em2750";
    goto ldv_34597;
    case 54U:
    chip_name = "em2765";
    dev->wait_after_write = 0U;
    dev->is_em25xx = 1U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_34597;
    case 18U:
    chip_name = "em2710/2820";
    if ((unsigned int )(dev->udev)->descriptor.idVendor == 60186U) {
      idProd = (dev->udev)->descriptor.idProduct;
      if ((unsigned int )idProd == 10000U) {
        chip_name = "em2710";
      } else
      if ((unsigned int )idProd == 10272U) {
        chip_name = "em2820";
      } else {
      }
    } else {
    }
    goto ldv_34597;
    case 20U:
    chip_name = "em2840";
    goto ldv_34597;
    case 34U:
    chip_name = "em2860";
    goto ldv_34597;
    case 35U:
    chip_name = "em2870";
    dev->wait_after_write = 0U;
    goto ldv_34597;
    case 65U:
    chip_name = "em2874";
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_34597;
    case 113U:
    chip_name = "em28174";
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_34597;
    case 36U:
    chip_name = "em2882/3";
    dev->wait_after_write = 0U;
    goto ldv_34597;
    case 68U:
    chip_name = "em2884";
    dev->reg_gpio_num = 128U;
    dev->wait_after_write = 0U;
    dev->eeprom_addrwidth_16bit = 1U;
    goto ldv_34597;
    default:
    printk("\016em28xx: unknown em28xx chip ID (%d)\n", (unsigned int )dev->chip_id);
    }
    ldv_34597: ;
  } else {
  }
  if ((unsigned long )chip_name != (unsigned long )default_chip_name) {
    printk("\016em28xx: chip ID is %s\n", chip_name);
  } else {
  }
  snprintf((char *)(& dev->name), 30UL, "%s #%d", chip_name, dev->devno);
  if ((unsigned int )*((unsigned char *)dev + 900UL) != 0U) {
    retval = em28xx_audio_setup(dev);
    if (retval != 0) {
      return (-19);
    } else {
    }
    em28xx_init_extension(dev);
    return (0);
  } else {
  }
  retval = em28xx_read_reg(dev, (int )dev->reg_gpo_num);
  if (retval >= 0) {
    dev->reg_gpo = (unsigned char )retval;
  } else {
  }
  em28xx_pre_card_setup(dev);
  if ((unsigned int )*((unsigned char *)dev + 728UL) == 0U) {
    retval = em28xx_write_reg(dev, 6, (int )dev->board.i2c_speed);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg failed! retval [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      return (retval);
    } else {
    }
  } else {
  }
  retval = v4l2_device_register(& interface->dev, & dev->v4l2_dev);
  if (retval < 0) {
    printk("\v%s: Call to v4l2_device_register() failed!\n", (char *)(& dev->name));
    return (retval);
  } else {
  }
  v4l2_ctrl_handler_init_class(hdl, 8U, & _key, "em28xx_cards:3068:(hdl)->_lock");
  dev->v4l2_dev.ctrl_handler = hdl;
  __rt_mutex_init(& dev->i2c_bus_lock, "em28xx_init_dev");
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    retval = em28xx_i2c_register(dev, 0U, 1);
  } else {
    retval = em28xx_i2c_register(dev, 0U, 0);
  }
  if (retval < 0) {
    printk("\v%s: %s: em28xx_i2c_register bus 0 - error [%d]!\n", (char *)(& dev->name),
           "em28xx_init_dev", retval);
    goto unregister_dev;
  } else {
  }
  if (dev->def_i2c_bus != 0U) {
    if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
      retval = em28xx_i2c_register(dev, 1U, 2);
    } else {
      retval = em28xx_i2c_register(dev, 1U, 0);
    }
    if (retval < 0) {
      printk("\v%s: %s: em28xx_i2c_register bus 1 - error [%d]!\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      goto unregister_dev;
    } else {
    }
  } else {
  }
  dev->vinmode = 16;
  dev->vinctl = 17;
  em28xx_card_setup(dev);
  retval = em28xx_audio_setup(dev);
  if (retval < 0) {
    printk("\v%s: %s: Error while setting audio - error [%d]!\n", (char *)(& dev->name),
           "em28xx_init_dev", retval);
    goto fail;
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    v4l2_ctrl_new_std(hdl, & em28xx_ctrl_ops, 9963785U, 0, 1, 1U, 1);
    v4l2_ctrl_new_std(hdl, & em28xx_ctrl_ops, 9963781U, 0, 31, 1U, 31);
  } else {
    tmp = v4l2_ctrl_find(hdl, 9963785U);
    v4l2_ctrl_notify(tmp, & em28xx_ctrl_notify, (void *)dev);
    tmp___0 = v4l2_ctrl_find(hdl, 9963781U);
    v4l2_ctrl_notify(tmp___0, & em28xx_ctrl_notify, (void *)dev);
  }
  em28xx_wake_i2c(dev);
  INIT_LIST_HEAD(& dev->vidq.active);
  INIT_LIST_HEAD(& dev->vbiq.active);
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    retval = em28xx_write_reg(dev, 8, 247);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg - msp34xx(1) failed! error [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      goto fail;
    } else {
    }
    msleep(3U);
    retval = em28xx_write_reg(dev, 8, 255);
    if (retval < 0) {
      printk("\v%s: %s: em28xx_write_reg - msp34xx(2) failed! error [%d]\n", (char *)(& dev->name),
             "em28xx_init_dev", retval);
      goto fail;
    } else {
    }
    msleep(3U);
  } else {
  }
  retval = em28xx_register_analog_devices(dev);
  if (retval < 0) {
    goto fail;
  } else {
  }
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_34622;
  ldv_34621: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->s_power != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                           int ))0)) {
    (*(((__sd->ops)->core)->s_power))(__sd, 0);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_34622: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_34621;
  } else {
  }
  return (0);
  fail: ;
  if (dev->def_i2c_bus != 0U) {
    em28xx_i2c_unregister(dev, 1U);
  } else {
  }
  em28xx_i2c_unregister(dev, 0U);
  v4l2_ctrl_handler_free(& dev->ctrl_handler);
  unregister_dev:
  v4l2_device_unregister(& dev->v4l2_dev);
  return (retval);
}
}
static int em28xx_usb_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  struct usb_device *udev ;
  struct em28xx *dev ;
  int retval ;
  bool has_audio ;
  bool has_video ;
  bool has_dvb ;
  int i ;
  int nr ;
  int try_bulk ;
  int ifnum ;
  char *speed ;
  struct usb_device *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int ep ;
  struct usb_endpoint_descriptor const *e ;
  int sizedescr ;
  int size ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  struct usb_interface *uif ;
  struct lock_class_key __key ;
  {
  dev = 0;
  has_audio = 0;
  has_video = 0;
  has_dvb = 0;
  ifnum = (int const )(interface->altsetting)->desc.bInterfaceNumber;
  tmp = interface_to_usbdev(interface);
  udev = usb_get_dev(tmp);
  ldv_34640:
  tmp___0 = find_first_zero_bit((unsigned long const *)(& em28xx_devused), 4UL);
  nr = (int )tmp___0;
  if (nr > 3) {
    printk("em28xx: Supports only %i em28xx boards.\n", 4);
    retval = -12;
    goto err_no_slot;
  } else {
  }
  tmp___1 = test_and_set_bit(nr, (unsigned long volatile *)(& em28xx_devused));
  if (tmp___1 != 0) {
    goto ldv_34640;
  } else {
  }
  if ((unsigned int )(interface->altsetting)->desc.bInterfaceClass == 1U) {
    printk("\vem28xx audio device (%04x:%04x): interface %i, class %i\n", (int )udev->descriptor.idVendor,
           (int )udev->descriptor.idProduct, ifnum, (int )(interface->altsetting)->desc.bInterfaceClass);
    retval = -19;
    goto err;
  } else {
  }
  tmp___2 = kzalloc(10280UL, 208U);
  dev = (struct em28xx *)tmp___2;
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    printk("\vem28xx: out of memory!\n");
    retval = -12;
    goto err;
  } else {
  }
  tmp___3 = kmalloc((unsigned long )interface->num_altsetting * 4UL, 208U);
  dev->alt_max_pkt_size_isoc = (unsigned int *)tmp___3;
  if ((unsigned long )dev->alt_max_pkt_size_isoc == (unsigned long )((unsigned int *)0)) {
    printk("\v%s: out of memory!\n", (char *)(& dev->name));
    kfree((void const *)dev);
    retval = -12;
    goto err;
  } else {
  }
  i = 0;
  goto ldv_34655;
  ldv_34654:
  ep = 0;
  goto ldv_34652;
  ldv_34651:
  e = (struct usb_endpoint_descriptor const *)(& ((interface->altsetting + (unsigned long )i)->endpoint + (unsigned long )ep)->desc);
  sizedescr = (int )e->wMaxPacketSize;
  size = sizedescr & 2047;
  if ((unsigned int )udev->speed == 3U) {
    size = (((sizedescr >> 11) & 3) + 1) * size;
  } else {
  }
  tmp___9 = usb_endpoint_dir_in(e);
  if (tmp___9 != 0) {
    switch ((int )e->bEndpointAddress) {
    case 130:
    has_video = 1;
    tmp___5 = usb_endpoint_xfer_isoc(e);
    if (tmp___5 != 0) {
      dev->analog_ep_isoc = e->bEndpointAddress;
      *(dev->alt_max_pkt_size_isoc + (unsigned long )i) = (unsigned int )size;
    } else {
      tmp___4 = usb_endpoint_xfer_bulk(e);
      if (tmp___4 != 0) {
        dev->analog_ep_bulk = e->bEndpointAddress;
      } else {
      }
    }
    goto ldv_34648;
    case 131:
    tmp___6 = usb_endpoint_xfer_isoc(e);
    if (tmp___6 != 0) {
      has_audio = 1;
    } else {
      printk("\016em28xx: error: skipping audio endpoint 0x83, because it uses bulk transfers !\n");
    }
    goto ldv_34648;
    case 132: ;
    if ((int )has_video) {
      tmp___8 = usb_endpoint_xfer_bulk(e);
      if (tmp___8 != 0) {
        dev->analog_ep_bulk = e->bEndpointAddress;
      } else {
        goto _L;
      }
    } else {
      _L:
      tmp___7 = usb_endpoint_xfer_isoc(e);
      if (tmp___7 != 0) {
        if ((unsigned int )size > dev->dvb_max_pkt_size_isoc) {
          has_dvb = 1;
          dev->dvb_ep_isoc = e->bEndpointAddress;
          dev->dvb_max_pkt_size_isoc = (unsigned int )size;
          dev->dvb_alt_isoc = i;
        } else {
        }
      } else {
        has_dvb = 1;
        dev->dvb_ep_bulk = e->bEndpointAddress;
      }
    }
    goto ldv_34648;
    }
    ldv_34648: ;
  } else {
  }
  ep = ep + 1;
  ldv_34652: ;
  if ((int )(interface->altsetting + (unsigned long )i)->desc.bNumEndpoints > ep) {
    goto ldv_34651;
  } else {
  }
  i = i + 1;
  ldv_34655: ;
  if ((unsigned int )i < interface->num_altsetting) {
    goto ldv_34654;
  } else {
  }
  if ((! has_audio && ! has_video) && ! has_dvb) {
    retval = -19;
    goto err_free;
  } else {
  }
  switch ((unsigned int )udev->speed) {
  case 1U:
  speed = (char *)"1.5";
  goto ldv_34659;
  case 0U: ;
  case 2U:
  speed = (char *)"12";
  goto ldv_34659;
  case 3U:
  speed = (char *)"480";
  goto ldv_34659;
  default:
  speed = (char *)"unknown";
  }
  ldv_34659:
  printk("\016em28xx: New device %s %s @ %s Mbps (%04x:%04x, interface %d, class %d)\n",
         (unsigned long )udev->manufacturer != (unsigned long )((char *)0) ? udev->manufacturer : (char *)"",
         (unsigned long )udev->product != (unsigned long )((char *)0) ? udev->product : (char *)"",
         speed, (int )udev->descriptor.idVendor, (int )udev->descriptor.idProduct,
         ifnum, (int )(interface->altsetting)->desc.bInterfaceNumber);
  if ((unsigned int )udev->speed != 3U && disable_usb_speed_check == 0U) {
    printk("em28xx: Device initialization failed.\n");
    printk("em28xx: Device must be connected to a high-speed USB 2.0 port.\n");
    retval = -19;
    goto err_free;
  } else {
  }
  dev->devno = nr;
  dev->model = (int )id->driver_info;
  dev->alt = -1;
  dev->is_audio_only = (unsigned char )((int )has_audio && (! has_video && ! has_dvb));
  dev->has_alsa_audio = (unsigned char )has_audio;
  dev->audio_ifnum = ifnum;
  i = 0;
  goto ldv_34667;
  ldv_34666:
  uif = (udev->config)->interface[i];
  if ((unsigned int )(uif->altsetting)->desc.bInterfaceClass == 1U) {
    dev->has_audio_class = 1U;
    goto ldv_34665;
  } else {
  }
  i = i + 1;
  ldv_34667: ;
  if ((int )(udev->config)->desc.bNumInterfaces > i) {
    goto ldv_34666;
  } else {
  }
  ldv_34665: ;
  if ((int )has_audio) {
    printk("\016em28xx: Audio interface %i found %s\n", ifnum, (unsigned int )*((unsigned char *)dev + 900UL) != 0U ? (char *)"(USB Audio Class)" : (char *)"(Vendor Class)");
  } else {
  }
  if ((int )has_video) {
    printk("\016em28xx: Video interface %i found:%s%s\n", ifnum, (unsigned int )dev->analog_ep_bulk != 0U ? (char *)" bulk" : (char *)"",
           (unsigned int )dev->analog_ep_isoc != 0U ? (char *)" isoc" : (char *)"");
  } else {
  }
  if ((int )has_dvb) {
    printk("\016em28xx: DVB interface %i found:%s%s\n", ifnum, (unsigned int )dev->dvb_ep_bulk != 0U ? (char *)" bulk" : (char *)"",
           (unsigned int )dev->dvb_ep_isoc != 0U ? (char *)" isoc" : (char *)"");
  } else {
  }
  dev->num_alt = (int )interface->num_altsetting;
  if (card[nr] < (unsigned int )em28xx_bcount) {
    dev->model = (int )card[nr];
  } else {
  }
  usb_set_intfdata(interface, (void *)dev);
  em28xx_vb2_setup(dev);
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  ldv_mutex_lock_48(& dev->lock);
  retval = em28xx_init_dev(dev, udev, interface, nr);
  if (retval != 0) {
    goto unlock_and_free;
  } else {
  }
  if (usb_xfer_mode < 0) {
    if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
      try_bulk = 1;
    } else {
      try_bulk = 0;
    }
  } else {
    try_bulk = usb_xfer_mode > 0;
  }
  if ((int )has_video) {
    if ((unsigned int )dev->analog_ep_isoc == 0U || (try_bulk != 0 && (unsigned int )dev->analog_ep_bulk != 0U)) {
      dev->analog_xfer_bulk = 1U;
    } else {
    }
    printk("\016%s: analog set to %s mode.\n", (char *)(& dev->name), (unsigned int )*((unsigned char *)dev + 9864UL) != 0U ? (char *)"bulk" : (char *)"isoc");
  } else {
  }
  if ((int )has_dvb) {
    if ((unsigned int )dev->dvb_ep_isoc == 0U || (try_bulk != 0 && (unsigned int )dev->dvb_ep_bulk != 0U)) {
      dev->dvb_xfer_bulk = 1U;
    } else {
    }
    printk("\016%s: dvb set to %s mode.\n", (char *)(& dev->name), (unsigned int )*((unsigned char *)dev + 9876UL) != 0U ? (char *)"bulk" : (char *)"isoc");
    if ((unsigned int )*((unsigned char *)dev + 9876UL) != 0U) {
      retval = em28xx_alloc_urbs(dev, 2, (int )dev->dvb_xfer_bulk, 5, 512, 384);
    } else {
      retval = em28xx_alloc_urbs(dev, 2, (int )dev->dvb_xfer_bulk, 5, (int )dev->dvb_max_pkt_size_isoc,
                                 64);
    }
    if (retval != 0) {
      printk("em28xx: Failed to pre-allocate USB transfer buffers for DVB.\n");
      goto unlock_and_free;
    } else {
    }
  } else {
  }
  request_modules(dev);
  ldv_mutex_unlock_49(& dev->lock);
  return (0);
  unlock_and_free:
  ldv_mutex_unlock_50(& dev->lock);
  err_free:
  kfree((void const *)dev->alt_max_pkt_size_isoc);
  kfree((void const *)dev);
  err:
  clear_bit(nr, (unsigned long volatile *)(& em28xx_devused));
  err_no_slot:
  usb_put_dev(udev);
  return (retval);
}
}
static void em28xx_usb_disconnect(struct usb_interface *interface )
{
  struct em28xx *dev ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = usb_get_intfdata(interface);
  dev = (struct em28xx *)tmp;
  usb_set_intfdata(interface, 0);
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return;
  } else {
  }
  dev->disconnected = 1U;
  if ((unsigned int )*((unsigned char *)dev + 900UL) != 0U) {
    ldv_mutex_lock_51(& dev->lock);
    em28xx_close_extension(dev);
    ldv_mutex_unlock_52(& dev->lock);
    return;
  } else {
  }
  printk("\016%s: disconnecting %s\n", (char *)(& dev->name), (char *)(& (dev->vdev)->name));
  flush_request_modules(dev);
  ldv_mutex_lock_53(& dev->lock);
  v4l2_device_disconnect(& dev->v4l2_dev);
  if (dev->users != 0) {
    tmp___0 = video_device_node_name(dev->vdev);
    printk("\f%s: device %s is open! Deregistration and memory deallocation are deferred on close.\n",
           (char *)(& dev->name), tmp___0);
    em28xx_uninit_usb_xfer(dev, 1);
    em28xx_uninit_usb_xfer(dev, 2);
  } else {
  }
  em28xx_close_extension(dev);
  if (dev->users == 0) {
    em28xx_release_resources(dev);
  } else {
  }
  ldv_mutex_unlock_54(& dev->lock);
  if (dev->users == 0) {
    kfree((void const *)dev->alt_max_pkt_size_isoc);
    kfree((void const *)dev);
  } else {
  }
  return;
}
}
extern void ldv_check_return_value_probe(int ) ;
void ldv_main2_sequence_infinite_withcheck_stateful(void)
{
  struct usb_interface *var_group1 ;
  struct usb_device_id const *var_em28xx_usb_probe_12_p1 ;
  int res_em28xx_usb_probe_12 ;
  int ldv_s_em28xx_usb_driver_usb_driver ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_em28xx_usb_driver_usb_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_34717;
  ldv_34716:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_em28xx_usb_driver_usb_driver == 0) {
    res_em28xx_usb_probe_12 = em28xx_usb_probe(var_group1, var_em28xx_usb_probe_12_p1);
    ldv_check_return_value(res_em28xx_usb_probe_12);
    ldv_check_return_value_probe(res_em28xx_usb_probe_12);
    if (res_em28xx_usb_probe_12 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_em28xx_usb_driver_usb_driver = ldv_s_em28xx_usb_driver_usb_driver + 1;
  } else {
  }
  goto ldv_34713;
  case 1: ;
  if (ldv_s_em28xx_usb_driver_usb_driver == 1) {
    ldv_handler_precall();
    em28xx_usb_disconnect(var_group1);
    ldv_s_em28xx_usb_driver_usb_driver = 0;
  } else {
  }
  goto ldv_34713;
  default: ;
  goto ldv_34713;
  }
  ldv_34713: ;
  ldv_34717:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_em28xx_usb_driver_usb_driver != 0) {
    goto ldv_34716;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_44(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
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
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (824), "i" (12UL));
    ldv_4781: ;
    goto ldv_4781;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (44UL),
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
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock ) ;
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6357;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6357;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6357;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6357;
  default:
  __bad_percpu_size();
  }
  ldv_6357:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_6014.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
__inline static void usb_fill_int_urb(struct urb *urb , struct usb_device *dev , unsigned int pipe ,
                                      void *transfer_buffer , int buffer_length ,
                                      void (*complete_fn)(struct urb * ) , void *context ,
                                      int interval )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  if ((unsigned int )dev->speed == 3U || (unsigned int )dev->speed == 5U) {
    urb->interval = 1 << (interval + -1);
  } else {
    urb->interval = interval;
  }
  urb->start_frame = -1;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern int usb_unlink_urb(struct urb * ) ;
extern void usb_kill_urb(struct urb * ) ;
extern void *usb_alloc_coherent(struct usb_device * , size_t , gfp_t , dma_addr_t * ) ;
extern void usb_free_coherent(struct usb_device * , size_t , void * , dma_addr_t ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
extern int usb_clear_halt(struct usb_device * , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
}
}
__inline static int usb_translate_errors(int error_code )
{
  {
  switch (error_code) {
  case 0: ;
  case -12: ;
  case -19: ;
  case -95: ;
  return (error_code);
  default: ;
  return (-5);
  }
}
}
__inline static int ac97_return_record_select(int a_out )
{
  {
  return ((a_out & 1792) >> 8);
}
}
int em28xx_capture_start(struct em28xx *dev , int start ) ;
void em28xx_stop_urbs(struct em28xx *dev ) ;
int em28xx_register_extension(struct em28xx_ops *ops ) ;
void em28xx_unregister_extension(struct em28xx_ops *ops ) ;
static unsigned int core_debug ;
static unsigned int reg_debug ;
static int alt ;
static unsigned int disable_vbi ;
int em28xx_read_reg_req_len(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{
  int ret ;
  int pipe ;
  unsigned int tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  int byte ;
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483776U);
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    return (-19);
  } else {
  }
  if (len > 80) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    printk("\017(pipe 0x%08x): IN:  %02x %02x %02x %02x %02x %02x %02x %02x ", pipe,
           192, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255, len >> 8);
  } else {
  }
  ldv_mutex_lock_76(& dev->ctrl_urb_lock);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 192, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  if (ret < 0) {
    if (reg_debug != 0U) {
      printk(" failed!\n");
    } else {
    }
    ldv_mutex_unlock_77(& dev->ctrl_urb_lock);
    tmp___0 = usb_translate_errors(ret);
    return (tmp___0);
  } else {
  }
  if (len != 0) {
    __len = (size_t )len;
    __ret = memcpy((void *)buf, (void const *)(& dev->urb_buf), __len);
  } else {
  }
  ldv_mutex_unlock_78(& dev->ctrl_urb_lock);
  if (reg_debug != 0U) {
    printk("<<<");
    byte = 0;
    goto ldv_36109;
    ldv_36108:
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    ldv_36109: ;
    if (byte < len) {
      goto ldv_36108;
    } else {
    }
    printk("\n");
  } else {
  }
  return (ret);
}
}
int em28xx_read_reg_req(struct em28xx *dev , u8 req , u16 reg )
{
  int ret ;
  u8 val ;
  {
  ret = em28xx_read_reg_req_len(dev, (int )req, (int )reg, (char *)(& val), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
int em28xx_read_reg(struct em28xx *dev , u16 reg )
{
  int tmp ;
  {
  tmp = em28xx_read_reg_req(dev, 0, (int )reg);
  return (tmp);
}
}
int em28xx_write_regs_req(struct em28xx *dev , u8 req , u16 reg , char *buf , int len )
{
  int ret ;
  int pipe ;
  unsigned int tmp ;
  int byte ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  {
  tmp = __create_pipe(dev->udev, 0U);
  pipe = (int )(tmp | 2147483648U);
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    return (-19);
  } else {
  }
  if (len <= 0 || len > 80) {
    return (-22);
  } else {
  }
  if (reg_debug != 0U) {
    printk("\017(pipe 0x%08x): OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>",
           pipe, 64, (int )req, 0, 0, (int )reg & 255, (int )reg >> 8, len & 255,
           len >> 8);
    byte = 0;
    goto ldv_36140;
    ldv_36139:
    printk(" %02x", (int )((unsigned char )*(buf + (unsigned long )byte)));
    byte = byte + 1;
    ldv_36140: ;
    if (byte < len) {
      goto ldv_36139;
    } else {
    }
    printk("\n");
  } else {
  }
  ldv_mutex_lock_79(& dev->ctrl_urb_lock);
  __len = (size_t )len;
  __ret = memcpy((void *)(& dev->urb_buf), (void const *)buf, __len);
  ret = usb_control_msg(dev->udev, (unsigned int )pipe, (int )req, 64, 0, (int )reg,
                        (void *)(& dev->urb_buf), (int )((__u16 )len), 250);
  ldv_mutex_unlock_80(& dev->ctrl_urb_lock);
  if (ret < 0) {
    tmp___0 = usb_translate_errors(ret);
    return (tmp___0);
  } else {
  }
  if (dev->wait_after_write != 0U) {
    msleep(dev->wait_after_write);
  } else {
  }
  return (ret);
}
}
int em28xx_write_regs(struct em28xx *dev , u16 reg , char *buf , int len )
{
  int rc ;
  {
  rc = em28xx_write_regs_req(dev, 0, (int )reg, buf, len);
  if (rc >= 0) {
    if ((int )dev->reg_gpo_num == (int )reg) {
      dev->reg_gpo = (unsigned char )*buf;
    } else
    if ((int )dev->reg_gpio_num == (int )reg) {
      dev->reg_gpio = (unsigned char )*buf;
    } else {
    }
  } else {
  }
  return (rc);
}
}
int em28xx_write_reg(struct em28xx *dev , u16 reg , u8 val )
{
  int tmp ;
  {
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& val), 1);
  return (tmp);
}
}
int em28xx_write_reg_bits(struct em28xx *dev , u16 reg , u8 val , u8 bitmask )
{
  int oldval ;
  u8 newval ;
  int tmp ;
  {
  if ((int )dev->reg_gpo_num == (int )reg) {
    oldval = (int )dev->reg_gpo;
  } else
  if ((int )dev->reg_gpio_num == (int )reg) {
    oldval = (int )dev->reg_gpio;
  } else {
    oldval = em28xx_read_reg(dev, (int )reg);
  }
  if (oldval < 0) {
    return (oldval);
  } else {
  }
  newval = (u8 )(((int )((signed char )oldval) & ~ ((int )((signed char )bitmask))) | (int )((signed char )((int )val & (int )bitmask)));
  tmp = em28xx_write_regs(dev, (int )reg, (char *)(& newval), 1);
  return (tmp);
}
}
static int em28xx_is_ac97_ready(struct em28xx *dev )
{
  int ret ;
  int i ;
  {
  i = 0;
  goto ldv_36197;
  ldv_36196:
  ret = em28xx_read_reg(dev, 67);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((ret & 1) == 0) {
    return (0);
  } else {
  }
  i = i + 1;
  msleep(5U);
  ldv_36197: ;
  if (i <= 9) {
    goto ldv_36196;
  } else {
  }
  printk("\f%s: AC97 command still being executed: not handled properly!\n", (char *)(& dev->name));
  return (-16);
}
}
int em28xx_read_ac97(struct em28xx *dev , u8 reg )
{
  int ret ;
  u8 addr ;
  u16 val ;
  {
  addr = (unsigned int )reg | 128U;
  ret = em28xx_is_ac97_ready(dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = (*(dev->em28xx_read_reg_req_len))(dev, 0, 64, (char *)(& val), 2);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return ((int )val);
}
}
int em28xx_write_ac97(struct em28xx *dev , u8 reg , u16 val )
{
  int ret ;
  u8 addr ;
  __le16 value ;
  {
  addr = (unsigned int )reg & 127U;
  value = val;
  ret = em28xx_is_ac97_ready(dev);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 64, (char *)(& value), 2);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_regs(dev, 66, (char *)(& addr), 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static struct em28xx_vol_itable inputs[7U] = { {0, 20U},
        {1, 16U},
        {3, 12U},
        {4, 14U},
        {5, 18U},
        {6, 22U},
        {7, 24U}};
static int set_ac97_input(struct em28xx *dev )
{
  int ret ;
  int i ;
  enum em28xx_amux amux ;
  {
  amux = dev->ctl_ainput;
  if ((unsigned int )amux == 2U) {
    amux = 0;
  } else {
  }
  i = 0;
  goto ldv_36242;
  ldv_36241: ;
  if ((unsigned int )inputs[i].mux == (unsigned int )amux) {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 2056);
  } else {
    ret = em28xx_write_ac97(dev, (int )inputs[i].reg, 32768);
  }
  if (ret < 0) {
    printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )inputs[i].reg);
  } else {
  }
  i = i + 1;
  ldv_36242: ;
  if ((unsigned int )i <= 6U) {
    goto ldv_36241;
  } else {
  }
  return (0);
}
}
static int em28xx_set_audio_source(struct em28xx *dev )
{
  int ret ;
  u8 input ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    if (dev->ctl_ainput == 0U) {
      input = 13U;
    } else {
      input = 12U;
    }
    ret = em28xx_write_regs(dev, 8, (char *)(& input), 1);
    if (ret < 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    input = 192U;
  } else {
    switch (dev->ctl_ainput) {
    case 0U:
    input = 192U;
    goto ldv_36250;
    default:
    input = 128U;
    goto ldv_36250;
    }
    ldv_36250: ;
  }
  if ((unsigned long )dev->board.mute_gpio != (unsigned long )((struct em28xx_reg_seq *)0) && dev->mute != 0) {
    em28xx_gpio_set(dev, dev->board.mute_gpio);
  } else {
    em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
  }
  ret = em28xx_write_reg_bits(dev, 14, (int )input, 192);
  if (ret < 0) {
    return (ret);
  } else {
  }
  msleep(5U);
  switch ((unsigned int )dev->audio_mode.ac97) {
  case 0U: ;
  goto ldv_36253;
  default:
  ret = set_ac97_input(dev);
  }
  ldv_36253: ;
  return (ret);
}
}
static struct em28xx_vol_otable const outputs[5U] = { {1, 2U},
        {2, 4U},
        {4, 6U},
        {8, 54U},
        {16, 56U}};
int em28xx_audio_analog_set(struct em28xx *dev )
{
  int ret ;
  int i ;
  u8 xclk ;
  int vol ;
  int sel ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 1048UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    i = 0;
    goto ldv_36268;
    ldv_36267:
    ret = em28xx_write_ac97(dev, (int )outputs[i].reg, 32768);
    if (ret < 0) {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
    } else {
    }
    i = i + 1;
    ldv_36268: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_36267;
    } else {
    }
  } else {
  }
  xclk = (unsigned int )dev->board.xclk & 127U;
  if (dev->mute == 0) {
    xclk = (u8 )((unsigned int )xclk | 128U);
  } else {
  }
  ret = em28xx_write_reg(dev, 15, (int )xclk);
  if (ret < 0) {
    return (ret);
  } else {
  }
  msleep(10U);
  ret = em28xx_set_audio_source(dev);
  if ((unsigned int )dev->audio_mode.ac97 != 0U) {
    em28xx_write_ac97(dev, 38, 16896);
    em28xx_write_ac97(dev, 42, 49);
    em28xx_write_ac97(dev, 50, 48000);
    vol = (31 - dev->volume) | ((31 - dev->volume) << 8);
    if (dev->mute != 0) {
      vol = vol | 32768;
    } else {
    }
    i = 0;
    goto ldv_36274;
    ldv_36273: ;
    if ((dev->ctl_aoutput & (unsigned int )outputs[i].mux) != 0U) {
      ret = em28xx_write_ac97(dev, (int )outputs[i].reg, (int )((u16 )vol));
    } else {
    }
    if (ret < 0) {
      printk("\f%s: couldn\'t setup AC97 register %d\n", (char *)(& dev->name), (int )outputs[i].reg);
    } else {
    }
    i = i + 1;
    ldv_36274: ;
    if ((unsigned int )i <= 4U) {
      goto ldv_36273;
    } else {
    }
    if ((dev->ctl_aoutput & 128U) != 0U) {
      tmp = ac97_return_record_select((int )dev->ctl_aoutput);
      sel = tmp;
      sel = (sel << 8) | sel;
      em28xx_write_ac97(dev, 26, (int )((u16 )sel));
    } else {
    }
  } else {
  }
  return (ret);
}
}
int em28xx_audio_setup(struct em28xx *dev )
{
  int vid1 ;
  int vid2 ;
  int feat ;
  int cfg ;
  u32 vid ;
  int tmp ;
  {
  if (((unsigned int )dev->chip_id == 35U || (unsigned int )dev->chip_id == 65U) || (unsigned int )dev->chip_id == 113U) {
    dev->audio_mode.has_audio = 0U;
    dev->has_audio_class = 0U;
    dev->has_alsa_audio = 0U;
    return (0);
  } else {
  }
  dev->audio_mode.has_audio = 1U;
  cfg = em28xx_read_reg(dev, 0);
  printk("\016%s: Config register raw data: 0x%02x\n", (char *)(& dev->name), cfg);
  if (cfg < 0) {
    cfg = 16;
  } else
  if ((cfg & 48) == 0) {
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    return (0);
  } else
  if ((cfg & 48) == 32) {
    printk("\016%s: I2S Audio (3 sample rates)\n", (char *)(& dev->name));
    dev->audio_mode.i2s_3rates = 1U;
  } else
  if ((cfg & 48) == 48) {
    printk("\016%s: I2S Audio (5 sample rates)\n", (char *)(& dev->name));
    dev->audio_mode.i2s_5rates = 1U;
  } else {
  }
  if ((cfg & 48) != 16) {
    dev->audio_mode.ac97 = 0;
    goto init_audio;
  } else {
  }
  dev->audio_mode.ac97 = 3;
  vid1 = em28xx_read_ac97(dev, 124);
  if (vid1 < 0) {
    printk("\f%s: AC97 chip type couldn\'t be determined\n", (char *)(& dev->name));
    dev->audio_mode.ac97 = 0;
    dev->has_alsa_audio = 0U;
    dev->audio_mode.has_audio = 0U;
    goto init_audio;
  } else {
  }
  vid2 = em28xx_read_ac97(dev, 126);
  if (vid2 < 0) {
    goto init_audio;
  } else {
  }
  vid = (u32 )((vid1 << 16) | vid2);
  dev->audio_mode.ac97_vendor_id = vid;
  printk("\f%s: AC97 vendor ID = 0x%08x\n", (char *)(& dev->name), vid);
  feat = em28xx_read_ac97(dev, 0);
  if (feat < 0) {
    goto init_audio;
  } else {
  }
  dev->audio_mode.ac97_feat = (u16 )feat;
  printk("\f%s: AC97 features = 0x%04x\n", (char *)(& dev->name), feat);
  if ((vid == 4294967295U || vid == 2206496336U) && feat == 27280) {
    dev->audio_mode.ac97 = 1;
  } else
  if (vid >> 8 == 8619126U) {
    dev->audio_mode.ac97 = 2;
  } else {
  }
  init_audio: ;
  switch ((unsigned int )dev->audio_mode.ac97) {
  case 0U:
  printk("\016%s: No AC97 audio processor\n", (char *)(& dev->name));
  goto ldv_36293;
  case 1U:
  printk("\016%s: Empia 202 AC97 audio processor detected\n", (char *)(& dev->name));
  goto ldv_36293;
  case 2U:
  printk("\016%s: Sigmatel audio processor detected(stac 97%02x)\n", (char *)(& dev->name),
         dev->audio_mode.ac97_vendor_id & 255U);
  goto ldv_36293;
  case 3U:
  printk("\f%s: Unknown AC97 audio processor detected!\n", (char *)(& dev->name));
  goto ldv_36293;
  default: ;
  goto ldv_36293;
  }
  ldv_36293:
  tmp = em28xx_audio_analog_set(dev);
  return (tmp);
}
}
int em28xx_colorlevels_set_default(struct em28xx *dev )
{
  int tmp ;
  {
  em28xx_write_reg(dev, 32, 16);
  em28xx_write_reg(dev, 33, 0);
  em28xx_write_reg(dev, 34, 16);
  em28xx_write_reg(dev, 35, 0);
  em28xx_write_reg(dev, 36, 0);
  em28xx_write_reg(dev, 37, 0);
  em28xx_write_reg(dev, 20, 32);
  em28xx_write_reg(dev, 21, 32);
  em28xx_write_reg(dev, 22, 32);
  em28xx_write_reg(dev, 23, 32);
  em28xx_write_reg(dev, 24, 0);
  em28xx_write_reg(dev, 25, 0);
  tmp = em28xx_write_reg(dev, 26, 0);
  return (tmp);
}
}
int em28xx_capture_start(struct em28xx *dev , int start )
{
  int rc ;
  {
  if (((unsigned int )dev->chip_id == 65U || (unsigned int )dev->chip_id == 68U) || (unsigned int )dev->chip_id == 113U) {
    if (start == 0) {
      rc = em28xx_write_reg_bits(dev, 95, 0, 1);
      return (rc);
    } else {
    }
    rc = em28xx_write_reg_bits(dev, 95, 1, 1);
    return (rc);
  } else {
  }
  rc = em28xx_write_reg_bits(dev, 12, start != 0 ? 16 : 0, 16);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (start == 0) {
    rc = em28xx_write_reg(dev, 18, 39);
    return (rc);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    rc = em28xx_write_reg(dev, 19, 12);
  } else {
  }
  rc = em28xx_write_reg(dev, 72, 0);
  if ((unsigned int )dev->mode == 1U) {
    rc = em28xx_write_reg(dev, 18, 103);
  } else {
    rc = em28xx_write_reg(dev, 18, 55);
  }
  msleep(6U);
  return (rc);
}
}
int em28xx_vbi_supported(struct em28xx *dev )
{
  {
  if (disable_vbi == 1U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )dev->chip_id == 34U || (unsigned int )dev->chip_id == 36U) {
    return (1);
  } else {
  }
  return (0);
}
}
int em28xx_set_outfmt(struct em28xx *dev )
{
  int ret ;
  u8 fmt ;
  u8 vinctrl ;
  int tmp ;
  int tmp___0 ;
  {
  fmt = (u8 )(dev->format)->reg;
  if ((unsigned int )*((unsigned char *)dev + 44UL) == 0U) {
    fmt = (u8 )((unsigned int )fmt | 32U);
  } else {
  }
  ret = em28xx_write_reg(dev, 39, (int )fmt);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = em28xx_write_reg(dev, 16, (int )((u8 )dev->vinmode));
  if (ret < 0) {
    return (ret);
  } else {
  }
  vinctrl = (u8 )dev->vinctl;
  tmp = em28xx_vbi_supported(dev);
  if (tmp == 1) {
    vinctrl = (u8 )((unsigned int )vinctrl | 64U);
    em28xx_write_reg(dev, 52, 0);
    em28xx_write_reg(dev, 54, (int )((u8 )(dev->vbi_width / 4U)));
    em28xx_write_reg(dev, 55, (int )((u8 )dev->vbi_height));
    if ((dev->norm & 63744ULL) != 0ULL) {
      em28xx_write_reg(dev, 53, 9);
    } else
    if ((dev->norm & 16713471ULL) != 0ULL) {
      em28xx_write_reg(dev, 53, 7);
    } else {
    }
  } else {
  }
  tmp___0 = em28xx_write_reg(dev, 17, (int )vinctrl);
  return (tmp___0);
}
}
static int em28xx_accumulator_set(struct em28xx *dev , u8 xmin , u8 xmax , u8 ymin ,
                                  u8 ymax )
{
  int tmp ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx Scale: (%d,%d)-(%d,%d)\n", (char *)(& dev->name), "em28xx_accumulator_set",
           (int )xmin, (int )ymin, (int )xmax, (int )ymax);
  } else {
  }
  em28xx_write_regs(dev, 40, (char *)(& xmin), 1);
  em28xx_write_regs(dev, 41, (char *)(& xmax), 1);
  em28xx_write_regs(dev, 42, (char *)(& ymin), 1);
  tmp = em28xx_write_regs(dev, 43, (char *)(& ymax), 1);
  return (tmp);
}
}
static void em28xx_capture_area_set(struct em28xx *dev , u8 hstart , u8 vstart , u16 width ,
                                    u16 height )
{
  u8 cwidth ;
  u8 cheight ;
  u8 overflow ;
  {
  cwidth = (u8 )((int )width >> 2);
  cheight = (u8 )((int )height >> 2);
  overflow = (u8 )(((int )((signed char )((int )height >> 9)) & 2) | ((int )((signed char )((int )width >> 10)) & 1));
  if (core_debug != 0U) {
    printk("\016%s %s :capture area set to (%d,%d): %dx%d\n", (char *)(& dev->name),
           "em28xx_capture_area_set", (int )hstart, (int )vstart, (((int )overflow & 2) << 9) | ((int )cwidth << 2),
           (((int )overflow & 1) << 10) | ((int )cheight << 2));
  } else {
  }
  em28xx_write_regs(dev, 28, (char *)(& hstart), 1);
  em28xx_write_regs(dev, 29, (char *)(& vstart), 1);
  em28xx_write_regs(dev, 30, (char *)(& cwidth), 1);
  em28xx_write_regs(dev, 31, (char *)(& cheight), 1);
  em28xx_write_regs(dev, 27, (char *)(& overflow), 1);
  if ((unsigned int )*((unsigned char *)dev + 44UL) != 0U) {
    em28xx_write_reg(dev, 52, (int )((u8 )((int )width >> 4)));
    em28xx_write_reg(dev, 53, (int )((u8 )((int )height >> 4)));
  } else {
  }
  return;
}
}
static int em28xx_scaler_set(struct em28xx *dev , u16 h , u16 v )
{
  u8 mode ;
  u8 buf[2U] ;
  int tmp ;
  {
  if ((unsigned int )*((unsigned char *)dev + 728UL) != 0U) {
    mode = (u8 )(((unsigned int )v != 0U ? 32 : 0) | ((unsigned int )h != 0U ? 16 : 0));
  } else {
    buf[0] = (u8 )h;
    buf[1] = (u8 )((int )h >> 8);
    em28xx_write_regs(dev, 48, (char *)(& buf), 2);
    buf[0] = (u8 )v;
    buf[1] = (u8 )((int )v >> 8);
    em28xx_write_regs(dev, 50, (char *)(& buf), 2);
    mode = (unsigned int )h != 0U || (unsigned int )v != 0U ? 48U : 0U;
  }
  tmp = em28xx_write_reg_bits(dev, 38, (int )mode, 48);
  return (tmp);
}
}
int em28xx_resolution_set(struct em28xx *dev )
{
  int width ;
  int height ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = norm_maxw(dev);
  width = (int )tmp;
  tmp___0 = norm_maxh(dev);
  height = (int )tmp___0;
  dev->vbi_width = 720U;
  if ((dev->norm & 63744ULL) != 0ULL) {
    dev->vbi_height = 12U;
  } else {
    dev->vbi_height = 18U;
  }
  em28xx_set_outfmt(dev);
  em28xx_accumulator_set(dev, 1, (int )((u8 )((width + -4) >> 2)), 1, (int )((u8 )((height + -4) >> 2)));
  tmp___1 = em28xx_vbi_supported(dev);
  if (tmp___1 == 1) {
    em28xx_capture_area_set(dev, 0, 2, (int )((u16 )width), (int )((u16 )height));
  } else {
    em28xx_capture_area_set(dev, 0, 0, (int )((u16 )width), (int )((u16 )height));
  }
  tmp___2 = em28xx_scaler_set(dev, (int )((u16 )dev->hscale), (int )((u16 )dev->vscale));
  return (tmp___2);
}
}
int em28xx_set_alternate(struct em28xx *dev )
{
  int errCode ;
  int i ;
  unsigned int min_pkt_size ;
  {
  min_pkt_size = (unsigned int )((dev->width + 2) * 2);
  dev->alt = 0;
  if (alt > 0 && dev->num_alt > alt) {
    if (core_debug != 0U) {
      printk("\016%s %s :alternate forced to %d\n", (char *)(& dev->name), "em28xx_set_alternate",
             dev->alt);
    } else {
    }
    dev->alt = alt;
    goto set_alt;
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 9864UL) != 0U) {
    goto set_alt;
  } else {
  }
  if ((dev->width * 2) * dev->height > 345600) {
    min_pkt_size = min_pkt_size * 2U;
  } else {
  }
  i = 0;
  goto ldv_36362;
  ldv_36361: ;
  if (*(dev->alt_max_pkt_size_isoc + (unsigned long )i) >= min_pkt_size) {
    dev->alt = i;
    goto ldv_36360;
  } else
  if (*(dev->alt_max_pkt_size_isoc + (unsigned long )i) > *(dev->alt_max_pkt_size_isoc + (unsigned long )dev->alt)) {
    dev->alt = i;
  } else {
  }
  i = i + 1;
  ldv_36362: ;
  if (dev->num_alt > i) {
    goto ldv_36361;
  } else {
  }
  ldv_36360: ;
  set_alt: ;
  if ((unsigned int )*((unsigned char *)dev + 9864UL) != 0U) {
    dev->max_pkt_size = 512;
    dev->packet_multiplier = 384;
  } else {
    if (core_debug != 0U) {
      printk("\016%s %s :minimum isoc packet size: %u (alt=%d)\n", (char *)(& dev->name),
             "em28xx_set_alternate", min_pkt_size, dev->alt);
    } else {
    }
    dev->max_pkt_size = (int )*(dev->alt_max_pkt_size_isoc + (unsigned long )dev->alt);
    dev->packet_multiplier = 64;
  }
  if (core_debug != 0U) {
    printk("\016%s %s :setting alternate %d with wMaxPacketSize=%u\n", (char *)(& dev->name),
           "em28xx_set_alternate", dev->alt, dev->max_pkt_size);
  } else {
  }
  errCode = usb_set_interface(dev->udev, 0, dev->alt);
  if (errCode < 0) {
    printk("\v%s: cannot change alternate number to %d (error=%i)\n", (char *)(& dev->name),
           dev->alt, errCode);
    return (errCode);
  } else {
  }
  return (0);
}
}
int em28xx_gpio_set(struct em28xx *dev , struct em28xx_reg_seq *gpio )
{
  int rc ;
  {
  rc = 0;
  if ((unsigned long )gpio == (unsigned long )((struct em28xx_reg_seq *)0)) {
    return (rc);
  } else {
  }
  if ((unsigned int )dev->mode != 0U) {
    em28xx_write_reg(dev, 72, 0);
    if ((unsigned int )dev->mode == 1U) {
      em28xx_write_reg(dev, 18, 103);
    } else {
      em28xx_write_reg(dev, 18, 55);
    }
    msleep(6U);
  } else {
  }
  goto ldv_36369;
  ldv_36368: ;
  if (gpio->reg >= 0) {
    rc = em28xx_write_reg_bits(dev, (int )((u16 )gpio->reg), (int )gpio->val, (int )gpio->mask);
    if (rc < 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if (gpio->sleep > 0) {
    msleep((unsigned int )gpio->sleep);
  } else {
  }
  gpio = gpio + 1;
  ldv_36369: ;
  if (gpio->sleep >= 0) {
    goto ldv_36368;
  } else {
  }
  return (rc);
}
}
int em28xx_set_mode(struct em28xx *dev , enum em28xx_mode set_mode )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  if ((unsigned int )dev->mode == (unsigned int )set_mode) {
    return (0);
  } else {
  }
  if ((unsigned int )set_mode == 0U) {
    dev->mode = set_mode;
    tmp = em28xx_gpio_set(dev, dev->board.suspend_gpio);
    return (tmp);
  } else {
  }
  dev->mode = set_mode;
  if ((unsigned int )dev->mode == 2U) {
    tmp___0 = em28xx_gpio_set(dev, dev->board.dvb_gpio);
    return (tmp___0);
  } else {
    tmp___1 = em28xx_gpio_set(dev, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->gpio);
    return (tmp___1);
  }
}
}
static void em28xx_irq_callback(struct urb *urb )
{
  struct em28xx *dev ;
  int i ;
  {
  dev = (struct em28xx *)urb->context;
  switch (urb->status) {
  case 0: ;
  case -110: ;
  goto ldv_36396;
  case -104: ;
  case -2: ;
  case -108: ;
  return;
  default: ;
  if (core_debug != 0U) {
    printk("\016%s %s :urb completition error %d.\n", (char *)(& dev->name), "em28xx_irq_callback",
           urb->status);
  } else {
  }
  goto ldv_36396;
  }
  ldv_36396:
  spin_lock(& dev->slock);
  (*(dev->usb_ctl.urb_data_copy))(dev, urb);
  spin_unlock(& dev->slock);
  i = 0;
  goto ldv_36403;
  ldv_36402:
  urb->iso_frame_desc[i].status = 0;
  urb->iso_frame_desc[i].actual_length = 0U;
  i = i + 1;
  ldv_36403: ;
  if (urb->number_of_packets > i) {
    goto ldv_36402;
  } else {
  }
  urb->status = 0;
  urb->status = usb_submit_urb(urb, 32U);
  if (urb->status != 0) {
    if (core_debug != 0U) {
      printk("\016%s %s :urb resubmit failed (error=%i)\n", (char *)(& dev->name),
             "em28xx_irq_callback", urb->status);
    } else {
    }
  } else {
  }
  return;
}
}
void em28xx_uninit_usb_xfer(struct em28xx *dev , enum em28xx_mode mode )
{
  struct urb *urb ;
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  unsigned long _flags ;
  int tmp ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_uninit_usb_xfer in mode %d\n", (char *)(& dev->name),
           "em28xx_uninit_usb_xfer", (unsigned int )mode);
  } else {
  }
  if ((unsigned int )mode == 2U) {
    usb_bufs = & dev->usb_ctl.digital_bufs;
  } else {
    usb_bufs = & dev->usb_ctl.analog_bufs;
  }
  i = 0;
  goto ldv_36423;
  ldv_36422:
  urb = *(usb_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
    if ((unsigned long )*(usb_bufs->transfer_buffer + (unsigned long )i) != (unsigned long )((char *)0)) {
      usb_free_coherent(dev->udev, (size_t )urb->transfer_buffer_length, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                        urb->transfer_dma);
    } else {
    }
    usb_free_urb(urb);
    *(usb_bufs->urb + (unsigned long )i) = 0;
  } else {
  }
  *(usb_bufs->transfer_buffer + (unsigned long )i) = 0;
  i = i + 1;
  ldv_36423: ;
  if (usb_bufs->num_bufs > i) {
    goto ldv_36422;
  } else {
  }
  kfree((void const *)usb_bufs->urb);
  kfree((void const *)usb_bufs->transfer_buffer);
  usb_bufs->urb = 0;
  usb_bufs->transfer_buffer = 0;
  usb_bufs->num_bufs = 0;
  em28xx_capture_start(dev, 0);
  return;
}
}
void em28xx_stop_urbs(struct em28xx *dev )
{
  int i ;
  struct urb *urb ;
  struct em28xx_usb_bufs *isoc_bufs ;
  unsigned long _flags ;
  int tmp ;
  {
  isoc_bufs = & dev->usb_ctl.digital_bufs;
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_stop_urbs\n", (char *)(& dev->name),
           "em28xx_stop_urbs");
  } else {
  }
  i = 0;
  goto ldv_36449;
  ldv_36448:
  urb = *(isoc_bufs->urb + (unsigned long )i);
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    _flags = arch_local_save_flags();
    tmp = arch_irqs_disabled_flags(_flags);
    if (tmp == 0) {
      usb_kill_urb(urb);
    } else {
      usb_unlink_urb(urb);
    }
  } else {
  }
  i = i + 1;
  ldv_36449: ;
  if (isoc_bufs->num_bufs > i) {
    goto ldv_36448;
  } else {
  }
  em28xx_capture_start(dev, 0);
  return;
}
}
int em28xx_alloc_urbs(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                      int num_bufs , int max_pkt_size , int packet_multiplier )
{
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  int sb_size ;
  int pipe ;
  struct urb *urb ;
  int j ;
  int k ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct thread_info *tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_alloc_isoc in mode %d\n", (char *)(& dev->name),
           "em28xx_alloc_urbs", (unsigned int )mode);
  } else {
  }
  if ((unsigned int )mode == 2U) {
    if ((xfer_bulk != 0 && (unsigned int )dev->dvb_ep_bulk == 0U) || (xfer_bulk == 0 && (unsigned int )dev->dvb_ep_isoc == 0U)) {
      printk("\v%s: no endpoint for DVB mode and transfer type %d\n", (char *)(& dev->name),
             xfer_bulk > 0);
      return (-22);
    } else {
    }
    usb_bufs = & dev->usb_ctl.digital_bufs;
  } else
  if ((unsigned int )mode == 1U) {
    if ((xfer_bulk != 0 && (unsigned int )dev->analog_ep_bulk == 0U) || (xfer_bulk == 0 && (unsigned int )dev->analog_ep_isoc == 0U)) {
      printk("\v%s: no endpoint for analog mode and transfer type %d\n", (char *)(& dev->name),
             xfer_bulk > 0);
      return (-22);
    } else {
    }
    usb_bufs = & dev->usb_ctl.analog_bufs;
  } else {
    printk("\v%s: invalid mode selected\n", (char *)(& dev->name));
    return (-22);
  }
  em28xx_uninit_usb_xfer(dev, mode);
  usb_bufs->num_bufs = num_bufs;
  tmp = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  usb_bufs->urb = (struct urb **)tmp;
  if ((unsigned long )usb_bufs->urb == (unsigned long )((struct urb **)0)) {
    printk("\v%s: cannot alloc memory for usb buffers\n", (char *)(& dev->name));
    return (-12);
  } else {
  }
  tmp___0 = kzalloc((unsigned long )num_bufs * 8UL, 208U);
  usb_bufs->transfer_buffer = (char **)tmp___0;
  if ((unsigned long )usb_bufs->transfer_buffer == (unsigned long )((char **)0)) {
    printk("\v%s: cannot allocate memory for usb transfer\n", (char *)(& dev->name));
    kfree((void const *)usb_bufs->urb);
    return (-12);
  } else {
  }
  usb_bufs->max_pkt_size = max_pkt_size;
  if (xfer_bulk != 0) {
    usb_bufs->num_packets = 0;
  } else {
    usb_bufs->num_packets = packet_multiplier;
  }
  dev->usb_ctl.vid_buf = 0;
  dev->usb_ctl.vbi_buf = 0;
  sb_size = usb_bufs->max_pkt_size * packet_multiplier;
  i = 0;
  goto ldv_36477;
  ldv_36476:
  urb = usb_alloc_urb(usb_bufs->num_packets, 208U);
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    printk("\vcannot alloc usb_ctl.urb %i\n", i);
    em28xx_uninit_usb_xfer(dev, mode);
    return (-12);
  } else {
  }
  *(usb_bufs->urb + (unsigned long )i) = urb;
  tmp___1 = usb_alloc_coherent(dev->udev, (size_t )sb_size, 208U, & urb->transfer_dma);
  *(usb_bufs->transfer_buffer + (unsigned long )i) = (char *)tmp___1;
  if ((unsigned long )*(usb_bufs->transfer_buffer + (unsigned long )i) == (unsigned long )((char *)0)) {
    tmp___2 = current_thread_info();
    printk("\vunable to allocate %i bytes for transfer buffer %i%s\n", sb_size, i,
           ((unsigned long )tmp___2->preempt_count & 134217472UL) != 0UL ? (char *)" while in int" : (char *)"");
    em28xx_uninit_usb_xfer(dev, mode);
    return (-12);
  } else {
  }
  memset((void *)*(usb_bufs->transfer_buffer + (unsigned long )i), 0, (size_t )sb_size);
  if (xfer_bulk != 0) {
    tmp___3 = __create_pipe(dev->udev, (unsigned int )((unsigned int )mode == 1U ? dev->analog_ep_bulk : dev->dvb_ep_bulk));
    pipe = (int )(tmp___3 | 3221225600U);
    usb_fill_bulk_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                      sb_size, & em28xx_irq_callback, (void *)dev);
    urb->transfer_flags = 4U;
  } else {
    tmp___4 = __create_pipe(dev->udev, (unsigned int )((unsigned int )mode == 1U ? dev->analog_ep_isoc : dev->dvb_ep_isoc));
    pipe = (int )(tmp___4 | 128U);
    usb_fill_int_urb(urb, dev->udev, (unsigned int )pipe, (void *)*(usb_bufs->transfer_buffer + (unsigned long )i),
                     sb_size, & em28xx_irq_callback, (void *)dev, 1);
    urb->transfer_flags = 6U;
    k = 0;
    j = 0;
    goto ldv_36474;
    ldv_36473:
    urb->iso_frame_desc[j].offset = (unsigned int )k;
    urb->iso_frame_desc[j].length = (unsigned int )usb_bufs->max_pkt_size;
    k = usb_bufs->max_pkt_size + k;
    j = j + 1;
    ldv_36474: ;
    if (usb_bufs->num_packets > j) {
      goto ldv_36473;
    } else {
    }
  }
  urb->number_of_packets = usb_bufs->num_packets;
  i = i + 1;
  ldv_36477: ;
  if (usb_bufs->num_bufs > i) {
    goto ldv_36476;
  } else {
  }
  return (0);
}
}
int em28xx_init_usb_xfer(struct em28xx *dev , enum em28xx_mode mode , int xfer_bulk ,
                         int num_bufs , int max_pkt_size , int packet_multiplier ,
                         int (*urb_data_copy)(struct em28xx * , struct urb * ) )
{
  struct em28xx_dmaqueue *dma_q ;
  struct em28xx_dmaqueue *vbi_dma_q ;
  struct em28xx_usb_bufs *usb_bufs ;
  int i ;
  int rc ;
  int alloc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  dma_q = & dev->vidq;
  vbi_dma_q = & dev->vbiq;
  if (core_debug != 0U) {
    printk("\016%s %s :em28xx: called em28xx_init_usb_xfer in mode %d\n", (char *)(& dev->name),
           "em28xx_init_usb_xfer", (unsigned int )mode);
  } else {
  }
  dev->usb_ctl.urb_data_copy = urb_data_copy;
  if ((unsigned int )mode == 2U) {
    usb_bufs = & dev->usb_ctl.digital_bufs;
    alloc = 0;
  } else {
    usb_bufs = & dev->usb_ctl.analog_bufs;
    alloc = 1;
  }
  if (alloc != 0) {
    rc = em28xx_alloc_urbs(dev, mode, xfer_bulk, num_bufs, max_pkt_size, packet_multiplier);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if (xfer_bulk != 0) {
    rc = usb_clear_halt(dev->udev, (int )(*(usb_bufs->urb))->pipe);
    if (rc < 0) {
      printk("\vfailed to clear USB bulk endpoint stall/halt condition (error=%i)\n",
             rc);
      em28xx_uninit_usb_xfer(dev, mode);
      return (rc);
    } else {
    }
  } else {
  }
  __init_waitqueue_head(& dma_q->wq, "&dma_q->wq", & __key);
  __init_waitqueue_head(& vbi_dma_q->wq, "&vbi_dma_q->wq", & __key___0);
  em28xx_capture_start(dev, 1);
  i = 0;
  goto ldv_36511;
  ldv_36510:
  rc = usb_submit_urb(*(usb_bufs->urb + (unsigned long )i), 32U);
  if (rc != 0) {
    printk("\vsubmit of urb %i failed (error=%i)\n", i, rc);
    em28xx_uninit_usb_xfer(dev, mode);
    return (rc);
  } else {
  }
  i = i + 1;
  ldv_36511: ;
  if (usb_bufs->num_bufs > i) {
    goto ldv_36510;
  } else {
  }
  return (0);
}
}
void em28xx_wake_i2c(struct em28xx *dev )
{
  struct v4l2_subdev *__sd ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct v4l2_subdev *__sd___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct v4l2_subdev *__sd___1 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  {
  __mptr = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd = (struct v4l2_subdev *)__mptr + 0xffffffffffffff80UL;
  goto ldv_36534;
  ldv_36533: ;
  if ((unsigned long )(__sd->ops)->core != (unsigned long )((struct v4l2_subdev_core_ops const * )0) && (unsigned long )((__sd->ops)->core)->reset != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                         u32 ))0)) {
    (*(((__sd->ops)->core)->reset))(__sd, 0U);
  } else {
  }
  __mptr___0 = (struct list_head const *)__sd->list.next;
  __sd = (struct v4l2_subdev *)__mptr___0 + 0xffffffffffffff80UL;
  ldv_36534: ;
  if ((unsigned long )(& __sd->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_36533;
  } else {
  }
  __mptr___1 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___1 + 0xffffffffffffff80UL;
  goto ldv_36542;
  ldv_36541: ;
  if ((unsigned long )(__sd___0->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd___0->ops)->video)->s_routing != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ,
                                                                                                                                                                                                                        u32 ))0)) {
    (*(((__sd___0->ops)->video)->s_routing))(__sd___0, ((struct em28xx_input *)(& em28xx_boards[dev->model].input) + (unsigned long )dev->ctl_input)->vmux,
                                             0U, 0U);
  } else {
  }
  __mptr___2 = (struct list_head const *)__sd___0->list.next;
  __sd___0 = (struct v4l2_subdev *)__mptr___2 + 0xffffffffffffff80UL;
  ldv_36542: ;
  if ((unsigned long )(& __sd___0->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_36541;
  } else {
  }
  __mptr___3 = (struct list_head const *)dev->v4l2_dev.subdevs.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___3 + 0xffffffffffffff80UL;
  goto ldv_36550;
  ldv_36549: ;
  if ((unsigned long )(__sd___1->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((__sd___1->ops)->video)->s_stream != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       int ))0)) {
    (*(((__sd___1->ops)->video)->s_stream))(__sd___1, 0);
  } else {
  }
  __mptr___4 = (struct list_head const *)__sd___1->list.next;
  __sd___1 = (struct v4l2_subdev *)__mptr___4 + 0xffffffffffffff80UL;
  ldv_36550: ;
  if ((unsigned long )(& __sd___1->list) != (unsigned long )(& dev->v4l2_dev.subdevs)) {
    goto ldv_36549;
  } else {
  }
  return;
}
}
static struct list_head em28xx_devlist = {& em28xx_devlist, & em28xx_devlist};
static struct mutex em28xx_devlist_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "em28xx_devlist_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& em28xx_devlist_mutex.wait_list,
                                                                                  & em28xx_devlist_mutex.wait_list},
    0, 0, (void *)(& em28xx_devlist_mutex), {0, {0, 0}, "em28xx_devlist_mutex", 0,
                                             0UL}};
static struct list_head em28xx_extension_devlist = {& em28xx_extension_devlist, & em28xx_extension_devlist};
int em28xx_register_extension(struct em28xx_ops *ops )
{
  struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = 0;
  ldv_mutex_lock_81(& em28xx_devlist_mutex);
  list_add_tail(& ops->next, & em28xx_extension_devlist);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffc08UL;
  goto ldv_36565;
  ldv_36564:
  (*(ops->init))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffc08UL;
  ldv_36565: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_36564;
  } else {
  }
  ldv_mutex_unlock_82(& em28xx_devlist_mutex);
  printk("\016Em28xx: Initialized (%s) extension\n", ops->name);
  return (0);
}
}
void em28xx_unregister_extension(struct em28xx_ops *ops )
{
  struct em28xx *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  dev = 0;
  ldv_mutex_lock_83(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_devlist.next;
  dev = (struct em28xx *)__mptr + 0xfffffffffffffc08UL;
  goto ldv_36582;
  ldv_36581:
  (*(ops->fini))(dev);
  __mptr___0 = (struct list_head const *)dev->devlist.next;
  dev = (struct em28xx *)__mptr___0 + 0xfffffffffffffc08UL;
  ldv_36582: ;
  if ((unsigned long )(& dev->devlist) != (unsigned long )(& em28xx_devlist)) {
    goto ldv_36581;
  } else {
  }
  list_del(& ops->next);
  ldv_mutex_unlock_84(& em28xx_devlist_mutex);
  printk("\016Em28xx: Removed (%s) extension\n", ops->name);
  return;
}
}
void em28xx_init_extension(struct em28xx *dev )
{
  struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ops = 0;
  ldv_mutex_lock_85(& em28xx_devlist_mutex);
  list_add_tail(& dev->devlist, & em28xx_devlist);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  goto ldv_36599;
  ldv_36598: ;
  if ((unsigned long )ops->init != (unsigned long )((int (* )(struct em28xx * ))0)) {
    (*(ops->init))(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_36599: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_36598;
  } else {
  }
  ldv_mutex_unlock_86(& em28xx_devlist_mutex);
  return;
}
}
void em28xx_close_extension(struct em28xx *dev )
{
  struct em28xx_ops const *ops ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ops = 0;
  ldv_mutex_lock_87(& em28xx_devlist_mutex);
  __mptr = (struct list_head const *)em28xx_extension_devlist.next;
  ops = (struct em28xx_ops const *)__mptr;
  goto ldv_36610;
  ldv_36609: ;
  if ((unsigned long )ops->fini != (unsigned long )((int (* )(struct em28xx * ))0)) {
    (*(ops->fini))(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)ops->next.next;
  ops = (struct em28xx_ops const *)__mptr___0;
  ldv_36610: ;
  if ((unsigned long )(& ops->next) != (unsigned long )((struct list_head const *)(& em28xx_extension_devlist))) {
    goto ldv_36609;
  } else {
  }
  list_del(& dev->devlist);
  ldv_mutex_unlock_88(& em28xx_devlist_mutex);
  return;
}
}
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_80(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_81(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_82(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_84(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_em28xx_devlist_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 ) ;
static int vbi_queue_setup(struct vb2_queue *vq , struct v4l2_format const *fmt ,
                           unsigned int *nbuffers , unsigned int *nplanes , unsigned int *sizes ,
                           void **alloc_ctxs )
{
  struct em28xx *dev ;
  void *tmp ;
  unsigned long size ;
  {
  tmp = vb2_get_drv_priv(vq);
  dev = (struct em28xx *)tmp;
  if ((unsigned long )fmt != (unsigned long )((struct v4l2_format const *)0)) {
    size = (unsigned long )fmt->fmt.pix.sizeimage;
  } else {
    size = (unsigned long )((dev->vbi_width * dev->vbi_height) * 2U);
  }
  if (*nbuffers == 0U) {
    *nbuffers = 32U;
  } else {
  }
  if (*nbuffers <= 1U) {
    *nbuffers = 2U;
  } else {
  }
  if (*nbuffers > 32U) {
    *nbuffers = 32U;
  } else {
  }
  *nplanes = 1U;
  *sizes = (unsigned int )size;
  return (0);
}
}
static int vbi_buffer_prepare(struct vb2_buffer *vb )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  unsigned long size ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  dev = (struct em28xx *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  size = (unsigned long )((dev->vbi_width * dev->vbi_height) * 2U);
  tmp___1 = vb2_plane_size(vb, 0U);
  if (tmp___1 < size) {
    tmp___0 = vb2_plane_size(vb, 0U);
    printk("\016%s data will not fit into plane (%lu < %lu)\n", "vbi_buffer_prepare",
           tmp___0, size);
    return (-22);
  } else {
  }
  vb2_set_plane_payload(& buf->vb, 0U, size);
  return (0);
}
}
static void vbi_buffer_queue(struct vb2_buffer *vb )
{
  struct em28xx *dev ;
  void *tmp ;
  struct em28xx_buffer *buf ;
  struct vb2_buffer const *__mptr ;
  struct em28xx_dmaqueue *vbiq ;
  unsigned long flags ;
  unsigned long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = vb2_get_drv_priv(vb->vb2_queue);
  dev = (struct em28xx *)tmp;
  __mptr = (struct vb2_buffer const *)vb;
  buf = (struct em28xx_buffer *)__mptr;
  vbiq = & dev->vbiq;
  flags = 0UL;
  buf->mem = vb2_plane_vaddr(vb, 0U);
  tmp___0 = vb2_plane_size(vb, 0U);
  buf->length = (unsigned int )tmp___0;
  tmp___1 = spinlock_check(& dev->slock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  list_add_tail(& buf->list, & vbiq->active);
  spin_unlock_irqrestore(& dev->slock, flags);
  return;
}
}
struct vb2_ops em28xx_vbi_qops =
     {& vbi_queue_setup, & vb2_ops_wait_prepare, & vb2_ops_wait_finish, 0, & vbi_buffer_prepare,
    0, 0, & em28xx_start_analog_streaming, & em28xx_stop_vbi_streaming, & vbi_buffer_queue};
void ldv_main4_sequence_infinite_withcheck_stateful(void)
{
  struct vb2_buffer *var_group1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_32740;
  ldv_32739:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  vbi_buffer_prepare(var_group1);
  goto ldv_32736;
  case 1:
  ldv_handler_precall();
  vbi_buffer_queue(var_group1);
  goto ldv_32736;
  default: ;
  goto ldv_32736;
  }
  ldv_32736: ;
  ldv_32740:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_32739;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_114(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_115(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
int ldv_mutex_trylock_126(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_125(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock ) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device * , struct i2c_adapter * ,
                                                     struct i2c_board_info * , unsigned short const * ) ;
static unsigned short micron_sensor_addrs[4U] = { 92U, 93U, 72U, 65534U};
static unsigned short omnivision_sensor_addrs[3U] = { 33U, 48U, 65534U};
static struct soc_camera_link camlink =
     {0UL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "em28xx", 0, 0};
static int em28xx_initialize_mt9m111(struct em28xx *dev )
{
  int i ;
  unsigned char regs[4U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 10U;
  regs[2][1] = 0U;
  regs[2][2] = 33U;
  regs[3][0] = 33U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  i = 0;
  goto ldv_32111;
  ldv_32110:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs) + (unsigned long )i, 3);
  i = i + 1;
  ldv_32111: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_32110;
  } else {
  }
  return (0);
}
}
static int em28xx_initialize_mt9m001(struct em28xx *dev )
{
  int i ;
  unsigned char regs[13U][3U] ;
  {
  regs[0][0] = 13U;
  regs[0][1] = 0U;
  regs[0][2] = 1U;
  regs[1][0] = 13U;
  regs[1][1] = 0U;
  regs[1][2] = 0U;
  regs[2][0] = 4U;
  regs[2][1] = 5U;
  regs[2][2] = 0U;
  regs[3][0] = 3U;
  regs[3][1] = 4U;
  regs[3][2] = 0U;
  regs[4][0] = 32U;
  regs[4][1] = 17U;
  regs[4][2] = 0U;
  regs[5][0] = 6U;
  regs[5][1] = 0U;
  regs[5][2] = 16U;
  regs[6][0] = 43U;
  regs[6][1] = 0U;
  regs[6][2] = 36U;
  regs[7][0] = 46U;
  regs[7][1] = 0U;
  regs[7][2] = 36U;
  regs[8][0] = 53U;
  regs[8][1] = 0U;
  regs[8][2] = 36U;
  regs[9][0] = 45U;
  regs[9][1] = 0U;
  regs[9][2] = 32U;
  regs[10][0] = 44U;
  regs[10][1] = 0U;
  regs[10][2] = 32U;
  regs[11][0] = 9U;
  regs[11][1] = 10U;
  regs[11][2] = 212U;
  regs[12][0] = 53U;
  regs[12][1] = 0U;
  regs[12][2] = 87U;
  i = 0;
  goto ldv_32121;
  ldv_32120:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs) + (unsigned long )i, 3);
  i = i + 1;
  ldv_32121: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_32120;
  } else {
  }
  return (0);
}
}
static int em28xx_probe_sensor_micron(struct em28xx *dev )
{
  int ret ;
  int i ;
  char *name ;
  u8 reg ;
  __be16 id_be ;
  u16 id ;
  struct i2c_client client ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  {
  client = dev->i2c_client[dev->def_i2c_bus];
  dev->em28xx_sensor = 0;
  i = 0;
  goto ldv_32146;
  ldv_32145:
  client.addr = micron_sensor_addrs[i];
  reg = 0U;
  ret = i2c_master_send((struct i2c_client const *)(& client), (char const *)(& reg),
                        1);
  if (ret < 0) {
    if (ret != -19) {
      printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
             (int )client.addr << 1, ret);
    } else {
    }
    goto ldv_32133;
  } else {
  }
  ret = i2c_master_recv((struct i2c_client const *)(& client), (char *)(& id_be),
                        2);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32133;
  } else {
  }
  tmp = __fswab16((int )id_be);
  id = tmp;
  reg = 255U;
  ret = i2c_master_send((struct i2c_client const *)(& client), (char const *)(& reg),
                        1);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32133;
  } else {
  }
  ret = i2c_master_recv((struct i2c_client const *)(& client), (char *)(& id_be),
                        2);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32133;
  } else {
  }
  tmp___0 = __fswab16((int )id_be);
  if ((int )tmp___0 != (int )id) {
    goto ldv_32133;
  } else {
  }
  tmp___1 = __fswab16((int )id_be);
  id = tmp___1;
  switch ((int )id) {
  case 4642:
  name = (char *)"MT9V012";
  goto ldv_32135;
  case 4649:
  name = (char *)"MT9V112";
  goto ldv_32135;
  case 5171:
  name = (char *)"MT9M011";
  goto ldv_32135;
  case 5178:
  name = (char *)"MT9M111";
  dev->em28xx_sensor = 3;
  goto ldv_32135;
  case 5260:
  name = (char *)"MT9M112";
  goto ldv_32135;
  case 5393:
  name = (char *)"MT9D011";
  goto ldv_32135;
  case 33330: ;
  case 33347:
  name = (char *)"MT9V011";
  dev->em28xx_sensor = 1;
  goto ldv_32135;
  case 33841:
  name = (char *)"MT9M001";
  dev->em28xx_sensor = 2;
  goto ldv_32135;
  default:
  printk("\016%s: unknown Micron sensor detected: 0x%04x\n", (char *)(& dev->name),
         (int )id);
  return (0);
  }
  ldv_32135: ;
  if ((unsigned int )dev->em28xx_sensor == 0U) {
    printk("\016%s: unsupported sensor detected: %s\n", (char *)(& dev->name), name);
  } else {
    printk("\016%s: sensor %s detected\n", (char *)(& dev->name), name);
  }
  dev->i2c_client[dev->def_i2c_bus].addr = client.addr;
  return (0);
  ldv_32133:
  i = i + 1;
  ldv_32146: ;
  if ((unsigned int )micron_sensor_addrs[i] != 65534U) {
    goto ldv_32145;
  } else {
  }
  return (-19);
}
}
static int em28xx_probe_sensor_omnivision(struct em28xx *dev )
{
  int ret ;
  int i ;
  char *name ;
  u8 reg ;
  u16 id ;
  struct i2c_client client ;
  {
  client = dev->i2c_client[dev->def_i2c_bus];
  dev->em28xx_sensor = 0;
  i = 0;
  goto ldv_32173;
  ldv_32172:
  client.addr = omnivision_sensor_addrs[i];
  reg = 28U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  if (ret < 0) {
    if (ret != -19) {
      printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
             (int )client.addr << 1, ret);
    } else {
    }
    goto ldv_32157;
  } else {
  }
  id = (int )((u16 )ret) << 8U;
  reg = 29U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32157;
  } else {
  }
  id = (int )((u16 )ret) + (int )id;
  if ((unsigned int )id != 32674U) {
    goto ldv_32157;
  } else {
  }
  reg = 10U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32157;
  } else {
  }
  id = (int )((u16 )ret) << 8U;
  reg = 11U;
  ret = i2c_smbus_read_byte_data((struct i2c_client const *)(& client), (int )reg);
  if (ret < 0) {
    printk("\v%s: couldn\'t read from i2c device 0x%02x: error %i\n", (char *)(& dev->name),
           (int )client.addr << 1, ret);
    goto ldv_32157;
  } else {
  }
  id = (int )((u16 )ret) + (int )id;
  switch ((int )id) {
  case 9794:
  name = (char *)"OV2640";
  dev->em28xx_sensor = 4;
  goto ldv_32159;
  case 30280:
  name = (char *)"OV7648";
  goto ldv_32159;
  case 30304:
  name = (char *)"OV7660";
  goto ldv_32159;
  case 30323:
  name = (char *)"OV7670";
  goto ldv_32159;
  case 30496:
  name = (char *)"OV7720";
  goto ldv_32159;
  case 30497:
  name = (char *)"OV7725";
  goto ldv_32159;
  case 38472: ;
  case 38473:
  name = (char *)"OV9640";
  goto ldv_32159;
  case 38480: ;
  case 38482:
  name = (char *)"OV9650";
  goto ldv_32159;
  case 38486: ;
  case 38487:
  name = (char *)"OV9655";
  goto ldv_32159;
  default:
  printk("\016%s: unknown OmniVision sensor detected: 0x%04x\n", (char *)(& dev->name),
         (int )id);
  return (0);
  }
  ldv_32159: ;
  if ((unsigned int )dev->em28xx_sensor == 0U) {
    printk("\016%s: unsupported sensor detected: %s\n", (char *)(& dev->name), name);
  } else {
    printk("\016%s: sensor %s detected\n", (char *)(& dev->name), name);
  }
  dev->i2c_client[dev->def_i2c_bus].addr = client.addr;
  return (0);
  ldv_32157:
  i = i + 1;
  ldv_32173: ;
  if ((unsigned int )omnivision_sensor_addrs[i] != 65534U) {
    goto ldv_32172;
  } else {
  }
  return (-19);
}
}
int em28xx_detect_sensor(struct em28xx *dev )
{
  int ret ;
  {
  ret = em28xx_probe_sensor_micron(dev);
  if ((unsigned int )dev->em28xx_sensor == 0U && ret < 0) {
    ret = em28xx_probe_sensor_omnivision(dev);
  } else {
  }
  if ((unsigned int )dev->em28xx_sensor == 0U && ret < 0) {
    printk("\016%s: No sensor detected\n", (char *)(& dev->name));
    return (-19);
  } else {
  }
  return (0);
}
}
int em28xx_init_camera(struct em28xx *dev )
{
  struct mt9v011_platform_data pdata ;
  struct i2c_board_info mt9v011_info ;
  unsigned int tmp ;
  struct v4l2_subdev *tmp___0 ;
  struct v4l2_subdev *subdev ;
  struct i2c_board_info ov2640_info ;
  unsigned int tmp___1 ;
  struct v4l2_mbus_framefmt fmt ;
  {
  switch ((unsigned int )dev->em28xx_sensor) {
  case 1U:
  mt9v011_info.type[0] = 'm';
  mt9v011_info.type[1] = 't';
  mt9v011_info.type[2] = '9';
  mt9v011_info.type[3] = 'v';
  mt9v011_info.type[4] = '0';
  mt9v011_info.type[5] = '1';
  mt9v011_info.type[6] = '1';
  mt9v011_info.type[7] = '\000';
  tmp = 8U;
  while (1) {
    if (tmp >= 20U) {
      break;
    } else {
    }
    mt9v011_info.type[tmp] = (char)0;
    tmp = tmp + 1U;
  }
  mt9v011_info.flags = (unsigned short)0;
  mt9v011_info.addr = dev->i2c_client[dev->def_i2c_bus].addr;
  mt9v011_info.platform_data = (void *)(& pdata);
  mt9v011_info.archdata = 0;
  mt9v011_info.of_node = 0;
  mt9v011_info.acpi_node.handle = 0;
  mt9v011_info.irq = 0;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  dev->board.xclk = 6U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  dev->sensor_xtal = 4300000;
  pdata.xtal = (unsigned int )dev->sensor_xtal;
  tmp___0 = v4l2_i2c_new_subdev_board(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                                      & mt9v011_info, 0);
  if ((unsigned long )tmp___0 == (unsigned long )((struct v4l2_subdev *)0)) {
    return (-19);
  } else {
  }
  dev->vinmode = 13;
  dev->vinctl = 0;
  goto ldv_32185;
  case 2U:
  dev->sensor_xres = 1280;
  dev->sensor_yres = 1024;
  em28xx_initialize_mt9m001(dev);
  dev->vinmode = 12;
  dev->vinctl = 0;
  goto ldv_32185;
  case 3U:
  dev->sensor_xres = 640;
  dev->sensor_yres = 512;
  dev->board.xclk = 10U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  em28xx_initialize_mt9m111(dev);
  dev->vinmode = 10;
  dev->vinctl = 0;
  goto ldv_32185;
  case 4U:
  ov2640_info.type[0] = 'o';
  ov2640_info.type[1] = 'v';
  ov2640_info.type[2] = '2';
  ov2640_info.type[3] = '6';
  ov2640_info.type[4] = '4';
  ov2640_info.type[5] = '0';
  ov2640_info.type[6] = '\000';
  tmp___1 = 7U;
  while (1) {
    if (tmp___1 >= 20U) {
      break;
    } else {
    }
    ov2640_info.type[tmp___1] = (char)0;
    tmp___1 = tmp___1 + 1U;
  }
  ov2640_info.flags = 36864U;
  ov2640_info.addr = dev->i2c_client[dev->def_i2c_bus].addr;
  ov2640_info.platform_data = (void *)(& camlink);
  ov2640_info.archdata = 0;
  ov2640_info.of_node = 0;
  ov2640_info.acpi_node.handle = 0;
  ov2640_info.irq = 0;
  dev->sensor_xres = 640;
  dev->sensor_yres = 480;
  subdev = v4l2_i2c_new_subdev_board(& dev->v4l2_dev, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                                     & ov2640_info, 0);
  fmt.code = 8200U;
  fmt.width = 640U;
  fmt.height = 480U;
  if ((unsigned long )subdev != (unsigned long )((struct v4l2_subdev *)0)) {
    if ((unsigned long )(subdev->ops)->video != (unsigned long )((struct v4l2_subdev_video_ops const * )0) && (unsigned long )((subdev->ops)->video)->s_mbus_fmt != (unsigned long )((int (* )(struct v4l2_subdev * ,
                                                                                                                                                                                                                       struct v4l2_mbus_framefmt * ))0)) {
      (*(((subdev->ops)->video)->s_mbus_fmt))(subdev, & fmt);
    } else {
    }
  } else {
  }
  dev->board.xclk = 11U;
  em28xx_write_reg(dev, 15, (int )dev->board.xclk);
  dev->vinmode = 8;
  dev->vinctl = 0;
  goto ldv_32185;
  case 0U: ;
  default: ;
  return (-22);
  }
  ldv_32185: ;
  return (0);
}
}
void ldv_main5_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_32213;
  ldv_32212:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_32211;
  }
  ldv_32211: ;
  ldv_32213:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_32212;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_125(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_126(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
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
void ldv_mutex_unlock_127(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_128(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_129(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_vb_lock_of_videobuf_queue(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_130(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_131(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(ldv_func_arg1);
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
static int ldv_mutex_ctrl_urb_lock_of_em28xx ;
int ldv_mutex_lock_interruptible_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
  return;
}
}
int ldv_mutex_trylock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ctrl_urb_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ctrl_urb_lock_of_em28xx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
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
void ldv_mutex_unlock_ctrl_urb_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ctrl_urb_lock_of_em28xx = 1;
  return;
}
}
static int ldv_mutex_em28xx_devlist_mutex ;
int ldv_mutex_lock_interruptible_em28xx_devlist_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_em28xx_devlist_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_em28xx_devlist_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_em28xx_devlist_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_em28xx_devlist_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_em28xx_devlist_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_em28xx_devlist_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
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
void ldv_mutex_unlock_em28xx_devlist_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_em28xx_devlist_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_em28xx_devlist_mutex = 1;
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
static int ldv_mutex_lock_of_em28xx ;
int ldv_mutex_lock_interruptible_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_em28xx = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_em28xx = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_em28xx(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock_of_em28xx = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_em28xx(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_em28xx = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_em28xx(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_em28xx == 1) {
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
void ldv_mutex_unlock_lock_of_em28xx(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_em28xx == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_em28xx = 1;
  return;
}
}
static int ldv_mutex_lock_of_v4l2_ctrl_handler ;
int ldv_mutex_lock_interruptible_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
  return;
}
}
int ldv_mutex_trylock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock_of_v4l2_ctrl_handler(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock_of_v4l2_ctrl_handler = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
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
void ldv_mutex_unlock_lock_of_v4l2_ctrl_handler(struct mutex *lock )
{
  {
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock_of_v4l2_ctrl_handler = 1;
  return;
}
}
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{
  int nondetermined ;
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
{
  int nondetermined ;
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
{
  int is_mutex_held_by_another_thread ;
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
{
  int atomic_value_after_dec ;
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
{
  int nondetermined ;
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
static int ldv_mutex_vb_lock_of_videobuf_queue ;
int ldv_mutex_lock_interruptible_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 2;
  return;
}
}
int ldv_mutex_trylock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_vb_lock_of_videobuf_queue(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_vb_lock_of_videobuf_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
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
void ldv_mutex_unlock_vb_lock_of_videobuf_queue(struct mutex *lock )
{
  {
  if (ldv_mutex_vb_lock_of_videobuf_queue == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_ctrl_urb_lock_of_em28xx = 1;
  ldv_mutex_em28xx_devlist_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_lock_of_em28xx = 1;
  ldv_mutex_lock_of_v4l2_ctrl_handler = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_vb_lock_of_videobuf_queue = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_ctrl_urb_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_em28xx_devlist_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock_of_em28xx == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock_of_v4l2_ctrl_handler == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_vb_lock_of_videobuf_queue == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __rt_mutex_init(struct rt_mutex *arg0, const char *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_zero_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int i2c_add_adapter(struct i2c_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
void i2c_del_adapter(struct i2c_adapter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_master_recv(const struct i2c_client *arg0, char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_send(const struct i2c_client *arg0, const char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
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
void msleep(unsigned int arg0) {
  return;
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int rt_mutex_trylock(struct rt_mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void rt_mutex_unlock(struct rt_mutex *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void tveeprom_hauppauge_analog(struct i2c_client *arg0, struct tveeprom *arg1, unsigned char *arg2) {
  return;
}
void *usb_alloc_coherent(struct usb_device *arg0, size_t arg1, gfp_t arg2, dma_addr_t *arg3) {
  return ldv_malloc(0UL);
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_clear_halt(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_free_coherent(struct usb_device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_unlink_urb(struct urb *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_find(struct v4l2_ctrl_handler *arg0, u32 arg1) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler *arg0, unsigned int arg1, struct lock_class_key *arg2, const char *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler *arg0) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
void v4l2_ctrl_notify(struct v4l2_ctrl *arg0, void (*arg1)(struct v4l2_ctrl *, void *), void *arg2) {
  return;
}
void v4l2_device_disconnect(struct v4l2_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
void v4l2_device_unregister(struct v4l2_device *arg0) {
  return;
}
void v4l2_fh_add(struct v4l2_fh *arg0) {
  return;
}
void v4l2_fh_init(struct v4l2_fh *arg0, struct video_device *arg1) {
  return;
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
struct v4l2_subdev *v4l2_i2c_new_subdev(struct v4l2_device *arg0, struct i2c_adapter *arg1, const char *arg2, u8 arg3, const unsigned short *arg4) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
struct v4l2_subdev *v4l2_i2c_new_subdev_board(struct v4l2_device *arg0, struct i2c_adapter *arg1, struct i2c_board_info *arg2, const unsigned short *arg3) {
  return ldv_malloc(sizeof(struct v4l2_subdev));
}
unsigned short __VERIFIER_nondet_ushort(void);
unsigned short int v4l2_i2c_subdev_addr(struct v4l2_subdev *arg0) {
  return __VERIFIER_nondet_ushort();
}
const unsigned short *v4l2_i2c_tuner_addrs(enum v4l2_i2c_tuner_type arg0) {
  return ldv_malloc(sizeof(unsigned short));
}
void v4l2_video_std_frame_period(int arg0, struct v4l2_fract *arg1) {
  return;
}
void v4l_bound_align_image(unsigned int *arg0, unsigned int arg1, unsigned int arg2, unsigned int arg3, unsigned int *arg4, unsigned int arg5, unsigned int arg6, unsigned int arg7, unsigned int arg8) {
  return;
}
void vb2_buffer_done(struct vb2_buffer *arg0, enum vb2_buffer_state arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vb2_fop_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void *vb2_plane_vaddr(struct vb2_buffer *arg0, unsigned int arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int vb2_queue_init(struct vb2_queue *arg0) {
  return __VERIFIER_nondet_int();
}
struct video_device *video_devdata(struct file *arg0) {
  return ldv_malloc(sizeof(struct video_device));
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
