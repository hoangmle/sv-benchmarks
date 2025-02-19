typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
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
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
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
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
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
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
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
typedef void (*ctor_fn_t)(void);
struct net_device;
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
struct __anonstruct_mm_segment_t_25 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_25 mm_segment_t;
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
struct ldv_thread;
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
struct jump_entry;
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
struct notifier_block;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
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
struct inode;
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct ctl_table;
struct __anonstruct_mm_context_t_115 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
   atomic_t perf_rdpmc_allowed ;
};
typedef struct __anonstruct_mm_context_t_115 mm_context_t;
struct bio_vec;
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
    DEV_PM_QOS_RESUME_LATENCY = 1,
    DEV_PM_QOS_LATENCY_TOLERANCE = 2,
    DEV_PM_QOS_FLAGS = 3
} ;
union __anonunion_data_142 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_142 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2,
    PM_QOS_SUM = 3
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   s32 no_constraint_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints resume_latency ;
   struct pm_qos_constraints latency_tolerance ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *resume_latency_req ;
   struct dev_pm_qos_request *latency_tolerance_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_143 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_143 __annonCompField32 ;
   unsigned long nr_segs ;
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
struct __anonstruct____missing_field_name_149 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_150 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_148 {
   struct __anonstruct____missing_field_name_149 __annonCompField35 ;
   struct __anonstruct____missing_field_name_150 __annonCompField36 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_148 __annonCompField37 ;
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
union __anonunion____missing_field_name_151 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_153 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_157 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_156 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_157 __annonCompField40 ;
   int units ;
};
struct __anonstruct____missing_field_name_155 {
   union __anonunion____missing_field_name_156 __annonCompField41 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_154 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_155 __annonCompField42 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_152 {
   union __anonunion____missing_field_name_153 __annonCompField39 ;
   union __anonunion____missing_field_name_154 __annonCompField43 ;
};
struct __anonstruct____missing_field_name_159 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_160 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_158 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_159 __annonCompField45 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_160 __annonCompField46 ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion____missing_field_name_161 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_151 __annonCompField38 ;
   struct __anonstruct____missing_field_name_152 __annonCompField44 ;
   union __anonunion____missing_field_name_158 __annonCompField47 ;
   union __anonunion____missing_field_name_161 __annonCompField48 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_162 {
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
   struct __anonstruct_shared_162 shared ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
};
struct file_ra_state;
struct user_struct;
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
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
typedef unsigned short __kernel_sa_family_t;
struct pid;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct __anonstruct_sync_serial_settings_165 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_165 sync_serial_settings;
struct __anonstruct_te1_settings_166 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_166 te1_settings;
struct __anonstruct_raw_hdlc_proto_167 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_167 raw_hdlc_proto;
struct __anonstruct_fr_proto_168 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_168 fr_proto;
struct __anonstruct_fr_proto_pvc_169 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_169 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_170 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_170 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_171 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_171 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_172 {
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
   union __anonunion_ifs_ifsu_172 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_173 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_174 {
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
   union __anonunion_ifr_ifrn_173 ifr_ifrn ;
   union __anonunion_ifr_ifru_174 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_177 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_176 {
   struct __anonstruct____missing_field_name_177 __annonCompField49 ;
};
struct lockref {
   union __anonunion____missing_field_name_176 __annonCompField50 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_179 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_178 {
   struct __anonstruct____missing_field_name_179 __annonCompField51 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_178 __annonCompField52 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_180 {
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
   union __anonunion_d_u_180 d_u ;
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
struct __anonstruct____missing_field_name_182 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_181 {
   struct __anonstruct____missing_field_name_182 __annonCompField53 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_181 __annonCompField54 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct backing_dev_info;
struct export_operations;
struct nameidata;
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
struct __anonstruct_kprojid_t_185 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_185 kprojid_t;
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
union __anonunion____missing_field_name_186 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_186 __annonCompField56 ;
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
union __anonunion____missing_field_name_189 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_190 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
union __anonunion____missing_field_name_191 {
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
   union __anonunion____missing_field_name_189 __annonCompField57 ;
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
   union __anonunion____missing_field_name_190 __annonCompField58 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_191 __annonCompField59 ;
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
union __anonunion_f_u_192 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_192 f_u ;
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
struct net;
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
struct __anonstruct_afs_194 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_193 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_194 afs ;
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
   union __anonunion_fl_u_193 fl_u ;
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
typedef unsigned long cputime_t;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_195 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_195 sigset_t;
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
struct __anonstruct__kill_197 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_198 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_199 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_200 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_202 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_201 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_202 _addr_bnd ;
};
struct __anonstruct__sigpoll_203 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_204 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_196 {
   int _pad[28U] ;
   struct __anonstruct__kill_197 _kill ;
   struct __anonstruct__timer_198 _timer ;
   struct __anonstruct__rt_199 _rt ;
   struct __anonstruct__sigchld_200 _sigchld ;
   struct __anonstruct__sigfault_201 _sigfault ;
   struct __anonstruct__sigpoll_203 _sigpoll ;
   struct __anonstruct__sigsys_204 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_196 _sifields ;
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
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
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
struct __anonstruct____missing_field_name_208 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_207 {
   struct __anonstruct____missing_field_name_208 __annonCompField60 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_207 __annonCompField61 ;
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
union __anonunion____missing_field_name_209 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_210 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_212 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_211 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_212 __annonCompField64 ;
};
union __anonunion_type_data_213 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_215 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_214 {
   union __anonunion_payload_215 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_209 __annonCompField62 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_210 __annonCompField63 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_211 __annonCompField65 ;
   union __anonunion_type_data_213 type_data ;
   union __anonunion____missing_field_name_214 __annonCompField66 ;
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
struct uts_namespace;
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
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
enum ldv_22845 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22845 socket_state;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
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
   int (*set_peek_off)(struct sock * , int ) ;
};
struct net_proto_family {
   int family ;
   int (*create)(struct net * , struct socket * , int , int ) ;
   struct module *owner ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
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
typedef u64 netdev_features_t;
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_237 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_236 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_237 __annonCompField71 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_236 __annonCompField72 ;
};
union __anonunion____missing_field_name_240 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_239 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_240 __annonCompField73 ;
};
union __anonunion____missing_field_name_238 {
   struct __anonstruct____missing_field_name_239 __annonCompField74 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_242 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_241 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_242 __annonCompField76 ;
};
union __anonunion____missing_field_name_243 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_244 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_245 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_238 __annonCompField75 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   void (*destructor)(struct sk_buff * ) ;
   struct sec_path *sp ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   __u16 queue_mapping ;
   unsigned char cloned : 1 ;
   unsigned char nohdr : 1 ;
   unsigned char fclone : 2 ;
   unsigned char peeked : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char xmit_more : 1 ;
   __u32 headers_start[0U] ;
   __u8 __pkt_type_offset[0U] ;
   unsigned char pkt_type : 3 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ignore_df : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char nf_trace : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char sw_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   unsigned char csum_level : 2 ;
   unsigned char csum_bad : 1 ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char inner_protocol_type : 1 ;
   unsigned char remcsum_offload : 1 ;
   __u16 tc_index ;
   __u16 tc_verd ;
   union __anonunion____missing_field_name_241 __annonCompField77 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_243 __annonCompField78 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_244 __annonCompField79 ;
   union __anonunion____missing_field_name_245 __annonCompField80 ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __be16 protocol ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   __u32 headers_end[0U] ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
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
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char erom_version[32U] ;
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
struct ethtool_tunable {
   __u32 cmd ;
   __u32 id ;
   __u32 type_id ;
   __u32 len ;
   void *data[0U] ;
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
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
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
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
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
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
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
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_key_size)(struct net_device * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh)(struct net_device * , u32 * , u8 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * , u8 const ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*get_tunable)(struct net_device * , struct ethtool_tunable const * , void * ) ;
   int (*set_tunable)(struct net_device * , struct ethtool_tunable const * , void const * ) ;
};
union __anonunion_in6_u_248 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_248 in6_u ;
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
   u64 mibs[36U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[28U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[6U] ;
};
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[113U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
struct proc_dir_entry;
struct netns_mib {
   struct tcp_mib *tcp_statistics ;
   struct ipstats_mib *ip_statistics ;
   struct linux_mib *net_statistics ;
   struct udp_mib *udp_statistics ;
   struct udp_mib *udplite_statistics ;
   struct icmp_mib *icmp_statistics ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6 ;
   struct udp_mib *udplite_stats_in6 ;
   struct ipstats_mib *ipv6_statistics ;
   struct icmpv6_mib *icmpv6_statistics ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   struct percpu_counter mem ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
};
struct ping_group_range {
   seqlock_t lock ;
   kgid_t range[2U] ;
};
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *xfrm4_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct sock **tcp_sk ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   struct local_ports ip_local_ports ;
   int sysctl_tcp_ecn ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   struct ping_group_range ping_group_range ;
   atomic_t dev_addr_genid ;
   unsigned long *sysctl_local_reserved_ports ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
   atomic_t rt_genid ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *xfrm6_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int flowlabel_consistency ;
   int auto_flowlabels ;
   int icmpv6_time ;
   int anycast_src_echo_reply ;
   int fwmark_reflect ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
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
   atomic_t dev_addr_genid ;
   atomic_t fib6_sernum ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct netns_sysctl_lowpan {
   struct ctl_table_header *frags_hdr ;
};
struct netns_ieee802154_lowpan {
   struct netns_sysctl_lowpan sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct nlattr;
struct nf_logger;
struct netns_nf {
   struct proc_dir_entry *proc_netfilter ;
   struct nf_logger const *nf_loggers[13U] ;
   struct ctl_table_header *nf_log_dir_header ;
};
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   bool notrack_deprecated_warning ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ct_pcpu {
   spinlock_t lock ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct hlist_nulls_head tmpl ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   struct delayed_work ecache_dwork ;
   bool ecache_dwork_pending ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   int sysctl_events ;
   int sysctl_acct ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int htable_size ;
   seqcount_t generation ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct ct_pcpu *pcpu_lists ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   struct nf_ip_net nf_ct_proto ;
   unsigned int labels_used ;
   u8 label_words ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
};
struct nft_af_info;
struct netns_nftables {
   struct list_head af_info ;
   struct list_head commit_list ;
   struct nft_af_info *ipv4 ;
   struct nft_af_info *ipv6 ;
   struct nft_af_info *inet ;
   struct nft_af_info *arp ;
   struct nft_af_info *bridge ;
   unsigned int base_seq ;
   u8 gencursor ;
};
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct flow_cache_percpu {
   struct hlist_head *hash_table ;
   int hash_count ;
   u32 hash_rnd ;
   int hash_rnd_recalc ;
   struct tasklet_struct flush_tasklet ;
};
struct flow_cache {
   u32 hash_shift ;
   struct flow_cache_percpu *percpu ;
   struct notifier_block hotcpu_notifier ;
   int low_watermark ;
   int high_watermark ;
   struct timer_list rnd_timer ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
   u8 dbits4 ;
   u8 sbits4 ;
   u8 dbits6 ;
   u8 sbits6 ;
};
struct xfrm_policy_hthresh {
   struct work_struct work ;
   seqlock_t lock ;
   u8 lbits4 ;
   u8 rbits4 ;
   u8 lbits6 ;
   u8 rbits6 ;
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
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[3U] ;
   struct xfrm_policy_hash policy_bydst[3U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct xfrm_policy_hthresh policy_hthresh ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
   spinlock_t xfrm_state_lock ;
   rwlock_t xfrm_policy_lock ;
   struct mutex xfrm_cfg_mutex ;
   struct flow_cache flow_cache_global ;
   atomic_t flow_cache_genid ;
   struct list_head flow_cache_gc_list ;
   spinlock_t flow_cache_gc_lock ;
   struct work_struct flow_cache_gc_work ;
   struct work_struct flow_cache_flush_work ;
   struct mutex flow_flush_sem ;
};
struct proc_ns_operations;
struct ns_common {
   atomic_long_t stashed ;
   struct proc_ns_operations const *ops ;
   unsigned int inum ;
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
   struct user_namespace *user_ns ;
   struct idr netns_ids ;
   struct ns_common ns ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   unsigned int dev_unreg_count ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_ieee802154_lowpan ieee802154_lowpan ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_nf nf ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nftables nft ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2
} ;
struct fwnode_handle {
   enum fwnode_type type ;
};
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
   struct bin_attribute attr ;
};
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct fwnode_handle fwnode ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct kobject kobj ;
   unsigned long _flags ;
   void *data ;
};
enum ldv_27536 {
    PHY_INTERFACE_MODE_NA = 0,
    PHY_INTERFACE_MODE_MII = 1,
    PHY_INTERFACE_MODE_GMII = 2,
    PHY_INTERFACE_MODE_SGMII = 3,
    PHY_INTERFACE_MODE_TBI = 4,
    PHY_INTERFACE_MODE_REVMII = 5,
    PHY_INTERFACE_MODE_RMII = 6,
    PHY_INTERFACE_MODE_RGMII = 7,
    PHY_INTERFACE_MODE_RGMII_ID = 8,
    PHY_INTERFACE_MODE_RGMII_RXID = 9,
    PHY_INTERFACE_MODE_RGMII_TXID = 10,
    PHY_INTERFACE_MODE_RTBI = 11,
    PHY_INTERFACE_MODE_SMII = 12,
    PHY_INTERFACE_MODE_XGMII = 13,
    PHY_INTERFACE_MODE_MOCA = 14,
    PHY_INTERFACE_MODE_QSGMII = 15,
    PHY_INTERFACE_MODE_MAX = 16
} ;
typedef enum ldv_27536 phy_interface_t;
enum ldv_27589 {
    MDIOBUS_ALLOCATED = 1,
    MDIOBUS_REGISTERED = 2,
    MDIOBUS_UNREGISTERED = 3,
    MDIOBUS_RELEASED = 4
} ;
struct phy_device;
struct mii_bus {
   char const *name ;
   char id[17U] ;
   void *priv ;
   int (*read)(struct mii_bus * , int , int ) ;
   int (*write)(struct mii_bus * , int , int , u16 ) ;
   int (*reset)(struct mii_bus * ) ;
   struct mutex mdio_lock ;
   struct device *parent ;
   enum ldv_27589 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   int *irq ;
};
enum phy_state {
    PHY_DOWN = 0,
    PHY_STARTING = 1,
    PHY_READY = 2,
    PHY_PENDING = 3,
    PHY_UP = 4,
    PHY_AN = 5,
    PHY_RUNNING = 6,
    PHY_NOLINK = 7,
    PHY_FORCING = 8,
    PHY_CHANGELINK = 9,
    PHY_HALTED = 10,
    PHY_RESUMING = 11
} ;
struct phy_c45_device_ids {
   u32 devices_in_package ;
   u32 device_ids[8U] ;
};
struct phy_driver;
struct phy_device {
   struct phy_driver *drv ;
   struct mii_bus *bus ;
   struct device dev ;
   u32 phy_id ;
   struct phy_c45_device_ids c45_ids ;
   bool is_c45 ;
   bool is_internal ;
   bool has_fixups ;
   bool suspended ;
   enum phy_state state ;
   u32 dev_flags ;
   phy_interface_t interface ;
   int addr ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
   int link ;
   u32 interrupts ;
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int autoneg ;
   int link_timeout ;
   int irq ;
   void *priv ;
   struct work_struct phy_queue ;
   struct delayed_work state_queue ;
   atomic_t irq_disable ;
   struct mutex lock ;
   struct net_device *attached_dev ;
   void (*adjust_link)(struct net_device * ) ;
};
struct phy_driver {
   u32 phy_id ;
   char *name ;
   unsigned int phy_id_mask ;
   u32 features ;
   u32 flags ;
   void const *driver_data ;
   int (*soft_reset)(struct phy_device * ) ;
   int (*config_init)(struct phy_device * ) ;
   int (*probe)(struct phy_device * ) ;
   int (*suspend)(struct phy_device * ) ;
   int (*resume)(struct phy_device * ) ;
   int (*config_aneg)(struct phy_device * ) ;
   int (*aneg_done)(struct phy_device * ) ;
   int (*read_status)(struct phy_device * ) ;
   int (*ack_interrupt)(struct phy_device * ) ;
   int (*config_intr)(struct phy_device * ) ;
   int (*did_interrupt)(struct phy_device * ) ;
   void (*remove)(struct phy_device * ) ;
   int (*match_phy_device)(struct phy_device * ) ;
   int (*ts_info)(struct phy_device * , struct ethtool_ts_info * ) ;
   int (*hwtstamp)(struct phy_device * , struct ifreq * ) ;
   bool (*rxtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   void (*txtstamp)(struct phy_device * , struct sk_buff * , int ) ;
   int (*set_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*get_wol)(struct phy_device * , struct ethtool_wolinfo * ) ;
   void (*link_change_notify)(struct phy_device * ) ;
   int (*read_mmd_indirect)(struct phy_device * , int , int , int ) ;
   void (*write_mmd_indirect)(struct phy_device * , int , int , int , u32 ) ;
   int (*module_info)(struct phy_device * , struct ethtool_modinfo * ) ;
   int (*module_eeprom)(struct phy_device * , struct ethtool_eeprom * , u8 * ) ;
   struct device_driver driver ;
};
struct fixed_phy_status {
   int link ;
   int speed ;
   int duplex ;
   int pause ;
   int asym_pause ;
};
enum dsa_tag_protocol {
    DSA_TAG_PROTO_NONE = 0,
    DSA_TAG_PROTO_DSA = 1,
    DSA_TAG_PROTO_TRAILER = 2,
    DSA_TAG_PROTO_EDSA = 3,
    DSA_TAG_PROTO_BRCM = 4
} ;
struct dsa_chip_data {
   struct device *host_dev ;
   int sw_addr ;
   int eeprom_len ;
   struct device_node *of_node ;
   char *port_names[12U] ;
   struct device_node *port_dn[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct packet_type;
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   int (*rcv)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   enum dsa_tag_protocol tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct device *master_dev ;
   char hwmon_name[24U] ;
   struct device *hwmon_dev ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   u32 phys_mii_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   enum dsa_tag_protocol tag_protocol ;
   int priv_size ;
   char *(*probe)(struct device * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   u32 (*get_phy_flags)(struct dsa_switch * , int ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*adjust_link)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*fixed_link_update)(struct dsa_switch * , int , struct fixed_phy_status * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
   void (*get_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct dsa_switch * , int , struct ethtool_wolinfo * ) ;
   int (*suspend)(struct dsa_switch * ) ;
   int (*resume)(struct dsa_switch * ) ;
   int (*port_enable)(struct dsa_switch * , int , struct phy_device * ) ;
   void (*port_disable)(struct dsa_switch * , int , struct phy_device * ) ;
   int (*set_eee)(struct dsa_switch * , int , struct phy_device * , struct ethtool_eee * ) ;
   int (*get_eee)(struct dsa_switch * , int , struct ethtool_eee * ) ;
   int (*get_temp)(struct dsa_switch * , int * ) ;
   int (*get_temp_limit)(struct dsa_switch * , int * ) ;
   int (*set_temp_limit)(struct dsa_switch * , int ) ;
   int (*get_temp_alarm)(struct dsa_switch * , bool * ) ;
   int (*get_eeprom_len)(struct dsa_switch * ) ;
   int (*get_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct dsa_switch * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_regs_len)(struct dsa_switch * , int ) ;
   void (*get_regs)(struct dsa_switch * , int , struct ethtool_regs * , void * ) ;
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
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
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
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
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
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   int (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   int (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct percpu_ref;
typedef void percpu_ref_func_t(struct percpu_ref * );
struct percpu_ref {
   atomic_long_t count ;
   unsigned long percpu_count_ptr ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_switch ;
   bool force_atomic ;
   struct callback_head rcu ;
};
struct cgroup_root;
struct cgroup_subsys;
struct cgroup;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   struct cgroup_subsys *ss ;
   struct percpu_ref refcnt ;
   struct cgroup_subsys_state *parent ;
   struct list_head sibling ;
   struct list_head children ;
   int id ;
   unsigned int flags ;
   u64 serial_nr ;
   struct callback_head callback_head ;
   struct work_struct destroy_work ;
};
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *populated_kn ;
   unsigned int subtree_control ;
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
   struct work_struct release_agent_work ;
};
struct cgroup_root {
   struct kernfs_root *kf_root ;
   unsigned int subsys_mask ;
   int hierarchy_id ;
   struct cgroup cgrp ;
   atomic_t nr_cgrps ;
   struct list_head root_list ;
   unsigned int flags ;
   struct idr cgroup_idr ;
   char release_agent_path[4096U] ;
   char name[64U] ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head mg_tasks ;
   struct list_head cgrp_links ;
   struct cgroup *dfl_cgrp ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct list_head mg_preload_node ;
   struct list_head mg_node ;
   struct cgroup *mg_src_cgrp ;
   struct css_set *mg_dst_cset ;
   struct list_head e_cset_node[12U] ;
   struct callback_head callback_head ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct cgroup_subsys *ss ;
   struct list_head node ;
   struct kernfs_ops *kf_ops ;
   u64 (*read_u64)(struct cgroup_subsys_state * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup_subsys_state * , struct cftype * ) ;
   int (*seq_show)(struct seq_file * , void * ) ;
   void *(*seq_start)(struct seq_file * , loff_t * ) ;
   void *(*seq_next)(struct seq_file * , void * , loff_t * ) ;
   void (*seq_stop)(struct seq_file * , void * ) ;
   int (*write_u64)(struct cgroup_subsys_state * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup_subsys_state * , struct cftype * , s64 ) ;
   ssize_t (*write)(struct kernfs_open_file * , char * , size_t , loff_t ) ;
   struct lock_class_key lockdep_key ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup_subsys_state * ) ;
   int (*css_online)(struct cgroup_subsys_state * ) ;
   void (*css_offline)(struct cgroup_subsys_state * ) ;
   void (*css_released)(struct cgroup_subsys_state * ) ;
   void (*css_free)(struct cgroup_subsys_state * ) ;
   void (*css_reset)(struct cgroup_subsys_state * ) ;
   void (*css_e_css_changed)(struct cgroup_subsys_state * ) ;
   int (*can_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup_subsys_state * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup_subsys_state * , struct cgroup_subsys_state * , struct task_struct * ) ;
   void (*bind)(struct cgroup_subsys_state * ) ;
   int disabled ;
   int early_init ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   int id ;
   char const *name ;
   struct cgroup_root *root ;
   struct idr css_idr ;
   struct list_head cfts ;
   struct cftype *dfl_cftypes ;
   struct cftype *legacy_cftypes ;
   unsigned int depends_on ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns_for_children ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
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
   __u32 spoofchk ;
   __u32 linkstate ;
   __u32 min_tx_rate ;
   __u32 max_tx_rate ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
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
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct hrtimer timer ;
   struct list_head dev_list ;
   struct hlist_node napi_hash_node ;
   unsigned int napi_id ;
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
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
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
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct netdev_phys_item_id {
   unsigned char id[32U] ;
   unsigned char id_len ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * , void * , u16 (*)(struct net_device * ,
                                                                                     struct sk_buff * ) ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , __be16 , u16 ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , __be16 , u16 ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_busy_poll)(struct napi_struct * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_rate)(struct net_device * , int , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_link_state)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 , u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       struct net_device * , int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_switch_parent_id_get)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_switch_port_stp_update)(struct net_device * , u8 ) ;
};
struct __anonstruct_adj_list_264 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_265 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct forwarding_accel_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_266 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_sw_netstats *tstats ;
   struct pcpu_dstats *dstats ;
   struct pcpu_vstats *vstats ;
};
struct garp_port;
struct mrp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_264 adj_list ;
   struct __anonstruct_all_adj_list_265 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   atomic_t carrier_changes ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct forwarding_accel_ops const *fwd_ops ;
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
   unsigned short neigh_priv_len ;
   unsigned short dev_id ;
   unsigned short dev_port ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
   unsigned char name_assign_type ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   struct tipc_bearer *tipc_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   struct wpan_dev *ieee802154_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   unsigned char broadcast[32U] ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   struct cpu_rmap *rx_cpu_rmap ;
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
   union __anonunion____missing_field_name_266 __annonCompField86 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   u16 gso_min_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct packet_type {
   __be16 type ;
   struct net_device *dev ;
   int (*func)(struct sk_buff * , struct net_device * , struct packet_type * , struct net_device * ) ;
   bool (*id_match)(struct packet_type * , struct sock * ) ;
   void *af_packet_priv ;
   struct list_head list ;
};
struct pcpu_sw_netstats {
   u64 rx_packets ;
   u64 rx_bytes ;
   u64 tx_packets ;
   u64 tx_bytes ;
   struct u64_stats_sync syncp ;
};
struct netdev_notifier_info {
   struct net_device *dev ;
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
union __anonunion____missing_field_name_271 {
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
   union __anonunion____missing_field_name_271 __annonCompField87 ;
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
struct __anonstruct_ax25_address_272 {
   char ax25_call[7U] ;
};
typedef struct __anonstruct_ax25_address_272 ax25_address;
struct ax25_uid_assoc {
   struct hlist_node uid_node ;
   atomic_t refcount ;
   kuid_t uid ;
   ax25_address call ;
};
typedef struct ax25_uid_assoc ax25_uid_assoc;
struct __anonstruct_ax25_digi_273 {
   ax25_address calls[8U] ;
   unsigned char repeated[8U] ;
   unsigned char ndigi ;
   signed char lastrepeat ;
};
typedef struct __anonstruct_ax25_digi_273 ax25_digi;
struct __anonstruct_ax25_dama_info_274 {
   char slave ;
   struct timer_list slave_timer ;
   unsigned short slave_timeout ;
};
typedef struct __anonstruct_ax25_dama_info_274 ax25_dama_info;
struct ax25_dev {
   struct ax25_dev *next ;
   struct net_device *dev ;
   struct net_device *forward ;
   struct ctl_table_header *sysheader ;
   int values[14U] ;
   ax25_dama_info dama ;
};
typedef struct ax25_dev ax25_dev;
struct ax25_cb {
   struct hlist_node ax25_node ;
   ax25_address source_addr ;
   ax25_address dest_addr ;
   ax25_digi *digipeat ;
   ax25_dev *ax25_dev ;
   unsigned char iamdigi ;
   unsigned char state ;
   unsigned char modulus ;
   unsigned char pidincl ;
   unsigned short vs ;
   unsigned short vr ;
   unsigned short va ;
   unsigned char condition ;
   unsigned char backoff ;
   unsigned char n2 ;
   unsigned char n2count ;
   struct timer_list t1timer ;
   struct timer_list t2timer ;
   struct timer_list t3timer ;
   struct timer_list idletimer ;
   unsigned long t1 ;
   unsigned long t2 ;
   unsigned long t3 ;
   unsigned long idle ;
   unsigned long rtt ;
   unsigned short paclen ;
   unsigned short fragno ;
   unsigned short fraglen ;
   struct sk_buff_head write_queue ;
   struct sk_buff_head reseq_queue ;
   struct sk_buff_head ack_queue ;
   struct sk_buff_head frag_queue ;
   unsigned char window ;
   struct timer_list timer ;
   struct timer_list dtimer ;
   struct sock *sk ;
   atomic_t refcount ;
};
typedef struct ax25_cb ax25_cb;
struct ax25_protocol {
   struct ax25_protocol *next ;
   unsigned int pid ;
   int (*func)(struct sk_buff * , ax25_cb * ) ;
};
struct ax25_linkfail {
   struct hlist_node lf_node ;
   void (*func)(ax25_cb * , int ) ;
};
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
};
struct kioctx;
typedef int kiocb_cancel_fn(struct kiocb * );
union __anonunion_ki_obj_275 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   kiocb_cancel_fn *ki_cancel ;
   void *private ;
   union __anonunion_ki_obj_275 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   size_t ki_nbytes ;
   struct list_head ki_list ;
   struct eventfd_ctx *ki_eventfd ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct bpf_insn {
   __u8 code ;
   unsigned char dst_reg : 4 ;
   unsigned char src_reg : 4 ;
   __s16 off ;
   __s32 imm ;
};
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_280 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   u32 len ;
   struct sock_fprog_kern *orig_prog ;
   struct bpf_prog_aux *aux ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_280 __annonCompField92 ;
};
struct sk_filter {
   atomic_t refcnt ;
   struct callback_head rcu ;
   struct bpf_prog *prog ;
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
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
   int slave_maxtype ;
   struct nla_policy const *slave_policy ;
   int (*slave_validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*slave_changelink)(struct net_device * , struct net_device * , struct nlattr ** ,
                           struct nlattr ** ) ;
   size_t (*get_slave_size)(struct net_device const * , struct net_device const * ) ;
   int (*fill_slave_info)(struct sk_buff * , struct net_device const * , struct net_device const * ) ;
   struct net *(*get_link_net)(struct net_device const * ) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct list_head list ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int reachable_time ;
   int data[12U] ;
   unsigned long data_state[1U] ;
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
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
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
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   struct list_head parms_list ;
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
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
struct dn_route;
union __anonunion____missing_field_name_285 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   unsigned long expires ;
   struct dst_entry *path ;
   struct dst_entry *from ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sock * , struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion____missing_field_name_285 __annonCompField93 ;
};
struct __anonstruct_socket_lock_t_286 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_286 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_288 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_287 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_288 __annonCompField94 ;
};
union __anonunion____missing_field_name_289 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_291 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_290 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_291 __annonCompField97 ;
};
union __anonunion____missing_field_name_292 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_293 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_287 __annonCompField95 ;
   union __anonunion____missing_field_name_289 __annonCompField96 ;
   union __anonunion____missing_field_name_290 __annonCompField98 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_292 __annonCompField99 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_293 __annonCompField100 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_294 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_294 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   u16 sk_incoming_cpu ;
   __u32 sk_txhash ;
   unsigned int sk_napi_id ;
   unsigned int sk_ll_usec ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check_tx : 1 ;
   unsigned char sk_no_check_rx : 1 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   u32 sk_pacing_rate ;
   u32 sk_max_pacing_rate ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
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
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   u16 sk_tsflags ;
   u32 sk_tskey ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
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
    SOCK_MEMALLOC = 15,
    SOCK_TIMESTAMPING_RX_SOFTWARE = 16,
    SOCK_FASYNC = 17,
    SOCK_RXQ_OVFL = 18,
    SOCK_ZEROCOPY = 19,
    SOCK_WIFI_STATUS = 20,
    SOCK_NOFCS = 21,
    SOCK_FILTER_LOCKED = 22,
    SOCK_SELECT_ERR_QUEUE = 23
} ;
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_295 {
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
   void (*release_cb)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   bool (*stream_memory_free)(struct sock const * ) ;
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
   union __anonunion_h_295 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   struct page_counter memory_allocated ;
   struct percpu_counter sockets_allocated ;
   int memory_pressure ;
   long sysctl_mem[3U] ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct socket_alloc {
   struct socket socket ;
   struct inode vfs_inode ;
};
struct __anonstruct_rose_address_296 {
   char rose_addr[5U] ;
};
typedef struct __anonstruct_rose_address_296 rose_address;
struct sockaddr_rose {
   __kernel_sa_family_t srose_family ;
   rose_address srose_addr ;
   ax25_address srose_call ;
   int srose_ndigis ;
   ax25_address srose_digi ;
};
struct full_sockaddr_rose {
   __kernel_sa_family_t srose_family ;
   rose_address srose_addr ;
   ax25_address srose_call ;
   unsigned int srose_ndigis ;
   ax25_address srose_digis[6U] ;
};
struct rose_cause_struct {
   unsigned char cause ;
   unsigned char diagnostic ;
};
struct rose_facilities_struct {
   rose_address source_addr ;
   rose_address dest_addr ;
   ax25_address source_call ;
   ax25_address dest_call ;
   unsigned char source_ndigis ;
   unsigned char dest_ndigis ;
   ax25_address source_digis[6U] ;
   ax25_address dest_digis[6U] ;
   unsigned int rand ;
   rose_address fail_addr ;
   ax25_address fail_call ;
};
struct rose_neigh {
   struct rose_neigh *next ;
   ax25_address callsign ;
   ax25_digi *digipeat ;
   ax25_cb *ax25 ;
   struct net_device *dev ;
   unsigned short count ;
   unsigned short use ;
   unsigned int number ;
   char restarted ;
   char dce_mode ;
   char loopback ;
   struct sk_buff_head queue ;
   struct timer_list t0timer ;
   struct timer_list ftimer ;
};
struct rose_route {
   struct rose_route *next ;
   unsigned int lci1 ;
   unsigned int lci2 ;
   rose_address src_addr ;
   rose_address dest_addr ;
   ax25_address src_call ;
   ax25_address dest_call ;
   struct rose_neigh *neigh1 ;
   struct rose_neigh *neigh2 ;
   unsigned int rand ;
};
struct rose_sock {
   struct sock sock ;
   rose_address source_addr ;
   rose_address dest_addr ;
   ax25_address source_call ;
   ax25_address dest_call ;
   unsigned char source_ndigis ;
   unsigned char dest_ndigis ;
   ax25_address source_digis[6U] ;
   ax25_address dest_digis[6U] ;
   struct rose_neigh *neighbour ;
   struct net_device *device ;
   unsigned int lci ;
   unsigned int rand ;
   unsigned char state ;
   unsigned char condition ;
   unsigned char qbitincl ;
   unsigned char defer ;
   unsigned char cause ;
   unsigned char diagnostic ;
   unsigned short vs ;
   unsigned short vr ;
   unsigned short va ;
   unsigned short vl ;
   unsigned long t1 ;
   unsigned long t2 ;
   unsigned long t3 ;
   unsigned long hb ;
   unsigned long idle ;
   struct sk_buff_head ack_queue ;
   struct rose_facilities_struct facilities ;
   struct timer_list timer ;
   struct timer_list idletimer ;
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 mldv1_unsolicited_report_interval ;
   __s32 mldv2_unsolicited_report_interval ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 accept_ra_from_local ;
   __s32 optimistic_dad ;
   __s32 use_optimistic ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   __s32 suppress_frag_ndisc ;
   __s32 accept_ra_mtu ;
   void *sysctl ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct ip6_sf_list {
   struct ip6_sf_list *sf_next ;
   struct in6_addr sf_addr ;
   unsigned long sf_count[2U] ;
   unsigned char sf_gsresp ;
   unsigned char sf_oldin ;
   unsigned char sf_crcount ;
};
struct ifmcaddr6 {
   struct in6_addr mca_addr ;
   struct inet6_dev *idev ;
   struct ifmcaddr6 *next ;
   struct ip6_sf_list *mca_sources ;
   struct ip6_sf_list *mca_tomb ;
   unsigned int mca_sfmode ;
   unsigned char mca_crcount ;
   unsigned long mca_sfcount[2U] ;
   struct timer_list mca_timer ;
   unsigned int mca_flags ;
   int mca_users ;
   atomic_t mca_refcnt ;
   spinlock_t mca_lock ;
   unsigned long mca_cstamp ;
   unsigned long mca_tstamp ;
};
struct ifacaddr6 {
   struct in6_addr aca_addr ;
   struct inet6_dev *aca_idev ;
   struct rt6_info *aca_rt ;
   struct ifacaddr6 *aca_next ;
   int aca_users ;
   atomic_t aca_refcnt ;
   unsigned long aca_cstamp ;
   unsigned long aca_tstamp ;
};
struct ipv6_devstat {
   struct proc_dir_entry *proc_dir_entry ;
   struct ipstats_mib *ipv6 ;
   struct icmpv6_mib_device *icmpv6dev ;
   struct icmpv6msg_mib_device *icmpv6msgdev ;
};
struct inet6_dev {
   struct net_device *dev ;
   struct list_head addr_list ;
   struct ifmcaddr6 *mc_list ;
   struct ifmcaddr6 *mc_tomb ;
   spinlock_t mc_lock ;
   unsigned char mc_qrv ;
   unsigned char mc_gq_running ;
   unsigned char mc_ifc_count ;
   unsigned char mc_dad_count ;
   unsigned long mc_v1_seen ;
   unsigned long mc_qi ;
   unsigned long mc_qri ;
   unsigned long mc_maxdelay ;
   struct timer_list mc_gq_timer ;
   struct timer_list mc_ifc_timer ;
   struct timer_list mc_dad_timer ;
   struct ifacaddr6 *ac_list ;
   rwlock_t lock ;
   atomic_t refcnt ;
   __u32 if_flags ;
   int dead ;
   u8 rndid[8U] ;
   struct timer_list regen_timer ;
   struct list_head tempaddr_list ;
   struct in6_addr token ;
   struct neigh_parms *nd_parms ;
   struct ipv6_devconf cnf ;
   struct ipv6_devstat stats ;
   struct timer_list rs_timer ;
   __u8 rs_probes ;
   __u8 addr_gen_mode ;
   unsigned long tstamp ;
   struct callback_head rcu ;
};
union __anonunion____missing_field_name_308 {
   __be32 a4 ;
   __be32 a6[4U] ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_308 __annonCompField102 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_309 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_311 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_310 {
   struct __anonstruct____missing_field_name_311 __annonCompField104 ;
   struct callback_head rcu ;
   struct inet_peer *gc_next ;
};
struct inet_peer {
   struct inet_peer *avl_left ;
   struct inet_peer *avl_right ;
   struct inetpeer_addr daddr ;
   __u32 avl_height ;
   u32 metrics[16U] ;
   u32 rate_tokens ;
   unsigned long rate_last ;
   union __anonunion____missing_field_name_309 __annonCompField103 ;
   union __anonunion____missing_field_name_310 __annonCompField105 ;
   __u32 dtime ;
   atomic_t refcnt ;
};
struct inet_peer_base {
   struct inet_peer *root ;
   seqlock_t lock ;
   int total ;
};
struct uncached_list;
struct rtable {
   struct dst_entry dst ;
   int rt_genid ;
   unsigned int rt_flags ;
   __u16 rt_type ;
   __u8 rt_is_input ;
   __u8 rt_uses_gateway ;
   int rt_iif ;
   __be32 rt_gateway ;
   u32 rt_pmtu ;
   struct list_head rt_uncached ;
   struct uncached_list *rt_uncached_list ;
};
struct ldv_struct_EMGentry_27 {
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_15 {
   struct notifier_block *arg0 ;
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_4 {
   struct net_device *arg0 ;
   int signal_pending ;
};
struct ldv_struct_dummy_resourceless_instance_5 {
   struct net *arg0 ;
   int signal_pending ;
};
struct ldv_struct_seq_instance_8 {
   struct seq_file *arg0 ;
   struct seq_operations *arg1 ;
   int signal_pending ;
};
struct ldv_struct_timer_instance_16 {
   struct timer_list *arg0 ;
   int signal_pending ;
};
typedef int ldv_func_ret_type___1;
typedef struct net_device *ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef int ldv_func_ret_type___6;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
typedef int pao_T_____33;
typedef int pao_T_____34;
typedef int pao_T_____35;
typedef int pao_T_____36;
typedef int pao_T_____37;
typedef int pao_T_____38;
typedef int pao_T_____39;
typedef int pao_T_____40;
struct rose_route_struct {
   rose_address address ;
   unsigned short mask ;
   ax25_address neighbour ;
   char device[16U] ;
   unsigned char ndigis ;
   ax25_address digipeaters[8U] ;
};
struct rose_node {
   struct rose_node *next ;
   rose_address address ;
   unsigned short mask ;
   unsigned char count ;
   char loopback ;
   struct rose_neigh *neighbour[3U] ;
};
enum hrtimer_restart;
enum hrtimer_restart;
typedef int ldv_func_ret_type___7;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef int ldv_func_ret_type___10;
enum hrtimer_restart;
typedef struct ctl_table_header *ldv_func_ret_type___11;
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
enum hrtimer_restart;
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
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
struct usb_device;
struct urb;
struct ldv_thread_set {
   int number ;
   struct ldv_thread **threads ;
};
struct ldv_thread {
   int identifier ;
   void (*function)(void * ) ;
};
typedef _Bool ldv_set;
long ldv__builtin_expect(long exp , long c ) ;
void ldv_assume(int expression ) ;
void ldv_stop(void) ;
void ldv_linux_alloc_irq_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_irq_check_alloc_nonatomic(void) ;
void ldv_linux_alloc_usb_lock_check_alloc_flags(gfp_t flags ) ;
void ldv_linux_alloc_usb_lock_check_alloc_nonatomic(void) ;
void ldv_linux_arch_io_check_final_state(void) ;
void ldv_linux_block_genhd_check_final_state(void) ;
void ldv_linux_block_queue_check_final_state(void) ;
void ldv_linux_block_request_check_final_state(void) ;
void *ldv_linux_drivers_base_class_create_class(void) ;
int ldv_linux_drivers_base_class_register_class(void) ;
void ldv_linux_drivers_base_class_check_final_state(void) ;
void ldv_linux_fs_char_dev_check_final_state(void) ;
void ldv_linux_fs_sysfs_check_final_state(void) ;
void ldv_linux_kernel_locking_rwlock_check_final_state(void) ;
void ldv_linux_kernel_module_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_bh_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_sched_check_final_state(void) ;
void ldv_linux_kernel_rcu_update_lock_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_update_lock_check_final_state(void) ;
void ldv_linux_kernel_rcu_srcu_check_for_read_section(void) ;
void ldv_linux_kernel_rcu_srcu_check_final_state(void) ;
void ldv_linux_lib_find_bit_initialize(void) ;
void ldv_linux_lib_idr_check_final_state(void) ;
void ldv_linux_mmc_sdio_func_check_final_state(void) ;
void ldv_linux_net_register_reset_error_counter(void) ;
void ldv_linux_net_rtnetlink_check_final_state(void) ;
void ldv_linux_net_sock_check_final_state(void) ;
void ldv_linux_usb_coherent_check_final_state(void) ;
void *ldv_linux_usb_gadget_create_class(void *is_got ) ;
int ldv_linux_usb_gadget_register_class(void) ;
void ldv_linux_usb_gadget_check_final_state(void) ;
void ldv_linux_usb_register_reset_error_counter(void) ;
void ldv_linux_usb_urb_check_final_state(void) ;
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
void *ldv_kzalloc(size_t size , gfp_t flags ) ;
void ldv_linux_usb_dev_atomic_inc(atomic_t *v ) ;
void ldv_linux_usb_dev_atomic_dec(atomic_t *v ) ;
int ldv_linux_usb_dev_atomic_dec_and_test(atomic_t *v ) ;
int ldv_undef_int(void) ;
static void ldv_ldv_initialize_160(void) ;
int ldv_post_init(int init_ret_val ) ;
static int ldv_ldv_post_init_157(int ldv_func_arg1 ) ;
int ldv_filter_err_code(int ret_val ) ;
int ldv_pre_register_netdev(void) ;
static void ldv_ldv_check_final_state_158(void) ;
static void ldv_ldv_check_final_state_159(void) ;
void ldv_free(void *s ) ;
void *ldv_xmalloc(size_t size ) ;
void ldv_linux_kernel_locking_rwlock_write_lock(void) ;
void ldv_linux_kernel_locking_rwlock_write_unlock(void) ;
void ldv_linux_net_sock_before_release_sock(void) ;
void ldv_linux_net_sock_past_lock_sock_nested(void) ;
extern struct module __this_module ;
__inline static void __set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void __clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile ("btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int variable_test_bit(long nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
__inline static int hlist_unhashed(struct hlist_node const *h )
{
  {
  return ((unsigned long )h->pprev == (unsigned long )((struct hlist_node ** )0));
}
}
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
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
{
  struct hlist_node *first ;
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
  goto ldv_3530;
  case_2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3530;
  case_4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3530;
  case_8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_3530;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break: ;
  }
  ldv_3530: ;
  return (pfo_ret__);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __xchg_wrong_size(void) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v ) ;
__inline static void atomic_dec(atomic_t *v ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_list_lock(void) ;
void ldv_switch_to_interrupt_context(void) ;
void ldv_switch_to_process_context(void) ;
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
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock ) ;
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern int rcu_read_lock_held(void) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void add_timer(struct timer_list * ) ;
extern int seq_open(struct file * , struct seq_operations const * ) ;
static int ldv_seq_open_147(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
extern ssize_t seq_read(struct file * , char * , size_t , loff_t * ) ;
extern loff_t seq_lseek(struct file * , loff_t , int ) ;
extern int seq_release(struct inode * , struct file * ) ;
extern int seq_puts(struct seq_file * , char const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern struct hlist_node *seq_hlist_start_head(struct hlist_head * , loff_t ) ;
extern struct hlist_node *seq_hlist_next(void * , struct hlist_head * , loff_t * ) ;
extern size_t copy_from_iter(void * , size_t , struct iov_iter * ) ;
extern bool capable(int ) ;
extern void schedule(void) ;
extern int send_sig(int , struct task_struct * , int ) ;
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
extern int sock_register(struct net_proto_family const * ) ;
extern void sock_unregister(int ) ;
extern void kfree(void const * ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
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
extern void kfree_skb(struct sk_buff * ) ;
__inline static struct sk_buff *skb_peek(struct sk_buff_head const *list_ )
{
  struct sk_buff *skb ;
  {
  skb = list_->next;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)list_)) {
    skb = (struct sk_buff *)0;
  } else {
  }
  return (skb);
}
}
__inline static void __skb_queue_head_init(struct sk_buff_head *list )
{
  struct sk_buff *tmp ;
  {
  tmp = (struct sk_buff *)list;
  list->next = tmp;
  list->prev = tmp;
  list->qlen = 0U;
  return;
}
}
__inline static void skb_queue_head_init(struct sk_buff_head *list )
{
  struct lock_class_key __key ;
  {
  {
  spinlock_check(& list->lock);
  __raw_spin_lock_init(& list->lock.__annonCompField18.rlock, "&(&list->lock)->rlock",
                       & __key);
  __skb_queue_head_init(list);
  }
  return;
}
}
extern void skb_queue_head(struct sk_buff_head * , struct sk_buff * ) ;
extern void skb_queue_tail(struct sk_buff_head * , struct sk_buff * ) ;
extern struct sk_buff *skb_dequeue(struct sk_buff_head * ) ;
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
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static void skb_reset_transport_header(struct sk_buff *skb )
{
  {
  skb->transport_header = (int )((__u16 )((long )skb->data)) - (int )((__u16 )((long )skb->head));
  return;
}
}
extern struct sk_buff *skb_recv_datagram(struct sock * , unsigned int , int , int * ) ;
extern unsigned int datagram_poll(struct file * , struct socket * , struct poll_table_struct * ) ;
extern int skb_copy_datagram_iter(struct sk_buff const * , int , struct iov_iter * ,
                                  int ) ;
__inline static int skb_copy_datagram_msg(struct sk_buff const *from , int offset ,
                                          struct msghdr *msg , int size )
{
  int tmp ;
  {
  {
  tmp = skb_copy_datagram_iter(from, offset, & msg->msg_iter, size);
  }
  return (tmp);
}
}
extern void skb_free_datagram(struct sock * , struct sk_buff * ) ;
__inline static int memcpy_from_msg(void *data , struct msghdr *msg , int len )
{
  size_t tmp ;
  {
  {
  tmp = copy_from_iter(data, (size_t )len, & msg->msg_iter);
  }
  return (tmp == (size_t )len ? 0 : -14);
}
}
extern struct proc_dir_entry *proc_create_data(char const * , umode_t , struct proc_dir_entry * ,
                                               struct file_operations const * ,
                                               void * ) ;
__inline static struct proc_dir_entry *proc_create(char const *name , umode_t mode ,
                                                   struct proc_dir_entry *parent ,
                                                   struct file_operations const *proc_fops )
{
  struct proc_dir_entry *tmp ;
  {
  {
  tmp = proc_create_data(name, (int )mode, parent, proc_fops, (void *)0);
  }
  return (tmp);
}
}
extern void remove_proc_entry(char const * , struct proc_dir_entry * ) ;
extern struct net init_net ;
__inline static int net_eq(struct net const *net1 , struct net const *net2 )
{
  {
  return ((unsigned long )net1 == (unsigned long )net2);
}
}
__inline static struct net *read_pnet(struct net * const *pnet )
{
  {
  return ((struct net *)*pnet);
}
}
extern void security_sock_graft(struct sock * , struct socket * ) ;
__inline static void netdev_for_each_tx_queue(struct net_device *dev , void (*f)(struct net_device * ,
                                                                                 struct netdev_queue * ,
                                                                                 void * ) ,
                                              void *arg )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_43060;
  ldv_43059:
  {
  (*f)(dev, dev->_tx + (unsigned long )i, arg);
  i = i + 1U;
  }
  ldv_43060: ;
  if (i < dev->num_tx_queues) {
    goto ldv_43059;
  } else {
  }
  return;
}
}
__inline static struct net *dev_net(struct net_device const *dev )
{
  struct net *tmp ;
  {
  {
  tmp = read_pnet(& dev->nd_net);
  }
  return (tmp);
}
}
extern int register_netdevice_notifier(struct notifier_block * ) ;
static int ldv_register_netdevice_notifier_151(struct notifier_block *ldv_func_arg1 ) ;
extern int unregister_netdevice_notifier(struct notifier_block * ) ;
static int ldv_unregister_netdevice_notifier_154(struct notifier_block *ldv_func_arg1 ) ;
__inline static struct net_device *netdev_notifier_info_to_dev(struct netdev_notifier_info const *info )
{
  {
  return ((struct net_device *)info->dev);
}
}
extern void free_netdev(struct net_device * ) ;
static void ldv_free_netdev_150(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_153(struct net_device *ldv_func_arg1 ) ;
static void ldv_free_netdev_156(struct net_device *ldv_func_arg1 ) ;
extern struct net_device *alloc_netdev_mqs(int , char const * , unsigned char ,
                                           void (*)(struct net_device * ) , unsigned int ,
                                           unsigned int ) ;
static struct net_device *ldv_alloc_netdev_mqs_148(int ldv_func_arg1 , char const *ldv_func_arg2 ,
                                                   unsigned char ldv_func_arg3 , void (*ldv_func_arg4)(struct net_device * ) ,
                                                   unsigned int ldv_func_arg5 , unsigned int ldv_func_arg6 ) ;
extern int register_netdev(struct net_device * ) ;
static int ldv_register_netdev_149(struct net_device *ldv_func_arg1 ) ;
extern void unregister_netdev(struct net_device * ) ;
static void ldv_unregister_netdev_152(struct net_device *ldv_func_arg1 ) ;
static void ldv_unregister_netdev_155(struct net_device *ldv_func_arg1 ) ;
__inline static void ax25_uid_put(ax25_uid_assoc *assoc )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& assoc->refcount);
  }
  if (tmp != 0) {
    {
    kfree((void const *)assoc);
    }
  } else {
  }
  return;
}
}
extern ax25_address const null_ax25_address ;
extern char *ax2asc(char * , ax25_address const * ) ;
extern int ax25cmp(ax25_address const * , ax25_address const * ) ;
extern void ax25_register_pid(struct ax25_protocol * ) ;
extern void ax25_protocol_release(unsigned int ) ;
extern void ax25_linkfail_register(struct ax25_linkfail * ) ;
extern void ax25_linkfail_release(struct ax25_linkfail * ) ;
extern int ax25_listen_register(ax25_address * , struct net_device * ) ;
extern void ax25_listen_release(ax25_address * , struct net_device * ) ;
extern unsigned long ax25_display_timer(struct timer_list * ) ;
extern int ax25_uid_policy ;
extern ax25_uid_assoc *ax25_findbyuid(kuid_t ) ;
__inline static struct sock *sk_entry(struct hlist_node const *node )
{
  struct hlist_node const *__mptr ;
  {
  __mptr = node;
  return ((struct sock *)__mptr + 0xffffffffffffffa8UL);
}
}
__inline static bool sk_unhashed(struct sock const *sk )
{
  int tmp ;
  {
  {
  tmp = hlist_unhashed(& sk->__sk_common.__annonCompField100.skc_node);
  }
  return (tmp != 0);
}
}
__inline static bool sk_hashed(struct sock const *sk )
{
  bool tmp ;
  int tmp___0 ;
  {
  {
  tmp = sk_unhashed(sk);
  }
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )tmp___0);
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
  __hlist_del(& sk->__sk_common.__annonCompField100.skc_node);
  }
  return;
}
}
__inline static bool __sk_del_node_init(struct sock *sk )
{
  bool tmp ;
  {
  {
  tmp = sk_hashed((struct sock const *)sk);
  }
  if ((int )tmp) {
    {
    __sk_del_node(sk);
    sk_node_init(& sk->__sk_common.__annonCompField100.skc_node);
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
__inline static bool sk_del_node_init(struct sock *sk )
{
  bool rc ;
  bool tmp ;
  int __ret_warn_on ;
  int tmp___0 ;
  long tmp___1 ;
  {
  {
  tmp = __sk_del_node_init(sk);
  rc = tmp;
  }
  if ((int )rc) {
    {
    tmp___0 = atomic_read((atomic_t const *)(& sk->__sk_common.skc_refcnt));
    __ret_warn_on = tmp___0 == 1;
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
    if (tmp___1 != 0L) {
      {
      warn_slowpath_null("include/net/sock.h", 585);
      }
    } else {
    }
    {
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
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
  hlist_add_head(& sk->__sk_common.__annonCompField100.skc_node, list);
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
__inline static void sock_copy_flags(struct sock *nsk , struct sock *osk )
{
  {
  nsk->sk_flags = osk->sk_flags;
  return;
}
}
__inline static void sock_set_flag(struct sock *sk , enum sock_flags flag )
{
  {
  {
  __set_bit((long )flag, (unsigned long volatile *)(& sk->sk_flags));
  }
  return;
}
}
__inline static void sock_reset_flag(struct sock *sk , enum sock_flags flag )
{
  {
  {
  __clear_bit((long )flag, (unsigned long volatile *)(& sk->sk_flags));
  }
  return;
}
}
__inline static bool sock_flag(struct sock const *sk , enum sock_flags flag )
{
  int tmp___0 ;
  {
  {
  tmp___0 = variable_test_bit((long )flag, (unsigned long const volatile *)(& sk->sk_flags));
  }
  return (tmp___0 != 0);
}
}
__inline static bool sk_acceptq_is_full(struct sock const *sk )
{
  {
  return ((int )((unsigned short )sk->sk_ack_backlog) > (int )((unsigned short )sk->sk_max_ack_backlog));
}
}
extern int proto_register(struct proto * , int ) ;
extern void proto_unregister(struct proto * ) ;
__inline static struct inode *SOCK_INODE(struct socket *socket )
{
  struct socket const *__mptr ;
  {
  __mptr = (struct socket const *)socket;
  return (& ((struct socket_alloc *)__mptr)->vfs_inode);
}
}
extern void lock_sock_nested(struct sock * , int ) ;
static void ldv_lock_sock_nested_121(struct sock *ldv_func_arg1 , int ldv_func_arg2 ) ;
__inline static void lock_sock(struct sock *sk )
{
  {
  {
  ldv_lock_sock_nested_121(sk, 0);
  }
  return;
}
}
extern void release_sock(struct sock * ) ;
static void ldv_release_sock_138(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_139(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_140(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_141(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_142(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_143(struct sock *ldv_func_arg1 ) ;
static void ldv_release_sock_144(struct sock *ldv_func_arg1 ) ;
extern struct sock *sk_alloc(struct net * , int , gfp_t , struct proto * ) ;
extern void sk_free(struct sock * ) ;
extern struct sk_buff *sock_alloc_send_skb(struct sock * , unsigned long , int ,
                                           int * ) ;
extern int sock_no_socketpair(struct socket * , struct socket * ) ;
extern int sock_no_shutdown(struct socket * , int ) ;
extern int sock_no_mmap(struct file * , struct socket * , struct vm_area_struct * ) ;
extern ssize_t sock_no_sendpage(struct socket * , struct page * , int , size_t ,
                                int ) ;
extern void sock_init_data(struct socket * , struct sock * ) ;
__inline static void sock_put(struct sock *sk )
{
  int tmp ;
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
extern void __compiletime_assert_1658(void) ;
__inline static wait_queue_head_t *sk_sleep(struct sock *sk )
{
  bool __cond ;
  struct socket_wq *________p1 ;
  struct socket_wq *_________p1 ;
  struct socket_wq *__var ;
  bool __warned ;
  int tmp ;
  {
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_1658();
    }
  } else {
  }
  {
  __var = (struct socket_wq *)0;
  _________p1 = *((struct socket_wq * volatile *)(& sk->sk_wq));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  return (& ________p1->wait);
}
}
__inline static void sock_orphan(struct sock *sk )
{
  {
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  sock_set_flag(sk, 0);
  sk_set_socket(sk, (struct socket *)0);
  sk->sk_wq = (struct socket_wq *)0;
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return;
}
}
__inline static void sock_graft(struct sock *sk , struct socket *parent )
{
  {
  {
  ldv_linux_kernel_locking_rwlock_write_lock();
  sk->sk_wq = parent->wq;
  parent->sk = sk;
  sk_set_socket(sk, parent);
  security_sock_graft(sk, parent);
  ldv_linux_kernel_locking_rwlock_write_unlock();
  }
  return;
}
}
__inline static int sk_wmem_alloc_get(struct sock const *sk )
{
  int tmp ;
  {
  {
  tmp = atomic_read(& sk->sk_wmem_alloc);
  }
  return (tmp + -1);
}
}
__inline static int sk_rmem_alloc_get(struct sock const *sk )
{
  int tmp ;
  {
  {
  tmp = atomic_read(& sk->sk_backlog.rmem_alloc);
  }
  return (tmp);
}
}
__inline static bool sk_has_allocations(struct sock const *sk )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = sk_wmem_alloc_get(sk);
  }
  if (tmp != 0) {
    tmp___1 = 1;
  } else {
    {
    tmp___0 = sk_rmem_alloc_get(sk);
    }
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return ((bool )tmp___1);
}
}
__inline static int sock_error(struct sock *sk )
{
  int err ;
  long tmp ;
  int __ret ;
  {
  {
  tmp = ldv__builtin_expect(sk->sk_err == 0, 1L);
  }
  if (tmp != 0L) {
    return (0);
  } else {
  }
  __ret = 0;
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
  __asm__ volatile ("xchgb %b0, %1\n": "+q" (__ret), "+m" (sk->sk_err): : "memory",
                       "cc");
  goto ldv_49863;
  case_2:
  __asm__ volatile ("xchgw %w0, %1\n": "+r" (__ret), "+m" (sk->sk_err): : "memory",
                       "cc");
  goto ldv_49863;
  case_4:
  __asm__ volatile ("xchgl %0, %1\n": "+r" (__ret), "+m" (sk->sk_err): : "memory",
                       "cc");
  goto ldv_49863;
  case_8:
  __asm__ volatile ("xchgq %q0, %1\n": "+r" (__ret), "+m" (sk->sk_err): : "memory",
                       "cc");
  goto ldv_49863;
  switch_default:
  {
  __xchg_wrong_size();
  }
  switch_break: ;
  }
  ldv_49863:
  err = __ret;
  return (- err);
}
}
__inline static struct net *sock_net(struct sock const *sk )
{
  struct net *tmp ;
  {
  {
  tmp = read_pnet(& sk->__sk_common.skc_net);
  }
  return (tmp);
}
}
extern int sock_get_timestamp(struct sock * , struct timeval * ) ;
extern int sock_get_timestampns(struct sock * , struct timespec * ) ;
ax25_address rose_callsign ;
int sysctl_rose_restart_request_timeout ;
int sysctl_rose_call_request_timeout ;
int sysctl_rose_reset_request_timeout ;
int sysctl_rose_clear_request_timeout ;
int sysctl_rose_no_activity_timeout ;
int sysctl_rose_ack_hold_back_timeout ;
int sysctl_rose_routing_control ;
int sysctl_rose_link_fail_timeout ;
int sysctl_rose_maximum_vcs ;
int sysctl_rose_window_size ;
int rosecmp(rose_address *addr1 , rose_address *addr2 ) ;
int rosecmpm(rose_address *addr1 , rose_address *addr2 , unsigned short mask ) ;
char *rose2asc(char *buf , rose_address const *addr ) ;
struct sock *rose_find_socket(unsigned int lci , struct rose_neigh *neigh ) ;
void rose_kill_by_neigh(struct rose_neigh *neigh ) ;
unsigned int rose_new_lci(struct rose_neigh *neigh ) ;
int rose_rx_call_request(struct sk_buff *skb , struct net_device *dev , struct rose_neigh *neigh ,
                         unsigned int lci ) ;
void rose_destroy_socket(struct sock *sk ) ;
void rose_setup(struct net_device *dev ) ;
void rose_transmit_clear_request(struct rose_neigh *neigh , unsigned int lci , unsigned char cause ,
                                 unsigned char diagnostic ) ;
void rose_loopback_init(void) ;
void rose_loopback_clear(void) ;
void rose_kick(struct sock *sk ) ;
struct file_operations const rose_neigh_fops ;
struct file_operations const rose_nodes_fops ;
struct file_operations const rose_routes_fops ;
void rose_add_loopback_neigh(void) ;
void rose_rt_device_down(struct net_device *dev ) ;
void rose_link_device_down(struct net_device *dev ) ;
struct net_device *rose_dev_first(void) ;
struct net_device *rose_dev_get(rose_address *addr ) ;
struct rose_route *rose_route_free_lci(unsigned int lci , struct rose_neigh *neigh ) ;
struct rose_neigh *rose_get_neigh(rose_address *addr , unsigned char *cause , unsigned char *diagnostic ,
                                  int route_frame ) ;
int rose_rt_ioctl(unsigned int cmd , void *arg ) ;
void rose_link_failed(ax25_cb *ax25 , int reason ) ;
int rose_route_frame(struct sk_buff *skb , ax25_cb *ax25 ) ;
void rose_rt_free(void) ;
void rose_clear_queues(struct sock *sk ) ;
void rose_write_internal(struct sock *sk , int frametype ) ;
int rose_parse_facilities(unsigned char *p , unsigned int packet_len , struct rose_facilities_struct *facilities ) ;
void rose_disconnect(struct sock *sk , int reason , int cause , int diagnostic ) ;
void rose_start_heartbeat(struct sock *sk ) ;
void rose_start_t1timer(struct sock *sk ) ;
void rose_start_t3timer(struct sock *sk ) ;
void rose_start_idletimer(struct sock *sk ) ;
void rose_stop_heartbeat(struct sock *sk ) ;
void rose_stop_timer(struct sock *sk ) ;
void rose_stop_idletimer(struct sock *sk ) ;
void rose_register_sysctl(void) ;
void rose_unregister_sysctl(void) ;
static int rose_ndevs = 10;
int sysctl_rose_restart_request_timeout = 180000;
int sysctl_rose_call_request_timeout = 200000;
int sysctl_rose_reset_request_timeout = 180000;
int sysctl_rose_clear_request_timeout = 180000;
int sysctl_rose_no_activity_timeout = 0;
int sysctl_rose_ack_hold_back_timeout = 5000;
int sysctl_rose_routing_control = 1;
int sysctl_rose_link_fail_timeout = 120000;
int sysctl_rose_maximum_vcs = 50;
int sysctl_rose_window_size = 7;
static struct hlist_head rose_list = {(struct hlist_node *)0};
static spinlock_t rose_list_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rose_list_lock",
                                                     0, 0UL}}}};
static struct proto_ops const rose_proto_ops ;
static struct lock_class_key rose_netdev_xmit_lock_key ;
static struct lock_class_key rose_netdev_addr_lock_key ;
static void rose_set_lockdep_one(struct net_device *dev , struct netdev_queue *txq ,
                                 void *_unused )
{
  {
  {
  lockdep_init_map(& txq->_xmit_lock.__annonCompField18.__annonCompField17.dep_map,
                   "&rose_netdev_xmit_lock_key", & rose_netdev_xmit_lock_key, 0);
  }
  return;
}
}
static void rose_set_lockdep_key(struct net_device *dev )
{
  {
  {
  lockdep_init_map(& dev->addr_list_lock.__annonCompField18.__annonCompField17.dep_map,
                   "&rose_netdev_addr_lock_key", & rose_netdev_addr_lock_key, 0);
  netdev_for_each_tx_queue(dev, & rose_set_lockdep_one, (void *)0);
  }
  return;
}
}
char *rose2asc(char *buf , rose_address const *addr )
{
  {
  if (((((int )((signed char )addr->rose_addr[0]) == 0 && (int )((signed char )addr->rose_addr[1]) == 0) && (int )((signed char )addr->rose_addr[2]) == 0) && (int )((signed char )addr->rose_addr[3]) == 0) && (int )((signed char )addr->rose_addr[4]) == 0) {
    {
    strcpy(buf, "*");
    }
  } else {
    {
    sprintf(buf, "%02X%02X%02X%02X%02X", (int )addr->rose_addr[0] & 255, (int )addr->rose_addr[1] & 255,
            (int )addr->rose_addr[2] & 255, (int )addr->rose_addr[3] & 255, (int )addr->rose_addr[4] & 255);
    }
  }
  return (buf);
}
}
int rosecmp(rose_address *addr1 , rose_address *addr2 )
{
  int i ;
  {
  i = 0;
  goto ldv_53608;
  ldv_53607: ;
  if ((int )((signed char )addr1->rose_addr[i]) != (int )((signed char )addr2->rose_addr[i])) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_53608: ;
  if (i <= 4) {
    goto ldv_53607;
  } else {
  }
  return (0);
}
}
int rosecmpm(rose_address *addr1 , rose_address *addr2 , unsigned short mask )
{
  unsigned int i ;
  unsigned int j ;
  {
  if ((unsigned int )mask > 10U) {
    return (1);
  } else {
  }
  i = 0U;
  goto ldv_53618;
  ldv_53617:
  j = i / 2U;
  if ((int )i & 1) {
    if ((((int )addr1->rose_addr[j] ^ (int )addr2->rose_addr[j]) & 15) != 0) {
      return (1);
    } else {
    }
  } else
  if ((((int )addr1->rose_addr[j] ^ (int )addr2->rose_addr[j]) & 240) != 0) {
    return (1);
  } else {
  }
  i = i + 1U;
  ldv_53618: ;
  if (i < (unsigned int )mask) {
    goto ldv_53617;
  } else {
  }
  return (0);
}
}
static void rose_remove_socket(struct sock *sk )
{
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  sk_del_node_init(sk);
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return;
}
}
void rose_kill_by_neigh(struct rose_neigh *neigh )
{
  struct sock *s ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct sock *tmp ;
  struct rose_sock *rose ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct sock *tmp___0 ;
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  ____ptr = rose_list.first;
  }
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct sock *)__mptr + 0xffffffffffffffa8UL;
  } else {
    tmp = (struct sock *)0;
  }
  s = tmp;
  goto ldv_53637;
  ldv_53636:
  rose = (struct rose_sock *)s;
  if ((unsigned long )rose->neighbour == (unsigned long )neigh) {
    {
    rose_disconnect(s, 101, 9, 0);
    (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
    rose->neighbour = (struct rose_neigh *)0;
    }
  } else {
  }
  ____ptr___0 = s->__sk_common.__annonCompField100.skc_node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___0 = (struct sock *)__mptr___0 + 0xffffffffffffffa8UL;
  } else {
    tmp___0 = (struct sock *)0;
  }
  s = tmp___0;
  ldv_53637: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_53636;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return;
}
}
static void rose_kill_by_device(struct net_device *dev )
{
  struct sock *s ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct sock *tmp ;
  struct rose_sock *rose ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct sock *tmp___0 ;
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  ____ptr = rose_list.first;
  }
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct sock *)__mptr + 0xffffffffffffffa8UL;
  } else {
    tmp = (struct sock *)0;
  }
  s = tmp;
  goto ldv_53653;
  ldv_53652:
  rose = (struct rose_sock *)s;
  if ((unsigned long )rose->device == (unsigned long )dev) {
    {
    rose_disconnect(s, 101, 9, 0);
    (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
    rose->device = (struct net_device *)0;
    }
  } else {
  }
  ____ptr___0 = s->__sk_common.__annonCompField100.skc_node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___0 = (struct sock *)__mptr___0 + 0xffffffffffffffa8UL;
  } else {
    tmp___0 = (struct sock *)0;
  }
  s = tmp___0;
  ldv_53653: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_53652;
  } else {
  }
  {
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return;
}
}
static int rose_device_event(struct notifier_block *this , unsigned long event , void *ptr )
{
  struct net_device *dev ;
  struct net_device *tmp ;
  struct net *tmp___0 ;
  int tmp___1 ;
  {
  {
  tmp = netdev_notifier_info_to_dev((struct netdev_notifier_info const *)ptr);
  dev = tmp;
  tmp___0 = dev_net((struct net_device const *)dev);
  tmp___1 = net_eq((struct net const *)tmp___0, (struct net const *)(& init_net));
  }
  if (tmp___1 == 0) {
    return (0);
  } else {
  }
  if (event != 2UL) {
    return (0);
  } else {
  }
  {
  if ((int )dev->type == 270) {
    goto case_270;
  } else {
  }
  if ((int )dev->type == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_270:
  {
  rose_kill_by_device(dev);
  }
  goto ldv_53662;
  case_3:
  {
  rose_link_device_down(dev);
  rose_rt_device_down(dev);
  }
  goto ldv_53662;
  switch_break: ;
  }
  ldv_53662: ;
  return (0);
}
}
static void rose_insert_socket(struct sock *sk )
{
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  sk_add_node(sk, & rose_list);
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return;
}
}
static struct sock *rose_find_listener(rose_address *addr , ax25_address *call )
{
  struct sock *s ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct sock *tmp ;
  struct rose_sock *rose ;
  int tmp___0 ;
  int tmp___1 ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct sock *tmp___2 ;
  struct hlist_node *____ptr___1 ;
  struct hlist_node const *__mptr___1 ;
  struct sock *tmp___3 ;
  struct rose_sock *rose___0 ;
  int tmp___4 ;
  int tmp___5 ;
  struct hlist_node *____ptr___2 ;
  struct hlist_node const *__mptr___2 ;
  struct sock *tmp___6 ;
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  ____ptr = rose_list.first;
  }
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct sock *)__mptr + 0xffffffffffffffa8UL;
  } else {
    tmp = (struct sock *)0;
  }
  s = tmp;
  goto ldv_53683;
  ldv_53682:
  {
  rose = (struct rose_sock *)s;
  tmp___0 = rosecmp(& rose->source_addr, addr);
  }
  if (tmp___0 == 0) {
    {
    tmp___1 = ax25cmp((ax25_address const *)(& rose->source_call), (ax25_address const *)call);
    }
    if (tmp___1 == 0) {
      if ((unsigned int )rose->source_ndigis == 0U) {
        if ((unsigned int )((unsigned char )s->__sk_common.skc_state) == 10U) {
          goto found;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  ____ptr___0 = s->__sk_common.__annonCompField100.skc_node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___2 = (struct sock *)__mptr___0 + 0xffffffffffffffa8UL;
  } else {
    tmp___2 = (struct sock *)0;
  }
  s = tmp___2;
  ldv_53683: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_53682;
  } else {
  }
  ____ptr___1 = rose_list.first;
  if ((unsigned long )____ptr___1 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___1 = (struct hlist_node const *)____ptr___1;
    tmp___3 = (struct sock *)__mptr___1 + 0xffffffffffffffa8UL;
  } else {
    tmp___3 = (struct sock *)0;
  }
  s = tmp___3;
  goto ldv_53695;
  ldv_53694:
  {
  rose___0 = (struct rose_sock *)s;
  tmp___4 = rosecmp(& rose___0->source_addr, addr);
  }
  if (tmp___4 == 0) {
    {
    tmp___5 = ax25cmp((ax25_address const *)(& rose___0->source_call), & null_ax25_address);
    }
    if (tmp___5 == 0) {
      if ((unsigned int )((unsigned char )s->__sk_common.skc_state) == 10U) {
        goto found;
      } else {
      }
    } else {
    }
  } else {
  }
  ____ptr___2 = s->__sk_common.__annonCompField100.skc_node.next;
  if ((unsigned long )____ptr___2 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___2 = (struct hlist_node const *)____ptr___2;
    tmp___6 = (struct sock *)__mptr___2 + 0xffffffffffffffa8UL;
  } else {
    tmp___6 = (struct sock *)0;
  }
  s = tmp___6;
  ldv_53695: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_53694;
  } else {
  }
  s = (struct sock *)0;
  found:
  {
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return (s);
}
}
struct sock *rose_find_socket(unsigned int lci , struct rose_neigh *neigh )
{
  struct sock *s ;
  struct hlist_node *____ptr ;
  struct hlist_node const *__mptr ;
  struct sock *tmp ;
  struct rose_sock *rose ;
  struct hlist_node *____ptr___0 ;
  struct hlist_node const *__mptr___0 ;
  struct sock *tmp___0 ;
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  ____ptr = rose_list.first;
  }
  if ((unsigned long )____ptr != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)____ptr;
    tmp = (struct sock *)__mptr + 0xffffffffffffffa8UL;
  } else {
    tmp = (struct sock *)0;
  }
  s = tmp;
  goto ldv_53713;
  ldv_53712:
  rose = (struct rose_sock *)s;
  if (rose->lci == lci && (unsigned long )rose->neighbour == (unsigned long )neigh) {
    goto found;
  } else {
  }
  ____ptr___0 = s->__sk_common.__annonCompField100.skc_node.next;
  if ((unsigned long )____ptr___0 != (unsigned long )((struct hlist_node *)0)) {
    __mptr___0 = (struct hlist_node const *)____ptr___0;
    tmp___0 = (struct sock *)__mptr___0 + 0xffffffffffffffa8UL;
  } else {
    tmp___0 = (struct sock *)0;
  }
  s = tmp___0;
  ldv_53713: ;
  if ((unsigned long )s != (unsigned long )((struct sock *)0)) {
    goto ldv_53712;
  } else {
  }
  s = (struct sock *)0;
  found:
  {
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return (s);
}
}
unsigned int rose_new_lci(struct rose_neigh *neigh )
{
  int lci ;
  struct sock *tmp ;
  struct rose_route *tmp___0 ;
  struct sock *tmp___1 ;
  struct rose_route *tmp___2 ;
  {
  if ((int )((signed char )neigh->dce_mode) != 0) {
    lci = 1;
    goto ldv_53720;
    ldv_53719:
    {
    tmp = rose_find_socket((unsigned int )lci, neigh);
    }
    if ((unsigned long )tmp == (unsigned long )((struct sock *)0)) {
      {
      tmp___0 = rose_route_free_lci((unsigned int )lci, neigh);
      }
      if ((unsigned long )tmp___0 == (unsigned long )((struct rose_route *)0)) {
        return ((unsigned int )lci);
      } else {
      }
    } else {
    }
    lci = lci + 1;
    ldv_53720: ;
    if (lci <= sysctl_rose_maximum_vcs) {
      goto ldv_53719;
    } else {
    }
  } else {
    lci = sysctl_rose_maximum_vcs;
    goto ldv_53723;
    ldv_53722:
    {
    tmp___1 = rose_find_socket((unsigned int )lci, neigh);
    }
    if ((unsigned long )tmp___1 == (unsigned long )((struct sock *)0)) {
      {
      tmp___2 = rose_route_free_lci((unsigned int )lci, neigh);
      }
      if ((unsigned long )tmp___2 == (unsigned long )((struct rose_route *)0)) {
        return ((unsigned int )lci);
      } else {
      }
    } else {
    }
    lci = lci - 1;
    ldv_53723: ;
    if (lci > 0) {
      goto ldv_53722;
    } else {
    }
  }
  return (0U);
}
}
static void rose_destroy_timer(unsigned long data )
{
  {
  {
  rose_destroy_socket((struct sock *)data);
  }
  return;
}
}
void rose_destroy_socket(struct sock *sk )
{
  struct sk_buff *skb ;
  struct lock_class_key __key ;
  bool tmp ;
  {
  {
  rose_remove_socket(sk);
  rose_stop_heartbeat(sk);
  rose_stop_idletimer(sk);
  rose_stop_timer(sk);
  rose_clear_queues(sk);
  }
  goto ldv_53735;
  ldv_53734: ;
  if ((unsigned long )skb->sk != (unsigned long )sk) {
    {
    sock_set_flag(skb->sk, 0);
    rose_start_heartbeat(skb->sk);
    ((struct rose_sock *)skb->sk)->state = 0U;
    }
  } else {
  }
  {
  kfree_skb(skb);
  }
  ldv_53735:
  {
  skb = skb_dequeue(& sk->sk_receive_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_53734;
  } else {
  }
  {
  tmp = sk_has_allocations((struct sock const *)sk);
  }
  if ((int )tmp) {
    {
    init_timer_key(& sk->sk_timer, 0U, "((&sk->sk_timer))", & __key);
    sk->sk_timer.function = & rose_destroy_timer;
    sk->sk_timer.data = (unsigned long )sk;
    sk->sk_timer.expires = (unsigned long )jiffies + 2500UL;
    add_timer(& sk->sk_timer);
    }
  } else {
    {
    sock_put(sk);
    }
  }
  return;
}
}
static int rose_setsockopt(struct socket *sock , int level , int optname , char *optval ,
                           unsigned int optlen )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  int opt ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  if (level != 260) {
    return (-92);
  } else {
  }
  if (optlen <= 3U) {
    return (-22);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" ((int *)optval),
                       "i" (4UL));
  opt = (int )__val_gu;
  }
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  {
  if (optname == 1) {
    goto case_1;
  } else {
  }
  if (optname == 2) {
    goto case_2;
  } else {
  }
  if (optname == 3) {
    goto case_3;
  } else {
  }
  if (optname == 4) {
    goto case_4;
  } else {
  }
  if (optname == 7) {
    goto case_7;
  } else {
  }
  if (optname == 5) {
    goto case_5;
  } else {
  }
  if (optname == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  rose->defer = opt != 0;
  return (0);
  case_2: ;
  if (opt <= 0) {
    return (-22);
  } else {
  }
  rose->t1 = (unsigned long )(opt * 250);
  return (0);
  case_3: ;
  if (opt <= 0) {
    return (-22);
  } else {
  }
  rose->t2 = (unsigned long )(opt * 250);
  return (0);
  case_4: ;
  if (opt <= 0) {
    return (-22);
  } else {
  }
  rose->t3 = (unsigned long )(opt * 250);
  return (0);
  case_7: ;
  if (opt <= 0) {
    return (-22);
  } else {
  }
  rose->hb = (unsigned long )(opt * 250);
  return (0);
  case_5: ;
  if (opt < 0) {
    return (-22);
  } else {
  }
  rose->idle = (unsigned long )(opt * 15000);
  return (0);
  case_6:
  rose->qbitincl = opt != 0;
  return (0);
  switch_default: ;
  return (-92);
  switch_break: ;
  }
}
}
static int rose_getsockopt(struct socket *sock , int level , int optname , char *optval ,
                           int *optlen )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  int val ;
  int len ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  int __ret_pu ;
  int __pu_val ;
  unsigned long tmp ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  val = 0;
  if (level != 260) {
    return (-92);
  } else {
  }
  {
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (optlen),
                       "i" (4UL));
  len = (int )__val_gu;
  }
  if (__ret_gu != 0) {
    return (-14);
  } else {
  }
  if (len < 0) {
    return (-22);
  } else {
  }
  {
  if (optname == 1) {
    goto case_1;
  } else {
  }
  if (optname == 2) {
    goto case_2;
  } else {
  }
  if (optname == 3) {
    goto case_3;
  } else {
  }
  if (optname == 4) {
    goto case_4;
  } else {
  }
  if (optname == 7) {
    goto case_7;
  } else {
  }
  if (optname == 5) {
    goto case_5;
  } else {
  }
  if (optname == 6) {
    goto case_6;
  } else {
  }
  goto switch_default;
  case_1:
  val = (int )rose->defer;
  goto ldv_53774;
  case_2:
  val = (int )(rose->t1 / 250UL);
  goto ldv_53774;
  case_3:
  val = (int )(rose->t2 / 250UL);
  goto ldv_53774;
  case_4:
  val = (int )(rose->t3 / 250UL);
  goto ldv_53774;
  case_7:
  val = (int )(rose->hb / 250UL);
  goto ldv_53774;
  case_5:
  val = (int )(rose->idle / 15000UL);
  goto ldv_53774;
  case_6:
  val = (int )rose->qbitincl;
  goto ldv_53774;
  switch_default: ;
  return (-92);
  switch_break: ;
  }
  ldv_53774:
  {
  __min1 = (unsigned int )len;
  __min2 = 4U;
  len = (int )(__min1 < __min2 ? __min1 : __min2);
  might_fault();
  __pu_val = len;
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
    goto case_8;
  } else {
  }
  goto switch_default___0;
  case_1___0:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (optlen): "ebx");
  goto ldv_53788;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (optlen): "ebx");
  goto ldv_53788;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (optlen): "ebx");
  goto ldv_53788;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (optlen): "ebx");
  goto ldv_53788;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (optlen): "ebx");
  goto ldv_53788;
  switch_break___0: ;
  }
  ldv_53788: ;
  if (__ret_pu != 0) {
    return (-14);
  } else {
  }
  {
  tmp = copy_to_user((void *)optval, (void const *)(& val), (unsigned long )len);
  }
  return (tmp != 0UL ? -14 : 0);
}
}
static int rose_listen(struct socket *sock , int backlog )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  {
  sk = sock->sk;
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 10U) {
    {
    rose = (struct rose_sock *)sk;
    rose->dest_ndigis = 0U;
    memset((void *)(& rose->dest_addr), 0, 5UL);
    memset((void *)(& rose->dest_call), 0, 7UL);
    memset((void *)(& rose->dest_digis), 0, 42UL);
    sk->sk_max_ack_backlog = (unsigned short )backlog;
    sk->__sk_common.skc_state = 10U;
    }
    return (0);
  } else {
  }
  return (-95);
}
}
static struct proto rose_proto =
     {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0U, 0,
    0, 0, 0, 0, 0, 0, 0, 0, (_Bool)0, 0, 1960U, 0, 0, 0, 0, {0}, & __this_module,
    {'R', 'O', 'S', 'E', '\000'}, {0, 0}, 0, 0, 0};
static int rose_create(struct net *net , struct socket *sock , int protocol , int kern )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  int tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = net_eq((struct net const *)net, (struct net const *)(& init_net));
  }
  if (tmp == 0) {
    return (-97);
  } else {
  }
  if ((int )sock->type != 5 || protocol != 0) {
    return (-94);
  } else {
  }
  {
  sk = sk_alloc(net, 11, 32U, & rose_proto);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (-12);
  } else {
  }
  {
  rose = (struct rose_sock *)sk;
  sock_init_data(sock, sk);
  skb_queue_head_init(& rose->ack_queue);
  sock->ops = & rose_proto_ops;
  sk->sk_protocol = (unsigned char )protocol;
  init_timer_key(& rose->timer, 0U, "(&rose->timer)", & __key);
  init_timer_key(& rose->idletimer, 0U, "(&rose->idletimer)", & __key___0);
  rose->t1 = msecs_to_jiffies((unsigned int const )sysctl_rose_call_request_timeout);
  rose->t2 = msecs_to_jiffies((unsigned int const )sysctl_rose_reset_request_timeout);
  rose->t3 = msecs_to_jiffies((unsigned int const )sysctl_rose_clear_request_timeout);
  rose->hb = msecs_to_jiffies((unsigned int const )sysctl_rose_ack_hold_back_timeout);
  rose->idle = msecs_to_jiffies((unsigned int const )sysctl_rose_no_activity_timeout);
  rose->state = 0U;
  }
  return (0);
}
}
static struct sock *rose_make_new(struct sock *osk )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  struct rose_sock *orose ;
  struct net *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  if ((unsigned int )osk->sk_type != 5U) {
    return ((struct sock *)0);
  } else {
  }
  {
  tmp = sock_net((struct sock const *)osk);
  sk = sk_alloc(tmp, 11, 32U, & rose_proto);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return ((struct sock *)0);
  } else {
  }
  {
  rose = (struct rose_sock *)sk;
  sock_init_data((struct socket *)0, sk);
  skb_queue_head_init(& rose->ack_queue);
  sk->sk_type = osk->sk_type;
  sk->sk_priority = osk->sk_priority;
  sk->sk_protocol = osk->sk_protocol;
  sk->sk_rcvbuf = osk->sk_rcvbuf;
  sk->sk_sndbuf = osk->sk_sndbuf;
  sk->__sk_common.skc_state = 1U;
  sock_copy_flags(sk, osk);
  init_timer_key(& rose->timer, 0U, "(&rose->timer)", & __key);
  init_timer_key(& rose->idletimer, 0U, "(&rose->idletimer)", & __key___0);
  orose = (struct rose_sock *)osk;
  rose->t1 = orose->t1;
  rose->t2 = orose->t2;
  rose->t3 = orose->t3;
  rose->hb = orose->hb;
  rose->idle = orose->idle;
  rose->defer = orose->defer;
  rose->device = orose->device;
  rose->qbitincl = orose->qbitincl;
  }
  return (sk);
}
}
static int rose_release(struct socket *sock )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  {
  sk = sock->sk;
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (0);
  } else {
  }
  {
  sock_hold(sk);
  sock_orphan(sk);
  lock_sock(sk);
  rose = (struct rose_sock *)sk;
  }
  {
  if ((int )rose->state == 0) {
    goto case_0;
  } else {
  }
  if ((int )rose->state == 2) {
    goto case_2;
  } else {
  }
  if ((int )rose->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )rose->state == 3) {
    goto case_3;
  } else {
  }
  if ((int )rose->state == 4) {
    goto case_4;
  } else {
  }
  if ((int )rose->state == 5) {
    goto case_5;
  } else {
  }
  goto switch_default;
  case_0:
  {
  ldv_release_sock_138(sk);
  rose_disconnect(sk, 0, -1, -1);
  lock_sock(sk);
  rose_destroy_socket(sk);
  }
  goto ldv_53825;
  case_2:
  {
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  ldv_release_sock_139(sk);
  rose_disconnect(sk, 0, -1, -1);
  lock_sock(sk);
  rose_destroy_socket(sk);
  }
  goto ldv_53825;
  case_1: ;
  case_3: ;
  case_4: ;
  case_5:
  {
  rose_clear_queues(sk);
  rose_stop_idletimer(sk);
  rose_write_internal(sk, 19);
  rose_start_t3timer(sk);
  rose->state = 2U;
  sk->__sk_common.skc_state = 7U;
  sk->sk_shutdown = (unsigned char )((unsigned int )sk->sk_shutdown | 2U);
  (*(sk->sk_state_change))(sk);
  sock_set_flag(sk, 0);
  sock_set_flag(sk, 5);
  }
  goto ldv_53825;
  switch_default: ;
  goto ldv_53825;
  switch_break: ;
  }
  ldv_53825:
  {
  sock->sk = (struct sock *)0;
  ldv_release_sock_140(sk);
  sock_put(sk);
  }
  return (0);
}
}
static int rose_bind(struct socket *sock , struct sockaddr *uaddr , int addr_len )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  struct sockaddr_rose *addr ;
  struct net_device *dev ;
  ax25_address *source ;
  ax25_uid_assoc *user ;
  int n ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  struct full_sockaddr_rose *full_addr ;
  {
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  addr = (struct sockaddr_rose *)uaddr;
  tmp = sock_flag((struct sock const *)sk, 8);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-22);
  } else {
  }
  if (addr_len != 28 && addr_len != 64) {
    return (-22);
  } else {
  }
  if ((unsigned int )addr->srose_family != 11U) {
    return (-22);
  } else {
  }
  if (addr_len == 28 && addr->srose_ndigis > 1) {
    return (-22);
  } else {
  }
  if ((unsigned int )addr->srose_ndigis > 6U) {
    return (-22);
  } else {
  }
  {
  dev = rose_dev_get(& addr->srose_addr);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-99);
  } else {
  }
  {
  source = & addr->srose_call;
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current();
  user = ax25_findbyuid((tmp___2->cred)->euid);
  }
  if ((unsigned long )user != (unsigned long )((ax25_uid_assoc *)0)) {
    {
    rose->source_call = user->call;
    ax25_uid_put(user);
    }
  } else {
    if (ax25_uid_policy != 0) {
      {
      tmp___3 = capable(10);
      }
      if (tmp___3) {
        tmp___4 = 0;
      } else {
        tmp___4 = 1;
      }
      if (tmp___4) {
        return (-13);
      } else {
      }
    } else {
    }
    rose->source_call = *source;
  }
  rose->source_addr = addr->srose_addr;
  rose->device = dev;
  rose->source_ndigis = (unsigned char )addr->srose_ndigis;
  if (addr_len == 64) {
    full_addr = (struct full_sockaddr_rose *)uaddr;
    n = 0;
    goto ldv_53848;
    ldv_53847:
    rose->source_digis[n] = full_addr->srose_digis[n];
    n = n + 1;
    ldv_53848: ;
    if (n < addr->srose_ndigis) {
      goto ldv_53847;
    } else {
    }
  } else
  if ((unsigned int )rose->source_ndigis == 1U) {
    rose->source_digis[0] = addr->srose_digi;
  } else {
  }
  {
  rose_insert_socket(sk);
  sock_reset_flag(sk, 8);
  }
  return (0);
}
}
static int rose_connect(struct socket *sock , struct sockaddr *uaddr , int addr_len ,
                        int flags )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  struct sockaddr_rose *addr ;
  unsigned char cause ;
  unsigned char diagnostic ;
  struct net_device *dev ;
  ax25_uid_assoc *user ;
  int n ;
  int err ;
  int tmp ;
  struct task_struct *tmp___0 ;
  bool tmp___1 ;
  struct full_sockaddr_rose *full_addr ;
  wait_queue_t wait ;
  struct task_struct *tmp___2 ;
  wait_queue_head_t *tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  wait_queue_head_t *tmp___6 ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  addr = (struct sockaddr_rose *)uaddr;
  err = 0;
  if (addr_len != 28 && addr_len != 64) {
    return (-22);
  } else {
  }
  if ((unsigned int )addr->srose_family != 11U) {
    return (-22);
  } else {
  }
  if (addr_len == 28 && addr->srose_ndigis > 1) {
    return (-22);
  } else {
  }
  if ((unsigned int )addr->srose_ndigis > 6U) {
    return (-22);
  } else {
  }
  if ((int )rose->source_ndigis + addr->srose_ndigis > 6) {
    return (-22);
  } else {
  }
  {
  lock_sock(sk);
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 1U && (unsigned int )sock->state == 2U) {
    sock->state = 3;
    goto out_release;
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 7U && (unsigned int )sock->state == 2U) {
    sock->state = 1;
    err = -111;
    goto out_release;
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 1U) {
    err = -106;
    goto out_release;
  } else {
  }
  {
  sk->__sk_common.skc_state = 7U;
  sock->state = 1;
  rose->neighbour = rose_get_neigh(& addr->srose_addr, & cause, & diagnostic, 0);
  }
  if ((unsigned long )rose->neighbour == (unsigned long )((struct rose_neigh *)0)) {
    err = -101;
    goto out_release;
  } else {
  }
  {
  rose->lci = rose_new_lci(rose->neighbour);
  }
  if (rose->lci == 0U) {
    err = -101;
    goto out_release;
  } else {
  }
  {
  tmp___1 = sock_flag((struct sock const *)sk, 8);
  }
  if ((int )tmp___1) {
    {
    sock_reset_flag(sk, 8);
    dev = rose_dev_first();
    }
    if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
      err = -101;
      goto out_release;
    } else {
    }
    {
    tmp = debug_lockdep_rcu_enabled();
    tmp___0 = get_current();
    user = ax25_findbyuid((tmp___0->cred)->euid);
    }
    if ((unsigned long )user == (unsigned long )((ax25_uid_assoc *)0)) {
      err = -22;
      goto out_release;
    } else {
    }
    {
    memcpy((void *)(& rose->source_addr), (void const *)dev->dev_addr, 5UL);
    rose->source_call = user->call;
    rose->device = dev;
    ax25_uid_put(user);
    rose_insert_socket(sk);
    }
  } else {
  }
  rose->dest_addr = addr->srose_addr;
  rose->dest_call = addr->srose_call;
  rose->rand = ((unsigned int )((long )rose) & 65535U) + rose->lci;
  rose->dest_ndigis = (unsigned char )addr->srose_ndigis;
  if (addr_len == 64) {
    full_addr = (struct full_sockaddr_rose *)uaddr;
    n = 0;
    goto ldv_53870;
    ldv_53869:
    rose->dest_digis[n] = full_addr->srose_digis[n];
    n = n + 1;
    ldv_53870: ;
    if (n < addr->srose_ndigis) {
      goto ldv_53869;
    } else {
    }
  } else
  if ((unsigned int )rose->dest_ndigis == 1U) {
    rose->dest_digis[0] = addr->srose_digi;
  } else {
  }
  {
  sock->state = 2;
  sk->__sk_common.skc_state = 2U;
  rose->state = 1U;
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use + 1);
  rose_write_internal(sk, 11);
  rose_start_heartbeat(sk);
  rose_start_t1timer(sk);
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U && (flags & 2048) != 0) {
    err = -115;
    goto out_release;
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 2U) {
    {
    tmp___2 = get_current();
    wait.flags = 0U;
    wait.private = (void *)tmp___2;
    wait.func = & autoremove_wake_function;
    wait.task_list.next = & wait.task_list;
    wait.task_list.prev = & wait.task_list;
    }
    ldv_53875:
    {
    tmp___3 = sk_sleep(sk);
    prepare_to_wait(tmp___3, & wait, 1);
    }
    if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 2U) {
      goto ldv_53873;
    } else {
    }
    {
    tmp___4 = get_current();
    tmp___5 = signal_pending(tmp___4);
    }
    if (tmp___5 == 0) {
      {
      ldv_release_sock_141(sk);
      schedule();
      lock_sock(sk);
      }
      goto ldv_53874;
    } else {
    }
    err = -512;
    goto ldv_53873;
    ldv_53874: ;
    goto ldv_53875;
    ldv_53873:
    {
    tmp___6 = sk_sleep(sk);
    finish_wait(tmp___6, & wait);
    }
    if (err != 0) {
      goto out_release;
    } else {
    }
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U) {
    {
    sock->state = 1;
    err = sock_error(sk);
    }
    goto out_release;
  } else {
  }
  sock->state = 3;
  out_release:
  {
  ldv_release_sock_142(sk);
  }
  return (err);
}
}
static int rose_accept(struct socket *sock , struct socket *newsock , int flags )
{
  struct sk_buff *skb ;
  struct sock *newsk ;
  wait_queue_t wait ;
  struct task_struct *tmp ;
  struct sock *sk ;
  int err ;
  wait_queue_head_t *tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  wait_queue_head_t *tmp___3 ;
  {
  {
  tmp = get_current();
  wait.flags = 0U;
  wait.private = (void *)tmp;
  wait.func = & autoremove_wake_function;
  wait.task_list.next = & wait.task_list;
  wait.task_list.prev = & wait.task_list;
  err = 0;
  sk = sock->sk;
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    return (-22);
  } else {
  }
  {
  lock_sock(sk);
  }
  if ((unsigned int )sk->sk_type != 5U) {
    err = -95;
    goto out_release;
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 10U) {
    err = -22;
    goto out_release;
  } else {
  }
  ldv_53889:
  {
  tmp___0 = sk_sleep(sk);
  prepare_to_wait(tmp___0, & wait, 1);
  skb = skb_dequeue(& sk->sk_receive_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_53887;
  } else {
  }
  if ((flags & 2048) != 0) {
    err = -11;
    goto ldv_53887;
  } else {
  }
  {
  tmp___1 = get_current();
  tmp___2 = signal_pending(tmp___1);
  }
  if (tmp___2 == 0) {
    {
    ldv_release_sock_143(sk);
    schedule();
    lock_sock(sk);
    }
    goto ldv_53888;
  } else {
  }
  err = -512;
  goto ldv_53887;
  ldv_53888: ;
  goto ldv_53889;
  ldv_53887:
  {
  tmp___3 = sk_sleep(sk);
  finish_wait(tmp___3, & wait);
  }
  if (err != 0) {
    goto out_release;
  } else {
  }
  {
  newsk = skb->sk;
  sock_graft(newsk, newsock);
  skb->sk = (struct sock *)0;
  kfree_skb(skb);
  sk->sk_ack_backlog = (unsigned short )((int )sk->sk_ack_backlog - 1);
  }
  out_release:
  {
  ldv_release_sock_144(sk);
  }
  return (err);
}
}
static int rose_getname(struct socket *sock , struct sockaddr *uaddr , int *uaddr_len ,
                        int peer )
{
  struct full_sockaddr_rose *srose ;
  struct sock *sk ;
  struct rose_sock *rose ;
  int n ;
  {
  {
  srose = (struct full_sockaddr_rose *)uaddr;
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  memset((void *)srose, 0, 64UL);
  }
  if (peer != 0) {
    if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U) {
      return (-107);
    } else {
    }
    srose->srose_family = 11U;
    srose->srose_addr = rose->dest_addr;
    srose->srose_call = rose->dest_call;
    srose->srose_ndigis = (unsigned int )rose->dest_ndigis;
    n = 0;
    goto ldv_53901;
    ldv_53900:
    srose->srose_digis[n] = rose->dest_digis[n];
    n = n + 1;
    ldv_53901: ;
    if (n < (int )rose->dest_ndigis) {
      goto ldv_53900;
    } else {
    }
  } else {
    srose->srose_family = 11U;
    srose->srose_addr = rose->source_addr;
    srose->srose_call = rose->source_call;
    srose->srose_ndigis = (unsigned int )rose->source_ndigis;
    n = 0;
    goto ldv_53904;
    ldv_53903:
    srose->srose_digis[n] = rose->source_digis[n];
    n = n + 1;
    ldv_53904: ;
    if (n < (int )rose->source_ndigis) {
      goto ldv_53903;
    } else {
    }
  }
  *uaddr_len = 64;
  return (0);
}
}
int rose_rx_call_request(struct sk_buff *skb , struct net_device *dev , struct rose_neigh *neigh ,
                         unsigned int lci )
{
  struct sock *sk ;
  struct sock *make ;
  struct rose_sock *make_rose ;
  struct rose_facilities_struct facilities ;
  int n ;
  int tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  {
  skb->sk = (struct sock *)0;
  memset((void *)(& facilities), 0, 128UL);
  tmp = rose_parse_facilities(skb->data + 14UL, skb->len - 14U, & facilities);
  }
  if (tmp == 0) {
    {
    rose_transmit_clear_request(neigh, lci, 3, 76);
    }
    return (0);
  } else {
  }
  {
  sk = rose_find_listener(& facilities.source_addr, & facilities.source_call);
  }
  if ((unsigned long )sk == (unsigned long )((struct sock *)0)) {
    {
    rose_transmit_clear_request(neigh, lci, 5, 120);
    }
    return (0);
  } else {
    {
    tmp___0 = sk_acceptq_is_full((struct sock const *)sk);
    }
    if ((int )tmp___0) {
      {
      rose_transmit_clear_request(neigh, lci, 5, 120);
      }
      return (0);
    } else {
      {
      make = rose_make_new(sk);
      }
      if ((unsigned long )make == (unsigned long )((struct sock *)0)) {
        {
        rose_transmit_clear_request(neigh, lci, 5, 120);
        }
        return (0);
      } else {
      }
    }
  }
  skb->sk = make;
  make->__sk_common.skc_state = 1U;
  make_rose = (struct rose_sock *)make;
  make_rose->lci = lci;
  make_rose->dest_addr = facilities.dest_addr;
  make_rose->dest_call = facilities.dest_call;
  make_rose->dest_ndigis = facilities.dest_ndigis;
  n = 0;
  goto ldv_53918;
  ldv_53917:
  make_rose->dest_digis[n] = facilities.dest_digis[n];
  n = n + 1;
  ldv_53918: ;
  if (n < (int )facilities.dest_ndigis) {
    goto ldv_53917;
  } else {
  }
  make_rose->source_addr = facilities.source_addr;
  make_rose->source_call = facilities.source_call;
  make_rose->source_ndigis = facilities.source_ndigis;
  n = 0;
  goto ldv_53921;
  ldv_53920:
  make_rose->source_digis[n] = facilities.source_digis[n];
  n = n + 1;
  ldv_53921: ;
  if (n < (int )facilities.source_ndigis) {
    goto ldv_53920;
  } else {
  }
  make_rose->neighbour = neigh;
  make_rose->device = dev;
  make_rose->facilities = facilities;
  (make_rose->neighbour)->use = (unsigned short )((int )(make_rose->neighbour)->use + 1);
  if ((unsigned int )((struct rose_sock *)sk)->defer != 0U) {
    make_rose->state = 5U;
  } else {
    {
    rose_write_internal(make, 15);
    make_rose->state = 3U;
    rose_start_idletimer(make);
    }
  }
  {
  make_rose->condition = 0U;
  make_rose->vs = 0U;
  make_rose->va = 0U;
  make_rose->vr = 0U;
  make_rose->vl = 0U;
  sk->sk_ack_backlog = (unsigned short )((int )sk->sk_ack_backlog + 1);
  rose_insert_socket(make);
  skb_queue_head(& sk->sk_receive_queue, skb);
  rose_start_heartbeat(make);
  tmp___1 = sock_flag((struct sock const *)sk, 0);
  }
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    {
    (*(sk->sk_data_ready))(sk);
    }
  } else {
  }
  return (1);
}
}
extern void __compiletime_assert_1054(void) ;
static int rose_sendmsg(struct kiocb *iocb , struct socket *sock , struct msghdr *msg ,
                        size_t len )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  struct sockaddr_rose *usrose ;
  bool __cond ;
  int err ;
  struct full_sockaddr_rose srose ;
  struct sk_buff *skb ;
  unsigned char *asmptr ;
  int n ;
  int size ;
  int qbit ;
  bool tmp ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  unsigned char *tmp___4 ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  __cond = 0;
  if ((int )__cond) {
    {
    __compiletime_assert_1054();
    }
  } else {
  }
  usrose = (struct sockaddr_rose *)msg->msg_name;
  qbit = 0;
  if ((msg->msg_flags & 2147483455U) != 0U) {
    return (-22);
  } else {
  }
  {
  tmp = sock_flag((struct sock const *)sk, 8);
  }
  if ((int )tmp) {
    return (-99);
  } else {
  }
  if (((int )sk->sk_shutdown & 2) != 0) {
    {
    tmp___0 = get_current();
    send_sig(13, tmp___0, 0);
    }
    return (-32);
  } else {
  }
  if ((unsigned long )rose->neighbour == (unsigned long )((struct rose_neigh *)0) || (unsigned long )rose->device == (unsigned long )((struct net_device *)0)) {
    return (-101);
  } else {
  }
  if ((unsigned long )usrose != (unsigned long )((struct sockaddr_rose *)0)) {
    if (msg->msg_namelen != 28 && msg->msg_namelen != 64) {
      return (-22);
    } else {
    }
    {
    memset((void *)(& srose), 0, 64UL);
    memcpy((void *)(& srose), (void const *)usrose, (size_t )msg->msg_namelen);
    tmp___1 = rosecmp(& rose->dest_addr, & srose.srose_addr);
    }
    if (tmp___1 != 0) {
      return (-106);
    } else {
      {
      tmp___2 = ax25cmp((ax25_address const *)(& rose->dest_call), (ax25_address const *)(& srose.srose_call));
      }
      if (tmp___2 != 0) {
        return (-106);
      } else {
      }
    }
    if (srose.srose_ndigis != (unsigned int )rose->dest_ndigis) {
      return (-106);
    } else {
    }
    if (srose.srose_ndigis == (unsigned int )rose->dest_ndigis) {
      n = 0;
      goto ldv_53945;
      ldv_53944:
      {
      tmp___3 = ax25cmp((ax25_address const *)(& rose->dest_digis) + (unsigned long )n,
                        (ax25_address const *)(& srose.srose_digis) + (unsigned long )n);
      }
      if (tmp___3 != 0) {
        return (-106);
      } else {
      }
      n = n + 1;
      ldv_53945: ;
      if ((unsigned int )n < srose.srose_ndigis) {
        goto ldv_53944;
      } else {
      }
    } else {
    }
    if ((unsigned int )srose.srose_family != 11U) {
      return (-22);
    } else {
    }
  } else {
    if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U) {
      return (-107);
    } else {
    }
    srose.srose_family = 11U;
    srose.srose_addr = rose->dest_addr;
    srose.srose_call = rose->dest_call;
    srose.srose_ndigis = (unsigned int )rose->dest_ndigis;
    n = 0;
    goto ldv_53948;
    ldv_53947:
    srose.srose_digis[n] = rose->dest_digis[n];
    n = n + 1;
    ldv_53948: ;
    if (n < (int )rose->dest_ndigis) {
      goto ldv_53947;
    } else {
    }
  }
  if (len > 65535UL) {
    return (-90);
  } else {
  }
  {
  size = (int )((unsigned int )len + 92U);
  skb = sock_alloc_send_skb(sk, (unsigned long )size, (int )msg->msg_flags & 64, & err);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (err);
  } else {
  }
  {
  skb_reserve(skb, 92);
  skb_reset_transport_header(skb);
  skb_put(skb, (unsigned int )len);
  tmp___4 = skb_transport_header((struct sk_buff const *)skb);
  err = memcpy_from_msg((void *)tmp___4, msg, (int )len);
  }
  if (err != 0) {
    {
    kfree_skb(skb);
    }
    return (err);
  } else {
  }
  if ((unsigned int )rose->qbitincl != 0U) {
    {
    qbit = (int )*(skb->data);
    skb_pull(skb, 1U);
    }
  } else {
  }
  {
  asmptr = skb_push(skb, 3U);
  *asmptr = ((unsigned int )((unsigned char )(rose->lci >> 8)) & 15U) | 16U;
  *(asmptr + 1UL) = (unsigned char )rose->lci;
  *(asmptr + 2UL) = 0U;
  }
  if (qbit != 0) {
    *asmptr = (unsigned int )*asmptr | 128U;
  } else {
  }
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U) {
    {
    kfree_skb(skb);
    }
    return (-107);
  } else {
  }
  {
  skb_queue_tail(& sk->sk_write_queue, skb);
  rose_kick(sk);
  }
  return ((int )len);
}
}
extern void __compiletime_assert_1257(void) ;
static int rose_recvmsg(struct kiocb *iocb , struct socket *sock , struct msghdr *msg ,
                        size_t size , int flags )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  size_t copied ;
  unsigned char *asmptr ;
  struct sk_buff *skb ;
  int n ;
  int er ;
  int qbit ;
  struct sockaddr_rose *srose ;
  struct full_sockaddr_rose *full_srose ;
  bool __cond ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) != 1U) {
    return (-107);
  } else {
  }
  {
  skb = skb_recv_datagram(sk, (unsigned int )flags & 4294967231U, flags & 64, & er);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (er);
  } else {
  }
  {
  qbit = (int )((signed char )*(skb->data)) < 0;
  skb_pull(skb, 3U);
  }
  if ((unsigned int )rose->qbitincl != 0U) {
    {
    asmptr = skb_push(skb, 1U);
    *asmptr = (unsigned char )qbit;
    }
  } else {
  }
  {
  skb_reset_transport_header(skb);
  copied = (size_t )skb->len;
  }
  if (copied > size) {
    copied = size;
    msg->msg_flags = msg->msg_flags | 32U;
  } else {
  }
  {
  skb_copy_datagram_msg((struct sk_buff const *)skb, 0, msg, (int )copied);
  }
  if ((unsigned long )msg->msg_name != (unsigned long )((void *)0)) {
    __cond = 0;
    if ((int )__cond) {
      {
      __compiletime_assert_1257();
      }
    } else {
    }
    {
    full_srose = (struct full_sockaddr_rose *)msg->msg_name;
    memset(msg->msg_name, 0, 64UL);
    srose = (struct sockaddr_rose *)msg->msg_name;
    srose->srose_family = 11U;
    srose->srose_addr = rose->dest_addr;
    srose->srose_call = rose->dest_call;
    srose->srose_ndigis = (int )rose->dest_ndigis;
    n = 0;
    }
    goto ldv_53973;
    ldv_53972:
    full_srose->srose_digis[n] = rose->dest_digis[n];
    n = n + 1;
    ldv_53973: ;
    if (n < (int )rose->dest_ndigis) {
      goto ldv_53972;
    } else {
    }
    msg->msg_namelen = 64;
  } else {
  }
  {
  skb_free_datagram(sk, skb);
  }
  return ((int )copied);
}
}
static int rose_ioctl(struct socket *sock , unsigned int cmd , unsigned long arg )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  void *argp ;
  long amount ;
  int tmp ;
  int __ret_pu ;
  unsigned int __pu_val ;
  struct sk_buff *skb ;
  long amount___0 ;
  int __ret_pu___0 ;
  unsigned int __pu_val___0 ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  struct rose_cause_struct rose_cause ;
  unsigned long tmp___5 ;
  struct rose_cause_struct rose_cause___0 ;
  unsigned long tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  unsigned long tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  unsigned long tmp___13 ;
  {
  sk = sock->sk;
  rose = (struct rose_sock *)sk;
  argp = (void *)arg;
  {
  if (cmd == 21521U) {
    goto case_21521;
  } else {
  }
  if (cmd == 21531U) {
    goto case_21531;
  } else {
  }
  if (cmd == 35078U) {
    goto case_35078;
  } else {
  }
  if (cmd == 35079U) {
    goto case_35079;
  } else {
  }
  if (cmd == 35093U) {
    goto case_35093;
  } else {
  }
  if (cmd == 35094U) {
    goto case_35094;
  } else {
  }
  if (cmd == 35095U) {
    goto case_35095;
  } else {
  }
  if (cmd == 35096U) {
    goto case_35096;
  } else {
  }
  if (cmd == 35097U) {
    goto case_35097;
  } else {
  }
  if (cmd == 35098U) {
    goto case_35098;
  } else {
  }
  if (cmd == 35099U) {
    goto case_35099;
  } else {
  }
  if (cmd == 35100U) {
    goto case_35100;
  } else {
  }
  if (cmd == 35101U) {
    goto case_35101;
  } else {
  }
  if (cmd == 35102U) {
    goto case_35102;
  } else {
  }
  if (cmd == 35083U) {
    goto case_35083;
  } else {
  }
  if (cmd == 35084U) {
    goto case_35084;
  } else {
  }
  if (cmd == 35300U) {
    goto case_35300;
  } else {
  }
  if (cmd == 35296U) {
    goto case_35296;
  } else {
  }
  if (cmd == 35297U) {
    goto case_35297;
  } else {
  }
  if (cmd == 35298U) {
    goto case_35298;
  } else {
  }
  if (cmd == 35301U) {
    goto case_35301;
  } else {
  }
  if (cmd == 35299U) {
    goto case_35299;
  } else {
  }
  goto switch_default___1;
  case_21521:
  {
  tmp = sk_wmem_alloc_get((struct sock const *)sk);
  amount = (long )(sk->sk_sndbuf - tmp);
  }
  if (amount < 0L) {
    amount = 0L;
  } else {
  }
  {
  might_fault();
  __pu_val = (unsigned int )amount;
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
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned int *)argp): "ebx");
  goto ldv_53988;
  case_2:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned int *)argp): "ebx");
  goto ldv_53988;
  case_4:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned int *)argp): "ebx");
  goto ldv_53988;
  case_8:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned int *)argp): "ebx");
  goto ldv_53988;
  switch_default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" ((unsigned int *)argp): "ebx");
  goto ldv_53988;
  switch_break___0: ;
  }
  ldv_53988: ;
  return (__ret_pu);
  case_21531:
  {
  amount___0 = 0L;
  skb = skb_peek((struct sk_buff_head const *)(& sk->sk_receive_queue));
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    amount___0 = (long )skb->len;
  } else {
  }
  {
  might_fault();
  __pu_val___0 = (unsigned int )amount___0;
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
                       "c" ((unsigned int *)argp): "ebx");
  goto ldv_54000;
  case_2___0:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)argp): "ebx");
  goto ldv_54000;
  case_4___0:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)argp): "ebx");
  goto ldv_54000;
  case_8___0:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)argp): "ebx");
  goto ldv_54000;
  switch_default___0:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((unsigned int *)argp): "ebx");
  goto ldv_54000;
  switch_break___1: ;
  }
  ldv_54000: ;
  return (__ret_pu___0);
  case_35078:
  {
  tmp___0 = sock_get_timestamp(sk, (struct timeval *)argp);
  }
  return (tmp___0);
  case_35079:
  {
  tmp___1 = sock_get_timestampns(sk, (struct timespec *)argp);
  }
  return (tmp___1);
  case_35093: ;
  case_35094: ;
  case_35095: ;
  case_35096: ;
  case_35097: ;
  case_35098: ;
  case_35099: ;
  case_35100: ;
  case_35101: ;
  case_35102: ;
  return (-22);
  case_35083: ;
  case_35084: ;
  case_35300:
  {
  tmp___2 = capable(12);
  }
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    return (-1);
  } else {
  }
  {
  tmp___4 = rose_rt_ioctl(cmd, argp);
  }
  return (tmp___4);
  case_35296:
  {
  rose_cause.cause = rose->cause;
  rose_cause.diagnostic = rose->diagnostic;
  tmp___5 = copy_to_user(argp, (void const *)(& rose_cause), 2UL);
  }
  return (tmp___5 != 0UL ? -14 : 0);
  case_35297:
  {
  tmp___6 = copy_from_user((void *)(& rose_cause___0), (void const *)argp, 2UL);
  }
  if (tmp___6 != 0UL) {
    return (-14);
  } else {
  }
  rose->cause = rose_cause___0.cause;
  rose->diagnostic = rose_cause___0.diagnostic;
  return (0);
  case_35298:
  {
  tmp___7 = capable(12);
  }
  if (tmp___7) {
    tmp___8 = 0;
  } else {
    tmp___8 = 1;
  }
  if (tmp___8) {
    return (-1);
  } else {
  }
  {
  tmp___9 = ax25cmp((ax25_address const *)(& rose_callsign), & null_ax25_address);
  }
  if (tmp___9 != 0) {
    {
    ax25_listen_release(& rose_callsign, (struct net_device *)0);
    }
  } else {
  }
  {
  tmp___10 = copy_from_user((void *)(& rose_callsign), (void const *)argp, 7UL);
  }
  if (tmp___10 != 0UL) {
    return (-14);
  } else {
  }
  {
  tmp___12 = ax25cmp((ax25_address const *)(& rose_callsign), & null_ax25_address);
  }
  if (tmp___12 != 0) {
    {
    tmp___11 = ax25_listen_register(& rose_callsign, (struct net_device *)0);
    }
    return (tmp___11);
  } else {
  }
  return (0);
  case_35301:
  {
  tmp___13 = copy_to_user(argp, (void const *)(& rose_callsign), 7UL);
  }
  return (tmp___13 != 0UL ? -14 : 0);
  case_35299: ;
  if ((unsigned int )rose->state == 5U) {
    {
    rose_write_internal(sk, 15);
    rose_start_idletimer(sk);
    rose->condition = 0U;
    rose->vs = 0U;
    rose->va = 0U;
    rose->vr = 0U;
    rose->vl = 0U;
    rose->state = 3U;
    }
  } else {
  }
  return (0);
  switch_default___1: ;
  return (-515);
  switch_break: ;
  }
  return (0);
}
}
static void *rose_info_start(struct seq_file *seq , loff_t *pos )
{
  struct hlist_node *tmp ;
  {
  {
  ldv_spin_lock_bh_126(& rose_list_lock);
  tmp = seq_hlist_start_head(& rose_list, *pos);
  }
  return ((void *)tmp);
}
}
static void *rose_info_next(struct seq_file *seq , void *v , loff_t *pos )
{
  struct hlist_node *tmp ;
  {
  {
  tmp = seq_hlist_next(v, & rose_list, pos);
  }
  return ((void *)tmp);
}
}
static void rose_info_stop(struct seq_file *seq , void *v )
{
  {
  {
  ldv_spin_unlock_bh_127(& rose_list_lock);
  }
  return;
}
}
static int rose_info_show(struct seq_file *seq , void *v )
{
  char buf[11U] ;
  char rsbuf[11U] ;
  struct sock *s ;
  struct sock *tmp ;
  struct rose_sock *rose ;
  char const *devname ;
  char const *callsign ;
  struct net_device const *dev ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  int tmp___3 ;
  struct inode *tmp___4 ;
  unsigned long tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  unsigned long tmp___8 ;
  unsigned long tmp___9 ;
  char *tmp___10 ;
  {
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    {
    seq_puts(seq, "dest_addr  dest_call src_addr   src_call  dev   lci neigh st vs vr va   t  t1  t2  t3  hb    idle Snd-Q Rcv-Q inode\n");
    }
  } else {
    {
    tmp = sk_entry((struct hlist_node const *)v);
    s = tmp;
    rose = (struct rose_sock *)s;
    dev = (struct net_device const *)rose->device;
    }
    if ((unsigned long )dev == (unsigned long )((struct net_device const *)0)) {
      devname = "???";
    } else {
      devname = (char const *)(& dev->name);
    }
    {
    tmp___0 = ax2asc((char *)(& buf), (ax25_address const *)(& rose->dest_call));
    tmp___1 = rose2asc((char *)(& rsbuf), (rose_address const *)(& rose->dest_addr));
    seq_printf(seq, "%-10s %-9s ", tmp___1, tmp___0);
    tmp___3 = ax25cmp((ax25_address const *)(& rose->source_call), & null_ax25_address);
    }
    if (tmp___3 == 0) {
      callsign = "??????-?";
    } else {
      {
      tmp___2 = ax2asc((char *)(& buf), (ax25_address const *)(& rose->source_call));
      callsign = (char const *)tmp___2;
      }
    }
    if ((unsigned long )s->sk_socket != (unsigned long )((struct socket *)0)) {
      {
      tmp___4 = SOCK_INODE(s->sk_socket);
      tmp___5 = tmp___4->i_ino;
      }
    } else {
      tmp___5 = 0UL;
    }
    {
    tmp___6 = sk_rmem_alloc_get((struct sock const *)s);
    tmp___7 = sk_wmem_alloc_get((struct sock const *)s);
    tmp___8 = ax25_display_timer(& rose->idletimer);
    tmp___9 = ax25_display_timer(& rose->timer);
    tmp___10 = rose2asc((char *)(& rsbuf), (rose_address const *)(& rose->source_addr));
    seq_printf(seq, "%-10s %-9s %-5s %3.3X %05d  %d  %d  %d  %d %3lu %3lu %3lu %3lu %3lu %3lu/%03lu %5d %5d %ld\n",
               tmp___10, callsign, devname, rose->lci & 4095U, (unsigned long )rose->neighbour != (unsigned long )((struct rose_neigh *)0) ? (rose->neighbour)->number : 0U,
               (int )rose->state, (int )rose->vs, (int )rose->vr, (int )rose->va,
               tmp___9 / 250UL, rose->t1 / 250UL, rose->t2 / 250UL, rose->t3 / 250UL,
               rose->hb / 250UL, tmp___8 / 15000UL, rose->idle / 15000UL, tmp___7,
               tmp___6, tmp___5);
    }
  }
  return (0);
}
}
static struct seq_operations const rose_info_seqops = {& rose_info_start, & rose_info_stop, & rose_info_next, & rose_info_show};
static int rose_info_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_147(file, & rose_info_seqops);
  }
  return (tmp);
}
}
static struct file_operations const rose_info_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rose_info_open,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct net_proto_family const rose_family_ops = {11, & rose_create, & __this_module};
static struct proto_ops const rose_proto_ops =
     {11, & __this_module, & rose_release, & rose_bind, & rose_connect, & sock_no_socketpair,
    & rose_accept, & rose_getname, & datagram_poll, & rose_ioctl, 0, & rose_listen,
    & sock_no_shutdown, & rose_setsockopt, & rose_getsockopt, 0, 0, & rose_sendmsg,
    & rose_recvmsg, & sock_no_mmap, & sock_no_sendpage, 0, 0};
static struct notifier_block rose_dev_notifier = {& rose_device_event, 0, 0};
static struct net_device **dev_rose ;
static struct ax25_protocol rose_pid = {0, 1U, & rose_route_frame};
static struct ax25_linkfail rose_linkfail_notifier = {{0, 0}, & rose_link_failed};
static int rose_proto_init(void)
{
  int i ;
  int rc ;
  void *tmp ;
  struct net_device *dev ;
  char name[16U] ;
  {
  if ((unsigned int )rose_ndevs > 268435455U) {
    {
    printk("\vROSE: rose_proto_init - rose_ndevs parameter to large\n");
    rc = -22;
    }
    goto out;
  } else {
  }
  {
  rc = proto_register(& rose_proto, 0);
  }
  if (rc != 0) {
    goto out;
  } else {
  }
  {
  rose_callsign = null_ax25_address;
  tmp = kzalloc((unsigned long )rose_ndevs * 8UL, 208U);
  dev_rose = (struct net_device **)tmp;
  }
  if ((unsigned long )dev_rose == (unsigned long )((struct net_device **)0)) {
    {
    printk("\vROSE: rose_proto_init - unable to allocate device structure\n");
    rc = -12;
    }
    goto out_proto_unregister;
  } else {
  }
  i = 0;
  goto ldv_54076;
  ldv_54075:
  {
  sprintf((char *)(& name), "rose%d", i);
  dev = ldv_alloc_netdev_mqs_148(0, (char const *)(& name), 0, & rose_setup, 1U,
                                 1U);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    {
    printk("\vROSE: rose_proto_init - unable to allocate memory\n");
    rc = -12;
    }
    goto fail;
  } else {
  }
  {
  rc = ldv_register_netdev_149(dev);
  }
  if (rc != 0) {
    {
    printk("\vROSE: netdevice registration failed\n");
    ldv_free_netdev_150(dev);
    }
    goto fail;
  } else {
  }
  {
  rose_set_lockdep_key(dev);
  *(dev_rose + (unsigned long )i) = dev;
  i = i + 1;
  }
  ldv_54076: ;
  if (i < rose_ndevs) {
    goto ldv_54075;
  } else {
  }
  {
  sock_register(& rose_family_ops);
  ldv_register_netdevice_notifier_151(& rose_dev_notifier);
  ax25_register_pid(& rose_pid);
  ax25_linkfail_register(& rose_linkfail_notifier);
  rose_register_sysctl();
  rose_loopback_init();
  rose_add_loopback_neigh();
  proc_create("rose", 292, init_net.proc_net, & rose_info_fops);
  proc_create("rose_neigh", 292, init_net.proc_net, & rose_neigh_fops);
  proc_create("rose_nodes", 292, init_net.proc_net, & rose_nodes_fops);
  proc_create("rose_routes", 292, init_net.proc_net, & rose_routes_fops);
  }
  out: ;
  return (rc);
  fail: ;
  goto ldv_54079;
  ldv_54078:
  {
  ldv_unregister_netdev_152(*(dev_rose + (unsigned long )i));
  ldv_free_netdev_153(*(dev_rose + (unsigned long )i));
  }
  ldv_54079:
  i = i - 1;
  if (i >= 0) {
    goto ldv_54078;
  } else {
  }
  {
  kfree((void const *)dev_rose);
  }
  out_proto_unregister:
  {
  proto_unregister(& rose_proto);
  }
  goto out;
}
}
static void rose_exit(void)
{
  int i ;
  int tmp ;
  struct net_device *dev ;
  {
  {
  remove_proc_entry("rose", init_net.proc_net);
  remove_proc_entry("rose_neigh", init_net.proc_net);
  remove_proc_entry("rose_nodes", init_net.proc_net);
  remove_proc_entry("rose_routes", init_net.proc_net);
  rose_loopback_clear();
  rose_rt_free();
  ax25_protocol_release(1U);
  ax25_linkfail_release(& rose_linkfail_notifier);
  tmp = ax25cmp((ax25_address const *)(& rose_callsign), & null_ax25_address);
  }
  if (tmp != 0) {
    {
    ax25_listen_release(& rose_callsign, (struct net_device *)0);
    }
  } else {
  }
  {
  rose_unregister_sysctl();
  ldv_unregister_netdevice_notifier_154(& rose_dev_notifier);
  sock_unregister(11);
  i = 0;
  }
  goto ldv_54113;
  ldv_54112:
  dev = *(dev_rose + (unsigned long )i);
  if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
    {
    ldv_unregister_netdev_155(dev);
    ldv_free_netdev_156(dev);
    }
  } else {
  }
  i = i + 1;
  ldv_54113: ;
  if (i < rose_ndevs) {
    goto ldv_54112;
  } else {
  }
  {
  kfree((void const *)dev_rose);
  proto_unregister(& rose_proto);
  }
  return;
}
}
void ldv_EMGentry_exit_rose_exit_27_2(void (*arg0)(void) ) ;
int ldv_EMGentry_init_rose_proto_init_27_19(int (*arg0)(void) ) ;
struct net_device *ldv_alloc_netdev_mqs(struct net_device *arg0 , int arg1 , char *arg2 ,
                                        unsigned char arg3 , void (*arg4)(struct net_device * ) ,
                                        unsigned int arg5 , unsigned int arg6 ) ;
void ldv_alloc_netdev_mqs_setup_18_3(void (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
void ldv_dispatch_deregister_23_1(struct net_device *arg0 ) ;
void ldv_dispatch_deregister_25_1(struct notifier_block *arg0 ) ;
void ldv_dispatch_deregister_dummy_factory_19_27_4(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_12_27_5(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_13_27_6(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_14_27_7(void) ;
void ldv_dispatch_deregister_dummy_resourceless_instance_9_27_8(void) ;
void ldv_dispatch_deregister_file_operations_instance_7_27_9(void) ;
void ldv_dispatch_deregister_seq_instance_11_27_10(void) ;
void ldv_dispatch_instance_register_17_3(struct timer_list *arg0 ) ;
void ldv_dispatch_register_21_4(struct net_device *arg0 ) ;
void ldv_dispatch_register_22_1(struct seq_file *arg0 , struct seq_operations *arg1 ) ;
void ldv_dispatch_register_26_2(struct notifier_block *arg0 ) ;
void ldv_dispatch_register_dummy_factory_19_27_11(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_12_27_12(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_13_27_13(void) ;
void ldv_dispatch_register_dummy_resourceless_instance_14_27_14(void) ;
void ldv_dispatch_register_file_operations_instance_7_27_15(void) ;
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct ax25_cb * ,
                                                                int ) , struct ax25_cb *arg1 ,
                                                   int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct sk_buff * ,
                                                               struct ax25_cb * ) ,
                                                   struct sk_buff *arg1 , struct ax25_cb *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct sk_buff * ,
                                                               struct net_device * ,
                                                               unsigned short , void * ,
                                                               void * , unsigned int ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ,
                                                   unsigned short arg3 , void *arg4 ,
                                                   void *arg5 , unsigned int arg6 ) ;
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct notifier_block * ,
                                                               unsigned long , void * ) ,
                                                   struct notifier_block *arg1 , unsigned long arg2 ,
                                                   void *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct net_device * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  void *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_4_7(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                         struct net_device * ) ,
                                                  struct sk_buff *arg1 , struct net_device *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_5_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_5_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_5_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_5_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_5_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_5_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_5_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_6_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_6_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_6_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_6_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_6_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_6_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_6_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 ) ;
void ldv_dummy_resourceless_instance_callback_7_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 ) ;
void ldv_dummy_resourceless_instance_callback_7_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_7_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 ) ;
void ldv_dummy_resourceless_instance_callback_7_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 ) ;
void ldv_dummy_resourceless_instance_callback_7_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_7_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 ) ;
void ldv_dummy_resourceless_instance_callback_7_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 ) ;
void ldv_dummy_resourceless_instance_callback_7_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 ) ;
void ldv_entry_EMGentry_27(void *arg0 ) ;
int main(void) ;
void ldv_file_operations_file_operations_instance_0(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_1(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_2(void *arg0 ) ;
void ldv_file_operations_file_operations_instance_3(void *arg0 ) ;
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_file_operations_instance_write_0_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
                                                         unsigned long , long long * ) ,
                                            struct file *arg1 , char *arg2 , unsigned long arg3 ,
                                            long long *arg4 ) ;
void ldv_free_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_net_dummy_resourceless_instance_4(void *arg0 ) ;
void ldv_proto_dummy_resourceless_instance_5(void *arg0 ) ;
void ldv_proto_dummy_resourceless_instance_6(void *arg0 ) ;
void ldv_proto_dummy_resourceless_instance_7(void *arg0 ) ;
int ldv_register_netdev(int arg0 , struct net_device *arg1 ) ;
int ldv_register_netdev_open_21_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_register_netdevice_notifier(int arg0 , struct notifier_block *arg1 ) ;
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 ) ;
void ldv_seq_operations_seq_instance_10(void *arg0 ) ;
void ldv_seq_operations_seq_instance_11(void *arg0 ) ;
void ldv_seq_operations_seq_instance_8(void *arg0 ) ;
void ldv_seq_operations_seq_instance_9(void *arg0 ) ;
void ldv_struct_ax25_linkfail_dummy_resourceless_instance_12(void *arg0 ) ;
void ldv_struct_ax25_protocol_dummy_resourceless_instance_13(void *arg0 ) ;
void ldv_struct_header_ops_dummy_resourceless_instance_14(void *arg0 ) ;
void ldv_struct_notifier_block_dummy_resourceless_instance_15(void *arg0 ) ;
void ldv_timer_dummy_factory_17(void *arg0 ) ;
void ldv_timer_instance_callback_16_2(void (*arg0)(unsigned long ) , unsigned long arg1 ) ;
void ldv_timer_timer_instance_16(void *arg0 ) ;
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 ) ;
void ldv_unregister_netdev_stop_23_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 ) ;
int ldv_unregister_netdevice_notifier(int arg0 , struct notifier_block *arg1 ) ;
struct ldv_thread ldv_thread_0 ;
struct ldv_thread ldv_thread_12 ;
struct ldv_thread ldv_thread_13 ;
struct ldv_thread ldv_thread_14 ;
struct ldv_thread ldv_thread_15 ;
struct ldv_thread ldv_thread_16 ;
struct ldv_thread ldv_thread_17 ;
struct ldv_thread ldv_thread_27 ;
struct ldv_thread ldv_thread_4 ;
struct ldv_thread ldv_thread_5 ;
struct ldv_thread ldv_thread_6 ;
struct ldv_thread ldv_thread_7 ;
struct ldv_thread ldv_thread_8 ;
void ldv_EMGentry_exit_rose_exit_27_2(void (*arg0)(void) )
{
  {
  {
  rose_exit();
  }
  return;
}
}
int ldv_EMGentry_init_rose_proto_init_27_19(int (*arg0)(void) )
{
  int tmp ;
  {
  {
  tmp = rose_proto_init();
  }
  return (tmp);
}
}
struct net_device *ldv_alloc_netdev_mqs(struct net_device *arg0 , int arg1 , char *arg2 ,
                                        unsigned char arg3 , void (*arg4)(struct net_device * ) ,
                                        unsigned int arg5 , unsigned int arg6 )
{
  struct net_device *ldv_18_netdev_net_device ;
  void (*ldv_18_setup_setup)(struct net_device * ) ;
  void *tmp ;
  int tmp___0 ;
  {
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    tmp = ldv_xmalloc(3264UL);
    ldv_18_netdev_net_device = (struct net_device *)tmp;
    ldv_18_setup_setup = (void (*)(struct net_device * ))((long )arg3);
    ldv_alloc_netdev_mqs_setup_18_3(ldv_18_setup_setup, ldv_18_netdev_net_device);
    }
    return (ldv_18_netdev_net_device);
    return (arg0);
  } else {
    return ((struct net_device *)0);
    return (arg0);
  }
  return (arg0);
}
}
void ldv_alloc_netdev_mqs_setup_18_3(void (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  rose_setup(arg1);
  }
  return;
}
}
void ldv_dispatch_deregister_23_1(struct net_device *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_25_1(struct notifier_block *arg0 )
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_factory_19_27_4(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_12_27_5(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_13_27_6(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_14_27_7(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_dummy_resourceless_instance_9_27_8(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_file_operations_instance_7_27_9(void)
{
  {
  return;
}
}
void ldv_dispatch_deregister_seq_instance_11_27_10(void)
{
  {
  return;
}
}
void ldv_dispatch_instance_register_17_3(struct timer_list *arg0 )
{
  struct ldv_struct_timer_instance_16 *cf_arg_16 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_16 = (struct ldv_struct_timer_instance_16 *)tmp;
  cf_arg_16->arg0 = arg0;
  ldv_timer_timer_instance_16((void *)cf_arg_16);
  }
  return;
}
}
void ldv_dispatch_register_21_4(struct net_device *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_4 *cf_arg_4 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_4 = (struct ldv_struct_dummy_resourceless_instance_4 *)tmp;
  cf_arg_4->arg0 = arg0;
  ldv_net_dummy_resourceless_instance_4((void *)cf_arg_4);
  }
  return;
}
}
void ldv_dispatch_register_22_1(struct seq_file *arg0 , struct seq_operations *arg1 )
{
  struct ldv_struct_seq_instance_8 *cf_arg_8 ;
  struct ldv_struct_seq_instance_8 *cf_arg_9 ;
  struct ldv_struct_seq_instance_8 *cf_arg_10 ;
  struct ldv_struct_seq_instance_8 *cf_arg_11 ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
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
  goto switch_default;
  case_0:
  {
  tmp___0 = ldv_xmalloc(24UL);
  cf_arg_8 = (struct ldv_struct_seq_instance_8 *)tmp___0;
  cf_arg_8->arg0 = arg0;
  cf_arg_8->arg1 = arg1;
  ldv_seq_operations_seq_instance_8((void *)cf_arg_8);
  }
  goto ldv_55022;
  case_1:
  {
  tmp___1 = ldv_xmalloc(24UL);
  cf_arg_9 = (struct ldv_struct_seq_instance_8 *)tmp___1;
  cf_arg_9->arg0 = arg0;
  cf_arg_9->arg1 = arg1;
  ldv_seq_operations_seq_instance_9((void *)cf_arg_9);
  }
  goto ldv_55022;
  case_2:
  {
  tmp___2 = ldv_xmalloc(24UL);
  cf_arg_10 = (struct ldv_struct_seq_instance_8 *)tmp___2;
  cf_arg_10->arg0 = arg0;
  cf_arg_10->arg1 = arg1;
  ldv_seq_operations_seq_instance_10((void *)cf_arg_10);
  }
  goto ldv_55022;
  case_3:
  {
  tmp___3 = ldv_xmalloc(24UL);
  cf_arg_11 = (struct ldv_struct_seq_instance_8 *)tmp___3;
  cf_arg_11->arg0 = arg0;
  cf_arg_11->arg1 = arg1;
  ldv_seq_operations_seq_instance_11((void *)cf_arg_11);
  }
  goto ldv_55022;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  ldv_55022: ;
  return;
}
}
void ldv_dispatch_register_26_2(struct notifier_block *arg0 )
{
  struct ldv_struct_dummy_resourceless_instance_15 *cf_arg_15 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(16UL);
  cf_arg_15 = (struct ldv_struct_dummy_resourceless_instance_15 *)tmp;
  cf_arg_15->arg0 = arg0;
  ldv_struct_notifier_block_dummy_resourceless_instance_15((void *)cf_arg_15);
  }
  return;
}
}
void ldv_dispatch_register_dummy_factory_19_27_11(void)
{
  struct ldv_struct_EMGentry_27 *cf_arg_17 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_17 = (struct ldv_struct_EMGentry_27 *)tmp;
  ldv_timer_dummy_factory_17((void *)cf_arg_17);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_12_27_12(void)
{
  struct ldv_struct_EMGentry_27 *cf_arg_12 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_12 = (struct ldv_struct_EMGentry_27 *)tmp;
  ldv_struct_ax25_linkfail_dummy_resourceless_instance_12((void *)cf_arg_12);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_13_27_13(void)
{
  struct ldv_struct_EMGentry_27 *cf_arg_13 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_13 = (struct ldv_struct_EMGentry_27 *)tmp;
  ldv_struct_ax25_protocol_dummy_resourceless_instance_13((void *)cf_arg_13);
  }
  return;
}
}
void ldv_dispatch_register_dummy_resourceless_instance_14_27_14(void)
{
  struct ldv_struct_EMGentry_27 *cf_arg_14 ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_14 = (struct ldv_struct_EMGentry_27 *)tmp;
  ldv_struct_header_ops_dummy_resourceless_instance_14((void *)cf_arg_14);
  }
  return;
}
}
void ldv_dispatch_register_file_operations_instance_7_27_15(void)
{
  struct ldv_struct_EMGentry_27 *cf_arg_0 ;
  struct ldv_struct_EMGentry_27 *cf_arg_1 ;
  struct ldv_struct_EMGentry_27 *cf_arg_2 ;
  struct ldv_struct_EMGentry_27 *cf_arg_3 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  {
  tmp = ldv_xmalloc(4UL);
  cf_arg_0 = (struct ldv_struct_EMGentry_27 *)tmp;
  ldv_file_operations_file_operations_instance_0((void *)cf_arg_0);
  tmp___0 = ldv_xmalloc(4UL);
  cf_arg_1 = (struct ldv_struct_EMGentry_27 *)tmp___0;
  ldv_file_operations_file_operations_instance_1((void *)cf_arg_1);
  tmp___1 = ldv_xmalloc(4UL);
  cf_arg_2 = (struct ldv_struct_EMGentry_27 *)tmp___1;
  ldv_file_operations_file_operations_instance_2((void *)cf_arg_2);
  tmp___2 = ldv_xmalloc(4UL);
  cf_arg_3 = (struct ldv_struct_EMGentry_27 *)tmp___2;
  ldv_file_operations_file_operations_instance_3((void *)cf_arg_3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_12_3(void (*arg0)(struct ax25_cb * ,
                                                                int ) , struct ax25_cb *arg1 ,
                                                   int arg2 )
{
  {
  {
  rose_link_failed(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_13_3(int (*arg0)(struct sk_buff * ,
                                                               struct ax25_cb * ) ,
                                                   struct sk_buff *arg1 , struct ax25_cb *arg2 )
{
  {
  {
  rose_route_frame(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_15_3(int (*arg0)(struct notifier_block * ,
                                                               unsigned long , void * ) ,
                                                   struct notifier_block *arg1 , unsigned long arg2 ,
                                                   void *arg3 )
{
  {
  {
  rose_device_event(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_create(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_getname(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 )
{
  {
  {
  rose_getsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  rose_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  rose_listen(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 )
{
  {
  {
  rose_accept(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 )
{
  {
  {
  sock_no_mmap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 )
{
  {
  {
  datagram_poll(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 )
{
  {
  {
  rose_bind(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 )
{
  {
  {
  rose_recvmsg(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 )
{
  {
  {
  rose_release(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 )
{
  {
  {
  rose_sendmsg(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 )
{
  {
  {
  sock_no_sendpage(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 )
{
  {
  {
  rose_setsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  sock_no_shutdown(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 )
{
  {
  {
  sock_no_socketpair(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 )
{
  {
  {
  rose_connect(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_create(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_getname(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 )
{
  {
  {
  rose_getsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  rose_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  rose_listen(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 )
{
  {
  {
  rose_accept(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 )
{
  {
  {
  sock_no_mmap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 )
{
  {
  {
  datagram_poll(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 )
{
  {
  {
  rose_bind(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 )
{
  {
  {
  rose_recvmsg(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 )
{
  {
  {
  rose_release(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 )
{
  {
  {
  rose_sendmsg(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 )
{
  {
  {
  sock_no_sendpage(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 )
{
  {
  {
  rose_setsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  sock_no_shutdown(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 )
{
  {
  {
  sock_no_socketpair(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 )
{
  {
  {
  rose_connect(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_12(int (*arg0)(struct net * , struct socket * ,
                                                               int , int ) , struct net *arg1 ,
                                                   struct socket *arg2 , int arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_create(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_15(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int * , int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int *arg3 ,
                                                   int arg4 )
{
  {
  {
  rose_getname(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_18(int (*arg0)(struct socket * , int ,
                                                               int , char * , int * ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , int *arg5 )
{
  {
  {
  rose_getsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_21(int (*arg0)(struct socket * , unsigned int ,
                                                               unsigned long ) ,
                                                   struct socket *arg1 , unsigned int arg2 ,
                                                   unsigned long arg3 )
{
  {
  {
  rose_ioctl(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_24(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  rose_listen(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_3(int (*arg0)(struct socket * , struct socket * ,
                                                              int ) , struct socket *arg1 ,
                                                  struct socket *arg2 , int arg3 )
{
  {
  {
  rose_accept(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_30(int (*arg0)(struct file * , struct socket * ,
                                                               struct vm_area_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct vm_area_struct *arg3 )
{
  {
  {
  sock_no_mmap(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_32(unsigned int (*arg0)(struct file * ,
                                                                        struct socket * ,
                                                                        struct poll_table_struct * ) ,
                                                   struct file *arg1 , struct socket *arg2 ,
                                                   struct poll_table_struct *arg3 )
{
  {
  {
  datagram_poll(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_33(int (*arg0)(struct socket * , struct sockaddr * ,
                                                               int ) , struct socket *arg1 ,
                                                   struct sockaddr *arg2 , int arg3 )
{
  {
  {
  rose_bind(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_39(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ,
                                                               int ) , struct kiocb *arg1 ,
                                                   struct socket *arg2 , struct msghdr *arg3 ,
                                                   unsigned long arg4 , int arg5 )
{
  {
  {
  rose_recvmsg(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_42(int (*arg0)(struct socket * ) ,
                                                   struct socket *arg1 )
{
  {
  {
  rose_release(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_43(int (*arg0)(struct kiocb * , struct socket * ,
                                                               struct msghdr * , unsigned long ) ,
                                                   struct kiocb *arg1 , struct socket *arg2 ,
                                                   struct msghdr *arg3 , unsigned long arg4 )
{
  {
  {
  rose_sendmsg(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_46(long (*arg0)(struct socket * ,
                                                                struct page * , int ,
                                                                unsigned long , int ) ,
                                                   struct socket *arg1 , struct page *arg2 ,
                                                   int arg3 , unsigned long arg4 ,
                                                   int arg5 )
{
  {
  {
  sock_no_sendpage(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_49(int (*arg0)(struct socket * , int ,
                                                               int , char * , unsigned int ) ,
                                                   struct socket *arg1 , int arg2 ,
                                                   int arg3 , char *arg4 , unsigned int arg5 )
{
  {
  {
  rose_setsockopt(arg1, arg2, arg3, arg4, arg5);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_52(int (*arg0)(struct socket * , int ) ,
                                                   struct socket *arg1 , int arg2 )
{
  {
  {
  sock_no_shutdown(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_55(int (*arg0)(struct socket * , struct socket * ) ,
                                                   struct socket *arg1 , struct socket *arg2 )
{
  {
  {
  sock_no_socketpair(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_9(int (*arg0)(struct socket * , struct sockaddr * ,
                                                              int , int ) , struct socket *arg1 ,
                                                  struct sockaddr *arg2 , int arg3 ,
                                                  int arg4 )
{
  {
  {
  rose_connect(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_entry_EMGentry_27(void *arg0 )
{
  void (*ldv_27_exit_rose_exit_default)(void) ;
  int (*ldv_27_init_rose_proto_init_default)(void) ;
  int ldv_27_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_27_ret_default = ldv_EMGentry_init_rose_proto_init_27_19(ldv_27_init_rose_proto_init_default);
  ldv_27_ret_default = ldv_ldv_post_init_157(ldv_27_ret_default);
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_27_ret_default != 0);
    ldv_ldv_check_final_state_158();
    ldv_stop();
    }
    return;
  } else {
    {
    ldv_assume(ldv_27_ret_default == 0);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dispatch_register_file_operations_instance_7_27_15();
      ldv_dispatch_register_dummy_resourceless_instance_14_27_14();
      ldv_dispatch_register_dummy_resourceless_instance_13_27_13();
      ldv_dispatch_register_dummy_resourceless_instance_12_27_12();
      ldv_dispatch_register_dummy_factory_19_27_11();
      ldv_dispatch_deregister_seq_instance_11_27_10();
      ldv_dispatch_deregister_file_operations_instance_7_27_9();
      ldv_dispatch_deregister_dummy_resourceless_instance_9_27_8();
      ldv_dispatch_deregister_dummy_resourceless_instance_14_27_7();
      ldv_dispatch_deregister_dummy_resourceless_instance_13_27_6();
      ldv_dispatch_deregister_dummy_resourceless_instance_12_27_5();
      ldv_dispatch_deregister_dummy_factory_19_27_4();
      }
    } else {
    }
    {
    ldv_EMGentry_exit_rose_exit_27_2(ldv_27_exit_rose_exit_default);
    ldv_ldv_check_final_state_159();
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
  ldv_ldv_initialize_160();
  ldv_entry_EMGentry_27((void *)0);
  }
return 0;
}
}
void ldv_file_operations_file_operations_instance_0(void *arg0 )
{
  struct file_operations *ldv_0_container_file_operations ;
  char *ldv_0_ldv_param_4_1_default ;
  long long *ldv_0_ldv_param_4_3_default ;
  struct file *ldv_0_resource_file ;
  struct inode *ldv_0_resource_inode ;
  int ldv_0_ret_default ;
  unsigned long ldv_0_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_0_ret_default = 1;
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
  case_2: ;
  goto ldv_call_0;
  goto ldv_call_0;
  case_3: ;
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
int ldv_file_operations_instance_probe_0_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = rose_info_open(arg1, arg2);
  }
  return (tmp);
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
void ldv_file_operations_instance_write_1_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_2_4(long (*arg0)(struct file * , char * ,
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
void ldv_file_operations_instance_write_3_4(long (*arg0)(struct file * , char * ,
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
void ldv_free_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_20_netdev_net_device ;
  {
  {
  ldv_20_netdev_net_device = arg1;
  ldv_free((void *)ldv_20_netdev_net_device);
  }
  return;
  return;
}
}
void ldv_net_dummy_resourceless_instance_4(void *arg0 )
{
  int (*ldv_4_callback_ndo_set_mac_address)(struct net_device * , void * ) ;
  enum netdev_tx (*ldv_4_callback_ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
  struct net_device *ldv_4_container_net_device ;
  struct sk_buff *ldv_4_container_struct_sk_buff_ptr ;
  struct ldv_struct_dummy_resourceless_instance_4 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_4 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_4 *)0)) {
    {
    ldv_4_container_net_device = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_4;
  return;
  ldv_call_4:
  {
  tmp = ldv_undef_int();
  }
  {
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
  goto switch_default;
  case_1:
  {
  ldv_dummy_resourceless_instance_callback_4_7(ldv_4_callback_ndo_start_xmit, ldv_4_container_struct_sk_buff_ptr,
                                               ldv_4_container_net_device);
  }
  goto ldv_call_4;
  case_2:
  {
  ldv_dummy_resourceless_instance_callback_4_3(ldv_4_callback_ndo_set_mac_address,
                                               ldv_4_container_net_device, (void *)ldv_4_container_struct_sk_buff_ptr);
  }
  goto ldv_call_4;
  goto ldv_call_4;
  case_3: ;
  return;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_proto_dummy_resourceless_instance_5(void *arg0 )
{
  int (*ldv_5_callback_accept)(struct socket * , struct socket * , int ) ;
  int (*ldv_5_callback_connect)(struct socket * , struct sockaddr * , int , int ) ;
  int (*ldv_5_callback_create)(struct net * , struct socket * , int , int ) ;
  int (*ldv_5_callback_getname)(struct socket * , struct sockaddr * , int * , int ) ;
  int (*ldv_5_callback_getsockopt)(struct socket * , int , int , char * , int * ) ;
  int (*ldv_5_callback_ioctl)(struct socket * , unsigned int , unsigned long ) ;
  int (*ldv_5_callback_listen)(struct socket * , int ) ;
  long long (*ldv_5_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_5_callback_mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
  int (*ldv_5_callback_open)(struct inode * , struct file * ) ;
  unsigned int (*ldv_5_callback_poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
  int (*ldv_5_callback_probe)(struct socket * , struct sockaddr * , int ) ;
  long (*ldv_5_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  int (*ldv_5_callback_recvmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long , int ) ;
  int (*ldv_5_callback_release)(struct socket * ) ;
  int (*ldv_5_callback_sendmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long ) ;
  long (*ldv_5_callback_sendpage)(struct socket * , struct page * , int , unsigned long ,
                                  int ) ;
  int (*ldv_5_callback_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
  int (*ldv_5_callback_shutdown)(struct socket * , int ) ;
  int (*ldv_5_callback_socketpair)(struct socket * , struct socket * ) ;
  struct socket *ldv_5_container_socket ;
  struct file *ldv_5_container_struct_file_ptr ;
  struct inode *ldv_5_container_struct_inode_ptr ;
  struct kiocb *ldv_5_container_struct_kiocb_ptr ;
  struct msghdr *ldv_5_container_struct_msghdr_ptr ;
  struct net *ldv_5_container_struct_net_ptr ;
  struct page *ldv_5_container_struct_page_ptr ;
  struct poll_table_struct *ldv_5_container_struct_poll_table_struct_ptr ;
  struct sockaddr *ldv_5_container_struct_sockaddr_ptr ;
  struct vm_area_struct *ldv_5_container_struct_vm_area_struct_ptr ;
  int ldv_5_ldv_param_12_2_default ;
  int ldv_5_ldv_param_12_3_default ;
  int *ldv_5_ldv_param_15_2_default ;
  int ldv_5_ldv_param_15_3_default ;
  int ldv_5_ldv_param_18_1_default ;
  int ldv_5_ldv_param_18_2_default ;
  char *ldv_5_ldv_param_18_3_default ;
  int *ldv_5_ldv_param_18_4_default ;
  unsigned int ldv_5_ldv_param_21_1_default ;
  unsigned long ldv_5_ldv_param_21_2_default ;
  int ldv_5_ldv_param_24_1_default ;
  long long ldv_5_ldv_param_27_1_default ;
  int ldv_5_ldv_param_27_2_default ;
  int ldv_5_ldv_param_33_2_default ;
  char *ldv_5_ldv_param_36_1_default ;
  unsigned long ldv_5_ldv_param_36_2_default ;
  long long *ldv_5_ldv_param_36_3_default ;
  unsigned long ldv_5_ldv_param_39_3_default ;
  int ldv_5_ldv_param_39_4_default ;
  struct socket *ldv_5_ldv_param_3_1_default ;
  int ldv_5_ldv_param_3_2_default ;
  unsigned long ldv_5_ldv_param_43_3_default ;
  int ldv_5_ldv_param_46_2_default ;
  unsigned long ldv_5_ldv_param_46_3_default ;
  int ldv_5_ldv_param_46_4_default ;
  int ldv_5_ldv_param_49_1_default ;
  int ldv_5_ldv_param_49_2_default ;
  char *ldv_5_ldv_param_49_3_default ;
  unsigned int ldv_5_ldv_param_49_4_default ;
  int ldv_5_ldv_param_52_1_default ;
  struct socket *ldv_5_ldv_param_55_1_default ;
  int ldv_5_ldv_param_9_2_default ;
  int ldv_5_ldv_param_9_3_default ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_5_container_struct_net_ptr = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_5;
  return;
  ldv_call_5:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    {
    tmp = ldv_xmalloc(48UL);
    ldv_5_ldv_param_3_1_default = (struct socket *)tmp;
    tmp___0 = ldv_undef_int();
    }
    {
    if (tmp___0 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___0 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___0 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___0 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___0 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___0 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___0 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___0 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___0 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___0 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___0 == 11) {
      goto case_11;
    } else {
    }
    if (tmp___0 == 12) {
      goto case_12;
    } else {
    }
    if (tmp___0 == 13) {
      goto case_13;
    } else {
    }
    if (tmp___0 == 14) {
      goto case_14;
    } else {
    }
    if (tmp___0 == 15) {
      goto case_15;
    } else {
    }
    if (tmp___0 == 16) {
      goto case_16;
    } else {
    }
    if (tmp___0 == 17) {
      goto case_17;
    } else {
    }
    if (tmp___0 == 18) {
      goto case_18;
    } else {
    }
    if (tmp___0 == 19) {
      goto case_19;
    } else {
    }
    if (tmp___0 == 20) {
      goto case_20;
    } else {
    }
    goto switch_default;
    case_1:
    {
    tmp___1 = ldv_xmalloc(48UL);
    ldv_5_ldv_param_55_1_default = (struct socket *)tmp___1;
    ldv_dummy_resourceless_instance_callback_5_55(ldv_5_callback_socketpair, ldv_5_container_socket,
                                                  ldv_5_ldv_param_55_1_default);
    ldv_free((void *)ldv_5_ldv_param_55_1_default);
    }
    goto ldv_55814;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_5_52(ldv_5_callback_shutdown, ldv_5_container_socket,
                                                  ldv_5_ldv_param_52_1_default);
    }
    goto ldv_55814;
    case_3:
    {
    tmp___2 = ldv_xmalloc(1UL);
    ldv_5_ldv_param_49_3_default = (char *)tmp___2;
    ldv_dummy_resourceless_instance_callback_5_49(ldv_5_callback_setsockopt, ldv_5_container_socket,
                                                  ldv_5_ldv_param_49_1_default, ldv_5_ldv_param_49_2_default,
                                                  ldv_5_ldv_param_49_3_default, ldv_5_ldv_param_49_4_default);
    ldv_free((void *)ldv_5_ldv_param_49_3_default);
    }
    goto ldv_55814;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_5_46(ldv_5_callback_sendpage, ldv_5_container_socket,
                                                  ldv_5_container_struct_page_ptr,
                                                  ldv_5_ldv_param_46_2_default, ldv_5_ldv_param_46_3_default,
                                                  ldv_5_ldv_param_46_4_default);
    }
    goto ldv_55814;
    case_5:
    {
    ldv_dummy_resourceless_instance_callback_5_43(ldv_5_callback_sendmsg, ldv_5_container_struct_kiocb_ptr,
                                                  ldv_5_container_socket, ldv_5_container_struct_msghdr_ptr,
                                                  ldv_5_ldv_param_43_3_default);
    }
    goto ldv_55814;
    case_6:
    {
    ldv_dummy_resourceless_instance_callback_5_42(ldv_5_callback_release, ldv_5_container_socket);
    }
    goto ldv_55814;
    case_7:
    {
    ldv_dummy_resourceless_instance_callback_5_39(ldv_5_callback_recvmsg, ldv_5_container_struct_kiocb_ptr,
                                                  ldv_5_container_socket, ldv_5_container_struct_msghdr_ptr,
                                                  ldv_5_ldv_param_39_3_default, ldv_5_ldv_param_39_4_default);
    }
    goto ldv_55814;
    case_8:
    {
    tmp___3 = ldv_xmalloc(1UL);
    ldv_5_ldv_param_36_1_default = (char *)tmp___3;
    tmp___4 = ldv_xmalloc(8UL);
    ldv_5_ldv_param_36_3_default = (long long *)tmp___4;
    ldv_dummy_resourceless_instance_callback_5_36(ldv_5_callback_read, ldv_5_container_struct_file_ptr,
                                                  ldv_5_ldv_param_36_1_default, ldv_5_ldv_param_36_2_default,
                                                  ldv_5_ldv_param_36_3_default);
    ldv_free((void *)ldv_5_ldv_param_36_1_default);
    ldv_free((void *)ldv_5_ldv_param_36_3_default);
    }
    goto ldv_55814;
    case_9:
    {
    ldv_dummy_resourceless_instance_callback_5_33(ldv_5_callback_probe, ldv_5_container_socket,
                                                  ldv_5_container_struct_sockaddr_ptr,
                                                  ldv_5_ldv_param_33_2_default);
    }
    goto ldv_55814;
    case_10:
    {
    ldv_dummy_resourceless_instance_callback_5_32(ldv_5_callback_poll, ldv_5_container_struct_file_ptr,
                                                  ldv_5_container_socket, ldv_5_container_struct_poll_table_struct_ptr);
    }
    goto ldv_55814;
    case_11:
    {
    ldv_dummy_resourceless_instance_callback_5_31(ldv_5_callback_open, ldv_5_container_struct_inode_ptr,
                                                  ldv_5_container_struct_file_ptr);
    }
    goto ldv_55814;
    case_12:
    {
    ldv_dummy_resourceless_instance_callback_5_30(ldv_5_callback_mmap, ldv_5_container_struct_file_ptr,
                                                  ldv_5_container_socket, ldv_5_container_struct_vm_area_struct_ptr);
    }
    goto ldv_55814;
    case_13:
    {
    ldv_dummy_resourceless_instance_callback_5_27(ldv_5_callback_llseek, ldv_5_container_struct_file_ptr,
                                                  ldv_5_ldv_param_27_1_default, ldv_5_ldv_param_27_2_default);
    }
    goto ldv_55814;
    case_14:
    {
    ldv_dummy_resourceless_instance_callback_5_24(ldv_5_callback_listen, ldv_5_container_socket,
                                                  ldv_5_ldv_param_24_1_default);
    }
    goto ldv_55814;
    case_15:
    {
    ldv_dummy_resourceless_instance_callback_5_21(ldv_5_callback_ioctl, ldv_5_container_socket,
                                                  ldv_5_ldv_param_21_1_default, ldv_5_ldv_param_21_2_default);
    }
    goto ldv_55814;
    case_16:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_5_ldv_param_18_3_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(4UL);
    ldv_5_ldv_param_18_4_default = (int *)tmp___6;
    ldv_dummy_resourceless_instance_callback_5_18(ldv_5_callback_getsockopt, ldv_5_container_socket,
                                                  ldv_5_ldv_param_18_1_default, ldv_5_ldv_param_18_2_default,
                                                  ldv_5_ldv_param_18_3_default, ldv_5_ldv_param_18_4_default);
    ldv_free((void *)ldv_5_ldv_param_18_3_default);
    ldv_free((void *)ldv_5_ldv_param_18_4_default);
    }
    goto ldv_55814;
    case_17:
    {
    tmp___7 = ldv_xmalloc(4UL);
    ldv_5_ldv_param_15_2_default = (int *)tmp___7;
    ldv_dummy_resourceless_instance_callback_5_15(ldv_5_callback_getname, ldv_5_container_socket,
                                                  ldv_5_container_struct_sockaddr_ptr,
                                                  ldv_5_ldv_param_15_2_default, ldv_5_ldv_param_15_3_default);
    ldv_free((void *)ldv_5_ldv_param_15_2_default);
    }
    goto ldv_55814;
    case_18:
    {
    ldv_dummy_resourceless_instance_callback_5_12(ldv_5_callback_create, ldv_5_container_struct_net_ptr,
                                                  ldv_5_container_socket, ldv_5_ldv_param_12_2_default,
                                                  ldv_5_ldv_param_12_3_default);
    }
    goto ldv_55814;
    case_19:
    {
    ldv_dummy_resourceless_instance_callback_5_9(ldv_5_callback_connect, ldv_5_container_socket,
                                                 ldv_5_container_struct_sockaddr_ptr,
                                                 ldv_5_ldv_param_9_2_default, ldv_5_ldv_param_9_3_default);
    }
    goto ldv_55814;
    case_20:
    {
    ldv_dummy_resourceless_instance_callback_5_3(ldv_5_callback_accept, ldv_5_container_socket,
                                                 ldv_5_ldv_param_3_1_default, ldv_5_ldv_param_3_2_default);
    }
    goto ldv_55814;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_55814:
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
void ldv_proto_dummy_resourceless_instance_6(void *arg0 )
{
  int (*ldv_6_callback_accept)(struct socket * , struct socket * , int ) ;
  int (*ldv_6_callback_connect)(struct socket * , struct sockaddr * , int , int ) ;
  int (*ldv_6_callback_create)(struct net * , struct socket * , int , int ) ;
  int (*ldv_6_callback_getname)(struct socket * , struct sockaddr * , int * , int ) ;
  int (*ldv_6_callback_getsockopt)(struct socket * , int , int , char * , int * ) ;
  int (*ldv_6_callback_ioctl)(struct socket * , unsigned int , unsigned long ) ;
  int (*ldv_6_callback_listen)(struct socket * , int ) ;
  long long (*ldv_6_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_6_callback_mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
  int (*ldv_6_callback_open)(struct inode * , struct file * ) ;
  unsigned int (*ldv_6_callback_poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
  int (*ldv_6_callback_probe)(struct socket * , struct sockaddr * , int ) ;
  long (*ldv_6_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  int (*ldv_6_callback_recvmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long , int ) ;
  int (*ldv_6_callback_release)(struct socket * ) ;
  int (*ldv_6_callback_sendmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long ) ;
  long (*ldv_6_callback_sendpage)(struct socket * , struct page * , int , unsigned long ,
                                  int ) ;
  int (*ldv_6_callback_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
  int (*ldv_6_callback_shutdown)(struct socket * , int ) ;
  int (*ldv_6_callback_socketpair)(struct socket * , struct socket * ) ;
  struct socket *ldv_6_container_socket ;
  struct file *ldv_6_container_struct_file_ptr ;
  struct inode *ldv_6_container_struct_inode_ptr ;
  struct kiocb *ldv_6_container_struct_kiocb_ptr ;
  struct msghdr *ldv_6_container_struct_msghdr_ptr ;
  struct net *ldv_6_container_struct_net_ptr ;
  struct page *ldv_6_container_struct_page_ptr ;
  struct poll_table_struct *ldv_6_container_struct_poll_table_struct_ptr ;
  struct sockaddr *ldv_6_container_struct_sockaddr_ptr ;
  struct vm_area_struct *ldv_6_container_struct_vm_area_struct_ptr ;
  int ldv_6_ldv_param_12_2_default ;
  int ldv_6_ldv_param_12_3_default ;
  int *ldv_6_ldv_param_15_2_default ;
  int ldv_6_ldv_param_15_3_default ;
  int ldv_6_ldv_param_18_1_default ;
  int ldv_6_ldv_param_18_2_default ;
  char *ldv_6_ldv_param_18_3_default ;
  int *ldv_6_ldv_param_18_4_default ;
  unsigned int ldv_6_ldv_param_21_1_default ;
  unsigned long ldv_6_ldv_param_21_2_default ;
  int ldv_6_ldv_param_24_1_default ;
  long long ldv_6_ldv_param_27_1_default ;
  int ldv_6_ldv_param_27_2_default ;
  int ldv_6_ldv_param_33_2_default ;
  char *ldv_6_ldv_param_36_1_default ;
  unsigned long ldv_6_ldv_param_36_2_default ;
  long long *ldv_6_ldv_param_36_3_default ;
  unsigned long ldv_6_ldv_param_39_3_default ;
  int ldv_6_ldv_param_39_4_default ;
  struct socket *ldv_6_ldv_param_3_1_default ;
  int ldv_6_ldv_param_3_2_default ;
  unsigned long ldv_6_ldv_param_43_3_default ;
  int ldv_6_ldv_param_46_2_default ;
  unsigned long ldv_6_ldv_param_46_3_default ;
  int ldv_6_ldv_param_46_4_default ;
  int ldv_6_ldv_param_49_1_default ;
  int ldv_6_ldv_param_49_2_default ;
  char *ldv_6_ldv_param_49_3_default ;
  unsigned int ldv_6_ldv_param_49_4_default ;
  int ldv_6_ldv_param_52_1_default ;
  struct socket *ldv_6_ldv_param_55_1_default ;
  int ldv_6_ldv_param_9_2_default ;
  int ldv_6_ldv_param_9_3_default ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_6_container_struct_net_ptr = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_6;
  return;
  ldv_call_6:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    {
    tmp = ldv_xmalloc(48UL);
    ldv_6_ldv_param_3_1_default = (struct socket *)tmp;
    tmp___0 = ldv_undef_int();
    }
    {
    if (tmp___0 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___0 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___0 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___0 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___0 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___0 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___0 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___0 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___0 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___0 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___0 == 11) {
      goto case_11;
    } else {
    }
    if (tmp___0 == 12) {
      goto case_12;
    } else {
    }
    if (tmp___0 == 13) {
      goto case_13;
    } else {
    }
    if (tmp___0 == 14) {
      goto case_14;
    } else {
    }
    if (tmp___0 == 15) {
      goto case_15;
    } else {
    }
    if (tmp___0 == 16) {
      goto case_16;
    } else {
    }
    if (tmp___0 == 17) {
      goto case_17;
    } else {
    }
    if (tmp___0 == 18) {
      goto case_18;
    } else {
    }
    if (tmp___0 == 19) {
      goto case_19;
    } else {
    }
    if (tmp___0 == 20) {
      goto case_20;
    } else {
    }
    goto switch_default;
    case_1:
    {
    tmp___1 = ldv_xmalloc(48UL);
    ldv_6_ldv_param_55_1_default = (struct socket *)tmp___1;
    ldv_dummy_resourceless_instance_callback_6_55(ldv_6_callback_socketpair, ldv_6_container_socket,
                                                  ldv_6_ldv_param_55_1_default);
    ldv_free((void *)ldv_6_ldv_param_55_1_default);
    }
    goto ldv_55971;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_6_52(ldv_6_callback_shutdown, ldv_6_container_socket,
                                                  ldv_6_ldv_param_52_1_default);
    }
    goto ldv_55971;
    case_3:
    {
    tmp___2 = ldv_xmalloc(1UL);
    ldv_6_ldv_param_49_3_default = (char *)tmp___2;
    ldv_dummy_resourceless_instance_callback_6_49(ldv_6_callback_setsockopt, ldv_6_container_socket,
                                                  ldv_6_ldv_param_49_1_default, ldv_6_ldv_param_49_2_default,
                                                  ldv_6_ldv_param_49_3_default, ldv_6_ldv_param_49_4_default);
    ldv_free((void *)ldv_6_ldv_param_49_3_default);
    }
    goto ldv_55971;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_6_46(ldv_6_callback_sendpage, ldv_6_container_socket,
                                                  ldv_6_container_struct_page_ptr,
                                                  ldv_6_ldv_param_46_2_default, ldv_6_ldv_param_46_3_default,
                                                  ldv_6_ldv_param_46_4_default);
    }
    goto ldv_55971;
    case_5:
    {
    ldv_dummy_resourceless_instance_callback_6_43(ldv_6_callback_sendmsg, ldv_6_container_struct_kiocb_ptr,
                                                  ldv_6_container_socket, ldv_6_container_struct_msghdr_ptr,
                                                  ldv_6_ldv_param_43_3_default);
    }
    goto ldv_55971;
    case_6:
    {
    ldv_dummy_resourceless_instance_callback_6_42(ldv_6_callback_release, ldv_6_container_socket);
    }
    goto ldv_55971;
    case_7:
    {
    ldv_dummy_resourceless_instance_callback_6_39(ldv_6_callback_recvmsg, ldv_6_container_struct_kiocb_ptr,
                                                  ldv_6_container_socket, ldv_6_container_struct_msghdr_ptr,
                                                  ldv_6_ldv_param_39_3_default, ldv_6_ldv_param_39_4_default);
    }
    goto ldv_55971;
    case_8:
    {
    tmp___3 = ldv_xmalloc(1UL);
    ldv_6_ldv_param_36_1_default = (char *)tmp___3;
    tmp___4 = ldv_xmalloc(8UL);
    ldv_6_ldv_param_36_3_default = (long long *)tmp___4;
    ldv_dummy_resourceless_instance_callback_6_36(ldv_6_callback_read, ldv_6_container_struct_file_ptr,
                                                  ldv_6_ldv_param_36_1_default, ldv_6_ldv_param_36_2_default,
                                                  ldv_6_ldv_param_36_3_default);
    ldv_free((void *)ldv_6_ldv_param_36_1_default);
    ldv_free((void *)ldv_6_ldv_param_36_3_default);
    }
    goto ldv_55971;
    case_9:
    {
    ldv_dummy_resourceless_instance_callback_6_33(ldv_6_callback_probe, ldv_6_container_socket,
                                                  ldv_6_container_struct_sockaddr_ptr,
                                                  ldv_6_ldv_param_33_2_default);
    }
    goto ldv_55971;
    case_10:
    {
    ldv_dummy_resourceless_instance_callback_6_32(ldv_6_callback_poll, ldv_6_container_struct_file_ptr,
                                                  ldv_6_container_socket, ldv_6_container_struct_poll_table_struct_ptr);
    }
    goto ldv_55971;
    case_11:
    {
    ldv_dummy_resourceless_instance_callback_6_31(ldv_6_callback_open, ldv_6_container_struct_inode_ptr,
                                                  ldv_6_container_struct_file_ptr);
    }
    goto ldv_55971;
    case_12:
    {
    ldv_dummy_resourceless_instance_callback_6_30(ldv_6_callback_mmap, ldv_6_container_struct_file_ptr,
                                                  ldv_6_container_socket, ldv_6_container_struct_vm_area_struct_ptr);
    }
    goto ldv_55971;
    case_13:
    {
    ldv_dummy_resourceless_instance_callback_6_27(ldv_6_callback_llseek, ldv_6_container_struct_file_ptr,
                                                  ldv_6_ldv_param_27_1_default, ldv_6_ldv_param_27_2_default);
    }
    goto ldv_55971;
    case_14:
    {
    ldv_dummy_resourceless_instance_callback_6_24(ldv_6_callback_listen, ldv_6_container_socket,
                                                  ldv_6_ldv_param_24_1_default);
    }
    goto ldv_55971;
    case_15:
    {
    ldv_dummy_resourceless_instance_callback_6_21(ldv_6_callback_ioctl, ldv_6_container_socket,
                                                  ldv_6_ldv_param_21_1_default, ldv_6_ldv_param_21_2_default);
    }
    goto ldv_55971;
    case_16:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_6_ldv_param_18_3_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(4UL);
    ldv_6_ldv_param_18_4_default = (int *)tmp___6;
    ldv_dummy_resourceless_instance_callback_6_18(ldv_6_callback_getsockopt, ldv_6_container_socket,
                                                  ldv_6_ldv_param_18_1_default, ldv_6_ldv_param_18_2_default,
                                                  ldv_6_ldv_param_18_3_default, ldv_6_ldv_param_18_4_default);
    ldv_free((void *)ldv_6_ldv_param_18_3_default);
    ldv_free((void *)ldv_6_ldv_param_18_4_default);
    }
    goto ldv_55971;
    case_17:
    {
    tmp___7 = ldv_xmalloc(4UL);
    ldv_6_ldv_param_15_2_default = (int *)tmp___7;
    ldv_dummy_resourceless_instance_callback_6_15(ldv_6_callback_getname, ldv_6_container_socket,
                                                  ldv_6_container_struct_sockaddr_ptr,
                                                  ldv_6_ldv_param_15_2_default, ldv_6_ldv_param_15_3_default);
    ldv_free((void *)ldv_6_ldv_param_15_2_default);
    }
    goto ldv_55971;
    case_18:
    {
    ldv_dummy_resourceless_instance_callback_6_12(ldv_6_callback_create, ldv_6_container_struct_net_ptr,
                                                  ldv_6_container_socket, ldv_6_ldv_param_12_2_default,
                                                  ldv_6_ldv_param_12_3_default);
    }
    goto ldv_55971;
    case_19:
    {
    ldv_dummy_resourceless_instance_callback_6_9(ldv_6_callback_connect, ldv_6_container_socket,
                                                 ldv_6_container_struct_sockaddr_ptr,
                                                 ldv_6_ldv_param_9_2_default, ldv_6_ldv_param_9_3_default);
    }
    goto ldv_55971;
    case_20:
    {
    ldv_dummy_resourceless_instance_callback_6_3(ldv_6_callback_accept, ldv_6_container_socket,
                                                 ldv_6_ldv_param_3_1_default, ldv_6_ldv_param_3_2_default);
    }
    goto ldv_55971;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_55971:
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
void ldv_proto_dummy_resourceless_instance_7(void *arg0 )
{
  int (*ldv_7_callback_accept)(struct socket * , struct socket * , int ) ;
  int (*ldv_7_callback_connect)(struct socket * , struct sockaddr * , int , int ) ;
  int (*ldv_7_callback_create)(struct net * , struct socket * , int , int ) ;
  int (*ldv_7_callback_getname)(struct socket * , struct sockaddr * , int * , int ) ;
  int (*ldv_7_callback_getsockopt)(struct socket * , int , int , char * , int * ) ;
  int (*ldv_7_callback_ioctl)(struct socket * , unsigned int , unsigned long ) ;
  int (*ldv_7_callback_listen)(struct socket * , int ) ;
  long long (*ldv_7_callback_llseek)(struct file * , long long , int ) ;
  int (*ldv_7_callback_mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
  int (*ldv_7_callback_open)(struct inode * , struct file * ) ;
  unsigned int (*ldv_7_callback_poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
  int (*ldv_7_callback_probe)(struct socket * , struct sockaddr * , int ) ;
  long (*ldv_7_callback_read)(struct file * , char * , unsigned long , long long * ) ;
  int (*ldv_7_callback_recvmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long , int ) ;
  int (*ldv_7_callback_release)(struct socket * ) ;
  int (*ldv_7_callback_sendmsg)(struct kiocb * , struct socket * , struct msghdr * ,
                                unsigned long ) ;
  long (*ldv_7_callback_sendpage)(struct socket * , struct page * , int , unsigned long ,
                                  int ) ;
  int (*ldv_7_callback_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
  int (*ldv_7_callback_shutdown)(struct socket * , int ) ;
  int (*ldv_7_callback_socketpair)(struct socket * , struct socket * ) ;
  struct socket *ldv_7_container_socket ;
  struct file *ldv_7_container_struct_file_ptr ;
  struct inode *ldv_7_container_struct_inode_ptr ;
  struct kiocb *ldv_7_container_struct_kiocb_ptr ;
  struct msghdr *ldv_7_container_struct_msghdr_ptr ;
  struct net *ldv_7_container_struct_net_ptr ;
  struct page *ldv_7_container_struct_page_ptr ;
  struct poll_table_struct *ldv_7_container_struct_poll_table_struct_ptr ;
  struct sockaddr *ldv_7_container_struct_sockaddr_ptr ;
  struct vm_area_struct *ldv_7_container_struct_vm_area_struct_ptr ;
  int ldv_7_ldv_param_12_2_default ;
  int ldv_7_ldv_param_12_3_default ;
  int *ldv_7_ldv_param_15_2_default ;
  int ldv_7_ldv_param_15_3_default ;
  int ldv_7_ldv_param_18_1_default ;
  int ldv_7_ldv_param_18_2_default ;
  char *ldv_7_ldv_param_18_3_default ;
  int *ldv_7_ldv_param_18_4_default ;
  unsigned int ldv_7_ldv_param_21_1_default ;
  unsigned long ldv_7_ldv_param_21_2_default ;
  int ldv_7_ldv_param_24_1_default ;
  long long ldv_7_ldv_param_27_1_default ;
  int ldv_7_ldv_param_27_2_default ;
  int ldv_7_ldv_param_33_2_default ;
  char *ldv_7_ldv_param_36_1_default ;
  unsigned long ldv_7_ldv_param_36_2_default ;
  long long *ldv_7_ldv_param_36_3_default ;
  unsigned long ldv_7_ldv_param_39_3_default ;
  int ldv_7_ldv_param_39_4_default ;
  struct socket *ldv_7_ldv_param_3_1_default ;
  int ldv_7_ldv_param_3_2_default ;
  unsigned long ldv_7_ldv_param_43_3_default ;
  int ldv_7_ldv_param_46_2_default ;
  unsigned long ldv_7_ldv_param_46_3_default ;
  int ldv_7_ldv_param_46_4_default ;
  int ldv_7_ldv_param_49_1_default ;
  int ldv_7_ldv_param_49_2_default ;
  char *ldv_7_ldv_param_49_3_default ;
  unsigned int ldv_7_ldv_param_49_4_default ;
  int ldv_7_ldv_param_52_1_default ;
  struct socket *ldv_7_ldv_param_55_1_default ;
  int ldv_7_ldv_param_9_2_default ;
  int ldv_7_ldv_param_9_3_default ;
  struct ldv_struct_dummy_resourceless_instance_5 *data ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  void *tmp___7 ;
  int tmp___8 ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_5 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_5 *)0)) {
    {
    ldv_7_container_struct_net_ptr = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_7;
  return;
  ldv_call_7:
  {
  tmp___8 = ldv_undef_int();
  }
  if (tmp___8 != 0) {
    {
    tmp = ldv_xmalloc(48UL);
    ldv_7_ldv_param_3_1_default = (struct socket *)tmp;
    tmp___0 = ldv_undef_int();
    }
    {
    if (tmp___0 == 1) {
      goto case_1;
    } else {
    }
    if (tmp___0 == 2) {
      goto case_2;
    } else {
    }
    if (tmp___0 == 3) {
      goto case_3;
    } else {
    }
    if (tmp___0 == 4) {
      goto case_4;
    } else {
    }
    if (tmp___0 == 5) {
      goto case_5;
    } else {
    }
    if (tmp___0 == 6) {
      goto case_6;
    } else {
    }
    if (tmp___0 == 7) {
      goto case_7;
    } else {
    }
    if (tmp___0 == 8) {
      goto case_8;
    } else {
    }
    if (tmp___0 == 9) {
      goto case_9;
    } else {
    }
    if (tmp___0 == 10) {
      goto case_10;
    } else {
    }
    if (tmp___0 == 11) {
      goto case_11;
    } else {
    }
    if (tmp___0 == 12) {
      goto case_12;
    } else {
    }
    if (tmp___0 == 13) {
      goto case_13;
    } else {
    }
    if (tmp___0 == 14) {
      goto case_14;
    } else {
    }
    if (tmp___0 == 15) {
      goto case_15;
    } else {
    }
    if (tmp___0 == 16) {
      goto case_16;
    } else {
    }
    if (tmp___0 == 17) {
      goto case_17;
    } else {
    }
    if (tmp___0 == 18) {
      goto case_18;
    } else {
    }
    if (tmp___0 == 19) {
      goto case_19;
    } else {
    }
    if (tmp___0 == 20) {
      goto case_20;
    } else {
    }
    goto switch_default;
    case_1:
    {
    tmp___1 = ldv_xmalloc(48UL);
    ldv_7_ldv_param_55_1_default = (struct socket *)tmp___1;
    ldv_dummy_resourceless_instance_callback_7_55(ldv_7_callback_socketpair, ldv_7_container_socket,
                                                  ldv_7_ldv_param_55_1_default);
    ldv_free((void *)ldv_7_ldv_param_55_1_default);
    }
    goto ldv_56128;
    case_2:
    {
    ldv_dummy_resourceless_instance_callback_7_52(ldv_7_callback_shutdown, ldv_7_container_socket,
                                                  ldv_7_ldv_param_52_1_default);
    }
    goto ldv_56128;
    case_3:
    {
    tmp___2 = ldv_xmalloc(1UL);
    ldv_7_ldv_param_49_3_default = (char *)tmp___2;
    ldv_dummy_resourceless_instance_callback_7_49(ldv_7_callback_setsockopt, ldv_7_container_socket,
                                                  ldv_7_ldv_param_49_1_default, ldv_7_ldv_param_49_2_default,
                                                  ldv_7_ldv_param_49_3_default, ldv_7_ldv_param_49_4_default);
    ldv_free((void *)ldv_7_ldv_param_49_3_default);
    }
    goto ldv_56128;
    case_4:
    {
    ldv_dummy_resourceless_instance_callback_7_46(ldv_7_callback_sendpage, ldv_7_container_socket,
                                                  ldv_7_container_struct_page_ptr,
                                                  ldv_7_ldv_param_46_2_default, ldv_7_ldv_param_46_3_default,
                                                  ldv_7_ldv_param_46_4_default);
    }
    goto ldv_56128;
    case_5:
    {
    ldv_dummy_resourceless_instance_callback_7_43(ldv_7_callback_sendmsg, ldv_7_container_struct_kiocb_ptr,
                                                  ldv_7_container_socket, ldv_7_container_struct_msghdr_ptr,
                                                  ldv_7_ldv_param_43_3_default);
    }
    goto ldv_56128;
    case_6:
    {
    ldv_dummy_resourceless_instance_callback_7_42(ldv_7_callback_release, ldv_7_container_socket);
    }
    goto ldv_56128;
    case_7:
    {
    ldv_dummy_resourceless_instance_callback_7_39(ldv_7_callback_recvmsg, ldv_7_container_struct_kiocb_ptr,
                                                  ldv_7_container_socket, ldv_7_container_struct_msghdr_ptr,
                                                  ldv_7_ldv_param_39_3_default, ldv_7_ldv_param_39_4_default);
    }
    goto ldv_56128;
    case_8:
    {
    tmp___3 = ldv_xmalloc(1UL);
    ldv_7_ldv_param_36_1_default = (char *)tmp___3;
    tmp___4 = ldv_xmalloc(8UL);
    ldv_7_ldv_param_36_3_default = (long long *)tmp___4;
    ldv_dummy_resourceless_instance_callback_7_36(ldv_7_callback_read, ldv_7_container_struct_file_ptr,
                                                  ldv_7_ldv_param_36_1_default, ldv_7_ldv_param_36_2_default,
                                                  ldv_7_ldv_param_36_3_default);
    ldv_free((void *)ldv_7_ldv_param_36_1_default);
    ldv_free((void *)ldv_7_ldv_param_36_3_default);
    }
    goto ldv_56128;
    case_9:
    {
    ldv_dummy_resourceless_instance_callback_7_33(ldv_7_callback_probe, ldv_7_container_socket,
                                                  ldv_7_container_struct_sockaddr_ptr,
                                                  ldv_7_ldv_param_33_2_default);
    }
    goto ldv_56128;
    case_10:
    {
    ldv_dummy_resourceless_instance_callback_7_32(ldv_7_callback_poll, ldv_7_container_struct_file_ptr,
                                                  ldv_7_container_socket, ldv_7_container_struct_poll_table_struct_ptr);
    }
    goto ldv_56128;
    case_11:
    {
    ldv_dummy_resourceless_instance_callback_7_31(ldv_7_callback_open, ldv_7_container_struct_inode_ptr,
                                                  ldv_7_container_struct_file_ptr);
    }
    goto ldv_56128;
    case_12:
    {
    ldv_dummy_resourceless_instance_callback_7_30(ldv_7_callback_mmap, ldv_7_container_struct_file_ptr,
                                                  ldv_7_container_socket, ldv_7_container_struct_vm_area_struct_ptr);
    }
    goto ldv_56128;
    case_13:
    {
    ldv_dummy_resourceless_instance_callback_7_27(ldv_7_callback_llseek, ldv_7_container_struct_file_ptr,
                                                  ldv_7_ldv_param_27_1_default, ldv_7_ldv_param_27_2_default);
    }
    goto ldv_56128;
    case_14:
    {
    ldv_dummy_resourceless_instance_callback_7_24(ldv_7_callback_listen, ldv_7_container_socket,
                                                  ldv_7_ldv_param_24_1_default);
    }
    goto ldv_56128;
    case_15:
    {
    ldv_dummy_resourceless_instance_callback_7_21(ldv_7_callback_ioctl, ldv_7_container_socket,
                                                  ldv_7_ldv_param_21_1_default, ldv_7_ldv_param_21_2_default);
    }
    goto ldv_56128;
    case_16:
    {
    tmp___5 = ldv_xmalloc(1UL);
    ldv_7_ldv_param_18_3_default = (char *)tmp___5;
    tmp___6 = ldv_xmalloc(4UL);
    ldv_7_ldv_param_18_4_default = (int *)tmp___6;
    ldv_dummy_resourceless_instance_callback_7_18(ldv_7_callback_getsockopt, ldv_7_container_socket,
                                                  ldv_7_ldv_param_18_1_default, ldv_7_ldv_param_18_2_default,
                                                  ldv_7_ldv_param_18_3_default, ldv_7_ldv_param_18_4_default);
    ldv_free((void *)ldv_7_ldv_param_18_3_default);
    ldv_free((void *)ldv_7_ldv_param_18_4_default);
    }
    goto ldv_56128;
    case_17:
    {
    tmp___7 = ldv_xmalloc(4UL);
    ldv_7_ldv_param_15_2_default = (int *)tmp___7;
    ldv_dummy_resourceless_instance_callback_7_15(ldv_7_callback_getname, ldv_7_container_socket,
                                                  ldv_7_container_struct_sockaddr_ptr,
                                                  ldv_7_ldv_param_15_2_default, ldv_7_ldv_param_15_3_default);
    ldv_free((void *)ldv_7_ldv_param_15_2_default);
    }
    goto ldv_56128;
    case_18:
    {
    ldv_dummy_resourceless_instance_callback_7_12(ldv_7_callback_create, ldv_7_container_struct_net_ptr,
                                                  ldv_7_container_socket, ldv_7_ldv_param_12_2_default,
                                                  ldv_7_ldv_param_12_3_default);
    }
    goto ldv_56128;
    case_19:
    {
    ldv_dummy_resourceless_instance_callback_7_9(ldv_7_callback_connect, ldv_7_container_socket,
                                                 ldv_7_container_struct_sockaddr_ptr,
                                                 ldv_7_ldv_param_9_2_default, ldv_7_ldv_param_9_3_default);
    }
    goto ldv_56128;
    case_20:
    {
    ldv_dummy_resourceless_instance_callback_7_3(ldv_7_callback_accept, ldv_7_container_socket,
                                                 ldv_7_ldv_param_3_1_default, ldv_7_ldv_param_3_2_default);
    }
    goto ldv_56128;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
    ldv_56128:
    {
    ldv_free((void *)ldv_7_ldv_param_3_1_default);
    }
    goto ldv_call_7;
  } else {
    return;
  }
  return;
}
}
int ldv_register_netdev(int arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_21_netdev_net_device ;
  int ldv_21_ret_default ;
  int tmp ;
  int tmp___0 ;
  {
  {
  ldv_21_ret_default = 1;
  ldv_21_ret_default = ldv_pre_register_netdev();
  ldv_21_netdev_net_device = arg1;
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_assume(ldv_21_ret_default == 0);
    ldv_21_ret_default = ldv_register_netdev_open_21_6((ldv_21_netdev_net_device->netdev_ops)->ndo_open,
                                                       ldv_21_netdev_net_device);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_assume(ldv_21_ret_default == 0);
      ldv_dispatch_register_21_4(ldv_21_netdev_net_device);
      }
    } else {
      {
      ldv_assume(ldv_21_ret_default != 0);
      }
    }
  } else {
    {
    ldv_assume(ldv_21_ret_default != 0);
    }
  }
  return (ldv_21_ret_default);
  return (arg0);
  return (arg0);
}
}
int ldv_register_netdevice_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_26_struct_notifier_block_struct_notifier_block ;
  int tmp ;
  {
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_assume(arg0 == 0);
    ldv_26_struct_notifier_block_struct_notifier_block = arg1;
    ldv_dispatch_register_26_2(ldv_26_struct_notifier_block_struct_notifier_block);
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
void ldv_seq_instance_next_8_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  rose_info_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_show_8_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  rose_info_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_8_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  rose_info_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_8_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  rose_info_stop(arg1, arg2);
  }
  return;
}
}
int ldv_seq_open(int arg0 , struct file *arg1 , struct seq_operations *arg2 )
{
  struct seq_operations *ldv_22_ops_seq_operations ;
  struct seq_file *ldv_22_seq_file_seq_file ;
  void *tmp ;
  {
  {
  tmp = ldv_xmalloc(256UL);
  ldv_22_seq_file_seq_file = (struct seq_file *)tmp;
  ldv_22_ops_seq_operations = arg2;
  ldv_dispatch_register_22_1(ldv_22_seq_file_seq_file, ldv_22_ops_seq_operations);
  }
  return (arg0);
  return (arg0);
}
}
void ldv_seq_operations_seq_instance_8(void *arg0 )
{
  void *ldv_8_ldv_param_10_1_default ;
  long long *ldv_8_ldv_param_4_1_default ;
  void *ldv_8_ldv_param_7_1_default ;
  long long *ldv_8_ldv_param_7_2_default ;
  void *ldv_8_ldv_param_8_1_default ;
  struct seq_operations *ldv_8_ops_seq_operations ;
  struct seq_file *ldv_8_seq_file_seq_file ;
  int ldv_8_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_8_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_8_seq_file_seq_file = data->arg0;
    ldv_8_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_8;
  return;
  ldv_do_8:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_8_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
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
    goto switch_default;
    case_1:
    {
    ldv_8_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_8_10(ldv_8_ops_seq_operations->stop, ldv_8_seq_file_seq_file,
                               ldv_8_ldv_param_10_1_default);
    ldv_free(ldv_8_ldv_param_10_1_default);
    ldv_8_started_default = 0;
    }
    goto ldv_do_8;
    case_2:
    {
    ldv_8_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_8_8(ldv_8_ops_seq_operations->show, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_8_1_default);
    ldv_free(ldv_8_ldv_param_8_1_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    case_3:
    {
    ldv_8_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_8_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_8_7(ldv_8_ops_seq_operations->next, ldv_8_seq_file_seq_file,
                              ldv_8_ldv_param_7_1_default, ldv_8_ldv_param_7_2_default);
    ldv_free(ldv_8_ldv_param_7_1_default);
    ldv_free((void *)ldv_8_ldv_param_7_2_default);
    }
    goto ldv_do_8;
    goto ldv_do_8;
    goto ldv_do_8;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_8_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_8_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_8_4(ldv_8_ops_seq_operations->start, ldv_8_seq_file_seq_file,
                                 ldv_8_ldv_param_4_1_default);
      ldv_free((void *)ldv_8_ldv_param_4_1_default);
      ldv_8_started_default = 1;
      }
      goto ldv_do_8;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_struct_ax25_linkfail_dummy_resourceless_instance_12(void *arg0 )
{
  void (*ldv_12_callback_func)(struct ax25_cb * , int ) ;
  struct ax25_cb *ldv_12_container_struct_ax25_cb_ptr ;
  int ldv_12_ldv_param_3_1_default ;
  int tmp ;
  {
  goto ldv_call_12;
  return;
  ldv_call_12:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_12_3(ldv_12_callback_func, ldv_12_container_struct_ax25_cb_ptr,
                                                  ldv_12_ldv_param_3_1_default);
    }
    goto ldv_call_12;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_ax25_protocol_dummy_resourceless_instance_13(void *arg0 )
{
  int (*ldv_13_callback_func)(struct sk_buff * , struct ax25_cb * ) ;
  struct ax25_cb *ldv_13_container_struct_ax25_cb_ptr ;
  struct sk_buff *ldv_13_container_struct_sk_buff_ptr ;
  int tmp ;
  {
  goto ldv_call_13;
  return;
  ldv_call_13:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_dummy_resourceless_instance_callback_13_3(ldv_13_callback_func, ldv_13_container_struct_sk_buff_ptr,
                                                  ldv_13_container_struct_ax25_cb_ptr);
    }
    goto ldv_call_13;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_header_ops_dummy_resourceless_instance_14(void *arg0 )
{
  int (*ldv_14_callback_create)(struct sk_buff * , struct net_device * , unsigned short ,
                                void * , void * , unsigned int ) ;
  int (*ldv_14_callback_rebuild)(struct sk_buff * ) ;
  struct net_device *ldv_14_container_struct_net_device_ptr ;
  struct sk_buff *ldv_14_container_struct_sk_buff_ptr ;
  unsigned short ldv_14_ldv_param_3_2_default ;
  void *ldv_14_ldv_param_3_3_default ;
  void *ldv_14_ldv_param_3_4_default ;
  unsigned int ldv_14_ldv_param_3_5_default ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_call_14;
  return;
  ldv_call_14:
  {
  tmp___0 = ldv_undef_int();
  }
  if (tmp___0 != 0) {
    {
    ldv_14_ldv_param_3_3_default = ldv_xmalloc(1UL);
    ldv_14_ldv_param_3_4_default = ldv_xmalloc(1UL);
    tmp = ldv_undef_int();
    }
    if (tmp != 0) {
      {
      ldv_dummy_resourceless_instance_callback_14_9(ldv_14_callback_rebuild, ldv_14_container_struct_sk_buff_ptr);
      }
    } else {
      {
      ldv_dummy_resourceless_instance_callback_14_3(ldv_14_callback_create, ldv_14_container_struct_sk_buff_ptr,
                                                    ldv_14_container_struct_net_device_ptr,
                                                    (int )ldv_14_ldv_param_3_2_default,
                                                    ldv_14_ldv_param_3_3_default,
                                                    ldv_14_ldv_param_3_4_default,
                                                    ldv_14_ldv_param_3_5_default);
      }
    }
    {
    ldv_free(ldv_14_ldv_param_3_3_default);
    ldv_free(ldv_14_ldv_param_3_4_default);
    }
    goto ldv_call_14;
  } else {
    return;
  }
  return;
}
}
void ldv_struct_notifier_block_dummy_resourceless_instance_15(void *arg0 )
{
  int (*ldv_15_callback_notifier_call)(struct notifier_block * , unsigned long ,
                                       void * ) ;
  struct notifier_block *ldv_15_container_struct_notifier_block ;
  unsigned long ldv_15_ldv_param_3_1_default ;
  void *ldv_15_ldv_param_3_2_default ;
  struct ldv_struct_dummy_resourceless_instance_15 *data ;
  int tmp ;
  {
  data = (struct ldv_struct_dummy_resourceless_instance_15 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_dummy_resourceless_instance_15 *)0)) {
    {
    ldv_15_container_struct_notifier_block = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_call_15;
  return;
  ldv_call_15:
  {
  tmp = ldv_undef_int();
  }
  if (tmp != 0) {
    {
    ldv_15_ldv_param_3_2_default = ldv_xmalloc(1UL);
    ldv_dummy_resourceless_instance_callback_15_3(ldv_15_callback_notifier_call, ldv_15_container_struct_notifier_block,
                                                  ldv_15_ldv_param_3_1_default, ldv_15_ldv_param_3_2_default);
    ldv_free(ldv_15_ldv_param_3_2_default);
    }
    goto ldv_call_15;
  } else {
    return;
  }
  return;
}
}
void ldv_timer_dummy_factory_17(void *arg0 )
{
  struct timer_list *ldv_17_container_timer_list ;
  {
  {
  ldv_dispatch_instance_register_17_3(ldv_17_container_timer_list);
  }
  return;
  return;
}
}
void ldv_timer_instance_callback_16_2(void (*arg0)(unsigned long ) , unsigned long arg1 )
{
  {
  {
  (*arg0)(arg1);
  }
  return;
}
}
void ldv_timer_timer_instance_16(void *arg0 )
{
  struct timer_list *ldv_16_container_timer_list ;
  struct ldv_struct_timer_instance_16 *data ;
  {
  data = (struct ldv_struct_timer_instance_16 *)arg0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_timer_instance_16 *)0)) {
    {
    ldv_16_container_timer_list = data->arg0;
    ldv_free((void *)data);
    }
  } else {
  }
  {
  ldv_switch_to_interrupt_context();
  }
  if ((unsigned long )ldv_16_container_timer_list->function != (unsigned long )((void (*)(unsigned long ))0)) {
    {
    ldv_timer_instance_callback_16_2(ldv_16_container_timer_list->function, ldv_16_container_timer_list->data);
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
void ldv_unregister_netdev(void *arg0 , struct net_device *arg1 )
{
  struct net_device *ldv_23_netdev_net_device ;
  {
  {
  ldv_23_netdev_net_device = arg1;
  ldv_unregister_netdev_stop_23_2((ldv_23_netdev_net_device->netdev_ops)->ndo_stop,
                                  ldv_23_netdev_net_device);
  ldv_dispatch_deregister_23_1(ldv_23_netdev_net_device);
  }
  return;
  return;
}
}
int ldv_unregister_netdevice_notifier(int arg0 , struct notifier_block *arg1 )
{
  struct notifier_block *ldv_25_struct_notifier_block_struct_notifier_block ;
  {
  {
  ldv_25_struct_notifier_block_struct_notifier_block = arg1;
  ldv_dispatch_deregister_25_1(ldv_25_struct_notifier_block_struct_notifier_block);
  }
  return (arg0);
  return (arg0);
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_inc(v);
  }
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_dec(v);
  }
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  int tmp ;
  {
  {
  tmp = ldv_linux_usb_dev_atomic_dec_and_test(v);
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
static void ldv_lock_sock_nested_121(struct sock *ldv_func_arg1 , int ldv_func_arg2 )
{
  {
  {
  lock_sock_nested(ldv_func_arg1, ldv_func_arg2);
  ldv_linux_net_sock_past_lock_sock_nested();
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_126(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_rose_list_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_127(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_rose_list_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
static void ldv_release_sock_138(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_139(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_140(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_141(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_142(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_143(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static void ldv_release_sock_144(struct sock *ldv_func_arg1 )
{
  {
  {
  ldv_linux_net_sock_before_release_sock();
  release_sock(ldv_func_arg1);
  }
  return;
}
}
static int ldv_seq_open_147(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static struct net_device *ldv_alloc_netdev_mqs_148(int ldv_func_arg1 , char const *ldv_func_arg2 ,
                                                   unsigned char ldv_func_arg3 , void (*ldv_func_arg4)(struct net_device * ) ,
                                                   unsigned int ldv_func_arg5 , unsigned int ldv_func_arg6 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  struct net_device *tmp ;
  struct net_device *tmp___0 ;
  {
  {
  tmp = alloc_netdev_mqs(ldv_func_arg1, ldv_func_arg2, (int )ldv_func_arg3, ldv_func_arg4,
                         ldv_func_arg5, ldv_func_arg6);
  ldv_func_res = tmp;
  tmp___0 = ldv_alloc_netdev_mqs(ldv_func_res, ldv_func_arg1, (char *)ldv_func_arg2,
                                 (int )ldv_func_arg3, ldv_func_arg4, ldv_func_arg5,
                                 ldv_func_arg6);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_register_netdev_149(struct net_device *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdev(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdev(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_free_netdev_150(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_register_netdevice_notifier_151(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = register_netdevice_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_netdevice_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_152(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_153(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_unregister_netdevice_notifier_154(struct notifier_block *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = unregister_netdevice_notifier(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_unregister_netdevice_notifier(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static void ldv_unregister_netdev_155(struct net_device *ldv_func_arg1 )
{
  {
  {
  unregister_netdev(ldv_func_arg1);
  ldv_unregister_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static void ldv_free_netdev_156(struct net_device *ldv_func_arg1 )
{
  {
  {
  free_netdev(ldv_func_arg1);
  ldv_free_netdev((void *)0, ldv_func_arg1);
  }
  return;
}
}
static int ldv_ldv_post_init_157(int ldv_func_arg1 )
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
static void ldv_ldv_check_final_state_158(void)
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
static void ldv_ldv_check_final_state_159(void)
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
static void ldv_ldv_initialize_160(void)
{
  {
  {
  ldv_linux_lib_find_bit_initialize();
  }
  return;
}
}
void ldv_linux_usb_dev_atomic_add(int i , atomic_t *v ) ;
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
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void atomic_add(int i , atomic_t *v ) ;
extern void consume_skb(struct sk_buff * ) ;
static struct sk_buff *ldv_skb_clone_126(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
__inline static void skb_orphan(struct sk_buff *skb )
{
  long tmp ;
  {
  if ((unsigned long )skb->destructor != (unsigned long )((void (*)(struct sk_buff * ))0)) {
    {
    (*(skb->destructor))(skb);
    skb->destructor = (void (*)(struct sk_buff * ))0;
    skb->sk = (struct sock *)0;
    }
  } else {
    {
    tmp = ldv__builtin_expect((unsigned long )skb->sk != (unsigned long )((struct sock *)0),
                           0L);
    }
    if (tmp != 0L) {
      {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                           "i" (2082), "i" (12UL));
      __builtin_unreachable();
      }
    } else {
    }
  }
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  }
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp != 0L) {
    {
    warn_slowpath_null("include/linux/netdevice.h", 2547);
    }
  } else {
  }
  {
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    }
    return;
  } else {
  }
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  }
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  }
  return;
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  }
  return (tmp != 0);
}
}
extern void sock_wfree(struct sk_buff * ) ;
__inline static void skb_set_hash_from_sk(struct sk_buff *skb , struct sock *sk )
{
  {
  if (sk->sk_txhash != 0U) {
    skb->l4_hash = 1U;
    skb->hash = sk->sk_txhash;
  } else {
  }
  return;
}
}
__inline static void skb_set_owner_w(struct sk_buff *skb , struct sock *sk )
{
  {
  {
  skb_orphan(skb);
  skb->sk = sk;
  skb->destructor = & sock_wfree;
  skb_set_hash_from_sk(skb, sk);
  atomic_add((int )skb->truesize, & sk->sk_wmem_alloc);
  }
  return;
}
}
extern int arp_find(unsigned char * , struct sk_buff * ) ;
int rose_add_loopback_node(rose_address *address ) ;
void rose_del_loopback_node(rose_address *address ) ;
static int rose_header(struct sk_buff *skb , struct net_device *dev , unsigned short type ,
                       void const *daddr , void const *saddr , unsigned int len )
{
  unsigned char *buff ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  {
  {
  tmp = skb_push(skb, 5U);
  buff = tmp;
  tmp___0 = buff;
  buff = buff + 1;
  *tmp___0 = 144U;
  tmp___1 = buff;
  buff = buff + 1;
  *tmp___1 = 0U;
  tmp___2 = buff;
  buff = buff + 1;
  *tmp___2 = 0U;
  tmp___3 = buff;
  buff = buff + 1;
  *tmp___3 = 127U;
  tmp___4 = buff;
  buff = buff + 1;
  *tmp___4 = 204U;
  }
  if ((unsigned long )daddr != (unsigned long )((void const *)0)) {
    return (37);
  } else {
  }
  return (-37);
}
}
static int rose_rebuild_header(struct sk_buff *skb )
{
  struct net_device *dev ;
  struct net_device_stats *stats ;
  unsigned char *bp ;
  struct sk_buff *skbn ;
  unsigned int len ;
  int tmp ;
  int tmp___0 ;
  {
  {
  dev = skb->dev;
  stats = & dev->stats;
  bp = skb->data;
  tmp = arp_find(bp + 7UL, skb);
  }
  if (tmp != 0) {
    return (1);
  } else {
  }
  {
  skbn = ldv_skb_clone_126(skb, 32U);
  }
  if ((unsigned long )skbn == (unsigned long )((struct sk_buff *)0)) {
    {
    kfree_skb(skb);
    }
    return (1);
  } else {
  }
  if ((unsigned long )skb->sk != (unsigned long )((struct sock *)0)) {
    {
    skb_set_owner_w(skbn, skb->sk);
    }
  } else {
  }
  {
  kfree_skb(skb);
  len = skbn->len;
  tmp___0 = rose_route_frame(skbn, (ax25_cb *)0);
  }
  if (tmp___0 == 0) {
    {
    kfree_skb(skbn);
    stats->tx_errors = stats->tx_errors + 1UL;
    }
    return (1);
  } else {
  }
  stats->tx_packets = stats->tx_packets + 1UL;
  stats->tx_bytes = stats->tx_bytes + (unsigned long )len;
  return (1);
}
}
static int rose_set_mac_address(struct net_device *dev , void *addr )
{
  struct sockaddr *sa ;
  int err ;
  int tmp ;
  {
  {
  sa = (struct sockaddr *)addr;
  tmp = memcmp((void const *)dev->dev_addr, (void const *)(& sa->sa_data), (size_t )dev->addr_len);
  }
  if (tmp == 0) {
    return (0);
  } else {
  }
  if ((int )dev->flags & 1) {
    {
    err = rose_add_loopback_node((rose_address *)(& sa->sa_data));
    }
    if (err != 0) {
      return (err);
    } else {
    }
    {
    rose_del_loopback_node((rose_address *)dev->dev_addr);
    }
  } else {
  }
  {
  memcpy((void *)dev->dev_addr, (void const *)(& sa->sa_data), (size_t )dev->addr_len);
  }
  return (0);
}
}
static int rose_open(struct net_device *dev )
{
  int err ;
  {
  {
  err = rose_add_loopback_node((rose_address *)dev->dev_addr);
  }
  if (err != 0) {
    return (err);
  } else {
  }
  {
  netif_start_queue(dev);
  }
  return (0);
}
}
static int rose_close(struct net_device *dev )
{
  {
  {
  netif_stop_queue(dev);
  rose_del_loopback_node((rose_address *)dev->dev_addr);
  }
  return (0);
}
}
static netdev_tx_t rose_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct net_device_stats *stats ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  stats = & dev->stats;
  tmp = netif_running((struct net_device const *)dev);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    printk("\vROSE: rose_xmit - called when iface is down\n");
    }
    return (16);
  } else {
  }
  {
  consume_skb(skb);
  stats->tx_errors = stats->tx_errors + 1UL;
  }
  return (0);
}
}
static struct header_ops const rose_header_ops = {& rose_header, 0, & rose_rebuild_header, 0, 0};
static struct net_device_ops const rose_netdev_ops =
     {0, 0, & rose_open, & rose_close, & rose_xmit, 0, 0, 0, & rose_set_mac_address,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0};
void rose_setup(struct net_device *dev )
{
  {
  dev->mtu = 249U;
  dev->netdev_ops = & rose_netdev_ops;
  dev->header_ops = & rose_header_ops;
  dev->hard_header_len = 92U;
  dev->addr_len = 5U;
  dev->type = 270U;
  dev->flags = 128U;
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_3(int (*arg0)(struct sk_buff * ,
                                                               struct net_device * ,
                                                               unsigned short , void * ,
                                                               void * , unsigned int ) ,
                                                   struct sk_buff *arg1 , struct net_device *arg2 ,
                                                   unsigned short arg3 , void *arg4 ,
                                                   void *arg5 , unsigned int arg6 )
{
  {
  {
  rose_header(arg1, arg2, (int )arg3, (void const *)arg4, (void const *)arg5,
              arg6);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_14_9(int (*arg0)(struct sk_buff * ) ,
                                                   struct sk_buff *arg1 )
{
  {
  {
  rose_rebuild_header(arg1);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_3(int (*arg0)(struct net_device * ,
                                                              void * ) , struct net_device *arg1 ,
                                                  void *arg2 )
{
  {
  {
  rose_set_mac_address(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_4_7(enum netdev_tx (*arg0)(struct sk_buff * ,
                                                                         struct net_device * ) ,
                                                  struct sk_buff *arg1 , struct net_device *arg2 )
{
  {
  {
  rose_xmit(arg1, arg2);
  }
  return;
}
}
int ldv_register_netdev_open_21_6(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  int tmp ;
  {
  {
  tmp = rose_open(arg1);
  }
  return (tmp);
}
}
void ldv_unregister_netdev_stop_23_2(int (*arg0)(struct net_device * ) , struct net_device *arg1 )
{
  {
  {
  rose_close(arg1);
  }
  return;
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  {
  ldv_linux_usb_dev_atomic_add(i, v);
  }
  return;
}
}
static struct sk_buff *ldv_skb_clone_126(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
extern int sock_queue_rcv_skb(struct sock * , struct sk_buff * ) ;
int rose_process_rx_frame(struct sock *sk , struct sk_buff *skb ) ;
void rose_enquiry_response(struct sock *sk ) ;
void rose_frames_acked(struct sock *sk , unsigned short nr ) ;
void rose_requeue_frames(struct sock *sk ) ;
int rose_validate_nr(struct sock *sk , unsigned short nr ) ;
int rose_decode(struct sk_buff *skb , int *ns , int *nr , int *q , int *d , int *m ) ;
void rose_start_t2timer(struct sock *sk ) ;
void rose_start_hbtimer(struct sock *sk ) ;
static int rose_state1_machine(struct sock *sk , struct sk_buff *skb , int frametype )
{
  struct rose_sock *rose ;
  bool tmp ;
  int tmp___0 ;
  {
  rose = (struct rose_sock *)sk;
  {
  if (frametype == 15) {
    goto case_15;
  } else {
  }
  if (frametype == 19) {
    goto case_19;
  } else {
  }
  goto switch_default;
  case_15:
  {
  rose_stop_timer(sk);
  rose_start_idletimer(sk);
  rose->condition = 0U;
  rose->vs = 0U;
  rose->va = 0U;
  rose->vr = 0U;
  rose->vl = 0U;
  rose->state = 3U;
  sk->__sk_common.skc_state = 1U;
  tmp = sock_flag((struct sock const *)sk, 0);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    (*(sk->sk_state_change))(sk);
    }
  } else {
  }
  goto ldv_49332;
  case_19:
  {
  rose_write_internal(sk, 23);
  rose_disconnect(sk, 111, (int )*(skb->data + 3UL), (int )*(skb->data + 4UL));
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  }
  goto ldv_49332;
  switch_default: ;
  goto ldv_49332;
  switch_break: ;
  }
  ldv_49332: ;
  return (0);
}
}
static int rose_state2_machine(struct sock *sk , struct sk_buff *skb , int frametype )
{
  struct rose_sock *rose ;
  {
  rose = (struct rose_sock *)sk;
  {
  if (frametype == 19) {
    goto case_19;
  } else {
  }
  if (frametype == 23) {
    goto case_23;
  } else {
  }
  goto switch_default;
  case_19:
  {
  rose_write_internal(sk, 23);
  rose_disconnect(sk, 0, (int )*(skb->data + 3UL), (int )*(skb->data + 4UL));
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  }
  goto ldv_49342;
  case_23:
  {
  rose_disconnect(sk, 0, -1, -1);
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  }
  goto ldv_49342;
  switch_default: ;
  goto ldv_49342;
  switch_break: ;
  }
  ldv_49342: ;
  return (0);
}
}
static int rose_state3_machine(struct sock *sk , struct sk_buff *skb , int frametype ,
                               int ns , int nr , int q , int d , int m )
{
  struct rose_sock *rose ;
  int queued ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  rose = (struct rose_sock *)sk;
  queued = 0;
  {
  if (frametype == 27) {
    goto case_27;
  } else {
  }
  if (frametype == 19) {
    goto case_19;
  } else {
  }
  if (frametype == 1) {
    goto case_1;
  } else {
  }
  if (frametype == 5) {
    goto case_5;
  } else {
  }
  if (frametype == 0) {
    goto case_0;
  } else {
  }
  goto switch_default;
  case_27:
  {
  rose_stop_timer(sk);
  rose_start_idletimer(sk);
  rose_write_internal(sk, 31);
  rose->condition = 0U;
  rose->vs = 0U;
  rose->vr = 0U;
  rose->va = 0U;
  rose->vl = 0U;
  rose_requeue_frames(sk);
  }
  goto ldv_49358;
  case_19:
  {
  rose_write_internal(sk, 23);
  rose_disconnect(sk, 0, (int )*(skb->data + 3UL), (int )*(skb->data + 4UL));
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  }
  goto ldv_49358;
  case_1: ;
  case_5:
  {
  tmp = rose_validate_nr(sk, (int )((unsigned short )nr));
  }
  if (tmp == 0) {
    {
    rose_write_internal(sk, 27);
    rose->condition = 0U;
    rose->vs = 0U;
    rose->vr = 0U;
    rose->va = 0U;
    rose->vl = 0U;
    rose->state = 4U;
    rose_start_t2timer(sk);
    rose_stop_idletimer(sk);
    }
  } else {
    {
    rose_frames_acked(sk, (int )((unsigned short )nr));
    }
    if (frametype == 5) {
      rose->condition = (unsigned int )rose->condition | 2U;
    } else {
      rose->condition = (unsigned int )rose->condition & 253U;
    }
  }
  goto ldv_49358;
  case_0:
  {
  rose->condition = (unsigned int )rose->condition & 253U;
  tmp___0 = rose_validate_nr(sk, (int )((unsigned short )nr));
  }
  if (tmp___0 == 0) {
    {
    rose_write_internal(sk, 27);
    rose->condition = 0U;
    rose->vs = 0U;
    rose->vr = 0U;
    rose->va = 0U;
    rose->vl = 0U;
    rose->state = 4U;
    rose_start_t2timer(sk);
    rose_stop_idletimer(sk);
    }
    goto ldv_49358;
  } else {
  }
  {
  rose_frames_acked(sk, (int )((unsigned short )nr));
  }
  if (ns == (int )rose->vr) {
    {
    rose_start_idletimer(sk);
    tmp___1 = sock_queue_rcv_skb(sk, skb);
    }
    if (tmp___1 == 0) {
      rose->vr = (unsigned short )(((int )rose->vr + 1) % 8);
      queued = 1;
    } else {
      {
      rose_write_internal(sk, 27);
      rose->condition = 0U;
      rose->vs = 0U;
      rose->vr = 0U;
      rose->va = 0U;
      rose->vl = 0U;
      rose->state = 4U;
      rose_start_t2timer(sk);
      rose_stop_idletimer(sk);
      }
      goto ldv_49358;
    }
    {
    tmp___2 = atomic_read((atomic_t const *)(& sk->sk_backlog.rmem_alloc));
    }
    if (tmp___2 > sk->sk_rcvbuf >> 1) {
      rose->condition = (unsigned int )rose->condition | 4U;
    } else {
    }
  } else {
  }
  if (((int )rose->vl + sysctl_rose_window_size) % 8 == (int )rose->vr) {
    {
    rose->condition = (unsigned int )rose->condition & 254U;
    rose_stop_timer(sk);
    rose_enquiry_response(sk);
    }
  } else {
    {
    rose->condition = (unsigned int )rose->condition | 1U;
    rose_start_hbtimer(sk);
    }
  }
  goto ldv_49358;
  switch_default:
  {
  printk("\fROSE: unknown %02X in state 3\n", frametype);
  }
  goto ldv_49358;
  switch_break: ;
  }
  ldv_49358: ;
  return (queued);
}
}
static int rose_state4_machine(struct sock *sk , struct sk_buff *skb , int frametype )
{
  struct rose_sock *rose ;
  {
  rose = (struct rose_sock *)sk;
  {
  if (frametype == 27) {
    goto case_27;
  } else {
  }
  if (frametype == 31) {
    goto case_31;
  } else {
  }
  if (frametype == 19) {
    goto case_19;
  } else {
  }
  goto switch_default;
  case_27:
  {
  rose_write_internal(sk, 31);
  }
  case_31:
  {
  rose_stop_timer(sk);
  rose_start_idletimer(sk);
  rose->condition = 0U;
  rose->va = 0U;
  rose->vr = 0U;
  rose->vs = 0U;
  rose->vl = 0U;
  rose->state = 3U;
  rose_requeue_frames(sk);
  }
  goto ldv_49372;
  case_19:
  {
  rose_write_internal(sk, 23);
  rose_disconnect(sk, 0, (int )*(skb->data + 3UL), (int )*(skb->data + 4UL));
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  }
  goto ldv_49372;
  switch_default: ;
  goto ldv_49372;
  switch_break: ;
  }
  ldv_49372: ;
  return (0);
}
}
static int rose_state5_machine(struct sock *sk , struct sk_buff *skb , int frametype )
{
  {
  if (frametype == 19) {
    {
    rose_write_internal(sk, 23);
    rose_disconnect(sk, 0, (int )*(skb->data + 3UL), (int )*(skb->data + 4UL));
    (((struct rose_sock *)sk)->neighbour)->use = (unsigned short )((int )(((struct rose_sock *)sk)->neighbour)->use - 1);
    }
  } else {
  }
  return (0);
}
}
int rose_process_rx_frame(struct sock *sk , struct sk_buff *skb )
{
  struct rose_sock *rose ;
  int queued ;
  int frametype ;
  int ns ;
  int nr ;
  int q ;
  int d ;
  int m ;
  {
  rose = (struct rose_sock *)sk;
  queued = 0;
  if ((unsigned int )rose->state == 0U) {
    return (0);
  } else {
  }
  {
  frametype = rose_decode(skb, & ns, & nr, & q, & d, & m);
  }
  {
  if ((int )rose->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )rose->state == 2) {
    goto case_2;
  } else {
  }
  if ((int )rose->state == 3) {
    goto case_3;
  } else {
  }
  if ((int )rose->state == 4) {
    goto case_4;
  } else {
  }
  if ((int )rose->state == 5) {
    goto case_5;
  } else {
  }
  goto switch_break;
  case_1:
  {
  queued = rose_state1_machine(sk, skb, frametype);
  }
  goto ldv_49393;
  case_2:
  {
  queued = rose_state2_machine(sk, skb, frametype);
  }
  goto ldv_49393;
  case_3:
  {
  queued = rose_state3_machine(sk, skb, frametype, ns, nr, q, d, m);
  }
  goto ldv_49393;
  case_4:
  {
  queued = rose_state4_machine(sk, skb, frametype);
  }
  goto ldv_49393;
  case_5:
  {
  queued = rose_state5_machine(sk, skb, frametype);
  }
  goto ldv_49393;
  switch_break: ;
  }
  ldv_49393:
  {
  rose_kick(sk);
  }
  return (queued);
}
}
__inline static int atomic_dec_and_test(atomic_t *v ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
static int ldv_del_timer_125(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_126(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_127(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_128(struct timer_list *ldv_func_arg1 ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
__inline static void ax25_cb_put(ax25_cb *ax25 )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& ax25->refcount);
  }
  if (tmp != 0) {
    {
    kfree((void const *)ax25->digipeat);
    kfree((void const *)ax25);
    }
  } else {
  }
  return;
}
}
extern ax25_cb *ax25_find_cb(ax25_address * , ax25_address * , ax25_digi * , struct net_device * ) ;
extern ax25_cb *ax25_send_frame(struct sk_buff * , int , ax25_address * , ax25_address * ,
                                ax25_digi * , struct net_device * ) ;
void rose_start_ftimer(struct rose_neigh *neigh ) ;
void rose_stop_ftimer(struct rose_neigh *neigh ) ;
void rose_stop_t0timer(struct rose_neigh *neigh ) ;
int rose_ftimer_running(struct rose_neigh *neigh ) ;
void rose_link_rx_restart(struct sk_buff *skb , struct rose_neigh *neigh , unsigned short frametype ) ;
void rose_transmit_link(struct sk_buff *skb , struct rose_neigh *neigh ) ;
int rose_loopback_queue(struct sk_buff *skb , struct rose_neigh *neigh ) ;
static void rose_ftimer_expiry(unsigned long param ) ;
static void rose_t0timer_expiry(unsigned long param ) ;
static void rose_transmit_restart_confirmation(struct rose_neigh *neigh ) ;
static void rose_transmit_restart_request(struct rose_neigh *neigh ) ;
void rose_start_ftimer(struct rose_neigh *neigh )
{
  unsigned long tmp ;
  {
  {
  ldv_del_timer_125(& neigh->ftimer);
  neigh->ftimer.data = (unsigned long )neigh;
  neigh->ftimer.function = & rose_ftimer_expiry;
  tmp = msecs_to_jiffies((unsigned int const )sysctl_rose_link_fail_timeout);
  neigh->ftimer.expires = (unsigned long )jiffies + tmp;
  add_timer(& neigh->ftimer);
  }
  return;
}
}
static void rose_start_t0timer(struct rose_neigh *neigh )
{
  unsigned long tmp ;
  {
  {
  ldv_del_timer_126(& neigh->t0timer);
  neigh->t0timer.data = (unsigned long )neigh;
  neigh->t0timer.function = & rose_t0timer_expiry;
  tmp = msecs_to_jiffies((unsigned int const )sysctl_rose_restart_request_timeout);
  neigh->t0timer.expires = (unsigned long )jiffies + tmp;
  add_timer(& neigh->t0timer);
  }
  return;
}
}
void rose_stop_ftimer(struct rose_neigh *neigh )
{
  {
  {
  ldv_del_timer_127(& neigh->ftimer);
  }
  return;
}
}
void rose_stop_t0timer(struct rose_neigh *neigh )
{
  {
  {
  ldv_del_timer_128(& neigh->t0timer);
  }
  return;
}
}
int rose_ftimer_running(struct rose_neigh *neigh )
{
  int tmp ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& neigh->ftimer));
  }
  return (tmp);
}
}
static int rose_t0timer_running(struct rose_neigh *neigh )
{
  int tmp ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& neigh->t0timer));
  }
  return (tmp);
}
}
static void rose_ftimer_expiry(unsigned long param )
{
  {
  return;
}
}
static void rose_t0timer_expiry(unsigned long param )
{
  struct rose_neigh *neigh ;
  {
  {
  neigh = (struct rose_neigh *)param;
  rose_transmit_restart_request(neigh);
  neigh->dce_mode = 0;
  rose_start_t0timer(neigh);
  }
  return;
}
}
static int rose_send_frame(struct sk_buff *skb , struct rose_neigh *neigh )
{
  ax25_address *rose_call ;
  ax25_cb *ax25s ;
  int tmp ;
  {
  {
  tmp = ax25cmp((ax25_address const *)(& rose_callsign), & null_ax25_address);
  }
  if (tmp == 0) {
    rose_call = (ax25_address *)(neigh->dev)->dev_addr;
  } else {
    rose_call = & rose_callsign;
  }
  {
  ax25s = neigh->ax25;
  neigh->ax25 = ax25_send_frame(skb, 260, rose_call, & neigh->callsign, neigh->digipeat,
                                neigh->dev);
  }
  if ((unsigned long )ax25s != (unsigned long )((ax25_cb *)0)) {
    {
    ax25_cb_put(ax25s);
    }
  } else {
  }
  return ((unsigned long )neigh->ax25 != (unsigned long )((ax25_cb *)0));
}
}
static int rose_link_up(struct rose_neigh *neigh )
{
  ax25_address *rose_call ;
  ax25_cb *ax25s ;
  int tmp ;
  {
  {
  tmp = ax25cmp((ax25_address const *)(& rose_callsign), & null_ax25_address);
  }
  if (tmp == 0) {
    rose_call = (ax25_address *)(neigh->dev)->dev_addr;
  } else {
    rose_call = & rose_callsign;
  }
  {
  ax25s = neigh->ax25;
  neigh->ax25 = ax25_find_cb(rose_call, & neigh->callsign, neigh->digipeat, neigh->dev);
  }
  if ((unsigned long )ax25s != (unsigned long )((ax25_cb *)0)) {
    {
    ax25_cb_put(ax25s);
    }
  } else {
  }
  return ((unsigned long )neigh->ax25 != (unsigned long )((ax25_cb *)0));
}
}
void rose_link_rx_restart(struct sk_buff *skb , struct rose_neigh *neigh , unsigned short frametype )
{
  struct sk_buff *skbn ;
  int tmp ;
  {
  {
  if ((int )frametype == 251) {
    goto case_251;
  } else {
  }
  if ((int )frametype == 255) {
    goto case_255;
  } else {
  }
  if ((int )frametype == 241) {
    goto case_241;
  } else {
  }
  goto switch_default;
  case_251:
  {
  rose_stop_t0timer(neigh);
  neigh->restarted = 1;
  neigh->dce_mode = (unsigned int )*(skb->data + 3UL) == 0U;
  rose_transmit_restart_confirmation(neigh);
  }
  goto ldv_49367;
  case_255:
  {
  rose_stop_t0timer(neigh);
  neigh->restarted = 1;
  }
  goto ldv_49367;
  case_241:
  {
  printk("\fROSE: received diagnostic #%d - %3ph\n", (int )*(skb->data + 3UL), skb->data + 4UL);
  }
  goto ldv_49367;
  switch_default:
  {
  printk("\fROSE: received unknown %02X with LCI 000\n", (int )frametype);
  }
  goto ldv_49367;
  switch_break: ;
  }
  ldv_49367: ;
  if ((int )((signed char )neigh->restarted) != 0) {
    goto ldv_49372;
    ldv_49371:
    {
    tmp = rose_send_frame(skbn, neigh);
    }
    if (tmp == 0) {
      {
      kfree_skb(skbn);
      }
    } else {
    }
    ldv_49372:
    {
    skbn = skb_dequeue(& neigh->queue);
    }
    if ((unsigned long )skbn != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_49371;
    } else {
    }
  } else {
  }
  return;
}
}
static void rose_transmit_restart_request(struct rose_neigh *neigh )
{
  struct sk_buff *skb ;
  unsigned char *dptr ;
  int len ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  int tmp___5 ;
  {
  {
  len = 95;
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_reserve(skb, 89);
  dptr = skb_put(skb, 6U);
  tmp = dptr;
  dptr = dptr + 1;
  *tmp = 1U;
  tmp___0 = dptr;
  dptr = dptr + 1;
  *tmp___0 = 16U;
  tmp___1 = dptr;
  dptr = dptr + 1;
  *tmp___1 = 0U;
  tmp___2 = dptr;
  dptr = dptr + 1;
  *tmp___2 = 251U;
  tmp___3 = dptr;
  dptr = dptr + 1;
  *tmp___3 = 0U;
  tmp___4 = dptr;
  dptr = dptr + 1;
  *tmp___4 = 0U;
  tmp___5 = rose_send_frame(skb, neigh);
  }
  if (tmp___5 == 0) {
    {
    kfree_skb(skb);
    }
  } else {
  }
  return;
}
}
static void rose_transmit_restart_confirmation(struct rose_neigh *neigh )
{
  struct sk_buff *skb ;
  unsigned char *dptr ;
  int len ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  int tmp___3 ;
  {
  {
  len = 93;
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_reserve(skb, 89);
  dptr = skb_put(skb, 4U);
  tmp = dptr;
  dptr = dptr + 1;
  *tmp = 1U;
  tmp___0 = dptr;
  dptr = dptr + 1;
  *tmp___0 = 16U;
  tmp___1 = dptr;
  dptr = dptr + 1;
  *tmp___1 = 0U;
  tmp___2 = dptr;
  dptr = dptr + 1;
  *tmp___2 = 255U;
  tmp___3 = rose_send_frame(skb, neigh);
  }
  if (tmp___3 == 0) {
    {
    kfree_skb(skb);
    }
  } else {
  }
  return;
}
}
void rose_transmit_clear_request(struct rose_neigh *neigh , unsigned int lci , unsigned char cause ,
                                 unsigned char diagnostic )
{
  struct sk_buff *skb ;
  unsigned char *dptr ;
  int len ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  int tmp___5 ;
  {
  {
  len = 95;
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_reserve(skb, 89);
  dptr = skb_put(skb, 6U);
  tmp = dptr;
  dptr = dptr + 1;
  *tmp = 1U;
  tmp___0 = dptr;
  dptr = dptr + 1;
  *tmp___0 = ((unsigned int )((unsigned char )(lci >> 8)) & 15U) | 16U;
  tmp___1 = dptr;
  dptr = dptr + 1;
  *tmp___1 = (unsigned char )lci;
  tmp___2 = dptr;
  dptr = dptr + 1;
  *tmp___2 = 19U;
  tmp___3 = dptr;
  dptr = dptr + 1;
  *tmp___3 = cause;
  tmp___4 = dptr;
  dptr = dptr + 1;
  *tmp___4 = diagnostic;
  tmp___5 = rose_send_frame(skb, neigh);
  }
  if (tmp___5 == 0) {
    {
    kfree_skb(skb);
    }
  } else {
  }
  return;
}
}
void rose_transmit_link(struct sk_buff *skb , struct rose_neigh *neigh )
{
  unsigned char *dptr ;
  int tmp ;
  unsigned char *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  if ((int )((signed char )neigh->loopback) != 0) {
    {
    rose_loopback_queue(skb, neigh);
    }
    return;
  } else {
  }
  {
  tmp = rose_link_up(neigh);
  }
  if (tmp == 0) {
    neigh->restarted = 0;
  } else {
  }
  {
  dptr = skb_push(skb, 1U);
  tmp___0 = dptr;
  dptr = dptr + 1;
  *tmp___0 = 1U;
  }
  if ((int )((signed char )neigh->restarted) != 0) {
    {
    tmp___1 = rose_send_frame(skb, neigh);
    }
    if (tmp___1 == 0) {
      {
      kfree_skb(skb);
      }
    } else {
    }
  } else {
    {
    skb_queue_tail(& neigh->queue, skb);
    tmp___2 = rose_t0timer_running(neigh);
    }
    if (tmp___2 == 0) {
      {
      rose_transmit_restart_request(neigh);
      neigh->dce_mode = 0;
      rose_start_t0timer(neigh);
      }
    } else {
    }
  }
  return;
}
}
extern int ldv_del_timer(int , struct timer_list * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
static int ldv_del_timer_125(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_126(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_127(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_128(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_126___0(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_127___0(struct timer_list *ldv_func_arg1 ) ;
static struct sk_buff *ldv_skb_clone_125(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct rose_neigh *rose_loopback_neigh ;
static struct sk_buff_head loopback_queue ;
static struct timer_list loopback_timer ;
static void rose_set_loopback_timer(void) ;
void rose_loopback_init(void)
{
  struct lock_class_key __key ;
  {
  {
  skb_queue_head_init(& loopback_queue);
  init_timer_key(& loopback_timer, 0U, "(&loopback_timer)", & __key);
  }
  return;
}
}
static int rose_loopback_running(void)
{
  int tmp ;
  {
  {
  tmp = timer_pending((struct timer_list const *)(& loopback_timer));
  }
  return (tmp);
}
}
int rose_loopback_queue(struct sk_buff *skb , struct rose_neigh *neigh )
{
  struct sk_buff *skbn ;
  int tmp ;
  {
  {
  skbn = ldv_skb_clone_125(skb, 32U);
  kfree_skb(skb);
  }
  if ((unsigned long )skbn != (unsigned long )((struct sk_buff *)0)) {
    {
    skb_queue_tail(& loopback_queue, skbn);
    tmp = rose_loopback_running();
    }
    if (tmp == 0) {
      {
      rose_set_loopback_timer();
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
static void rose_loopback_timer(unsigned long param ) ;
static void rose_set_loopback_timer(void)
{
  {
  {
  ldv_del_timer_126___0(& loopback_timer);
  loopback_timer.data = 0UL;
  loopback_timer.function = & rose_loopback_timer;
  loopback_timer.expires = (unsigned long )jiffies + 10UL;
  add_timer(& loopback_timer);
  }
  return;
}
}
static void rose_loopback_timer(unsigned long param )
{
  struct sk_buff *skb ;
  struct net_device *dev ;
  rose_address *dest ;
  struct sock *sk ;
  unsigned short frametype ;
  unsigned int lci_i ;
  unsigned int lci_o ;
  int tmp ;
  int tmp___0 ;
  {
  goto ldv_49331;
  ldv_49332: ;
  if (skb->len <= 2U) {
    {
    kfree_skb(skb);
    }
    goto ldv_49331;
  } else {
  }
  lci_i = (unsigned int )((((int )*(skb->data) << 8) & 3840) + (int )*(skb->data + 1UL));
  frametype = (unsigned short )*(skb->data + 2UL);
  if ((unsigned int )frametype == 11U && (skb->len <= 14U || (unsigned int )*(skb->data + 3UL) != 170U)) {
    {
    kfree_skb(skb);
    }
    goto ldv_49331;
  } else {
  }
  {
  dest = (rose_address *)skb->data + 4U;
  lci_o = 51U - lci_i;
  skb_reset_transport_header(skb);
  sk = rose_find_socket(lci_o, rose_loopback_neigh);
  }
  if ((unsigned long )sk != (unsigned long )((struct sock *)0)) {
    {
    tmp = rose_process_rx_frame(sk, skb);
    }
    if (tmp == 0) {
      {
      kfree_skb(skb);
      }
    } else {
    }
    goto ldv_49331;
  } else {
  }
  if ((unsigned int )frametype == 11U) {
    {
    dev = rose_dev_get(dest);
    }
    if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
      {
      tmp___0 = rose_rx_call_request(skb, dev, rose_loopback_neigh, lci_o);
      }
      if (tmp___0 == 0) {
        {
        kfree_skb(skb);
        }
      } else {
      }
    } else {
      {
      kfree_skb(skb);
      }
    }
  } else {
    {
    kfree_skb(skb);
    }
  }
  ldv_49331:
  {
  skb = skb_dequeue(& loopback_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49332;
  } else {
  }
  return;
}
}
void rose_loopback_clear(void)
{
  struct sk_buff *skb ;
  {
  {
  ldv_del_timer_127___0(& loopback_timer);
  }
  goto ldv_49339;
  ldv_49338:
  {
  skb->sk = (struct sock *)0;
  kfree_skb(skb);
  }
  ldv_49339:
  {
  skb = skb_dequeue(& loopback_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49338;
  } else {
  }
  return;
}
}
static struct sk_buff *ldv_skb_clone_125(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
static int ldv_del_timer_126___0(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_127___0(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static void atomic_add(int i , atomic_t *v ) ;
static struct sk_buff *ldv_skb_clone_125___0(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
__inline static void skb_set_owner_w___0(struct sk_buff *skb , struct sock *sk )
{
  {
  {
  skb_orphan(skb);
  skb->sk = sk;
  skb->destructor = & sock_wfree;
  skb_set_hash_from_sk(skb, sk);
  atomic_add((int )skb->truesize, & sk->sk_wmem_alloc);
  }
  return;
}
}
static void rose_send_iframe(struct sock *sk , struct sk_buff *skb )
{
  struct rose_sock *rose ;
  {
  rose = (struct rose_sock *)sk;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  *(skb->data + 2UL) = (unsigned char )((int )((signed char )*(skb->data + 2UL)) | (int )((signed char )((int )rose->vr << 5)));
  *(skb->data + 2UL) = (unsigned char )((int )((signed char )*(skb->data + 2UL)) | ((int )((signed char )((int )rose->vs << 1)) & 14));
  rose_start_idletimer(sk);
  rose_transmit_link(skb, rose->neighbour);
  }
  return;
}
}
void rose_kick(struct sock *sk )
{
  struct rose_sock *rose ;
  struct sk_buff *skb ;
  struct sk_buff *skbn ;
  unsigned short start ;
  unsigned short end ;
  struct sk_buff *tmp ;
  struct sk_buff *tmp___0 ;
  {
  rose = (struct rose_sock *)sk;
  if ((unsigned int )rose->state != 3U) {
    return;
  } else {
  }
  if (((int )rose->condition & 2) != 0) {
    return;
  } else {
  }
  {
  tmp = skb_peek((struct sk_buff_head const *)(& sk->sk_write_queue));
  }
  if ((unsigned long )tmp == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  tmp___0 = skb_peek((struct sk_buff_head const *)(& rose->ack_queue));
  start = (unsigned long )tmp___0 == (unsigned long )((struct sk_buff *)0) ? rose->va : rose->vs;
  end = (unsigned short )(((int )rose->va + sysctl_rose_window_size) % 8);
  }
  if ((int )start == (int )end) {
    return;
  } else {
  }
  {
  rose->vs = start;
  skb = skb_dequeue(& sk->sk_write_queue);
  }
  ldv_49320:
  {
  skbn = ldv_skb_clone_125___0(skb, 32U);
  }
  if ((unsigned long )skbn == (unsigned long )((struct sk_buff *)0)) {
    {
    skb_queue_head(& sk->sk_write_queue, skb);
    }
    goto ldv_49319;
  } else {
  }
  {
  skb_set_owner_w___0(skbn, sk);
  rose_send_iframe(sk, skbn);
  rose->vs = (unsigned short )(((int )rose->vs + 1) % 8);
  skb_queue_tail(& rose->ack_queue, skb);
  }
  if ((int )rose->vs != (int )end) {
    {
    skb = skb_dequeue(& sk->sk_write_queue);
    }
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      goto ldv_49320;
    } else {
      goto ldv_49319;
    }
  } else {
  }
  ldv_49319:
  {
  rose->vl = rose->vr;
  rose->condition = (unsigned int )rose->condition & 254U;
  rose_stop_timer(sk);
  }
  return;
}
}
void rose_enquiry_response(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  rose = (struct rose_sock *)sk;
  if (((int )rose->condition & 4) != 0) {
    {
    rose_write_internal(sk, 5);
    }
  } else {
    {
    rose_write_internal(sk, 1);
    }
  }
  {
  rose->vl = rose->vr;
  rose->condition = (unsigned int )rose->condition & 254U;
  rose_stop_timer(sk);
  }
  return;
}
}
static struct sk_buff *ldv_skb_clone_125___0(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  }
  return ((struct sk_buff *)tmp);
}
}
extern void ldv_after_alloc(void * ) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_lock(void) ;
void ldv_linux_kernel_rcu_update_lock_rcu_read_unlock(void) ;
extern void __bad_size_call_parameter(void) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static int atomic_dec_and_test(atomic_t *v ) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_neigh_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_neigh_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_node_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_node_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_route_list_lock(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_route_list_lock(void) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_bh_149(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_150(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_150(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_bh_150(spinlock_t *lock ) ;
__inline static void rcu_read_lock(void) ;
__inline static void rcu_read_unlock(void) ;
static int ldv_seq_open_159(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
static int ldv_seq_open_162(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
static int ldv_seq_open_165(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
extern void skb_queue_purge(struct sk_buff_head * ) ;
extern struct net_device *__dev_get_by_name(struct net * , char const * ) ;
__inline static void dev_put(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1:
  pao_ID__ = -1;
  {
  if (4UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43827;
  case_2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43827;
  case_4:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43827;
  case_8:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43827;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_43827: ;
  goto ldv_43832;
  case_2___0:
  pao_ID_____0 = -1;
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
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43838;
  case_2___1:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43838;
  case_4___0:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43838;
  case_8___0:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43838;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_43838: ;
  goto ldv_43832;
  case_4___1:
  pao_ID_____1 = -1;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43848;
  case_2___2:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43848;
  case_4___2:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43848;
  case_8___1:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43848;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_43848: ;
  goto ldv_43832;
  case_8___2:
  pao_ID_____2 = -1;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("decb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43858;
  case_2___3:
  __asm__ ("decw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43858;
  case_4___3:
  __asm__ ("decl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43858;
  case_8___3:
  __asm__ ("decq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43858;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_43858: ;
  goto ldv_43832;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_43832;
  switch_break: ;
  }
  ldv_43832: ;
  return;
}
}
__inline static void dev_hold(struct net_device *dev )
{
  void const *__vpp_verify ;
  int pao_ID__ ;
  int pao_ID_____0 ;
  int pao_ID_____1 ;
  int pao_ID_____2 ;
  {
  __vpp_verify = (void const *)0;
  {
  if (4UL == 1UL) {
    goto case_1;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___0;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___1;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___2;
  } else {
  }
  goto switch_default___3;
  case_1:
  pao_ID__ = 1;
  {
  if (4UL == 1UL) {
    goto case_1___0;
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
  case_1___0:
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43873;
  case_2:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43873;
  case_4:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43873;
  case_8:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43873;
  switch_default:
  {
  __bad_percpu_size();
  }
  switch_break___0: ;
  }
  ldv_43873: ;
  goto ldv_43878;
  case_2___0:
  pao_ID_____0 = 1;
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
    goto case_4___0;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___0;
  } else {
  }
  goto switch_default___0;
  case_1___1:
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43884;
  case_2___1:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43884;
  case_4___0:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43884;
  case_8___0:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43884;
  switch_default___0:
  {
  __bad_percpu_size();
  }
  switch_break___1: ;
  }
  ldv_43884: ;
  goto ldv_43878;
  case_4___1:
  pao_ID_____1 = 1;
  {
  if (4UL == 1UL) {
    goto case_1___2;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___2;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___2;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___1;
  } else {
  }
  goto switch_default___1;
  case_1___2:
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43894;
  case_2___2:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43894;
  case_4___2:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43894;
  case_8___1:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43894;
  switch_default___1:
  {
  __bad_percpu_size();
  }
  switch_break___2: ;
  }
  ldv_43894: ;
  goto ldv_43878;
  case_8___2:
  pao_ID_____2 = 1;
  {
  if (4UL == 1UL) {
    goto case_1___3;
  } else {
  }
  if (4UL == 2UL) {
    goto case_2___3;
  } else {
  }
  if (4UL == 4UL) {
    goto case_4___3;
  } else {
  }
  if (4UL == 8UL) {
    goto case_8___3;
  } else {
  }
  goto switch_default___2;
  case_1___3:
  __asm__ ("incb %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43904;
  case_2___3:
  __asm__ ("incw %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43904;
  case_4___3:
  __asm__ ("incl %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43904;
  case_8___3:
  __asm__ ("incq %%gs:%0": "+m" (*(dev->pcpu_refcnt)));
  goto ldv_43904;
  switch_default___2:
  {
  __bad_percpu_size();
  }
  switch_break___3: ;
  }
  ldv_43904: ;
  goto ldv_43878;
  switch_default___3:
  {
  __bad_size_call_parameter();
  }
  goto ldv_43878;
  switch_break: ;
  }
  ldv_43878: ;
  return;
}
}
__inline static void ax25_cb_put___0(ax25_cb *ax25 )
{
  int tmp ;
  {
  {
  tmp = atomic_dec_and_test(& ax25->refcount);
  }
  if (tmp != 0) {
    {
    kfree((void const *)ax25->digipeat);
    kfree((void const *)ax25);
    }
  } else {
  }
  return;
}
}
struct rose_neigh *rose_loopback_neigh ;
static unsigned int rose_neigh_no = 1U;
static struct rose_node *rose_node_list ;
static spinlock_t rose_node_list_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rose_node_list_lock",
                                                     0, 0UL}}}};
static struct rose_neigh *rose_neigh_list ;
static spinlock_t rose_neigh_list_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rose_neigh_list_lock",
                                                     0, 0UL}}}};
static struct rose_route *rose_route_list ;
static spinlock_t rose_route_list_lock = {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "rose_route_list_lock",
                                                     0, 0UL}}}};
static int rose_add_node(struct rose_route_struct *rose_route , struct net_device *dev )
{
  struct rose_node *rose_node ;
  struct rose_node *rose_tmpn ;
  struct rose_node *rose_tmpp ;
  struct rose_neigh *rose_neigh ;
  int i ;
  int res ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  unsigned int tmp___2 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  {
  res = 0;
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  rose_node = rose_node_list;
  }
  goto ldv_49809;
  ldv_49808: ;
  if ((int )rose_node->mask == (int )rose_route->mask) {
    {
    tmp = rosecmpm(& rose_route->address, & rose_node->address, (int )rose_route->mask);
    }
    if (tmp == 0) {
      goto ldv_49807;
    } else {
    }
  } else {
  }
  rose_node = rose_node->next;
  ldv_49809: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49808;
  } else {
  }
  ldv_49807: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0) && (int )((signed char )rose_node->loopback) != 0) {
    res = -22;
    goto out;
  } else {
  }
  rose_neigh = rose_neigh_list;
  goto ldv_49813;
  ldv_49812:
  {
  tmp___0 = ax25cmp((ax25_address const *)(& rose_route->neighbour), (ax25_address const *)(& rose_neigh->callsign));
  }
  if (tmp___0 == 0 && (unsigned long )rose_neigh->dev == (unsigned long )dev) {
    goto ldv_49811;
  } else {
  }
  rose_neigh = rose_neigh->next;
  ldv_49813: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_49812;
  } else {
  }
  ldv_49811: ;
  if ((unsigned long )rose_neigh == (unsigned long )((struct rose_neigh *)0)) {
    {
    tmp___1 = kmalloc(408UL, 32U);
    rose_neigh = (struct rose_neigh *)tmp___1;
    }
    if ((unsigned long )rose_neigh == (unsigned long )((struct rose_neigh *)0)) {
      res = -12;
      goto out;
    } else {
    }
    {
    rose_neigh->callsign = rose_route->neighbour;
    rose_neigh->digipeat = (ax25_digi *)0;
    rose_neigh->ax25 = (ax25_cb *)0;
    rose_neigh->dev = dev;
    rose_neigh->count = 0U;
    rose_neigh->use = 0U;
    rose_neigh->dce_mode = 0;
    rose_neigh->loopback = 0;
    tmp___2 = rose_neigh_no;
    rose_neigh_no = rose_neigh_no + 1U;
    rose_neigh->number = tmp___2;
    rose_neigh->restarted = 0;
    skb_queue_head_init(& rose_neigh->queue);
    init_timer_key(& rose_neigh->ftimer, 0U, "(&rose_neigh->ftimer)", & __key);
    init_timer_key(& rose_neigh->t0timer, 0U, "(&rose_neigh->t0timer)", & __key___0);
    }
    if ((unsigned int )rose_route->ndigis != 0U) {
      {
      tmp___3 = kmalloc(66UL, 32U);
      rose_neigh->digipeat = (ax25_digi *)tmp___3;
      }
      if ((unsigned long )rose_neigh->digipeat == (unsigned long )((ax25_digi *)0)) {
        {
        kfree((void const *)rose_neigh);
        res = -12;
        }
        goto out;
      } else {
      }
      (rose_neigh->digipeat)->ndigi = rose_route->ndigis;
      (rose_neigh->digipeat)->lastrepeat = -1;
      i = 0;
      goto ldv_49817;
      ldv_49816:
      (rose_neigh->digipeat)->calls[i] = rose_route->digipeaters[i];
      (rose_neigh->digipeat)->repeated[i] = 0U;
      i = i + 1;
      ldv_49817: ;
      if (i < (int )rose_route->ndigis) {
        goto ldv_49816;
      } else {
      }
    } else {
    }
    rose_neigh->next = rose_neigh_list;
    rose_neigh_list = rose_neigh;
  } else {
  }
  if ((unsigned long )rose_node == (unsigned long )((struct rose_node *)0)) {
    rose_tmpn = rose_node_list;
    rose_tmpp = (struct rose_node *)0;
    goto ldv_49821;
    ldv_49820: ;
    if ((int )rose_tmpn->mask > (int )rose_route->mask) {
      rose_tmpp = rose_tmpn;
      rose_tmpn = rose_tmpn->next;
    } else {
      goto ldv_49819;
    }
    ldv_49821: ;
    if ((unsigned long )rose_tmpn != (unsigned long )((struct rose_node *)0)) {
      goto ldv_49820;
    } else {
    }
    ldv_49819:
    {
    tmp___4 = kmalloc(48UL, 32U);
    rose_node = (struct rose_node *)tmp___4;
    }
    if ((unsigned long )rose_node == (unsigned long )((struct rose_node *)0)) {
      res = -12;
      goto out;
    } else {
    }
    rose_node->address = rose_route->address;
    rose_node->mask = rose_route->mask;
    rose_node->count = 1U;
    rose_node->loopback = 0;
    rose_node->neighbour[0] = rose_neigh;
    if ((unsigned long )rose_tmpn == (unsigned long )((struct rose_node *)0)) {
      if ((unsigned long )rose_tmpp == (unsigned long )((struct rose_node *)0)) {
        rose_node_list = rose_node;
        rose_node->next = (struct rose_node *)0;
      } else {
        rose_tmpp->next = rose_node;
        rose_node->next = (struct rose_node *)0;
      }
    } else
    if ((unsigned long )rose_tmpp == (unsigned long )((struct rose_node *)0)) {
      rose_node->next = rose_node_list;
      rose_node_list = rose_node;
    } else {
      rose_tmpp->next = rose_node;
      rose_node->next = rose_tmpn;
    }
    rose_neigh->count = (unsigned short )((int )rose_neigh->count + 1);
    goto out;
  } else {
  }
  if ((unsigned int )rose_node->count <= 2U) {
    rose_node->neighbour[(int )rose_node->count] = rose_neigh;
    rose_node->count = (unsigned char )((int )rose_node->count + 1);
    rose_neigh->count = (unsigned short )((int )rose_neigh->count + 1);
  } else {
  }
  out:
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return (res);
}
}
static void rose_remove_node(struct rose_node *rose_node )
{
  struct rose_node *s ;
  {
  s = rose_node_list;
  if ((unsigned long )s == (unsigned long )rose_node) {
    {
    rose_node_list = rose_node->next;
    kfree((void const *)rose_node);
    }
    return;
  } else {
  }
  goto ldv_49827;
  ldv_49826: ;
  if ((unsigned long )s->next == (unsigned long )rose_node) {
    {
    s->next = rose_node->next;
    kfree((void const *)rose_node);
    }
    return;
  } else {
  }
  s = s->next;
  ldv_49827: ;
  if ((unsigned long )s != (unsigned long )((struct rose_node *)0) && (unsigned long )s->next != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49826;
  } else {
  }
  return;
}
}
static void rose_remove_neigh(struct rose_neigh *rose_neigh )
{
  struct rose_neigh *s ;
  {
  {
  rose_stop_ftimer(rose_neigh);
  rose_stop_t0timer(rose_neigh);
  skb_queue_purge(& rose_neigh->queue);
  s = rose_neigh_list;
  }
  if ((unsigned long )s == (unsigned long )rose_neigh) {
    rose_neigh_list = rose_neigh->next;
    if ((unsigned long )rose_neigh->ax25 != (unsigned long )((ax25_cb *)0)) {
      {
      ax25_cb_put___0(rose_neigh->ax25);
      }
    } else {
    }
    {
    kfree((void const *)rose_neigh->digipeat);
    kfree((void const *)rose_neigh);
    }
    return;
  } else {
  }
  goto ldv_49834;
  ldv_49833: ;
  if ((unsigned long )s->next == (unsigned long )rose_neigh) {
    s->next = rose_neigh->next;
    if ((unsigned long )rose_neigh->ax25 != (unsigned long )((ax25_cb *)0)) {
      {
      ax25_cb_put___0(rose_neigh->ax25);
      }
    } else {
    }
    {
    kfree((void const *)rose_neigh->digipeat);
    kfree((void const *)rose_neigh);
    }
    return;
  } else {
  }
  s = s->next;
  ldv_49834: ;
  if ((unsigned long )s != (unsigned long )((struct rose_neigh *)0) && (unsigned long )s->next != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_49833;
  } else {
  }
  return;
}
}
static void rose_remove_route(struct rose_route *rose_route )
{
  struct rose_route *s ;
  {
  if ((unsigned long )rose_route->neigh1 != (unsigned long )((struct rose_neigh *)0)) {
    (rose_route->neigh1)->use = (unsigned short )((int )(rose_route->neigh1)->use - 1);
  } else {
  }
  if ((unsigned long )rose_route->neigh2 != (unsigned long )((struct rose_neigh *)0)) {
    (rose_route->neigh2)->use = (unsigned short )((int )(rose_route->neigh2)->use - 1);
  } else {
  }
  s = rose_route_list;
  if ((unsigned long )s == (unsigned long )rose_route) {
    {
    rose_route_list = rose_route->next;
    kfree((void const *)rose_route);
    }
    return;
  } else {
  }
  goto ldv_49841;
  ldv_49840: ;
  if ((unsigned long )s->next == (unsigned long )rose_route) {
    {
    s->next = rose_route->next;
    kfree((void const *)rose_route);
    }
    return;
  } else {
  }
  s = s->next;
  ldv_49841: ;
  if ((unsigned long )s != (unsigned long )((struct rose_route *)0) && (unsigned long )s->next != (unsigned long )((struct rose_route *)0)) {
    goto ldv_49840;
  } else {
  }
  return;
}
}
static int rose_del_node(struct rose_route_struct *rose_route , struct net_device *dev )
{
  struct rose_node *rose_node ;
  struct rose_neigh *rose_neigh ;
  int i ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  {
  err = 0;
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  rose_node = rose_node_list;
  }
  goto ldv_49853;
  ldv_49852: ;
  if ((int )rose_node->mask == (int )rose_route->mask) {
    {
    tmp = rosecmpm(& rose_route->address, & rose_node->address, (int )rose_route->mask);
    }
    if (tmp == 0) {
      goto ldv_49851;
    } else {
    }
  } else {
  }
  rose_node = rose_node->next;
  ldv_49853: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49852;
  } else {
  }
  ldv_49851: ;
  if ((unsigned long )rose_node == (unsigned long )((struct rose_node *)0) || (int )((signed char )rose_node->loopback) != 0) {
    err = -22;
    goto out;
  } else {
  }
  rose_neigh = rose_neigh_list;
  goto ldv_49857;
  ldv_49856:
  {
  tmp___0 = ax25cmp((ax25_address const *)(& rose_route->neighbour), (ax25_address const *)(& rose_neigh->callsign));
  }
  if (tmp___0 == 0 && (unsigned long )rose_neigh->dev == (unsigned long )dev) {
    goto ldv_49855;
  } else {
  }
  rose_neigh = rose_neigh->next;
  ldv_49857: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_49856;
  } else {
  }
  ldv_49855: ;
  if ((unsigned long )rose_neigh == (unsigned long )((struct rose_neigh *)0)) {
    err = -22;
    goto out;
  } else {
  }
  i = 0;
  goto ldv_49863;
  ldv_49862: ;
  if ((unsigned long )rose_node->neighbour[i] == (unsigned long )rose_neigh) {
    rose_neigh->count = (unsigned short )((int )rose_neigh->count - 1);
    if (*((unsigned int *)rose_neigh + 10UL) == 0U) {
      {
      rose_remove_neigh(rose_neigh);
      }
    } else {
    }
    rose_node->count = (unsigned char )((int )rose_node->count - 1);
    if ((unsigned int )rose_node->count == 0U) {
      {
      rose_remove_node(rose_node);
      }
    } else {
      {
      if (i == 0) {
        goto case_0;
      } else {
      }
      if (i == 1) {
        goto case_1;
      } else {
      }
      if (i == 2) {
        goto case_2;
      } else {
      }
      goto switch_break;
      case_0:
      rose_node->neighbour[0] = rose_node->neighbour[1];
      case_1:
      rose_node->neighbour[1] = rose_node->neighbour[2];
      case_2: ;
      goto ldv_49861;
      switch_break: ;
      }
      ldv_49861: ;
    }
    goto out;
  } else {
  }
  i = i + 1;
  ldv_49863: ;
  if (i < (int )rose_node->count) {
    goto ldv_49862;
  } else {
  }
  err = -22;
  out:
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return (err);
}
}
void rose_add_loopback_neigh(void)
{
  struct rose_neigh *sn ;
  void *tmp ;
  unsigned int tmp___0 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  {
  {
  tmp = kmalloc(408UL, 208U);
  rose_loopback_neigh = (struct rose_neigh *)tmp;
  }
  if ((unsigned long )rose_loopback_neigh == (unsigned long )((struct rose_neigh *)0)) {
    return;
  } else {
  }
  {
  sn = rose_loopback_neigh;
  sn->callsign = null_ax25_address;
  sn->digipeat = (ax25_digi *)0;
  sn->ax25 = (ax25_cb *)0;
  sn->dev = (struct net_device *)0;
  sn->count = 0U;
  sn->use = 0U;
  sn->dce_mode = 1;
  sn->loopback = 1;
  tmp___0 = rose_neigh_no;
  rose_neigh_no = rose_neigh_no + 1U;
  sn->number = tmp___0;
  sn->restarted = 1;
  skb_queue_head_init(& sn->queue);
  init_timer_key(& sn->ftimer, 0U, "(&sn->ftimer)", & __key);
  init_timer_key(& sn->t0timer, 0U, "(&sn->t0timer)", & __key___0);
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  sn->next = rose_neigh_list;
  rose_neigh_list = sn;
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  }
  return;
}
}
int rose_add_loopback_node(rose_address *address )
{
  struct rose_node *rose_node ;
  int err ;
  int tmp ;
  void *tmp___0 ;
  {
  {
  err = 0;
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  rose_node = rose_node_list;
  }
  goto ldv_49878;
  ldv_49877: ;
  if ((unsigned int )rose_node->mask == 10U) {
    {
    tmp = rosecmpm(address, & rose_node->address, 10);
    }
    if (tmp == 0) {
      if ((int )((signed char )rose_node->loopback) != 0) {
        goto ldv_49876;
      } else {
      }
    } else {
    }
  } else {
  }
  rose_node = rose_node->next;
  ldv_49878: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49877;
  } else {
  }
  ldv_49876: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto out;
  } else {
  }
  {
  tmp___0 = kmalloc(48UL, 32U);
  rose_node = (struct rose_node *)tmp___0;
  }
  if ((unsigned long )rose_node == (unsigned long )((struct rose_node *)0)) {
    err = -12;
    goto out;
  } else {
  }
  rose_node->address = *address;
  rose_node->mask = 10U;
  rose_node->count = 1U;
  rose_node->loopback = 1;
  rose_node->neighbour[0] = rose_loopback_neigh;
  rose_node->next = rose_node_list;
  rose_node_list = rose_node;
  rose_loopback_neigh->count = (unsigned short )((int )rose_loopback_neigh->count + 1);
  out:
  {
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return (err);
}
}
void rose_del_loopback_node(rose_address *address )
{
  struct rose_node *rose_node ;
  int tmp ;
  {
  {
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  rose_node = rose_node_list;
  }
  goto ldv_49886;
  ldv_49885: ;
  if ((unsigned int )rose_node->mask == 10U) {
    {
    tmp = rosecmpm(address, & rose_node->address, 10);
    }
    if (tmp == 0) {
      if ((int )((signed char )rose_node->loopback) != 0) {
        goto ldv_49884;
      } else {
      }
    } else {
    }
  } else {
  }
  rose_node = rose_node->next;
  ldv_49886: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49885;
  } else {
  }
  ldv_49884: ;
  if ((unsigned long )rose_node == (unsigned long )((struct rose_node *)0)) {
    goto out;
  } else {
  }
  {
  rose_remove_node(rose_node);
  rose_loopback_neigh->count = (unsigned short )((int )rose_loopback_neigh->count - 1);
  }
  out:
  {
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return;
}
}
void rose_rt_device_down(struct net_device *dev )
{
  struct rose_neigh *s ;
  struct rose_neigh *rose_neigh ;
  struct rose_node *t ;
  struct rose_node *rose_node ;
  int i ;
  {
  {
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  rose_neigh = rose_neigh_list;
  }
  goto ldv_49896;
  ldv_49908:
  s = rose_neigh;
  rose_neigh = rose_neigh->next;
  if ((unsigned long )s->dev != (unsigned long )dev) {
    goto ldv_49896;
  } else {
  }
  rose_node = rose_node_list;
  goto ldv_49906;
  ldv_49905:
  t = rose_node;
  rose_node = rose_node->next;
  i = 0;
  goto ldv_49903;
  ldv_49902: ;
  if ((unsigned long )t->neighbour[i] != (unsigned long )s) {
    goto ldv_49897;
  } else {
  }
  t->count = (unsigned char )((int )t->count - 1);
  {
  if (i == 0) {
    goto case_0;
  } else {
  }
  if (i == 1) {
    goto case_1;
  } else {
  }
  if (i == 2) {
    goto case_2;
  } else {
  }
  goto switch_break;
  case_0:
  t->neighbour[0] = t->neighbour[1];
  case_1:
  t->neighbour[1] = t->neighbour[2];
  case_2: ;
  goto ldv_49901;
  switch_break: ;
  }
  ldv_49901: ;
  ldv_49897:
  i = i + 1;
  ldv_49903: ;
  if (i < (int )t->count) {
    goto ldv_49902;
  } else {
  }
  if ((unsigned int )t->count == 0U) {
    {
    rose_remove_node(t);
    }
  } else {
  }
  ldv_49906: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49905;
  } else {
  }
  {
  rose_remove_neigh(s);
  }
  ldv_49896: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_49908;
  } else {
  }
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return;
}
}
static int rose_clear_routes(void)
{
  struct rose_neigh *s ;
  struct rose_neigh *rose_neigh ;
  struct rose_node *t ;
  struct rose_node *rose_node ;
  {
  {
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  rose_neigh = rose_neigh_list;
  rose_node = rose_node_list;
  }
  goto ldv_49918;
  ldv_49917:
  t = rose_node;
  rose_node = rose_node->next;
  if ((int )((signed char )t->loopback) == 0) {
    {
    rose_remove_node(t);
    }
  } else {
  }
  ldv_49918: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_49917;
  } else {
  }
  goto ldv_49921;
  ldv_49920:
  s = rose_neigh;
  rose_neigh = rose_neigh->next;
  if ((unsigned int )s->use == 0U && (int )((signed char )s->loopback) == 0) {
    {
    s->count = 0U;
    rose_remove_neigh(s);
    }
  } else {
  }
  ldv_49921: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_49920;
  } else {
  }
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return (0);
}
}
static struct net_device *rose_ax25_dev_find(char *devname )
{
  struct net_device *dev ;
  {
  {
  dev = __dev_get_by_name(& init_net, (char const *)devname);
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return ((struct net_device *)0);
  } else {
  }
  if ((int )dev->flags & 1 && (unsigned int )dev->type == 3U) {
    return (dev);
  } else {
  }
  return ((struct net_device *)0);
}
}
struct net_device *rose_dev_first(void)
{
  struct net_device *dev ;
  struct net_device *first ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  {
  {
  first = (struct net_device *)0;
  rcu_read_lock();
  __ptr = init_net.dev_base_head.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  dev = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
  goto ldv_49955;
  ldv_49954: ;
  if ((int )dev->flags & 1 && (unsigned int )dev->type == 270U) {
    if ((unsigned long )first == (unsigned long )((struct net_device *)0)) {
      first = dev;
    } else {
      {
      tmp___0 = strncmp((char const *)(& dev->name), (char const *)(& first->name),
                        3UL);
      }
      if (tmp___0 < 0) {
        first = dev;
      } else {
      }
    }
  } else {
  }
  {
  __ptr___0 = dev->dev_list.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  dev = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
  ldv_49955: ;
  if ((unsigned long )(& dev->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
    goto ldv_49954;
  } else {
  }
  {
  rcu_read_unlock();
  }
  return (first);
}
}
struct net_device *rose_dev_get(rose_address *addr )
{
  struct net_device *dev ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  {
  {
  rcu_read_lock();
  __ptr = init_net.dev_base_head.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  dev = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
  goto ldv_49985;
  ldv_49984: ;
  if ((int )dev->flags & 1 && (unsigned int )dev->type == 270U) {
    {
    tmp___0 = rosecmp(addr, (rose_address *)dev->dev_addr);
    }
    if (tmp___0 == 0) {
      {
      dev_hold(dev);
      }
      goto out;
    } else {
    }
  } else {
  }
  {
  __ptr___0 = dev->dev_list.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  dev = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
  ldv_49985: ;
  if ((unsigned long )(& dev->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
    goto ldv_49984;
  } else {
  }
  dev = (struct net_device *)0;
  out:
  {
  rcu_read_unlock();
  }
  return (dev);
}
}
static int rose_dev_exists(rose_address *addr )
{
  struct net_device *dev ;
  struct list_head *__ptr ;
  struct list_head const *__mptr ;
  struct list_head *________p1 ;
  struct list_head *_________p1 ;
  struct list_head *__var ;
  bool __warned ;
  int tmp ;
  int tmp___0 ;
  struct list_head *__ptr___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head *________p1___0 ;
  struct list_head *_________p1___0 ;
  struct list_head *__var___0 ;
  bool __warned___0 ;
  int tmp___1 ;
  {
  {
  rcu_read_lock();
  __ptr = init_net.dev_base_head.next;
  __var = (struct list_head *)0;
  _________p1 = *((struct list_head * volatile *)(& __ptr));
  ________p1 = _________p1;
  tmp = debug_lockdep_rcu_enabled();
  }
  if (tmp != 0 && ! __warned) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr = (struct list_head const *)________p1;
  dev = (struct net_device *)__mptr + 0xffffffffffffffb0UL;
  goto ldv_50015;
  ldv_50014: ;
  if ((int )dev->flags & 1 && (unsigned int )dev->type == 270U) {
    {
    tmp___0 = rosecmp(addr, (rose_address *)dev->dev_addr);
    }
    if (tmp___0 == 0) {
      goto out;
    } else {
    }
  } else {
  }
  {
  __ptr___0 = dev->dev_list.next;
  __var___0 = (struct list_head *)0;
  _________p1___0 = *((struct list_head * volatile *)(& __ptr___0));
  ________p1___0 = _________p1___0;
  tmp___1 = debug_lockdep_rcu_enabled();
  }
  if (tmp___1 != 0 && ! __warned___0) {
    {
    rcu_read_lock_held();
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)________p1___0;
  dev = (struct net_device *)__mptr___0 + 0xffffffffffffffb0UL;
  ldv_50015: ;
  if ((unsigned long )(& dev->dev_list) != (unsigned long )(& init_net.dev_base_head)) {
    goto ldv_50014;
  } else {
  }
  dev = (struct net_device *)0;
  out:
  {
  rcu_read_unlock();
  }
  return ((unsigned long )dev != (unsigned long )((struct net_device *)0));
}
}
struct rose_route *rose_route_free_lci(unsigned int lci , struct rose_neigh *neigh )
{
  struct rose_route *rose_route ;
  {
  rose_route = rose_route_list;
  goto ldv_50023;
  ldv_50022: ;
  if (((unsigned long )rose_route->neigh1 == (unsigned long )neigh && rose_route->lci1 == lci) || ((unsigned long )rose_route->neigh2 == (unsigned long )neigh && rose_route->lci2 == lci)) {
    return (rose_route);
  } else {
  }
  rose_route = rose_route->next;
  ldv_50023: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0)) {
    goto ldv_50022;
  } else {
  }
  return ((struct rose_route *)0);
}
}
struct rose_neigh *rose_get_neigh(rose_address *addr , unsigned char *cause , unsigned char *diagnostic ,
                                  int route_frame )
{
  struct rose_neigh *res ;
  struct rose_node *node ;
  int failed ;
  int i ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  res = (struct rose_neigh *)0;
  failed = 0;
  if (route_frame == 0) {
    {
    ldv_spin_lock_bh_125(& rose_node_list_lock);
    }
  } else {
  }
  node = rose_node_list;
  goto ldv_50040;
  ldv_50039:
  {
  tmp = rosecmpm(addr, & node->address, (int )node->mask);
  }
  if (tmp == 0) {
    i = 0;
    goto ldv_50037;
    ldv_50036: ;
    if ((int )((signed char )(node->neighbour[i])->restarted) != 0) {
      res = node->neighbour[i];
      goto out;
    } else {
    }
    i = i + 1;
    ldv_50037: ;
    if (i < (int )node->count) {
      goto ldv_50036;
    } else {
    }
  } else {
  }
  node = node->next;
  ldv_50040: ;
  if ((unsigned long )node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_50039;
  } else {
  }
  if (route_frame == 0) {
    node = rose_node_list;
    goto ldv_50046;
    ldv_50045:
    {
    tmp___1 = rosecmpm(addr, & node->address, (int )node->mask);
    }
    if (tmp___1 == 0) {
      i = 0;
      goto ldv_50043;
      ldv_50042:
      {
      tmp___0 = rose_ftimer_running(node->neighbour[i]);
      }
      if (tmp___0 == 0) {
        res = node->neighbour[i];
        failed = 0;
        goto out;
      } else {
      }
      failed = 1;
      i = i + 1;
      ldv_50043: ;
      if (i < (int )node->count) {
        goto ldv_50042;
      } else {
      }
    } else {
    }
    node = node->next;
    ldv_50046: ;
    if ((unsigned long )node != (unsigned long )((struct rose_node *)0)) {
      goto ldv_50045;
    } else {
    }
  } else {
  }
  if (failed != 0) {
    *cause = 9U;
    *diagnostic = 0U;
  } else {
    *cause = 13U;
    *diagnostic = 0U;
  }
  out: ;
  if (route_frame == 0) {
    {
    ldv_spin_unlock_bh_128(& rose_node_list_lock);
    }
  } else {
  }
  return (res);
}
}
int rose_rt_ioctl(unsigned int cmd , void *arg )
{
  struct rose_route_struct rose_route ;
  struct net_device *dev ;
  int err ;
  unsigned long tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  {
  {
  if (cmd == 35083U) {
    goto case_35083;
  } else {
  }
  if (cmd == 35084U) {
    goto case_35084;
  } else {
  }
  if (cmd == 35300U) {
    goto case_35300;
  } else {
  }
  goto switch_default;
  case_35083:
  {
  tmp = copy_from_user((void *)(& rose_route), (void const *)arg, 88UL);
  }
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  {
  dev = rose_ax25_dev_find((char *)(& rose_route.device));
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  {
  tmp___0 = rose_dev_exists(& rose_route.address);
  }
  if (tmp___0 != 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )rose_route.mask > 10U) {
    return (-22);
  } else {
  }
  if ((unsigned int )rose_route.ndigis > 8U) {
    return (-22);
  } else {
  }
  {
  err = rose_add_node(& rose_route, dev);
  }
  return (err);
  case_35084:
  {
  tmp___1 = copy_from_user((void *)(& rose_route), (void const *)arg, 88UL);
  }
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  {
  dev = rose_ax25_dev_find((char *)(& rose_route.device));
  }
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-22);
  } else {
  }
  {
  err = rose_del_node(& rose_route, dev);
  }
  return (err);
  case_35300:
  {
  tmp___2 = rose_clear_routes();
  }
  return (tmp___2);
  switch_default: ;
  return (-22);
  switch_break: ;
  }
  return (0);
}
}
static void rose_del_route_by_neigh(struct rose_neigh *rose_neigh )
{
  struct rose_route *rose_route ;
  struct rose_route *s ;
  {
  {
  rose_neigh->restarted = 0;
  rose_stop_t0timer(rose_neigh);
  rose_start_ftimer(rose_neigh);
  skb_queue_purge(& rose_neigh->queue);
  ldv_spin_lock_bh_149(& rose_route_list_lock);
  rose_route = rose_route_list;
  }
  goto ldv_50064;
  ldv_50065: ;
  if (((unsigned long )rose_route->neigh1 == (unsigned long )rose_neigh && ((unsigned long )rose_route->neigh2 == (unsigned long )rose_neigh || (unsigned long )rose_route->neigh2 == (unsigned long )((struct rose_neigh *)0))) || ((unsigned long )rose_route->neigh2 == (unsigned long )rose_neigh && (unsigned long )rose_route->neigh1 == (unsigned long )((struct rose_neigh *)0))) {
    {
    s = rose_route->next;
    rose_remove_route(rose_route);
    rose_route = s;
    }
    goto ldv_50064;
  } else {
  }
  if ((unsigned long )rose_route->neigh1 == (unsigned long )rose_neigh) {
    {
    (rose_route->neigh1)->use = (unsigned short )((int )(rose_route->neigh1)->use - 1);
    rose_route->neigh1 = (struct rose_neigh *)0;
    rose_transmit_clear_request(rose_route->neigh2, rose_route->lci2, 9, 0);
    }
  } else {
  }
  if ((unsigned long )rose_route->neigh2 == (unsigned long )rose_neigh) {
    {
    (rose_route->neigh2)->use = (unsigned short )((int )(rose_route->neigh2)->use - 1);
    rose_route->neigh2 = (struct rose_neigh *)0;
    rose_transmit_clear_request(rose_route->neigh1, rose_route->lci1, 9, 0);
    }
  } else {
  }
  rose_route = rose_route->next;
  ldv_50064: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0)) {
    goto ldv_50065;
  } else {
  }
  {
  ldv_spin_unlock_bh_150(& rose_route_list_lock);
  }
  return;
}
}
void rose_link_failed(ax25_cb *ax25 , int reason )
{
  struct rose_neigh *rose_neigh ;
  {
  {
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  rose_neigh = rose_neigh_list;
  }
  goto ldv_50074;
  ldv_50073: ;
  if ((unsigned long )rose_neigh->ax25 == (unsigned long )ax25) {
    goto ldv_50072;
  } else {
  }
  rose_neigh = rose_neigh->next;
  ldv_50074: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_50073;
  } else {
  }
  ldv_50072: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    {
    rose_neigh->ax25 = (ax25_cb *)0;
    ax25_cb_put___0(ax25);
    rose_del_route_by_neigh(rose_neigh);
    rose_kill_by_neigh(rose_neigh);
    }
  } else {
  }
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  }
  return;
}
}
void rose_link_device_down(struct net_device *dev )
{
  struct rose_neigh *rose_neigh ;
  {
  rose_neigh = rose_neigh_list;
  goto ldv_50080;
  ldv_50079: ;
  if ((unsigned long )rose_neigh->dev == (unsigned long )dev) {
    {
    rose_del_route_by_neigh(rose_neigh);
    rose_kill_by_neigh(rose_neigh);
    }
  } else {
  }
  rose_neigh = rose_neigh->next;
  ldv_50080: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_50079;
  } else {
  }
  return;
}
}
int rose_route_frame(struct sk_buff *skb , ax25_cb *ax25 )
{
  struct rose_neigh *rose_neigh ;
  struct rose_neigh *new_neigh ;
  struct rose_route *rose_route ;
  struct rose_facilities_struct facilities ;
  rose_address *src_addr ;
  rose_address *dest_addr ;
  struct sock *sk ;
  unsigned short frametype ;
  unsigned int lci ;
  unsigned int new_lci ;
  unsigned char cause ;
  unsigned char diagnostic ;
  struct net_device *dev ;
  int res ;
  char buf[11U] ;
  int tmp ;
  char *tmp___0 ;
  struct rose_sock *rose ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  {
  res = 0;
  if (skb->len <= 2U) {
    return (res);
  } else {
  }
  frametype = (unsigned short )*(skb->data + 2UL);
  lci = (unsigned int )((((int )*(skb->data) << 8) & 3840) + (int )*(skb->data + 1UL));
  if ((unsigned int )frametype == 11U && (skb->len <= 14U || (unsigned int )*(skb->data + 3UL) != 170U)) {
    return (res);
  } else {
  }
  {
  src_addr = (rose_address *)skb->data + 9U;
  dest_addr = (rose_address *)skb->data + 4U;
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  ldv_spin_lock_bh_149(& rose_route_list_lock);
  rose_neigh = rose_neigh_list;
  }
  goto ldv_50103;
  ldv_50102:
  {
  tmp = ax25cmp((ax25_address const *)(& ax25->dest_addr), (ax25_address const *)(& rose_neigh->callsign));
  }
  if (tmp == 0 && (unsigned long )(ax25->ax25_dev)->dev == (unsigned long )rose_neigh->dev) {
    goto ldv_50101;
  } else {
  }
  rose_neigh = rose_neigh->next;
  ldv_50103: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_50102;
  } else {
  }
  ldv_50101: ;
  if ((unsigned long )rose_neigh == (unsigned long )((struct rose_neigh *)0)) {
    {
    tmp___0 = ax2asc((char *)(& buf), (ax25_address const *)(& ax25->dest_addr));
    printk("rose_route : unknown neighbour or device %s\n", tmp___0);
    }
    goto out;
  } else {
  }
  {
  rose_stop_ftimer(rose_neigh);
  }
  if (lci == 0U) {
    {
    rose_link_rx_restart(skb, rose_neigh, (int )frametype);
    }
    goto out;
  } else {
  }
  {
  sk = rose_find_socket(lci, rose_neigh);
  }
  if ((unsigned long )sk != (unsigned long )((struct sock *)0)) {
    if ((unsigned int )frametype == 11U) {
      {
      rose = (struct rose_sock *)sk;
      rose_clear_queues(sk);
      rose->cause = 5U;
      rose->diagnostic = 0U;
      (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
      rose->neighbour = (struct rose_neigh *)0;
      rose->lci = 0U;
      rose->state = 0U;
      sk->__sk_common.skc_state = 7U;
      sk->sk_err = 0;
      sk->sk_shutdown = (unsigned char )((unsigned int )sk->sk_shutdown | 2U);
      tmp___1 = sock_flag((struct sock const *)sk, 0);
      }
      if (tmp___1) {
        tmp___2 = 0;
      } else {
        tmp___2 = 1;
      }
      if (tmp___2) {
        {
        (*(sk->sk_state_change))(sk);
        sock_set_flag(sk, 0);
        }
      } else {
      }
    } else {
      {
      skb_reset_transport_header(skb);
      res = rose_process_rx_frame(sk, skb);
      }
      goto out;
    }
  } else {
  }
  if ((unsigned int )frametype == 11U) {
    {
    dev = rose_dev_get(dest_addr);
    }
    if ((unsigned long )dev != (unsigned long )((struct net_device *)0)) {
      {
      res = rose_rx_call_request(skb, dev, rose_neigh, lci);
      dev_put(dev);
      }
      goto out;
    } else {
    }
  } else {
  }
  if (sysctl_rose_routing_control == 0) {
    {
    rose_transmit_clear_request(rose_neigh, lci, 13, 0);
    }
    goto out;
  } else {
  }
  rose_route = rose_route_list;
  goto ldv_50108;
  ldv_50107: ;
  if (rose_route->lci1 == lci && (unsigned long )rose_route->neigh1 == (unsigned long )rose_neigh) {
    if ((unsigned int )frametype == 11U) {
      {
      rose_remove_route(rose_route);
      }
      goto ldv_50106;
    } else
    if ((unsigned long )rose_route->neigh2 != (unsigned long )((struct rose_neigh *)0)) {
      {
      *(skb->data) = (unsigned int )*(skb->data) & 240U;
      *(skb->data) = (unsigned int )*(skb->data) | ((unsigned int )((unsigned char )(rose_route->lci2 >> 8)) & 15U);
      *(skb->data + 1UL) = (unsigned char )rose_route->lci2;
      rose_transmit_link(skb, rose_route->neigh2);
      }
      if ((unsigned int )frametype == 23U) {
        {
        rose_remove_route(rose_route);
        }
      } else {
      }
      res = 1;
      goto out;
    } else {
      if ((unsigned int )frametype == 23U) {
        {
        rose_remove_route(rose_route);
        }
      } else {
      }
      goto out;
    }
  } else {
  }
  if (rose_route->lci2 == lci && (unsigned long )rose_route->neigh2 == (unsigned long )rose_neigh) {
    if ((unsigned int )frametype == 11U) {
      {
      rose_remove_route(rose_route);
      }
      goto ldv_50106;
    } else
    if ((unsigned long )rose_route->neigh1 != (unsigned long )((struct rose_neigh *)0)) {
      {
      *(skb->data) = (unsigned int )*(skb->data) & 240U;
      *(skb->data) = (unsigned int )*(skb->data) | ((unsigned int )((unsigned char )(rose_route->lci1 >> 8)) & 15U);
      *(skb->data + 1UL) = (unsigned char )rose_route->lci1;
      rose_transmit_link(skb, rose_route->neigh1);
      }
      if ((unsigned int )frametype == 23U) {
        {
        rose_remove_route(rose_route);
        }
      } else {
      }
      res = 1;
      goto out;
    } else {
      if ((unsigned int )frametype == 23U) {
        {
        rose_remove_route(rose_route);
        }
      } else {
      }
      goto out;
    }
  } else {
  }
  rose_route = rose_route->next;
  ldv_50108: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0)) {
    goto ldv_50107;
  } else {
  }
  ldv_50106: ;
  if ((unsigned int )frametype != 11U) {
    res = 0;
    goto out;
  } else {
  }
  {
  memset((void *)(& facilities), 0, 128UL);
  tmp___3 = rose_parse_facilities(skb->data + 14UL, skb->len - 14U, & facilities);
  }
  if (tmp___3 == 0) {
    {
    rose_transmit_clear_request(rose_neigh, lci, 3, 76);
    }
    goto out;
  } else {
  }
  rose_route = rose_route_list;
  goto ldv_50110;
  ldv_50109: ;
  if (rose_route->rand == facilities.rand) {
    {
    tmp___4 = rosecmp(src_addr, & rose_route->src_addr);
    }
    if (tmp___4 == 0) {
      {
      tmp___5 = ax25cmp((ax25_address const *)(& facilities.dest_call), (ax25_address const *)(& rose_route->src_call));
      }
      if (tmp___5 == 0) {
        {
        tmp___6 = ax25cmp((ax25_address const *)(& facilities.source_call), (ax25_address const *)(& rose_route->dest_call));
        }
        if (tmp___6 == 0) {
          {
          rose_transmit_clear_request(rose_neigh, lci, 13, 120);
          }
          goto out;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  rose_route = rose_route->next;
  ldv_50110: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0)) {
    goto ldv_50109;
  } else {
  }
  {
  new_neigh = rose_get_neigh(dest_addr, & cause, & diagnostic, 1);
  }
  if ((unsigned long )new_neigh == (unsigned long )((struct rose_neigh *)0)) {
    {
    rose_transmit_clear_request(rose_neigh, lci, (int )cause, (int )diagnostic);
    }
    goto out;
  } else {
  }
  {
  new_lci = rose_new_lci(new_neigh);
  }
  if (new_lci == 0U) {
    {
    rose_transmit_clear_request(rose_neigh, lci, 5, 71);
    }
    goto out;
  } else {
  }
  {
  tmp___7 = kmalloc(64UL, 32U);
  rose_route = (struct rose_route *)tmp___7;
  }
  if ((unsigned long )rose_route == (unsigned long )((struct rose_route *)0)) {
    {
    rose_transmit_clear_request(rose_neigh, lci, 5, 120);
    }
    goto out;
  } else {
  }
  {
  rose_route->lci1 = lci;
  rose_route->src_addr = *src_addr;
  rose_route->dest_addr = *dest_addr;
  rose_route->src_call = facilities.dest_call;
  rose_route->dest_call = facilities.source_call;
  rose_route->rand = facilities.rand;
  rose_route->neigh1 = rose_neigh;
  rose_route->lci2 = new_lci;
  rose_route->neigh2 = new_neigh;
  (rose_route->neigh1)->use = (unsigned short )((int )(rose_route->neigh1)->use + 1);
  (rose_route->neigh2)->use = (unsigned short )((int )(rose_route->neigh2)->use + 1);
  rose_route->next = rose_route_list;
  rose_route_list = rose_route;
  *(skb->data) = (unsigned int )*(skb->data) & 240U;
  *(skb->data) = (unsigned int )*(skb->data) | ((unsigned int )((unsigned char )(rose_route->lci2 >> 8)) & 15U);
  *(skb->data + 1UL) = (unsigned char )rose_route->lci2;
  rose_transmit_link(skb, rose_route->neigh2);
  res = 1;
  }
  out:
  {
  ldv_spin_unlock_bh_150(& rose_route_list_lock);
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  }
  return (res);
}
}
static void *rose_node_start(struct seq_file *seq , loff_t *pos )
{
  struct rose_node *rose_node ;
  int i ;
  {
  {
  i = 1;
  ldv_spin_lock_bh_125(& rose_node_list_lock);
  }
  if (*pos == 0LL) {
    return ((void *)1);
  } else {
  }
  rose_node = rose_node_list;
  goto ldv_50119;
  ldv_50118:
  rose_node = rose_node->next;
  i = i + 1;
  ldv_50119: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0) && (loff_t )i < *pos) {
    goto ldv_50118;
  } else {
  }
  return ((loff_t )i == *pos ? (void *)rose_node : (void *)0);
}
}
static void *rose_node_next(struct seq_file *seq , void *v , loff_t *pos )
{
  {
  *pos = *pos + 1LL;
  return ((void *)((unsigned long )v == (unsigned long )((void *)1) ? rose_node_list : ((struct rose_node *)v)->next));
}
}
static void rose_node_stop(struct seq_file *seq , void *v )
{
  {
  {
  ldv_spin_unlock_bh_128(& rose_node_list_lock);
  }
  return;
}
}
static int rose_node_show(struct seq_file *seq , void *v )
{
  char rsbuf[11U] ;
  int i ;
  struct rose_node const *rose_node ;
  char *tmp ;
  {
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    {
    seq_puts(seq, "address    mask n neigh neigh neigh\n");
    }
  } else {
    {
    rose_node = (struct rose_node const *)v;
    tmp = rose2asc((char *)(& rsbuf), & rose_node->address);
    seq_printf(seq, "%-10s %04d %d", tmp, (int )rose_node->mask, (int )rose_node->count);
    i = 0;
    }
    goto ldv_50138;
    ldv_50137:
    {
    seq_printf(seq, " %05d", (rose_node->neighbour[i])->number);
    i = i + 1;
    }
    ldv_50138: ;
    if (i < (int )rose_node->count) {
      goto ldv_50137;
    } else {
    }
    {
    seq_puts(seq, "\n");
    }
  }
  return (0);
}
}
static struct seq_operations const rose_node_seqops = {& rose_node_start, & rose_node_stop, & rose_node_next, & rose_node_show};
static int rose_nodes_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_159(file, & rose_node_seqops);
  }
  return (tmp);
}
}
struct file_operations const rose_nodes_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rose_nodes_open,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void *rose_neigh_start(struct seq_file *seq , loff_t *pos )
{
  struct rose_neigh *rose_neigh ;
  int i ;
  {
  {
  i = 1;
  ldv_spin_lock_bh_126___0(& rose_neigh_list_lock);
  }
  if (*pos == 0LL) {
    return ((void *)1);
  } else {
  }
  rose_neigh = rose_neigh_list;
  goto ldv_50153;
  ldv_50152:
  rose_neigh = rose_neigh->next;
  i = i + 1;
  ldv_50153: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0) && (loff_t )i < *pos) {
    goto ldv_50152;
  } else {
  }
  return ((loff_t )i == *pos ? (void *)rose_neigh : (void *)0);
}
}
static void *rose_neigh_next(struct seq_file *seq , void *v , loff_t *pos )
{
  {
  *pos = *pos + 1LL;
  return ((void *)((unsigned long )v == (unsigned long )((void *)1) ? rose_neigh_list : ((struct rose_neigh *)v)->next));
}
}
static void rose_neigh_stop(struct seq_file *seq , void *v )
{
  {
  {
  ldv_spin_unlock_bh_127___0(& rose_neigh_list_lock);
  }
  return;
}
}
static int rose_neigh_show(struct seq_file *seq , void *v )
{
  char buf[11U] ;
  int i ;
  struct rose_neigh *rose_neigh ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  {
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    {
    seq_puts(seq, "addr  callsign  dev  count use mode restart  t0  tf digipeaters\n");
    }
  } else {
    {
    rose_neigh = (struct rose_neigh *)v;
    tmp = ax25_display_timer(& rose_neigh->ftimer);
    tmp___0 = ax25_display_timer(& rose_neigh->t0timer);
    }
    if ((int )((signed char )rose_neigh->loopback) == 0) {
      {
      tmp___1 = ax2asc((char *)(& buf), (ax25_address const *)(& rose_neigh->callsign));
      tmp___2 = tmp___1;
      }
    } else {
      tmp___2 = (char *)"RSLOOP-0";
    }
    {
    seq_printf(seq, "%05d %-9s %-4s   %3d %3d  %3s     %3s %3lu %3lu", rose_neigh->number,
               tmp___2, (unsigned long )rose_neigh->dev != (unsigned long )((struct net_device *)0) ? (char *)(& (rose_neigh->dev)->name) : (char *)"???",
               (int )rose_neigh->count, (int )rose_neigh->use, (int )((signed char )rose_neigh->dce_mode) != 0 ? (char *)"DCE" : (char *)"DTE",
               (int )((signed char )rose_neigh->restarted) != 0 ? (char *)"yes" : (char *)"no",
               tmp___0 / 250UL, tmp / 250UL);
    }
    if ((unsigned long )rose_neigh->digipeat != (unsigned long )((ax25_digi *)0)) {
      i = 0;
      goto ldv_50172;
      ldv_50171:
      {
      tmp___3 = ax2asc((char *)(& buf), (ax25_address const *)(& (rose_neigh->digipeat)->calls) + (unsigned long )i);
      seq_printf(seq, " %s", tmp___3);
      i = i + 1;
      }
      ldv_50172: ;
      if (i < (int )(rose_neigh->digipeat)->ndigi) {
        goto ldv_50171;
      } else {
      }
    } else {
    }
    {
    seq_puts(seq, "\n");
    }
  }
  return (0);
}
}
static struct seq_operations const rose_neigh_seqops = {& rose_neigh_start, & rose_neigh_stop, & rose_neigh_next, & rose_neigh_show};
static int rose_neigh_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_162(file, & rose_neigh_seqops);
  }
  return (tmp);
}
}
struct file_operations const rose_neigh_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rose_neigh_open,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void *rose_route_start(struct seq_file *seq , loff_t *pos )
{
  struct rose_route *rose_route ;
  int i ;
  {
  {
  i = 1;
  ldv_spin_lock_bh_149(& rose_route_list_lock);
  }
  if (*pos == 0LL) {
    return ((void *)1);
  } else {
  }
  rose_route = rose_route_list;
  goto ldv_50187;
  ldv_50186:
  rose_route = rose_route->next;
  i = i + 1;
  ldv_50187: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0) && (loff_t )i < *pos) {
    goto ldv_50186;
  } else {
  }
  return ((loff_t )i == *pos ? (void *)rose_route : (void *)0);
}
}
static void *rose_route_next(struct seq_file *seq , void *v , loff_t *pos )
{
  {
  *pos = *pos + 1LL;
  return ((void *)((unsigned long )v == (unsigned long )((void *)1) ? rose_route_list : ((struct rose_route *)v)->next));
}
}
static void rose_route_stop(struct seq_file *seq , void *v )
{
  {
  {
  ldv_spin_unlock_bh_150(& rose_route_list_lock);
  }
  return;
}
}
static int rose_route_show(struct seq_file *seq , void *v )
{
  char buf[11U] ;
  char rsbuf[11U] ;
  struct rose_route *rose_route ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  {
  if ((unsigned long )v == (unsigned long )((void *)1)) {
    {
    seq_puts(seq, "lci  address     callsign   neigh  <-> lci  address     callsign   neigh\n");
    }
  } else {
    rose_route = (struct rose_route *)v;
    if ((unsigned long )rose_route->neigh1 != (unsigned long )((struct rose_neigh *)0)) {
      {
      tmp = ax2asc((char *)(& buf), (ax25_address const *)(& rose_route->src_call));
      tmp___0 = rose2asc((char *)(& rsbuf), (rose_address const *)(& rose_route->src_addr));
      seq_printf(seq, "%3.3X  %-10s  %-9s  %05d      ", rose_route->lci1, tmp___0,
                 tmp, (rose_route->neigh1)->number);
      }
    } else {
      {
      seq_puts(seq, "000  *           *          00000      ");
      }
    }
    if ((unsigned long )rose_route->neigh2 != (unsigned long )((struct rose_neigh *)0)) {
      {
      tmp___1 = ax2asc((char *)(& buf), (ax25_address const *)(& rose_route->dest_call));
      tmp___2 = rose2asc((char *)(& rsbuf), (rose_address const *)(& rose_route->dest_addr));
      seq_printf(seq, "%3.3X  %-10s  %-9s  %05d\n", rose_route->lci2, tmp___2, tmp___1,
                 (rose_route->neigh2)->number);
      }
    } else {
      {
      seq_puts(seq, "000  *           *          00000\n");
      }
    }
  }
  return (0);
}
}
static struct seq_operations const rose_route_seqops = {& rose_route_start, & rose_route_stop, & rose_route_next, & rose_route_show};
static int rose_route_open(struct inode *inode , struct file *file )
{
  int tmp ;
  {
  {
  tmp = ldv_seq_open_165(file, & rose_route_seqops);
  }
  return (tmp);
}
}
struct file_operations const rose_routes_fops =
     {& __this_module, & seq_lseek, & seq_read, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & rose_route_open,
    0, & seq_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void rose_rt_free(void)
{
  struct rose_neigh *s ;
  struct rose_neigh *rose_neigh ;
  struct rose_node *t ;
  struct rose_node *rose_node ;
  struct rose_route *u ;
  struct rose_route *rose_route ;
  {
  rose_neigh = rose_neigh_list;
  rose_node = rose_node_list;
  rose_route = rose_route_list;
  goto ldv_50221;
  ldv_50220:
  {
  s = rose_neigh;
  rose_neigh = rose_neigh->next;
  rose_remove_neigh(s);
  }
  ldv_50221: ;
  if ((unsigned long )rose_neigh != (unsigned long )((struct rose_neigh *)0)) {
    goto ldv_50220;
  } else {
  }
  goto ldv_50224;
  ldv_50223:
  {
  t = rose_node;
  rose_node = rose_node->next;
  rose_remove_node(t);
  }
  ldv_50224: ;
  if ((unsigned long )rose_node != (unsigned long )((struct rose_node *)0)) {
    goto ldv_50223;
  } else {
  }
  goto ldv_50227;
  ldv_50226:
  {
  u = rose_route;
  rose_route = rose_route->next;
  rose_remove_route(u);
  }
  ldv_50227: ;
  if ((unsigned long )rose_route != (unsigned long )((struct rose_route *)0)) {
    goto ldv_50226;
  } else {
  }
  return;
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 ) ;
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_11_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 ) ;
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_11_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 ) ;
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_11_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 ) ;
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_11_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 ) ;
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 ) ;
struct ldv_thread ldv_thread_1 ;
struct ldv_thread ldv_thread_10 ;
struct ldv_thread ldv_thread_11 ;
struct ldv_thread ldv_thread_2 ;
struct ldv_thread ldv_thread_3 ;
struct ldv_thread ldv_thread_9 ;
void ldv_dummy_resourceless_instance_callback_5_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  rose_route_open(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_5_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  rose_neigh_open(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_6_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_27(long long (*arg0)(struct file * ,
                                                                     long long ,
                                                                     int ) , struct file *arg1 ,
                                                   long long arg2 , int arg3 )
{
  {
  {
  seq_lseek(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_31(int (*arg0)(struct inode * , struct file * ) ,
                                                   struct inode *arg1 , struct file *arg2 )
{
  {
  {
  rose_nodes_open(arg1, arg2);
  }
  return;
}
}
void ldv_dummy_resourceless_instance_callback_7_36(long (*arg0)(struct file * , char * ,
                                                                unsigned long , long long * ) ,
                                                   struct file *arg1 , char *arg2 ,
                                                   unsigned long arg3 , long long *arg4 )
{
  {
  {
  seq_read(arg1, arg2, arg3, arg4);
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_1(void *arg0 )
{
  struct file_operations *ldv_1_container_file_operations ;
  char *ldv_1_ldv_param_4_1_default ;
  long long *ldv_1_ldv_param_4_3_default ;
  struct file *ldv_1_resource_file ;
  struct inode *ldv_1_resource_inode ;
  int ldv_1_ret_default ;
  unsigned long ldv_1_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_1_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_1_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_1_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_1_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_1;
  return;
  ldv_main_1:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_1_ret_default = ldv_file_operations_instance_probe_1_12(ldv_1_container_file_operations->open,
                                                                ldv_1_resource_inode,
                                                                ldv_1_resource_file);
    ldv_1_ret_default = ldv_filter_err_code(ldv_1_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_1_ret_default == 0);
      }
      goto ldv_call_1;
    } else {
      {
      ldv_assume(ldv_1_ret_default != 0);
      }
      goto ldv_main_1;
    }
  } else {
    {
    ldv_free((void *)ldv_1_resource_file);
    ldv_free((void *)ldv_1_resource_inode);
    }
    return;
  }
  return;
  ldv_call_1:
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
  tmp___5 = ldv_xmalloc(1UL);
  ldv_1_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_1_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_1_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_1_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_1_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_1_container_file_operations->write,
                                           ldv_1_resource_file, ldv_1_ldv_param_4_1_default,
                                           ldv_1_size_cnt_write_size, ldv_1_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_1_ldv_param_4_1_default);
  ldv_free((void *)ldv_1_ldv_param_4_3_default);
  }
  goto ldv_call_1;
  case_2: ;
  goto ldv_call_1;
  goto ldv_call_1;
  case_3: ;
  goto ldv_main_1;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
void ldv_file_operations_file_operations_instance_2(void *arg0 )
{
  struct file_operations *ldv_2_container_file_operations ;
  char *ldv_2_ldv_param_4_1_default ;
  long long *ldv_2_ldv_param_4_3_default ;
  struct file *ldv_2_resource_file ;
  struct inode *ldv_2_resource_inode ;
  int ldv_2_ret_default ;
  unsigned long ldv_2_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_2_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_2_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_2_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_2_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_2;
  return;
  ldv_main_2:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_2_ret_default = ldv_file_operations_instance_probe_2_12(ldv_2_container_file_operations->open,
                                                                ldv_2_resource_inode,
                                                                ldv_2_resource_file);
    ldv_2_ret_default = ldv_filter_err_code(ldv_2_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
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
    ldv_free((void *)ldv_2_resource_file);
    ldv_free((void *)ldv_2_resource_inode);
    }
    return;
  }
  return;
  ldv_call_2:
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
  tmp___5 = ldv_xmalloc(1UL);
  ldv_2_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_2_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_2_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_2_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_2_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_2_container_file_operations->write,
                                           ldv_2_resource_file, ldv_2_ldv_param_4_1_default,
                                           ldv_2_size_cnt_write_size, ldv_2_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_2_ldv_param_4_1_default);
  ldv_free((void *)ldv_2_ldv_param_4_3_default);
  }
  goto ldv_call_2;
  case_2: ;
  goto ldv_call_2;
  goto ldv_call_2;
  case_3: ;
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
void ldv_file_operations_file_operations_instance_3(void *arg0 )
{
  struct file_operations *ldv_3_container_file_operations ;
  char *ldv_3_ldv_param_4_1_default ;
  long long *ldv_3_ldv_param_4_3_default ;
  struct file *ldv_3_resource_file ;
  struct inode *ldv_3_resource_inode ;
  int ldv_3_ret_default ;
  unsigned long ldv_3_size_cnt_write_size ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  {
  {
  ldv_3_ret_default = 1;
  tmp = ldv_xmalloc(504UL);
  ldv_3_resource_file = (struct file *)tmp;
  tmp___0 = ldv_xmalloc(976UL);
  ldv_3_resource_inode = (struct inode *)tmp___0;
  tmp___1 = ldv_undef_int();
  ldv_3_size_cnt_write_size = (unsigned long )tmp___1;
  }
  goto ldv_main_3;
  return;
  ldv_main_3:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_3_ret_default = ldv_file_operations_instance_probe_3_12(ldv_3_container_file_operations->open,
                                                                ldv_3_resource_inode,
                                                                ldv_3_resource_file);
    ldv_3_ret_default = ldv_filter_err_code(ldv_3_ret_default);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      ldv_assume(ldv_3_ret_default == 0);
      }
      goto ldv_call_3;
    } else {
      {
      ldv_assume(ldv_3_ret_default != 0);
      }
      goto ldv_main_3;
    }
  } else {
    {
    ldv_free((void *)ldv_3_resource_file);
    ldv_free((void *)ldv_3_resource_inode);
    }
    return;
  }
  return;
  ldv_call_3:
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
  tmp___5 = ldv_xmalloc(1UL);
  ldv_3_ldv_param_4_1_default = (char *)tmp___5;
  tmp___6 = ldv_xmalloc(8UL);
  ldv_3_ldv_param_4_3_default = (long long *)tmp___6;
  ldv_assume(ldv_3_size_cnt_write_size <= 2147479552UL);
  }
  if ((unsigned long )ldv_3_container_file_operations->write != (unsigned long )((ssize_t (*)(struct file * ,
                                                                                              char const * ,
                                                                                              size_t ,
                                                                                              loff_t * ))0)) {
    {
    ldv_file_operations_instance_write_3_4((long (*)(struct file * , char * , unsigned long ,
                                                     long long * ))ldv_3_container_file_operations->write,
                                           ldv_3_resource_file, ldv_3_ldv_param_4_1_default,
                                           ldv_3_size_cnt_write_size, ldv_3_ldv_param_4_3_default);
    }
  } else {
  }
  {
  ldv_free((void *)ldv_3_ldv_param_4_1_default);
  ldv_free((void *)ldv_3_ldv_param_4_3_default);
  }
  goto ldv_call_3;
  case_2: ;
  goto ldv_call_3;
  goto ldv_call_3;
  case_3: ;
  goto ldv_main_3;
  switch_default:
  {
  ldv_stop();
  }
  switch_break: ;
  }
  return;
}
}
int ldv_file_operations_instance_probe_1_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = rose_neigh_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_2_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = rose_nodes_open(arg1, arg2);
  }
  return (tmp);
}
}
int ldv_file_operations_instance_probe_3_12(int (*arg0)(struct inode * , struct file * ) ,
                                            struct inode *arg1 , struct file *arg2 )
{
  int tmp ;
  {
  {
  tmp = rose_route_open(arg1, arg2);
  }
  return (tmp);
}
}
void ldv_seq_instance_next_10_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  rose_node_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_11_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                                struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  rose_route_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_next_9_7(void *(*arg0)(struct seq_file * , void * , long long * ) ,
                               struct seq_file *arg1 , void *arg2 , long long *arg3 )
{
  {
  {
  rose_neigh_next(arg1, arg2, arg3);
  }
  return;
}
}
void ldv_seq_instance_show_10_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  rose_node_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_11_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  rose_route_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_show_9_8(int (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                               void *arg2 )
{
  {
  {
  rose_neigh_show(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_10_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  rose_node_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_11_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                 struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  rose_route_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_start_9_4(void *(*arg0)(struct seq_file * , long long * ) ,
                                struct seq_file *arg1 , long long *arg2 )
{
  {
  {
  rose_neigh_start(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_10_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  rose_node_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_11_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                 void *arg2 )
{
  {
  {
  rose_route_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_instance_stop_9_10(void (*arg0)(struct seq_file * , void * ) , struct seq_file *arg1 ,
                                void *arg2 )
{
  {
  {
  rose_neigh_stop(arg1, arg2);
  }
  return;
}
}
void ldv_seq_operations_seq_instance_10(void *arg0 )
{
  void *ldv_10_ldv_param_10_1_default ;
  long long *ldv_10_ldv_param_4_1_default ;
  void *ldv_10_ldv_param_7_1_default ;
  long long *ldv_10_ldv_param_7_2_default ;
  void *ldv_10_ldv_param_8_1_default ;
  struct seq_operations *ldv_10_ops_seq_operations ;
  struct seq_file *ldv_10_seq_file_seq_file ;
  int ldv_10_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_10_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_10_seq_file_seq_file = data->arg0;
    ldv_10_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_10;
  return;
  ldv_do_10:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_10_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
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
    goto switch_default;
    case_1:
    {
    ldv_10_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_10_10(ldv_10_ops_seq_operations->stop, ldv_10_seq_file_seq_file,
                                ldv_10_ldv_param_10_1_default);
    ldv_free(ldv_10_ldv_param_10_1_default);
    ldv_10_started_default = 0;
    }
    goto ldv_do_10;
    case_2:
    {
    ldv_10_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_10_8(ldv_10_ops_seq_operations->show, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_8_1_default);
    ldv_free(ldv_10_ldv_param_8_1_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    case_3:
    {
    ldv_10_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_10_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_10_7(ldv_10_ops_seq_operations->next, ldv_10_seq_file_seq_file,
                               ldv_10_ldv_param_7_1_default, ldv_10_ldv_param_7_2_default);
    ldv_free(ldv_10_ldv_param_7_1_default);
    ldv_free((void *)ldv_10_ldv_param_7_2_default);
    }
    goto ldv_do_10;
    goto ldv_do_10;
    goto ldv_do_10;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_10_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_10_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_10_4(ldv_10_ops_seq_operations->start, ldv_10_seq_file_seq_file,
                                  ldv_10_ldv_param_4_1_default);
      ldv_free((void *)ldv_10_ldv_param_4_1_default);
      ldv_10_started_default = 1;
      }
      goto ldv_do_10;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_11(void *arg0 )
{
  void *ldv_11_ldv_param_10_1_default ;
  long long *ldv_11_ldv_param_4_1_default ;
  void *ldv_11_ldv_param_7_1_default ;
  long long *ldv_11_ldv_param_7_2_default ;
  void *ldv_11_ldv_param_8_1_default ;
  struct seq_operations *ldv_11_ops_seq_operations ;
  struct seq_file *ldv_11_seq_file_seq_file ;
  int ldv_11_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_11_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_11_seq_file_seq_file = data->arg0;
    ldv_11_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_11;
  return;
  ldv_do_11:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_11_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
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
    goto switch_default;
    case_1:
    {
    ldv_11_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_11_10(ldv_11_ops_seq_operations->stop, ldv_11_seq_file_seq_file,
                                ldv_11_ldv_param_10_1_default);
    ldv_free(ldv_11_ldv_param_10_1_default);
    ldv_11_started_default = 0;
    }
    goto ldv_do_11;
    case_2:
    {
    ldv_11_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_11_8(ldv_11_ops_seq_operations->show, ldv_11_seq_file_seq_file,
                               ldv_11_ldv_param_8_1_default);
    ldv_free(ldv_11_ldv_param_8_1_default);
    }
    goto ldv_do_11;
    goto ldv_do_11;
    case_3:
    {
    ldv_11_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_11_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_11_7(ldv_11_ops_seq_operations->next, ldv_11_seq_file_seq_file,
                               ldv_11_ldv_param_7_1_default, ldv_11_ldv_param_7_2_default);
    ldv_free(ldv_11_ldv_param_7_1_default);
    ldv_free((void *)ldv_11_ldv_param_7_2_default);
    }
    goto ldv_do_11;
    goto ldv_do_11;
    goto ldv_do_11;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_11_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_11_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_11_4(ldv_11_ops_seq_operations->start, ldv_11_seq_file_seq_file,
                                  ldv_11_ldv_param_4_1_default);
      ldv_free((void *)ldv_11_ldv_param_4_1_default);
      ldv_11_started_default = 1;
      }
      goto ldv_do_11;
    } else {
      return;
    }
  }
  return;
}
}
void ldv_seq_operations_seq_instance_9(void *arg0 )
{
  void *ldv_9_ldv_param_10_1_default ;
  long long *ldv_9_ldv_param_4_1_default ;
  void *ldv_9_ldv_param_7_1_default ;
  long long *ldv_9_ldv_param_7_2_default ;
  void *ldv_9_ldv_param_8_1_default ;
  struct seq_operations *ldv_9_ops_seq_operations ;
  struct seq_file *ldv_9_seq_file_seq_file ;
  int ldv_9_started_default ;
  struct ldv_struct_seq_instance_8 *data ;
  int tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  data = (struct ldv_struct_seq_instance_8 *)arg0;
  ldv_9_started_default = 0;
  if ((unsigned long )data != (unsigned long )((struct ldv_struct_seq_instance_8 *)0)) {
    {
    ldv_9_seq_file_seq_file = data->arg0;
    ldv_9_ops_seq_operations = data->arg1;
    ldv_free((void *)data);
    }
  } else {
  }
  goto ldv_do_9;
  return;
  ldv_do_9:
  {
  tmp___3 = ldv_undef_int();
  }
  if (tmp___3 != 0) {
    {
    ldv_assume(ldv_9_started_default == 1);
    tmp = ldv_undef_int();
    }
    {
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
    goto switch_default;
    case_1:
    {
    ldv_9_ldv_param_10_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_stop_9_10(ldv_9_ops_seq_operations->stop, ldv_9_seq_file_seq_file,
                               ldv_9_ldv_param_10_1_default);
    ldv_free(ldv_9_ldv_param_10_1_default);
    ldv_9_started_default = 0;
    }
    goto ldv_do_9;
    case_2:
    {
    ldv_9_ldv_param_8_1_default = ldv_xmalloc(1UL);
    ldv_seq_instance_show_9_8(ldv_9_ops_seq_operations->show, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_8_1_default);
    ldv_free(ldv_9_ldv_param_8_1_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    case_3:
    {
    ldv_9_ldv_param_7_1_default = ldv_xmalloc(1UL);
    tmp___0 = ldv_xmalloc(8UL);
    ldv_9_ldv_param_7_2_default = (long long *)tmp___0;
    ldv_seq_instance_next_9_7(ldv_9_ops_seq_operations->next, ldv_9_seq_file_seq_file,
                              ldv_9_ldv_param_7_1_default, ldv_9_ldv_param_7_2_default);
    ldv_free(ldv_9_ldv_param_7_1_default);
    ldv_free((void *)ldv_9_ldv_param_7_2_default);
    }
    goto ldv_do_9;
    goto ldv_do_9;
    goto ldv_do_9;
    switch_default:
    {
    ldv_stop();
    }
    switch_break: ;
    }
  } else {
    {
    ldv_assume(ldv_9_started_default == 0);
    tmp___2 = ldv_undef_int();
    }
    if (tmp___2 != 0) {
      {
      tmp___1 = ldv_xmalloc(8UL);
      ldv_9_ldv_param_4_1_default = (long long *)tmp___1;
      ldv_seq_instance_start_9_4(ldv_9_ops_seq_operations->start, ldv_9_seq_file_seq_file,
                                 ldv_9_ldv_param_4_1_default);
      ldv_free((void *)ldv_9_ldv_param_4_1_default);
      ldv_9_started_default = 1;
      }
      goto ldv_do_9;
    } else {
      return;
    }
  }
  return;
}
}
__inline static void rcu_read_lock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_lock();
  }
  return;
}
}
__inline static void rcu_read_unlock(void)
{
  {
  {
  ldv_linux_kernel_rcu_update_lock_rcu_read_unlock();
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
__inline static void ldv_spin_lock_bh_125(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_rose_node_list_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_126___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_rose_neigh_list_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_127___0(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_rose_neigh_list_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_128(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_rose_node_list_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_lock_bh_149(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_rose_route_list_lock();
  spin_lock_bh(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_bh_150(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_rose_route_list_lock();
  spin_unlock_bh(lock);
  }
  return;
}
}
static int ldv_seq_open_159(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_seq_open_162(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_seq_open_165(struct file *ldv_func_arg1 , struct seq_operations const *ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = seq_open(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_seq_open(ldv_func_res, ldv_func_arg1, (struct seq_operations *)ldv_func_arg2);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
extern size_t strlen(char const * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
extern void skb_append(struct sk_buff * , struct sk_buff * , struct sk_buff_head * ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  {
  tmp = skb_is_nonlinear(skb);
  }
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
extern void asc2ax(ax25_address * , char const * ) ;
static int rose_create_facilities(unsigned char *buffer , struct rose_sock *rose ) ;
void rose_clear_queues(struct sock *sk )
{
  {
  {
  skb_queue_purge(& sk->sk_write_queue);
  skb_queue_purge(& ((struct rose_sock *)sk)->ack_queue);
  }
  return;
}
}
void rose_frames_acked(struct sock *sk , unsigned short nr )
{
  struct sk_buff *skb ;
  struct rose_sock *rose ;
  struct sk_buff *tmp ;
  {
  rose = (struct rose_sock *)sk;
  if ((int )rose->va != (int )nr) {
    goto ldv_49338;
    ldv_49337:
    {
    skb = skb_dequeue(& rose->ack_queue);
    kfree_skb(skb);
    rose->va = (unsigned short )(((int )rose->va + 1) % 8);
    }
    ldv_49338:
    {
    tmp = skb_peek((struct sk_buff_head const *)(& rose->ack_queue));
    }
    if ((unsigned long )tmp != (unsigned long )((struct sk_buff *)0) && (int )rose->va != (int )nr) {
      goto ldv_49337;
    } else {
    }
  } else {
  }
  return;
}
}
void rose_requeue_frames(struct sock *sk )
{
  struct sk_buff *skb ;
  struct sk_buff *skb_prev ;
  {
  skb_prev = (struct sk_buff *)0;
  goto ldv_49346;
  ldv_49345: ;
  if ((unsigned long )skb_prev == (unsigned long )((struct sk_buff *)0)) {
    {
    skb_queue_head(& sk->sk_write_queue, skb);
    }
  } else {
    {
    skb_append(skb_prev, skb, & sk->sk_write_queue);
    }
  }
  skb_prev = skb;
  ldv_49346:
  {
  skb = skb_dequeue(& ((struct rose_sock *)sk)->ack_queue);
  }
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_49345;
  } else {
  }
  return;
}
}
int rose_validate_nr(struct sock *sk , unsigned short nr )
{
  struct rose_sock *rose ;
  unsigned short vc ;
  {
  rose = (struct rose_sock *)sk;
  vc = rose->va;
  goto ldv_49355;
  ldv_49354: ;
  if ((int )nr == (int )vc) {
    return (1);
  } else {
  }
  vc = (unsigned short )(((int )vc + 1) % 8);
  ldv_49355: ;
  if ((int )vc != (int )rose->vs) {
    goto ldv_49354;
  } else {
  }
  return ((int )nr == (int )rose->vs);
}
}
void rose_write_internal(struct sock *sk , int frametype )
{
  struct rose_sock *rose ;
  struct sk_buff *skb ;
  unsigned char *dptr ;
  unsigned char lci1 ;
  unsigned char lci2 ;
  char buffer[100U] ;
  int len ;
  int faclen ;
  int tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  unsigned char *tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  unsigned char *tmp___21 ;
  unsigned char *tmp___22 ;
  unsigned char *tmp___23 ;
  unsigned char *tmp___24 ;
  unsigned char *tmp___25 ;
  {
  rose = (struct rose_sock *)sk;
  faclen = 0;
  len = 93;
  {
  if (frametype == 11) {
    goto case_11;
  } else {
  }
  if (frametype == 15) {
    goto case_15;
  } else {
  }
  if (frametype == 19) {
    goto case_19;
  } else {
  }
  if (frametype == 27) {
    goto case_27;
  } else {
  }
  goto switch_break;
  case_11:
  {
  len = len + 11;
  faclen = rose_create_facilities((unsigned char *)(& buffer), rose);
  len = len + faclen;
  }
  goto ldv_49370;
  case_15: ;
  case_19: ;
  case_27:
  len = len + 2;
  goto ldv_49370;
  switch_break: ;
  }
  ldv_49370:
  {
  skb = alloc_skb((unsigned int )len, 32U);
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  {
  skb_reserve(skb, 90);
  tmp = skb_tailroom((struct sk_buff const *)skb);
  dptr = skb_put(skb, (unsigned int )tmp);
  lci1 = (unsigned int )((unsigned char )(rose->lci >> 8)) & 15U;
  lci2 = (unsigned char )rose->lci;
  }
  {
  if (frametype == 11) {
    goto case_11___0;
  } else {
  }
  if (frametype == 15) {
    goto case_15___0;
  } else {
  }
  if (frametype == 19) {
    goto case_19___0;
  } else {
  }
  if (frametype == 27) {
    goto case_27___0;
  } else {
  }
  if (frametype == 1) {
    goto case_1;
  } else {
  }
  if (frametype == 5) {
    goto case_5;
  } else {
  }
  if (frametype == 23) {
    goto case_23;
  } else {
  }
  if (frametype == 31) {
    goto case_31;
  } else {
  }
  goto switch_default;
  case_11___0:
  {
  tmp___0 = dptr;
  dptr = dptr + 1;
  *tmp___0 = (unsigned int )lci1 | 16U;
  tmp___1 = dptr;
  dptr = dptr + 1;
  *tmp___1 = lci2;
  tmp___2 = dptr;
  dptr = dptr + 1;
  *tmp___2 = (unsigned char )frametype;
  tmp___3 = dptr;
  dptr = dptr + 1;
  *tmp___3 = 170U;
  memcpy((void *)dptr, (void const *)(& rose->dest_addr), 5UL);
  dptr = dptr + 5UL;
  memcpy((void *)dptr, (void const *)(& rose->source_addr), 5UL);
  dptr = dptr + 5UL;
  memcpy((void *)dptr, (void const *)(& buffer), (size_t )faclen);
  dptr = dptr + (unsigned long )faclen;
  }
  goto ldv_49375;
  case_15___0:
  tmp___4 = dptr;
  dptr = dptr + 1;
  *tmp___4 = (unsigned int )lci1 | 16U;
  tmp___5 = dptr;
  dptr = dptr + 1;
  *tmp___5 = lci2;
  tmp___6 = dptr;
  dptr = dptr + 1;
  *tmp___6 = (unsigned char )frametype;
  tmp___7 = dptr;
  dptr = dptr + 1;
  *tmp___7 = 0U;
  tmp___8 = dptr;
  dptr = dptr + 1;
  *tmp___8 = 0U;
  goto ldv_49375;
  case_19___0:
  tmp___9 = dptr;
  dptr = dptr + 1;
  *tmp___9 = (unsigned int )lci1 | 16U;
  tmp___10 = dptr;
  dptr = dptr + 1;
  *tmp___10 = lci2;
  tmp___11 = dptr;
  dptr = dptr + 1;
  *tmp___11 = (unsigned char )frametype;
  tmp___12 = dptr;
  dptr = dptr + 1;
  *tmp___12 = rose->cause;
  tmp___13 = dptr;
  dptr = dptr + 1;
  *tmp___13 = rose->diagnostic;
  goto ldv_49375;
  case_27___0:
  tmp___14 = dptr;
  dptr = dptr + 1;
  *tmp___14 = (unsigned int )lci1 | 16U;
  tmp___15 = dptr;
  dptr = dptr + 1;
  *tmp___15 = lci2;
  tmp___16 = dptr;
  dptr = dptr + 1;
  *tmp___16 = (unsigned char )frametype;
  tmp___17 = dptr;
  dptr = dptr + 1;
  *tmp___17 = 0U;
  tmp___18 = dptr;
  dptr = dptr + 1;
  *tmp___18 = 0U;
  goto ldv_49375;
  case_1: ;
  case_5:
  tmp___19 = dptr;
  dptr = dptr + 1;
  *tmp___19 = (unsigned int )lci1 | 16U;
  tmp___20 = dptr;
  dptr = dptr + 1;
  *tmp___20 = lci2;
  *dptr = (unsigned char )frametype;
  tmp___21 = dptr;
  dptr = dptr + 1;
  tmp___22 = dptr;
  dptr = dptr + 1;
  *tmp___21 = (unsigned char )((int )((signed char )*tmp___22) | (int )((signed char )((int )rose->vr << 5)));
  goto ldv_49375;
  case_23: ;
  case_31:
  tmp___23 = dptr;
  dptr = dptr + 1;
  *tmp___23 = (unsigned int )lci1 | 16U;
  tmp___24 = dptr;
  dptr = dptr + 1;
  *tmp___24 = lci2;
  tmp___25 = dptr;
  dptr = dptr + 1;
  *tmp___25 = (unsigned char )frametype;
  goto ldv_49375;
  switch_default:
  {
  printk("\vROSE: rose_write_internal - invalid frametype %02X\n", frametype);
  kfree_skb(skb);
  }
  return;
  switch_break___0: ;
  }
  ldv_49375:
  {
  rose_transmit_link(skb, rose->neighbour);
  }
  return;
}
}
int rose_decode(struct sk_buff *skb , int *ns , int *nr , int *q , int *d , int *m )
{
  unsigned char *frame ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  frame = skb->data;
  tmp___2 = 0;
  *m = tmp___2;
  tmp___1 = tmp___2;
  *d = tmp___1;
  tmp___0 = tmp___1;
  *q = tmp___0;
  tmp = tmp___0;
  *nr = tmp;
  *ns = tmp;
  {
  if ((int )*(frame + 2UL) == 11) {
    goto case_11;
  } else {
  }
  if ((int )*(frame + 2UL) == 15) {
    goto case_15;
  } else {
  }
  if ((int )*(frame + 2UL) == 19) {
    goto case_19;
  } else {
  }
  if ((int )*(frame + 2UL) == 23) {
    goto case_23;
  } else {
  }
  if ((int )*(frame + 2UL) == 27) {
    goto case_27;
  } else {
  }
  if ((int )*(frame + 2UL) == 31) {
    goto case_31;
  } else {
  }
  goto switch_default;
  case_11: ;
  case_15: ;
  case_19: ;
  case_23: ;
  case_27: ;
  case_31: ;
  return ((int )*(frame + 2UL));
  switch_default: ;
  goto ldv_49400;
  switch_break: ;
  }
  ldv_49400: ;
  if (((int )*(frame + 2UL) & 31) == 1 || ((int )*(frame + 2UL) & 31) == 5) {
    *nr = ((int )*(frame + 2UL) >> 5) & 7;
    return ((int )*(frame + 2UL) & 31);
  } else {
  }
  if (((int )*(frame + 2UL) & 1) == 0) {
    *q = (int )((signed char )*frame) < 0;
    *d = ((int )*frame & 64) != 0;
    *m = ((int )*(frame + 2UL) & 16) != 0;
    *nr = ((int )*(frame + 2UL) >> 5) & 7;
    *ns = ((int )*(frame + 2UL) >> 1) & 7;
    return (0);
  } else {
  }
  return (253);
}
}
static int rose_parse_national(unsigned char *p , struct rose_facilities_struct *facilities ,
                               int len )
{
  unsigned char *pt ;
  unsigned char l ;
  unsigned char lg ;
  unsigned char n ;
  int fac_national_digis_received ;
  unsigned char tmp ;
  unsigned char tmp___0 ;
  {
  n = 0U;
  fac_national_digis_received = 0;
  ldv_49419: ;
  {
  if (((int )*p & 192) == 0) {
    goto case_0;
  } else {
  }
  if (((int )*p & 192) == 64) {
    goto case_64;
  } else {
  }
  if (((int )*p & 192) == 128) {
    goto case_128;
  } else {
  }
  if (((int )*p & 192) == 192) {
    goto case_192;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (len <= 1) {
    return (-1);
  } else {
  }
  p = p + 2UL;
  n = (unsigned int )n + 2U;
  len = len + -2;
  goto ldv_49412;
  case_64: ;
  if (len <= 2) {
    return (-1);
  } else {
  }
  if ((unsigned int )*p == 127U) {
    facilities->rand = (unsigned int )((((int )*(p + 1UL) << 8) & 65535) + (int )*(p + 2UL));
  } else {
  }
  p = p + 3UL;
  n = (unsigned int )n + 3U;
  len = len + -3;
  goto ldv_49412;
  case_128: ;
  if (len <= 3) {
    return (-1);
  } else {
  }
  p = p + 4UL;
  n = (unsigned int )n + 4U;
  len = len + -4;
  goto ldv_49412;
  case_192: ;
  if (len <= 1) {
    return (-1);
  } else {
  }
  l = *(p + 1UL);
  if (len < (int )l + 2) {
    return (-1);
  } else {
  }
  if ((unsigned int )*p == 233U) {
    if (fac_national_digis_received == 0) {
      if ((unsigned int )l <= 6U) {
        return (-1);
      } else {
      }
      {
      memcpy((void *)(& facilities->source_digis), (void const *)p + 2U, 7UL);
      facilities->source_ndigis = 1U;
      }
    } else {
    }
  } else
  if ((unsigned int )*p == 235U) {
    if (fac_national_digis_received == 0) {
      if ((unsigned int )l <= 6U) {
        return (-1);
      } else {
      }
      {
      memcpy((void *)(& facilities->dest_digis), (void const *)p + 2U, 7UL);
      facilities->dest_ndigis = 1U;
      }
    } else {
    }
  } else
  if ((unsigned int )*p == 237U) {
    if ((unsigned int )l <= 6U) {
      return (-1);
    } else {
    }
    {
    memcpy((void *)(& facilities->fail_call), (void const *)p + 2U, 7UL);
    }
  } else
  if ((unsigned int )*p == 238U) {
    if ((unsigned int )l <= 5U) {
      return (-1);
    } else {
    }
    {
    memcpy((void *)(& facilities->fail_addr), (void const *)p + 3U, 5UL);
    }
  } else
  if ((unsigned int )*p == 239U) {
    if ((unsigned int )l % 7U != 0U) {
      return (-1);
    } else {
    }
    fac_national_digis_received = 1;
    facilities->source_ndigis = 0U;
    facilities->dest_ndigis = 0U;
    pt = p + 2UL;
    lg = 0U;
    goto ldv_49417;
    ldv_49416: ;
    if ((int )((signed char )*(pt + 6UL)) < 0) {
      if ((unsigned int )facilities->dest_ndigis > 5U) {
        return (-1);
      } else {
      }
      {
      tmp = facilities->dest_ndigis;
      facilities->dest_ndigis = (unsigned char )((int )facilities->dest_ndigis + 1);
      memcpy((void *)(& facilities->dest_digis) + (unsigned long )tmp, (void const *)pt,
               7UL);
      }
    } else {
      if ((unsigned int )facilities->source_ndigis > 5U) {
        return (-1);
      } else {
      }
      {
      tmp___0 = facilities->source_ndigis;
      facilities->source_ndigis = (unsigned char )((int )facilities->source_ndigis + 1);
      memcpy((void *)(& facilities->source_digis) + (unsigned long )tmp___0, (void const *)pt,
               7UL);
      }
    }
    pt = pt + 7UL;
    lg = (unsigned int )lg + 7U;
    ldv_49417: ;
    if ((int )lg < (int )l) {
      goto ldv_49416;
    } else {
    }
  } else {
  }
  p = p + ((unsigned long )l + 2UL);
  n = (unsigned int )((int )n + (int )l) + 2U;
  len = len + (-2 - (int )l);
  goto ldv_49412;
  switch_break: ;
  }
  ldv_49412: ;
  if ((unsigned int )*p != 0U && len > 0) {
    goto ldv_49419;
  } else {
  }
  return ((int )n);
}
}
static int rose_parse_ccitt(unsigned char *p , struct rose_facilities_struct *facilities ,
                            int len )
{
  unsigned char l ;
  unsigned char n ;
  char callsign[11U] ;
  {
  n = 0U;
  ldv_49434: ;
  {
  if (((int )*p & 192) == 0) {
    goto case_0;
  } else {
  }
  if (((int )*p & 192) == 64) {
    goto case_64;
  } else {
  }
  if (((int )*p & 192) == 128) {
    goto case_128;
  } else {
  }
  if (((int )*p & 192) == 192) {
    goto case_192;
  } else {
  }
  goto switch_break;
  case_0: ;
  if (len <= 1) {
    return (-1);
  } else {
  }
  p = p + 2UL;
  n = (unsigned int )n + 2U;
  len = len + -2;
  goto ldv_49430;
  case_64: ;
  if (len <= 2) {
    return (-1);
  } else {
  }
  p = p + 3UL;
  n = (unsigned int )n + 3U;
  len = len + -3;
  goto ldv_49430;
  case_128: ;
  if (len <= 3) {
    return (-1);
  } else {
  }
  p = p + 4UL;
  n = (unsigned int )n + 4U;
  len = len + -4;
  goto ldv_49430;
  case_192: ;
  if (len <= 1) {
    return (-1);
  } else {
  }
  l = *(p + 1UL);
  if ((unsigned int )l - 10U > 10U) {
    return (-1);
  } else {
  }
  if ((unsigned int )*p == 201U) {
    {
    memcpy((void *)(& facilities->source_addr), (void const *)p + 7U, 5UL);
    memcpy((void *)(& callsign), (void const *)p + 12U, (size_t )((int )l + -10));
    callsign[(int )l + -10] = 0;
    asc2ax(& facilities->source_call, (char const *)(& callsign));
    }
  } else {
  }
  if ((unsigned int )*p == 203U) {
    {
    memcpy((void *)(& facilities->dest_addr), (void const *)p + 7U, 5UL);
    memcpy((void *)(& callsign), (void const *)p + 12U, (size_t )((int )l + -10));
    callsign[(int )l + -10] = 0;
    asc2ax(& facilities->dest_call, (char const *)(& callsign));
    }
  } else {
  }
  p = p + ((unsigned long )l + 2UL);
  n = (unsigned int )((int )n + (int )l) + 2U;
  len = len + (-2 - (int )l);
  goto ldv_49430;
  switch_break: ;
  }
  ldv_49430: ;
  if ((unsigned int )*p != 0U && len > 0) {
    goto ldv_49434;
  } else {
  }
  return ((int )n);
}
}
int rose_parse_facilities(unsigned char *p , unsigned int packet_len , struct rose_facilities_struct *facilities )
{
  int facilities_len ;
  int len ;
  unsigned char *tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = p;
  p = p + 1;
  facilities_len = (int )*tmp;
  if (facilities_len == 0 || (unsigned int )facilities_len > packet_len) {
    return (0);
  } else {
  }
  goto ldv_49450;
  ldv_49449:
  facilities_len = facilities_len - 1;
  p = p + 1;
  {
  if ((int )*p == 0) {
    goto case_0;
  } else {
  }
  if ((int )*p == 15) {
    goto case_15;
  } else {
  }
  goto switch_default;
  case_0:
  {
  len = rose_parse_national(p + 1UL, facilities, facilities_len + -1);
  }
  goto ldv_49444;
  case_15:
  {
  len = rose_parse_ccitt(p + 1UL, facilities, facilities_len + -1);
  }
  goto ldv_49444;
  switch_default:
  {
  printk("\017ROSE: rose_parse_facilities - unknown facilities family %02X\n", (int )*p);
  len = 1;
  }
  goto ldv_49444;
  switch_break: ;
  }
  ldv_49444: ;
  if (len < 0) {
    return (0);
  } else {
  }
  {
  __ret_warn_on = len >= facilities_len;
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___0 != 0L) {
    {
    warn_slowpath_null("net/rose/rose_subr.c", 426);
    }
  } else {
  }
  {
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  }
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  facilities_len = facilities_len + ~ len;
  p = p + ((unsigned long )len + 1UL);
  ldv_49450: ;
  if (facilities_len > 2 && (unsigned int )*p == 0U) {
    goto ldv_49449;
  } else {
  }
  return (facilities_len == 0);
}
}
static int rose_create_facilities(unsigned char *buffer , struct rose_sock *rose )
{
  unsigned char *p ;
  char *callsign ;
  char buf[11U] ;
  int len ;
  int nb ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  unsigned char *tmp___3 ;
  int maxdigi ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  unsigned char *tmp___13 ;
  size_t tmp___14 ;
  unsigned char *tmp___15 ;
  size_t tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  unsigned char *tmp___20 ;
  size_t tmp___21 ;
  size_t tmp___22 ;
  unsigned char *tmp___23 ;
  unsigned char *tmp___24 ;
  size_t tmp___25 ;
  unsigned char *tmp___26 ;
  size_t tmp___27 ;
  unsigned char *tmp___28 ;
  unsigned char *tmp___29 ;
  unsigned char *tmp___30 ;
  unsigned char *tmp___31 ;
  size_t tmp___32 ;
  size_t tmp___33 ;
  {
  p = buffer + 1UL;
  if ((rose->rand != 0U || (unsigned int )rose->source_ndigis == 1U) || (unsigned int )rose->dest_ndigis == 1U) {
    tmp = p;
    p = p + 1;
    *tmp = 0U;
    tmp___0 = p;
    p = p + 1;
    *tmp___0 = 0U;
    if (rose->rand != 0U) {
      tmp___1 = p;
      p = p + 1;
      *tmp___1 = 127U;
      tmp___2 = p;
      p = p + 1;
      *tmp___2 = (unsigned char )(rose->rand >> 8);
      tmp___3 = p;
      p = p + 1;
      *tmp___3 = (unsigned char )rose->rand;
    } else {
    }
    if ((unsigned int )*((unsigned short *)rose + 656UL) != 0U) {
      maxdigi = 0;
      tmp___4 = p;
      p = p + 1;
      *tmp___4 = 239U;
      tmp___5 = p;
      p = p + 1;
      *tmp___5 = (unsigned int )((unsigned char )((int )rose->source_ndigis + (int )rose->dest_ndigis)) * 7U;
      nb = 0;
      goto ldv_49464;
      ldv_49463:
      maxdigi = maxdigi + 1;
      if (maxdigi > 5) {
        goto ldv_49462;
      } else {
      }
      {
      memcpy((void *)p, (void const *)(& rose->source_digis) + (unsigned long )nb,
               7UL);
      *(p + 6UL) = (unsigned int )*(p + 6UL) | 128U;
      p = p + 7UL;
      nb = nb + 1;
      }
      ldv_49464: ;
      if (nb < (int )rose->source_ndigis) {
        goto ldv_49463;
      } else {
      }
      ldv_49462:
      nb = 0;
      goto ldv_49467;
      ldv_49466:
      maxdigi = maxdigi + 1;
      if (maxdigi > 5) {
        goto ldv_49465;
      } else {
      }
      {
      memcpy((void *)p, (void const *)(& rose->dest_digis) + (unsigned long )nb,
               7UL);
      *(p + 6UL) = (unsigned int )*(p + 6UL) & 127U;
      p = p + 7UL;
      nb = nb + 1;
      }
      ldv_49467: ;
      if (nb < (int )rose->dest_ndigis) {
        goto ldv_49466;
      } else {
      }
      ldv_49465: ;
    } else {
    }
    if ((unsigned int )rose->source_ndigis != 0U) {
      {
      tmp___6 = p;
      p = p + 1;
      *tmp___6 = 235U;
      tmp___7 = p;
      p = p + 1;
      *tmp___7 = 7U;
      memcpy((void *)p, (void const *)(& rose->source_digis), 7UL);
      p = p + 7UL;
      }
    } else {
    }
    if ((unsigned int )rose->dest_ndigis != 0U) {
      {
      tmp___8 = p;
      p = p + 1;
      *tmp___8 = 233U;
      tmp___9 = p;
      p = p + 1;
      *tmp___9 = 7U;
      memcpy((void *)p, (void const *)(& rose->dest_digis), 7UL);
      p = p + 7UL;
      }
    } else {
    }
  } else {
  }
  {
  tmp___10 = p;
  p = p + 1;
  *tmp___10 = 0U;
  tmp___11 = p;
  p = p + 1;
  *tmp___11 = 15U;
  tmp___12 = p;
  p = p + 1;
  *tmp___12 = 201U;
  callsign = ax2asc((char *)(& buf), (ax25_address const *)(& rose->dest_call));
  tmp___13 = p;
  p = p + 1;
  tmp___14 = strlen((char const *)callsign);
  *tmp___13 = (unsigned int )((unsigned char )tmp___14) + 10U;
  tmp___15 = p;
  p = p + 1;
  tmp___16 = strlen((char const *)callsign);
  *tmp___15 = (unsigned int )((unsigned char )(tmp___16 + 9UL)) * 2U;
  tmp___17 = p;
  p = p + 1;
  *tmp___17 = 71U;
  tmp___18 = p;
  p = p + 1;
  *tmp___18 = 0U;
  tmp___19 = p;
  p = p + 1;
  *tmp___19 = 17U;
  tmp___20 = p;
  p = p + 1;
  *tmp___20 = 10U;
  memcpy((void *)p, (void const *)(& rose->dest_addr), 5UL);
  p = p + 5UL;
  tmp___21 = strlen((char const *)callsign);
  memcpy((void *)p, (void const *)callsign, tmp___21);
  tmp___22 = strlen((char const *)callsign);
  p = p + tmp___22;
  tmp___23 = p;
  p = p + 1;
  *tmp___23 = 203U;
  callsign = ax2asc((char *)(& buf), (ax25_address const *)(& rose->source_call));
  tmp___24 = p;
  p = p + 1;
  tmp___25 = strlen((char const *)callsign);
  *tmp___24 = (unsigned int )((unsigned char )tmp___25) + 10U;
  tmp___26 = p;
  p = p + 1;
  tmp___27 = strlen((char const *)callsign);
  *tmp___26 = (unsigned int )((unsigned char )(tmp___27 + 9UL)) * 2U;
  tmp___28 = p;
  p = p + 1;
  *tmp___28 = 71U;
  tmp___29 = p;
  p = p + 1;
  *tmp___29 = 0U;
  tmp___30 = p;
  p = p + 1;
  *tmp___30 = 17U;
  tmp___31 = p;
  p = p + 1;
  *tmp___31 = 10U;
  memcpy((void *)p, (void const *)(& rose->source_addr), 5UL);
  p = p + 5UL;
  tmp___32 = strlen((char const *)callsign);
  memcpy((void *)p, (void const *)callsign, tmp___32);
  tmp___33 = strlen((char const *)callsign);
  p = p + tmp___33;
  len = (int )((unsigned int )((long )p) - (unsigned int )((long )buffer));
  *buffer = (unsigned int )((unsigned char )len) + 255U;
  }
  return (len);
}
}
void rose_disconnect(struct sock *sk , int reason , int cause , int diagnostic )
{
  struct rose_sock *rose ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  rose = (struct rose_sock *)sk;
  rose_stop_timer(sk);
  rose_stop_idletimer(sk);
  rose_clear_queues(sk);
  rose->lci = 0U;
  rose->state = 0U;
  }
  if (cause != -1) {
    rose->cause = (unsigned char )cause;
  } else {
  }
  if (diagnostic != -1) {
    rose->diagnostic = (unsigned char )diagnostic;
  } else {
  }
  {
  sk->__sk_common.skc_state = 7U;
  sk->sk_err = reason;
  sk->sk_shutdown = (unsigned char )((unsigned int )sk->sk_shutdown | 2U);
  tmp = sock_flag((struct sock const *)sk, 0);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    (*(sk->sk_state_change))(sk);
    sock_set_flag(sk, 0);
    }
  } else {
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_lock_slock_of_NOT_ARG_SIGN(void) ;
void ldv_linux_kernel_locking_spinlock_spin_unlock_slock_of_NOT_ARG_SIGN(void) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static void spin_lock(spinlock_t *lock )
{
  {
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_lock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_134(spinlock_t *lock ) ;
__inline static void ldv_spin_lock_134(spinlock_t *lock ) ;
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_135(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_135(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_135(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_135(spinlock_t *lock ) ;
static int ldv_del_timer_125___0(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_126___1(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_127___1(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_128___0(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_129(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_130(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_131(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_132(struct timer_list *ldv_func_arg1 ) ;
static int ldv_del_timer_133(struct timer_list *ldv_func_arg1 ) ;
static void rose_heartbeat_expiry(unsigned long param ) ;
static void rose_timer_expiry(unsigned long param ) ;
static void rose_idletimer_expiry(unsigned long param ) ;
void rose_start_heartbeat(struct sock *sk )
{
  {
  {
  ldv_del_timer_125___0(& sk->sk_timer);
  sk->sk_timer.data = (unsigned long )sk;
  sk->sk_timer.function = & rose_heartbeat_expiry;
  sk->sk_timer.expires = (unsigned long )jiffies + 1250UL;
  add_timer(& sk->sk_timer);
  }
  return;
}
}
void rose_start_t1timer(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  {
  rose = (struct rose_sock *)sk;
  ldv_del_timer_126___1(& rose->timer);
  rose->timer.data = (unsigned long )sk;
  rose->timer.function = & rose_timer_expiry;
  rose->timer.expires = (unsigned long )jiffies + rose->t1;
  add_timer(& rose->timer);
  }
  return;
}
}
void rose_start_t2timer(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  {
  rose = (struct rose_sock *)sk;
  ldv_del_timer_127___1(& rose->timer);
  rose->timer.data = (unsigned long )sk;
  rose->timer.function = & rose_timer_expiry;
  rose->timer.expires = (unsigned long )jiffies + rose->t2;
  add_timer(& rose->timer);
  }
  return;
}
}
void rose_start_t3timer(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  {
  rose = (struct rose_sock *)sk;
  ldv_del_timer_128___0(& rose->timer);
  rose->timer.data = (unsigned long )sk;
  rose->timer.function = & rose_timer_expiry;
  rose->timer.expires = (unsigned long )jiffies + rose->t3;
  add_timer(& rose->timer);
  }
  return;
}
}
void rose_start_hbtimer(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  {
  rose = (struct rose_sock *)sk;
  ldv_del_timer_129(& rose->timer);
  rose->timer.data = (unsigned long )sk;
  rose->timer.function = & rose_timer_expiry;
  rose->timer.expires = (unsigned long )jiffies + rose->hb;
  add_timer(& rose->timer);
  }
  return;
}
}
void rose_start_idletimer(struct sock *sk )
{
  struct rose_sock *rose ;
  {
  {
  rose = (struct rose_sock *)sk;
  ldv_del_timer_130(& rose->idletimer);
  }
  if (rose->idle != 0UL) {
    {
    rose->idletimer.data = (unsigned long )sk;
    rose->idletimer.function = & rose_idletimer_expiry;
    rose->idletimer.expires = (unsigned long )jiffies + rose->idle;
    add_timer(& rose->idletimer);
    }
  } else {
  }
  return;
}
}
void rose_stop_heartbeat(struct sock *sk )
{
  {
  {
  ldv_del_timer_131(& sk->sk_timer);
  }
  return;
}
}
void rose_stop_timer(struct sock *sk )
{
  {
  {
  ldv_del_timer_132(& ((struct rose_sock *)sk)->timer);
  }
  return;
}
}
void rose_stop_idletimer(struct sock *sk )
{
  {
  {
  ldv_del_timer_133(& ((struct rose_sock *)sk)->idletimer);
  }
  return;
}
}
static void rose_heartbeat_expiry(unsigned long param )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  {
  sk = (struct sock *)param;
  rose = (struct rose_sock *)sk;
  ldv_spin_lock_134(& sk->sk_lock.slock);
  }
  {
  if ((int )rose->state == 0) {
    goto case_0;
  } else {
  }
  if ((int )rose->state == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_0:
  {
  tmp = sock_flag((struct sock const *)sk, 5);
  }
  if ((int )tmp) {
    {
    ldv_spin_unlock_135(& sk->sk_lock.slock);
    rose_destroy_socket(sk);
    }
    return;
  } else
  if ((unsigned int )((unsigned char )sk->__sk_common.skc_state) == 10U) {
    {
    tmp___0 = sock_flag((struct sock const *)sk, 0);
    }
    if ((int )tmp___0) {
      {
      ldv_spin_unlock_135(& sk->sk_lock.slock);
      rose_destroy_socket(sk);
      }
      return;
    } else {
    }
  } else {
  }
  goto ldv_49440;
  case_3:
  {
  tmp___1 = atomic_read((atomic_t const *)(& sk->sk_backlog.rmem_alloc));
  }
  if (tmp___1 < sk->sk_rcvbuf / 2 && ((int )rose->condition & 4) != 0) {
    {
    rose->condition = (unsigned int )rose->condition & 251U;
    rose->condition = (unsigned int )rose->condition & 254U;
    rose->vl = rose->vr;
    rose_write_internal(sk, 1);
    rose_stop_timer(sk);
    }
    goto ldv_49440;
  } else {
  }
  goto ldv_49440;
  switch_break: ;
  }
  ldv_49440:
  {
  rose_start_heartbeat(sk);
  ldv_spin_unlock_135(& sk->sk_lock.slock);
  }
  return;
}
}
static void rose_timer_expiry(unsigned long param )
{
  struct sock *sk ;
  struct rose_sock *rose ;
  {
  {
  sk = (struct sock *)param;
  rose = (struct rose_sock *)sk;
  ldv_spin_lock_134(& sk->sk_lock.slock);
  }
  {
  if ((int )rose->state == 1) {
    goto case_1;
  } else {
  }
  if ((int )rose->state == 4) {
    goto case_4;
  } else {
  }
  if ((int )rose->state == 2) {
    goto case_2;
  } else {
  }
  if ((int )rose->state == 3) {
    goto case_3;
  } else {
  }
  goto switch_break;
  case_1: ;
  case_4:
  {
  rose_write_internal(sk, 19);
  rose->state = 2U;
  rose_start_t3timer(sk);
  }
  goto ldv_49449;
  case_2:
  {
  (rose->neighbour)->use = (unsigned short )((int )(rose->neighbour)->use - 1);
  rose_disconnect(sk, 110, -1, -1);
  }
  goto ldv_49449;
  case_3: ;
  if ((int )rose->condition & 1) {
    {
    rose->condition = (unsigned int )rose->condition & 254U;
    rose_enquiry_response(sk);
    }
  } else {
  }
  goto ldv_49449;
  switch_break: ;
  }
  ldv_49449:
  {
  ldv_spin_unlock_135(& sk->sk_lock.slock);
  }
  return;
}
}
static void rose_idletimer_expiry(unsigned long param )
{
  struct sock *sk ;
  bool tmp ;
  int tmp___0 ;
  {
  {
  sk = (struct sock *)param;
  ldv_spin_lock_134(& sk->sk_lock.slock);
  rose_clear_queues(sk);
  rose_write_internal(sk, 19);
  ((struct rose_sock *)sk)->state = 2U;
  rose_start_t3timer(sk);
  sk->__sk_common.skc_state = 7U;
  sk->sk_err = 0;
  sk->sk_shutdown = (unsigned char )((unsigned int )sk->sk_shutdown | 2U);
  tmp = sock_flag((struct sock const *)sk, 0);
  }
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    {
    (*(sk->sk_state_change))(sk);
    sock_set_flag(sk, 0);
    }
  } else {
  }
  {
  ldv_spin_unlock_135(& sk->sk_lock.slock);
  }
  return;
}
}
static int ldv_del_timer_125___0(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_126___1(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_127___1(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_128___0(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_129(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_130(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_131(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_132(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
static int ldv_del_timer_133(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_del_timer(ldv_func_res, ldv_func_arg1);
  }
  return (tmp___0);
  return (ldv_func_res);
}
}
__inline static void ldv_spin_lock_134(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_lock_slock_of_NOT_ARG_SIGN();
  spin_lock(lock);
  }
  return;
}
}
__inline static void ldv_spin_unlock_135(spinlock_t *lock )
{
  {
  {
  ldv_linux_kernel_locking_spinlock_spin_unlock_slock_of_NOT_ARG_SIGN();
  spin_unlock(lock);
  }
  return;
}
}
extern int proc_dointvec_minmax(struct ctl_table * , int , void * , size_t * , loff_t * ) ;
extern struct ctl_table_header *register_net_sysctl(struct net * , char const * ,
                                                    struct ctl_table * ) ;
static struct ctl_table_header *ldv_register_net_sysctl_125(struct net *ldv_func_arg1 ,
                                                            char const *ldv_func_arg2 ,
                                                            struct ctl_table *ldv_func_arg3 ) ;
extern void unregister_net_sysctl_table(struct ctl_table_header * ) ;
static int min_timer[1U] = { 250};
static int max_timer[1U] = { 75000};
static int min_idle[1U] = { 0};
static int max_idle[1U] = { 16383750};
static int min_route[1U] ;
static int max_route[1U] = { 1};
static int min_ftimer[1U] = { 15000};
static int max_ftimer[1U] = { 150000};
static int min_maxvcs[1U] = { 1};
static int max_maxvcs[1U] = { 254};
static int min_window[1U] = { 1};
static int max_window[1U] = { 7};
static struct ctl_table_header *rose_table_header ;
static struct ctl_table rose_table[11U] =
  { {"restart_request_timeout", (void *)(& sysctl_rose_restart_request_timeout),
      4, 420U, 0, & proc_dointvec_minmax, 0, (void *)(& min_timer), (void *)(& max_timer)},
        {"call_request_timeout",
      (void *)(& sysctl_rose_call_request_timeout), 4, 420U, 0, & proc_dointvec_minmax,
      0, (void *)(& min_timer), (void *)(& max_timer)},
        {"reset_request_timeout", (void *)(& sysctl_rose_reset_request_timeout), 4, 420U,
      0, & proc_dointvec_minmax, 0, (void *)(& min_timer), (void *)(& max_timer)},
        {"clear_request_timeout",
      (void *)(& sysctl_rose_clear_request_timeout), 4, 420U, 0, & proc_dointvec_minmax,
      0, (void *)(& min_timer), (void *)(& max_timer)},
        {"no_activity_timeout", (void *)(& sysctl_rose_no_activity_timeout), 4, 420U,
      0, & proc_dointvec_minmax, 0, (void *)(& min_idle), (void *)(& max_idle)},
        {"acknowledge_hold_back_timeout", (void *)(& sysctl_rose_ack_hold_back_timeout),
      4, 420U, 0, & proc_dointvec_minmax, 0, (void *)(& min_timer), (void *)(& max_timer)},
        {"routing_control",
      (void *)(& sysctl_rose_routing_control), 4, 420U, 0, & proc_dointvec_minmax,
      0, (void *)(& min_route), (void *)(& max_route)},
        {"link_fail_timeout", (void *)(& sysctl_rose_link_fail_timeout), 4, 420U, 0,
      & proc_dointvec_minmax, 0, (void *)(& min_ftimer), (void *)(& max_ftimer)},
        {"maximum_virtual_circuits", (void *)(& sysctl_rose_maximum_vcs), 4, 420U, 0,
      & proc_dointvec_minmax, 0, (void *)(& min_maxvcs), (void *)(& max_maxvcs)},
        {"window_size", (void *)(& sysctl_rose_window_size), 4, 420U, 0, & proc_dointvec_minmax,
      0, (void *)(& min_window), (void *)(& max_window)}};
void rose_register_sysctl(void)
{
  {
  {
  rose_table_header = ldv_register_net_sysctl_125(& init_net, "net/rose", (struct ctl_table *)(& rose_table));
  }
  return;
}
}
void rose_unregister_sysctl(void)
{
  {
  {
  unregister_net_sysctl_table(rose_table_header);
  }
  return;
}
}
extern struct ctl_table_header *ldv_register_net_sysctl(struct ctl_table_header * ,
                                                        struct net * , char * , struct ctl_table * ) ;
static struct ctl_table_header *ldv_register_net_sysctl_125(struct net *ldv_func_arg1 ,
                                                            char const *ldv_func_arg2 ,
                                                            struct ctl_table *ldv_func_arg3 )
{
  ldv_func_ret_type___11 ldv_func_res ;
  struct ctl_table_header *tmp ;
  struct ctl_table_header *tmp___0 ;
  {
  {
  tmp = register_net_sysctl(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  tmp___0 = ldv_register_net_sysctl(ldv_func_res, ldv_func_arg1, (char *)ldv_func_arg2,
                                    ldv_func_arg3);
  }
  return (tmp___0);
  return (ldv_func_res);
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
int ldv_post_probe(int probe_ret_val ) ;
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
void *ldv_calloc(size_t nmemb , size_t size ) ;
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
static int ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2);
  ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait__xmit_lock_of_netdev_queue(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock__xmit_lock_of_netdev_queue(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked__xmit_lock_of_netdev_queue();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended__xmit_lock_of_netdev_queue(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock__xmit_lock_of_netdev_queue(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_addr_list_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_addr_list_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_addr_list_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_addr_list_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_addr_list_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
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
static int ldv_linux_kernel_locking_spinlock_spin_rose_list_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_rose_list_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_rose_list_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_rose_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_rose_list_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_rose_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_rose_list_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_list_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_rose_list_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_rose_list_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_rose_list_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_neigh_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_neigh_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_rose_neigh_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_rose_neigh_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_neigh_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_rose_neigh_list_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_neigh_list_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_rose_neigh_list_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_rose_neigh_list_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_node_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_node_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_rose_node_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_rose_node_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_node_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_rose_node_list_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_node_list_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_rose_node_list_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_rose_node_list_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_rose_route_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_rose_route_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 2);
  ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_rose_route_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_rose_route_list_lock(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_route_list_lock(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_rose_route_list_lock(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_rose_route_list_lock();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_rose_route_list_lock(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_rose_route_list_lock(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock = 2;
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
static int ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2);
  ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_slock_of_NOT_ARG_SIGN(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_slock_of_NOT_ARG_SIGN(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_slock_of_NOT_ARG_SIGN();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_slock_of_NOT_ARG_SIGN(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_slock_of_NOT_ARG_SIGN(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN = 2;
    return (1);
  } else {
  }
  return (0);
}
}
static int ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
void ldv_linux_kernel_locking_spinlock_spin_lock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
  }
  return;
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_unlock(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2);
  ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 1;
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_trylock_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (is_spin_held_by_another_thread != 0) {
    return (0);
  } else {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
    return (1);
  }
}
}
void ldv_linux_kernel_locking_spinlock_spin_unlock_wait_tx_global_lock_of_net_device(void)
{
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device(void)
{
  int is_spin_held_by_another_thread ;
  {
  {
  is_spin_held_by_another_thread = ldv_undef_int();
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1 && is_spin_held_by_another_thread == 0) {
    return (0);
  } else {
    return (1);
  }
}
}
int ldv_linux_kernel_locking_spinlock_spin_can_lock_tx_global_lock_of_net_device(void)
{
  int tmp ;
  {
  {
  tmp = ldv_linux_kernel_locking_spinlock_spin_is_locked_tx_global_lock_of_net_device();
  }
  return (tmp == 0);
}
}
int ldv_linux_kernel_locking_spinlock_spin_is_contended_tx_global_lock_of_net_device(void)
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
int ldv_linux_kernel_locking_spinlock_atomic_dec_and_lock_tx_global_lock_of_net_device(void)
{
  int atomic_value_after_dec ;
  {
  {
  ldv_assert_linux_kernel_locking_spinlock__one_thread_double_lock_try(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  ldv_assume(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  atomic_value_after_dec = ldv_undef_int();
  }
  if (atomic_value_after_dec == 0) {
    ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device = 2;
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
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_i_lock_of_inode == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_lock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_node_size_lock_of_pglist_data == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_ptl == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 1);
  ldv_assert_linux_kernel_locking_spinlock__one_thread_locked_at_exit(ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 1);
  }
  return;
}
}
int ldv_exclusive_spin_is_locked(void)
{
  {
  if (ldv_linux_kernel_locking_spinlock_spin__xmit_lock_of_netdev_queue == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_addr_list_lock_of_net_device == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_alloc_lock_of_task_struct == 2) {
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
  if (ldv_linux_kernel_locking_spinlock_spin_rose_list_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_neigh_list_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_node_list_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_rose_route_list_lock == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_siglock_of_sighand_struct == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_slock_of_NOT_ARG_SIGN == 2) {
    return (1);
  } else {
  }
  if (ldv_linux_kernel_locking_spinlock_spin_tx_global_lock_of_net_device == 2) {
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
void __compiletime_assert_1054() {
  return;
}
void __compiletime_assert_1257() {
  return;
}
void __compiletime_assert_1658() {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
struct net_device *__dev_get_by_name(struct net *arg0, const char *arg1) {
  return ldv_malloc(sizeof(struct net_device));
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_bh(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_bh(raw_spinlock_t *arg0) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_netdev_mqs(int arg0, const char *arg1, unsigned char arg2, void (*arg3)(struct net_device *), unsigned int arg4, unsigned int arg5) {
  return ldv_malloc(sizeof(struct net_device));
}
int __VERIFIER_nondet_int(void);
int arp_find(unsigned char *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void asc2ax(ax25_address *arg0, const char *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int ax25_display_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_ulong();
}
ax25_cb *ax25_find_cb(ax25_address *arg0, ax25_address *arg1, ax25_digi *arg2, struct net_device *arg3) {
  return ldv_malloc(sizeof(ax25_cb));
}
ax25_uid_assoc *ax25_findbyuid(kuid_t arg0) {
  return ldv_malloc(sizeof(ax25_uid_assoc));
}
void ax25_linkfail_register(struct ax25_linkfail *arg0) {
  return;
}
void ax25_linkfail_release(struct ax25_linkfail *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ax25_listen_register(ax25_address *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_int();
}
void ax25_listen_release(ax25_address *arg0, struct net_device *arg1) {
  return;
}
void ax25_protocol_release(unsigned int arg0) {
  return;
}
void ax25_register_pid(struct ax25_protocol *arg0) {
  return;
}
ax25_cb *ax25_send_frame(struct sk_buff *arg0, int arg1, ax25_address *arg2, ax25_address *arg3, ax25_digi *arg4, struct net_device *arg5) {
  return ldv_malloc(sizeof(ax25_cb));
}
int __VERIFIER_nondet_int(void);
int ax25cmp(const ax25_address *arg0, const ax25_address *arg1) {
  return __VERIFIER_nondet_int();
}
char *ax2asc(char *arg0, const ax25_address *arg1) {
  return ldv_malloc(sizeof(char));
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t copy_from_iter(void *arg0, size_t arg1, struct iov_iter *arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int datagram_poll(struct file *arg0, struct socket *arg1, struct poll_table_struct *arg2) {
  return __VERIFIER_nondet_uint();
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_after_alloc(void *arg0) {
  return;
}
void ldv_assert(const char *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_del_timer(int arg0, struct timer_list *arg1) {
  return __VERIFIER_nondet_int();
}
struct ctl_table_header *ldv_register_net_sysctl(struct ctl_table_header *arg0, struct net *arg1, char *arg2, struct ctl_table *arg3) {
  return ldv_malloc(sizeof(struct ctl_table_header));
}
void lock_sock_nested(struct sock *arg0, int arg1) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
struct proc_dir_entry *proc_create_data(const char *arg0, umode_t arg1, struct proc_dir_entry *arg2, const struct file_operations *arg3, void *arg4) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int proto_register(struct proto *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void proto_unregister(struct proto *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int rcu_read_lock_held() {
  return __VERIFIER_nondet_int();
}
struct ctl_table_header *register_net_sysctl(struct net *arg0, const char *arg1, struct ctl_table *arg2) {
  return ldv_malloc(sizeof(struct ctl_table_header));
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
void release_sock(struct sock *arg0) {
  return;
}
void remove_proc_entry(const char *arg0, struct proc_dir_entry *arg1) {
  return;
}
void schedule() {
  return;
}
void security_sock_graft(struct sock *arg0, struct socket *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int send_sig(int arg0, struct task_struct *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
struct hlist_node *seq_hlist_next(void *arg0, struct hlist_head *arg1, loff_t *arg2) {
  return ldv_malloc(sizeof(struct hlist_node));
}
struct hlist_node *seq_hlist_start_head(struct hlist_head *arg0, loff_t arg1) {
  return ldv_malloc(sizeof(struct hlist_node));
}
long __VERIFIER_nondet_long(void);
loff_t seq_lseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_open(struct file *arg0, const struct seq_operations *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int seq_puts(struct seq_file *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t seq_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
struct sock *sk_alloc(struct net *arg0, int arg1, gfp_t arg2, struct proto *arg3) {
  return ldv_malloc(sizeof(struct sock));
}
void sk_free(struct sock *arg0) {
  return;
}
void skb_append(struct sk_buff *arg0, struct sk_buff *arg1, struct sk_buff_head *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int skb_copy_datagram_iter(const struct sk_buff *arg0, int arg1, struct iov_iter *arg2, int arg3) {
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
struct sk_buff *sock_alloc_send_skb(struct sock *arg0, unsigned long arg1, int arg2, int *arg3) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int sock_get_timestamp(struct sock *arg0, struct timeval *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sock_get_timestampns(struct sock *arg0, struct timespec *arg1) {
  return __VERIFIER_nondet_int();
}
void sock_init_data(struct socket *arg0, struct sock *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int sock_no_mmap(struct file *arg0, struct socket *arg1, struct vm_area_struct *arg2) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t sock_no_sendpage(struct socket *arg0, struct page *arg1, int arg2, size_t arg3, int arg4) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int sock_no_shutdown(struct socket *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sock_no_socketpair(struct socket *arg0, struct socket *arg1) {
  return __VERIFIER_nondet_int();
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
void unregister_net_sysctl_table(struct ctl_table_header *arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_netdevice_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
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
