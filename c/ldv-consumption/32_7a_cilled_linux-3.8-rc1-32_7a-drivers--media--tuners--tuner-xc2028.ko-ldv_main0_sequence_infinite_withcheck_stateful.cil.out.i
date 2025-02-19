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
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
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
struct module;
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
struct vm_area_struct;
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
struct timespec;
struct kref {
   atomic_t refcount ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
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
struct inode;
struct dentry;
struct user_namespace;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_38 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_38 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_39 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_39 mm_context_t;
struct address_space;
union __anonunion_ldv_10279_41 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_10289_45 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_10291_44 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_10289_45 ldv_10289 ;
   int units ;
};
struct __anonstruct_ldv_10293_43 {
   union __anonunion_ldv_10291_44 ldv_10291 ;
   atomic_t _count ;
};
union __anonunion_ldv_10294_42 {
   unsigned long counters ;
   struct __anonstruct_ldv_10293_43 ldv_10293 ;
};
struct __anonstruct_ldv_10295_40 {
   union __anonunion_ldv_10279_41 ldv_10279 ;
   union __anonunion_ldv_10294_42 ldv_10294 ;
};
struct __anonstruct_ldv_10302_47 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_10306_46 {
   struct list_head lru ;
   struct __anonstruct_ldv_10302_47 ldv_10302 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_10311_48 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_10295_40 ldv_10295 ;
   union __anonunion_ldv_10306_46 ldv_10306 ;
   union __anonunion_ldv_10311_48 ldv_10311 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_50 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_49 {
   struct __anonstruct_linear_50 linear ;
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
   union __anonunion_shared_49 shared ;
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
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_141 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_141 sigset_t;
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
struct __anonstruct__kill_143 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_144 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_145 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_146 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_147 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_148 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_149 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_142 {
   int _pad[28U] ;
   struct __anonstruct__kill_143 _kill ;
   struct __anonstruct__timer_144 _timer ;
   struct __anonstruct__rt_145 _rt ;
   struct __anonstruct__sigchld_146 _sigchld ;
   struct __anonstruct__sigfault_147 _sigfault ;
   struct __anonstruct__sigpoll_148 _sigpoll ;
   struct __anonstruct__sigsys_149 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_142 _sifields ;
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
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_15952_154 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_15961_155 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_156 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_157 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_15952_154 ldv_15952 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_15961_155 ldv_15961 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_156 type_data ;
   union __anonunion_payload_157 payload ;
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
union __anonunion_ki_obj_158 {
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
   union __anonunion_ki_obj_158 ki_obj ;
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
struct mem_cgroup;
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
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum v4l2_tuner_type {
    V4L2_TUNER_RADIO = 1,
    V4L2_TUNER_ANALOG_TV = 2,
    V4L2_TUNER_DIGITAL_TV = 3
} ;
typedef __u64 v4l2_std_id;
struct __anonstruct_ldv_19401_181 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19402_180 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19401_181 ldv_19401 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19402_180 ldv_19402 ;
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
struct tuner_i2c_props {
   u8 addr ;
   struct i2c_adapter *adap ;
   int count ;
   char *name ;
};
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_20107_186 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_20107_186 ldv_20107 ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_188 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_187 {
   __u32 data ;
   struct __anonstruct_buffer_188 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_187 u ;
   int result ;
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
struct __anonstruct_ldv_20959_190 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_20961_189 {
   struct __anonstruct_ldv_20959_190 ldv_20959 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_20961_189 ldv_20961 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_191 {
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
   union __anonunion_d_u_191 d_u ;
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
struct export_operations;
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
union __anonunion_ldv_21710_192 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_21710_192 ldv_21710 ;
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
struct writeback_control;
union __anonunion_arg_194 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_193 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_194 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_193 read_descriptor_t;
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
union __anonunion_ldv_22144_195 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_22164_196 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_22180_197 {
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
   union __anonunion_ldv_22144_195 ldv_22144 ;
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
   union __anonunion_ldv_22164_196 ldv_22164 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_22180_197 ldv_22180 ;
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
union __anonunion_f_u_198 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_198 f_u ;
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
struct __anonstruct_afs_200 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_199 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_200 afs ;
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
   union __anonunion_fl_u_199 fl_u ;
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
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * ) ;
   int (*get_afc)(struct dvb_frontend * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_202 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_202 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
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
struct xc2028_config {
   struct i2c_adapter *i2c_adap ;
   u8 i2c_addr ;
   struct xc2028_ctrl *ctrl ;
};
struct firmware_description {
   unsigned int type ;
   v4l2_std_id id ;
   __u16 int_freq ;
   unsigned char *ptr ;
   unsigned int size ;
};
struct firmware_properties {
   unsigned int type ;
   v4l2_std_id id ;
   v4l2_std_id std_req ;
   __u16 int_freq ;
   unsigned int scode_table ;
   int scode_nr ;
};
enum xc2028_state {
    XC2028_NO_FIRMWARE = 0,
    XC2028_WAITING_FIRMWARE = 1,
    XC2028_ACTIVE = 2,
    XC2028_SLEEP = 3,
    XC2028_NODEV = 4
} ;
struct xc2028_data {
   struct list_head hybrid_tuner_instance_list ;
   struct tuner_i2c_props i2c_props ;
   __u32 frequency ;
   enum xc2028_state state ;
   char const *fname ;
   struct firmware_description *firm ;
   int firm_size ;
   __u16 firm_version ;
   __u16 hwmodel ;
   __u16 hwvers ;
   struct xc2028_ctrl ctrl ;
   struct firmware_properties cur_fw ;
   struct mutex lock ;
};
typedef int ldv_func_ret_type___2;
__inline static unsigned long __arch_hweight64(__u64 w )
{
  unsigned long res ;
  {
  res = 0UL;
  __asm__ ("661:\n\tcall __sw_hweight64\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x48,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static __u64 __le64_to_cpup(__le64 const *p )
{
  {
  return ((__u64 )*p);
}
}
__inline static __u32 __le32_to_cpup(__le32 const *p )
{
  {
  return ((__u32 )*p);
}
}
__inline static __u16 __le16_to_cpup(__le16 const *p )
{
  {
  return ((__u16 )*p);
}
}
extern int printk(char const * , ...) ;
extern void dump_stack(void) ;
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern int strcasecmp(char const * , char const * ) ;
extern char *kstrdup(char const * , gfp_t ) ;
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
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
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
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_xc2028_list_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_xc2028_list_mutex(struct mutex *lock ) ;
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern int request_firmware_nowait(struct module * , bool , char const * , struct device * ,
                                   gfp_t , void * , void (*)(struct firmware const * ,
                                                              void * ) ) ;
extern void release_firmware(struct firmware const * ) ;
extern void msleep(unsigned int ) ;
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
__inline static u16 get_unaligned_le16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __le16_to_cpup((__le16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_le32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __le32_to_cpup((__le32 const *)p);
  return (tmp);
}
}
__inline static u64 get_unaligned_le64(void const *p )
{
  __u64 tmp ;
  {
  tmp = __le64_to_cpup((__le64 const *)p);
  return (tmp);
}
}
__inline static int tuner_i2c_xfer_send(struct tuner_i2c_props *props , char *buf ,
                                        int len )
{
  struct i2c_msg msg ;
  int ret ;
  int tmp ;
  {
  msg.addr = (unsigned short )props->addr;
  msg.flags = 0U;
  msg.len = (unsigned short )len;
  msg.buf = (__u8 *)buf;
  tmp = i2c_transfer(props->adap, & msg, 1);
  ret = tmp;
  return (ret == 1 ? len : ret);
}
}
__inline static int tuner_i2c_xfer_send_recv(struct tuner_i2c_props *props , char *obuf ,
                                             int olen , char *ibuf , int ilen )
{
  struct i2c_msg msg[2U] ;
  int ret ;
  int tmp ;
  {
  msg[0].addr = (unsigned short )props->addr;
  msg[0].flags = 0U;
  msg[0].len = (unsigned short )olen;
  msg[0].buf = (__u8 *)obuf;
  msg[1].addr = (unsigned short )props->addr;
  msg[1].flags = 1U;
  msg[1].len = (unsigned short )ilen;
  msg[1].buf = (__u8 *)ibuf;
  tmp = i2c_transfer(props->adap, (struct i2c_msg *)(& msg), 2);
  ret = tmp;
  return (ret == 2 ? ilen : ret);
}
}
extern struct module __this_module ;
struct dvb_frontend *xc2028_attach(struct dvb_frontend *fe , struct xc2028_config *cfg ) ;
static int debug ;
static int no_poweroff ;
static char audio_std[8U] ;
static char firmware_name[30U] ;
static struct list_head hybrid_tuner_instance_list = {& hybrid_tuner_instance_list, & hybrid_tuner_instance_list};
static struct mutex xc2028_list_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "xc2028_list_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& xc2028_list_mutex.wait_list,
                                                                                  & xc2028_list_mutex.wait_list},
    0, 0, (void *)(& xc2028_list_mutex), {0, {0, 0}, "xc2028_list_mutex", 0, 0UL}};
static int xc2028_get_reg(struct xc2028_data *priv , u16 reg , u16 *val )
{
  unsigned char buf[2U] ;
  unsigned char ibuf[2U] ;
  int tmp ;
  int tmp___0 ;
  int _rc ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s %04x called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_get_reg", (int )reg);
  } else {
  }
  buf[0] = (unsigned char )((int )reg >> 8);
  buf[1] = (unsigned char )reg;
  _rc = tuner_i2c_xfer_send_recv(& priv->i2c_props, (char *)(& buf), 2, (char *)(& ibuf),
                                 2);
  if (_rc != 2) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\v%s %d-%04x: i2c input error: rc = %d (should be %d)\n", priv->i2c_props.name,
           tmp___2, (int )priv->i2c_props.addr, _rc, 2);
  } else {
  }
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  if (_rc != 2) {
    return (-5);
  } else {
  }
  *val = (u16 )((int )((short )ibuf[1]) | (int )((short )((int )ibuf[0] << 8)));
  return (0);
}
}
static void dump_firm_type_and_int_freq(unsigned int type , u16 int_freq )
{
  {
  if ((int )type & 1) {
    printk("BASE ");
  } else {
  }
  if ((type & 16384U) != 0U) {
    printk("INIT1 ");
  } else {
  }
  if ((type & 2U) != 0U) {
    printk("F8MHZ ");
  } else {
  }
  if ((type & 4U) != 0U) {
    printk("MTS ");
  } else {
  }
  if ((type & 8U) != 0U) {
    printk("D2620 ");
  } else {
  }
  if ((type & 16U) != 0U) {
    printk("D2633 ");
  } else {
  }
  if ((type & 32U) != 0U) {
    printk("DTV6 ");
  } else {
  }
  if ((type & 64U) != 0U) {
    printk("QAM ");
  } else {
  }
  if ((type & 128U) != 0U) {
    printk("DTV7 ");
  } else {
  }
  if ((type & 256U) != 0U) {
    printk("DTV78 ");
  } else {
  }
  if ((type & 512U) != 0U) {
    printk("DTV8 ");
  } else {
  }
  if ((type & 1024U) != 0U) {
    printk("FM ");
  } else {
  }
  if ((type & 2048U) != 0U) {
    printk("INPUT1 ");
  } else {
  }
  if ((type & 4096U) != 0U) {
    printk("LCD ");
  } else {
  }
  if ((type & 8192U) != 0U) {
    printk("NOGD ");
  } else {
  }
  if ((type & 32768U) != 0U) {
    printk("MONO ");
  } else {
  }
  if ((type & 65536U) != 0U) {
    printk("ATSC ");
  } else {
  }
  if ((type & 131072U) != 0U) {
    printk("IF ");
  } else {
  }
  if ((type & 262144U) != 0U) {
    printk("LG60 ");
  } else {
  }
  if ((type & 524288U) != 0U) {
    printk("ATI638 ");
  } else {
  }
  if ((type & 1048576U) != 0U) {
    printk("OREN538 ");
  } else {
  }
  if ((type & 2097152U) != 0U) {
    printk("OREN36 ");
  } else {
  }
  if ((type & 4194304U) != 0U) {
    printk("TOYOTA388 ");
  } else {
  }
  if ((type & 8388608U) != 0U) {
    printk("TOYOTA794 ");
  } else {
  }
  if ((type & 16777216U) != 0U) {
    printk("DIBCOM52 ");
  } else {
  }
  if ((type & 33554432U) != 0U) {
    printk("ZARLINK456 ");
  } else {
  }
  if ((type & 67108864U) != 0U) {
    printk("CHINA ");
  } else {
  }
  if ((type & 134217728U) != 0U) {
    printk("F6MHZ ");
  } else {
  }
  if ((type & 268435456U) != 0U) {
    printk("INPUT2 ");
  } else {
  }
  if ((type & 536870912U) != 0U) {
    printk("SCODE ");
  } else {
  }
  if ((type & 1073741824U) != 0U) {
    printk("HAS_IF_%d ", (int )int_freq);
  } else {
  }
  return;
}
}
static v4l2_std_id parse_audio_std_option(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp = strcasecmp((char const *)(& audio_std), "A2");
  if (tmp == 0) {
    return (12884901888ULL);
  } else {
  }
  tmp___0 = strcasecmp((char const *)(& audio_std), "A2/A");
  if (tmp___0 == 0) {
    return (4294967296ULL);
  } else {
  }
  tmp___1 = strcasecmp((char const *)(& audio_std), "A2/B");
  if (tmp___1 == 0) {
    return (8589934592ULL);
  } else {
  }
  tmp___2 = strcasecmp((char const *)(& audio_std), "NICAM");
  if (tmp___2 == 0) {
    return (51539607552ULL);
  } else {
  }
  tmp___3 = strcasecmp((char const *)(& audio_std), "NICAM/A");
  if (tmp___3 == 0) {
    return (17179869184ULL);
  } else {
  }
  tmp___4 = strcasecmp((char const *)(& audio_std), "NICAM/B");
  if (tmp___4 == 0) {
    return (34359738368ULL);
  } else {
  }
  return (0ULL);
}
}
static int check_device_status(struct xc2028_data *priv )
{
  {
  switch ((unsigned int )priv->state) {
  case 0U: ;
  case 1U: ;
  return (-11);
  case 2U: ;
  case 3U: ;
  return (0);
  case 4U: ;
  return (-19);
  }
  return (0);
}
}
static void free_firmware(struct xc2028_data *priv )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "free_firmware");
  } else {
  }
  if ((unsigned long )priv->firm == (unsigned long )((struct firmware_description *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_24935;
  ldv_24934:
  kfree((void const *)(priv->firm + (unsigned long )i)->ptr);
  i = i + 1;
  ldv_24935: ;
  if (priv->firm_size > i) {
    goto ldv_24934;
  } else {
  }
  kfree((void const *)priv->firm);
  priv->firm = 0;
  priv->firm_size = 0;
  priv->state = 0;
  memset((void *)(& priv->cur_fw), 0, 40UL);
  return;
}
}
static int load_all_firmwares(struct dvb_frontend *fe , struct firmware const *fw )
{
  struct xc2028_data *priv ;
  unsigned char const *p ;
  unsigned char const *endp ;
  int rc ;
  int n ;
  int n_array ;
  char name[33U] ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  u16 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  __u32 type ;
  __u32 size ;
  v4l2_std_id id ;
  __u16 int_freq ;
  int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  void *tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___18 ;
  int tmp___19 ;
  int tmp___20 ;
  int tmp___21 ;
  int tmp___22 ;
  int tmp___23 ;
  int tmp___24 ;
  int tmp___25 ;
  int tmp___26 ;
  int tmp___27 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  rc = 0;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "load_all_firmwares");
  } else {
  }
  p = (unsigned char const *)fw->data;
  endp = p + fw->size;
  if ((unsigned long )fw->size <= 35UL) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\v%s %d-%04x: Error: firmware file %s has invalid size!\n", priv->i2c_props.name,
           tmp___2, (int )priv->i2c_props.addr, priv->fname);
    goto corrupt;
  } else {
  }
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& name), (void const *)p, __len);
  } else {
    __ret = memcpy((void *)(& name), (void const *)p, __len);
  }
  name[32UL] = 0;
  p = p + 32UL;
  priv->firm_version = get_unaligned_le16((void const *)p);
  p = p + 2UL;
  tmp___3 = get_unaligned_le16((void const *)p);
  n_array = (int )tmp___3;
  p = p + 2UL;
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___5 = tmp___4;
  } else {
    tmp___5 = -1;
  }
  printk("\016%s %d-%04x: Loading %d firmware images from %s, type: %s, ver %d.%d\n",
         priv->i2c_props.name, tmp___5, (int )priv->i2c_props.addr, n_array, priv->fname,
         (char *)(& name), (int )priv->firm_version >> 8, (int )priv->firm_version & 255);
  tmp___6 = kcalloc((size_t )n_array, 40UL, 208U);
  priv->firm = (struct firmware_description *)tmp___6;
  if ((unsigned long )priv->firm == (unsigned long )((struct firmware_description *)0)) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___7 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___8 = tmp___7;
    } else {
      tmp___8 = -1;
    }
    printk("\v%s %d-%04x: Not enough memory to load firmware file.\n", priv->i2c_props.name,
           tmp___8, (int )priv->i2c_props.addr);
    rc = -12;
    goto err;
  } else {
  }
  priv->firm_size = n_array;
  n = -1;
  goto ldv_24963;
  ldv_24962:
  int_freq = 0U;
  n = n + 1;
  if (n >= n_array) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___9 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___10 = tmp___9;
    } else {
      tmp___10 = -1;
    }
    printk("\v%s %d-%04x: More firmware images in file than were expected!\n", priv->i2c_props.name,
           tmp___10, (int )priv->i2c_props.addr);
    goto corrupt;
  } else {
  }
  if ((unsigned long )((long )endp - (long )p) <= 15UL) {
    goto header;
  } else {
  }
  type = get_unaligned_le32((void const *)p);
  p = p + 4UL;
  id = get_unaligned_le64((void const *)p);
  p = p + 8UL;
  if ((type & 1073741824U) != 0U) {
    int_freq = get_unaligned_le16((void const *)p);
    p = p + 2UL;
    if ((unsigned long )((long )endp - (long )p) <= 3UL) {
      goto header;
    } else {
    }
  } else {
  }
  size = get_unaligned_le32((void const *)p);
  p = p + 4UL;
  if (size == 0U || (long )size > (long )endp - (long )p) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___11 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___12 = tmp___11;
    } else {
      tmp___12 = -1;
    }
    printk("\v%s %d-%04x: Firmware type ", priv->i2c_props.name, tmp___12, (int )priv->i2c_props.addr);
    dump_firm_type_and_int_freq(type, 0);
    printk("(%x), id %llx is corrupted (size=%d, expected %d)\n", type, id, (unsigned int )((long )endp) - (unsigned int )((long )p),
           size);
    goto corrupt;
  } else {
  }
  tmp___13 = kzalloc((size_t )size, 208U);
  (priv->firm + (unsigned long )n)->ptr = (unsigned char *)tmp___13;
  if ((unsigned long )(priv->firm + (unsigned long )n)->ptr == (unsigned long )((unsigned char *)0)) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___14 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___15 = tmp___14;
    } else {
      tmp___15 = -1;
    }
    printk("\v%s %d-%04x: Not enough memory to load firmware file.\n", priv->i2c_props.name,
           tmp___15, (int )priv->i2c_props.addr);
    rc = -12;
    goto err;
  } else {
  }
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___16 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___17 = tmp___16;
    } else {
      tmp___17 = -1;
    }
    printk("\017%s %d-%04x: Reading firmware type ", priv->i2c_props.name, tmp___17,
           (int )priv->i2c_props.addr);
  } else {
  }
  if (debug != 0) {
    dump_firm_type_and_int_freq(type, (int )int_freq);
    printk("(%x), id %llx, size=%d.\n", type, id, size);
  } else {
  }
  __len___0 = (size_t )size;
  __ret___0 = memcpy((void *)(priv->firm + (unsigned long )n)->ptr, (void const *)p,
                               __len___0);
  (priv->firm + (unsigned long )n)->type = type;
  (priv->firm + (unsigned long )n)->id = id;
  (priv->firm + (unsigned long )n)->size = size;
  (priv->firm + (unsigned long )n)->int_freq = int_freq;
  p = p + (unsigned long )size;
  ldv_24963: ;
  if ((unsigned long )p < (unsigned long )endp) {
    goto ldv_24962;
  } else {
  }
  if (n + 1 != priv->firm_size) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___18 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___19 = tmp___18;
    } else {
      tmp___19 = -1;
    }
    printk("\v%s %d-%04x: Firmware file is incomplete!\n", priv->i2c_props.name, tmp___19,
           (int )priv->i2c_props.addr);
    goto corrupt;
  } else {
  }
  goto done;
  header: ;
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___20 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___21 = tmp___20;
  } else {
    tmp___21 = -1;
  }
  printk("\v%s %d-%04x: Firmware header is incomplete!\n", priv->i2c_props.name, tmp___21,
         (int )priv->i2c_props.addr);
  corrupt:
  rc = -22;
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___22 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___23 = tmp___22;
  } else {
    tmp___23 = -1;
  }
  printk("\v%s %d-%04x: Error: firmware file is corrupted!\n", priv->i2c_props.name,
         tmp___23, (int )priv->i2c_props.addr);
  err: ;
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___24 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___25 = tmp___24;
  } else {
    tmp___25 = -1;
  }
  printk("\016%s %d-%04x: Releasing partially loaded firmware file.\n", priv->i2c_props.name,
         tmp___25, (int )priv->i2c_props.addr);
  free_firmware(priv);
  done: ;
  if (rc == 0) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___26 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___27 = tmp___26;
      } else {
        tmp___27 = -1;
      }
      printk("\017%s %d-%04x: Firmware files loaded.\n", priv->i2c_props.name, tmp___27,
             (int )priv->i2c_props.addr);
    } else {
      priv->state = 4;
    }
  } else {
  }
  return (rc);
}
}
static int seek_firmware(struct dvb_frontend *fe , unsigned int type , v4l2_std_id *id )
{
  struct xc2028_data *priv ;
  int i ;
  int best_i ;
  int best_nr_matches ;
  unsigned int type_mask ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  v4l2_std_id match_mask ;
  int nr_matches ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  best_i = -1;
  best_nr_matches = 0;
  type_mask = 0U;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called, want type=", priv->i2c_props.name, tmp___0,
           (int )priv->i2c_props.addr, "seek_firmware");
  } else {
  }
  if (debug != 0) {
    dump_firm_type_and_int_freq(type, 0);
    printk("(%x), id %016llx.\n", type, *id);
  } else {
  }
  if ((unsigned long )priv->firm == (unsigned long )((struct firmware_description *)0)) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\v%s %d-%04x: Error! firmware not loaded\n", priv->i2c_props.name, tmp___2,
           (int )priv->i2c_props.addr);
    return (-22);
  } else {
  }
  if ((type & 3758096383U) == 0U && *id == 0ULL) {
    *id = 255ULL;
  } else {
  }
  if ((int )type & 1) {
    type_mask = 268454919U;
  } else
  if ((type & 536870912U) != 0U) {
    type = type & 536870916U;
    type_mask = 536870916U;
  } else
  if ((type & 66552U) != 0U) {
    type_mask = 66552U;
  } else
  if ((type & 13316U) != 0U) {
    type_mask = 13316U;
  } else {
  }
  type = type & type_mask;
  if ((type & 536870912U) == 0U) {
    type_mask = 4294967295U;
  } else {
  }
  i = 0;
  goto ldv_24979;
  ldv_24978: ;
  if (((priv->firm + (unsigned long )i)->type & type_mask) == type && *id == (priv->firm + (unsigned long )i)->id) {
    goto found;
  } else {
  }
  i = i + 1;
  ldv_24979: ;
  if (priv->firm_size > i) {
    goto ldv_24978;
  } else {
  }
  i = 0;
  goto ldv_24985;
  ldv_24984: ;
  if (((priv->firm + (unsigned long )i)->type & type_mask) != type) {
    goto ldv_24983;
  } else {
  }
  match_mask = *id & (priv->firm + (unsigned long )i)->id;
  if (match_mask == 0ULL) {
    goto ldv_24983;
  } else {
  }
  if ((*id & match_mask) == *id) {
    goto found;
  } else {
  }
  tmp___3 = __arch_hweight64(match_mask);
  nr_matches = (int )tmp___3;
  if (nr_matches > best_nr_matches) {
    best_nr_matches = nr_matches;
    best_i = i;
  } else {
  }
  ldv_24983:
  i = i + 1;
  ldv_24985: ;
  if (priv->firm_size > i) {
    goto ldv_24984;
  } else {
  }
  if (best_nr_matches > 0) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___5 = tmp___4;
      } else {
        tmp___5 = -1;
      }
      printk("\017%s %d-%04x: Selecting best matching firmware (%d bits) for type=",
             priv->i2c_props.name, tmp___5, (int )priv->i2c_props.addr, best_nr_matches);
    } else {
    }
    dump_firm_type_and_int_freq(type, 0);
    printk("(%x), id %016llx:\n", type, *id);
    i = best_i;
    goto found;
  } else {
  }
  i = -2;
  goto ret;
  found:
  *id = (priv->firm + (unsigned long )i)->id;
  ret: ;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___6 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___7 = tmp___6;
    } else {
      tmp___7 = -1;
    }
    printk("\017%s %d-%04x: %s firmware for type=", priv->i2c_props.name, tmp___7,
           (int )priv->i2c_props.addr, i < 0 ? (char *)"Can\'t find" : (char *)"Found");
  } else {
  }
  if (debug != 0) {
    dump_firm_type_and_int_freq(type, 0);
    printk("(%x), id %016llx.\n", type, *id);
  } else {
  }
  return (i);
}
}
__inline static int do_tuner_callback(struct dvb_frontend *fe , int cmd , int arg )
{
  struct xc2028_data *priv ;
  int tmp ;
  int tmp___0 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  if ((unsigned long )fe->callback != (unsigned long )((int (*)(void * , int , int ,
                                                                int ))0)) {
    tmp = (*(fe->callback))((unsigned long )fe->dvb != (unsigned long )((struct dvb_adapter *)0) && (unsigned long )(fe->dvb)->priv != (unsigned long )((void *)0) ? (fe->dvb)->priv : (priv->i2c_props.adap)->algo_data,
                            0, cmd, arg);
    tmp___0 = tmp;
  } else {
    tmp___0 = -22;
  }
  return (tmp___0);
}
}
static int load_firmware(struct dvb_frontend *fe , unsigned int type , v4l2_std_id *id )
{
  struct xc2028_data *priv ;
  int pos ;
  int rc ;
  unsigned char *p ;
  unsigned char *endp ;
  unsigned char *buf ;
  unsigned long __lengthofbuf ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  __u16 size ;
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
  int len ;
  size_t __len ;
  void *__ret ;
  int _rc ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  int tmp___18 ;
  int tmp___19 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  __lengthofbuf = (unsigned long )((long )priv->ctrl.max_len);
  tmp = __builtin_alloca(sizeof(*buf) * __lengthofbuf);
  buf = (unsigned char *)tmp;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___0 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___1 = tmp___0;
    } else {
      tmp___1 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___1, (int )priv->i2c_props.addr,
           "load_firmware");
  } else {
  }
  pos = seek_firmware(fe, type, id);
  if (pos < 0) {
    return (pos);
  } else {
  }
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___2 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___3 = tmp___2;
  } else {
    tmp___3 = -1;
  }
  printk("\016%s %d-%04x: Loading firmware for type=", priv->i2c_props.name, tmp___3,
         (int )priv->i2c_props.addr);
  dump_firm_type_and_int_freq((priv->firm + (unsigned long )pos)->type, 0);
  printk("(%x), id %016llx.\n", (priv->firm + (unsigned long )pos)->type, *id);
  p = (priv->firm + (unsigned long )pos)->ptr;
  endp = p + (unsigned long )(priv->firm + (unsigned long )pos)->size;
  goto ldv_25007;
  ldv_25020: ;
  if ((unsigned long )(p + 2UL) > (unsigned long )endp) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___5 = tmp___4;
    } else {
      tmp___5 = -1;
    }
    printk("\v%s %d-%04x: Firmware chunk size is wrong\n", priv->i2c_props.name, tmp___5,
           (int )priv->i2c_props.addr);
    return (-22);
  } else {
  }
  size = *((__u16 *)p);
  p = p + 2UL;
  if ((unsigned int )size == 65535U) {
    return (0);
  } else {
  }
  if ((unsigned int )size == 0U) {
    rc = do_tuner_callback(fe, 0, 0);
    if (rc < 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___6 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___7 = tmp___6;
      } else {
        tmp___7 = -1;
      }
      printk("\v%s %d-%04x: Error at RESET code %d\n", priv->i2c_props.name, tmp___7,
             (int )priv->i2c_props.addr, (int )*p & 127);
      return (-22);
    } else {
    }
    goto ldv_25007;
  } else {
  }
  if ((unsigned int )size > 65279U) {
    switch ((int )size) {
    case 65280:
    rc = do_tuner_callback(fe, 1, 0);
    if (rc < 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___8 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___9 = tmp___8;
      } else {
        tmp___9 = -1;
      }
      printk("\v%s %d-%04x: Error at RESET code %d\n", priv->i2c_props.name, tmp___9,
             (int )priv->i2c_props.addr, (int )*p & 127);
      return (-22);
    } else {
    }
    goto ldv_25009;
    default: ;
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___10 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___11 = tmp___10;
    } else {
      tmp___11 = -1;
    }
    printk("\016%s %d-%04x: Invalid RESET code %d\n", priv->i2c_props.name, tmp___11,
           (int )priv->i2c_props.addr, (int )size & 127);
    return (-22);
    }
    ldv_25009: ;
    goto ldv_25007;
  } else {
  }
  if ((int )((short )size) < 0) {
    msleep((unsigned int )size & 32767U);
    goto ldv_25007;
  } else {
  }
  if ((unsigned long )(p + (unsigned long )size) > (unsigned long )endp) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___12 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___13 = tmp___12;
    } else {
      tmp___13 = -1;
    }
    printk("\v%s %d-%04x: missing bytes: need %d, have %d\n", priv->i2c_props.name,
           tmp___13, (int )priv->i2c_props.addr, (int )size, (int )((unsigned int )((long )endp) - (unsigned int )((long )p)));
    return (-22);
  } else {
  }
  *(buf + 0) = *p;
  p = p + 1;
  size = (__u16 )((int )size - 1);
  goto ldv_25018;
  ldv_25017:
  len = (int )size < priv->ctrl.max_len + -1 ? (int )size : priv->ctrl.max_len + -1;
  __len = (size_t )len;
  __ret = memcpy((void *)(& buf) + 1U, (void const *)p, __len);
  _rc = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& buf), len + 1);
  if (len + 1 != _rc) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___14 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___15 = tmp___14;
    } else {
      tmp___15 = -1;
    }
    printk("\016%s %d-%04x: i2c output error: rc = %d (should be %d)\n", priv->i2c_props.name,
           tmp___15, (int )priv->i2c_props.addr, _rc, len + 1);
  } else {
  }
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  rc = _rc;
  if (rc < 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___16 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___17 = tmp___16;
    } else {
      tmp___17 = -1;
    }
    printk("\v%s %d-%04x: %d returned from send\n", priv->i2c_props.name, tmp___17,
           (int )priv->i2c_props.addr, rc);
    return (-22);
  } else {
  }
  p = p + (unsigned long )len;
  size = (int )size - (int )((__u16 )len);
  ldv_25018: ;
  if ((unsigned int )size != 0U) {
    goto ldv_25017;
  } else {
  }
  rc = do_tuner_callback(fe, 2, 0);
  if (rc < 0 && rc != -22) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___18 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___19 = tmp___18;
    } else {
      tmp___19 = -1;
    }
    printk("\v%s %d-%04x: error executing flush: %d\n", priv->i2c_props.name, tmp___19,
           (int )priv->i2c_props.addr, rc);
    return (rc);
  } else {
  }
  ldv_25007: ;
  if ((unsigned long )p < (unsigned long )endp) {
    goto ldv_25020;
  } else {
  }
  return (0);
}
}
static int load_scode(struct dvb_frontend *fe , unsigned int type , v4l2_std_id *id ,
                      __u16 int_freq , int scode )
{
  struct xc2028_data *priv ;
  int pos ;
  int rc ;
  unsigned char *p ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 _val[4U] ;
  int _rc ;
  int tmp___3 ;
  int tmp___4 ;
  u8 _val___0[4U] ;
  int _rc___0 ;
  int tmp___5 ;
  int tmp___6 ;
  int _rc___1 ;
  int tmp___7 ;
  int tmp___8 ;
  u8 _val___1[2U] ;
  int _rc___2 ;
  int tmp___9 ;
  int tmp___10 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "load_scode");
  } else {
  }
  if ((unsigned int )int_freq == 0U) {
    pos = seek_firmware(fe, type, id);
    if (pos < 0) {
      return (pos);
    } else {
    }
  } else {
    pos = 0;
    goto ldv_25036;
    ldv_25035: ;
    if ((int )(priv->firm + (unsigned long )pos)->int_freq == (int )int_freq && ((priv->firm + (unsigned long )pos)->type & 1073741824U) != 0U) {
      goto ldv_25034;
    } else {
    }
    pos = pos + 1;
    ldv_25036: ;
    if (priv->firm_size > pos) {
      goto ldv_25035;
    } else {
    }
    ldv_25034: ;
    if (priv->firm_size == pos) {
      return (-2);
    } else {
    }
  }
  p = (priv->firm + (unsigned long )pos)->ptr;
  if (((priv->firm + (unsigned long )pos)->type & 1073741824U) != 0U) {
    if ((priv->firm + (unsigned long )pos)->size != 192U || scode > 15) {
      return (-22);
    } else {
    }
    p = p + (unsigned long )(scode * 12);
  } else {
    if (((priv->firm + (unsigned long )pos)->size != 224U || scode > 15) || (unsigned int )*((__u16 *)p + (unsigned long )(scode * 14)) != 12U) {
      return (-22);
    } else {
    }
    p = p + ((unsigned long )(scode * 14) + 2UL);
  }
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___2 = tmp___1;
  } else {
    tmp___2 = -1;
  }
  printk("\016%s %d-%04x: Loading SCODE for type=", priv->i2c_props.name, tmp___2,
         (int )priv->i2c_props.addr);
  dump_firm_type_and_int_freq((priv->firm + (unsigned long )pos)->type, (int )(priv->firm + (unsigned long )pos)->int_freq);
  printk("(%x), id %016llx.\n", (priv->firm + (unsigned long )pos)->type, *id);
  if ((unsigned int )priv->firm_version <= 513U) {
    _val[0] = 32U;
    _val[1] = 0U;
    _val[2] = 0U;
    _val[3] = 0U;
    _rc = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val), 4);
    if (_rc != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___3 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___4 = tmp___3;
      } else {
        tmp___4 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___4,
             (int )priv->i2c_props.addr, 738, _rc);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc;
  } else {
    _val___0[0] = 160U;
    _val___0[1] = 0U;
    _val___0[2] = 0U;
    _val___0[3] = 0U;
    _rc___0 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val___0), 4);
    if (_rc___0 != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___5 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___6 = tmp___5;
      } else {
        tmp___6 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___6,
             (int )priv->i2c_props.addr, 740, _rc___0);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc___0;
  }
  if (rc < 0) {
    return (-5);
  } else {
  }
  _rc___1 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)p, 12);
  if (_rc___1 != 12) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___7 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___8 = tmp___7;
    } else {
      tmp___8 = -1;
    }
    printk("\016%s %d-%04x: i2c output error: rc = %d (should be %d)\n", priv->i2c_props.name,
           tmp___8, (int )priv->i2c_props.addr, _rc___1, 12);
  } else {
  }
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  rc = _rc___1;
  if (rc < 0) {
    return (-5);
  } else {
  }
  _val___1[0] = 0U;
  _val___1[1] = 140U;
  _rc___2 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val___1), 2);
  if (_rc___2 != 2) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___9 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___10 = tmp___9;
    } else {
      tmp___10 = -1;
    }
    printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___10,
           (int )priv->i2c_props.addr, 748, _rc___2);
  } else
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  rc = _rc___2;
  if (rc < 0) {
    return (-5);
  } else {
  }
  return (0);
}
}
static int check_firmware(struct dvb_frontend *fe , unsigned int type , v4l2_std_id std ,
                          __u16 int_freq )
{
  struct xc2028_data *priv ;
  struct firmware_properties new_fw ;
  int rc ;
  int retry_count ;
  u16 version ;
  u16 hwmodel ;
  v4l2_std_id std0 ;
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
  int tmp___27 ;
  int tmp___28 ;
  size_t __len ;
  void *__ret ;
  int tmp___29 ;
  int tmp___30 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  retry_count = 0;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "check_firmware");
  } else {
  }
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if ((unsigned int )*((unsigned char *)priv + 108UL) != 0U && (type & 1024U) == 0U) {
    type = type | 4U;
  } else {
  }
  retry:
  new_fw.type = type;
  new_fw.id = std;
  new_fw.std_req = std;
  new_fw.scode_table = priv->ctrl.scode_table | 536870912U;
  new_fw.scode_nr = 0;
  new_fw.int_freq = int_freq;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\017%s %d-%04x: checking firmware, user requested type=", priv->i2c_props.name,
           tmp___2, (int )priv->i2c_props.addr);
  } else {
  }
  if (debug != 0) {
    dump_firm_type_and_int_freq(new_fw.type, 0);
    printk("(%x), id %016llx, ", new_fw.type, new_fw.std_req);
    if ((unsigned int )int_freq == 0U) {
      printk("scode_tbl ");
      dump_firm_type_and_int_freq(priv->ctrl.scode_table, 0);
      printk("(%x), ", priv->ctrl.scode_table);
    } else {
      printk("int_freq %d, ", (int )new_fw.int_freq);
    }
    printk("scode_nr %d\n", new_fw.scode_nr);
  } else {
  }
  if ((unsigned int )priv->state == 2U && ((new_fw.type & 268454918U) | 1U) == (priv->cur_fw.type & 268454919U)) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___3 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___4 = tmp___3;
      } else {
        tmp___4 = -1;
      }
      printk("\017%s %d-%04x: BASE firmware not changed.\n", priv->i2c_props.name,
             tmp___4, (int )priv->i2c_props.addr);
    } else {
    }
    goto skip_base;
  } else {
  }
  memset((void *)(& priv->cur_fw), 0, 40UL);
  rc = do_tuner_callback(fe, 0, 0);
  if (rc < 0) {
    goto fail;
  } else {
  }
  std0 = 0ULL;
  rc = load_firmware(fe, new_fw.type | 1U, & std0);
  if (rc < 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___5 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___6 = tmp___5;
    } else {
      tmp___6 = -1;
    }
    printk("\v%s %d-%04x: Error %d while loading base firmware\n", priv->i2c_props.name,
           tmp___6, (int )priv->i2c_props.addr, rc);
    goto fail;
  } else {
  }
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___7 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___8 = tmp___7;
    } else {
      tmp___8 = -1;
    }
    printk("\017%s %d-%04x: Load init1 firmware, if exists\n", priv->i2c_props.name,
           tmp___8, (int )priv->i2c_props.addr);
  } else {
  }
  rc = load_firmware(fe, new_fw.type | 16385U, & std0);
  if (rc == -2) {
    rc = load_firmware(fe, (new_fw.type & 4294950908U) | 16385U, & std0);
  } else {
  }
  if (rc < 0 && rc != -2) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___9 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___10 = tmp___9;
    } else {
      tmp___10 = -1;
    }
    printk("\v%s %d-%04x: Error %d while loading init1 firmware\n", priv->i2c_props.name,
           tmp___10, (int )priv->i2c_props.addr, rc);
    goto fail;
  } else {
  }
  skip_base: ;
  if (priv->cur_fw.type == (new_fw.type | 1U) && priv->cur_fw.std_req == std) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___11 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___12 = tmp___11;
      } else {
        tmp___12 = -1;
      }
      printk("\017%s %d-%04x: Std-specific firmware already loaded.\n", priv->i2c_props.name,
             tmp___12, (int )priv->i2c_props.addr);
    } else {
    }
    goto skip_std_specific;
  } else {
  }
  priv->cur_fw.scode_table = 0U;
  rc = load_firmware(fe, new_fw.type, & new_fw.id);
  if (rc == -2) {
    rc = load_firmware(fe, new_fw.type & 4294967293U, & new_fw.id);
  } else {
  }
  if (rc < 0) {
    goto fail;
  } else {
  }
  skip_std_specific: ;
  if (priv->cur_fw.scode_table == new_fw.scode_table && priv->cur_fw.scode_nr == new_fw.scode_nr) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___13 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___14 = tmp___13;
      } else {
        tmp___14 = -1;
      }
      printk("\017%s %d-%04x: SCODE firmware already loaded.\n", priv->i2c_props.name,
             tmp___14, (int )priv->i2c_props.addr);
    } else {
    }
    goto check_device;
  } else {
  }
  if ((new_fw.type & 1024U) != 0U) {
    goto check_device;
  } else {
  }
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___15 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___16 = tmp___15;
    } else {
      tmp___16 = -1;
    }
    printk("\017%s %d-%04x: Trying to load scode %d\n", priv->i2c_props.name, tmp___16,
           (int )priv->i2c_props.addr, new_fw.scode_nr);
  } else {
  }
  rc = load_scode(fe, new_fw.type | new_fw.scode_table, & new_fw.id, (int )new_fw.int_freq,
                  new_fw.scode_nr);
  check_device:
  tmp___19 = xc2028_get_reg(priv, 4, & version);
  if (tmp___19 < 0) {
    goto _L;
  } else {
    tmp___20 = xc2028_get_reg(priv, 8, & hwmodel);
    if (tmp___20 < 0) {
      _L:
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___17 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___18 = tmp___17;
      } else {
        tmp___18 = -1;
      }
      printk("\v%s %d-%04x: Unable to read tuner registers.\n", priv->i2c_props.name,
             tmp___18, (int )priv->i2c_props.addr);
      goto fail;
    } else {
    }
  }
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___21 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___22 = tmp___21;
    } else {
      tmp___22 = -1;
    }
    printk("\017%s %d-%04x: Device is Xceive %d version %d.%d, firmware version %d.%d\n",
           priv->i2c_props.name, tmp___22, (int )priv->i2c_props.addr, (int )hwmodel,
           (int )version >> 12, ((int )version & 3840) >> 8, ((int )version & 240) >> 4,
           (int )version & 15);
  } else {
  }
  if ((unsigned int )*((unsigned char *)priv + 108UL) != 0U) {
    goto read_not_reliable;
  } else {
  }
  if ((int )priv->firm_version != ((((int )version & 240) << 4) | ((int )version & 15))) {
    if ((unsigned int )*((unsigned char *)priv + 108UL) == 0U) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___23 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___24 = tmp___23;
      } else {
        tmp___24 = -1;
      }
      printk("\v%s %d-%04x: Incorrect readback of firmware version.\n", priv->i2c_props.name,
             tmp___24, (int )priv->i2c_props.addr);
      goto fail;
    } else {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___25 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___26 = tmp___25;
      } else {
        tmp___26 = -1;
      }
      printk("\v%s %d-%04x: Returned an incorrect version. However, read is not reliable enough. Ignoring it.\n",
             priv->i2c_props.name, tmp___26, (int )priv->i2c_props.addr);
      hwmodel = 3028U;
    }
  } else {
  }
  if ((unsigned int )priv->hwmodel == 0U && ((unsigned int )hwmodel == 2028U || (unsigned int )hwmodel == 3028U)) {
    priv->hwmodel = hwmodel;
    priv->hwvers = (unsigned int )version & 65280U;
  } else
  if (((unsigned int )priv->hwmodel == 0U || (int )priv->hwmodel != (int )hwmodel) || (int )priv->hwvers != ((int )version & 65280)) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___27 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___28 = tmp___27;
    } else {
      tmp___28 = -1;
    }
    printk("\v%s %d-%04x: Read invalid device hardware information - tuner hung?\n",
           priv->i2c_props.name, tmp___28, (int )priv->i2c_props.addr);
    goto fail;
  } else {
  }
  read_not_reliable:
  __len = 40UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& priv->cur_fw), (void const *)(& new_fw), __len);
  } else {
    __ret = memcpy((void *)(& priv->cur_fw), (void const *)(& new_fw),
                             __len);
  }
  priv->cur_fw.type = priv->cur_fw.type | 1U;
  priv->state = 2;
  return (0);
  fail:
  priv->state = 3;
  memset((void *)(& priv->cur_fw), 0, 40UL);
  if (retry_count <= 7) {
    msleep(50U);
    retry_count = retry_count + 1;
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___29 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___30 = tmp___29;
      } else {
        tmp___30 = -1;
      }
      printk("\017%s %d-%04x: Retrying firmware load\n", priv->i2c_props.name, tmp___30,
             (int )priv->i2c_props.addr);
    } else {
    }
    goto retry;
  } else {
  }
  if (rc == -2) {
    rc = -22;
  } else {
  }
  return (rc);
}
}
static int xc2028_signal(struct dvb_frontend *fe , u16 *strength )
{
  struct xc2028_data *priv ;
  u16 frq_lock ;
  u16 signal ;
  int rc ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  signal = 0U;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_signal");
  } else {
  }
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  ldv_mutex_lock_8(& priv->lock);
  i = 0;
  goto ldv_25084;
  ldv_25083:
  rc = xc2028_get_reg(priv, 2, & frq_lock);
  if (rc < 0) {
    goto ret;
  } else {
  }
  if ((unsigned int )frq_lock != 0U) {
    goto ldv_25082;
  } else {
  }
  msleep(6U);
  i = i + 1;
  ldv_25084: ;
  if (i <= 2) {
    goto ldv_25083;
  } else {
  }
  ldv_25082: ;
  if ((unsigned int )frq_lock == 2U) {
    goto ret;
  } else {
  }
  rc = xc2028_get_reg(priv, 64, & signal);
  if (rc < 0) {
    goto ret;
  } else {
  }
  signal = (u16 )((int )((short )(((int )signal & 7) << 12)) | 4095);
  ret:
  ldv_mutex_unlock_9(& priv->lock);
  *strength = signal;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\017%s %d-%04x: signal strength is %d\n", priv->i2c_props.name, tmp___2,
           (int )priv->i2c_props.addr, (int )signal);
  } else {
  }
  return (rc);
}
}
static int xc2028_get_afc(struct dvb_frontend *fe , s32 *afc )
{
  struct xc2028_data *priv ;
  int i ;
  int rc ;
  u16 frq_lock ;
  s16 afc_reg ;
  int tmp ;
  int tmp___0 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  frq_lock = 0U;
  afc_reg = 0;
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  ldv_mutex_lock_10(& priv->lock);
  i = 0;
  goto ldv_25097;
  ldv_25096:
  rc = xc2028_get_reg(priv, 2, & frq_lock);
  if (rc < 0) {
    goto ret;
  } else {
  }
  if ((unsigned int )frq_lock != 0U) {
    goto ldv_25095;
  } else {
  }
  msleep(6U);
  i = i + 1;
  ldv_25097: ;
  if (i <= 2) {
    goto ldv_25096;
  } else {
  }
  ldv_25095: ;
  if ((unsigned int )frq_lock == 2U) {
    goto ret;
  } else {
  }
  rc = xc2028_get_reg(priv, 1, (u16 *)(& afc_reg));
  if (rc < 0) {
    goto ret;
  } else {
  }
  *afc = (int )afc_reg * 15625;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: AFC is %d Hz\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           *afc);
  } else {
  }
  ret:
  ldv_mutex_unlock_11(& priv->lock);
  return (rc);
}
}
static int generic_set_freq(struct dvb_frontend *fe , u32 freq , enum v4l2_tuner_type new_type ,
                            unsigned int type , v4l2_std_id std , u16 int_freq )
{
  struct xc2028_data *priv ;
  int rc ;
  unsigned char buf[4U] ;
  u32 div ;
  u32 offset ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u8 _val[2U] ;
  int _rc ;
  int tmp___4 ;
  int tmp___5 ;
  u8 _val___0[4U] ;
  int _rc___0 ;
  int tmp___6 ;
  int tmp___7 ;
  u8 _val___1[4U] ;
  int _rc___1 ;
  int tmp___8 ;
  int tmp___9 ;
  int _rc___2 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  rc = -22;
  offset = 0U;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "generic_set_freq");
  } else {
  }
  ldv_mutex_lock_12(& priv->lock);
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\017%s %d-%04x: should set frequency %d kHz\n", priv->i2c_props.name,
           tmp___2, (int )priv->i2c_props.addr, freq / 1000U);
  } else {
  }
  tmp___3 = check_firmware(fe, type, std, (int )int_freq);
  if (tmp___3 < 0) {
    goto ret;
  } else {
  }
  switch ((unsigned int )new_type) {
  case 2U:
  _val[0] = 0U;
  _val[1] = 0U;
  _rc = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val), 2);
  if (_rc != 2) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___5 = tmp___4;
    } else {
      tmp___5 = -1;
    }
    printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___5,
           (int )priv->i2c_props.addr, 1064, _rc);
  } else
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  rc = _rc;
  goto ldv_25117;
  case 1U: ;
  goto ldv_25117;
  case 3U: ;
  if ((priv->cur_fw.type & 32U) != 0U) {
    offset = 1750000U;
  } else {
    offset = 2750000U;
  }
  }
  ldv_25117:
  div = ((freq - offset) + 7812U) / 15625U;
  if ((unsigned int )priv->firm_version <= 513U) {
    _val___0[0] = 0U;
    _val___0[1] = 2U;
    _val___0[2] = 0U;
    _val___0[3] = 0U;
    _rc___0 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val___0), 4);
    if (_rc___0 != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___6 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___7 = tmp___6;
      } else {
        tmp___7 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___7,
             (int )priv->i2c_props.addr, 1141, _rc___0);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc___0;
  } else {
    _val___1[0] = 128U;
    _val___1[1] = 2U;
    _val___1[2] = 0U;
    _val___1[3] = 0U;
    _rc___1 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val___1), 4);
    if (_rc___1 != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___8 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___9 = tmp___8;
      } else {
        tmp___9 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___9,
             (int )priv->i2c_props.addr, 1143, _rc___1);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc___1;
  }
  if (rc < 0) {
    goto ret;
  } else {
  }
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  do_tuner_callback(fe, 1, 1);
  msleep(10U);
  buf[0] = (unsigned char )(div >> 24);
  buf[1] = (unsigned char )(div >> 16);
  buf[2] = (unsigned char )(div >> 8);
  buf[3] = (unsigned char )div;
  _rc___2 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& buf), 4);
  if (_rc___2 != 4) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___10 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___11 = tmp___10;
    } else {
      tmp___11 = -1;
    }
    printk("\016%s %d-%04x: i2c output error: rc = %d (should be %d)\n", priv->i2c_props.name,
           tmp___11, (int )priv->i2c_props.addr, _rc___2, 4);
  } else {
  }
  if (priv->ctrl.msleep != 0) {
    msleep((unsigned int )priv->ctrl.msleep);
  } else {
  }
  rc = _rc___2;
  if (rc < 0) {
    goto ret;
  } else {
  }
  msleep(100U);
  priv->frequency = freq;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___12 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___13 = tmp___12;
    } else {
      tmp___13 = -1;
    }
    printk("\017%s %d-%04x: divisor= %*ph (freq=%d.%03d)\n", priv->i2c_props.name,
           tmp___13, (int )priv->i2c_props.addr, 4, (unsigned char *)(& buf), freq / 1000000U,
           (freq % 1000000U) / 1000U);
  } else {
  }
  rc = 0;
  ret:
  ldv_mutex_unlock_13(& priv->lock);
  return (rc);
}
}
static int xc2028_set_analog_freq(struct dvb_frontend *fe , struct analog_parameters *p )
{
  struct xc2028_data *priv ;
  unsigned int type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  v4l2_std_id tmp___2 ;
  int tmp___3 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  type = 0U;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_set_analog_freq");
  } else {
  }
  if (p->mode == 1U) {
    type = type | 1024U;
    if ((unsigned int )*((unsigned char *)priv + 108UL) != 0U) {
      type = type | 2048U;
    } else {
    }
    tmp___1 = generic_set_freq(fe, (u32 )(((long )p->frequency * 625L) / 10L), 1,
                               type, 0ULL, 0);
    return (tmp___1);
  } else {
  }
  if (p->std == 0ULL) {
    p->std = 46848ULL;
  } else {
  }
  if ((p->std & 46848ULL) == 0ULL) {
    type = type | 2U;
  } else {
  }
  tmp___2 = parse_audio_std_option();
  p->std = p->std | tmp___2;
  tmp___3 = generic_set_freq(fe, p->frequency * 62500U, 2, type, p->std, 0);
  return (tmp___3);
}
}
static int xc2028_set_params(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  u32 delsys ;
  u32 bw ;
  struct xc2028_data *priv ;
  int rc ;
  unsigned int type ;
  u16 demod ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  c = & fe->dtv_property_cache;
  delsys = c->delivery_system;
  bw = c->bandwidth_hz;
  priv = (struct xc2028_data *)fe->tuner_priv;
  type = 0U;
  demod = 0U;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_set_params");
  } else {
  }
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  switch (delsys) {
  case 3U: ;
  case 16U: ;
  if (bw <= 6000000U) {
    type = type | 64U;
  } else {
  }
  switch ((int )priv->ctrl.type) {
  case 1:
  type = type | 16U;
  goto ldv_25149;
  case 2:
  type = type | 8U;
  goto ldv_25149;
  case 0: ;
  default: ;
  if (priv->ctrl.demod == 4560U) {
    type = type | 16U;
  } else {
    type = type | 8U;
  }
  }
  ldv_25149: ;
  goto ldv_25153;
  case 11U:
  type = type | 65552U;
  goto ldv_25153;
  default: ;
  return (-22);
  }
  ldv_25153: ;
  if (bw <= 6000000U) {
    type = type | 32U;
    priv->ctrl.vhfbw7 = 0U;
    priv->ctrl.uhfbw8 = 0U;
  } else
  if (bw <= 7000000U) {
    if (c->frequency <= 469999999U) {
      priv->ctrl.vhfbw7 = 1U;
    } else {
      priv->ctrl.uhfbw8 = 0U;
    }
    type = ((unsigned int )*((unsigned char *)priv + 108UL) != 0U && (unsigned int )*((unsigned char *)priv + 108UL) != 0U ? 256U : 128U) | type;
    type = type | 2U;
  } else {
    if (c->frequency <= 469999999U) {
      priv->ctrl.vhfbw7 = 0U;
    } else {
      priv->ctrl.uhfbw8 = 1U;
    }
    type = ((unsigned int )*((unsigned char *)priv + 108UL) != 0U && (unsigned int )*((unsigned char *)priv + 108UL) != 0U ? 256U : 512U) | type;
    type = type | 2U;
  }
  if (priv->ctrl.demod != 0U) {
    demod = (u16 )priv->ctrl.demod;
    if (type == 65536U || (unsigned int )priv->firm_version <= 769U) {
      demod = (unsigned int )demod + 200U;
    } else {
    }
  } else {
  }
  tmp___1 = generic_set_freq(fe, c->frequency, 3, type, 0ULL, (int )demod);
  return (tmp___1);
}
}
static int xc2028_sleep(struct dvb_frontend *fe )
{
  struct xc2028_data *priv ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 _val[4U] ;
  int _rc ;
  int tmp___3 ;
  int tmp___4 ;
  u8 _val___0[4U] ;
  int _rc___0 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (no_poweroff != 0 || (unsigned int )*((unsigned char *)priv + 108UL) != 0U) {
    return (0);
  } else {
  }
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: Putting xc2028/3028 into poweroff mode.\n", priv->i2c_props.name,
           tmp___0, (int )priv->i2c_props.addr);
  } else {
  }
  if (debug > 1) {
    if (debug != 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___2 = tmp___1;
      } else {
        tmp___2 = -1;
      }
      printk("\017%s %d-%04x: Printing sleep stack trace:\n", priv->i2c_props.name,
             tmp___2, (int )priv->i2c_props.addr);
    } else {
    }
    dump_stack();
  } else {
  }
  ldv_mutex_lock_14(& priv->lock);
  if ((unsigned int )priv->firm_version <= 513U) {
    _val[0] = 0U;
    _val[1] = 8U;
    _val[2] = 0U;
    _val[3] = 0U;
    _rc = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val), 4);
    if (_rc != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___3 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___4 = tmp___3;
      } else {
        tmp___4 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___4,
             (int )priv->i2c_props.addr, 1331, _rc);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc;
  } else {
    _val___0[0] = 128U;
    _val___0[1] = 8U;
    _val___0[2] = 0U;
    _val___0[3] = 0U;
    _rc___0 = tuner_i2c_xfer_send(& priv->i2c_props, (char *)(& _val___0), 4);
    if (_rc___0 != 4) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___5 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___6 = tmp___5;
      } else {
        tmp___6 = -1;
      }
      printk("\v%s %d-%04x: Error on line %d: %d\n", priv->i2c_props.name, tmp___6,
             (int )priv->i2c_props.addr, 1333, _rc___0);
    } else
    if (priv->ctrl.msleep != 0) {
      msleep((unsigned int )priv->ctrl.msleep);
    } else {
    }
    rc = _rc___0;
  }
  priv->state = 3;
  ldv_mutex_unlock_15(& priv->lock);
  return (rc);
}
}
static int xc2028_dvb_release(struct dvb_frontend *fe )
{
  struct xc2028_data *priv ;
  int tmp ;
  int tmp___0 ;
  int __ret ;
  int __ret___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_dvb_release");
  } else {
  }
  ldv_mutex_lock_16(& xc2028_list_mutex);
  __ret = 0;
  if ((unsigned long )priv != (unsigned long )((struct xc2028_data *)0)) {
    __ret = priv->i2c_props.count;
  } else {
  }
  if (__ret == 1) {
    free_firmware(priv);
    kfree((void const *)priv->ctrl.fname);
    priv->ctrl.fname = 0;
  } else {
  }
  if ((unsigned long )priv != (unsigned long )((struct xc2028_data *)0)) {
    priv->i2c_props.count = priv->i2c_props.count - 1;
    __ret___0 = priv->i2c_props.count;
    if (priv->i2c_props.count == 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___2 = tmp___1;
      } else {
        tmp___2 = -1;
      }
      printk("\016%s %d-%04x: destroying instance\n", priv->i2c_props.name, tmp___2,
             (int )priv->i2c_props.addr);
      list_del(& priv->hybrid_tuner_instance_list);
      kfree((void const *)priv);
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_17(& xc2028_list_mutex);
  fe->tuner_priv = 0;
  return (0);
}
}
static int xc2028_get_frequency(struct dvb_frontend *fe , u32 *frequency )
{
  struct xc2028_data *priv ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_get_frequency");
  } else {
  }
  rc = check_device_status(priv);
  if (rc < 0) {
    return (rc);
  } else {
  }
  *frequency = priv->frequency;
  return (0);
}
}
static void load_firmware_cb(struct firmware const *fw , void *context )
{
  struct dvb_frontend *fe ;
  struct xc2028_data *priv ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  fe = (struct dvb_frontend *)context;
  priv = (struct xc2028_data *)fe->tuner_priv;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: request_firmware_nowait(): %s\n", priv->i2c_props.name,
           tmp___0, (int )priv->i2c_props.addr, (unsigned long )fw != (unsigned long )((struct firmware const *)0) ? (char *)"OK" : (char *)"error");
  } else {
  }
  if ((unsigned long )fw == (unsigned long )((struct firmware const *)0)) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___2 = tmp___1;
    } else {
      tmp___2 = -1;
    }
    printk("\v%s %d-%04x: Could not load firmware %s.\n", priv->i2c_props.name, tmp___2,
           (int )priv->i2c_props.addr, priv->fname);
    priv->state = 4;
    return;
  } else {
  }
  rc = load_all_firmwares(fe, fw);
  release_firmware(fw);
  if (rc < 0) {
    return;
  } else {
  }
  priv->state = 3;
  return;
}
}
static int xc2028_set_config(struct dvb_frontend *fe , void *priv_cfg )
{
  struct xc2028_data *priv ;
  struct xc2028_ctrl *p ;
  int rc ;
  int tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  priv = (struct xc2028_data *)fe->tuner_priv;
  p = (struct xc2028_ctrl *)priv_cfg;
  rc = 0;
  if (debug != 0) {
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp = i2c_adapter_id(priv->i2c_props.adap);
      tmp___0 = tmp;
    } else {
      tmp___0 = -1;
    }
    printk("\017%s %d-%04x: %s called\n", priv->i2c_props.name, tmp___0, (int )priv->i2c_props.addr,
           "xc2028_set_config");
  } else {
  }
  ldv_mutex_lock_18(& priv->lock);
  if ((unsigned long )priv->ctrl.fname != (unsigned long )((char *)0)) {
    kfree((void const *)priv->ctrl.fname);
  } else {
  }
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& priv->ctrl), (void const *)p, __len);
  } else {
    __ret = memcpy((void *)(& priv->ctrl), (void const *)p, __len);
  }
  if ((unsigned long )p->fname != (unsigned long )((char *)0)) {
    priv->ctrl.fname = kstrdup((char const *)p->fname, 208U);
    if ((unsigned long )priv->ctrl.fname == (unsigned long )((char *)0)) {
      rc = -12;
    } else {
    }
  } else {
  }
  if (((int )((signed char )firmware_name[0]) == 0 && (unsigned long )p->fname != (unsigned long )((char *)0)) && (unsigned long )priv->fname != (unsigned long )((char const *)0)) {
    tmp___1 = strcmp((char const *)p->fname, priv->fname);
    if (tmp___1 != 0) {
      free_firmware(priv);
    } else {
    }
  } else {
  }
  if (priv->ctrl.max_len <= 8) {
    priv->ctrl.max_len = 13;
  } else {
  }
  if ((unsigned int )priv->state == 0U) {
    if ((int )((signed char )firmware_name[0]) == 0) {
      priv->fname = (char const *)priv->ctrl.fname;
    } else {
      priv->fname = (char const *)(& firmware_name);
    }
    rc = request_firmware_nowait(& __this_module, 1, priv->fname, (priv->i2c_props.adap)->dev.parent,
                                 208U, (void *)fe, & load_firmware_cb);
    if (rc < 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp___2 = i2c_adapter_id(priv->i2c_props.adap);
        tmp___3 = tmp___2;
      } else {
        tmp___3 = -1;
      }
      printk("\v%s %d-%04x: Failed to request firmware %s\n", priv->i2c_props.name,
             tmp___3, (int )priv->i2c_props.addr, priv->fname);
      priv->state = 4;
    } else {
      priv->state = 1;
    }
  } else {
  }
  ldv_mutex_unlock_19(& priv->lock);
  return (rc);
}
}
static struct dvb_tuner_ops const xc2028_dvb_tuner_ops =
     {{{'X', 'c', 'e', 'i', 'v', 'e', ' ', 'X', 'C', '3', '0', '2', '8', '\000'}, 42000000U,
     864000000U, 50000U, 0U, 0U, 0U}, & xc2028_dvb_release, 0, & xc2028_sleep, & xc2028_set_params,
    & xc2028_set_analog_freq, 0, & xc2028_set_config, & xc2028_get_frequency, 0, 0,
    0, & xc2028_signal, & xc2028_get_afc, 0, 0, 0, 0};
struct dvb_frontend *xc2028_attach(struct dvb_frontend *fe , struct xc2028_config *cfg )
{
  struct xc2028_data *priv ;
  int instance ;
  int __ret ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key ;
  size_t __len ;
  void *__ret___0 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  if (debug != 0) {
    printk("\017xc2028: Xcv2028/3028 init called!\n");
  } else {
  }
  if ((unsigned long )cfg == (unsigned long )((struct xc2028_config *)0)) {
    return (0);
  } else {
  }
  if ((unsigned long )fe == (unsigned long )((struct dvb_frontend *)0)) {
    printk("\vxc2028: No frontend!\n");
    return (0);
  } else {
  }
  ldv_mutex_lock_20(& xc2028_list_mutex);
  __ret = 0;
  __mptr = (struct list_head const *)hybrid_tuner_instance_list.next;
  priv = (struct xc2028_data *)__mptr;
  goto ldv_25215;
  ldv_25214: ;
  if ((unsigned long )cfg->i2c_adap != (unsigned long )((struct i2c_adapter *)0) && (unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___2 = i2c_adapter_id(cfg->i2c_adap);
    if (tmp___1 == tmp___2 && (int )cfg->i2c_addr == (int )priv->i2c_props.addr) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp = i2c_adapter_id(priv->i2c_props.adap);
        tmp___0 = tmp;
      } else {
        tmp___0 = -1;
      }
      printk("\016%s %d-%04x: attaching existing instance\n", priv->i2c_props.name,
             tmp___0, (int )priv->i2c_props.addr);
      priv->i2c_props.count = priv->i2c_props.count + 1;
      __ret = priv->i2c_props.count;
      goto ldv_25213;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)priv->hybrid_tuner_instance_list.next;
  priv = (struct xc2028_data *)__mptr___0;
  ldv_25215: ;
  if ((unsigned long )(& priv->hybrid_tuner_instance_list) != (unsigned long )(& hybrid_tuner_instance_list)) {
    goto ldv_25214;
  } else {
  }
  ldv_25213: ;
  if (__ret == 0) {
    tmp___3 = kzalloc(328UL, 208U);
    priv = (struct xc2028_data *)tmp___3;
    if ((unsigned long )priv == (unsigned long )((struct xc2028_data *)0)) {
      goto __fail;
    } else {
    }
    priv->i2c_props.addr = cfg->i2c_addr;
    priv->i2c_props.adap = cfg->i2c_adap;
    priv->i2c_props.name = (char *)"xc2028";
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___5 = tmp___4;
    } else {
      tmp___5 = -1;
    }
    printk("\016%s %d-%04x: creating new instance\n", priv->i2c_props.name, tmp___5,
           (int )priv->i2c_props.addr);
    list_add_tail(& priv->hybrid_tuner_instance_list, & hybrid_tuner_instance_list);
    priv->i2c_props.count = priv->i2c_props.count + 1;
    __ret = priv->i2c_props.count;
  } else {
  }
  __fail:
  instance = __ret;
  switch (instance) {
  case 0: ;
  goto fail;
  case 1:
  priv->ctrl.max_len = 13;
  __mutex_init(& priv->lock, "&priv->lock", & __key);
  fe->tuner_priv = (void *)priv;
  goto ldv_25222;
  case 2:
  fe->tuner_priv = (void *)priv;
  goto ldv_25222;
  }
  ldv_25222:
  __len = 288UL;
  if (__len > 63UL) {
    __ret___0 = memcpy((void *)(& fe->ops.tuner_ops), (void const *)(& xc2028_dvb_tuner_ops),
                         __len);
  } else {
    __ret___0 = memcpy((void *)(& fe->ops.tuner_ops), (void const *)(& xc2028_dvb_tuner_ops),
                                 __len);
  }
  if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___6 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___7 = tmp___6;
  } else {
    tmp___7 = -1;
  }
  printk("\016%s %d-%04x: type set to %s\n", priv->i2c_props.name, tmp___7, (int )priv->i2c_props.addr,
         (char *)"XCeive xc2028/xc3028 tuner");
  if ((unsigned long )cfg->ctrl != (unsigned long )((struct xc2028_ctrl *)0)) {
    xc2028_set_config(fe, (void *)cfg->ctrl);
  } else {
  }
  ldv_mutex_unlock_21(& xc2028_list_mutex);
  return (fe);
  fail:
  ldv_mutex_unlock_22(& xc2028_list_mutex);
  xc2028_dvb_release(fe);
  return (0);
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct dvb_frontend *var_group1 ;
  void *var_xc2028_set_config_20_p1 ;
  struct analog_parameters *var_group2 ;
  u32 *var_xc2028_get_frequency_18_p1 ;
  u16 *var_xc2028_signal_11_p1 ;
  s32 *var_xc2028_get_afc_12_p1 ;
  int ldv_s_xc2028_dvb_tuner_ops_dvb_tuner_ops ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_xc2028_dvb_tuner_ops_dvb_tuner_ops = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_25274;
  ldv_25273:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_xc2028_dvb_tuner_ops_dvb_tuner_ops == 0) {
    ldv_handler_precall();
    xc2028_dvb_release(var_group1);
    ldv_s_xc2028_dvb_tuner_ops_dvb_tuner_ops = 0;
  } else {
  }
  goto ldv_25264;
  case 1:
  ldv_handler_precall();
  xc2028_set_config(var_group1, var_xc2028_set_config_20_p1);
  goto ldv_25264;
  case 2:
  ldv_handler_precall();
  xc2028_set_analog_freq(var_group1, var_group2);
  goto ldv_25264;
  case 3:
  ldv_handler_precall();
  xc2028_get_frequency(var_group1, var_xc2028_get_frequency_18_p1);
  goto ldv_25264;
  case 4:
  ldv_handler_precall();
  xc2028_signal(var_group1, var_xc2028_signal_11_p1);
  goto ldv_25264;
  case 5:
  ldv_handler_precall();
  xc2028_get_afc(var_group1, var_xc2028_get_afc_12_p1);
  goto ldv_25264;
  case 6:
  ldv_handler_precall();
  xc2028_set_params(var_group1);
  goto ldv_25264;
  case 7:
  ldv_handler_precall();
  xc2028_sleep(var_group1);
  goto ldv_25264;
  default: ;
  goto ldv_25264;
  }
  ldv_25264: ;
  ldv_25274:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_xc2028_dvb_tuner_ops_dvb_tuner_ops != 0) {
    goto ldv_25273;
  } else {
  }
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
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_xc2028_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_xc2028_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_xc2028_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_xc2028_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_xc2028_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
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
static int ldv_mutex_xc2028_list_mutex ;
int ldv_mutex_lock_interruptible_xc2028_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_xc2028_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_xc2028_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_xc2028_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_xc2028_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_xc2028_list_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_xc2028_list_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_xc2028_list_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_xc2028_list_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_xc2028_list_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_xc2028_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_xc2028_list_mutex == 1) {
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
void ldv_mutex_unlock_xc2028_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_xc2028_list_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_xc2028_list_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_xc2028_list_mutex = 1;
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
  if (ldv_mutex_xc2028_list_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void dump_stack() {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
char *kstrdup(const char *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(char));
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void msleep(unsigned int arg0) {
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware_nowait(struct module *arg0, bool arg1, const char *arg2, struct device *arg3, gfp_t arg4, void *arg5, void (*arg6)(const struct firmware *, void *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int strcasecmp(const char *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
