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
union __anonunion_ldv_6203_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6203_31 ldv_6203 ;
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
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
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
struct __anonstruct_ldv_7759_37 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_7761_36 {
   struct __anonstruct_ldv_7759_37 ldv_7759 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_7761_36 ldv_7761 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_38 {
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
   union __anonunion_d_u_38 d_u ;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
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
struct __anonstruct_nodemask_t_104 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_104 nodemask_t;
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct vm_area_struct;
struct device_node;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
union __anonunion_ldv_12794_132 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_12794_132 ldv_12794 ;
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
union __anonunion_arg_134 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_133 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_134 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_133 read_descriptor_t;
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
union __anonunion_ldv_13230_135 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_13250_136 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_13266_137 {
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
   union __anonunion_ldv_13230_135 ldv_13230 ;
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
   union __anonunion_ldv_13250_136 ldv_13250 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_13266_137 ldv_13266 ;
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
union __anonunion_f_u_138 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_138 f_u ;
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
struct __anonstruct_afs_140 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_139 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_140 afs ;
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
   union __anonunion_fl_u_139 fl_u ;
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
struct nsproxy;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
typedef struct poll_table_struct poll_table;
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
union __anonunion_ldv_16673_145 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16683_149 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16685_148 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16683_149 ldv_16683 ;
   int units ;
};
struct __anonstruct_ldv_16687_147 {
   union __anonunion_ldv_16685_148 ldv_16685 ;
   atomic_t _count ;
};
union __anonunion_ldv_16688_146 {
   unsigned long counters ;
   struct __anonstruct_ldv_16687_147 ldv_16687 ;
};
struct __anonstruct_ldv_16689_144 {
   union __anonunion_ldv_16673_145 ldv_16673 ;
   union __anonunion_ldv_16688_146 ldv_16688 ;
};
struct __anonstruct_ldv_16696_151 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16700_150 {
   struct list_head lru ;
   struct __anonstruct_ldv_16696_151 ldv_16696 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16705_152 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16689_144 ldv_16689 ;
   union __anonunion_ldv_16700_150 ldv_16700 ;
   union __anonunion_ldv_16705_152 ldv_16705 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_154 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_153 {
   struct __anonstruct_linear_154 linear ;
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
   union __anonunion_shared_153 shared ;
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
struct __anonstruct_sigset_t_155 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_155 sigset_t;
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
struct __anonstruct__kill_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_158 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_161 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_162 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_163 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_156 {
   int _pad[28U] ;
   struct __anonstruct__kill_157 _kill ;
   struct __anonstruct__timer_158 _timer ;
   struct __anonstruct__rt_159 _rt ;
   struct __anonstruct__sigchld_160 _sigchld ;
   struct __anonstruct__sigfault_161 _sigfault ;
   struct __anonstruct__sigpoll_162 _sigpoll ;
   struct __anonstruct__sigsys_163 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_156 _sifields ;
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
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_18451_166 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_18460_167 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_168 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_169 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_18451_166 ldv_18451 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_18460_167 ldv_18460 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_168 type_data ;
   union __anonunion_payload_169 payload ;
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
struct sock;
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
struct __anonstruct_ldv_20752_172 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_20753_171 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_20752_172 ldv_20752 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_20753_171 ldv_20753 ;
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
union __anonunion_ldv_21157_177 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_21157_177 ldv_21157 ;
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
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
};
struct input_event {
   struct timeval time ;
   __u16 type ;
   __u16 code ;
   __s32 value ;
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
union __anonunion_u_178 {
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
   union __anonunion_u_178 u ;
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
struct uinput_ff_upload {
   __u32 request_id ;
   __s32 retval ;
   struct ff_effect effect ;
   struct ff_effect old ;
};
struct uinput_ff_erase {
   __u32 request_id ;
   __s32 retval ;
   __u32 effect_id ;
};
struct uinput_user_dev {
   char name[80U] ;
   struct input_id id ;
   __u32 ff_effects_max ;
   __s32 absmax[64U] ;
   __s32 absmin[64U] ;
   __s32 absfuzz[64U] ;
   __s32 absflat[64U] ;
};
enum uinput_state {
    UIST_NEW_DEVICE = 0,
    UIST_SETUP_COMPLETE = 1,
    UIST_CREATED = 2
} ;
struct __anonstruct_upload_183 {
   struct ff_effect *effect ;
   struct ff_effect *old ;
};
union __anonunion_u_182 {
   unsigned int effect_id ;
   struct __anonstruct_upload_183 upload ;
};
struct uinput_request {
   unsigned int id ;
   unsigned int code ;
   int retval ;
   struct completion done ;
   union __anonunion_u_182 u ;
};
struct uinput_device {
   struct input_dev *dev ;
   struct mutex mutex ;
   enum uinput_state state ;
   wait_queue_head_t waitq ;
   unsigned char ready ;
   unsigned char head ;
   unsigned char tail ;
   struct input_event buff[16U] ;
   unsigned int ff_effects_max ;
   struct uinput_request *requests[16U] ;
   wait_queue_head_t requests_waitq ;
   spinlock_t requests_lock ;
};
struct input_mt_slot {
   int abs[14U] ;
   unsigned int frame ;
   unsigned int key ;
};
struct input_mt {
   int trkid ;
   int num_slots ;
   int slot ;
   unsigned int flags ;
   unsigned int frame ;
   int *red ;
   struct input_mt_slot slots[] ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
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
struct ff_periodic_effect_compat {
   __u16 waveform ;
   __u16 period ;
   __s16 magnitude ;
   __s16 offset ;
   __u16 phase ;
   struct ff_envelope envelope ;
   __u32 custom_len ;
   compat_uptr_t custom_data ;
};
union __anonunion_u_209 {
   struct ff_constant_effect constant ;
   struct ff_ramp_effect ramp ;
   struct ff_periodic_effect_compat periodic ;
   struct ff_condition_effect condition[2U] ;
   struct ff_rumble_effect rumble ;
};
struct ff_effect_compat {
   __u16 type ;
   __s16 id ;
   __u16 direction ;
   struct ff_trigger trigger ;
   struct ff_replay replay ;
   union __anonunion_u_209 u ;
};
struct uinput_ff_upload_compat {
   __u32 request_id ;
   __s32 retval ;
   struct ff_effect_compat effect ;
   struct ff_effect_compat old ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___10;
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
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
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
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2869;
  default:
  __bad_percpu_size();
  }
  ldv_2869: ;
  return (pfo_ret__);
}
}
extern char *strndup_user(char const * , long ) ;
extern void *memdup_user(void const * , size_t ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *kstrndup(char const * , size_t , gfp_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
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
extern int mutex_lock_interruptible(struct mutex * ) ;
int ldv_mutex_lock_interruptible_6(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_8(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_10(struct mutex *ldv_func_arg1 ) ;
int ldv_mutex_lock_interruptible_12(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_lock_interruptible_mutex_of_uinput_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_uinput_device(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6226;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6226;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6226;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6226;
  default:
  __bad_percpu_size();
  }
  ldv_6226:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static bool is_ia32_task(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info();
  if ((tmp->status & 2U) != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6014.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_6014.rlock);
  return;
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_6014.rlock);
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
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_6014.rlock);
  return;
}
}
extern void do_gettimeofday(struct timeval * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern loff_t no_llseek(struct file * , loff_t , int ) ;
extern int nonseekable_open(struct inode * , struct file * ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/work/ldvuser/exper_fp/inst/current/envs/linux-3.10-rc1.tar/linux-3.10-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if (((unsigned long )p != (unsigned long )((poll_table *)0) && (unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0)) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
    (*(p->_qproc))(filp, wait_address, p);
  } else {
  }
  return;
}
}
extern void schedule(void) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
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
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
struct input_dev *input_allocate_device(void) {
       return kzalloc(sizeof(struct input_dev), 0x10u | 0x40u | 0x80u);
}
extern void input_free_device(struct input_dev * ) ;
__inline static void *input_get_drvdata(struct input_dev *dev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& dev->dev));
  return (tmp);
}
}
__inline static void input_set_drvdata(struct input_dev *dev , void *data )
{
  {
  dev_set_drvdata(& dev->dev, data);
  return;
}
}
extern int input_register_device(struct input_dev * ) ;
extern void input_unregister_device(struct input_dev * ) ;
extern void input_event(struct input_dev * , unsigned int , unsigned int , int ) ;
__inline static void input_set_events_per_packet(struct input_dev *dev , int n_events )
{
  {
  dev->hint_events_per_packet = (unsigned int )n_events;
  return;
}
}
extern void input_alloc_absinfo(struct input_dev * ) ;
__inline static int input_abs_get_min(struct input_dev *dev , unsigned int axis )
{
  {
  return ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0) ? (dev->absinfo + (unsigned long )axis)->minimum : 0);
}
}
__inline static void input_abs_set_min(struct input_dev *dev , unsigned int axis ,
                                       int val )
{
  {
  input_alloc_absinfo(dev);
  if ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0)) {
    (dev->absinfo + (unsigned long )axis)->minimum = val;
  } else {
  }
  return;
}
}
__inline static int input_abs_get_max(struct input_dev *dev , unsigned int axis )
{
  {
  return ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0) ? (dev->absinfo + (unsigned long )axis)->maximum : 0);
}
}
__inline static void input_abs_set_max(struct input_dev *dev , unsigned int axis ,
                                       int val )
{
  {
  input_alloc_absinfo(dev);
  if ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0)) {
    (dev->absinfo + (unsigned long )axis)->maximum = val;
  } else {
  }
  return;
}
}
__inline static void input_abs_set_fuzz(struct input_dev *dev , unsigned int axis ,
                                        int val )
{
  {
  input_alloc_absinfo(dev);
  if ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0)) {
    (dev->absinfo + (unsigned long )axis)->fuzz = val;
  } else {
  }
  return;
}
}
__inline static int input_abs_get_flat(struct input_dev *dev , unsigned int axis )
{
  {
  return ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0) ? (dev->absinfo + (unsigned long )axis)->flat : 0);
}
}
__inline static void input_abs_set_flat(struct input_dev *dev , unsigned int axis ,
                                        int val )
{
  {
  input_alloc_absinfo(dev);
  if ((unsigned long )dev->absinfo != (unsigned long )((struct input_absinfo *)0)) {
    (dev->absinfo + (unsigned long )axis)->flat = val;
  } else {
  }
  return;
}
}
extern int input_ff_create(struct input_dev * , unsigned int ) ;
extern void input_ff_destroy(struct input_dev * ) ;
extern int input_mt_init_slots(struct input_dev * , unsigned int , unsigned int ) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
__inline static bool is_x32_task(void)
{
  struct task_struct *tmp ;
  {
  tmp = get_current();
  if ((((struct pt_regs *)(tmp->thread.sp0 + 0xffffffffffffffffUL))->orig_ax & 1073741824UL) != 0UL) {
    return (1);
  } else {
  }
  return (0);
}
}
__inline static bool is_compat_task(void)
{
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = is_ia32_task();
  if ((int )tmp) {
    tmp___1 = 1;
  } else {
    tmp___0 = is_x32_task();
    if ((int )tmp___0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  return ((bool )tmp___1);
}
}
__inline static size_t input_event_size(void)
{
  unsigned long tmp___1 ;
  bool tmp___2 ;
  struct task_struct *tmp___3 ;
  {
  tmp___2 = is_compat_task();
  if ((int )tmp___2) {
    tmp___3 = get_current();
    if ((((struct pt_regs *)(tmp___3->thread.sp0 + 0xffffffffffffffffUL))->orig_ax & 1073741824UL) == 0UL) {
      tmp___1 = 16UL;
    } else {
      tmp___1 = 24UL;
    }
  } else {
    tmp___1 = 24UL;
  }
  return (tmp___1);
}
}
extern int input_event_from_user(char const * , struct input_event * ) ;
extern int input_event_to_user(char * , struct input_event const * ) ;
static int uinput_dev_event(struct input_dev *dev , unsigned int type , unsigned int code ,
                            int value )
{
  struct uinput_device *udev ;
  void *tmp ;
  {
  tmp = input_get_drvdata(dev);
  udev = (struct uinput_device *)tmp;
  udev->buff[(int )udev->head].type = (__u16 )type;
  udev->buff[(int )udev->head].code = (__u16 )code;
  udev->buff[(int )udev->head].value = value;
  do_gettimeofday(& udev->buff[(int )udev->head].time);
  udev->head = (unsigned char )(((int )udev->head + 1) % 16);
  __wake_up(& udev->waitq, 1U, 1, 0);
  return (0);
}
}
static bool uinput_request_alloc_id(struct uinput_device *udev , struct uinput_request *request )
{
  unsigned int id ;
  bool reserved ;
  {
  reserved = 0;
  spin_lock(& udev->requests_lock);
  id = 0U;
  goto ldv_24594;
  ldv_24593: ;
  if ((unsigned long )udev->requests[id] == (unsigned long )((struct uinput_request *)0)) {
    request->id = id;
    udev->requests[id] = request;
    reserved = 1;
    goto ldv_24592;
  } else {
  }
  id = id + 1U;
  ldv_24594: ;
  if (id <= 15U) {
    goto ldv_24593;
  } else {
  }
  ldv_24592:
  spin_unlock(& udev->requests_lock);
  return (reserved);
}
}
static struct uinput_request *uinput_request_find(struct uinput_device *udev , unsigned int id )
{
  {
  if (id > 15U) {
    return (0);
  } else {
  }
  return (udev->requests[id]);
}
}
static int uinput_request_reserve_slot(struct uinput_device *udev , struct uinput_request *request )
{
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  bool tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  __ret = 0;
  tmp___3 = uinput_request_alloc_id(udev, request);
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    tmp = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_24607:
    prepare_to_wait(& udev->requests_waitq, & __wait, 1);
    tmp___0 = uinput_request_alloc_id(udev, request);
    if ((int )tmp___0) {
      goto ldv_24605;
    } else {
    }
    tmp___1 = get_current();
    tmp___2 = signal_pending(tmp___1);
    if (tmp___2 == 0) {
      schedule();
      goto ldv_24606;
    } else {
    }
    __ret = -512;
    goto ldv_24605;
    ldv_24606: ;
    goto ldv_24607;
    ldv_24605:
    finish_wait(& udev->requests_waitq, & __wait);
  } else {
  }
  return (__ret);
}
}
static void uinput_request_done(struct uinput_device *udev , struct uinput_request *request )
{
  {
  udev->requests[request->id] = 0;
  __wake_up(& udev->requests_waitq, 3U, 1, 0);
  complete(& request->done);
  return;
}
}
static int uinput_request_send(struct uinput_device *udev , struct uinput_request *request )
{
  int retval ;
  {
  retval = ldv_mutex_lock_interruptible_6(& udev->mutex);
  if (retval != 0) {
    return (retval);
  } else {
  }
  if ((unsigned int )udev->state != 2U) {
    retval = -19;
    goto out;
  } else {
  }
  init_completion(& request->done);
  uinput_dev_event(udev->dev, 257U, request->code, (int )request->id);
  out:
  ldv_mutex_unlock_7(& udev->mutex);
  return (retval);
}
}
static int uinput_request_submit(struct uinput_device *udev , struct uinput_request *request )
{
  int error ;
  {
  error = uinput_request_reserve_slot(udev, request);
  if (error != 0) {
    return (error);
  } else {
  }
  error = uinput_request_send(udev, request);
  if (error != 0) {
    uinput_request_done(udev, request);
    return (error);
  } else {
  }
  wait_for_completion(& request->done);
  return (request->retval);
}
}
static void uinput_flush_requests(struct uinput_device *udev )
{
  struct uinput_request *request ;
  int i ;
  {
  spin_lock(& udev->requests_lock);
  i = 0;
  goto ldv_24630;
  ldv_24629:
  request = udev->requests[i];
  if ((unsigned long )request != (unsigned long )((struct uinput_request *)0)) {
    request->retval = -19;
    uinput_request_done(udev, request);
  } else {
  }
  i = i + 1;
  ldv_24630: ;
  if (i <= 15) {
    goto ldv_24629;
  } else {
  }
  spin_unlock(& udev->requests_lock);
  return;
}
}
static void uinput_dev_set_gain(struct input_dev *dev , u16 gain )
{
  {
  uinput_dev_event(dev, 21U, 96U, (int )gain);
  return;
}
}
static void uinput_dev_set_autocenter(struct input_dev *dev , u16 magnitude )
{
  {
  uinput_dev_event(dev, 21U, 97U, (int )magnitude);
  return;
}
}
static int uinput_dev_playback(struct input_dev *dev , int effect_id , int value )
{
  int tmp ;
  {
  tmp = uinput_dev_event(dev, 21U, (unsigned int )effect_id, value);
  return (tmp);
}
}
static int uinput_dev_upload_effect(struct input_dev *dev , struct ff_effect *effect ,
                                    struct ff_effect *old )
{
  struct uinput_device *udev ;
  void *tmp ;
  struct uinput_request request ;
  int tmp___0 ;
  {
  tmp = input_get_drvdata(dev);
  udev = (struct uinput_device *)tmp;
  if ((unsigned int )effect->type == 81U && (unsigned int )effect->u.periodic.waveform == 93U) {
    return (-22);
  } else {
  }
  request.code = 1U;
  request.u.upload.effect = effect;
  request.u.upload.old = old;
  tmp___0 = uinput_request_submit(udev, & request);
  return (tmp___0);
}
}
static int uinput_dev_erase_effect(struct input_dev *dev , int effect_id )
{
  struct uinput_device *udev ;
  void *tmp ;
  struct uinput_request request ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = input_get_drvdata(dev);
  udev = (struct uinput_device *)tmp;
  tmp___0 = constant_test_bit(21U, (unsigned long const volatile *)(& dev->evbit));
  if (tmp___0 == 0) {
    return (-38);
  } else {
  }
  request.code = 2U;
  request.u.effect_id = (unsigned int )effect_id;
  tmp___1 = uinput_request_submit(udev, & request);
  return (tmp___1);
}
}
static void uinput_destroy_device(struct uinput_device *udev )
{
  char const *name ;
  char const *phys ;
  struct input_dev *dev ;
  enum uinput_state old_state ;
  {
  dev = udev->dev;
  old_state = udev->state;
  udev->state = 0;
  if ((unsigned long )dev != (unsigned long )((struct input_dev *)0)) {
    name = dev->name;
    phys = dev->phys;
    if ((unsigned int )old_state == 2U) {
      uinput_flush_requests(udev);
      input_unregister_device(dev);
    } else {
      input_free_device(dev);
    }
    kfree((void const *)name);
    kfree((void const *)phys);
    udev->dev = 0;
  } else {
  }
  return;
}
}
static int uinput_create_device(struct uinput_device *udev )
{
  struct input_dev *dev ;
  int error ;
  {
  dev = udev->dev;
  if ((unsigned int )udev->state != 1U) {
    printk("\017%s: write device info first\n", (char *)"uinput");
    return (-22);
  } else {
  }
  if (udev->ff_effects_max != 0U) {
    error = input_ff_create(dev, udev->ff_effects_max);
    if (error != 0) {
      goto fail1;
    } else {
    }
    (dev->ff)->upload = & uinput_dev_upload_effect;
    (dev->ff)->erase = & uinput_dev_erase_effect;
    (dev->ff)->playback = & uinput_dev_playback;
    (dev->ff)->set_gain = & uinput_dev_set_gain;
    (dev->ff)->set_autocenter = & uinput_dev_set_autocenter;
  } else {
  }
  error = input_register_device(udev->dev);
  if (error != 0) {
    goto fail2;
  } else {
  }
  udev->state = 2;
  return (0);
  fail2:
  input_ff_destroy(dev);
  fail1:
  uinput_destroy_device(udev);
  return (error);
}
}
static int uinput_open(struct inode *inode , struct file *file )
{
  struct uinput_device *newdev ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  {
  tmp = kzalloc(960UL, 208U);
  newdev = (struct uinput_device *)tmp;
  if ((unsigned long )newdev == (unsigned long )((struct uinput_device *)0)) {
    return (-12);
  } else {
  }
  __mutex_init(& newdev->mutex, "&newdev->mutex", & __key);
  spinlock_check(& newdev->requests_lock);
  __raw_spin_lock_init(& newdev->requests_lock.ldv_6014.rlock, "&(&newdev->requests_lock)->rlock",
                       & __key___0);
  __init_waitqueue_head(& newdev->requests_waitq, "&newdev->requests_waitq", & __key___1);
  __init_waitqueue_head(& newdev->waitq, "&newdev->waitq", & __key___2);
  newdev->state = 0;
  file->private_data = (void *)newdev;
  nonseekable_open(inode, file);
  return (0);
}
}
static int uinput_validate_absbits(struct input_dev *dev )
{
  unsigned int cnt ;
  int retval ;
  int min ;
  int max ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  retval = 0;
  cnt = 0U;
  goto ldv_24691;
  ldv_24690:
  tmp = variable_test_bit((int )cnt, (unsigned long const volatile *)(& dev->absbit));
  if (tmp == 0) {
    goto ldv_24688;
  } else {
  }
  min = input_abs_get_min(dev, cnt);
  max = input_abs_get_max(dev, cnt);
  if ((min != 0 || max != 0) && max <= min) {
    tmp___0 = input_abs_get_max(dev, cnt);
    tmp___1 = input_abs_get_min(dev, cnt);
    printk("\017%s: invalid abs[%02x] min:%d max:%d\n", (char *)"uinput", cnt, tmp___1,
           tmp___0);
    retval = -22;
    goto ldv_24689;
  } else {
  }
  tmp___5 = input_abs_get_flat(dev, cnt);
  tmp___6 = input_abs_get_max(dev, cnt);
  tmp___7 = input_abs_get_min(dev, cnt);
  if (tmp___5 > tmp___6 - tmp___7) {
    tmp___2 = input_abs_get_max(dev, cnt);
    tmp___3 = input_abs_get_min(dev, cnt);
    tmp___4 = input_abs_get_flat(dev, cnt);
    printk("\017%s: abs_flat #%02x out of range: %d (min:%d/max:%d)\n", (char *)"uinput",
           cnt, tmp___4, tmp___3, tmp___2);
    retval = -22;
    goto ldv_24689;
  } else {
  }
  ldv_24688:
  cnt = cnt + 1U;
  ldv_24691: ;
  if (cnt <= 63U) {
    goto ldv_24690;
  } else {
  }
  ldv_24689: ;
  return (retval);
}
}
static int uinput_allocate_device(struct uinput_device *udev )
{
  {
  udev->dev = input_allocate_device();
  if ((unsigned long )udev->dev == (unsigned long )((struct input_dev *)0)) {
    return (-12);
  } else {
  }
  (udev->dev)->event = & uinput_dev_event;
  input_set_drvdata(udev->dev, (void *)udev);
  return (0);
}
}
static int uinput_setup_device(struct uinput_device *udev , char const *buffer ,
                               size_t count )
{
  struct uinput_user_dev *user_dev ;
  struct input_dev *dev ;
  int i ;
  int retval ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  char *tmp___2 ;
  int nslot ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  if (count != 1116UL) {
    return (-22);
  } else {
  }
  if ((unsigned long )udev->dev == (unsigned long )((struct input_dev *)0)) {
    retval = uinput_allocate_device(udev);
    if (retval != 0) {
      return (retval);
    } else {
    }
  } else {
  }
  dev = udev->dev;
  tmp = memdup_user((void const *)buffer, 1116UL);
  user_dev = (struct uinput_user_dev *)tmp;
  tmp___1 = IS_ERR((void const *)user_dev);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)user_dev);
    return ((int )tmp___0);
  } else {
  }
  udev->ff_effects_max = user_dev->ff_effects_max;
  if ((int )((signed char )user_dev->name[0]) == 0) {
    retval = -22;
    goto exit;
  } else {
  }
  kfree((void const *)dev->name);
  tmp___2 = kstrndup((char const *)(& user_dev->name), 80UL, 208U);
  dev->name = (char const *)tmp___2;
  if ((unsigned long )dev->name == (unsigned long )((char const *)0)) {
    retval = -12;
    goto exit;
  } else {
  }
  dev->id.bustype = user_dev->id.bustype;
  dev->id.vendor = user_dev->id.vendor;
  dev->id.product = user_dev->id.product;
  dev->id.version = user_dev->id.version;
  i = 0;
  goto ldv_24706;
  ldv_24705:
  input_abs_set_max(dev, (unsigned int )i, user_dev->absmax[i]);
  input_abs_set_min(dev, (unsigned int )i, user_dev->absmin[i]);
  input_abs_set_fuzz(dev, (unsigned int )i, user_dev->absfuzz[i]);
  input_abs_set_flat(dev, (unsigned int )i, user_dev->absflat[i]);
  i = i + 1;
  ldv_24706: ;
  if (i <= 63) {
    goto ldv_24705;
  } else {
  }
  tmp___6 = constant_test_bit(3U, (unsigned long const volatile *)(& dev->evbit));
  if (tmp___6 != 0) {
    retval = uinput_validate_absbits(dev);
    if (retval < 0) {
      goto exit;
    } else {
    }
    tmp___5 = constant_test_bit(47U, (unsigned long const volatile *)(& dev->absbit));
    if (tmp___5 != 0) {
      tmp___3 = input_abs_get_max(dev, 47U);
      nslot = tmp___3 + 1;
      input_mt_init_slots(dev, (unsigned int )nslot, 0U);
    } else {
      tmp___4 = constant_test_bit(53U, (unsigned long const volatile *)(& dev->absbit));
      if (tmp___4 != 0) {
        input_set_events_per_packet(dev, 60);
      } else {
      }
    }
  } else {
  }
  udev->state = 1;
  retval = (int )count;
  exit:
  kfree((void const *)user_dev);
  return (retval);
}
}
static ssize_t uinput_inject_event(struct uinput_device *udev , char const *buffer ,
                                   size_t count )
{
  struct input_event ev ;
  size_t tmp ;
  int tmp___0 ;
  size_t tmp___1 ;
  {
  tmp = input_event_size();
  if (tmp > count) {
    return (-22L);
  } else {
  }
  tmp___0 = input_event_from_user(buffer, & ev);
  if (tmp___0 != 0) {
    return (-14L);
  } else {
  }
  input_event(udev->dev, (unsigned int )ev.type, (unsigned int )ev.code, ev.value);
  tmp___1 = input_event_size();
  return ((ssize_t )tmp___1);
}
}
static ssize_t uinput_write(struct file *file , char const *buffer , size_t count ,
                            loff_t *ppos )
{
  struct uinput_device *udev ;
  int retval ;
  ssize_t tmp ;
  int tmp___0 ;
  {
  udev = (struct uinput_device *)file->private_data;
  if (count == 0UL) {
    return (0L);
  } else {
  }
  retval = ldv_mutex_lock_interruptible_8(& udev->mutex);
  if (retval != 0) {
    return ((ssize_t )retval);
  } else {
  }
  if ((unsigned int )udev->state == 2U) {
    tmp = uinput_inject_event(udev, buffer, count);
    retval = (int )tmp;
  } else {
    tmp___0 = uinput_setup_device(udev, buffer, count);
    retval = tmp___0;
  }
  ldv_mutex_unlock_9(& udev->mutex);
  return ((ssize_t )retval);
}
}
static bool uinput_fetch_next_event(struct uinput_device *udev , struct input_event *event )
{
  bool have_event ;
  {
  spin_lock_irq(& (udev->dev)->event_lock);
  have_event = (int )udev->head != (int )udev->tail;
  if ((int )have_event) {
    *event = udev->buff[(int )udev->tail];
    udev->tail = (unsigned char )(((int )udev->tail + 1) % 16);
  } else {
  }
  spin_unlock_irq(& (udev->dev)->event_lock);
  return (have_event);
}
}
static ssize_t uinput_events_to_user(struct uinput_device *udev , char *buffer , size_t count )
{
  struct input_event event ;
  size_t read ;
  int tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  bool tmp___2 ;
  {
  read = 0UL;
  goto ldv_24736;
  ldv_24735:
  tmp = input_event_to_user(buffer + read, (struct input_event const *)(& event));
  if (tmp != 0) {
    return (-14L);
  } else {
  }
  tmp___0 = input_event_size();
  read = tmp___0 + read;
  ldv_24736:
  tmp___1 = input_event_size();
  if (tmp___1 + read <= count) {
    tmp___2 = uinput_fetch_next_event(udev, & event);
    if ((int )tmp___2) {
      goto ldv_24735;
    } else {
      goto ldv_24737;
    }
  } else {
  }
  ldv_24737: ;
  return ((ssize_t )read);
}
}
static ssize_t uinput_read(struct file *file , char *buffer , size_t count , loff_t *ppos )
{
  struct uinput_device *udev ;
  ssize_t retval ;
  size_t tmp ;
  int tmp___0 ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  {
  udev = (struct uinput_device *)file->private_data;
  if (count != 0UL) {
    tmp = input_event_size();
    if (tmp > count) {
      return (-22L);
    } else {
    }
  } else {
  }
  ldv_24753:
  tmp___0 = ldv_mutex_lock_interruptible_10(& udev->mutex);
  retval = (ssize_t )tmp___0;
  if (retval != 0L) {
    return (retval);
  } else {
  }
  if ((unsigned int )udev->state != 2U) {
    retval = -19L;
  } else
  if ((int )udev->head == (int )udev->tail && (file->f_flags & 2048U) != 0U) {
    retval = -11L;
  } else {
    retval = uinput_events_to_user(udev, buffer, count);
  }
  ldv_mutex_unlock_11(& udev->mutex);
  if (retval != 0L || count == 0UL) {
    goto ldv_24746;
  } else {
  }
  if ((file->f_flags & 2048U) == 0U) {
    __ret = 0;
    if ((int )udev->head == (int )udev->tail && (unsigned int )udev->state == 2U) {
      tmp___1 = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp___1;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_24751:
      prepare_to_wait(& udev->waitq, & __wait, 1);
      if ((int )udev->head != (int )udev->tail || (unsigned int )udev->state != 2U) {
        goto ldv_24749;
      } else {
      }
      tmp___2 = get_current();
      tmp___3 = signal_pending(tmp___2);
      if (tmp___3 == 0) {
        schedule();
        goto ldv_24750;
      } else {
      }
      __ret = -512;
      goto ldv_24749;
      ldv_24750: ;
      goto ldv_24751;
      ldv_24749:
      finish_wait(& udev->waitq, & __wait);
    } else {
    }
    retval = (ssize_t )__ret;
  } else {
  }
  if (retval == 0L) {
    goto ldv_24753;
  } else {
  }
  ldv_24746: ;
  return (retval);
}
}
static unsigned int uinput_poll(struct file *file , poll_table *wait )
{
  struct uinput_device *udev ;
  {
  udev = (struct uinput_device *)file->private_data;
  poll_wait(file, & udev->waitq, wait);
  if ((int )udev->head != (int )udev->tail) {
    return (65U);
  } else {
  }
  return (0U);
}
}
static int uinput_release(struct inode *inode , struct file *file )
{
  struct uinput_device *udev ;
  {
  udev = (struct uinput_device *)file->private_data;
  uinput_destroy_device(udev);
  kfree((void const *)udev);
  return (0);
}
}
static int uinput_ff_upload_to_user(char *buffer , struct uinput_ff_upload const *ff_up )
{
  struct uinput_ff_upload_compat ff_up_compat ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = is_compat_task();
  if ((int )tmp___1) {
    ff_up_compat.request_id = ff_up->request_id;
    ff_up_compat.retval = ff_up->retval;
    __len = 44UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ff_up_compat.effect), (void const *)(& ff_up->effect),
                       __len);
    } else {
      __ret = memcpy((void *)(& ff_up_compat.effect), (void const *)(& ff_up->effect),
                               __len);
    }
    __len___0 = 44UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& ff_up_compat.old), (void const *)(& ff_up->old),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& ff_up_compat.old), (void const *)(& ff_up->old),
                                   __len___0);
    }
    tmp = copy_to_user((void *)buffer, (void const *)(& ff_up_compat), 96U);
    if (tmp != 0) {
      return (-14);
    } else {
    }
  } else {
    tmp___0 = copy_to_user((void *)buffer, (void const *)ff_up, 104U);
    if (tmp___0 != 0) {
      return (-14);
    } else {
    }
  }
  return (0);
}
}
static int uinput_ff_upload_from_user(char const *buffer , struct uinput_ff_upload *ff_up )
{
  struct uinput_ff_upload_compat ff_up_compat ;
  unsigned long tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned long tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = is_compat_task();
  if ((int )tmp___1) {
    tmp = copy_from_user((void *)(& ff_up_compat), (void const *)buffer, 96UL);
    if (tmp != 0UL) {
      return (-14);
    } else {
    }
    ff_up->request_id = ff_up_compat.request_id;
    ff_up->retval = ff_up_compat.retval;
    __len = 44UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& ff_up->effect), (void const *)(& ff_up_compat.effect),
                       __len);
    } else {
      __ret = memcpy((void *)(& ff_up->effect), (void const *)(& ff_up_compat.effect),
                               __len);
    }
    __len___0 = 44UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& ff_up->old), (void const *)(& ff_up_compat.old),
                           __len___0);
    } else {
      __ret___0 = memcpy((void *)(& ff_up->old), (void const *)(& ff_up_compat.old),
                                   __len___0);
    }
  } else {
    tmp___0 = copy_from_user((void *)ff_up, (void const *)buffer, 104UL);
    if (tmp___0 != 0UL) {
      return (-14);
    } else {
    }
  }
  return (0);
}
}
static long uinput_ioctl_handler(struct file *file , unsigned int cmd , unsigned long arg ,
                                 void *p )
{
  int retval ;
  struct uinput_device *udev ;
  struct uinput_ff_upload ff_up ;
  struct uinput_ff_erase ff_erase ;
  struct uinput_request *req ;
  char *phys ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  int __ret___2 ;
  int __ret___3 ;
  int __ret___4 ;
  int __ret___5 ;
  int __ret___6 ;
  int __ret___7 ;
  int __ret___8 ;
  long tmp ;
  long tmp___0 ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  unsigned long tmp___3 ;
  {
  udev = (struct uinput_device *)file->private_data;
  retval = ldv_mutex_lock_interruptible_12(& udev->mutex);
  if (retval != 0) {
    return ((long )retval);
  } else {
  }
  if ((unsigned long )udev->dev == (unsigned long )((struct input_dev *)0)) {
    retval = uinput_allocate_device(udev);
    if (retval != 0) {
      goto out;
    } else {
    }
  } else {
  }
  switch (cmd) {
  case 21761U:
  retval = uinput_create_device(udev);
  goto ldv_24805;
  case 21762U:
  uinput_destroy_device(udev);
  goto ldv_24805;
  case 1074025828U:
  __ret = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret = -22;
  } else
  if (arg > 31UL) {
    __ret = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->evbit));
  }
  retval = __ret;
  goto ldv_24805;
  case 1074025829U:
  __ret___0 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___0 = -22;
  } else
  if (arg > 767UL) {
    __ret___0 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->keybit));
  }
  retval = __ret___0;
  goto ldv_24805;
  case 1074025830U:
  __ret___1 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___1 = -22;
  } else
  if (arg > 15UL) {
    __ret___1 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->relbit));
  }
  retval = __ret___1;
  goto ldv_24805;
  case 1074025831U:
  __ret___2 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___2 = -22;
  } else
  if (arg > 63UL) {
    __ret___2 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->absbit));
  }
  retval = __ret___2;
  goto ldv_24805;
  case 1074025832U:
  __ret___3 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___3 = -22;
  } else
  if (arg > 7UL) {
    __ret___3 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->mscbit));
  }
  retval = __ret___3;
  goto ldv_24805;
  case 1074025833U:
  __ret___4 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___4 = -22;
  } else
  if (arg > 15UL) {
    __ret___4 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->ledbit));
  }
  retval = __ret___4;
  goto ldv_24805;
  case 1074025834U:
  __ret___5 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___5 = -22;
  } else
  if (arg > 7UL) {
    __ret___5 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->sndbit));
  }
  retval = __ret___5;
  goto ldv_24805;
  case 1074025835U:
  __ret___6 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___6 = -22;
  } else
  if (arg > 127UL) {
    __ret___6 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->ffbit));
  }
  retval = __ret___6;
  goto ldv_24805;
  case 1074025837U:
  __ret___7 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___7 = -22;
  } else
  if (arg > 15UL) {
    __ret___7 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->swbit));
  }
  retval = __ret___7;
  goto ldv_24805;
  case 1074025838U:
  __ret___8 = 0;
  if ((unsigned int )udev->state == 2U) {
    __ret___8 = -22;
  } else
  if (arg > 31UL) {
    __ret___8 = -22;
  } else {
    set_bit((unsigned int )arg, (unsigned long volatile *)(& (udev->dev)->propbit));
  }
  retval = __ret___8;
  goto ldv_24805;
  case 1074287980U: ;
  if ((unsigned int )udev->state == 2U) {
    retval = -22;
    goto out;
  } else {
  }
  phys = strndup_user((char const *)p, 1024L);
  tmp___0 = IS_ERR((void const *)phys);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)phys);
    retval = (int )tmp;
    goto out;
  } else {
  }
  kfree((void const *)(udev->dev)->phys);
  (udev->dev)->phys = (char const *)phys;
  goto ldv_24805;
  case 3228063176U:
  retval = uinput_ff_upload_from_user((char const *)p, & ff_up);
  if (retval != 0) {
    goto ldv_24805;
  } else {
  }
  req = uinput_request_find(udev, ff_up.request_id);
  if (((unsigned long )req == (unsigned long )((struct uinput_request *)0) || req->code != 1U) || (unsigned long )req->u.upload.effect == (unsigned long )((struct ff_effect *)0)) {
    retval = -22;
    goto ldv_24805;
  } else {
  }
  ff_up.retval = 0;
  ff_up.effect = *(req->u.upload.effect);
  if ((unsigned long )req->u.upload.old != (unsigned long )((struct ff_effect *)0)) {
    ff_up.old = *(req->u.upload.old);
  } else {
    memset((void *)(& ff_up.old), 0, 48UL);
  }
  retval = uinput_ff_upload_to_user((char *)p, (struct uinput_ff_upload const *)(& ff_up));
  goto ldv_24805;
  case 3222033866U:
  tmp___1 = copy_from_user((void *)(& ff_erase), (void const *)p, 12UL);
  if (tmp___1 != 0UL) {
    retval = -14;
    goto ldv_24805;
  } else {
  }
  req = uinput_request_find(udev, ff_erase.request_id);
  if ((unsigned long )req == (unsigned long )((struct uinput_request *)0) || req->code != 2U) {
    retval = -22;
    goto ldv_24805;
  } else {
  }
  ff_erase.retval = 0;
  ff_erase.effect_id = req->u.effect_id;
  tmp___2 = copy_to_user(p, (void const *)(& ff_erase), 12U);
  if (tmp___2 != 0) {
    retval = -14;
    goto ldv_24805;
  } else {
  }
  goto ldv_24805;
  case 1080579529U:
  retval = uinput_ff_upload_from_user((char const *)p, & ff_up);
  if (retval != 0) {
    goto ldv_24805;
  } else {
  }
  req = uinput_request_find(udev, ff_up.request_id);
  if (((unsigned long )req == (unsigned long )((struct uinput_request *)0) || req->code != 1U) || (unsigned long )req->u.upload.effect == (unsigned long )((struct ff_effect *)0)) {
    retval = -22;
    goto ldv_24805;
  } else {
  }
  req->retval = ff_up.retval;
  uinput_request_done(udev, req);
  goto ldv_24805;
  case 1074550219U:
  tmp___3 = copy_from_user((void *)(& ff_erase), (void const *)p, 12UL);
  if (tmp___3 != 0UL) {
    retval = -14;
    goto ldv_24805;
  } else {
  }
  req = uinput_request_find(udev, ff_erase.request_id);
  if ((unsigned long )req == (unsigned long )((struct uinput_request *)0) || req->code != 2U) {
    retval = -22;
    goto ldv_24805;
  } else {
  }
  req->retval = ff_erase.retval;
  uinput_request_done(udev, req);
  goto ldv_24805;
  default:
  retval = -22;
  }
  ldv_24805: ;
  out:
  ldv_mutex_unlock_13(& udev->mutex);
  return ((long )retval);
}
}
static long uinput_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  long tmp ;
  {
  tmp = uinput_ioctl_handler(file, cmd, arg, (void *)arg);
  return (tmp);
}
}
static long uinput_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  void *tmp ;
  long tmp___0 ;
  {
  tmp = compat_ptr((compat_uptr_t )arg);
  tmp___0 = uinput_ioctl_handler(file, cmd, arg, tmp);
  return (tmp___0);
}
}
static struct file_operations const uinput_fops =
     {& __this_module, & no_llseek, & uinput_read, & uinput_write, 0, 0, 0, & uinput_poll,
    & uinput_ioctl, & uinput_compat_ioctl, 0, & uinput_open, 0, & uinput_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice uinput_misc =
     {223, "uinput", & uinput_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
static int uinput_init(void)
{
  int tmp ;
  {
  tmp = misc_register(& uinput_misc);
  return (tmp);
}
}
static void uinput_exit(void)
{
  {
  misc_deregister(& uinput_misc);
  return;
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
  struct inode *var_group1 ;
  struct file *var_group2 ;
  int res_uinput_open_15 ;
  char *var_uinput_read_23_p1 ;
  size_t var_uinput_read_23_p2 ;
  loff_t *var_uinput_read_23_p3 ;
  ssize_t res_uinput_read_23 ;
  char const *var_uinput_write_20_p1 ;
  size_t var_uinput_write_20_p2 ;
  loff_t *var_uinput_write_20_p3 ;
  ssize_t res_uinput_write_20 ;
  poll_table *var_uinput_poll_24_p1 ;
  unsigned int var_uinput_ioctl_31_p1 ;
  unsigned long var_uinput_ioctl_31_p2 ;
  unsigned int var_uinput_compat_ioctl_32_p1 ;
  unsigned long var_uinput_compat_ioctl_32_p2 ;
  int ldv_s_uinput_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_uinput_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = uinput_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_24922;
  ldv_24921:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_s_uinput_fops_file_operations == 0) {
    ldv_handler_precall();
    res_uinput_open_15 = uinput_open(var_group1, var_group2);
    ldv_check_return_value(res_uinput_open_15);
    if (res_uinput_open_15 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_uinput_fops_file_operations = ldv_s_uinput_fops_file_operations + 1;
  } else {
  }
  goto ldv_24913;
  case 1: ;
  if (ldv_s_uinput_fops_file_operations == 1) {
    ldv_handler_precall();
    res_uinput_read_23 = uinput_read(var_group2, var_uinput_read_23_p1, var_uinput_read_23_p2,
                                     var_uinput_read_23_p3);
    ldv_check_return_value((int )res_uinput_read_23);
    if (res_uinput_read_23 < 0L) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_uinput_fops_file_operations = ldv_s_uinput_fops_file_operations + 1;
  } else {
  }
  goto ldv_24913;
  case 2: ;
  if (ldv_s_uinput_fops_file_operations == 2) {
    ldv_handler_precall();
    res_uinput_write_20 = uinput_write(var_group2, var_uinput_write_20_p1, var_uinput_write_20_p2,
                                       var_uinput_write_20_p3);
    ldv_check_return_value((int )res_uinput_write_20);
    if (res_uinput_write_20 < 0L) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_uinput_fops_file_operations = ldv_s_uinput_fops_file_operations + 1;
  } else {
  }
  goto ldv_24913;
  case 3: ;
  if (ldv_s_uinput_fops_file_operations == 3) {
    ldv_handler_precall();
    uinput_release(var_group1, var_group2);
    ldv_s_uinput_fops_file_operations = 0;
  } else {
  }
  goto ldv_24913;
  case 4:
  ldv_handler_precall();
  uinput_poll(var_group2, var_uinput_poll_24_p1);
  goto ldv_24913;
  case 5:
  ldv_handler_precall();
  uinput_ioctl(var_group2, var_uinput_ioctl_31_p1, var_uinput_ioctl_31_p2);
  goto ldv_24913;
  case 6:
  ldv_handler_precall();
  uinput_compat_ioctl(var_group2, var_uinput_compat_ioctl_32_p1, var_uinput_compat_ioctl_32_p2);
  goto ldv_24913;
  default: ;
  goto ldv_24913;
  }
  ldv_24913: ;
  ldv_24922:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0 || ldv_s_uinput_fops_file_operations != 0) {
    goto ldv_24921;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  uinput_exit();
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
int ldv_mutex_lock_interruptible_6(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex_of_uinput_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_uinput_device(ldv_func_arg1);
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
  tmp___0 = ldv_mutex_lock_interruptible_mutex_of_uinput_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_uinput_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_10(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex_of_uinput_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_uinput_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_lock_interruptible_12(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_lock_interruptible(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_lock_interruptible_mutex_of_uinput_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_uinput_device(ldv_func_arg1);
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
static int ldv_mutex_mutex_of_uinput_device ;
int ldv_mutex_lock_interruptible_mutex_of_uinput_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_uinput_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_uinput_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_uinput_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_uinput_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_uinput_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_uinput_device(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_uinput_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_uinput_device(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_uinput_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_uinput_device(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex_of_uinput_device == 1) {
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
void ldv_mutex_unlock_mutex_of_uinput_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_uinput_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_uinput_device = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  ldv_mutex_mutex_of_uinput_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_uinput_device == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
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
void complete(struct completion *arg0) {
  return;
}
void *dev_get_drvdata(const struct device *arg0) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
void do_gettimeofday(struct timeval *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void input_alloc_absinfo(struct input_dev *arg0) {
  return;
}
void input_event(struct input_dev *arg0, unsigned int arg1, unsigned int arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_event_from_user(const char *arg0, struct input_event *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int input_event_to_user(char *arg0, const struct input_event *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int input_ff_create(struct input_dev *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void input_ff_destroy(struct input_dev *arg0) {
  return;
}
void input_free_device(struct input_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int input_mt_init_slots(struct input_dev *arg0, unsigned int arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int input_register_device(struct input_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void input_unregister_device(struct input_dev *arg0) {
  return;
}
char *kstrndup(const char *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(char));
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void *memdup_user(const void *arg0, size_t arg1) {
  return ldv_malloc(0UL);
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
int nonseekable_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
char *strndup_user(const char *arg0, long arg1) {
  return ldv_malloc(sizeof(char));
}
void wait_for_completion(struct completion *arg0) {
  return;
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
