extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
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
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int gfp_t;
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
struct module;
typedef void (*ctor_fn_t)(void);
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
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
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
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
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
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
union __anonunion_ldv_13958_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13958_134 ldv_13958 ;
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
struct mem_cgroup;
struct __anonstruct_ldv_14477_136 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_14478_135 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_14477_136 ldv_14477 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14478_135 ldv_14478 ;
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
struct i2c_device_id {
   char name[20U] ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
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
union __anonunion_ldv_15979_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_15989_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_15991_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_15989_144 ldv_15989 ;
   int units ;
};
struct __anonstruct_ldv_15993_142 {
   union __anonunion_ldv_15991_143 ldv_15991 ;
   atomic_t _count ;
};
union __anonunion_ldv_15994_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_15993_142 ldv_15993 ;
};
struct __anonstruct_ldv_15995_139 {
   union __anonunion_ldv_15979_140 ldv_15979 ;
   union __anonunion_ldv_15994_141 ldv_15994 ;
};
struct __anonstruct_ldv_16002_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16006_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_16002_146 ldv_16002 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16011_147 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_15995_139 ldv_15995 ;
   union __anonunion_ldv_16006_145 ldv_16006 ;
   union __anonunion_ldv_16011_147 ldv_16011 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_149 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_148 {
   struct __anonstruct_linear_149 linear ;
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
   union __anonunion_shared_148 shared ;
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
struct __anonstruct_sigset_t_150 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_150 sigset_t;
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
struct __anonstruct__kill_152 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_153 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_154 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_155 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_156 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_157 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_158 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_151 {
   int _pad[28U] ;
   struct __anonstruct__kill_152 _kill ;
   struct __anonstruct__timer_153 _timer ;
   struct __anonstruct__rt_154 _rt ;
   struct __anonstruct__sigchld_155 _sigchld ;
   struct __anonstruct__sigfault_156 _sigfault ;
   struct __anonstruct__sigpoll_157 _sigpoll ;
   struct __anonstruct__sigsys_158 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_151 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
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
union __anonunion_ldv_17276_161 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17285_162 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_163 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_164 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17276_161 ldv_17276 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17285_162 ldv_17285 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_163 type_data ;
   union __anonunion_payload_164 payload ;
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
   int (*detach_adapter)(struct i2c_adapter * ) ;
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
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
struct sensor_device_attribute_2 {
   struct device_attribute dev_attr ;
   u8 index ;
   u8 nr ;
};
struct w83791d_data {
   struct device *hwmon_dev ;
   struct mutex update_lock ;
   char valid ;
   unsigned long last_updated ;
   struct i2c_client *lm75[2U] ;
   u8 in[10U] ;
   u8 in_max[10U] ;
   u8 in_min[10U] ;
   u8 fan[5U] ;
   u8 fan_min[5U] ;
   u8 fan_div[5U] ;
   s8 temp1[3U] ;
   s16 temp_add[2U][3U] ;
   u8 pwm[5U] ;
   u8 pwm_enable[3U] ;
   u8 temp_target[3U] ;
   u8 temp_tolerance[3U] ;
   u32 alarms ;
   u8 beep_enable ;
   u32 beep_mask ;
   u8 vid ;
   u8 vrm ;
};
typedef int ldv_func_ret_type___2;
long ldv__builtin_expect(long exp , long c ) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
extern int kstrtoull(char const * , unsigned int , unsigned long long * ) ;
extern int kstrtoll(char const * , unsigned int , long long * ) ;
__inline static int kstrtoul(char const *s , unsigned int base , unsigned long *res )
{ int tmp ;
  {
  tmp = kstrtoull(s, base, (unsigned long long *)res);
  return (tmp);
}
}
__inline static int kstrtol(char const *s , unsigned int base , long *res )
{ int tmp ;
  {
  tmp = kstrtoll(s, base, (long long *)res);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
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
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
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
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_lock_update_lock_of_w83791d_data(struct mutex *lock ) ;
void ldv_mutex_unlock_update_lock_of_w83791d_data(struct mutex *lock ) ;
int ldv_state_variable_3 ;
int ldv_state_variable_1 ;
int ldv_state_variable_2 ;
int ldv_state_variable_4 ;
int ref_cnt ;
int ldv_state_variable_0 ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long volatile jiffies ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern struct module __this_module ;
extern void *devm_kzalloc(struct device * , size_t , gfp_t ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern s32 i2c_smbus_read_byte_data(struct i2c_client const * , u8 ) ;
extern s32 i2c_smbus_write_byte_data(struct i2c_client const * , u8 , u8 ) ;
__inline static void *i2c_get_clientdata(struct i2c_client const *dev )
{ void *tmp ;
  {
  tmp = dev_get_drvdata(& dev->dev);
  return (tmp);
}
}
__inline static void i2c_set_clientdata(struct i2c_client *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern struct i2c_client *i2c_new_dummy(struct i2c_adapter * , u16 ) ;
extern void i2c_unregister_device(struct i2c_client * ) ;
extern int i2c_register_driver(struct module * , struct i2c_driver * ) ;
extern void i2c_del_driver(struct i2c_driver * ) ;
__inline static u32 i2c_get_functionality(struct i2c_adapter *adap )
{ u32 tmp ;
  {
  tmp = (*((adap->algo)->functionality))(adap);
  return (tmp);
}
}
__inline static int i2c_check_functionality(struct i2c_adapter *adap , u32 func )
{ u32 tmp ;
  {
  tmp = i2c_get_functionality(adap);
  return ((tmp & func) == func);
}
}
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern struct device *hwmon_device_register(struct device * ) ;
extern void hwmon_device_unregister(struct device * ) ;
__inline static int SENSORS_LIMIT(long value , long low , long high )
{
  {
  if (value < low) {
    return ((int )low);
  } else
  if (value > high) {
    return ((int )high);
  } else {
    return ((int )value);
  }
}
}
extern int vid_from_reg(int , u8 ) ;
extern u8 vid_which_vrm(void) ;
static unsigned short const normal_i2c[5U] = { 44U, 45U, 46U, 47U,
        65534U};
static unsigned short force_subclients[4U] ;
static bool reset ;
static bool init ;
static u8 const W83791D_REG_IN[10U] =
  { 32U, 33U, 34U, 35U,
        36U, 37U, 38U, 176U,
        177U, 178U};
static u8 const W83791D_REG_IN_MAX[10U] =
  { 43U, 45U, 47U, 49U,
        51U, 53U, 55U, 180U,
        182U, 184U};
static u8 const W83791D_REG_IN_MIN[10U] =
  { 44U, 46U, 48U, 50U,
        52U, 54U, 56U, 181U,
        183U, 185U};
static u8 const W83791D_REG_FAN[5U] = { 40U, 41U, 42U, 186U,
        187U};
static u8 const W83791D_REG_FAN_MIN[5U] = { 59U, 60U, 61U, 188U,
        189U};
static u8 const W83791D_REG_PWM[5U] = { 129U, 131U, 148U, 160U,
        161U};
static u8 const W83791D_REG_TEMP_TARGET[3U] = { 133U, 134U, 150U};
static u8 const W83791D_REG_TEMP_TOL[2U] = { 135U, 151U};
static u8 const W83791D_REG_FAN_CFG[2U] = { 132U, 149U};
static u8 const W83791D_REG_FAN_DIV[3U] = { 71U, 75U, 92U};
static u8 const W83791D_REG_TEMP1[3U] = { 39U, 57U, 58U};
static u8 const W83791D_REG_TEMP_ADD[2U][6U] = { { 192U, 193U, 197U, 198U,
            195U, 196U},
   { 200U, 201U, 205U, 206U,
            203U, 204U}};
static u8 const W83791D_REG_BEEP_CTRL[3U] = { 86U, 87U, 163U};
__inline static int w83791d_read(struct i2c_client *client , u8 reg )
{ s32 tmp ;
  {
  tmp = i2c_smbus_read_byte_data((struct i2c_client const *)client, (int )reg);
  return (tmp);
}
}
__inline static int w83791d_write(struct i2c_client *client , u8 reg , u8 value )
{ s32 tmp ;
  {
  tmp = i2c_smbus_write_byte_data((struct i2c_client const *)client, (int )reg,
                                  (int )value);
  return (tmp);
}
}
static u8 fan_to_reg(long rpm , int div )
{ int tmp ;
  int tmp___0 ;
  {
  if (rpm == 0L) {
    return (255U);
  } else {
  }
  tmp = SENSORS_LIMIT(rpm, 1L, 1000000L);
  rpm = (long )tmp;
  tmp___0 = SENSORS_LIMIT((((long )div * rpm) / 2L + 1350000L) / ((long )div * rpm),
                          1L, 254L);
  return ((u8 )tmp___0);
}
}
static u8 div_to_reg(int nr , long val )
{ int i ;
  int tmp ;
  {
  tmp = SENSORS_LIMIT(val, 1L, 128L);
  val = (long )(tmp >> 1);
  i = 0;
  goto ldv_19698;
  ldv_19697: ;
  if (val == 0L) {
    goto ldv_19696;
  } else {
  }
  val = val >> 1;
  i = i + 1;
  ldv_19698: ;
  if (i <= 6) {
    goto ldv_19697;
  } else {
    goto ldv_19696;
  }
  ldv_19696: ;
  return ((u8 )i);
}
}
static int w83791d_probe(struct i2c_client *client , struct i2c_device_id const *id ) ;
static int w83791d_detect(struct i2c_client *client , struct i2c_board_info *info ) ;
static int w83791d_remove(struct i2c_client *client ) ;
static struct w83791d_data *w83791d_update_device(struct device *dev ) ;
static void w83791d_print_debug(struct w83791d_data *data , struct device *dev ) ;
static void w83791d_init_client(struct i2c_client *client ) ;
static struct i2c_device_id const w83791d_id[2U] = { {{'w', '8', '3', '7', '9', '1', 'd', '\000', (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0}, 0UL},
        {{(char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0}, 0UL}};
struct i2c_device_id const __mod_i2c_device_table ;
static struct i2c_driver w83791d_driver =
     {1U, 0, 0, & w83791d_probe, & w83791d_remove, 0, 0, 0, 0, 0, {"w83791d", 0, 0,
                                                                 0, (_Bool)0, 0, 0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0}, (struct i2c_device_id const *)(& w83791d_id),
    & w83791d_detect, (unsigned short const *)(& normal_i2c), {0, 0}};
static ssize_t show_in(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->in[nr] * 16);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_in_min(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->in_min[nr] * 16);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_in_max(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->in_max[nr] * 16);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_in_min(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  tmp___0 = kstrtoul(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_8(& data->update_lock);
  tmp___1 = SENSORS_LIMIT((long )((val + 8UL) / 16UL), 0L, 255L);
  data->in_min[nr] = (u8 )tmp___1;
  w83791d_write(client, (int )W83791D_REG_IN_MIN[nr], (int )data->in_min[nr]);
  ldv_mutex_unlock_9(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_in_max(struct device *dev , struct device_attribute *attr , char const *buf ,
                            size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  tmp___0 = kstrtoul(buf, 10U, & val);
  err = tmp___0;
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_10(& data->update_lock);
  tmp___1 = SENSORS_LIMIT((long )((val + 8UL) / 16UL), 0L, 255L);
  data->in_max[nr] = (u8 )tmp___1;
  w83791d_write(client, (int )W83791D_REG_IN_MAX[nr], (int )data->in_max[nr]);
  ldv_mutex_unlock_11(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_in_input[10U] =
  { {{{"in0_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 0},
        {{{"in1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 1},
        {{{"in2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 2},
        {{{"in3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 3},
        {{{"in4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 4},
        {{{"in5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 5},
        {{{"in6_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 6},
        {{{"in7_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 7},
        {{{"in8_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 8},
        {{{"in9_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in, 0}, 9}};
static struct sensor_device_attribute sda_in_min[10U] =
  { {{{"in0_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 0},
        {{{"in1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 1},
        {{{"in2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 2},
        {{{"in3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 3},
        {{{"in4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 4},
        {{{"in5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 5},
        {{{"in6_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 6},
        {{{"in7_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 7},
        {{{"in8_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 8},
        {{{"in9_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_min, & store_in_min}, 9}};
static struct sensor_device_attribute sda_in_max[10U] =
  { {{{"in0_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 0},
        {{{"in1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 1},
        {{{"in2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 2},
        {{{"in3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 3},
        {{{"in4_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 4},
        {{{"in5_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 5},
        {{{"in6_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 6},
        {{{"in7_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 7},
        {{{"in8_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 8},
        {{{"in9_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_in_max, & store_in_max}, 9}};
static ssize_t show_beep(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int bitnr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  bitnr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (data->beep_mask >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep(struct device *dev , struct device_attribute *attr , char const *buf ,
                          size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int bitnr ;
  int bytenr ;
  unsigned long val ;
  int err ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  bitnr = sensor_attr->index;
  bytenr = bitnr / 8;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  val = val != 0UL;
  ldv_mutex_lock_12(& data->update_lock);
  data->beep_mask = data->beep_mask & (u32 )(~ (255 << bytenr * 8));
  tmp___0 = w83791d_read(client, (int )W83791D_REG_BEEP_CTRL[bytenr]);
  data->beep_mask = data->beep_mask | (u32 )(tmp___0 << bytenr * 8);
  data->beep_mask = data->beep_mask & (u32 )(~ (1 << bitnr));
  data->beep_mask = data->beep_mask | (u32 )(val << bitnr);
  w83791d_write(client, (int )W83791D_REG_BEEP_CTRL[bytenr], (int )((u8 )(data->beep_mask >> bytenr * 8)));
  ldv_mutex_unlock_13(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_alarm(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int bitnr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  bitnr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (data->alarms >> bitnr) & 1U);
  return ((ssize_t )tmp___0);
}
}
static struct sensor_device_attribute sda_in_beep[10U] =
  { {{{"in0_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 0},
        {{{"in1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 13},
        {{{"in2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 2},
        {{{"in3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 3},
        {{{"in4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 8},
        {{{"in5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 9},
        {{{"in6_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 10},
        {{{"in7_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 16},
        {{{"in8_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 17},
        {{{"in9_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 14}};
static struct sensor_device_attribute sda_in_alarm[10U] =
  { {{{"in0_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 0},
        {{{"in1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 1},
        {{{"in2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 2},
        {{{"in3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 3},
        {{{"in4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 8},
        {{{"in5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 9},
        {{{"in6_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 10},
        {{{"in7_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 19},
        {{{"in8_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 20},
        {{{"in9_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 14}};
static ssize_t show_fan(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  if ((unsigned int )data->fan[nr] != 0U) {
    if ((unsigned int )data->fan[nr] != 255U) {
      tmp___0 = 1350000 / ((int )data->fan[nr] << (int )data->fan_div[nr]);
    } else {
      tmp___0 = 0;
    }
    tmp___1 = tmp___0;
  } else {
    tmp___1 = -1;
  }
  tmp___2 = sprintf(buf, "%d\n", tmp___1);
  return ((ssize_t )tmp___2);
}
}
static ssize_t show_fan_min(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  if ((unsigned int )data->fan_min[nr] != 0U) {
    if ((unsigned int )data->fan_min[nr] != 255U) {
      tmp___0 = 1350000 / ((int )data->fan_min[nr] << (int )data->fan_div[nr]);
    } else {
      tmp___0 = 0;
    }
    tmp___1 = tmp___0;
  } else {
    tmp___1 = -1;
  }
  tmp___2 = sprintf(buf, "%d\n", tmp___1);
  return ((ssize_t )tmp___2);
}
}
static ssize_t store_fan_min(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int err ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_14(& data->update_lock);
  data->fan_min[nr] = fan_to_reg((long )val, 1 << (int )data->fan_div[nr]);
  w83791d_write(client, (int )W83791D_REG_FAN_MIN[nr], (int )data->fan_min[nr]);
  ldv_mutex_unlock_15(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_fan_div(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", 1 << (int )data->fan_div[nr]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_fan_div(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long min ;
  u8 tmp_fan_div ;
  u8 fan_div_reg ;
  u8 vbat_reg ;
  int indx ;
  u8 keep_mask ;
  u8 new_shift ;
  unsigned long val ;
  int err ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  indx = 0;
  keep_mask = 0U;
  new_shift = 0U;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  if ((unsigned int )data->fan_min[nr] != 0U) {
    if ((unsigned int )data->fan_min[nr] != 255U) {
      tmp___0 = (unsigned long )(1350000 / ((int )data->fan_min[nr] << (int )data->fan_div[nr]));
    } else {
      tmp___0 = 0UL;
    }
    min = tmp___0;
  } else {
    min = 0xffffffffffffffffUL;
  }
  ldv_mutex_lock_16(& data->update_lock);
  data->fan_div[nr] = div_to_reg(nr, (long )val);
  switch (nr) {
  case 0:
  indx = 0;
  keep_mask = 207U;
  new_shift = 4U;
  goto ldv_19926;
  case 1:
  indx = 0;
  keep_mask = 63U;
  new_shift = 6U;
  goto ldv_19926;
  case 2:
  indx = 1;
  keep_mask = 63U;
  new_shift = 6U;
  goto ldv_19926;
  case 3:
  indx = 2;
  keep_mask = 248U;
  new_shift = 0U;
  goto ldv_19926;
  case 4:
  indx = 2;
  keep_mask = 143U;
  new_shift = 4U;
  goto ldv_19926;
  default:
  dev_warn((struct device const *)dev, "store_fan_div: Unexpected nr seen: %d\n",
           nr);
  count = 0xffffffffffffffeaUL;
  goto err_exit;
  }
  ldv_19926:
  tmp___1 = w83791d_read(client, (int )W83791D_REG_FAN_DIV[indx]);
  fan_div_reg = (u8 )((int )((signed char )tmp___1) & (int )((signed char )keep_mask));
  tmp_fan_div = (u8 )((int )((signed char )((int )data->fan_div[nr] << (int )new_shift)) & ~ ((int )((signed char )keep_mask)));
  w83791d_write(client, (int )W83791D_REG_FAN_DIV[indx], (int )fan_div_reg | (int )tmp_fan_div);
  if (nr <= 2) {
    keep_mask = ~ ((int )((u8 )(1 << (nr + 5))));
    tmp___2 = w83791d_read(client, 93);
    vbat_reg = (u8 )((int )((signed char )tmp___2) & (int )((signed char )keep_mask));
    tmp_fan_div = (u8 )((int )((signed char )((int )data->fan_div[nr] << (nr + 3))) & ~ ((int )((signed char )keep_mask)));
    w83791d_write(client, 93, (int )vbat_reg | (int )tmp_fan_div);
  } else {
  }
  data->fan_min[nr] = fan_to_reg((long )min, 1 << (int )data->fan_div[nr]);
  w83791d_write(client, (int )W83791D_REG_FAN_MIN[nr], (int )data->fan_min[nr]);
  err_exit:
  ldv_mutex_unlock_17(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_fan_input[5U] = { {{{"fan1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 0},
        {{{"fan2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 1},
        {{{"fan3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 2},
        {{{"fan4_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 3},
        {{{"fan5_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan, 0}, 4}};
static struct sensor_device_attribute sda_fan_min[5U] = { {{{"fan1_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_min, & store_fan_min}, 0},
        {{{"fan2_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_min, & store_fan_min}, 1},
        {{{"fan3_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_min, & store_fan_min}, 2},
        {{{"fan4_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_min, & store_fan_min}, 3},
        {{{"fan5_min", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_min, & store_fan_min}, 4}};
static struct sensor_device_attribute sda_fan_div[5U] = { {{{"fan1_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_div, & store_fan_div}, 0},
        {{{"fan2_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_div, & store_fan_div}, 1},
        {{{"fan3_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_div, & store_fan_div}, 2},
        {{{"fan4_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_div, & store_fan_div}, 3},
        {{{"fan5_div", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_fan_div, & store_fan_div}, 4}};
static struct sensor_device_attribute sda_fan_beep[5U] = { {{{"fan1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 6},
        {{{"fan2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 7},
        {{{"fan3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 11},
        {{{"fan4_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 21},
        {{{"fan5_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 22}};
static struct sensor_device_attribute sda_fan_alarm[5U] = { {{{"fan1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 6},
        {{{"fan2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 7},
        {{{"fan3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 11},
        {{{"fan4_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 21},
        {{{"fan5_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 22}};
static ssize_t show_pwm(struct device *dev , struct device_attribute *attr , char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", (int )data->pwm[nr]);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_pwm(struct device *dev , struct device_attribute *attr , char const *buf ,
                         size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 != 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_18(& data->update_lock);
  tmp___1 = SENSORS_LIMIT((long )val, 0L, 255L);
  data->pwm[nr] = (u8 )tmp___1;
  w83791d_write(client, (int )W83791D_REG_PWM[nr], (int )data->pwm[nr]);
  ldv_mutex_unlock_19(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_pwm[5U] = { {{{"pwm1", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 0},
        {{{"pwm2", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 1},
        {{{"pwm3", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 2},
        {{{"pwm4", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 3},
        {{{"pwm5", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & show_pwm,
       & store_pwm}, 4}};
static ssize_t show_pwmenable(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  int nr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  nr = sensor_attr->index;
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", (int )data->pwm_enable[nr] + 1);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_pwmenable(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  u8 reg_cfg_tmp ;
  u8 reg_idx ;
  u8 val_shift ;
  u8 keep_mask ;
  int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  reg_idx = 0U;
  val_shift = 0U;
  keep_mask = 0U;
  tmp___0 = kstrtoul(buf, 10U, & val);
  ret = tmp___0;
  if ((ret != 0 || val == 0UL) || val > 3UL) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_20(& data->update_lock);
  data->pwm_enable[nr] = (unsigned int )((u8 )val) - 1U;
  switch (nr) {
  case 0:
  reg_idx = 0U;
  val_shift = 2U;
  keep_mask = 243U;
  goto ldv_19995;
  case 1:
  reg_idx = 0U;
  val_shift = 4U;
  keep_mask = 207U;
  goto ldv_19995;
  case 2:
  reg_idx = 1U;
  val_shift = 2U;
  keep_mask = 243U;
  goto ldv_19995;
  }
  ldv_19995:
  tmp___1 = w83791d_read(client, (int )W83791D_REG_FAN_CFG[(int )reg_idx]);
  reg_cfg_tmp = (u8 )tmp___1;
  reg_cfg_tmp = (u8 )((int )((signed char )((int )reg_cfg_tmp & (int )keep_mask)) | (int )((signed char )((int )data->pwm_enable[nr] << (int )val_shift)));
  w83791d_write(client, (int )W83791D_REG_FAN_CFG[(int )reg_idx], (int )reg_cfg_tmp);
  ldv_mutex_unlock_21(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_pwmenable[3U] = { {{{"pwm1_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwmenable, & store_pwmenable}, 0},
        {{{"pwm2_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwmenable, & store_pwmenable}, 1},
        {{{"pwm3_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_pwmenable, & store_pwmenable}, 2}};
static ssize_t show_temp_target(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp_target[nr] * 1000);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_target(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  long val ;
  u8 target_mask ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  tmp___0 = kstrtol(buf, 10U, & val);
  if (tmp___0 != 0) {
    return (-22L);
  } else {
  }
  ldv_mutex_lock_22(& data->update_lock);
  if (val >= 0L) {
    if (val <= 126999L) {
      tmp___1 = (u8 )((val + 500L) / 1000L);
    } else {
      tmp___1 = 127U;
    }
    data->temp_target[nr] = tmp___1;
  } else {
    data->temp_target[nr] = 0U;
  }
  tmp___2 = w83791d_read(client, (int )W83791D_REG_TEMP_TARGET[nr]);
  target_mask = (unsigned int )((u8 )tmp___2) & 128U;
  w83791d_write(client, (int )W83791D_REG_TEMP_TARGET[nr], (int )data->temp_target[nr] | (int )target_mask);
  ldv_mutex_unlock_23(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_temp_target[3U] = { {{{"temp1_target", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_target, & store_temp_target}, 0},
        {{{"temp2_target", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_target, & store_temp_target}, 1},
        {{{"temp3_target", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_target, & store_temp_target}, 2}};
static ssize_t show_temp_tolerance(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = sensor_attr->index;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp_tolerance[nr] * 1000);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp_tolerance(struct device *dev , struct device_attribute *attr ,
                                    char const *buf , size_t count )
{ struct sensor_device_attribute *sensor_attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  unsigned long val ;
  u8 target_mask ;
  u8 reg_idx ;
  u8 val_shift ;
  u8 keep_mask ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)attr;
  sensor_attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = sensor_attr->index;
  reg_idx = 0U;
  val_shift = 0U;
  keep_mask = 0U;
  tmp___0 = kstrtoul(buf, 10U, & val);
  if (tmp___0 != 0) {
    return (-22L);
  } else {
  }
  switch (nr) {
  case 0:
  reg_idx = 0U;
  val_shift = 0U;
  keep_mask = 240U;
  goto ldv_20056;
  case 1:
  reg_idx = 0U;
  val_shift = 4U;
  keep_mask = 15U;
  goto ldv_20056;
  case 2:
  reg_idx = 1U;
  val_shift = 0U;
  keep_mask = 240U;
  goto ldv_20056;
  }
  ldv_20056:
  ldv_mutex_lock_24(& data->update_lock);
  if (val <= 14999UL) {
    data->temp_tolerance[nr] = (u8 )((val + 500UL) / 1000UL);
  } else {
    data->temp_tolerance[nr] = 15U;
  }
  tmp___1 = w83791d_read(client, (int )W83791D_REG_TEMP_TOL[(int )reg_idx]);
  target_mask = (u8 )((int )((signed char )tmp___1) & (int )((signed char )keep_mask));
  w83791d_write(client, (int )W83791D_REG_TEMP_TOL[(int )reg_idx], (int )((u8 )((int )((signed char )((int )data->temp_tolerance[nr] << (int )val_shift)) | (int )((signed char )target_mask))));
  ldv_mutex_unlock_25(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_temp_tolerance[3U] = { {{{"temp1_tolerance", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_tolerance, & store_temp_tolerance}, 0},
        {{{"temp2_tolerance", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_tolerance, & store_temp_tolerance}, 1},
        {{{"temp3_tolerance", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp_tolerance, & store_temp_tolerance}, 2}};
static ssize_t show_temp1(struct device *dev , struct device_attribute *devattr ,
                          char *buf )
{ struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)devattr;
  attr = (struct sensor_device_attribute *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->temp1[attr->index] * 1000);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp1(struct device *dev , struct device_attribute *devattr ,
                           char const *buf , size_t count )
{ struct sensor_device_attribute *attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  int nr ;
  long val ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)devattr;
  attr = (struct sensor_device_attribute *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = attr->index;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_26(& data->update_lock);
  if (val >= -127999L) {
    if (val <= 126999L) {
      if (val < 0L) {
        tmp___0 = (s8 )((val + -500L) / 1000L);
      } else {
        tmp___0 = (s8 )((val + 500L) / 1000L);
      }
      tmp___1 = tmp___0;
    } else {
      tmp___1 = 127;
    }
    data->temp1[nr] = tmp___1;
  } else {
    data->temp1[nr] = -128;
  }
  w83791d_write(client, (int )W83791D_REG_TEMP1[nr], (int )((u8 )data->temp1[nr]));
  ldv_mutex_unlock_27(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t show_temp23(struct device *dev , struct device_attribute *devattr ,
                           char *buf )
{ struct sensor_device_attribute_2 *attr ;
  struct device_attribute const *__mptr ;
  struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int nr ;
  int index ;
  int tmp___0 ;
  {
  __mptr = (struct device_attribute const *)devattr;
  attr = (struct sensor_device_attribute_2 *)__mptr;
  tmp = w83791d_update_device(dev);
  data = tmp;
  nr = (int )attr->nr;
  index = (int )attr->index;
  tmp___0 = sprintf(buf, "%d\n", ((int )data->temp_add[nr][index] / 128) * 500);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_temp23(struct device *dev , struct device_attribute *devattr ,
                            char const *buf , size_t count )
{ struct sensor_device_attribute_2 *attr ;
  struct device_attribute const *__mptr ;
  struct i2c_client *client ;
  struct device const *__mptr___0 ;
  struct w83791d_data *data ;
  void *tmp ;
  long val ;
  int err ;
  int nr ;
  int index ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct device_attribute const *)devattr;
  attr = (struct sensor_device_attribute_2 *)__mptr;
  __mptr___0 = (struct device const *)dev;
  client = (struct i2c_client *)__mptr___0 + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  nr = (int )attr->nr;
  index = (int )attr->index;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_28(& data->update_lock);
  if (val >= -127999L) {
    if (val <= 127499L) {
      if (val < 0L) {
        tmp___0 = (s16 )((unsigned int )((unsigned short )((val + -250L) / 500L)) * 128U);
      } else {
        tmp___0 = (s16 )((unsigned int )((unsigned short )((val + 250L) / 500L)) * 128U);
      }
      tmp___1 = tmp___0;
    } else {
      tmp___1 = 32640;
    }
    data->temp_add[nr][index] = tmp___1;
  } else {
    data->temp_add[nr][index] = -32768;
  }
  w83791d_write(client, (int )W83791D_REG_TEMP_ADD[nr][index * 2], (int )((u8 )((int )data->temp_add[nr][index] >> 8)));
  w83791d_write(client, (int )W83791D_REG_TEMP_ADD[nr][index * 2 + 1], (int )((u8 )data->temp_add[nr][index]) & 128);
  ldv_mutex_unlock_29(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute_2 sda_temp_input[3U] = { {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp1, 0}, 0U, 0U},
        {{{"temp2_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, 0}, 0U, 0U},
        {{{"temp3_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, 0}, 0U, 1U}};
static struct sensor_device_attribute_2 sda_temp_max[3U] = { {{{"temp1_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp1, & store_temp1}, 1U, 0U},
        {{{"temp2_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, & store_temp23}, 1U, 0U},
        {{{"temp3_max", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, & store_temp23}, 1U, 1U}};
static struct sensor_device_attribute_2 sda_temp_max_hyst[3U] = { {{{"temp1_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp1, & store_temp1}, 2U, 0U},
        {{{"temp2_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, & store_temp23}, 2U, 0U},
        {{{"temp3_max_hyst", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_temp23, & store_temp23}, 2U, 1U}};
static struct sensor_device_attribute sda_temp_beep[3U] = { {{{"temp1_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 4},
        {{{"temp2_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 5},
        {{{"temp3_beep", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep, & store_beep}, 1}};
static struct sensor_device_attribute sda_temp_alarm[3U] = { {{{"temp1_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 4},
        {{{"temp2_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 5},
        {{{"temp3_alarm", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_alarm, 0}, 13}};
static ssize_t show_alarms_reg(struct device *dev , struct device_attribute *attr ,
                               char *buf )
{ struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%u\n", data->alarms);
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_alarms = {{"alarms", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & show_alarms_reg,
    0};
static ssize_t show_beep_enable(struct device *dev , struct device_attribute *attr ,
                                char *buf )
{ struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->beep_enable);
  return ((ssize_t )tmp___0);
}
}
static ssize_t show_beep_mask(struct device *dev , struct device_attribute *attr ,
                              char *buf )
{ struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  {
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = sprintf(buf, "%d\n", data->beep_mask & 16777215U);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_beep_mask(struct device *dev , struct device_attribute *attr ,
                               char const *buf , size_t count )
{ struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83791d_data *data ;
  void *tmp ;
  int i ;
  long val ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_30(& data->update_lock);
  data->beep_mask = (u32 )val & 16744447U;
  data->beep_mask = data->beep_mask | (u32 )((int )data->beep_enable << 15);
  val = (long )data->beep_mask;
  i = 0;
  goto ldv_20151;
  ldv_20150:
  w83791d_write(client, (int )W83791D_REG_BEEP_CTRL[i], (int )((u8 )val));
  val = val >> 8;
  i = i + 1;
  ldv_20151: ;
  if (i <= 2) {
    goto ldv_20150;
  } else {
    goto ldv_20152;
  }
  ldv_20152:
  ldv_mutex_unlock_31(& data->update_lock);
  return ((ssize_t )count);
}
}
static ssize_t store_beep_enable(struct device *dev , struct device_attribute *attr ,
                                 char const *buf , size_t count )
{ struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83791d_data *data ;
  void *tmp ;
  long val ;
  int err ;
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  err = kstrtol(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  ldv_mutex_lock_32(& data->update_lock);
  data->beep_enable = val != 0L;
  data->beep_mask = data->beep_mask & 4294934527U;
  data->beep_mask = data->beep_mask | (u32 )((int )data->beep_enable << 15);
  val = (long )(data->beep_mask >> 8) & 255L;
  w83791d_write(client, (int )W83791D_REG_BEEP_CTRL[1], (int )((u8 )val));
  ldv_mutex_unlock_33(& data->update_lock);
  return ((ssize_t )count);
}
}
static struct sensor_device_attribute sda_beep_ctrl[2U] = { {{{"beep_enable", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep_enable, & store_beep_enable}, 0},
        {{{"beep_mask", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
       & show_beep_mask, & store_beep_mask}, 1}};
static ssize_t show_vid_reg(struct device *dev , struct device_attribute *attr , char *buf )
{ struct w83791d_data *data ;
  struct w83791d_data *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = w83791d_update_device(dev);
  data = tmp;
  tmp___0 = vid_from_reg((int )data->vid, (int )data->vrm);
  tmp___1 = sprintf(buf, "%d\n", tmp___0);
  return ((ssize_t )tmp___1);
}
}
static struct device_attribute dev_attr_cpu0_vid = {{"cpu0_vid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & show_vid_reg, 0};
static ssize_t show_vrm_reg(struct device *dev , struct device_attribute *attr , char *buf )
{ struct w83791d_data *data ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83791d_data *)tmp;
  tmp___0 = sprintf(buf, "%d\n", (int )data->vrm);
  return ((ssize_t )tmp___0);
}
}
static ssize_t store_vrm_reg(struct device *dev , struct device_attribute *attr ,
                             char const *buf , size_t count )
{ struct w83791d_data *data ;
  void *tmp ;
  unsigned long val ;
  int err ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  data = (struct w83791d_data *)tmp;
  err = kstrtoul(buf, 10U, & val);
  if (err != 0) {
    return ((ssize_t )err);
  } else {
  }
  data->vrm = (u8 )val;
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_vrm = {{"vrm", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & show_vrm_reg,
    & store_vrm_reg};
static struct attribute *w83791d_attributes[98U] =
  { & sda_in_input[0].dev_attr.attr, & sda_in_min[0].dev_attr.attr, & sda_in_max[0].dev_attr.attr, & sda_in_beep[0].dev_attr.attr,
        & sda_in_alarm[0].dev_attr.attr, & sda_in_input[1].dev_attr.attr, & sda_in_min[1].dev_attr.attr, & sda_in_max[1].dev_attr.attr,
        & sda_in_beep[1].dev_attr.attr, & sda_in_alarm[1].dev_attr.attr, & sda_in_input[2].dev_attr.attr, & sda_in_min[2].dev_attr.attr,
        & sda_in_max[2].dev_attr.attr, & sda_in_beep[2].dev_attr.attr, & sda_in_alarm[2].dev_attr.attr, & sda_in_input[3].dev_attr.attr,
        & sda_in_min[3].dev_attr.attr, & sda_in_max[3].dev_attr.attr, & sda_in_beep[3].dev_attr.attr, & sda_in_alarm[3].dev_attr.attr,
        & sda_in_input[4].dev_attr.attr, & sda_in_min[4].dev_attr.attr, & sda_in_max[4].dev_attr.attr, & sda_in_beep[4].dev_attr.attr,
        & sda_in_alarm[4].dev_attr.attr, & sda_in_input[5].dev_attr.attr, & sda_in_min[5].dev_attr.attr, & sda_in_max[5].dev_attr.attr,
        & sda_in_beep[5].dev_attr.attr, & sda_in_alarm[5].dev_attr.attr, & sda_in_input[6].dev_attr.attr, & sda_in_min[6].dev_attr.attr,
        & sda_in_max[6].dev_attr.attr, & sda_in_beep[6].dev_attr.attr, & sda_in_alarm[6].dev_attr.attr, & sda_in_input[7].dev_attr.attr,
        & sda_in_min[7].dev_attr.attr, & sda_in_max[7].dev_attr.attr, & sda_in_beep[7].dev_attr.attr, & sda_in_alarm[7].dev_attr.attr,
        & sda_in_input[8].dev_attr.attr, & sda_in_min[8].dev_attr.attr, & sda_in_max[8].dev_attr.attr, & sda_in_beep[8].dev_attr.attr,
        & sda_in_alarm[8].dev_attr.attr, & sda_in_input[9].dev_attr.attr, & sda_in_min[9].dev_attr.attr, & sda_in_max[9].dev_attr.attr,
        & sda_in_beep[9].dev_attr.attr, & sda_in_alarm[9].dev_attr.attr, & sda_fan_input[0].dev_attr.attr, & sda_fan_min[0].dev_attr.attr,
        & sda_fan_div[0].dev_attr.attr, & sda_fan_beep[0].dev_attr.attr, & sda_fan_alarm[0].dev_attr.attr, & sda_fan_input[1].dev_attr.attr,
        & sda_fan_min[1].dev_attr.attr, & sda_fan_div[1].dev_attr.attr, & sda_fan_beep[1].dev_attr.attr, & sda_fan_alarm[1].dev_attr.attr,
        & sda_fan_input[2].dev_attr.attr, & sda_fan_min[2].dev_attr.attr, & sda_fan_div[2].dev_attr.attr, & sda_fan_beep[2].dev_attr.attr,
        & sda_fan_alarm[2].dev_attr.attr, & sda_temp_input[0].dev_attr.attr, & sda_temp_max[0].dev_attr.attr, & sda_temp_max_hyst[0].dev_attr.attr,
        & sda_temp_beep[0].dev_attr.attr, & sda_temp_alarm[0].dev_attr.attr, & sda_temp_input[1].dev_attr.attr, & sda_temp_max[1].dev_attr.attr,
        & sda_temp_max_hyst[1].dev_attr.attr, & sda_temp_beep[1].dev_attr.attr, & sda_temp_alarm[1].dev_attr.attr, & sda_temp_input[2].dev_attr.attr,
        & sda_temp_max[2].dev_attr.attr, & sda_temp_max_hyst[2].dev_attr.attr, & sda_temp_beep[2].dev_attr.attr, & sda_temp_alarm[2].dev_attr.attr,
        & dev_attr_alarms.attr, & sda_beep_ctrl[0].dev_attr.attr, & sda_beep_ctrl[1].dev_attr.attr, & dev_attr_cpu0_vid.attr,
        & dev_attr_vrm.attr, & sda_pwm[0].dev_attr.attr, & sda_pwm[1].dev_attr.attr, & sda_pwm[2].dev_attr.attr,
        & sda_pwmenable[0].dev_attr.attr, & sda_pwmenable[1].dev_attr.attr, & sda_pwmenable[2].dev_attr.attr, & sda_temp_target[0].dev_attr.attr,
        & sda_temp_target[1].dev_attr.attr, & sda_temp_target[2].dev_attr.attr, & sda_temp_tolerance[0].dev_attr.attr, & sda_temp_tolerance[1].dev_attr.attr,
        & sda_temp_tolerance[2].dev_attr.attr, 0};
static struct attribute_group const w83791d_group = {0, 0, (struct attribute **)(& w83791d_attributes)};
static struct attribute *w83791d_attributes_fanpwm45[13U] =
  { & sda_fan_input[3].dev_attr.attr, & sda_fan_min[3].dev_attr.attr, & sda_fan_div[3].dev_attr.attr, & sda_fan_beep[3].dev_attr.attr,
        & sda_fan_alarm[3].dev_attr.attr, & sda_fan_input[4].dev_attr.attr, & sda_fan_min[4].dev_attr.attr, & sda_fan_div[4].dev_attr.attr,
        & sda_fan_beep[4].dev_attr.attr, & sda_fan_alarm[4].dev_attr.attr, & sda_pwm[3].dev_attr.attr, & sda_pwm[4].dev_attr.attr,
        0};
static struct attribute_group const w83791d_group_fanpwm45 = {0, 0, (struct attribute **)(& w83791d_attributes_fanpwm45)};
static int w83791d_detect_subclients(struct i2c_client *client )
{ struct i2c_adapter *adapter ;
  struct w83791d_data *data ;
  void *tmp ;
  int address ;
  int i ;
  int id ;
  int err ;
  u8 val ;
  int tmp___0 ;
  {
  adapter = client->adapter;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  address = (int )client->addr;
  id = i2c_adapter_id(adapter);
  if ((int )force_subclients[0] == id && (int )force_subclients[1] == address) {
    i = 2;
    goto ldv_20205;
    ldv_20204: ;
    if ((unsigned int )force_subclients[i] <= 71U || (unsigned int )force_subclients[i] > 79U) {
      dev_err((struct device const *)(& client->dev), "invalid subclient address %d; must be 0x48-0x4f\n",
              (int )force_subclients[i]);
      err = -19;
      goto error_sc_0;
    } else {
    }
    i = i + 1;
    ldv_20205: ;
    if (i <= 3) {
      goto ldv_20204;
    } else {
      goto ldv_20206;
    }
    ldv_20206:
    w83791d_write(client, 74, (int )((u8 )(((int )((signed char )force_subclients[2]) & 7) | (int )((signed char )(((int )force_subclients[3] & 7) << 4)))));
  } else {
  }
  tmp___0 = w83791d_read(client, 74);
  val = (u8 )tmp___0;
  if (((int )val & 8) == 0) {
    data->lm75[0] = i2c_new_dummy(adapter, (int )(((unsigned int )((u16 )val) & 7U) + 72U));
  } else {
  }
  if ((int )((signed char )val) >= 0) {
    if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0) && (((int )val ^ ((int )val >> 4)) & 7) == 0) {
      dev_err((struct device const *)(& client->dev), "duplicate addresses 0x%x, use force_subclient\n",
              (int )(data->lm75[0])->addr);
      err = -19;
      goto error_sc_1;
    } else {
    }
    data->lm75[1] = i2c_new_dummy(adapter, (int )(((unsigned int )((u16 )((int )val >> 4)) & 7U) + 72U));
  } else {
  }
  return (0);
  error_sc_1: ;
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  error_sc_0: ;
  return (err);
}
}
static int w83791d_detect(struct i2c_client *client , struct i2c_board_info *info )
{ struct i2c_adapter *adapter ;
  int val1 ;
  int val2 ;
  unsigned short address ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  adapter = client->adapter;
  address = client->addr;
  tmp = i2c_check_functionality(adapter, 1572864U);
  if (tmp == 0) {
    return (-19);
  } else {
  }
  tmp___0 = w83791d_read(client, 64);
  if ((tmp___0 & 128) != 0) {
    return (-19);
  } else {
  }
  val1 = w83791d_read(client, 78);
  val2 = w83791d_read(client, 79);
  if ((val1 & 7) == 0) {
    if (((val1 & 128) == 0 && val2 != 163) || ((val1 & 128) != 0 && val2 != 92)) {
      return (-19);
    } else {
    }
  } else {
  }
  tmp___1 = w83791d_read(client, 72);
  if (tmp___1 != (int )address) {
    return (-19);
  } else {
  }
  tmp___2 = w83791d_read(client, 78);
  val1 = tmp___2 & 120;
  w83791d_write(client, 78, (int )((u8 )((int )((signed char )val1) | -128)));
  val1 = w83791d_read(client, 88);
  val2 = w83791d_read(client, 79);
  if (val1 != 113 || val2 != 92) {
    return (-19);
  } else {
  }
  strlcpy((char *)(& info->type), "w83791d", 20UL);
  return (0);
}
}
static int w83791d_probe(struct i2c_client *client , struct i2c_device_id const *id )
{ struct w83791d_data *data ;
  struct device *dev ;
  int i ;
  int err ;
  u8 has_fanpwm45 ;
  int val1 ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  int tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  dev = & client->dev;
  val1 = w83791d_read(client, 73);
  descriptor.modname = "w83791d";
  descriptor.function = "w83791d_probe";
  descriptor.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor.format = "Device ID version: %d.%d (0x%02x)\n";
  descriptor.lineno = 1432U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Device ID version: %d.%d (0x%02x)\n",
                      (val1 >> 5) & 7, (val1 >> 1) & 15, val1);
  } else {
  }
  tmp___0 = devm_kzalloc(& client->dev, 304UL, 208U);
  data = (struct w83791d_data *)tmp___0;
  if ((unsigned long )data == (unsigned long )((struct w83791d_data *)0)) {
    return (-12);
  } else {
  }
  i2c_set_clientdata(client, (void *)data);
  __mutex_init(& data->update_lock, "&data->update_lock", & __key);
  err = w83791d_detect_subclients(client);
  if (err != 0) {
    return (err);
  } else {
  }
  w83791d_init_client(client);
  i = 0;
  goto ldv_20230;
  ldv_20229:
  tmp___1 = w83791d_read(client, (int )W83791D_REG_FAN_MIN[i]);
  data->fan_min[i] = (u8 )tmp___1;
  i = i + 1;
  ldv_20230: ;
  if (i <= 4) {
    goto ldv_20229;
  } else {
    goto ldv_20231;
  }
  ldv_20231:
  err = sysfs_create_group(& client->dev.kobj, & w83791d_group);
  if (err != 0) {
    goto error3;
  } else {
  }
  tmp___2 = w83791d_read(client, 21);
  has_fanpwm45 = (unsigned int )((u8 )tmp___2) & 16U;
  if ((unsigned int )has_fanpwm45 != 0U) {
    err = sysfs_create_group(& client->dev.kobj, & w83791d_group_fanpwm45);
    if (err != 0) {
      goto error4;
    } else {
    }
  } else {
  }
  data->hwmon_dev = hwmon_device_register(dev);
  tmp___4 = IS_ERR((void const *)data->hwmon_dev);
  if (tmp___4 != 0L) {
    tmp___3 = PTR_ERR((void const *)data->hwmon_dev);
    err = (int )tmp___3;
    goto error5;
  } else {
  }
  return (0);
  error5: ;
  if ((unsigned int )has_fanpwm45 != 0U) {
    sysfs_remove_group(& client->dev.kobj, & w83791d_group_fanpwm45);
  } else {
  }
  error4:
  sysfs_remove_group(& client->dev.kobj, & w83791d_group);
  error3: ;
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  return (err);
}
}
static int w83791d_remove(struct i2c_client *client )
{ struct w83791d_data *data ;
  void *tmp ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  hwmon_device_unregister(data->hwmon_dev);
  sysfs_remove_group(& client->dev.kobj, & w83791d_group);
  if ((unsigned long )data->lm75[0] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[0]);
  } else {
  }
  if ((unsigned long )data->lm75[1] != (unsigned long )((struct i2c_client *)0)) {
    i2c_unregister_device(data->lm75[1]);
  } else {
  }
  return (0);
}
}
static void w83791d_init_client(struct i2c_client *client )
{ struct w83791d_data *data ;
  void *tmp ;
  u8 tmp___0 ;
  u8 old_beep ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  if ((int )reset || (int )init) {
    tmp___1 = w83791d_read(client, 77);
    old_beep = (u8 )tmp___1;
    if ((int )reset) {
      w83791d_write(client, 64, 128);
    } else {
    }
    w83791d_write(client, 77, (int )((unsigned int )old_beep | 128U));
    tmp___2 = w83791d_read(client, (int )W83791D_REG_BEEP_CTRL[1]);
    tmp___0 = (u8 )tmp___2;
    w83791d_write(client, (int )W83791D_REG_BEEP_CTRL[1], (int )tmp___0 & 239);
    if ((int )init) {
      tmp___3 = w83791d_read(client, 194);
      tmp___0 = (u8 )tmp___3;
      if ((int )tmp___0 & 1) {
        w83791d_write(client, 194, (int )tmp___0 & 254);
      } else {
      }
      tmp___4 = w83791d_read(client, 202);
      tmp___0 = (u8 )tmp___4;
      if ((int )tmp___0 & 1) {
        w83791d_write(client, 202, (int )tmp___0 & 254);
      } else {
      }
      tmp___5 = w83791d_read(client, 64);
      tmp___0 = (unsigned int )((u8 )tmp___5) & 247U;
      w83791d_write(client, 64, (int )((unsigned int )tmp___0 | 1U));
    } else {
    }
  } else {
  }
  data->vrm = vid_which_vrm();
  return;
}
}
static struct w83791d_data *w83791d_update_device(struct device *dev )
{ struct i2c_client *client ;
  struct device const *__mptr ;
  struct w83791d_data *data ;
  void *tmp ;
  int i ;
  int j ;
  u8 reg_array_tmp[3U] ;
  u8 vbat_reg ;
  struct _ddebug descriptor ;
  long tmp___0 ;
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
  {
  __mptr = (struct device const *)dev;
  client = (struct i2c_client *)__mptr + 0xffffffffffffffd8UL;
  tmp = i2c_get_clientdata((struct i2c_client const *)client);
  data = (struct w83791d_data *)tmp;
  ldv_mutex_lock_34(& data->update_lock);
  if ((long )(data->last_updated + 750UL) - (long )jiffies < 0L || (int )((signed char )data->valid) == 0) {
    descriptor.modname = "w83791d";
    descriptor.function = "w83791d_update_device";
    descriptor.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
    descriptor.format = "Starting w83791d device update\n";
    descriptor.lineno = 1579U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "Starting w83791d device update\n");
    } else {
    }
    i = 0;
    goto ldv_20265;
    ldv_20264:
    tmp___1 = w83791d_read(client, (int )W83791D_REG_IN[i]);
    data->in[i] = (u8 )tmp___1;
    tmp___2 = w83791d_read(client, (int )W83791D_REG_IN_MAX[i]);
    data->in_max[i] = (u8 )tmp___2;
    tmp___3 = w83791d_read(client, (int )W83791D_REG_IN_MIN[i]);
    data->in_min[i] = (u8 )tmp___3;
    i = i + 1;
    ldv_20265: ;
    if (i <= 9) {
      goto ldv_20264;
    } else {
      goto ldv_20266;
    }
    ldv_20266:
    i = 0;
    goto ldv_20268;
    ldv_20267:
    tmp___4 = w83791d_read(client, (int )W83791D_REG_FAN[i]);
    data->fan[i] = (u8 )tmp___4;
    tmp___5 = w83791d_read(client, (int )W83791D_REG_FAN_MIN[i]);
    data->fan_min[i] = (u8 )tmp___5;
    i = i + 1;
    ldv_20268: ;
    if (i <= 4) {
      goto ldv_20267;
    } else {
      goto ldv_20269;
    }
    ldv_20269:
    i = 0;
    goto ldv_20271;
    ldv_20270:
    tmp___6 = w83791d_read(client, (int )W83791D_REG_FAN_DIV[i]);
    reg_array_tmp[i] = (u8 )tmp___6;
    i = i + 1;
    ldv_20271: ;
    if (i <= 2) {
      goto ldv_20270;
    } else {
      goto ldv_20272;
    }
    ldv_20272:
    data->fan_div[0] = (unsigned int )((u8 )((int )reg_array_tmp[0] >> 4)) & 3U;
    data->fan_div[1] = (u8 )((int )reg_array_tmp[0] >> 6);
    data->fan_div[2] = (u8 )((int )reg_array_tmp[1] >> 6);
    data->fan_div[3] = (unsigned int )reg_array_tmp[2] & 7U;
    data->fan_div[4] = (unsigned int )((u8 )((int )reg_array_tmp[2] >> 4)) & 7U;
    tmp___7 = w83791d_read(client, 93);
    vbat_reg = (u8 )tmp___7;
    i = 0;
    goto ldv_20274;
    ldv_20273:
    data->fan_div[i] = (u8 )((int )((signed char )data->fan_div[i]) | ((int )((signed char )((int )vbat_reg >> (i + 3))) & 4));
    i = i + 1;
    ldv_20274: ;
    if (i <= 2) {
      goto ldv_20273;
    } else {
      goto ldv_20275;
    }
    ldv_20275:
    i = 0;
    goto ldv_20277;
    ldv_20276:
    tmp___8 = w83791d_read(client, (int )W83791D_REG_PWM[i]);
    data->pwm[i] = (u8 )tmp___8;
    i = i + 1;
    ldv_20277: ;
    if (i <= 4) {
      goto ldv_20276;
    } else {
      goto ldv_20278;
    }
    ldv_20278:
    i = 0;
    goto ldv_20280;
    ldv_20279:
    tmp___9 = w83791d_read(client, (int )W83791D_REG_FAN_CFG[i]);
    reg_array_tmp[i] = (u8 )tmp___9;
    i = i + 1;
    ldv_20280: ;
    if (i <= 1) {
      goto ldv_20279;
    } else {
      goto ldv_20281;
    }
    ldv_20281:
    data->pwm_enable[0] = (unsigned int )((u8 )((int )reg_array_tmp[0] >> 2)) & 3U;
    data->pwm_enable[1] = (unsigned int )((u8 )((int )reg_array_tmp[0] >> 4)) & 3U;
    data->pwm_enable[2] = (unsigned int )((u8 )((int )reg_array_tmp[1] >> 2)) & 3U;
    i = 0;
    goto ldv_20283;
    ldv_20282:
    tmp___10 = w83791d_read(client, (int )W83791D_REG_TEMP_TARGET[i]);
    data->temp_target[i] = (unsigned int )((u8 )tmp___10) & 127U;
    i = i + 1;
    ldv_20283: ;
    if (i <= 2) {
      goto ldv_20282;
    } else {
      goto ldv_20284;
    }
    ldv_20284:
    i = 0;
    goto ldv_20286;
    ldv_20285:
    tmp___11 = w83791d_read(client, (int )W83791D_REG_TEMP_TOL[i]);
    reg_array_tmp[i] = (u8 )tmp___11;
    i = i + 1;
    ldv_20286: ;
    if (i <= 1) {
      goto ldv_20285;
    } else {
      goto ldv_20287;
    }
    ldv_20287:
    data->temp_tolerance[0] = (unsigned int )reg_array_tmp[0] & 15U;
    data->temp_tolerance[1] = (u8 )((int )reg_array_tmp[0] >> 4);
    data->temp_tolerance[2] = (unsigned int )reg_array_tmp[1] & 15U;
    i = 0;
    goto ldv_20289;
    ldv_20288:
    tmp___12 = w83791d_read(client, (int )W83791D_REG_TEMP1[i]);
    data->temp1[i] = (s8 )tmp___12;
    i = i + 1;
    ldv_20289: ;
    if (i <= 2) {
      goto ldv_20288;
    } else {
      goto ldv_20290;
    }
    ldv_20290:
    i = 0;
    goto ldv_20295;
    ldv_20294:
    j = 0;
    goto ldv_20292;
    ldv_20291:
    tmp___13 = w83791d_read(client, (int )W83791D_REG_TEMP_ADD[i][j * 2]);
    tmp___14 = w83791d_read(client, (int )W83791D_REG_TEMP_ADD[i][j * 2 + 1]);
    data->temp_add[i][j] = (int )((s16 )(tmp___13 << 8)) | (int )((s16 )tmp___14);
    j = j + 1;
    ldv_20292: ;
    if (j <= 2) {
      goto ldv_20291;
    } else {
      goto ldv_20293;
    }
    ldv_20293:
    i = i + 1;
    ldv_20295: ;
    if (i <= 1) {
      goto ldv_20294;
    } else {
      goto ldv_20296;
    }
    ldv_20296:
    tmp___15 = w83791d_read(client, 169);
    tmp___16 = w83791d_read(client, 170);
    tmp___17 = w83791d_read(client, 171);
    data->alarms = (u32 )((tmp___15 + (tmp___16 << 8)) + (tmp___17 << 16));
    tmp___18 = w83791d_read(client, (int )W83791D_REG_BEEP_CTRL[0]);
    tmp___19 = w83791d_read(client, (int )W83791D_REG_BEEP_CTRL[1]);
    tmp___20 = w83791d_read(client, (int )W83791D_REG_BEEP_CTRL[2]);
    data->beep_mask = (u32 )((tmp___18 + (tmp___19 << 8)) + (tmp___20 << 16));
    data->beep_enable = (unsigned int )((u8 )(data->beep_mask >> 15)) & 1U;
    i = w83791d_read(client, 71);
    data->vid = (unsigned int )((u8 )i) & 15U;
    tmp___21 = w83791d_read(client, 73);
    data->vid = (u8 )((int )((signed char )data->vid) | (int )((signed char )((tmp___21 & 1) << 4)));
    data->last_updated = jiffies;
    data->valid = 1;
  } else {
  }
  ldv_mutex_unlock_35(& data->update_lock);
  w83791d_print_debug(data, dev);
  return (data);
}
}
static void w83791d_print_debug(struct w83791d_data *data , struct device *dev )
{ int i ;
  int j ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  long tmp___3 ;
  struct _ddebug descriptor___4 ;
  long tmp___4 ;
  struct _ddebug descriptor___5 ;
  long tmp___5 ;
  struct _ddebug descriptor___6 ;
  long tmp___6 ;
  struct _ddebug descriptor___7 ;
  long tmp___7 ;
  struct _ddebug descriptor___8 ;
  long tmp___8 ;
  struct _ddebug descriptor___9 ;
  long tmp___9 ;
  struct _ddebug descriptor___10 ;
  long tmp___10 ;
  struct _ddebug descriptor___11 ;
  long tmp___11 ;
  struct _ddebug descriptor___12 ;
  long tmp___12 ;
  struct _ddebug descriptor___13 ;
  long tmp___13 ;
  struct _ddebug descriptor___14 ;
  long tmp___14 ;
  struct _ddebug descriptor___15 ;
  long tmp___15 ;
  struct _ddebug descriptor___16 ;
  long tmp___16 ;
  struct _ddebug descriptor___17 ;
  long tmp___17 ;
  struct _ddebug descriptor___18 ;
  long tmp___18 ;
  {
  i = 0;
  j = 0;
  descriptor.modname = "w83791d";
  descriptor.function = "w83791d_print_debug";
  descriptor.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor.format = "======Start of w83791d debug values======\n";
  descriptor.lineno = 1706U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "======Start of w83791d debug values======\n");
  } else {
  }
  descriptor___0.modname = "w83791d";
  descriptor___0.function = "w83791d_print_debug";
  descriptor___0.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___0.format = "%d set of Voltages: ===>\n";
  descriptor___0.lineno = 1707U;
  descriptor___0.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "%d set of Voltages: ===>\n",
                      10);
  } else {
  }
  i = 0;
  goto ldv_20310;
  ldv_20309:
  descriptor___1.modname = "w83791d";
  descriptor___1.function = "w83791d_print_debug";
  descriptor___1.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___1.format = "vin[%d] is:     0x%02x\n";
  descriptor___1.lineno = 1709U;
  descriptor___1.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "vin[%d] is:     0x%02x\n",
                      i, (int )data->in[i]);
  } else {
  }
  descriptor___2.modname = "w83791d";
  descriptor___2.function = "w83791d_print_debug";
  descriptor___2.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___2.format = "vin[%d] min is: 0x%02x\n";
  descriptor___2.lineno = 1710U;
  descriptor___2.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "vin[%d] min is: 0x%02x\n",
                      i, (int )data->in_min[i]);
  } else {
  }
  descriptor___3.modname = "w83791d";
  descriptor___3.function = "w83791d_print_debug";
  descriptor___3.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___3.format = "vin[%d] max is: 0x%02x\n";
  descriptor___3.lineno = 1711U;
  descriptor___3.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev, "vin[%d] max is: 0x%02x\n",
                      i, (int )data->in_max[i]);
  } else {
  }
  i = i + 1;
  ldv_20310: ;
  if (i <= 9) {
    goto ldv_20309;
  } else {
    goto ldv_20311;
  }
  ldv_20311:
  descriptor___4.modname = "w83791d";
  descriptor___4.function = "w83791d_print_debug";
  descriptor___4.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___4.format = "%d set of Fan Counts/Divisors: ===>\n";
  descriptor___4.lineno = 1713U;
  descriptor___4.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)dev, "%d set of Fan Counts/Divisors: ===>\n",
                      5);
  } else {
  }
  i = 0;
  goto ldv_20317;
  ldv_20316:
  descriptor___5.modname = "w83791d";
  descriptor___5.function = "w83791d_print_debug";
  descriptor___5.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___5.format = "fan[%d] is:     0x%02x\n";
  descriptor___5.lineno = 1715U;
  descriptor___5.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)dev, "fan[%d] is:     0x%02x\n",
                      i, (int )data->fan[i]);
  } else {
  }
  descriptor___6.modname = "w83791d";
  descriptor___6.function = "w83791d_print_debug";
  descriptor___6.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___6.format = "fan[%d] min is: 0x%02x\n";
  descriptor___6.lineno = 1716U;
  descriptor___6.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)dev, "fan[%d] min is: 0x%02x\n",
                      i, (int )data->fan_min[i]);
  } else {
  }
  descriptor___7.modname = "w83791d";
  descriptor___7.function = "w83791d_print_debug";
  descriptor___7.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___7.format = "fan_div[%d] is: 0x%02x\n";
  descriptor___7.lineno = 1717U;
  descriptor___7.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)dev, "fan_div[%d] is: 0x%02x\n",
                      i, (int )data->fan_div[i]);
  } else {
  }
  i = i + 1;
  ldv_20317: ;
  if (i <= 4) {
    goto ldv_20316;
  } else {
    goto ldv_20318;
  }
  ldv_20318:
  descriptor___8.modname = "w83791d";
  descriptor___8.function = "w83791d_print_debug";
  descriptor___8.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___8.format = "%d set of Temperatures: ===>\n";
  descriptor___8.lineno = 1724U;
  descriptor___8.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)dev, "%d set of Temperatures: ===>\n",
                      3);
  } else {
  }
  i = 0;
  goto ldv_20322;
  ldv_20321:
  descriptor___9.modname = "w83791d";
  descriptor___9.function = "w83791d_print_debug";
  descriptor___9.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___9.format = "temp1[%d] is: 0x%02x\n";
  descriptor___9.lineno = 1726U;
  descriptor___9.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)dev, "temp1[%d] is: 0x%02x\n",
                      i, (int )((unsigned char )data->temp1[i]));
  } else {
  }
  i = i + 1;
  ldv_20322: ;
  if (i <= 2) {
    goto ldv_20321;
  } else {
    goto ldv_20323;
  }
  ldv_20323:
  i = 0;
  goto ldv_20329;
  ldv_20328:
  j = 0;
  goto ldv_20326;
  ldv_20325:
  descriptor___10.modname = "w83791d";
  descriptor___10.function = "w83791d_print_debug";
  descriptor___10.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___10.format = "temp_add[%d][%d] is: 0x%04x\n";
  descriptor___10.lineno = 1730U;
  descriptor___10.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)dev, "temp_add[%d][%d] is: 0x%04x\n",
                      i, j, (int )((unsigned short )data->temp_add[i][j]));
  } else {
  }
  j = j + 1;
  ldv_20326: ;
  if (j <= 2) {
    goto ldv_20325;
  } else {
    goto ldv_20327;
  }
  ldv_20327:
  i = i + 1;
  ldv_20329: ;
  if (i <= 1) {
    goto ldv_20328;
  } else {
    goto ldv_20330;
  }
  ldv_20330:
  descriptor___11.modname = "w83791d";
  descriptor___11.function = "w83791d_print_debug";
  descriptor___11.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___11.format = "Misc Information: ===>\n";
  descriptor___11.lineno = 1734U;
  descriptor___11.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    __dynamic_dev_dbg(& descriptor___11, (struct device const *)dev, "Misc Information: ===>\n");
  } else {
  }
  descriptor___12.modname = "w83791d";
  descriptor___12.function = "w83791d_print_debug";
  descriptor___12.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___12.format = "alarm is:     0x%08x\n";
  descriptor___12.lineno = 1735U;
  descriptor___12.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    __dynamic_dev_dbg(& descriptor___12, (struct device const *)dev, "alarm is:     0x%08x\n",
                      data->alarms);
  } else {
  }
  descriptor___13.modname = "w83791d";
  descriptor___13.function = "w83791d_print_debug";
  descriptor___13.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___13.format = "beep_mask is: 0x%08x\n";
  descriptor___13.lineno = 1736U;
  descriptor___13.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    __dynamic_dev_dbg(& descriptor___13, (struct device const *)dev, "beep_mask is: 0x%08x\n",
                      data->beep_mask);
  } else {
  }
  descriptor___14.modname = "w83791d";
  descriptor___14.function = "w83791d_print_debug";
  descriptor___14.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___14.format = "beep_enable is: %d\n";
  descriptor___14.lineno = 1737U;
  descriptor___14.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    __dynamic_dev_dbg(& descriptor___14, (struct device const *)dev, "beep_enable is: %d\n",
                      (int )data->beep_enable);
  } else {
  }
  descriptor___15.modname = "w83791d";
  descriptor___15.function = "w83791d_print_debug";
  descriptor___15.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___15.format = "vid is: 0x%02x\n";
  descriptor___15.lineno = 1738U;
  descriptor___15.flags = 1U;
  tmp___15 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    __dynamic_dev_dbg(& descriptor___15, (struct device const *)dev, "vid is: 0x%02x\n",
                      (int )data->vid);
  } else {
  }
  descriptor___16.modname = "w83791d";
  descriptor___16.function = "w83791d_print_debug";
  descriptor___16.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___16.format = "vrm is: 0x%02x\n";
  descriptor___16.lineno = 1739U;
  descriptor___16.flags = 1U;
  tmp___16 = ldv__builtin_expect((long )descriptor___16.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    __dynamic_dev_dbg(& descriptor___16, (struct device const *)dev, "vrm is: 0x%02x\n",
                      (int )data->vrm);
  } else {
  }
  descriptor___17.modname = "w83791d";
  descriptor___17.function = "w83791d_print_debug";
  descriptor___17.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___17.format = "=======End of w83791d debug values========\n";
  descriptor___17.lineno = 1740U;
  descriptor___17.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___17.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    __dynamic_dev_dbg(& descriptor___17, (struct device const *)dev, "=======End of w83791d debug values========\n");
  } else {
  }
  descriptor___18.modname = "w83791d";
  descriptor___18.function = "w83791d_print_debug";
  descriptor___18.filename = "/work/ldvuser/zakharov_benchmarks/bench/cpa/work/current--X--drivers/hwmon/w83791d.ko--X--x1linux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/12/dscv_tempdir/dscv/ri/32_7a/drivers/hwmon/w83791d.c.prepared";
  descriptor___18.format = "\n";
  descriptor___18.lineno = 1741U;
  descriptor___18.flags = 1U;
  tmp___18 = ldv__builtin_expect((long )descriptor___18.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    __dynamic_dev_dbg(& descriptor___18, (struct device const *)dev, "\n");
  } else {
  }
  return;
}
}
static int w83791d_driver_init(void)
{ int tmp ;
  {
  tmp = i2c_register_driver(& __this_module, & w83791d_driver);
  return (tmp);
}
}
static void w83791d_driver_exit(void)
{
  {
  i2c_del_driver(& w83791d_driver);
  return;
}
}
struct device_attribute *ldvarg7 ;
size_t ldvarg3 ;
struct device *ldvarg8 ;
struct i2c_board_info *ldvarg1 ;
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize(void) ;
struct device_attribute *ldvarg10 ;
char *ldvarg9 ;
struct i2c_client *w83791d_driver_group0 ;
struct device *dev_attr_vrm_group0 ;
struct i2c_device_id *ldvarg0 ;
struct device *ldvarg5 ;
char *ldvarg6 ;
char *ldvarg4 ;
struct device_attribute *dev_attr_vrm_group1 ;
void ldv_check_final_state(void) ;
char *ldvarg2 ;
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
  ldv_20418:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      w83791d_detect(w83791d_driver_group0, ldvarg1);
      ldv_state_variable_4 = 1;
    } else {
    }
    if (ldv_state_variable_4 == 2) {
      w83791d_detect(w83791d_driver_group0, ldvarg1);
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_20393;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = w83791d_probe(w83791d_driver_group0, (struct i2c_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_20393;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      w83791d_remove(w83791d_driver_group0);
      ldv_state_variable_4 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_20393;
    default: ;
    goto ldv_20393;
    }
    ldv_20393: ;
  } else {
  }
  goto ldv_20397;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      store_vrm_reg(dev_attr_vrm_group0, dev_attr_vrm_group1, (char const *)ldvarg4,
                    ldvarg3);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_20400;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      show_vrm_reg(dev_attr_vrm_group0, dev_attr_vrm_group1, ldvarg2);
      ldv_state_variable_1 = 1;
    } else {
    }
    goto ldv_20400;
    default: ;
    goto ldv_20400;
    }
    ldv_20400: ;
  } else {
  }
  goto ldv_20397;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      w83791d_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_20406;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = w83791d_driver_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_state_variable_3 = 1;
        ldv_state_variable_1 = 1;
        ldv_state_variable_4 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_20406;
    default: ;
    goto ldv_20406;
    }
    ldv_20406: ;
  } else {
  }
  goto ldv_20397;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      show_alarms_reg(ldvarg5, ldvarg7, ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_20411;
    default: ;
    goto ldv_20411;
    }
    ldv_20411: ;
  } else {
  }
  goto ldv_20397;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      show_vid_reg(ldvarg8, ldvarg10, ldvarg9);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_20415;
    default: ;
    goto ldv_20415;
    }
    ldv_20415: ;
  } else {
  }
  goto ldv_20397;
  default: ;
  goto ldv_20397;
  }
  ldv_20397: ;
  goto ldv_20418;
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
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
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_8(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_28(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_update_lock_of_w83791d_data(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_update_lock_of_w83791d_data(ldv_func_arg1);
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
static int ldv_mutex_update_lock_of_w83791d_data ;
int ldv_mutex_lock_interruptible_update_lock_of_w83791d_data(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_update_lock_of_w83791d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_update_lock_of_w83791d_data(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_update_lock_of_w83791d_data = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_update_lock_of_w83791d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_update_lock_of_w83791d_data = 2;
  return;
}
}
int ldv_mutex_trylock_update_lock_of_w83791d_data(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_update_lock_of_w83791d_data = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_update_lock_of_w83791d_data(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_update_lock_of_w83791d_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_update_lock_of_w83791d_data(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
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
void ldv_mutex_unlock_update_lock_of_w83791d_data(struct mutex *lock )
{
  {
  if (ldv_mutex_update_lock_of_w83791d_data == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_update_lock_of_w83791d_data = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_update_lock_of_w83791d_data = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
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
  if (ldv_mutex_update_lock_of_w83791d_data == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
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
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *devm_kzalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
struct device *hwmon_device_register(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
void hwmon_device_unregister(struct device *arg0) {
  return;
}
void i2c_del_driver(struct i2c_driver *arg0) {
  return;
}
struct i2c_client *i2c_new_dummy(struct i2c_adapter *arg0, u16 arg1) {
  return ldv_malloc(sizeof(struct i2c_client));
}
int __VERIFIER_nondet_int(void);
int i2c_register_driver(struct module *arg0, struct i2c_driver *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_read_byte_data(const struct i2c_client *arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
s32 i2c_smbus_write_byte_data(const struct i2c_client *arg0, u8 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
void i2c_unregister_device(struct i2c_client *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kstrtoll(const char *arg0, unsigned int arg1, long long *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kstrtoull(const char *arg0, unsigned int arg1, unsigned long long *arg2) {
  return __VERIFIER_nondet_int();
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
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int vid_from_reg(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char __VERIFIER_nondet_uchar(void);
u8 vid_which_vrm() {
  return __VERIFIER_nondet_uchar();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
