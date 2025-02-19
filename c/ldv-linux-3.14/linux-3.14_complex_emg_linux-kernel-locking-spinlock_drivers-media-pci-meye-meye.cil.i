struct device;
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
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion____missing_field_name_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion____missing_field_name_8 __annonCompField4 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct __anonstruct____missing_field_name_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
struct task_struct;
struct lockdep_map;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_13 {
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
union __anonunion____missing_field_name_11 {
   struct __anonstruct____missing_field_name_12 __annonCompField6 ;
   struct __anonstruct____missing_field_name_13 __annonCompField7 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_11 __annonCompField8 ;
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
struct mm_struct;
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
typedef void (*ctor_fn_t)(void);
struct file_operations;
struct completion;
struct pid;
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
union __anonunion____missing_field_name_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_18 __annonCompField9 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
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
struct __anonstruct____missing_field_name_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_22 {
   struct __anonstruct____missing_field_name_23 __annonCompField13 ;
   struct __anonstruct____missing_field_name_24 __annonCompField14 ;
};
union __anonunion____missing_field_name_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_22 __annonCompField15 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_25 __annonCompField16 ;
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
struct lwp_struct {
   u8 reserved[128U] ;
};
struct bndregs_struct {
   u64 bndregs[8U] ;
};
struct bndcsr_struct {
   u64 cfg_reg_u ;
   u64 status_reg ;
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
   struct lwp_struct lwp ;
   struct bndregs_struct bndregs ;
   struct bndcsr_struct bndcsr ;
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
   unsigned char fpu_counter ;
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
   unsigned int class_idx : 13 ;
   unsigned int irq_context : 2 ;
   unsigned int trylock : 1 ;
   unsigned int read : 2 ;
   unsigned int check : 2 ;
   unsigned int hardirqs_off : 1 ;
   unsigned int references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_29 __annonCompField18 ;
};
struct spinlock {
   union __anonunion____missing_field_name_28 __annonCompField19 ;
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
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
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
struct jump_entry;
struct static_key_mod;
struct static_key {
   atomic_t enabled ;
   struct jump_entry *entries ;
   struct static_key_mod *next ;
};
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
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
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct idr_layer {
   int prefix ;
   unsigned long bitmap[4U] ;
   struct idr_layer *ary[256U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   int cur ;
   spinlock_t lock ;
};
struct ida_bitmap {
   long nr_busy ;
   unsigned long bitmap[15U] ;
};
struct ida {
   struct idr idr ;
   struct ida_bitmap *free_bitmap ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct dentry;
struct iattr;
struct vm_area_struct;
struct super_block;
struct file_system_type;
struct kernfs_open_node;
struct kernfs_iattrs;
struct kernfs_root;
struct kernfs_elem_dir {
   unsigned long subdirs ;
   struct rb_root children ;
   struct kernfs_root *root ;
};
struct kernfs_node;
struct kernfs_elem_symlink {
   struct kernfs_node *target_kn ;
};
struct kernfs_ops;
struct kernfs_elem_attr {
   struct kernfs_ops const *ops ;
   struct kernfs_open_node *open ;
   loff_t size ;
};
union __anonunion_u_39 {
   struct completion *completion ;
   struct kernfs_node *removed_list ;
};
union __anonunion____missing_field_name_40 {
   struct kernfs_elem_dir dir ;
   struct kernfs_elem_symlink symlink ;
   struct kernfs_elem_attr attr ;
};
struct kernfs_node {
   atomic_t count ;
   atomic_t active ;
   struct lockdep_map dep_map ;
   struct kernfs_node *parent ;
   char const *name ;
   struct rb_node rb ;
   union __anonunion_u_39 u ;
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_40 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_dir_ops {
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   struct ida ino_ida ;
   struct kernfs_dir_ops *dir_ops ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   int (*mmap)(struct kernfs_open_file * , struct vm_area_struct * ) ;
   struct lock_class_key lockdep_key ;
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
   bool (*current_may_mount)(void) ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_41 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_41 kuid_t;
struct __anonstruct_kgid_t_42 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_42 kgid_t;
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
struct bin_attribute;
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
   struct bin_attribute **bin_attrs ;
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
struct kref {
   atomic_t refcount ;
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
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
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
struct __anonstruct_nodemask_t_43 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_43 nodemask_t;
struct path;
struct inode;
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   size_t pad_until ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   struct user_namespace *user_ns ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct pinctrl;
struct pinctrl_state;
struct dev_pin_info {
   struct pinctrl *p ;
   struct pinctrl_state *default_state ;
   struct pinctrl_state *sleep_state ;
   struct pinctrl_state *idle_state ;
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
   unsigned int can_wakeup : 1 ;
   unsigned int async_suspend : 1 ;
   bool is_prepared : 1 ;
   bool is_suspended : 1 ;
   bool ignore_children : 1 ;
   bool early_init : 1 ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path : 1 ;
   bool syscore : 1 ;
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
   unsigned int memalloc_noio : 1 ;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_108 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_108 mm_context_t;
struct device_node;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
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
struct device_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct device_attribute *dev_attrs ;
   struct attribute_group const **bus_groups ;
   struct attribute_group const **dev_groups ;
   struct attribute_group const **drv_groups ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*online)(struct device * ) ;
   int (*offline)(struct device * ) ;
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
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct attribute_group const **dev_groups ;
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
struct acpi_device;
struct acpi_dev_node {
   struct acpi_device *companion ;
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
   struct dev_pin_info *pins ;
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
   bool offline_disabled : 1 ;
   bool offline : 1 ;
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
   bool active : 1 ;
   bool autosleep_enabled : 1 ;
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
union __anonunion____missing_field_name_136 {
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
   u8 msi_cap ;
   u8 msix_cap ;
   u8 pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
   unsigned int pme_support : 5 ;
   unsigned int pme_interrupt : 1 ;
   unsigned int pme_poll : 1 ;
   unsigned int d1_support : 1 ;
   unsigned int d2_support : 1 ;
   unsigned int no_d1d2 : 1 ;
   unsigned int no_d3cold : 1 ;
   unsigned int d3cold_allowed : 1 ;
   unsigned int mmio_always_on : 1 ;
   unsigned int wakeup_prepared : 1 ;
   unsigned int runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
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
   unsigned int needs_freset : 1 ;
   unsigned int state_saved : 1 ;
   unsigned int is_physfn : 1 ;
   unsigned int is_virtfn : 1 ;
   unsigned int reset_fn : 1 ;
   unsigned int is_hotplug_bridge : 1 ;
   unsigned int __aer_firmware_first_valid : 1 ;
   unsigned int __aer_firmware_first : 1 ;
   unsigned int broken_intx_masking : 1 ;
   unsigned int io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct attribute_group const **msi_irq_groups ;
   struct pci_vpd *vpd ;
   union __anonunion____missing_field_name_136 __annonCompField33 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct msi_chip;
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
   struct msi_chip *msi ;
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
   unsigned int is_added : 1 ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
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
struct __anonstruct____missing_field_name_139 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_140 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_138 {
   struct __anonstruct____missing_field_name_139 __annonCompField35 ;
   struct __anonstruct____missing_field_name_140 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_138 __annonCompField37 ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   struct return_instance *return_instances ;
   unsigned int depth ;
};
struct xol_area;
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion____missing_field_name_141 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_143 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_147 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_146 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_147 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_145 {
   union __anonunion____missing_field_name_146 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_144 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_145 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_142 {
   union __anonunion____missing_field_name_143 __annonCompField39 ;
   union __anonunion____missing_field_name_144 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_149 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion____missing_field_name_148 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_149 __annonCompField45 ;
   struct list_head list ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_150 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_141 __annonCompField38 ;
   struct __anonstruct____missing_field_name_142 __annonCompField44 ;
   union __anonunion____missing_field_name_148 __annonCompField46 ;
   union __anonunion____missing_field_name_150 __annonCompField47 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_152 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_151 {
   struct __anonstruct_linear_152 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
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
   union __anonunion_shared_151 shared ;
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
struct task_rss_stat {
   int events ;
   int count[3U] ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct kioctx_table;
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long mmap_legacy_base ;
   unsigned long task_size ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   atomic_long_t nr_ptes ;
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
   unsigned long saved_auxv[46U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct kioctx_table *ioctx_table ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   bool tlb_flush_pending ;
   struct uprobes_state uprobes_state ;
};
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   nodemask_t nodes_to_scan ;
   int nid ;
};
struct shrinker {
   unsigned long (*count_objects)(struct shrinker * , struct shrink_control * ) ;
   unsigned long (*scan_objects)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   unsigned long flags ;
   struct list_head list ;
   atomic_long_t *nr_deferred ;
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
struct mem_cgroup;
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
struct __anonstruct____missing_field_name_154 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct____missing_field_name_155 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion____missing_field_name_153 {
   struct __anonstruct____missing_field_name_154 __annonCompField48 ;
   struct __anonstruct____missing_field_name_155 __annonCompField49 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion____missing_field_name_153 __annonCompField50 ;
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
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_162 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion____missing_field_name_162 __annonCompField53 ;
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
   struct completion *kobj_completion ;
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
   struct jump_entry *jump_entries ;
   unsigned int num_jump_entries ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct rt_mutex_waiter;
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_176 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_178 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_177 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_178 __annonCompField56 ;
};
union __anonunion_type_data_179 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_181 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_180 {
   union __anonunion_payload_181 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_175 __annonCompField54 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_176 __annonCompField55 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_177 __annonCompField57 ;
   union __anonunion_type_data_179 type_data ;
   union __anonunion____missing_field_name_180 __annonCompField58 ;
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
   struct list_head thread_head ;
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
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
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
struct sched_dl_entity {
   struct rb_node rb_node ;
   u64 dl_runtime ;
   u64 dl_deadline ;
   u64 dl_period ;
   u64 dl_bw ;
   s64 runtime ;
   u64 deadline ;
   unsigned int flags ;
   int dl_throttled ;
   int dl_new ;
   int dl_boosted ;
   struct hrtimer dl_timer ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned int may_oom : 1 ;
};
struct sched_class;
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct numa_group;
struct ftrace_ret_stack;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   struct task_struct *last_wakee ;
   unsigned long wakee_flips ;
   unsigned long wakee_flip_decay_ts ;
   int wake_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct sched_dl_entity dl ;
   struct hlist_head preempt_notifiers ;
   unsigned int btrace_seq ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned int brk_randomized : 1 ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned int in_execve : 1 ;
   unsigned int in_iowait : 1 ;
   unsigned int no_new_privs : 1 ;
   unsigned int sched_reset_on_fork : 1 ;
   unsigned int sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct list_head thread_node ;
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
   struct rb_root pi_waiters ;
   struct rb_node *pi_waiters_leftmost ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct task_struct *pi_top_task ;
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
   unsigned int numa_scan_period ;
   unsigned int numa_scan_period_max ;
   int numa_preferred_nid ;
   int numa_migrate_deferred ;
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer ;
   unsigned long numa_faults_locality[2U] ;
   unsigned long numa_pages_migrated ;
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
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
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
   __u32 width ;
   __u32 height ;
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
union __anonunion____missing_field_name_183 {
   struct v4l2_frmsize_discrete discrete ;
   struct v4l2_frmsize_stepwise stepwise ;
};
struct v4l2_frmsizeenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 type ;
   union __anonunion____missing_field_name_183 __annonCompField60 ;
   __u32 reserved[2U] ;
};
struct v4l2_frmival_stepwise {
   struct v4l2_fract min ;
   struct v4l2_fract max ;
   struct v4l2_fract step ;
};
union __anonunion____missing_field_name_184 {
   struct v4l2_fract discrete ;
   struct v4l2_frmival_stepwise stepwise ;
};
struct v4l2_frmivalenum {
   __u32 index ;
   __u32 pixel_format ;
   __u32 width ;
   __u32 height ;
   __u32 type ;
   union __anonunion____missing_field_name_184 __annonCompField61 ;
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
union __anonunion_m_185 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_185 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_186 {
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
   union __anonunion_m_186 m ;
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
union __anonunion____missing_field_name_187 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_187 __annonCompField62 ;
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
union __anonunion____missing_field_name_188 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 reserved[3U] ;
   union __anonunion____missing_field_name_188 __annonCompField63 ;
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
union __anonunion____missing_field_name_189 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_189 __annonCompField64 ;
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
union __anonunion____missing_field_name_190 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_190 __annonCompField65 ;
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
struct __anonstruct_raw_192 {
   __u32 data[8U] ;
};
union __anonunion____missing_field_name_191 {
   struct __anonstruct_raw_192 raw ;
};
struct v4l2_encoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_191 __annonCompField66 ;
};
struct __anonstruct_stop_194 {
   __u64 pts ;
};
struct __anonstruct_start_195 {
   __s32 speed ;
   __u32 format ;
};
struct __anonstruct_raw_196 {
   __u32 data[16U] ;
};
union __anonunion____missing_field_name_193 {
   struct __anonstruct_stop_194 stop ;
   struct __anonstruct_start_195 start ;
   struct __anonstruct_raw_196 raw ;
};
struct v4l2_decoder_cmd {
   __u32 cmd ;
   __u32 flags ;
   union __anonunion____missing_field_name_193 __annonCompField67 ;
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
union __anonunion_fmt_198 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_198 fmt ;
};
union __anonunion_parm_199 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_199 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_202 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_202 __annonCompField70 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_204 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion____missing_field_name_203 {
   struct __anonstruct____missing_field_name_204 __annonCompField71 ;
};
struct lockref {
   union __anonunion____missing_field_name_203 __annonCompField72 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct____missing_field_name_206 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_205 {
   struct __anonstruct____missing_field_name_206 __annonCompField73 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_205 __annonCompField74 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_207 {
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
   struct lockref d_lockref ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_207 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_weak_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct dentry const * , unsigned int ,
                    char const * , struct qstr const * ) ;
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
struct list_lru_node {
   spinlock_t lock ;
   struct list_head list ;
   long nr_items ;
};
struct list_lru {
   struct list_lru_node *node ;
   nodemask_t active_nodes ;
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
struct block_device;
struct export_operations;
struct iovec;
struct kiocb;
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
struct fs_qfilestatv {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
   __u32 qfs_pad ;
};
struct fs_quota_statv {
   __s8 qs_version ;
   __u8 qs_pad1 ;
   __u16 qs_flags ;
   __u32 qs_incoredqs ;
   struct fs_qfilestatv qs_uquota ;
   struct fs_qfilestatv qs_gquota ;
   struct fs_qfilestatv qs_pquota ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
   __u64 qs_pad2[8U] ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_208 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_208 kprojid_t;
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
union __anonunion____missing_field_name_209 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_209 __annonCompField75 ;
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
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
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
union __anonunion_arg_211 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_210 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_211 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_210 read_descriptor_t;
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
   void (*invalidatepage)(struct page * , unsigned int , unsigned int ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
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
union __anonunion____missing_field_name_212 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_213 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion____missing_field_name_214 {
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
   union __anonunion____missing_field_name_212 __annonCompField76 ;
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
   union __anonunion____missing_field_name_213 __annonCompField77 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_214 __annonCompField78 ;
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
union __anonunion_f_u_215 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_215 f_u ;
   struct path f_path ;
   struct inode *f_inode ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   struct mutex f_pos_lock ;
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
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
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
struct __anonstruct_afs_217 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_216 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_217 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct hlist_node fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   int fl_link_cpu ;
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
   union __anonunion_fl_u_216 fl_u ;
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
   struct list_head s_mounts ;
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
   struct workqueue_struct *s_dio_done_wq ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context {
   int (*actor)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   loff_t pos ;
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
   int (*iterate)(struct file * , struct dir_context * ) ;
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
   int (*tmpfile)(struct inode * , struct dentry * , umode_t ) ;
   int (*set_acl)(struct inode * , struct posix_acl * , int ) ;
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
   long (*nr_cached_objects)(struct super_block * , int ) ;
   long (*free_cached_objects)(struct super_block * , long , int ) ;
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
typedef struct poll_table_struct poll_table;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
struct __anonstruct_v4l_224 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_fb_225 {
   u32 major ;
   u32 minor ;
};
struct __anonstruct_alsa_226 {
   u32 card ;
   u32 device ;
   u32 subdevice ;
};
union __anonunion_info_223 {
   struct __anonstruct_v4l_224 v4l ;
   struct __anonstruct_fb_225 fb ;
   struct __anonstruct_alsa_226 alsa ;
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
   union __anonunion_info_223 info ;
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
struct vb2_queue;
struct v4l2_ioctl_ops;
struct video_device {
   struct media_entity entity ;
   struct v4l2_file_operations const *fops ;
   struct device dev ;
   struct cdev *cdev ;
   struct v4l2_device *v4l2_dev ;
   struct device *dev_parent ;
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
   int (*link_notify)(struct media_link * , u32 , unsigned int ) ;
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
    V4L2_MBUS_FMT_ARGB8888_1X32 = 4109,
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
    V4L2_MBUS_FMT_AYUV8_1X32 = 8215,
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
    V4L2_MBUS_FMT_S5C_UYVY_JPEG_1X8 = 20481,
    V4L2_MBUS_FMT_AHSV8888_1X32 = 24577
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
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_229 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_230 {
   char const *name ;
};
struct __anonstruct_i2c_231 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_232 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_228 {
   struct __anonstruct_of_229 of ;
   struct __anonstruct_device_name_230 device_name ;
   struct __anonstruct_i2c_231 i2c ;
   struct __anonstruct_custom_232 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_228 match ;
   struct list_head list ;
};
struct v4l2_async_notifier {
   unsigned int num_subdevs ;
   struct v4l2_async_subdev **subdevs ;
   struct v4l2_device *v4l2_dev ;
   struct list_head waiting ;
   struct list_head done ;
   struct list_head list ;
   int (*bound)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
   int (*complete)(struct v4l2_async_notifier * ) ;
   void (*unbind)(struct v4l2_async_notifier * , struct v4l2_subdev * , struct v4l2_async_subdev * ) ;
};
struct v4l2_m2m_ctx;
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
   struct v4l2_m2m_ctx *m2m_ctx ;
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
struct regulator_bulk_data;
struct v4l2_subdev_platform_data {
   struct regulator_bulk_data *regulators ;
   int num_regulators ;
   void *host_priv ;
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
   struct device *dev ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct __anonstruct_pad_233 {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct __anonstruct_pad_233 *pad ;
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
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_236 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   unsigned char const *const_type ;
   char (*rectype)[0U] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_236 __annonCompField81 ;
   unsigned char buf[0U] ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
union __anonunion____missing_field_name_239 {
   u32 step ;
   u32 menu_skip_mask ;
};
union __anonunion____missing_field_name_240 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
union __anonunion_cur_241 {
   s32 val ;
   s64 val64 ;
   char *string ;
};
union __anonunion____missing_field_name_242 {
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
   unsigned int done : 1 ;
   unsigned int is_new : 1 ;
   unsigned int is_private : 1 ;
   unsigned int is_auto : 1 ;
   unsigned int has_volatiles : 1 ;
   unsigned int call_notify : 1 ;
   unsigned int manual_mode_value : 8 ;
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 minimum ;
   s32 maximum ;
   s32 default_value ;
   union __anonunion____missing_field_name_239 __annonCompField84 ;
   union __anonunion____missing_field_name_240 __annonCompField85 ;
   unsigned long flags ;
   union __anonunion_cur_241 cur ;
   union __anonunion____missing_field_name_242 __annonCompField86 ;
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
struct v4l2_ctrl_config {
   struct v4l2_ctrl_ops const *ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s32 min ;
   s32 max ;
   u32 step ;
   s32 def ;
   u32 flags ;
   u32 menu_skip_mask ;
   char const * const *qmenu ;
   s64 const *qmenu_int ;
   unsigned int is_private : 1 ;
};
struct meye_params {
   unsigned char subsample ;
   unsigned char quality ;
   unsigned char sharpness ;
   unsigned char agc ;
   unsigned char picture ;
   unsigned char framerate ;
};
struct meye_grab_buffer {
   int state ;
   unsigned long size ;
   struct timeval timestamp ;
   unsigned long sequence ;
};
struct meye {
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler hdl ;
   struct pci_dev *mchip_dev ;
   u8 mchip_irq ;
   u8 mchip_mode ;
   u8 mchip_fnum ;
   unsigned char *mchip_mmregs ;
   u8 *mchip_ptable[1024U] ;
   void *mchip_ptable_toc ;
   dma_addr_t mchip_dmahandle ;
   unsigned char *grab_fbuffer ;
   unsigned char *grab_temp ;
   struct meye_grab_buffer grab_buffer[32U] ;
   int vma_use_count[32U] ;
   struct mutex lock ;
   struct kfifo grabq ;
   spinlock_t grabq_lock ;
   struct kfifo doneq ;
   spinlock_t doneq_lock ;
   wait_queue_head_t proc_list ;
   struct video_device *vdev ;
   u16 brightness ;
   u16 hue ;
   u16 contrast ;
   u16 colour ;
   struct meye_params params ;
   unsigned long in_use ;
   u8 pm_mchip_mode ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
struct device_private {
   void *driver_data ;
};
enum hrtimer_restart;
struct kthread_work;
struct kthread_worker {
   spinlock_t lock ;
   struct list_head work_list ;
   struct task_struct *task ;
   struct kthread_work *current_work ;
};
struct kthread_work {
   struct list_head node ;
   void (*func)(struct kthread_work * ) ;
   wait_queue_head_t done ;
   struct kthread_worker *worker ;
};
struct spi_master;
struct spi_device {
   struct device dev ;
   struct spi_master *master ;
   u32 max_speed_hz ;
   u8 chip_select ;
   u8 bits_per_word ;
   u16 mode ;
   int irq ;
   void *controller_state ;
   void *controller_data ;
   char modalias[32U] ;
   int cs_gpio ;
};
struct spi_message;
struct spi_transfer;
struct spi_master {
   struct device dev ;
   struct list_head list ;
   s16 bus_num ;
   u16 num_chipselect ;
   u16 dma_alignment ;
   u16 mode_bits ;
   u32 bits_per_word_mask ;
   u32 min_speed_hz ;
   u32 max_speed_hz ;
   u16 flags ;
   spinlock_t bus_lock_spinlock ;
   struct mutex bus_lock_mutex ;
   bool bus_lock_flag ;
   int (*setup)(struct spi_device * ) ;
   int (*transfer)(struct spi_device * , struct spi_message * ) ;
   void (*cleanup)(struct spi_device * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   struct completion xfer_completion ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   unsigned int cs_change : 1 ;
   unsigned int tx_nbits : 3 ;
   unsigned int rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned int is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct ldv_thread;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
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
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  }
  if (tmp != 0L) {
    {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    __builtin_unreachable();
    }
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
extern void __ldv_spin_lock(spinlock_t * ) ;
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_50(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_52(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_58(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_spin_lock_62(spinlock_t *ldv_func_arg1 ) ;
void ldv_spin_lock_doneq_lock_of_meye(void) ;
void ldv_spin_unlock_doneq_lock_of_meye(void) ;
void ldv_spin_lock_grabq_lock_of_meye(void) ;
void ldv_spin_unlock_grabq_lock_of_meye(void) ;
extern void ldv_initialize(void) ;
int ldv_post_init(int init_ret_val ) ;
extern void ldv_pre_probe(void) ;
int ldv_post_probe(int probe_ret_val ) ;
int ldv_filter_err_code(int ret_val ) ;
void ldv_check_final_state(void) ;
extern void ldv_switch_to_interrupt_context(void) ;
extern void ldv_switch_to_process_context(void) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
int ldv_undef_int(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct resource iomem_resource ;
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField19.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField19.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
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
  {
  tmp = ioremap_nocache(offset, size);
  }
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern void *vmalloc(unsigned long ) ;
extern void *vmalloc_32(unsigned long ) ;
extern void vfree(void const * ) ;
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  {
  tmp = kobject_name(& dev->kobj);
  }
  return (tmp);
}
}
extern int pci_bus_write_config_byte(struct pci_bus * , unsigned int , int , u8 ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_write_config_byte(struct pci_dev const *dev , int where ,
                                          u8 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_byte(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_67(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_68(struct pci_driver *ldv_func_arg1 ) ;
__inline static void SetPageReserved(struct page *page )
{
  {
  {
  set_bit(10L, (unsigned long volatile *)(& page->flags));
  }
  return;
}
}
__inline static void ClearPageReserved(struct page *page )
{
  {
  {
  clear_bit(10L, (unsigned long volatile *)(& page->flags));
  }
  return;
}
}
extern struct page *vmalloc_to_page(void const * ) ;
extern unsigned long vmalloc_to_pfn(void const * ) ;
extern int remap_pfn_range(struct vm_area_struct * , unsigned long , unsigned long ,
                           unsigned long , pgprot_t ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0ULL) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  }
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
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
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  }
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  {
  tmp___0 = is_device_dma_capable(dev);
  }
  if (tmp___0 == 0) {
    return ((void *)0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return ((void *)0);
  } else {
  }
  {
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  }
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
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    {
    warn_slowpath_null("/home/debian/klever-work/native-scheduler-work-dir/scheduler/jobs/dfbfd2da522a1f5f4786ee57b863db44/klever-core-work-dir/f860c18/linux-kernel-locking-spinlock/lkbce/arch/x86/include/asm/dma-mapping.h",
                       166);
    }
  } else {
  }
  {
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  }
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
    }
  } else {
  }
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  {
  tmp = dev_name(& pdev->dev);
  }
  return (tmp);
}
}
extern void schedule(void) ;
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if ((unsigned long )p != (unsigned long )((poll_table *)0) && ((unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0))) {
    {
    (*(p->_qproc))(filp, wait_address, p);
    }
  } else {
  }
  return;
}
}
extern int __video_register_device(struct video_device * , int , int , int , struct module * ) ;
__inline static int video_register_device(struct video_device *vdev , int type , int nr )
{
  int tmp ;
  {
  {
  tmp = __video_register_device(vdev, type, nr, 1, (vdev->fops)->owner);
  }
  return (tmp);
}
}
extern void video_unregister_device(struct video_device * ) ;
extern struct video_device *video_device_alloc(void) ;
extern void video_device_release(struct video_device * ) ;
extern void v4l2_get_timestamp(struct timeval * ) ;
extern int v4l2_fh_open(struct file * ) ;
extern int v4l2_fh_release(struct file * ) ;
extern int v4l2_device_register(struct device * , struct v4l2_device * ) ;
extern long video_ioctl2(struct file * , unsigned int , unsigned long ) ;
extern int v4l2_event_unsubscribe(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  }
  return (tmp);
}
}
__inline static int ldv_request_irq_64(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_65(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
static void ldv_free_irq_66(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
__inline static unsigned int __kfifo_uint_must_check_helper(unsigned int val )
{
  {
  return (val);
}
}
__inline static int __kfifo_int_must_check_helper(int val )
{
  {
  return (val);
}
}
extern int __kfifo_alloc(struct __kfifo * , unsigned int , size_t , gfp_t ) ;
extern void __kfifo_free(struct __kfifo * ) ;
extern unsigned int __kfifo_in(struct __kfifo * , void const * , unsigned int ) ;
extern unsigned int __kfifo_out(struct __kfifo * , void * , unsigned int ) ;
extern int v4l2_ctrl_handler_init_class(struct v4l2_ctrl_handler * , unsigned int ,
                                        struct lock_class_key * , char const * ) ;
extern void v4l2_ctrl_handler_free(struct v4l2_ctrl_handler * ) ;
extern int v4l2_ctrl_handler_setup(struct v4l2_ctrl_handler * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler * , struct v4l2_ctrl_config const * ,
                                              void * ) ;
extern struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler * , struct v4l2_ctrl_ops const * ,
                                           u32 , s32 , s32 , u32 , s32 ) ;
extern int v4l2_ctrl_log_status(struct file * , void * ) ;
extern int v4l2_ctrl_subscribe_event(struct v4l2_fh * , struct v4l2_event_subscription const * ) ;
extern unsigned int v4l2_ctrl_poll(struct file * , struct poll_table_struct * ) ;
extern int sony_pic_camera_command(int , u8 ) ;
static unsigned int gbuffers = 2U;
static unsigned int gbufsize = 614400U;
static int video_nr = -1;
static struct meye meye ;
static void *rvmalloc(unsigned long size )
{
  void *mem ;
  unsigned long adr ;
  struct page *tmp ;
  {
  {
  size = (size + 4095UL) & 0xfffffffffffff000UL;
  mem = vmalloc_32(size);
  }
  if ((unsigned long )mem != (unsigned long )((void *)0)) {
    {
    memset(mem, 0, size);
    adr = (unsigned long )mem;
    }
    goto ldv_34680;
    ldv_34679:
    {
    tmp = vmalloc_to_page((void const *)adr);
    SetPageReserved(tmp);
    adr = adr + 4096UL;
    size = size - 4096UL;
    }
    ldv_34680: ;
    if (size != 0UL) {
      goto ldv_34679;
    } else {
    }
  } else {
  }
  return (mem);
}
}
static void rvfree(void *mem , unsigned long size )
{
  unsigned long adr ;
  struct page *tmp ;
  {
  if ((unsigned long )mem != (unsigned long )((void *)0)) {
    adr = (unsigned long )mem;
    goto ldv_34688;
    ldv_34687:
    {
    tmp = vmalloc_to_page((void const *)adr);
    ClearPageReserved(tmp);
    adr = adr + 4096UL;
    size = size - 4096UL;
    }
    ldv_34688: ;
    if ((long )size > 0L) {
      goto ldv_34687;
    } else {
    }
    {
    vfree((void const *)mem);
    }
  } else {
  }
  return;
}
}
static int ptable_alloc(void)
{
  u32 *pt ;
  int i ;
  int tmp ;
  dma_addr_t dma ;
  void *tmp___0 ;
  int j ;
  {
  {
  memset((void *)(& meye.mchip_ptable), 0, 8192UL);
  tmp = dma_set_mask(& (meye.mchip_dev)->dev, 4294967295ULL);
  }
  if (tmp != 0) {
    return (-1);
  } else {
  }
  {
  meye.mchip_ptable_toc = dma_alloc_attrs(& (meye.mchip_dev)->dev, 4096UL, & meye.mchip_dmahandle,
                                          208U, (struct dma_attrs *)0);
  }
  if ((unsigned long )meye.mchip_ptable_toc == (unsigned long )((void *)0)) {
    meye.mchip_dmahandle = 0ULL;
    return (-1);
  } else {
  }
  pt = (u32 *)meye.mchip_ptable_toc;
  i = 0;
  goto ldv_34701;
  ldv_34700:
  {
  tmp___0 = dma_alloc_attrs(& (meye.mchip_dev)->dev, 4096UL, & dma, 208U, (struct dma_attrs *)0);
  meye.mchip_ptable[i] = (u8 *)tmp___0;
  }
  if ((unsigned long )meye.mchip_ptable[i] == (unsigned long )((u8 *)0U)) {
    pt = (u32 *)meye.mchip_ptable_toc;
    j = 0;
    goto ldv_34698;
    ldv_34697:
    {
    dma = (unsigned long long )*pt;
    dma_free_attrs(& (meye.mchip_dev)->dev, 4096UL, (void *)meye.mchip_ptable[j],
                   dma, (struct dma_attrs *)0);
    pt = pt + 1;
    j = j + 1;
    }
    ldv_34698: ;
    if (j < i) {
      goto ldv_34697;
    } else {
    }
    {
    dma_free_attrs(& (meye.mchip_dev)->dev, 4096UL, meye.mchip_ptable_toc, meye.mchip_dmahandle,
                   (struct dma_attrs *)0);
    meye.mchip_ptable_toc = (void *)0;
    meye.mchip_dmahandle = 0ULL;
    }
    return (-1);
  } else {
  }
  *pt = (unsigned int )dma;
  pt = pt + 1;
  i = i + 1;
  ldv_34701: ;
  if (i <= 1023) {
    goto ldv_34700;
  } else {
  }
  return (0);
}
}
static void ptable_free(void)
{
  u32 *pt ;
  int i ;
  dma_addr_t dma ;
  {
  pt = (u32 *)meye.mchip_ptable_toc;
  i = 0;
  goto ldv_34710;
  ldv_34709:
  dma = (unsigned long long )*pt;
  if ((unsigned long )meye.mchip_ptable[i] != (unsigned long )((u8 *)0U)) {
    {
    dma_free_attrs(& (meye.mchip_dev)->dev, 4096UL, (void *)meye.mchip_ptable[i],
                   dma, (struct dma_attrs *)0);
    }
  } else {
  }
  pt = pt + 1;
  i = i + 1;
  ldv_34710: ;
  if (i <= 1023) {
    goto ldv_34709;
  } else {
  }
  if ((unsigned long )meye.mchip_ptable_toc != (unsigned long )((void *)0)) {
    {
    dma_free_attrs(& (meye.mchip_dev)->dev, 4096UL, meye.mchip_ptable_toc, meye.mchip_dmahandle,
                   (struct dma_attrs *)0);
    }
  } else {
  }
  {
  memset((void *)(& meye.mchip_ptable), 0, 8192UL);
  meye.mchip_ptable_toc = (void *)0;
  meye.mchip_dmahandle = 0ULL;
  }
  return;
}
}
static void ptable_copy(u8 *buf , int start , int size , int pt_pages )
{
  int i ;
  int tmp ;
  {
  i = 0;
  goto ldv_34720;
  ldv_34719:
  {
  tmp = start;
  start = start + 1;
  memcpy((void *)buf + (unsigned long )i, (void const *)meye.mchip_ptable[tmp],
         4096UL);
  }
  if (start >= pt_pages) {
    start = 0;
  } else {
  }
  i = (int )((unsigned int )i + 4096U);
  ldv_34720: ;
  if ((unsigned long )i < ((unsigned long )size / 4096UL) * 4096UL) {
    goto ldv_34719;
  } else {
  }
  {
  memcpy((void *)buf + (unsigned long )i, (void const *)meye.mchip_ptable[start],
         (unsigned long )size & 4095UL);
  }
  return;
}
}
static u16 *jpeg_quantisation_tables(int *length , int quality )
{
  u16 jpeg_tables[11U][70U] ;
  {
  jpeg_tables[0][0] = 56319U;
  jpeg_tables[0][1] = 17152U;
  jpeg_tables[0][2] = 65280U;
  jpeg_tables[0][3] = 65535U;
  jpeg_tables[0][4] = 65535U;
  jpeg_tables[0][5] = 65535U;
  jpeg_tables[0][6] = 65535U;
  jpeg_tables[0][7] = 65535U;
  jpeg_tables[0][8] = 65535U;
  jpeg_tables[0][9] = 65535U;
  jpeg_tables[0][10] = 65535U;
  jpeg_tables[0][11] = 65535U;
  jpeg_tables[0][12] = 65535U;
  jpeg_tables[0][13] = 65535U;
  jpeg_tables[0][14] = 65535U;
  jpeg_tables[0][15] = 65535U;
  jpeg_tables[0][16] = 65535U;
  jpeg_tables[0][17] = 65535U;
  jpeg_tables[0][18] = 65535U;
  jpeg_tables[0][19] = 65535U;
  jpeg_tables[0][20] = 65535U;
  jpeg_tables[0][21] = 65535U;
  jpeg_tables[0][22] = 65535U;
  jpeg_tables[0][23] = 65535U;
  jpeg_tables[0][24] = 65535U;
  jpeg_tables[0][25] = 65535U;
  jpeg_tables[0][26] = 65535U;
  jpeg_tables[0][27] = 65535U;
  jpeg_tables[0][28] = 65535U;
  jpeg_tables[0][29] = 65535U;
  jpeg_tables[0][30] = 65535U;
  jpeg_tables[0][31] = 65535U;
  jpeg_tables[0][32] = 65535U;
  jpeg_tables[0][33] = 65535U;
  jpeg_tables[0][34] = 65535U;
  jpeg_tables[0][35] = 56319U;
  jpeg_tables[0][36] = 17152U;
  jpeg_tables[0][37] = 65281U;
  jpeg_tables[0][38] = 65535U;
  jpeg_tables[0][39] = 65535U;
  jpeg_tables[0][40] = 65535U;
  jpeg_tables[0][41] = 65535U;
  jpeg_tables[0][42] = 65535U;
  jpeg_tables[0][43] = 65535U;
  jpeg_tables[0][44] = 65535U;
  jpeg_tables[0][45] = 65535U;
  jpeg_tables[0][46] = 65535U;
  jpeg_tables[0][47] = 65535U;
  jpeg_tables[0][48] = 65535U;
  jpeg_tables[0][49] = 65535U;
  jpeg_tables[0][50] = 65535U;
  jpeg_tables[0][51] = 65535U;
  jpeg_tables[0][52] = 65535U;
  jpeg_tables[0][53] = 65535U;
  jpeg_tables[0][54] = 65535U;
  jpeg_tables[0][55] = 65535U;
  jpeg_tables[0][56] = 65535U;
  jpeg_tables[0][57] = 65535U;
  jpeg_tables[0][58] = 65535U;
  jpeg_tables[0][59] = 65535U;
  jpeg_tables[0][60] = 65535U;
  jpeg_tables[0][61] = 65535U;
  jpeg_tables[0][62] = 65535U;
  jpeg_tables[0][63] = 65535U;
  jpeg_tables[0][64] = 65535U;
  jpeg_tables[0][65] = 65535U;
  jpeg_tables[0][66] = 65535U;
  jpeg_tables[0][67] = 65535U;
  jpeg_tables[0][68] = 65535U;
  jpeg_tables[0][69] = 65535U;
  jpeg_tables[1][0] = 56319U;
  jpeg_tables[1][1] = 17152U;
  jpeg_tables[1][2] = 20480U;
  jpeg_tables[1][3] = 15415U;
  jpeg_tables[1][4] = 15430U;
  jpeg_tables[1][5] = 20530U;
  jpeg_tables[1][6] = 16710U;
  jpeg_tables[1][7] = 23110U;
  jpeg_tables[1][8] = 20565U;
  jpeg_tables[1][9] = 30815U;
  jpeg_tables[1][10] = 33480U;
  jpeg_tables[1][11] = 28280U;
  jpeg_tables[1][12] = 30830U;
  jpeg_tables[1][13] = 45045U;
  jpeg_tables[1][14] = 37305U;
  jpeg_tables[1][15] = 65480U;
  jpeg_tables[1][16] = 65535U;
  jpeg_tables[1][17] = 65535U;
  jpeg_tables[1][18] = 65535U;
  jpeg_tables[1][19] = 65535U;
  jpeg_tables[1][20] = 65535U;
  jpeg_tables[1][21] = 65535U;
  jpeg_tables[1][22] = 65535U;
  jpeg_tables[1][23] = 65535U;
  jpeg_tables[1][24] = 65535U;
  jpeg_tables[1][25] = 65535U;
  jpeg_tables[1][26] = 65535U;
  jpeg_tables[1][27] = 65535U;
  jpeg_tables[1][28] = 65535U;
  jpeg_tables[1][29] = 65535U;
  jpeg_tables[1][30] = 65535U;
  jpeg_tables[1][31] = 65535U;
  jpeg_tables[1][32] = 65535U;
  jpeg_tables[1][33] = 65535U;
  jpeg_tables[1][34] = 65535U;
  jpeg_tables[1][35] = 56319U;
  jpeg_tables[1][36] = 17152U;
  jpeg_tables[1][37] = 21761U;
  jpeg_tables[1][38] = 23130U;
  jpeg_tables[1][39] = 27000U;
  jpeg_tables[1][40] = 60280U;
  jpeg_tables[1][41] = 33410U;
  jpeg_tables[1][42] = 65515U;
  jpeg_tables[1][43] = 65535U;
  jpeg_tables[1][44] = 65535U;
  jpeg_tables[1][45] = 65535U;
  jpeg_tables[1][46] = 65535U;
  jpeg_tables[1][47] = 65535U;
  jpeg_tables[1][48] = 65535U;
  jpeg_tables[1][49] = 65535U;
  jpeg_tables[1][50] = 65535U;
  jpeg_tables[1][51] = 65535U;
  jpeg_tables[1][52] = 65535U;
  jpeg_tables[1][53] = 65535U;
  jpeg_tables[1][54] = 65535U;
  jpeg_tables[1][55] = 65535U;
  jpeg_tables[1][56] = 65535U;
  jpeg_tables[1][57] = 65535U;
  jpeg_tables[1][58] = 65535U;
  jpeg_tables[1][59] = 65535U;
  jpeg_tables[1][60] = 65535U;
  jpeg_tables[1][61] = 65535U;
  jpeg_tables[1][62] = 65535U;
  jpeg_tables[1][63] = 65535U;
  jpeg_tables[1][64] = 65535U;
  jpeg_tables[1][65] = 65535U;
  jpeg_tables[1][66] = 65535U;
  jpeg_tables[1][67] = 65535U;
  jpeg_tables[1][68] = 65535U;
  jpeg_tables[1][69] = 65535U;
  jpeg_tables[2][0] = 56319U;
  jpeg_tables[2][1] = 17152U;
  jpeg_tables[2][2] = 10240U;
  jpeg_tables[2][3] = 7708U;
  jpeg_tables[2][4] = 7715U;
  jpeg_tables[2][5] = 10265U;
  jpeg_tables[2][6] = 8483U;
  jpeg_tables[2][7] = 11555U;
  jpeg_tables[2][8] = 10283U;
  jpeg_tables[2][9] = 15408U;
  jpeg_tables[2][10] = 16740U;
  jpeg_tables[2][11] = 14140U;
  jpeg_tables[2][12] = 15415U;
  jpeg_tables[2][13] = 22651U;
  jpeg_tables[2][14] = 18781U;
  jpeg_tables[2][15] = 37220U;
  jpeg_tables[2][16] = 39296U;
  jpeg_tables[2][17] = 36758U;
  jpeg_tables[2][18] = 35968U;
  jpeg_tables[2][19] = 41098U;
  jpeg_tables[2][20] = 59060U;
  jpeg_tables[2][21] = 41155U;
  jpeg_tables[2][22] = 55978U;
  jpeg_tables[2][23] = 35501U;
  jpeg_tables[2][24] = 51340U;
  jpeg_tables[2][25] = 52223U;
  jpeg_tables[2][26] = 61146U;
  jpeg_tables[2][27] = 65525U;
  jpeg_tables[2][28] = 65535U;
  jpeg_tables[2][29] = 49563U;
  jpeg_tables[2][30] = 65535U;
  jpeg_tables[2][31] = 64255U;
  jpeg_tables[2][32] = 59135U;
  jpeg_tables[2][33] = 65533U;
  jpeg_tables[2][34] = 65528U;
  jpeg_tables[2][35] = 56319U;
  jpeg_tables[2][36] = 17152U;
  jpeg_tables[2][37] = 11009U;
  jpeg_tables[2][38] = 11565U;
  jpeg_tables[2][39] = 13628U;
  jpeg_tables[2][40] = 30268U;
  jpeg_tables[2][41] = 16705U;
  jpeg_tables[2][42] = 63606U;
  jpeg_tables[2][43] = 36005U;
  jpeg_tables[2][44] = 63653U;
  jpeg_tables[2][45] = 63736U;
  jpeg_tables[2][46] = 63736U;
  jpeg_tables[2][47] = 63736U;
  jpeg_tables[2][48] = 63736U;
  jpeg_tables[2][49] = 63736U;
  jpeg_tables[2][50] = 63736U;
  jpeg_tables[2][51] = 63736U;
  jpeg_tables[2][52] = 63736U;
  jpeg_tables[2][53] = 63736U;
  jpeg_tables[2][54] = 63736U;
  jpeg_tables[2][55] = 63736U;
  jpeg_tables[2][56] = 63736U;
  jpeg_tables[2][57] = 63736U;
  jpeg_tables[2][58] = 63736U;
  jpeg_tables[2][59] = 63736U;
  jpeg_tables[2][60] = 63736U;
  jpeg_tables[2][61] = 63736U;
  jpeg_tables[2][62] = 63736U;
  jpeg_tables[2][63] = 63736U;
  jpeg_tables[2][64] = 63736U;
  jpeg_tables[2][65] = 63736U;
  jpeg_tables[2][66] = 63736U;
  jpeg_tables[2][67] = 63736U;
  jpeg_tables[2][68] = 63736U;
  jpeg_tables[2][69] = 65528U;
  jpeg_tables[3][0] = 56319U;
  jpeg_tables[3][1] = 17152U;
  jpeg_tables[3][2] = 6912U;
  jpeg_tables[3][3] = 5138U;
  jpeg_tables[3][4] = 5143U;
  jpeg_tables[3][5] = 6929U;
  jpeg_tables[3][6] = 5655U;
  jpeg_tables[3][7] = 7703U;
  jpeg_tables[3][8] = 6940U;
  jpeg_tables[3][9] = 10272U;
  jpeg_tables[3][10] = 11074U;
  jpeg_tables[3][11] = 9512U;
  jpeg_tables[3][12] = 10277U;
  jpeg_tables[3][13] = 14929U;
  jpeg_tables[3][14] = 12349U;
  jpeg_tables[3][15] = 24642U;
  jpeg_tables[3][16] = 25941U;
  jpeg_tables[3][17] = 24420U;
  jpeg_tables[3][18] = 23893U;
  jpeg_tables[3][19] = 27227U;
  jpeg_tables[3][20] = 39288U;
  jpeg_tables[3][21] = 27265U;
  jpeg_tables[3][22] = 36977U;
  jpeg_tables[3][23] = 23411U;
  jpeg_tables[3][24] = 34141U;
  jpeg_tables[3][25] = 34485U;
  jpeg_tables[3][26] = 40592U;
  jpeg_tables[3][27] = 43939U;
  jpeg_tables[3][28] = 43949U;
  jpeg_tables[3][29] = 32871U;
  jpeg_tables[3][30] = 51644U;
  jpeg_tables[3][31] = 42682U;
  jpeg_tables[3][32] = 39367U;
  jpeg_tables[3][33] = 43944U;
  jpeg_tables[3][34] = 65444U;
  jpeg_tables[3][35] = 56319U;
  jpeg_tables[3][36] = 17152U;
  jpeg_tables[3][37] = 7169U;
  jpeg_tables[3][38] = 7710U;
  jpeg_tables[3][39] = 9000U;
  jpeg_tables[3][40] = 20008U;
  jpeg_tables[3][41] = 11051U;
  jpeg_tables[3][42] = 42062U;
  jpeg_tables[3][43] = 23918U;
  jpeg_tables[3][44] = 42094U;
  jpeg_tables[3][45] = 42148U;
  jpeg_tables[3][46] = 42148U;
  jpeg_tables[3][47] = 42148U;
  jpeg_tables[3][48] = 42148U;
  jpeg_tables[3][49] = 42148U;
  jpeg_tables[3][50] = 42148U;
  jpeg_tables[3][51] = 42148U;
  jpeg_tables[3][52] = 42148U;
  jpeg_tables[3][53] = 42148U;
  jpeg_tables[3][54] = 42148U;
  jpeg_tables[3][55] = 42148U;
  jpeg_tables[3][56] = 42148U;
  jpeg_tables[3][57] = 42148U;
  jpeg_tables[3][58] = 42148U;
  jpeg_tables[3][59] = 42148U;
  jpeg_tables[3][60] = 42148U;
  jpeg_tables[3][61] = 42148U;
  jpeg_tables[3][62] = 42148U;
  jpeg_tables[3][63] = 42148U;
  jpeg_tables[3][64] = 42148U;
  jpeg_tables[3][65] = 42148U;
  jpeg_tables[3][66] = 42148U;
  jpeg_tables[3][67] = 42148U;
  jpeg_tables[3][68] = 42148U;
  jpeg_tables[3][69] = 65444U;
  jpeg_tables[4][0] = 56319U;
  jpeg_tables[4][1] = 17152U;
  jpeg_tables[4][2] = 5120U;
  jpeg_tables[4][3] = 3854U;
  jpeg_tables[4][4] = 3858U;
  jpeg_tables[4][5] = 5133U;
  jpeg_tables[4][6] = 4114U;
  jpeg_tables[4][7] = 5906U;
  jpeg_tables[4][8] = 5141U;
  jpeg_tables[4][9] = 7704U;
  jpeg_tables[4][10] = 8498U;
  jpeg_tables[4][11] = 7198U;
  jpeg_tables[4][12] = 7708U;
  jpeg_tables[4][13] = 11325U;
  jpeg_tables[4][14] = 9262U;
  jpeg_tables[4][15] = 18738U;
  jpeg_tables[4][16] = 19520U;
  jpeg_tables[4][17] = 18251U;
  jpeg_tables[4][18] = 17984U;
  jpeg_tables[4][19] = 20549U;
  jpeg_tables[4][20] = 29530U;
  jpeg_tables[4][21] = 20578U;
  jpeg_tables[4][22] = 27989U;
  jpeg_tables[4][23] = 17750U;
  jpeg_tables[4][24] = 25670U;
  jpeg_tables[4][25] = 25992U;
  jpeg_tables[4][26] = 30573U;
  jpeg_tables[4][27] = 33147U;
  jpeg_tables[4][28] = 33154U;
  jpeg_tables[4][29] = 24654U;
  jpeg_tables[4][30] = 38797U;
  jpeg_tables[4][31] = 32140U;
  jpeg_tables[4][32] = 29590U;
  jpeg_tables[4][33] = 33150U;
  jpeg_tables[4][34] = 65404U;
  jpeg_tables[4][35] = 56319U;
  jpeg_tables[4][36] = 17152U;
  jpeg_tables[4][37] = 5377U;
  jpeg_tables[4][38] = 5911U;
  jpeg_tables[4][39] = 6686U;
  jpeg_tables[4][40] = 15134U;
  jpeg_tables[4][41] = 8481U;
  jpeg_tables[4][42] = 31803U;
  jpeg_tables[4][43] = 18003U;
  jpeg_tables[4][44] = 31827U;
  jpeg_tables[4][45] = 31868U;
  jpeg_tables[4][46] = 31868U;
  jpeg_tables[4][47] = 31868U;
  jpeg_tables[4][48] = 31868U;
  jpeg_tables[4][49] = 31868U;
  jpeg_tables[4][50] = 31868U;
  jpeg_tables[4][51] = 31868U;
  jpeg_tables[4][52] = 31868U;
  jpeg_tables[4][53] = 31868U;
  jpeg_tables[4][54] = 31868U;
  jpeg_tables[4][55] = 31868U;
  jpeg_tables[4][56] = 31868U;
  jpeg_tables[4][57] = 31868U;
  jpeg_tables[4][58] = 31868U;
  jpeg_tables[4][59] = 31868U;
  jpeg_tables[4][60] = 31868U;
  jpeg_tables[4][61] = 31868U;
  jpeg_tables[4][62] = 31868U;
  jpeg_tables[4][63] = 31868U;
  jpeg_tables[4][64] = 31868U;
  jpeg_tables[4][65] = 31868U;
  jpeg_tables[4][66] = 31868U;
  jpeg_tables[4][67] = 31868U;
  jpeg_tables[4][68] = 31868U;
  jpeg_tables[4][69] = 65404U;
  jpeg_tables[5][0] = 56319U;
  jpeg_tables[5][1] = 17152U;
  jpeg_tables[5][2] = 4096U;
  jpeg_tables[5][3] = 3083U;
  jpeg_tables[5][4] = 3086U;
  jpeg_tables[5][5] = 4106U;
  jpeg_tables[5][6] = 3342U;
  jpeg_tables[5][7] = 4622U;
  jpeg_tables[5][8] = 4113U;
  jpeg_tables[5][9] = 6163U;
  jpeg_tables[5][10] = 6696U;
  jpeg_tables[5][11] = 5656U;
  jpeg_tables[5][12] = 6166U;
  jpeg_tables[5][13] = 9009U;
  jpeg_tables[5][14] = 7461U;
  jpeg_tables[5][15] = 14888U;
  jpeg_tables[5][16] = 15667U;
  jpeg_tables[5][17] = 14652U;
  jpeg_tables[5][18] = 14387U;
  jpeg_tables[5][19] = 16439U;
  jpeg_tables[5][20] = 23624U;
  jpeg_tables[5][21] = 16462U;
  jpeg_tables[5][22] = 22340U;
  jpeg_tables[5][23] = 14149U;
  jpeg_tables[5][24] = 20536U;
  jpeg_tables[5][25] = 20845U;
  jpeg_tables[5][26] = 24407U;
  jpeg_tables[5][27] = 26466U;
  jpeg_tables[5][28] = 26472U;
  jpeg_tables[5][29] = 19774U;
  jpeg_tables[5][30] = 31089U;
  jpeg_tables[5][31] = 25712U;
  jpeg_tables[5][32] = 23672U;
  jpeg_tables[5][33] = 26469U;
  jpeg_tables[5][34] = 65379U;
  jpeg_tables[5][35] = 56319U;
  jpeg_tables[5][36] = 17152U;
  jpeg_tables[5][37] = 4353U;
  jpeg_tables[5][38] = 4626U;
  jpeg_tables[5][39] = 5400U;
  jpeg_tables[5][40] = 12056U;
  jpeg_tables[5][41] = 6682U;
  jpeg_tables[5][42] = 25391U;
  jpeg_tables[5][43] = 14402U;
  jpeg_tables[5][44] = 25410U;
  jpeg_tables[5][45] = 25443U;
  jpeg_tables[5][46] = 25443U;
  jpeg_tables[5][47] = 25443U;
  jpeg_tables[5][48] = 25443U;
  jpeg_tables[5][49] = 25443U;
  jpeg_tables[5][50] = 25443U;
  jpeg_tables[5][51] = 25443U;
  jpeg_tables[5][52] = 25443U;
  jpeg_tables[5][53] = 25443U;
  jpeg_tables[5][54] = 25443U;
  jpeg_tables[5][55] = 25443U;
  jpeg_tables[5][56] = 25443U;
  jpeg_tables[5][57] = 25443U;
  jpeg_tables[5][58] = 25443U;
  jpeg_tables[5][59] = 25443U;
  jpeg_tables[5][60] = 25443U;
  jpeg_tables[5][61] = 25443U;
  jpeg_tables[5][62] = 25443U;
  jpeg_tables[5][63] = 25443U;
  jpeg_tables[5][64] = 25443U;
  jpeg_tables[5][65] = 25443U;
  jpeg_tables[5][66] = 25443U;
  jpeg_tables[5][67] = 25443U;
  jpeg_tables[5][68] = 25443U;
  jpeg_tables[5][69] = 65379U;
  jpeg_tables[6][0] = 56319U;
  jpeg_tables[6][1] = 17152U;
  jpeg_tables[6][2] = 3328U;
  jpeg_tables[6][3] = 2569U;
  jpeg_tables[6][4] = 2571U;
  jpeg_tables[6][5] = 3336U;
  jpeg_tables[6][6] = 2571U;
  jpeg_tables[6][7] = 3595U;
  jpeg_tables[6][8] = 3342U;
  jpeg_tables[6][9] = 4879U;
  jpeg_tables[6][10] = 5408U;
  jpeg_tables[6][11] = 4627U;
  jpeg_tables[6][12] = 4882U;
  jpeg_tables[6][13] = 7207U;
  jpeg_tables[6][14] = 5918U;
  jpeg_tables[6][15] = 11808U;
  jpeg_tables[6][16] = 12585U;
  jpeg_tables[6][17] = 11824U;
  jpeg_tables[6][18] = 11561U;
  jpeg_tables[6][19] = 13100U;
  jpeg_tables[6][20] = 19002U;
  jpeg_tables[6][21] = 13118U;
  jpeg_tables[6][22] = 17974U;
  jpeg_tables[6][23] = 11319U;
  jpeg_tables[6][24] = 16429U;
  jpeg_tables[6][25] = 16727U;
  jpeg_tables[6][26] = 19526U;
  jpeg_tables[6][27] = 21070U;
  jpeg_tables[6][28] = 21075U;
  jpeg_tables[6][29] = 15922U;
  jpeg_tables[6][30] = 24922U;
  jpeg_tables[6][31] = 20570U;
  jpeg_tables[6][32] = 19040U;
  jpeg_tables[6][33] = 21073U;
  jpeg_tables[6][34] = 65359U;
  jpeg_tables[6][35] = 56319U;
  jpeg_tables[6][36] = 17152U;
  jpeg_tables[6][37] = 3585U;
  jpeg_tables[6][38] = 3598U;
  jpeg_tables[6][39] = 4371U;
  jpeg_tables[6][40] = 9747U;
  jpeg_tables[6][41] = 5397U;
  jpeg_tables[6][42] = 20262U;
  jpeg_tables[6][43] = 11573U;
  jpeg_tables[6][44] = 20277U;
  jpeg_tables[6][45] = 20303U;
  jpeg_tables[6][46] = 20303U;
  jpeg_tables[6][47] = 20303U;
  jpeg_tables[6][48] = 20303U;
  jpeg_tables[6][49] = 20303U;
  jpeg_tables[6][50] = 20303U;
  jpeg_tables[6][51] = 20303U;
  jpeg_tables[6][52] = 20303U;
  jpeg_tables[6][53] = 20303U;
  jpeg_tables[6][54] = 20303U;
  jpeg_tables[6][55] = 20303U;
  jpeg_tables[6][56] = 20303U;
  jpeg_tables[6][57] = 20303U;
  jpeg_tables[6][58] = 20303U;
  jpeg_tables[6][59] = 20303U;
  jpeg_tables[6][60] = 20303U;
  jpeg_tables[6][61] = 20303U;
  jpeg_tables[6][62] = 20303U;
  jpeg_tables[6][63] = 20303U;
  jpeg_tables[6][64] = 20303U;
  jpeg_tables[6][65] = 20303U;
  jpeg_tables[6][66] = 20303U;
  jpeg_tables[6][67] = 20303U;
  jpeg_tables[6][68] = 20303U;
  jpeg_tables[6][69] = 65359U;
  jpeg_tables[7][0] = 56319U;
  jpeg_tables[7][1] = 17152U;
  jpeg_tables[7][2] = 2560U;
  jpeg_tables[7][3] = 1799U;
  jpeg_tables[7][4] = 1800U;
  jpeg_tables[7][5] = 2566U;
  jpeg_tables[7][6] = 2056U;
  jpeg_tables[7][7] = 2824U;
  jpeg_tables[7][8] = 2570U;
  jpeg_tables[7][9] = 3595U;
  jpeg_tables[7][10] = 4120U;
  jpeg_tables[7][11] = 3342U;
  jpeg_tables[7][12] = 3597U;
  jpeg_tables[7][13] = 5405U;
  jpeg_tables[7][14] = 4374U;
  jpeg_tables[7][15] = 8984U;
  jpeg_tables[7][16] = 9503U;
  jpeg_tables[7][17] = 8740U;
  jpeg_tables[7][18] = 8735U;
  jpeg_tables[7][19] = 9761U;
  jpeg_tables[7][20] = 14123U;
  jpeg_tables[7][21] = 9775U;
  jpeg_tables[7][22] = 13353U;
  jpeg_tables[7][23] = 8489U;
  jpeg_tables[7][24] = 12322U;
  jpeg_tables[7][25] = 12609U;
  jpeg_tables[7][26] = 14644U;
  jpeg_tables[7][27] = 15931U;
  jpeg_tables[7][28] = 15934U;
  jpeg_tables[7][29] = 11813U;
  jpeg_tables[7][30] = 18756U;
  jpeg_tables[7][31] = 15427U;
  jpeg_tables[7][32] = 14152U;
  jpeg_tables[7][33] = 15933U;
  jpeg_tables[7][34] = 65339U;
  jpeg_tables[7][35] = 56319U;
  jpeg_tables[7][36] = 17152U;
  jpeg_tables[7][37] = 2561U;
  jpeg_tables[7][38] = 2827U;
  jpeg_tables[7][39] = 3342U;
  jpeg_tables[7][40] = 7182U;
  jpeg_tables[7][41] = 4112U;
  jpeg_tables[7][42] = 15132U;
  jpeg_tables[7][43] = 8744U;
  jpeg_tables[7][44] = 15144U;
  jpeg_tables[7][45] = 15163U;
  jpeg_tables[7][46] = 15163U;
  jpeg_tables[7][47] = 15163U;
  jpeg_tables[7][48] = 15163U;
  jpeg_tables[7][49] = 15163U;
  jpeg_tables[7][50] = 15163U;
  jpeg_tables[7][51] = 15163U;
  jpeg_tables[7][52] = 15163U;
  jpeg_tables[7][53] = 15163U;
  jpeg_tables[7][54] = 15163U;
  jpeg_tables[7][55] = 15163U;
  jpeg_tables[7][56] = 15163U;
  jpeg_tables[7][57] = 15163U;
  jpeg_tables[7][58] = 15163U;
  jpeg_tables[7][59] = 15163U;
  jpeg_tables[7][60] = 15163U;
  jpeg_tables[7][61] = 15163U;
  jpeg_tables[7][62] = 15163U;
  jpeg_tables[7][63] = 15163U;
  jpeg_tables[7][64] = 15163U;
  jpeg_tables[7][65] = 15163U;
  jpeg_tables[7][66] = 15163U;
  jpeg_tables[7][67] = 15163U;
  jpeg_tables[7][68] = 15163U;
  jpeg_tables[7][69] = 65339U;
  jpeg_tables[8][0] = 56319U;
  jpeg_tables[8][1] = 17152U;
  jpeg_tables[8][2] = 1536U;
  jpeg_tables[8][3] = 1284U;
  jpeg_tables[8][4] = 1286U;
  jpeg_tables[8][5] = 1540U;
  jpeg_tables[8][6] = 1286U;
  jpeg_tables[8][7] = 1798U;
  jpeg_tables[8][8] = 1543U;
  jpeg_tables[8][9] = 2568U;
  jpeg_tables[8][10] = 2576U;
  jpeg_tables[8][11] = 2314U;
  jpeg_tables[8][12] = 2569U;
  jpeg_tables[8][13] = 3604U;
  jpeg_tables[8][14] = 3087U;
  jpeg_tables[8][15] = 5904U;
  jpeg_tables[8][16] = 6164U;
  jpeg_tables[8][17] = 5912U;
  jpeg_tables[8][18] = 5652U;
  jpeg_tables[8][19] = 6678U;
  jpeg_tables[8][20] = 9501U;
  jpeg_tables[8][21] = 6687U;
  jpeg_tables[8][22] = 8987U;
  jpeg_tables[8][23] = 5660U;
  jpeg_tables[8][24] = 8214U;
  jpeg_tables[8][25] = 8236U;
  jpeg_tables[8][26] = 9763U;
  jpeg_tables[8][27] = 10535U;
  jpeg_tables[8][28] = 10538U;
  jpeg_tables[8][29] = 7961U;
  jpeg_tables[8][30] = 12333U;
  jpeg_tables[8][31] = 10285U;
  jpeg_tables[8][32] = 9520U;
  jpeg_tables[8][33] = 10536U;
  jpeg_tables[8][34] = 65320U;
  jpeg_tables[8][35] = 56319U;
  jpeg_tables[8][36] = 17152U;
  jpeg_tables[8][37] = 1793U;
  jpeg_tables[8][38] = 1799U;
  jpeg_tables[8][39] = 2058U;
  jpeg_tables[8][40] = 4874U;
  jpeg_tables[8][41] = 2570U;
  jpeg_tables[8][42] = 10259U;
  jpeg_tables[8][43] = 5658U;
  jpeg_tables[8][44] = 10266U;
  jpeg_tables[8][45] = 10280U;
  jpeg_tables[8][46] = 10280U;
  jpeg_tables[8][47] = 10280U;
  jpeg_tables[8][48] = 10280U;
  jpeg_tables[8][49] = 10280U;
  jpeg_tables[8][50] = 10280U;
  jpeg_tables[8][51] = 10280U;
  jpeg_tables[8][52] = 10280U;
  jpeg_tables[8][53] = 10280U;
  jpeg_tables[8][54] = 10280U;
  jpeg_tables[8][55] = 10280U;
  jpeg_tables[8][56] = 10280U;
  jpeg_tables[8][57] = 10280U;
  jpeg_tables[8][58] = 10280U;
  jpeg_tables[8][59] = 10280U;
  jpeg_tables[8][60] = 10280U;
  jpeg_tables[8][61] = 10280U;
  jpeg_tables[8][62] = 10280U;
  jpeg_tables[8][63] = 10280U;
  jpeg_tables[8][64] = 10280U;
  jpeg_tables[8][65] = 10280U;
  jpeg_tables[8][66] = 10280U;
  jpeg_tables[8][67] = 10280U;
  jpeg_tables[8][68] = 10280U;
  jpeg_tables[8][69] = 65320U;
  jpeg_tables[9][0] = 56319U;
  jpeg_tables[9][1] = 17152U;
  jpeg_tables[9][2] = 768U;
  jpeg_tables[9][3] = 514U;
  jpeg_tables[9][4] = 515U;
  jpeg_tables[9][5] = 770U;
  jpeg_tables[9][6] = 771U;
  jpeg_tables[9][7] = 1027U;
  jpeg_tables[9][8] = 771U;
  jpeg_tables[9][9] = 1284U;
  jpeg_tables[9][10] = 1288U;
  jpeg_tables[9][11] = 1029U;
  jpeg_tables[9][12] = 1284U;
  jpeg_tables[9][13] = 1802U;
  jpeg_tables[9][14] = 1543U;
  jpeg_tables[9][15] = 3080U;
  jpeg_tables[9][16] = 3082U;
  jpeg_tables[9][17] = 2828U;
  jpeg_tables[9][18] = 2826U;
  jpeg_tables[9][19] = 3339U;
  jpeg_tables[9][20] = 4622U;
  jpeg_tables[9][21] = 3344U;
  jpeg_tables[9][22] = 4366U;
  jpeg_tables[9][23] = 2830U;
  jpeg_tables[9][24] = 4107U;
  jpeg_tables[9][25] = 4118U;
  jpeg_tables[9][26] = 4881U;
  jpeg_tables[9][27] = 5396U;
  jpeg_tables[9][28] = 5397U;
  jpeg_tables[9][29] = 3852U;
  jpeg_tables[9][30] = 6167U;
  jpeg_tables[9][31] = 5142U;
  jpeg_tables[9][32] = 4632U;
  jpeg_tables[9][33] = 5396U;
  jpeg_tables[9][34] = 65300U;
  jpeg_tables[9][35] = 56319U;
  jpeg_tables[9][36] = 17152U;
  jpeg_tables[9][37] = 769U;
  jpeg_tables[9][38] = 1028U;
  jpeg_tables[9][39] = 1029U;
  jpeg_tables[9][40] = 2309U;
  jpeg_tables[9][41] = 1285U;
  jpeg_tables[9][42] = 5129U;
  jpeg_tables[9][43] = 2829U;
  jpeg_tables[9][44] = 5133U;
  jpeg_tables[9][45] = 5140U;
  jpeg_tables[9][46] = 5140U;
  jpeg_tables[9][47] = 5140U;
  jpeg_tables[9][48] = 5140U;
  jpeg_tables[9][49] = 5140U;
  jpeg_tables[9][50] = 5140U;
  jpeg_tables[9][51] = 5140U;
  jpeg_tables[9][52] = 5140U;
  jpeg_tables[9][53] = 5140U;
  jpeg_tables[9][54] = 5140U;
  jpeg_tables[9][55] = 5140U;
  jpeg_tables[9][56] = 5140U;
  jpeg_tables[9][57] = 5140U;
  jpeg_tables[9][58] = 5140U;
  jpeg_tables[9][59] = 5140U;
  jpeg_tables[9][60] = 5140U;
  jpeg_tables[9][61] = 5140U;
  jpeg_tables[9][62] = 5140U;
  jpeg_tables[9][63] = 5140U;
  jpeg_tables[9][64] = 5140U;
  jpeg_tables[9][65] = 5140U;
  jpeg_tables[9][66] = 5140U;
  jpeg_tables[9][67] = 5140U;
  jpeg_tables[9][68] = 5140U;
  jpeg_tables[9][69] = 65300U;
  jpeg_tables[10][0] = 56319U;
  jpeg_tables[10][1] = 17152U;
  jpeg_tables[10][2] = 256U;
  jpeg_tables[10][3] = 257U;
  jpeg_tables[10][4] = 257U;
  jpeg_tables[10][5] = 257U;
  jpeg_tables[10][6] = 257U;
  jpeg_tables[10][7] = 257U;
  jpeg_tables[10][8] = 257U;
  jpeg_tables[10][9] = 257U;
  jpeg_tables[10][10] = 257U;
  jpeg_tables[10][11] = 257U;
  jpeg_tables[10][12] = 257U;
  jpeg_tables[10][13] = 257U;
  jpeg_tables[10][14] = 257U;
  jpeg_tables[10][15] = 257U;
  jpeg_tables[10][16] = 257U;
  jpeg_tables[10][17] = 257U;
  jpeg_tables[10][18] = 257U;
  jpeg_tables[10][19] = 257U;
  jpeg_tables[10][20] = 257U;
  jpeg_tables[10][21] = 257U;
  jpeg_tables[10][22] = 257U;
  jpeg_tables[10][23] = 257U;
  jpeg_tables[10][24] = 257U;
  jpeg_tables[10][25] = 257U;
  jpeg_tables[10][26] = 257U;
  jpeg_tables[10][27] = 257U;
  jpeg_tables[10][28] = 257U;
  jpeg_tables[10][29] = 257U;
  jpeg_tables[10][30] = 257U;
  jpeg_tables[10][31] = 257U;
  jpeg_tables[10][32] = 257U;
  jpeg_tables[10][33] = 257U;
  jpeg_tables[10][34] = 65281U;
  jpeg_tables[10][35] = 56319U;
  jpeg_tables[10][36] = 17152U;
  jpeg_tables[10][37] = 257U;
  jpeg_tables[10][38] = 257U;
  jpeg_tables[10][39] = 257U;
  jpeg_tables[10][40] = 257U;
  jpeg_tables[10][41] = 257U;
  jpeg_tables[10][42] = 257U;
  jpeg_tables[10][43] = 257U;
  jpeg_tables[10][44] = 257U;
  jpeg_tables[10][45] = 257U;
  jpeg_tables[10][46] = 257U;
  jpeg_tables[10][47] = 257U;
  jpeg_tables[10][48] = 257U;
  jpeg_tables[10][49] = 257U;
  jpeg_tables[10][50] = 257U;
  jpeg_tables[10][51] = 257U;
  jpeg_tables[10][52] = 257U;
  jpeg_tables[10][53] = 257U;
  jpeg_tables[10][54] = 257U;
  jpeg_tables[10][55] = 257U;
  jpeg_tables[10][56] = 257U;
  jpeg_tables[10][57] = 257U;
  jpeg_tables[10][58] = 257U;
  jpeg_tables[10][59] = 257U;
  jpeg_tables[10][60] = 257U;
  jpeg_tables[10][61] = 257U;
  jpeg_tables[10][62] = 257U;
  jpeg_tables[10][63] = 257U;
  jpeg_tables[10][64] = 257U;
  jpeg_tables[10][65] = 257U;
  jpeg_tables[10][66] = 257U;
  jpeg_tables[10][67] = 257U;
  jpeg_tables[10][68] = 257U;
  jpeg_tables[10][69] = 65281U;
  if ((unsigned int )quality > 10U) {
    {
    printk("\fmeye: invalid quality level %d - using 8\n", quality);
    quality = 8;
    }
  } else {
  }
  *length = 70;
  return ((u16 *)(& jpeg_tables) + (unsigned long )quality);
}
}
static u16 *jpeg_huffman_tables(int *length )
{
  u16 tables[218U] ;
  {
  tables[0] = 50431U;
  tables[1] = 46336U;
  tables[2] = 16U;
  tables[3] = 258U;
  tables[4] = 771U;
  tables[5] = 1026U;
  tables[6] = 1283U;
  tables[7] = 1029U;
  tables[8] = 4U;
  tables[9] = 256U;
  tables[10] = 381U;
  tables[11] = 770U;
  tables[12] = 1024U;
  tables[13] = 1297U;
  tables[14] = 8466U;
  tables[15] = 16689U;
  tables[16] = 4870U;
  tables[17] = 24913U;
  tables[18] = 8711U;
  tables[19] = 5233U;
  tables[20] = 33074U;
  tables[21] = 41361U;
  tables[22] = 8968U;
  tables[23] = 45378U;
  tables[24] = 5569U;
  tables[25] = 53586U;
  tables[26] = 9456U;
  tables[27] = 25139U;
  tables[28] = 33394U;
  tables[29] = 2569U;
  tables[30] = 5910U;
  tables[31] = 6424U;
  tables[32] = 9498U;
  tables[33] = 10022U;
  tables[34] = 10536U;
  tables[35] = 13354U;
  tables[36] = 13877U;
  tables[37] = 14391U;
  tables[38] = 14905U;
  tables[39] = 17475U;
  tables[40] = 17989U;
  tables[41] = 18503U;
  tables[42] = 19017U;
  tables[43] = 21587U;
  tables[44] = 22101U;
  tables[45] = 22615U;
  tables[46] = 23129U;
  tables[47] = 25699U;
  tables[48] = 26213U;
  tables[49] = 26727U;
  tables[50] = 27241U;
  tables[51] = 29811U;
  tables[52] = 30325U;
  tables[53] = 30839U;
  tables[54] = 31353U;
  tables[55] = 33923U;
  tables[56] = 34437U;
  tables[57] = 34951U;
  tables[58] = 35465U;
  tables[59] = 37778U;
  tables[60] = 38292U;
  tables[61] = 38806U;
  tables[62] = 39320U;
  tables[63] = 41626U;
  tables[64] = 42147U;
  tables[65] = 42661U;
  tables[66] = 43175U;
  tables[67] = 43689U;
  tables[68] = 46002U;
  tables[69] = 46516U;
  tables[70] = 47030U;
  tables[71] = 47544U;
  tables[72] = 49850U;
  tables[73] = 50371U;
  tables[74] = 50885U;
  tables[75] = 51399U;
  tables[76] = 51913U;
  tables[77] = 54226U;
  tables[78] = 54740U;
  tables[79] = 55254U;
  tables[80] = 55768U;
  tables[81] = 57818U;
  tables[82] = 58338U;
  tables[83] = 58852U;
  tables[84] = 59366U;
  tables[85] = 59880U;
  tables[86] = 61930U;
  tables[87] = 62450U;
  tables[88] = 62964U;
  tables[89] = 63478U;
  tables[90] = 63992U;
  tables[91] = 65530U;
  tables[92] = 50431U;
  tables[93] = 46336U;
  tables[94] = 17U;
  tables[95] = 258U;
  tables[96] = 1026U;
  tables[97] = 772U;
  tables[98] = 1796U;
  tables[99] = 1029U;
  tables[100] = 4U;
  tables[101] = 513U;
  tables[102] = 119U;
  tables[103] = 513U;
  tables[104] = 4355U;
  tables[105] = 1284U;
  tables[106] = 12577U;
  tables[107] = 4614U;
  tables[108] = 20801U;
  tables[109] = 24839U;
  tables[110] = 4977U;
  tables[111] = 12834U;
  tables[112] = 2177U;
  tables[113] = 16916U;
  tables[114] = 41361U;
  tables[115] = 49585U;
  tables[116] = 8969U;
  tables[117] = 21043U;
  tables[118] = 5616U;
  tables[119] = 29282U;
  tables[120] = 2769U;
  tables[121] = 9238U;
  tables[122] = 57652U;
  tables[123] = 61733U;
  tables[124] = 6167U;
  tables[125] = 6681U;
  tables[126] = 10022U;
  tables[127] = 10536U;
  tables[128] = 13610U;
  tables[129] = 14134U;
  tables[130] = 14648U;
  tables[131] = 17210U;
  tables[132] = 17732U;
  tables[133] = 18246U;
  tables[134] = 18760U;
  tables[135] = 21322U;
  tables[136] = 21844U;
  tables[137] = 22358U;
  tables[138] = 22872U;
  tables[139] = 25434U;
  tables[140] = 25956U;
  tables[141] = 26470U;
  tables[142] = 26984U;
  tables[143] = 29546U;
  tables[144] = 30068U;
  tables[145] = 30582U;
  tables[146] = 31096U;
  tables[147] = 33402U;
  tables[148] = 33923U;
  tables[149] = 34437U;
  tables[150] = 34951U;
  tables[151] = 35465U;
  tables[152] = 37778U;
  tables[153] = 38292U;
  tables[154] = 38806U;
  tables[155] = 39320U;
  tables[156] = 41626U;
  tables[157] = 42147U;
  tables[158] = 42661U;
  tables[159] = 43175U;
  tables[160] = 43689U;
  tables[161] = 46002U;
  tables[162] = 46516U;
  tables[163] = 47030U;
  tables[164] = 47544U;
  tables[165] = 49850U;
  tables[166] = 50371U;
  tables[167] = 50885U;
  tables[168] = 51399U;
  tables[169] = 51913U;
  tables[170] = 54226U;
  tables[171] = 54740U;
  tables[172] = 55254U;
  tables[173] = 55768U;
  tables[174] = 58074U;
  tables[175] = 58595U;
  tables[176] = 59109U;
  tables[177] = 59623U;
  tables[178] = 60137U;
  tables[179] = 62450U;
  tables[180] = 62964U;
  tables[181] = 63478U;
  tables[182] = 63992U;
  tables[183] = 65530U;
  tables[184] = 50431U;
  tables[185] = 7936U;
  tables[186] = 0U;
  tables[187] = 1281U;
  tables[188] = 257U;
  tables[189] = 257U;
  tables[190] = 257U;
  tables[191] = 0U;
  tables[192] = 0U;
  tables[193] = 0U;
  tables[194] = 0U;
  tables[195] = 513U;
  tables[196] = 1027U;
  tables[197] = 1541U;
  tables[198] = 2055U;
  tables[199] = 2569U;
  tables[200] = 65291U;
  tables[201] = 50431U;
  tables[202] = 7936U;
  tables[203] = 1U;
  tables[204] = 259U;
  tables[205] = 257U;
  tables[206] = 257U;
  tables[207] = 257U;
  tables[208] = 257U;
  tables[209] = 0U;
  tables[210] = 0U;
  tables[211] = 0U;
  tables[212] = 513U;
  tables[213] = 1027U;
  tables[214] = 1541U;
  tables[215] = 2055U;
  tables[216] = 2569U;
  tables[217] = 65291U;
  *length = 218;
  return ((u16 *)(& tables));
}
}
__inline static int mchip_hsize(void)
{
  {
  return ((unsigned int )meye.params.subsample != 0U ? 320 : 640);
}
}
__inline static int mchip_vsize(void)
{
  {
  return ((unsigned int )meye.params.subsample != 0U ? 240 : 480);
}
}
static void mchip_sync(int reg )
{
  u32 status ;
  int i ;
  u32 mask ;
  {
  if (reg == 28) {
    i = 0;
    goto ldv_34747;
    ldv_34746:
    {
    status = readl((void const volatile *)meye.mchip_mmregs + 32U);
    }
    if ((status & 2U) == 0U) {
      {
      printk("\fmeye: fifo not ready\n");
      }
      return;
    } else {
    }
    if ((status & 3U) != 0U) {
      return;
    } else {
    }
    {
    __const_udelay(4295UL);
    i = i + 1;
    }
    ldv_34747: ;
    if (i <= 999) {
      goto ldv_34746;
    } else {
    }
  } else
  if (reg > 128) {
    mask = reg <= 255 ? 1U : 2U;
    i = 0;
    goto ldv_34751;
    ldv_34750:
    {
    status = readl((void const volatile *)meye.mchip_mmregs + 92U);
    }
    if ((status & mask) != 0U) {
      return;
    } else {
    }
    {
    __const_udelay(4295UL);
    i = i + 1;
    }
    ldv_34751: ;
    if (i <= 999) {
      goto ldv_34750;
    } else {
    }
  } else {
    return;
  }
  {
  printk("\fmeye: mchip_sync() timeout on reg 0x%x status=0x%x\n", reg, status);
  }
  return;
}
}
__inline static void mchip_set(int reg , u32 v )
{
  {
  {
  mchip_sync(reg);
  writel(v, (void volatile *)meye.mchip_mmregs + (unsigned long )reg);
  }
  return;
}
}
__inline static u32 mchip_read(int reg )
{
  unsigned int tmp ;
  {
  {
  mchip_sync(reg);
  tmp = readl((void const volatile *)meye.mchip_mmregs + (unsigned long )reg);
  }
  return (tmp);
}
}
__inline static int mchip_delay(u32 reg , u32 v )
{
  int n ;
  u32 tmp ;
  {
  n = 10;
  goto ldv_34766;
  ldv_34765:
  {
  __const_udelay(4295UL);
  }
  ldv_34766:
  n = n - 1;
  if (n != 0) {
    {
    tmp = mchip_read((int )reg);
    }
    if (tmp != v) {
      goto ldv_34765;
    } else {
      goto ldv_34767;
    }
  } else {
  }
  ldv_34767: ;
  return (n);
}
}
static void mchip_subsample(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  mchip_set(204, (u32 )meye.params.subsample);
  tmp = mchip_hsize();
  mchip_set(180, (u32 )tmp);
  tmp___0 = mchip_vsize();
  mchip_set(184, (u32 )tmp___0);
  tmp___1 = mchip_hsize();
  mchip_set(196, (u32 )tmp___1);
  tmp___2 = mchip_vsize();
  mchip_set(200, (u32 )tmp___2);
  mchip_delay(92U, 3U);
  }
  return;
}
}
static void mchip_set_framerate(void)
{
  {
  {
  mchip_set(96, (u32 )meye.params.framerate);
  }
  return;
}
}
static void mchip_load_tables(void)
{
  int i ;
  int length ;
  u16 *tables ;
  {
  {
  tables = jpeg_huffman_tables(& length);
  i = 0;
  }
  goto ldv_34781;
  ldv_34780:
  {
  writel((unsigned int )*(tables + (unsigned long )i), (void volatile *)meye.mchip_mmregs + 320U);
  i = i + 1;
  }
  ldv_34781: ;
  if (i < length) {
    goto ldv_34780;
  } else {
  }
  {
  tables = jpeg_quantisation_tables(& length, (int )meye.params.quality);
  i = 0;
  }
  goto ldv_34784;
  ldv_34783:
  {
  writel((unsigned int )*(tables + (unsigned long )i), (void volatile *)meye.mchip_mmregs + 320U);
  i = i + 1;
  }
  ldv_34784: ;
  if (i < length) {
    goto ldv_34783;
  } else {
  }
  return;
}
}
static void mchip_vrj_setup(u8 mode )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  mchip_set(256, 5U);
  mchip_set(264, 31U);
  mchip_set(272, 1U);
  mchip_set(456, 160U);
  mchip_set(280, (u32 )mode);
  tmp = mchip_vsize();
  mchip_set(336, (u32 )tmp);
  tmp___0 = mchip_hsize();
  mchip_set(344, (u32 )tmp___0);
  mchip_set(352, 27U);
  mchip_set(288, 65535U);
  mchip_set(292, 65535U);
  mchip_set(296, 12U);
  mchip_set(328, 0U);
  mchip_set(360, 1537U);
  mchip_set(368, 5378U);
  mchip_set(376, 5379U);
  mchip_set(384, 5526U);
  mchip_set(392, 3792U);
  mchip_load_tables();
  }
  return;
}
}
static void mchip_dma_setup(dma_addr_t dma_addr )
{
  int i ;
  {
  {
  mchip_set(8, (unsigned int )dma_addr);
  i = 0;
  }
  goto ldv_34794;
  ldv_34793:
  {
  mchip_set((i + 3) * 4, 0U);
  i = i + 1;
  }
  ldv_34794: ;
  if (i <= 3) {
    goto ldv_34793;
  } else {
  }
  meye.mchip_fnum = 0U;
  return;
}
}
static int mchip_dma_alloc(void)
{
  int tmp ;
  {
  if (meye.mchip_dmahandle == 0ULL) {
    {
    tmp = ptable_alloc();
    }
    if (tmp != 0) {
      return (-1);
    } else {
    }
  } else {
  }
  return (0);
}
}
static void mchip_dma_free(void)
{
  {
  if (meye.mchip_dmahandle != 0ULL) {
    {
    mchip_dma_setup(0ULL);
    ptable_free();
    }
  } else {
  }
  return;
}
}
static void mchip_hic_stop(void)
{
  int i ;
  int j ;
  u32 tmp ;
  int tmp___0 ;
  {
  {
  meye.mchip_mode = 0U;
  tmp = mchip_read(92);
  }
  if ((tmp & 16U) == 0U) {
    return;
  } else {
  }
  i = 0;
  goto ldv_34811;
  ldv_34810:
  {
  mchip_set(84, 2U);
  mchip_delay(84U, 0U);
  j = 0;
  }
  goto ldv_34808;
  ldv_34807:
  {
  tmp___0 = mchip_delay(92U, 3U);
  }
  if (tmp___0 != 0) {
    return;
  } else {
  }
  {
  msleep(1U);
  j = j + 1;
  }
  ldv_34808: ;
  if (j <= 99) {
    goto ldv_34807;
  } else {
  }
  {
  printk("\vmeye: need to reset HIC!\n");
  mchip_set(80, 1U);
  msleep(250U);
  i = i + 1;
  }
  ldv_34811: ;
  if (i <= 19) {
    goto ldv_34810;
  } else {
  }
  {
  printk("\vmeye: resetting HIC hanged!\n");
  }
  return;
}
}
static u32 mchip_get_frame(void)
{
  u32 v ;
  {
  {
  v = mchip_read(((int )meye.mchip_fnum + 3) * 4);
  }
  return (v);
}
}
static void mchip_free_frame(void)
{
  {
  {
  mchip_set(((int )meye.mchip_fnum + 3) * 4, 0U);
  meye.mchip_fnum = (u8 )((int )meye.mchip_fnum + 1);
  meye.mchip_fnum = (unsigned int )meye.mchip_fnum & 3U;
  }
  return;
}
}
static void mchip_cont_read_frame(u32 v , u8 *buf , int size )
{
  int pt_id ;
  {
  {
  pt_id = (int )(v >> 17) & 1023;
  ptable_copy(buf, pt_id, size, 1024);
  }
  return;
}
}
static int mchip_comp_read_frame(u32 v , u8 *buf , int size )
{
  int pt_start ;
  int pt_end ;
  int trailer ;
  int fsize ;
  int i ;
  {
  pt_start = (int )(v >> 19) & 255;
  pt_end = (int )(v >> 11) & 255;
  trailer = (int )(v >> 1) & 1023;
  if (pt_end < pt_start) {
    fsize = (int )(((unsigned int )((unsigned long )(256 - pt_start) + (unsigned long )pt_end) * 1024U + (unsigned int )trailer) * 4U);
  } else {
    fsize = (int )(((unsigned int )((unsigned long )(pt_end - pt_start)) * 1024U + (unsigned int )trailer) * 4U);
  }
  if (fsize > size) {
    {
    printk("\fmeye: oversized compressed frame %d\n", fsize);
    }
    return (-1);
  } else {
  }
  {
  ptable_copy(buf, pt_start, fsize, 256);
  i = fsize + -1;
  }
  goto ldv_34837;
  ldv_34836:
  i = i - 1;
  ldv_34837: ;
  if (i > 0 && (unsigned int )*(buf + (unsigned long )i) == 255U) {
    goto ldv_34836;
  } else {
  }
  if ((i <= 1 || (unsigned int )*(buf + ((unsigned long )i + 0xffffffffffffffffUL)) != 255U) || (unsigned int )*(buf + (unsigned long )i) != 217U) {
    return (-1);
  } else {
  }
  return (fsize);
}
}
static void mchip_take_picture(void)
{
  int i ;
  int tmp ;
  {
  {
  mchip_hic_stop();
  mchip_subsample();
  mchip_dma_setup(meye.mchip_dmahandle);
  mchip_set(88, 1U);
  mchip_set(84, 1U);
  mchip_delay(84U, 0U);
  i = 0;
  }
  goto ldv_34845;
  ldv_34844:
  {
  tmp = mchip_delay(92U, 3U);
  }
  if (tmp != 0) {
    goto ldv_34843;
  } else {
  }
  {
  msleep(1U);
  i = i + 1;
  }
  ldv_34845: ;
  if (i <= 99) {
    goto ldv_34844;
  } else {
  }
  ldv_34843: ;
  return;
}
}
static void mchip_get_picture(u8 *buf , int bufsize )
{
  u32 v ;
  int i ;
  int tmp ;
  {
  {
  mchip_set(88, 7U);
  mchip_set(84, 1U);
  mchip_delay(84U, 0U);
  i = 0;
  }
  goto ldv_34854;
  ldv_34853:
  {
  tmp = mchip_delay(92U, 3U);
  }
  if (tmp != 0) {
    goto ldv_34852;
  } else {
  }
  {
  msleep(1U);
  i = i + 1;
  }
  ldv_34854: ;
  if (i <= 99) {
    goto ldv_34853;
  } else {
  }
  ldv_34852:
  i = 0;
  goto ldv_34857;
  ldv_34856:
  {
  v = mchip_get_frame();
  }
  if ((int )v & 1) {
    {
    mchip_cont_read_frame(v, buf, bufsize);
    }
    goto ldv_34855;
  } else {
  }
  {
  mchip_free_frame();
  i = i + 1;
  }
  ldv_34857: ;
  if (i <= 3) {
    goto ldv_34856;
  } else {
  }
  ldv_34855: ;
  return;
}
}
static void mchip_continuous_start(void)
{
  {
  {
  mchip_hic_stop();
  mchip_subsample();
  mchip_set_framerate();
  mchip_dma_setup(meye.mchip_dmahandle);
  meye.mchip_mode = 8U;
  mchip_set(88, 8U);
  mchip_set(84, 1U);
  mchip_delay(84U, 0U);
  }
  return;
}
}
static int mchip_compress_frame(u8 *buf , int bufsize )
{
  u32 v ;
  int len ;
  int i ;
  int tmp ;
  {
  {
  len = -1;
  mchip_vrj_setup(63);
  __const_udelay(214750UL);
  mchip_set(88, 3U);
  mchip_set(84, 1U);
  mchip_delay(84U, 0U);
  i = 0;
  }
  goto ldv_34870;
  ldv_34869:
  {
  tmp = mchip_delay(92U, 3U);
  }
  if (tmp != 0) {
    goto ldv_34868;
  } else {
  }
  {
  msleep(1U);
  i = i + 1;
  }
  ldv_34870: ;
  if (i <= 99) {
    goto ldv_34869;
  } else {
  }
  ldv_34868:
  i = 0;
  goto ldv_34873;
  ldv_34872:
  {
  v = mchip_get_frame();
  }
  if ((int )v & 1) {
    {
    len = mchip_comp_read_frame(v, buf, bufsize);
    }
    goto ldv_34871;
  } else {
  }
  {
  mchip_free_frame();
  i = i + 1;
  }
  ldv_34873: ;
  if (i <= 3) {
    goto ldv_34872;
  } else {
  }
  ldv_34871: ;
  return (len);
}
}
static void mchip_cont_compression_start(void)
{
  {
  {
  mchip_hic_stop();
  mchip_vrj_setup(63);
  mchip_subsample();
  mchip_set_framerate();
  mchip_dma_setup(meye.mchip_dmahandle);
  meye.mchip_mode = 5U;
  mchip_set(88, 5U);
  mchip_set(84, 1U);
  mchip_delay(84U, 0U);
  }
  return;
}
}
static irqreturn_t meye_irq(int irq , void *dev_id )
{
  u32 v ;
  int reqnr ;
  int sequence ;
  unsigned long __flags ;
  unsigned int __ret ;
  struct kfifo *__tmp ;
  void *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  unsigned long __flags___0 ;
  unsigned int __ret___0 ;
  struct kfifo *__tmp___0 ;
  void const *__buf___0 ;
  unsigned long __n___0 ;
  size_t __recsize___0 ;
  struct __kfifo *__kfifo___0 ;
  unsigned int tmp___6 ;
  int size ;
  unsigned long __flags___1 ;
  unsigned int __ret___1 ;
  struct kfifo *__tmp___1 ;
  void *__buf___1 ;
  unsigned long __n___1 ;
  size_t __recsize___1 ;
  struct __kfifo *__kfifo___1 ;
  unsigned int tmp___7 ;
  unsigned int tmp___8 ;
  int tmp___9 ;
  unsigned long __flags___2 ;
  unsigned int __ret___2 ;
  struct kfifo *__tmp___2 ;
  void const *__buf___2 ;
  unsigned long __n___2 ;
  size_t __recsize___2 ;
  struct __kfifo *__kfifo___2 ;
  unsigned int tmp___10 ;
  {
  {
  v = mchip_read(4);
  }
  if ((unsigned int )meye.mchip_mode != 8U && (unsigned int )meye.mchip_mode != 5U) {
    return (0);
  } else {
  }
  again:
  {
  v = mchip_get_frame();
  }
  if ((v & 1U) == 0U) {
    return (1);
  } else {
  }
  if ((unsigned int )meye.mchip_mode == 8U) {
    {
    ldv___ldv_spin_lock_48(& meye.grabq_lock);
    __tmp = & meye.grabq;
    __buf = (void *)(& reqnr);
    __n = 4UL;
    __recsize = 0UL;
    __kfifo = & __tmp->__annonCompField81.kfifo;
    tmp = __kfifo_out(__kfifo, __buf, (unsigned int )__n);
    __ret = __kfifo_uint_must_check_helper(tmp);
    ldv_spin_unlock_irqrestore_49(& meye.grabq_lock, __flags);
    tmp___0 = __kfifo_uint_must_check_helper(__ret);
    }
    if (tmp___0 != 4U) {
      {
      mchip_free_frame();
      }
      return (1);
    } else {
    }
    {
    tmp___1 = mchip_hsize();
    tmp___2 = mchip_vsize();
    mchip_cont_read_frame(v, meye.grab_fbuffer + (unsigned long )(gbufsize * (unsigned int )reqnr),
                          (tmp___1 * tmp___2) * 2);
    tmp___3 = mchip_hsize();
    tmp___4 = mchip_vsize();
    meye.grab_buffer[reqnr].size = (unsigned long )((tmp___3 * tmp___4) * 2);
    meye.grab_buffer[reqnr].state = 2;
    v4l2_get_timestamp(& meye.grab_buffer[reqnr].timestamp);
    tmp___5 = sequence;
    sequence = sequence + 1;
    meye.grab_buffer[reqnr].sequence = (unsigned long )tmp___5;
    ldv___ldv_spin_lock_50(& meye.doneq_lock);
    __tmp___0 = & meye.doneq;
    __buf___0 = (void const *)(& reqnr);
    __n___0 = 4UL;
    __recsize___0 = 0UL;
    __kfifo___0 = & __tmp___0->__annonCompField81.kfifo;
    tmp___6 = __kfifo_in(__kfifo___0, __buf___0, (unsigned int )__n___0);
    __ret___0 = tmp___6;
    ldv_spin_unlock_irqrestore_51(& meye.doneq_lock, __flags___0);
    __wake_up(& meye.proc_list, 1U, 1, (void *)0);
    }
  } else {
    {
    size = mchip_comp_read_frame(v, meye.grab_temp, (int )gbufsize);
    }
    if (size == -1) {
      {
      mchip_free_frame();
      }
      goto again;
    } else {
    }
    {
    ldv___ldv_spin_lock_52(& meye.grabq_lock);
    __tmp___1 = & meye.grabq;
    __buf___1 = (void *)(& reqnr);
    __n___1 = 4UL;
    __recsize___1 = 0UL;
    __kfifo___1 = & __tmp___1->__annonCompField81.kfifo;
    tmp___7 = __kfifo_out(__kfifo___1, __buf___1, (unsigned int )__n___1);
    __ret___1 = __kfifo_uint_must_check_helper(tmp___7);
    ldv_spin_unlock_irqrestore_49(& meye.grabq_lock, __flags___1);
    tmp___8 = __kfifo_uint_must_check_helper(__ret___1);
    }
    if (tmp___8 != 4U) {
      {
      mchip_free_frame();
      }
      goto again;
    } else {
    }
    {
    memcpy((void *)meye.grab_fbuffer + (unsigned long )(gbufsize * (unsigned int )reqnr),
           (void const *)meye.grab_temp, (size_t )size);
    meye.grab_buffer[reqnr].size = (unsigned long )size;
    meye.grab_buffer[reqnr].state = 2;
    v4l2_get_timestamp(& meye.grab_buffer[reqnr].timestamp);
    tmp___9 = sequence;
    sequence = sequence + 1;
    meye.grab_buffer[reqnr].sequence = (unsigned long )tmp___9;
    ldv___ldv_spin_lock_54(& meye.doneq_lock);
    __tmp___2 = & meye.doneq;
    __buf___2 = (void const *)(& reqnr);
    __n___2 = 4UL;
    __recsize___2 = 0UL;
    __kfifo___2 = & __tmp___2->__annonCompField81.kfifo;
    tmp___10 = __kfifo_in(__kfifo___2, __buf___2, (unsigned int )__n___2);
    __ret___2 = tmp___10;
    ldv_spin_unlock_irqrestore_51(& meye.doneq_lock, __flags___2);
    __wake_up(& meye.proc_list, 1U, 1, (void *)0);
    }
  }
  {
  mchip_free_frame();
  }
  goto again;
}
}
static int meye_open(struct file *file )
{
  int i ;
  int tmp ;
  int tmp___0 ;
  struct kfifo *__tmp ;
  unsigned int tmp___1 ;
  struct kfifo *__tmp___0 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& meye.in_use));
  }
  if (tmp != 0) {
    return (-16);
  } else {
  }
  {
  mchip_hic_stop();
  tmp___0 = mchip_dma_alloc();
  }
  if (tmp___0 != 0) {
    {
    printk("\vmeye: mchip framebuffer allocation failed\n");
    clear_bit(0L, (unsigned long volatile *)(& meye.in_use));
    }
    return (-105);
  } else {
  }
  i = 0;
  goto ldv_34927;
  ldv_34926:
  meye.grab_buffer[i].state = 0;
  i = i + 1;
  ldv_34927: ;
  if (i <= 31) {
    goto ldv_34926;
  } else {
  }
  {
  __tmp = & meye.grabq;
  tmp___1 = 0U;
  __tmp->__annonCompField81.kfifo.out = tmp___1;
  __tmp->__annonCompField81.kfifo.in = tmp___1;
  __tmp___0 = & meye.doneq;
  tmp___2 = 0U;
  __tmp___0->__annonCompField81.kfifo.out = tmp___2;
  __tmp___0->__annonCompField81.kfifo.in = tmp___2;
  tmp___3 = v4l2_fh_open(file);
  }
  return (tmp___3);
}
}
static int meye_release(struct file *file )
{
  int tmp ;
  {
  {
  mchip_hic_stop();
  mchip_dma_free();
  clear_bit(0L, (unsigned long volatile *)(& meye.in_use));
  tmp = v4l2_fh_release(file);
  }
  return (tmp);
}
}
static int meyeioc_g_params(struct meye_params *p )
{
  {
  *p = meye.params;
  return (0);
}
}
static int meyeioc_s_params(struct meye_params *jp )
{
  {
  if ((unsigned int )jp->subsample > 1U) {
    return (-22);
  } else {
  }
  if ((unsigned int )jp->quality > 10U) {
    return (-22);
  } else {
  }
  if (((unsigned int )jp->sharpness > 63U || (unsigned int )jp->agc > 63U) || (unsigned int )jp->picture > 63U) {
    return (-22);
  } else {
  }
  if ((unsigned int )jp->framerate > 31U) {
    return (-22);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  if ((int )meye.params.subsample != (int )jp->subsample || (int )meye.params.quality != (int )jp->quality) {
    {
    mchip_hic_stop();
    }
  } else {
  }
  {
  meye.params = *jp;
  sony_pic_camera_command(12, (int )meye.params.sharpness);
  sony_pic_camera_command(16, (int )meye.params.agc);
  sony_pic_camera_command(14, (int )meye.params.picture);
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int meyeioc_qbuf_capt(int *nb )
{
  unsigned long __flags ;
  unsigned int __ret ;
  struct kfifo *__tmp ;
  void const *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp ;
  {
  if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
    return (-22);
  } else {
  }
  if ((unsigned int )*nb >= gbuffers) {
    return (-22);
  } else {
  }
  if (*nb < 0) {
    {
    mchip_hic_stop();
    }
    return (0);
  } else {
  }
  if (meye.grab_buffer[*nb].state != 0) {
    return (-16);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  if ((unsigned int )meye.mchip_mode != 5U) {
    {
    mchip_cont_compression_start();
    }
  } else {
  }
  {
  meye.grab_buffer[*nb].state = 1;
  ldv___ldv_spin_lock_56(& meye.grabq_lock);
  __tmp = & meye.grabq;
  __buf = (void const *)nb;
  __n = 4UL;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  tmp = __kfifo_in(__kfifo, __buf, (unsigned int )__n);
  __ret = tmp;
  ldv_spin_unlock_irqrestore_49(& meye.grabq_lock, __flags);
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int meyeioc_sync(struct file *file , void *fh , int *i )
{
  int unused ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  unsigned long __flags ;
  unsigned int __ret___1 ;
  struct kfifo *__tmp ;
  void *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if (*i < 0 || (unsigned int )*i >= gbuffers) {
    return (-22);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  {
  if (meye.grab_buffer[*i].state == 0) {
    goto case_0;
  } else {
  }
  if (meye.grab_buffer[*i].state == 1) {
    goto case_1;
  } else {
  }
  if (meye.grab_buffer[*i].state == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  {
  mutex_unlock(& meye.lock);
  }
  return (-22);
  case_1: ;
  if ((file->f_flags & 2048U) != 0U) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-11);
  } else {
  }
  __ret = 0;
  if (meye.grab_buffer[*i].state == 1) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_34968:
    {
    tmp = prepare_to_wait_event(& meye.proc_list, & __wait, 1);
    __int = tmp;
    }
    if (meye.grab_buffer[*i].state != 1) {
      goto ldv_34967;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_34967;
    } else {
    }
    {
    schedule();
    }
    goto ldv_34968;
    ldv_34967:
    {
    finish_wait(& meye.proc_list, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret != 0) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-4);
  } else {
  }
  case_2:
  {
  meye.grab_buffer[*i].state = 0;
  ldv___ldv_spin_lock_58(& meye.doneq_lock);
  __tmp = & meye.doneq;
  __buf = (void *)(& unused);
  __n = 4UL;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  tmp___0 = __kfifo_out(__kfifo, __buf, (unsigned int )__n);
  __ret___1 = __kfifo_uint_must_check_helper(tmp___0);
  ldv_spin_unlock_irqrestore_51(& meye.doneq_lock, __flags);
  tmp___1 = __kfifo_uint_must_check_helper(__ret___1);
  }
  if (tmp___1 != 4U) {
    goto ldv_34981;
  } else {
  }
  switch_break: ;
  }
  ldv_34981:
  {
  *i = (int )meye.grab_buffer[*i].size;
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int meyeioc_stillcapt(void)
{
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
    return (-22);
  } else {
  }
  if (meye.grab_buffer[0].state != 0) {
    return (-16);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  meye.grab_buffer[0].state = 1;
  mchip_take_picture();
  tmp = mchip_hsize();
  tmp___0 = mchip_vsize();
  mchip_get_picture(meye.grab_fbuffer, (tmp * tmp___0) * 2);
  meye.grab_buffer[0].state = 2;
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int meyeioc_stilljcapt(int *len )
{
  {
  if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
    return (-22);
  } else {
  }
  if (meye.grab_buffer[0].state != 0) {
    return (-16);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  meye.grab_buffer[0].state = 1;
  *len = -1;
  }
  goto ldv_34989;
  ldv_34988:
  {
  mchip_take_picture();
  *len = mchip_compress_frame(meye.grab_fbuffer, (int )gbufsize);
  }
  ldv_34989: ;
  if (*len == -1) {
    goto ldv_34988;
  } else {
  }
  {
  meye.grab_buffer[0].state = 2;
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_querycap(struct file *file , void *fh , struct v4l2_capability *cap )
{
  char const *tmp ;
  {
  {
  strcpy((char *)(& cap->driver), "meye");
  strcpy((char *)(& cap->card), "meye");
  tmp = pci_name((struct pci_dev const *)meye.mchip_dev);
  sprintf((char *)(& cap->bus_info), "PCI:%s", tmp);
  cap->version = 270U;
  cap->device_caps = 67108865U;
  cap->capabilities = cap->device_caps | 2147483648U;
  }
  return (0);
}
}
static int vidioc_enum_input(struct file *file , void *fh , struct v4l2_input *i )
{
  {
  if (i->index != 0U) {
    return (-22);
  } else {
  }
  {
  strcpy((char *)(& i->name), "Camera");
  i->type = 2U;
  }
  return (0);
}
}
static int vidioc_g_input(struct file *file , void *fh , unsigned int *i )
{
  {
  *i = 0U;
  return (0);
}
}
static int vidioc_s_input(struct file *file , void *fh , unsigned int i )
{
  {
  if (i != 0U) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int meye_s_ctrl(struct v4l2_ctrl *ctrl )
{
  {
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  {
  if (ctrl->id == 9963776U) {
    goto case_9963776;
  } else {
  }
  if (ctrl->id == 9963779U) {
    goto case_9963779;
  } else {
  }
  if (ctrl->id == 9963777U) {
    goto case_9963777;
  } else {
  }
  if (ctrl->id == 9963778U) {
    goto case_9963778;
  } else {
  }
  if (ctrl->id == 9967872U) {
    goto case_9967872;
  } else {
  }
  if (ctrl->id == 9963803U) {
    goto case_9963803;
  } else {
  }
  if (ctrl->id == 9967873U) {
    goto case_9967873;
  } else {
  }
  if (ctrl->id == 10291459U) {
    goto case_10291459;
  } else {
  }
  if (ctrl->id == 9967874U) {
    goto case_9967874;
  } else {
  }
  goto switch_default;
  case_9963776:
  {
  sony_pic_camera_command(4, (int )((u8 )ctrl->__annonCompField86.val));
  meye.brightness = (int )((u16 )ctrl->__annonCompField86.val) << 10U;
  }
  goto ldv_35015;
  case_9963779:
  {
  sony_pic_camera_command(8, (int )((u8 )ctrl->__annonCompField86.val));
  meye.hue = (int )((u16 )ctrl->__annonCompField86.val) << 10U;
  }
  goto ldv_35015;
  case_9963777:
  {
  sony_pic_camera_command(6, (int )((u8 )ctrl->__annonCompField86.val));
  meye.contrast = (int )((u16 )ctrl->__annonCompField86.val) << 10U;
  }
  goto ldv_35015;
  case_9963778:
  {
  sony_pic_camera_command(10, (int )((u8 )ctrl->__annonCompField86.val));
  meye.colour = (int )((u16 )ctrl->__annonCompField86.val) << 10U;
  }
  goto ldv_35015;
  case_9967872:
  {
  sony_pic_camera_command(16, (int )((u8 )ctrl->__annonCompField86.val));
  meye.params.agc = (unsigned char )ctrl->__annonCompField86.val;
  }
  goto ldv_35015;
  case_9963803:
  {
  sony_pic_camera_command(12, (int )((u8 )ctrl->__annonCompField86.val));
  meye.params.sharpness = (unsigned char )ctrl->__annonCompField86.val;
  }
  goto ldv_35015;
  case_9967873:
  {
  sony_pic_camera_command(14, (int )((u8 )ctrl->__annonCompField86.val));
  meye.params.picture = (unsigned char )ctrl->__annonCompField86.val;
  }
  goto ldv_35015;
  case_10291459:
  meye.params.quality = (unsigned char )ctrl->__annonCompField86.val;
  goto ldv_35015;
  case_9967874:
  meye.params.framerate = (unsigned char )ctrl->__annonCompField86.val;
  goto ldv_35015;
  switch_default:
  {
  mutex_unlock(& meye.lock);
  }
  return (-22);
  switch_break: ;
  }
  ldv_35015:
  {
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_enum_fmt_vid_cap(struct file *file , void *fh , struct v4l2_fmtdesc *f )
{
  {
  if (f->index > 1U) {
    return (-22);
  } else {
  }
  if (f->index == 0U) {
    {
    f->flags = 0U;
    strcpy((char *)(& f->description), "YUV422");
    f->pixelformat = 1448695129U;
    }
  } else {
    {
    f->flags = 1U;
    strcpy((char *)(& f->description), "MJPEG");
    f->pixelformat = 1196444237U;
    }
  }
  return (0);
}
}
static int vidioc_try_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  {
  if (f->fmt.pix.pixelformat != 1448695129U && f->fmt.pix.pixelformat != 1196444237U) {
    return (-22);
  } else {
  }
  if (f->fmt.pix.field > 1U) {
    return (-22);
  } else {
  }
  f->fmt.pix.field = 1U;
  if (f->fmt.pix.width <= 320U) {
    f->fmt.pix.width = 320U;
    f->fmt.pix.height = 240U;
  } else {
    f->fmt.pix.width = 640U;
    f->fmt.pix.height = 480U;
  }
  f->fmt.pix.bytesperline = f->fmt.pix.width * 2U;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 0U;
  f->fmt.pix.priv = 0U;
  return (0);
}
}
static int vidioc_g_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if ((int )meye.mchip_mode == 8) {
    goto case_8;
  } else {
  }
  if ((int )meye.mchip_mode == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_8: ;
  switch_default:
  f->fmt.pix.pixelformat = 1448695129U;
  goto ldv_35042;
  case_5:
  f->fmt.pix.pixelformat = 1196444237U;
  goto ldv_35042;
  switch_break: ;
  }
  ldv_35042:
  {
  f->fmt.pix.field = 1U;
  tmp = mchip_hsize();
  f->fmt.pix.width = (__u32 )tmp;
  tmp___0 = mchip_vsize();
  f->fmt.pix.height = (__u32 )tmp___0;
  f->fmt.pix.bytesperline = f->fmt.pix.width * 2U;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  }
  return (0);
}
}
static int vidioc_s_fmt_vid_cap(struct file *file , void *fh , struct v4l2_format *f )
{
  {
  if (f->fmt.pix.pixelformat != 1448695129U && f->fmt.pix.pixelformat != 1196444237U) {
    return (-22);
  } else {
  }
  if (f->fmt.pix.field > 1U) {
    return (-22);
  } else {
  }
  {
  f->fmt.pix.field = 1U;
  mutex_lock_nested(& meye.lock, 0U);
  }
  if (f->fmt.pix.width <= 320U) {
    f->fmt.pix.width = 320U;
    f->fmt.pix.height = 240U;
    meye.params.subsample = 1U;
  } else {
    f->fmt.pix.width = 640U;
    f->fmt.pix.height = 480U;
    meye.params.subsample = 0U;
  }
  {
  if (f->fmt.pix.pixelformat == 1448695129U) {
    goto case_1448695129;
  } else {
  }
  if (f->fmt.pix.pixelformat == 1196444237U) {
    goto case_1196444237;
  } else {
  }
  goto switch_break;
  case_1448695129:
  meye.mchip_mode = 8U;
  goto ldv_35050;
  case_1196444237:
  meye.mchip_mode = 5U;
  goto ldv_35050;
  switch_break: ;
  }
  ldv_35050:
  {
  mutex_unlock(& meye.lock);
  f->fmt.pix.bytesperline = f->fmt.pix.width * 2U;
  f->fmt.pix.sizeimage = f->fmt.pix.height * f->fmt.pix.bytesperline;
  f->fmt.pix.colorspace = 0U;
  f->fmt.pix.priv = 0U;
  }
  return (0);
}
}
static int vidioc_reqbufs(struct file *file , void *fh , struct v4l2_requestbuffers *req )
{
  int i ;
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  void *tmp ;
  {
  if (req->memory != 1U) {
    return (-22);
  } else {
  }
  if ((unsigned long )meye.grab_fbuffer != (unsigned long )((unsigned char *)0U) && req->count == gbuffers) {
    return (0);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  if ((unsigned long )meye.grab_fbuffer != (unsigned long )((unsigned char *)0U)) {
    i = 0;
    goto ldv_35059;
    ldv_35058: ;
    if (meye.vma_use_count[i] != 0) {
      {
      mutex_unlock(& meye.lock);
      }
      return (-22);
    } else {
    }
    i = i + 1;
    ldv_35059: ;
    if ((unsigned int )i < gbuffers) {
      goto ldv_35058;
    } else {
    }
    {
    rvfree((void *)meye.grab_fbuffer, (unsigned long )(gbuffers * gbufsize));
    meye.grab_fbuffer = (unsigned char *)0U;
    }
  } else {
  }
  {
  _max1 = 2;
  _min1 = (int )req->count;
  _min2 = 32;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  gbuffers = (unsigned int )(_max1 > _max2 ? _max1 : _max2);
  req->count = gbuffers;
  tmp = rvmalloc((unsigned long )(gbuffers * gbufsize));
  meye.grab_fbuffer = (unsigned char *)tmp;
  }
  if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
    {
    printk("\vmeye: v4l framebuffer allocation failed\n");
    mutex_unlock(& meye.lock);
    }
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_35071;
  ldv_35070:
  meye.vma_use_count[i] = 0;
  i = i + 1;
  ldv_35071: ;
  if ((unsigned int )i < gbuffers) {
    goto ldv_35070;
  } else {
  }
  {
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_querybuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  unsigned int index ;
  {
  index = buf->index;
  if (index >= gbuffers) {
    return (-22);
  } else {
  }
  buf->bytesused = (__u32 )meye.grab_buffer[index].size;
  buf->flags = 8193U;
  if (meye.grab_buffer[index].state == 1) {
    buf->flags = buf->flags | 2U;
  } else {
  }
  if (meye.grab_buffer[index].state == 2) {
    buf->flags = buf->flags | 4U;
  } else {
  }
  buf->field = 1U;
  buf->timestamp = meye.grab_buffer[index].timestamp;
  buf->sequence = (__u32 )meye.grab_buffer[index].sequence;
  buf->memory = 1U;
  buf->m.offset = index * gbufsize;
  buf->length = gbufsize;
  return (0);
}
}
static int vidioc_qbuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  unsigned long __flags ;
  unsigned int __ret ;
  struct kfifo *__tmp ;
  void const *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp ;
  {
  if (buf->memory != 1U) {
    return (-22);
  } else {
  }
  if (buf->index >= gbuffers) {
    return (-22);
  } else {
  }
  if (meye.grab_buffer[buf->index].state != 0) {
    return (-22);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  buf->flags = buf->flags | 2U;
  buf->flags = buf->flags & 4294967291U;
  meye.grab_buffer[buf->index].state = 1;
  ldv___ldv_spin_lock_60(& meye.grabq_lock);
  __tmp = & meye.grabq;
  __buf = (void const *)(& buf->index);
  __n = 4UL;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  tmp = __kfifo_in(__kfifo, __buf, (unsigned int )__n);
  __ret = tmp;
  ldv_spin_unlock_irqrestore_49(& meye.grabq_lock, __flags);
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_dqbuf(struct file *file , void *fh , struct v4l2_buffer *buf )
{
  int reqnr ;
  struct kfifo *__tmpl ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  struct kfifo *__tmpl___0 ;
  struct kfifo *__tmpl___1 ;
  unsigned long __flags ;
  unsigned int __ret___1 ;
  struct kfifo *__tmp ;
  void *__buf ;
  unsigned long __n ;
  size_t __recsize ;
  struct __kfifo *__kfifo ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if (buf->memory != 1U) {
    return (-22);
  } else {
  }
  {
  mutex_lock_nested(& meye.lock, 0U);
  __tmpl = & meye.doneq;
  }
  if (__tmpl->__annonCompField81.kfifo.in - __tmpl->__annonCompField81.kfifo.out == 0U && (file->f_flags & 2048U) != 0U) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-11);
  } else {
  }
  __ret = 0;
  __tmpl___1 = & meye.doneq;
  if (__tmpl___1->__annonCompField81.kfifo.in - __tmpl___1->__annonCompField81.kfifo.out == 0U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_35111:
    {
    tmp = prepare_to_wait_event(& meye.proc_list, & __wait, 1);
    __int = tmp;
    __tmpl___0 = & meye.doneq;
    }
    if (__tmpl___0->__annonCompField81.kfifo.in - __tmpl___0->__annonCompField81.kfifo.out != 0U) {
      goto ldv_35110;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_35110;
    } else {
    }
    {
    schedule();
    }
    goto ldv_35111;
    ldv_35110:
    {
    finish_wait(& meye.proc_list, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  if (__ret < 0) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-4);
  } else {
  }
  {
  ldv___ldv_spin_lock_62(& meye.doneq_lock);
  __tmp = & meye.doneq;
  __buf = (void *)(& reqnr);
  __n = 4UL;
  __recsize = 0UL;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  tmp___0 = __kfifo_out(__kfifo, __buf, (unsigned int )__n);
  __ret___1 = __kfifo_uint_must_check_helper(tmp___0);
  ldv_spin_unlock_irqrestore_51(& meye.doneq_lock, __flags);
  tmp___1 = __kfifo_uint_must_check_helper(__ret___1);
  }
  if (tmp___1 == 0U) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-16);
  } else {
  }
  if (meye.grab_buffer[reqnr].state != 2) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-22);
  } else {
  }
  {
  buf->index = (__u32 )reqnr;
  buf->bytesused = (__u32 )meye.grab_buffer[reqnr].size;
  buf->flags = 8193U;
  buf->field = 1U;
  buf->timestamp = meye.grab_buffer[reqnr].timestamp;
  buf->sequence = (__u32 )meye.grab_buffer[reqnr].sequence;
  buf->memory = 1U;
  buf->m.offset = (unsigned int )reqnr * gbufsize;
  buf->length = gbufsize;
  meye.grab_buffer[reqnr].state = 0;
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_streamon(struct file *file , void *fh , enum v4l2_buf_type i )
{
  {
  {
  mutex_lock_nested(& meye.lock, 0U);
  }
  {
  if ((int )meye.mchip_mode == 8) {
    goto case_8;
  } else {
  }
  if ((int )meye.mchip_mode == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_8:
  {
  mchip_continuous_start();
  }
  goto ldv_35129;
  case_5:
  {
  mchip_cont_compression_start();
  }
  goto ldv_35129;
  switch_default:
  {
  mutex_unlock(& meye.lock);
  }
  return (-22);
  switch_break: ;
  }
  ldv_35129:
  {
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static int vidioc_streamoff(struct file *file , void *fh , enum v4l2_buf_type i )
{
  struct kfifo *__tmp ;
  unsigned int tmp ;
  struct kfifo *__tmp___0 ;
  unsigned int tmp___0 ;
  {
  {
  mutex_lock_nested(& meye.lock, 0U);
  mchip_hic_stop();
  __tmp = & meye.grabq;
  tmp = 0U;
  __tmp->__annonCompField81.kfifo.out = tmp;
  __tmp->__annonCompField81.kfifo.in = tmp;
  __tmp___0 = & meye.doneq;
  tmp___0 = 0U;
  __tmp___0->__annonCompField81.kfifo.out = tmp___0;
  __tmp___0->__annonCompField81.kfifo.in = tmp___0;
  i = 0;
  }
  goto ldv_35142;
  ldv_35141:
  meye.grab_buffer[(unsigned int )i].state = 0;
  i = (enum v4l2_buf_type )((unsigned int )i + 1U);
  ldv_35142: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_35141;
  } else {
  }
  {
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static long vidioc_default(struct file *file , void *fh , bool valid_prio , unsigned int cmd ,
                           void *arg )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  {
  if (cmd == 2147907264U) {
    goto case_2147907264;
  } else {
  }
  if (cmd == 1074165441U) {
    goto case_1074165441;
  } else {
  }
  if (cmd == 1074034370U) {
    goto case_1074034370;
  } else {
  }
  if (cmd == 3221518019U) {
    goto case_3221518019;
  } else {
  }
  if (cmd == 30404U) {
    goto case_30404;
  } else {
  }
  if (cmd == 2147776197U) {
    goto case_2147776197;
  } else {
  }
  goto switch_default;
  case_2147907264:
  {
  tmp = meyeioc_g_params((struct meye_params *)arg);
  }
  return ((long )tmp);
  case_1074165441:
  {
  tmp___0 = meyeioc_s_params((struct meye_params *)arg);
  }
  return ((long )tmp___0);
  case_1074034370:
  {
  tmp___1 = meyeioc_qbuf_capt((int *)arg);
  }
  return ((long )tmp___1);
  case_3221518019:
  {
  tmp___2 = meyeioc_sync(file, fh, (int *)arg);
  }
  return ((long )tmp___2);
  case_30404:
  {
  tmp___3 = meyeioc_stillcapt();
  }
  return ((long )tmp___3);
  case_2147776197:
  {
  tmp___4 = meyeioc_stilljcapt((int *)arg);
  }
  return ((long )tmp___4);
  switch_default: ;
  return (-25L);
  switch_break: ;
  }
}
}
static unsigned int meye_poll(struct file *file , poll_table *wait )
{
  unsigned int res ;
  unsigned int tmp ;
  struct kfifo *__tmpl ;
  {
  {
  tmp = v4l2_ctrl_poll(file, wait);
  res = tmp;
  mutex_lock_nested(& meye.lock, 0U);
  poll_wait(file, & meye.proc_list, wait);
  __tmpl = & meye.doneq;
  }
  if (__tmpl->__annonCompField81.kfifo.in - __tmpl->__annonCompField81.kfifo.out != 0U) {
    res = res | 65U;
  } else {
  }
  {
  mutex_unlock(& meye.lock);
  }
  return (res);
}
}
static void meye_vm_open(struct vm_area_struct *vma )
{
  long idx ;
  {
  idx = (long )vma->vm_private_data;
  meye.vma_use_count[idx] = meye.vma_use_count[idx] + 1;
  return;
}
}
static void meye_vm_close(struct vm_area_struct *vma )
{
  long idx ;
  {
  idx = (long )vma->vm_private_data;
  meye.vma_use_count[idx] = meye.vma_use_count[idx] - 1;
  return;
}
}
static struct vm_operations_struct const meye_vm_ops =
     {& meye_vm_open, & meye_vm_close, 0, 0, 0, 0, 0, 0, 0};
static int meye_mmap(struct file *file , struct vm_area_struct *vma )
{
  unsigned long start ;
  unsigned long size ;
  unsigned long offset ;
  unsigned long page ;
  unsigned long pos ;
  int i ;
  void *tmp ;
  pgprot_t __constr_expr_0 ;
  int tmp___0 ;
  {
  {
  start = vma->vm_start;
  size = vma->vm_end - vma->vm_start;
  offset = vma->vm_pgoff << 12;
  mutex_lock_nested(& meye.lock, 0U);
  }
  if (size > (unsigned long )(gbuffers * gbufsize)) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-22);
  } else {
  }
  if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
    {
    tmp = rvmalloc((unsigned long )(gbuffers * gbufsize));
    meye.grab_fbuffer = (unsigned char *)tmp;
    }
    if ((unsigned long )meye.grab_fbuffer == (unsigned long )((unsigned char *)0U)) {
      {
      printk("\vmeye: v4l framebuffer allocation failed\n");
      mutex_unlock(& meye.lock);
      }
      return (-12);
    } else {
    }
    i = 0;
    goto ldv_35185;
    ldv_35184:
    meye.vma_use_count[i] = 0;
    i = i + 1;
    ldv_35185: ;
    if ((unsigned int )i < gbuffers) {
      goto ldv_35184;
    } else {
    }
  } else {
  }
  pos = (unsigned long )meye.grab_fbuffer + offset;
  goto ldv_35189;
  ldv_35188:
  {
  page = vmalloc_to_pfn((void const *)pos);
  __constr_expr_0.pgprot = 0x8000000000000027UL;
  tmp___0 = remap_pfn_range(vma, start, page, 4096UL, __constr_expr_0);
  }
  if (tmp___0 != 0) {
    {
    mutex_unlock(& meye.lock);
    }
    return (-11);
  } else {
  }
  start = start + 4096UL;
  pos = pos + 4096UL;
  if (size > 4096UL) {
    size = size - 4096UL;
  } else {
    size = 0UL;
  }
  ldv_35189: ;
  if (size != 0UL) {
    goto ldv_35188;
  } else {
  }
  {
  vma->vm_ops = & meye_vm_ops;
  vma->vm_flags = vma->vm_flags & 0xffffffffffffbfffUL;
  vma->vm_flags = vma->vm_flags | 67371008UL;
  vma->vm_private_data = (void *)(offset / (unsigned long )gbufsize);
  meye_vm_open(vma);
  mutex_unlock(& meye.lock);
  }
  return (0);
}
}
static struct v4l2_file_operations const meye_fops =
     {& __this_module, 0, 0, & meye_poll, 0, & video_ioctl2, 0, 0, & meye_mmap, & meye_open,
    & meye_release};
static struct v4l2_ioctl_ops const meye_ioctl_ops =
     {& vidioc_querycap, 0, 0, & vidioc_enum_fmt_vid_cap, 0, 0, 0, 0, & vidioc_g_fmt_vid_cap,
    0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_s_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    & vidioc_try_fmt_vid_cap, 0, 0, 0, 0, 0, 0, 0, 0, 0, & vidioc_reqbufs, & vidioc_querybuf,
    & vidioc_qbuf, 0, & vidioc_dqbuf, 0, 0, 0, 0, 0, & vidioc_streamon, & vidioc_streamoff,
    0, 0, 0, & vidioc_enum_input, & vidioc_g_input, & vidioc_s_input, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, & v4l2_ctrl_log_status, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, & v4l2_ctrl_subscribe_event, & v4l2_event_unsubscribe, & vidioc_default};
static struct video_device meye_template =
     {{{0, 0}, 0, 0U, 0, 0U, 0U, 0UL, 0U, (unsigned short)0, (unsigned short)0, (unsigned short)0,
     (unsigned short)0, 0, 0, 0, 0, 0, 0, {.alsa = {0U, 0U, 0U}}}, & meye_fops, {0,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  0,
                                                                                  {{0}},
                                                                                  {{{0L},
                                                                                    {0,
                                                                                     0},
                                                                                    0,
                                                                                    {0,
                                                                                     {0,
                                                                                      0},
                                                                                     0,
                                                                                     0,
                                                                                     0UL}},
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
                                                                                   0,
                                                                                   0},
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U},
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
                                                                                  0U,
                                                                                  0U,
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
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
                                                                                  0U,
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
                                                                                 0,
                                                                                 (_Bool)0,
                                                                                 (_Bool)0},
    0, 0, 0, 0, 0, 0, {'m', 'e', 'y', 'e', '\000'}, 0, 0, 0, (unsigned short)0, 0UL,
    0, {{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}, 0, 0ULL, & video_device_release,
    & meye_ioctl_ops, {0UL, 0UL, 0UL}, {0UL, 0UL, 0UL}, 0};
static struct v4l2_ctrl_ops const meye_ctrl_ops = {0, 0, & meye_s_ctrl};
static int meye_suspend(struct pci_dev *pdev , pm_message_t state )
{
  {
  {
  pci_save_state(pdev);
  meye.pm_mchip_mode = meye.mchip_mode;
  mchip_hic_stop();
  mchip_set(4, 0U);
  }
  return (0);
}
}
static int meye_resume(struct pci_dev *pdev )
{
  {
  {
  pci_restore_state(pdev);
  pci_write_config_word((struct pci_dev const *)meye.mchip_dev, 116, 1);
  mchip_delay(84U, 0U);
  mchip_delay(92U, 3U);
  msleep(1U);
  mchip_set(400, 1U);
  msleep(1U);
  mchip_set(0, 5U);
  msleep(1U);
  mchip_set(4, 1024U);
  }
  {
  if ((int )meye.pm_mchip_mode == 8) {
    goto case_8;
  } else {
  }
  if ((int )meye.pm_mchip_mode == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_8:
  {
  mchip_continuous_start();
  }
  goto ldv_35203;
  case_5:
  {
  mchip_cont_compression_start();
  }
  goto ldv_35203;
  switch_break: ;
  }
  ldv_35203: ;
  return (0);
}
}
static int meye_probe(struct pci_dev *pcidev , struct pci_device_id const *ent )
{
  struct v4l2_ctrl_config ctrl_agc ;
  struct v4l2_ctrl_config ctrl_picture ;
  struct v4l2_ctrl_config ctrl_framerate ;
  struct v4l2_device *v4l2_dev ;
  int ret ;
  unsigned long mchip_adr ;
  void *tmp ;
  struct lock_class_key __key ;
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  int tmp___0 ;
  int tmp___1 ;
  struct lock_class_key __key___0 ;
  struct kfifo *__tmp___0 ;
  struct __kfifo *__kfifo___0 ;
  int tmp___2 ;
  int tmp___3 ;
  struct resource *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key _key ;
  int tmp___7 ;
  struct kfifo *__tmp___1 ;
  struct __kfifo *__kfifo___1 ;
  struct kfifo *__tmp___2 ;
  struct __kfifo *__kfifo___2 ;
  {
  ctrl_agc.ops = & meye_ctrl_ops;
  ctrl_agc.id = 9967872U;
  ctrl_agc.name = "AGC";
  ctrl_agc.type = 1;
  ctrl_agc.min = 0;
  ctrl_agc.max = 63;
  ctrl_agc.step = 1U;
  ctrl_agc.def = 48;
  ctrl_agc.flags = 32U;
  ctrl_agc.menu_skip_mask = 0U;
  ctrl_agc.qmenu = 0;
  ctrl_agc.qmenu_int = 0;
  ctrl_agc.is_private = 0U;
  ctrl_picture.ops = & meye_ctrl_ops;
  ctrl_picture.id = 9967873U;
  ctrl_picture.name = "Picture";
  ctrl_picture.type = 1;
  ctrl_picture.min = 0;
  ctrl_picture.max = 63;
  ctrl_picture.step = 1U;
  ctrl_picture.def = 0;
  ctrl_picture.flags = 0U;
  ctrl_picture.menu_skip_mask = 0U;
  ctrl_picture.qmenu = 0;
  ctrl_picture.qmenu_int = 0;
  ctrl_picture.is_private = 0U;
  ctrl_framerate.ops = & meye_ctrl_ops;
  ctrl_framerate.id = 9967874U;
  ctrl_framerate.name = "Framerate";
  ctrl_framerate.type = 1;
  ctrl_framerate.min = 0;
  ctrl_framerate.max = 31;
  ctrl_framerate.step = 1U;
  ctrl_framerate.def = 0;
  ctrl_framerate.flags = 0U;
  ctrl_framerate.menu_skip_mask = 0U;
  ctrl_framerate.qmenu = 0;
  ctrl_framerate.qmenu_int = 0;
  ctrl_framerate.is_private = 0U;
  v4l2_dev = & meye.v4l2_dev;
  ret = -16;
  if ((unsigned long )meye.mchip_dev != (unsigned long )((struct pci_dev *)0)) {
    {
    printk("\vmeye: only one device allowed!\n");
    }
    goto outnotdev;
  } else {
  }
  {
  ret = v4l2_device_register(& pcidev->dev, v4l2_dev);
  }
  if (ret < 0) {
    {
    printk("\v%s: Could not register v4l2_device\n", (char *)(& v4l2_dev->name));
    }
    return (ret);
  } else {
  }
  {
  ret = -12;
  meye.mchip_dev = pcidev;
  meye.vdev = video_device_alloc();
  }
  if ((unsigned long )meye.vdev == (unsigned long )((struct video_device *)0)) {
    {
    printk("\v%s: video_device_alloc() failed!\n", (char *)(& v4l2_dev->name));
    }
    goto outnotdev;
  } else {
  }
  {
  tmp = vmalloc(1048576UL);
  meye.grab_temp = (unsigned char *)tmp;
  }
  if ((unsigned long )meye.grab_temp == (unsigned long )((unsigned char *)0U)) {
    {
    printk("\v%s: grab buffer allocation failed\n", (char *)(& v4l2_dev->name));
    }
    goto outvmalloc;
  } else {
  }
  {
  spinlock_check(& meye.grabq_lock);
  __raw_spin_lock_init(& meye.grabq_lock.__annonCompField19.rlock, "&(&meye.grabq_lock)->rlock",
                       & __key);
  __tmp = & meye.grabq;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  tmp___0 = __kfifo_alloc(__kfifo, 128U, 1UL, 208U);
  tmp___1 = __kfifo_int_must_check_helper(tmp___0);
  }
  if (tmp___1 != 0) {
    {
    printk("\v%s: fifo allocation failed\n", (char *)(& v4l2_dev->name));
    }
    goto outkfifoalloc1;
  } else {
  }
  {
  spinlock_check(& meye.doneq_lock);
  __raw_spin_lock_init(& meye.doneq_lock.__annonCompField19.rlock, "&(&meye.doneq_lock)->rlock",
                       & __key___0);
  __tmp___0 = & meye.doneq;
  __kfifo___0 = & __tmp___0->__annonCompField81.kfifo;
  tmp___2 = __kfifo_alloc(__kfifo___0, 128U, 1UL, 208U);
  tmp___3 = __kfifo_int_must_check_helper(tmp___2);
  }
  if (tmp___3 != 0) {
    {
    printk("\v%s: fifo allocation failed\n", (char *)(& v4l2_dev->name));
    }
    goto outkfifoalloc2;
  } else {
  }
  {
  memcpy((void *)meye.vdev, (void const *)(& meye_template), 1808UL);
  (meye.vdev)->v4l2_dev = & meye.v4l2_dev;
  ret = -5;
  ret = sony_pic_camera_command(2, 1);
  }
  if (ret != 0) {
    {
    printk("\v%s: meye: unable to power on the camera\n", (char *)(& v4l2_dev->name));
    printk("\v%s: meye: did you enable the camera in sonypi using the module options ?\n",
           (char *)(& v4l2_dev->name));
    }
    goto outsonypienable;
  } else {
  }
  {
  ret = pci_enable_device(meye.mchip_dev);
  }
  if (ret != 0) {
    {
    printk("\v%s: meye: pci_enable_device failed\n", (char *)(& v4l2_dev->name));
    }
    goto outenabledev;
  } else {
  }
  mchip_adr = (unsigned long )(meye.mchip_dev)->resource[0].start;
  if (mchip_adr == 0UL) {
    {
    printk("\v%s: meye: mchip has no device base address\n", (char *)(& v4l2_dev->name));
    }
    goto outregions;
  } else {
  }
  {
  tmp___4 = __request_region(& iomem_resource, (meye.mchip_dev)->resource[0].start,
                             (meye.mchip_dev)->resource[0].start != 0ULL || (meye.mchip_dev)->resource[0].end != (meye.mchip_dev)->resource[0].start ? ((meye.mchip_dev)->resource[0].end - (meye.mchip_dev)->resource[0].start) + 1ULL : 0ULL,
                             "meye", 0);
  }
  if ((unsigned long )tmp___4 == (unsigned long )((struct resource *)0)) {
    {
    printk("\v%s: meye: request_mem_region failed\n", (char *)(& v4l2_dev->name));
    }
    goto outregions;
  } else {
  }
  {
  tmp___5 = ioremap((resource_size_t )mchip_adr, 512UL);
  meye.mchip_mmregs = (unsigned char *)tmp___5;
  }
  if ((unsigned long )meye.mchip_mmregs == (unsigned long )((unsigned char *)0U)) {
    {
    printk("\v%s: meye: ioremap failed\n", (char *)(& v4l2_dev->name));
    }
    goto outremap;
  } else {
  }
  {
  meye.mchip_irq = (u8 )pcidev->irq;
  tmp___6 = ldv_request_irq_64((unsigned int )meye.mchip_irq, & meye_irq, 128UL, "meye",
                               (void *)(& meye_irq));
  }
  if (tmp___6 != 0) {
    {
    printk("\v%s: request_irq failed\n", (char *)(& v4l2_dev->name));
    }
    goto outreqirq;
  } else {
  }
  {
  pci_write_config_byte((struct pci_dev const *)meye.mchip_dev, 12, 8);
  pci_write_config_byte((struct pci_dev const *)meye.mchip_dev, 13, 64);
  pci_set_master(meye.mchip_dev);
  pci_write_config_word((struct pci_dev const *)meye.mchip_dev, 116, 1);
  mchip_delay(84U, 0U);
  mchip_delay(92U, 3U);
  msleep(1U);
  mchip_set(400, 1U);
  msleep(1U);
  mchip_set(0, 5U);
  msleep(1U);
  mchip_set(4, 1024U);
  __mutex_init(& meye.lock, "&meye.lock", & __key___1);
  __init_waitqueue_head(& meye.proc_list, "&meye.proc_list", & __key___2);
  v4l2_ctrl_handler_init_class(& meye.hdl, 3U, & _key, "meye:1729:(&meye.hdl)->_lock");
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 9963776U, 0, 63, 1U, 32);
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 9963779U, 0, 63, 1U, 32);
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 9963777U, 0, 63, 1U, 32);
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 9963778U, 0, 63, 1U, 32);
  v4l2_ctrl_new_custom(& meye.hdl, & ctrl_agc, (void *)0);
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 9963803U, 0, 63, 1U, 32);
  v4l2_ctrl_new_custom(& meye.hdl, & ctrl_picture, (void *)0);
  v4l2_ctrl_new_std(& meye.hdl, & meye_ctrl_ops, 10291459U, 0, 10, 1U, 8);
  v4l2_ctrl_new_custom(& meye.hdl, & ctrl_framerate, (void *)0);
  }
  if (meye.hdl.error != 0) {
    {
    printk("\v%s: couldn\'t register controls\n", (char *)(& v4l2_dev->name));
    }
    goto outvideoreg;
  } else {
  }
  {
  v4l2_ctrl_handler_setup(& meye.hdl);
  (meye.vdev)->ctrl_handler = & meye.hdl;
  set_bit(2L, (unsigned long volatile *)(& (meye.vdev)->flags));
  tmp___7 = video_register_device(meye.vdev, 0, video_nr);
  }
  if (tmp___7 < 0) {
    {
    printk("\v%s: video_register_device failed\n", (char *)(& v4l2_dev->name));
    }
    goto outvideoreg;
  } else {
  }
  {
  printk("\016%s: Motion Eye Camera Driver v%s.\n", (char *)(& v4l2_dev->name), (char *)"1.14");
  printk("\016%s: mchip KL5A72002 rev. %d, base %lx, irq %d\n", (char *)(& v4l2_dev->name),
         (int )(meye.mchip_dev)->revision, mchip_adr, (int )meye.mchip_irq);
  }
  return (0);
  outvideoreg:
  {
  v4l2_ctrl_handler_free(& meye.hdl);
  ldv_free_irq_65((unsigned int )meye.mchip_irq, (void *)(& meye_irq));
  }
  outreqirq:
  {
  iounmap((void volatile *)meye.mchip_mmregs);
  }
  outremap:
  {
  __release_region(& iomem_resource, (meye.mchip_dev)->resource[0].start, (meye.mchip_dev)->resource[0].start != 0ULL || (meye.mchip_dev)->resource[0].end != (meye.mchip_dev)->resource[0].start ? ((meye.mchip_dev)->resource[0].end - (meye.mchip_dev)->resource[0].start) + 1ULL : 0ULL);
  }
  outregions:
  {
  pci_disable_device(meye.mchip_dev);
  }
  outenabledev:
  {
  sony_pic_camera_command(2, 0);
  }
  outsonypienable:
  {
  __tmp___1 = & meye.doneq;
  __kfifo___1 = & __tmp___1->__annonCompField81.kfifo;
  __kfifo_free(__kfifo___1);
  }
  outkfifoalloc2:
  {
  __tmp___2 = & meye.grabq;
  __kfifo___2 = & __tmp___2->__annonCompField81.kfifo;
  __kfifo_free(__kfifo___2);
  }
  outkfifoalloc1:
  {
  vfree((void const *)meye.grab_temp);
  }
  outvmalloc:
  {
  video_device_release(meye.vdev);
  }
  outnotdev: ;
  return (ret);
}
}
static void meye_remove(struct pci_dev *pcidev )
{
  struct kfifo *__tmp ;
  struct __kfifo *__kfifo ;
  struct kfifo *__tmp___0 ;
  struct __kfifo *__kfifo___0 ;
  {
  {
  video_unregister_device(meye.vdev);
  mchip_hic_stop();
  mchip_dma_free();
  mchip_set(4, 0U);
  ldv_free_irq_66((unsigned int )meye.mchip_irq, (void *)(& meye_irq));
  iounmap((void volatile *)meye.mchip_mmregs);
  __release_region(& iomem_resource, (meye.mchip_dev)->resource[0].start, (meye.mchip_dev)->resource[0].start != 0ULL || (meye.mchip_dev)->resource[0].end != (meye.mchip_dev)->resource[0].start ? ((meye.mchip_dev)->resource[0].end - (meye.mchip_dev)->resource[0].start) + 1ULL : 0ULL);
  pci_disable_device(meye.mchip_dev);
  sony_pic_camera_command(2, 0);
  __tmp = & meye.doneq;
  __kfifo = & __tmp->__annonCompField81.kfifo;
  __kfifo_free(__kfifo);
  __tmp___0 = & meye.grabq;
  __kfifo___0 = & __tmp___0->__annonCompField81.kfifo;
  __kfifo_free(__kfifo___0);
  vfree((void const *)meye.grab_temp);
  }
  if ((unsigned long )meye.grab_fbuffer != (unsigned long )((unsigned char *)0U)) {
    {
    rvfree((void *)meye.grab_fbuffer, (unsigned long )(gbuffers * gbufsize));
    meye.grab_fbuffer = (unsigned char *)0U;
    }
  } else {
  }
  {
  printk("\016meye: removed\n");
  }
  return;
}
}
static struct pci_device_id meye_pci_tbl[2U] = { {4971U, 65281U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver meye_driver =
     {{0, 0}, "meye", (struct pci_device_id const *)(& meye_pci_tbl), & meye_probe,
    & meye_remove, & meye_suspend, 0, 0, & meye_resume, 0, 0, 0, {0, 0, 0, 0, (_Bool)0,
                                                                  0, 0, 0, 0, 0, 0,
                                                                  0, 0, 0, 0}, {{{{{{0U}},
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
                                                                                 0}}};
static int meye_init(void)
{
  int _max1 ;
  int _max2 ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  {
  _max1 = 2;
  _min1 = (int )gbuffers;
  _min2 = 32;
  _max2 = _min1 < _min2 ? _min1 : _min2;
  gbuffers = (unsigned int )(_max1 > _max2 ? _max1 : _max2);
  if (gbufsize > 614400U) {
    gbufsize = 614400U;
  } else {
  }
  {
  gbufsize = (gbufsize + 4095U) & 4294963200U;
  printk("\016meye: using %d buffers with %dk (%dk total) for capture\n", gbuffers,
         gbufsize / 1024U, (gbuffers * gbufsize) / 1024U);
  tmp = ldv___pci_register_driver_67(& meye_driver, & __this_module, "meye");
  }
  return (tmp);
}
}
static void meye_exit(void)
{
  {
  {
  ldv_pci_unregister_driver_68(& meye_driver);
  }
  return;
}
}
void ldv_EMGentry_exit_meye_exit_9_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_meye_init_9_13(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
void ldv_allocate_external_0(void) ;
void ldv_dispatch_deregister_7_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_7_9_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_8_9_5(void) ;
void ldv_dispatch_deregister_io_instance_9_9_6(void) ;
void ldv_dispatch_irq_deregister_5_1(int arg0 ) ;
void ldv_dispatch_irq_register_6_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_8_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_resourceless_instance_7_9_7(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_8_9_8(void) ;
void ldv_dispatch_register_io_instance_9_9_9(void) ;
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_3(void (*arg0)(struct vm_area_struct * ) ,
                                                  struct vm_area_struct *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct vm_area_struct * ) ,
                                                  struct vm_area_struct *arg1 ) ;
void ldv_entry_EMGentry_9(void *arg0 ) ;
int main(void) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
void ldv_initialize_external_data(void) ;
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_0(void *arg0 ) ;
void ldv_io_instance_callback_4_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 ) ;
void ldv_io_instance_callback_4_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 ) ;
void ldv_io_instance_callback_4_19(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 ) ;
void ldv_io_instance_callback_4_22(long (*arg0)(struct file * , void * , _Bool ,
                                                unsigned int , void * ) , struct file *arg1 ,
                                   void *arg2 , _Bool arg3 , unsigned int arg4 , void *arg5 ) ;
void ldv_io_instance_callback_4_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_4_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 ) ;
void ldv_io_instance_callback_4_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 ) ;
void ldv_io_instance_callback_4_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_4_29(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 ) ;
void ldv_io_instance_callback_4_32(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 ) ;
void ldv_io_instance_callback_4_33(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_4_34(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 ) ;
void ldv_io_instance_callback_4_35(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 ) ;
void ldv_io_instance_callback_4_36(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 ) ;
void ldv_io_instance_callback_4_37(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_4_38(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 ) ;
void ldv_io_instance_callback_4_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 ) ;
void ldv_io_instance_callback_4_41(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_4_42(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 ) ;
void ldv_io_instance_callback_4_43(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
void ldv_io_instance_callback_4_44(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 ) ;
void ldv_io_instance_callback_4_45(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 ) ;
int ldv_io_instance_probe_4_11(int (*arg0)(struct file * ) , struct file *arg1 ) ;
void ldv_io_instance_release_4_2(int (*arg0)(struct file * ) , struct file *arg1 ) ;
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_1(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 ) ;
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_3(void *arg0 ) ;
int ldv_switch_0(void) ;
int ldv_switch_1(void) ;
int ldv_switch_2(void) ;
void ldv_switch_automaton_state_0_1(void) ;
void ldv_switch_automaton_state_0_6(void) ;
void ldv_switch_automaton_state_1_11(void) ;
void ldv_switch_automaton_state_1_20(void) ;
void ldv_switch_automaton_state_2_1(void) ;
void ldv_switch_automaton_state_2_5(void) ;
void ldv_switch_automaton_state_3_1(void) ;
void ldv_switch_automaton_state_3_5(void) ;
void ldv_switch_automaton_state_4_14(void) ;
void ldv_switch_automaton_state_4_5(void) ;
void ldv_v4l2_file_operations_io_instance_4(void *arg0 ) ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) ;
void *ldv_0_data_data ;
int ldv_0_line_line ;
enum irqreturn ldv_0_ret_val_default ;
enum irqreturn (*ldv_0_thread_thread)(int , void * ) ;
struct pci_driver *ldv_1_container_pci_driver ;
struct pci_dev *ldv_1_resource_dev ;
struct pm_message ldv_1_resource_pm_message ;
struct pci_device_id *ldv_1_resource_struct_pci_device_id_ptr ;
int ldv_1_ret_default ;
int (*ldv_2_callback_s_ctrl)(struct v4l2_ctrl * ) ;
struct v4l2_ctrl *ldv_2_container_struct_v4l2_ctrl_ptr ;
void (*ldv_3_callback_close)(struct vm_area_struct * ) ;
void (*ldv_3_callback_open)(struct vm_area_struct * ) ;
struct vm_area_struct *ldv_3_container_struct_vm_area_struct_ptr ;
void (*ldv_4_callback_func_1_ptr)(struct video_device * ) ;
int (*ldv_4_callback_mmap)(struct file * , struct vm_area_struct * ) ;
unsigned int (*ldv_4_callback_poll)(struct file * , struct poll_table_struct * ) ;
long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
long (*ldv_4_callback_vidioc_default)(struct file * , void * , _Bool , unsigned int ,
                                      void * ) ;
int (*ldv_4_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_4_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) ;
int (*ldv_4_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) ;
int (*ldv_4_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_4_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) ;
int (*ldv_4_callback_vidioc_log_status)(struct file * , void * ) ;
int (*ldv_4_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_4_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) ;
int (*ldv_4_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) ;
int (*ldv_4_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) ;
int (*ldv_4_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_4_callback_vidioc_s_input)(struct file * , void * , unsigned int ) ;
int (*ldv_4_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_4_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) ;
int (*ldv_4_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
int (*ldv_4_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) ;
int (*ldv_4_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) ;
struct v4l2_file_operations *ldv_4_container_v4l2_file_operations ;
unsigned int ldv_4_ldv_param_19_1_default ;
unsigned long ldv_4_ldv_param_19_2_default ;
_Bool ldv_4_ldv_param_22_2_default ;
unsigned int ldv_4_ldv_param_22_3_default ;
unsigned int *ldv_4_ldv_param_29_2_default ;
unsigned int ldv_4_ldv_param_38_2_default ;
enum v4l2_buf_type ldv_4_resource_enum_v4l2_buf_type ;
struct file *ldv_4_resource_file ;
struct poll_table_struct *ldv_4_resource_struct_poll_table_struct_ptr ;
struct v4l2_buffer *ldv_4_resource_struct_v4l2_buffer_ptr ;
struct v4l2_capability *ldv_4_resource_struct_v4l2_capability_ptr ;
struct v4l2_event_subscription *ldv_4_resource_struct_v4l2_event_subscription_ptr ;
struct v4l2_fh *ldv_4_resource_struct_v4l2_fh_ptr ;
struct v4l2_fmtdesc *ldv_4_resource_struct_v4l2_fmtdesc_ptr ;
struct v4l2_format *ldv_4_resource_struct_v4l2_format_ptr ;
struct v4l2_input *ldv_4_resource_struct_v4l2_input_ptr ;
struct v4l2_requestbuffers *ldv_4_resource_struct_v4l2_requestbuffers_ptr ;
struct video_device *ldv_4_resource_struct_video_device ;
struct vm_area_struct *ldv_4_resource_struct_vm_area_struct_ptr ;
int ldv_4_ret_default ;
void (*ldv_9_exit_meye_exit_default)(void) ;
int (*ldv_9_init_meye_init_default)(void) ;
int ldv_9_ret_default ;
int ldv_statevar_0 ;
int ldv_statevar_1 ;
int ldv_statevar_2 ;
int ldv_statevar_3 ;
int ldv_statevar_4 ;
int ldv_statevar_9 ;
enum irqreturn (*ldv_0_callback_handler)(int , void * ) = & meye_irq;
int (*ldv_2_callback_s_ctrl)(struct v4l2_ctrl * ) = & meye_s_ctrl;
void (*ldv_3_callback_close)(struct vm_area_struct * ) = & meye_vm_close;
void (*ldv_3_callback_open)(struct vm_area_struct * ) = & meye_vm_open;
void (*ldv_4_callback_func_1_ptr)(struct video_device * ) = & video_device_release;
int (*ldv_4_callback_mmap)(struct file * , struct vm_area_struct * ) = & meye_mmap;
unsigned int (*ldv_4_callback_poll)(struct file * , struct poll_table_struct * ) = & meye_poll;
long (*ldv_4_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) = & video_ioctl2;
long (*ldv_4_callback_vidioc_default)(struct file * , void * , _Bool , unsigned int ,
                                      void * ) = & vidioc_default;
int (*ldv_4_callback_vidioc_dqbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_dqbuf;
int (*ldv_4_callback_vidioc_enum_fmt_vid_cap)(struct file * , void * , struct v4l2_fmtdesc * ) = & vidioc_enum_fmt_vid_cap;
int (*ldv_4_callback_vidioc_enum_input)(struct file * , void * , struct v4l2_input * ) = & vidioc_enum_input;
int (*ldv_4_callback_vidioc_g_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_g_fmt_vid_cap;
int (*ldv_4_callback_vidioc_g_input)(struct file * , void * , unsigned int * ) = & vidioc_g_input;
int (*ldv_4_callback_vidioc_log_status)(struct file * , void * ) = & v4l2_ctrl_log_status;
int (*ldv_4_callback_vidioc_qbuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_qbuf;
int (*ldv_4_callback_vidioc_querybuf)(struct file * , void * , struct v4l2_buffer * ) = & vidioc_querybuf;
int (*ldv_4_callback_vidioc_querycap)(struct file * , void * , struct v4l2_capability * ) = & vidioc_querycap;
int (*ldv_4_callback_vidioc_reqbufs)(struct file * , void * , struct v4l2_requestbuffers * ) = & vidioc_reqbufs;
int (*ldv_4_callback_vidioc_s_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_s_fmt_vid_cap;
int (*ldv_4_callback_vidioc_s_input)(struct file * , void * , unsigned int ) = & vidioc_s_input;
int (*ldv_4_callback_vidioc_streamoff)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamoff;
int (*ldv_4_callback_vidioc_streamon)(struct file * , void * , enum v4l2_buf_type ) = & vidioc_streamon;
int (*ldv_4_callback_vidioc_subscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_ctrl_subscribe_event);
int (*ldv_4_callback_vidioc_try_fmt_vid_cap)(struct file * , void * , struct v4l2_format * ) = & vidioc_try_fmt_vid_cap;
int (*ldv_4_callback_vidioc_unsubscribe_event)(struct v4l2_fh * , struct v4l2_event_subscription * ) = (int (*)(struct v4l2_fh * ,
            struct v4l2_event_subscription * ))(& v4l2_event_unsubscribe);
void (*ldv_9_exit_meye_exit_default)(void) = & meye_exit;
int (*ldv_9_init_meye_init_default)(void) = & meye_init;
void ldv_EMGentry_exit_meye_exit_9_2(void (*arg0)(void) )
{
  {
  {
  meye_exit();
  }
  return;
}
}
int ldv_EMGentry_init_meye_init_9_13(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = meye_init();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_8_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_8_pci_driver_pci_driver = arg1;
    ldv_assume(ldv_statevar_1 == 20);
    ldv_dispatch_register_8_2(ldv_8_pci_driver_pci_driver);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void *ldv_malloc(size_t size ) ;
void ldv_allocate_external_0(void)
{
  {
  {
  ldv_0_thread_thread = (enum irqreturn (*)(int , void * ))0;
  ldv_1_resource_dev = ldv_malloc(sizeof(struct pci_dev));
  ldv_2_container_struct_v4l2_ctrl_ptr = ldv_malloc(sizeof(struct v4l2_ctrl));
  ldv_3_container_struct_vm_area_struct_ptr = ldv_malloc(sizeof(struct vm_area_struct));
  ldv_4_ldv_param_29_2_default = ldv_malloc(sizeof(unsigned int));
  ldv_4_resource_file = ldv_malloc(sizeof(struct file));
  ldv_4_resource_struct_poll_table_struct_ptr = ldv_malloc(sizeof(struct poll_table_struct));
  ldv_4_resource_struct_v4l2_buffer_ptr = ldv_malloc(sizeof(struct v4l2_buffer));
  ldv_4_resource_struct_v4l2_capability_ptr = ldv_malloc(sizeof(struct v4l2_capability));
  ldv_4_resource_struct_v4l2_event_subscription_ptr = ldv_malloc(sizeof(struct v4l2_event_subscription));
  ldv_4_resource_struct_v4l2_fh_ptr = ldv_malloc(sizeof(struct v4l2_fh));
  ldv_4_resource_struct_v4l2_fmtdesc_ptr = ldv_malloc(sizeof(struct v4l2_fmtdesc));
  ldv_4_resource_struct_v4l2_format_ptr = ldv_malloc(sizeof(struct v4l2_format));
  ldv_4_resource_struct_v4l2_input_ptr = ldv_malloc(sizeof(struct v4l2_input));
  ldv_4_resource_struct_v4l2_requestbuffers_ptr = ldv_malloc(sizeof(struct v4l2_requestbuffers));
  ldv_4_resource_struct_vm_area_struct_ptr = ldv_malloc(sizeof(struct vm_area_struct));
  }
  return;
}
}
void ldv_dispatch_deregister_7_1(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_11();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_7_9_4(void)
{
  {
  {
  ldv_switch_automaton_state_2_1();
  }
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_8_9_5(void)
{
  {
  {
  ldv_switch_automaton_state_3_1();
  }
  return;
}
}
void ldv_dispatch_deregister_io_instance_9_9_6(void)
{
  {
  {
  ldv_switch_automaton_state_4_5();
  }
  return;
}
}
void ldv_dispatch_irq_deregister_5_1(int arg0 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_switch_automaton_state_0_1();
  }
  return;
}
}
void ldv_dispatch_irq_register_6_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                   enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  {
  {
  ldv_0_line_line = arg0;
  ldv_0_callback_handler = arg1;
  ldv_0_thread_thread = arg2;
  ldv_0_data_data = arg3;
  ldv_switch_automaton_state_0_6();
  }
  return;
}
}
void ldv_dispatch_register_8_2(struct pci_driver *arg0 )
{
  {
  {
  ldv_1_container_pci_driver = arg0;
  ldv_switch_automaton_state_1_20();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_7_9_7(void)
{
  {
  {
  ldv_switch_automaton_state_2_5();
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_8_9_8(void)
{
  {
  {
  ldv_switch_automaton_state_3_5();
  }
  return;
}
}
void ldv_dispatch_register_io_instance_9_9_9(void)
{
  {
  {
  ldv_switch_automaton_state_4_14();
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_2_3(int (*arg0)(struct v4l2_ctrl * ) ,
                                                  struct v4l2_ctrl *arg1 )
{
  {
  {
  meye_s_ctrl(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(void (*arg0)(struct vm_area_struct * ) ,
                                                  struct vm_area_struct *arg1 )
{
  {
  {
  meye_vm_close(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_7(void (*arg0)(struct vm_area_struct * ) ,
                                                  struct vm_area_struct *arg1 )
{
  {
  {
  meye_vm_open(arg1);
  }
  return;
}
}
void ldv_entry_EMGentry_9(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_9 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_9 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_9 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_9 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_9 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_9 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_9 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_9 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_9 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_9 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_9 == 13) {
    goto case_13;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_meye_exit_9_2(ldv_9_exit_meye_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 13;
  }
  goto ldv_35916;
  case_3:
  {
  ldv_assume(ldv_statevar_1 == 12);
  ldv_EMGentry_exit_meye_exit_9_2(ldv_9_exit_meye_exit_default);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 13;
  }
  goto ldv_35916;
  case_4:
  {
  ldv_assume(ldv_statevar_2 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_7_9_4();
  ldv_statevar_9 = 2;
  }
  goto ldv_35916;
  case_5:
  {
  ldv_assume(ldv_statevar_3 == 1);
  ldv_dispatch_deregister_dummy_resourceless_instance_8_9_5();
  ldv_statevar_9 = 4;
  }
  goto ldv_35916;
  case_6:
  {
  ldv_assume(ldv_statevar_4 == 6);
  ldv_dispatch_deregister_io_instance_9_9_6();
  ldv_statevar_9 = 5;
  }
  goto ldv_35916;
  case_7:
  {
  ldv_assume(ldv_statevar_2 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_7_9_7();
  ldv_statevar_9 = 6;
  }
  goto ldv_35916;
  case_8:
  {
  ldv_assume(ldv_statevar_3 == 5);
  ldv_dispatch_register_dummy_resourceless_instance_8_9_8();
  ldv_statevar_9 = 7;
  }
  goto ldv_35916;
  case_9:
  {
  ldv_assume(ldv_statevar_4 == 14);
  ldv_dispatch_register_io_instance_9_9_9();
  ldv_statevar_9 = 8;
  }
  goto ldv_35916;
  case_10:
  {
  ldv_assume(ldv_9_ret_default == 0);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_9 = 3;
  } else {
    ldv_statevar_9 = 9;
  }
  goto ldv_35916;
  case_12:
  {
  ldv_assume(ldv_9_ret_default != 0);
  ldv_check_final_state();
  ldv_stop();
  ldv_statevar_9 = 13;
  }
  goto ldv_35916;
  case_13:
  {
  ldv_assume(ldv_statevar_1 == 20);
  ldv_9_ret_default = ldv_EMGentry_init_meye_init_9_13(ldv_9_init_meye_init_default);
  ldv_9_ret_default = ldv_post_init(ldv_9_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_9 = 10;
  } else {
    ldv_statevar_9 = 12;
  }
  goto ldv_35916;
  switch_default: ;
  switch_break: ;
  }
  ldv_35916: ;
  return;
}
}
int main(void)
{
  int tmp ;
  {
  {
  ldv_initialize();
  ldv_initialize_external_data();
  ldv_statevar_9 = 13;
  ldv_statevar_0 = 6;
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  ldv_statevar_2 = 5;
  ldv_statevar_3 = 5;
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  }
  ldv_35938:
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_entry_EMGentry_9((void *)0);
  }
  goto ldv_35931;
  case_1:
  {
  ldv_interrupt_interrupt_instance_0((void *)0);
  }
  goto ldv_35931;
  case_2:
  {
  ldv_pci_pci_instance_1((void *)0);
  }
  goto ldv_35931;
  case_3:
  {
  ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2((void *)0);
  }
  goto ldv_35931;
  case_4:
  {
  ldv_struct_vm_operations_struct_dummy_resourceless_instance_3((void *)0);
  }
  goto ldv_35931;
  case_5:
  {
  ldv_v4l2_file_operations_io_instance_4((void *)0);
  }
  goto ldv_35931;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_35931: ;
  goto ldv_35938;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_5_line_line ;
  {
  {
  ldv_5_line_line = arg1;
  ldv_assume(ldv_statevar_0 == 2);
  ldv_dispatch_irq_deregister_5_1(ldv_5_line_line);
  }
  return;
  return;
}
}
void ldv_initialize_external_data(void)
{
  {
  {
  ldv_allocate_external_0();
  }
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_0_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  irqreturn_t tmp ;
  {
  {
  tmp = meye_irq(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_0_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_0(void *arg0 )
{
  int tmp ;
  {
  {
  if (ldv_statevar_0 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_0 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_0 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_0 == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_2:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default != 2U);
  ldv_statevar_0 = 6;
  }
  goto ldv_35965;
  case_4:
  {
  ldv_assume((unsigned int )ldv_0_ret_val_default == 2U);
  }
  if ((unsigned long )ldv_0_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                  void * ))0)) {
    {
    ldv_interrupt_instance_thread_0_3(ldv_0_thread_thread, ldv_0_line_line, ldv_0_data_data);
    }
  } else {
  }
  ldv_statevar_0 = 6;
  goto ldv_35965;
  case_5:
  {
  ldv_switch_to_interrupt_context();
  ldv_0_ret_val_default = ldv_interrupt_instance_handler_0_5(ldv_0_callback_handler,
                                                             ldv_0_line_line, ldv_0_data_data);
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_0 = 2;
  } else {
    ldv_statevar_0 = 4;
  }
  goto ldv_35965;
  case_6: ;
  goto ldv_35965;
  switch_default: ;
  switch_break: ;
  }
  ldv_35965: ;
  return;
}
}
void ldv_io_instance_callback_4_17(int (*arg0)(struct file * , struct vm_area_struct * ) ,
                                   struct file *arg1 , struct vm_area_struct *arg2 )
{
  {
  {
  meye_mmap(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_18(unsigned int (*arg0)(struct file * , struct poll_table_struct * ) ,
                                   struct file *arg1 , struct poll_table_struct *arg2 )
{
  {
  {
  meye_poll(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_19(long (*arg0)(struct file * , unsigned int , unsigned long ) ,
                                   struct file *arg1 , unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  video_ioctl2(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_22(long (*arg0)(struct file * , void * , _Bool ,
                                                unsigned int , void * ) , struct file *arg1 ,
                                   void *arg2 , _Bool arg3 , unsigned int arg4 , void *arg5 )
{
  {
  {
  vidioc_default(arg1, arg2, (int )arg3, arg4, arg5);
  }
  return;
}
}
void ldv_io_instance_callback_4_25(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_dqbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_26(int (*arg0)(struct file * , void * , struct v4l2_fmtdesc * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_fmtdesc *arg3 )
{
  {
  {
  vidioc_enum_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_27(int (*arg0)(struct file * , void * , struct v4l2_input * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_input *arg3 )
{
  {
  {
  vidioc_enum_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_28(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_g_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_29(int (*arg0)(struct file * , void * , unsigned int * ) ,
                                   struct file *arg1 , void *arg2 , unsigned int *arg3 )
{
  {
  {
  vidioc_g_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_32(int (*arg0)(struct file * , void * ) , struct file *arg1 ,
                                   void *arg2 )
{
  {
  {
  v4l2_ctrl_log_status(arg1, arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_33(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_qbuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_34(int (*arg0)(struct file * , void * , struct v4l2_buffer * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_buffer *arg3 )
{
  {
  {
  vidioc_querybuf(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_35(int (*arg0)(struct file * , void * , struct v4l2_capability * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_capability *arg3 )
{
  {
  {
  vidioc_querycap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_36(int (*arg0)(struct file * , void * , struct v4l2_requestbuffers * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_requestbuffers *arg3 )
{
  {
  {
  vidioc_reqbufs(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_37(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_s_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_38(int (*arg0)(struct file * , void * , unsigned int ) ,
                                   struct file *arg1 , void *arg2 , unsigned int arg3 )
{
  {
  {
  vidioc_s_input(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_4(void (*arg0)(struct video_device * ) , struct video_device *arg1 )
{
  {
  {
  video_device_release(arg1);
  }
  return;
}
}
void ldv_io_instance_callback_4_41(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamoff(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_42(int (*arg0)(struct file * , void * , enum v4l2_buf_type ) ,
                                   struct file *arg1 , void *arg2 , enum v4l2_buf_type arg3 )
{
  {
  {
  vidioc_streamon(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_43(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_ctrl_subscribe_event(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
void ldv_io_instance_callback_4_44(int (*arg0)(struct file * , void * , struct v4l2_format * ) ,
                                   struct file *arg1 , void *arg2 , struct v4l2_format *arg3 )
{
  {
  {
  vidioc_try_fmt_vid_cap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_io_instance_callback_4_45(int (*arg0)(struct v4l2_fh * , struct v4l2_event_subscription * ) ,
                                   struct v4l2_fh *arg1 , struct v4l2_event_subscription *arg2 )
{
  {
  {
  v4l2_event_unsubscribe(arg1, (struct v4l2_event_subscription const *)arg2);
  }
  return;
}
}
int ldv_io_instance_probe_4_11(int (*arg0)(struct file * ) , struct file *arg1 )
{
  int tmp ;
  {
  {
  tmp = meye_open(arg1);
  }
  return (tmp);
}
}
void ldv_io_instance_release_4_2(int (*arg0)(struct file * ) , struct file *arg1 )
{
  {
  {
  meye_release(arg1);
  }
  return;
}
}
int ldv_pci_instance_probe_1_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = meye_probe(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_1_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  meye_remove(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_1_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  meye_resume(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_1_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_1_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_1_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = meye_suspend(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_pci_instance_suspend_late_1_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_pci_pci_instance_1(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  {
  if (ldv_statevar_1 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_1 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_1 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_1 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_1 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_1 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_1 == 7) {
    goto case_7;
  } else {
  }
  if (ldv_statevar_1 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_1 == 9) {
    goto case_9;
  } else {
  }
  if (ldv_statevar_1 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_1 == 12) {
    goto case_12;
  } else {
  }
  if (ldv_statevar_1 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_1 == 16) {
    goto case_16;
  } else {
  }
  if (ldv_statevar_1 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_1 == 19) {
    goto case_19;
  } else {
  }
  if (ldv_statevar_1 == 20) {
    goto case_20;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_36213;
  case_2:
  {
  ldv_assume(ldv_statevar_0 == 2);
  ldv_pci_instance_release_1_2(ldv_1_container_pci_driver->remove, ldv_1_resource_dev);
  ldv_statevar_1 = 1;
  }
  goto ldv_36213;
  case_3: ;
  if ((unsigned long )ldv_1_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_1_3(ldv_1_container_pci_driver->shutdown, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 2;
  goto ldv_36213;
  case_4:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_36213;
  case_5:
  {
  ldv_pci_instance_resume_1_5(ldv_1_container_pci_driver->resume, ldv_1_resource_dev);
  ldv_statevar_1 = 4;
  }
  goto ldv_36213;
  case_6: ;
  if ((unsigned long )ldv_1_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_1_6(ldv_1_container_pci_driver->resume_early, ldv_1_resource_dev);
    }
  } else {
  }
  ldv_statevar_1 = 5;
  goto ldv_36213;
  case_7: ;
  if ((unsigned long )ldv_1_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_1_ret_default = ldv_pci_instance_suspend_late_1_7(ldv_1_container_pci_driver->suspend_late,
                                                          ldv_1_resource_dev, ldv_1_resource_pm_message);
    }
  } else {
  }
  {
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 6;
  }
  goto ldv_36213;
  case_8:
  {
  ldv_1_ret_default = ldv_pci_instance_suspend_1_8(ldv_1_container_pci_driver->suspend,
                                                   ldv_1_resource_dev, ldv_1_resource_pm_message);
  ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
  ldv_statevar_1 = 7;
  }
  goto ldv_36213;
  case_9:
  {
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_36213;
  case_10:
  ldv_statevar_1 = 9;
  goto ldv_36213;
  case_12:
  {
  ldv_free((void *)ldv_1_resource_dev);
  ldv_free((void *)ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  }
  goto ldv_36213;
  case_14:
  {
  ldv_assume(ldv_1_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_36213;
  case_16:
  {
  ldv_assume(ldv_1_ret_default == 0);
  ldv_statevar_1 = ldv_switch_0();
  }
  goto ldv_36213;
  case_17:
  {
  ldv_assume(ldv_statevar_0 == 6 || ldv_statevar_0 == 2);
  ldv_pre_probe();
  ldv_1_ret_default = ldv_pci_instance_probe_1_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_1_container_pci_driver->probe,
                                                  ldv_1_resource_dev, ldv_1_resource_struct_pci_device_id_ptr);
  ldv_1_ret_default = ldv_post_probe(ldv_1_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_1 = 14;
  } else {
    ldv_statevar_1 = 16;
  }
  goto ldv_36213;
  case_19:
  {
  tmp___2 = ldv_xmalloc(2936UL);
  ldv_1_resource_dev = (struct pci_dev *)tmp___2;
  tmp___3 = ldv_xmalloc(32UL);
  ldv_1_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___3;
  tmp___4 = ldv_undef_int();
  }
  if (tmp___4 != 0) {
    ldv_statevar_1 = 12;
  } else {
    ldv_statevar_1 = 17;
  }
  goto ldv_36213;
  case_20: ;
  goto ldv_36213;
  switch_default: ;
  switch_break: ;
  }
  ldv_36213: ;
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_7_pci_driver_pci_driver ;
  {
  {
  ldv_7_pci_driver_pci_driver = arg1;
  ldv_assume(ldv_statevar_1 == 12);
  ldv_dispatch_deregister_7_1(ldv_7_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_6_callback_handler)(int , void * ) ;
  void *ldv_6_data_data ;
  int ldv_6_line_line ;
  enum irqreturn (*ldv_6_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_6_line_line = (int )arg1;
    ldv_6_callback_handler = arg2;
    ldv_6_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_6_data_data = arg5;
    ldv_assume(ldv_statevar_0 == 6);
    ldv_dispatch_irq_register_6_2(ldv_6_line_line, ldv_6_callback_handler, ldv_6_thread_thread,
                                  ldv_6_data_data);
    }
    return (arg0);
  } else {
    {
    ldv_assume(arg0 != 0);
    }
    return (arg0);
  }
  return (arg0);
}
}
void ldv_struct_v4l2_ctrl_ops_dummy_resourceless_instance_2(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  {
  {
  if (ldv_statevar_2 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_2 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_2 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_2 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_2 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36257;
  case_2:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 3;
  }
  goto ldv_36257;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_2_3(ldv_2_callback_s_ctrl, ldv_2_container_struct_v4l2_ctrl_ptr);
  ldv_statevar_2 = 2;
  }
  goto ldv_36257;
  case_4:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_2 = 1;
  } else {
    ldv_statevar_2 = 3;
  }
  goto ldv_36257;
  case_5: ;
  goto ldv_36257;
  switch_default: ;
  switch_break: ;
  }
  ldv_36257: ;
  return;
}
}
void ldv_struct_vm_operations_struct_dummy_resourceless_instance_3(void *arg0 )
{
  {
  {
  if (ldv_statevar_3 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_3 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_3 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_3 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_3 == 5) {
    goto case_5;
  } else {
  }
  if (ldv_statevar_3 == 7) {
    goto case_7;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_36267;
  case_2:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36267;
  case_3:
  {
  ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_close, ldv_3_container_struct_vm_area_struct_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_36267;
  case_4:
  {
  ldv_statevar_3 = ldv_switch_1();
  }
  goto ldv_36267;
  case_5: ;
  goto ldv_36267;
  case_7:
  {
  ldv_dummy_resourceless_instance_callback_3_7(ldv_3_callback_open, ldv_3_container_struct_vm_area_struct_ptr);
  ldv_statevar_3 = 2;
  }
  goto ldv_36267;
  switch_default: ;
  switch_break: ;
  }
  ldv_36267: ;
  return;
}
}
int ldv_switch_0(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (3);
  case_1: ;
  return (8);
  case_2: ;
  return (10);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_1(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (1);
  case_1: ;
  return (3);
  case_2: ;
  return (7);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
int ldv_switch_2(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  {
  if (tmp == 0) {
    goto case_0;
  } else {
  }
  if (tmp == 1) {
    goto case_1;
  } else {
  }
  if (tmp == 2) {
    goto case_2;
  } else {
  }
  if (tmp == 3) {
    goto case_3;
  } else {
  }
  if (tmp == 4) {
    goto case_4;
  } else {
  }
  if (tmp == 5) {
    goto case_5;
  } else {
  }
  if (tmp == 6) {
    goto case_6;
  } else {
  }
  if (tmp == 7) {
    goto case_7;
  } else {
  }
  if (tmp == 8) {
    goto case_8;
  } else {
  }
  if (tmp == 9) {
    goto case_9;
  } else {
  }
  if (tmp == 10) {
    goto case_10;
  } else {
  }
  if (tmp == 11) {
    goto case_11;
  } else {
  }
  if (tmp == 12) {
    goto case_12;
  } else {
  }
  if (tmp == 13) {
    goto case_13;
  } else {
  }
  if (tmp == 14) {
    goto case_14;
  } else {
  }
  if (tmp == 15) {
    goto case_15;
  } else {
  }
  if (tmp == 16) {
    goto case_16;
  } else {
  }
  if (tmp == 17) {
    goto case_17;
  } else {
  }
  if (tmp == 18) {
    goto case_18;
  } else {
  }
  if (tmp == 19) {
    goto case_19;
  } else {
  }
  if (tmp == 20) {
    goto case_20;
  } else {
  }
  if (tmp == 21) {
    goto case_21;
  } else {
  }
  if (tmp == 22) {
    goto case_22;
  } else {
  }
  goto switch_default;
  case_0: ;
  return (2);
  case_1: ;
  return (4);
  case_2: ;
  return (17);
  case_3: ;
  return (18);
  case_4: ;
  return (20);
  case_5: ;
  return (23);
  case_6: ;
  return (25);
  case_7: ;
  return (26);
  case_8: ;
  return (27);
  case_9: ;
  return (28);
  case_10: ;
  return (30);
  case_11: ;
  return (32);
  case_12: ;
  return (33);
  case_13: ;
  return (34);
  case_14: ;
  return (35);
  case_15: ;
  return (36);
  case_16: ;
  return (37);
  case_17: ;
  return (39);
  case_18: ;
  return (41);
  case_19: ;
  return (42);
  case_20: ;
  return (43);
  case_21: ;
  return (44);
  case_22: ;
  return (45);
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return (0);
}
}
void ldv_switch_automaton_state_0_1(void)
{
  {
  ldv_statevar_0 = 6;
  return;
}
}
void ldv_switch_automaton_state_0_6(void)
{
  {
  ldv_statevar_0 = 5;
  return;
}
}
void ldv_switch_automaton_state_1_11(void)
{
  {
  ldv_1_ret_default = 1;
  ldv_statevar_1 = 20;
  return;
}
}
void ldv_switch_automaton_state_1_20(void)
{
  {
  ldv_statevar_1 = 19;
  return;
}
}
void ldv_switch_automaton_state_2_1(void)
{
  {
  ldv_statevar_2 = 5;
  return;
}
}
void ldv_switch_automaton_state_2_5(void)
{
  {
  ldv_statevar_2 = 4;
  return;
}
}
void ldv_switch_automaton_state_3_1(void)
{
  {
  ldv_statevar_3 = 5;
  return;
}
}
void ldv_switch_automaton_state_3_5(void)
{
  {
  ldv_statevar_3 = 4;
  return;
}
}
void ldv_switch_automaton_state_4_14(void)
{
  {
  ldv_statevar_4 = 13;
  return;
}
}
void ldv_switch_automaton_state_4_5(void)
{
  {
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  return;
}
}
void ldv_v4l2_file_operations_io_instance_4(void *arg0 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  void *tmp___8 ;
  void *tmp___9 ;
  void *tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  void *tmp___13 ;
  int tmp___14 ;
  void *tmp___15 ;
  {
  {
  if (ldv_statevar_4 == 1) {
    goto case_1;
  } else {
  }
  if (ldv_statevar_4 == 2) {
    goto case_2;
  } else {
  }
  if (ldv_statevar_4 == 3) {
    goto case_3;
  } else {
  }
  if (ldv_statevar_4 == 4) {
    goto case_4;
  } else {
  }
  if (ldv_statevar_4 == 6) {
    goto case_6;
  } else {
  }
  if (ldv_statevar_4 == 8) {
    goto case_8;
  } else {
  }
  if (ldv_statevar_4 == 10) {
    goto case_10;
  } else {
  }
  if (ldv_statevar_4 == 11) {
    goto case_11;
  } else {
  }
  if (ldv_statevar_4 == 13) {
    goto case_13;
  } else {
  }
  if (ldv_statevar_4 == 14) {
    goto case_14;
  } else {
  }
  if (ldv_statevar_4 == 17) {
    goto case_17;
  } else {
  }
  if (ldv_statevar_4 == 18) {
    goto case_18;
  } else {
  }
  if (ldv_statevar_4 == 20) {
    goto case_20;
  } else {
  }
  if (ldv_statevar_4 == 23) {
    goto case_23;
  } else {
  }
  if (ldv_statevar_4 == 25) {
    goto case_25;
  } else {
  }
  if (ldv_statevar_4 == 26) {
    goto case_26;
  } else {
  }
  if (ldv_statevar_4 == 27) {
    goto case_27;
  } else {
  }
  if (ldv_statevar_4 == 28) {
    goto case_28;
  } else {
  }
  if (ldv_statevar_4 == 30) {
    goto case_30;
  } else {
  }
  if (ldv_statevar_4 == 32) {
    goto case_32;
  } else {
  }
  if (ldv_statevar_4 == 33) {
    goto case_33;
  } else {
  }
  if (ldv_statevar_4 == 34) {
    goto case_34;
  } else {
  }
  if (ldv_statevar_4 == 35) {
    goto case_35;
  } else {
  }
  if (ldv_statevar_4 == 36) {
    goto case_36;
  } else {
  }
  if (ldv_statevar_4 == 37) {
    goto case_37;
  } else {
  }
  if (ldv_statevar_4 == 39) {
    goto case_39;
  } else {
  }
  if (ldv_statevar_4 == 41) {
    goto case_41;
  } else {
  }
  if (ldv_statevar_4 == 42) {
    goto case_42;
  } else {
  }
  if (ldv_statevar_4 == 43) {
    goto case_43;
  } else {
  }
  if (ldv_statevar_4 == 44) {
    goto case_44;
  } else {
  }
  if (ldv_statevar_4 == 45) {
    goto case_45;
  } else {
  }
  goto switch_default;
  case_1:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_36336;
  case_2:
  {
  ldv_io_instance_release_4_2(ldv_4_container_v4l2_file_operations->release, ldv_4_resource_file);
  ldv_statevar_4 = 1;
  }
  goto ldv_36336;
  case_3:
  {
  ldv_statevar_4 = ldv_switch_2();
  }
  goto ldv_36336;
  case_4:
  {
  ldv_io_instance_callback_4_4(ldv_4_callback_func_1_ptr, ldv_4_resource_struct_video_device);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_6:
  {
  ldv_free((void *)ldv_4_resource_file);
  ldv_free((void *)ldv_4_resource_struct_poll_table_struct_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_buffer_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_capability_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_event_subscription_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_fh_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_fmtdesc_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_format_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_input_ptr);
  ldv_free((void *)ldv_4_resource_struct_v4l2_requestbuffers_ptr);
  ldv_free((void *)ldv_4_resource_struct_video_device);
  ldv_free((void *)ldv_4_resource_struct_vm_area_struct_ptr);
  ldv_4_ret_default = 1;
  ldv_statevar_4 = 14;
  }
  goto ldv_36336;
  case_8:
  {
  ldv_assume(ldv_4_ret_default != 0);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_36336;
  case_10:
  {
  ldv_assume(ldv_4_ret_default == 0);
  ldv_statevar_4 = ldv_switch_2();
  }
  goto ldv_36336;
  case_11:
  {
  ldv_4_ret_default = ldv_io_instance_probe_4_11(ldv_4_container_v4l2_file_operations->open,
                                                 ldv_4_resource_file);
  ldv_4_ret_default = ldv_filter_err_code(ldv_4_ret_default);
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    ldv_statevar_4 = 8;
  } else {
    ldv_statevar_4 = 10;
  }
  goto ldv_36336;
  case_13:
  {
  tmp___2 = ldv_xmalloc(520UL);
  ldv_4_resource_file = (struct file *)tmp___2;
  tmp___3 = ldv_xmalloc(16UL);
  ldv_4_resource_struct_poll_table_struct_ptr = (struct poll_table_struct *)tmp___3;
  tmp___4 = ldv_xmalloc(88UL);
  ldv_4_resource_struct_v4l2_buffer_ptr = (struct v4l2_buffer *)tmp___4;
  tmp___5 = ldv_xmalloc(104UL);
  ldv_4_resource_struct_v4l2_capability_ptr = (struct v4l2_capability *)tmp___5;
  tmp___6 = ldv_xmalloc(32UL);
  ldv_4_resource_struct_v4l2_event_subscription_ptr = (struct v4l2_event_subscription *)tmp___6;
  tmp___7 = ldv_xmalloc(176UL);
  ldv_4_resource_struct_v4l2_fh_ptr = (struct v4l2_fh *)tmp___7;
  tmp___8 = ldv_xmalloc(64UL);
  ldv_4_resource_struct_v4l2_fmtdesc_ptr = (struct v4l2_fmtdesc *)tmp___8;
  tmp___9 = ldv_xmalloc(208UL);
  ldv_4_resource_struct_v4l2_format_ptr = (struct v4l2_format *)tmp___9;
  tmp___10 = ldv_xmalloc(80UL);
  ldv_4_resource_struct_v4l2_input_ptr = (struct v4l2_input *)tmp___10;
  tmp___11 = ldv_xmalloc(20UL);
  ldv_4_resource_struct_v4l2_requestbuffers_ptr = (struct v4l2_requestbuffers *)tmp___11;
  tmp___12 = ldv_xmalloc(1808UL);
  ldv_4_resource_struct_video_device = (struct video_device *)tmp___12;
  tmp___13 = ldv_xmalloc(184UL);
  ldv_4_resource_struct_vm_area_struct_ptr = (struct vm_area_struct *)tmp___13;
  tmp___14 = ldv_undef_int();
  }
  if (tmp___14 != 0) {
    ldv_statevar_4 = 6;
  } else {
    ldv_statevar_4 = 11;
  }
  goto ldv_36336;
  case_14: ;
  goto ldv_36336;
  case_17:
  {
  ldv_io_instance_callback_4_17(ldv_4_callback_mmap, ldv_4_resource_file, ldv_4_resource_struct_vm_area_struct_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_18:
  {
  ldv_io_instance_callback_4_18(ldv_4_callback_poll, ldv_4_resource_file, ldv_4_resource_struct_poll_table_struct_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_20:
  {
  ldv_io_instance_callback_4_19(ldv_4_callback_unlocked_ioctl, ldv_4_resource_file,
                                ldv_4_ldv_param_19_1_default, ldv_4_ldv_param_19_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_23:
  {
  ldv_io_instance_callback_4_22(ldv_4_callback_vidioc_default, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                (int )ldv_4_ldv_param_22_2_default, ldv_4_ldv_param_22_3_default,
                                (void *)ldv_4_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_25:
  {
  ldv_io_instance_callback_4_25(ldv_4_callback_vidioc_dqbuf, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_26:
  {
  ldv_io_instance_callback_4_26(ldv_4_callback_vidioc_enum_fmt_vid_cap, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_fmtdesc_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_27:
  {
  ldv_io_instance_callback_4_27(ldv_4_callback_vidioc_enum_input, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_input_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_28:
  {
  ldv_io_instance_callback_4_28(ldv_4_callback_vidioc_g_fmt_vid_cap, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_format_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_30:
  {
  tmp___15 = ldv_xmalloc(4UL);
  ldv_4_ldv_param_29_2_default = (unsigned int *)tmp___15;
  ldv_io_instance_callback_4_29(ldv_4_callback_vidioc_g_input, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_ldv_param_29_2_default);
  ldv_free((void *)ldv_4_ldv_param_29_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_32:
  {
  ldv_io_instance_callback_4_32(ldv_4_callback_vidioc_log_status, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_33:
  {
  ldv_io_instance_callback_4_33(ldv_4_callback_vidioc_qbuf, ldv_4_resource_file, (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_34:
  {
  ldv_io_instance_callback_4_34(ldv_4_callback_vidioc_querybuf, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_buffer_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_35:
  {
  ldv_io_instance_callback_4_35(ldv_4_callback_vidioc_querycap, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_capability_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_36:
  {
  ldv_io_instance_callback_4_36(ldv_4_callback_vidioc_reqbufs, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_requestbuffers_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_37:
  {
  ldv_io_instance_callback_4_37(ldv_4_callback_vidioc_s_fmt_vid_cap, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_format_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_39:
  {
  ldv_io_instance_callback_4_38(ldv_4_callback_vidioc_s_input, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_ldv_param_38_2_default);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_41:
  {
  ldv_io_instance_callback_4_41(ldv_4_callback_vidioc_streamoff, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_enum_v4l2_buf_type);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_42:
  {
  ldv_io_instance_callback_4_42(ldv_4_callback_vidioc_streamon, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_enum_v4l2_buf_type);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_43:
  {
  ldv_io_instance_callback_4_43(ldv_4_callback_vidioc_subscribe_event, ldv_4_resource_struct_v4l2_fh_ptr,
                                ldv_4_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_44:
  {
  ldv_io_instance_callback_4_44(ldv_4_callback_vidioc_try_fmt_vid_cap, ldv_4_resource_file,
                                (void *)ldv_4_resource_struct_poll_table_struct_ptr,
                                ldv_4_resource_struct_v4l2_format_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  case_45:
  {
  ldv_io_instance_callback_4_45(ldv_4_callback_vidioc_unsubscribe_event, ldv_4_resource_struct_v4l2_fh_ptr,
                                ldv_4_resource_struct_v4l2_event_subscription_ptr);
  ldv_statevar_4 = 3;
  }
  goto ldv_36336;
  switch_default: ;
  switch_break: ;
  }
  ldv_36336: ;
  return;
}
}
static void ldv___ldv_spin_lock_48(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_grabq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_49(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_grabq_lock_of_meye();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_50(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_doneq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_51(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_spin_unlock_doneq_lock_of_meye();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_spin_lock_52(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_grabq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_54(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_doneq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_56(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_grabq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_58(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_doneq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_60(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_grabq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_spin_lock_62(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_spin_lock_doneq_lock_of_meye();
  __ldv_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_64(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = ldv_request_irq(ldv_func_res, irq, handler, flags, (char *)name, dev);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_irq_65(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_free_irq_66(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static int ldv___pci_register_driver_67(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                        char const *ldv_func_arg3 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv___pci_register_driver(ldv_func_res, ldv_func_arg1, ldv_func_arg2,
                                      (char *)ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_pci_unregister_driver_68(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
void *ldv_xzalloc(size_t size ) ;
void *ldv_dev_get_drvdata(struct device const *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct device const *)0) && (unsigned long )dev->p != (unsigned long )((struct device_private * )0)) {
    return ((dev->p)->driver_data);
  } else {
  }
  return ((void *)0);
}
}
int ldv_dev_set_drvdata(struct device *dev , void *data )
{
  void *tmp ;
  {
  {
  tmp = ldv_xzalloc(8UL);
  dev->p = (struct device_private *)tmp;
  (dev->p)->driver_data = data;
  }
  return (0);
}
}
void *ldv_zalloc(size_t size ) ;
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2200UL);
  master = (struct spi_master *)tmp;
  }
  if ((unsigned long )master == (unsigned long )((struct spi_master *)0)) {
    return ((struct spi_master *)0);
  } else {
  }
  {
  ldv_dev_set_drvdata(& master->dev, (void *)master + 1U);
  }
  return (master);
}
}
long ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 4294967295UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(4294967295L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(4294967295UL - (unsigned long )ptr));
}
}
long ldv_is_err_or_null(void const *ptr )
{
  long tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    {
    tmp = ldv_is_err(ptr);
    }
    if (tmp != 0L) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((long )tmp___0);
}
}
static int ldv_filter_positive_int(int val )
{
  {
  {
  ldv_assume(val <= 0);
  }
  return (val);
}
}
int ldv_post_init(int init_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(init_ret_val);
  }
  return (tmp);
}
}
int ldv_post_probe(int probe_ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(probe_ret_val);
  }
  return (tmp);
}
}
int ldv_filter_err_code(int ret_val )
{
  int tmp ;
  {
  {
  tmp = ldv_filter_positive_int(ret_val);
  }
  return (tmp);
}
}
extern void ldv_check_alloc_flags(gfp_t ) ;
extern void ldv_after_alloc(void * ) ;
void *ldv_kzalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_zalloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
extern void ldv_assert(char const * , int ) ;
void ldv__builtin_trap(void) ;
void ldv_assume(int expression )
{
  {
  if (expression == 0) {
    ldv_assume_label: ;
    goto ldv_assume_label;
  } else {
  }
  return;
}
}
void ldv_stop(void)
{
  {
  ldv_stop_label: ;
  goto ldv_stop_label;
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
  {
  ldv_assert("", 0);
  }
  return;
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
void *ldv_malloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = malloc(size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_calloc(size_t nmemb , size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp___1 = ldv_undef_int();
  }
  if (tmp___1 != 0) {
    {
    tmp = calloc(nmemb, size);
    res = tmp;
    ldv_assume((unsigned long )res != (unsigned long )((void *)0));
    tmp___0 = ldv_is_err((void const *)res);
    ldv_assume(tmp___0 == 0L);
    }
    return (res);
  } else {
    return ((void *)0);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *tmp ;
  {
  {
  tmp = ldv_calloc(1UL, size);
  }
  return (tmp);
}
}
void ldv_free(void *s )
{
  {
  {
  free(s);
  }
  return;
}
}
void *ldv_xmalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = malloc(size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
void *ldv_xzalloc(size_t size )
{
  void *res ;
  void *tmp ;
  long tmp___0 ;
  {
  {
  tmp = calloc(1UL, size);
  res = tmp;
  ldv_assume((unsigned long )res != (unsigned long )((void *)0));
  tmp___0 = ldv_is_err((void const *)res);
  ldv_assume(tmp___0 == 0L);
  }
  return (res);
}
}
unsigned long ldv_undef_ulong(void) ;
int ldv_undef_int_negative(void) ;
int ldv_undef_int_nonpositive(void) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
int ldv_undef_int(void)
{
  int tmp ;
  {
  {
  tmp = __VERIFIER_nondet_int();
  }
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  {
  tmp = __VERIFIER_nondet_ulong();
  }
  return (tmp);
}
}
int ldv_undef_int_negative(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret < 0);
  }
  return (ret);
}
}
int ldv_undef_int_nonpositive(void)
{
  int ret ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  ret = tmp;
  ldv_assume(ret <= 0);
  }
  return (ret);
}
}
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data ) ;
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data ) ;
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) ) ;
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ) ;
int ldv_thread_create(struct ldv_thread *ldv_thread , void (*function)(void * ) ,
                      void *data )
{
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    {
    (*function)(data);
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_create_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) ,
                        void *data )
{
  int i ;
  {
  if ((unsigned long )function != (unsigned long )((void (*)(void * ))0)) {
    i = 0;
    goto ldv_1179;
    ldv_1178:
    {
    (*function)(data);
    i = i + 1;
    }
    ldv_1179: ;
    if (i < ldv_thread_set->number) {
      goto ldv_1178;
    } else {
    }
  } else {
  }
  return (0);
}
}
int ldv_thread_join(struct ldv_thread *ldv_thread , void (*function)(void * ) )
{
  {
  return (0);
}
}
int ldv_thread_join_N(struct ldv_thread_set *ldv_thread_set , void (*function)(void * ) )
{
  {
  return (0);
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_spin_alloc_lock_of_task_struct = 1;
void ldv_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 2);
  ldv_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_alloc_lock_of_task_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_doneq_lock_of_meye = 1;
void ldv_spin_lock_doneq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_doneq_lock_of_meye == 1);
  ldv_assume(ldv_spin_doneq_lock_of_meye == 1);
  ldv_spin_doneq_lock_of_meye = 2;
  }
  return;
}
}
void ldv_spin_unlock_doneq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_doneq_lock_of_meye == 2);
  ldv_assume(ldv_spin_doneq_lock_of_meye == 2);
  ldv_spin_doneq_lock_of_meye = 1;
  }
  return;
}
}
int ldv_spin_trylock_doneq_lock_of_meye(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_doneq_lock_of_meye == 1);
  ldv_assume(ldv_spin_doneq_lock_of_meye == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_doneq_lock_of_meye = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_doneq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_doneq_lock_of_meye == 1);
  ldv_assume(ldv_spin_doneq_lock_of_meye == 1);
  }
  return;
}
}
int ldv_spin_is_locked_doneq_lock_of_meye(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_doneq_lock_of_meye == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_doneq_lock_of_meye(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_doneq_lock_of_meye();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_doneq_lock_of_meye(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_doneq_lock_of_meye(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_doneq_lock_of_meye == 1);
  ldv_assume(ldv_spin_doneq_lock_of_meye == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_doneq_lock_of_meye = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_grabq_lock_of_meye = 1;
void ldv_spin_lock_grabq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_grabq_lock_of_meye == 1);
  ldv_assume(ldv_spin_grabq_lock_of_meye == 1);
  ldv_spin_grabq_lock_of_meye = 2;
  }
  return;
}
}
void ldv_spin_unlock_grabq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_grabq_lock_of_meye == 2);
  ldv_assume(ldv_spin_grabq_lock_of_meye == 2);
  ldv_spin_grabq_lock_of_meye = 1;
  }
  return;
}
}
int ldv_spin_trylock_grabq_lock_of_meye(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_grabq_lock_of_meye == 1);
  ldv_assume(ldv_spin_grabq_lock_of_meye == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_grabq_lock_of_meye = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_grabq_lock_of_meye(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_grabq_lock_of_meye == 1);
  ldv_assume(ldv_spin_grabq_lock_of_meye == 1);
  }
  return;
}
}
int ldv_spin_is_locked_grabq_lock_of_meye(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_grabq_lock_of_meye == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_grabq_lock_of_meye(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_grabq_lock_of_meye();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_grabq_lock_of_meye(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_grabq_lock_of_meye(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_grabq_lock_of_meye == 1);
  ldv_assume(ldv_spin_grabq_lock_of_meye == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_grabq_lock_of_meye = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_i_lock_of_inode = 1;
void ldv_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  ldv_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_spin_i_lock_of_inode == 2);
  ldv_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_i_lock_of_inode(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock = 1;
void ldv_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  ldv_spin_lock = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock == 2);
  ldv_assume(ldv_spin_lock == 2);
  ldv_spin_lock = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock == 1);
  ldv_assume(ldv_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_node_size_lock_of_pglist_data = 1;
void ldv_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 2);
  ldv_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_node_size_lock_of_pglist_data(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_ptl = 1;
void ldv_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  ldv_spin_ptl = 2;
  }
  return;
}
}
void ldv_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_ptl == 2);
  ldv_assume(ldv_spin_ptl == 2);
  ldv_spin_ptl = 1;
  }
  return;
}
}
int ldv_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  }
  return;
}
}
int ldv_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_ptl(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_ptl == 1);
  ldv_assume(ldv_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_spin_siglock_of_sighand_struct = 1;
void ldv_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 2);
  ldv_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_spin_is_contended_siglock_of_sighand_struct(void)
{
  int is_spin_contended ;
  {
  {
  is_spin_contended = ldv_undef_int();
  }
  if (is_spin_contended != 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_doneq_lock_of_meye == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_grabq_lock_of_meye == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_doneq_lock_of_meye == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_grabq_lock_of_meye == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr )
{
  {
  if (! expr) {
    {
    __VERIFIER_error();
    }
  } else {
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
int __VERIFIER_nondet_int(void);
int __kfifo_alloc(struct __kfifo *arg0, unsigned int arg1, size_t arg2, gfp_t arg3) {
  return __VERIFIER_nondet_int();
}
void __kfifo_free(struct __kfifo *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_in(struct __kfifo *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int __kfifo_out(struct __kfifo *arg0, void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_uint();
}
void __ldv_spin_lock(spinlock_t *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int __video_register_device(struct video_device *arg0, int arg1, int arg2, int arg3, struct module *arg4) {
  return __VERIFIER_nondet_int();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
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
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_check_alloc_flags(gfp_t arg0) {
  return;
}
void ldv_initialize() {
  return;
}
void ldv_pre_probe() {
  return;
}
void ldv_switch_to_interrupt_context() {
  return;
}
void ldv_switch_to_process_context() {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 arg3) {
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
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int prepare_to_wait_event(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int remap_pfn_range(struct vm_area_struct *arg0, unsigned long arg1, unsigned long arg2, unsigned long arg3, pgprot_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int sony_pic_camera_command(int arg0, u8 arg1) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_log_status(struct file *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
struct v4l2_ctrl *v4l2_ctrl_new_custom(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_config *arg1, void *arg2) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
struct v4l2_ctrl *v4l2_ctrl_new_std(struct v4l2_ctrl_handler *arg0, const struct v4l2_ctrl_ops *arg1, u32 arg2, s32 arg3, s32 arg4, u32 arg5, s32 arg6) {
  return ldv_malloc(sizeof(struct v4l2_ctrl));
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int v4l2_ctrl_poll(struct file *arg0, struct poll_table_struct *arg1) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int v4l2_ctrl_subscribe_event(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_device_register(struct device *arg0, struct v4l2_device *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_event_unsubscribe(struct v4l2_fh *arg0, const struct v4l2_event_subscription *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_open(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int v4l2_fh_release(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
void v4l2_get_timestamp(struct timeval *arg0) {
  return;
}
void vfree(const void *arg0) {
  return;
}
struct video_device *video_device_alloc() {
  return ldv_malloc(sizeof(struct video_device));
}
void video_device_release(struct video_device *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int video_ioctl2(struct file *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_long();
}
void video_unregister_device(struct video_device *arg0) {
  return;
}
void *vmalloc(unsigned long arg0) {
  return ldv_malloc(0UL);
}
void *vmalloc_32(unsigned long arg0) {
  return ldv_malloc(0UL);
}
struct page *vmalloc_to_page(const void *arg0) {
  return ldv_malloc(sizeof(struct page));
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int vmalloc_to_pfn(const void *arg0) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
