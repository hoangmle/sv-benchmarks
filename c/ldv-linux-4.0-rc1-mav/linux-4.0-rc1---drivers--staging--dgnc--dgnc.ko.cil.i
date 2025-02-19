typedef signed char __s8;
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
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
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
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
struct class;
struct device;
struct completion;
struct gendisk;
struct module;
struct mutex;
struct request_queue;
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
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
struct task_struct;
struct lockdep_map;
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
struct __anonstruct____missing_field_name_10 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_11 {
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
union __anonunion____missing_field_name_9 {
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
   struct __anonstruct____missing_field_name_11 __annonCompField6 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_9 __annonCompField7 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_12 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_12 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_13 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_13 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct cpumask;
struct file_operations;
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
union __anonunion____missing_field_name_16 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_16 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
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
struct __anonstruct____missing_field_name_21 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_22 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_20 {
   struct __anonstruct____missing_field_name_21 __annonCompField12 ;
   struct __anonstruct____missing_field_name_22 __annonCompField13 ;
};
union __anonunion____missing_field_name_23 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_20 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_23 __annonCompField15 ;
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
struct bndreg {
   u64 lower_bound ;
   u64 upper_bound ;
};
struct bndcsr {
   u64 bndcfgu ;
   u64 bndstatus ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
   struct lwp_struct lwp ;
   struct bndreg bndreg[4U] ;
   struct bndcsr bndcsr ;
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
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_27 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_26 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_27 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_26 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_28 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_28 rwlock_t;
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct optimistic_spin_queue {
   atomic_t tail ;
};
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
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
struct __anonstruct_futex_30 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_31 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_32 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_29 {
   struct __anonstruct_futex_30 futex ;
   struct __anonstruct_nanosleep_31 nanosleep ;
   struct __anonstruct_poll_32 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_29 __annonCompField19 ;
};
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_45 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_45 seqlock_t;
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
union __anonunion____missing_field_name_46 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_46 __annonCompField20 ;
};
struct idr {
   struct idr_layer *hint ;
   struct idr_layer *top ;
   int layers ;
   int cur ;
   spinlock_t lock ;
   int id_free_cnt ;
   struct idr_layer *id_free ;
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
   struct kernfs_node *notify_next ;
};
union __anonunion____missing_field_name_47 {
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
   void const *ns ;
   unsigned int hash ;
   union __anonunion____missing_field_name_47 __annonCompField21 ;
   void *priv ;
   unsigned short flags ;
   umode_t mode ;
   unsigned int ino ;
   struct kernfs_iattrs *iattr ;
};
struct kernfs_syscall_ops {
   int (*remount_fs)(struct kernfs_root * , int * , char * ) ;
   int (*show_options)(struct seq_file * , struct kernfs_root * ) ;
   int (*mkdir)(struct kernfs_node * , char const * , umode_t ) ;
   int (*rmdir)(struct kernfs_node * ) ;
   int (*rename)(struct kernfs_node * , struct kernfs_node * , char const * ) ;
};
struct kernfs_root {
   struct kernfs_node *kn ;
   unsigned int flags ;
   struct ida ino_ida ;
   struct kernfs_syscall_ops *syscall_ops ;
   struct list_head supers ;
   wait_queue_head_t deactivate_waitq ;
};
struct vm_operations_struct;
struct kernfs_open_file {
   struct kernfs_node *kn ;
   struct file *file ;
   void *priv ;
   struct mutex mutex ;
   int event ;
   struct list_head list ;
   char *prealloc_buf ;
   size_t atomic_write_len ;
   bool mmapped ;
   struct vm_operations_struct const *vm_ops ;
};
struct kernfs_ops {
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   ssize_t (*read)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   size_t atomic_write_len ;
   bool prealloc ;
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
struct user_namespace;
struct __anonstruct_kuid_t_48 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_48 kuid_t;
struct __anonstruct_kgid_t_49 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_49 kgid_t;
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
   bool ignore_lockdep ;
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
   char *argv[3U] ;
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
struct __anonstruct_nodemask_t_50 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_50 nodemask_t;
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
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool is_noirq_suspended ;
   bool is_late_suspended ;
   bool ignore_children ;
   bool early_init ;
   bool direct_complete ;
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
   void (*set_latency_tolerance)(struct device * , s32 ) ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
   void (*detach)(struct device * , bool ) ;
};
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
   struct lockdep_map dep_map ;
};
struct pci_dev;
struct pci_bus;
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct device_node;
struct llist_node;
struct llist_head {
   struct llist_node *first ;
};
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
   struct iommu_ops const *iommu_ops ;
   struct subsys_private *p ;
   struct lock_class_key lock_key ;
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
struct cma;
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
   void *driver_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   struct dev_pin_info *pins ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   unsigned long dma_pfn_offset ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct cma *cma_area ;
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
   bool offline_disabled ;
   bool offline ;
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
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
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
   __u8 id[9U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
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
struct __anonstruct____missing_field_name_151 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_152 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_150 {
   struct __anonstruct____missing_field_name_151 __annonCompField34 ;
   struct __anonstruct____missing_field_name_152 __annonCompField35 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
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
struct mem_cgroup;
typedef void compound_page_dtor(struct page * );
union __anonunion____missing_field_name_153 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_155 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_159 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_158 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_159 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_157 {
   union __anonunion____missing_field_name_158 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_156 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_157 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField38 ;
   union __anonunion____missing_field_name_156 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_161 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_162 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_160 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_161 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_162 __annonCompField45 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_163 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_153 __annonCompField37 ;
   struct __anonstruct____missing_field_name_154 __annonCompField43 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   union __anonunion____missing_field_name_163 __annonCompField47 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_164 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_164 shared ;
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
   u32 vmacache_seqnum ;
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
   atomic_long_t nr_pmds ;
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
   void *bd_addr ;
};
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_166 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_166 sigset_t;
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
struct __anonstruct__kill_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_169 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_170 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_171 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_173 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_172 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_173 _addr_bnd ;
};
struct __anonstruct__sigpoll_174 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_175 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_167 {
   int _pad[28U] ;
   struct __anonstruct__kill_168 _kill ;
   struct __anonstruct__timer_169 _timer ;
   struct __anonstruct__rt_170 _rt ;
   struct __anonstruct__sigchld_171 _sigchld ;
   struct __anonstruct__sigfault_172 _sigfault ;
   struct __anonstruct__sigpoll_174 _sigpoll ;
   struct __anonstruct__sigsys_175 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_167 _sifields ;
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
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int in_hrtirq ;
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
struct nsproxy;
struct assoc_array_ptr;
struct assoc_array {
   struct assoc_array_ptr *root ;
   unsigned long nr_leaves_on_tree ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_index_key {
   struct key_type *type ;
   char const *description ;
   size_t desc_len ;
};
union __anonunion____missing_field_name_180 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_181 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_183 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_182 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_183 __annonCompField52 ;
};
union __anonunion_type_data_184 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_186 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_185 {
   union __anonunion_payload_186 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_180 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_181 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_182 __annonCompField53 ;
   union __anonunion_type_data_184 type_data ;
   union __anonunion____missing_field_name_185 __annonCompField54 ;
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
   seqlock_t stats_lock ;
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
   u64 blkio_start ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   u64 freepages_start ;
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
   int depth ;
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
   int dl_yielded ;
   struct hrtimer dl_timer ;
};
struct memcg_oom_info {
   struct mem_cgroup *memcg ;
   gfp_t gfp_mask ;
   int order ;
   unsigned char may_oom : 1 ;
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
   unsigned long rcu_tasks_nvcsw ;
   bool rcu_tasks_holdout ;
   struct list_head rcu_tasks_holdout_list ;
   int rcu_tasks_idle_cpu ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct rb_node pushable_dl_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned long atomic_flags ;
   struct restart_block restart_block ;
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
   u64 start_time ;
   u64 real_start_time ;
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
   struct sysv_shm sysvshm ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults ;
   unsigned long total_numa_faults ;
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
   unsigned int kasan_depth ;
   int curr_ret_stack ;
   struct ftrace_ret_stack *ret_stack ;
   unsigned long long ftrace_timestamp ;
   atomic_t trace_overrun ;
   atomic_t tracing_graph_pause ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_oom_info memcg_oom ;
   struct uprobe_task *utask ;
   unsigned int sequential_io ;
   unsigned int sequential_io_avg ;
   unsigned long task_state_change ;
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
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_191 {
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
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   u8 dma_alias_devfn ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   u8 pm_cap ;
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
   unsigned char ignore_hotplug : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   bool match_driver ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char no_64bit_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
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
   unsigned char irq_managed : 1 ;
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
   union __anonunion____missing_field_name_191 __annonCompField58 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
};
struct pci_ops;
struct msi_controller;
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
   struct msi_controller *msi ;
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
   void *(*map_bus)(struct pci_bus * , unsigned int , int ) ;
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
   void (*reset_notify)(struct pci_dev * , bool ) ;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
   int nid ;
   struct mem_cgroup *memcg ;
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
struct writeback_control;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *cow_page ;
   struct page *page ;
   unsigned long max_pgoff ;
   pte_t *pte ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   void (*map_pages)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
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
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_193 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_192 {
   struct __anonstruct____missing_field_name_193 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_192 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_195 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_194 {
   struct __anonstruct____missing_field_name_195 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_194 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_196 {
   struct hlist_node d_alias ;
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
   struct list_head d_child ;
   struct list_head d_subdirs ;
   union __anonunion_d_u_196 d_u ;
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
struct list_lru_one {
   struct list_head list ;
   long nr_items ;
};
struct list_lru_memcg {
   struct list_lru_one *lru[0U] ;
};
struct list_lru_node {
   spinlock_t lock ;
   struct list_lru_one lru ;
   struct list_lru_memcg *memcg_lrus ;
};
struct list_lru {
   struct list_lru_node *node ;
   struct list_head list ;
};
struct __anonstruct____missing_field_name_198 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_197 {
   struct __anonstruct____missing_field_name_198 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_197 __annonCompField64 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
struct nameidata;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
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
struct __anonstruct_kprojid_t_200 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_200 kprojid_t;
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
union __anonunion____missing_field_name_201 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_201 __annonCompField66 ;
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
   qsize_t dqi_max_spc_limit ;
   qsize_t dqi_max_ino_limit ;
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
struct qc_dqblk {
   int d_fieldmask ;
   u64 d_spc_hardlimit ;
   u64 d_spc_softlimit ;
   u64 d_ino_hardlimit ;
   u64 d_ino_softlimit ;
   u64 d_space ;
   u64 d_ino_count ;
   s64 d_ino_timer ;
   s64 d_spc_timer ;
   int d_ino_warns ;
   int d_spc_warns ;
   u64 d_rt_spc_hardlimit ;
   u64 d_rt_spc_softlimit ;
   u64 d_rt_space ;
   s64 d_rt_spc_timer ;
   int d_rt_spc_warns ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*get_xstatev)(struct super_block * , struct fs_quota_statv * ) ;
   int (*rm_xquota)(struct super_block * , unsigned int ) ;
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
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
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
   ssize_t (*direct_IO)(int , struct kiocb * , struct iov_iter * , loff_t ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   atomic_t i_mmap_writable ;
   struct rb_root i_mmap ;
   struct rw_semaphore i_mmap_rwsem ;
   unsigned long nrpages ;
   unsigned long nrshadows ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct hd_struct;
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
union __anonunion____missing_field_name_204 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_205 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_206 {
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
   union __anonunion____missing_field_name_204 __annonCompField67 ;
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
   union __anonunion____missing_field_name_205 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_206 __annonCompField69 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
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
union __anonunion_f_u_207 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_207 f_u ;
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
};
typedef void *fl_owner_t;
struct file_lock;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   unsigned long (*lm_owner_key)(struct file_lock * ) ;
   void (*lm_get_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_put_owner)(struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , int ) ;
   bool (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock * , int , struct list_head * ) ;
   void (*lm_setup)(struct file_lock * , void ** ) ;
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
struct __anonstruct_afs_209 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_208 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_209 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_list ;
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
   union __anonunion_fl_u_208 fl_u ;
};
struct file_lock_context {
   spinlock_t flc_lock ;
   struct list_head flc_flock ;
   struct list_head flc_posix ;
   struct list_head flc_lease ;
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
   unsigned int s_quota_types ;
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
   struct hlist_head s_pins ;
   struct list_lru s_dentry_lru ;
   struct list_lru s_inode_lru ;
   struct callback_head rcu ;
   int s_stack_depth ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct dir_context;
struct dir_context {
   int (*actor)(struct dir_context * , char const * , int , loff_t , u64 , unsigned int ) ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   void (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   int (*setlease)(struct file * , long , struct file_lock ** , void ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   void (*show_fdinfo)(struct seq_file * , struct file * ) ;
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
   int (*rename2)(struct inode * , struct dentry * , struct inode * , struct dentry * ,
                  unsigned int ) ;
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
   int (*dentry_open)(struct dentry * , struct file * , struct cred const * ) ;
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
   int (*freeze_super)(struct super_block * ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*thaw_super)(struct super_block * ) ;
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
   struct dquot **(*get_dquots)(struct inode * ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   long (*nr_cached_objects)(struct super_block * , struct shrink_control * ) ;
   long (*free_cached_objects)(struct super_block * , struct shrink_control * ) ;
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
typedef unsigned char cc_t;
typedef unsigned int speed_t;
typedef unsigned int tcflag_t;
struct ktermios {
   tcflag_t c_iflag ;
   tcflag_t c_oflag ;
   tcflag_t c_cflag ;
   tcflag_t c_lflag ;
   cc_t c_line ;
   cc_t c_cc[19U] ;
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
   __u16 x_rflag[5U] ;
   __u16 x_sflag ;
};
struct tty_driver;
struct serial_icounter_struct;
struct tty_operations {
   struct tty_struct *(*lookup)(struct tty_driver * , struct inode * , int ) ;
   int (*install)(struct tty_driver * , struct tty_struct * ) ;
   void (*remove)(struct tty_driver * , struct tty_struct * ) ;
   int (*open)(struct tty_struct * , struct file * ) ;
   void (*close)(struct tty_struct * , struct file * ) ;
   void (*shutdown)(struct tty_struct * ) ;
   void (*cleanup)(struct tty_struct * ) ;
   int (*write)(struct tty_struct * , unsigned char const * , int ) ;
   int (*put_char)(struct tty_struct * , unsigned char ) ;
   void (*flush_chars)(struct tty_struct * ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   void (*stop)(struct tty_struct * ) ;
   void (*start)(struct tty_struct * ) ;
   void (*hangup)(struct tty_struct * ) ;
   int (*break_ctl)(struct tty_struct * , int ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   void (*set_ldisc)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , int ) ;
   void (*send_xchar)(struct tty_struct * , char ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*resize)(struct tty_struct * , struct winsize * ) ;
   int (*set_termiox)(struct tty_struct * , struct termiox * ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   int (*poll_init)(struct tty_driver * , int , char * ) ;
   int (*poll_get_char)(struct tty_driver * , int ) ;
   void (*poll_put_char)(struct tty_driver * , int , char ) ;
   struct file_operations const *proc_fops ;
};
struct tty_port;
struct tty_driver {
   int magic ;
   struct kref kref ;
   struct cdev *cdevs ;
   struct module *owner ;
   char const *driver_name ;
   char const *name ;
   int name_base ;
   int major ;
   int minor_start ;
   unsigned int num ;
   short type ;
   short subtype ;
   struct ktermios init_termios ;
   unsigned long flags ;
   struct proc_dir_entry *proc_entry ;
   struct tty_driver *other ;
   struct tty_struct **ttys ;
   struct tty_port **ports ;
   struct ktermios **termios ;
   void *driver_state ;
   struct tty_operations const *ops ;
   struct list_head tty_drivers ;
};
struct ld_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   unsigned int wait_readers ;
   struct list_head read_wait ;
   struct list_head write_wait ;
   struct lockdep_map dep_map ;
};
struct tty_ldisc_ops {
   int magic ;
   char *name ;
   int num ;
   int flags ;
   int (*open)(struct tty_struct * ) ;
   void (*close)(struct tty_struct * ) ;
   void (*flush_buffer)(struct tty_struct * ) ;
   ssize_t (*chars_in_buffer)(struct tty_struct * ) ;
   ssize_t (*read)(struct tty_struct * , struct file * , unsigned char * , size_t ) ;
   ssize_t (*write)(struct tty_struct * , struct file * , unsigned char const * ,
                    size_t ) ;
   int (*ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct tty_struct * , struct file * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct ktermios * ) ;
   unsigned int (*poll)(struct tty_struct * , struct file * , struct poll_table_struct * ) ;
   int (*hangup)(struct tty_struct * ) ;
   void (*receive_buf)(struct tty_struct * , unsigned char const * , char * , int ) ;
   void (*write_wakeup)(struct tty_struct * ) ;
   void (*dcd_change)(struct tty_struct * , unsigned int ) ;
   void (*fasync)(struct tty_struct * , int ) ;
   int (*receive_buf2)(struct tty_struct * , unsigned char const * , char * , int ) ;
   struct module *owner ;
   int refcount ;
};
struct tty_ldisc {
   struct tty_ldisc_ops *ops ;
   struct tty_struct *tty ;
};
union __anonunion____missing_field_name_210 {
   struct tty_buffer *next ;
   struct llist_node free ;
};
struct tty_buffer {
   union __anonunion____missing_field_name_210 __annonCompField70 ;
   int used ;
   int size ;
   int commit ;
   int read ;
   int flags ;
   unsigned long data[0U] ;
};
struct tty_bufhead {
   struct tty_buffer *head ;
   struct work_struct work ;
   struct mutex lock ;
   atomic_t priority ;
   struct tty_buffer sentinel ;
   struct llist_head free ;
   atomic_t mem_used ;
   int mem_limit ;
   struct tty_buffer *tail ;
};
struct tty_port_operations {
   int (*carrier_raised)(struct tty_port * ) ;
   void (*dtr_rts)(struct tty_port * , int ) ;
   void (*shutdown)(struct tty_port * ) ;
   int (*activate)(struct tty_port * , struct tty_struct * ) ;
   void (*destruct)(struct tty_port * ) ;
};
struct tty_port {
   struct tty_bufhead buf ;
   struct tty_struct *tty ;
   struct tty_struct *itty ;
   struct tty_port_operations const *ops ;
   spinlock_t lock ;
   int blocked_open ;
   int count ;
   wait_queue_head_t open_wait ;
   wait_queue_head_t close_wait ;
   wait_queue_head_t delta_msr_wait ;
   unsigned long flags ;
   unsigned char console : 1 ;
   unsigned char low_latency : 1 ;
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
   struct tty_operations const *ops ;
   int index ;
   struct ld_semaphore ldisc_sem ;
   struct tty_ldisc *ldisc ;
   struct mutex atomic_write_lock ;
   struct mutex legacy_mutex ;
   struct mutex throttle_mutex ;
   struct rw_semaphore termios_rwsem ;
   struct mutex winsize_mutex ;
   spinlock_t ctrl_lock ;
   spinlock_t flow_lock ;
   struct ktermios termios ;
   struct ktermios termios_locked ;
   struct termiox *termiox ;
   char name[64U] ;
   struct pid *pgrp ;
   struct pid *session ;
   unsigned long flags ;
   int count ;
   struct winsize winsize ;
   unsigned char stopped : 1 ;
   unsigned char flow_stopped : 1 ;
   unsigned long unused : 62 ;
   int hw_stopped ;
   unsigned char ctrl_status ;
   unsigned char packet : 1 ;
   unsigned long unused_ctrl : 55 ;
   unsigned int receive_room ;
   int flow_change ;
   struct tty_struct *link ;
   struct fasync_struct *fasync ;
   int alt_speed ;
   wait_queue_head_t write_wait ;
   wait_queue_head_t read_wait ;
   struct work_struct hangup_work ;
   void *disc_data ;
   void *driver_data ;
   struct list_head tty_files ;
   int closing ;
   unsigned char *write_buf ;
   int write_cnt ;
   struct work_struct SAK_work ;
   struct tty_port *port ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
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
   int reserved[9U] ;
};
struct digi_t {
   unsigned short digi_flags ;
   unsigned short digi_maxcps ;
   unsigned short digi_maxchar ;
   unsigned short digi_bufsize ;
   unsigned char digi_onlen ;
   unsigned char digi_offlen ;
   char digi_onstr[28U] ;
   char digi_offstr[28U] ;
   char digi_term[10U] ;
};
struct dgnc_board;
struct channel_t;
struct un_t;
struct board_ops {
   void (*tasklet)(unsigned long ) ;
   irqreturn_t (*intr)(int , void * ) ;
   void (*uart_init)(struct channel_t * ) ;
   void (*uart_off)(struct channel_t * ) ;
   int (*drain)(struct tty_struct * , uint ) ;
   void (*param)(struct tty_struct * ) ;
   void (*vpd)(struct dgnc_board * ) ;
   void (*assert_modem_signals)(struct channel_t * ) ;
   void (*flush_uart_write)(struct channel_t * ) ;
   void (*flush_uart_read)(struct channel_t * ) ;
   void (*disable_receiver)(struct channel_t * ) ;
   void (*enable_receiver)(struct channel_t * ) ;
   void (*send_break)(struct channel_t * , int ) ;
   void (*send_start_character)(struct channel_t * ) ;
   void (*send_stop_character)(struct channel_t * ) ;
   void (*copy_data_from_queue_to_uart)(struct channel_t * ) ;
   uint (*get_uart_bytes_left)(struct channel_t * ) ;
   void (*send_immediate_char)(struct channel_t * , unsigned char ) ;
};
struct dgnc_proc_entry;
struct dgnc_board {
   int magic ;
   int boardnum ;
   int type ;
   char *name ;
   struct pci_dev *pdev ;
   unsigned long bd_flags ;
   u16 vendor ;
   u16 device ;
   u16 subvendor ;
   u16 subdevice ;
   unsigned char rev ;
   uint pci_bus ;
   uint pci_slot ;
   uint maxports ;
   unsigned char dvid ;
   unsigned char vpd[128U] ;
   unsigned char serial_num[20U] ;
   spinlock_t bd_lock ;
   spinlock_t bd_intr_lock ;
   uint state ;
   wait_queue_head_t state_wait ;
   struct tasklet_struct helper_tasklet ;
   uint nasync ;
   uint irq ;
   ulong intr_count ;
   ulong intr_modem ;
   ulong intr_tx ;
   ulong intr_rx ;
   ulong membase ;
   ulong membase_end ;
   u8 *re_map_membase ;
   ulong iobase ;
   ulong iobase_end ;
   uint bd_uart_offset ;
   struct channel_t *channels[8U] ;
   struct tty_driver SerialDriver ;
   char SerialName[200U] ;
   struct tty_driver PrintDriver ;
   char PrintName[200U] ;
   uint dgnc_Major_Serial_Registered ;
   uint dgnc_Major_TransparentPrint_Registered ;
   uint dgnc_Serial_Major ;
   uint dgnc_TransparentPrint_Major ;
   uint TtyRefCnt ;
   char *flipbuf ;
   u16 dpatype ;
   u16 dpastatus ;
   char *msgbuf_head ;
   char *msgbuf ;
   uint bd_dividend ;
   struct board_ops *bd_ops ;
   struct proc_dir_entry *proc_entry_pointer ;
   struct dgnc_proc_entry *dgnc_board_table ;
};
struct un_t {
   int magic ;
   struct channel_t *un_ch ;
   ulong un_time ;
   uint un_type ;
   uint un_open_count ;
   struct tty_struct *un_tty ;
   uint un_flags ;
   wait_queue_head_t un_flags_wait ;
   uint un_dev ;
   struct device *un_sysfs ;
};
struct neo_uart_struct;
struct cls_uart_struct;
struct channel_t {
   int magic ;
   struct dgnc_board *ch_bd ;
   struct digi_t ch_digi ;
   struct un_t ch_tun ;
   struct un_t ch_pun ;
   spinlock_t ch_lock ;
   wait_queue_head_t ch_flags_wait ;
   uint ch_portnum ;
   uint ch_open_count ;
   uint ch_flags ;
   ulong ch_close_delay ;
   ulong ch_cpstime ;
   tcflag_t ch_c_iflag ;
   tcflag_t ch_c_cflag ;
   tcflag_t ch_c_oflag ;
   tcflag_t ch_c_lflag ;
   unsigned char ch_stopc ;
   unsigned char ch_startc ;
   uint ch_old_baud ;
   uint ch_custom_speed ;
   uint ch_wopen ;
   unsigned char ch_mostat ;
   unsigned char ch_mistat ;
   struct neo_uart_struct *ch_neo_uart ;
   struct cls_uart_struct *ch_cls_uart ;
   unsigned char ch_cached_lsr ;
   unsigned char *ch_rqueue ;
   ushort ch_r_head ;
   ushort ch_r_tail ;
   unsigned char *ch_equeue ;
   ushort ch_e_head ;
   ushort ch_e_tail ;
   unsigned char *ch_wqueue ;
   ushort ch_w_head ;
   ushort ch_w_tail ;
   ulong ch_rxcount ;
   ulong ch_txcount ;
   unsigned char ch_r_tlevel ;
   unsigned char ch_t_tlevel ;
   unsigned char ch_r_watermark ;
   ulong ch_stop_sending_break ;
   uint ch_stops_sent ;
   ulong ch_err_parity ;
   ulong ch_err_frame ;
   ulong ch_err_break ;
   ulong ch_err_overrun ;
   ulong ch_xon_sends ;
   ulong ch_xoff_sends ;
   ulong ch_intr_modem ;
   ulong ch_intr_tx ;
   ulong ch_intr_rx ;
   struct proc_dir_entry *proc_entry_pointer ;
   struct dgnc_proc_entry *dgnc_channel_table ;
};
struct cls_uart_struct {
   u8 txrx ;
   u8 ier ;
   u8 isr_fcr ;
   u8 lcr ;
   u8 mcr ;
   u8 lsr ;
   u8 msr ;
   u8 spr ;
};
typedef signed char s8;
typedef __u16 __le16;
typedef __u32 __le32;
struct urb;
struct usb_device;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct ldv_thread;
struct jump_entry;
typedef u64 jump_label_t;
struct jump_entry {
   jump_label_t code ;
   jump_label_t target ;
   jump_label_t key ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct usb_driver;
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
   int streams ;
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
   unsigned char no_sg_constraint : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   struct mutex usb_address0_mutex ;
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
struct usb2_lpm_parameters {
   unsigned int besl ;
   int timeout ;
};
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
   unsigned char usb2_hw_lpm_besl_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb2_hw_lpm_allowed : 1 ;
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
   struct usb2_lpm_parameters l1_params ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   atomic_t suspend_wakeups ;
   unsigned char poisoned : 1 ;
};
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
struct async_icount {
   __u32 cts ;
   __u32 dsr ;
   __u32 rng ;
   __u32 dcd ;
   __u32 tx ;
   __u32 rx ;
   __u32 frame ;
   __u32 parity ;
   __u32 overrun ;
   __u32 brk ;
   __u32 buf_overrun ;
};
struct __kfifo {
   unsigned int in ;
   unsigned int out ;
   unsigned int mask ;
   unsigned int esize ;
   void *data ;
};
union __anonunion____missing_field_name_215 {
   struct __kfifo kfifo ;
   unsigned char *type ;
   unsigned char const *const_type ;
   char (*rectype)[0U] ;
   void *ptr ;
   void const *ptr_const ;
};
struct kfifo {
   union __anonunion____missing_field_name_215 __annonCompField74 ;
   unsigned char buf[0U] ;
};
struct usb_serial;
struct usb_serial_port {
   struct usb_serial *serial ;
   struct tty_port port ;
   spinlock_t lock ;
   u32 minor ;
   u8 port_number ;
   unsigned char *interrupt_in_buffer ;
   struct urb *interrupt_in_urb ;
   __u8 interrupt_in_endpointAddress ;
   unsigned char *interrupt_out_buffer ;
   int interrupt_out_size ;
   struct urb *interrupt_out_urb ;
   __u8 interrupt_out_endpointAddress ;
   unsigned char *bulk_in_buffer ;
   int bulk_in_size ;
   struct urb *read_urb ;
   __u8 bulk_in_endpointAddress ;
   unsigned char *bulk_in_buffers[2U] ;
   struct urb *read_urbs[2U] ;
   unsigned long read_urbs_free ;
   unsigned char *bulk_out_buffer ;
   int bulk_out_size ;
   struct urb *write_urb ;
   struct kfifo write_fifo ;
   unsigned char *bulk_out_buffers[2U] ;
   struct urb *write_urbs[2U] ;
   unsigned long write_urbs_free ;
   __u8 bulk_out_endpointAddress ;
   struct async_icount icount ;
   int tx_bytes ;
   unsigned long flags ;
   wait_queue_head_t write_wait ;
   struct work_struct work ;
   char throttled ;
   char throttle_req ;
   unsigned long sysrq ;
   struct device dev ;
};
struct usb_serial_driver;
struct usb_serial {
   struct usb_device *dev ;
   struct usb_serial_driver *type ;
   struct usb_interface *interface ;
   unsigned char disconnected : 1 ;
   unsigned char suspending : 1 ;
   unsigned char attached : 1 ;
   unsigned char minors_reserved : 1 ;
   unsigned char num_ports ;
   unsigned char num_port_pointers ;
   char num_interrupt_in ;
   char num_interrupt_out ;
   char num_bulk_in ;
   char num_bulk_out ;
   struct usb_serial_port *port[8U] ;
   struct kref kref ;
   struct mutex disc_mutex ;
   void *private ;
};
struct usb_serial_driver {
   char const *description ;
   struct usb_device_id const *id_table ;
   char num_ports ;
   struct list_head driver_list ;
   struct device_driver driver ;
   struct usb_driver *usb_driver ;
   struct usb_dynids dynids ;
   size_t bulk_in_size ;
   size_t bulk_out_size ;
   int (*probe)(struct usb_serial * , struct usb_device_id const * ) ;
   int (*attach)(struct usb_serial * ) ;
   int (*calc_num_ports)(struct usb_serial * ) ;
   void (*disconnect)(struct usb_serial * ) ;
   void (*release)(struct usb_serial * ) ;
   int (*port_probe)(struct usb_serial_port * ) ;
   int (*port_remove)(struct usb_serial_port * ) ;
   int (*suspend)(struct usb_serial * , pm_message_t ) ;
   int (*resume)(struct usb_serial * ) ;
   int (*reset_resume)(struct usb_serial * ) ;
   int (*open)(struct tty_struct * , struct usb_serial_port * ) ;
   void (*close)(struct usb_serial_port * ) ;
   int (*write)(struct tty_struct * , struct usb_serial_port * , unsigned char const * ,
                int ) ;
   int (*write_room)(struct tty_struct * ) ;
   int (*ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
   void (*set_termios)(struct tty_struct * , struct usb_serial_port * , struct ktermios * ) ;
   void (*break_ctl)(struct tty_struct * , int ) ;
   int (*chars_in_buffer)(struct tty_struct * ) ;
   void (*wait_until_sent)(struct tty_struct * , long ) ;
   bool (*tx_empty)(struct usb_serial_port * ) ;
   void (*throttle)(struct tty_struct * ) ;
   void (*unthrottle)(struct tty_struct * ) ;
   int (*tiocmget)(struct tty_struct * ) ;
   int (*tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
   int (*tiocmiwait)(struct tty_struct * , unsigned long ) ;
   int (*get_icount)(struct tty_struct * , struct serial_icounter_struct * ) ;
   void (*dtr_rts)(struct usb_serial_port * , int ) ;
   int (*carrier_raised)(struct usb_serial_port * ) ;
   void (*init_termios)(struct tty_struct * ) ;
   void (*read_int_callback)(struct urb * ) ;
   void (*write_int_callback)(struct urb * ) ;
   void (*read_bulk_callback)(struct urb * ) ;
   void (*write_bulk_callback)(struct urb * ) ;
   void (*process_read_urb)(struct urb * ) ;
   int (*prepare_write_buffer)(struct usb_serial_port * , void * , size_t ) ;
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
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_222 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_222 __annonCompField77 ;
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
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2,
    MODULE_STATE_UNFORMED = 3
} ;
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
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
   atomic_t refcnt ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct neo_uart_struct {
   u8 txrx ;
   u8 ier ;
   u8 isr_fcr ;
   u8 lcr ;
   u8 mcr ;
   u8 lsr ;
   u8 msr ;
   u8 spr ;
   u8 fctr ;
   u8 efr ;
   u8 tfifo ;
   u8 rfifo ;
   u8 xoffchar1 ;
   u8 xoffchar2 ;
   u8 xonchar1 ;
   u8 xonchar2 ;
   u8 reserved1[255U] ;
   u8 txrxburst[64U] ;
   u8 reserved2[63U] ;
   u8 rxburst_with_errors[64U] ;
};
struct board_id {
   unsigned char *name ;
   uint maxports ;
   unsigned int is_pci_express ;
};
struct ldv_struct_EMGentry_20 {
   int signal_pending ;
};
struct ldv_struct_file_operations_instance_0 {
   struct file_operations *arg0 ;
   int signal_pending ;
};
struct ldv_struct_free_irq_13 {
   int arg0 ;
   int signal_pending ;
};
struct ldv_struct_interrupt_instance_1 {
   int arg0 ;
   enum irqreturn (*arg1)(int , void * ) ;
   enum irqreturn (*arg2)(int , void * ) ;
   void *arg3 ;
   int signal_pending ;
};
struct ldv_struct_pci_instance_2 {
   struct pci_driver *arg0 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_7 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type;
typedef int ldv_func_ret_type___0;
typedef int ldv_func_ret_type___1;
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
enum hrtimer_restart;
struct digi_dinfo {
   unsigned int dinfo_nboards ;
   char dinfo_reserved[12U] ;
   char dinfo_version[16U] ;
};
struct digi_info {
   unsigned int info_bdnum ;
   unsigned int info_ioport ;
   unsigned int info_physaddr ;
   unsigned int info_physsize ;
   unsigned int info_memsize ;
   unsigned short info_bdtype ;
   unsigned short info_nports ;
   char info_bdstate ;
   char info_reserved[7U] ;
};
struct ni_info {
   int board ;
   int channel ;
   int dtr ;
   int rts ;
   int cts ;
   int dsr ;
   int ri ;
   int dcd ;
   int curtx ;
   int currx ;
   unsigned short iflag ;
   unsigned short oflag ;
   unsigned short cflag ;
   unsigned short lflag ;
   unsigned int mstat ;
   unsigned char hflow ;
   unsigned char xmit_stopped ;
   unsigned char recv_stopped ;
   unsigned int baud ;
};
enum hrtimer_restart;
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int saved_preempt_count ;
   mm_segment_t addr_limit ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
enum hrtimer_restart;
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct digi_getbuffer {
   unsigned long tIn ;
   unsigned long tOut ;
   unsigned long rxbuf ;
   unsigned long txbuf ;
   unsigned long txdone ;
};
struct digi_getcounter {
   unsigned long norun ;
   unsigned long noflow ;
   unsigned long nframe ;
   unsigned long nparity ;
   unsigned long nbreak ;
   unsigned long rbytes ;
   unsigned long tbytes ;
};
struct ldv_struct_tty_unregister_device_15 {
   struct tty_driver *arg0 ;
   int signal_pending ;
};
enum hrtimer_restart;
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
enum hrtimer_restart;
struct request;
struct device_private {
   void *driver_data ;
};
typedef short s16;
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
   struct kthread_worker *worker ;
};
struct dma_chan;
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
   bool (*can_dma)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   bool queued ;
   struct kthread_worker kworker ;
   struct task_struct *kworker_task ;
   struct kthread_work pump_messages ;
   spinlock_t queue_lock ;
   struct list_head queue ;
   struct spi_message *cur_msg ;
   bool idling ;
   bool busy ;
   bool running ;
   bool rt ;
   bool auto_runtime_pm ;
   bool cur_msg_prepared ;
   bool cur_msg_mapped ;
   struct completion xfer_completion ;
   size_t max_dma_len ;
   int (*prepare_transfer_hardware)(struct spi_master * ) ;
   int (*transfer_one_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_transfer_hardware)(struct spi_master * ) ;
   int (*prepare_message)(struct spi_master * , struct spi_message * ) ;
   int (*unprepare_message)(struct spi_master * , struct spi_message * ) ;
   void (*set_cs)(struct spi_device * , bool ) ;
   int (*transfer_one)(struct spi_master * , struct spi_device * , struct spi_transfer * ) ;
   int *cs_gpios ;
   struct dma_chan *dma_tx ;
   struct dma_chan *dma_rx ;
   void *dummy_rx ;
   void *dummy_tx ;
};
struct spi_transfer {
   void const *tx_buf ;
   void *rx_buf ;
   unsigned int len ;
   dma_addr_t tx_dma ;
   dma_addr_t rx_dma ;
   struct sg_table tx_sg ;
   struct sg_table rx_sg ;
   unsigned char cs_change : 1 ;
   unsigned char tx_nbits : 3 ;
   unsigned char rx_nbits : 3 ;
   u8 bits_per_word ;
   u16 delay_usecs ;
   u32 speed_hz ;
   struct list_head transfer_list ;
};
struct spi_message {
   struct list_head transfers ;
   struct spi_device *spi ;
   unsigned char is_dma_mapped : 1 ;
   void (*complete)(void * ) ;
   void *context ;
   unsigned int frame_length ;
   unsigned int actual_length ;
   int status ;
   struct list_head queue ;
   void *state ;
};
struct notifier_block;
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
typedef unsigned int mmc_pm_flag_t;
struct mmc_card;
struct sdio_func;
typedef void sdio_irq_handler_t(struct sdio_func * );
struct sdio_func_tuple {
   struct sdio_func_tuple *next ;
   unsigned char code ;
   unsigned char size ;
   unsigned char data[0U] ;
};
struct sdio_func {
   struct mmc_card *card ;
   struct device dev ;
   sdio_irq_handler_t *irq_handler ;
   unsigned int num ;
   unsigned char class ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned int max_blksize ;
   unsigned int cur_blksize ;
   unsigned int enable_timeout ;
   unsigned int state ;
   u8 tmpbuf[4U] ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   enum led_brightness brightness ;
   enum led_brightness max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   int (*brightness_set_sync)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct attribute_group const **groups ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   void (*flash_resume)(struct led_classdev * ) ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
   struct mutex led_access ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct fault_attr {
   unsigned long probability ;
   unsigned long interval ;
   atomic_t times ;
   atomic_t space ;
   unsigned long verbose ;
   u32 task_filter ;
   unsigned long stacktrace_depth ;
   unsigned long require_start ;
   unsigned long require_end ;
   unsigned long reject_start ;
   unsigned long reject_end ;
   unsigned long count ;
   struct ratelimit_state ratelimit_state ;
   struct dentry *dname ;
};
struct mmc_data;
struct mmc_request;
struct mmc_command {
   u32 opcode ;
   u32 arg ;
   u32 resp[4U] ;
   unsigned int flags ;
   unsigned int retries ;
   unsigned int error ;
   unsigned int busy_timeout ;
   bool sanitize_busy ;
   struct mmc_data *data ;
   struct mmc_request *mrq ;
};
struct mmc_data {
   unsigned int timeout_ns ;
   unsigned int timeout_clks ;
   unsigned int blksz ;
   unsigned int blocks ;
   unsigned int error ;
   unsigned int flags ;
   unsigned int bytes_xfered ;
   struct mmc_command *stop ;
   struct mmc_request *mrq ;
   unsigned int sg_len ;
   struct scatterlist *sg ;
   s32 host_cookie ;
};
struct mmc_host;
struct mmc_request {
   struct mmc_command *sbc ;
   struct mmc_command *cmd ;
   struct mmc_data *data ;
   struct mmc_command *stop ;
   struct completion completion ;
   void (*done)(struct mmc_request * ) ;
   struct mmc_host *host ;
};
struct mmc_async_req;
struct mmc_cid {
   unsigned int manfid ;
   char prod_name[8U] ;
   unsigned char prv ;
   unsigned int serial ;
   unsigned short oemid ;
   unsigned short year ;
   unsigned char hwrev ;
   unsigned char fwrev ;
   unsigned char month ;
};
struct mmc_csd {
   unsigned char structure ;
   unsigned char mmca_vsn ;
   unsigned short cmdclass ;
   unsigned short tacc_clks ;
   unsigned int tacc_ns ;
   unsigned int c_size ;
   unsigned int r2w_factor ;
   unsigned int max_dtr ;
   unsigned int erase_size ;
   unsigned int read_blkbits ;
   unsigned int write_blkbits ;
   unsigned int capacity ;
   unsigned char read_partial : 1 ;
   unsigned char read_misalign : 1 ;
   unsigned char write_partial : 1 ;
   unsigned char write_misalign : 1 ;
   unsigned char dsr_imp : 1 ;
};
struct mmc_ext_csd {
   u8 rev ;
   u8 erase_group_def ;
   u8 sec_feature_support ;
   u8 rel_sectors ;
   u8 rel_param ;
   u8 part_config ;
   u8 cache_ctrl ;
   u8 rst_n_function ;
   u8 max_packed_writes ;
   u8 max_packed_reads ;
   u8 packed_event_en ;
   unsigned int part_time ;
   unsigned int sa_timeout ;
   unsigned int generic_cmd6_time ;
   unsigned int power_off_longtime ;
   u8 power_off_notification ;
   unsigned int hs_max_dtr ;
   unsigned int hs200_max_dtr ;
   unsigned int sectors ;
   unsigned int hc_erase_size ;
   unsigned int hc_erase_timeout ;
   unsigned int sec_trim_mult ;
   unsigned int sec_erase_mult ;
   unsigned int trim_timeout ;
   bool partition_setting_completed ;
   unsigned long long enhanced_area_offset ;
   unsigned int enhanced_area_size ;
   unsigned int cache_size ;
   bool hpi_en ;
   bool hpi ;
   unsigned int hpi_cmd ;
   bool bkops ;
   bool man_bkops_en ;
   unsigned int data_sector_size ;
   unsigned int data_tag_unit_size ;
   unsigned int boot_ro_lock ;
   bool boot_ro_lockable ;
   bool ffu_capable ;
   u8 fwrev[8U] ;
   u8 raw_exception_status ;
   u8 raw_partition_support ;
   u8 raw_rpmb_size_mult ;
   u8 raw_erased_mem_count ;
   u8 raw_ext_csd_structure ;
   u8 raw_card_type ;
   u8 out_of_int_time ;
   u8 raw_pwr_cl_52_195 ;
   u8 raw_pwr_cl_26_195 ;
   u8 raw_pwr_cl_52_360 ;
   u8 raw_pwr_cl_26_360 ;
   u8 raw_s_a_timeout ;
   u8 raw_hc_erase_gap_size ;
   u8 raw_erase_timeout_mult ;
   u8 raw_hc_erase_grp_size ;
   u8 raw_sec_trim_mult ;
   u8 raw_sec_erase_mult ;
   u8 raw_sec_feature_support ;
   u8 raw_trim_mult ;
   u8 raw_pwr_cl_200_195 ;
   u8 raw_pwr_cl_200_360 ;
   u8 raw_pwr_cl_ddr_52_195 ;
   u8 raw_pwr_cl_ddr_52_360 ;
   u8 raw_pwr_cl_ddr_200_360 ;
   u8 raw_bkops_status ;
   u8 raw_sectors[4U] ;
   unsigned int feature_support ;
};
struct sd_scr {
   unsigned char sda_vsn ;
   unsigned char sda_spec3 ;
   unsigned char bus_widths ;
   unsigned char cmds ;
};
struct sd_ssr {
   unsigned int au ;
   unsigned int erase_timeout ;
   unsigned int erase_offset ;
};
struct sd_switch_caps {
   unsigned int hs_max_dtr ;
   unsigned int uhs_max_dtr ;
   unsigned int sd3_bus_mode ;
   unsigned int sd3_drv_type ;
   unsigned int sd3_curr_limit ;
};
struct sdio_cccr {
   unsigned int sdio_vsn ;
   unsigned int sd_vsn ;
   unsigned char multi_block : 1 ;
   unsigned char low_speed : 1 ;
   unsigned char wide_bus : 1 ;
   unsigned char high_power : 1 ;
   unsigned char high_speed : 1 ;
   unsigned char disable_cd : 1 ;
};
struct sdio_cis {
   unsigned short vendor ;
   unsigned short device ;
   unsigned short blksize ;
   unsigned int max_dtr ;
};
struct mmc_ios;
struct mmc_part {
   unsigned int size ;
   unsigned int part_cfg ;
   char name[20U] ;
   bool force_ro ;
   unsigned int area_type ;
};
struct mmc_card {
   struct mmc_host *host ;
   struct device dev ;
   u32 ocr ;
   unsigned int rca ;
   unsigned int type ;
   unsigned int state ;
   unsigned int quirks ;
   unsigned int erase_size ;
   unsigned int erase_shift ;
   unsigned int pref_erase ;
   u8 erased_byte ;
   u32 raw_cid[4U] ;
   u32 raw_csd[4U] ;
   u32 raw_scr[2U] ;
   struct mmc_cid cid ;
   struct mmc_csd csd ;
   struct mmc_ext_csd ext_csd ;
   struct sd_scr scr ;
   struct sd_ssr ssr ;
   struct sd_switch_caps sw_caps ;
   unsigned int sdio_funcs ;
   struct sdio_cccr cccr ;
   struct sdio_cis cis ;
   struct sdio_func *sdio_func[7U] ;
   struct sdio_func *sdio_single_irq ;
   unsigned int num_info ;
   char const **info ;
   struct sdio_func_tuple *tuples ;
   unsigned int sd_bus_speed ;
   unsigned int mmc_avail_type ;
   struct dentry *debugfs_root ;
   struct mmc_part part[7U] ;
   unsigned int nr_parts ;
};
struct mmc_ios {
   unsigned int clock ;
   unsigned short vdd ;
   unsigned char bus_mode ;
   unsigned char chip_select ;
   unsigned char power_mode ;
   unsigned char bus_width ;
   unsigned char timing ;
   unsigned char signal_voltage ;
   unsigned char drv_type ;
};
struct mmc_host_ops {
   int (*enable)(struct mmc_host * ) ;
   int (*disable)(struct mmc_host * ) ;
   void (*post_req)(struct mmc_host * , struct mmc_request * , int ) ;
   void (*pre_req)(struct mmc_host * , struct mmc_request * , bool ) ;
   void (*request)(struct mmc_host * , struct mmc_request * ) ;
   void (*set_ios)(struct mmc_host * , struct mmc_ios * ) ;
   int (*get_ro)(struct mmc_host * ) ;
   int (*get_cd)(struct mmc_host * ) ;
   void (*enable_sdio_irq)(struct mmc_host * , int ) ;
   void (*init_card)(struct mmc_host * , struct mmc_card * ) ;
   int (*start_signal_voltage_switch)(struct mmc_host * , struct mmc_ios * ) ;
   int (*card_busy)(struct mmc_host * ) ;
   int (*execute_tuning)(struct mmc_host * , u32 ) ;
   int (*prepare_hs400_tuning)(struct mmc_host * , struct mmc_ios * ) ;
   int (*select_drive_strength)(unsigned int , int , int ) ;
   void (*hw_reset)(struct mmc_host * ) ;
   void (*card_event)(struct mmc_host * ) ;
   int (*multi_io_quirk)(struct mmc_card * , unsigned int , int ) ;
};
struct mmc_async_req {
   struct mmc_request *mrq ;
   int (*err_check)(struct mmc_card * , struct mmc_async_req * ) ;
};
struct mmc_slot {
   int cd_irq ;
   void *handler_priv ;
};
struct mmc_context_info {
   bool is_done_rcv ;
   bool is_new_req ;
   bool is_waiting_last_req ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
};
struct regulator;
struct mmc_pwrseq;
struct mmc_supply {
   struct regulator *vmmc ;
   struct regulator *vqmmc ;
};
struct mmc_bus_ops;
struct mmc_host {
   struct device *parent ;
   struct device class_dev ;
   int index ;
   struct mmc_host_ops const *ops ;
   struct mmc_pwrseq *pwrseq ;
   unsigned int f_min ;
   unsigned int f_max ;
   unsigned int f_init ;
   u32 ocr_avail ;
   u32 ocr_avail_sdio ;
   u32 ocr_avail_sd ;
   u32 ocr_avail_mmc ;
   struct notifier_block pm_notify ;
   u32 max_current_330 ;
   u32 max_current_300 ;
   u32 max_current_180 ;
   u32 caps ;
   u32 caps2 ;
   mmc_pm_flag_t pm_caps ;
   int clk_requests ;
   unsigned int clk_delay ;
   bool clk_gated ;
   struct delayed_work clk_gate_work ;
   unsigned int clk_old ;
   spinlock_t clk_lock ;
   struct mutex clk_gate_mutex ;
   struct device_attribute clkgate_delay_attr ;
   unsigned long clkgate_delay ;
   unsigned int max_seg_size ;
   unsigned short max_segs ;
   unsigned short unused ;
   unsigned int max_req_size ;
   unsigned int max_blk_size ;
   unsigned int max_blk_count ;
   unsigned int max_busy_timeout ;
   spinlock_t lock ;
   struct mmc_ios ios ;
   unsigned char use_spi_crc : 1 ;
   unsigned char claimed : 1 ;
   unsigned char bus_dead : 1 ;
   unsigned char removed : 1 ;
   int rescan_disable ;
   int rescan_entered ;
   bool trigger_card_event ;
   struct mmc_card *card ;
   wait_queue_head_t wq ;
   struct task_struct *claimer ;
   int claim_cnt ;
   struct delayed_work detect ;
   int detect_change ;
   struct mmc_slot slot ;
   struct mmc_bus_ops const *bus_ops ;
   unsigned int bus_refs ;
   unsigned int sdio_irqs ;
   struct task_struct *sdio_irq_thread ;
   bool sdio_irq_pending ;
   atomic_t sdio_irq_thread_abort ;
   mmc_pm_flag_t pm_flags ;
   struct led_trigger *led ;
   bool regulator_enabled ;
   struct mmc_supply supply ;
   struct dentry *debugfs_root ;
   struct mmc_async_req *areq ;
   struct mmc_context_info context_info ;
   struct fault_attr fail_mmc_request ;
   unsigned int actual_clock ;
   unsigned int slotno ;
   int dsr_req ;
   u32 dsr ;
   unsigned long private[0U] ;
};
typedef int ldv_map;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
void ldv_assume(int expression ) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_check_alloc_nonatomic(void)
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_nonatomic();
  ldv_linux_alloc_usb_lock_check_alloc_nonatomic();
  }
  return;
}
}
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  {
  ldv_linux_alloc_irq_check_alloc_flags(flags);
  ldv_linux_alloc_usb_lock_check_alloc_flags(flags);
  }
  return;
}
}
void ldv_check_for_read_section(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section();
  ldv_linux_kernel_rcu_update_lock_check_for_read_section();
  ldv_linux_kernel_rcu_srcu_check_for_read_section();
  }
  return;
}
}
void *ldv_malloc(size_t size ) ;
void *ldv_create_class(void)
{
  void *res1 ;
  void *tmp ;
  void *res2 ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_create_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_create_class(res1);
  res2 = tmp___0;
  ldv_assume((unsigned long )res1 == (unsigned long )res2);
  }
  return (res1);
}
}
int ldv_register_class(void)
{
  int res1 ;
  int tmp ;
  int res2 ;
  int tmp___0 ;
  {
  {
  tmp = ldv_linux_drivers_base_class_register_class();
  res1 = tmp;
  tmp___0 = ldv_linux_usb_gadget_register_class();
  res2 = tmp___0;
  ldv_assume(res1 == res2);
  }
  return (res1);
}
}
void *ldv_linux_arch_io_io_mem_remap(size_t size ) ;
void ldv_linux_arch_io_io_mem_unmap(void) ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("":);
  return (0);
  return (1);
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t * ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_bd_intr_lock_of_dgnc_board(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_bd_lock_of_dgnc_board(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_ch_lock_of_channel_t(void) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern unsigned long volatile jiffies ;
__inline static unsigned char readb(void const volatile *addr )
{
  unsigned char ret ;
  {
  __asm__ volatile ("movb %1,%0": "=q" (ret): "m" (*((unsigned char volatile *)addr)): "memory");
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
__inline static void *ioremap(resource_size_t offset , unsigned long size ) ;
static void ldv_iounmap_121(void volatile *ldv_func_arg1 ) ;
extern void schedule(void) ;
extern void __const_udelay(unsigned long ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  }
  if (tmp == 0) {
    {
    __tasklet_schedule(t);
    }
  } else {
  }
  return;
}
}
struct board_ops dgnc_cls_ops ;
void dgnc_input(struct channel_t *ch ) ;
void dgnc_carrier(struct channel_t *ch ) ;
void dgnc_wakeup_writes(struct channel_t *ch ) ;
void dgnc_check_queue_flow_control(struct channel_t *ch ) ;
__inline static void cls_parse_isr(struct dgnc_board *brd , uint port ) ;
__inline static void cls_clear_break(struct channel_t *ch , int force ) ;
__inline static void cls_set_cts_flow_control(struct channel_t *ch ) ;
__inline static void cls_set_rts_flow_control(struct channel_t *ch ) ;
__inline static void cls_set_ixon_flow_control(struct channel_t *ch ) ;
__inline static void cls_set_ixoff_flow_control(struct channel_t *ch ) ;
__inline static void cls_set_no_output_flow_control(struct channel_t *ch ) ;
__inline static void cls_set_no_input_flow_control(struct channel_t *ch ) ;
static void cls_parse_modem(struct channel_t *ch , unsigned char signals ) ;
static void cls_tasklet(unsigned long data ) ;
static void cls_vpd(struct dgnc_board *brd ) ;
static void cls_uart_init(struct channel_t *ch ) ;
static void cls_uart_off(struct channel_t *ch ) ;
static int cls_drain(struct tty_struct *tty , uint seconds ) ;
static void cls_param(struct tty_struct *tty ) ;
static void cls_assert_modem_signals(struct channel_t *ch ) ;
static void cls_flush_uart_write(struct channel_t *ch ) ;
static void cls_flush_uart_read(struct channel_t *ch ) ;
static void cls_disable_receiver(struct channel_t *ch ) ;
static void cls_enable_receiver(struct channel_t *ch ) ;
static void cls_send_break(struct channel_t *ch , int msecs ) ;
static void cls_send_start_character(struct channel_t *ch ) ;
static void cls_send_stop_character(struct channel_t *ch ) ;
static void cls_copy_data_from_uart_to_queue(struct channel_t *ch ) ;
static void cls_copy_data_from_queue_to_uart(struct channel_t *ch ) ;
static uint cls_get_uart_bytes_left(struct channel_t *ch ) ;
static void cls_send_immediate_char(struct channel_t *ch , unsigned char c ) ;
static irqreturn_t cls_intr(int irq , void *voidbrd ) ;
struct board_ops dgnc_cls_ops =
     {& cls_tasklet, & cls_intr, & cls_uart_init, & cls_uart_off, & cls_drain, & cls_param,
    & cls_vpd, & cls_assert_modem_signals, & cls_flush_uart_write, & cls_flush_uart_read,
    & cls_disable_receiver, & cls_enable_receiver, & cls_send_break, & cls_send_start_character,
    & cls_send_stop_character, & cls_copy_data_from_queue_to_uart, & cls_get_uart_bytes_left,
    & cls_send_immediate_char};
__inline static void cls_set_cts_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 144U;
  isr_fcr = (unsigned int )isr_fcr & 253U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier | 128U;
  ier = (unsigned int )ier & 223U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(147, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_t_tlevel = 16U;
  }
  return;
}
}
__inline static void cls_set_ixon_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 18U;
  isr_fcr = (unsigned int )isr_fcr & 127U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->lsr));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->msr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->spr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 127U;
  ier = (unsigned int )ier | 32U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  }
  return;
}
}
__inline static void cls_set_no_output_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 16U;
  isr_fcr = (unsigned int )isr_fcr & 125U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 127U;
  ier = (unsigned int )ier & 223U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_r_watermark = 0U;
  ch->ch_t_tlevel = 16U;
  ch->ch_r_tlevel = 16U;
  }
  return;
}
}
__inline static void cls_set_rts_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 80U;
  isr_fcr = (unsigned int )isr_fcr & 247U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier | 64U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(147, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_r_watermark = 4U;
  ch->ch_r_tlevel = 8U;
  }
  return;
}
}
__inline static void cls_set_ixoff_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 24U;
  isr_fcr = (unsigned int )isr_fcr & 191U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->lsr));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->msr));
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->spr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 191U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  }
  return;
}
}
__inline static void cls_set_no_input_flow_control(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char ier ;
  unsigned char tmp___0 ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = tmp___0;
  isr_fcr = 0U;
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 16U;
  isr_fcr = (unsigned int )isr_fcr & 183U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  ier = (unsigned int )ier & 191U;
  writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(1, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb(83, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  ch->ch_t_tlevel = 16U;
  ch->ch_r_tlevel = 16U;
  }
  return;
}
}
__inline static void cls_clear_break(struct channel_t *ch , int force )
{
  unsigned long flags ;
  unsigned char temp ;
  unsigned char tmp ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(& ch->ch_lock);
  }
  if (ch->ch_stop_sending_break == 0UL) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 4096U) != 0U) {
    if ((long )(ch->ch_stop_sending_break - (unsigned long )jiffies) < 0L || force != 0) {
      {
      tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
      temp = tmp;
      writeb((int )temp & 191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
      ch->ch_flags = ch->ch_flags & 4294963199U;
      ch->ch_stop_sending_break = 0UL;
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
__inline static void cls_parse_isr(struct dgnc_board *brd , uint port )
{
  struct channel_t *ch ;
  unsigned char isr ;
  unsigned long flags ;
  unsigned char tmp ;
  {
  isr = 0U;
  if (port > brd->nasync) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  ldv_35764:
  {
  isr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  }
  if ((int )isr & 1) {
    goto ldv_35763;
  } else {
  }
  if (((int )isr & 12) != 0) {
    {
    brd->intr_rx = brd->intr_rx + 1UL;
    ch->ch_intr_rx = ch->ch_intr_rx + 1UL;
    cls_copy_data_from_uart_to_queue(ch);
    dgnc_check_queue_flow_control(ch);
    }
  } else {
  }
  if (((int )isr & 2) != 0) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(& ch->ch_lock);
    ch->ch_flags = ch->ch_flags | 3072U;
    brd->intr_tx = brd->intr_tx + 1UL;
    ch->ch_intr_tx = ch->ch_intr_tx + 1UL;
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    cls_copy_data_from_queue_to_uart(ch);
    }
  } else {
  }
  if (((int )isr & 32) != 0) {
    brd->intr_modem = brd->intr_modem + 1UL;
    ch->ch_intr_modem = ch->ch_intr_modem + 1UL;
  } else {
  }
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  cls_parse_modem(ch, (int )tmp);
  }
  goto ldv_35764;
  ldv_35763: ;
  return;
}
}
static void cls_param(struct tty_struct *tty )
{
  unsigned char lcr ;
  unsigned char uart_lcr ;
  unsigned char ier ;
  unsigned char uart_ier ;
  uint baud ;
  int quot ;
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int iindex ;
  int jindex ;
  ulong bauds[4U][16U] ;
  unsigned char tmp ;
  {
  lcr = 0U;
  uart_lcr = 0U;
  ier = 0U;
  uart_ier = 0U;
  baud = 9600U;
  quot = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  if ((ch->ch_c_cflag & 4111U) == 0U) {
    {
    ch->ch_r_head = 0U;
    ch->ch_r_tail = 0U;
    ch->ch_e_head = 0U;
    ch->ch_e_tail = 0U;
    ch->ch_w_head = 0U;
    ch->ch_w_tail = 0U;
    cls_flush_uart_write(ch);
    cls_flush_uart_read(ch);
    ch->ch_flags = ch->ch_flags | 32768U;
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 252U;
    cls_assert_modem_signals(ch);
    ch->ch_old_baud = 0U;
    }
    return;
  } else
  if (ch->ch_custom_speed != 0U) {
    baud = ch->ch_custom_speed;
    if ((ch->ch_flags & 32768U) != 0U) {
      ch->ch_flags = ch->ch_flags & 4294934527U;
      if ((int )((short )ch->ch_digi.digi_flags) >= 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      } else {
      }
      if (((int )ch->ch_digi.digi_flags & 8192) == 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      } else {
      }
    } else {
    }
  } else {
    iindex = 0;
    jindex = 0;
    bauds[0][0] = 0UL;
    bauds[0][1] = 50UL;
    bauds[0][2] = 75UL;
    bauds[0][3] = 110UL;
    bauds[0][4] = 134UL;
    bauds[0][5] = 150UL;
    bauds[0][6] = 200UL;
    bauds[0][7] = 300UL;
    bauds[0][8] = 600UL;
    bauds[0][9] = 1200UL;
    bauds[0][10] = 1800UL;
    bauds[0][11] = 2400UL;
    bauds[0][12] = 4800UL;
    bauds[0][13] = 9600UL;
    bauds[0][14] = 19200UL;
    bauds[0][15] = 38400UL;
    bauds[1][0] = 0UL;
    bauds[1][1] = 57600UL;
    bauds[1][2] = 115200UL;
    bauds[1][3] = 230400UL;
    bauds[1][4] = 460800UL;
    bauds[1][5] = 150UL;
    bauds[1][6] = 200UL;
    bauds[1][7] = 921600UL;
    bauds[1][8] = 600UL;
    bauds[1][9] = 1200UL;
    bauds[1][10] = 1800UL;
    bauds[1][11] = 2400UL;
    bauds[1][12] = 4800UL;
    bauds[1][13] = 9600UL;
    bauds[1][14] = 19200UL;
    bauds[1][15] = 38400UL;
    bauds[2][0] = 0UL;
    bauds[2][1] = 57600UL;
    bauds[2][2] = 76800UL;
    bauds[2][3] = 115200UL;
    bauds[2][4] = 131657UL;
    bauds[2][5] = 153600UL;
    bauds[2][6] = 230400UL;
    bauds[2][7] = 460800UL;
    bauds[2][8] = 921600UL;
    bauds[2][9] = 1200UL;
    bauds[2][10] = 1800UL;
    bauds[2][11] = 2400UL;
    bauds[2][12] = 4800UL;
    bauds[2][13] = 9600UL;
    bauds[2][14] = 19200UL;
    bauds[2][15] = 38400UL;
    bauds[3][0] = 0UL;
    bauds[3][1] = 57600UL;
    bauds[3][2] = 115200UL;
    bauds[3][3] = 230400UL;
    bauds[3][4] = 460800UL;
    bauds[3][5] = 150UL;
    bauds[3][6] = 200UL;
    bauds[3][7] = 921600UL;
    bauds[3][8] = 600UL;
    bauds[3][9] = 1200UL;
    bauds[3][10] = 1800UL;
    bauds[3][11] = 2400UL;
    bauds[3][12] = 4800UL;
    bauds[3][13] = 9600UL;
    bauds[3][14] = 19200UL;
    bauds[3][15] = 38400UL;
    if ((ch->ch_tun.un_flags & 1U) == 0U && un->un_type == 1U) {
      baud = (ch->ch_pun.un_tty)->termios.c_cflag & 15U;
    } else {
      baud = (ch->ch_tun.un_tty)->termios.c_cflag & 15U;
    }
    if ((ch->ch_c_cflag & 4096U) != 0U) {
      iindex = 1;
    } else {
    }
    if (((int )ch->ch_digi.digi_flags & 2) != 0) {
      iindex = iindex + 2;
    } else {
    }
    jindex = (int )baud;
    if (((unsigned int )iindex <= 3U && jindex >= 0) && jindex <= 15) {
      baud = (uint )bauds[iindex][jindex];
    } else {
      baud = 0U;
    }
    if (baud == 0U) {
      baud = 9600U;
    } else {
    }
    if ((ch->ch_flags & 32768U) != 0U) {
      ch->ch_flags = ch->ch_flags & 4294934527U;
      if ((int )((short )ch->ch_digi.digi_flags) >= 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      } else {
      }
      if (((int )ch->ch_digi.digi_flags & 8192) == 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      } else {
      }
    } else {
    }
  }
  if ((ch->ch_c_cflag & 256U) != 0U) {
    lcr = (unsigned int )lcr | 8U;
  } else {
  }
  if ((ch->ch_c_cflag & 512U) == 0U) {
    lcr = (unsigned int )lcr | 16U;
  } else {
  }
  if ((ch->ch_c_cflag & 1073741824U) != 0U) {
    lcr = (unsigned int )lcr | 32U;
  } else {
  }
  if ((ch->ch_c_cflag & 64U) != 0U) {
    lcr = (unsigned int )lcr | 4U;
  } else {
  }
  {
  if ((ch->ch_c_cflag & 48U) == 0U) {
    goto case_0;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 16U) {
    goto case_16;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 32U) {
    goto case_32;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 48U) {
    goto case_48;
  } else {
  }
  goto switch_default;
  case_0:
  lcr = lcr;
  goto ldv_35781;
  case_16:
  lcr = (unsigned int )lcr | 1U;
  goto ldv_35781;
  case_32:
  lcr = (unsigned int )lcr | 2U;
  goto ldv_35781;
  case_48: ;
  switch_default:
  lcr = (unsigned int )lcr | 3U;
  goto ldv_35781;
  switch_break: ;
  }
  ldv_35781:
  {
  uart_ier = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  ier = uart_ier;
  uart_lcr = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  }
  if (baud == 0U) {
    baud = 9600U;
  } else {
  }
  quot = (int )((ch->ch_bd)->bd_dividend / baud);
  if (quot != 0 && ch->ch_old_baud != baud) {
    {
    ch->ch_old_baud = baud;
    writeb(128, (void volatile *)(& (ch->ch_cls_uart)->lcr));
    writeb((int )((unsigned char )quot), (void volatile *)(& (ch->ch_cls_uart)->txrx));
    writeb((int )((unsigned char )(quot >> 8)), (void volatile *)(& (ch->ch_cls_uart)->ier));
    writeb((int )lcr, (void volatile *)(& (ch->ch_cls_uart)->lcr));
    }
  } else {
  }
  if ((int )uart_lcr != (int )lcr) {
    {
    writeb((int )lcr, (void volatile *)(& (ch->ch_cls_uart)->lcr));
    }
  } else {
  }
  if ((ch->ch_c_cflag & 128U) != 0U) {
    ier = (unsigned int )ier | 5U;
  } else {
    ier = (unsigned int )ier & 250U;
  }
  if (((((unsigned int )ch->ch_digi.digi_flags & 12U) != 0U || (int )ch->ch_c_cflag < 0) || ((int )ch->ch_digi.digi_flags & 256) == 0) || (ch->ch_c_cflag & 2048U) == 0U) {
    ier = (unsigned int )ier | 8U;
  } else {
    ier = (unsigned int )ier & 247U;
  }
  ier = (unsigned int )ier | 2U;
  if ((int )ier != (int )uart_ier) {
    {
    writeb((int )ier, (void volatile *)(& (ch->ch_cls_uart)->ier));
    }
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 8) != 0 || (int )ch->ch_c_cflag < 0) {
    {
    cls_set_cts_flow_control(ch);
    }
  } else
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      {
      cls_set_no_output_flow_control(ch);
      }
    } else {
      {
      cls_set_ixon_flow_control(ch);
      }
    }
  } else {
    {
    cls_set_no_output_flow_control(ch);
    }
  }
  if (((int )ch->ch_digi.digi_flags & 4) != 0 || (int )ch->ch_c_cflag < 0) {
    {
    cls_set_rts_flow_control(ch);
    }
  } else
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      {
      cls_set_no_input_flow_control(ch);
      }
    } else {
      {
      cls_set_ixoff_flow_control(ch);
      }
    }
  } else {
    {
    cls_set_no_input_flow_control(ch);
    }
  }
  {
  cls_assert_modem_signals(ch);
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  cls_parse_modem(ch, (int )tmp);
  }
  return;
}
}
static void cls_tasklet(unsigned long data )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  unsigned long flags ;
  int i ;
  int state ;
  int ports ;
  {
  bd = (struct dgnc_board *)data;
  state = 0;
  ports = 0;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(& bd->bd_lock);
  state = (int )bd->state;
  ports = (int )bd->nasync;
  ldv_spin_unlock_irqrestore_102(& bd->bd_lock, flags);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(& bd->bd_intr_lock);
  }
  if (state == 2 && ports > 0) {
    i = 0;
    goto ldv_35797;
    ldv_35796:
    ch = bd->channels[i];
    if ((unsigned long )ch == (unsigned long )((struct channel_t *)0)) {
      goto ldv_35795;
    } else {
    }
    {
    dgnc_input(ch);
    cls_copy_data_from_queue_to_uart(ch);
    dgnc_wakeup_writes(ch);
    dgnc_carrier(ch);
    }
    if (ch->ch_stop_sending_break != 0UL) {
      {
      cls_clear_break(ch, 0);
      }
    } else {
    }
    ldv_35795:
    i = i + 1;
    ldv_35797: ;
    if (i < ports) {
      goto ldv_35796;
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_104(& bd->bd_intr_lock, flags);
  }
  return;
}
}
static irqreturn_t cls_intr(int irq , void *voidbrd )
{
  struct dgnc_board *brd ;
  uint i ;
  unsigned char poll_reg ;
  unsigned long flags ;
  {
  brd = (struct dgnc_board *)voidbrd;
  i = 0U;
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return (0);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(& brd->bd_intr_lock);
  brd->intr_count = brd->intr_count + 1UL;
  poll_reg = readb((void const volatile *)brd->re_map_membase + 64U);
  }
  if ((unsigned int )poll_reg == 0U) {
    {
    ldv_spin_unlock_irqrestore_104(& brd->bd_intr_lock, flags);
    }
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_35808;
  ldv_35807:
  {
  cls_parse_isr(brd, i);
  i = i + 1U;
  }
  ldv_35808: ;
  if (i < brd->nasync) {
    goto ldv_35807;
  } else {
  }
  {
  tasklet_schedule(& brd->helper_tasklet);
  ldv_spin_unlock_irqrestore_104(& brd->bd_intr_lock, flags);
  }
  return (1);
}
}
static void cls_disable_receiver(struct channel_t *ch )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp & 254U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_cls_uart)->ier));
  }
  return;
}
}
static void cls_enable_receiver(struct channel_t *ch )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp | 1U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_cls_uart)->ier));
  }
  return;
}
}
static void cls_copy_data_from_uart_to_queue(struct channel_t *ch )
{
  int qleft ;
  unsigned char linestatus ;
  unsigned char error_mask ;
  ushort head ;
  ushort tail ;
  unsigned long flags ;
  unsigned char discard ;
  {
  qleft = 0;
  linestatus = 0U;
  error_mask = 0U;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(& ch->ch_lock);
  head = ch->ch_r_head;
  tail = ch->ch_r_tail;
  qleft = ((int )tail - (int )head) + -1;
  }
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if ((int )ch->ch_c_iflag & 1) {
    error_mask = (unsigned int )error_mask | 16U;
  } else {
  }
  ldv_35833:
  {
  linestatus = readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  }
  if (((int )linestatus & 1) == 0) {
    goto ldv_35827;
  } else {
  }
  if ((unsigned int )((int )linestatus & (int )error_mask) != 0U) {
    {
    linestatus = 0U;
    discard = readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
    }
    goto ldv_35829;
  } else {
  }
  goto ldv_35831;
  ldv_35830:
  tail = (unsigned int )((ushort )((unsigned int )tail + 1U)) & 8191U;
  ch->ch_r_tail = tail;
  ch->ch_err_overrun = ch->ch_err_overrun + 1UL;
  qleft = qleft + 1;
  ldv_35831: ;
  if (qleft <= 0) {
    goto ldv_35830;
  } else {
  }
  {
  *(ch->ch_equeue + (unsigned long )head) = (unsigned int )linestatus & 28U;
  *(ch->ch_rqueue + (unsigned long )head) = readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
  qleft = qleft - 1;
  }
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 4) != 0) {
    ch->ch_err_parity = ch->ch_err_parity + 1UL;
  } else {
  }
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 16) != 0) {
    ch->ch_err_break = ch->ch_err_break + 1UL;
  } else {
  }
  if (((int )*(ch->ch_equeue + (unsigned long )head) & 8) != 0) {
    ch->ch_err_frame = ch->ch_err_frame + 1UL;
  } else {
  }
  head = (unsigned int )((ushort )((unsigned int )head + 1U)) & 8191U;
  ch->ch_rxcount = ch->ch_rxcount + 1UL;
  ldv_35829: ;
  goto ldv_35833;
  ldv_35827:
  {
  ch->ch_r_head = (unsigned int )head & 8191U;
  ch->ch_e_head = (unsigned int )head & 8191U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static int cls_drain(struct tty_struct *tty , uint seconds )
{
  unsigned long flags ;
  struct channel_t *ch ;
  struct un_t *un ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (-6);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-6);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-6);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(& ch->ch_lock);
  un->un_flags = un->un_flags | 128U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  __ret = 0;
  __might_sleep("drivers/staging/dgnc/dgnc_cls.c", 978, 0);
  }
  if ((un->un_flags & 128U) != 0U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_35847:
    {
    tmp = prepare_to_wait_event(& un->un_flags_wait, & __wait, 1);
    __int = tmp;
    }
    if ((un->un_flags & 128U) == 0U) {
      goto ldv_35846;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_35846;
    } else {
    }
    {
    schedule();
    }
    goto ldv_35847;
    ldv_35846:
    {
    finish_wait(& un->un_flags_wait, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  return (__ret);
}
}
static void cls_flush_uart_write(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  writeb(5, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  __const_udelay(42950UL);
  ch->ch_flags = ch->ch_flags | 3072U;
  }
  return;
}
}
static void cls_flush_uart_read(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  __const_udelay(42950UL);
  }
  return;
}
}
static void cls_copy_data_from_queue_to_uart(struct channel_t *ch )
{
  ushort head ;
  ushort tail ;
  int n ;
  int qlen ;
  uint len_written ;
  unsigned long flags ;
  int _min1 ;
  int _min2 ;
  {
  len_written = 0U;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(& ch->ch_lock);
  }
  if ((int )ch->ch_w_tail == (int )ch->ch_w_head) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 3072U) == 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  n = 32;
  head = (unsigned int )ch->ch_w_head & 4095U;
  tail = (unsigned int )ch->ch_w_tail & 4095U;
  qlen = ((int )head - (int )tail) & 4095;
  _min1 = n;
  _min2 = qlen;
  n = _min1 < _min2 ? _min1 : _min2;
  goto ldv_35869;
  ldv_35868: ;
  if ((int )((short )ch->ch_digi.digi_flags) < 0) {
    if (((int )ch->ch_mostat & 2) == 0) {
      {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      cls_assert_modem_signals(ch);
      }
    } else {
    }
    ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 8192) != 0) {
    if (((int )ch->ch_mostat & 1) == 0) {
      {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      cls_assert_modem_signals(ch);
      }
    } else {
    }
    ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
  } else {
  }
  {
  writeb((int )*(ch->ch_wqueue + (unsigned long )ch->ch_w_tail), (void volatile *)(& (ch->ch_cls_uart)->txrx));
  ch->ch_w_tail = (ushort )((int )ch->ch_w_tail + 1);
  ch->ch_w_tail = (unsigned int )ch->ch_w_tail & 4095U;
  ch->ch_txcount = ch->ch_txcount + 1UL;
  len_written = len_written + 1U;
  n = n - 1;
  }
  ldv_35869: ;
  if (n > 0) {
    goto ldv_35868;
  } else {
  }
  if (len_written != 0U) {
    ch->ch_flags = ch->ch_flags & 4294964223U;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void cls_parse_modem(struct channel_t *ch , unsigned char signals )
{
  unsigned char msignals ;
  unsigned long flags ;
  unsigned char mswap ;
  {
  msignals = signals;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(& ch->ch_lock);
  }
  if (((int )ch->ch_digi.digi_flags & 512) != 0) {
    mswap = signals;
    if (((int )mswap & 8) != 0) {
      msignals = (unsigned int )msignals & 247U;
      msignals = (unsigned int )msignals | 2U;
    } else {
    }
    if (((int )mswap & 2) != 0) {
      msignals = (unsigned int )msignals & 253U;
      msignals = (unsigned int )msignals | 8U;
    } else {
    }
    if ((int )((signed char )mswap) < 0) {
      msignals = (unsigned int )msignals & 127U;
      msignals = (unsigned int )msignals | 32U;
    } else {
    }
    if (((int )mswap & 32) != 0) {
      msignals = (unsigned int )msignals & 223U;
      msignals = (unsigned int )msignals | 128U;
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  signals = (unsigned int )signals & 240U;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(& ch->ch_lock);
  }
  if ((int )((signed char )msignals) < 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 128U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 127U;
  }
  if (((int )msignals & 32) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 32U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 223U;
  }
  if (((int )msignals & 64) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 64U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 191U;
  }
  if (((int )msignals & 16) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 16U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 239U;
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void cls_assert_modem_signals(struct channel_t *ch )
{
  unsigned char out ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  out = ch->ch_mostat;
  if ((ch->ch_flags & 8192U) != 0U) {
    out = (unsigned int )out | 16U;
  } else {
  }
  {
  writeb((int )out, (void volatile *)(& (ch->ch_cls_uart)->mcr));
  __const_udelay(42950UL);
  }
  return;
}
}
static void cls_send_start_character(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_startc != 0U) {
    {
    ch->ch_xon_sends = ch->ch_xon_sends + 1UL;
    writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_cls_uart)->txrx));
    }
  } else {
  }
  return;
}
}
static void cls_send_stop_character(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_stopc != 0U) {
    {
    ch->ch_xoff_sends = ch->ch_xoff_sends + 1UL;
    writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_cls_uart)->txrx));
    }
  } else {
  }
  return;
}
}
static void cls_uart_init(struct channel_t *ch )
{
  unsigned char lcrb ;
  unsigned char tmp ;
  unsigned char isr_fcr ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
  lcrb = tmp;
  isr_fcr = 0U;
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->ier));
  writeb(191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  isr_fcr = readb((void const volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  isr_fcr = (unsigned int )isr_fcr | 16U;
  writeb((int )isr_fcr, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  writeb((int )lcrb, (void volatile *)(& (ch->ch_cls_uart)->lcr));
  readb((void const volatile *)(& (ch->ch_cls_uart)->txrx));
  writeb(7, (void volatile *)(& (ch->ch_cls_uart)->isr_fcr));
  __const_udelay(42950UL);
  ch->ch_flags = ch->ch_flags | 3584U;
  readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  readb((void const volatile *)(& (ch->ch_cls_uart)->msr));
  }
  return;
}
}
static void cls_uart_off(struct channel_t *ch )
{
  {
  {
  writeb(0, (void volatile *)(& (ch->ch_cls_uart)->ier));
  }
  return;
}
}
static uint cls_get_uart_bytes_left(struct channel_t *ch )
{
  unsigned char left ;
  unsigned char lsr ;
  {
  left = 0U;
  lsr = 0U;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0U);
  } else {
  }
  {
  lsr = readb((void const volatile *)(& (ch->ch_cls_uart)->lsr));
  }
  if (((int )lsr & 64) == 0) {
    if ((ch->ch_flags & 1024U) != 0U) {
      {
      tasklet_schedule(& (ch->ch_bd)->helper_tasklet);
      }
    } else {
    }
    left = 1U;
  } else {
    ch->ch_flags = ch->ch_flags | 3072U;
    left = 0U;
  }
  return ((uint )left);
}
}
static void cls_send_break(struct channel_t *ch , int msecs )
{
  unsigned char temp ;
  unsigned char tmp ;
  unsigned char temp___0 ;
  unsigned char tmp___0 ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if (msecs == 0) {
    if ((ch->ch_flags & 4096U) != 0U) {
      {
      tmp = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
      temp = tmp;
      writeb((int )temp & 191, (void volatile *)(& (ch->ch_cls_uart)->lcr));
      ch->ch_flags = ch->ch_flags & 4294963199U;
      ch->ch_stop_sending_break = 0UL;
      }
    } else {
    }
    return;
  } else {
  }
  ch->ch_stop_sending_break = (unsigned long )jiffies + (unsigned long )((msecs * 250) / 1000);
  if ((ch->ch_flags & 4096U) == 0U) {
    {
    tmp___0 = readb((void const volatile *)(& (ch->ch_cls_uart)->lcr));
    temp___0 = tmp___0;
    writeb((int )((unsigned int )temp___0 | 64U), (void volatile *)(& (ch->ch_cls_uart)->lcr));
    ch->ch_flags = ch->ch_flags | 4096U;
    }
  } else {
  }
  return;
}
}
static void cls_send_immediate_char(struct channel_t *ch , unsigned char c )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  writeb((int )c, (void volatile *)(& (ch->ch_cls_uart)->txrx));
  }
  return;
}
}
static void cls_vpd(struct dgnc_board *brd )
{
  ulong vpdbase ;
  u8 *re_map_vpdbase ;
  int i ;
  void *tmp ;
  {
  i = 0;
  vpdbase = (ulong )(brd->pdev)->resource[3].start;
  if (vpdbase == 0UL) {
    return;
  } else {
  }
  {
  tmp = ioremap((resource_size_t )vpdbase, 1024UL);
  re_map_vpdbase = (u8 *)tmp;
  }
  if ((unsigned long )re_map_vpdbase == (unsigned long )((u8 *)0U)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_35918;
  ldv_35917:
  {
  brd->vpd[i] = readb((void const volatile *)re_map_vpdbase + (unsigned long )i);
  printk("\016%x ", (int )brd->vpd[i]);
  i = i + 1;
  }
  ldv_35918: ;
  if (i <= 63) {
    goto ldv_35917;
  } else {
  }
  {
  printk("\016\n");
  }
  if ((unsigned long )re_map_vpdbase != (unsigned long )((u8 *)0U)) {
    {
    ldv_iounmap_121((void volatile *)re_map_vpdbase);
    }
  } else {
  }
  return;
}
}
void ldv_tty_instance_callback_9_17(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_42(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_43(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_44(int (*arg0)(struct tty_struct * , unsigned int ) ,
                                    struct tty_struct *arg1 , unsigned int arg2 ) ;
void ldv_tty_instance_callback_9_47(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_50(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_51(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_52(unsigned int (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_54(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 ) ;
void ldv_tty_instance_callback_9_60(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_64(void (*arg0)(struct channel_t * , int ) , struct channel_t *arg1 ,
                                    int arg2 ) ;
void ldv_tty_instance_callback_9_67(void (*arg0)(struct channel_t * , unsigned char ) ,
                                    struct channel_t *arg1 , unsigned char arg2 ) ;
void ldv_tty_instance_callback_9_70(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_71(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_75(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_tty_instance_callback_9_82(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_83(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_9_84(void (*arg0)(struct dgnc_board * ) , struct dgnc_board *arg1 ) ;
void ldv_tty_instance_callback_9_17(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_assert_modem_signals(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_42(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_copy_data_from_queue_to_uart(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_43(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_disable_receiver(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_44(int (*arg0)(struct tty_struct * , unsigned int ) ,
                                    struct tty_struct *arg1 , unsigned int arg2 )
{
  {
  {
  cls_drain(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_47(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_enable_receiver(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_50(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_flush_uart_read(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_51(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_flush_uart_write(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_52(unsigned int (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_get_uart_bytes_left(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_54(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                    void *arg2 )
{
  {
  {
  cls_intr(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_60(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  cls_param(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_64(void (*arg0)(struct channel_t * , int ) , struct channel_t *arg1 ,
                                    int arg2 )
{
  {
  {
  cls_send_break(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_67(void (*arg0)(struct channel_t * , unsigned char ) ,
                                    struct channel_t *arg1 , unsigned char arg2 )
{
  {
  {
  cls_send_immediate_char(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_70(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_send_start_character(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_71(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_send_stop_character(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_75(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  cls_tasklet(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_82(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_uart_init(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_83(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  cls_uart_off(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_84(void (*arg0)(struct dgnc_board * ) , struct dgnc_board *arg1 )
{
  {
  {
  cls_vpd(arg1);
  }
  return;
}
}
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  {
  tmp = ldv_linux_arch_io_io_mem_remap(size);
  }
  return (tmp);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_ch_lock_of_channel_t();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_bd_lock_of_dgnc_board();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_bd_intr_lock_of_dgnc_board();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_108(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_110(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_112(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_iounmap_121(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
void ldv_stop(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void ldv_linux_drivers_base_class_destroy_class(struct class *cls ) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
int ldv_linux_fs_char_dev_register_chrdev(int major ) ;
void ldv_linux_fs_char_dev_unregister_chrdev_region(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_register_check_return_value_probe(int retval ) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void ldv_linux_usb_gadget_destroy_class(struct class *cls ) ;
int ldv_linux_usb_gadget_register_chrdev(int major ) ;
void ldv_linux_usb_gadget_unregister_chrdev_region(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_register_check_return_value_probe(int retval ) ;
void ldv_linux_usb_urb_check_final_state(void) ;
long ldv_ptr_err(void const *ptr ) ;
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_124(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_121(int ldv_func_arg1 ) ;
extern void ldv_pre_probe(void) ;
static void ldv_ldv_pre_probe_125(void) ;
static void ldv_ldv_pre_probe_127(void) ;
int ldv_post_probe(int probe_ret_val ) ;
static int ldv_ldv_post_probe_126(int retval ) ;
static int ldv_ldv_post_probe_128(int retval ) ;
int ldv_filter_err_code(int ret_val ) ;
static void ldv_ldv_check_final_state_122(void) ;
static void ldv_ldv_check_final_state_123(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
extern struct module __this_module ;
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  }
  return (tmp != 0L);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___0(spinlock_t *ldv_func_arg1 ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_global_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_poll_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_poll_lock(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
static int ldv_del_timer_sync_98(struct timer_list *ldv_func_arg1 ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size ) ;
static void ldv_iounmap_110(void volatile *ldv_func_arg1 ) ;
__inline static void outb(unsigned char value , int port )
{
  {
  __asm__ volatile ("outb %b0, %w1": : "a" (value), "Nd" (port));
  return;
}
}
static void ldv_class_destroy_99(struct class *cls ) ;
static void ldv_class_destroy_107(struct class *cls ) ;
extern struct device *device_create(struct class * , struct device * , dev_t , void * ,
                                    char const * , ...) ;
extern void device_destroy(struct class * , dev_t ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  }
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
static int ldv___pci_register_driver_102(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
static void ldv_pci_unregister_driver_101(struct pci_driver *ldv_func_arg1 ) ;
static void ldv_pci_unregister_driver_103(struct pci_driver *ldv_func_arg1 ) ;
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int ldv_register_chrdev_90(unsigned int major , char const *name ,
                                           struct file_operations const *fops )
{
  int tmp ;
  {
  {
  tmp = __register_chrdev(major, 0U, 256U, name, fops);
  }
  return (tmp);
}
}
__inline static int register_chrdev(unsigned int major , char const *name , struct file_operations const *fops ) ;
__inline static int ldv_register_chrdev_104(unsigned int major , char const *name ,
                                            struct file_operations const *fops ) ;
__inline static void ldv_unregister_chrdev_91(unsigned int major , char const *name )
{
  {
  {
  __unregister_chrdev(major, 0U, 256U, name);
  }
  return;
}
}
__inline static void unregister_chrdev(unsigned int major , char const *name ) ;
__inline static void ldv_unregister_chrdev_100(unsigned int major , char const *name ) ;
__inline static void ldv_unregister_chrdev_100(unsigned int major , char const *name ) ;
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
__inline static int ldv_request_irq_115(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
static void ldv_free_irq_109(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
void dgnc_create_ports_sysfiles(struct dgnc_board *bd ) ;
void dgnc_remove_ports_sysfiles(struct dgnc_board *bd ) ;
void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver___0 ) ;
void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver___0 ) ;
uint dgnc_Major ;
int dgnc_poll_tick ;
spinlock_t dgnc_global_lock ;
uint dgnc_NumBoards ;
struct dgnc_board *dgnc_Board[20U] ;
char *dgnc_state_text[3U] ;
int dgnc_mgmt_open(struct inode *inode , struct file *file ) ;
int dgnc_mgmt_close(struct inode *inode , struct file *file ) ;
long dgnc_mgmt_ioctl(struct file *file , unsigned int cmd , unsigned long arg ) ;
int dgnc_tty_register(struct dgnc_board *brd ) ;
int dgnc_tty_preinit(void) ;
int dgnc_tty_init(struct dgnc_board *brd ) ;
void dgnc_tty_post_uninit(void) ;
void dgnc_tty_uninit(struct dgnc_board *brd ) ;
struct board_ops dgnc_neo_ops ;
static int dgnc_start(void) ;
static int dgnc_finalize_board_init(struct dgnc_board *brd ) ;
static void dgnc_init_globals(void) ;
static int dgnc_found_board(struct pci_dev *pdev , int id ) ;
static void dgnc_cleanup_board(struct dgnc_board *brd ) ;
static void dgnc_poll_handler(ulong dummy ) ;
static int dgnc_init_one(struct pci_dev *pdev , struct pci_device_id const *ent ) ;
static void dgnc_do_remap(struct dgnc_board *brd ) ;
static struct file_operations const dgnc_BoardFops =
     {& __this_module, 0, 0, 0, 0, 0, 0, 0, 0, 0, & dgnc_mgmt_ioctl, 0, 0, 0, & dgnc_mgmt_open,
    0, & dgnc_mgmt_close, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
spinlock_t dgnc_global_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "dgnc_global_lock",
                                                     0, 0UL}}}};
int dgnc_poll_tick = 20;
static struct class *dgnc_class ;
static spinlock_t dgnc_poll_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "dgnc_poll_lock",
                                                     0, 0UL}}}};
static ulong dgnc_poll_time ;
static uint dgnc_poll_stop ;
static struct timer_list dgnc_poll_timer ;
static struct pci_device_id const dgnc_pci_tbl[5U] = { {4431U, 40U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4431U, 208U, 4294967295U, 4294967295U, 0U, 0U, 1UL},
        {4431U, 41U, 4294967295U, 4294967295U, 0U, 0U, 2UL},
        {4431U, 209U, 4294967295U, 4294967295U, 0U, 0U, 3UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__dgnc_pci_tbl_device_table[5U] ;
static struct board_id dgnc_Ids[18U] =
  { {(unsigned char *)"ClassicBoard 4 PCI", 4U, 0U},
        {(unsigned char *)"ClassicBoard 4 422 PCI", 4U, 0U},
        {(unsigned char *)"ClassicBoard 8 PCI", 8U, 0U},
        {(unsigned char *)"ClassicBoard 8 422 PCI", 8U, 0U},
        {(unsigned char *)"Neo 4 PCI", 4U, 0U},
        {(unsigned char *)"Neo 8 PCI", 8U, 0U},
        {(unsigned char *)"Neo 2 - DB9 Universal PCI", 2U, 0U},
        {(unsigned char *)"Neo 2 - DB9 Universal PCI - Powered Ring Indicator", 2U, 0U},
        {(unsigned char *)"Neo 2 - RJ45 Universal PCI",
      2U, 0U},
        {(unsigned char *)"Neo 2 - RJ45 Universal PCI - Powered Ring Indicator", 2U,
      0U},
        {(unsigned char *)"Neo 1 422 PCI", 1U, 0U},
        {(unsigned char *)"Neo 1 422/485 PCI", 1U, 0U},
        {(unsigned char *)"Neo 2 422/485 PCI", 2U, 0U},
        {(unsigned char *)"Neo 8 PCI Express", 8U, 1U},
        {(unsigned char *)"Neo 4 PCI Express", 4U, 1U},
        {(unsigned char *)"Neo 4 PCI Express RJ45", 4U, 1U},
        {(unsigned char *)"Neo 8 PCI Express RJ45", 8U, 1U},
        {(unsigned char *)0U, 0U, 0U}};
static struct pci_driver dgnc_driver =
     {{0, 0}, "dgnc", (struct pci_device_id const *)(& dgnc_pci_tbl), & dgnc_init_one,
    0, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
char *dgnc_state_text[3U] = { (char *)"Board Failed", (char *)"Board Found", (char *)"Board READY"};
static void dgnc_cleanup_module(void)
{
  int i ;
  unsigned long flags ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(& dgnc_poll_lock);
  dgnc_poll_stop = 1U;
  ldv_spin_unlock_irqrestore_97___0(& dgnc_poll_lock, flags);
  ldv_del_timer_sync_98(& dgnc_poll_timer);
  dgnc_remove_driver_sysfiles(& dgnc_driver);
  device_destroy(dgnc_class, dgnc_Major << 20);
  ldv_class_destroy_99(dgnc_class);
  ldv_unregister_chrdev_100(dgnc_Major, "dgnc");
  i = 0;
  }
  goto ldv_36554;
  ldv_36553:
  {
  dgnc_remove_ports_sysfiles(dgnc_Board[i]);
  dgnc_tty_uninit(dgnc_Board[i]);
  dgnc_cleanup_board(dgnc_Board[i]);
  i = i + 1;
  }
  ldv_36554: ;
  if ((uint )i < dgnc_NumBoards) {
    goto ldv_36553;
  } else {
  }
  {
  dgnc_tty_post_uninit();
  }
  if (dgnc_NumBoards != 0U) {
    {
    ldv_pci_unregister_driver_101(& dgnc_driver);
    }
  } else {
  }
  return;
}
}
static int dgnc_init_module(void)
{
  int rc ;
  {
  {
  rc = 0;
  rc = dgnc_start();
  }
  if (rc < 0) {
    return (rc);
  } else {
  }
  {
  rc = ldv___pci_register_driver_102(& dgnc_driver, & __this_module, "dgnc");
  }
  if (rc < 0) {
    if (dgnc_NumBoards != 0U) {
      {
      ldv_pci_unregister_driver_103(& dgnc_driver);
      }
    } else {
      {
      printk("\fWARNING: dgnc driver load failed.  No Digi Neo or Classic boards found.\n");
      }
    }
    {
    dgnc_cleanup_module();
    }
  } else {
    {
    dgnc_create_driver_sysfiles(& dgnc_driver);
    }
  }
  return (rc);
}
}
static int dgnc_start(void)
{
  int rc ;
  unsigned long flags ;
  struct device *dev ;
  void *tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  struct lock_class_key __key ;
  {
  {
  rc = 0;
  dgnc_init_globals();
  rc = ldv_register_chrdev_104(0U, "dgnc", & dgnc_BoardFops);
  }
  if (rc <= 0) {
    {
    printk("\vdgnc: Can\'t register dgnc driver device (%d)\n", rc);
    }
    return (-6);
  } else {
  }
  {
  dgnc_Major = (uint )rc;
  tmp = ldv_create_class();
  dgnc_class = (struct class *)tmp;
  tmp___1 = IS_ERR((void const *)dgnc_class);
  }
  if ((int )tmp___1) {
    {
    tmp___0 = PTR_ERR((void const *)dgnc_class);
    rc = (int )tmp___0;
    printk("\vdgnc: Can\'t create dgnc_mgmt class (%d)\n", rc);
    }
    goto failed_class;
  } else {
  }
  {
  dev = device_create(dgnc_class, (struct device *)0, dgnc_Major << 20, (void *)0,
                      "dgnc_mgmt");
  tmp___3 = IS_ERR((void const *)dev);
  }
  if ((int )tmp___3) {
    {
    tmp___2 = PTR_ERR((void const *)dev);
    rc = (int )tmp___2;
    printk("\vdgnc: Can\'t create device (%d)\n", rc);
    }
    goto failed_device;
  } else {
  }
  {
  rc = dgnc_tty_preinit();
  }
  if (rc < 0) {
    {
    printk("\vdgnc: tty preinit - not enough memory (%d)\n", rc);
    }
    goto failed_tty;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___0(& dgnc_poll_lock);
  init_timer_key(& dgnc_poll_timer, 0U, "(&dgnc_poll_timer)", & __key);
  dgnc_poll_timer.function = & dgnc_poll_handler;
  dgnc_poll_timer.data = 0UL;
  dgnc_poll_time = (unsigned long )jiffies + (unsigned long )((dgnc_poll_tick * 250) / 1000);
  dgnc_poll_timer.expires = dgnc_poll_time;
  ldv_spin_unlock_irqrestore_97___0(& dgnc_poll_lock, flags);
  add_timer(& dgnc_poll_timer);
  }
  return (0);
  failed_tty:
  {
  device_destroy(dgnc_class, dgnc_Major << 20);
  }
  failed_device:
  {
  ldv_class_destroy_107(dgnc_class);
  }
  failed_class:
  {
  ldv_unregister_chrdev_100(dgnc_Major, "dgnc");
  }
  return (rc);
}
}
static int dgnc_init_one(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  int rc ;
  {
  {
  rc = pci_enable_device(pdev);
  }
  if (rc < 0) {
    rc = -5;
  } else {
    {
    rc = dgnc_found_board(pdev, (int )ent->driver_data);
    }
    if (rc == 0) {
      dgnc_NumBoards = dgnc_NumBoards + 1U;
    } else {
    }
  }
  return (rc);
}
}
static void dgnc_cleanup_board(struct dgnc_board *brd )
{
  int i ;
  unsigned long flags ;
  {
  i = 0;
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return;
  } else {
  }
  {
  if ((int )brd->device == 40) {
    goto case_40;
  } else {
  }
  if ((int )brd->device == 41) {
    goto case_41;
  } else {
  }
  if ((int )brd->device == 208) {
    goto case_208;
  } else {
  }
  if ((int )brd->device == 209) {
    goto case_209;
  } else {
  }
  goto switch_default;
  case_40: ;
  case_41: ;
  case_208: ;
  case_209:
  {
  outb(0, (int )((unsigned int )brd->iobase + 76U));
  }
  goto ldv_36593;
  switch_default: ;
  goto ldv_36593;
  switch_break: ;
  }
  ldv_36593: ;
  if (brd->irq != 0U) {
    {
    ldv_free_irq_109(brd->irq, (void *)brd);
    }
  } else {
  }
  {
  tasklet_kill(& brd->helper_tasklet);
  }
  if ((unsigned long )brd->re_map_membase != (unsigned long )((u8 *)0U)) {
    {
    ldv_iounmap_110((void volatile *)brd->re_map_membase);
    brd->re_map_membase = (u8 *)0U;
    }
  } else {
  }
  if ((unsigned long )brd->msgbuf_head != (unsigned long )((char *)0)) {
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(& dgnc_global_lock);
    brd->msgbuf = (char *)0;
    printk("%s", brd->msgbuf_head);
    kfree((void const *)brd->msgbuf_head);
    brd->msgbuf_head = (char *)0;
    ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
    }
  } else {
  }
  i = 0;
  goto ldv_36597;
  ldv_36596: ;
  if ((unsigned long )brd->channels[i] != (unsigned long )((struct channel_t *)0)) {
    {
    kfree((void const *)(brd->channels[i])->ch_rqueue);
    kfree((void const *)(brd->channels[i])->ch_equeue);
    kfree((void const *)(brd->channels[i])->ch_wqueue);
    kfree((void const *)brd->channels[i]);
    brd->channels[i] = (struct channel_t *)0;
    }
  } else {
  }
  i = i + 1;
  ldv_36597: ;
  if (i <= 7) {
    goto ldv_36596;
  } else {
  }
  {
  kfree((void const *)brd->flipbuf);
  dgnc_Board[brd->boardnum] = (struct dgnc_board *)0;
  kfree((void const *)brd);
  }
  return;
}
}
static int dgnc_found_board(struct pci_dev *pdev , int id )
{
  struct dgnc_board *brd ;
  unsigned int pci_irq ;
  int i ;
  int rc ;
  unsigned long flags ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  void *tmp___1 ;
  {
  {
  i = 0;
  rc = 0;
  tmp = kzalloc(1504UL, 208U);
  dgnc_Board[dgnc_NumBoards] = (struct dgnc_board *)tmp;
  brd = dgnc_Board[dgnc_NumBoards];
  }
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0)) {
    return (-12);
  } else {
  }
  {
  tmp___0 = kzalloc(8192UL, 208U);
  brd->msgbuf_head = (char *)tmp___0;
  brd->msgbuf = brd->msgbuf_head;
  }
  if ((unsigned long )brd->msgbuf == (unsigned long )((char *)0)) {
    {
    kfree((void const *)brd);
    }
    return (-12);
  } else {
  }
  brd->magic = 1550708996;
  brd->boardnum = (int )dgnc_NumBoards;
  brd->vendor = (u16 )dgnc_pci_tbl[id].vendor;
  brd->device = (u16 )dgnc_pci_tbl[id].device;
  brd->pdev = pdev;
  brd->pci_bus = (uint )(pdev->bus)->number;
  brd->pci_slot = (pdev->devfn >> 3) & 31U;
  brd->name = (char *)dgnc_Ids[id].name;
  brd->maxports = dgnc_Ids[id].maxports;
  if (dgnc_Ids[i].is_pci_express != 0U) {
    brd->bd_flags = brd->bd_flags | 1UL;
  } else {
  }
  {
  brd->dpastatus = 5U;
  __init_waitqueue_head(& brd->state_wait, "&brd->state_wait", & __key);
  spinlock_check(& brd->bd_lock);
  __raw_spin_lock_init(& brd->bd_lock.__annonCompField18.rlock, "&(&brd->bd_lock)->rlock",
                       & __key___0);
  spinlock_check(& brd->bd_intr_lock);
  __raw_spin_lock_init(& brd->bd_intr_lock.__annonCompField18.rlock, "&(&brd->bd_intr_lock)->rlock",
                       & __key___1);
  brd->state = 1U;
  i = 0;
  }
  goto ldv_36612;
  ldv_36611:
  brd->channels[i] = (struct channel_t *)0;
  i = i + 1;
  ldv_36612: ;
  if (i <= 7) {
    goto ldv_36611;
  } else {
  }
  {
  pci_read_config_word((struct pci_dev const *)pdev, 44, & brd->subvendor);
  pci_read_config_word((struct pci_dev const *)pdev, 46, & brd->subdevice);
  pci_read_config_byte((struct pci_dev const *)pdev, 8, & brd->rev);
  pci_irq = pdev->irq;
  brd->irq = pci_irq;
  }
  {
  if ((int )brd->device == 40) {
    goto case_40;
  } else {
  }
  if ((int )brd->device == 41) {
    goto case_41;
  } else {
  }
  if ((int )brd->device == 208) {
    goto case_208;
  } else {
  }
  if ((int )brd->device == 209) {
    goto case_209;
  } else {
  }
  if ((int )brd->device == 176) {
    goto case_176;
  } else {
  }
  if ((int )brd->device == 177) {
    goto case_177;
  } else {
  }
  if ((int )brd->device == 200) {
    goto case_200;
  } else {
  }
  if ((int )brd->device == 201) {
    goto case_201;
  } else {
  }
  if ((int )brd->device == 202) {
    goto case_202;
  } else {
  }
  if ((int )brd->device == 203) {
    goto case_203;
  } else {
  }
  if ((int )brd->device == 204) {
    goto case_204;
  } else {
  }
  if ((int )brd->device == 205) {
    goto case_205;
  } else {
  }
  if ((int )brd->device == 206) {
    goto case_206;
  } else {
  }
  if ((int )brd->device == 240) {
    goto case_240;
  } else {
  }
  if ((int )brd->device == 241) {
    goto case_241;
  } else {
  }
  if ((int )brd->device == 242) {
    goto case_242;
  } else {
  }
  if ((int )brd->device == 243) {
    goto case_243;
  } else {
  }
  goto switch_default;
  case_40: ;
  case_41: ;
  case_208: ;
  case_209:
  brd->dpatype = 258U;
  brd->membase = (ulong )pdev->resource[4].start;
  if (brd->membase == 0UL) {
    {
    dev_err((struct device const *)(& (brd->pdev)->dev), "Card has no PCI IO resources, failing.\n");
    }
    return (-19);
  } else {
  }
  brd->membase_end = (ulong )pdev->resource[4].end;
  if ((int )brd->membase & 1) {
    brd->membase = brd->membase & 0xfffffffffffffffcUL;
  } else {
    brd->membase = brd->membase & 0xfffffffffffffff0UL;
  }
  {
  brd->iobase = (ulong )pdev->resource[1].start;
  brd->iobase_end = (ulong )pdev->resource[1].end;
  brd->iobase = (ulong )((unsigned int )brd->iobase) & 65534UL;
  brd->bd_ops = & dgnc_cls_ops;
  brd->bd_uart_offset = 8U;
  brd->bd_dividend = 921600U;
  dgnc_do_remap(brd);
  (*((brd->bd_ops)->vpd))(brd);
  outb(67, (int )((unsigned int )brd->iobase + 76U));
  }
  goto ldv_36618;
  case_176: ;
  case_177: ;
  case_200: ;
  case_201: ;
  case_202: ;
  case_203: ;
  case_204: ;
  case_205: ;
  case_206: ;
  case_240: ;
  case_241: ;
  case_242: ;
  case_243: ;
  if ((int )brd->bd_flags & 1) {
    brd->dpatype = 257U;
  } else {
    brd->dpatype = 256U;
  }
  brd->membase = (ulong )pdev->resource[0].start;
  brd->membase_end = (ulong )pdev->resource[0].end;
  if ((int )brd->membase & 1) {
    brd->membase = brd->membase & 0xfffffffffffffffcUL;
  } else {
    brd->membase = brd->membase & 0xfffffffffffffff0UL;
  }
  {
  brd->bd_ops = & dgnc_neo_ops;
  brd->bd_uart_offset = 512U;
  brd->bd_dividend = 921600U;
  dgnc_do_remap(brd);
  }
  if ((unsigned long )brd->re_map_membase != (unsigned long )((u8 *)0U)) {
    {
    brd->dvid = readb((void const volatile *)brd->re_map_membase + 141U);
    (*((brd->bd_ops)->vpd))(brd);
    }
  } else {
  }
  goto ldv_36618;
  switch_default:
  {
  dev_err((struct device const *)(& (brd->pdev)->dev), "Didn\'t find any compatible Neo/Classic PCI boards.\n");
  }
  return (-6);
  switch_break: ;
  }
  ldv_36618:
  {
  rc = dgnc_tty_register(brd);
  }
  if (rc < 0) {
    {
    dgnc_tty_uninit(brd);
    printk("\vdgnc: Can\'t register tty devices (%d)\n", rc);
    brd->state = 0U;
    brd->dpastatus = 5U;
    }
    goto failed;
  } else {
  }
  {
  rc = dgnc_finalize_board_init(brd);
  }
  if (rc < 0) {
    {
    printk("\vdgnc: Can\'t finalize board init (%d)\n", rc);
    brd->state = 0U;
    brd->dpastatus = 5U;
    }
    goto failed;
  } else {
  }
  {
  rc = dgnc_tty_init(brd);
  }
  if (rc < 0) {
    {
    dgnc_tty_uninit(brd);
    printk("\vdgnc: Can\'t init tty devices (%d)\n", rc);
    brd->state = 0U;
    brd->dpastatus = 5U;
    }
    goto failed;
  } else {
  }
  {
  brd->state = 2U;
  brd->dpastatus = 0U;
  dgnc_create_ports_sysfiles(brd);
  tasklet_init(& brd->helper_tasklet, (brd->bd_ops)->tasklet, (unsigned long )brd);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(& dgnc_global_lock);
  brd->msgbuf = (char *)0;
  printk("%s", brd->msgbuf_head);
  kfree((void const *)brd->msgbuf_head);
  brd->msgbuf_head = (char *)0;
  ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
  tmp___1 = kzalloc(4096UL, 208U);
  brd->flipbuf = (char *)tmp___1;
  __wake_up(& brd->state_wait, 1U, 1, (void *)0);
  }
  return (0);
  failed: ;
  return (-6);
}
}
static int dgnc_finalize_board_init(struct dgnc_board *brd )
{
  int rc ;
  {
  rc = 0;
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return (-19);
  } else {
  }
  if (brd->irq != 0U) {
    {
    rc = ldv_request_irq_115(brd->irq, (brd->bd_ops)->intr, 128UL, "DGNC", (void *)brd);
    }
    if (rc != 0) {
      {
      dev_err((struct device const *)(& (brd->pdev)->dev), "Failed to hook IRQ %d\n",
              brd->irq);
      brd->state = 0U;
      brd->dpastatus = 5U;
      rc = -19;
      }
    } else {
    }
  } else {
  }
  return (rc);
}
}
static void dgnc_do_remap(struct dgnc_board *brd )
{
  void *tmp ;
  {
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return;
  } else {
  }
  {
  tmp = ioremap((resource_size_t )brd->membase, 4096UL);
  brd->re_map_membase = (u8 *)tmp;
  }
  return;
}
}
static void dgnc_poll_handler(ulong dummy )
{
  struct dgnc_board *brd ;
  unsigned long flags ;
  int i ;
  unsigned long new_time ;
  struct lock_class_key __key ;
  {
  i = 0;
  goto ldv_36650;
  ldv_36649:
  {
  brd = dgnc_Board[i];
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(& brd->bd_lock);
  }
  if (brd->state == 0U) {
    {
    ldv_spin_unlock_irqrestore_102(& brd->bd_lock, flags);
    }
    goto ldv_36648;
  } else {
  }
  {
  tasklet_schedule(& brd->helper_tasklet);
  ldv_spin_unlock_irqrestore_102(& brd->bd_lock, flags);
  }
  ldv_36648:
  i = i + 1;
  ldv_36650: ;
  if ((uint )i < dgnc_NumBoards) {
    goto ldv_36649;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___0(& dgnc_poll_lock);
  dgnc_poll_time = dgnc_poll_time + (ulong )((dgnc_poll_tick * 250) / 1000);
  new_time = dgnc_poll_time - (unsigned long )jiffies;
  }
  if (new_time >= (unsigned long )(dgnc_poll_tick * 2)) {
    dgnc_poll_time = (unsigned long )jiffies + (unsigned long )((dgnc_poll_tick * 250) / 1000);
  } else {
  }
  {
  init_timer_key(& dgnc_poll_timer, 0U, "(&dgnc_poll_timer)", & __key);
  dgnc_poll_timer.function = & dgnc_poll_handler;
  dgnc_poll_timer.data = 0UL;
  dgnc_poll_timer.expires = dgnc_poll_time;
  ldv_spin_unlock_irqrestore_97___0(& dgnc_poll_lock, flags);
  }
  if (dgnc_poll_stop == 0U) {
    {
    add_timer(& dgnc_poll_timer);
    }
  } else {
  }
  return;
}
}
static void dgnc_init_globals(void)
{
  int i ;
  struct lock_class_key __key ;
  {
  i = 0;
  dgnc_NumBoards = 0U;
  i = 0;
  goto ldv_36658;
  ldv_36657:
  dgnc_Board[i] = (struct dgnc_board *)0;
  i = i + 1;
  ldv_36658: ;
  if (i <= 19) {
    goto ldv_36657;
  } else {
  }
  {
  init_timer_key(& dgnc_poll_timer, 0U, "(&dgnc_poll_timer)", & __key);
  }
  return;
}
}
void ldv_EMGentry_exit_dgnc_cleanup_module_20_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_dgnc_init_module_20_14(int (*arg0)(void) ) ;
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 ) ;
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 ) ;
void ldv_dispatch_deregister_16_1(struct file_operations *arg0 ) ;
void ldv_dispatch_deregister_18_1(struct pci_driver *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_14_20_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_20_5(void) ;
void ldv_dispatch_deregister_usb_serial_instance_16_20_6(void) ;
void ldv_dispatch_instance_deregister_12_1(struct timer_list *arg0 ) ;
void ldv_dispatch_instance_register_8_3(struct timer_list *arg0 ) ;
void ldv_dispatch_irq_deregister_13_1(int arg0 ) ;
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 ) ;
void ldv_dispatch_register_17_2(struct file_operations *arg0 ) ;
void ldv_dispatch_register_19_2(struct pci_driver *arg0 ) ;
void ldv_dispatch_register_dummy_factory_14_20_7(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_20_8(void) ;
void ldv_dispatch_register_tty_instance_15_20_9(void) ;
void ldv_dispatch_register_usb_serial_instance_16_20_10(void) ;
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 ) ;
void ldv_entry_EMGentry_20(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 ) ;
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 ) ;
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 ) ;
void ldv_interrupt_interrupt_instance_1(void *arg0 ) ;
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 ) ;
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 ) ;
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                 struct pci_dev *arg1 , struct pm_message arg2 ) ;
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
                                      struct pci_dev *arg1 , struct pm_message arg2 ) ;
void ldv_pci_pci_instance_2(void *arg0 ) ;
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 ) ;
int ldv_register_chrdev(int arg0 , unsigned int arg1 , char *arg2 , struct file_operations *arg3 ) ;
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 ) ;
void ldv_struct_driver_attribute_dummy_resourceless_instance_3(void *arg0 ) ;
void ldv_struct_driver_attribute_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_struct_driver_attribute_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_struct_driver_attribute_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_timer_dummy_factory_8(void *arg0 ) ;
void ldv_timer_instance_callback_7_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_7(void *arg0 ) ;
void ldv_tty_instance_cleanup_10_3(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_cleanup_9_3(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
int ldv_tty_instance_install_10_29(int (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                   struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
int ldv_tty_instance_install_9_29(int (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
struct tty_struct *ldv_tty_instance_lookup_10_18(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                            int ) ,
                                                 struct tty_driver *arg1 , int arg2 ) ;
struct tty_struct *ldv_tty_instance_lookup_10_31(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                            int ) ,
                                                 struct tty_driver *arg1 , int arg2 ) ;
struct tty_struct *ldv_tty_instance_lookup_9_18(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                           int ) ,
                                                struct tty_driver *arg1 , int arg2 ) ;
struct tty_struct *ldv_tty_instance_lookup_9_31(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                           int ) ,
                                                struct tty_driver *arg1 , int arg2 ) ;
int ldv_tty_instance_port_activate_10_10(int (*arg0)(struct tty_port * , struct tty_struct * ) ,
                                         struct tty_port *arg1 , struct tty_struct *arg2 ) ;
int ldv_tty_instance_port_activate_9_10(int (*arg0)(struct tty_port * , struct tty_struct * ) ,
                                        struct tty_port *arg1 , struct tty_struct *arg2 ) ;
void ldv_tty_instance_port_shutdown_10_8(void (*arg0)(struct tty_port * ) , struct tty_port *arg1 ) ;
void ldv_tty_instance_port_shutdown_9_8(void (*arg0)(struct tty_port * ) , struct tty_port *arg1 ) ;
void ldv_tty_instance_remove_10_2(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
void ldv_tty_instance_remove_10_23(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                   struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
void ldv_tty_instance_remove_9_2(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                 struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
void ldv_tty_instance_remove_9_23(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 ) ;
void ldv_tty_instance_set_termiox_10_11(int (*arg0)(struct tty_struct * , struct termiox * ) ,
                                        struct tty_struct *arg1 , struct termiox *arg2 ) ;
void ldv_tty_instance_set_termiox_9_11(int (*arg0)(struct tty_struct * , struct termiox * ) ,
                                       struct tty_struct *arg1 , struct termiox *arg2 ) ;
void ldv_tty_instance_shutdown_10_4(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_shutdown_9_4(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_tty_instance_10(void *arg0 ) ;
void ldv_tty_tty_instance_9(void *arg0 ) ;
void ldv_unregister_chrdev(void *arg0 , unsigned int arg1 , char *arg2 ) ;
int ldv_usb_serial_instance_attach_11_9(int (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_close_11_29(void (*arg0)(struct usb_serial_port * ) ,
                                         struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_instance_disconnect_11_14(void (*arg0)(struct usb_serial * ) ,
                                              struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_ioctl_11_31(int (*arg0)(struct tty_struct * , unsigned int ,
                                                     unsigned long ) , struct tty_struct *arg1 ,
                                         unsigned int arg2 , unsigned long arg3 ) ;
void ldv_usb_serial_instance_irq_write_11_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                         unsigned char * , int ) ,
                                             struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                             unsigned char *arg3 , int arg4 ) ;
void ldv_usb_serial_instance_open_11_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                        struct tty_struct *arg1 , struct usb_serial_port *arg2 ) ;
int ldv_usb_serial_instance_port_probe_11_23(int (*arg0)(struct usb_serial_port * ) ,
                                             struct usb_serial_port *arg1 ) ;
void ldv_usb_serial_instance_port_remove_11_21(int (*arg0)(struct usb_serial_port * ) ,
                                               struct usb_serial_port *arg1 ) ;
int ldv_usb_serial_instance_probe_11_11(int (*arg0)(struct usb_serial * , struct usb_device_id * ) ,
                                        struct usb_serial *arg1 , struct usb_device_id *arg2 ) ;
void ldv_usb_serial_instance_release_11_13(void (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_release_11_5(void (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_reset_resume_11_24(int (*arg0)(struct usb_serial * ) ,
                                                struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_resume_11_25(int (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 ) ;
void ldv_usb_serial_instance_suspend_11_26(int (*arg0)(struct usb_serial * , struct pm_message ) ,
                                           struct usb_serial *arg1 , struct pm_message arg2 ) ;
void ldv_usb_serial_instance_write_11_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                     unsigned char * , int ) , struct tty_struct *arg1 ,
                                         struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                         int arg4 ) ;
void ldv_usb_serial_instance_write_room_11_32(int (*arg0)(struct tty_struct * ) ,
                                              struct tty_struct *arg1 ) ;
void ldv_usb_serial_usb_serial_instance_11(void *arg0 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_20 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
void ldv_EMGentry_exit_dgnc_cleanup_module_20_2(void (*arg0)(void) )
{
  {
  {
  dgnc_cleanup_module();
  }
  return;
}
}
int ldv_EMGentry_init_dgnc_init_module_20_14(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = dgnc_init_module();
  }
  return (tmp);
}
}
int ldv___pci_register_driver(int arg0 , struct pci_driver *arg1 , struct module *arg2 ,
                              char *arg3 )
{
  struct pci_driver *ldv_19_pci_driver_pci_driver ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_19_pci_driver_pci_driver = arg1;
    ldv_dispatch_register_19_2(ldv_19_pci_driver_pci_driver);
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
int ldv_del_timer_sync(int arg0 , struct timer_list *arg1 )
{
  struct timer_list *ldv_12_timer_list_timer_list ;
  {
  {
  ldv_12_timer_list_timer_list = arg1;
  ldv_dispatch_instance_deregister_12_1(ldv_12_timer_list_timer_list);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_dispatch_deregister_16_1(struct file_operations *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_18_1(struct pci_driver *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_14_20_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_20_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_usb_serial_instance_16_20_6(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_deregister_12_1(struct timer_list *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_instance_register_8_3(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_7 *cf_arg_7 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_7 = (struct ldv_struct_timer_instance_7 *)tmp;
  cf_arg_7->arg0 = arg0;
  ldv_timer_timer_instance_7((void *)cf_arg_7);
  }
  return;
}
}
void ldv_dispatch_irq_deregister_13_1(int arg0 )
{
  {
  return;
}
}
void ldv_dispatch_irq_register_14_2(int arg0 , enum irqreturn (*arg1)(int , void * ) ,
                                    enum irqreturn (*arg2)(int , void * ) , void *arg3 )
{
  struct ldv_struct_interrupt_instance_1 *cf_arg_1 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(40UL);
  cf_arg_1 = (struct ldv_struct_interrupt_instance_1 *)tmp;
  cf_arg_1->arg0 = arg0;
  cf_arg_1->arg1 = arg1;
  cf_arg_1->arg2 = arg2;
  cf_arg_1->arg3 = arg3;
  ldv_interrupt_interrupt_instance_1((void *)cf_arg_1);
  }
  return;
}
}
void ldv_dispatch_register_17_2(struct file_operations *arg0 )
{
  struct ldv_struct_file_operations_instance_0 *cf_arg_0 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_0 = (struct ldv_struct_file_operations_instance_0 *)tmp;
  cf_arg_0->arg0 = arg0;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  }
  return;
}
}
void ldv_dispatch_register_19_2(struct pci_driver *arg0 )
{
  struct ldv_struct_pci_instance_2 *cf_arg_2 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_2 = (struct ldv_struct_pci_instance_2 *)tmp;
  cf_arg_2->arg0 = arg0;
  ldv_pci_pci_instance_2((void *)cf_arg_2);
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_14_20_7(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_8 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_8 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_timer_dummy_factory_8((void *)cf_arg_8);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_20_8(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_3 ;
  struct ldv_struct_EMGentry_20 *cf_arg_4 ;
  struct ldv_struct_EMGentry_20 *cf_arg_5 ;
  struct ldv_struct_EMGentry_20 *cf_arg_6 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_struct_driver_attribute_dummy_resourceless_instance_3((void *)cf_arg_3);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_4 = (struct ldv_struct_EMGentry_20 *)tmp___0;
  ldv_struct_driver_attribute_dummy_resourceless_instance_4((void *)cf_arg_4);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_5 = (struct ldv_struct_EMGentry_20 *)tmp___1;
  ldv_struct_driver_attribute_dummy_resourceless_instance_5((void *)cf_arg_5);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_6 = (struct ldv_struct_EMGentry_20 *)tmp___2;
  ldv_struct_driver_attribute_dummy_resourceless_instance_6((void *)cf_arg_6);
  }
  return;
}
}
void ldv_dispatch_register_tty_instance_15_20_9(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_9 ;
  struct ldv_struct_EMGentry_20 *cf_arg_10 ;
  void *tmp ;
  void *tmp___0 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_9 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_tty_tty_instance_9((void *)cf_arg_9);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_10 = (struct ldv_struct_EMGentry_20 *)tmp___0;
  ldv_tty_tty_instance_10((void *)cf_arg_10);
  }
  return;
}
}
void ldv_dispatch_register_usb_serial_instance_16_20_10(void)
{
  struct ldv_struct_EMGentry_20 *cf_arg_11 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_11 = (struct ldv_struct_EMGentry_20 *)tmp;
  ldv_usb_serial_usb_serial_instance_11((void *)cf_arg_11);
  }
  return;
}
}
void ldv_entry_EMGentry_20(void *arg0 )
{
  void (*ldv_20_exit_dgnc_cleanup_module_default)(void) ;
  int (*ldv_20_init_dgnc_init_module_default)(void) ;
  int ldv_20_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_20_ret_default = ldv_EMGentry_init_dgnc_init_module_20_14(ldv_20_init_dgnc_init_module_default);
  ldv_20_ret_default = ldv_ldv_post_init_121(ldv_20_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_20_ret_default != 0);
    ldv_ldv_check_final_state_122();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_20_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_usb_serial_instance_16_20_10();
      ldv_dispatch_register_tty_instance_15_20_9();
      ldv_dispatch_register_dummy_resourceless_instance_12_20_8();
      ldv_dispatch_register_dummy_factory_14_20_7();
      ldv_dispatch_deregister_usb_serial_instance_16_20_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_12_20_5();
      ldv_dispatch_deregister_dummy_factory_14_20_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_dgnc_cleanup_module_20_2(ldv_20_exit_dgnc_cleanup_module_default);
    ldv_ldv_check_final_state_123();
    ldv_stop();
    }
    return;
  }
  return;
}
}
int main(void)
{
  {
  {
  ldv_ldv_initialize_124();
  ldv_entry_EMGentry_20((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  long (*ldv_0_callback_unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  unsigned int ldv_0_ldv_param_5_1_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  struct ldv_struct_file_operations_instance_0 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  data = (struct ldv_struct_file_operations_instance_0 *)arg0;
  ldv_0_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_file_operations_instance_0 *)0)) {
    {
    ldv_0_container_file_operations = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(504UL);
  ldv_0_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_0_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_0_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_0;
  return;
  ldv_main_0:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_0_ret_default = ldv_file_operations_instance_probe_0_12(ldv_0_container_file_operations->open,
                                                                ldv_0_resource_inode,
                                                                ldv_0_resource_file);
    ldv_0_ret_default = ldv_filter_err_code(ldv_0_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_0_ret_default == 0);
      }
      goto ldv_call_0;
    } else {
      {
      ldv_assume(ldv_0_ret_default != 0);
      }
      goto ldv_main_0;
    }
  } else {
    {
    ldv_free((void *)ldv_0_resource_file);
    ldv_free((void *)ldv_0_resource_inode);
    }
    return;
  }
  return;
  ldv_call_0:
  {
  tmp___4 = ldv_undef_int();
  }
  {
  if (tmp___4 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___4 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___4 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1:
  {
  ldv_file_operations_instance_callback_0_5(ldv_0_callback_unlocked_ioctl, ldv_0_resource_file,
                                            ldv_0_ldv_param_5_1_default, ldv_0_size_cnt_write_size);
  }
  goto ldv_call_0;
  case_2:
  {
  tmp___5 = ldv_xmalloc(1UL);
  ldv_0_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_0_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_0_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_0_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_0_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_0_container_file_operations->write,
                                           ldv_0_resource_file, ldv_0_ldv_param_4_1_default,
                                           ldv_0_size_cnt_write_size, ldv_0_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_0_ldv_param_4_1_default);
  ldv_free((void *)ldv_0_ldv_param_4_3_default);
  }
  goto ldv_call_0;
  goto ldv_call_0;
  case_3:
  {
  ldv_file_operations_instance_release_0_2(ldv_0_container_file_operations->release,
                                           ldv_0_resource_inode, ldv_0_resource_file);
  }
  goto ldv_main_0;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_file_operations_instance_callback_0_5(long (*arg0)(struct file * , unsigned int ,
                                                            unsigned long ) , struct file *arg1 ,
                                               unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  dgnc_mgmt_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = dgnc_mgmt_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_file_operations_instance_release_0_2(int (*arg0)(struct inode * , struct file * ) ,
                                              struct inode *arg1 , struct file *arg2 )
{
  {
  {
  dgnc_mgmt_close(arg1, arg2);
  }
  return;
}
}
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_free_irq(void *arg0 , int arg1 , void *arg2 )
{
  int ldv_13_line_line ;
  {
  {
  ldv_13_line_line = arg1;
  ldv_dispatch_irq_deregister_13_1(ldv_13_line_line);
  }
  return;
  return;
}
}
enum irqreturn ldv_interrupt_instance_handler_1_5(enum irqreturn (*arg0)(int , void * ) ,
                                                  int arg1 , void *arg2 )
{
  enum irqreturn tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_interrupt_instance_thread_1_3(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                       void *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_interrupt_interrupt_instance_1(void *arg0 )
{
  enum irqreturn (*ldv_1_callback_handler)(int , void * ) ;
  void *ldv_1_data_data ;
  int ldv_1_line_line ;
  enum irqreturn ldv_1_ret_val_default ;
  enum irqreturn (*ldv_1_thread_thread)(int , void * ) ;
  struct ldv_struct_interrupt_instance_1 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_interrupt_instance_1 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_interrupt_instance_1 *)0)) {
    {
    ldv_1_line_line = data->arg0;
    ldv_1_callback_handler = data->arg1;
    ldv_1_thread_thread = data->arg2;
    ldv_1_data_data = data->arg3;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_1_callback_handler != (unsigned long )((enum irqreturn (*)(int ,
                                                                                     void * ))0)) {
    {
    ldv_1_ret_val_default = ldv_interrupt_instance_handler_1_5(ldv_1_callback_handler,
                                                               ldv_1_line_line, ldv_1_data_data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume((unsigned int )ldv_1_ret_val_default == 2U);
    }
    if ((unsigned long )ldv_1_thread_thread != (unsigned long )((enum irqreturn (*)(int ,
                                                                                    void * ))0)) {
      {
      ldv_interrupt_instance_thread_1_3(ldv_1_thread_thread, ldv_1_line_line, ldv_1_data_data);
      }
    } else {
    }
  } else {
    {
    ldv_assume((unsigned int )ldv_1_ret_val_default != 2U);
    }
  }
  return;
  return;
}
}
int ldv_pci_instance_probe_2_17(int (*arg0)(struct pci_dev * , struct pci_device_id * ) ,
                                struct pci_dev *arg1 , struct pci_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = dgnc_init_one(arg1, (struct pci_device_id const *)arg2);
  }
  return (tmp);
}
}
void ldv_pci_instance_release_2_2(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_2_5(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_resume_early_2_6(int (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_pci_instance_shutdown_2_3(void (*arg0)(struct pci_dev * ) , struct pci_dev *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_pci_instance_suspend_2_8(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
int ldv_pci_instance_suspend_late_2_7(int (*arg0)(struct pci_dev * , struct pm_message ) ,
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
void ldv_pci_pci_instance_2(void *arg0 )
{
  struct pci_driver *ldv_2_container_pci_driver ;
  struct pci_dev *ldv_2_resource_dev ;
  struct pm_message ldv_2_resource_pm_message ;
  struct pci_device_id *ldv_2_resource_struct_pci_device_id_ptr ;
  int ldv_2_ret_default ;
  struct ldv_struct_pci_instance_2 *data ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_pci_instance_2 *)arg0;
  ldv_2_ret_default = 1;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_pci_instance_2 *)0)) {
    {
    ldv_2_container_pci_driver = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  tmp = ldv_xmalloc(2968UL);
  ldv_2_resource_dev = (struct pci_dev *)tmp;
  tmp___0 = ldv_xmalloc(32UL);
  ldv_2_resource_struct_pci_device_id_ptr = (struct pci_device_id *)tmp___0;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    ldv_ldv_pre_probe_125();
    ldv_2_ret_default = ldv_pci_instance_probe_2_17((int (*)(struct pci_dev * , struct pci_device_id * ))ldv_2_container_pci_driver->probe,
                                                    ldv_2_resource_dev, ldv_2_resource_struct_pci_device_id_ptr);
    ldv_2_ret_default = ldv_ldv_post_probe_126(ldv_2_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_2_ret_default == 0);
      }
      goto ldv_call_2;
    } else {
      {
      ldv_assume(ldv_2_ret_default != 0);
      }
      goto ldv_main_2;
    }
  } else {
    {
    ldv_free((void *)ldv_2_resource_dev);
    ldv_free((void *)ldv_2_resource_struct_pci_device_id_ptr);
    }
    return;
  }
  return;
  ldv_call_2:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_call_2;
  case_2: ;
  if ((unsigned long )ldv_2_container_pci_driver->suspend != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                       pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_2_8(ldv_2_container_pci_driver->suspend,
                                                     ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
  if ((unsigned long )ldv_2_container_pci_driver->suspend_late != (unsigned long )((int (*)(struct pci_dev * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_2_ret_default = ldv_pci_instance_suspend_late_2_7(ldv_2_container_pci_driver->suspend_late,
                                                          ldv_2_resource_dev, ldv_2_resource_pm_message);
    }
  } else {
  }
  {
  ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume_early != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_early_2_6(ldv_2_container_pci_driver->resume_early, ldv_2_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_2_container_pci_driver->resume != (unsigned long )((int (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_resume_2_5(ldv_2_container_pci_driver->resume, ldv_2_resource_dev);
    }
  } else {
  }
  goto ldv_call_2;
  case_3: ;
  if ((unsigned long )ldv_2_container_pci_driver->shutdown != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_shutdown_2_3(ldv_2_container_pci_driver->shutdown, ldv_2_resource_dev);
    }
  } else {
  }
  if ((unsigned long )ldv_2_container_pci_driver->remove != (unsigned long )((void (*)(struct pci_dev * ))0)) {
    {
    ldv_pci_instance_release_2_2(ldv_2_container_pci_driver->remove, ldv_2_resource_dev);
    }
  } else {
  }
  goto ldv_main_2;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_pci_unregister_driver(void *arg0 , struct pci_driver *arg1 )
{
  struct pci_driver *ldv_18_pci_driver_pci_driver ;
  {
  {
  ldv_18_pci_driver_pci_driver = arg1;
  ldv_dispatch_deregister_18_1(ldv_18_pci_driver_pci_driver);
  }
  return;
  return;
}
}
int ldv_register_chrdev(int arg0 , unsigned int arg1 , char *arg2 , struct file_operations *arg3 )
{
  struct file_operations *ldv_17_file_operations_file_operations ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_17_file_operations_file_operations = arg3;
    ldv_dispatch_register_17_2(ldv_17_file_operations_file_operations);
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
int ldv_request_irq(int arg0 , unsigned int arg1 , enum irqreturn (*arg2)(int , void * ) ,
                    unsigned long arg3 , char *arg4 , void *arg5 )
{
  enum irqreturn (*ldv_14_callback_handler)(int , void * ) ;
  void *ldv_14_data_data ;
  int ldv_14_line_line ;
  enum irqreturn (*ldv_14_thread_thread)(int , void * ) ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_14_line_line = (int )arg1;
    ldv_14_callback_handler = arg2;
    ldv_14_thread_thread = (enum irqreturn (*)(int , void * ))0;
    ldv_14_data_data = arg5;
    ldv_dispatch_irq_register_14_2(ldv_14_line_line, ldv_14_callback_handler, ldv_14_thread_thread,
                                   ldv_14_data_data);
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
void ldv_struct_driver_attribute_dummy_resourceless_instance_3(void *arg0 )
{
  long (*ldv_3_callback_show)(struct device_driver * , char * ) ;
  long (*ldv_3_callback_store)(struct device_driver * , char * , unsigned long ) ;
  struct device_driver *ldv_3_container_struct_device_driver_ptr ;
  char *ldv_3_ldv_param_3_1_default ;
  char *ldv_3_ldv_param_9_1_default ;
  unsigned long ldv_3_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_3;
  return;
  ldv_call_3:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_3_ldv_param_3_1_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_3_ldv_param_9_1_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_3_9(ldv_3_callback_store, ldv_3_container_struct_device_driver_ptr,
                                                   ldv_3_ldv_param_9_1_default, ldv_3_ldv_param_9_2_default);
      ldv_free((void *)ldv_3_ldv_param_9_1_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_3_3(ldv_3_callback_show, ldv_3_container_struct_device_driver_ptr,
                                                   ldv_3_ldv_param_3_1_default);
      }
    }
    {
    ldv_free((void *)ldv_3_ldv_param_3_1_default);
    }
    goto ldv_call_3;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_driver_attribute_dummy_resourceless_instance_4(void *arg0 )
{
  long (*ldv_4_callback_show)(struct device_driver * , char * ) ;
  long (*ldv_4_callback_store)(struct device_driver * , char * , unsigned long ) ;
  struct device_driver *ldv_4_container_struct_device_driver_ptr ;
  char *ldv_4_ldv_param_3_1_default ;
  char *ldv_4_ldv_param_9_1_default ;
  unsigned long ldv_4_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_4_ldv_param_3_1_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_4_ldv_param_9_1_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_4_9(ldv_4_callback_store, ldv_4_container_struct_device_driver_ptr,
                                                   ldv_4_ldv_param_9_1_default, ldv_4_ldv_param_9_2_default);
      ldv_free((void *)ldv_4_ldv_param_9_1_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_show, ldv_4_container_struct_device_driver_ptr,
                                                   ldv_4_ldv_param_3_1_default);
      }
    }
    {
    ldv_free((void *)ldv_4_ldv_param_3_1_default);
    }
    goto ldv_call_4;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_driver_attribute_dummy_resourceless_instance_5(void *arg0 )
{
  long (*ldv_5_callback_show)(struct device_driver * , char * ) ;
  long (*ldv_5_callback_store)(struct device_driver * , char * , unsigned long ) ;
  struct device_driver *ldv_5_container_struct_device_driver_ptr ;
  char *ldv_5_ldv_param_3_1_default ;
  char *ldv_5_ldv_param_9_1_default ;
  unsigned long ldv_5_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_5_ldv_param_3_1_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_5_ldv_param_9_1_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_store, ldv_5_container_struct_device_driver_ptr,
                                                   ldv_5_ldv_param_9_1_default, ldv_5_ldv_param_9_2_default);
      ldv_free((void *)ldv_5_ldv_param_9_1_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_show, ldv_5_container_struct_device_driver_ptr,
                                                   ldv_5_ldv_param_3_1_default);
      }
    }
    {
    ldv_free((void *)ldv_5_ldv_param_3_1_default);
    }
    goto ldv_call_5;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_driver_attribute_dummy_resourceless_instance_6(void *arg0 )
{
  long (*ldv_6_callback_show)(struct device_driver * , char * ) ;
  long (*ldv_6_callback_store)(struct device_driver * , char * , unsigned long ) ;
  struct device_driver *ldv_6_container_struct_device_driver_ptr ;
  char *ldv_6_ldv_param_3_1_default ;
  char *ldv_6_ldv_param_9_1_default ;
  unsigned long ldv_6_ldv_param_9_2_default ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    {
    tmp = ldv_xmalloc(1UL);
    ldv_6_ldv_param_3_1_default = (char *)tmp;
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      tmp___0 = ldv_xmalloc(1UL);
      ldv_6_ldv_param_9_1_default = (char *)tmp___0;
      ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_store, ldv_6_container_struct_device_driver_ptr,
                                                   ldv_6_ldv_param_9_1_default, ldv_6_ldv_param_9_2_default);
      ldv_free((void *)ldv_6_ldv_param_9_1_default);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_show, ldv_6_container_struct_device_driver_ptr,
                                                   ldv_6_ldv_param_3_1_default);
      }
    }
    {
    ldv_free((void *)ldv_6_ldv_param_3_1_default);
    }
    goto ldv_call_6;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_dummy_factory_8(void *arg0 )
{
  struct timer_list *ldv_8_container_timer_list ;
  {
  {
  ldv_dispatch_instance_register_8_3(ldv_8_container_timer_list);
  }
  return;
  return;
}
}
void ldv_timer_instance_callback_7_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_7(void *arg0 )
{
  struct timer_list *ldv_7_container_timer_list ;
  struct ldv_struct_timer_instance_7 *data ;
  {
  data = (struct ldv_struct_timer_instance_7 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_7 *)0)) {
    {
    ldv_7_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_7_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_7_2(ldv_7_container_timer_list->function, ldv_7_container_timer_list->data);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  }
  return;
  return;
}
}
void ldv_tty_instance_cleanup_10_3(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_tty_instance_cleanup_9_3(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_tty_instance_install_10_29(int (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                   struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_tty_instance_install_9_29(int (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
struct tty_struct *ldv_tty_instance_lookup_10_18(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                            int ) ,
                                                 struct tty_driver *arg1 , int arg2 )
{
  struct tty_struct *tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
struct tty_struct *ldv_tty_instance_lookup_10_31(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                            int ) ,
                                                 struct tty_driver *arg1 , int arg2 )
{
  struct tty_struct *tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
struct tty_struct *ldv_tty_instance_lookup_9_18(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                           int ) ,
                                                struct tty_driver *arg1 , int arg2 )
{
  struct tty_struct *tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
struct tty_struct *ldv_tty_instance_lookup_9_31(struct tty_struct *(*arg0)(struct tty_driver * ,
                                                                           int ) ,
                                                struct tty_driver *arg1 , int arg2 )
{
  struct tty_struct *tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_tty_instance_port_activate_10_10(int (*arg0)(struct tty_port * , struct tty_struct * ) ,
                                         struct tty_port *arg1 , struct tty_struct *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_tty_instance_port_activate_9_10(int (*arg0)(struct tty_port * , struct tty_struct * ) ,
                                        struct tty_port *arg1 , struct tty_struct *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_tty_instance_port_shutdown_10_8(void (*arg0)(struct tty_port * ) , struct tty_port *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_tty_instance_port_shutdown_9_8(void (*arg0)(struct tty_port * ) , struct tty_port *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_tty_instance_remove_10_2(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_remove_10_23(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                   struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_remove_9_2(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                 struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_remove_9_23(void (*arg0)(struct tty_driver * , struct tty_struct * ) ,
                                  struct tty_driver *arg1 , struct tty_struct *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_set_termiox_10_11(int (*arg0)(struct tty_struct * , struct termiox * ) ,
                                        struct tty_struct *arg1 , struct termiox *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_set_termiox_9_11(int (*arg0)(struct tty_struct * , struct termiox * ) ,
                                       struct tty_struct *arg1 , struct termiox *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_shutdown_10_4(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_tty_instance_shutdown_9_4(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_unregister_chrdev(void *arg0 , unsigned int arg1 , char *arg2 )
{
  struct file_operations *ldv_16_file_operations_file_operations ;
  {
  {
  ldv_dispatch_deregister_16_1(ldv_16_file_operations_file_operations);
  }
  return;
  return;
}
}
int ldv_usb_serial_instance_attach_11_9(int (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_usb_serial_instance_close_11_29(void (*arg0)(struct usb_serial_port * ) ,
                                         struct usb_serial_port *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_disconnect_11_14(void (*arg0)(struct usb_serial * ) ,
                                              struct usb_serial *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_irq_write_11_33(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                         unsigned char * , int ) ,
                                             struct tty_struct *arg1 , struct usb_serial_port *arg2 ,
                                             unsigned char *arg3 , int arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_instance_open_11_19(int (*arg0)(struct tty_struct * , struct usb_serial_port * ) ,
                                        struct tty_struct *arg1 , struct usb_serial_port *arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
int ldv_usb_serial_instance_port_probe_11_23(int (*arg0)(struct usb_serial_port * ) ,
                                             struct usb_serial_port *arg1 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1);
  }
  return (tmp);
}
}
void ldv_usb_serial_instance_port_remove_11_21(int (*arg0)(struct usb_serial_port * ) ,
                                               struct usb_serial_port *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
int ldv_usb_serial_instance_probe_11_11(int (*arg0)(struct usb_serial * , struct usb_device_id * ) ,
                                        struct usb_serial *arg1 , struct usb_device_id *arg2 )
{
  int tmp ;
  {
  {
  tmp = (*arg0)(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_usb_serial_instance_release_11_13(void (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_release_11_5(void (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_reset_resume_11_24(int (*arg0)(struct usb_serial * ) ,
                                                struct usb_serial *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_resume_11_25(int (*arg0)(struct usb_serial * ) , struct usb_serial *arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_usb_serial_instance_suspend_11_26(int (*arg0)(struct usb_serial * , struct pm_message ) ,
                                           struct usb_serial *arg1 , struct pm_message arg2 )
{
  {
  {
  (*arg0)(arg1, arg2);
  }
  return;
}
}
void ldv_usb_serial_instance_write_11_34(int (*arg0)(struct tty_struct * , struct usb_serial_port * ,
                                                     unsigned char * , int ) , struct tty_struct *arg1 ,
                                         struct usb_serial_port *arg2 , unsigned char *arg3 ,
                                         int arg4 )
{
  {
  {
  (*arg0)(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_usb_serial_usb_serial_instance_11(void *arg0 )
{
  struct usb_serial_driver *ldv_11_driver_usb_serial_driver ;
  unsigned int ldv_11_ldv_param_31_1_default ;
  unsigned long ldv_11_ldv_param_31_2_default ;
  unsigned char *ldv_11_ldv_param_33_2_default ;
  int ldv_11_ldv_param_33_3_default ;
  unsigned char *ldv_11_ldv_param_34_2_default ;
  int ldv_11_ldv_param_34_3_default ;
  struct pm_message ldv_11_resource_pm_message ;
  struct tty_struct *ldv_11_resource_tty_struct ;
  struct usb_serial *ldv_11_resource_usb_serial ;
  struct usb_serial_port *ldv_11_resource_usb_serial_port ;
  int ldv_11_ret_default ;
  struct usb_device_id *ldv_11_usb_device_id_usb_device_id ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  void *tmp___11 ;
  void *tmp___12 ;
  {
  {
  ldv_11_ret_default = 1;
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    return;
  } else {
    {
    tmp = ldv_xmalloc(1816UL);
    ldv_11_resource_tty_struct = (struct tty_struct *)tmp;
    tmp___0 = ldv_xmalloc(272UL);
    ldv_11_resource_usb_serial = (struct usb_serial *)tmp___0;
    tmp___1 = ldv_xmalloc(3000UL);
    ldv_11_resource_usb_serial_port = (struct usb_serial_port *)tmp___1;
    }
    goto ldv_init_workflow_11;
  }
  return;
  ldv_init_workflow_11:
  {
  tmp___5 = ldv_undef_int();
  }
  if (tmp___5 != 0) {
    {
    ldv_ldv_pre_probe_127();
    }
    if ((unsigned long )ldv_11_driver_usb_serial_driver->probe != (unsigned long )((int (*)(struct usb_serial * ,
                                                                                            struct usb_device_id const * ))0)) {
      {
      ldv_11_ret_default = ldv_usb_serial_instance_probe_11_11((int (*)(struct usb_serial * ,
                                                                        struct usb_device_id * ))ldv_11_driver_usb_serial_driver->probe,
                                                               ldv_11_resource_usb_serial,
                                                               ldv_11_usb_device_id_usb_device_id);
      }
    } else {
    }
    {
    ldv_11_ret_default = ldv_ldv_post_probe_128(ldv_11_ret_default);
    tmp___4 = ldv_undef_int();
    }
    if (tmp___4 != 0) {
      {
      ldv_assume(ldv_11_ret_default == 0);
      }
      if ((unsigned long )ldv_11_driver_usb_serial_driver->attach != (unsigned long )((int (*)(struct usb_serial * ))0)) {
        {
        ldv_11_ret_default = ldv_usb_serial_instance_attach_11_9(ldv_11_driver_usb_serial_driver->attach,
                                                                 ldv_11_resource_usb_serial);
        }
      } else {
      }
      {
      ldv_11_ret_default = ldv_filter_err_code(ldv_11_ret_default);
      tmp___3 = ldv_undef_int();
      }
      if (tmp___3 != 0) {
        {
        ldv_assume(ldv_11_ret_default == 0);
        }
        goto ldv_main_workflow_11;
      } else {
        {
        ldv_assume(ldv_11_ret_default != 0);
        }
        if ((unsigned long )ldv_11_driver_usb_serial_driver->release != (unsigned long )((void (*)(struct usb_serial * ))0)) {
          {
          ldv_usb_serial_instance_release_11_5(ldv_11_driver_usb_serial_driver->release,
                                               ldv_11_resource_usb_serial);
          }
        } else {
        }
        goto ldv_init_workflow_11;
      }
    } else {
      {
      ldv_assume(ldv_11_ret_default != 0);
      }
      goto ldv_init_workflow_11;
      goto ldv_init_workflow_11;
    }
  } else {
    {
    ldv_free((void *)ldv_11_resource_tty_struct);
    ldv_free((void *)ldv_11_resource_usb_serial);
    ldv_free((void *)ldv_11_resource_usb_serial_port);
    }
    return;
  }
  return;
  ldv_main_workflow_11:
  {
  tmp___6 = ldv_undef_int();
  }
  {
  if (tmp___6 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___6 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___6 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___6 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___6 == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_1: ;
  goto ldv_main_workflow_11;
  case_2: ;
  if ((unsigned long )ldv_11_driver_usb_serial_driver->suspend != (unsigned long )((int (*)(struct usb_serial * ,
                                                                                            pm_message_t ))0)) {
    {
    ldv_usb_serial_instance_suspend_11_26(ldv_11_driver_usb_serial_driver->suspend,
                                          ldv_11_resource_usb_serial, ldv_11_resource_pm_message);
    }
  } else {
  }
  {
  tmp___7 = ldv_undef_int();
  }
  if (tmp___7 != 0) {
    if ((unsigned long )ldv_11_driver_usb_serial_driver->resume != (unsigned long )((int (*)(struct usb_serial * ))0)) {
      {
      ldv_usb_serial_instance_resume_11_25(ldv_11_driver_usb_serial_driver->resume,
                                           ldv_11_resource_usb_serial);
      }
    } else {
    }
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
  } else {
    if ((unsigned long )ldv_11_driver_usb_serial_driver->reset_resume != (unsigned long )((int (*)(struct usb_serial * ))0)) {
      {
      ldv_usb_serial_instance_reset_resume_11_24(ldv_11_driver_usb_serial_driver->reset_resume,
                                                 ldv_11_resource_usb_serial);
      }
    } else {
    }
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
  }
  case_3: ;
  if ((unsigned long )ldv_11_driver_usb_serial_driver->port_probe != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
    {
    ldv_11_ret_default = ldv_usb_serial_instance_port_probe_11_23(ldv_11_driver_usb_serial_driver->port_probe,
                                                                  ldv_11_resource_usb_serial_port);
    }
  } else {
  }
  {
  ldv_11_ret_default = ldv_filter_err_code(ldv_11_ret_default);
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    {
    ldv_assume(ldv_11_ret_default == 0);
    }
    if ((unsigned long )ldv_11_driver_usb_serial_driver->port_remove != (unsigned long )((int (*)(struct usb_serial_port * ))0)) {
      {
      ldv_usb_serial_instance_port_remove_11_21(ldv_11_driver_usb_serial_driver->port_remove,
                                                ldv_11_resource_usb_serial_port);
      }
    } else {
    }
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
  } else {
    {
    ldv_assume(ldv_11_ret_default != 0);
    }
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
  }
  case_4: ;
  if ((unsigned long )ldv_11_driver_usb_serial_driver->open != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                         struct usb_serial_port * ))0)) {
    {
    ldv_usb_serial_instance_open_11_19(ldv_11_driver_usb_serial_driver->open, ldv_11_resource_tty_struct,
                                       ldv_11_resource_usb_serial_port);
    }
  } else {
  }
  {
  tmp___9 = ldv_undef_int();
  }
  if (tmp___9 != 0) {
    {
    ldv_assume(ldv_11_ret_default == 0);
    }
    goto ldv_ops_workflow_11;
  } else {
    {
    ldv_assume(ldv_11_ret_default != 0);
    }
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
    goto ldv_main_workflow_11;
  }
  case_5: ;
  if ((unsigned long )ldv_11_driver_usb_serial_driver->disconnect != (unsigned long )((void (*)(struct usb_serial * ))0)) {
    {
    ldv_usb_serial_instance_disconnect_11_14(ldv_11_driver_usb_serial_driver->disconnect,
                                             ldv_11_resource_usb_serial);
    }
  } else {
  }
  if ((unsigned long )ldv_11_driver_usb_serial_driver->release != (unsigned long )((void (*)(struct usb_serial * ))0)) {
    {
    ldv_usb_serial_instance_release_11_13(ldv_11_driver_usb_serial_driver->release,
                                          ldv_11_resource_usb_serial);
    }
  } else {
  }
  goto ldv_init_workflow_11;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
  ldv_ops_workflow_11:
  {
  tmp___10 = ldv_undef_int();
  }
  {
  if (tmp___10 == 1) {
    goto case_1___0;
  } else {
  }
  if (tmp___10 == 2) {
    goto case_2___0;
  } else {
  }
  if (tmp___10 == 3) {
    goto case_3___0;
  } else {
  }
  if (tmp___10 == 4) {
    goto case_4___0;
  } else {
  }
  if (tmp___10 == 5) {
    goto case_5___0;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  {
  tmp___11 = ldv_xmalloc(1UL);
  ldv_11_ldv_param_34_2_default = (unsigned char *)tmp___11;
  }
  if ((unsigned long )ldv_11_driver_usb_serial_driver->write != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                          struct usb_serial_port * ,
                                                                                          unsigned char const * ,
                                                                                          int ))0)) {
    {
    ldv_usb_serial_instance_write_11_34((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                                 unsigned char * , int ))ldv_11_driver_usb_serial_driver->write,
                                        ldv_11_resource_tty_struct, ldv_11_resource_usb_serial_port,
                                        ldv_11_ldv_param_34_2_default, ldv_11_ldv_param_34_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_11_ldv_param_34_2_default);
  }
  goto ldv_ops_workflow_11;
  case_2___0:
  {
  tmp___12 = ldv_xmalloc(1UL);
  ldv_11_ldv_param_33_2_default = (unsigned char *)tmp___12;
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_11_driver_usb_serial_driver->write != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                          struct usb_serial_port * ,
                                                                                          unsigned char const * ,
                                                                                          int ))0)) {
    {
    ldv_usb_serial_instance_irq_write_11_33((int (*)(struct tty_struct * , struct usb_serial_port * ,
                                                     unsigned char * , int ))ldv_11_driver_usb_serial_driver->write,
                                            ldv_11_resource_tty_struct, ldv_11_resource_usb_serial_port,
                                            ldv_11_ldv_param_33_2_default, ldv_11_ldv_param_33_3_default);
    }
  } else {
  }
  {
  ldv_switch_to_process_context();
  ldv_free((void *)ldv_11_ldv_param_33_2_default);
  }
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  case_3___0:
  {
  ldv_usb_serial_instance_ioctl_11_31(ldv_11_driver_usb_serial_driver->ioctl, ldv_11_resource_tty_struct,
                                      ldv_11_ldv_param_31_1_default, ldv_11_ldv_param_31_2_default);
  }
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  case_4___0:
  {
  ldv_usb_serial_instance_write_room_11_32(ldv_11_driver_usb_serial_driver->write_room,
                                           ldv_11_resource_tty_struct);
  }
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  goto ldv_ops_workflow_11;
  case_5___0: ;
  if ((unsigned long )ldv_11_driver_usb_serial_driver->close != (unsigned long )((void (*)(struct usb_serial_port * ))0)) {
    {
    ldv_usb_serial_instance_close_11_29(ldv_11_driver_usb_serial_driver->close, ldv_11_resource_usb_serial_port);
    }
  } else {
  }
  goto ldv_main_workflow_11;
  switch_default___0:
  {
  ldv_stop();
  }
  switch_break___0: ;
  }
  return;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  {
  tmp = ldv_ptr_err(ptr);
  }
  return (tmp);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  {
  tmp = ldv_kzalloc(size, flags);
  }
  return (tmp);
}
}
__inline static int register_chrdev(unsigned int major , char const *name , struct file_operations const *fops )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  int res1 ;
  int tmp___0 ;
  int res2 ;
  int tmp___1 ;
  {
  {
  tmp = ldv_register_chrdev_90(major, name, fops);
  ldv_func_res = tmp;
  tmp___0 = ldv_linux_fs_char_dev_register_chrdev((int )major);
  res1 = tmp___0;
  tmp___1 = ldv_linux_usb_gadget_register_chrdev((int )major);
  res2 = tmp___1;
  ldv_assume(res1 == res2);
  }
  return (res1);
  return (ldv_func_res);
}
}
__inline static void unregister_chrdev(unsigned int major , char const *name )
{
  {
  {
  ldv_unregister_chrdev_91(major, name);
  ldv_linux_fs_char_dev_unregister_chrdev_region();
  ldv_linux_usb_gadget_unregister_chrdev_region();
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_poll_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_97___0(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_poll_lock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static int ldv_del_timer_sync_98(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer_sync(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_class_destroy_99(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
__inline static void ldv_unregister_chrdev_100(unsigned int major , char const *name )
{
  {
  {
  unregister_chrdev(major, name);
  ldv_unregister_chrdev((void *)0, major, (char *)name);
  }
  return;
}
}
static void ldv_pci_unregister_driver_101(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv___pci_register_driver_102(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                         char const *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
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
static void ldv_pci_unregister_driver_103(struct pci_driver *ldv_func_arg1 )
{
  {
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_pci_unregister_driver((void *)0, ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_register_chrdev_104(unsigned int major , char const *name ,
                                            struct file_operations const *fops )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_chrdev(major, name, fops);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_chrdev(ldv_func_res, major, (char *)name, (struct file_operations *)fops);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_poll_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_class_destroy_107(struct class *cls )
{
  {
  {
  ldv_linux_drivers_base_class_destroy_class(cls);
  ldv_linux_usb_gadget_destroy_class(cls);
  }
  return;
}
}
static void ldv_free_irq_109(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  ldv_free_irq((void *)0, (int )ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_iounmap_110(void volatile *ldv_func_arg1 )
{
  {
  {
  ldv_linux_arch_io_io_mem_unmap();
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_global_lock();
  spin_unlock_irqrestore(lock, flags);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
__inline static int ldv_request_irq_115(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                  void * ) ,
                                        unsigned long flags , char const *name ,
                                        void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
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
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_116(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_poll_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_121(int ldv_func_arg1 )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  tmp = ldv_post_init(ldv_func_arg1);
  }
  return (tmp);
}
}
static void ldv_ldv_check_final_state_122(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_check_final_state_123(void)
{
  {
  {
  ldv_linux_arch_io_check_final_state();
  ldv_linux_block_genhd_check_final_state();
  ldv_linux_block_queue_check_final_state();
  ldv_linux_block_request_check_final_state();
  ldv_linux_drivers_base_class_check_final_state();
  ldv_linux_fs_char_dev_check_final_state();
  ldv_linux_fs_sysfs_check_final_state();
  ldv_linux_kernel_locking_rwlock_check_final_state();
  ldv_linux_kernel_module_check_final_state();
  ldv_linux_kernel_rcu_update_lock_bh_check_final_state();
  ldv_linux_kernel_rcu_update_lock_sched_check_final_state();
  ldv_linux_kernel_rcu_update_lock_check_final_state();
  ldv_linux_kernel_rcu_srcu_check_final_state();
  ldv_linux_lib_idr_check_final_state();
  ldv_linux_mmc_sdio_func_check_final_state();
  ldv_linux_net_rtnetlink_check_final_state();
  ldv_linux_net_sock_check_final_state();
  ldv_linux_usb_coherent_check_final_state();
  ldv_linux_usb_gadget_check_final_state();
  ldv_linux_usb_urb_check_final_state();
  }
  return;
}
}
static void ldv_ldv_initialize_124(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
static void ldv_ldv_pre_probe_125(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_126(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
static void ldv_ldv_pre_probe_127(void)
{
  {
  {
  ldv_linux_net_register_reset_error_counter();
  ldv_linux_usb_register_reset_error_counter();
  ldv_pre_probe();
  }
  return;
}
}
static int ldv_ldv_post_probe_128(int retval )
{
  int tmp ;
  {
  {
  ldv_linux_net_register_check_return_value_probe(retval);
  ldv_linux_usb_register_check_return_value_probe(retval);
  tmp = ldv_post_probe(retval);
  }
  return (tmp);
}
}
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___1(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_112(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static unsigned int iminor(struct inode const *inode )
{
  {
  return ((unsigned int )inode->i_rdev & 1048575U);
}
}
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_from_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_from_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_from_user_overflow();
      }
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  long tmp ;
  long tmp___0 ;
  {
  {
  sz = -1;
  might_fault();
  tmp = ldv__builtin_expect(sz < 0, 1L);
  }
  if (tmp != 0L) {
    {
    n = _copy_to_user(to, from, (unsigned int )n);
    }
  } else {
    {
    tmp___0 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    }
    if (tmp___0 != 0L) {
      {
      n = _copy_to_user(to, from, (unsigned int )n);
      }
    } else {
      {
      __copy_to_user_overflow();
      }
    }
  }
  return (n);
}
}
static int dgnc_mgmt_in_use[8U] ;
int dgnc_mgmt_open(struct inode *inode , struct file *file )
{
  unsigned long flags ;
  unsigned int minor ;
  unsigned int tmp ;
  {
  {
  tmp = iminor((struct inode const *)inode);
  minor = tmp;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___1(& dgnc_global_lock);
  }
  if (minor <= 7U) {
    if (dgnc_mgmt_in_use[minor] != 0) {
      {
      ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
      }
      return (-16);
    } else {
    }
    dgnc_mgmt_in_use[minor] = dgnc_mgmt_in_use[minor] + 1;
  } else {
    {
    ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
    }
    return (-6);
  }
  {
  ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
  }
  return (0);
}
}
int dgnc_mgmt_close(struct inode *inode , struct file *file )
{
  unsigned long flags ;
  unsigned int minor ;
  unsigned int tmp ;
  {
  {
  tmp = iminor((struct inode const *)inode);
  minor = tmp;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(& dgnc_global_lock);
  }
  if (minor <= 7U) {
    if (dgnc_mgmt_in_use[minor] != 0) {
      dgnc_mgmt_in_use[minor] = 0;
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
  }
  return (0);
}
}
long dgnc_mgmt_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  unsigned long flags ;
  void *uarg ;
  struct digi_dinfo ddi ;
  unsigned long tmp ;
  int brd ;
  struct digi_info di ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  struct channel_t *ch ;
  struct ni_info ni ;
  unsigned char mstat ;
  uint board ;
  uint channel ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  uarg = (void *)arg;
  {
  if (cmd == 25848U) {
    goto case_25848;
  } else {
  }
  if (cmd == 25849U) {
    goto case_25849;
  } else {
  }
  if (cmd == 25850U) {
    goto case_25850;
  } else {
  }
  goto switch_break;
  case_25848:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(& dgnc_global_lock);
  ddi.dinfo_nboards = dgnc_NumBoards;
  sprintf((char *)(& ddi.dinfo_version), "%s", (char *)"40002369_F");
  ldv_spin_unlock_irqrestore_112(& dgnc_global_lock, flags);
  tmp = copy_to_user(uarg, (void const *)(& ddi), 32UL);
  }
  if (tmp != 0UL) {
    return (-14L);
  } else {
  }
  goto ldv_35594;
  case_25849:
  {
  tmp___0 = copy_from_user((void *)(& brd), (void const *)uarg, 4UL);
  }
  if (tmp___0 != 0UL) {
    return (-14L);
  } else {
  }
  if ((brd < 0 || (uint )brd > dgnc_NumBoards) || dgnc_NumBoards == 0U) {
    return (-19L);
  } else {
  }
  {
  memset((void *)(& di), 0, 32UL);
  di.info_bdnum = (unsigned int )brd;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104(& (dgnc_Board[brd])->bd_lock);
  di.info_bdtype = (dgnc_Board[brd])->dpatype;
  di.info_bdstate = (char )(dgnc_Board[brd])->dpastatus;
  di.info_ioport = 0U;
  di.info_physaddr = (unsigned int )(dgnc_Board[brd])->membase;
  di.info_physsize = (unsigned int )(dgnc_Board[brd])->membase - (unsigned int )(dgnc_Board[brd])->membase_end;
  }
  if ((dgnc_Board[brd])->state != 0U) {
    di.info_nports = (unsigned short )(dgnc_Board[brd])->nasync;
  } else {
    di.info_nports = 0U;
  }
  {
  ldv_spin_unlock_irqrestore_102(& (dgnc_Board[brd])->bd_lock, flags);
  tmp___1 = copy_to_user(uarg, (void const *)(& di), 32UL);
  }
  if (tmp___1 != 0UL) {
    return (-14L);
  } else {
  }
  goto ldv_35594;
  case_25850:
  {
  mstat = 0U;
  board = 0U;
  channel = 0U;
  tmp___2 = copy_from_user((void *)(& ni), (void const *)uarg, 60UL);
  }
  if (tmp___2 != 0UL) {
    return (-14L);
  } else {
  }
  board = (uint )ni.board;
  channel = (uint )ni.channel;
  if (board > dgnc_NumBoards || dgnc_NumBoards == 0U) {
    return (-19L);
  } else {
  }
  if (channel > (dgnc_Board[board])->nasync) {
    return (-19L);
  } else {
  }
  ch = (dgnc_Board[board])->channels[channel];
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-19L);
  } else {
  }
  {
  memset((void *)(& ni), 0, 60UL);
  ni.board = (int )board;
  ni.channel = (int )channel;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(& ch->ch_lock);
  mstat = (int )ch->ch_mostat | (int )ch->ch_mistat;
  }
  if ((int )mstat & 1) {
    ni.mstat = ni.mstat | 2U;
    ni.dtr = 2;
  } else {
  }
  if (((int )mstat & 2) != 0) {
    ni.mstat = ni.mstat | 4U;
    ni.rts = 4;
  } else {
  }
  if (((int )mstat & 16) != 0) {
    ni.mstat = ni.mstat | 32U;
    ni.cts = 32;
  } else {
  }
  if (((int )mstat & 64) != 0) {
    ni.mstat = ni.mstat | 128U;
    ni.ri = 128;
  } else {
  }
  if ((int )((signed char )mstat) < 0) {
    ni.mstat = ni.mstat | 64U;
    ni.dcd = 64;
  } else {
  }
  if (((int )mstat & 32) != 0) {
    ni.mstat = ni.mstat | 256U;
  } else {
  }
  ni.iflag = (unsigned short )ch->ch_c_iflag;
  ni.oflag = (unsigned short )ch->ch_c_oflag;
  ni.cflag = (unsigned short )ch->ch_c_cflag;
  ni.lflag = (unsigned short )ch->ch_c_lflag;
  if (((int )ch->ch_digi.digi_flags & 8) != 0 || (int )ch->ch_c_cflag < 0) {
    ni.hflow = 1U;
  } else {
    ni.hflow = 0U;
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    ni.recv_stopped = 1U;
  } else {
    ni.recv_stopped = 0U;
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    ni.xmit_stopped = 1U;
  } else {
    ni.xmit_stopped = 0U;
  }
  {
  ni.curtx = (int )ch->ch_txcount;
  ni.currx = (int )ch->ch_rxcount;
  ni.baud = ch->ch_old_baud;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___3 = copy_to_user(uarg, (void const *)(& ni), 60UL);
  }
  if (tmp___3 != 0UL) {
    return (-14L);
  } else {
  }
  goto ldv_35594;
  switch_break: ;
  }
  ldv_35594: ;
  return (0L);
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_100(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_102(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_106(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___2(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___1(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___1(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_130(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_104(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void memcpy_fromio(void *dst , void const volatile *src , size_t count )
{
  {
  {
  memcpy(dst, (void const *)src, count);
  }
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  {
  {
  memcpy((void *)dst, src, count);
  }
  return;
}
}
__inline static void neo_parse_lsr(struct dgnc_board *brd , uint port ) ;
__inline static void neo_parse_isr(struct dgnc_board *brd , uint port ) ;
static void neo_copy_data_from_uart_to_queue(struct channel_t *ch ) ;
__inline static void neo_clear_break(struct channel_t *ch , int force ) ;
__inline static void neo_set_cts_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_rts_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_ixon_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_ixoff_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_no_output_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_no_input_flow_control(struct channel_t *ch ) ;
__inline static void neo_set_new_start_stop_chars(struct channel_t *ch ) ;
static void neo_parse_modem(struct channel_t *ch , unsigned char signals ) ;
static void neo_tasklet(unsigned long data ) ;
static void neo_vpd(struct dgnc_board *brd ) ;
static void neo_uart_init(struct channel_t *ch ) ;
static void neo_uart_off(struct channel_t *ch ) ;
static int neo_drain(struct tty_struct *tty , uint seconds ) ;
static void neo_param(struct tty_struct *tty ) ;
static void neo_assert_modem_signals(struct channel_t *ch ) ;
static void neo_flush_uart_write(struct channel_t *ch ) ;
static void neo_flush_uart_read(struct channel_t *ch ) ;
static void neo_disable_receiver(struct channel_t *ch ) ;
static void neo_enable_receiver(struct channel_t *ch ) ;
static void neo_send_break(struct channel_t *ch , int msecs ) ;
static void neo_send_start_character(struct channel_t *ch ) ;
static void neo_send_stop_character(struct channel_t *ch ) ;
static void neo_copy_data_from_queue_to_uart(struct channel_t *ch ) ;
static uint neo_get_uart_bytes_left(struct channel_t *ch ) ;
static void neo_send_immediate_char(struct channel_t *ch , unsigned char c ) ;
static irqreturn_t neo_intr(int irq , void *voidbrd ) ;
struct board_ops dgnc_neo_ops =
     {& neo_tasklet, & neo_intr, & neo_uart_init, & neo_uart_off, & neo_drain, & neo_param,
    & neo_vpd, & neo_assert_modem_signals, & neo_flush_uart_write, & neo_flush_uart_read,
    & neo_disable_receiver, & neo_enable_receiver, & neo_send_break, & neo_send_start_character,
    & neo_send_stop_character, & neo_copy_data_from_queue_to_uart, & neo_get_uart_bytes_left,
    & neo_send_immediate_char};
static uint dgnc_offset_table[8U] =
  { 1U, 2U, 4U, 8U,
        16U, 32U, 64U, 128U};
__inline static void neo_pci_posting_flush(struct dgnc_board *bd )
{
  {
  {
  readb((void const volatile *)bd->re_map_membase + 141U);
  }
  return;
}
}
__inline static void neo_set_cts_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier | 128U;
  efr = (unsigned int )efr | 144U;
  efr = (unsigned int )efr & 253U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(193, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  writeb(8, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 8U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_rts_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier | 64U;
  efr = (unsigned int )efr | 80U;
  ier = (unsigned int )ier & 223U;
  efr = (unsigned int )efr & 247U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(193, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 4U;
  writeb(32, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 32U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_ixon_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier & 127U;
  efr = (unsigned int )efr & 127U;
  efr = (unsigned int )efr | 18U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 4U;
  writeb(32, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 32U;
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_ixoff_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier & 191U;
  efr = (unsigned int )efr & 191U;
  ier = (unsigned int )ier | 32U;
  efr = (unsigned int )efr | 24U;
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  writeb(8, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 8U;
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_no_input_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier & 191U;
  efr = (unsigned int )efr & 191U;
  ier = (unsigned int )ier & 223U;
  }
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    efr = (unsigned int )efr & 247U;
  } else {
    efr = (unsigned int )efr & 231U;
  }
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 0U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 16U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 16U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_no_output_flow_control(struct channel_t *ch )
{
  unsigned char ier ;
  unsigned char tmp ;
  unsigned char efr ;
  unsigned char tmp___0 ;
  {
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = tmp;
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->efr));
  efr = tmp___0;
  ier = (unsigned int )ier & 127U;
  efr = (unsigned int )efr & 127U;
  }
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    efr = (unsigned int )efr & 253U;
  } else {
    efr = (unsigned int )efr & 237U;
  }
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb((int )efr, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(195, (void volatile *)(& (ch->ch_neo_uart)->fctr));
  ch->ch_r_watermark = 0U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->tfifo));
  ch->ch_t_tlevel = 16U;
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
  ch->ch_r_tlevel = 16U;
  writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_set_new_start_stop_chars(struct channel_t *ch )
{
  {
  if (((int )ch->ch_digi.digi_flags & 12) != 0 || (int )ch->ch_c_cflag < 0) {
    return;
  } else {
  }
  {
  writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->xonchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xonchar2));
  writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->xoffchar1));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->xoffchar2));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
__inline static void neo_clear_break(struct channel_t *ch , int force )
{
  unsigned long flags ;
  unsigned char temp ;
  unsigned char tmp ;
  {
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___2(& ch->ch_lock);
  }
  if (ch->ch_stop_sending_break == 0UL) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 4096U) != 0U) {
    if ((long )((unsigned long )jiffies - ch->ch_stop_sending_break) >= 0L || force != 0) {
      {
      tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
      temp = tmp;
      writeb((int )temp & 191, (void volatile *)(& (ch->ch_neo_uart)->lcr));
      neo_pci_posting_flush(ch->ch_bd);
      ch->ch_flags = ch->ch_flags & 4294963199U;
      ch->ch_stop_sending_break = 0UL;
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
__inline static void neo_parse_isr(struct dgnc_board *brd , uint port )
{
  struct channel_t *ch ;
  unsigned char isr ;
  unsigned char cause ;
  unsigned long flags ;
  unsigned char tmp ;
  {
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return;
  } else {
  }
  if (port > brd->maxports) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  ldv_35903:
  {
  isr = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  }
  if ((int )isr & 1) {
    goto ldv_35902;
  } else {
  }
  isr = (unsigned int )isr & 63U;
  if (((int )isr & 12) != 0) {
    {
    brd->intr_rx = brd->intr_rx + 1UL;
    ch->ch_intr_rx = ch->ch_intr_rx + 1UL;
    neo_copy_data_from_uart_to_queue(ch);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(& ch->ch_lock);
    dgnc_check_queue_flow_control(ch);
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
  } else {
  }
  if (((int )isr & 2) != 0) {
    {
    brd->intr_tx = brd->intr_tx + 1UL;
    ch->ch_intr_tx = ch->ch_intr_tx + 1UL;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101___0(& ch->ch_lock);
    ch->ch_flags = ch->ch_flags | 3072U;
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    neo_copy_data_from_queue_to_uart(ch);
    }
  } else {
  }
  if (((int )isr & 16) != 0) {
    {
    cause = readb((void const volatile *)(& (ch->ch_neo_uart)->xoffchar1));
    }
    if ((unsigned int )cause == 2U) {
      if (((brd->channels[port])->ch_flags & 2U) != 0U) {
        {
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103___0(& ch->ch_lock);
        ch->ch_flags = ch->ch_flags & 4294967293U;
        ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
        }
      } else {
      }
    } else
    if ((unsigned int )cause == 1U) {
      if (((brd->channels[port])->ch_flags & 2U) == 0U) {
        {
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___1(& ch->ch_lock);
        ch->ch_flags = ch->ch_flags | 2U;
        ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (((int )isr & 32) != 0) {
    {
    brd->intr_modem = brd->intr_modem + 1UL;
    ch->ch_intr_modem = ch->ch_intr_modem + 1UL;
    cause = readb((void const volatile *)(& (ch->ch_neo_uart)->mcr));
    }
    if (((int )cause & 4) == 0) {
      if (((int )cause & 2) != 0) {
        {
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(& ch->ch_lock);
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
        ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
        }
      } else {
        {
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(& ch->ch_lock);
        ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
        ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
        }
      }
    } else
    if ((int )cause & 1) {
      {
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___0(& ch->ch_lock);
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      }
    } else {
      {
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113___0(& ch->ch_lock);
      ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      }
    }
  } else {
  }
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  neo_parse_modem(ch, (int )tmp);
  }
  goto ldv_35903;
  ldv_35902: ;
  return;
}
}
__inline static void neo_parse_lsr(struct dgnc_board *brd , uint port )
{
  struct channel_t *ch ;
  int linestatus ;
  unsigned long flags ;
  unsigned char tmp ;
  {
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return;
  } else {
  }
  if (port > brd->maxports) {
    return;
  } else {
  }
  ch = brd->channels[port];
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  linestatus = (int )tmp;
  ch->ch_cached_lsr = (unsigned char )((int )((signed char )ch->ch_cached_lsr) | (int )((signed char )linestatus));
  }
  if ((int )ch->ch_cached_lsr & 1) {
    {
    brd->intr_rx = brd->intr_rx + 1UL;
    ch->ch_intr_rx = ch->ch_intr_rx + 1UL;
    neo_copy_data_from_uart_to_queue(ch);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(& ch->ch_lock);
    dgnc_check_queue_flow_control(ch);
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
  } else {
  }
  if ((linestatus & 4) != 0) {
    ch->ch_err_parity = ch->ch_err_parity + 1UL;
  } else {
  }
  if ((linestatus & 8) != 0) {
    ch->ch_err_frame = ch->ch_err_frame + 1UL;
  } else {
  }
  if ((linestatus & 16) != 0) {
    ch->ch_err_break = ch->ch_err_break + 1UL;
  } else {
  }
  if ((linestatus & 2) != 0) {
    ch->ch_err_overrun = ch->ch_err_overrun + 1UL;
  } else {
  }
  if ((linestatus & 32) != 0) {
    {
    brd->intr_tx = brd->intr_tx + 1UL;
    ch->ch_intr_tx = ch->ch_intr_tx + 1UL;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117___0(& ch->ch_lock);
    ch->ch_flags = ch->ch_flags | 3072U;
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    neo_copy_data_from_queue_to_uart(ch);
    }
  } else
  if ((linestatus & 64) != 0) {
    {
    brd->intr_tx = brd->intr_tx + 1UL;
    ch->ch_intr_tx = ch->ch_intr_tx + 1UL;
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___1(& ch->ch_lock);
    ch->ch_flags = ch->ch_flags | 3072U;
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    neo_copy_data_from_queue_to_uart(ch);
    }
  } else {
  }
  return;
}
}
static void neo_param(struct tty_struct *tty )
{
  unsigned char lcr ;
  unsigned char uart_lcr ;
  unsigned char ier ;
  unsigned char uart_ier ;
  uint baud ;
  int quot ;
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int iindex ;
  int jindex ;
  ulong bauds[4U][16U] ;
  unsigned char tmp ;
  {
  lcr = 0U;
  uart_lcr = 0U;
  ier = 0U;
  uart_ier = 0U;
  baud = 9600U;
  quot = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  if ((ch->ch_c_cflag & 4111U) == 0U) {
    {
    ch->ch_r_head = 0U;
    ch->ch_r_tail = 0U;
    ch->ch_e_head = 0U;
    ch->ch_e_tail = 0U;
    ch->ch_w_head = 0U;
    ch->ch_w_tail = 0U;
    neo_flush_uart_write(ch);
    neo_flush_uart_read(ch);
    ch->ch_flags = ch->ch_flags | 32768U;
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 252U;
    neo_assert_modem_signals(ch);
    ch->ch_old_baud = 0U;
    }
    return;
  } else
  if (ch->ch_custom_speed != 0U) {
    baud = ch->ch_custom_speed;
    if ((ch->ch_flags & 32768U) != 0U) {
      ch->ch_flags = ch->ch_flags & 4294934527U;
      if ((int )((short )ch->ch_digi.digi_flags) >= 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      } else {
      }
      if (((int )ch->ch_digi.digi_flags & 8192) == 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      } else {
      }
    } else {
    }
  } else {
    iindex = 0;
    jindex = 0;
    bauds[0][0] = 0UL;
    bauds[0][1] = 50UL;
    bauds[0][2] = 75UL;
    bauds[0][3] = 110UL;
    bauds[0][4] = 134UL;
    bauds[0][5] = 150UL;
    bauds[0][6] = 200UL;
    bauds[0][7] = 300UL;
    bauds[0][8] = 600UL;
    bauds[0][9] = 1200UL;
    bauds[0][10] = 1800UL;
    bauds[0][11] = 2400UL;
    bauds[0][12] = 4800UL;
    bauds[0][13] = 9600UL;
    bauds[0][14] = 19200UL;
    bauds[0][15] = 38400UL;
    bauds[1][0] = 0UL;
    bauds[1][1] = 57600UL;
    bauds[1][2] = 115200UL;
    bauds[1][3] = 230400UL;
    bauds[1][4] = 460800UL;
    bauds[1][5] = 150UL;
    bauds[1][6] = 200UL;
    bauds[1][7] = 921600UL;
    bauds[1][8] = 600UL;
    bauds[1][9] = 1200UL;
    bauds[1][10] = 1800UL;
    bauds[1][11] = 2400UL;
    bauds[1][12] = 4800UL;
    bauds[1][13] = 9600UL;
    bauds[1][14] = 19200UL;
    bauds[1][15] = 38400UL;
    bauds[2][0] = 0UL;
    bauds[2][1] = 57600UL;
    bauds[2][2] = 76800UL;
    bauds[2][3] = 115200UL;
    bauds[2][4] = 131657UL;
    bauds[2][5] = 153600UL;
    bauds[2][6] = 230400UL;
    bauds[2][7] = 460800UL;
    bauds[2][8] = 921600UL;
    bauds[2][9] = 1200UL;
    bauds[2][10] = 1800UL;
    bauds[2][11] = 2400UL;
    bauds[2][12] = 4800UL;
    bauds[2][13] = 9600UL;
    bauds[2][14] = 19200UL;
    bauds[2][15] = 38400UL;
    bauds[3][0] = 0UL;
    bauds[3][1] = 57600UL;
    bauds[3][2] = 115200UL;
    bauds[3][3] = 230400UL;
    bauds[3][4] = 460800UL;
    bauds[3][5] = 150UL;
    bauds[3][6] = 200UL;
    bauds[3][7] = 921600UL;
    bauds[3][8] = 600UL;
    bauds[3][9] = 1200UL;
    bauds[3][10] = 1800UL;
    bauds[3][11] = 2400UL;
    bauds[3][12] = 4800UL;
    bauds[3][13] = 9600UL;
    bauds[3][14] = 19200UL;
    bauds[3][15] = 38400UL;
    if ((ch->ch_tun.un_flags & 1U) == 0U && un->un_type == 1U) {
      baud = (ch->ch_pun.un_tty)->termios.c_cflag & 15U;
    } else {
      baud = (ch->ch_tun.un_tty)->termios.c_cflag & 15U;
    }
    if ((ch->ch_c_cflag & 4096U) != 0U) {
      iindex = 1;
    } else {
    }
    if (((int )ch->ch_digi.digi_flags & 2) != 0) {
      iindex = iindex + 2;
    } else {
    }
    jindex = (int )baud;
    if (((unsigned int )iindex <= 3U && jindex >= 0) && jindex <= 15) {
      baud = (uint )bauds[iindex][jindex];
    } else {
      baud = 0U;
    }
    if (baud == 0U) {
      baud = 9600U;
    } else {
    }
    if ((ch->ch_flags & 32768U) != 0U) {
      ch->ch_flags = ch->ch_flags & 4294934527U;
      if ((int )((short )ch->ch_digi.digi_flags) >= 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      } else {
      }
      if (((int )ch->ch_digi.digi_flags & 8192) == 0) {
        ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      } else {
      }
    } else {
    }
  }
  if ((ch->ch_c_cflag & 256U) != 0U) {
    lcr = (unsigned int )lcr | 8U;
  } else {
  }
  if ((ch->ch_c_cflag & 512U) == 0U) {
    lcr = (unsigned int )lcr | 16U;
  } else {
  }
  if ((ch->ch_c_cflag & 1073741824U) != 0U) {
    lcr = (unsigned int )lcr | 32U;
  } else {
  }
  if ((ch->ch_c_cflag & 64U) != 0U) {
    lcr = (unsigned int )lcr | 4U;
  } else {
  }
  {
  if ((ch->ch_c_cflag & 48U) == 0U) {
    goto case_0;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 16U) {
    goto case_16;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 32U) {
    goto case_32;
  } else {
  }
  if ((ch->ch_c_cflag & 48U) == 48U) {
    goto case_48;
  } else {
  }
  goto switch_default;
  case_0:
  lcr = lcr;
  goto ldv_35927;
  case_16:
  lcr = (unsigned int )lcr | 1U;
  goto ldv_35927;
  case_32:
  lcr = (unsigned int )lcr | 2U;
  goto ldv_35927;
  case_48: ;
  switch_default:
  lcr = (unsigned int )lcr | 3U;
  goto ldv_35927;
  switch_break: ;
  }
  ldv_35927:
  {
  uart_ier = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  ier = uart_ier;
  uart_lcr = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
  }
  if (baud == 0U) {
    baud = 9600U;
  } else {
  }
  quot = (int )((ch->ch_bd)->bd_dividend / baud);
  if (quot != 0 && ch->ch_old_baud != baud) {
    {
    ch->ch_old_baud = baud;
    writeb(128, (void volatile *)(& (ch->ch_neo_uart)->lcr));
    writeb((int )((unsigned char )quot), (void volatile *)(& (ch->ch_neo_uart)->txrx));
    writeb((int )((unsigned char )(quot >> 8)), (void volatile *)(& (ch->ch_neo_uart)->ier));
    writeb((int )lcr, (void volatile *)(& (ch->ch_neo_uart)->lcr));
    }
  } else {
  }
  if ((int )uart_lcr != (int )lcr) {
    {
    writeb((int )lcr, (void volatile *)(& (ch->ch_neo_uart)->lcr));
    }
  } else {
  }
  if ((ch->ch_c_cflag & 128U) != 0U) {
    ier = (unsigned int )ier | 5U;
  } else {
    ier = (unsigned int )ier & 250U;
  }
  if (((((unsigned int )ch->ch_digi.digi_flags & 12U) != 0U || (int )ch->ch_c_cflag < 0) || ((int )ch->ch_digi.digi_flags & 256) == 0) || (ch->ch_c_cflag & 2048U) == 0U) {
    ier = (unsigned int )ier | 8U;
  } else {
    ier = (unsigned int )ier & 247U;
  }
  ier = (unsigned int )ier | 2U;
  if ((int )ier != (int )uart_ier) {
    {
    writeb((int )ier, (void volatile *)(& (ch->ch_neo_uart)->ier));
    }
  } else {
  }
  {
  neo_set_new_start_stop_chars(ch);
  }
  if (((int )ch->ch_digi.digi_flags & 8) != 0 || (int )ch->ch_c_cflag < 0) {
    {
    neo_set_cts_flow_control(ch);
    }
  } else
  if ((ch->ch_c_iflag & 1024U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      {
      neo_set_no_output_flow_control(ch);
      }
    } else {
      {
      neo_set_ixon_flow_control(ch);
      }
    }
  } else {
    {
    neo_set_no_output_flow_control(ch);
    }
  }
  if (((int )ch->ch_digi.digi_flags & 4) != 0 || (int )ch->ch_c_cflag < 0) {
    {
    neo_set_rts_flow_control(ch);
    }
  } else
  if ((ch->ch_c_iflag & 4096U) != 0U) {
    if ((unsigned int )ch->ch_startc == 0U || (unsigned int )ch->ch_stopc == 0U) {
      {
      neo_set_no_input_flow_control(ch);
      }
    } else {
      {
      neo_set_ixoff_flow_control(ch);
      }
    }
  } else {
    {
    neo_set_no_input_flow_control(ch);
    }
  }
  if (baud <= 9599U) {
    {
    writeb(1, (void volatile *)(& (ch->ch_neo_uart)->rfifo));
    ch->ch_r_tlevel = 1U;
    }
  } else {
  }
  {
  neo_assert_modem_signals(ch);
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  neo_parse_modem(ch, (int )tmp);
  }
  return;
}
}
static void neo_tasklet(unsigned long data )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  unsigned long flags ;
  int i ;
  int state ;
  int ports ;
  {
  bd = (struct dgnc_board *)data;
  state = 0;
  ports = 0;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(& bd->bd_lock);
  state = (int )bd->state;
  ports = (int )bd->nasync;
  ldv_spin_unlock_irqrestore_102(& bd->bd_lock, flags);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(& bd->bd_intr_lock);
  }
  if (state == 2 && ports > 0) {
    i = 0;
    goto ldv_35943;
    ldv_35942:
    ch = bd->channels[i];
    if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
      goto ldv_35941;
    } else {
    }
    {
    dgnc_input(ch);
    neo_copy_data_from_queue_to_uart(ch);
    dgnc_wakeup_writes(ch);
    dgnc_carrier(ch);
    }
    if (ch->ch_stop_sending_break != 0UL) {
      {
      neo_clear_break(ch, 0);
      }
    } else {
    }
    ldv_35941:
    i = i + 1;
    ldv_35943: ;
    if (i < ports) {
      goto ldv_35942;
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_104(& bd->bd_intr_lock, flags);
  }
  return;
}
}
static irqreturn_t neo_intr(int irq , void *voidbrd )
{
  struct dgnc_board *brd ;
  struct channel_t *ch ;
  int port ;
  int type ;
  int current_port ;
  u32 tmp ;
  u32 uart_poll ;
  unsigned long flags ;
  unsigned long flags2 ;
  {
  brd = (struct dgnc_board *)voidbrd;
  port = 0;
  type = 0;
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return (0);
  } else {
  }
  {
  brd->intr_count = brd->intr_count + 1UL;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(& brd->bd_intr_lock);
  uart_poll = readl((void const volatile *)brd->re_map_membase + 128U);
  }
  if (uart_poll == 0U) {
    {
    ldv_spin_unlock_irqrestore_104(& brd->bd_intr_lock, flags);
    }
    return (0);
  } else {
  }
  current_port = 0;
  goto ldv_35958;
  ldv_35964:
  tmp = uart_poll;
  if ((tmp & dgnc_offset_table[current_port]) != 0U) {
    port = current_port;
    type = (int )(tmp >> (port * 3 + 8));
    type = type & 7;
  } else {
    current_port = current_port + 1;
    goto ldv_35958;
  }
  uart_poll = uart_poll & ~ dgnc_offset_table[port];
  if (type == 0) {
    goto ldv_35958;
  } else {
  }
  {
  if (type == 2) {
    goto case_2;
  } else {
  }
  if (type == 1) {
    goto case_1;
  } else {
  }
  if (type == 3) {
    goto case_3;
  } else {
  }
  if (type == 4) {
    goto case_4;
  } else {
  }
  goto switch_default;
  case_2: ;
  if ((uint )port > brd->nasync) {
    goto ldv_35958;
  } else {
  }
  {
  ch = brd->channels[port];
  neo_copy_data_from_uart_to_queue(ch);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(& ch->ch_lock);
  dgnc_check_queue_flow_control(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags2);
  }
  goto ldv_35958;
  case_1:
  {
  neo_parse_lsr(brd, (uint )port);
  }
  goto ldv_35958;
  case_3:
  {
  neo_parse_isr(brd, (uint )port);
  }
  goto ldv_35958;
  case_4:
  {
  neo_parse_isr(brd, (uint )port);
  }
  goto ldv_35958;
  switch_default: ;
  goto ldv_35958;
  switch_break: ;
  }
  ldv_35958: ;
  if ((uart_poll & 255U) != 0U) {
    goto ldv_35964;
  } else {
  }
  {
  tasklet_schedule(& brd->helper_tasklet);
  ldv_spin_unlock_irqrestore_104(& brd->bd_intr_lock, flags);
  }
  return (1);
}
}
static void neo_disable_receiver(struct channel_t *ch )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp & 254U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
static void neo_enable_receiver(struct channel_t *ch )
{
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->ier));
  tmp = tmp___0;
  tmp = (unsigned int )tmp | 1U;
  writeb((int )tmp, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
static void neo_copy_data_from_uart_to_queue(struct channel_t *ch )
{
  int qleft ;
  unsigned char linestatus ;
  unsigned char error_mask ;
  int n ;
  int total ;
  ushort head ;
  ushort tail ;
  unsigned long flags ;
  unsigned char tmp ;
  int _min1 ;
  int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned int _min1___1 ;
  unsigned int _min2___1 ;
  unsigned char tmp___0 ;
  unsigned char discard ;
  {
  qleft = 0;
  linestatus = 0U;
  error_mask = 0U;
  n = 0;
  total = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_130(& ch->ch_lock);
  head = (unsigned int )ch->ch_r_head & 8191U;
  tail = (unsigned int )ch->ch_r_tail & 8191U;
  linestatus = ch->ch_cached_lsr;
  ch->ch_cached_lsr = 0U;
  qleft = ((int )tail - (int )head) + -1;
  }
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if ((ch->ch_flags & 512U) == 0U) {
    total = 0;
  } else {
    {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->rfifo));
    total = (int )tmp;
    }
    if (((int )(ch->ch_bd)->dvid & 240) > 63) {
      total = total + -1;
    } else {
      total = total + -3;
    }
  }
  _min1 = total;
  _min2 = qleft;
  total = _min1 < _min2 ? _min1 : _min2;
  goto ldv_35996;
  ldv_35995:
  {
  linestatus = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  }
  if ((int )((signed char )linestatus) < 0) {
    goto ldv_35988;
  } else {
  }
  _min1___0 = (unsigned int )total;
  _min2___0 = 8192U - (unsigned int )head;
  n = (int )(_min1___0 < _min2___0 ? _min1___0 : _min2___0);
  _min1___1 = (unsigned int )n;
  _min2___1 = 12U;
  n = (int )(_min1___1 < _min2___1 ? _min1___1 : _min2___1);
  if (((int )linestatus & 96) != 0) {
    ch->ch_flags = ch->ch_flags | 3072U;
  } else {
  }
  {
  linestatus = 0U;
  memcpy_fromio((void *)ch->ch_rqueue + (unsigned long )head, (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                (size_t )n);
  memset((void *)ch->ch_equeue + (unsigned long )head, 0, (size_t )n);
  head = (unsigned int )((ushort )((int )head + (int )((unsigned short )n))) & 8191U;
  total = total - n;
  qleft = qleft - n;
  ch->ch_rxcount = ch->ch_rxcount + (ulong )n;
  }
  ldv_35996: ;
  if (total > 0) {
    goto ldv_35995;
  } else {
  }
  ldv_35988: ;
  if ((int )ch->ch_c_iflag & 1) {
    error_mask = (unsigned int )error_mask | 16U;
  } else {
  }
  ldv_36003:
  {
  tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  linestatus = (int )linestatus | (int )tmp___0;
  }
  if (((int )linestatus & 1) == 0) {
    ch->ch_cached_lsr = linestatus;
    goto ldv_35997;
  } else {
  }
  linestatus = (unsigned int )linestatus & 254U;
  if (((int )linestatus & 96) != 0) {
    linestatus = (unsigned int )linestatus & 159U;
    ch->ch_flags = ch->ch_flags | 3072U;
  } else {
  }
  if ((unsigned int )((int )linestatus & (int )error_mask) != 0U) {
    {
    linestatus = 0U;
    memcpy_fromio((void *)(& discard), (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                  1UL);
    }
    goto ldv_35999;
  } else {
  }
  goto ldv_36001;
  ldv_36000:
  tail = (unsigned int )((ushort )((unsigned int )tail + 1U)) & 8191U;
  ch->ch_r_tail = tail;
  ch->ch_err_overrun = ch->ch_err_overrun + 1UL;
  qleft = qleft + 1;
  ldv_36001: ;
  if (qleft <= 0) {
    goto ldv_36000;
  } else {
  }
  {
  memcpy_fromio((void *)ch->ch_rqueue + (unsigned long )head, (void const volatile *)(& (ch->ch_neo_uart)->txrxburst),
                1UL);
  *(ch->ch_equeue + (unsigned long )head) = linestatus;
  linestatus = 0U;
  head = (unsigned int )((ushort )((unsigned int )head + 1U)) & 8191U;
  qleft = qleft - 1;
  ch->ch_rxcount = ch->ch_rxcount + 1UL;
  }
  ldv_35999: ;
  goto ldv_36003;
  ldv_35997:
  {
  ch->ch_r_head = (unsigned int )head & 8191U;
  ch->ch_e_head = (unsigned int )head & 8191U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static int neo_drain(struct tty_struct *tty , uint seconds )
{
  unsigned long flags ;
  struct channel_t *ch ;
  struct un_t *un ;
  int rc ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  {
  rc = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (-6);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-6);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-6);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(& ch->ch_lock);
  un->un_flags = un->un_flags | 128U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  __ret = 0;
  __might_sleep("drivers/staging/dgnc/dgnc_neo.c", 1358, 0);
  }
  if ((un->un_flags & 128U) != 0U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_36018:
    {
    tmp = prepare_to_wait_event(& un->un_flags_wait, & __wait, 1);
    __int = tmp;
    }
    if ((un->un_flags & 128U) == 0U) {
      goto ldv_36017;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_36017;
    } else {
    }
    {
    schedule();
    }
    goto ldv_36018;
    ldv_36017:
    {
    finish_wait(& un->un_flags_wait, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  rc = __ret;
  return (rc);
}
}
static void neo_flush_uart_write(struct channel_t *ch )
{
  unsigned char tmp ;
  int i ;
  {
  tmp = 0U;
  i = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  writeb(5, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  neo_pci_posting_flush(ch->ch_bd);
  i = 0;
  }
  goto ldv_36028;
  ldv_36027:
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  }
  if (((int )tmp & 4) != 0) {
    {
    __const_udelay(42950UL);
    }
  } else {
    goto ldv_36026;
  }
  i = i + 1;
  ldv_36028: ;
  if (i <= 9) {
    goto ldv_36027;
  } else {
  }
  ldv_36026:
  ch->ch_flags = ch->ch_flags | 3072U;
  return;
}
}
static void neo_flush_uart_read(struct channel_t *ch )
{
  unsigned char tmp ;
  int i ;
  {
  tmp = 0U;
  i = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  writeb(3, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  neo_pci_posting_flush(ch->ch_bd);
  i = 0;
  }
  goto ldv_36036;
  ldv_36035:
  {
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  }
  if (((int )tmp & 2) != 0) {
    {
    __const_udelay(42950UL);
    }
  } else {
    goto ldv_36034;
  }
  i = i + 1;
  ldv_36036: ;
  if (i <= 9) {
    goto ldv_36035;
  } else {
  }
  ldv_36034: ;
  return;
}
}
static void neo_copy_data_from_queue_to_uart(struct channel_t *ch )
{
  ushort head ;
  ushort tail ;
  int n ;
  int s ;
  int qlen ;
  uint len_written ;
  unsigned long flags ;
  unsigned char lsrbits ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  unsigned char tmp___1 ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  {
  len_written = 0U;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(& ch->ch_lock);
  }
  if ((int )ch->ch_w_tail == (int )ch->ch_w_head) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 512U) == 0U) {
    {
    tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
    lsrbits = tmp;
    ch->ch_cached_lsr = (int )ch->ch_cached_lsr | (int )lsrbits;
    }
    if (((int )ch->ch_cached_lsr & 32) != 0) {
      ch->ch_cached_lsr = (unsigned int )ch->ch_cached_lsr & 223U;
      if ((int )((short )ch->ch_digi.digi_flags) < 0) {
        if (((int )ch->ch_mostat & 2) == 0) {
          {
          ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
          neo_assert_modem_signals(ch);
          }
        } else {
        }
        ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
      } else {
      }
      if (((int )ch->ch_digi.digi_flags & 8192) != 0) {
        if (((int )ch->ch_mostat & 1) == 0) {
          {
          ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
          neo_assert_modem_signals(ch);
          }
        } else {
        }
        ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
      } else {
      }
      {
      writeb((int )*(ch->ch_wqueue + (unsigned long )ch->ch_w_tail), (void volatile *)(& (ch->ch_neo_uart)->txrx));
      ch->ch_w_tail = (ushort )((int )ch->ch_w_tail + 1);
      ch->ch_w_tail = (unsigned int )ch->ch_w_tail & 4095U;
      ch->ch_txcount = ch->ch_txcount + 1UL;
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if (((int )(ch->ch_bd)->dvid & 240) <= 63) {
    if ((ch->ch_flags & 3072U) == 0U) {
      {
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      }
      return;
    } else {
    }
    {
    len_written = 0U;
    tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->tfifo));
    n = (int )tmp___0;
    }
    if ((unsigned int )n > (unsigned int )ch->ch_t_tlevel) {
      {
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      }
      return;
    } else {
    }
    n = 64 - (int )ch->ch_t_tlevel;
  } else {
    {
    tmp___1 = readb((void const volatile *)(& (ch->ch_neo_uart)->tfifo));
    n = 64 - (int )tmp___1;
    }
  }
  head = (unsigned int )ch->ch_w_head & 4095U;
  tail = (unsigned int )ch->ch_w_tail & 4095U;
  qlen = ((int )head - (int )tail) & 4095;
  _min1 = n;
  _min2 = qlen;
  n = _min1 < _min2 ? _min1 : _min2;
  goto ldv_36056;
  ldv_36055:
  s = ((int )head >= (int )tail ? (int )head : 4096) - (int )tail;
  _min1___0 = s;
  _min2___0 = n;
  s = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  if (s <= 0) {
    goto ldv_36054;
  } else {
  }
  if ((int )((short )ch->ch_digi.digi_flags) < 0) {
    if (((int )ch->ch_mostat & 2) == 0) {
      {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
      neo_assert_modem_signals(ch);
      }
    } else {
    }
    ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 8192) != 0) {
    if (((int )ch->ch_mostat & 1) == 0) {
      {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
      neo_assert_modem_signals(ch);
      }
    } else {
    }
    ch->ch_tun.un_flags = ch->ch_tun.un_flags | 128U;
  } else {
  }
  {
  memcpy_toio((void volatile *)(& (ch->ch_neo_uart)->txrxburst), (void const *)ch->ch_wqueue + (unsigned long )tail,
              (size_t )s);
  tail = (unsigned int )((ushort )((int )tail + (int )((unsigned short )s))) & 4095U;
  n = n - s;
  ch->ch_txcount = ch->ch_txcount + (ulong )s;
  len_written = len_written + (uint )s;
  }
  ldv_36056: ;
  if (n > 0) {
    goto ldv_36055;
  } else {
  }
  ldv_36054:
  ch->ch_w_tail = (unsigned int )tail & 4095U;
  if (len_written != 0U) {
    {
    neo_pci_posting_flush(ch->ch_bd);
    ch->ch_flags = ch->ch_flags & 4294964223U;
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void neo_parse_modem(struct channel_t *ch , unsigned char signals )
{
  unsigned char msignals ;
  unsigned char mswap ;
  {
  msignals = signals;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 512) != 0) {
    mswap = msignals;
    if (((int )mswap & 8) != 0) {
      msignals = (unsigned int )msignals & 247U;
      msignals = (unsigned int )msignals | 2U;
    } else {
    }
    if (((int )mswap & 2) != 0) {
      msignals = (unsigned int )msignals & 253U;
      msignals = (unsigned int )msignals | 8U;
    } else {
    }
    if ((int )((signed char )mswap) < 0) {
      msignals = (unsigned int )msignals & 127U;
      msignals = (unsigned int )msignals | 32U;
    } else {
    }
    if (((int )mswap & 32) != 0) {
      msignals = (unsigned int )msignals & 223U;
      msignals = (unsigned int )msignals | 128U;
    } else {
    }
  } else {
  }
  msignals = (unsigned int )msignals & 240U;
  if ((int )((signed char )msignals) < 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 128U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 127U;
  }
  if (((int )msignals & 32) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 32U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 223U;
  }
  if (((int )msignals & 64) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 64U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 191U;
  }
  if (((int )msignals & 16) != 0) {
    ch->ch_mistat = (unsigned int )ch->ch_mistat | 16U;
  } else {
    ch->ch_mistat = (unsigned int )ch->ch_mistat & 239U;
  }
  return;
}
}
static void neo_assert_modem_signals(struct channel_t *ch )
{
  unsigned char out ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  out = ch->ch_mostat;
  if ((ch->ch_flags & 8192U) != 0U) {
    out = (unsigned int )out | 16U;
  } else {
  }
  {
  writeb((int )out, (void volatile *)(& (ch->ch_neo_uart)->mcr));
  neo_pci_posting_flush(ch->ch_bd);
  __const_udelay(42950UL);
  }
  return;
}
}
static void neo_send_start_character(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_startc != 0U) {
    {
    ch->ch_xon_sends = ch->ch_xon_sends + 1UL;
    writeb((int )ch->ch_startc, (void volatile *)(& (ch->ch_neo_uart)->txrx));
    neo_pci_posting_flush(ch->ch_bd);
    __const_udelay(42950UL);
    }
  } else {
  }
  return;
}
}
static void neo_send_stop_character(struct channel_t *ch )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  if ((unsigned int )ch->ch_stopc != 0U) {
    {
    ch->ch_xoff_sends = ch->ch_xoff_sends + 1UL;
    writeb((int )ch->ch_stopc, (void volatile *)(& (ch->ch_neo_uart)->txrx));
    neo_pci_posting_flush(ch->ch_bd);
    __const_udelay(42950UL);
    }
  } else {
  }
  return;
}
}
static void neo_uart_init(struct channel_t *ch )
{
  {
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->ier));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(16, (void volatile *)(& (ch->ch_neo_uart)->efr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->txrx));
  writeb(7, (void volatile *)(& (ch->ch_neo_uart)->isr_fcr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  readb((void const volatile *)(& (ch->ch_neo_uart)->msr));
  ch->ch_flags = ch->ch_flags | 512U;
  writeb((int )ch->ch_mostat, (void volatile *)(& (ch->ch_neo_uart)->mcr));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
static void neo_uart_off(struct channel_t *ch )
{
  {
  {
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->efr));
  writeb(0, (void volatile *)(& (ch->ch_neo_uart)->ier));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
static uint neo_get_uart_bytes_left(struct channel_t *ch )
{
  unsigned char left ;
  unsigned char lsr ;
  unsigned char tmp ;
  {
  {
  left = 0U;
  tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lsr));
  lsr = tmp;
  ch->ch_cached_lsr = (int )ch->ch_cached_lsr | (int )lsr;
  }
  if (((int )lsr & 64) == 0) {
    if ((ch->ch_flags & 1024U) != 0U) {
      {
      tasklet_schedule(& (ch->ch_bd)->helper_tasklet);
      }
    } else {
    }
    left = 1U;
  } else {
    ch->ch_flags = ch->ch_flags | 3072U;
    left = 0U;
  }
  return ((uint )left);
}
}
static void neo_send_break(struct channel_t *ch , int msecs )
{
  unsigned char temp ;
  unsigned char tmp ;
  unsigned char temp___0 ;
  unsigned char tmp___0 ;
  {
  if (msecs == 0) {
    if ((ch->ch_flags & 4096U) != 0U) {
      {
      tmp = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
      temp = tmp;
      writeb((int )temp & 191, (void volatile *)(& (ch->ch_neo_uart)->lcr));
      neo_pci_posting_flush(ch->ch_bd);
      ch->ch_flags = ch->ch_flags & 4294963199U;
      ch->ch_stop_sending_break = 0UL;
      }
    } else {
    }
    return;
  } else {
  }
  ch->ch_stop_sending_break = (unsigned long )jiffies + (unsigned long )((msecs * 250) / 1000);
  if ((ch->ch_flags & 4096U) == 0U) {
    {
    tmp___0 = readb((void const volatile *)(& (ch->ch_neo_uart)->lcr));
    temp___0 = tmp___0;
    writeb((int )((unsigned int )temp___0 | 64U), (void volatile *)(& (ch->ch_neo_uart)->lcr));
    neo_pci_posting_flush(ch->ch_bd);
    ch->ch_flags = ch->ch_flags | 4096U;
    }
  } else {
  }
  return;
}
}
static void neo_send_immediate_char(struct channel_t *ch , unsigned char c )
{
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  writeb((int )c, (void volatile *)(& (ch->ch_neo_uart)->txrx));
  neo_pci_posting_flush(ch->ch_bd);
  }
  return;
}
}
static unsigned int neo_read_eeprom(unsigned char *base , unsigned int address )
{
  unsigned int enable ;
  unsigned int bits ;
  unsigned int databit ;
  unsigned int val ;
  unsigned int tmp ;
  unsigned char tmp___0 ;
  unsigned int tmp___1 ;
  {
  {
  writeb(32, (void volatile *)base + 142U);
  enable = address | 384U;
  bits = 9U;
  }
  goto ldv_36103;
  ldv_36102:
  {
  databit = (enable & (unsigned int )(1 << (int )bits)) != 0U ? 64U : 0U;
  writeb((int )((unsigned int )((unsigned char )databit) | 32U), (void volatile *)base + 142U);
  writeb((int )((unsigned int )((unsigned char )databit) | 48U), (void volatile *)base + 142U);
  }
  ldv_36103:
  tmp = bits;
  bits = bits - 1U;
  if (tmp != 0U) {
    goto ldv_36102;
  } else {
  }
  val = 0U;
  bits = 17U;
  goto ldv_36106;
  ldv_36105:
  {
  writeb(32, (void volatile *)base + 142U);
  writeb(48, (void volatile *)base + 142U);
  val = val << 1;
  tmp___0 = readb((void const volatile *)base + 142U);
  }
  if ((int )((signed char )tmp___0) < 0) {
    val = val | 1U;
  } else {
  }
  ldv_36106:
  tmp___1 = bits;
  bits = bits - 1U;
  if (tmp___1 != 0U) {
    goto ldv_36105;
  } else {
  }
  {
  writeb(32, (void volatile *)base + 142U);
  writeb(0, (void volatile *)base + 142U);
  }
  return (val);
}
}
static void neo_vpd(struct dgnc_board *brd )
{
  unsigned int i ;
  unsigned int a ;
  {
  i = 0U;
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0) || brd->magic != 1550708996) {
    return;
  } else {
  }
  if ((unsigned long )brd->re_map_membase == (unsigned long )((u8 *)0U)) {
    return;
  } else {
  }
  i = 0U;
  goto ldv_36114;
  ldv_36113:
  {
  a = neo_read_eeprom(brd->re_map_membase, i);
  brd->vpd[i * 2U] = (unsigned char )a;
  brd->vpd[i * 2U + 1U] = (unsigned char )(a >> 8);
  i = i + 1U;
  }
  ldv_36114: ;
  if (i <= 63U) {
    goto ldv_36113;
  } else {
  }
  if (((unsigned int )brd->vpd[8] != 130U && (unsigned int )brd->vpd[16] != 130U) || (unsigned int )brd->vpd[127] != 120U) {
    {
    memset((void *)(& brd->vpd), 0, 64UL);
    }
  } else {
    i = 0U;
    goto ldv_36117;
    ldv_36116: ;
    if ((unsigned int )brd->vpd[i] == 83U && (unsigned int )brd->vpd[i + 1U] == 78U) {
      {
      strncpy((char *)(& brd->serial_num), (char const *)(& brd->vpd) + (unsigned long )(i + 3U),
              9UL);
      }
    } else {
    }
    i = i + 1U;
    ldv_36117: ;
    if (i <= 124U) {
      goto ldv_36116;
    } else {
    }
  }
  return;
}
}
void ldv_tty_instance_callback_10_17(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_42(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_43(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_44(int (*arg0)(struct tty_struct * , unsigned int ) ,
                                     struct tty_struct *arg1 , unsigned int arg2 ) ;
void ldv_tty_instance_callback_10_47(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_50(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_51(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_52(unsigned int (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_54(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                     void *arg2 ) ;
void ldv_tty_instance_callback_10_60(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_64(void (*arg0)(struct channel_t * , int ) , struct channel_t *arg1 ,
                                     int arg2 ) ;
void ldv_tty_instance_callback_10_67(void (*arg0)(struct channel_t * , unsigned char ) ,
                                     struct channel_t *arg1 , unsigned char arg2 ) ;
void ldv_tty_instance_callback_10_70(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_71(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_75(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_tty_instance_callback_10_82(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_83(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 ) ;
void ldv_tty_instance_callback_10_84(void (*arg0)(struct dgnc_board * ) , struct dgnc_board *arg1 ) ;
void ldv_tty_instance_callback_10_17(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_assert_modem_signals(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_42(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_copy_data_from_queue_to_uart(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_43(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_disable_receiver(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_44(int (*arg0)(struct tty_struct * , unsigned int ) ,
                                     struct tty_struct *arg1 , unsigned int arg2 )
{
  {
  {
  neo_drain(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_47(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_enable_receiver(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_50(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_flush_uart_read(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_51(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_flush_uart_write(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_52(unsigned int (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_get_uart_bytes_left(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_54(enum irqreturn (*arg0)(int , void * ) , int arg1 ,
                                     void *arg2 )
{
  {
  {
  neo_intr(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_60(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  neo_param(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_64(void (*arg0)(struct channel_t * , int ) , struct channel_t *arg1 ,
                                     int arg2 )
{
  {
  {
  neo_send_break(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_67(void (*arg0)(struct channel_t * , unsigned char ) ,
                                     struct channel_t *arg1 , unsigned char arg2 )
{
  {
  {
  neo_send_immediate_char(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_70(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_send_start_character(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_71(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_send_stop_character(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_75(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  neo_tasklet(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_82(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_uart_init(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_83(void (*arg0)(struct channel_t * ) , struct channel_t *arg1 )
{
  {
  {
  neo_uart_off(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_84(void (*arg0)(struct dgnc_board * ) , struct dgnc_board *arg1 )
{
  {
  {
  neo_vpd(arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_96___2(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_99___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_101___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_103___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_105___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_113___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_117___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_119___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_121(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_123(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_125(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_127(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_130(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_132(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_134(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern void ldv_after_alloc(void * ) ;
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_3514;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3514;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3514;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3514;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3514: ;
  return (pfo_ret__);
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___1(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115___0(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_133(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_137(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_139(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_150(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_154(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_156(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_158(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_160(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_168(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_172(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_179(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_208(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(spinlock_t *ldv_func_arg1 ) ;
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(spinlock_t *ldv_func_arg1 ) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp___0 ;
  {
  {
  tmp___0 = variable_test_bit((long )flag, (unsigned long const volatile *)(& ti->flags));
  }
  return (tmp___0);
}
}
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_102(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static void ldv_spin_unlock_irqrestore_97(spinlock_t *lock , unsigned long flags ) ;
__inline static int waitqueue_active(wait_queue_head_t *q )
{
  int tmp ;
  {
  {
  tmp = list_empty((struct list_head const *)(& q->task_list));
  }
  return (tmp == 0);
}
}
__inline static void kref_init(struct kref *kref )
{
  {
  {
  atomic_set(& kref->refcount, 1);
  }
  return;
}
}
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  }
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  }
  return ((int )tmp___0);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern void tty_set_operations(struct tty_driver * , struct tty_operations const * ) ;
__inline static unsigned char *char_buf_ptr(struct tty_buffer *b , int ofs )
{
  {
  return ((unsigned char *)(& b->data) + (unsigned long )ofs);
}
}
__inline static char *flag_buf_ptr(struct tty_buffer *b , int ofs )
{
  unsigned char *tmp ;
  {
  {
  tmp = char_buf_ptr(b, ofs);
  }
  return ((char *)tmp + (unsigned long )b->size);
}
}
extern dev_t tty_devnum(struct tty_struct * ) ;
extern int tty_check_change(struct tty_struct * ) ;
extern int tty_register_driver(struct tty_driver * ) ;
extern int tty_unregister_driver(struct tty_driver * ) ;
extern struct device *tty_register_device(struct tty_driver * , unsigned int , struct device * ) ;
extern void tty_unregister_device(struct tty_driver * , unsigned int ) ;
static void ldv_tty_unregister_device_96(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
static void ldv_tty_unregister_device_97(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
extern void tty_hangup(struct tty_struct * ) ;
extern int tty_hung_up_p(struct file * ) ;
extern struct tty_ldisc *tty_ldisc_ref(struct tty_struct * ) ;
extern void tty_ldisc_deref(struct tty_ldisc * ) ;
extern void tty_ldisc_flush(struct tty_struct * ) ;
extern int tty_buffer_request_room(struct tty_port * , size_t ) ;
extern int tty_insert_flip_string_flags(struct tty_port * , unsigned char const * ,
                                        char const * , size_t ) ;
extern int tty_insert_flip_string_fixed_flag(struct tty_port * , unsigned char const * ,
                                             char , size_t ) ;
extern void tty_flip_buffer_push(struct tty_port * ) ;
__inline static int tty_insert_flip_char(struct tty_port *port , unsigned char ch ,
                                         char flag )
{
  struct tty_buffer *tb ;
  int change ;
  char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  {
  tb = port->buf.tail;
  change = (tb->flags & 1) != 0 && (int )((signed char )flag) != 0;
  if (change == 0 && tb->used < tb->size) {
    if ((tb->flags & 1) == 0) {
      {
      tmp = flag_buf_ptr(tb, tb->used);
      *tmp = flag;
      }
    } else {
    }
    {
    tmp___0 = tb->used;
    tb->used = tb->used + 1;
    tmp___1 = char_buf_ptr(tb, tmp___0);
    *tmp___1 = ch;
    }
    return (1);
  } else {
  }
  {
  tmp___2 = tty_insert_flip_string_flags(port, (unsigned char const *)(& ch), (char const *)(& flag),
                                         1UL);
  }
  return (tmp___2);
}
}
__inline static int tty_insert_flip_string(struct tty_port *port , unsigned char const *chars ,
                                           size_t size )
{
  int tmp ;
  {
  {
  tmp = tty_insert_flip_string_fixed_flag(port, chars, 0, size);
  }
  return (tmp);
}
}
void dgnc_create_tty_sysfs(struct un_t *un , struct device *c ) ;
void dgnc_remove_tty_sysfs(struct device *c ) ;
int dgnc_ms_sleep(ulong ms ) ;
static struct dgnc_board *dgnc_BoardsByMajor[256U] ;
static unsigned char *dgnc_TmpWriteBuf ;
static struct semaphore dgnc_TmpWriteSem = {{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "(dgnc_TmpWriteSem).lock",
                                                    0, 0UL}}, 1U, {& dgnc_TmpWriteSem.wait_list,
                                                                   & dgnc_TmpWriteSem.wait_list}};
static struct digi_t dgnc_digi_init =
     {128U, 100U, 50U, 100U, 4U, 4U, {'\033', '[', '5', 'i', '\000'}, {'\033', '[',
                                                                     '4', 'i', '\000'},
    {'a', 'n', 's', 'i', '\000'}};
static struct ktermios DgncDefaultTermios =
     {1280U, 5U, 3261U, 35387U, 0U, {'\003', '\034', '\177', '\025', '\004', '\000'},
    0U, 0U};
static int dgnc_tty_open(struct tty_struct *tty , struct file *file ) ;
static void dgnc_tty_close(struct tty_struct *tty , struct file *file ) ;
static int dgnc_block_til_ready(struct tty_struct *tty , struct file *file , struct channel_t *ch ) ;
static int dgnc_tty_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg ) ;
static int dgnc_tty_digigeta(struct tty_struct *tty , struct digi_t *retinfo ) ;
static int dgnc_tty_digiseta(struct tty_struct *tty , struct digi_t *new_info ) ;
static int dgnc_tty_write_room(struct tty_struct *tty ) ;
static int dgnc_tty_put_char(struct tty_struct *tty , unsigned char c ) ;
static int dgnc_tty_chars_in_buffer(struct tty_struct *tty ) ;
static void dgnc_tty_start(struct tty_struct *tty ) ;
static void dgnc_tty_stop(struct tty_struct *tty ) ;
static void dgnc_tty_throttle(struct tty_struct *tty ) ;
static void dgnc_tty_unthrottle(struct tty_struct *tty ) ;
static void dgnc_tty_flush_chars(struct tty_struct *tty ) ;
static void dgnc_tty_flush_buffer(struct tty_struct *tty ) ;
static void dgnc_tty_hangup(struct tty_struct *tty ) ;
static int dgnc_set_modem_info(struct tty_struct *tty , unsigned int command , unsigned int *value ) ;
static int dgnc_get_modem_info(struct channel_t *ch , unsigned int *value ) ;
static int dgnc_tty_tiocmget(struct tty_struct *tty ) ;
static int dgnc_tty_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear ) ;
static int dgnc_tty_send_break(struct tty_struct *tty , int msec ) ;
static void dgnc_tty_wait_until_sent(struct tty_struct *tty , int timeout ) ;
static int dgnc_tty_write(struct tty_struct *tty , unsigned char const *buf , int count ) ;
static void dgnc_tty_set_termios(struct tty_struct *tty , struct ktermios *old_termios ) ;
static void dgnc_tty_send_xchar(struct tty_struct *tty , char c ) ;
static struct tty_operations const dgnc_tty_ops =
     {0, 0, 0, & dgnc_tty_open, & dgnc_tty_close, 0, 0, & dgnc_tty_write, & dgnc_tty_put_char,
    & dgnc_tty_flush_chars, & dgnc_tty_write_room, & dgnc_tty_chars_in_buffer, & dgnc_tty_ioctl,
    0, & dgnc_tty_set_termios, & dgnc_tty_throttle, & dgnc_tty_unthrottle, & dgnc_tty_stop,
    & dgnc_tty_start, & dgnc_tty_hangup, & dgnc_tty_send_break, & dgnc_tty_flush_buffer,
    0, & dgnc_tty_wait_until_sent, & dgnc_tty_send_xchar, & dgnc_tty_tiocmget, & dgnc_tty_tiocmset,
    0, 0, 0, 0, 0, 0, 0};
int dgnc_tty_preinit(void)
{
  void *tmp ;
  {
  {
  tmp = kmalloc(4100UL, 208U);
  dgnc_TmpWriteBuf = (unsigned char *)tmp;
  }
  if ((unsigned long )dgnc_TmpWriteBuf == (unsigned long )((unsigned char *)0U)) {
    return (-12);
  } else {
  }
  return (0);
}
}
int dgnc_tty_register(struct dgnc_board *brd )
{
  int rc ;
  void *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  {
  {
  rc = 0;
  brd->SerialDriver.magic = 21506;
  snprintf((char *)(& brd->SerialName), 200UL, "tty_dgnc_%d_", brd->boardnum);
  brd->SerialDriver.name = (char const *)(& brd->SerialName);
  brd->SerialDriver.name_base = 0;
  brd->SerialDriver.major = 0;
  brd->SerialDriver.minor_start = 0;
  brd->SerialDriver.num = brd->maxports;
  brd->SerialDriver.type = 3;
  brd->SerialDriver.subtype = 1;
  brd->SerialDriver.init_termios = DgncDefaultTermios;
  brd->SerialDriver.driver_name = "dgnc";
  brd->SerialDriver.flags = 44UL;
  tmp = kcalloc((size_t )brd->maxports, 8UL, 208U);
  brd->SerialDriver.ttys = (struct tty_struct **)tmp;
  }
  if ((unsigned long )brd->SerialDriver.ttys == (unsigned long )((struct tty_struct **)0)) {
    return (-12);
  } else {
  }
  {
  kref_init(& brd->SerialDriver.kref);
  tmp___0 = kcalloc((size_t )brd->maxports, 8UL, 208U);
  brd->SerialDriver.termios = (struct ktermios **)tmp___0;
  }
  if ((unsigned long )brd->SerialDriver.termios == (unsigned long )((struct ktermios **)0)) {
    return (-12);
  } else {
  }
  {
  tty_set_operations(& brd->SerialDriver, & dgnc_tty_ops);
  }
  if (brd->dgnc_Major_Serial_Registered == 0U) {
    {
    rc = tty_register_driver(& brd->SerialDriver);
    }
    if (rc < 0) {
      {
      descriptor.modname = "dgnc";
      descriptor.function = "dgnc_tty_register";
      descriptor.filename = "drivers/staging/dgnc/dgnc_tty.c";
      descriptor.format = "Can\'t register tty device (%d)\n";
      descriptor.lineno = 236U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      }
      if (tmp___1 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (brd->pdev)->dev),
                          "Can\'t register tty device (%d)\n", rc);
        }
      } else {
      }
      return (rc);
    } else {
    }
    brd->dgnc_Major_Serial_Registered = 1U;
  } else {
  }
  {
  brd->PrintDriver.magic = 21506;
  snprintf((char *)(& brd->PrintName), 200UL, "pr_dgnc_%d_", brd->boardnum);
  brd->PrintDriver.name = (char const *)(& brd->PrintName);
  brd->PrintDriver.name_base = 0;
  brd->PrintDriver.major = brd->SerialDriver.major;
  brd->PrintDriver.minor_start = 128;
  brd->PrintDriver.num = brd->maxports;
  brd->PrintDriver.type = 3;
  brd->PrintDriver.subtype = 1;
  brd->PrintDriver.init_termios = DgncDefaultTermios;
  brd->PrintDriver.driver_name = "dgnc";
  brd->PrintDriver.flags = 44UL;
  tmp___2 = kcalloc((size_t )brd->maxports, 8UL, 208U);
  brd->PrintDriver.ttys = (struct tty_struct **)tmp___2;
  }
  if ((unsigned long )brd->PrintDriver.ttys == (unsigned long )((struct tty_struct **)0)) {
    return (-12);
  } else {
  }
  {
  kref_init(& brd->PrintDriver.kref);
  tmp___3 = kcalloc((size_t )brd->maxports, 8UL, 208U);
  brd->PrintDriver.termios = (struct ktermios **)tmp___3;
  }
  if ((unsigned long )brd->PrintDriver.termios == (unsigned long )((struct ktermios **)0)) {
    return (-12);
  } else {
  }
  {
  tty_set_operations(& brd->PrintDriver, & dgnc_tty_ops);
  }
  if (brd->dgnc_Major_TransparentPrint_Registered == 0U) {
    {
    rc = tty_register_driver(& brd->PrintDriver);
    }
    if (rc < 0) {
      {
      descriptor___0.modname = "dgnc";
      descriptor___0.function = "dgnc_tty_register";
      descriptor___0.filename = "drivers/staging/dgnc/dgnc_tty.c";
      descriptor___0.format = "Can\'t register Transparent Print device(%d)\n";
      descriptor___0.lineno = 286U;
      descriptor___0.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      }
      if (tmp___4 != 0L) {
        {
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& (brd->pdev)->dev),
                          "Can\'t register Transparent Print device(%d)\n", rc);
        }
      } else {
      }
      return (rc);
    } else {
    }
    brd->dgnc_Major_TransparentPrint_Registered = 1U;
  } else {
  }
  dgnc_BoardsByMajor[brd->SerialDriver.major] = brd;
  brd->dgnc_Serial_Major = (uint )brd->SerialDriver.major;
  brd->dgnc_TransparentPrint_Major = (uint )brd->PrintDriver.major;
  return (rc);
}
}
int dgnc_tty_init(struct dgnc_board *brd )
{
  int i ;
  void *vaddr ;
  struct channel_t *ch ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct device *classp ;
  {
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0)) {
    return (-6);
  } else {
  }
  vaddr = (void *)brd->re_map_membase;
  brd->nasync = brd->maxports;
  i = 0;
  goto ldv_37258;
  ldv_37257: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct channel_t *)0)) {
    {
    tmp = kzalloc(832UL, 208U);
    brd->channels[i] = (struct channel_t *)tmp;
    }
  } else {
  }
  i = i + 1;
  ldv_37258: ;
  if ((uint )i < brd->nasync) {
    goto ldv_37257;
  } else {
  }
  ch = brd->channels[0];
  vaddr = (void *)brd->re_map_membase;
  i = 0;
  goto ldv_37267;
  ldv_37266: ;
  if ((unsigned long )brd->channels[i] == (unsigned long )((struct channel_t *)0)) {
    goto ldv_37260;
  } else {
  }
  {
  spinlock_check(& ch->ch_lock);
  __raw_spin_lock_init(& ch->ch_lock.__annonCompField18.rlock, "&(&ch->ch_lock)->rlock",
                       & __key);
  ch->magic = 1819144452;
  ch->ch_tun.magic = 2087579908;
  ch->ch_tun.un_ch = ch;
  ch->ch_tun.un_type = 0U;
  ch->ch_tun.un_dev = (uint )i;
  ch->ch_pun.magic = 2087579908;
  ch->ch_pun.un_ch = ch;
  ch->ch_pun.un_type = 1U;
  ch->ch_pun.un_dev = (uint )(i + 128);
  }
  if (brd->bd_uart_offset == 512U) {
    ch->ch_neo_uart = (struct neo_uart_struct *)vaddr + (unsigned long )(brd->bd_uart_offset * (uint )i);
  } else {
    ch->ch_cls_uart = (struct cls_uart_struct *)vaddr + (unsigned long )(brd->bd_uart_offset * (uint )i);
  }
  {
  ch->ch_bd = brd;
  ch->ch_portnum = (uint )i;
  ch->ch_digi = dgnc_digi_init;
  ch->ch_close_delay = 250UL;
  __init_waitqueue_head(& ch->ch_flags_wait, "&ch->ch_flags_wait", & __key___0);
  __init_waitqueue_head(& ch->ch_tun.un_flags_wait, "&ch->ch_tun.un_flags_wait", & __key___1);
  __init_waitqueue_head(& ch->ch_pun.un_flags_wait, "&ch->ch_pun.un_flags_wait", & __key___2);
  classp = tty_register_device(& brd->SerialDriver, (unsigned int )i, & ((ch->ch_bd)->pdev)->dev);
  ch->ch_tun.un_sysfs = classp;
  dgnc_create_tty_sysfs(& ch->ch_tun, classp);
  classp = tty_register_device(& brd->PrintDriver, (unsigned int )i, & ((ch->ch_bd)->pdev)->dev);
  ch->ch_pun.un_sysfs = classp;
  dgnc_create_tty_sysfs(& ch->ch_pun, classp);
  }
  ldv_37260:
  i = i + 1;
  ch = brd->channels[i];
  ldv_37267: ;
  if ((uint )i < brd->nasync) {
    goto ldv_37266;
  } else {
  }
  return (0);
}
}
void dgnc_tty_post_uninit(void)
{
  {
  {
  kfree((void const *)dgnc_TmpWriteBuf);
  dgnc_TmpWriteBuf = (unsigned char *)0U;
  }
  return;
}
}
void dgnc_tty_uninit(struct dgnc_board *brd )
{
  int i ;
  {
  i = 0;
  if (brd->dgnc_Major_Serial_Registered != 0U) {
    dgnc_BoardsByMajor[brd->SerialDriver.major] = (struct dgnc_board *)0;
    brd->dgnc_Serial_Major = 0U;
    i = 0;
    goto ldv_37277;
    ldv_37276:
    {
    dgnc_remove_tty_sysfs((brd->channels[i])->ch_tun.un_sysfs);
    ldv_tty_unregister_device_96(& brd->SerialDriver, (unsigned int )i);
    i = i + 1;
    }
    ldv_37277: ;
    if ((uint )i < brd->nasync) {
      goto ldv_37276;
    } else {
    }
    {
    tty_unregister_driver(& brd->SerialDriver);
    brd->dgnc_Major_Serial_Registered = 0U;
    }
  } else {
  }
  if (brd->dgnc_Major_TransparentPrint_Registered != 0U) {
    dgnc_BoardsByMajor[brd->PrintDriver.major] = (struct dgnc_board *)0;
    brd->dgnc_TransparentPrint_Major = 0U;
    i = 0;
    goto ldv_37280;
    ldv_37279:
    {
    dgnc_remove_tty_sysfs((brd->channels[i])->ch_pun.un_sysfs);
    ldv_tty_unregister_device_97(& brd->PrintDriver, (unsigned int )i);
    i = i + 1;
    }
    ldv_37280: ;
    if ((uint )i < brd->nasync) {
      goto ldv_37279;
    } else {
    }
    {
    tty_unregister_driver(& brd->PrintDriver);
    brd->dgnc_Major_TransparentPrint_Registered = 0U;
    }
  } else {
  }
  {
  kfree((void const *)brd->SerialDriver.ttys);
  brd->SerialDriver.ttys = (struct tty_struct **)0;
  kfree((void const *)brd->PrintDriver.ttys);
  brd->PrintDriver.ttys = (struct tty_struct **)0;
  }
  return;
}
}
static void dgnc_wmove(struct channel_t *ch , char *buf , uint n )
{
  int remain ;
  uint head ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  head = (uint )ch->ch_w_head & 4095U;
  remain = (int )(4096U - head);
  if (n >= (uint )remain) {
    {
    n = n - (uint )remain;
    memcpy((void *)ch->ch_wqueue + (unsigned long )head, (void const *)buf, (size_t )remain);
    head = 0U;
    buf = buf + (unsigned long )remain;
    }
  } else {
  }
  if (n != 0U) {
    {
    remain = (int )n;
    memcpy((void *)ch->ch_wqueue + (unsigned long )head, (void const *)buf, (size_t )remain);
    head = head + (uint )remain;
    }
  } else {
  }
  head = head & 4095U;
  ch->ch_w_head = (ushort )head;
  return;
}
}
void dgnc_input(struct channel_t *ch )
{
  struct dgnc_board *bd ;
  struct tty_struct *tp ;
  struct tty_ldisc *ld ;
  uint rmask ;
  ushort head ;
  ushort tail ;
  int data_len ;
  unsigned long flags ;
  int flip_len ;
  int len ;
  int n ;
  int s ;
  int i ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int _min1___1 ;
  int _min2___1 ;
  {
  len = 0;
  n = 0;
  s = 0;
  i = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  tp = ch->ch_tun.un_tty;
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(& ch->ch_lock);
  rmask = 8191U;
  head = (int )ch->ch_r_head & (int )((ushort )rmask);
  tail = (int )ch->ch_r_tail & (int )((ushort )rmask);
  data_len = (int )((uint )((int )head - (int )tail) & rmask);
  }
  if (data_len == 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if (((((unsigned long )tp == (unsigned long )((struct tty_struct *)0) || tp->magic != 21505) || (ch->ch_tun.un_flags & 1U) == 0U) || (tp->termios.c_cflag & 128U) == 0U) || (ch->ch_tun.un_flags & 2U) != 0U) {
    {
    ch->ch_r_head = tail;
    dgnc_check_queue_flow_control(ch);
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((ch->ch_flags & 262144U) != 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  {
  flip_len = 512;
  _min1 = data_len;
  _min2 = flip_len;
  len = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = len;
  _min2___0 = 4095;
  len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  ld = tty_ldisc_ref(tp);
  }
  if ((unsigned long )ld == (unsigned long )((struct tty_ldisc *)0)) {
    len = 0;
  } else
  if ((unsigned long )(ld->ops)->receive_buf == (unsigned long )((void (*)(struct tty_struct * ,
                                                                           unsigned char const * ,
                                                                           char * ,
                                                                           int ))0)) {
    ch->ch_r_head = ch->ch_r_tail;
    len = 0;
  } else {
  }
  if (len <= 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    if ((unsigned long )ld != (unsigned long )((struct tty_ldisc *)0)) {
      {
      tty_ldisc_deref(ld);
      }
    } else {
    }
    return;
  } else {
  }
  {
  len = tty_buffer_request_room(tp->port, (size_t )len);
  n = len;
  }
  goto ldv_37319;
  ldv_37318:
  s = ((int )head >= (int )tail ? (int )head : 8192) - (int )tail;
  _min1___1 = s;
  _min2___1 = n;
  s = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  if (s <= 0) {
    goto ldv_37314;
  } else {
  }
  if (*((unsigned int *)tp + 290UL) != 0U) {
    i = 0;
    goto ldv_37316;
    ldv_37315: ;
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 16) != 0) {
      {
      tty_insert_flip_char(tp->port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           1);
      }
    } else
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 4) != 0) {
      {
      tty_insert_flip_char(tp->port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           3);
      }
    } else
    if (((int )*(ch->ch_equeue + ((unsigned long )tail + (unsigned long )i)) & 8) != 0) {
      {
      tty_insert_flip_char(tp->port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           2);
      }
    } else {
      {
      tty_insert_flip_char(tp->port, (int )*(ch->ch_rqueue + ((unsigned long )tail + (unsigned long )i)),
                           0);
      }
    }
    i = i + 1;
    ldv_37316: ;
    if (i < s) {
      goto ldv_37315;
    } else {
    }
  } else {
    {
    tty_insert_flip_string(tp->port, (unsigned char const *)ch->ch_rqueue + (unsigned long )tail,
                           (size_t )s);
    }
  }
  tail = (int )tail + (int )((ushort )s);
  n = n - s;
  tail = (int )tail & (int )((ushort )rmask);
  ldv_37319: ;
  if (n != 0) {
    goto ldv_37318;
  } else {
  }
  ldv_37314:
  {
  ch->ch_r_tail = (int )tail & (int )((ushort )rmask);
  ch->ch_e_tail = (int )tail & (int )((ushort )rmask);
  dgnc_check_queue_flow_control(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tty_flip_buffer_push(tp->port);
  }
  if ((unsigned long )ld != (unsigned long )((struct tty_ldisc *)0)) {
    {
    tty_ldisc_deref(ld);
    }
  } else {
  }
  return;
}
}
void dgnc_carrier(struct channel_t *ch )
{
  struct dgnc_board *bd ;
  int virt_carrier ;
  int phys_carrier ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  virt_carrier = 0;
  phys_carrier = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  if ((int )((signed char )ch->ch_mistat) < 0) {
    phys_carrier = 1;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 256) != 0) {
    virt_carrier = 1;
  } else {
  }
  if ((ch->ch_c_cflag & 2048U) != 0U) {
    virt_carrier = 1;
  } else {
  }
  if ((ch->ch_flags & 16U) == 0U && virt_carrier == 1) {
    {
    tmp = waitqueue_active(& ch->ch_flags_wait);
    }
    if (tmp != 0) {
      {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
      }
    } else {
    }
  } else {
  }
  if ((ch->ch_flags & 8U) == 0U && phys_carrier == 1) {
    {
    tmp___0 = waitqueue_active(& ch->ch_flags_wait);
    }
    if (tmp___0 != 0) {
      {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
      }
    } else {
    }
  } else {
  }
  if (virt_carrier == 0 && ((ch->ch_flags & 8U) != 0U && phys_carrier == 0)) {
    {
    tmp___1 = waitqueue_active(& ch->ch_flags_wait);
    }
    if (tmp___1 != 0) {
      {
      __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
      }
    } else {
    }
    if (ch->ch_tun.un_open_count != 0U) {
      {
      tty_hangup(ch->ch_tun.un_tty);
      }
    } else {
    }
    if (ch->ch_pun.un_open_count != 0U) {
      {
      tty_hangup(ch->ch_pun.un_tty);
      }
    } else {
    }
  } else {
  }
  if (virt_carrier == 1) {
    ch->ch_flags = ch->ch_flags | 16U;
  } else {
    ch->ch_flags = ch->ch_flags & 4294967279U;
  }
  if (phys_carrier == 1) {
    ch->ch_flags = ch->ch_flags | 8U;
  } else {
    ch->ch_flags = ch->ch_flags & 4294967287U;
  }
  return;
}
}
static void dgnc_set_custom_speed(struct channel_t *ch , uint newrate )
{
  int testdiv ;
  int testrate_high ;
  int testrate_low ;
  int deltahigh ;
  int deltalow ;
  {
  if (newrate == 0U) {
    ch->ch_custom_speed = 0U;
    return;
  } else {
  }
  if (newrate != 0U && newrate < (ch->ch_bd)->bd_dividend / 65535U + 1U) {
    newrate = (ch->ch_bd)->bd_dividend / 65535U + 1U;
  } else {
  }
  if (newrate != 0U && newrate > (ch->ch_bd)->bd_dividend) {
    newrate = (ch->ch_bd)->bd_dividend;
  } else {
  }
  if (newrate != 0U) {
    testdiv = (int )((ch->ch_bd)->bd_dividend / newrate);
    testrate_high = (int )((ch->ch_bd)->bd_dividend / (uint )testdiv);
    testrate_low = (int )((ch->ch_bd)->bd_dividend / (uint )(testdiv + 1));
    if ((uint )testrate_high != newrate) {
      deltahigh = (int )((uint )testrate_high - newrate);
      deltalow = (int )(newrate - (uint )testrate_low);
      if (deltahigh < deltalow) {
        newrate = (uint )testrate_high;
      } else {
        newrate = (uint )testrate_low;
      }
    } else {
    }
  } else {
  }
  ch->ch_custom_speed = newrate;
  return;
}
}
void dgnc_check_queue_flow_control(struct channel_t *ch )
{
  int qleft ;
  {
  qleft = 0;
  qleft = ((int )ch->ch_r_tail - (int )ch->ch_r_head) + -1;
  if (qleft < 0) {
    qleft = qleft + 8192;
  } else {
  }
  if (qleft <= 255) {
    if (((int )ch->ch_digi.digi_flags & 8) != 0 || (int )ch->ch_c_cflag < 0) {
      if ((ch->ch_flags & 64U) == 0U) {
        {
        (*(((ch->ch_bd)->bd_ops)->disable_receiver))(ch);
        ch->ch_flags = ch->ch_flags | 64U;
        }
      } else {
      }
    } else
    if ((ch->ch_c_iflag & 4096U) != 0U) {
      if (ch->ch_stops_sent <= 5U) {
        {
        (*(((ch->ch_bd)->bd_ops)->send_stop_character))(ch);
        ch->ch_stops_sent = ch->ch_stops_sent + 1U;
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if (qleft > 4096) {
    if (((int )ch->ch_digi.digi_flags & 4) != 0 || (int )ch->ch_c_cflag < 0) {
      if ((ch->ch_flags & 64U) != 0U) {
        {
        (*(((ch->ch_bd)->bd_ops)->enable_receiver))(ch);
        ch->ch_flags = ch->ch_flags & 4294967231U;
        }
      } else {
      }
    } else
    if ((ch->ch_c_iflag & 4096U) != 0U && ch->ch_stops_sent != 0U) {
      {
      ch->ch_stops_sent = 0U;
      (*(((ch->ch_bd)->bd_ops)->send_start_character))(ch);
      }
    } else {
    }
  } else {
  }
  return;
}
}
void dgnc_wakeup_writes(struct channel_t *ch )
{
  int qlen ;
  unsigned long flags ;
  uint tmp ;
  uint tmp___0 ;
  {
  qlen = 0;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104___0(& ch->ch_lock);
  qlen = (int )ch->ch_w_head - (int )ch->ch_w_tail;
  }
  if (qlen < 0) {
    qlen = qlen + 4096;
  } else {
  }
  if (qlen > 3839) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  if ((int )ch->ch_tun.un_flags & 1) {
    if (((ch->ch_tun.un_tty)->flags & 32UL) != 0UL && (unsigned long )(((ch->ch_tun.un_tty)->ldisc)->ops)->write_wakeup != (unsigned long )((void (*)(struct tty_struct * ))0)) {
      {
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      (*((((ch->ch_tun.un_tty)->ldisc)->ops)->write_wakeup))(ch->ch_tun.un_tty);
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107___0(& ch->ch_lock);
      }
    } else {
    }
    {
    __wake_up(& (ch->ch_tun.un_tty)->write_wait, 1U, 1, (void *)0);
    }
    if ((ch->ch_tun.un_flags & 128U) != 0U) {
      if (qlen == 0) {
        {
        tmp = (*(((ch->ch_bd)->bd_ops)->get_uart_bytes_left))(ch);
        }
        if (tmp == 0U) {
          ch->ch_tun.un_flags = ch->ch_tun.un_flags & 4294967167U;
          if ((int )((short )ch->ch_digi.digi_flags) < 0) {
            {
            ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
            (*(((ch->ch_bd)->bd_ops)->assert_modem_signals))(ch);
            }
          } else {
          }
          if (((int )ch->ch_digi.digi_flags & 8192) != 0) {
            {
            ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
            (*(((ch->ch_bd)->bd_ops)->assert_modem_signals))(ch);
            }
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
    {
    __wake_up(& ch->ch_tun.un_flags_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  if ((int )ch->ch_pun.un_flags & 1) {
    if (((ch->ch_pun.un_tty)->flags & 32UL) != 0UL && (unsigned long )(((ch->ch_pun.un_tty)->ldisc)->ops)->write_wakeup != (unsigned long )((void (*)(struct tty_struct * ))0)) {
      {
      ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
      (*((((ch->ch_pun.un_tty)->ldisc)->ops)->write_wakeup))(ch->ch_pun.un_tty);
      ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109___0(& ch->ch_lock);
      }
    } else {
    }
    {
    __wake_up(& (ch->ch_pun.un_tty)->write_wait, 1U, 1, (void *)0);
    }
    if ((ch->ch_pun.un_flags & 128U) != 0U) {
      if (qlen == 0) {
        {
        tmp___0 = (*(((ch->ch_bd)->bd_ops)->get_uart_bytes_left))(ch);
        }
        if (tmp___0 == 0U) {
          ch->ch_pun.un_flags = ch->ch_pun.un_flags & 4294967167U;
        } else {
        }
      } else {
      }
    } else {
    }
    {
    __wake_up(& ch->ch_pun.un_flags_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static int dgnc_tty_open(struct tty_struct *tty , struct file *file )
{
  struct dgnc_board *brd ;
  struct channel_t *ch ;
  struct un_t *un ;
  uint major ;
  uint minor ;
  int rc ;
  unsigned long flags ;
  dev_t tmp ;
  dev_t tmp___0 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___1 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___2 ;
  int __ret___3 ;
  wait_queue_t __wait___1 ;
  long __ret___4 ;
  long __int___1 ;
  long tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  major = 0U;
  minor = 0U;
  rc = 0;
  rc = 0;
  tmp = tty_devnum(tty);
  major = tmp >> 20;
  tmp___0 = tty_devnum(tty);
  minor = tmp___0 & 1048575U;
  }
  if (major > 255U) {
    return (-6);
  } else {
  }
  brd = dgnc_BoardsByMajor[major];
  if ((unsigned long )brd == (unsigned long )((struct dgnc_board *)0)) {
    return (-6);
  } else {
  }
  {
  __ret = 0;
  __might_sleep("drivers/staging/dgnc/dgnc_tty.c", 1059, 0);
  }
  if ((brd->state & 2U) == 0U) {
    {
    __ret___0 = 0L;
    INIT_LIST_HEAD(& __wait.task_list);
    __wait.flags = 0U;
    }
    ldv_37361:
    {
    tmp___1 = prepare_to_wait_event(& brd->state_wait, & __wait, 1);
    __int = tmp___1;
    }
    if ((brd->state & 2U) != 0U) {
      goto ldv_37360;
    } else {
    }
    if (__int != 0L) {
      __ret___0 = __int;
      goto ldv_37360;
    } else {
    }
    {
    schedule();
    }
    goto ldv_37361;
    ldv_37360:
    {
    finish_wait(& brd->state_wait, & __wait);
    }
    __ret = (int )__ret___0;
  } else {
  }
  rc = __ret;
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___1(& brd->bd_lock);
  }
  if ((minor & 127U) > brd->nasync) {
    {
    ldv_spin_unlock_irqrestore_102(& brd->bd_lock, flags);
    }
    return (-6);
  } else {
  }
  ch = brd->channels[minor & 127U];
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0)) {
    {
    ldv_spin_unlock_irqrestore_102(& brd->bd_lock, flags);
    }
    return (-6);
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_102(& brd->bd_lock, flags);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115___0(& ch->ch_lock);
  }
  if ((minor & 255U) <= 127U) {
    un = & (brd->channels[minor & 127U])->ch_tun;
    un->un_type = 0U;
  } else
  if ((minor & 255U) > 127U) {
    un = & (brd->channels[minor & 127U])->ch_pun;
    un->un_type = 1U;
  } else {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return (-6);
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  __ret___1 = 0;
  __might_sleep("drivers/staging/dgnc/dgnc_tty.c", 1103, 0);
  }
  if ((ch->ch_flags & 128U) != 0U) {
    {
    __ret___2 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    }
    ldv_37370:
    {
    tmp___2 = prepare_to_wait_event(& ch->ch_flags_wait, & __wait___0, 1);
    __int___0 = tmp___2;
    }
    if ((ch->ch_flags & 128U) == 0U) {
      goto ldv_37369;
    } else {
    }
    if (__int___0 != 0L) {
      __ret___2 = __int___0;
      goto ldv_37369;
    } else {
    }
    {
    schedule();
    }
    goto ldv_37370;
    ldv_37369:
    {
    finish_wait(& ch->ch_flags_wait, & __wait___0);
    }
    __ret___1 = (int )__ret___2;
  } else {
  }
  rc = __ret___1;
  if (rc != 0) {
    return (-4);
  } else {
  }
  {
  __ret___3 = 0;
  __might_sleep("drivers/staging/dgnc/dgnc_tty.c", 1117, 0);
  }
  if (((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & 2U) != 0U) {
    {
    __ret___4 = 0L;
    INIT_LIST_HEAD(& __wait___1.task_list);
    __wait___1.flags = 0U;
    }
    ldv_37379:
    {
    tmp___3 = prepare_to_wait_event(& ch->ch_flags_wait, & __wait___1, 1);
    __int___1 = tmp___3;
    }
    if (((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & 2U) == 0U) {
      goto ldv_37378;
    } else {
    }
    if (__int___1 != 0L) {
      __ret___4 = __int___1;
      goto ldv_37378;
    } else {
    }
    {
    schedule();
    }
    goto ldv_37379;
    ldv_37378:
    {
    finish_wait(& ch->ch_flags_wait, & __wait___1);
    }
    __ret___3 = (int )__ret___4;
  } else {
  }
  rc = __ret___3;
  if (rc != 0) {
    return (-4);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(& ch->ch_lock);
  tty->driver_data = (void *)un;
  }
  if ((un->un_flags & 1U) == 0U) {
    un->un_tty = tty;
  } else {
  }
  {
  ch->ch_flags = ch->ch_flags | 128U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if ((unsigned long )ch->ch_rqueue == (unsigned long )((unsigned char *)0U)) {
    {
    tmp___4 = kzalloc(8192UL, 208U);
    ch->ch_rqueue = (unsigned char *)tmp___4;
    }
  } else {
  }
  if ((unsigned long )ch->ch_equeue == (unsigned long )((unsigned char *)0U)) {
    {
    tmp___5 = kzalloc(8192UL, 208U);
    ch->ch_equeue = (unsigned char *)tmp___5;
    }
  } else {
  }
  if ((unsigned long )ch->ch_wqueue == (unsigned long )((unsigned char *)0U)) {
    {
    tmp___6 = kzalloc(4096UL, 208U);
    ch->ch_wqueue = (unsigned char *)tmp___6;
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags & 4294967167U;
  __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
  }
  if (((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & 1U) == 0U) {
    {
    ch->ch_r_head = 0U;
    ch->ch_r_tail = 0U;
    ch->ch_e_head = 0U;
    ch->ch_e_tail = 0U;
    ch->ch_w_head = 0U;
    ch->ch_w_tail = 0U;
    (*((brd->bd_ops)->flush_uart_write))(ch);
    (*((brd->bd_ops)->flush_uart_read))(ch);
    ch->ch_flags = 0U;
    ch->ch_cached_lsr = 0U;
    ch->ch_stop_sending_break = 0UL;
    ch->ch_stops_sent = 0U;
    ch->ch_c_cflag = tty->termios.c_cflag;
    ch->ch_c_iflag = tty->termios.c_iflag;
    ch->ch_c_oflag = tty->termios.c_oflag;
    ch->ch_c_lflag = tty->termios.c_lflag;
    ch->ch_startc = tty->termios.c_cc[8];
    ch->ch_stopc = tty->termios.c_cc[9];
    }
    if ((int )((short )ch->ch_digi.digi_flags) >= 0) {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
    } else {
    }
    if (((int )ch->ch_digi.digi_flags & 8192) == 0) {
      ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
    } else {
    }
    {
    (*((brd->bd_ops)->uart_init))(ch);
    }
  } else {
  }
  {
  (*((brd->bd_ops)->param))(tty);
  dgnc_carrier(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  rc = dgnc_block_til_ready(tty, file, ch);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(& ch->ch_lock);
  ch->ch_open_count = ch->ch_open_count + 1U;
  un->un_open_count = un->un_open_count + 1U;
  un->un_flags = un->un_flags | 1U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (rc);
}
}
static int dgnc_block_til_ready(struct tty_struct *tty , struct file *file , struct channel_t *ch )
{
  int retval ;
  struct un_t *un ;
  unsigned long flags ;
  uint old_flags ;
  int sleep_on_un_flags ;
  int tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp___2 ;
  int __ret___1 ;
  wait_queue_t __wait___0 ;
  long __ret___2 ;
  long __int___0 ;
  long tmp___3 ;
  {
  retval = 0;
  un = (struct un_t *)0;
  old_flags = 0U;
  sleep_on_un_flags = 0;
  if ((((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || (tty->magic != 21505 || (unsigned long )file == (unsigned long )((struct file *)0))) || (unsigned long )ch == (unsigned long )((struct channel_t *)0)) || ch->magic != 1819144452) {
    return (-6);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-6);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(& ch->ch_lock);
  ch->ch_wopen = ch->ch_wopen + 1U;
  }
  ldv_37411:
  sleep_on_un_flags = 0;
  if ((ch->ch_bd)->state == 0U) {
    retval = -6;
    goto ldv_37392;
  } else {
  }
  {
  tmp = tty_hung_up_p(file);
  }
  if (tmp != 0) {
    retval = -11;
    goto ldv_37392;
  } else {
  }
  if (((ch->ch_tun.un_flags | ch->ch_pun.un_flags) & 2U) == 0U) {
    if ((file->f_flags & 2048U) != 0U) {
      goto ldv_37392;
    } else {
    }
    if ((tty->flags & 2UL) != 0UL) {
      retval = -5;
      goto ldv_37392;
    } else {
    }
    if ((ch->ch_flags & 8U) != 0U) {
      goto ldv_37392;
    } else {
    }
    if ((ch->ch_flags & 16U) != 0U) {
      goto ldv_37392;
    } else {
    }
  } else {
    sleep_on_un_flags = 1;
  }
  {
  tmp___0 = get_current();
  tmp___1 = signal_pending(tmp___0);
  }
  if (tmp___1 != 0) {
    retval = -512;
    goto ldv_37392;
  } else {
  }
  if (sleep_on_un_flags != 0) {
    old_flags = ch->ch_tun.un_flags | ch->ch_pun.un_flags;
  } else {
    old_flags = ch->ch_flags;
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if (sleep_on_un_flags != 0) {
    {
    __ret = 0;
    __might_sleep("drivers/staging/dgnc/dgnc_tty.c", 1338, 0);
    }
    if (old_flags == (ch->ch_tun.un_flags | ch->ch_pun.un_flags)) {
      {
      __ret___0 = 0L;
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      }
      ldv_37399:
      {
      tmp___2 = prepare_to_wait_event(& un->un_flags_wait, & __wait, 1);
      __int = tmp___2;
      }
      if (old_flags != (ch->ch_tun.un_flags | ch->ch_pun.un_flags)) {
        goto ldv_37398;
      } else {
      }
      if (__int != 0L) {
        __ret___0 = __int;
        goto ldv_37398;
      } else {
      }
      {
      schedule();
      }
      goto ldv_37399;
      ldv_37398:
      {
      finish_wait(& un->un_flags_wait, & __wait);
      }
      __ret = (int )__ret___0;
    } else {
    }
    retval = __ret;
  } else {
    {
    __ret___1 = 0;
    __might_sleep("drivers/staging/dgnc/dgnc_tty.c", 1341, 0);
    }
    if (old_flags == ch->ch_flags) {
      {
      __ret___2 = 0L;
      INIT_LIST_HEAD(& __wait___0.task_list);
      __wait___0.flags = 0U;
      }
      ldv_37408:
      {
      tmp___3 = prepare_to_wait_event(& ch->ch_flags_wait, & __wait___0, 1);
      __int___0 = tmp___3;
      }
      if (old_flags != ch->ch_flags) {
        goto ldv_37407;
      } else {
      }
      if (__int___0 != 0L) {
        __ret___2 = __int___0;
        goto ldv_37407;
      } else {
      }
      {
      schedule();
      }
      goto ldv_37408;
      ldv_37407:
      {
      finish_wait(& ch->ch_flags_wait, & __wait___0);
      }
      __ret___1 = (int )__ret___2;
    } else {
    }
    retval = __ret___1;
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(& ch->ch_lock);
  }
  goto ldv_37411;
  ldv_37392:
  {
  ch->ch_wopen = ch->ch_wopen - 1U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if (retval != 0) {
    return (retval);
  } else {
  }
  return (0);
}
}
static void dgnc_tty_hangup(struct tty_struct *tty )
{
  struct un_t *un ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  {
  dgnc_tty_flush_buffer(tty);
  }
  return;
}
}
static void dgnc_tty_close(struct tty_struct *tty , struct file *file )
{
  struct ktermios *ts ;
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  rc = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ts = & tty->termios;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(& ch->ch_lock);
  }
  if (tty->count == 1 && un->un_open_count != 1U) {
    {
    descriptor.modname = "dgnc";
    descriptor.function = "dgnc_tty_close";
    descriptor.filename = "drivers/staging/dgnc/dgnc_tty.c";
    descriptor.format = "tty->count is 1, un open count is %d\n";
    descriptor.lineno = 1429U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    }
    if (tmp != 0L) {
      {
      __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "tty->count is 1, un open count is %d\n",
                        un->un_open_count);
      }
    } else {
    }
    un->un_open_count = 1U;
  } else {
  }
  if (un->un_open_count != 0U) {
    un->un_open_count = un->un_open_count - 1U;
  } else {
    {
    descriptor___0.modname = "dgnc";
    descriptor___0.function = "dgnc_tty_close";
    descriptor___0.filename = "drivers/staging/dgnc/dgnc_tty.c";
    descriptor___0.format = "bad serial port open count of %d\n";
    descriptor___0.lineno = 1438U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    }
    if (tmp___0 != 0L) {
      {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tty->dev, "bad serial port open count of %d\n",
                        un->un_open_count);
      }
    } else {
    }
  }
  ch->ch_open_count = ch->ch_open_count - 1U;
  if (ch->ch_open_count != 0U && un->un_open_count != 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return;
  } else {
  }
  un->un_flags = un->un_flags | 2U;
  tty->closing = 1;
  if (ch->ch_open_count == 0U && ((int )ch->ch_digi.digi_flags & 2048) == 0) {
    ch->ch_flags = ch->ch_flags & 4294705147U;
    if (un->un_type == 1U && (int )ch->ch_flags & 1) {
      {
      dgnc_wmove(ch, (char *)(& ch->ch_digi.digi_offstr), (uint )ch->ch_digi.digi_offlen);
      ch->ch_flags = ch->ch_flags & 4294967294U;
      }
    } else {
    }
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    rc = (*((bd->bd_ops)->drain))(tty, 0U);
    dgnc_tty_flush_buffer(tty);
    tty_ldisc_flush(tty);
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(& ch->ch_lock);
    tty->closing = 0;
    }
    if ((ch->ch_c_cflag & 1024U) != 0U) {
      {
      ch->ch_mostat = (unsigned int )ch->ch_mostat & 252U;
      (*((bd->bd_ops)->assert_modem_signals))(ch);
      }
      if (ch->ch_close_delay != 0UL) {
        {
        ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
        dgnc_ms_sleep(ch->ch_close_delay);
        ldv___ldv_linux_kernel_locking_spinlock_spin_lock_133(& ch->ch_lock);
        }
      } else {
      }
    } else {
    }
    {
    ch->ch_old_baud = 0U;
    (*(((ch->ch_bd)->bd_ops)->uart_off))(ch);
    }
  } else
  if (un->un_type == 1U && (int )ch->ch_flags & 1) {
    {
    dgnc_wmove(ch, (char *)(& ch->ch_digi.digi_offstr), (uint )ch->ch_digi.digi_offlen);
    ch->ch_flags = ch->ch_flags & 4294967294U;
    }
  } else {
  }
  {
  un->un_tty = (struct tty_struct *)0;
  un->un_flags = un->un_flags & 4294967292U;
  __wake_up(& ch->ch_flags_wait, 1U, 1, (void *)0);
  __wake_up(& un->un_flags_wait, 1U, 1, (void *)0);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static int dgnc_tty_chars_in_buffer(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  ushort thead ;
  ushort ttail ;
  uint tmask ;
  uint chars ;
  unsigned long flags ;
  {
  ch = (struct channel_t *)0;
  un = (struct un_t *)0;
  chars = 0U;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    return (0);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(& ch->ch_lock);
  tmask = 4095U;
  thead = (int )ch->ch_w_head & (int )((ushort )tmask);
  ttail = (int )ch->ch_w_tail & (int )((ushort )tmask);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if ((int )ttail == (int )thead) {
    chars = 0U;
  } else
  if ((int )thead >= (int )ttail) {
    chars = (uint )((int )thead - (int )ttail);
  } else {
    chars = (uint )(((int )thead - (int )ttail) + 4096);
  }
  return ((int )chars);
}
}
static int dgnc_maxcps_room(struct tty_struct *tty , int bytes_available )
{
  struct channel_t *ch ;
  struct un_t *un ;
  int cps_limit ;
  unsigned long current_time ;
  unsigned long buffer_time ;
  int _min1 ;
  int _min2 ;
  {
  ch = (struct channel_t *)0;
  un = (struct un_t *)0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0)) {
    return (bytes_available);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (bytes_available);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (bytes_available);
  } else {
  }
  if (un->un_type != 1U) {
    return (bytes_available);
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_maxcps != 0U && (unsigned int )ch->ch_digi.digi_bufsize != 0U) {
    cps_limit = 0;
    current_time = jiffies;
    buffer_time = current_time + (unsigned long )(((int )ch->ch_digi.digi_bufsize * 250) / (int )ch->ch_digi.digi_maxcps);
    if (ch->ch_cpstime < current_time) {
      ch->ch_cpstime = current_time;
      cps_limit = (int )ch->ch_digi.digi_bufsize;
    } else
    if (ch->ch_cpstime < buffer_time) {
      cps_limit = (int )(((buffer_time - ch->ch_cpstime) * (unsigned long )ch->ch_digi.digi_maxcps) / 250UL);
    } else {
      cps_limit = 0;
    }
    _min1 = cps_limit;
    _min2 = bytes_available;
    bytes_available = _min1 < _min2 ? _min1 : _min2;
  } else {
  }
  return (bytes_available);
}
}
static int dgnc_tty_write_room(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  ushort head ;
  ushort tail ;
  ushort tmask ;
  int ret ;
  unsigned long flags ;
  {
  ch = (struct channel_t *)0;
  un = (struct un_t *)0;
  ret = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || (unsigned long )dgnc_TmpWriteBuf == (unsigned long )((unsigned char *)0U)) {
    return (0);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_137(& ch->ch_lock);
  tmask = 4095U;
  head = (ushort )((int )ch->ch_w_head & (int )tmask);
  tail = (ushort )((int )ch->ch_w_tail & (int )tmask);
  ret = ((int )tail - (int )head) + -1;
  }
  if (ret < 0) {
    ret = ret + 4096;
  } else {
  }
  {
  ret = dgnc_maxcps_room(tty, ret);
  }
  if (un->un_type == 1U) {
    if ((ch->ch_flags & 1U) == 0U) {
      ret = ret - (int )ch->ch_digi.digi_onlen;
    } else {
    }
    ret = ret - (int )ch->ch_digi.digi_offlen;
  } else
  if ((int )ch->ch_flags & 1) {
    ret = ret - (int )ch->ch_digi.digi_offlen;
  } else {
  }
  if (ret < 0) {
    ret = 0;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (ret);
}
}
static int dgnc_tty_put_char(struct tty_struct *tty , unsigned char c )
{
  {
  {
  dgnc_tty_write(tty, (unsigned char const *)(& c), 1);
  }
  return (1);
}
}
static int dgnc_tty_write(struct tty_struct *tty , unsigned char const *buf , int count )
{
  struct channel_t *ch ;
  struct un_t *un ;
  int bufcount ;
  int n ;
  int orig_count ;
  unsigned long flags ;
  ushort head ;
  ushort tail ;
  ushort tmask ;
  uint remain ;
  int from_user ;
  int _min1 ;
  int _min2 ;
  int _min1___0 ;
  int _min2___0 ;
  int tmp ;
  unsigned long tmp___0 ;
  {
  ch = (struct channel_t *)0;
  un = (struct un_t *)0;
  bufcount = 0;
  n = 0;
  orig_count = 0;
  from_user = 0;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || (unsigned long )dgnc_TmpWriteBuf == (unsigned long )((unsigned char *)0U)) {
    return (0);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0);
  } else {
  }
  if (count == 0) {
    return (0);
  } else {
  }
  {
  orig_count = count;
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_139(& ch->ch_lock);
  tmask = 4095U;
  head = (ushort )((int )ch->ch_w_head & (int )tmask);
  tail = (ushort )((int )ch->ch_w_tail & (int )tmask);
  bufcount = ((int )tail - (int )head) + -1;
  }
  if (bufcount < 0) {
    bufcount = bufcount + 4096;
  } else {
  }
  {
  bufcount = dgnc_maxcps_room(tty, bufcount);
  _min1 = count;
  _min2 = bufcount;
  count = _min1 < _min2 ? _min1 : _min2;
  }
  if (count <= 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return (0);
  } else {
  }
  if (un->un_type == 1U && (ch->ch_flags & 1U) == 0U) {
    {
    dgnc_wmove(ch, (char *)(& ch->ch_digi.digi_onstr), (uint )ch->ch_digi.digi_onlen);
    head = (ushort )((int )ch->ch_w_head & (int )tmask);
    ch->ch_flags = ch->ch_flags | 1U;
    }
  } else {
  }
  if (un->un_type != 1U && (int )ch->ch_flags & 1) {
    {
    dgnc_wmove(ch, (char *)(& ch->ch_digi.digi_offstr), (uint )ch->ch_digi.digi_offlen);
    head = (ushort )((int )ch->ch_w_head & (int )tmask);
    ch->ch_flags = ch->ch_flags & 4294967294U;
    }
  } else {
  }
  if (count <= 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return (0);
  } else {
  }
  if (from_user != 0) {
    {
    _min1___0 = count;
    _min2___0 = 4100;
    count = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    tmp = down_interruptible(& dgnc_TmpWriteSem);
    }
    if (tmp != 0) {
      return (-4);
    } else {
    }
    {
    tmp___0 = copy_from_user((void *)dgnc_TmpWriteBuf, (void const *)buf, (unsigned long )count);
    count = (int )((unsigned int )count - (unsigned int )tmp___0);
    }
    if (count == 0) {
      {
      up(& dgnc_TmpWriteSem);
      }
      return (-14);
    } else {
    }
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(& ch->ch_lock);
    buf = (unsigned char const *)dgnc_TmpWriteBuf;
    }
  } else {
  }
  n = count;
  remain = (uint )(4096 - (int )head);
  if ((uint )n >= remain) {
    {
    n = (int )((uint )n - remain);
    memcpy((void *)ch->ch_wqueue + (unsigned long )head, (void const *)buf, (size_t )remain);
    head = 0U;
    buf = buf + (unsigned long )remain;
    }
  } else {
  }
  if (n > 0) {
    {
    remain = (uint )n;
    memcpy((void *)ch->ch_wqueue + (unsigned long )head, (void const *)buf, (size_t )remain);
    head = (int )head + (int )((ushort )remain);
    }
  } else {
  }
  if (count != 0) {
    head = (ushort )((int )head & (int )tmask);
    ch->ch_w_head = head;
  } else {
  }
  if ((un->un_type == 1U && (unsigned int )ch->ch_digi.digi_maxcps != 0U) && (unsigned int )ch->ch_digi.digi_bufsize != 0U) {
    ch->ch_cpstime = ch->ch_cpstime + (ulong )((count * 250) / (int )ch->ch_digi.digi_maxcps);
  } else {
  }
  if (from_user != 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    up(& dgnc_TmpWriteSem);
    }
  } else {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
  }
  if (count != 0) {
    {
    (*(((ch->ch_bd)->bd_ops)->copy_data_from_queue_to_uart))(ch);
    }
  } else {
  }
  return (count);
}
}
static int dgnc_tty_tiocmget(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  int result ;
  unsigned char mstat ;
  unsigned long flags ;
  {
  result = -5;
  mstat = 0U;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (result);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (result);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (result);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(& ch->ch_lock);
  mstat = (int )ch->ch_mostat | (int )ch->ch_mistat;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  result = 0;
  }
  if ((int )mstat & 1) {
    result = result | 2;
  } else {
  }
  if (((int )mstat & 2) != 0) {
    result = result | 4;
  } else {
  }
  if (((int )mstat & 16) != 0) {
    result = result | 32;
  } else {
  }
  if (((int )mstat & 32) != 0) {
    result = result | 256;
  } else {
  }
  if (((int )mstat & 64) != 0) {
    result = result | 128;
  } else {
  }
  if ((int )((signed char )mstat) < 0) {
    result = result | 64;
  } else {
  }
  return (result);
}
}
static int dgnc_tty_tiocmset(struct tty_struct *tty , unsigned int set , unsigned int clear )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int ret ;
  unsigned long flags ;
  {
  ret = -5;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (ret);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (ret);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (ret);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (ret);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(& ch->ch_lock);
  }
  if ((set & 4U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
  } else {
  }
  if ((set & 2U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
  } else {
  }
  if ((clear & 4U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
  } else {
  }
  if ((clear & 2U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
  } else {
  }
  {
  (*(((ch->ch_bd)->bd_ops)->assert_modem_signals))(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
}
}
static int dgnc_tty_send_break(struct tty_struct *tty , int msec )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int ret ;
  unsigned long flags ;
  {
  ret = -5;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (ret);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (ret);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (ret);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (ret);
  } else {
  }
  {
  if (msec == -1) {
    goto case_neg_1;
  } else {
  }
  if (msec == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_neg_1:
  msec = 65535;
  goto ldv_37515;
  case_0:
  msec = 0;
  goto ldv_37515;
  switch_default: ;
  goto ldv_37515;
  switch_break: ;
  }
  ldv_37515:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_150(& ch->ch_lock);
  (*(((ch->ch_bd)->bd_ops)->send_break))(ch, msec);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
}
}
static void dgnc_tty_wait_until_sent(struct tty_struct *tty , int timeout )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int rc ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  rc = (*((bd->bd_ops)->drain))(tty, 0U);
  }
  return;
}
}
static void dgnc_tty_send_xchar(struct tty_struct *tty , char c )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  descriptor.modname = "dgnc";
  descriptor.function = "dgnc_tty_send_xchar";
  descriptor.filename = "drivers/staging/dgnc/dgnc_tty.c";
  descriptor.format = "dgnc_tty_send_xchar start\n";
  descriptor.lineno = 2110U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  }
  if (tmp != 0L) {
    {
    __dynamic_dev_dbg(& descriptor, (struct device const *)tty->dev, "dgnc_tty_send_xchar start\n");
    }
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152(& ch->ch_lock);
  (*((bd->bd_ops)->send_immediate_char))(ch, (int )((unsigned char )c));
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  descriptor___0.modname = "dgnc";
  descriptor___0.function = "dgnc_tty_send_xchar";
  descriptor___0.filename = "drivers/staging/dgnc/dgnc_tty.c";
  descriptor___0.format = "dgnc_tty_send_xchar finish\n";
  descriptor___0.lineno = 2116U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  }
  if (tmp___0 != 0L) {
    {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tty->dev, "dgnc_tty_send_xchar finish\n");
    }
  } else {
  }
  return;
}
}
__inline static int dgnc_get_mstat(struct channel_t *ch )
{
  unsigned char mstat ;
  int result ;
  unsigned long flags ;
  {
  result = -5;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-6);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_154(& ch->ch_lock);
  mstat = (int )ch->ch_mostat | (int )ch->ch_mistat;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  result = 0;
  }
  if ((int )mstat & 1) {
    result = result | 2;
  } else {
  }
  if (((int )mstat & 2) != 0) {
    result = result | 4;
  } else {
  }
  if (((int )mstat & 16) != 0) {
    result = result | 32;
  } else {
  }
  if (((int )mstat & 32) != 0) {
    result = result | 256;
  } else {
  }
  if (((int )mstat & 64) != 0) {
    result = result | 128;
  } else {
  }
  if ((int )((signed char )mstat) < 0) {
    result = result | 64;
  } else {
  }
  return (result);
}
}
static int dgnc_get_modem_info(struct channel_t *ch , unsigned int *value )
{
  int result ;
  int __ret_pu ;
  unsigned int __pu_val ;
  {
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-6);
  } else {
  }
  {
  result = dgnc_get_mstat(ch);
  }
  if (result < 0) {
    return (-6);
  } else {
  }
  {
  might_fault();
  __pu_val = (unsigned int )result;
  }
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (value): "ebx");
  goto ldv_37551;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (value): "ebx");
  goto ldv_37551;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (value): "ebx");
  goto ldv_37551;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (value): "ebx");
  goto ldv_37551;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (value): "ebx");
  goto ldv_37551;
  switch_break: ;
  }
  ldv_37551: ;
  return (__ret_pu);
}
}
static int dgnc_set_modem_info(struct tty_struct *tty , unsigned int command , unsigned int *value )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int ret ;
  unsigned int arg ;
  unsigned long flags ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  {
  ret = -6;
  arg = 0U;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (ret);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (ret);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (ret);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (ret);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (value),
                       "i" (4UL));
  arg = (unsigned int )__val_gu;
  ret = __ret_gu;
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  {
  if (command == 21526U) {
    goto case_21526;
  } else {
  }
  if (command == 21527U) {
    goto case_21527;
  } else {
  }
  if (command == 21528U) {
    goto case_21528;
  } else {
  }
  goto switch_default;
  case_21526: ;
  if ((arg & 4U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
  } else {
  }
  if ((arg & 2U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
  } else {
  }
  goto ldv_37572;
  case_21527: ;
  if ((arg & 4U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
  } else {
  }
  if ((arg & 2U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
  } else {
  }
  goto ldv_37572;
  case_21528: ;
  if ((arg & 4U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
  } else {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
  }
  if ((arg & 2U) != 0U) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
  } else {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
  }
  goto ldv_37572;
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  ldv_37572:
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_156(& ch->ch_lock);
  (*(((ch->ch_bd)->bd_ops)->assert_modem_signals))(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
}
}
static int dgnc_tty_digigeta(struct tty_struct *tty , struct digi_t *retinfo )
{
  struct channel_t *ch ;
  struct un_t *un ;
  struct digi_t tmp ;
  unsigned long flags ;
  unsigned long tmp___0 ;
  {
  if ((unsigned long )retinfo == (unsigned long )((struct digi_t *)0)) {
    return (-14);
  } else {
  }
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (-14);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-14);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-14);
  } else {
  }
  {
  memset((void *)(& tmp), 0, 76UL);
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_158(& ch->ch_lock);
  memcpy((void *)(& tmp), (void const *)(& ch->ch_digi), 76UL);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___0 = copy_to_user((void *)retinfo, (void const *)(& tmp), 76UL);
  }
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int dgnc_tty_digiseta(struct tty_struct *tty , struct digi_t *new_info )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  struct digi_t new_digi ;
  unsigned long flags ;
  unsigned long tmp ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (-14);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-14);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-14);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (-14);
  } else {
  }
  {
  tmp = copy_from_user((void *)(& new_digi), (void const *)new_info, 76UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_160(& ch->ch_lock);
  }
  if ((int )((short )ch->ch_digi.digi_flags) >= 0 && (int )((short )new_digi.digi_flags) < 0) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 253U;
  } else {
  }
  if ((int )((short )ch->ch_digi.digi_flags) < 0 && (int )((short )new_digi.digi_flags) >= 0) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 2U;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 8192) == 0 && ((int )new_digi.digi_flags & 8192) != 0) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat & 254U;
  } else {
  }
  if (((int )ch->ch_digi.digi_flags & 8192) != 0 && ((int )new_digi.digi_flags & 8192) == 0) {
    ch->ch_mostat = (unsigned int )ch->ch_mostat | 1U;
  } else {
  }
  {
  memcpy((void *)(& ch->ch_digi), (void const *)(& new_digi), 76UL);
  }
  if ((unsigned int )ch->ch_digi.digi_maxcps == 0U) {
    ch->ch_digi.digi_maxcps = 1U;
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_maxcps > 10000U) {
    ch->ch_digi.digi_maxcps = 10000U;
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_bufsize <= 9U) {
    ch->ch_digi.digi_bufsize = 10U;
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_maxchar == 0U) {
    ch->ch_digi.digi_maxchar = 1U;
  } else {
  }
  if ((int )ch->ch_digi.digi_maxchar > (int )ch->ch_digi.digi_bufsize) {
    ch->ch_digi.digi_maxchar = ch->ch_digi.digi_bufsize;
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_onlen > 28U) {
    ch->ch_digi.digi_onlen = 28U;
  } else {
  }
  if ((unsigned int )ch->ch_digi.digi_offlen > 28U) {
    ch->ch_digi.digi_offlen = 28U;
  } else {
  }
  {
  (*(((ch->ch_bd)->bd_ops)->param))(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
}
}
static void dgnc_tty_set_termios(struct tty_struct *tty , struct ktermios *old_termios )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(& ch->ch_lock);
  ch->ch_c_cflag = tty->termios.c_cflag;
  ch->ch_c_iflag = tty->termios.c_iflag;
  ch->ch_c_oflag = tty->termios.c_oflag;
  ch->ch_c_lflag = tty->termios.c_lflag;
  ch->ch_startc = tty->termios.c_cc[8];
  ch->ch_stopc = tty->termios.c_cc[9];
  (*(((ch->ch_bd)->bd_ops)->param))(tty);
  dgnc_carrier(ch);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_throttle(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags | 262144U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_unthrottle(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags & 4294705151U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_start(struct tty_struct *tty )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_168(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags & 4294836223U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_stop(struct tty_struct *tty )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags | 131072U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_flush_chars(struct tty_struct *tty )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_172(& ch->ch_lock);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static void dgnc_tty_flush_buffer(struct tty_struct *tty )
{
  struct channel_t *ch ;
  struct un_t *un ;
  unsigned long flags ;
  {
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return;
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return;
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return;
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(& ch->ch_lock);
  ch->ch_flags = ch->ch_flags & 4294967293U;
  ch->ch_w_head = ch->ch_w_tail;
  (*(((ch->ch_bd)->bd_ops)->flush_uart_write))(ch);
  }
  if ((ch->ch_tun.un_flags & 384U) != 0U) {
    {
    ch->ch_tun.un_flags = ch->ch_tun.un_flags & 4294966911U;
    __wake_up(& ch->ch_tun.un_flags_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  if ((ch->ch_pun.un_flags & 384U) != 0U) {
    {
    ch->ch_pun.un_flags = ch->ch_pun.un_flags & 4294966911U;
    __wake_up(& ch->ch_pun.un_flags_wait, 1U, 1, (void *)0);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return;
}
}
static int dgnc_tty_ioctl(struct tty_struct *tty , unsigned int cmd , unsigned long arg )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  int rc ;
  unsigned long flags ;
  void *uarg ;
  int __ret_pu ;
  unsigned long __pu_val ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  uint loopback ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int __ret_pu___0 ;
  unsigned int __pu_val___0 ;
  int new_rate ;
  int __ret_gu___1 ;
  register unsigned long __val_gu___1 ;
  unsigned char c ;
  int __ret_gu___2 ;
  register unsigned long __val_gu___2 ;
  struct digi_getcounter buf ;
  unsigned long tmp___3 ;
  unsigned int events ;
  int __ret_pu___1 ;
  unsigned int __pu_val___1 ;
  struct digi_getbuffer buf___0 ;
  int tdist ;
  int count ;
  unsigned long tmp___4 ;
  uint tmp___5 ;
  unsigned long tmp___6 ;
  {
  uarg = (void *)arg;
  if ((unsigned long )tty == (unsigned long )((struct tty_struct *)0) || tty->magic != 21505) {
    return (-19);
  } else {
  }
  un = (struct un_t *)tty->driver_data;
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (-19);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (-19);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (-19);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(& ch->ch_lock);
  }
  if (un->un_open_count == 0U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return (-5);
  } else {
  }
  {
  if (cmd == 21513U) {
    goto case_21513;
  } else {
  }
  if (cmd == 21541U) {
    goto case_21541;
  } else {
  }
  if (cmd == 21543U) {
    goto case_21543;
  } else {
  }
  if (cmd == 21544U) {
    goto case_21544;
  } else {
  }
  if (cmd == 21529U) {
    goto case_21529;
  } else {
  }
  if (cmd == 21530U) {
    goto case_21530;
  } else {
  }
  if (cmd == 21525U) {
    goto case_21525;
  } else {
  }
  if (cmd == 21526U) {
    goto case_21526;
  } else {
  }
  if (cmd == 21527U) {
    goto case_21527;
  } else {
  }
  if (cmd == 21528U) {
    goto case_21528;
  } else {
  }
  if (cmd == 21515U) {
    goto case_21515;
  } else {
  }
  if (cmd == 21508U) {
    goto case_21508;
  } else {
  }
  if (cmd == 21507U) {
    goto case_21507;
  } else {
  }
  if (cmd == 21511U) {
    goto case_21511;
  } else {
  }
  if (cmd == 21514U) {
    goto case_21514;
  } else {
  }
  if (cmd == 25950U) {
    goto case_25950;
  } else {
  }
  if (cmd == 25952U) {
    goto case_25952;
  } else {
  }
  if (cmd == 25953U) {
    goto case_25953;
  } else {
  }
  if (cmd == 25951U) {
    goto case_25951;
  } else {
  }
  if (cmd == 25852U) {
    goto case_25852;
  } else {
  }
  if (cmd == 2147771755U) {
    goto case_2147771755;
  } else {
  }
  if (cmd == 1074029930U) {
    goto case_1074029930;
  } else {
  }
  if (cmd == 25965U) {
    goto case_25965;
  } else {
  }
  if (cmd == 25966U) {
    goto case_25966;
  } else {
  }
  if (cmd == 25967U) {
    goto case_25967;
  } else {
  }
  if (cmd == 25964U) {
    goto case_25964;
  } else {
  }
  goto switch_default___2;
  case_21513:
  {
  rc = tty_check_change(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
  }
  if (rc != 0) {
    return (-4);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_179(& ch->ch_lock);
  }
  if ((cmd == 21513U && arg == 0UL) || cmd == 21541U) {
    {
    (*(((ch->ch_bd)->bd_ops)->send_break))(ch, 250);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_21541:
  {
  rc = tty_check_change(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
  }
  if (rc != 0) {
    return (-4);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(& ch->ch_lock);
  (*(((ch->ch_bd)->bd_ops)->send_break))(ch, 250);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_21543:
  {
  rc = tty_check_change(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
  }
  if (rc != 0) {
    return (-4);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(& ch->ch_lock);
  (*(((ch->ch_bd)->bd_ops)->send_break))(ch, 250);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_21544:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_21529:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __pu_val = (tty->termios.c_cflag & 2048U) != 0U;
  }
  {
  if (8UL == 1UL) {
    goto case_1;
  } else {
  }
  if (8UL == 2UL) {
    goto case_2;
  } else {
  }
  if (8UL == 4UL) {
    goto case_4;
  } else {
  }
  if (8UL == 8UL) {
    goto case_8;
  } else {
  }
  goto switch_default;
  case_1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned long *)arg): "ebx");
  goto ldv_37659;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned long *)arg): "ebx");
  goto ldv_37659;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned long *)arg): "ebx");
  goto ldv_37659;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned long *)arg): "ebx");
  goto ldv_37659;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned long *)arg): "ebx");
  goto ldv_37659;
  switch_break___0: ;
  }
  ldv_37659:
  rc = __ret_pu;
  return (rc);
  case_21530:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((unsigned long *)arg),
                       "i" (8UL));
  arg = __val_gu;
  rc = __ret_gu;
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(& ch->ch_lock);
  tty->termios.c_cflag = (tty->termios.c_cflag & 4294965247U) | (arg != 0UL ? 2048U : 0U);
  (*(((ch->ch_bd)->bd_ops)->param))(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_21525:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp = dgnc_get_modem_info(ch, (unsigned int *)uarg);
  }
  return (tmp);
  case_21526: ;
  case_21527: ;
  case_21528:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___0 = dgnc_set_modem_info(tty, cmd, (unsigned int *)uarg);
  }
  return (tmp___0);
  case_21515:
  {
  rc = tty_check_change(tty);
  }
  if (rc != 0) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    }
    return (rc);
  } else {
  }
  if (arg == 0UL || arg == 2UL) {
    {
    ch->ch_r_head = ch->ch_r_tail;
    (*(((ch->ch_bd)->bd_ops)->flush_uart_read))(ch);
    dgnc_check_queue_flow_control(ch);
    }
  } else {
  }
  if (arg - 1UL <= 1UL) {
    if (un->un_type != 1U) {
      {
      ch->ch_w_head = ch->ch_w_tail;
      (*(((ch->ch_bd)->bd_ops)->flush_uart_write))(ch);
      }
      if ((ch->ch_tun.un_flags & 384U) != 0U) {
        {
        ch->ch_tun.un_flags = ch->ch_tun.un_flags & 4294966911U;
        __wake_up(& ch->ch_tun.un_flags_wait, 1U, 1, (void *)0);
        }
      } else {
      }
      if ((ch->ch_pun.un_flags & 384U) != 0U) {
        {
        ch->ch_pun.un_flags = ch->ch_pun.un_flags & 4294966911U;
        __wake_up(& ch->ch_pun.un_flags_wait, 1U, 1, (void *)0);
        }
      } else {
      }
    } else {
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (-515);
  case_21508: ;
  case_21507: ;
  if (cmd == 21508U) {
    {
    ch->ch_flags = ch->ch_flags & 4294967293U;
    ch->ch_r_head = ch->ch_r_tail;
    (*(((ch->ch_bd)->bd_ops)->flush_uart_read))(ch);
    dgnc_check_queue_flow_control(ch);
    }
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
  }
  if (rc != 0) {
    return (-4);
  } else {
  }
  return (-515);
  case_21511:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
  }
  if (rc != 0) {
    return (-4);
  } else {
  }
  return (-515);
  case_21514:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (-515);
  case_25950:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___1 = dgnc_tty_digigeta(tty, (struct digi_t *)uarg);
  }
  return (tmp___1);
  case_25952: ;
  case_25953: ;
  if (cmd == 25952U) {
    {
    ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
    rc = (*(((ch->ch_bd)->bd_ops)->drain))(tty, 0U);
    }
    if (rc != 0) {
      return (-4);
    } else {
    }
    {
    ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201(& ch->ch_lock);
    }
  } else {
    {
    tty_ldisc_flush(tty);
    }
  }
  case_25951:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___2 = dgnc_tty_digiseta(tty, (struct digi_t *)uarg);
  }
  return (tmp___2);
  case_25852:
  {
  loopback = 0U;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" ((unsigned int *)arg),
                       "i" (4UL));
  loopback = (unsigned int )__val_gu___0;
  rc = __ret_gu___0;
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(& ch->ch_lock);
  }
  if (loopback != 0U) {
    ch->ch_flags = ch->ch_flags | 8192U;
  } else {
    ch->ch_flags = ch->ch_flags & 4294959103U;
  }
  {
  (*(((ch->ch_bd)->bd_ops)->param))(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_2147771755:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __pu_val___0 = ch->ch_custom_speed;
  }
  {
  if (4UL == 1UL) {
    goto case_1___0;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37691;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37691;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37691;
  case_8___0:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37691;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37691;
  switch_break___1: ;
  }
  ldv_37691:
  rc = __ret_pu___0;
  return (rc);
  case_1074029930:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___1), "=r" (__val_gu___1): "0" ((int *)arg),
                       "i" (4UL));
  new_rate = (int )__val_gu___1;
  rc = __ret_gu___1;
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_208(& ch->ch_lock);
  dgnc_set_custom_speed(ch, (uint )new_rate);
  (*(((ch->ch_bd)->bd_ops)->param))(tty);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_25965:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___2), "=r" (__val_gu___2): "0" ((unsigned char *)arg),
                       "i" (1UL));
  c = (unsigned char )__val_gu___2;
  rc = __ret_gu___2;
  }
  if (rc != 0) {
    return (rc);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(& ch->ch_lock);
  (*(((ch->ch_bd)->bd_ops)->send_immediate_char))(ch, (int )c);
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (0);
  case_25966:
  {
  buf.norun = ch->ch_err_overrun;
  buf.noflow = 0UL;
  buf.nframe = ch->ch_err_frame;
  buf.nparity = ch->ch_err_parity;
  buf.nbreak = ch->ch_err_break;
  buf.rbytes = ch->ch_rxcount;
  buf.tbytes = ch->ch_txcount;
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___3 = copy_to_user(uarg, (void const *)(& buf), 56UL);
  }
  if (tmp___3 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
  case_25967:
  events = 0U;
  if ((ch->ch_flags & 4096U) != 0U) {
    events = events | 64U;
  } else {
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    events = events | 3U;
  } else {
  }
  if (*((unsigned int *)ch + 142UL) != 0U) {
    events = events | 48U;
  } else {
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  might_fault();
  __pu_val___1 = events;
  }
  {
  if (4UL == 1UL) {
    goto case_1___1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___1;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___1:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37714;
  case_2___1:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37714;
  case_4___1:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37714;
  case_8___1:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37714;
  switch_default___1:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___1): "0" (__pu_val___1),
                       "c" ((unsigned int *)arg): "ebx");
  goto ldv_37714;
  switch_break___2: ;
  }
  ldv_37714:
  rc = __ret_pu___1;
  return (rc);
  case_25964:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___4 = copy_from_user((void *)(& buf___0), (void const *)uarg, 40UL);
  }
  if (tmp___4 != 0UL) {
    return (-14);
  } else {
  }
  {
  ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(& ch->ch_lock);
  buf___0.rxbuf = (unsigned long )((int )ch->ch_r_head - (int )ch->ch_r_tail) & 8191UL;
  buf___0.txbuf = (unsigned long )((int )ch->ch_w_head - (int )ch->ch_w_tail) & 4095UL;
  tmp___5 = (*(((ch->ch_bd)->bd_ops)->get_uart_bytes_left))(ch);
  count = (int )((unsigned int )buf___0.txbuf + tmp___5);
  tdist = (int )((unsigned int )buf___0.tIn - (unsigned int )buf___0.tOut) & 65535;
  }
  if (buf___0.txbuf > (unsigned long )tdist) {
    buf___0.txbuf = (unsigned long )tdist;
  } else {
  }
  if (count != 0) {
    buf___0.txdone = 0UL;
  } else {
    buf___0.txdone = 1UL;
  }
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  tmp___6 = copy_to_user(uarg, (void const *)(& buf___0), 40UL);
  }
  if (tmp___6 != 0UL) {
    return (-14);
  } else {
  }
  return (0);
  switch_default___2:
  {
  ldv_spin_unlock_irqrestore_97(& ch->ch_lock, flags);
  }
  return (-515);
  switch_break: ;
  }
}
}
void ldv_dispatch_deregister_15_1(struct tty_driver *arg0 ) ;
void ldv_tty_instance_callback_10_38(int (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                     int arg2 ) ;
void ldv_tty_instance_callback_10_41(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_48(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_49(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_53(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_57(int (*arg0)(struct tty_struct * , unsigned int ,
                                                 unsigned long ) , struct tty_struct *arg1 ,
                                     unsigned int arg2 , unsigned long arg3 ) ;
void ldv_tty_instance_callback_10_61(int (*arg0)(struct tty_struct * , unsigned char ) ,
                                     struct tty_struct *arg1 , unsigned char arg2 ) ;
void ldv_tty_instance_callback_10_72(void (*arg0)(struct tty_struct * , char ) ,
                                     struct tty_struct *arg1 , char arg2 ) ;
void ldv_tty_instance_callback_10_78(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_10_79(int (*arg0)(struct tty_struct * , unsigned int ,
                                                 unsigned int ) , struct tty_struct *arg1 ,
                                     unsigned int arg2 , unsigned int arg3 ) ;
void ldv_tty_instance_callback_10_85(void (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                     int arg2 ) ;
void ldv_tty_instance_callback_10_88(int (*arg0)(struct tty_struct * , unsigned char * ,
                                                 int ) , struct tty_struct *arg1 ,
                                     unsigned char *arg2 , int arg3 ) ;
void ldv_tty_instance_callback_10_91(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_38(int (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                    int arg2 ) ;
void ldv_tty_instance_callback_9_41(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_48(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_49(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_53(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_57(int (*arg0)(struct tty_struct * , unsigned int ,
                                                unsigned long ) , struct tty_struct *arg1 ,
                                    unsigned int arg2 , unsigned long arg3 ) ;
void ldv_tty_instance_callback_9_61(int (*arg0)(struct tty_struct * , unsigned char ) ,
                                    struct tty_struct *arg1 , unsigned char arg2 ) ;
void ldv_tty_instance_callback_9_72(void (*arg0)(struct tty_struct * , char ) , struct tty_struct *arg1 ,
                                    char arg2 ) ;
void ldv_tty_instance_callback_9_78(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_callback_9_79(int (*arg0)(struct tty_struct * , unsigned int ,
                                                unsigned int ) , struct tty_struct *arg1 ,
                                    unsigned int arg2 , unsigned int arg3 ) ;
void ldv_tty_instance_callback_9_85(void (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                    int arg2 ) ;
void ldv_tty_instance_callback_9_88(int (*arg0)(struct tty_struct * , unsigned char * ,
                                                int ) , struct tty_struct *arg1 ,
                                    unsigned char *arg2 , int arg3 ) ;
void ldv_tty_instance_callback_9_91(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_close_10_5(void (*arg0)(struct tty_struct * , struct file * ) ,
                                 struct tty_struct *arg1 , struct file *arg2 ) ;
void ldv_tty_instance_close_9_5(void (*arg0)(struct tty_struct * , struct file * ) ,
                                struct tty_struct *arg1 , struct file *arg2 ) ;
int ldv_tty_instance_open_10_27(int (*arg0)(struct tty_struct * , struct file * ) ,
                                struct tty_struct *arg1 , struct file *arg2 ) ;
int ldv_tty_instance_open_9_27(int (*arg0)(struct tty_struct * , struct file * ) ,
                               struct tty_struct *arg1 , struct file *arg2 ) ;
void ldv_tty_instance_set_termios_10_16(void (*arg0)(struct tty_struct * , struct ktermios * ) ,
                                        struct tty_struct *arg1 , struct ktermios *arg2 ) ;
void ldv_tty_instance_set_termios_9_16(void (*arg0)(struct tty_struct * , struct ktermios * ) ,
                                       struct tty_struct *arg1 , struct ktermios *arg2 ) ;
void ldv_tty_instance_start_10_13(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_start_9_13(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_stop_10_12(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_stop_9_12(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_throttle_10_15(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_throttle_9_15(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_unthrottle_10_14(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_instance_unthrottle_9_14(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 ) ;
void ldv_tty_unregister_device(void *arg0 , struct tty_driver *arg1 , unsigned int arg2 ) ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_9 ;
void ldv_dispatch_deregister_15_1(struct tty_driver *arg0 )
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  return;
}
}
void ldv_tty_instance_callback_10_38(int (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                     int arg2 )
{
  {
  {
  dgnc_tty_send_break(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_41(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_chars_in_buffer(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_48(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_flush_buffer(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_49(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_flush_chars(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_53(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_hangup(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_57(int (*arg0)(struct tty_struct * , unsigned int ,
                                                 unsigned long ) , struct tty_struct *arg1 ,
                                     unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  dgnc_tty_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_10_61(int (*arg0)(struct tty_struct * , unsigned char ) ,
                                     struct tty_struct *arg1 , unsigned char arg2 )
{
  {
  {
  dgnc_tty_put_char(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_72(void (*arg0)(struct tty_struct * , char ) ,
                                     struct tty_struct *arg1 , char arg2 )
{
  {
  {
  dgnc_tty_send_xchar(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_78(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_tiocmget(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_10_79(int (*arg0)(struct tty_struct * , unsigned int ,
                                                 unsigned int ) , struct tty_struct *arg1 ,
                                     unsigned int arg2 , unsigned int arg3 )
{
  {
  {
  dgnc_tty_tiocmset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_10_85(void (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                     int arg2 )
{
  {
  {
  dgnc_tty_wait_until_sent(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_10_88(int (*arg0)(struct tty_struct * , unsigned char * ,
                                                 int ) , struct tty_struct *arg1 ,
                                     unsigned char *arg2 , int arg3 )
{
  {
  {
  dgnc_tty_write(arg1, (unsigned char const *)arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_10_91(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_write_room(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_38(int (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                    int arg2 )
{
  {
  {
  dgnc_tty_send_break(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_41(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_chars_in_buffer(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_48(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_flush_buffer(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_49(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_flush_chars(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_53(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_hangup(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_57(int (*arg0)(struct tty_struct * , unsigned int ,
                                                unsigned long ) , struct tty_struct *arg1 ,
                                    unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  dgnc_tty_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_9_61(int (*arg0)(struct tty_struct * , unsigned char ) ,
                                    struct tty_struct *arg1 , unsigned char arg2 )
{
  {
  {
  dgnc_tty_put_char(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_72(void (*arg0)(struct tty_struct * , char ) , struct tty_struct *arg1 ,
                                    char arg2 )
{
  {
  {
  dgnc_tty_send_xchar(arg1, (int )arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_78(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_tiocmget(arg1);
  }
  return;
}
}
void ldv_tty_instance_callback_9_79(int (*arg0)(struct tty_struct * , unsigned int ,
                                                unsigned int ) , struct tty_struct *arg1 ,
                                    unsigned int arg2 , unsigned int arg3 )
{
  {
  {
  dgnc_tty_tiocmset(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_9_85(void (*arg0)(struct tty_struct * , int ) , struct tty_struct *arg1 ,
                                    int arg2 )
{
  {
  {
  dgnc_tty_wait_until_sent(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_callback_9_88(int (*arg0)(struct tty_struct * , unsigned char * ,
                                                int ) , struct tty_struct *arg1 ,
                                    unsigned char *arg2 , int arg3 )
{
  {
  {
  dgnc_tty_write(arg1, (unsigned char const *)arg2, arg3);
  }
  return;
}
}
void ldv_tty_instance_callback_9_91(int (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_write_room(arg1);
  }
  return;
}
}
void ldv_tty_instance_close_10_5(void (*arg0)(struct tty_struct * , struct file * ) ,
                                 struct tty_struct *arg1 , struct file *arg2 )
{
  {
  {
  dgnc_tty_close(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_close_9_5(void (*arg0)(struct tty_struct * , struct file * ) ,
                                struct tty_struct *arg1 , struct file *arg2 )
{
  {
  {
  dgnc_tty_close(arg1, arg2);
  }
  return;
}
}
int ldv_tty_instance_open_10_27(int (*arg0)(struct tty_struct * , struct file * ) ,
                                struct tty_struct *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = dgnc_tty_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_tty_instance_open_9_27(int (*arg0)(struct tty_struct * , struct file * ) ,
                               struct tty_struct *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = dgnc_tty_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_tty_instance_set_termios_10_16(void (*arg0)(struct tty_struct * , struct ktermios * ) ,
                                        struct tty_struct *arg1 , struct ktermios *arg2 )
{
  {
  {
  dgnc_tty_set_termios(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_set_termios_9_16(void (*arg0)(struct tty_struct * , struct ktermios * ) ,
                                       struct tty_struct *arg1 , struct ktermios *arg2 )
{
  {
  {
  dgnc_tty_set_termios(arg1, arg2);
  }
  return;
}
}
void ldv_tty_instance_start_10_13(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_start(arg1);
  }
  return;
}
}
void ldv_tty_instance_start_9_13(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_start(arg1);
  }
  return;
}
}
void ldv_tty_instance_stop_10_12(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_stop(arg1);
  }
  return;
}
}
void ldv_tty_instance_stop_9_12(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_stop(arg1);
  }
  return;
}
}
void ldv_tty_instance_throttle_10_15(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_throttle(arg1);
  }
  return;
}
}
void ldv_tty_instance_throttle_9_15(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_throttle(arg1);
  }
  return;
}
}
void ldv_tty_instance_unthrottle_10_14(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_unthrottle(arg1);
  }
  return;
}
}
void ldv_tty_instance_unthrottle_9_14(void (*arg0)(struct tty_struct * ) , struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_unthrottle(arg1);
  }
  return;
}
}
void ldv_tty_tty_instance_10(void *arg0 )
{
  void (*ldv_10_callback_assert_modem_signals)(struct channel_t * ) ;
  int (*ldv_10_callback_break_ctl)(struct tty_struct * , int ) ;
  int (*ldv_10_callback_chars_in_buffer)(struct tty_struct * ) ;
  void (*ldv_10_callback_copy_data_from_queue_to_uart)(struct channel_t * ) ;
  void (*ldv_10_callback_disable_receiver)(struct channel_t * ) ;
  int (*ldv_10_callback_drain)(struct tty_struct * , unsigned int ) ;
  void (*ldv_10_callback_enable_receiver)(struct channel_t * ) ;
  void (*ldv_10_callback_flush_buffer)(struct tty_struct * ) ;
  void (*ldv_10_callback_flush_chars)(struct tty_struct * ) ;
  void (*ldv_10_callback_flush_uart_read)(struct channel_t * ) ;
  void (*ldv_10_callback_flush_uart_write)(struct channel_t * ) ;
  unsigned int (*ldv_10_callback_get_uart_bytes_left)(struct channel_t * ) ;
  void (*ldv_10_callback_hangup)(struct tty_struct * ) ;
  enum irqreturn (*ldv_10_callback_intr)(int , void * ) ;
  int (*ldv_10_callback_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
  void (*ldv_10_callback_param)(struct tty_struct * ) ;
  int (*ldv_10_callback_put_char)(struct tty_struct * , unsigned char ) ;
  void (*ldv_10_callback_send_break)(struct channel_t * , int ) ;
  void (*ldv_10_callback_send_immediate_char)(struct channel_t * , unsigned char ) ;
  void (*ldv_10_callback_send_start_character)(struct channel_t * ) ;
  void (*ldv_10_callback_send_stop_character)(struct channel_t * ) ;
  void (*ldv_10_callback_send_xchar)(struct tty_struct * , char ) ;
  void (*ldv_10_callback_tasklet)(unsigned long ) ;
  int (*ldv_10_callback_tiocmget)(struct tty_struct * ) ;
  int (*ldv_10_callback_tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
  void (*ldv_10_callback_uart_init)(struct channel_t * ) ;
  void (*ldv_10_callback_uart_off)(struct channel_t * ) ;
  void (*ldv_10_callback_vpd)(struct dgnc_board * ) ;
  void (*ldv_10_callback_wait_until_sent)(struct tty_struct * , int ) ;
  int (*ldv_10_callback_write)(struct tty_struct * , unsigned char * , int ) ;
  int (*ldv_10_callback_write_room)(struct tty_struct * ) ;
  struct file *ldv_10_file_file ;
  int ldv_10_ldv_param_18_1_default ;
  int ldv_10_ldv_param_31_1_default ;
  int ldv_10_ldv_param_38_1_default ;
  unsigned int ldv_10_ldv_param_44_1_default ;
  int ldv_10_ldv_param_54_0_default ;
  unsigned int ldv_10_ldv_param_57_1_default ;
  unsigned long ldv_10_ldv_param_57_2_default ;
  struct tty_struct *ldv_10_ldv_param_5_0_default ;
  unsigned char ldv_10_ldv_param_61_1_default ;
  int ldv_10_ldv_param_64_1_default ;
  unsigned char ldv_10_ldv_param_67_1_default ;
  char ldv_10_ldv_param_72_1_default ;
  unsigned long ldv_10_ldv_param_75_0_default ;
  unsigned int ldv_10_ldv_param_79_1_default ;
  unsigned int ldv_10_ldv_param_79_2_default ;
  int ldv_10_ldv_param_85_1_default ;
  unsigned char *ldv_10_ldv_param_88_1_default ;
  int ldv_10_ldv_param_88_2_default ;
  int ldv_10_ret_default ;
  struct tty_driver *ldv_10_tty_driver_tty_driver ;
  struct tty_operations *ldv_10_tty_operations_tty_operations ;
  struct tty_port *ldv_10_tty_port_tty_port ;
  struct tty_port_operations *ldv_10_tty_port_operations_tty_port_operations ;
  struct file *ldv_10_tty_struct_file ;
  struct channel_t *ldv_10_tty_struct_struct_channel_t_ptr ;
  struct dgnc_board *ldv_10_tty_struct_struct_dgnc_board_ptr ;
  struct ktermios *ldv_10_tty_struct_struct_ktermios_ptr ;
  struct termiox *ldv_10_tty_struct_struct_termiox_ptr ;
  struct tty_struct *ldv_10_tty_struct_tty_struct ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  {
  ldv_10_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_10_file_file = (struct file *)tmp;
  }
  if ((unsigned long )ldv_10_tty_operations_tty_operations->lookup != (unsigned long )((struct tty_struct *(*)(struct tty_driver * ,
                                                                                                               struct inode * ,
                                                                                                               int ))0)) {
    {
    ldv_10_tty_struct_tty_struct = ldv_tty_instance_lookup_10_31((struct tty_struct *(*)(struct tty_driver * ,
                                                                                         int ))ldv_10_tty_operations_tty_operations->lookup,
                                                                 ldv_10_tty_driver_tty_driver,
                                                                 ldv_10_ldv_param_31_1_default);
    }
  } else {
  }
  goto ldv_main_10;
  return;
  ldv_main_10:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_10_tty_operations_tty_operations->install != (unsigned long )((int (*)(struct tty_driver * ,
                                                                                                   struct tty_struct * ))0)) {
      {
      ldv_10_ret_default = ldv_tty_instance_install_10_29(ldv_10_tty_operations_tty_operations->install,
                                                          ldv_10_tty_driver_tty_driver,
                                                          ldv_10_tty_struct_tty_struct);
      }
    } else {
    }
    {
    ldv_10_ret_default = ldv_filter_err_code(ldv_10_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_10_ret_default == 0);
      ldv_10_ret_default = ldv_tty_instance_open_10_27(ldv_10_tty_operations_tty_operations->open,
                                                       ldv_10_tty_struct_tty_struct,
                                                       ldv_10_tty_struct_file);
      ldv_10_ret_default = ldv_filter_err_code(ldv_10_ret_default);
      tmp___0 = ldv_undef_int();
      }
      if (tmp___0 != 0) {
        {
        ldv_assume(ldv_10_ret_default == 0);
        }
        goto ldv_call_10;
      } else {
        {
        ldv_assume(ldv_10_ret_default != 0);
        }
        if ((unsigned long )ldv_10_tty_operations_tty_operations->remove != (unsigned long )((void (*)(struct tty_driver * ,
                                                                                                       struct tty_struct * ))0)) {
          {
          ldv_tty_instance_remove_10_23(ldv_10_tty_operations_tty_operations->remove,
                                        ldv_10_tty_driver_tty_driver, ldv_10_tty_struct_tty_struct);
          }
        } else {
        }
        goto ldv_main_10;
      }
    } else {
      {
      ldv_assume(ldv_10_ret_default != 0);
      }
      goto ldv_main_10;
      goto ldv_main_10;
    }
  } else {
    {
    ldv_free((void *)ldv_10_file_file);
    }
    return;
  }
  return;
  ldv_call_10:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___3 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___3 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___3 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___3 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___3 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___3 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___3 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___3 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___3 == 14) {
    goto case_14;
  } else {
  }
  if (tmp___3 == 15) {
    goto case_15;
  } else {
  }
  if (tmp___3 == 16) {
    goto case_16;
  } else {
  }
  if (tmp___3 == 17) {
    goto case_17;
  } else {
  }
  if (tmp___3 == 18) {
    goto case_18;
  } else {
  }
  if (tmp___3 == 19) {
    goto case_19;
  } else {
  }
  if (tmp___3 == 20) {
    goto case_20;
  } else {
  }
  if (tmp___3 == 21) {
    goto case_21;
  } else {
  }
  if (tmp___3 == 22) {
    goto case_22;
  } else {
  }
  if (tmp___3 == 23) {
    goto case_23;
  } else {
  }
  if (tmp___3 == 24) {
    goto case_24;
  } else {
  }
  if (tmp___3 == 25) {
    goto case_25;
  } else {
  }
  if (tmp___3 == 26) {
    goto case_26;
  } else {
  }
  if (tmp___3 == 27) {
    goto case_27;
  } else {
  }
  if (tmp___3 == 28) {
    goto case_28;
  } else {
  }
  if (tmp___3 == 29) {
    goto case_29;
  } else {
  }
  if (tmp___3 == 30) {
    goto case_30;
  } else {
  }
  if (tmp___3 == 31) {
    goto case_31;
  } else {
  }
  if (tmp___3 == 32) {
    goto case_32;
  } else {
  }
  if (tmp___3 == 33) {
    goto case_33;
  } else {
  }
  if (tmp___3 == 34) {
    goto case_34;
  } else {
  }
  if (tmp___3 == 35) {
    goto case_35;
  } else {
  }
  if (tmp___3 == 36) {
    goto case_36;
  } else {
  }
  if (tmp___3 == 37) {
    goto case_37;
  } else {
  }
  if (tmp___3 == 38) {
    goto case_38;
  } else {
  }
  goto switch_default;
  case_1: ;
  if ((unsigned long )ldv_10_tty_operations_tty_operations->lookup != (unsigned long )((struct tty_struct *(*)(struct tty_driver * ,
                                                                                                               struct inode * ,
                                                                                                               int ))0)) {
    {
    ldv_10_tty_struct_tty_struct = ldv_tty_instance_lookup_10_18((struct tty_struct *(*)(struct tty_driver * ,
                                                                                         int ))ldv_10_tty_operations_tty_operations->lookup,
                                                                 ldv_10_tty_driver_tty_driver,
                                                                 ldv_10_ldv_param_18_1_default);
    }
  } else {
  }
  goto ldv_call_10;
  case_2:
  {
  ldv_tty_instance_callback_10_91(ldv_10_callback_write_room, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  case_3:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_10_ldv_param_88_1_default = (unsigned char *)tmp___4;
  ldv_tty_instance_callback_10_88(ldv_10_callback_write, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_88_1_default, ldv_10_ldv_param_88_2_default);
  ldv_free((void *)ldv_10_ldv_param_88_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_4:
  {
  ldv_tty_instance_callback_10_85(ldv_10_callback_wait_until_sent, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_85_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_5:
  {
  ldv_tty_instance_callback_10_84(ldv_10_callback_vpd, ldv_10_tty_struct_struct_dgnc_board_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_6:
  {
  ldv_tty_instance_callback_10_83(ldv_10_callback_uart_off, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_7:
  {
  ldv_tty_instance_callback_10_82(ldv_10_callback_uart_init, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_8:
  {
  ldv_tty_instance_callback_10_79(ldv_10_callback_tiocmset, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_79_1_default, ldv_10_ldv_param_79_2_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_9:
  {
  ldv_tty_instance_callback_10_78(ldv_10_callback_tiocmget, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_10:
  {
  ldv_tty_instance_callback_10_75(ldv_10_callback_tasklet, ldv_10_ldv_param_75_0_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_11:
  {
  ldv_tty_instance_callback_10_72(ldv_10_callback_send_xchar, ldv_10_tty_struct_tty_struct,
                                  (int )ldv_10_ldv_param_72_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_12:
  {
  ldv_tty_instance_callback_10_71(ldv_10_callback_send_stop_character, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_13:
  {
  ldv_tty_instance_callback_10_70(ldv_10_callback_send_start_character, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_14:
  {
  ldv_tty_instance_callback_10_67(ldv_10_callback_send_immediate_char, ldv_10_tty_struct_struct_channel_t_ptr,
                                  (int )ldv_10_ldv_param_67_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_15:
  {
  ldv_tty_instance_callback_10_64(ldv_10_callback_send_break, ldv_10_tty_struct_struct_channel_t_ptr,
                                  ldv_10_ldv_param_64_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_16:
  {
  ldv_tty_instance_callback_10_61(ldv_10_callback_put_char, ldv_10_tty_struct_tty_struct,
                                  (int )ldv_10_ldv_param_61_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_17:
  {
  ldv_tty_instance_callback_10_60(ldv_10_callback_param, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_18:
  {
  ldv_tty_instance_callback_10_57(ldv_10_callback_ioctl, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_57_1_default, ldv_10_ldv_param_57_2_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_19:
  {
  ldv_tty_instance_callback_10_54(ldv_10_callback_intr, ldv_10_ldv_param_54_0_default,
                                  (void *)ldv_10_tty_struct_file);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_20:
  {
  ldv_tty_instance_callback_10_53(ldv_10_callback_hangup, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_21:
  {
  ldv_tty_instance_callback_10_52(ldv_10_callback_get_uart_bytes_left, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_22:
  {
  ldv_tty_instance_callback_10_51(ldv_10_callback_flush_uart_write, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_23:
  {
  ldv_tty_instance_callback_10_50(ldv_10_callback_flush_uart_read, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_24:
  {
  ldv_tty_instance_callback_10_49(ldv_10_callback_flush_chars, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_25:
  {
  ldv_tty_instance_callback_10_48(ldv_10_callback_flush_buffer, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_26:
  {
  ldv_tty_instance_callback_10_47(ldv_10_callback_enable_receiver, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_27:
  {
  ldv_tty_instance_callback_10_44(ldv_10_callback_drain, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_44_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_28:
  {
  ldv_tty_instance_callback_10_43(ldv_10_callback_disable_receiver, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_29:
  {
  ldv_tty_instance_callback_10_42(ldv_10_callback_copy_data_from_queue_to_uart, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_30:
  {
  ldv_tty_instance_callback_10_41(ldv_10_callback_chars_in_buffer, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_31:
  {
  ldv_tty_instance_callback_10_38(ldv_10_callback_break_ctl, ldv_10_tty_struct_tty_struct,
                                  ldv_10_ldv_param_38_1_default);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_32:
  {
  tmp___5 = ldv_xmalloc(1816UL);
  ldv_10_ldv_param_5_0_default = (struct tty_struct *)tmp___5;
  ldv_tty_instance_close_10_5(ldv_10_tty_operations_tty_operations->close, ldv_10_ldv_param_5_0_default,
                              ldv_10_tty_struct_file);
  ldv_free((void *)ldv_10_ldv_param_5_0_default);
  }
  if ((unsigned long )ldv_10_tty_operations_tty_operations->shutdown != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    {
    ldv_tty_instance_shutdown_10_4(ldv_10_tty_operations_tty_operations->shutdown,
                                   ldv_10_tty_struct_tty_struct);
    }
  } else {
  }
  if ((unsigned long )ldv_10_tty_operations_tty_operations->cleanup != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    {
    ldv_tty_instance_cleanup_10_3(ldv_10_tty_operations_tty_operations->cleanup, ldv_10_tty_struct_tty_struct);
    }
  } else {
  }
  if ((unsigned long )ldv_10_tty_operations_tty_operations->remove != (unsigned long )((void (*)(struct tty_driver * ,
                                                                                                 struct tty_struct * ))0)) {
    {
    ldv_tty_instance_remove_10_2(ldv_10_tty_operations_tty_operations->remove, ldv_10_tty_driver_tty_driver,
                                 ldv_10_tty_struct_tty_struct);
    }
  } else {
  }
  goto ldv_main_10;
  case_33:
  {
  ldv_tty_instance_callback_10_17(ldv_10_callback_assert_modem_signals, ldv_10_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_34:
  {
  ldv_tty_instance_set_termios_10_16(ldv_10_tty_operations_tty_operations->set_termios,
                                     ldv_10_tty_struct_tty_struct, ldv_10_tty_struct_struct_ktermios_ptr);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_35:
  {
  ldv_tty_instance_throttle_10_15(ldv_10_tty_operations_tty_operations->throttle,
                                  ldv_10_tty_struct_tty_struct);
  ldv_tty_instance_unthrottle_10_14(ldv_10_tty_operations_tty_operations->unthrottle,
                                    ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_36:
  {
  ldv_tty_instance_start_10_13(ldv_10_tty_operations_tty_operations->start, ldv_10_tty_struct_tty_struct);
  ldv_tty_instance_stop_10_12(ldv_10_tty_operations_tty_operations->stop, ldv_10_tty_struct_tty_struct);
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_37: ;
  if ((unsigned long )ldv_10_tty_operations_tty_operations->set_termiox != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                                     struct termiox * ))0)) {
    {
    ldv_tty_instance_set_termiox_10_11(ldv_10_tty_operations_tty_operations->set_termiox,
                                       ldv_10_tty_struct_tty_struct, ldv_10_tty_struct_struct_termiox_ptr);
    }
  } else {
  }
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  goto ldv_call_10;
  case_38: ;
  if ((unsigned long )ldv_10_tty_port_operations_tty_port_operations->activate != (unsigned long )((int (*)(struct tty_port * ,
                                                                                                            struct tty_struct * ))0)) {
    {
    ldv_10_ret_default = ldv_tty_instance_port_activate_10_10(ldv_10_tty_port_operations_tty_port_operations->activate,
                                                              ldv_10_tty_port_tty_port,
                                                              ldv_10_tty_struct_tty_struct);
    }
  } else {
  }
  {
  ldv_10_ret_default = ldv_filter_err_code(ldv_10_ret_default);
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    {
    ldv_assume(ldv_10_ret_default == 0);
    }
    if ((unsigned long )ldv_10_tty_port_operations_tty_port_operations->shutdown != (unsigned long )((void (*)(struct tty_port * ))0)) {
      {
      ldv_tty_instance_port_shutdown_10_8(ldv_10_tty_port_operations_tty_port_operations->shutdown,
                                          ldv_10_tty_port_tty_port);
      }
    } else {
    }
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
  } else {
    {
    ldv_assume(ldv_10_ret_default != 0);
    }
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
    goto ldv_call_10;
  }
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_tty_tty_instance_9(void *arg0 )
{
  void (*ldv_9_callback_assert_modem_signals)(struct channel_t * ) ;
  int (*ldv_9_callback_break_ctl)(struct tty_struct * , int ) ;
  int (*ldv_9_callback_chars_in_buffer)(struct tty_struct * ) ;
  void (*ldv_9_callback_copy_data_from_queue_to_uart)(struct channel_t * ) ;
  void (*ldv_9_callback_disable_receiver)(struct channel_t * ) ;
  int (*ldv_9_callback_drain)(struct tty_struct * , unsigned int ) ;
  void (*ldv_9_callback_enable_receiver)(struct channel_t * ) ;
  void (*ldv_9_callback_flush_buffer)(struct tty_struct * ) ;
  void (*ldv_9_callback_flush_chars)(struct tty_struct * ) ;
  void (*ldv_9_callback_flush_uart_read)(struct channel_t * ) ;
  void (*ldv_9_callback_flush_uart_write)(struct channel_t * ) ;
  unsigned int (*ldv_9_callback_get_uart_bytes_left)(struct channel_t * ) ;
  void (*ldv_9_callback_hangup)(struct tty_struct * ) ;
  enum irqreturn (*ldv_9_callback_intr)(int , void * ) ;
  int (*ldv_9_callback_ioctl)(struct tty_struct * , unsigned int , unsigned long ) ;
  void (*ldv_9_callback_param)(struct tty_struct * ) ;
  int (*ldv_9_callback_put_char)(struct tty_struct * , unsigned char ) ;
  void (*ldv_9_callback_send_break)(struct channel_t * , int ) ;
  void (*ldv_9_callback_send_immediate_char)(struct channel_t * , unsigned char ) ;
  void (*ldv_9_callback_send_start_character)(struct channel_t * ) ;
  void (*ldv_9_callback_send_stop_character)(struct channel_t * ) ;
  void (*ldv_9_callback_send_xchar)(struct tty_struct * , char ) ;
  void (*ldv_9_callback_tasklet)(unsigned long ) ;
  int (*ldv_9_callback_tiocmget)(struct tty_struct * ) ;
  int (*ldv_9_callback_tiocmset)(struct tty_struct * , unsigned int , unsigned int ) ;
  void (*ldv_9_callback_uart_init)(struct channel_t * ) ;
  void (*ldv_9_callback_uart_off)(struct channel_t * ) ;
  void (*ldv_9_callback_vpd)(struct dgnc_board * ) ;
  void (*ldv_9_callback_wait_until_sent)(struct tty_struct * , int ) ;
  int (*ldv_9_callback_write)(struct tty_struct * , unsigned char * , int ) ;
  int (*ldv_9_callback_write_room)(struct tty_struct * ) ;
  struct file *ldv_9_file_file ;
  int ldv_9_ldv_param_18_1_default ;
  int ldv_9_ldv_param_31_1_default ;
  int ldv_9_ldv_param_38_1_default ;
  unsigned int ldv_9_ldv_param_44_1_default ;
  int ldv_9_ldv_param_54_0_default ;
  unsigned int ldv_9_ldv_param_57_1_default ;
  unsigned long ldv_9_ldv_param_57_2_default ;
  struct tty_struct *ldv_9_ldv_param_5_0_default ;
  unsigned char ldv_9_ldv_param_61_1_default ;
  int ldv_9_ldv_param_64_1_default ;
  unsigned char ldv_9_ldv_param_67_1_default ;
  char ldv_9_ldv_param_72_1_default ;
  unsigned long ldv_9_ldv_param_75_0_default ;
  unsigned int ldv_9_ldv_param_79_1_default ;
  unsigned int ldv_9_ldv_param_79_2_default ;
  int ldv_9_ldv_param_85_1_default ;
  unsigned char *ldv_9_ldv_param_88_1_default ;
  int ldv_9_ldv_param_88_2_default ;
  int ldv_9_ret_default ;
  struct tty_driver *ldv_9_tty_driver_tty_driver ;
  struct tty_operations *ldv_9_tty_operations_tty_operations ;
  struct tty_port *ldv_9_tty_port_tty_port ;
  struct tty_port_operations *ldv_9_tty_port_operations_tty_port_operations ;
  struct file *ldv_9_tty_struct_file ;
  struct channel_t *ldv_9_tty_struct_struct_channel_t_ptr ;
  struct dgnc_board *ldv_9_tty_struct_struct_dgnc_board_ptr ;
  struct ktermios *ldv_9_tty_struct_struct_ktermios_ptr ;
  struct termiox *ldv_9_tty_struct_struct_termiox_ptr ;
  struct tty_struct *ldv_9_tty_struct_tty_struct ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  int tmp___6 ;
  {
  {
  ldv_9_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_9_file_file = (struct file *)tmp;
  }
  if ((unsigned long )ldv_9_tty_operations_tty_operations->lookup != (unsigned long )((struct tty_struct *(*)(struct tty_driver * ,
                                                                                                              struct inode * ,
                                                                                                              int ))0)) {
    {
    ldv_9_tty_struct_tty_struct = ldv_tty_instance_lookup_9_31((struct tty_struct *(*)(struct tty_driver * ,
                                                                                       int ))ldv_9_tty_operations_tty_operations->lookup,
                                                               ldv_9_tty_driver_tty_driver,
                                                               ldv_9_ldv_param_31_1_default);
    }
  } else {
  }
  goto ldv_main_9;
  return;
  ldv_main_9:
  {
  tmp___2 = ldv_undef_int();
  }
  if (tmp___2 != 0) {
    if ((unsigned long )ldv_9_tty_operations_tty_operations->install != (unsigned long )((int (*)(struct tty_driver * ,
                                                                                                  struct tty_struct * ))0)) {
      {
      ldv_9_ret_default = ldv_tty_instance_install_9_29(ldv_9_tty_operations_tty_operations->install,
                                                        ldv_9_tty_driver_tty_driver,
                                                        ldv_9_tty_struct_tty_struct);
      }
    } else {
    }
    {
    ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
    tmp___1 = ldv_undef_int();
    }
    if (tmp___1 != 0) {
      {
      ldv_assume(ldv_9_ret_default == 0);
      ldv_9_ret_default = ldv_tty_instance_open_9_27(ldv_9_tty_operations_tty_operations->open,
                                                     ldv_9_tty_struct_tty_struct,
                                                     ldv_9_tty_struct_file);
      ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
      tmp___0 = ldv_undef_int();
      }
      if (tmp___0 != 0) {
        {
        ldv_assume(ldv_9_ret_default == 0);
        }
        goto ldv_call_9;
      } else {
        {
        ldv_assume(ldv_9_ret_default != 0);
        }
        if ((unsigned long )ldv_9_tty_operations_tty_operations->remove != (unsigned long )((void (*)(struct tty_driver * ,
                                                                                                      struct tty_struct * ))0)) {
          {
          ldv_tty_instance_remove_9_23(ldv_9_tty_operations_tty_operations->remove,
                                       ldv_9_tty_driver_tty_driver, ldv_9_tty_struct_tty_struct);
          }
        } else {
        }
        goto ldv_main_9;
      }
    } else {
      {
      ldv_assume(ldv_9_ret_default != 0);
      }
      goto ldv_main_9;
      goto ldv_main_9;
    }
  } else {
    {
    ldv_free((void *)ldv_9_file_file);
    }
    return;
  }
  return;
  ldv_call_9:
  {
  tmp___3 = ldv_undef_int();
  }
  {
  if (tmp___3 == 1) {
    goto case_1;
  } else {
  }
  if (tmp___3 == 2) {
    goto case_2;
  } else {
  }
  if (tmp___3 == 3) {
    goto case_3;
  } else {
  }
  if (tmp___3 == 4) {
    goto case_4;
  } else {
  }
  if (tmp___3 == 5) {
    goto case_5;
  } else {
  }
  if (tmp___3 == 6) {
    goto case_6;
  } else {
  }
  if (tmp___3 == 7) {
    goto case_7;
  } else {
  }
  if (tmp___3 == 8) {
    goto case_8;
  } else {
  }
  if (tmp___3 == 9) {
    goto case_9;
  } else {
  }
  if (tmp___3 == 10) {
    goto case_10;
  } else {
  }
  if (tmp___3 == 11) {
    goto case_11;
  } else {
  }
  if (tmp___3 == 12) {
    goto case_12;
  } else {
  }
  if (tmp___3 == 13) {
    goto case_13;
  } else {
  }
  if (tmp___3 == 14) {
    goto case_14;
  } else {
  }
  if (tmp___3 == 15) {
    goto case_15;
  } else {
  }
  if (tmp___3 == 16) {
    goto case_16;
  } else {
  }
  if (tmp___3 == 17) {
    goto case_17;
  } else {
  }
  if (tmp___3 == 18) {
    goto case_18;
  } else {
  }
  if (tmp___3 == 19) {
    goto case_19;
  } else {
  }
  if (tmp___3 == 20) {
    goto case_20;
  } else {
  }
  if (tmp___3 == 21) {
    goto case_21;
  } else {
  }
  if (tmp___3 == 22) {
    goto case_22;
  } else {
  }
  if (tmp___3 == 23) {
    goto case_23;
  } else {
  }
  if (tmp___3 == 24) {
    goto case_24;
  } else {
  }
  if (tmp___3 == 25) {
    goto case_25;
  } else {
  }
  if (tmp___3 == 26) {
    goto case_26;
  } else {
  }
  if (tmp___3 == 27) {
    goto case_27;
  } else {
  }
  if (tmp___3 == 28) {
    goto case_28;
  } else {
  }
  if (tmp___3 == 29) {
    goto case_29;
  } else {
  }
  if (tmp___3 == 30) {
    goto case_30;
  } else {
  }
  if (tmp___3 == 31) {
    goto case_31;
  } else {
  }
  if (tmp___3 == 32) {
    goto case_32;
  } else {
  }
  if (tmp___3 == 33) {
    goto case_33;
  } else {
  }
  if (tmp___3 == 34) {
    goto case_34;
  } else {
  }
  if (tmp___3 == 35) {
    goto case_35;
  } else {
  }
  if (tmp___3 == 36) {
    goto case_36;
  } else {
  }
  if (tmp___3 == 37) {
    goto case_37;
  } else {
  }
  if (tmp___3 == 38) {
    goto case_38;
  } else {
  }
  goto switch_default;
  case_1: ;
  if ((unsigned long )ldv_9_tty_operations_tty_operations->lookup != (unsigned long )((struct tty_struct *(*)(struct tty_driver * ,
                                                                                                              struct inode * ,
                                                                                                              int ))0)) {
    {
    ldv_9_tty_struct_tty_struct = ldv_tty_instance_lookup_9_18((struct tty_struct *(*)(struct tty_driver * ,
                                                                                       int ))ldv_9_tty_operations_tty_operations->lookup,
                                                               ldv_9_tty_driver_tty_driver,
                                                               ldv_9_ldv_param_18_1_default);
    }
  } else {
  }
  goto ldv_call_9;
  case_2:
  {
  ldv_tty_instance_callback_9_91(ldv_9_callback_write_room, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  case_3:
  {
  tmp___4 = ldv_xmalloc(1UL);
  ldv_9_ldv_param_88_1_default = (unsigned char *)tmp___4;
  ldv_tty_instance_callback_9_88(ldv_9_callback_write, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_88_1_default, ldv_9_ldv_param_88_2_default);
  ldv_free((void *)ldv_9_ldv_param_88_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_4:
  {
  ldv_tty_instance_callback_9_85(ldv_9_callback_wait_until_sent, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_85_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_5:
  {
  ldv_tty_instance_callback_9_84(ldv_9_callback_vpd, ldv_9_tty_struct_struct_dgnc_board_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_6:
  {
  ldv_tty_instance_callback_9_83(ldv_9_callback_uart_off, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_7:
  {
  ldv_tty_instance_callback_9_82(ldv_9_callback_uart_init, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_8:
  {
  ldv_tty_instance_callback_9_79(ldv_9_callback_tiocmset, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_79_1_default, ldv_9_ldv_param_79_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_9:
  {
  ldv_tty_instance_callback_9_78(ldv_9_callback_tiocmget, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_10:
  {
  ldv_tty_instance_callback_9_75(ldv_9_callback_tasklet, ldv_9_ldv_param_75_0_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_11:
  {
  ldv_tty_instance_callback_9_72(ldv_9_callback_send_xchar, ldv_9_tty_struct_tty_struct,
                                 (int )ldv_9_ldv_param_72_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_12:
  {
  ldv_tty_instance_callback_9_71(ldv_9_callback_send_stop_character, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_13:
  {
  ldv_tty_instance_callback_9_70(ldv_9_callback_send_start_character, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_14:
  {
  ldv_tty_instance_callback_9_67(ldv_9_callback_send_immediate_char, ldv_9_tty_struct_struct_channel_t_ptr,
                                 (int )ldv_9_ldv_param_67_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_15:
  {
  ldv_tty_instance_callback_9_64(ldv_9_callback_send_break, ldv_9_tty_struct_struct_channel_t_ptr,
                                 ldv_9_ldv_param_64_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_16:
  {
  ldv_tty_instance_callback_9_61(ldv_9_callback_put_char, ldv_9_tty_struct_tty_struct,
                                 (int )ldv_9_ldv_param_61_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_17:
  {
  ldv_tty_instance_callback_9_60(ldv_9_callback_param, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_18:
  {
  ldv_tty_instance_callback_9_57(ldv_9_callback_ioctl, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_57_1_default, ldv_9_ldv_param_57_2_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_19:
  {
  ldv_tty_instance_callback_9_54(ldv_9_callback_intr, ldv_9_ldv_param_54_0_default,
                                 (void *)ldv_9_tty_struct_file);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_20:
  {
  ldv_tty_instance_callback_9_53(ldv_9_callback_hangup, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_21:
  {
  ldv_tty_instance_callback_9_52(ldv_9_callback_get_uart_bytes_left, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_22:
  {
  ldv_tty_instance_callback_9_51(ldv_9_callback_flush_uart_write, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_23:
  {
  ldv_tty_instance_callback_9_50(ldv_9_callback_flush_uart_read, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_24:
  {
  ldv_tty_instance_callback_9_49(ldv_9_callback_flush_chars, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_25:
  {
  ldv_tty_instance_callback_9_48(ldv_9_callback_flush_buffer, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_26:
  {
  ldv_tty_instance_callback_9_47(ldv_9_callback_enable_receiver, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_27:
  {
  ldv_tty_instance_callback_9_44(ldv_9_callback_drain, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_44_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_28:
  {
  ldv_tty_instance_callback_9_43(ldv_9_callback_disable_receiver, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_29:
  {
  ldv_tty_instance_callback_9_42(ldv_9_callback_copy_data_from_queue_to_uart, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_30:
  {
  ldv_tty_instance_callback_9_41(ldv_9_callback_chars_in_buffer, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_31:
  {
  ldv_tty_instance_callback_9_38(ldv_9_callback_break_ctl, ldv_9_tty_struct_tty_struct,
                                 ldv_9_ldv_param_38_1_default);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_32:
  {
  tmp___5 = ldv_xmalloc(1816UL);
  ldv_9_ldv_param_5_0_default = (struct tty_struct *)tmp___5;
  ldv_tty_instance_close_9_5(ldv_9_tty_operations_tty_operations->close, ldv_9_ldv_param_5_0_default,
                             ldv_9_tty_struct_file);
  ldv_free((void *)ldv_9_ldv_param_5_0_default);
  }
  if ((unsigned long )ldv_9_tty_operations_tty_operations->shutdown != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    {
    ldv_tty_instance_shutdown_9_4(ldv_9_tty_operations_tty_operations->shutdown, ldv_9_tty_struct_tty_struct);
    }
  } else {
  }
  if ((unsigned long )ldv_9_tty_operations_tty_operations->cleanup != (unsigned long )((void (*)(struct tty_struct * ))0)) {
    {
    ldv_tty_instance_cleanup_9_3(ldv_9_tty_operations_tty_operations->cleanup, ldv_9_tty_struct_tty_struct);
    }
  } else {
  }
  if ((unsigned long )ldv_9_tty_operations_tty_operations->remove != (unsigned long )((void (*)(struct tty_driver * ,
                                                                                                struct tty_struct * ))0)) {
    {
    ldv_tty_instance_remove_9_2(ldv_9_tty_operations_tty_operations->remove, ldv_9_tty_driver_tty_driver,
                                ldv_9_tty_struct_tty_struct);
    }
  } else {
  }
  goto ldv_main_9;
  case_33:
  {
  ldv_tty_instance_callback_9_17(ldv_9_callback_assert_modem_signals, ldv_9_tty_struct_struct_channel_t_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_34:
  {
  ldv_tty_instance_set_termios_9_16(ldv_9_tty_operations_tty_operations->set_termios,
                                    ldv_9_tty_struct_tty_struct, ldv_9_tty_struct_struct_ktermios_ptr);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_35:
  {
  ldv_tty_instance_throttle_9_15(ldv_9_tty_operations_tty_operations->throttle, ldv_9_tty_struct_tty_struct);
  ldv_tty_instance_unthrottle_9_14(ldv_9_tty_operations_tty_operations->unthrottle,
                                   ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_36:
  {
  ldv_tty_instance_start_9_13(ldv_9_tty_operations_tty_operations->start, ldv_9_tty_struct_tty_struct);
  ldv_tty_instance_stop_9_12(ldv_9_tty_operations_tty_operations->stop, ldv_9_tty_struct_tty_struct);
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_37: ;
  if ((unsigned long )ldv_9_tty_operations_tty_operations->set_termiox != (unsigned long )((int (*)(struct tty_struct * ,
                                                                                                    struct termiox * ))0)) {
    {
    ldv_tty_instance_set_termiox_9_11(ldv_9_tty_operations_tty_operations->set_termiox,
                                      ldv_9_tty_struct_tty_struct, ldv_9_tty_struct_struct_termiox_ptr);
    }
  } else {
  }
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  goto ldv_call_9;
  case_38: ;
  if ((unsigned long )ldv_9_tty_port_operations_tty_port_operations->activate != (unsigned long )((int (*)(struct tty_port * ,
                                                                                                           struct tty_struct * ))0)) {
    {
    ldv_9_ret_default = ldv_tty_instance_port_activate_9_10(ldv_9_tty_port_operations_tty_port_operations->activate,
                                                            ldv_9_tty_port_tty_port,
                                                            ldv_9_tty_struct_tty_struct);
    }
  } else {
  }
  {
  ldv_9_ret_default = ldv_filter_err_code(ldv_9_ret_default);
  tmp___6 = ldv_undef_int();
  }
  if (tmp___6 != 0) {
    {
    ldv_assume(ldv_9_ret_default == 0);
    }
    if ((unsigned long )ldv_9_tty_port_operations_tty_port_operations->shutdown != (unsigned long )((void (*)(struct tty_port * ))0)) {
      {
      ldv_tty_instance_port_shutdown_9_8(ldv_9_tty_port_operations_tty_port_operations->shutdown,
                                         ldv_9_tty_port_tty_port);
      }
    } else {
    }
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
  } else {
    {
    ldv_assume(ldv_9_ret_default != 0);
    }
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
    goto ldv_call_9;
  }
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_tty_unregister_device(void *arg0 , struct tty_driver *arg1 , unsigned int arg2 )
{
  struct tty_driver *ldv_15_tty_driver_tty_driver ;
  {
  {
  ldv_15_tty_driver_tty_driver = arg1;
  ldv_dispatch_deregister_15_1(ldv_15_tty_driver_tty_driver);
  }
  return;
  return;
}
}
void ldv_usb_serial_instance_ioctl_11_31(int (*arg0)(struct tty_struct * , unsigned int ,
                                                     unsigned long ) , struct tty_struct *arg1 ,
                                         unsigned int arg2 , unsigned long arg3 )
{
  {
  {
  dgnc_tty_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_usb_serial_instance_write_room_11_32(int (*arg0)(struct tty_struct * ) ,
                                              struct tty_struct *arg1 )
{
  {
  {
  dgnc_tty_write_room(arg1);
  }
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_malloc(size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *res ;
  {
  {
  ldv_check_alloc_flags(flags);
  res = ldv_calloc(n, size);
  ldv_after_alloc(res);
  }
  return (res);
}
}
static void ldv_tty_unregister_device_96(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  tty_unregister_device(ldv_func_arg1, ldv_func_arg2);
  ldv_tty_unregister_device((void *)0, ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv_tty_unregister_device_97(struct tty_driver *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  {
  tty_unregister_device(ldv_func_arg1, ldv_func_arg2);
  ldv_tty_unregister_device((void *)0, ldv_func_arg1, ldv_func_arg2);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_98(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_104___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_107___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_109___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_111___1(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_115___0(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_118(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_120(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_122(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_124(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_126(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_128(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_131(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_133(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_135(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_137(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_139(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_143(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_146(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_148(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_150(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_152(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_154(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_156(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_158(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_160(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_162(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_164(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_166(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_168(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_170(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_172(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_174(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_176(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_179(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_182(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_185(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_190(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_201(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_204(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_208(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_211(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
static void ldv___ldv_linux_kernel_locking_spinlock_spin_lock_216(spinlock_t *ldv_func_arg1 )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t();
  __ldv_linux_kernel_locking_spinlock_spin_lock(ldv_func_arg1);
  }
  return;
}
}
extern int sscanf(char const * , char const * , ...) ;
int ldv_linux_fs_sysfs_sysfs_create_group(void) ;
void ldv_linux_fs_sysfs_sysfs_remove_group(void) ;
static int ldv_sysfs_create_group_96(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 ) ;
static void ldv_sysfs_remove_group_97(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 ) ;
static void ldv_sysfs_remove_group_98(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 ) ;
extern int driver_create_file(struct device_driver * , struct driver_attribute const * ) ;
extern void driver_remove_file(struct device_driver * , struct driver_attribute const * ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
__inline static void *dev_get_drvdata(struct device const *dev )
{
  {
  return ((void *)dev->driver_data);
}
}
__inline static void dev_set_drvdata(struct device *dev , void *data )
{
  {
  dev->driver_data = data;
  return;
}
}
static ssize_t dgnc_driver_version_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  {
  tmp = snprintf(buf, 4096UL, "%s\n", (char *)"40002369_F");
  }
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_version = {{"version", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_driver_version_show,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t dgnc_driver_boards_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  {
  tmp = snprintf(buf, 4096UL, "%d\n", dgnc_NumBoards);
  }
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_boards = {{"boards", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                    {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_driver_boards_show,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t dgnc_driver_maxboards_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  {
  tmp = snprintf(buf, 4096UL, "%d\n", 20);
  }
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_maxboards = {{"maxboards", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_driver_maxboards_show, (ssize_t (*)(struct device_driver * , char const * ,
                                               size_t ))0};
static ssize_t dgnc_driver_pollrate_show(struct device_driver *ddp , char *buf )
{
  int tmp ;
  {
  {
  tmp = snprintf(buf, 4096UL, "%dms\n", dgnc_poll_tick);
  }
  return ((ssize_t )tmp);
}
}
static ssize_t dgnc_driver_pollrate_store(struct device_driver *ddp , char const *buf ,
                                          size_t count )
{
  int ret ;
  {
  {
  ret = sscanf(buf, "%d\n", & dgnc_poll_tick);
  }
  if (ret != 1) {
    return (-22L);
  } else {
  }
  return ((ssize_t )count);
}
}
static struct driver_attribute driver_attr_pollrate = {{"pollrate", 384U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_driver_pollrate_show, & dgnc_driver_pollrate_store};
void dgnc_create_driver_sysfiles(struct pci_driver *dgnc_driver___0 )
{
  int rc ;
  struct device_driver *driverfs ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  {
  rc = 0;
  driverfs = & dgnc_driver___0->driver;
  tmp = driver_create_file(driverfs, (struct driver_attribute const *)(& driver_attr_version));
  rc = rc | tmp;
  tmp___0 = driver_create_file(driverfs, (struct driver_attribute const *)(& driver_attr_boards));
  rc = rc | tmp___0;
  tmp___1 = driver_create_file(driverfs, (struct driver_attribute const *)(& driver_attr_maxboards));
  rc = rc | tmp___1;
  tmp___2 = driver_create_file(driverfs, (struct driver_attribute const *)(& driver_attr_pollrate));
  rc = rc | tmp___2;
  }
  if (rc != 0) {
    {
    printk("\vDGNC: sysfs driver_create_file failed!\n");
    }
  } else {
  }
  return;
}
}
void dgnc_remove_driver_sysfiles(struct pci_driver *dgnc_driver___0 )
{
  struct device_driver *driverfs ;
  {
  {
  driverfs = & dgnc_driver___0->driver;
  driver_remove_file(driverfs, (struct driver_attribute const *)(& driver_attr_version));
  driver_remove_file(driverfs, (struct driver_attribute const *)(& driver_attr_boards));
  driver_remove_file(driverfs, (struct driver_attribute const *)(& driver_attr_maxboards));
  driver_remove_file(driverfs, (struct driver_attribute const *)(& driver_attr_pollrate));
  }
  return;
}
}
static ssize_t dgnc_vpd_show(struct device *p , struct device_attribute *attr , char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = sprintf(buf + (unsigned long )count, "\n      0  1  2  3  4  5  6  7  8  9  A  B  C  D  E  F");
  count = count + tmp___0;
  i = 0;
  }
  goto ldv_36354;
  ldv_36353: ;
  if (((unsigned int )i & 15U) == 0U) {
    {
    tmp___1 = sprintf(buf + (unsigned long )count, "\n%04X ", i * 2);
    count = count + tmp___1;
    }
  } else {
  }
  {
  tmp___2 = sprintf(buf + (unsigned long )count, "%02X ", (int )bd->vpd[i]);
  count = count + tmp___2;
  i = i + 1;
  }
  ldv_36354: ;
  if (i <= 127) {
    goto ldv_36353;
  } else {
  }
  {
  tmp___3 = sprintf(buf + (unsigned long )count, "\n");
  count = count + tmp___3;
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_vpd = {{"vpd", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                 {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_vpd_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_serial_number_show(struct device *p , struct device_attribute *attr ,
                                       char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  count = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  if ((unsigned int )bd->serial_num[0] == 0U) {
    {
    tmp___0 = sprintf(buf + (unsigned long )count, "<UNKNOWN>\n");
    count = count + tmp___0;
    }
  } else {
    {
    tmp___1 = sprintf(buf + (unsigned long )count, "%s\n", (unsigned char *)(& bd->serial_num));
    count = count + tmp___1;
    }
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_serial_number = {{"serial_number", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_serial_number_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
static ssize_t dgnc_ports_state_show(struct device *p , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36394;
  ldv_36393:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %s\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_open_count != 0U ? (char *)"Open" : (char *)"Closed");
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36394: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36393;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_state = {{"ports_state", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_state_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t dgnc_ports_baud_show(struct device *p , struct device_attribute *attr ,
                                    char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36416;
  ldv_36415:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %d\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_old_baud);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36416: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36415;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_baud = {{"ports_baud", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_baud_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                         char const * , size_t ))0};
static ssize_t dgnc_ports_msignals_show(struct device *p , struct device_attribute *attr ,
                                        char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36438;
  ldv_36437: ;
  if ((bd->channels[i])->ch_open_count != 0U) {
    {
    tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                       "%d %s %s %s %s %s %s\n", (bd->channels[i])->ch_portnum, ((int )(bd->channels[i])->ch_mostat & 2) != 0 ? (char *)"RTS" : (char *)"",
                       ((int )(bd->channels[i])->ch_mistat & 16) != 0 ? (char *)"CTS" : (char *)"",
                       (int )(bd->channels[i])->ch_mostat & 1 ? (char *)"DTR" : (char *)"",
                       ((int )(bd->channels[i])->ch_mistat & 32) != 0 ? (char *)"DSR" : (char *)"",
                       (int )((signed char )(bd->channels[i])->ch_mistat) < 0 ? (char *)"DCD" : (char *)"",
                       ((int )(bd->channels[i])->ch_mistat & 64) != 0 ? (char *)"RI" : (char *)"");
    count = count + tmp___0;
    }
  } else {
    {
    tmp___1 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                       "%d\n", (bd->channels[i])->ch_portnum);
    count = count + tmp___1;
    }
  }
  i = i + 1;
  ldv_36438: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36437;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_msignals = {{"ports_msignals", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_msignals_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                             char const * , size_t ))0};
static ssize_t dgnc_ports_iflag_show(struct device *p , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36460;
  ldv_36459:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %x\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_c_iflag);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36460: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36459;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_iflag = {{"ports_iflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_iflag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t dgnc_ports_cflag_show(struct device *p , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36482;
  ldv_36481:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %x\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_c_cflag);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36482: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36481;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_cflag = {{"ports_cflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_cflag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t dgnc_ports_oflag_show(struct device *p , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36504;
  ldv_36503:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %x\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_c_oflag);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36504: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36503;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_oflag = {{"ports_oflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_oflag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t dgnc_ports_lflag_show(struct device *p , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36526;
  ldv_36525:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %x\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_c_lflag);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36526: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36525;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_lflag = {{"ports_lflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_lflag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                          char const * , size_t ))0};
static ssize_t dgnc_ports_digi_flag_show(struct device *p , struct device_attribute *attr ,
                                         char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36548;
  ldv_36547:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %x\n", (bd->channels[i])->ch_portnum, (int )(bd->channels[i])->ch_digi.digi_flags);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36548: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36547;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_digi_flag = {{"ports_digi_flag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                             {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_digi_flag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                              char const * , size_t ))0};
static ssize_t dgnc_ports_rxcount_show(struct device *p , struct device_attribute *attr ,
                                       char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36570;
  ldv_36569:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %ld\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_rxcount);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36570: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36569;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_rxcount = {{"ports_rxcount", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_rxcount_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
static ssize_t dgnc_ports_txcount_show(struct device *p , struct device_attribute *attr ,
                                       char *buf )
{
  struct dgnc_board *bd ;
  int count ;
  int i ;
  void *tmp ;
  int tmp___0 ;
  {
  count = 0;
  i = 0;
  if ((unsigned long )p == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)p);
  bd = (struct dgnc_board *)tmp;
  }
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  i = 0;
  goto ldv_36592;
  ldv_36591:
  {
  tmp___0 = snprintf(buf + (unsigned long )count, 4096UL - (unsigned long )count,
                     "%d %ld\n", (bd->channels[i])->ch_portnum, (bd->channels[i])->ch_txcount);
  count = count + tmp___0;
  i = i + 1;
  }
  ldv_36592: ;
  if ((uint )i < bd->nasync) {
    goto ldv_36591;
  } else {
  }
  return ((ssize_t )count);
}
}
static struct device_attribute dev_attr_ports_txcount = {{"ports_txcount", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                           {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_ports_txcount_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
void dgnc_create_ports_sysfiles(struct dgnc_board *bd )
{
  int rc ;
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
  {
  {
  rc = 0;
  dev_set_drvdata(& (bd->pdev)->dev, (void *)bd);
  tmp = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_state));
  rc = rc | tmp;
  tmp___0 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_baud));
  rc = rc | tmp___0;
  tmp___1 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_msignals));
  rc = rc | tmp___1;
  tmp___2 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_iflag));
  rc = rc | tmp___2;
  tmp___3 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_cflag));
  rc = rc | tmp___3;
  tmp___4 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_oflag));
  rc = rc | tmp___4;
  tmp___5 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_lflag));
  rc = rc | tmp___5;
  tmp___6 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_digi_flag));
  rc = rc | tmp___6;
  tmp___7 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_rxcount));
  rc = rc | tmp___7;
  tmp___8 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_txcount));
  rc = rc | tmp___8;
  tmp___9 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_vpd));
  rc = rc | tmp___9;
  tmp___10 = device_create_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_serial_number));
  rc = rc | tmp___10;
  }
  if (rc != 0) {
    {
    printk("\vDGNC: sysfs device_create_file failed!\n");
    }
  } else {
  }
  return;
}
}
void dgnc_remove_ports_sysfiles(struct dgnc_board *bd )
{
  {
  {
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_state));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_baud));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_msignals));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_iflag));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_cflag));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_oflag));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_lflag));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_digi_flag));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_rxcount));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_ports_txcount));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_vpd));
  device_remove_file(& (bd->pdev)->dev, (struct device_attribute const *)(& dev_attr_serial_number));
  }
  return;
}
}
static ssize_t dgnc_tty_state_show(struct device *d , struct device_attribute *attr ,
                                   char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%s", un->un_open_count != 0U ? (char *)"Open" : (char *)"Closed");
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_state = {{"state", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_state_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_baud_show(struct device *d , struct device_attribute *attr ,
                                  char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%d\n", ch->ch_old_baud);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_baud = {{"baud", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                  {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_baud_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_msignals_show(struct device *d , struct device_attribute *attr ,
                                      char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  if (ch->ch_open_count != 0U) {
    {
    tmp___0 = snprintf(buf, 4096UL, "%s %s %s %s %s %s\n", ((int )ch->ch_mostat & 2) != 0 ? (char *)"RTS" : (char *)"",
                       ((int )ch->ch_mistat & 16) != 0 ? (char *)"CTS" : (char *)"",
                       (int )ch->ch_mostat & 1 ? (char *)"DTR" : (char *)"", ((int )ch->ch_mistat & 32) != 0 ? (char *)"DSR" : (char *)"",
                       (int )((signed char )ch->ch_mistat) < 0 ? (char *)"DCD" : (char *)"",
                       ((int )ch->ch_mistat & 64) != 0 ? (char *)"RI" : (char *)"");
    }
    return ((ssize_t )tmp___0);
  } else {
  }
  return (0L);
}
}
static struct device_attribute dev_attr_msignals = {{"msignals", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                      {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_tty_msignals_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                           char const * , size_t ))0};
static ssize_t dgnc_tty_iflag_show(struct device *d , struct device_attribute *attr ,
                                   char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%x\n", ch->ch_c_iflag);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_iflag = {{"iflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_iflag_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_cflag_show(struct device *d , struct device_attribute *attr ,
                                   char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%x\n", ch->ch_c_cflag);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_cflag = {{"cflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_cflag_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_oflag_show(struct device *d , struct device_attribute *attr ,
                                   char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%x\n", ch->ch_c_oflag);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_oflag = {{"oflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_oflag_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_lflag_show(struct device *d , struct device_attribute *attr ,
                                   char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%x\n", ch->ch_c_lflag);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_lflag = {{"lflag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_lflag_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_digi_flag_show(struct device *d , struct device_attribute *attr ,
                                       char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%x\n", (int )ch->ch_digi.digi_flags);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_digi_flag = {{"digi_flag", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_tty_digi_flag_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                            char const * , size_t ))0};
static ssize_t dgnc_tty_rxcount_show(struct device *d , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%ld\n", ch->ch_rxcount);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_rxcount = {{"rxcount", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_rxcount_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_txcount_show(struct device *d , struct device_attribute *attr ,
                                     char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%ld\n", ch->ch_txcount);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_txcount = {{"txcount", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & dgnc_tty_txcount_show,
    (ssize_t (*)(struct device * , struct device_attribute * , char const * , size_t ))0};
static ssize_t dgnc_tty_name_show(struct device *d , struct device_attribute *attr ,
                                  char *buf )
{
  struct dgnc_board *bd ;
  struct channel_t *ch ;
  struct un_t *un ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )d == (unsigned long )((struct device *)0)) {
    return (0L);
  } else {
  }
  {
  tmp = dev_get_drvdata((struct device const *)d);
  un = (struct un_t *)tmp;
  }
  if ((unsigned long )un == (unsigned long )((struct un_t *)0) || un->magic != 2087579908) {
    return (0L);
  } else {
  }
  ch = un->un_ch;
  if ((unsigned long )ch == (unsigned long )((struct channel_t *)0) || ch->magic != 1819144452) {
    return (0L);
  } else {
  }
  bd = ch->ch_bd;
  if ((unsigned long )bd == (unsigned long )((struct dgnc_board *)0) || bd->magic != 1550708996) {
    return (0L);
  } else {
  }
  if (bd->state != 2U) {
    return (0L);
  } else {
  }
  {
  tmp___0 = snprintf(buf, 4096UL, "%sn%d%c\n", un->un_type == 1U ? (char *)"pr" : (char *)"tty",
                     bd->boardnum + 1, ch->ch_portnum + 97U);
  }
  return ((ssize_t )tmp___0);
}
}
static struct device_attribute dev_attr_custom_name = {{"custom_name", 256U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                         {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & dgnc_tty_name_show, (ssize_t (*)(struct device * , struct device_attribute * ,
                                       char const * , size_t ))0};
static struct attribute *dgnc_sysfs_tty_entries[12U] =
  { & dev_attr_state.attr, & dev_attr_baud.attr, & dev_attr_msignals.attr, & dev_attr_iflag.attr,
        & dev_attr_cflag.attr, & dev_attr_oflag.attr, & dev_attr_lflag.attr, & dev_attr_digi_flag.attr,
        & dev_attr_rxcount.attr, & dev_attr_txcount.attr, & dev_attr_custom_name.attr, (struct attribute *)0};
static struct attribute_group dgnc_tty_attribute_group = {(char const *)0, 0, (struct attribute **)(& dgnc_sysfs_tty_entries), 0};
void dgnc_create_tty_sysfs(struct un_t *un , struct device *c )
{
  int ret ;
  {
  {
  ret = ldv_sysfs_create_group_96(& c->kobj, (struct attribute_group const *)(& dgnc_tty_attribute_group));
  }
  if (ret != 0) {
    {
    dev_err((struct device const *)c, "dgnc: failed to create sysfs tty device attributes.\n");
    ldv_sysfs_remove_group_97(& c->kobj, (struct attribute_group const *)(& dgnc_tty_attribute_group));
    }
    return;
  } else {
  }
  {
  dev_set_drvdata(c, (void *)un);
  }
  return;
}
}
void dgnc_remove_tty_sysfs(struct device *c )
{
  {
  {
  ldv_sysfs_remove_group_98(& c->kobj, (struct attribute_group const *)(& dgnc_tty_attribute_group));
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 )
{
  {
  {
  dgnc_driver_boards_show(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_3_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 )
{
  {
  {
  dgnc_driver_pollrate_store(arg1, (char const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 )
{
  {
  {
  dgnc_driver_maxboards_show(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 )
{
  {
  {
  dgnc_driver_pollrate_store(arg1, (char const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 )
{
  {
  {
  dgnc_driver_pollrate_show(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 )
{
  {
  {
  dgnc_driver_pollrate_store(arg1, (char const *)arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(long (*arg0)(struct device_driver * ,
                                                               char * ) , struct device_driver *arg1 ,
                                                  char *arg2 )
{
  {
  {
  dgnc_driver_version_show(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(long (*arg0)(struct device_driver * ,
                                                               char * , unsigned long ) ,
                                                  struct device_driver *arg1 , char *arg2 ,
                                                  unsigned long arg3 )
{
  {
  {
  dgnc_driver_pollrate_store(arg1, (char const *)arg2, arg3);
  }
  return;
}
}
static int ldv_sysfs_create_group_96(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_fs_sysfs_sysfs_create_group();
  }
  return (tmp);
}
}
static void ldv_sysfs_remove_group_97(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 )
{
  {
  {
  ldv_linux_fs_sysfs_sysfs_remove_group();
  }
  return;
}
}
static void ldv_sysfs_remove_group_98(struct kobject *ldv_func_arg1 , struct attribute_group const *ldv_func_arg2 )
{
  {
  {
  ldv_linux_fs_sysfs_sysfs_remove_group();
  }
  return;
}
}
extern long schedule_timeout(long ) ;
char *dgnc_ioctl_name(int cmd ) ;
int dgnc_ms_sleep(ulong ms )
{
  struct task_struct *tmp ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  {
  {
  tmp = get_current();
  }
  {
  tmp->task_state_change = (unsigned long )((void *)0);
  tmp___0 = get_current();
  tmp___0->state = 1L;
  schedule_timeout((long )((ms * 250UL) / 1000UL));
  tmp___1 = get_current();
  tmp___2 = signal_pending(tmp___1);
  }
  return (tmp___2);
}
}
char *dgnc_ioctl_name(int cmd )
{
  {
  {
  if (cmd == 21509) {
    goto case_21509;
  } else {
  }
  if (cmd == 21505) {
    goto case_21505;
  } else {
  }
  if (cmd == 21510) {
    goto case_21510;
  } else {
  }
  if (cmd == 21506) {
    goto case_21506;
  } else {
  }
  if (cmd == 21511) {
    goto case_21511;
  } else {
  }
  if (cmd == 21507) {
    goto case_21507;
  } else {
  }
  if (cmd == 21512) {
    goto case_21512;
  } else {
  }
  if (cmd == 21508) {
    goto case_21508;
  } else {
  }
  if (cmd == 21513) {
    goto case_21513;
  } else {
  }
  if (cmd == 21514) {
    goto case_21514;
  } else {
  }
  if (cmd == 21515) {
    goto case_21515;
  } else {
  }
  if (cmd == 21545) {
    goto case_21545;
  } else {
  }
  if (cmd == 21540) {
    goto case_21540;
  } else {
  }
  if (cmd == 21539) {
    goto case_21539;
  } else {
  }
  if (cmd == 21523) {
    goto case_21523;
  } else {
  }
  if (cmd == 21524) {
    goto case_21524;
  } else {
  }
  if (cmd == 21525) {
    goto case_21525;
  } else {
  }
  if (cmd == 21528) {
    goto case_21528;
  } else {
  }
  if (cmd == 21526) {
    goto case_21526;
  } else {
  }
  if (cmd == 21527) {
    goto case_21527;
  } else {
  }
  if (cmd == 25951) {
    goto case_25951;
  } else {
  }
  if (cmd == 25952) {
    goto case_25952;
  } else {
  }
  if (cmd == 25953) {
    goto case_25953;
  } else {
  }
  if (cmd == 25956) {
    goto case_25956;
  } else {
  }
  if (cmd == 25958) {
    goto case_25958;
  } else {
  }
  if (cmd == 25955) {
    goto case_25955;
  } else {
  }
  if (cmd == 25957) {
    goto case_25957;
  } else {
  }
  if (cmd == 25950) {
    goto case_25950;
  } else {
  }
  if (cmd == 25846) {
    goto case_25846;
  } else {
  }
  if (cmd == 25847) {
    goto case_25847;
  } else {
  }
  if (cmd == -2147195541) {
    goto case_neg_2147195541;
  } else {
  }
  if (cmd == 1074029930) {
    goto case_1074029930;
  } else {
  }
  if (cmd == 25850) {
    goto case_25850;
  } else {
  }
  if (cmd == 25851) {
    goto case_25851;
  } else {
  }
  if (cmd == 25856) {
    goto case_25856;
  } else {
  }
  if (cmd == 25857) {
    goto case_25857;
  } else {
  }
  goto switch_default;
  case_21509: ;
  return ((char *)"TCGETA");
  case_21505: ;
  return ((char *)"TCGETS");
  case_21510: ;
  return ((char *)"TCSETA");
  case_21506: ;
  return ((char *)"TCSETS");
  case_21511: ;
  return ((char *)"TCSETAW");
  case_21507: ;
  return ((char *)"TCSETSW");
  case_21512: ;
  return ((char *)"TCSETAF");
  case_21508: ;
  return ((char *)"TCSETSF");
  case_21513: ;
  return ((char *)"TCSBRK");
  case_21514: ;
  return ((char *)"TCXONC");
  case_21515: ;
  return ((char *)"TCFLSH");
  case_21545: ;
  return ((char *)"TIOCGSID");
  case_21540: ;
  return ((char *)"TIOCGETD");
  case_21539: ;
  return ((char *)"TIOCSETD");
  case_21523: ;
  return ((char *)"TIOCGWINSZ");
  case_21524: ;
  return ((char *)"TIOCSWINSZ");
  case_21525: ;
  return ((char *)"TIOCMGET");
  case_21528: ;
  return ((char *)"TIOCMSET");
  case_21526: ;
  return ((char *)"TIOCMBIS");
  case_21527: ;
  return ((char *)"TIOCMBIC");
  case_25951: ;
  return ((char *)"DIGI_SETA");
  case_25952: ;
  return ((char *)"DIGI_SETAW");
  case_25953: ;
  return ((char *)"DIGI_SETAF");
  case_25956: ;
  return ((char *)"DIGI_SETFLOW");
  case_25958: ;
  return ((char *)"DIGI_SETAFLOW");
  case_25955: ;
  return ((char *)"DIGI_GETFLOW");
  case_25957: ;
  return ((char *)"DIGI_GETAFLOW");
  case_25950: ;
  return ((char *)"DIGI_GETA");
  case_25846: ;
  return ((char *)"DIGI_GEDELAY");
  case_25847: ;
  return ((char *)"DIGI_SEDELAY");
  case_neg_2147195541: ;
  return ((char *)"DIGI_GETCUSTOMBAUD");
  case_1074029930: ;
  return ((char *)"DIGI_SETCUSTOMBAUD");
  case_25850: ;
  return ((char *)"TIOCMODG");
  case_25851: ;
  return ((char *)"TIOCMODS");
  case_25856: ;
  return ((char *)"TIOCSDTR");
  case_25857: ;
  return ((char *)"TIOCCDTR");
  switch_default: ;
  return ((char *)"unknown");
  switch_break: ;
  }
}
}
void ldv_assert_linux_alloc_irq__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr ) ;
bool ldv_in_interrupt_context(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  {
  ldv_assert_linux_alloc_irq__wrong_flags(tmp___0 || flags == 32U);
  }
  return;
}
}
void ldv_linux_alloc_irq_check_alloc_nonatomic(void)
{
  bool tmp ;
  {
  {
  tmp = ldv_in_interrupt_context();
  }
  if ((int )tmp) {
    {
    ldv_assert_linux_alloc_irq__nonatomic(0);
    }
  } else {
  }
  return;
}
}
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr ) ;
int ldv_exclusive_spin_is_locked(void) ;
void ldv_linux_alloc_spinlock_check_alloc_flags(gfp_t flags )
{
  int tmp ;
  {
  if (flags != 32U && flags != 0U) {
    {
    tmp = ldv_exclusive_spin_is_locked();
    ldv_assert_linux_alloc_spinlock__wrong_flags(tmp == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_spinlock_check_alloc_nonatomic(void)
{
  int tmp ;
  {
  {
  tmp = ldv_exclusive_spin_is_locked();
  ldv_assert_linux_alloc_spinlock__nonatomic(tmp == 0);
  }
  return;
}
}
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr ) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr ) ;
int ldv_linux_alloc_usb_lock_lock = 1;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_linux_alloc_usb_lock_lock == 2) {
    {
    ldv_assert_linux_alloc_usb_lock__wrong_flags(flags == 16U || flags == 32U);
    }
  } else {
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void)
{
  {
  {
  ldv_assert_linux_alloc_usb_lock__nonatomic(ldv_linux_alloc_usb_lock_lock == 1);
  }
  return;
}
}
void ldv_linux_alloc_usb_lock_usb_lock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 2;
  return;
}
}
int ldv_linux_alloc_usb_lock_usb_trylock_device(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_alloc_usb_lock_usb_lock_device_for_reset(void)
{
  int tmp ;
  {
  if (ldv_linux_alloc_usb_lock_lock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_alloc_usb_lock_lock = 2;
      return (0);
    } else {
      return (-1);
    }
  } else {
    return (-1);
  }
}
}
void ldv_linux_alloc_usb_lock_usb_unlock_device(void)
{
  {
  ldv_linux_alloc_usb_lock_lock = 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return;
}
}
void ldv_linux_usb_dev_atomic_sub(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  return;
}
}
int ldv_linux_usb_dev_atomic_sub_and_test(int i , atomic_t *v )
{
  {
  v->counter = v->counter - i;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
void ldv_linux_usb_dev_atomic_inc(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  return;
}
}
void ldv_linux_usb_dev_atomic_dec(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  return;
}
}
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v )
{
  {
  v->counter = v->counter - 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_inc_and_test(atomic_t *v )
{
  {
  v->counter = v->counter + 1;
  if (v->counter != 0) {
    return (0);
  } else {
  }
  return (1);
}
}
int ldv_linux_usb_dev_atomic_add_return(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter);
}
}
int ldv_linux_usb_dev_atomic_add_negative(int i , atomic_t *v )
{
  {
  v->counter = v->counter + i;
  return (v->counter < 0);
}
}
int ldv_linux_usb_dev_atomic_inc_short(short *v )
{
  {
  *v = (short )((unsigned int )((unsigned short )*v) + 1U);
  return ((int )*v);
}
}
void ldv_assert_linux_arch_io__less_initial_decrement(int expr ) ;
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr ) ;
int ldv_linux_arch_io_iomem = 0;
void *ldv_linux_arch_io_io_mem_remap(size_t size )
{
  void *ptr ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  ptr = tmp;
  }
  if ((unsigned long )ptr != (unsigned long )((void *)0)) {
    ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem + 1;
    return (ptr);
  } else {
  }
  return (ptr);
}
}
void ldv_linux_arch_io_io_mem_unmap(void)
{
  {
  {
  ldv_assert_linux_arch_io__less_initial_decrement(ldv_linux_arch_io_iomem > 0);
  ldv_linux_arch_io_iomem = ldv_linux_arch_io_iomem - 1;
  }
  return;
}
}
void ldv_linux_arch_io_check_final_state(void)
{
  {
  {
  ldv_assert_linux_arch_io__more_initial_at_exit(ldv_linux_arch_io_iomem == 0);
  }
  return;
}
}
void ldv_assert_linux_block_genhd__delete_before_add(int expr ) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__free_before_allocation(int expr ) ;
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_genhd__use_before_allocation(int expr ) ;
static int ldv_linux_block_genhd_disk_state = 0;
void ldv_linux_block_genhd_add_disk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__use_before_allocation(ldv_linux_block_genhd_disk_state == 1);
  ldv_linux_block_genhd_disk_state = 2;
  }
  return;
}
}
void ldv_linux_block_genhd_del_gendisk(void)
{
  {
  {
  ldv_assert_linux_block_genhd__delete_before_add(ldv_linux_block_genhd_disk_state == 2);
  ldv_linux_block_genhd_disk_state = 1;
  }
  return;
}
}
void ldv_linux_block_genhd_put_disk(struct gendisk *disk )
{
  {
  if ((unsigned long )disk != (unsigned long )((struct gendisk *)0)) {
    {
    ldv_assert_linux_block_genhd__free_before_allocation(ldv_linux_block_genhd_disk_state > 0);
    ldv_linux_block_genhd_disk_state = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_block_genhd_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_genhd__more_initial_at_exit(ldv_linux_block_genhd_disk_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_queue__double_allocation(int expr ) ;
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_block_queue__use_before_allocation(int expr ) ;
static int ldv_linux_block_queue_queue_state = 0;
void ldv_linux_block_queue_blk_cleanup_queue(void)
{
  {
  {
  ldv_assert_linux_block_queue__use_before_allocation(ldv_linux_block_queue_queue_state == 1);
  ldv_linux_block_queue_queue_state = 0;
  }
  return;
}
}
void ldv_linux_block_queue_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_queue__more_initial_at_exit(ldv_linux_block_queue_queue_state == 0);
  }
  return;
}
}
void ldv_assert_linux_block_request__double_get(int expr ) ;
void ldv_assert_linux_block_request__double_put(int expr ) ;
void ldv_assert_linux_block_request__get_at_exit(int expr ) ;
long ldv_is_err(void const *ptr ) ;
int ldv_linux_block_request_blk_rq = 0;
void ldv_linux_block_request_put_blk_rq(void)
{
  {
  {
  ldv_assert_linux_block_request__double_put(ldv_linux_block_request_blk_rq == 1);
  ldv_linux_block_request_blk_rq = 0;
  }
  return;
}
}
void ldv_linux_block_request_check_final_state(void)
{
  {
  {
  ldv_assert_linux_block_request__get_at_exit(ldv_linux_block_request_blk_rq == 0);
  }
  return;
}
}
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr ) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr ) ;
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr ) ;
int ldv_undef_int_nonpositive(void) ;
int ldv_linux_drivers_base_class_usb_gadget_class = 0;
void *ldv_linux_drivers_base_class_create_class(void)
{
  void *is_got ;
  long tmp ;
  {
  {
  is_got = ldv_malloc(sizeof(struct class));
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_drivers_base_class_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_drivers_base_class__double_registration(ldv_linux_drivers_base_class_usb_gadget_class == 0);
    ldv_linux_drivers_base_class_usb_gadget_class = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_drivers_base_class_unregister_class(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__double_deregistration(ldv_linux_drivers_base_class_usb_gadget_class == 1);
  ldv_linux_drivers_base_class_usb_gadget_class = 0;
  }
  return;
}
}
void ldv_linux_drivers_base_class_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_drivers_base_class_unregister_class();
  }
  return;
}
}
void ldv_linux_drivers_base_class_check_final_state(void)
{
  {
  {
  ldv_assert_linux_drivers_base_class__registered_at_exit(ldv_linux_drivers_base_class_usb_gadget_class == 0);
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
struct spi_master *ldv_spi_alloc_master(struct device *host , unsigned int size )
{
  struct spi_master *master ;
  void *tmp ;
  {
  {
  tmp = ldv_zalloc((unsigned long )size + 2176UL);
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr ) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr ) ;
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr ) ;
int ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
int ldv_linux_fs_char_dev_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_fs_char_dev_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_fs_char_dev__double_registration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
    ldv_linux_fs_char_dev_usb_gadget_chrdev = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_fs_char_dev_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__double_deregistration(ldv_linux_fs_char_dev_usb_gadget_chrdev == 1);
  ldv_linux_fs_char_dev_usb_gadget_chrdev = 0;
  }
  return;
}
}
void ldv_linux_fs_char_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_char_dev__registered_at_exit(ldv_linux_fs_char_dev_usb_gadget_chrdev == 0);
  }
  return;
}
}
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr ) ;
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr ) ;
int ldv_linux_fs_sysfs_sysfs = 0;
int ldv_linux_fs_sysfs_sysfs_create_group(void)
{
  int res ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int_nonpositive();
  res = tmp;
  }
  if (res == 0) {
    ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs + 1;
    return (0);
  } else {
  }
  return (res);
}
}
void ldv_linux_fs_sysfs_sysfs_remove_group(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__less_initial_decrement(ldv_linux_fs_sysfs_sysfs > 0);
  ldv_linux_fs_sysfs_sysfs = ldv_linux_fs_sysfs_sysfs - 1;
  }
  return;
}
}
void ldv_linux_fs_sysfs_check_final_state(void)
{
  {
  {
  ldv_assert_linux_fs_sysfs__more_initial_at_exit(ldv_linux_fs_sysfs_sysfs == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr ) ;
int ldv_linux_kernel_locking_rwlock_rlock = 1;
int ldv_linux_kernel_locking_rwlock_wlock = 1;
void ldv_linux_kernel_locking_rwlock_read_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(ldv_linux_kernel_locking_rwlock_rlock > 1);
  ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + -1;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_lock(ldv_linux_kernel_locking_rwlock_wlock == 1);
  ldv_linux_kernel_locking_rwlock_wlock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_rwlock_write_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(ldv_linux_kernel_locking_rwlock_wlock != 1);
  ldv_linux_kernel_locking_rwlock_wlock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_rwlock_read_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_rlock = ldv_linux_kernel_locking_rwlock_rlock + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
int ldv_linux_kernel_locking_rwlock_write_trylock(void)
{
  int tmp ;
  {
  if (ldv_linux_kernel_locking_rwlock_wlock == 1) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      ldv_linux_kernel_locking_rwlock_wlock = 2;
      return (1);
    } else {
      return (0);
    }
  } else {
    return (0);
  }
}
}
void ldv_linux_kernel_locking_rwlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(ldv_linux_kernel_locking_rwlock_rlock == 1);
  ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(ldv_linux_kernel_locking_rwlock_wlock == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr ) ;
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr ) ;
int ldv_linux_kernel_module_module_refcounter = 1;
void ldv_linux_kernel_module_module_get(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
  } else {
  }
  return;
}
}
int ldv_linux_kernel_module_try_module_get(struct module *module )
{
  int tmp ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    tmp = ldv_undef_int();
    }
    if (tmp == 1) {
      ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter + 1;
      return (1);
    } else {
      return (0);
    }
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_module_module_put(struct module *module )
{
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    {
    ldv_assert_linux_kernel_module__less_initial_decrement(ldv_linux_kernel_module_module_refcounter > 1);
    ldv_linux_kernel_module_module_refcounter = ldv_linux_kernel_module_module_refcounter - 1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_module_module_put_and_exit(void)
{
  {
  {
  ldv_linux_kernel_module_module_put((struct module *)1);
  }
  LDV_LINUX_KERNEL_MODULE_STOP: ;
  goto LDV_LINUX_KERNEL_MODULE_STOP;
}
}
unsigned int ldv_linux_kernel_module_module_refcount(void)
{
  {
  return ((unsigned int )(ldv_linux_kernel_module_module_refcounter + -1));
}
}
void ldv_linux_kernel_module_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_module__more_initial_at_exit(ldv_linux_kernel_module_module_refcounter == 1);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_srcu_srcu_nested = 0;
void ldv_linux_kernel_rcu_srcu_srcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_srcu_srcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__more_unlocks(ldv_linux_kernel_rcu_srcu_srcu_nested > 0);
  ldv_linux_kernel_rcu_srcu_srcu_nested = ldv_linux_kernel_rcu_srcu_srcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_srcu_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(ldv_linux_kernel_rcu_srcu_srcu_nested == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = 0;
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_lock_bh(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_rcu_read_unlock_bh(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh > 0);
  ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh = ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(ldv_linux_kernel_rcu_update_lock_bh_rcu_nested_bh == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = 0;
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_lock_sched(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_rcu_read_unlock_sched(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched > 0);
  ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched = ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(ldv_linux_kernel_rcu_update_lock_sched_rcu_nested_sched == 0);
  }
  return;
}
}
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr ) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr ) ;
int ldv_linux_kernel_rcu_update_lock_rcu_nested = 0;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void)
{
  {
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested + 1;
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(ldv_linux_kernel_rcu_update_lock_rcu_nested > 0);
  ldv_linux_kernel_rcu_update_lock_rcu_nested = ldv_linux_kernel_rcu_update_lock_rcu_nested - 1;
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
}
}
void ldv_linux_kernel_rcu_update_lock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(ldv_linux_kernel_rcu_update_lock_rcu_nested == 0);
  }
  return;
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
static bool __ldv_in_interrupt_context = 0;
void ldv_switch_to_interrupt_context(void)
{
  {
  __ldv_in_interrupt_context = 1;
  return;
}
}
void ldv_switch_to_process_context(void)
{
  {
  __ldv_in_interrupt_context = 0;
  return;
}
}
bool ldv_in_interrupt_context(void)
{
  {
  return (__ldv_in_interrupt_context);
}
}
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr ) ;
extern int nr_cpu_ids ;
unsigned long ldv_undef_ulong(void) ;
unsigned long ldv_linux_lib_find_bit_find_next_bit(unsigned long size , unsigned long offset )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assert_linux_lib_find_bit__offset_out_of_range(offset <= size);
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
unsigned long ldv_linux_lib_find_bit_find_first_bit(unsigned long size )
{
  unsigned long nondet ;
  unsigned long tmp ;
  {
  {
  tmp = ldv_undef_ulong();
  nondet = tmp;
  ldv_assume(nondet <= size);
  ldv_assume(1);
  }
  return (nondet);
}
}
void ldv_linux_lib_find_bit_initialize(void)
{
  {
  {
  ldv_assume(nr_cpu_ids > 0);
  }
  return;
}
}
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr ) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr ) ;
unsigned short ldv_linux_mmc_sdio_func_sdio_element = 0U;
void ldv_linux_mmc_sdio_func_check_context(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__wrong_params((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_claim_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__double_claim((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  ldv_linux_mmc_sdio_func_sdio_element = (unsigned short )((func->card)->host)->index;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_sdio_release_host(struct sdio_func *func )
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__release_without_claim((int )ldv_linux_mmc_sdio_func_sdio_element == ((func->card)->host)->index);
  ldv_linux_mmc_sdio_func_sdio_element = 0U;
  }
  return;
}
}
void ldv_linux_mmc_sdio_func_check_final_state(void)
{
  {
  {
  ldv_assert_linux_mmc_sdio_func__unreleased_at_exit((unsigned int )ldv_linux_mmc_sdio_func_sdio_element == 0U);
  }
  return;
}
}
void ldv_assert_linux_net_register__wrong_return_value(int expr ) ;
int ldv_pre_register_netdev(void) ;
int ldv_linux_net_register_probe_state = 0;
int ldv_pre_register_netdev(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_net_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_register_reset_error_counter(void)
{
  {
  ldv_linux_net_register_probe_state = 0;
  return;
}
}
void ldv_linux_net_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_net_register_probe_state == 1) {
    {
    ldv_assert_linux_net_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_net_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_net_rtnetlink__double_lock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr ) ;
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr ) ;
int rtnllocknumber = 0;
void ldv_linux_net_rtnetlink_past_rtnl_unlock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_unlock(rtnllocknumber == 1);
  rtnllocknumber = 0;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_past_rtnl_lock(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  rtnllocknumber = 1;
  }
  return;
}
}
void ldv_linux_net_rtnetlink_before_ieee80211_unregister_hw(void)
{
  {
  {
  ldv_linux_net_rtnetlink_past_rtnl_lock();
  ldv_linux_net_rtnetlink_past_rtnl_unlock();
  }
  return;
}
}
int ldv_linux_net_rtnetlink_rtnl_is_locked(void)
{
  int tmp ;
  {
  if (rtnllocknumber != 0) {
    return (rtnllocknumber);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_net_rtnetlink_rtnl_trylock(void)
{
  int tmp ;
  {
  {
  ldv_assert_linux_net_rtnetlink__double_lock(rtnllocknumber == 0);
  tmp = ldv_linux_net_rtnetlink_rtnl_is_locked();
  }
  if (tmp == 0) {
    rtnllocknumber = 1;
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_linux_net_rtnetlink_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_rtnetlink__lock_on_exit(rtnllocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr ) ;
void ldv_assert_linux_net_sock__double_release(int expr ) ;
int locksocknumber = 0;
void ldv_linux_net_sock_past_lock_sock_nested(void)
{
  {
  locksocknumber = locksocknumber + 1;
  return;
}
}
bool ldv_linux_net_sock_lock_sock_fast(void)
{
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    locksocknumber = locksocknumber + 1;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_net_sock_unlock_sock_fast(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_before_release_sock(void)
{
  {
  {
  ldv_assert_linux_net_sock__double_release(locksocknumber > 0);
  locksocknumber = locksocknumber - 1;
  }
  return;
}
}
void ldv_linux_net_sock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(locksocknumber == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_coherent_coherent_state = 0;
void *ldv_linux_usb_coherent_usb_alloc_coherent(size_t size )
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(size);
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return (arbitrary_memory);
  } else {
  }
  ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + 1;
  return (arbitrary_memory);
}
}
void ldv_linux_usb_coherent_usb_free_coherent(void *addr )
{
  {
  if ((unsigned long )addr != (unsigned long )((void *)0)) {
    {
    ldv_assert_linux_usb_coherent__less_initial_decrement(ldv_linux_usb_coherent_coherent_state > 0);
    ldv_linux_usb_coherent_coherent_state = ldv_linux_usb_coherent_coherent_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_coherent_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_coherent__more_initial_at_exit(ldv_linux_usb_coherent_coherent_state == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr ) ;
void ldv_assert_linux_usb_dev__probe_failed(int expr ) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr ) ;
ldv_map LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS ;
struct usb_device *ldv_linux_usb_dev_usb_get_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0 ? LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + 1 : 1;
  } else {
  }
  return (dev);
}
}
void ldv_linux_usb_dev_usb_put_dev(struct usb_device *dev )
{
  {
  if ((unsigned long )dev != (unsigned long )((struct usb_device *)0)) {
    {
    ldv_assert_linux_usb_dev__unincremented_counter_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS != 0);
    ldv_assert_linux_usb_dev__less_initial_decrement(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 0);
    }
    if (LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS > 1) {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS + -1;
    } else {
      LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_check_return_value_probe(int retval )
{
  {
  if (retval != 0) {
    {
    ldv_assert_linux_usb_dev__probe_failed(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_dev_initialize(void)
{
  {
  LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS = 0;
  return;
}
}
void ldv_linux_usb_dev_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_dev__more_initial_at_exit(LDV_LINUX_USB_DEV_USB_DEV_REF_COUNTS == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr ) ;
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr ) ;
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr ) ;
int ldv_linux_usb_gadget_usb_gadget = 0;
void *ldv_linux_usb_gadget_create_class(void *is_got )
{
  long tmp ;
  {
  {
  ldv_assume((int )((long )is_got));
  tmp = ldv_is_err((void const *)is_got);
  }
  if (tmp == 0L) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_got);
}
}
int ldv_linux_usb_gadget_register_class(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_class(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_linux_usb_gadget_destroy_class(struct class *cls )
{
  long tmp ;
  {
  if ((unsigned long )cls == (unsigned long )((struct class *)0)) {
    return;
  } else {
    {
    tmp = ldv_is_err((void const *)cls);
    }
    if (tmp != 0L) {
      return;
    } else {
    }
  }
  {
  ldv_linux_usb_gadget_unregister_class();
  }
  return;
}
}
int ldv_linux_usb_gadget_register_chrdev(int major )
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
    if (major == 0) {
      {
      is_reg = ldv_undef_int();
      ldv_assume(is_reg > 0);
      }
    } else {
    }
  } else {
  }
  return (is_reg);
}
}
int ldv_linux_usb_gadget_register_chrdev_region(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_chrdev_region(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
int ldv_linux_usb_gadget_register_usb_gadget(void)
{
  int is_reg ;
  {
  {
  is_reg = ldv_undef_int_nonpositive();
  }
  if (is_reg == 0) {
    {
    ldv_assert_linux_usb_gadget__double_usb_gadget_registration(ldv_linux_usb_gadget_usb_gadget == 0);
    ldv_linux_usb_gadget_usb_gadget = 1;
    }
  } else {
  }
  return (is_reg);
}
}
void ldv_linux_usb_gadget_unregister_usb_gadget(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(ldv_linux_usb_gadget_usb_gadget == 1);
  ldv_linux_usb_gadget_usb_gadget = 0;
  }
  return;
}
}
void ldv_linux_usb_gadget_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(ldv_linux_usb_gadget_usb_gadget == 0);
  }
  return;
}
}
void ldv_assert_linux_usb_register__wrong_return_value(int expr ) ;
int ldv_pre_usb_register_driver(void) ;
int ldv_linux_usb_register_probe_state = 0;
int ldv_pre_usb_register_driver(void)
{
  int nondet ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  nondet = tmp;
  }
  if (nondet < 0) {
    ldv_linux_usb_register_probe_state = 1;
    return (nondet);
  } else {
    return (0);
  }
}
}
void ldv_linux_usb_register_reset_error_counter(void)
{
  {
  ldv_linux_usb_register_probe_state = 0;
  return;
}
}
void ldv_linux_usb_register_check_return_value_probe(int retval )
{
  {
  if (ldv_linux_usb_register_probe_state == 1) {
    {
    ldv_assert_linux_usb_register__wrong_return_value(retval != 0);
    }
  } else {
  }
  {
  ldv_linux_usb_register_reset_error_counter();
  }
  return;
}
}
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr ) ;
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr ) ;
int ldv_linux_usb_urb_urb_state = 0;
struct urb *ldv_linux_usb_urb_usb_alloc_urb(void)
{
  void *arbitrary_memory ;
  void *tmp ;
  {
  {
  tmp = ldv_malloc(sizeof(struct urb));
  arbitrary_memory = tmp;
  }
  if ((unsigned long )arbitrary_memory == (unsigned long )((void *)0)) {
    return ((struct urb *)arbitrary_memory);
  } else {
  }
  ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + 1;
  return ((struct urb *)arbitrary_memory);
}
}
void ldv_linux_usb_urb_usb_free_urb(struct urb *urb )
{
  {
  if ((unsigned long )urb != (unsigned long )((struct urb *)0)) {
    {
    ldv_assert_linux_usb_urb__less_initial_decrement(ldv_linux_usb_urb_urb_state > 0);
    ldv_linux_usb_urb_urb_state = ldv_linux_usb_urb_urb_state + -1;
    }
  } else {
  }
  return;
}
}
void ldv_linux_usb_urb_check_final_state(void)
{
  {
  {
  ldv_assert_linux_usb_urb__more_initial_at_exit(ldv_linux_usb_urb_urb_state == 0);
  }
  return;
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
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void free(void * ) ;
extern void *memset(void * , int , size_t ) ;
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
int ldv_undef_int_negative(void) ;
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr ) ;
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode ;
void ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_i_mutex_of_inode(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_i_mutex_of_inode(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_i_mutex_of_inode(atomic_t *cnt ,
                                                                              struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_i_mutex_of_inode(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_i_mutex_of_inode(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock ;
void ldv_linux_kernel_locking_mutex_mutex_lock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_lock(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_lock(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_lock(atomic_t *cnt ,
                                                                  struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_lock(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_lock(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  }
  return;
}
}
ldv_set LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device ;
void ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_mutex_mutex_lock_interruptible_or_killable_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  if ((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device) {
    return (1);
  } else {
    {
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
int ldv_linux_kernel_locking_mutex_mutex_trylock_mutex_of_device(struct mutex *lock )
{
  int tmp ;
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  tmp = ldv_linux_kernel_locking_mutex_mutex_is_locked_mutex_of_device(lock);
  }
  if (tmp != 0) {
    return (0);
  } else {
    LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 1;
    return (1);
  }
}
}
int ldv_linux_kernel_locking_mutex_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt ,
                                                                             struct mutex *lock )
{
  {
  cnt->counter = cnt->counter - 1;
  if (cnt->counter != 0) {
    return (0);
  } else {
    {
    ldv_linux_kernel_locking_mutex_mutex_lock_mutex_of_device(lock);
    }
    return (1);
  }
}
}
void ldv_linux_kernel_locking_mutex_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock((int )LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  }
  return;
}
}
void ldv_linux_kernel_locking_mutex_initialize(void)
{
  {
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock = 0;
  LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device = 0;
  return;
}
}
void ldv_linux_kernel_locking_mutex_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_i_mutex_of_inode);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_lock);
  ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(! LDV_LINUX_KERNEL_LOCKING_MUTEX_MUTEXES_mutex_of_device);
  }
  return;
}
}
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(int expr ) ;
void ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(int expr ) ;
static int ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_alloc_lock_of_task_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_alloc_lock_of_task_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_alloc_lock_of_task_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_alloc_lock_of_task_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_alloc_lock_of_task_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_bd_intr_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_bd_intr_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 2);
  ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_bd_intr_lock_of_dgnc_board(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_bd_intr_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_bd_intr_lock_of_dgnc_board(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_bd_intr_lock_of_dgnc_board(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_bd_intr_lock_of_dgnc_board();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_bd_intr_lock_of_dgnc_board(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_bd_intr_lock_of_dgnc_board(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_bd_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_bd_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 2);
  ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_bd_lock_of_dgnc_board(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_bd_lock_of_dgnc_board(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_bd_lock_of_dgnc_board(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_bd_lock_of_dgnc_board(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_bd_lock_of_dgnc_board();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_bd_lock_of_dgnc_board(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_bd_lock_of_dgnc_board(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ch_lock_of_channel_t(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ch_lock_of_channel_t(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 2);
  ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ch_lock_of_channel_t(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ch_lock_of_channel_t(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ch_lock_of_channel_t(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ch_lock_of_channel_t(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ch_lock_of_channel_t();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ch_lock_of_channel_t(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ch_lock_of_channel_t(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_global_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_global_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_dgnc_global_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_dgnc_global_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_dgnc_global_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_dgnc_global_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_dgnc_global_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_dgnc_global_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_dgnc_global_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_dgnc_poll_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_dgnc_poll_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_dgnc_poll_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_dgnc_poll_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_dgnc_poll_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_dgnc_poll_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_dgnc_poll_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_dgnc_poll_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_dgnc_poll_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2);
  ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_i_lock_of_inode(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_i_lock_of_inode(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_i_lock_of_inode();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_i_lock_of_inode(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_i_lock_of_inode(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_lock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_lock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_lock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_lock_of_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_lock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2);
  ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_node_size_lock_of_pglist_data(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_node_size_lock_of_pglist_data(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_node_size_lock_of_pglist_data();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_node_size_lock_of_pglist_data(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_node_size_lock_of_pglist_data(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 2);
  ldv_linux_kernel_locking_spinlock_spin_ptl = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_ptl(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_ptl(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_ptl();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_ptl(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_ptl(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_ptl = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2);
  ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_siglock_of_sighand_struct(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_siglock_of_sighand_struct(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_siglock_of_sighand_struct();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_siglock_of_sighand_struct(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_siglock_of_sighand_struct(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_linux_kernel_locking_spinlock_check_final_state(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bd_intr_lock_of_dgnc_board == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_bd_lock_of_dgnc_board == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ch_lock_of_channel_t == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dgnc_global_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_dgnc_poll_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_ptl == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  return (0);
}
}
void ldv_assert_linux_kernel_sched_completion__double_init(int expr ) ;
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr ) ;
static int ldv_linux_kernel_sched_completion_completion = 0;
void ldv_linux_kernel_sched_completion_init_completion(void)
{
  {
  ldv_linux_kernel_sched_completion_completion = 1;
  return;
}
}
void ldv_linux_kernel_sched_completion_init_completion_macro(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__double_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 1;
  }
  return;
}
}
void ldv_linux_kernel_sched_completion_wait_for_completion(void)
{
  {
  {
  ldv_assert_linux_kernel_sched_completion__wait_without_init(ldv_linux_kernel_sched_completion_completion != 0);
  ldv_linux_kernel_sched_completion_completion = 2;
  }
  return;
}
}
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr ) ;
void ldv_assert_linux_lib_idr__double_init(int expr ) ;
void ldv_assert_linux_lib_idr__more_at_exit(int expr ) ;
void ldv_assert_linux_lib_idr__not_initialized(int expr ) ;
static int ldv_linux_lib_idr_idr = 0;
void ldv_linux_lib_idr_idr_init(void)
{
  {
  {
  ldv_assert_linux_lib_idr__double_init(ldv_linux_lib_idr_idr == 0);
  ldv_linux_lib_idr_idr = 1;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_alloc(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_find(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_remove(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 2;
  }
  return;
}
}
void ldv_linux_lib_idr_idr_destroy(void)
{
  {
  {
  ldv_assert_linux_lib_idr__not_initialized(ldv_linux_lib_idr_idr != 0);
  ldv_assert_linux_lib_idr__destroyed_before_usage(ldv_linux_lib_idr_idr != 3);
  ldv_linux_lib_idr_idr = 3;
  }
  return;
}
}
void ldv_linux_lib_idr_check_final_state(void)
{
  {
  {
  ldv_assert_linux_lib_idr__more_at_exit(ldv_linux_lib_idr_idr == 0 || ldv_linux_lib_idr_idr == 3);
  }
  return;
}
}
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_rtnetlink__double_lock(int expr )
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
void ldv_assert_linux_net_rtnetlink__lock_on_exit(int expr )
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
void ldv_assert_linux_net_rtnetlink__double_unlock(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_rwlock__read_lock_on_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__more_read_unlocks(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__read_lock_at_exit(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_lock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__double_write_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_rwlock__write_lock_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_idr__double_init(int expr )
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
void ldv_assert_linux_lib_idr__not_initialized(int expr )
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
void ldv_assert_linux_lib_idr__destroyed_before_usage(int expr )
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
void ldv_assert_linux_lib_idr__more_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_sched_completion__double_init(int expr )
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
void ldv_assert_linux_kernel_sched_completion__wait_without_init(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_char_dev__double_registration(int expr )
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
void ldv_assert_linux_fs_char_dev__double_deregistration(int expr )
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
void ldv_assert_linux_fs_char_dev__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_srcu__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_srcu__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_module__less_initial_decrement(int expr )
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
void ldv_assert_linux_kernel_module__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_spinlock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_spinlock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_lib_find_bit__offset_out_of_range(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_mmc_sdio_func__wrong_params(int expr )
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
void ldv_assert_linux_mmc_sdio_func__double_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__release_without_claim(int expr )
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
void ldv_assert_linux_mmc_sdio_func__unreleased_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_coherent__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_coherent__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_net_sock__all_locked_sockets_must_be_released(int expr )
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
void ldv_assert_linux_net_sock__double_release(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_bh__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_bh__locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_dev__unincremented_counter_decrement(int expr )
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
void ldv_assert_linux_usb_dev__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_dev__more_initial_at_exit(int expr )
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
void ldv_assert_linux_usb_dev__probe_failed(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_lock_try(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_double_unlock(int expr )
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
void ldv_assert_linux_kernel_locking_mutex__one_thread_locked_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_gadget__class_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__class_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_registration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__chrdev_deregistration_with_usb_gadget(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_registration(int expr )
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
void ldv_assert_linux_usb_gadget__double_usb_gadget_deregistration(int expr )
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
void ldv_assert_linux_usb_gadget__usb_gadget_registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_usb_lock__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_usb_lock__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_request__double_get(int expr )
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
void ldv_assert_linux_block_request__double_put(int expr )
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
void ldv_assert_linux_block_request__get_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_alloc_irq__wrong_flags(int expr )
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
void ldv_assert_linux_alloc_irq__nonatomic(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_drivers_base_class__double_registration(int expr )
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
void ldv_assert_linux_drivers_base_class__double_deregistration(int expr )
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
void ldv_assert_linux_drivers_base_class__registered_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_queue__double_allocation(int expr )
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
void ldv_assert_linux_block_queue__use_before_allocation(int expr )
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
void ldv_assert_linux_block_queue__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_block_genhd__double_allocation(int expr )
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
void ldv_assert_linux_block_genhd__use_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__delete_before_add(int expr )
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
void ldv_assert_linux_block_genhd__free_before_allocation(int expr )
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
void ldv_assert_linux_block_genhd__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_arch_io__less_initial_decrement(int expr )
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
void ldv_assert_linux_arch_io__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_register__wrong_return_value(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_fs_sysfs__less_initial_decrement(int expr )
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
void ldv_assert_linux_fs_sysfs__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_usb_urb__less_initial_decrement(int expr )
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
void ldv_assert_linux_usb_urb__more_initial_at_exit(int expr )
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
extern void __VERIFIER_error(void) ;
void ldv_assert_linux_kernel_rcu_update_lock_sched__more_unlocks(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_read_section(int expr )
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
void ldv_assert_linux_kernel_rcu_update_lock_sched__locked_at_exit(int expr )
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
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __ldv_linux_kernel_locking_spinlock_spin_lock(spinlock_t *arg0) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __register_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3, const struct file_operations *arg4) {
  return __VERIFIER_nondet_int();
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
void __unregister_chrdev(unsigned int arg0, unsigned int arg1, unsigned int arg2, const char *arg3) {
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
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *device_create(struct class *arg0, struct device *arg1, dev_t arg2, void *arg3, const char *arg4, ...) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_destroy(struct class *arg0, dev_t arg1) {
  return;
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int down_interruptible(struct semaphore *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int driver_create_file(struct device_driver *arg0, const struct driver_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void driver_remove_file(struct device_driver *arg0, const struct driver_attribute *arg1) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
void ldv_pre_probe() {
  return;
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
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
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_buffer_request_room(struct tty_port *arg0, size_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_check_change(struct tty_struct *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
dev_t tty_devnum(struct tty_struct *arg0) {
  return __VERIFIER_nondet_uint();
}
void tty_flip_buffer_push(struct tty_port *arg0) {
  return;
}
void tty_hangup(struct tty_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_hung_up_p(struct file *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_fixed_flag(struct tty_port *arg0, const unsigned char *arg1, char arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int tty_insert_flip_string_flags(struct tty_port *arg0, const unsigned char *arg1, const char *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
void tty_ldisc_deref(struct tty_ldisc *arg0) {
  return;
}
void tty_ldisc_flush(struct tty_struct *arg0) {
  return;
}
struct tty_ldisc *tty_ldisc_ref(struct tty_struct *arg0) {
  return ldv_malloc(sizeof(struct tty_ldisc));
}
struct device *tty_register_device(struct tty_driver *arg0, unsigned int arg1, struct device *arg2) {
  return ldv_malloc(sizeof(struct device));
}
int __VERIFIER_nondet_int(void);
int tty_register_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void tty_set_operations(struct tty_driver *arg0, const struct tty_operations *arg1) {
  return;
}
void tty_unregister_device(struct tty_driver *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int tty_unregister_driver(struct tty_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void up(struct semaphore *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
