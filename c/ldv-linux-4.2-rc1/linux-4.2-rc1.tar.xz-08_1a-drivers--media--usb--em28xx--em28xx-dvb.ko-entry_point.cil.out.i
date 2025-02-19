extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u32 __wsum;
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct module;
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
struct __anonstruct____missing_field_name_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct____missing_field_name_10 {
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
union __anonunion____missing_field_name_8 {
   struct __anonstruct____missing_field_name_9 __annonCompField4 ;
   struct __anonstruct____missing_field_name_10 __annonCompField5 ;
};
struct desc_struct {
   union __anonunion____missing_field_name_8 __annonCompField6 ;
};
typedef unsigned long pteval_t;
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct __anonstruct_pte_t_11 {
   pteval_t pte ;
};
typedef struct __anonstruct_pte_t_11 pte_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_12 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_12 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct seq_file;
struct thread_struct;
struct mm_struct;
struct task_struct;
struct cpumask;
struct qspinlock {
   atomic_t val ;
};
typedef struct qspinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct net_device;
struct file_operations;
struct completion;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_16 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_17 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_18 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion____missing_field_name_15 {
   struct __anonstruct_futex_16 futex ;
   struct __anonstruct_nanosleep_17 nanosleep ;
   struct __anonstruct_poll_18 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion____missing_field_name_15 __annonCompField7 ;
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
union __anonunion____missing_field_name_19 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion____missing_field_name_19 __annonCompField8 ;
};
struct cpumask {
   unsigned long bits[128U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct fregs_state {
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
struct __anonstruct____missing_field_name_29 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct____missing_field_name_30 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion____missing_field_name_28 {
   struct __anonstruct____missing_field_name_29 __annonCompField12 ;
   struct __anonstruct____missing_field_name_30 __annonCompField13 ;
};
union __anonunion____missing_field_name_31 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct fxregs_state {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion____missing_field_name_28 __annonCompField14 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion____missing_field_name_31 __annonCompField15 ;
};
struct swregs_state {
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
struct xstate_header {
   u64 xfeatures ;
   u64 xcomp_bv ;
   u64 reserved[6U] ;
};
struct xregs_state {
   struct fxregs_state i387 ;
   struct xstate_header header ;
   u8 __reserved[464U] ;
};
union fpregs_state {
   struct fregs_state fsave ;
   struct fxregs_state fxsave ;
   struct swregs_state soft ;
   struct xregs_state xsave ;
};
struct fpu {
   union fpregs_state state ;
   unsigned int last_cpu ;
   unsigned char fpstate_active ;
   unsigned char fpregs_active ;
   unsigned char counter ;
};
struct seq_operations;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct fpu fpu ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
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
   unsigned char check : 1 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 12 ;
   unsigned int pin_count ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct____missing_field_name_35 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion____missing_field_name_34 {
   struct raw_spinlock rlock ;
   struct __anonstruct____missing_field_name_35 __annonCompField17 ;
};
struct spinlock {
   union __anonunion____missing_field_name_34 __annonCompField18 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_36 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_36 rwlock_t;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct timeval {
   __kernel_time_t tv_sec ;
   __kernel_suseconds_t tv_usec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_46 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_46 kuid_t;
struct __anonstruct_kgid_t_47 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_47 kgid_t;
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
struct vm_area_struct;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_48 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_48 nodemask_t;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   struct list_head wait_list ;
   raw_spinlock_t wait_lock ;
   struct optimistic_spin_queue osq ;
   struct task_struct *owner ;
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
struct notifier_block;
struct timer_list {
   struct hlist_node entry ;
   unsigned long expires ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   u32 flags ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct ctl_table;
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
struct __anonstruct____missing_field_name_50 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion____missing_field_name_49 {
   struct __anonstruct____missing_field_name_50 __annonCompField19 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion____missing_field_name_49 __annonCompField20 ;
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
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
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
struct wake_irq;
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
   struct wake_irq *wakeirq ;
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
   int (*activate)(struct device * ) ;
   void (*sync)(struct device * ) ;
   void (*dismiss)(struct device * ) ;
};
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
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct cred;
struct inode;
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
struct __anonstruct____missing_field_name_148 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct____missing_field_name_149 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion____missing_field_name_147 {
   struct __anonstruct____missing_field_name_148 __annonCompField33 ;
   struct __anonstruct____missing_field_name_149 __annonCompField34 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion____missing_field_name_147 __annonCompField35 ;
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
union __anonunion____missing_field_name_150 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion____missing_field_name_152 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct____missing_field_name_156 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion____missing_field_name_155 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_156 __annonCompField38 ;
   int units ;
};
struct __anonstruct____missing_field_name_154 {
   union __anonunion____missing_field_name_155 __annonCompField39 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_153 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_154 __annonCompField40 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_151 {
   union __anonunion____missing_field_name_152 __annonCompField37 ;
   union __anonunion____missing_field_name_153 __annonCompField41 ;
};
struct __anonstruct____missing_field_name_158 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
struct __anonstruct____missing_field_name_159 {
   compound_page_dtor *compound_dtor ;
   unsigned long compound_order ;
};
union __anonunion____missing_field_name_157 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_158 __annonCompField43 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   struct __anonstruct____missing_field_name_159 __annonCompField44 ;
   pgtable_t pmd_huge_pte ;
};
struct kmem_cache;
union __anonunion____missing_field_name_160 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion____missing_field_name_150 __annonCompField36 ;
   struct __anonstruct____missing_field_name_151 __annonCompField42 ;
   union __anonunion____missing_field_name_157 __annonCompField45 ;
   union __anonunion____missing_field_name_160 __annonCompField46 ;
   struct mem_cgroup *mem_cgroup ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_shared_161 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
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
   struct __anonstruct_shared_161 shared ;
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
union __anonunion____missing_field_name_166 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion____missing_field_name_166 __annonCompField47 ;
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
struct dentry;
struct iattr;
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
union __anonunion____missing_field_name_171 {
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
   union __anonunion____missing_field_name_171 __annonCompField48 ;
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
struct kernel_param;
struct kernel_param_ops {
   unsigned int flags ;
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion____missing_field_name_172 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct module *mod ;
   struct kernel_param_ops const *ops ;
   u16 const perm ;
   s8 level ;
   u8 flags ;
   union __anonunion____missing_field_name_172 __annonCompField49 ;
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
struct latch_tree_node {
   struct rb_node node[2U] ;
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
struct mod_tree_node {
   struct module *mod ;
   struct latch_tree_node node ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct tracepoint;
struct trace_event_call;
struct trace_enum_map;
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
   struct mutex param_lock ;
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
   bool async_probe_requested ;
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
   struct mod_tree_node mtn_core ;
   struct mod_tree_node mtn_init ;
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
   struct trace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct trace_enum_map **trace_enums ;
   unsigned int num_trace_enums ;
   unsigned int num_ftrace_callsites ;
   unsigned long *ftrace_callsites ;
   bool klp_alive ;
   struct list_head source_list ;
   struct list_head target_list ;
   void (*exit)(void) ;
   atomic_t refcnt ;
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
struct user_struct;
struct sysv_shm {
   struct list_head shm_clist ;
};
struct __anonstruct_sigset_t_180 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_180 sigset_t;
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
struct __anonstruct__kill_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_183 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_185 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__addr_bnd_187 {
   void *_lower ;
   void *_upper ;
};
struct __anonstruct__sigfault_186 {
   void *_addr ;
   short _addr_lsb ;
   struct __anonstruct__addr_bnd_187 _addr_bnd ;
};
struct __anonstruct__sigpoll_188 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_189 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_181 {
   int _pad[28U] ;
   struct __anonstruct__kill_182 _kill ;
   struct __anonstruct__timer_183 _timer ;
   struct __anonstruct__rt_184 _rt ;
   struct __anonstruct__sigchld_185 _sigchld ;
   struct __anonstruct__sigfault_186 _sigfault ;
   struct __anonstruct__sigpoll_188 _sigpoll ;
   struct __anonstruct__sigsys_189 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_181 _sifields ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct rb_root waiters ;
   struct rb_node *waiters_leftmost ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
   ktime_t (*get_time)(void) ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   seqcount_t seq ;
   struct hrtimer *running ;
   unsigned int cpu ;
   unsigned int active_bases ;
   unsigned int clock_was_set_seq ;
   bool migration_enabled ;
   bool nohz_active ;
   unsigned char in_hrtirq : 1 ;
   unsigned char hres_active : 1 ;
   unsigned char hang_detected : 1 ;
   ktime_t expires_next ;
   struct hrtimer *next_timer ;
   unsigned int nr_events ;
   unsigned int nr_retries ;
   unsigned int nr_hangs ;
   unsigned int max_hang_time ;
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
union __anonunion____missing_field_name_196 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion____missing_field_name_197 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct____missing_field_name_199 {
   struct key_type *type ;
   char *description ;
};
union __anonunion____missing_field_name_198 {
   struct keyring_index_key index_key ;
   struct __anonstruct____missing_field_name_199 __annonCompField52 ;
};
union __anonunion_type_data_200 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_202 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion____missing_field_name_201 {
   union __anonunion_payload_202 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion____missing_field_name_196 __annonCompField50 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion____missing_field_name_197 __annonCompField51 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion____missing_field_name_198 __annonCompField53 ;
   union __anonunion_type_data_200 type_data ;
   union __anonunion____missing_field_name_201 __annonCompField54 ;
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
struct cgroup;
struct cgroup_root;
struct cgroup_subsys;
struct cgroup_taskset;
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
struct cgroup {
   struct cgroup_subsys_state self ;
   unsigned long flags ;
   int id ;
   int populated_cnt ;
   struct kernfs_node *kn ;
   struct kernfs_node *procs_kn ;
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
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct nameidata;
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
struct task_cputime_atomic {
   atomic64_t utime ;
   atomic64_t stime ;
   atomic64_t sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime_atomic cputime_atomic ;
   int running ;
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
struct wake_q_node {
   struct wake_q_node *next ;
};
struct io_context;
struct pipe_inode_info;
struct uts_namespace;
struct load_weight {
   unsigned long weight ;
   u32 inv_weight ;
};
struct sched_avg {
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
   unsigned long utilization_avg_contrib ;
   u32 runnable_avg_sum ;
   u32 avg_period ;
   u32 running_avg_sum ;
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
   u32 vmacache_seqnum ;
   struct vm_area_struct *vmacache[4U] ;
   struct task_rss_stat rss_stat ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned long jobctl ;
   unsigned int personality ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   unsigned char sched_migrated : 1 ;
   unsigned char memcg_kmem_skip_account : 1 ;
   unsigned char brk_randomized : 1 ;
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
   struct nameidata *nameidata ;
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
   struct wake_q_node wake_q ;
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
   unsigned long numa_faults_locality[3U] ;
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
   int pagefault_disabled ;
};
struct em28xx;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
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
struct fwnode_handle;
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
enum probe_type {
    PROBE_DEFAULT_STRATEGY = 0,
    PROBE_PREFER_ASYNCHRONOUS = 1,
    PROBE_FORCE_SYNCHRONOUS = 2
} ;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   enum probe_type probe_type ;
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
   struct fwnode_handle *fwnode ;
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
   struct wake_irq *wakeirq ;
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
struct __anonstruct____missing_field_name_231 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_230 {
   struct __anonstruct____missing_field_name_231 __annonCompField65 ;
};
struct lockref {
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_233 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField67 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_232 __annonCompField68 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_234 {
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
   union __anonunion_d_u_234 d_u ;
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
   struct inode *(*d_select_inode)(struct dentry * , unsigned int ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
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
struct __anonstruct____missing_field_name_238 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField69 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_237 __annonCompField70 ;
   struct list_head private_list ;
   void *slots[64U] ;
   unsigned long tags[3U][1U] ;
};
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bdi_writeback;
struct export_operations;
struct iovec;
struct kiocb;
struct poll_table_struct;
struct kstatfs;
struct swap_info_struct;
struct iov_iter;
struct vm_fault;
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_242 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_242 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_243 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_243 __annonCompField72 ;
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
   int (*get_projid)(struct inode * , kprojid_t * ) ;
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
struct qc_type_state {
   unsigned int flags ;
   unsigned int spc_timelimit ;
   unsigned int ino_timelimit ;
   unsigned int rt_spc_timelimit ;
   unsigned int spc_warnlimit ;
   unsigned int ino_warnlimit ;
   unsigned int rt_spc_warnlimit ;
   unsigned long long ino ;
   blkcnt_t blocks ;
   blkcnt_t nextents ;
};
struct qc_state {
   unsigned int s_incoredqs ;
   struct qc_type_state s_state[3U] ;
};
struct qc_info {
   int i_fieldmask ;
   unsigned int i_flags ;
   unsigned int i_spc_timelimit ;
   unsigned int i_ino_timelimit ;
   unsigned int i_rt_spc_timelimit ;
   unsigned int i_spc_warnlimit ;
   unsigned int i_ino_warnlimit ;
   unsigned int i_rt_spc_warnlimit ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_enable)(struct super_block * , unsigned int ) ;
   int (*quota_disable)(struct super_block * , unsigned int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*set_info)(struct super_block * , int , struct qc_info * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct qc_dqblk * ) ;
   int (*get_state)(struct super_block * , struct qc_state * ) ;
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
   struct inode *files[3U] ;
   struct mem_dqinfo info[3U] ;
   struct quota_format_ops const *ops[3U] ;
};
struct writeback_control;
struct kiocb {
   struct file *ki_filp ;
   loff_t ki_pos ;
   void (*ki_complete)(struct kiocb * , long , long ) ;
   void *private ;
   int ki_flags ;
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
   ssize_t (*direct_IO)(struct kiocb * , struct iov_iter * , loff_t ) ;
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
union __anonunion____missing_field_name_246 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_247 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_248 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
   char *i_link ;
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
   union __anonunion____missing_field_name_246 __annonCompField73 ;
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
   unsigned long dirtied_time_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct bdi_writeback *i_wb ;
   int i_wb_frn_winner ;
   u16 i_wb_frn_avg_time ;
   u16 i_wb_frn_history ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion____missing_field_name_247 __annonCompField74 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_248 __annonCompField75 ;
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
union __anonunion_f_u_249 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_249 f_u ;
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
   fl_owner_t (*lm_get_owner)(fl_owner_t ) ;
   void (*lm_put_owner)(fl_owner_t ) ;
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
struct __anonstruct_afs_251 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_250 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_251 afs ;
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
   union __anonunion_fl_u_250 fl_u ;
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
   unsigned long s_iflags ;
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
   ssize_t (*read_iter)(struct kiocb * , struct iov_iter * ) ;
   ssize_t (*write_iter)(struct kiocb * , struct iov_iter * ) ;
   int (*iterate)(struct file * , struct dir_context * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*mremap)(struct file * , struct vm_area_struct * ) ;
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
   char const *(*follow_link)(struct dentry * , void ** ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct inode * , void * ) ;
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
   atomic_t suspend_wakeups ;
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
enum fwnode_type {
    FWNODE_INVALID = 0,
    FWNODE_OF = 1,
    FWNODE_ACPI = 2,
    FWNODE_PDATA = 3
} ;
struct fwnode_handle {
   enum fwnode_type type ;
   struct fwnode_handle *secondary ;
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
struct i2c_board_info;
enum i2c_slave_event;
enum i2c_slave_event;
struct i2c_client {
   unsigned short flags ;
   unsigned short addr ;
   char name[20U] ;
   struct i2c_adapter *adapter ;
   struct device dev ;
   int irq ;
   struct list_head detected ;
   int (*slave_cb)(struct i2c_client * , enum i2c_slave_event , u8 * ) ;
};
enum i2c_slave_event {
    I2C_SLAVE_READ_REQUESTED = 0,
    I2C_SLAVE_WRITE_REQUESTED = 1,
    I2C_SLAVE_READ_PROCESSED = 2,
    I2C_SLAVE_WRITE_RECEIVED = 3,
    I2C_SLAVE_STOP = 4
} ;
struct i2c_board_info {
   char type[20U] ;
   unsigned short flags ;
   unsigned short addr ;
   void *platform_data ;
   struct dev_archdata *archdata ;
   struct device_node *of_node ;
   struct fwnode_handle *fwnode ;
   int irq ;
};
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
   int (*reg_slave)(struct i2c_client * ) ;
   int (*unreg_slave)(struct i2c_client * ) ;
};
struct i2c_bus_recovery_info {
   int (*recover_bus)(struct i2c_adapter * ) ;
   int (*get_scl)(struct i2c_adapter * ) ;
   void (*set_scl)(struct i2c_adapter * , int ) ;
   int (*get_sda)(struct i2c_adapter * ) ;
   void (*prepare_recovery)(struct i2c_adapter * ) ;
   void (*unprepare_recovery)(struct i2c_adapter * ) ;
   int scl_gpio ;
   int sda_gpio ;
};
struct i2c_adapter_quirks {
   u64 flags ;
   int max_num_msgs ;
   u16 max_write_len ;
   u16 max_read_len ;
   u16 max_comb_1st_msg_len ;
   u16 max_comb_2nd_msg_len ;
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
   struct i2c_adapter_quirks const *quirks ;
};
struct v4l2_edid {
   __u32 pad ;
   __u32 start_block ;
   __u32 blocks ;
   __u32 reserved[5U] ;
   __u8 *edid ;
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
    V4L2_BUF_TYPE_SDR_CAPTURE = 11,
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
   __u32 width ;
   __u32 height ;
};
struct v4l2_fract {
   __u32 numerator ;
   __u32 denominator ;
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
   __u32 flags ;
   __u32 ycbcr_enc ;
   __u32 quantization ;
   __u32 xfer_func ;
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
union __anonunion_m_255 {
   __u32 mem_offset ;
   unsigned long userptr ;
   __s32 fd ;
};
struct v4l2_plane {
   __u32 bytesused ;
   __u32 length ;
   union __anonunion_m_255 m ;
   __u32 data_offset ;
   __u32 reserved[11U] ;
};
union __anonunion_m_256 {
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
   union __anonunion_m_256 m ;
   __u32 length ;
   __u32 reserved2 ;
   __u32 reserved ;
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
union __anonunion____missing_field_name_258 {
   struct v4l2_bt_timings bt ;
   __u32 reserved[32U] ;
};
struct v4l2_dv_timings {
   __u32 type ;
   union __anonunion____missing_field_name_258 __annonCompField78 ;
};
struct v4l2_enum_dv_timings {
   __u32 index ;
   __u32 pad ;
   __u32 reserved[2U] ;
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
union __anonunion____missing_field_name_259 {
   struct v4l2_bt_timings_cap bt ;
   __u32 raw_data[32U] ;
};
struct v4l2_dv_timings_cap {
   __u32 type ;
   __u32 pad ;
   __u32 reserved[2U] ;
   union __anonunion____missing_field_name_259 __annonCompField79 ;
};
struct v4l2_control {
   __u32 id ;
   __s32 value ;
};
union __anonunion____missing_field_name_260 {
   __s32 value ;
   __s64 value64 ;
   char *string ;
   __u8 *p_u8 ;
   __u16 *p_u16 ;
   __u32 *p_u32 ;
   void *ptr ;
};
struct v4l2_ext_control {
   __u32 id ;
   __u32 size ;
   __u32 reserved2[1U] ;
   union __anonunion____missing_field_name_260 __annonCompField80 ;
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
    V4L2_CTRL_TYPE_INTEGER_MENU = 9,
    V4L2_CTRL_COMPOUND_TYPES = 256,
    V4L2_CTRL_TYPE_U8 = 256,
    V4L2_CTRL_TYPE_U16 = 257,
    V4L2_CTRL_TYPE_U32 = 258
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
union __anonunion____missing_field_name_261 {
   __u8 name[32U] ;
   __s64 value ;
};
struct v4l2_querymenu {
   __u32 id ;
   __u32 index ;
   union __anonunion____missing_field_name_261 __annonCompField81 ;
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
   __u32 bytesperline ;
   __u16 reserved[6U] ;
};
struct v4l2_pix_format_mplane {
   __u32 width ;
   __u32 height ;
   __u32 pixelformat ;
   __u32 field ;
   __u32 colorspace ;
   struct v4l2_plane_pix_format plane_fmt[8U] ;
   __u8 num_planes ;
   __u8 flags ;
   __u8 ycbcr_enc ;
   __u8 quantization ;
   __u8 xfer_func ;
   __u8 reserved[7U] ;
};
struct v4l2_sdr_format {
   __u32 pixelformat ;
   __u32 buffersize ;
   __u8 reserved[24U] ;
};
union __anonunion_fmt_269 {
   struct v4l2_pix_format pix ;
   struct v4l2_pix_format_mplane pix_mp ;
   struct v4l2_window win ;
   struct v4l2_vbi_format vbi ;
   struct v4l2_sliced_vbi_format sliced ;
   struct v4l2_sdr_format sdr ;
   __u8 raw_data[200U] ;
};
struct v4l2_format {
   __u32 type ;
   union __anonunion_fmt_269 fmt ;
};
union __anonunion_parm_270 {
   struct v4l2_captureparm capture ;
   struct v4l2_outputparm output ;
   __u8 raw_data[200U] ;
};
struct v4l2_streamparm {
   __u32 type ;
   union __anonunion_parm_270 parm ;
};
struct v4l2_event_subscription {
   __u32 type ;
   __u32 id ;
   __u32 flags ;
   __u32 reserved[5U] ;
};
union __anonunion____missing_field_name_273 {
   __u32 addr ;
   char name[32U] ;
};
struct v4l2_dbg_match {
   __u32 type ;
   union __anonunion____missing_field_name_273 __annonCompField86 ;
};
struct v4l2_dbg_register {
   struct v4l2_dbg_match match ;
   __u32 size ;
   __u64 reg ;
   __u64 val ;
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
   int (*pfn_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   char const *(*name)(struct vm_area_struct * ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   struct page *(*find_special_page)(struct vm_area_struct * , unsigned long ) ;
};
struct kvec;
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
struct fence;
struct fence_ops;
struct fence_cb;
struct fence {
   struct kref refcount ;
   struct fence_ops const *ops ;
   struct callback_head rcu ;
   struct list_head cb_list ;
   spinlock_t *lock ;
   unsigned int context ;
   unsigned int seqno ;
   unsigned long flags ;
   ktime_t timestamp ;
   int status ;
};
struct fence_cb {
   struct list_head node ;
   void (*func)(struct fence * , struct fence_cb * ) ;
};
struct fence_ops {
   char const *(*get_driver_name)(struct fence * ) ;
   char const *(*get_timeline_name)(struct fence * ) ;
   bool (*enable_signaling)(struct fence * ) ;
   bool (*signaled)(struct fence * ) ;
   long (*wait)(struct fence * , bool , long ) ;
   void (*release)(struct fence * ) ;
   int (*fill_driver_data)(struct fence * , void * , int ) ;
   void (*fence_value_str)(struct fence * , char * , int ) ;
   void (*timeline_value_str)(struct fence * , char * , int ) ;
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
struct dma_buf_poll_cb_t {
   struct fence_cb cb ;
   wait_queue_head_t *poll ;
   unsigned long active ;
};
struct reservation_object;
struct dma_buf {
   size_t size ;
   struct file *file ;
   struct list_head attachments ;
   struct dma_buf_ops const *ops ;
   struct mutex lock ;
   unsigned int vmapping_counter ;
   void *vmap_ptr ;
   char const *exp_name ;
   struct module *owner ;
   struct list_head list_node ;
   void *priv ;
   struct reservation_object *resv ;
   wait_queue_head_t poll ;
   struct dma_buf_poll_cb_t cb_excl ;
   struct dma_buf_poll_cb_t cb_shared ;
};
struct dma_buf_attachment {
   struct dma_buf *dmabuf ;
   struct device *dev ;
   struct list_head node ;
   void *priv ;
};
struct vb2_fileio_data;
struct vb2_threadio_data;
struct vb2_mem_ops {
   void *(*alloc)(void * , unsigned long , enum dma_data_direction , gfp_t ) ;
   void (*put)(void * ) ;
   struct dma_buf *(*get_dmabuf)(void * , unsigned long ) ;
   void *(*get_userptr)(void * , unsigned long , unsigned long , enum dma_data_direction ) ;
   void (*put_userptr)(void * ) ;
   void (*prepare)(void * ) ;
   void (*finish)(void * ) ;
   void *(*attach_dmabuf)(void * , struct dma_buf * , unsigned long , enum dma_data_direction ) ;
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
    VB2_BUF_STATE_PREPARING = 1,
    VB2_BUF_STATE_PREPARED = 2,
    VB2_BUF_STATE_QUEUED = 3,
    VB2_BUF_STATE_ACTIVE = 4,
    VB2_BUF_STATE_DONE = 5,
    VB2_BUF_STATE_ERROR = 6
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
   u32 cnt_mem_alloc ;
   u32 cnt_mem_put ;
   u32 cnt_mem_get_dmabuf ;
   u32 cnt_mem_get_userptr ;
   u32 cnt_mem_put_userptr ;
   u32 cnt_mem_prepare ;
   u32 cnt_mem_finish ;
   u32 cnt_mem_attach_dmabuf ;
   u32 cnt_mem_detach_dmabuf ;
   u32 cnt_mem_map_dmabuf ;
   u32 cnt_mem_unmap_dmabuf ;
   u32 cnt_mem_vaddr ;
   u32 cnt_mem_cookie ;
   u32 cnt_mem_num_users ;
   u32 cnt_mem_mmap ;
   u32 cnt_buf_init ;
   u32 cnt_buf_prepare ;
   u32 cnt_buf_finish ;
   u32 cnt_buf_cleanup ;
   u32 cnt_buf_queue ;
   u32 cnt_buf_done ;
};
struct vb2_ops {
   int (*queue_setup)(struct vb2_queue * , struct v4l2_format const * , unsigned int * ,
                      unsigned int * , unsigned int * , void ** ) ;
   void (*wait_prepare)(struct vb2_queue * ) ;
   void (*wait_finish)(struct vb2_queue * ) ;
   int (*buf_init)(struct vb2_buffer * ) ;
   int (*buf_prepare)(struct vb2_buffer * ) ;
   void (*buf_finish)(struct vb2_buffer * ) ;
   void (*buf_cleanup)(struct vb2_buffer * ) ;
   int (*start_streaming)(struct vb2_queue * , unsigned int ) ;
   void (*stop_streaming)(struct vb2_queue * ) ;
   void (*buf_queue)(struct vb2_buffer * ) ;
};
struct v4l2_fh;
struct vb2_queue {
   enum v4l2_buf_type type ;
   unsigned int io_modes ;
   unsigned char fileio_read_once : 1 ;
   unsigned char fileio_write_immediately : 1 ;
   unsigned char allow_zero_bytesused : 1 ;
   struct mutex *lock ;
   struct v4l2_fh *owner ;
   struct vb2_ops const *ops ;
   struct vb2_mem_ops const *mem_ops ;
   void *drv_priv ;
   unsigned int buf_struct_size ;
   u32 timestamp_flags ;
   gfp_t gfp_flags ;
   u32 min_buffers_needed ;
   struct mutex mmap_lock ;
   enum v4l2_memory memory ;
   struct vb2_buffer *bufs[32U] ;
   unsigned int num_buffers ;
   struct list_head queued_list ;
   unsigned int queued_count ;
   atomic_t owned_by_drv_count ;
   struct list_head done_list ;
   spinlock_t done_lock ;
   wait_queue_head_t done_wq ;
   void *alloc_ctx[8U] ;
   unsigned int plane_sizes[8U] ;
   unsigned char streaming : 1 ;
   unsigned char start_streaming_called : 1 ;
   unsigned char error : 1 ;
   unsigned char waiting_for_buffers : 1 ;
   unsigned char last_buffer_dequeued : 1 ;
   struct vb2_fileio_data *fileio ;
   struct vb2_threadio_data *threadio ;
   u32 cnt_queue_setup ;
   u32 cnt_wait_prepare ;
   u32 cnt_wait_finish ;
   u32 cnt_start_streaming ;
   u32 cnt_stop_streaming ;
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
struct __anonstruct_dev_281 {
   u32 major ;
   u32 minor ;
};
union __anonunion_info_280 {
   struct __anonstruct_dev_281 dev ;
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
   union __anonunion_info_280 info ;
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
struct v4l2_mbus_framefmt {
   __u32 width ;
   __u32 height ;
   __u32 code ;
   __u32 field ;
   __u32 colorspace ;
   __u16 ycbcr_enc ;
   __u16 quantization ;
   __u16 xfer_func ;
   __u16 reserved[11U] ;
};
struct v4l2_subdev_format {
   __u32 which ;
   __u32 pad ;
   struct v4l2_mbus_framefmt format ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_mbus_code_enum {
   __u32 pad ;
   __u32 index ;
   __u32 code ;
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_frame_size_enum {
   __u32 index ;
   __u32 pad ;
   __u32 code ;
   __u32 min_width ;
   __u32 max_width ;
   __u32 min_height ;
   __u32 max_height ;
   __u32 which ;
   __u32 reserved[8U] ;
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
   __u32 which ;
   __u32 reserved[8U] ;
};
struct v4l2_subdev_selection {
   __u32 which ;
   __u32 pad ;
   __u32 target ;
   __u32 flags ;
   struct v4l2_rect r ;
   __u32 reserved[8U] ;
};
struct v4l2_device;
struct v4l2_subdev;
struct v4l2_async_notifier;
enum v4l2_async_match_type {
    V4L2_ASYNC_MATCH_CUSTOM = 0,
    V4L2_ASYNC_MATCH_DEVNAME = 1,
    V4L2_ASYNC_MATCH_I2C = 2,
    V4L2_ASYNC_MATCH_OF = 3
} ;
struct __anonstruct_of_284 {
   struct device_node const *node ;
};
struct __anonstruct_device_name_285 {
   char const *name ;
};
struct __anonstruct_i2c_286 {
   int adapter_id ;
   unsigned short address ;
};
struct __anonstruct_custom_287 {
   bool (*match)(struct device * , struct v4l2_async_subdev * ) ;
   void *priv ;
};
union __anonunion_match_283 {
   struct __anonstruct_of_284 of ;
   struct __anonstruct_device_name_285 device_name ;
   struct __anonstruct_i2c_286 i2c ;
   struct __anonstruct_custom_287 custom ;
};
struct v4l2_async_subdev {
   enum v4l2_async_match_type match_type ;
   union __anonunion_match_283 match ;
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
struct video_device;
struct v4l2_ctrl_handler;
struct v4l2_prio_state {
   atomic_t prios[4U] ;
};
struct v4l2_file_operations {
   struct module *owner ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
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
   int dev_debug ;
   v4l2_std_id tvnorms ;
   void (*release)(struct video_device * ) ;
   struct v4l2_ioctl_ops const *ioctl_ops ;
   unsigned long valid_ioctls[3U] ;
   unsigned long disable_locking[3U] ;
   struct mutex *lock ;
};
struct v4l2_subdev_ops;
struct v4l2_priv_tun_config {
   int tuner ;
   void *priv ;
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
   long (*ioctl)(struct v4l2_subdev * , unsigned int , void * ) ;
   long (*compat_ioctl32)(struct v4l2_subdev * , unsigned int , unsigned long ) ;
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
   int (*enum_freq_bands)(struct v4l2_subdev * , struct v4l2_frequency_band * ) ;
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
   int (*g_std)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*s_std)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*s_std_output)(struct v4l2_subdev * , v4l2_std_id ) ;
   int (*g_std_output)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*querystd)(struct v4l2_subdev * , v4l2_std_id * ) ;
   int (*g_tvnorms)(struct v4l2_subdev * , v4l2_std_id * ) ;
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
   int (*s_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*g_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
   int (*query_dv_timings)(struct v4l2_subdev * , struct v4l2_dv_timings * ) ;
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
struct v4l2_subdev_pad_config {
   struct v4l2_mbus_framefmt try_fmt ;
   struct v4l2_rect try_crop ;
   struct v4l2_rect try_compose ;
};
struct v4l2_subdev_pad_ops {
   int (*enum_mbus_code)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                         struct v4l2_subdev_mbus_code_enum * ) ;
   int (*enum_frame_size)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                          struct v4l2_subdev_frame_size_enum * ) ;
   int (*enum_frame_interval)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * ,
                              struct v4l2_subdev_frame_interval_enum * ) ;
   int (*get_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*set_fmt)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_format * ) ;
   int (*get_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*set_selection)(struct v4l2_subdev * , struct v4l2_subdev_pad_config * , struct v4l2_subdev_selection * ) ;
   int (*get_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*set_edid)(struct v4l2_subdev * , struct v4l2_edid * ) ;
   int (*dv_timings_cap)(struct v4l2_subdev * , struct v4l2_dv_timings_cap * ) ;
   int (*enum_dv_timings)(struct v4l2_subdev * , struct v4l2_enum_dv_timings * ) ;
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
   bool owner_v4l2_dev ;
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
   struct device_node *of_node ;
   struct list_head async_list ;
   struct v4l2_async_subdev *asd ;
   struct v4l2_async_notifier *notifier ;
   struct v4l2_subdev_platform_data *pdata ;
};
struct v4l2_subdev_fh {
   struct v4l2_fh vfh ;
   struct v4l2_subdev_pad_config *pad ;
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
   struct kref ref ;
   void (*release)(struct v4l2_device * ) ;
};
struct v4l2_ctrl_helper;
struct v4l2_ctrl;
union v4l2_ctrl_ptr {
   s32 *p_s32 ;
   s64 *p_s64 ;
   u8 *p_u8 ;
   u16 *p_u16 ;
   u32 *p_u32 ;
   char *p_char ;
   void *p ;
};
struct v4l2_ctrl_ops {
   int (*g_volatile_ctrl)(struct v4l2_ctrl * ) ;
   int (*try_ctrl)(struct v4l2_ctrl * ) ;
   int (*s_ctrl)(struct v4l2_ctrl * ) ;
};
struct v4l2_ctrl_type_ops {
   bool (*equal)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr , union v4l2_ctrl_ptr ) ;
   void (*init)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
   void (*log)(struct v4l2_ctrl const * ) ;
   int (*validate)(struct v4l2_ctrl const * , u32 , union v4l2_ctrl_ptr ) ;
};
union __anonunion____missing_field_name_288 {
   u64 step ;
   u64 menu_skip_mask ;
};
union __anonunion____missing_field_name_289 {
   char const * const *qmenu ;
   s64 const *qmenu_int ;
};
struct __anonstruct_cur_290 {
   s32 val ;
};
struct v4l2_ctrl {
   struct list_head node ;
   struct list_head ev_subs ;
   struct v4l2_ctrl_handler *handler ;
   struct v4l2_ctrl **cluster ;
   unsigned int ncontrols ;
   unsigned char done : 1 ;
   unsigned char is_new : 1 ;
   unsigned char has_changed : 1 ;
   unsigned char is_private : 1 ;
   unsigned char is_auto : 1 ;
   unsigned char is_int : 1 ;
   unsigned char is_string : 1 ;
   unsigned char is_ptr : 1 ;
   unsigned char is_array : 1 ;
   unsigned char has_volatiles : 1 ;
   unsigned char call_notify : 1 ;
   unsigned char manual_mode_value ;
   struct v4l2_ctrl_ops const *ops ;
   struct v4l2_ctrl_type_ops const *type_ops ;
   u32 id ;
   char const *name ;
   enum v4l2_ctrl_type type ;
   s64 minimum ;
   s64 maximum ;
   s64 default_value ;
   u32 elems ;
   u32 elem_size ;
   u32 dims[4U] ;
   u32 nr_of_dims ;
   union __anonunion____missing_field_name_288 __annonCompField88 ;
   union __anonunion____missing_field_name_289 __annonCompField89 ;
   unsigned long flags ;
   void *priv ;
   s32 val ;
   struct __anonstruct_cur_290 cur ;
   union v4l2_ctrl_ptr p_new ;
   union v4l2_ctrl_ptr p_cur ;
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
union __anonunion_u_294 {
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
   union __anonunion_u_294 u ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
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
struct dvb_frontend_info {
   char name[128U] ;
   enum fe_type type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   enum fe_caps caps ;
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
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
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
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
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
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
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
union __anonunion____missing_field_name_297 {
   __u64 uvalue ;
   __s64 svalue ;
};
struct dtv_stats {
   __u8 scale ;
   union __anonunion____missing_field_name_297 __annonCompField95 ;
};
struct dtv_fe_stats {
   __u8 len ;
   struct dtv_stats stat[4U] ;
};
struct __anonstruct_buffer_299 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_298 {
   __u32 data ;
   struct dtv_fe_stats st ;
   struct __anonstruct_buffer_299 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_298 u ;
   int result ;
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
   int (*suspend)(struct dvb_frontend * ) ;
   int (*resume)(struct dvb_frontend * ) ;
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
   int (*has_signal)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
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
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , enum fe_status * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , enum fe_status * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , enum fe_sec_mini_cmd ) ;
   int (*set_tone)(struct dvb_frontend * , enum fe_sec_tone_mode ) ;
   int (*set_voltage)(struct dvb_frontend * , enum fe_sec_voltage ) ;
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
struct __anonstruct_layer_300 {
   u8 segment_count ;
   enum fe_code_rate fec ;
   enum fe_modulation modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   enum fe_modulation modulation ;
   enum fe_sec_voltage voltage ;
   enum fe_sec_tone_mode sectone ;
   enum fe_spectral_inversion inversion ;
   enum fe_code_rate fec_inner ;
   enum fe_transmit_mode transmission_mode ;
   u32 bandwidth_hz ;
   enum fe_guard_interval guard_interval ;
   enum fe_hierarchy hierarchy ;
   u32 symbol_rate ;
   enum fe_code_rate code_rate_HP ;
   enum fe_code_rate code_rate_LP ;
   enum fe_pilot pilot ;
   enum fe_rolloff rolloff ;
   enum fe_delivery_system delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_300 layer[3U] ;
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
   struct dtv_fe_stats strength ;
   struct dtv_fe_stats cnr ;
   struct dtv_fe_stats pre_bit_error ;
   struct dtv_fe_stats pre_bit_count ;
   struct dtv_fe_stats post_bit_error ;
   struct dtv_fe_stats post_bit_count ;
   struct dtv_fe_stats block_error ;
   struct dtv_fe_stats block_count ;
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
   unsigned int exit ;
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
struct xc5000_config {
   u8 i2c_address ;
   u32 if_khz ;
   u8 radio_input ;
   u16 xtal_khz ;
   u16 output_amp ;
   int chip_id ;
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
    CHIP_ID_EM28174 = 113,
    CHIP_ID_EM28178 = 114
} ;
enum em28xx_mode {
    EM28XX_SUSPEND = 0,
    EM28XX_ANALOG_MODE = 1,
    EM28XX_DIGITAL_MODE = 2
} ;
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
};
enum em28xx_int_audio_type {
    EM28XX_INT_AUDIO_NONE = 0,
    EM28XX_INT_AUDIO_AC97 = 1,
    EM28XX_INT_AUDIO_I2S = 2
} ;
enum em28xx_usb_audio_type {
    EM28XX_USB_AUDIO_NONE = 0,
    EM28XX_USB_AUDIO_CLASS = 1,
    EM28XX_USB_AUDIO_VENDOR = 2
} ;
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
enum em28xx_led_role {
    EM28XX_LED_ANALOG_CAPTURING = 0,
    EM28XX_LED_DIGITAL_CAPTURING = 1,
    EM28XX_LED_ILLUMINATION = 2,
    EM28XX_NUM_LED_ROLES = 3
} ;
struct em28xx_led {
   enum em28xx_led_role role ;
   u8 gpio_reg ;
   u8 gpio_mask ;
   bool inverted ;
};
enum em28xx_button_role {
    EM28XX_BUTTON_SNAPSHOT = 0,
    EM28XX_BUTTON_ILLUMINATION = 1,
    EM28XX_NUM_BUTTON_ROLES = 2
} ;
struct em28xx_button {
   enum em28xx_button_role role ;
   u8 reg_r ;
   u8 reg_clearing ;
   u8 mask ;
   bool inverted ;
};
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
   struct em28xx_led *leds ;
   struct em28xx_button *buttons ;
};
struct v4l2_clk;
struct em28xx_v4l2 {
   struct kref ref ;
   struct em28xx *dev ;
   struct v4l2_device v4l2_dev ;
   struct v4l2_ctrl_handler ctrl_handler ;
   struct v4l2_clk *clk ;
   struct video_device vdev ;
   struct video_device vbi_dev ;
   struct video_device radio_dev ;
   struct vb2_queue vb_vidq ;
   struct vb2_queue vb_vbiq ;
   struct mutex vb_queue_lock ;
   struct mutex vb_vbi_queue_lock ;
   u8 vinmode ;
   u8 vinctl ;
   int sensor_xres ;
   int sensor_yres ;
   int sensor_xtal ;
   int users ;
   int streaming_users ;
   u32 frequency ;
   struct em28xx_fmt *format ;
   v4l2_std_id norm ;
   bool progressive ;
   int interlaced_fieldmode ;
   int width ;
   int height ;
   unsigned int hscale ;
   unsigned int vscale ;
   unsigned int vbi_width ;
   unsigned int vbi_height ;
   int capture_type ;
   bool top_field ;
   int vbi_read ;
   unsigned int field_count ;
};
struct snd_pcm_substream;
struct snd_card;
struct em28xx_audio {
   char name[50U] ;
   unsigned int num_urb ;
   char **transfer_buffer ;
   struct urb **urb ;
   struct usb_device *udev ;
   unsigned int capture_transfer_done ;
   struct snd_pcm_substream *capture_pcm_substream ;
   unsigned int hwptr_done_capture ;
   struct snd_card *sndcard ;
   size_t period ;
   int users ;
   spinlock_t slock ;
   struct work_struct wq_trigger ;
   atomic_t stream_started ;
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
struct em28xx_dvb;
struct em28xx_IR;
struct em28xx {
   struct kref ref ;
   struct em28xx_v4l2 *v4l2 ;
   struct em28xx_dvb *dvb ;
   struct em28xx_audio adev ;
   struct em28xx_IR *ir ;
   char name[30U] ;
   int model ;
   int devno ;
   enum em28xx_chip_id chip_id ;
   unsigned char is_em25xx : 1 ;
   unsigned char disconnected : 1 ;
   unsigned char has_video : 1 ;
   unsigned char is_audio_only : 1 ;
   enum em28xx_int_audio_type int_audio_type ;
   enum em28xx_usb_audio_type usb_audio_type ;
   struct em28xx_board board ;
   enum em28xx_sensor em28xx_sensor ;
   unsigned int wait_after_write ;
   struct list_head devlist ;
   u32 i2s_speed ;
   struct em28xx_audio_mode audio_mode ;
   int tuner_type ;
   struct i2c_adapter i2c_adap[2U] ;
   struct i2c_client i2c_client[2U] ;
   struct em28xx_i2c_bus i2c_bus[2U] ;
   unsigned char eeprom_addrwidth_16bit : 1 ;
   unsigned int def_i2c_bus ;
   unsigned int cur_i2c_bus ;
   struct rt_mutex i2c_bus_lock ;
   unsigned int ctl_input ;
   unsigned int ctl_ainput ;
   unsigned int ctl_aoutput ;
   int mute ;
   int volume ;
   unsigned long hash ;
   unsigned long i2c_hash ;
   struct work_struct request_module_wk ;
   struct mutex lock ;
   struct mutex ctrl_urb_lock ;
   unsigned int resources ;
   u8 *eedata ;
   u16 eedata_len ;
   struct em28xx_dmaqueue vidq ;
   struct em28xx_dmaqueue vbiq ;
   struct em28xx_usb_ctl usb_ctl ;
   spinlock_t slock ;
   struct usb_device *udev ;
   u8 ifnum ;
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
   struct delayed_work buttons_query_work ;
   u8 button_polling_addresses[5U] ;
   u8 button_polling_last_values[5U] ;
   u8 num_button_polling_addresses ;
   u16 button_polling_interval ;
   char snapshot_button_path[30U] ;
   struct input_dev *sbutton_input_dev ;
};
struct em28xx_ops {
   struct list_head next ;
   char *name ;
   int id ;
   int (*init)(struct em28xx * ) ;
   int (*fini)(struct em28xx * ) ;
   int (*suspend)(struct em28xx * ) ;
   int (*resume)(struct em28xx * ) ;
};
enum dmx_output {
    DMX_OUT_DECODER = 0,
    DMX_OUT_TAP = 1,
    DMX_OUT_TS_TAP = 2,
    DMX_OUT_TSDEMUX_TAP = 3
} ;
typedef enum dmx_output dmx_output_t;
enum dmx_input {
    DMX_IN_FRONTEND = 0,
    DMX_IN_DVR = 1
} ;
typedef enum dmx_input dmx_input_t;
enum dmx_ts_pes {
    DMX_PES_AUDIO0 = 0,
    DMX_PES_VIDEO0 = 1,
    DMX_PES_TELETEXT0 = 2,
    DMX_PES_SUBTITLE0 = 3,
    DMX_PES_PCR0 = 4,
    DMX_PES_AUDIO1 = 5,
    DMX_PES_VIDEO1 = 6,
    DMX_PES_TELETEXT1 = 7,
    DMX_PES_SUBTITLE1 = 8,
    DMX_PES_PCR1 = 9,
    DMX_PES_AUDIO2 = 10,
    DMX_PES_VIDEO2 = 11,
    DMX_PES_TELETEXT2 = 12,
    DMX_PES_SUBTITLE2 = 13,
    DMX_PES_PCR2 = 14,
    DMX_PES_AUDIO3 = 15,
    DMX_PES_VIDEO3 = 16,
    DMX_PES_TELETEXT3 = 17,
    DMX_PES_SUBTITLE3 = 18,
    DMX_PES_PCR3 = 19,
    DMX_PES_OTHER = 20
} ;
typedef enum dmx_ts_pes dmx_pes_type_t;
struct dmx_filter {
   __u8 filter[16U] ;
   __u8 mask[16U] ;
   __u8 mode[16U] ;
};
typedef struct dmx_filter dmx_filter_t;
struct dmx_sct_filter_params {
   __u16 pid ;
   dmx_filter_t filter ;
   __u32 timeout ;
   __u32 flags ;
};
struct dmx_pes_filter_params {
   __u16 pid ;
   dmx_input_t input ;
   dmx_output_t output ;
   dmx_pes_type_t pes_type ;
   __u32 flags ;
};
struct dmx_caps {
   __u32 caps ;
   int num_decoders ;
};
enum dmx_source {
    DMX_SOURCE_FRONT0 = 0,
    DMX_SOURCE_FRONT1 = 1,
    DMX_SOURCE_FRONT2 = 2,
    DMX_SOURCE_FRONT3 = 3,
    DMX_SOURCE_DVR0 = 16,
    DMX_SOURCE_DVR1 = 17,
    DMX_SOURCE_DVR2 = 18,
    DMX_SOURCE_DVR3 = 19
} ;
typedef enum dmx_source dmx_source_t;
enum dmx_success {
    DMX_OK = 0,
    DMX_LENGTH_ERROR = 1,
    DMX_OVERRUN_ERROR = 2,
    DMX_CRC_ERROR = 3,
    DMX_FRAME_ERROR = 4,
    DMX_FIFO_ERROR = 5,
    DMX_MISSED_ERROR = 6
} ;
struct dmx_demux;
struct dmx_ts_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int (*set)(struct dmx_ts_feed * , u16 , int , enum dmx_ts_pes , size_t , struct timespec ) ;
   int (*start_filtering)(struct dmx_ts_feed * ) ;
   int (*stop_filtering)(struct dmx_ts_feed * ) ;
};
struct dmx_section_feed;
struct dmx_section_filter {
   u8 filter_value[18U] ;
   u8 filter_mask[18U] ;
   u8 filter_mode[18U] ;
   struct dmx_section_feed *parent ;
   void *priv ;
};
struct dmx_section_feed {
   int is_filtering ;
   struct dmx_demux *parent ;
   void *priv ;
   int check_crc ;
   u32 crc_val ;
   u8 *secbuf ;
   u8 secbuf_base[4284U] ;
   u16 secbufp ;
   u16 seclen ;
   u16 tsfeedp ;
   int (*set)(struct dmx_section_feed * , u16 , size_t , int ) ;
   int (*allocate_filter)(struct dmx_section_feed * , struct dmx_section_filter ** ) ;
   int (*release_filter)(struct dmx_section_feed * , struct dmx_section_filter * ) ;
   int (*start_filtering)(struct dmx_section_feed * ) ;
   int (*stop_filtering)(struct dmx_section_feed * ) ;
};
enum dmx_frontend_source {
    DMX_MEMORY_FE = 0,
    DMX_FRONTEND_0 = 1,
    DMX_FRONTEND_1 = 2,
    DMX_FRONTEND_2 = 3,
    DMX_FRONTEND_3 = 4,
    DMX_STREAM_0 = 5,
    DMX_STREAM_1 = 6,
    DMX_STREAM_2 = 7,
    DMX_STREAM_3 = 8
} ;
struct dmx_frontend {
   struct list_head connectivity_list ;
   enum dmx_frontend_source source ;
};
struct dmx_demux {
   u32 capabilities ;
   struct dmx_frontend *frontend ;
   void *priv ;
   int (*open)(struct dmx_demux * ) ;
   int (*close)(struct dmx_demux * ) ;
   int (*write)(struct dmx_demux * , char const * , size_t ) ;
   int (*allocate_ts_feed)(struct dmx_demux * , struct dmx_ts_feed ** , int (*)(u8 const * ,
                                                                                size_t ,
                                                                                u8 const * ,
                                                                                size_t ,
                                                                                struct dmx_ts_feed * ,
                                                                                enum dmx_success ) ) ;
   int (*release_ts_feed)(struct dmx_demux * , struct dmx_ts_feed * ) ;
   int (*allocate_section_feed)(struct dmx_demux * , struct dmx_section_feed ** ,
                                int (*)(u8 const * , size_t , u8 const * , size_t ,
                                        struct dmx_section_filter * , enum dmx_success ) ) ;
   int (*release_section_feed)(struct dmx_demux * , struct dmx_section_feed * ) ;
   int (*add_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*remove_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   struct list_head *(*get_frontends)(struct dmx_demux * ) ;
   int (*connect_frontend)(struct dmx_demux * , struct dmx_frontend * ) ;
   int (*disconnect_frontend)(struct dmx_demux * ) ;
   int (*get_pes_pids)(struct dmx_demux * , u16 * ) ;
   int (*get_caps)(struct dmx_demux * , struct dmx_caps * ) ;
   int (*set_source)(struct dmx_demux * , dmx_source_t const * ) ;
   int (*get_stc)(struct dmx_demux * , unsigned int , u64 * , unsigned int * ) ;
};
struct dvb_demux_feed;
struct dvb_demux_filter {
   struct dmx_section_filter filter ;
   u8 maskandmode[18U] ;
   u8 maskandnotmode[18U] ;
   int doneq ;
   struct dvb_demux_filter *next ;
   struct dvb_demux_feed *feed ;
   int index ;
   int state ;
   int type ;
   u16 hw_handle ;
   struct timer_list timer ;
};
union __anonunion_feed_301 {
   struct dmx_ts_feed ts ;
   struct dmx_section_feed sec ;
};
union __anonunion_cb_302 {
   int (*ts)(u8 const * , size_t , u8 const * , size_t , struct dmx_ts_feed * ,
             enum dmx_success ) ;
   int (*sec)(u8 const * , size_t , u8 const * , size_t , struct dmx_section_filter * ,
              enum dmx_success ) ;
};
struct dvb_demux;
struct dvb_demux_feed {
   union __anonunion_feed_301 feed ;
   union __anonunion_cb_302 cb ;
   struct dvb_demux *demux ;
   void *priv ;
   int type ;
   int state ;
   u16 pid ;
   u8 *buffer ;
   int buffer_size ;
   struct timespec timeout ;
   struct dvb_demux_filter *filter ;
   int ts_type ;
   enum dmx_ts_pes pes_type ;
   int cc ;
   int pusi_seen ;
   u16 peslen ;
   struct list_head list_head ;
   unsigned int index ;
};
struct dvb_demux {
   struct dmx_demux dmx ;
   void *priv ;
   int filternum ;
   int feednum ;
   int (*start_feed)(struct dvb_demux_feed * ) ;
   int (*stop_feed)(struct dvb_demux_feed * ) ;
   int (*write_to_decoder)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   u32 (*check_crc32)(struct dvb_demux_feed * , u8 const * , size_t ) ;
   void (*memcopy)(struct dvb_demux_feed * , u8 * , u8 const * , size_t ) ;
   int users ;
   struct dvb_demux_filter *filter ;
   struct dvb_demux_feed *feed ;
   struct list_head frontend_list ;
   struct dvb_demux_feed *pesfilter[20U] ;
   u16 pids[20U] ;
   int playing ;
   int recording ;
   struct list_head feed_list ;
   u8 tsbuf[204U] ;
   int tsbufp ;
   struct mutex mutex ;
   spinlock_t lock ;
   uint8_t *cnt_storage ;
   struct timespec speed_last_time ;
   uint32_t speed_pkts_cnt ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_303 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_303 __annonCompField96 ;
   unsigned long nr_segs ;
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
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct __anonstruct_sync_serial_settings_305 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_305 sync_serial_settings;
struct __anonstruct_te1_settings_306 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_306 te1_settings;
struct __anonstruct_raw_hdlc_proto_307 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_307 raw_hdlc_proto;
struct __anonstruct_fr_proto_308 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_308 fr_proto;
struct __anonstruct_fr_proto_pvc_309 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_309 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_310 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_310 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_311 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_311 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_312 {
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
   union __anonunion_ifs_ifsu_312 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_313 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_314 {
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
   union __anonunion_ifr_ifrn_313 ifr_ifrn ;
   union __anonunion_ifr_ifru_314 ifr_ifru ;
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
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_330 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_330 in6_u ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct pipe_buf_operations;
struct pipe_buffer {
   struct page *page ;
   unsigned int offset ;
   unsigned int len ;
   struct pipe_buf_operations const *ops ;
   unsigned int flags ;
   unsigned long private ;
};
struct pipe_inode_info {
   struct mutex mutex ;
   wait_queue_head_t wait ;
   unsigned int nrbufs ;
   unsigned int curbuf ;
   unsigned int buffers ;
   unsigned int readers ;
   unsigned int writers ;
   unsigned int files ;
   unsigned int waiting_writers ;
   unsigned int r_counter ;
   unsigned int w_counter ;
   struct page *tmp_page ;
   struct fasync_struct *fasync_readers ;
   struct fasync_struct *fasync_writers ;
   struct pipe_buffer *bufs ;
};
struct pipe_buf_operations {
   int can_merge ;
   int (*confirm)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*release)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   int (*steal)(struct pipe_inode_info * , struct pipe_buffer * ) ;
   void (*get)(struct pipe_inode_info * , struct pipe_buffer * ) ;
};
struct napi_struct;
struct nf_conntrack {
   atomic_t use ;
};
union __anonunion____missing_field_name_335 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_336 {
   __be32 ipv4_daddr ;
   struct in6_addr ipv6_daddr ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned char orig_proto ;
   bool pkt_otherhost ;
   __u16 frag_max_size ;
   unsigned int mask ;
   struct net_device *physindev ;
   union __anonunion____missing_field_name_335 __annonCompField100 ;
   union __anonunion____missing_field_name_336 __annonCompField101 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_339 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_338 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_339 __annonCompField102 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_338 __annonCompField103 ;
};
union __anonunion____missing_field_name_342 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_341 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_342 __annonCompField104 ;
};
union __anonunion____missing_field_name_340 {
   struct __anonstruct____missing_field_name_341 __annonCompField105 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_344 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_343 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_344 __annonCompField107 ;
};
union __anonunion____missing_field_name_345 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_346 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_347 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_340 __annonCompField106 ;
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
   union __anonunion____missing_field_name_343 __annonCompField108 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_345 __annonCompField109 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_346 __annonCompField110 ;
   union __anonunion____missing_field_name_347 __annonCompField111 ;
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
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[16U] ;
};
struct udp_mib {
   unsigned long mibs[9U] ;
};
struct linux_mib {
   unsigned long mibs[115U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[29U] ;
};
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
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct local_ports {
   seqlock_t lock ;
   int range[2U] ;
   bool warned ;
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
   bool fib_offload_disabled ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct sock *mc_autojoin_sk ;
   struct inet_peer_base *peers ;
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
   int sysctl_tcp_ecn_fallback ;
   int sysctl_ip_no_pmtu_disc ;
   int sysctl_ip_fwd_use_pmtu ;
   int sysctl_ip_nonlocal_bind ;
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
   int sysctl_tcp_mtu_probing ;
   int sysctl_tcp_base_mss ;
   int sysctl_tcp_probe_threshold ;
   u32 sysctl_tcp_probe_interval ;
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
   int idgen_retries ;
   int idgen_delay ;
   int flowlabel_state_ranges ;
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
   struct sock *mc_autojoin_sk ;
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
   bool clusterip_deprecated_warning ;
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
   struct nft_af_info *netdev ;
   unsigned int base_seq ;
   u8 gencursor ;
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
struct mpls_route;
struct netns_mpls {
   size_t platform_labels ;
   struct mpls_route **platform_label ;
   struct ctl_table_header *ctl ;
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
   atomic64_t cookie_gen ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   spinlock_t nsid_lock ;
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
   struct netns_mpls mpls ;
   struct sock *diag_nlsk ;
   atomic_t fnhe_genid ;
};
struct __anonstruct_possible_net_t_356 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_356 possible_net_t;
enum ldv_30911 {
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
typedef enum ldv_30911 phy_interface_t;
enum ldv_30965 {
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
   enum ldv_30965 state ;
   struct device dev ;
   struct phy_device *phy_map[32U] ;
   u32 phy_mask ;
   u32 phy_ignore_ta_mask ;
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
   struct net_device *of_netdev ;
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
   enum dsa_tag_protocol tag_protocol ;
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
   int (*port_join_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_leave_bridge)(struct dsa_switch * , int , u32 ) ;
   int (*port_stp_update)(struct dsa_switch * , int , u8 ) ;
   int (*fdb_add)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_del)(struct dsa_switch * , int , unsigned char const * , u16 ) ;
   int (*fdb_getnext)(struct dsa_switch * , int , unsigned char * , bool * ) ;
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
struct ieee_qcn {
   __u8 rpg_enable[8U] ;
   __u32 rppp_max_rps[8U] ;
   __u32 rpg_time_reset[8U] ;
   __u32 rpg_byte_reset[8U] ;
   __u32 rpg_threshold[8U] ;
   __u32 rpg_max_rate[8U] ;
   __u32 rpg_ai_rate[8U] ;
   __u32 rpg_hai_rate[8U] ;
   __u32 rpg_gd[8U] ;
   __u32 rpg_min_dec_fac[8U] ;
   __u32 rpg_min_rate[8U] ;
   __u32 cndd_state_machine[8U] ;
};
struct ieee_qcn_stats {
   __u64 rppp_rp_centiseconds[8U] ;
   __u32 rppp_created_rps[8U] ;
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
   int (*ieee_getqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_setqcn)(struct net_device * , struct ieee_qcn * ) ;
   int (*ieee_getqcnstats)(struct net_device * , struct ieee_qcn_stats * ) ;
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
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
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
struct ifla_vf_stats {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 broadcast ;
   __u64 multicast ;
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
   __u32 rss_query_en ;
};
struct netpoll_info;
struct wireless_dev;
struct wpan_dev;
struct mpls_dev;
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
   unsigned long tx_maxrate ;
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
   int (*ndo_get_vf_stats)(struct net_device * , int , struct ifla_vf_stats * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_set_vf_rss_query_en)(struct net_device * , int , bool ) ;
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
                             u32 , int ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * , u16 ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_item_id * ) ;
   int (*ndo_get_phys_port_name)(struct net_device * , char * , size_t ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
   netdev_features_t (*ndo_features_check)(struct sk_buff * , struct net_device * ,
                                           netdev_features_t ) ;
   int (*ndo_set_tx_maxrate)(struct net_device * , int , u32 ) ;
   int (*ndo_get_iflink)(struct net_device const * ) ;
};
struct __anonstruct_adj_list_365 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_366 {
   struct list_head upper ;
   struct list_head lower ;
};
struct iw_handler_def;
struct iw_public_data;
struct switchdev_ops;
struct vlan_info;
struct tipc_bearer;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct tcf_proto;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_sw_netstats;
struct pcpu_dstats;
struct pcpu_vstats;
union __anonunion____missing_field_name_367 {
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
   atomic_t carrier_changes ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   struct list_head close_list ;
   struct list_head ptype_all ;
   struct list_head ptype_specific ;
   struct __anonstruct_adj_list_365 adj_list ;
   struct __anonstruct_all_adj_list_366 all_adj_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   netdev_features_t mpls_features ;
   int ifindex ;
   int group ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   atomic_long_t tx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct switchdev_ops const *switchdev_ops ;
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
   unsigned char name_assign_type ;
   bool uc_promisc ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   struct netdev_hw_addr_list dev_addrs ;
   struct kset *queues_kset ;
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
   struct mpls_dev *mpls_ptr ;
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   unsigned long gro_flush_timeout ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct tcf_proto *ingress_cl_list ;
   struct netdev_queue *ingress_queue ;
   struct list_head nf_hooks_ingress ;
   unsigned char broadcast[32U] ;
   struct cpu_rmap *rx_cpu_rmap ;
   struct hlist_node index_hlist ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   int watchdog_timeo ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   possible_net_t nd_net ;
   union __anonunion____missing_field_name_367 __annonCompField114 ;
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
struct ipv4_devconf {
   void *sysctl ;
   int data[29U] ;
   unsigned long state[1U] ;
};
struct in_ifaddr;
struct ip_mc_list;
struct in_device {
   struct net_device *dev ;
   atomic_t refcnt ;
   int dead ;
   struct in_ifaddr *ifa_list ;
   struct ip_mc_list *mc_list ;
   struct ip_mc_list **mc_hash ;
   int mc_count ;
   spinlock_t mc_tomb_lock ;
   struct ip_mc_list *mc_tomb ;
   unsigned long mr_v1_seen ;
   unsigned long mr_v2_seen ;
   unsigned long mr_maxdelay ;
   unsigned char mr_qrv ;
   unsigned char mr_gq_running ;
   unsigned char mr_ifc_count ;
   struct timer_list mr_gq_timer ;
   struct timer_list mr_ifc_timer ;
   struct neigh_parms *arp_parms ;
   struct ipv4_devconf cnf ;
   struct callback_head callback_head ;
};
struct in_ifaddr {
   struct hlist_node hash ;
   struct in_ifaddr *ifa_next ;
   struct in_device *ifa_dev ;
   struct callback_head callback_head ;
   __be32 ifa_local ;
   __be32 ifa_address ;
   __be32 ifa_mask ;
   __be32 ifa_broadcast ;
   unsigned char ifa_scope ;
   unsigned char ifa_prefixlen ;
   __u32 ifa_flags ;
   char ifa_label[16U] ;
   __u32 ifa_valid_lft ;
   __u32 ifa_preferred_lft ;
   unsigned long ifa_cstamp ;
   unsigned long ifa_tstamp ;
};
struct dvb_net {
   struct dvb_device *dvbdev ;
   struct net_device *device[10U] ;
   int state[10U] ;
   unsigned char exit : 1 ;
   struct dmx_demux *demux ;
   struct mutex ioctl_mutex ;
};
struct dvb_ringbuffer {
   u8 *data ;
   ssize_t size ;
   ssize_t pread ;
   ssize_t pwrite ;
   int error ;
   wait_queue_head_t queue ;
   spinlock_t lock ;
};
enum dmxdev_type {
    DMXDEV_TYPE_NONE = 0,
    DMXDEV_TYPE_SEC = 1,
    DMXDEV_TYPE_PES = 2
} ;
enum dmxdev_state {
    DMXDEV_STATE_FREE = 0,
    DMXDEV_STATE_ALLOCATED = 1,
    DMXDEV_STATE_SET = 2,
    DMXDEV_STATE_GO = 3,
    DMXDEV_STATE_DONE = 4,
    DMXDEV_STATE_TIMEDOUT = 5
} ;
union __anonunion_filter_381 {
   struct dmx_section_filter *sec ;
};
union __anonunion_feed_382 {
   struct list_head ts ;
   struct dmx_section_feed *sec ;
};
union __anonunion_params_383 {
   struct dmx_sct_filter_params sec ;
   struct dmx_pes_filter_params pes ;
};
struct dmxdev;
struct dmxdev_filter {
   union __anonunion_filter_381 filter ;
   union __anonunion_feed_382 feed ;
   union __anonunion_params_383 params ;
   enum dmxdev_type type ;
   enum dmxdev_state state ;
   struct dmxdev *dev ;
   struct dvb_ringbuffer buffer ;
   struct mutex mutex ;
   struct timer_list timer ;
   int todo ;
   u8 secheader[3U] ;
};
struct dmxdev {
   struct dvb_device *dvbdev ;
   struct dvb_device *dvr_dvbdev ;
   struct dmxdev_filter *filter ;
   struct dmx_demux *demux ;
   int filternum ;
   int capabilities ;
   unsigned char exit : 1 ;
   struct dmx_frontend *dvr_orig_fe ;
   struct dvb_ringbuffer dvr_buffer ;
   struct mutex mutex ;
   spinlock_t lock ;
};
struct tuner_setup {
   unsigned short addr ;
   unsigned int type ;
   unsigned int mode_mask ;
   void *config ;
   int (*tuner_callback)(void * , int , int , int ) ;
};
enum lg_chip_t {
    UNDEFINED = 0,
    LGDT3302 = 1,
    LGDT3303 = 2
} ;
typedef enum lg_chip_t lg_chip_type;
struct lgdt330x_config {
   u8 demod_address ;
   lg_chip_type demod_chip ;
   int serial_mpeg ;
   int (*pll_rf_set)(struct dvb_frontend * , int ) ;
   int (*set_ts_params)(struct dvb_frontend * , int ) ;
   int clock_polarity_flip ;
};
enum lgdt3305_mpeg_mode {
    LGDT3305_MPEG_PARALLEL = 0,
    LGDT3305_MPEG_SERIAL = 1
} ;
enum lgdt3305_tp_clock_edge {
    LGDT3305_TPCLK_RISING_EDGE = 0,
    LGDT3305_TPCLK_FALLING_EDGE = 1
} ;
enum lgdt3305_tp_clock_mode {
    LGDT3305_TPCLK_GATED = 0,
    LGDT3305_TPCLK_FIXED = 1
} ;
enum lgdt3305_tp_valid_polarity {
    LGDT3305_TP_VALID_LOW = 0,
    LGDT3305_TP_VALID_HIGH = 1
} ;
enum lgdt_demod_chip_type {
    LGDT3305 = 0,
    LGDT3304 = 1
} ;
struct lgdt3305_config {
   u8 i2c_addr ;
   u16 qam_if_khz ;
   u16 vsb_if_khz ;
   u16 usref_8vsb ;
   u16 usref_qam64 ;
   u16 usref_qam256 ;
   unsigned char deny_i2c_rptr : 1 ;
   unsigned char spectral_inversion : 1 ;
   unsigned char rf_agc_loop : 1 ;
   enum lgdt3305_mpeg_mode mpeg_mode ;
   enum lgdt3305_tp_clock_edge tpclk_edge ;
   enum lgdt3305_tp_clock_mode tpclk_mode ;
   enum lgdt3305_tp_valid_polarity tpvalid_polarity ;
   enum lgdt_demod_chip_type demod_chip ;
};
struct zl10353_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int parallel_ts ;
   unsigned char disable_i2c_gate_ctrl : 1 ;
   u8 clock_ctl_1 ;
   u8 pll_0 ;
};
struct s5h1409_config {
   u8 demod_address ;
   u8 output_mode ;
   u8 gpio ;
   u16 qam_if ;
   u8 inversion ;
   u8 status_mode ;
   u16 mpeg_timing ;
   u8 hvr1600_opt ;
};
struct mt352_config {
   u8 demod_address ;
   int adc_clock ;
   int if2 ;
   int no_tuner ;
   int (*demod_init)(struct dvb_frontend * ) ;
};
struct tda10023_config {
   u8 demod_address ;
   u8 invert ;
   u32 xtal ;
   u8 pll_m ;
   u8 pll_p ;
   u8 pll_n ;
   u8 output_mode ;
   u16 deltaf ;
};
struct tda18271_std_map_item {
   u16 if_freq ;
   unsigned char agc_mode : 2 ;
   unsigned char std : 3 ;
   unsigned char fm_rfn : 1 ;
   unsigned char if_lvl : 3 ;
   unsigned char rfagc_top : 7 ;
};
struct tda18271_std_map {
   struct tda18271_std_map_item fm_radio ;
   struct tda18271_std_map_item atv_b ;
   struct tda18271_std_map_item atv_dk ;
   struct tda18271_std_map_item atv_gh ;
   struct tda18271_std_map_item atv_i ;
   struct tda18271_std_map_item atv_l ;
   struct tda18271_std_map_item atv_lc ;
   struct tda18271_std_map_item atv_mn ;
   struct tda18271_std_map_item atsc_6 ;
   struct tda18271_std_map_item dvbt_6 ;
   struct tda18271_std_map_item dvbt_7 ;
   struct tda18271_std_map_item dvbt_8 ;
   struct tda18271_std_map_item qam_6 ;
   struct tda18271_std_map_item qam_7 ;
   struct tda18271_std_map_item qam_8 ;
};
enum tda18271_role {
    TDA18271_MASTER = 0,
    TDA18271_SLAVE = 1
} ;
enum tda18271_i2c_gate {
    TDA18271_GATE_AUTO = 0,
    TDA18271_GATE_ANALOG = 1,
    TDA18271_GATE_DIGITAL = 2
} ;
enum tda18271_output_options {
    TDA18271_OUTPUT_LT_XT_ON = 0,
    TDA18271_OUTPUT_LT_OFF = 1,
    TDA18271_OUTPUT_XT_OFF = 2
} ;
enum tda18271_small_i2c {
    TDA18271_39_BYTE_CHUNK_INIT = 0,
    TDA18271_16_BYTE_CHUNK_INIT = 16,
    TDA18271_08_BYTE_CHUNK_INIT = 8,
    TDA18271_03_BYTE_CHUNK_INIT = 3
} ;
struct tda18271_config {
   struct tda18271_std_map *std_map ;
   enum tda18271_role role ;
   enum tda18271_i2c_gate gate ;
   enum tda18271_output_options output_opt ;
   enum tda18271_small_i2c small_i2c ;
   unsigned char rf_cal_on_startup : 1 ;
   unsigned char delay_cal : 1 ;
   unsigned int config ;
};
struct s921_config {
   u8 demod_address ;
};
struct drxd_config {
   u8 index ;
   u8 pll_address ;
   u8 pll_type ;
   u32 clock ;
   u8 insert_rs_byte ;
   u8 demod_address ;
   u8 demoda_address ;
   u8 demod_revision ;
   u8 disable_i2c_gate_ctrl ;
   u32 IF ;
   s16 (*osc_deviation)(void * , s16 , int ) ;
};
struct cxd2820r_config {
   u8 i2c_address ;
   u8 ts_mode ;
   bool ts_clock_inv ;
   bool if_agc_polarity ;
   bool spec_inv ;
};
struct drxk_config {
   u8 adr ;
   bool single_master ;
   bool no_i2c_bridge ;
   bool parallel_ts ;
   bool dynamic_clk ;
   bool enable_merr_cfg ;
   bool antenna_dvbt ;
   u16 antenna_gpio ;
   u8 mpeg_out_clk_strength ;
   int chunk_size ;
   char const *microcode_name ;
   int qam_demod_parameter_count ;
};
struct tda10071_platform_data {
   u32 clk ;
   u16 i2c_wr_max ;
   u8 ts_mode ;
   bool spec_inv ;
   u8 pll_multiplier ;
   u8 tuner_i2c_addr ;
   struct dvb_frontend *(*get_dvb_frontend)(struct i2c_client * ) ;
};
struct tda18212_config {
   u16 if_dvbt_6 ;
   u16 if_dvbt_7 ;
   u16 if_dvbt_8 ;
   u16 if_dvbt2_5 ;
   u16 if_dvbt2_6 ;
   u16 if_dvbt2_7 ;
   u16 if_dvbt2_8 ;
   u16 if_dvbc ;
   u16 if_atsc_vsb ;
   u16 if_atsc_qam ;
   struct dvb_frontend *fe ;
};
struct a8293_platform_data {
   struct dvb_frontend *dvb_frontend ;
};
struct qt1010_config {
   u8 i2c_address ;
};
struct mb86a20s_config {
   u32 fclk ;
   u8 demod_address ;
   bool is_serial ;
};
struct m88ds3103_platform_data {
   u32 clk ;
   u16 i2c_wr_max ;
   unsigned char ts_mode : 2 ;
   u32 ts_clk ;
   unsigned char ts_clk_pol : 1 ;
   unsigned char spec_inv : 1 ;
   u8 agc ;
   unsigned char agc_inv : 1 ;
   unsigned char clk_out : 2 ;
   unsigned char envelope_mode : 1 ;
   unsigned char lnb_hv_pol : 1 ;
   unsigned char lnb_en_pol : 1 ;
   struct dvb_frontend *(*get_dvb_frontend)(struct i2c_client * ) ;
   struct i2c_adapter *(*get_i2c_adapter)(struct i2c_client * ) ;
   unsigned char attach_in_use : 1 ;
};
struct ts2020_config {
   u8 tuner_address ;
   u32 frequency_div ;
   bool loop_through ;
   unsigned char clk_out : 2 ;
   unsigned char clk_out_div : 5 ;
   bool dont_poll ;
   struct dvb_frontend *fe ;
   unsigned char attach_in_use : 1 ;
   int (*get_agc_pwm)(struct dvb_frontend * , u8 * ) ;
};
struct si2168_config {
   struct dvb_frontend **fe ;
   struct i2c_adapter **i2c_adapter ;
   u8 ts_mode ;
   bool ts_clock_inv ;
   bool ts_clock_gapped ;
};
struct si2157_config {
   struct dvb_frontend *fe ;
   bool inversion ;
   u8 if_port ;
};
struct em28xx_dvb {
   struct dvb_frontend *fe[2U] ;
   struct mutex lock ;
   int nfeeds ;
   struct dvb_adapter adapter ;
   struct dvb_demux demux ;
   struct dmxdev dmxdev ;
   struct dmx_frontend fe_hw ;
   struct dmx_frontend fe_mem ;
   struct dvb_net net ;
   int (*gate_ctrl)(struct dvb_frontend * , int ) ;
   struct semaphore pll_mutex ;
   bool dont_attach_fe1 ;
   int lna_gpio ;
   struct i2c_client *i2c_client_demod ;
   struct i2c_client *i2c_client_tuner ;
   struct i2c_client *i2c_client_sec ;
};
struct __anonstruct_regs_385 {
   unsigned char r[4U] ;
   int len ;
};
struct __anonstruct_regs_388 {
   unsigned char r[4U] ;
   int len ;
};
struct __anonstruct_regs_391 {
   unsigned char r[4U] ;
   int len ;
};
struct __anonstruct_regs_394 {
   unsigned char r[4U] ;
   int len ;
};
struct __anonstruct_regs_397 {
   unsigned char r[4U] ;
   int len ;
};
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
extern int printk(char const * , ...) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern void __xadd_wrong_size(void) ;
__inline static int atomic_sub_and_test(int i , atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %2, %0; sete %1": "+m" (v->counter),
                       "=qm" (c): "er" (i): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5659;
  default:
  __xadd_wrong_size();
  }
  ldv_5659: ;
  return (__ret + i);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern int __request_module(bool , char const * , ...) ;
__inline static void kref_get(struct kref *kref )
{
  bool __warned ;
  int __ret_warn_once ;
  int tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = atomic_add_return(1, & kref->refcount);
  __ret_warn_once = tmp <= 1;
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    __ret_warn_on = ! __warned;
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      warn_slowpath_null("include/linux/kref.h", 47);
    } else {
    }
    tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___1 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return;
}
}
__inline static int kref_sub(struct kref *kref , unsigned int count , void (*release)(struct kref * ) )
{
  int __ret_warn_on ;
  long tmp ;
  int tmp___0 ;
  {
  __ret_warn_on = (unsigned long )release == (unsigned long )((void (*)(struct kref * ))0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/kref.h", 71);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  tmp___0 = atomic_sub_and_test((int )count, & kref->refcount);
  if (tmp___0 != 0) {
    (*release)(kref);
    return (1);
  } else {
  }
  return (0);
}
}
__inline static int kref_put(struct kref *kref , void (*release)(struct kref * ) )
{
  int tmp ;
  {
  tmp = kref_sub(kref, 1U, release);
  return (tmp);
}
}
extern void *__symbol_get(char const * ) ;
extern void __symbol_put(char const * ) ;
bool ldv_try_module_get_5(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_7(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_9(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_10(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_12(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_16(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_19(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_21(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_23(struct module *ldv_func_arg1 ) ;
bool ldv_try_module_get_25(struct module *ldv_func_arg1 ) ;
void ldv_module_put_6(struct module *ldv_func_arg1 ) ;
void ldv_module_put_8(struct module *ldv_func_arg1 ) ;
void ldv_module_put_11(struct module *ldv_func_arg1 ) ;
void ldv_module_put_13(struct module *ldv_func_arg1 ) ;
void ldv_module_put_14(struct module *ldv_func_arg1 ) ;
void ldv_module_put_15(struct module *ldv_func_arg1 ) ;
void ldv_module_put_17(struct module *ldv_func_arg1 ) ;
void ldv_module_put_18(struct module *ldv_func_arg1 ) ;
void ldv_module_put_20(struct module *ldv_func_arg1 ) ;
void ldv_module_put_22(struct module *ldv_func_arg1 ) ;
void ldv_module_put_24(struct module *ldv_func_arg1 ) ;
void ldv_module_put_26(struct module *ldv_func_arg1 ) ;
void ldv_module_put_27(struct module *ldv_func_arg1 ) ;
void ldv_module_put_28(struct module *ldv_func_arg1 ) ;
void ldv_module_put_29(struct module *ldv_func_arg1 ) ;
int ldv_try_module_get(struct module *module ) ;
void ldv_module_put(struct module *module ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
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
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern int __VERIFIER_nondet_int(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int ) ;
void *ldv_malloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = malloc(size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    return ((void *)0);
  } else {
    tmp = calloc(1UL, size);
    p = tmp;
    __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
    return (p);
  }
}
}
void *ldv_init_zalloc(size_t size )
{
  void *p ;
  void *tmp ;
  {
  tmp = calloc(1UL, size);
  p = tmp;
  __VERIFIER_assume((unsigned long )p != (unsigned long )((void *)0));
  return (p);
}
}
void *ldv_memset(void *s , int c , size_t n )
{
  void *tmp ;
  {
  tmp = memset(s, c, n);
  return (tmp);
}
}
int ldv_undef_int(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  return (tmp);
}
}
unsigned long ldv_undef_ulong(void)
{
  unsigned long tmp ;
  {
  tmp = __VERIFIER_nondet_ulong();
  return (tmp);
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
}
}
__inline static long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
struct em28xx *dvb_ops_group0 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_2 ;
int ref_cnt ;
int ldv_state_variable_1 ;
int ldv_state_variable_0 ;
void ldv_initialize_em28xx_ops_1(void) ;
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.val.counter = 0;
  __constr_expr_0.lock.magic = 3735899821U;
  __constr_expr_0.lock.owner_cpu = 4294967295U;
  __constr_expr_0.lock.owner = (void *)-1;
  __constr_expr_0.lock.dep_map.key = 0;
  __constr_expr_0.lock.dep_map.class_cache[0] = 0;
  __constr_expr_0.lock.dep_map.class_cache[1] = 0;
  __constr_expr_0.lock.dep_map.name = "(*sem).lock";
  __constr_expr_0.lock.dep_map.cpu = 0;
  __constr_expr_0.lock.dep_map.ip = 0UL;
  __constr_expr_0.count = (unsigned int )val;
  __constr_expr_0.wait_list.next = & sem->wait_list;
  __constr_expr_0.wait_list.prev = & sem->wait_list;
  *sem = __constr_expr_0;
  lockdep_init_map(& sem->lock.dep_map, "semaphore->lock", & __key, 0);
  return;
}
}
extern void down(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern int usb_set_interface(struct usb_device * , int , int ) ;
extern int i2c_master_send(struct i2c_client const * , char const * , int ) ;
extern struct i2c_client *i2c_new_device(struct i2c_adapter * , struct i2c_board_info const * ) ;
extern void i2c_unregister_device(struct i2c_client * ) ;
extern int dvb_register_adapter(struct dvb_adapter * , char const * , struct module * ,
                                struct device * , short * ) ;
extern int dvb_unregister_adapter(struct dvb_adapter * ) ;
extern int dvb_register_frontend(struct dvb_adapter * , struct dvb_frontend * ) ;
extern int dvb_unregister_frontend(struct dvb_frontend * ) ;
extern void dvb_frontend_detach(struct dvb_frontend * ) ;
extern int dvb_frontend_suspend(struct dvb_frontend * ) ;
extern int dvb_frontend_resume(struct dvb_frontend * ) ;
extern int em28xx_write_reg(struct em28xx * , u16 , u8 ) ;
extern int em28xx_write_reg_bits(struct em28xx * , u16 , u8 , u8 ) ;
extern int em28xx_alloc_urbs(struct em28xx * , enum em28xx_mode , int , int , int ,
                             int ) ;
extern int em28xx_init_usb_xfer(struct em28xx * , enum em28xx_mode , int , int ,
                                int , int , int (*)(struct em28xx * , struct urb * ) ) ;
extern void em28xx_uninit_usb_xfer(struct em28xx * , enum em28xx_mode ) ;
extern void em28xx_stop_urbs(struct em28xx * ) ;
extern int em28xx_set_mode(struct em28xx * , enum em28xx_mode ) ;
extern int em28xx_gpio_set(struct em28xx * , struct em28xx_reg_seq * ) ;
extern int em28xx_register_extension(struct em28xx_ops * ) ;
extern void em28xx_unregister_extension(struct em28xx_ops * ) ;
extern int em28xx_tuner_callback(void * , int , int , int ) ;
extern void em28xx_setup_xc3028(struct em28xx * , struct xc2028_ctrl * ) ;
extern void em28xx_free_device(struct kref * ) ;
extern int dvb_dmx_init(struct dvb_demux * ) ;
extern void dvb_dmx_release(struct dvb_demux * ) ;
extern void dvb_dmx_swfilter(struct dvb_demux * , u8 const * , size_t ) ;
extern void dvb_net_release(struct dvb_net * ) ;
extern int dvb_net_init(struct dvb_adapter * , struct dvb_net * , struct dmx_demux * ) ;
extern int dvb_dmxdev_init(struct dmxdev * , struct dvb_adapter * ) ;
extern void dvb_dmxdev_release(struct dmxdev * ) ;
extern void gpio_free(unsigned int ) ;
extern int gpio_request_one(unsigned int , unsigned long , char const * ) ;
__inline static int mt352_write(struct dvb_frontend *fe , u8 const *buf , int len )
{
  int r ;
  {
  r = 0;
  if ((unsigned long )fe->ops.write != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                 u8 const * , int ))0)) {
    r = (*(fe->ops.write))(fe, buf, len);
  } else {
  }
  return (r);
}
}
static unsigned int debug ;
static short adapter_nr[8U] =
  { -1, -1, -1, -1,
        -1, -1, -1, -1};
__inline static void print_err_status(struct em28xx *dev , int packet , int status )
{
  char *errmsg ;
  {
  errmsg = (char *)"Unknown";
  switch (status) {
  case -2:
  errmsg = (char *)"unlinked synchronuously";
  goto ldv_53549;
  case -104:
  errmsg = (char *)"unlinked asynchronuously";
  goto ldv_53549;
  case -63:
  errmsg = (char *)"Buffer error (overrun)";
  goto ldv_53549;
  case -32:
  errmsg = (char *)"Stalled (device not responding)";
  goto ldv_53549;
  case -75:
  errmsg = (char *)"Babble (bad cable?)";
  goto ldv_53549;
  case -71:
  errmsg = (char *)"Bit-stuff error (bad cable?)";
  goto ldv_53549;
  case -84:
  errmsg = (char *)"CRC/Timeout (could be anything)";
  goto ldv_53549;
  case -62:
  errmsg = (char *)"Device does not respond";
  goto ldv_53549;
  }
  ldv_53549: ;
  if (packet < 0) {
    if (debug != 0U) {
      printk("\017%s/2-dvb: URB status %d [%s].\n", (char *)(& dev->name), status,
             errmsg);
    } else {
    }
  } else
  if (debug != 0U) {
    printk("\017%s/2-dvb: URB packet %d, status %d [%s].\n", (char *)(& dev->name),
           packet, status, errmsg);
  } else {
  }
  return;
}
}
__inline static int em28xx_dvb_urb_data_copy(struct em28xx *dev , struct urb *urb )
{
  int xfer_bulk ;
  int num_packets ;
  int i ;
  {
  if ((unsigned long )dev == (unsigned long )((struct em28xx *)0)) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
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
  goto ldv_53566;
  ldv_53565: ;
  if (xfer_bulk != 0) {
    if (urb->status < 0) {
      print_err_status(dev, i, urb->status);
      if (urb->status != -71) {
        goto ldv_53564;
      } else {
      }
    } else {
    }
    if (urb->actual_length == 0U) {
      goto ldv_53564;
    } else {
    }
    dvb_dmx_swfilter(& (dev->dvb)->demux, (u8 const *)urb->transfer_buffer, (size_t )urb->actual_length);
  } else {
    if (urb->iso_frame_desc[i].status < 0) {
      print_err_status(dev, i, urb->iso_frame_desc[i].status);
      if (urb->iso_frame_desc[i].status != -71) {
        goto ldv_53564;
      } else {
      }
    } else {
    }
    if (urb->iso_frame_desc[i].actual_length == 0U) {
      goto ldv_53564;
    } else {
    }
    dvb_dmx_swfilter(& (dev->dvb)->demux, (u8 const *)urb->transfer_buffer + (unsigned long )urb->iso_frame_desc[i].offset,
                     (size_t )urb->iso_frame_desc[i].actual_length);
  }
  ldv_53564:
  i = i + 1;
  ldv_53566: ;
  if (i < num_packets) {
    goto ldv_53565;
  } else {
  }
  return (0);
}
}
static int em28xx_start_streaming(struct em28xx_dvb *dvb )
{
  int rc ;
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  int dvb_max_packet_size ;
  int packet_multiplier ;
  int dvb_alt ;
  int tmp ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)dvb->adapter.priv;
  dev = i2c_bus->dev;
  if ((unsigned int )*((unsigned char *)dev + 8540UL) != 0U) {
    if ((unsigned int )dev->dvb_ep_bulk == 0U) {
      return (-19);
    } else {
    }
    dvb_max_packet_size = 512;
    packet_multiplier = 384;
    dvb_alt = 0;
  } else {
    if ((unsigned int )dev->dvb_ep_isoc == 0U) {
      return (-19);
    } else {
    }
    dvb_max_packet_size = (int )dev->dvb_max_pkt_size_isoc;
    if (dvb_max_packet_size < 0) {
      return (dvb_max_packet_size);
    } else {
    }
    packet_multiplier = 64;
    dvb_alt = dev->dvb_alt_isoc;
  }
  usb_set_interface(dev->udev, (int )dev->ifnum, dvb_alt);
  rc = em28xx_set_mode(dev, 2);
  if (rc < 0) {
    return (rc);
  } else {
  }
  if (debug != 0U) {
    printk("\017%s/2-dvb: Using %d buffers each with %d x %d bytes, alternate %d\n",
           (char *)(& dev->name), 5, packet_multiplier, dvb_max_packet_size, dvb_alt);
  } else {
  }
  tmp = em28xx_init_usb_xfer(dev, 2, (int )dev->dvb_xfer_bulk, 5, dvb_max_packet_size,
                             packet_multiplier, & em28xx_dvb_urb_data_copy);
  return (tmp);
}
}
static int em28xx_stop_streaming(struct em28xx_dvb *dvb )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)dvb->adapter.priv;
  dev = i2c_bus->dev;
  em28xx_stop_urbs(dev);
  return (0);
}
}
static int em28xx_start_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct em28xx_dvb *dvb ;
  int rc ;
  int ret ;
  {
  demux = feed->demux;
  dvb = (struct em28xx_dvb *)demux->priv;
  if ((unsigned long )demux->dmx.frontend == (unsigned long )((struct dmx_frontend *)0)) {
    return (-22);
  } else {
  }
  mutex_lock_nested(& dvb->lock, 0U);
  dvb->nfeeds = dvb->nfeeds + 1;
  rc = dvb->nfeeds;
  if (dvb->nfeeds == 1) {
    ret = em28xx_start_streaming(dvb);
    if (ret < 0) {
      rc = ret;
    } else {
    }
  } else {
  }
  mutex_unlock(& dvb->lock);
  return (rc);
}
}
static int em28xx_stop_feed(struct dvb_demux_feed *feed )
{
  struct dvb_demux *demux ;
  struct em28xx_dvb *dvb ;
  int err ;
  {
  demux = feed->demux;
  dvb = (struct em28xx_dvb *)demux->priv;
  err = 0;
  mutex_lock_nested(& dvb->lock, 0U);
  dvb->nfeeds = dvb->nfeeds - 1;
  if (dvb->nfeeds == 0) {
    err = em28xx_stop_streaming(dvb);
  } else {
  }
  mutex_unlock(& dvb->lock);
  return (err);
}
}
static int em28xx_dvb_bus_ctrl(struct dvb_frontend *fe , int acquire )
{
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  int tmp ;
  int tmp___0 ;
  {
  i2c_bus = (struct em28xx_i2c_bus *)(fe->dvb)->priv;
  dev = i2c_bus->dev;
  if (acquire != 0) {
    tmp = em28xx_set_mode(dev, 2);
    return (tmp);
  } else {
    tmp___0 = em28xx_set_mode(dev, 0);
    return (tmp___0);
  }
}
}
static struct lgdt330x_config em2880_lgdt3303_dev = {14U, 2, 0, 0, 0, 0};
static struct lgdt3305_config em2870_lgdt3304_dev =
     {14U, 4000U, 3250U, (unsigned short)0, (unsigned short)0, (unsigned short)0, 1U,
    1U, (unsigned char)0, 0, 1, 0, 1, 1};
static struct lgdt3305_config em2874_lgdt3305_dev =
     {14U, 4000U, 3250U, (unsigned short)0, (unsigned short)0, (unsigned short)0, 0U,
    1U, (unsigned char)0, 1, 1, 0, 1, 0};
static struct lgdt3305_config em2874_lgdt3305_nogate_dev =
     {14U, 3600U, 3600U, (unsigned short)0, (unsigned short)0, (unsigned short)0, 1U,
    1U, (unsigned char)0, 1, 1, 0, 1, 0};
static struct s921_config sharp_isdbt = {24U};
static struct zl10353_config em28xx_zl10353_with_xc3028 =
     {15U, 0, 45600, 1, 1, (unsigned char)0, (unsigned char)0, (unsigned char)0};
static struct s5h1409_config em28xx_s5h1409_with_xc3028 =
     {25U, 0U, 0U, (unsigned short)0, 0U, 1U, 1U, (unsigned char)0};
static struct tda18271_std_map kworld_a340_std_map =
     {{(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {3250U, 3U, 0U, (unsigned char)0,
                                                               1U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {4000U, 3U, 1U, (unsigned char)0,
                                                               1U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}};
static struct tda18271_config kworld_a340_config =
     {& kworld_a340_std_map, 0, 0, 0, 0, (unsigned char)0, (unsigned char)0, 0U};
static struct tda18271_config kworld_ub435q_v2_config =
     {& kworld_a340_std_map, 0, 2, 0, 0, (unsigned char)0, (unsigned char)0, 0U};
static struct tda18212_config kworld_ub435q_v3_config =
     {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0,
    (unsigned short)0, (unsigned short)0, (unsigned short)0, 3600U, 3600U, 0};
static struct zl10353_config em28xx_zl10353_xc3028_no_i2c_gate =
     {15U, 0, 45600, 1, 1, 1U, (unsigned char)0, (unsigned char)0};
static struct drxd_config em28xx_drxd =
     {(unsigned char)0, (unsigned char)0, 0U, 12000U, 1U, 112U, (unsigned char)0, 162U,
    1U, 42800000U, 0};
static struct drxk_config terratec_h5_drxk =
     {41U, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned short)0, (unsigned char)0,
    0, "dvb-usb-terratec-h5-drxk.fw", 2};
static struct drxk_config hauppauge_930c_drxk =
     {41U, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned short)0, (unsigned char)0,
    56, "dvb-usb-hauppauge-hvr930c-drxk.fw", 2};
static struct drxk_config terratec_htc_stick_drxk =
     {41U, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, 1, 6U, (unsigned char)0, 54, "dvb-usb-terratec-htc-stick-drxk.fw",
    2};
static struct drxk_config maxmedia_ub425_tc_drxk =
     {41U, 1, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, (unsigned short)0, (unsigned char)0,
    62, "dvb-demod-drxk-01.fw", 2};
static struct drxk_config pctv_520e_drxk =
     {41U, 1, (_Bool)0, (_Bool)0, (_Bool)0, (_Bool)0, 1, 4U, (unsigned char)0, 58, "dvb-demod-drxk-pctv.fw",
    2};
static int drxk_gate_ctrl(struct dvb_frontend *fe , int enable )
{
  struct em28xx_dvb *dvb ;
  int status ;
  {
  dvb = (struct em28xx_dvb *)fe->sec_priv;
  if ((unsigned long )dvb == (unsigned long )((struct em28xx_dvb *)0)) {
    return (-22);
  } else {
  }
  if (enable != 0) {
    down(& dvb->pll_mutex);
    status = (*(dvb->gate_ctrl))(fe, 1);
  } else {
    status = (*(dvb->gate_ctrl))(fe, 0);
    up(& dvb->pll_mutex);
  }
  return (status);
}
}
static void hauppauge_hvr930c_init(struct em28xx *dev )
{
  int i ;
  struct em28xx_reg_seq hauppauge_hvr930c_init___0[4U] ;
  struct em28xx_reg_seq hauppauge_hvr930c_end[11U] ;
  struct __anonstruct_regs_385 regs[13U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  hauppauge_hvr930c_init___0[0].reg = 128;
  hauppauge_hvr930c_init___0[0].val = 255U;
  hauppauge_hvr930c_init___0[0].mask = 255U;
  hauppauge_hvr930c_init___0[0].sleep = 101;
  hauppauge_hvr930c_init___0[1].reg = 128;
  hauppauge_hvr930c_init___0[1].val = 251U;
  hauppauge_hvr930c_init___0[1].mask = 255U;
  hauppauge_hvr930c_init___0[1].sleep = 50;
  hauppauge_hvr930c_init___0[2].reg = 128;
  hauppauge_hvr930c_init___0[2].val = 255U;
  hauppauge_hvr930c_init___0[2].mask = 255U;
  hauppauge_hvr930c_init___0[2].sleep = 184;
  hauppauge_hvr930c_init___0[3].reg = -1;
  hauppauge_hvr930c_init___0[3].val = 255U;
  hauppauge_hvr930c_init___0[3].mask = 255U;
  hauppauge_hvr930c_init___0[3].sleep = -1;
  hauppauge_hvr930c_end[0].reg = 128;
  hauppauge_hvr930c_end[0].val = 239U;
  hauppauge_hvr930c_end[0].mask = 255U;
  hauppauge_hvr930c_end[0].sleep = 1;
  hauppauge_hvr930c_end[1].reg = 128;
  hauppauge_hvr930c_end[1].val = 175U;
  hauppauge_hvr930c_end[1].mask = 255U;
  hauppauge_hvr930c_end[1].sleep = 101;
  hauppauge_hvr930c_end[2].reg = 128;
  hauppauge_hvr930c_end[2].val = 239U;
  hauppauge_hvr930c_end[2].mask = 255U;
  hauppauge_hvr930c_end[2].sleep = 118;
  hauppauge_hvr930c_end[3].reg = 128;
  hauppauge_hvr930c_end[3].val = 239U;
  hauppauge_hvr930c_end[3].mask = 255U;
  hauppauge_hvr930c_end[3].sleep = 1;
  hauppauge_hvr930c_end[4].reg = 128;
  hauppauge_hvr930c_end[4].val = 207U;
  hauppauge_hvr930c_end[4].mask = 255U;
  hauppauge_hvr930c_end[4].sleep = 11;
  hauppauge_hvr930c_end[5].reg = 128;
  hauppauge_hvr930c_end[5].val = 239U;
  hauppauge_hvr930c_end[5].mask = 255U;
  hauppauge_hvr930c_end[5].sleep = 64;
  hauppauge_hvr930c_end[6].reg = 128;
  hauppauge_hvr930c_end[6].val = 207U;
  hauppauge_hvr930c_end[6].mask = 255U;
  hauppauge_hvr930c_end[6].sleep = 101;
  hauppauge_hvr930c_end[7].reg = 128;
  hauppauge_hvr930c_end[7].val = 239U;
  hauppauge_hvr930c_end[7].mask = 255U;
  hauppauge_hvr930c_end[7].sleep = 101;
  hauppauge_hvr930c_end[8].reg = 128;
  hauppauge_hvr930c_end[8].val = 207U;
  hauppauge_hvr930c_end[8].mask = 255U;
  hauppauge_hvr930c_end[8].sleep = 11;
  hauppauge_hvr930c_end[9].reg = 128;
  hauppauge_hvr930c_end[9].val = 239U;
  hauppauge_hvr930c_end[9].mask = 255U;
  hauppauge_hvr930c_end[9].sleep = 101;
  hauppauge_hvr930c_end[10].reg = -1;
  hauppauge_hvr930c_end[10].val = 255U;
  hauppauge_hvr930c_end[10].mask = 255U;
  hauppauge_hvr930c_end[10].sleep = -1;
  regs[0].r[0] = 6U;
  regs[0].r[1] = 2U;
  regs[0].r[2] = 0U;
  regs[0].r[3] = 49U;
  regs[0].len = 4;
  regs[1].r[0] = 1U;
  regs[1].r[1] = 2U;
  tmp = 2U;
  while (1) {
    if (tmp >= 4U) {
      break;
    } else {
    }
    regs[1].r[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  regs[1].len = 2;
  regs[2].r[0] = 1U;
  regs[2].r[1] = 2U;
  regs[2].r[2] = 0U;
  regs[2].r[3] = 198U;
  regs[2].len = 4;
  regs[3].r[0] = 1U;
  regs[3].r[1] = 0U;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 4U) {
      break;
    } else {
    }
    regs[3].r[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  regs[3].len = 2;
  regs[4].r[0] = 1U;
  regs[4].r[1] = 0U;
  regs[4].r[2] = 255U;
  regs[4].r[3] = 175U;
  regs[4].len = 4;
  regs[5].r[0] = 1U;
  regs[5].r[1] = 0U;
  regs[5].r[2] = 3U;
  regs[5].r[3] = 160U;
  regs[5].len = 4;
  regs[6].r[0] = 1U;
  regs[6].r[1] = 0U;
  tmp___1 = 2U;
  while (1) {
    if (tmp___1 >= 4U) {
      break;
    } else {
    }
    regs[6].r[tmp___1] = (unsigned char)0;
    tmp___1 = tmp___1 + 1U;
  }
  regs[6].len = 2;
  regs[7].r[0] = 1U;
  regs[7].r[1] = 0U;
  regs[7].r[2] = 115U;
  regs[7].r[3] = 175U;
  regs[7].len = 4;
  regs[8].r[0] = 4U;
  regs[8].r[1] = 0U;
  tmp___2 = 2U;
  while (1) {
    if (tmp___2 >= 4U) {
      break;
    } else {
    }
    regs[8].r[tmp___2] = (unsigned char)0;
    tmp___2 = tmp___2 + 1U;
  }
  regs[8].len = 2;
  regs[9].r[0] = 0U;
  regs[9].r[1] = 4U;
  tmp___3 = 2U;
  while (1) {
    if (tmp___3 >= 4U) {
      break;
    } else {
    }
    regs[9].r[tmp___3] = (unsigned char)0;
    tmp___3 = tmp___3 + 1U;
  }
  regs[9].len = 2;
  regs[10].r[0] = 0U;
  regs[10].r[1] = 4U;
  regs[10].r[2] = 0U;
  regs[10].r[3] = 10U;
  regs[10].len = 4;
  regs[11].r[0] = 4U;
  regs[11].r[1] = 20U;
  tmp___4 = 2U;
  while (1) {
    if (tmp___4 >= 4U) {
      break;
    } else {
    }
    regs[11].r[tmp___4] = (unsigned char)0;
    tmp___4 = tmp___4 + 1U;
  }
  regs[11].len = 2;
  regs[12].r[0] = 4U;
  regs[12].r[1] = 20U;
  regs[12].r[2] = 0U;
  regs[12].r[3] = 0U;
  regs[12].len = 4;
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& hauppauge_hvr930c_init___0));
  em28xx_write_reg(dev, 6, 64);
  msleep(10U);
  em28xx_write_reg(dev, 6, 68);
  msleep(10U);
  dev->i2c_client[dev->def_i2c_bus].addr = 65U;
  i = 0;
  goto ldv_53638;
  ldv_53637:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs[i].r), regs[i].len);
  i = i + 1;
  ldv_53638: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_53637;
  } else {
  }
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& hauppauge_hvr930c_end));
  msleep(100U);
  em28xx_write_reg(dev, 6, 68);
  msleep(30U);
  em28xx_write_reg(dev, 6, 69);
  msleep(10U);
  return;
}
}
static void terratec_h5_init(struct em28xx *dev )
{
  int i ;
  struct em28xx_reg_seq terratec_h5_init___0[5U] ;
  struct em28xx_reg_seq terratec_h5_end[4U] ;
  struct __anonstruct_regs_388 regs[13U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  terratec_h5_init___0[0].reg = 8;
  terratec_h5_init___0[0].val = 255U;
  terratec_h5_init___0[0].mask = 255U;
  terratec_h5_init___0[0].sleep = 10;
  terratec_h5_init___0[1].reg = 128;
  terratec_h5_init___0[1].val = 246U;
  terratec_h5_init___0[1].mask = 255U;
  terratec_h5_init___0[1].sleep = 100;
  terratec_h5_init___0[2].reg = 128;
  terratec_h5_init___0[2].val = 242U;
  terratec_h5_init___0[2].mask = 255U;
  terratec_h5_init___0[2].sleep = 50;
  terratec_h5_init___0[3].reg = 128;
  terratec_h5_init___0[3].val = 246U;
  terratec_h5_init___0[3].mask = 255U;
  terratec_h5_init___0[3].sleep = 100;
  terratec_h5_init___0[4].reg = -1;
  terratec_h5_init___0[4].val = 255U;
  terratec_h5_init___0[4].mask = 255U;
  terratec_h5_init___0[4].sleep = -1;
  terratec_h5_end[0].reg = 128;
  terratec_h5_end[0].val = 230U;
  terratec_h5_end[0].mask = 255U;
  terratec_h5_end[0].sleep = 100;
  terratec_h5_end[1].reg = 128;
  terratec_h5_end[1].val = 166U;
  terratec_h5_end[1].mask = 255U;
  terratec_h5_end[1].sleep = 50;
  terratec_h5_end[2].reg = 128;
  terratec_h5_end[2].val = 230U;
  terratec_h5_end[2].mask = 255U;
  terratec_h5_end[2].sleep = 100;
  terratec_h5_end[3].reg = -1;
  terratec_h5_end[3].val = 255U;
  terratec_h5_end[3].mask = 255U;
  terratec_h5_end[3].sleep = -1;
  regs[0].r[0] = 6U;
  regs[0].r[1] = 2U;
  regs[0].r[2] = 0U;
  regs[0].r[3] = 49U;
  regs[0].len = 4;
  regs[1].r[0] = 1U;
  regs[1].r[1] = 2U;
  tmp = 2U;
  while (1) {
    if (tmp >= 4U) {
      break;
    } else {
    }
    regs[1].r[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  regs[1].len = 2;
  regs[2].r[0] = 1U;
  regs[2].r[1] = 2U;
  regs[2].r[2] = 0U;
  regs[2].r[3] = 198U;
  regs[2].len = 4;
  regs[3].r[0] = 1U;
  regs[3].r[1] = 0U;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 4U) {
      break;
    } else {
    }
    regs[3].r[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  regs[3].len = 2;
  regs[4].r[0] = 1U;
  regs[4].r[1] = 0U;
  regs[4].r[2] = 255U;
  regs[4].r[3] = 175U;
  regs[4].len = 4;
  regs[5].r[0] = 1U;
  regs[5].r[1] = 0U;
  regs[5].r[2] = 3U;
  regs[5].r[3] = 160U;
  regs[5].len = 4;
  regs[6].r[0] = 1U;
  regs[6].r[1] = 0U;
  tmp___1 = 2U;
  while (1) {
    if (tmp___1 >= 4U) {
      break;
    } else {
    }
    regs[6].r[tmp___1] = (unsigned char)0;
    tmp___1 = tmp___1 + 1U;
  }
  regs[6].len = 2;
  regs[7].r[0] = 1U;
  regs[7].r[1] = 0U;
  regs[7].r[2] = 115U;
  regs[7].r[3] = 175U;
  regs[7].len = 4;
  regs[8].r[0] = 4U;
  regs[8].r[1] = 0U;
  tmp___2 = 2U;
  while (1) {
    if (tmp___2 >= 4U) {
      break;
    } else {
    }
    regs[8].r[tmp___2] = (unsigned char)0;
    tmp___2 = tmp___2 + 1U;
  }
  regs[8].len = 2;
  regs[9].r[0] = 0U;
  regs[9].r[1] = 4U;
  tmp___3 = 2U;
  while (1) {
    if (tmp___3 >= 4U) {
      break;
    } else {
    }
    regs[9].r[tmp___3] = (unsigned char)0;
    tmp___3 = tmp___3 + 1U;
  }
  regs[9].len = 2;
  regs[10].r[0] = 0U;
  regs[10].r[1] = 4U;
  regs[10].r[2] = 0U;
  regs[10].r[3] = 10U;
  regs[10].len = 4;
  regs[11].r[0] = 4U;
  regs[11].r[1] = 20U;
  tmp___4 = 2U;
  while (1) {
    if (tmp___4 >= 4U) {
      break;
    } else {
    }
    regs[11].r[tmp___4] = (unsigned char)0;
    tmp___4 = tmp___4 + 1U;
  }
  regs[11].len = 2;
  regs[12].r[0] = 4U;
  regs[12].r[1] = 20U;
  regs[12].r[2] = 0U;
  regs[12].r[3] = 0U;
  regs[12].len = 4;
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_h5_init___0));
  em28xx_write_reg(dev, 6, 64);
  msleep(10U);
  em28xx_write_reg(dev, 6, 69);
  msleep(10U);
  dev->i2c_client[dev->def_i2c_bus].addr = 65U;
  i = 0;
  goto ldv_53653;
  ldv_53652:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs[i].r), regs[i].len);
  i = i + 1;
  ldv_53653: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_53652;
  } else {
  }
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_h5_end));
  return;
}
}
static void terratec_htc_stick_init(struct em28xx *dev )
{
  int i ;
  struct em28xx_reg_seq terratec_htc_stick_init___0[5U] ;
  struct em28xx_reg_seq terratec_htc_stick_end[3U] ;
  struct __anonstruct_regs_391 regs[5U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  terratec_htc_stick_init___0[0].reg = 8;
  terratec_htc_stick_init___0[0].val = 255U;
  terratec_htc_stick_init___0[0].mask = 255U;
  terratec_htc_stick_init___0[0].sleep = 10;
  terratec_htc_stick_init___0[1].reg = 128;
  terratec_htc_stick_init___0[1].val = 246U;
  terratec_htc_stick_init___0[1].mask = 255U;
  terratec_htc_stick_init___0[1].sleep = 100;
  terratec_htc_stick_init___0[2].reg = 128;
  terratec_htc_stick_init___0[2].val = 230U;
  terratec_htc_stick_init___0[2].mask = 255U;
  terratec_htc_stick_init___0[2].sleep = 50;
  terratec_htc_stick_init___0[3].reg = 128;
  terratec_htc_stick_init___0[3].val = 246U;
  terratec_htc_stick_init___0[3].mask = 255U;
  terratec_htc_stick_init___0[3].sleep = 100;
  terratec_htc_stick_init___0[4].reg = -1;
  terratec_htc_stick_init___0[4].val = 255U;
  terratec_htc_stick_init___0[4].mask = 255U;
  terratec_htc_stick_init___0[4].sleep = -1;
  terratec_htc_stick_end[0].reg = 128;
  terratec_htc_stick_end[0].val = 182U;
  terratec_htc_stick_end[0].mask = 255U;
  terratec_htc_stick_end[0].sleep = 100;
  terratec_htc_stick_end[1].reg = 128;
  terratec_htc_stick_end[1].val = 246U;
  terratec_htc_stick_end[1].mask = 255U;
  terratec_htc_stick_end[1].sleep = 50;
  terratec_htc_stick_end[2].reg = -1;
  terratec_htc_stick_end[2].val = 255U;
  terratec_htc_stick_end[2].mask = 255U;
  terratec_htc_stick_end[2].sleep = -1;
  regs[0].r[0] = 6U;
  regs[0].r[1] = 2U;
  regs[0].r[2] = 0U;
  regs[0].r[3] = 49U;
  regs[0].len = 4;
  regs[1].r[0] = 1U;
  regs[1].r[1] = 2U;
  tmp = 2U;
  while (1) {
    if (tmp >= 4U) {
      break;
    } else {
    }
    regs[1].r[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  regs[1].len = 2;
  regs[2].r[0] = 1U;
  regs[2].r[1] = 2U;
  regs[2].r[2] = 0U;
  regs[2].r[3] = 198U;
  regs[2].len = 4;
  regs[3].r[0] = 1U;
  regs[3].r[1] = 0U;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 4U) {
      break;
    } else {
    }
    regs[3].r[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  regs[3].len = 2;
  regs[4].r[0] = 1U;
  regs[4].r[1] = 0U;
  regs[4].r[2] = 255U;
  regs[4].r[3] = 175U;
  regs[4].len = 4;
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_htc_stick_init___0));
  em28xx_write_reg(dev, 6, 64);
  msleep(10U);
  em28xx_write_reg(dev, 6, 68);
  msleep(10U);
  dev->i2c_client[dev->def_i2c_bus].addr = 65U;
  i = 0;
  goto ldv_53668;
  ldv_53667:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs[i].r), regs[i].len);
  i = i + 1;
  ldv_53668: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_53667;
  } else {
  }
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_htc_stick_end));
  return;
}
}
static void terratec_htc_usb_xs_init(struct em28xx *dev )
{
  int i ;
  struct em28xx_reg_seq terratec_htc_usb_xs_init___0[5U] ;
  struct em28xx_reg_seq terratec_htc_usb_xs_end[4U] ;
  struct __anonstruct_regs_394 regs[13U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  {
  terratec_htc_usb_xs_init___0[0].reg = 8;
  terratec_htc_usb_xs_init___0[0].val = 255U;
  terratec_htc_usb_xs_init___0[0].mask = 255U;
  terratec_htc_usb_xs_init___0[0].sleep = 10;
  terratec_htc_usb_xs_init___0[1].reg = 128;
  terratec_htc_usb_xs_init___0[1].val = 178U;
  terratec_htc_usb_xs_init___0[1].mask = 255U;
  terratec_htc_usb_xs_init___0[1].sleep = 100;
  terratec_htc_usb_xs_init___0[2].reg = 128;
  terratec_htc_usb_xs_init___0[2].val = 178U;
  terratec_htc_usb_xs_init___0[2].mask = 255U;
  terratec_htc_usb_xs_init___0[2].sleep = 50;
  terratec_htc_usb_xs_init___0[3].reg = 128;
  terratec_htc_usb_xs_init___0[3].val = 182U;
  terratec_htc_usb_xs_init___0[3].mask = 255U;
  terratec_htc_usb_xs_init___0[3].sleep = 100;
  terratec_htc_usb_xs_init___0[4].reg = -1;
  terratec_htc_usb_xs_init___0[4].val = 255U;
  terratec_htc_usb_xs_init___0[4].mask = 255U;
  terratec_htc_usb_xs_init___0[4].sleep = -1;
  terratec_htc_usb_xs_end[0].reg = 128;
  terratec_htc_usb_xs_end[0].val = 166U;
  terratec_htc_usb_xs_end[0].mask = 255U;
  terratec_htc_usb_xs_end[0].sleep = 100;
  terratec_htc_usb_xs_end[1].reg = 128;
  terratec_htc_usb_xs_end[1].val = 166U;
  terratec_htc_usb_xs_end[1].mask = 255U;
  terratec_htc_usb_xs_end[1].sleep = 50;
  terratec_htc_usb_xs_end[2].reg = 128;
  terratec_htc_usb_xs_end[2].val = 230U;
  terratec_htc_usb_xs_end[2].mask = 255U;
  terratec_htc_usb_xs_end[2].sleep = 100;
  terratec_htc_usb_xs_end[3].reg = -1;
  terratec_htc_usb_xs_end[3].val = 255U;
  terratec_htc_usb_xs_end[3].mask = 255U;
  terratec_htc_usb_xs_end[3].sleep = -1;
  regs[0].r[0] = 6U;
  regs[0].r[1] = 2U;
  regs[0].r[2] = 0U;
  regs[0].r[3] = 49U;
  regs[0].len = 4;
  regs[1].r[0] = 1U;
  regs[1].r[1] = 2U;
  tmp = 2U;
  while (1) {
    if (tmp >= 4U) {
      break;
    } else {
    }
    regs[1].r[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  regs[1].len = 2;
  regs[2].r[0] = 1U;
  regs[2].r[1] = 2U;
  regs[2].r[2] = 0U;
  regs[2].r[3] = 198U;
  regs[2].len = 4;
  regs[3].r[0] = 1U;
  regs[3].r[1] = 0U;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 4U) {
      break;
    } else {
    }
    regs[3].r[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  regs[3].len = 2;
  regs[4].r[0] = 1U;
  regs[4].r[1] = 0U;
  regs[4].r[2] = 255U;
  regs[4].r[3] = 175U;
  regs[4].len = 4;
  regs[5].r[0] = 1U;
  regs[5].r[1] = 0U;
  regs[5].r[2] = 3U;
  regs[5].r[3] = 160U;
  regs[5].len = 4;
  regs[6].r[0] = 1U;
  regs[6].r[1] = 0U;
  tmp___1 = 2U;
  while (1) {
    if (tmp___1 >= 4U) {
      break;
    } else {
    }
    regs[6].r[tmp___1] = (unsigned char)0;
    tmp___1 = tmp___1 + 1U;
  }
  regs[6].len = 2;
  regs[7].r[0] = 1U;
  regs[7].r[1] = 0U;
  regs[7].r[2] = 115U;
  regs[7].r[3] = 175U;
  regs[7].len = 4;
  regs[8].r[0] = 4U;
  regs[8].r[1] = 0U;
  tmp___2 = 2U;
  while (1) {
    if (tmp___2 >= 4U) {
      break;
    } else {
    }
    regs[8].r[tmp___2] = (unsigned char)0;
    tmp___2 = tmp___2 + 1U;
  }
  regs[8].len = 2;
  regs[9].r[0] = 0U;
  regs[9].r[1] = 4U;
  tmp___3 = 2U;
  while (1) {
    if (tmp___3 >= 4U) {
      break;
    } else {
    }
    regs[9].r[tmp___3] = (unsigned char)0;
    tmp___3 = tmp___3 + 1U;
  }
  regs[9].len = 2;
  regs[10].r[0] = 0U;
  regs[10].r[1] = 4U;
  regs[10].r[2] = 0U;
  regs[10].r[3] = 10U;
  regs[10].len = 4;
  regs[11].r[0] = 4U;
  regs[11].r[1] = 20U;
  tmp___4 = 2U;
  while (1) {
    if (tmp___4 >= 4U) {
      break;
    } else {
    }
    regs[11].r[tmp___4] = (unsigned char)0;
    tmp___4 = tmp___4 + 1U;
  }
  regs[11].len = 2;
  regs[12].r[0] = 4U;
  regs[12].r[1] = 20U;
  regs[12].r[2] = 0U;
  regs[12].r[3] = 0U;
  regs[12].len = 4;
  em28xx_write_reg(dev, 6, 64);
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_htc_usb_xs_init___0));
  em28xx_write_reg(dev, 6, 64);
  msleep(10U);
  em28xx_write_reg(dev, 6, 68);
  msleep(10U);
  dev->i2c_client[dev->def_i2c_bus].addr = 65U;
  i = 0;
  goto ldv_53683;
  ldv_53682:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs[i].r), regs[i].len);
  i = i + 1;
  ldv_53683: ;
  if ((unsigned int )i <= 12U) {
    goto ldv_53682;
  } else {
  }
  em28xx_gpio_set(dev, (struct em28xx_reg_seq *)(& terratec_htc_usb_xs_end));
  return;
}
}
static void pctv_520e_init(struct em28xx *dev )
{
  int i ;
  struct __anonstruct_regs_397 regs[8U] ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  regs[0].r[0] = 6U;
  regs[0].r[1] = 2U;
  regs[0].r[2] = 0U;
  regs[0].r[3] = 49U;
  regs[0].len = 4;
  regs[1].r[0] = 1U;
  regs[1].r[1] = 2U;
  tmp = 2U;
  while (1) {
    if (tmp >= 4U) {
      break;
    } else {
    }
    regs[1].r[tmp] = (unsigned char)0;
    tmp = tmp + 1U;
  }
  regs[1].len = 2;
  regs[2].r[0] = 1U;
  regs[2].r[1] = 2U;
  regs[2].r[2] = 0U;
  regs[2].r[3] = 198U;
  regs[2].len = 4;
  regs[3].r[0] = 1U;
  regs[3].r[1] = 0U;
  tmp___0 = 2U;
  while (1) {
    if (tmp___0 >= 4U) {
      break;
    } else {
    }
    regs[3].r[tmp___0] = (unsigned char)0;
    tmp___0 = tmp___0 + 1U;
  }
  regs[3].len = 2;
  regs[4].r[0] = 1U;
  regs[4].r[1] = 0U;
  regs[4].r[2] = 255U;
  regs[4].r[3] = 175U;
  regs[4].len = 4;
  regs[5].r[0] = 1U;
  regs[5].r[1] = 0U;
  regs[5].r[2] = 3U;
  regs[5].r[3] = 160U;
  regs[5].len = 4;
  regs[6].r[0] = 1U;
  regs[6].r[1] = 0U;
  tmp___1 = 2U;
  while (1) {
    if (tmp___1 >= 4U) {
      break;
    } else {
    }
    regs[6].r[tmp___1] = (unsigned char)0;
    tmp___1 = tmp___1 + 1U;
  }
  regs[6].len = 2;
  regs[7].r[0] = 1U;
  regs[7].r[1] = 0U;
  regs[7].r[2] = 115U;
  regs[7].r[3] = 175U;
  regs[7].len = 4;
  dev->i2c_client[dev->def_i2c_bus].addr = 65U;
  i = 0;
  goto ldv_53696;
  ldv_53695:
  i2c_master_send((struct i2c_client const *)(& dev->i2c_client) + (unsigned long )dev->def_i2c_bus,
                  (char const *)(& regs[i].r), regs[i].len);
  i = i + 1;
  ldv_53696: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_53695;
  } else {
  }
  return;
}
}
static int em28xx_pctv_290e_set_lna(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  struct em28xx_dvb *dvb ;
  int ret ;
  unsigned long flags ;
  {
  c = & fe->dtv_property_cache;
  i2c_bus = (struct em28xx_i2c_bus *)(fe->dvb)->priv;
  dev = i2c_bus->dev;
  dvb = dev->dvb;
  if (c->lna == 1U) {
    flags = 2UL;
  } else {
    flags = 0UL;
  }
  ret = gpio_request_one((unsigned int )dvb->lna_gpio, flags, (char const *)0);
  if (ret != 0) {
    printk("\v%s: gpio request failed %d\n", (char *)(& dev->name), ret);
  } else {
    gpio_free((unsigned int )dvb->lna_gpio);
  }
  return (ret);
}
}
static int em28xx_pctv_292e_set_lna(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  struct em28xx_i2c_bus *i2c_bus ;
  struct em28xx *dev ;
  u8 lna ;
  int tmp ;
  {
  c = & fe->dtv_property_cache;
  i2c_bus = (struct em28xx_i2c_bus *)(fe->dvb)->priv;
  dev = i2c_bus->dev;
  if (c->lna == 1U) {
    lna = 1U;
  } else {
    lna = 0U;
  }
  tmp = em28xx_write_reg_bits(dev, 128, (int )lna, 1);
  return (tmp);
}
}
static int em28xx_mt352_terratec_xs_init(struct dvb_frontend *fe )
{
  u8 clock_config[3U] ;
  u8 reset[2U] ;
  u8 adc_ctl_1_cfg[2U] ;
  u8 agc_cfg[3U] ;
  u8 input_freq_cfg[3U] ;
  u8 rs_err_cfg[3U] ;
  u8 capt_range_cfg[2U] ;
  u8 trl_nom_cfg[3U] ;
  u8 tps_given_cfg[4U] ;
  u8 tuner_go[2U] ;
  {
  clock_config[0] = 137U;
  clock_config[1] = 56U;
  clock_config[2] = 44U;
  reset[0] = 80U;
  reset[1] = 128U;
  adc_ctl_1_cfg[0] = 142U;
  adc_ctl_1_cfg[1] = 64U;
  agc_cfg[0] = 103U;
  agc_cfg[1] = 40U;
  agc_cfg[2] = 160U;
  input_freq_cfg[0] = 86U;
  input_freq_cfg[1] = 49U;
  input_freq_cfg[2] = 184U;
  rs_err_cfg[0] = 124U;
  rs_err_cfg[1] = 0U;
  rs_err_cfg[2] = 77U;
  capt_range_cfg[0] = 117U;
  capt_range_cfg[1] = 50U;
  trl_nom_cfg[0] = 84U;
  trl_nom_cfg[1] = 100U;
  trl_nom_cfg[2] = 0U;
  tps_given_cfg[0] = 81U;
  tps_given_cfg[1] = 64U;
  tps_given_cfg[2] = 128U;
  tps_given_cfg[3] = 80U;
  tuner_go[0] = 93U;
  tuner_go[1] = 1U;
  mt352_write(fe, (u8 const *)(& clock_config), 3);
  __const_udelay(859000UL);
  mt352_write(fe, (u8 const *)(& reset), 2);
  mt352_write(fe, (u8 const *)(& adc_ctl_1_cfg), 2);
  mt352_write(fe, (u8 const *)(& agc_cfg), 3);
  mt352_write(fe, (u8 const *)(& input_freq_cfg), 3);
  mt352_write(fe, (u8 const *)(& rs_err_cfg), 3);
  mt352_write(fe, (u8 const *)(& capt_range_cfg), 2);
  mt352_write(fe, (u8 const *)(& trl_nom_cfg), 3);
  mt352_write(fe, (u8 const *)(& tps_given_cfg), 4);
  mt352_write(fe, (u8 const *)(& tuner_go), 2);
  return (0);
}
}
static struct mt352_config terratec_xs_mt352_cfg = {15U, 0, 45600, 1, & em28xx_mt352_terratec_xs_init};
static struct tda10023_config em28xx_tda10023_config =
     {12U, 1U, 0U, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
    (unsigned short)0};
static struct cxd2820r_config em28xx_cxd2820r_config = {108U, 8U, (_Bool)0, (_Bool)0, (_Bool)0};
static struct tda18271_config em28xx_cxd2820r_tda18271_config =
     {0, 0, 2, 1, 0, (unsigned char)0, (unsigned char)0, 0U};
static struct zl10353_config em28xx_zl10353_no_i2c_gate_dev =
     {15U, 0, 0, 1, 1, 1U, (unsigned char)0, (unsigned char)0};
static struct qt1010_config em28xx_qt1010_config = {98U};
static struct mb86a20s_config const c3tech_duo_mb86a20s_config = {0U, 16U, 1};
static struct tda18271_std_map mb86a20s_tda18271_config =
     {{(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {4000U, 3U, 4U, (unsigned char)0, 1U, 55U}, {(unsigned short)0, (unsigned char)0,
                                                 (unsigned char)0, (unsigned char)0,
                                                 (unsigned char)0, (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}};
static struct tda18271_config c3tech_duo_tda18271_config =
     {& mb86a20s_tda18271_config, 0, 2, 0, 3, (unsigned char)0, (unsigned char)0, 0U};
static struct tda18271_std_map drx_j_std_map =
     {{(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {(unsigned short)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0, (unsigned char)0,
                                                               (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {5000U, 3U, 0U, (unsigned char)0,
                                                               1U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}, {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
                         (unsigned char)0, (unsigned char)0}, {5380U, 3U, 3U, (unsigned char)0,
                                                               1U, 55U}, {(unsigned short)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0,
                                                                          (unsigned char)0},
    {(unsigned short)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
     (unsigned char)0}};
static struct tda18271_config pinnacle_80e_dvb_config =
     {& drx_j_std_map, 0, 2, 0, 0, (unsigned char)0, (unsigned char)0, 0U};
static int em28xx_attach_xc3028(u8 addr , struct em28xx *dev )
{
  struct dvb_frontend *fe ;
  struct xc2028_config cfg ;
  struct xc2028_ctrl ctl ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___0 ;
  struct dvb_frontend *(*tmp___1)(struct dvb_frontend * , struct xc2028_config * ) ;
  void *tmp___2 ;
  struct dvb_frontend *tmp___3 ;
  {
  memset((void *)(& cfg), 0, 24UL);
  cfg.i2c_adap = (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus;
  cfg.i2c_addr = addr;
  memset((void *)(& ctl), 0, 32UL);
  em28xx_setup_xc3028(dev, & ctl);
  cfg.ctrl = & ctl;
  if ((unsigned long )(dev->dvb)->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    printk("\v%s: /2: dvb frontend not attached. Can\'t attach xc3028\n", (char *)(& dev->name));
    return (-22);
  } else {
  }
  __r = (void *)0;
  tmp___2 = __symbol_get("xc2028_attach");
  tmp___1 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___2) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                               struct xc2028_config * ))0);
  if (tmp___1) {
  } else {
    __request_module(1, "symbol:xc2028_attach");
    tmp___0 = __symbol_get("xc2028_attach");
    tmp___1 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct xc2028_config * ))tmp___0;
  }
  __a = tmp___1;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                        struct xc2028_config * ))0)) {
    tmp___3 = (*__a)((dev->dvb)->fe[0], & cfg);
    __r = (void *)tmp___3;
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      __symbol_put("xc2028_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol xc2028_attach()\n");
  }
  fe = (struct dvb_frontend *)__r;
  if ((unsigned long )fe == (unsigned long )((struct dvb_frontend *)0)) {
    printk("\v%s: /2: xc3028 attach failed\n", (char *)(& dev->name));
    dvb_frontend_detach((dev->dvb)->fe[0]);
    (dev->dvb)->fe[0] = (struct dvb_frontend *)0;
    return (-22);
  } else {
  }
  printk("\016%s: %s/2: xc3028 attached\n", (char *)(& dev->name), (char *)(& dev->name));
  return (0);
}
}
static int em28xx_register_dvb(struct em28xx_dvb *dvb , struct module *module , struct em28xx *dev ,
                               struct device *device )
{
  int result ;
  struct lock_class_key __key ;
  {
  __mutex_init(& dvb->lock, "&dvb->lock", & __key);
  result = dvb_register_adapter(& dvb->adapter, (char const *)(& dev->name), module,
                                device, (short *)(& adapter_nr));
  if (result < 0) {
    printk("\f%s: dvb_register_adapter failed (errno = %d)\n", (char *)(& dev->name),
           result);
    goto fail_adapter;
  } else {
  }
  (dvb->fe[0])->ops.ts_bus_ctrl = & em28xx_dvb_bus_ctrl;
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    (dvb->fe[1])->ops.ts_bus_ctrl = & em28xx_dvb_bus_ctrl;
  } else {
  }
  dvb->adapter.priv = (void *)(& dev->i2c_bus) + (unsigned long )dev->def_i2c_bus;
  result = dvb_register_frontend(& dvb->adapter, dvb->fe[0]);
  if (result < 0) {
    printk("\f%s: dvb_register_frontend failed (errno = %d)\n", (char *)(& dev->name),
           result);
    goto fail_frontend0;
  } else {
  }
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    result = dvb_register_frontend(& dvb->adapter, dvb->fe[1]);
    if (result < 0) {
      printk("\f%s: 2nd dvb_register_frontend failed (errno = %d)\n", (char *)(& dev->name),
             result);
      goto fail_frontend1;
    } else {
    }
  } else {
  }
  dvb->demux.dmx.capabilities = 13U;
  dvb->demux.priv = (void *)dvb;
  dvb->demux.filternum = 256;
  dvb->demux.feednum = 256;
  dvb->demux.start_feed = & em28xx_start_feed;
  dvb->demux.stop_feed = & em28xx_stop_feed;
  result = dvb_dmx_init(& dvb->demux);
  if (result < 0) {
    printk("\f%s: dvb_dmx_init failed (errno = %d)\n", (char *)(& dev->name), result);
    goto fail_dmx;
  } else {
  }
  dvb->dmxdev.filternum = 256;
  dvb->dmxdev.demux = & dvb->demux.dmx;
  dvb->dmxdev.capabilities = 0;
  result = dvb_dmxdev_init(& dvb->dmxdev, & dvb->adapter);
  if (result < 0) {
    printk("\f%s: dvb_dmxdev_init failed (errno = %d)\n", (char *)(& dev->name), result);
    goto fail_dmxdev;
  } else {
  }
  dvb->fe_hw.source = 1;
  result = (*(dvb->demux.dmx.add_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  if (result < 0) {
    printk("\f%s: add_frontend failed (DMX_FRONTEND_0, errno = %d)\n", (char *)(& dev->name),
           result);
    goto fail_fe_hw;
  } else {
  }
  dvb->fe_mem.source = 0;
  result = (*(dvb->demux.dmx.add_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  if (result < 0) {
    printk("\f%s: add_frontend failed (DMX_MEMORY_FE, errno = %d)\n", (char *)(& dev->name),
           result);
    goto fail_fe_mem;
  } else {
  }
  result = (*(dvb->demux.dmx.connect_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  if (result < 0) {
    printk("\f%s: connect_frontend failed (errno = %d)\n", (char *)(& dev->name),
           result);
    goto fail_fe_conn;
  } else {
  }
  dvb_net_init(& dvb->adapter, & dvb->net, & dvb->demux.dmx);
  return (0);
  fail_fe_conn:
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  fail_fe_mem:
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  fail_fe_hw:
  dvb_dmxdev_release(& dvb->dmxdev);
  fail_dmxdev:
  dvb_dmx_release(& dvb->demux);
  fail_dmx: ;
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    dvb_unregister_frontend(dvb->fe[1]);
  } else {
  }
  dvb_unregister_frontend(dvb->fe[0]);
  fail_frontend1: ;
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    dvb_frontend_detach(dvb->fe[1]);
  } else {
  }
  fail_frontend0:
  dvb_frontend_detach(dvb->fe[0]);
  dvb_unregister_adapter(& dvb->adapter);
  fail_adapter: ;
  return (result);
}
}
static void em28xx_unregister_dvb(struct em28xx_dvb *dvb )
{
  {
  dvb_net_release(& dvb->net);
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_mem);
  (*(dvb->demux.dmx.remove_frontend))(& dvb->demux.dmx, & dvb->fe_hw);
  dvb_dmxdev_release(& dvb->dmxdev);
  dvb_dmx_release(& dvb->demux);
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    dvb_unregister_frontend(dvb->fe[1]);
  } else {
  }
  dvb_unregister_frontend(dvb->fe[0]);
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0) && ! dvb->dont_attach_fe1) {
    dvb_frontend_detach(dvb->fe[1]);
  } else {
  }
  dvb_frontend_detach(dvb->fe[0]);
  dvb_unregister_adapter(& dvb->adapter);
  return;
}
}
static int em28xx_dvb_init(struct em28xx *dev )
{
  int result ;
  struct em28xx_dvb *dvb ;
  void *tmp ;
  struct dvb_frontend *tmp___0 ;
  void *__r ;
  struct dvb_frontend *(*__a)(struct s921_config const * , struct i2c_adapter * ) ;
  void *tmp___2 ;
  struct dvb_frontend *(*tmp___3)(struct s921_config const * , struct i2c_adapter * ) ;
  void *tmp___4 ;
  struct dvb_frontend *tmp___5 ;
  void *__r___0 ;
  struct dvb_frontend *(*__a___0)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___7 ;
  struct dvb_frontend *(*tmp___8)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___9 ;
  struct dvb_frontend *tmp___10 ;
  int tmp___11 ;
  void *__r___1 ;
  struct dvb_frontend *(*__a___1)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___13 ;
  struct dvb_frontend *(*tmp___14)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___15 ;
  struct dvb_frontend *tmp___16 ;
  int tmp___17 ;
  void *__r___2 ;
  struct dvb_frontend *(*__a___2)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___19 ;
  struct dvb_frontend *(*tmp___20)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___21 ;
  struct dvb_frontend *tmp___22 ;
  int tmp___23 ;
  void *__r___3 ;
  struct dvb_frontend *(*__a___3)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___25 ;
  struct dvb_frontend *(*tmp___26)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___27 ;
  struct dvb_frontend *tmp___28 ;
  void *__r___4 ;
  struct dvb_frontend *(*__a___4)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___30 ;
  struct dvb_frontend *(*tmp___31)(struct mt352_config const * , struct i2c_adapter * ) ;
  void *tmp___32 ;
  struct dvb_frontend *tmp___33 ;
  int tmp___34 ;
  void *__r___5 ;
  struct dvb_frontend *(*__a___5)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___36 ;
  struct dvb_frontend *(*tmp___37)(struct zl10353_config const * , struct i2c_adapter * ) ;
  void *tmp___38 ;
  struct dvb_frontend *tmp___39 ;
  void *__r___6 ;
  struct dvb_frontend *(*__a___6)(struct dvb_frontend * , struct i2c_adapter * , struct qt1010_config * ) ;
  void *tmp___41 ;
  struct dvb_frontend *(*tmp___42)(struct dvb_frontend * , struct i2c_adapter * ,
                                   struct qt1010_config * ) ;
  void *tmp___43 ;
  struct dvb_frontend *tmp___44 ;
  void *__r___7 ;
  struct dvb_frontend *(*__a___7)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___46 ;
  struct dvb_frontend *(*tmp___47)(struct s5h1409_config const * , struct i2c_adapter * ) ;
  void *tmp___48 ;
  struct dvb_frontend *tmp___49 ;
  int tmp___50 ;
  void *__r___8 ;
  struct dvb_frontend *(*__a___8)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___52 ;
  struct dvb_frontend *(*tmp___53)(struct lgdt330x_config const * , struct i2c_adapter * ) ;
  void *tmp___54 ;
  struct dvb_frontend *tmp___55 ;
  void *__r___9 ;
  struct dvb_frontend *(*__a___9)(struct dvb_frontend * , struct i2c_adapter * , u8 ,
                                  unsigned int ) ;
  void *tmp___57 ;
  struct dvb_frontend *(*tmp___58)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___59 ;
  struct dvb_frontend *tmp___60 ;
  void *__r___10 ;
  struct dvb_frontend *(*__a___10)(struct drxd_config const * , void * , struct i2c_adapter * ,
                                   struct device * ) ;
  void *tmp___62 ;
  struct dvb_frontend *(*tmp___63)(struct drxd_config const * , void * , struct i2c_adapter * ,
                                   struct device * ) ;
  void *tmp___64 ;
  struct dvb_frontend *tmp___65 ;
  int tmp___66 ;
  void *__r___11 ;
  struct dvb_frontend *(*__a___11)(struct tda10023_config const * , struct i2c_adapter * ,
                                   u8 ) ;
  void *tmp___68 ;
  struct dvb_frontend *(*tmp___69)(struct tda10023_config const * , struct i2c_adapter * ,
                                   u8 ) ;
  void *tmp___70 ;
  struct dvb_frontend *tmp___71 ;
  void *__r___12 ;
  struct dvb_frontend *(*__a___12)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___73 ;
  struct dvb_frontend *(*tmp___74)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 , unsigned int ) ;
  void *tmp___75 ;
  struct dvb_frontend *tmp___76 ;
  void *__r___13 ;
  struct dvb_frontend *(*__a___13)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___78 ;
  struct dvb_frontend *(*tmp___79)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___80 ;
  struct dvb_frontend *tmp___81 ;
  void *__r___14 ;
  struct dvb_frontend *(*__a___14)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___83 ;
  struct dvb_frontend *(*tmp___84)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___85 ;
  struct dvb_frontend *tmp___86 ;
  void *__r___15 ;
  struct dvb_frontend *(*__a___15)(struct cxd2820r_config const * , struct i2c_adapter * ,
                                   int * ) ;
  void *tmp___88 ;
  struct dvb_frontend *(*tmp___89)(struct cxd2820r_config const * , struct i2c_adapter * ,
                                   int * ) ;
  void *tmp___90 ;
  struct dvb_frontend *tmp___91 ;
  void *__r___16 ;
  struct dvb_frontend *(*__a___16)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___93 ;
  struct dvb_frontend *(*tmp___94)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___95 ;
  struct dvb_frontend *tmp___96 ;
  struct xc5000_config cfg ;
  void *__r___17 ;
  struct dvb_frontend *(*__a___17)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___98 ;
  struct dvb_frontend *(*tmp___99)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___100 ;
  struct dvb_frontend *tmp___101 ;
  void *__r___18 ;
  struct dvb_frontend *(*__a___18)(struct dvb_frontend * , struct i2c_adapter * ,
                                   struct xc5000_config const * ) ;
  void *tmp___103 ;
  struct dvb_frontend *(*tmp___104)(struct dvb_frontend * , struct i2c_adapter * ,
                                    struct xc5000_config const * ) ;
  void *tmp___105 ;
  struct dvb_frontend *tmp___106 ;
  void *__r___19 ;
  struct dvb_frontend *(*__a___19)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___108 ;
  struct dvb_frontend *(*tmp___109)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___110 ;
  struct dvb_frontend *tmp___111 ;
  void *__r___20 ;
  struct dvb_frontend *(*__a___20)(struct dvb_frontend * , struct i2c_adapter * ,
                                   u8 ) ;
  void *tmp___113 ;
  struct dvb_frontend *(*tmp___114)(struct dvb_frontend * , struct i2c_adapter * ,
                                    u8 ) ;
  void *tmp___115 ;
  struct dvb_frontend *tmp___116 ;
  void *__r___21 ;
  struct dvb_frontend *(*__a___21)(struct mb86a20s_config const * , struct i2c_adapter * ) ;
  void *tmp___118 ;
  struct dvb_frontend *(*tmp___119)(struct mb86a20s_config const * , struct i2c_adapter * ) ;
  void *tmp___120 ;
  struct dvb_frontend *tmp___121 ;
  void *__r___22 ;
  struct dvb_frontend *(*__a___22)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___123 ;
  struct dvb_frontend *(*tmp___124)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___125 ;
  struct dvb_frontend *tmp___126 ;
  struct i2c_client *client ;
  struct i2c_board_info board_info ;
  struct tda10071_platform_data tda10071_pdata ;
  struct a8293_platform_data a8293_pdata ;
  bool tmp___127 ;
  int tmp___128 ;
  bool tmp___129 ;
  int tmp___130 ;
  void *__r___23 ;
  struct dvb_frontend *(*__a___23)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___132 ;
  struct dvb_frontend *(*tmp___133)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___134 ;
  struct dvb_frontend *tmp___135 ;
  void *__r___24 ;
  struct dvb_frontend *(*__a___24)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___137 ;
  struct dvb_frontend *(*tmp___138)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___139 ;
  struct dvb_frontend *tmp___140 ;
  void *__r___25 ;
  struct dvb_frontend *(*__a___25)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___142 ;
  struct dvb_frontend *(*tmp___143)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___144 ;
  struct dvb_frontend *tmp___145 ;
  void *__r___26 ;
  struct dvb_frontend *(*__a___26)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___147 ;
  struct dvb_frontend *(*tmp___148)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___149 ;
  struct dvb_frontend *tmp___150 ;
  void *__r___27 ;
  struct dvb_frontend *(*__a___27)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___152 ;
  struct dvb_frontend *(*tmp___153)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___154 ;
  struct dvb_frontend *tmp___155 ;
  void *__r___28 ;
  struct dvb_frontend *(*__a___28)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___157 ;
  struct dvb_frontend *(*tmp___158)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___159 ;
  struct dvb_frontend *tmp___160 ;
  void *__r___29 ;
  struct dvb_frontend *(*__a___29)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___162 ;
  struct dvb_frontend *(*tmp___163)(struct drxk_config const * , struct i2c_adapter * ) ;
  void *tmp___164 ;
  struct dvb_frontend *tmp___165 ;
  void *__r___30 ;
  struct dvb_frontend *(*__a___30)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___167 ;
  struct dvb_frontend *(*tmp___168)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___169 ;
  struct dvb_frontend *tmp___170 ;
  void *__r___31 ;
  struct dvb_frontend *(*__a___31)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___172 ;
  struct dvb_frontend *(*tmp___173)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___174 ;
  struct dvb_frontend *tmp___175 ;
  void *__r___32 ;
  struct dvb_frontend *(*__a___32)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___177 ;
  struct dvb_frontend *(*tmp___178)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___179 ;
  struct dvb_frontend *tmp___180 ;
  struct i2c_client *client___0 ;
  struct i2c_adapter *adapter ;
  struct i2c_board_info board_info___0 ;
  unsigned int tmp___181 ;
  void *__r___33 ;
  struct dvb_frontend *(*__a___33)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___183 ;
  struct dvb_frontend *(*tmp___184)(struct lgdt3305_config const * , struct i2c_adapter * ) ;
  void *tmp___185 ;
  struct dvb_frontend *tmp___186 ;
  bool tmp___187 ;
  int tmp___188 ;
  void *__r___34 ;
  struct dvb_frontend *(*__a___34)(struct i2c_adapter * ) ;
  void *tmp___190 ;
  struct dvb_frontend *(*tmp___191)(struct i2c_adapter * ) ;
  void *tmp___192 ;
  struct dvb_frontend *tmp___193 ;
  void *__r___35 ;
  struct dvb_frontend *(*__a___35)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                   struct tda18271_config * ) ;
  void *tmp___195 ;
  struct dvb_frontend *(*tmp___196)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                    struct tda18271_config * ) ;
  void *tmp___197 ;
  struct dvb_frontend *tmp___198 ;
  struct i2c_client *client___1 ;
  struct i2c_adapter *i2c_adapter ;
  struct i2c_board_info board_info___1 ;
  struct m88ds3103_platform_data m88ds3103_pdata ;
  struct ts2020_config ts2020_config ;
  struct a8293_platform_data a8293_pdata___0 ;
  bool tmp___199 ;
  int tmp___200 ;
  bool tmp___201 ;
  int tmp___202 ;
  bool tmp___203 ;
  int tmp___204 ;
  struct i2c_adapter *adapter___0 ;
  struct i2c_client *client___2 ;
  struct i2c_board_info info ;
  struct si2168_config si2168_config ;
  struct si2157_config si2157_config ;
  bool tmp___205 ;
  int tmp___206 ;
  bool tmp___207 ;
  int tmp___208 ;
  struct i2c_adapter *adapter___1 ;
  struct i2c_client *client___3 ;
  struct i2c_board_info info___0 ;
  struct si2168_config si2168_config___0 ;
  struct si2157_config si2157_config___0 ;
  bool tmp___209 ;
  int tmp___210 ;
  bool tmp___211 ;
  int tmp___212 ;
  {
  result = 0;
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 440UL) == 0U) {
    return (0);
  } else {
  }
  printk("\016%s: Binding DVB extension\n", (char *)(& dev->name));
  tmp = kzalloc(2360UL, 208U);
  dvb = (struct em28xx_dvb *)tmp;
  if ((unsigned long )dvb == (unsigned long )((struct em28xx_dvb *)0)) {
    printk("\016%s: em28xx_dvb: memory allocation failed\n", (char *)(& dev->name));
    return (-12);
  } else {
  }
  dev->dvb = dvb;
  tmp___0 = (struct dvb_frontend *)0;
  dvb->fe[1] = tmp___0;
  dvb->fe[0] = tmp___0;
  if ((unsigned int )*((unsigned char *)dev + 8540UL) != 0U) {
    result = em28xx_alloc_urbs(dev, 2, (int )dev->dvb_xfer_bulk, 5, 512, 384);
  } else {
    result = em28xx_alloc_urbs(dev, 2, (int )dev->dvb_xfer_bulk, 5, (int )dev->dvb_max_pkt_size_isoc,
                               64);
  }
  if (result != 0) {
    printk("\v%s: em28xx_dvb: failed to pre-allocate USB transfer buffers for DVB.\n",
           (char *)(& dev->name));
    kfree((void const *)dvb);
    dev->dvb = (struct em28xx_dvb *)0;
    return (result);
  } else {
  }
  mutex_lock_nested(& dev->lock, 0U);
  em28xx_set_mode(dev, 2);
  switch (dev->model) {
  case 77:
  __r = (void *)0;
  tmp___4 = __symbol_get("s921_attach");
  tmp___3 = (unsigned long )((struct dvb_frontend *(*)(struct s921_config const * ,
                                                       struct i2c_adapter * ))tmp___4) != (unsigned long )((struct dvb_frontend *(*)(struct s921_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  if (tmp___3) {
  } else {
    __request_module(1, "symbol:s921_attach");
    tmp___2 = __symbol_get("s921_attach");
    tmp___3 = (struct dvb_frontend *(*)(struct s921_config const * , struct i2c_adapter * ))tmp___2;
  }
  __a = tmp___3;
  if ((unsigned long )__a != (unsigned long )((struct dvb_frontend *(*)(struct s921_config const * ,
                                                                        struct i2c_adapter * ))0)) {
    tmp___5 = (*__a)((struct s921_config const *)(& sharp_isdbt), (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r = (void *)tmp___5;
    if ((unsigned long )__r == (unsigned long )((void *)0)) {
      __symbol_put("s921_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol s921_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 60: ;
  case 16: ;
  case 17: ;
  case 20:
  __r___0 = (void *)0;
  tmp___9 = __symbol_get("lgdt330x_attach");
  tmp___8 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                       struct i2c_adapter * ))tmp___9) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                     struct i2c_adapter * ))0);
  if (tmp___8) {
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___7 = __symbol_get("lgdt330x_attach");
    tmp___8 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___7;
  }
  __a___0 = tmp___8;
  if ((unsigned long )__a___0 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___10 = (*__a___0)((struct lgdt330x_config const *)(& em2880_lgdt3303_dev),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___0 = (void *)tmp___10;
    if ((unsigned long )__r___0 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol lgdt330x_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___0;
  tmp___11 = em28xx_attach_xc3028(97, dev);
  if (tmp___11 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 48:
  __r___1 = (void *)0;
  tmp___15 = __symbol_get("zl10353_attach");
  tmp___14 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___15) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___14) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___13 = __symbol_get("zl10353_attach");
    tmp___14 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___13;
  }
  __a___1 = tmp___14;
  if ((unsigned long )__a___1 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___16 = (*__a___1)((struct zl10353_config const *)(& em28xx_zl10353_with_xc3028),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___1 = (void *)tmp___16;
    if ((unsigned long )__r___1 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___1;
  tmp___17 = em28xx_attach_xc3028(97, dev);
  if (tmp___17 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 10: ;
  case 55: ;
  case 66:
  __r___2 = (void *)0;
  tmp___21 = __symbol_get("zl10353_attach");
  tmp___20 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___21) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___20) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___19 = __symbol_get("zl10353_attach");
    tmp___20 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___19;
  }
  __a___2 = tmp___20;
  if ((unsigned long )__a___2 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___22 = (*__a___2)((struct zl10353_config const *)(& em28xx_zl10353_xc3028_no_i2c_gate),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___2 = (void *)tmp___22;
    if ((unsigned long )__r___2 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___2;
  tmp___23 = em28xx_attach_xc3028(97, dev);
  if (tmp___23 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 11: ;
  case 51: ;
  case 53: ;
  case 75: ;
  case 54:
  __r___3 = (void *)0;
  tmp___27 = __symbol_get("zl10353_attach");
  tmp___26 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___27) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___26) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___25 = __symbol_get("zl10353_attach");
    tmp___26 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___25;
  }
  __a___3 = tmp___26;
  if ((unsigned long )__a___3 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___28 = (*__a___3)((struct zl10353_config const *)(& em28xx_zl10353_xc3028_no_i2c_gate),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___3 = (void *)tmp___28;
    if ((unsigned long )__r___3 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___3;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    __r___4 = (void *)0;
    tmp___32 = __symbol_get("mt352_attach");
    tmp___31 = (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                          struct i2c_adapter * ))tmp___32) != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
    if (tmp___31) {
    } else {
      __request_module(1, "symbol:mt352_attach");
      tmp___30 = __symbol_get("mt352_attach");
      tmp___31 = (struct dvb_frontend *(*)(struct mt352_config const * , struct i2c_adapter * ))tmp___30;
    }
    __a___4 = tmp___31;
    if ((unsigned long )__a___4 != (unsigned long )((struct dvb_frontend *(*)(struct mt352_config const * ,
                                                                              struct i2c_adapter * ))0)) {
      tmp___33 = (*__a___4)((struct mt352_config const *)(& terratec_xs_mt352_cfg),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
      __r___4 = (void *)tmp___33;
      if ((unsigned long )__r___4 == (unsigned long )((void *)0)) {
        __symbol_put("mt352_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol mt352_attach()\n");
    }
    dvb->fe[0] = (struct dvb_frontend *)__r___4;
  } else {
  }
  tmp___34 = em28xx_attach_xc3028(97, dev);
  if (tmp___34 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 42:
  __r___5 = (void *)0;
  tmp___38 = __symbol_get("zl10353_attach");
  tmp___37 = (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                        struct i2c_adapter * ))tmp___38) != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___37) {
  } else {
    __request_module(1, "symbol:zl10353_attach");
    tmp___36 = __symbol_get("zl10353_attach");
    tmp___37 = (struct dvb_frontend *(*)(struct zl10353_config const * , struct i2c_adapter * ))tmp___36;
  }
  __a___5 = tmp___37;
  if ((unsigned long )__a___5 != (unsigned long )((struct dvb_frontend *(*)(struct zl10353_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___39 = (*__a___5)((struct zl10353_config const *)(& em28xx_zl10353_no_i2c_gate_dev),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___5 = (void *)tmp___39;
    if ((unsigned long )__r___5 == (unsigned long )((void *)0)) {
      __symbol_put("zl10353_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol zl10353_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___5;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___6 = (void *)0;
    tmp___43 = __symbol_get("qt1010_attach");
    tmp___42 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct i2c_adapter * , struct qt1010_config * ))tmp___43) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                                  struct qt1010_config * ))0);
    if (tmp___42) {
    } else {
      __request_module(1, "symbol:qt1010_attach");
      tmp___41 = __symbol_get("qt1010_attach");
      tmp___42 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           struct qt1010_config * ))tmp___41;
    }
    __a___6 = tmp___42;
    if ((unsigned long )__a___6 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              struct qt1010_config * ))0)) {
      tmp___44 = (*__a___6)(dvb->fe[0], (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            & em28xx_qt1010_config);
      __r___6 = (void *)tmp___44;
      if ((unsigned long )__r___6 == (unsigned long )((void *)0)) {
        __symbol_put("qt1010_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol qt1010_attach()\n");
    }
  } else {
  }
  goto ldv_53779;
  case 57: ;
  case 70:
  __r___7 = (void *)0;
  tmp___48 = __symbol_get("s5h1409_attach");
  tmp___47 = (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                        struct i2c_adapter * ))tmp___48) != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___47) {
  } else {
    __request_module(1, "symbol:s5h1409_attach");
    tmp___46 = __symbol_get("s5h1409_attach");
    tmp___47 = (struct dvb_frontend *(*)(struct s5h1409_config const * , struct i2c_adapter * ))tmp___46;
  }
  __a___7 = tmp___47;
  if ((unsigned long )__a___7 != (unsigned long )((struct dvb_frontend *(*)(struct s5h1409_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___49 = (*__a___7)((struct s5h1409_config const *)(& em28xx_s5h1409_with_xc3028),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___7 = (void *)tmp___49;
    if ((unsigned long )__r___7 == (unsigned long )((void *)0)) {
      __symbol_put("s5h1409_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol s5h1409_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___7;
  tmp___50 = em28xx_attach_xc3028(97, dev);
  if (tmp___50 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 69:
  __r___8 = (void *)0;
  tmp___54 = __symbol_get("lgdt330x_attach");
  tmp___53 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                        struct i2c_adapter * ))tmp___54) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___53) {
  } else {
    __request_module(1, "symbol:lgdt330x_attach");
    tmp___52 = __symbol_get("lgdt330x_attach");
    tmp___53 = (struct dvb_frontend *(*)(struct lgdt330x_config const * , struct i2c_adapter * ))tmp___52;
  }
  __a___8 = tmp___53;
  if ((unsigned long )__a___8 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt330x_config const * ,
                                                                            struct i2c_adapter * ))0)) {
    tmp___55 = (*__a___8)((struct lgdt330x_config const *)(& em2880_lgdt3303_dev),
                          (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___8 = (void *)tmp___55;
    if ((unsigned long )__r___8 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt330x_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol lgdt330x_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___8;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___9 = (void *)0;
    tmp___59 = __symbol_get("simple_tuner_attach");
    tmp___58 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct i2c_adapter * , u8 ,
                                                          unsigned int ))tmp___59) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0);
    if (tmp___58) {
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___57 = __symbol_get("simple_tuner_attach");
      tmp___58 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___57;
    }
    __a___9 = tmp___58;
    if ((unsigned long )__a___9 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                              struct i2c_adapter * ,
                                                                              u8 ,
                                                                              unsigned int ))0)) {
      tmp___60 = (*__a___9)(dvb->fe[0], (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            97, 60U);
      __r___9 = (void *)tmp___60;
      if ((unsigned long )__r___9 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___9 == (unsigned long )((void *)0)) {
      result = -22;
      goto out_free;
    } else {
    }
  } else {
  }
  goto ldv_53779;
  case 18: ;
  case 56:
  __r___10 = (void *)0;
  tmp___64 = __symbol_get("drxd_attach");
  tmp___63 = (unsigned long )((struct dvb_frontend *(*)(struct drxd_config const * ,
                                                        void * , struct i2c_adapter * ,
                                                        struct device * ))tmp___64) != (unsigned long )((struct dvb_frontend *(*)(struct drxd_config const * ,
                                                                                                                                  void * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  struct device * ))0);
  if (tmp___63) {
  } else {
    __request_module(1, "symbol:drxd_attach");
    tmp___62 = __symbol_get("drxd_attach");
    tmp___63 = (struct dvb_frontend *(*)(struct drxd_config const * , void * , struct i2c_adapter * ,
                                         struct device * ))tmp___62;
  }
  __a___10 = tmp___63;
  if ((unsigned long )__a___10 != (unsigned long )((struct dvb_frontend *(*)(struct drxd_config const * ,
                                                                             void * ,
                                                                             struct i2c_adapter * ,
                                                                             struct device * ))0)) {
    tmp___65 = (*__a___10)((struct drxd_config const *)(& em28xx_drxd), (void *)0,
                           (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                           & (dev->udev)->dev);
    __r___10 = (void *)tmp___65;
    if ((unsigned long )__r___10 == (unsigned long )((void *)0)) {
      __symbol_put("drxd_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxd_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___10;
  tmp___66 = em28xx_attach_xc3028(97, dev);
  if (tmp___66 < 0) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 73:
  __r___11 = (void *)0;
  tmp___70 = __symbol_get("tda10023_attach");
  tmp___69 = (unsigned long )((struct dvb_frontend *(*)(struct tda10023_config const * ,
                                                        struct i2c_adapter * , u8 ))tmp___70) != (unsigned long )((struct dvb_frontend *(*)(struct tda10023_config const * ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             u8 ))0);
  if (tmp___69) {
  } else {
    __request_module(1, "symbol:tda10023_attach");
    tmp___68 = __symbol_get("tda10023_attach");
    tmp___69 = (struct dvb_frontend *(*)(struct tda10023_config const * , struct i2c_adapter * ,
                                         u8 ))tmp___68;
  }
  __a___11 = tmp___69;
  if ((unsigned long )__a___11 != (unsigned long )((struct dvb_frontend *(*)(struct tda10023_config const * ,
                                                                             struct i2c_adapter * ,
                                                                             u8 ))0)) {
    tmp___71 = (*__a___11)((struct tda10023_config const *)(& em28xx_tda10023_config),
                           (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                           72);
    __r___11 = (void *)tmp___71;
    if ((unsigned long )__r___11 == (unsigned long )((void *)0)) {
      __symbol_put("tda10023_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda10023_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___11;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___12 = (void *)0;
    tmp___75 = __symbol_get("simple_tuner_attach");
    tmp___74 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          struct i2c_adapter * , u8 ,
                                                          unsigned int ))tmp___75) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                  u8 ,
                                                                                                                                  unsigned int ))0);
    if (tmp___74) {
    } else {
      __request_module(1, "symbol:simple_tuner_attach");
      tmp___73 = __symbol_get("simple_tuner_attach");
      tmp___74 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                           u8 , unsigned int ))tmp___73;
    }
    __a___12 = tmp___74;
    if ((unsigned long )__a___12 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               struct i2c_adapter * ,
                                                                               u8 ,
                                                                               unsigned int ))0)) {
      tmp___76 = (*__a___12)(dvb->fe[0], (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                             96, 82U);
      __r___12 = (void *)tmp___76;
      if ((unsigned long )__r___12 == (unsigned long )((void *)0)) {
        __symbol_put("simple_tuner_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol simple_tuner_attach()\n");
    }
    if ((unsigned long )__r___12 == (unsigned long )((void *)0)) {
      result = -22;
      goto out_free;
    } else {
    }
  } else {
  }
  goto ldv_53779;
  case 76:
  __r___13 = (void *)0;
  tmp___80 = __symbol_get("lgdt3305_attach");
  tmp___79 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                        struct i2c_adapter * ))tmp___80) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                                                                                       struct i2c_adapter * ))0);
  if (tmp___79) {
  } else {
    __request_module(1, "symbol:lgdt3305_attach");
    tmp___78 = __symbol_get("lgdt3305_attach");
    tmp___79 = (struct dvb_frontend *(*)(struct lgdt3305_config const * , struct i2c_adapter * ))tmp___78;
  }
  __a___13 = tmp___79;
  if ((unsigned long )__a___13 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___81 = (*__a___13)((struct lgdt3305_config const *)(& em2870_lgdt3304_dev),
                           (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___13 = (void *)tmp___81;
    if ((unsigned long )__r___13 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt3305_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol lgdt3305_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___13;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  __r___14 = (void *)0;
  tmp___85 = __symbol_get("tda18271_attach");
  tmp___84 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , u8 ,
                                                        struct i2c_adapter * , struct tda18271_config * ))tmp___85) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                  u8 ,
                                                                                                                                                                  struct i2c_adapter * ,
                                                                                                                                                                  struct tda18271_config * ))0);
  if (tmp___84) {
  } else {
    __request_module(1, "symbol:tda18271_attach");
    tmp___83 = __symbol_get("tda18271_attach");
    tmp___84 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                         struct tda18271_config * ))tmp___83;
  }
  __a___14 = tmp___84;
  if ((unsigned long )__a___14 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             u8 ,
                                                                             struct i2c_adapter * ,
                                                                             struct tda18271_config * ))0)) {
    tmp___86 = (*__a___14)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                           & kworld_a340_config);
    __r___14 = (void *)tmp___86;
    if ((unsigned long )__r___14 == (unsigned long )((void *)0)) {
      __symbol_put("tda18271_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda18271_attach()\n");
  }
  if ((unsigned long )__r___14 == (unsigned long )((void *)0)) {
    dvb_frontend_detach(dvb->fe[0]);
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 78:
  dvb->lna_gpio = 1;
  __r___15 = (void *)0;
  tmp___90 = __symbol_get("cxd2820r_attach");
  tmp___89 = (unsigned long )((struct dvb_frontend *(*)(struct cxd2820r_config const * ,
                                                        struct i2c_adapter * , int * ))tmp___90) != (unsigned long )((struct dvb_frontend *(*)(struct cxd2820r_config const * ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               int * ))0);
  if (tmp___89) {
  } else {
    __request_module(1, "symbol:cxd2820r_attach");
    tmp___88 = __symbol_get("cxd2820r_attach");
    tmp___89 = (struct dvb_frontend *(*)(struct cxd2820r_config const * , struct i2c_adapter * ,
                                         int * ))tmp___88;
  }
  __a___15 = tmp___89;
  if ((unsigned long )__a___15 != (unsigned long )((struct dvb_frontend *(*)(struct cxd2820r_config const * ,
                                                                             struct i2c_adapter * ,
                                                                             int * ))0)) {
    tmp___91 = (*__a___15)((struct cxd2820r_config const *)(& em28xx_cxd2820r_config),
                           (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                           & dvb->lna_gpio);
    __r___15 = (void *)tmp___91;
    if ((unsigned long )__r___15 == (unsigned long )((void *)0)) {
      __symbol_put("cxd2820r_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol cxd2820r_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___15;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___16 = (void *)0;
    tmp___95 = __symbol_get("tda18271_attach");
    tmp___94 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                          u8 , struct i2c_adapter * ,
                                                          struct tda18271_config * ))tmp___95) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                             u8 ,
                                                                                                                                             struct i2c_adapter * ,
                                                                                                                                             struct tda18271_config * ))0);
    if (tmp___94) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___93 = __symbol_get("tda18271_attach");
      tmp___94 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                           struct tda18271_config * ))tmp___93;
    }
    __a___16 = tmp___94;
    if ((unsigned long )__a___16 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               u8 ,
                                                                               struct i2c_adapter * ,
                                                                               struct tda18271_config * ))0)) {
      tmp___96 = (*__a___16)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                             & em28xx_cxd2820r_tda18271_config);
      __r___16 = (void *)tmp___96;
      if ((unsigned long )__r___16 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
    if ((unsigned long )__r___16 == (unsigned long )((void *)0)) {
      dvb_frontend_detach(dvb->fe[0]);
      result = -22;
      goto out_free;
    } else {
    }
    result = gpio_request_one((unsigned int )dvb->lna_gpio, 0UL, (char const *)0);
    if (result != 0) {
      printk("\v%s: gpio request failed %d\n", (char *)(& dev->name), result);
    } else {
      gpio_free((unsigned int )dvb->lna_gpio);
    }
    result = 0;
    (dvb->fe[0])->ops.set_lna = & em28xx_pctv_290e_set_lna;
  } else {
  }
  goto ldv_53779;
  case 81:
  hauppauge_hvr930c_init(dev);
  __r___17 = (void *)0;
  tmp___100 = __symbol_get("drxk_attach");
  tmp___99 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                        struct i2c_adapter * ))tmp___100) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                        struct i2c_adapter * ))0);
  if (tmp___99) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___98 = __symbol_get("drxk_attach");
    tmp___99 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___98;
  }
  __a___17 = tmp___99;
  if ((unsigned long )__a___17 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___101 = (*__a___17)((struct drxk_config const *)(& hauppauge_930c_drxk),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___17 = (void *)tmp___101;
    if ((unsigned long )__r___17 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___17;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  (dvb->fe[0])->sec_priv = (void *)dvb;
  sema_init(& dvb->pll_mutex, 1);
  dvb->gate_ctrl = (dvb->fe[0])->ops.i2c_gate_ctrl;
  (dvb->fe[0])->ops.i2c_gate_ctrl = & drxk_gate_ctrl;
  memset((void *)(& cfg), 0, 20UL);
  cfg.i2c_address = 97U;
  cfg.if_khz = 4000U;
  if ((unsigned long )(dvb->fe[0])->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   int ))0)) {
    (*((dvb->fe[0])->ops.i2c_gate_ctrl))(dvb->fe[0], 1);
  } else {
  }
  __r___18 = (void *)0;
  tmp___105 = __symbol_get("xc5000_attach");
  tmp___104 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                         struct xc5000_config const * ))tmp___105) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                   struct i2c_adapter * ,
                                                                                                                                                   struct xc5000_config const * ))0);
  if (tmp___104) {
  } else {
    __request_module(1, "symbol:xc5000_attach");
    tmp___103 = __symbol_get("xc5000_attach");
    tmp___104 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                          struct xc5000_config const * ))tmp___103;
  }
  __a___18 = tmp___104;
  if ((unsigned long )__a___18 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             struct i2c_adapter * ,
                                                                             struct xc5000_config const * ))0)) {
    tmp___106 = (*__a___18)(dvb->fe[0], (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            (struct xc5000_config const *)(& cfg));
    __r___18 = (void *)tmp___106;
    if ((unsigned long )__r___18 == (unsigned long )((void *)0)) {
      __symbol_put("xc5000_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol xc5000_attach()\n");
  }
  if ((unsigned long )__r___18 == (unsigned long )((void *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  if ((unsigned long )(dvb->fe[0])->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   int ))0)) {
    (*((dvb->fe[0])->ops.i2c_gate_ctrl))(dvb->fe[0], 0);
  } else {
  }
  goto ldv_53779;
  case 79:
  terratec_h5_init(dev);
  __r___19 = (void *)0;
  tmp___110 = __symbol_get("drxk_attach");
  tmp___109 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                         struct i2c_adapter * ))tmp___110) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___109) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___108 = __symbol_get("drxk_attach");
    tmp___109 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___108;
  }
  __a___19 = tmp___109;
  if ((unsigned long )__a___19 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___111 = (*__a___19)((struct drxk_config const *)(& terratec_h5_drxk), (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___19 = (void *)tmp___111;
    if ((unsigned long )__r___19 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___19;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  (dvb->fe[0])->sec_priv = (void *)dvb;
  sema_init(& dvb->pll_mutex, 1);
  dvb->gate_ctrl = (dvb->fe[0])->ops.i2c_gate_ctrl;
  (dvb->fe[0])->ops.i2c_gate_ctrl = & drxk_gate_ctrl;
  if ((unsigned long )(dvb->fe[0])->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   int ))0)) {
    (*((dvb->fe[0])->ops.i2c_gate_ctrl))(dvb->fe[0], 1);
  } else {
  }
  __r___20 = (void *)0;
  tmp___115 = __symbol_get("tda18271c2dd_attach");
  tmp___114 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                                         u8 ))tmp___115) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                        struct i2c_adapter * ,
                                                                                                                        u8 ))0);
  if (tmp___114) {
  } else {
    __request_module(1, "symbol:tda18271c2dd_attach");
    tmp___113 = __symbol_get("tda18271c2dd_attach");
    tmp___114 = (struct dvb_frontend *(*)(struct dvb_frontend * , struct i2c_adapter * ,
                                          u8 ))tmp___113;
  }
  __a___20 = tmp___114;
  if ((unsigned long )__a___20 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             struct i2c_adapter * ,
                                                                             u8 ))0)) {
    tmp___116 = (*__a___20)(dvb->fe[0], (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            96);
    __r___20 = (void *)tmp___116;
    if ((unsigned long )__r___20 == (unsigned long )((void *)0)) {
      __symbol_put("tda18271c2dd_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda18271c2dd_attach()\n");
  }
  if ((unsigned long )__r___20 == (unsigned long )((void *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  if ((unsigned long )(dvb->fe[0])->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                   int ))0)) {
    (*((dvb->fe[0])->ops.i2c_gate_ctrl))(dvb->fe[0], 0);
  } else {
  }
  goto ldv_53779;
  case 88:
  __r___21 = (void *)0;
  tmp___120 = __symbol_get("mb86a20s_attach");
  tmp___119 = (unsigned long )((struct dvb_frontend *(*)(struct mb86a20s_config const * ,
                                                         struct i2c_adapter * ))tmp___120) != (unsigned long )((struct dvb_frontend *(*)(struct mb86a20s_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___119) {
  } else {
    __request_module(1, "symbol:mb86a20s_attach");
    tmp___118 = __symbol_get("mb86a20s_attach");
    tmp___119 = (struct dvb_frontend *(*)(struct mb86a20s_config const * , struct i2c_adapter * ))tmp___118;
  }
  __a___21 = tmp___119;
  if ((unsigned long )__a___21 != (unsigned long )((struct dvb_frontend *(*)(struct mb86a20s_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___121 = (*__a___21)(& c3tech_duo_mb86a20s_config, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___21 = (void *)tmp___121;
    if ((unsigned long )__r___21 == (unsigned long )((void *)0)) {
      __symbol_put("mb86a20s_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol mb86a20s_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___21;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___22 = (void *)0;
    tmp___125 = __symbol_get("tda18271_attach");
    tmp___124 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                           u8 , struct i2c_adapter * ,
                                                           struct tda18271_config * ))tmp___125) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
    if (tmp___124) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___123 = __symbol_get("tda18271_attach");
      tmp___124 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                            struct tda18271_config * ))tmp___123;
    }
    __a___22 = tmp___124;
    if ((unsigned long )__a___22 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               u8 ,
                                                                               struct i2c_adapter * ,
                                                                               struct tda18271_config * ))0)) {
      tmp___126 = (*__a___22)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              & c3tech_duo_tda18271_config);
      __r___22 = (void *)tmp___126;
      if ((unsigned long )__r___22 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
  } else {
  }
  goto ldv_53779;
  case 80:
  tda10071_pdata.clk = 0U;
  tda10071_pdata.i2c_wr_max = (unsigned short)0;
  tda10071_pdata.ts_mode = (unsigned char)0;
  tda10071_pdata.spec_inv = (_Bool)0;
  tda10071_pdata.pll_multiplier = (unsigned char)0;
  tda10071_pdata.tuner_i2c_addr = (unsigned char)0;
  tda10071_pdata.get_dvb_frontend = 0;
  a8293_pdata.dvb_frontend = 0;
  tda10071_pdata.clk = 40444000U;
  tda10071_pdata.i2c_wr_max = 64U;
  tda10071_pdata.ts_mode = 0U;
  tda10071_pdata.pll_multiplier = 20U;
  tda10071_pdata.tuner_i2c_addr = 20U;
  memset((void *)(& board_info), 0, 64UL);
  strlcpy((char *)(& board_info.type), "tda10071_cx24118", 20UL);
  board_info.addr = 85U;
  board_info.platform_data = (void *)(& tda10071_pdata);
  __request_module(1, "tda10071");
  client = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                          (struct i2c_board_info const *)(& board_info));
  if ((unsigned long )client == (unsigned long )((struct i2c_client *)0) || (unsigned long )client->dev.driver == (unsigned long )((struct device_driver *)0)) {
    result = -19;
    goto out_free;
  } else {
  }
  tmp___127 = ldv_try_module_get_5((client->dev.driver)->owner);
  if (tmp___127) {
    tmp___128 = 0;
  } else {
    tmp___128 = 1;
  }
  if (tmp___128) {
    i2c_unregister_device(client);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->fe[0] = (*(tda10071_pdata.get_dvb_frontend))(client);
  dvb->i2c_client_demod = client;
  a8293_pdata.dvb_frontend = dvb->fe[0];
  memset((void *)(& board_info), 0, 64UL);
  strlcpy((char *)(& board_info.type), "a8293", 20UL);
  board_info.addr = 8U;
  board_info.platform_data = (void *)(& a8293_pdata);
  __request_module(1, "a8293");
  client = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                          (struct i2c_board_info const *)(& board_info));
  if ((unsigned long )client == (unsigned long )((struct i2c_client *)0) || (unsigned long )client->dev.driver == (unsigned long )((struct device_driver *)0)) {
    ldv_module_put_6(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___129 = ldv_try_module_get_7((client->dev.driver)->owner);
  if (tmp___129) {
    tmp___130 = 0;
  } else {
    tmp___130 = 1;
  }
  if (tmp___130) {
    i2c_unregister_device(client);
    ldv_module_put_8(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_sec = client;
  goto ldv_53779;
  case 89: ;
  case 84:
  __r___23 = (void *)0;
  tmp___134 = __symbol_get("drxk_attach");
  tmp___133 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                         struct i2c_adapter * ))tmp___134) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___133) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___132 = __symbol_get("drxk_attach");
    tmp___133 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___132;
  }
  __a___23 = tmp___133;
  if ((unsigned long )__a___23 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___135 = (*__a___23)((struct drxk_config const *)(& maxmedia_ub425_tc_drxk),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___23 = (void *)tmp___135;
    if ((unsigned long )__r___23 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___23;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    (dvb->fe[0])->ops.i2c_gate_ctrl = (int (*)(struct dvb_frontend * , int ))0;
    __r___24 = (void *)0;
    tmp___139 = __symbol_get("tda18271_attach");
    tmp___138 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                           u8 , struct i2c_adapter * ,
                                                           struct tda18271_config * ))tmp___139) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
    if (tmp___138) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___137 = __symbol_get("tda18271_attach");
      tmp___138 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                            struct tda18271_config * ))tmp___137;
    }
    __a___24 = tmp___138;
    if ((unsigned long )__a___24 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               u8 ,
                                                                               struct i2c_adapter * ,
                                                                               struct tda18271_config * ))0)) {
      tmp___140 = (*__a___24)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              & em28xx_cxd2820r_tda18271_config);
      __r___24 = (void *)tmp___140;
      if ((unsigned long )__r___24 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
    if ((unsigned long )__r___24 == (unsigned long )((void *)0)) {
      dvb_frontend_detach(dvb->fe[0]);
      result = -22;
      goto out_free;
    } else {
    }
  } else {
  }
  goto ldv_53779;
  case 85: ;
  case 86:
  pctv_520e_init(dev);
  __r___25 = (void *)0;
  tmp___144 = __symbol_get("drxk_attach");
  tmp___143 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                         struct i2c_adapter * ))tmp___144) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___143) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___142 = __symbol_get("drxk_attach");
    tmp___143 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___142;
  }
  __a___25 = tmp___143;
  if ((unsigned long )__a___25 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___145 = (*__a___25)((struct drxk_config const *)(& pctv_520e_drxk), (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___25 = (void *)tmp___145;
    if ((unsigned long )__r___25 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___25;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___26 = (void *)0;
    tmp___149 = __symbol_get("tda18271_attach");
    tmp___148 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                           u8 , struct i2c_adapter * ,
                                                           struct tda18271_config * ))tmp___149) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
    if (tmp___148) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___147 = __symbol_get("tda18271_attach");
      tmp___148 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                            struct tda18271_config * ))tmp___147;
    }
    __a___26 = tmp___148;
    if ((unsigned long )__a___26 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               u8 ,
                                                                               struct i2c_adapter * ,
                                                                               struct tda18271_config * ))0)) {
      tmp___150 = (*__a___26)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              & em28xx_cxd2820r_tda18271_config);
      __r___26 = (void *)tmp___150;
      if ((unsigned long )__r___26 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
    if ((unsigned long )__r___26 == (unsigned long )((void *)0)) {
      dvb_frontend_detach(dvb->fe[0]);
      result = -22;
      goto out_free;
    } else {
    }
  } else {
  }
  goto ldv_53779;
  case 97: ;
  case 82:
  terratec_htc_stick_init(dev);
  __r___27 = (void *)0;
  tmp___154 = __symbol_get("drxk_attach");
  tmp___153 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                         struct i2c_adapter * ))tmp___154) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___153) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___152 = __symbol_get("drxk_attach");
    tmp___153 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___152;
  }
  __a___27 = tmp___153;
  if ((unsigned long )__a___27 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___155 = (*__a___27)((struct drxk_config const *)(& terratec_htc_stick_drxk),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___27 = (void *)tmp___155;
    if ((unsigned long )__r___27 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___27;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  __r___28 = (void *)0;
  tmp___159 = __symbol_get("tda18271_attach");
  tmp___158 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , u8 ,
                                                         struct i2c_adapter * , struct tda18271_config * ))tmp___159) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                    u8 ,
                                                                                                                                                                    struct i2c_adapter * ,
                                                                                                                                                                    struct tda18271_config * ))0);
  if (tmp___158) {
  } else {
    __request_module(1, "symbol:tda18271_attach");
    tmp___157 = __symbol_get("tda18271_attach");
    tmp___158 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                          struct tda18271_config * ))tmp___157;
  }
  __a___28 = tmp___158;
  if ((unsigned long )__a___28 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             u8 ,
                                                                             struct i2c_adapter * ,
                                                                             struct tda18271_config * ))0)) {
    tmp___160 = (*__a___28)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            & em28xx_cxd2820r_tda18271_config);
    __r___28 = (void *)tmp___160;
    if ((unsigned long )__r___28 == (unsigned long )((void *)0)) {
      __symbol_put("tda18271_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda18271_attach()\n");
  }
  if ((unsigned long )__r___28 == (unsigned long )((void *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 87:
  terratec_htc_usb_xs_init(dev);
  __r___29 = (void *)0;
  tmp___164 = __symbol_get("drxk_attach");
  tmp___163 = (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                         struct i2c_adapter * ))tmp___164) != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___163) {
  } else {
    __request_module(1, "symbol:drxk_attach");
    tmp___162 = __symbol_get("drxk_attach");
    tmp___163 = (struct dvb_frontend *(*)(struct drxk_config const * , struct i2c_adapter * ))tmp___162;
  }
  __a___29 = tmp___163;
  if ((unsigned long )__a___29 != (unsigned long )((struct dvb_frontend *(*)(struct drxk_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___165 = (*__a___29)((struct drxk_config const *)(& terratec_htc_stick_drxk),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___29 = (void *)tmp___165;
    if ((unsigned long )__r___29 == (unsigned long )((void *)0)) {
      __symbol_put("drxk_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drxk_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___29;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  __r___30 = (void *)0;
  tmp___169 = __symbol_get("tda18271_attach");
  tmp___168 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , u8 ,
                                                         struct i2c_adapter * , struct tda18271_config * ))tmp___169) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                    u8 ,
                                                                                                                                                                    struct i2c_adapter * ,
                                                                                                                                                                    struct tda18271_config * ))0);
  if (tmp___168) {
  } else {
    __request_module(1, "symbol:tda18271_attach");
    tmp___167 = __symbol_get("tda18271_attach");
    tmp___168 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                          struct tda18271_config * ))tmp___167;
  }
  __a___30 = tmp___168;
  if ((unsigned long )__a___30 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             u8 ,
                                                                             struct i2c_adapter * ,
                                                                             struct tda18271_config * ))0)) {
    tmp___170 = (*__a___30)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            & em28xx_cxd2820r_tda18271_config);
    __r___30 = (void *)tmp___170;
    if ((unsigned long )__r___30 == (unsigned long )((void *)0)) {
      __symbol_put("tda18271_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda18271_attach()\n");
  }
  if ((unsigned long )__r___30 == (unsigned long )((void *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 90:
  __r___31 = (void *)0;
  tmp___174 = __symbol_get("lgdt3305_attach");
  tmp___173 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                         struct i2c_adapter * ))tmp___174) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___173) {
  } else {
    __request_module(1, "symbol:lgdt3305_attach");
    tmp___172 = __symbol_get("lgdt3305_attach");
    tmp___173 = (struct dvb_frontend *(*)(struct lgdt3305_config const * , struct i2c_adapter * ))tmp___172;
  }
  __a___31 = tmp___173;
  if ((unsigned long )__a___31 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___175 = (*__a___31)((struct lgdt3305_config const *)(& em2874_lgdt3305_dev),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___31 = (void *)tmp___175;
    if ((unsigned long )__r___31 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt3305_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol lgdt3305_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___31;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  __r___32 = (void *)0;
  tmp___179 = __symbol_get("tda18271_attach");
  tmp___178 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * , u8 ,
                                                         struct i2c_adapter * , struct tda18271_config * ))tmp___179) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                                                    u8 ,
                                                                                                                                                                    struct i2c_adapter * ,
                                                                                                                                                                    struct tda18271_config * ))0);
  if (tmp___178) {
  } else {
    __request_module(1, "symbol:tda18271_attach");
    tmp___177 = __symbol_get("tda18271_attach");
    tmp___178 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                          struct tda18271_config * ))tmp___177;
  }
  __a___32 = tmp___178;
  if ((unsigned long )__a___32 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                             u8 ,
                                                                             struct i2c_adapter * ,
                                                                             struct tda18271_config * ))0)) {
    tmp___180 = (*__a___32)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                            & kworld_ub435q_v2_config);
    __r___32 = (void *)tmp___180;
    if ((unsigned long )__r___32 == (unsigned long )((void *)0)) {
      __symbol_put("tda18271_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol tda18271_attach()\n");
  }
  if ((unsigned long )__r___32 == (unsigned long )((void *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  goto ldv_53779;
  case 93:
  adapter = (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus;
  board_info___0.type[0] = 't';
  board_info___0.type[1] = 'd';
  board_info___0.type[2] = 'a';
  board_info___0.type[3] = '1';
  board_info___0.type[4] = '8';
  board_info___0.type[5] = '2';
  board_info___0.type[6] = '1';
  board_info___0.type[7] = '2';
  board_info___0.type[8] = '\000';
  tmp___181 = 9U;
  while (1) {
    if (tmp___181 >= 20U) {
      break;
    } else {
    }
    board_info___0.type[tmp___181] = (char)0;
    tmp___181 = tmp___181 + 1U;
  }
  board_info___0.flags = (unsigned short)0;
  board_info___0.addr = 96U;
  board_info___0.platform_data = (void *)(& kworld_ub435q_v3_config);
  board_info___0.archdata = 0;
  board_info___0.of_node = 0;
  board_info___0.fwnode = 0;
  board_info___0.irq = 0;
  __r___33 = (void *)0;
  tmp___185 = __symbol_get("lgdt3305_attach");
  tmp___184 = (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                         struct i2c_adapter * ))tmp___185) != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                                                                                         struct i2c_adapter * ))0);
  if (tmp___184) {
  } else {
    __request_module(1, "symbol:lgdt3305_attach");
    tmp___183 = __symbol_get("lgdt3305_attach");
    tmp___184 = (struct dvb_frontend *(*)(struct lgdt3305_config const * , struct i2c_adapter * ))tmp___183;
  }
  __a___33 = tmp___184;
  if ((unsigned long )__a___33 != (unsigned long )((struct dvb_frontend *(*)(struct lgdt3305_config const * ,
                                                                             struct i2c_adapter * ))0)) {
    tmp___186 = (*__a___33)((struct lgdt3305_config const *)(& em2874_lgdt3305_nogate_dev),
                            (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___33 = (void *)tmp___186;
    if ((unsigned long )__r___33 == (unsigned long )((void *)0)) {
      __symbol_put("lgdt3305_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol lgdt3305_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___33;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    result = -22;
    goto out_free;
  } else {
  }
  kworld_ub435q_v3_config.fe = dvb->fe[0];
  __request_module(1, "tda18212");
  client___0 = i2c_new_device(adapter, (struct i2c_board_info const *)(& board_info___0));
  if ((unsigned long )client___0 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___0->dev.driver == (unsigned long )((struct device_driver *)0)) {
    dvb_frontend_detach(dvb->fe[0]);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___187 = ldv_try_module_get_9((client___0->dev.driver)->owner);
  if (tmp___187) {
    tmp___188 = 0;
  } else {
    tmp___188 = 1;
  }
  if (tmp___188) {
    i2c_unregister_device(client___0);
    dvb_frontend_detach(dvb->fe[0]);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_tuner = client___0;
  goto ldv_53779;
  case 59:
  __r___34 = (void *)0;
  tmp___192 = __symbol_get("drx39xxj_attach");
  tmp___191 = (unsigned long )((struct dvb_frontend *(*)(struct i2c_adapter * ))tmp___192) != (unsigned long )((struct dvb_frontend *(*)(struct i2c_adapter * ))0);
  if (tmp___191) {
  } else {
    __request_module(1, "symbol:drx39xxj_attach");
    tmp___190 = __symbol_get("drx39xxj_attach");
    tmp___191 = (struct dvb_frontend *(*)(struct i2c_adapter * ))tmp___190;
  }
  __a___34 = tmp___191;
  if ((unsigned long )__a___34 != (unsigned long )((struct dvb_frontend *(*)(struct i2c_adapter * ))0)) {
    tmp___193 = (*__a___34)((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus);
    __r___34 = (void *)tmp___193;
    if ((unsigned long )__r___34 == (unsigned long )((void *)0)) {
      __symbol_put("drx39xxj_attach");
    } else {
    }
  } else {
    printk("\vDVB: Unable to find symbol drx39xxj_attach()\n");
  }
  dvb->fe[0] = (struct dvb_frontend *)__r___34;
  if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
    __r___35 = (void *)0;
    tmp___197 = __symbol_get("tda18271_attach");
    tmp___196 = (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                           u8 , struct i2c_adapter * ,
                                                           struct tda18271_config * ))tmp___197) != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                                                                                               u8 ,
                                                                                                                                               struct i2c_adapter * ,
                                                                                                                                               struct tda18271_config * ))0);
    if (tmp___196) {
    } else {
      __request_module(1, "symbol:tda18271_attach");
      tmp___195 = __symbol_get("tda18271_attach");
      tmp___196 = (struct dvb_frontend *(*)(struct dvb_frontend * , u8 , struct i2c_adapter * ,
                                            struct tda18271_config * ))tmp___195;
    }
    __a___35 = tmp___196;
    if ((unsigned long )__a___35 != (unsigned long )((struct dvb_frontend *(*)(struct dvb_frontend * ,
                                                                               u8 ,
                                                                               struct i2c_adapter * ,
                                                                               struct tda18271_config * ))0)) {
      tmp___198 = (*__a___35)(dvb->fe[0], 96, (struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              & pinnacle_80e_dvb_config);
      __r___35 = (void *)tmp___198;
      if ((unsigned long )__r___35 == (unsigned long )((void *)0)) {
        __symbol_put("tda18271_attach");
      } else {
      }
    } else {
      printk("\vDVB: Unable to find symbol tda18271_attach()\n");
    }
    dvb->fe[0] = (struct dvb_frontend *)__r___35;
    if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
      result = -22;
      goto out_free;
    } else {
    }
  } else {
  }
  goto ldv_53779;
  case 92:
  m88ds3103_pdata.clk = 0U;
  m88ds3103_pdata.i2c_wr_max = (unsigned short)0;
  m88ds3103_pdata.ts_mode = (unsigned char)0;
  m88ds3103_pdata.ts_clk = 0U;
  m88ds3103_pdata.ts_clk_pol = (unsigned char)0;
  m88ds3103_pdata.spec_inv = (unsigned char)0;
  m88ds3103_pdata.agc = (unsigned char)0;
  m88ds3103_pdata.agc_inv = (unsigned char)0;
  m88ds3103_pdata.clk_out = (unsigned char)0;
  m88ds3103_pdata.envelope_mode = (unsigned char)0;
  m88ds3103_pdata.lnb_hv_pol = (unsigned char)0;
  m88ds3103_pdata.lnb_en_pol = (unsigned char)0;
  m88ds3103_pdata.get_dvb_frontend = 0;
  m88ds3103_pdata.get_i2c_adapter = 0;
  m88ds3103_pdata.attach_in_use = (unsigned char)0;
  ts2020_config.tuner_address = (unsigned char)0;
  ts2020_config.frequency_div = 0U;
  ts2020_config.loop_through = (_Bool)0;
  ts2020_config.clk_out = (unsigned char)0;
  ts2020_config.clk_out_div = (unsigned char)0;
  ts2020_config.dont_poll = (_Bool)0;
  ts2020_config.fe = 0;
  ts2020_config.attach_in_use = (unsigned char)0;
  ts2020_config.get_agc_pwm = 0;
  a8293_pdata___0.dvb_frontend = 0;
  m88ds3103_pdata.clk = 27000000U;
  m88ds3103_pdata.i2c_wr_max = 33U;
  m88ds3103_pdata.ts_mode = 2U;
  m88ds3103_pdata.ts_clk = 16000U;
  m88ds3103_pdata.ts_clk_pol = 1U;
  m88ds3103_pdata.agc = 153U;
  memset((void *)(& board_info___1), 0, 64UL);
  strlcpy((char *)(& board_info___1.type), "m88ds3103", 20UL);
  board_info___1.addr = 104U;
  board_info___1.platform_data = (void *)(& m88ds3103_pdata);
  __request_module(1, "m88ds3103");
  client___1 = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              (struct i2c_board_info const *)(& board_info___1));
  if ((unsigned long )client___1 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___1->dev.driver == (unsigned long )((struct device_driver *)0)) {
    result = -19;
    goto out_free;
  } else {
  }
  tmp___199 = ldv_try_module_get_10((client___1->dev.driver)->owner);
  if (tmp___199) {
    tmp___200 = 0;
  } else {
    tmp___200 = 1;
  }
  if (tmp___200) {
    i2c_unregister_device(client___1);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->fe[0] = (*(m88ds3103_pdata.get_dvb_frontend))(client___1);
  i2c_adapter = (*(m88ds3103_pdata.get_i2c_adapter))(client___1);
  dvb->i2c_client_demod = client___1;
  ts2020_config.fe = dvb->fe[0];
  memset((void *)(& board_info___1), 0, 64UL);
  strlcpy((char *)(& board_info___1.type), "ts2022", 20UL);
  board_info___1.addr = 96U;
  board_info___1.platform_data = (void *)(& ts2020_config);
  __request_module(1, "ts2020");
  client___1 = i2c_new_device(i2c_adapter, (struct i2c_board_info const *)(& board_info___1));
  if ((unsigned long )client___1 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___1->dev.driver == (unsigned long )((struct device_driver *)0)) {
    ldv_module_put_11(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___201 = ldv_try_module_get_12((client___1->dev.driver)->owner);
  if (tmp___201) {
    tmp___202 = 0;
  } else {
    tmp___202 = 1;
  }
  if (tmp___202) {
    i2c_unregister_device(client___1);
    ldv_module_put_13(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_tuner = client___1;
  (dvb->fe[0])->ops.read_signal_strength = (dvb->fe[0])->ops.tuner_ops.get_rf_strength;
  a8293_pdata___0.dvb_frontend = dvb->fe[0];
  memset((void *)(& board_info___1), 0, 64UL);
  strlcpy((char *)(& board_info___1.type), "a8293", 20UL);
  board_info___1.addr = 8U;
  board_info___1.platform_data = (void *)(& a8293_pdata___0);
  __request_module(1, "a8293");
  client___1 = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              (struct i2c_board_info const *)(& board_info___1));
  if ((unsigned long )client___1 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___1->dev.driver == (unsigned long )((struct device_driver *)0)) {
    ldv_module_put_14(((dvb->i2c_client_tuner)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_tuner);
    ldv_module_put_15(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___203 = ldv_try_module_get_16((client___1->dev.driver)->owner);
  if (tmp___203) {
    tmp___204 = 0;
  } else {
    tmp___204 = 1;
  }
  if (tmp___204) {
    i2c_unregister_device(client___1);
    ldv_module_put_17(((dvb->i2c_client_tuner)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_tuner);
    ldv_module_put_18(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_sec = client___1;
  goto ldv_53779;
  case 94:
  memset((void *)(& si2168_config), 0, 24UL);
  si2168_config.i2c_adapter = & adapter___0;
  si2168_config.fe = (struct dvb_frontend **)(& dvb->fe);
  si2168_config.ts_mode = 6U;
  memset((void *)(& info), 0, 64UL);
  strlcpy((char *)(& info.type), "si2168", 20UL);
  info.addr = 100U;
  info.platform_data = (void *)(& si2168_config);
  __request_module(1, (char const *)(& info.type));
  client___2 = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              (struct i2c_board_info const *)(& info));
  if ((unsigned long )client___2 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___2->dev.driver == (unsigned long )((struct device_driver *)0)) {
    result = -19;
    goto out_free;
  } else {
  }
  tmp___205 = ldv_try_module_get_19((client___2->dev.driver)->owner);
  if (tmp___205) {
    tmp___206 = 0;
  } else {
    tmp___206 = 1;
  }
  if (tmp___206) {
    i2c_unregister_device(client___2);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_demod = client___2;
  memset((void *)(& si2157_config), 0, 16UL);
  si2157_config.fe = dvb->fe[0];
  si2157_config.if_port = 1U;
  memset((void *)(& info), 0, 64UL);
  strlcpy((char *)(& info.type), "si2157", 20UL);
  info.addr = 96U;
  info.platform_data = (void *)(& si2157_config);
  __request_module(1, (char const *)(& info.type));
  client___2 = i2c_new_device(adapter___0, (struct i2c_board_info const *)(& info));
  if ((unsigned long )client___2 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___2->dev.driver == (unsigned long )((struct device_driver *)0)) {
    ldv_module_put_20(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___207 = ldv_try_module_get_21((client___2->dev.driver)->owner);
  if (tmp___207) {
    tmp___208 = 0;
  } else {
    tmp___208 = 1;
  }
  if (tmp___208) {
    i2c_unregister_device(client___2);
    ldv_module_put_22(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_tuner = client___2;
  (dvb->fe[0])->ops.set_lna = & em28xx_pctv_292e_set_lna;
  goto ldv_53779;
  case 96:
  memset((void *)(& si2168_config___0), 0, 24UL);
  si2168_config___0.i2c_adapter = & adapter___1;
  si2168_config___0.fe = (struct dvb_frontend **)(& dvb->fe);
  si2168_config___0.ts_mode = 6U;
  memset((void *)(& info___0), 0, 64UL);
  strlcpy((char *)(& info___0.type), "si2168", 20UL);
  info___0.addr = 100U;
  info___0.platform_data = (void *)(& si2168_config___0);
  __request_module(1, (char const *)(& info___0.type));
  client___3 = i2c_new_device((struct i2c_adapter *)(& dev->i2c_adap) + (unsigned long )dev->def_i2c_bus,
                              (struct i2c_board_info const *)(& info___0));
  if ((unsigned long )client___3 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___3->dev.driver == (unsigned long )((struct device_driver *)0)) {
    result = -19;
    goto out_free;
  } else {
  }
  tmp___209 = ldv_try_module_get_23((client___3->dev.driver)->owner);
  if (tmp___209) {
    tmp___210 = 0;
  } else {
    tmp___210 = 1;
  }
  if (tmp___210) {
    i2c_unregister_device(client___3);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_demod = client___3;
  memset((void *)(& si2157_config___0), 0, 16UL);
  si2157_config___0.fe = dvb->fe[0];
  si2157_config___0.if_port = 0U;
  memset((void *)(& info___0), 0, 64UL);
  strlcpy((char *)(& info___0.type), "si2146", 20UL);
  info___0.addr = 96U;
  info___0.platform_data = (void *)(& si2157_config___0);
  __request_module(1, "si2157");
  client___3 = i2c_new_device(adapter___1, (struct i2c_board_info const *)(& info___0));
  if ((unsigned long )client___3 == (unsigned long )((struct i2c_client *)0) || (unsigned long )client___3->dev.driver == (unsigned long )((struct device_driver *)0)) {
    ldv_module_put_24(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  tmp___211 = ldv_try_module_get_25((client___3->dev.driver)->owner);
  if (tmp___211) {
    tmp___212 = 0;
  } else {
    tmp___212 = 1;
  }
  if (tmp___212) {
    i2c_unregister_device(client___3);
    ldv_module_put_26(((dvb->i2c_client_demod)->dev.driver)->owner);
    i2c_unregister_device(dvb->i2c_client_demod);
    result = -19;
    goto out_free;
  } else {
  }
  dvb->i2c_client_tuner = client___3;
  goto ldv_53779;
  default:
  printk("\v%s: /2: The frontend of your DVB/ATSC card isn\'t supported yet\n", (char *)(& dev->name));
  goto ldv_53779;
  }
  ldv_53779: ;
  if ((unsigned long )dvb->fe[0] == (unsigned long )((struct dvb_frontend *)0)) {
    printk("\v%s: /2: frontend initialization failed\n", (char *)(& dev->name));
    result = -22;
    goto out_free;
  } else {
  }
  (dvb->fe[0])->callback = & em28xx_tuner_callback;
  if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
    (dvb->fe[1])->callback = & em28xx_tuner_callback;
  } else {
  }
  result = em28xx_register_dvb(dvb, & __this_module, dev, & (dev->udev)->dev);
  if (result < 0) {
    goto out_free;
  } else {
  }
  printk("\016%s: DVB extension successfully initialized\n", (char *)(& dev->name));
  kref_get(& dev->ref);
  ret:
  em28xx_set_mode(dev, 0);
  mutex_unlock(& dev->lock);
  return (result);
  out_free:
  kfree((void const *)dvb);
  dev->dvb = (struct em28xx_dvb *)0;
  goto ret;
}
}
__inline static void prevent_sleep(struct dvb_frontend_ops *ops )
{
  {
  ops->set_voltage = (int (*)(struct dvb_frontend * , enum fe_sec_voltage ))0;
  ops->sleep = (int (*)(struct dvb_frontend * ))0;
  ops->tuner_ops.sleep = (int (*)(struct dvb_frontend * ))0;
  return;
}
}
static int em28xx_dvb_fini(struct em28xx *dev )
{
  struct em28xx_dvb *dvb ;
  struct i2c_client *client ;
  {
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 440UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned long )dev->dvb == (unsigned long )((struct em28xx_dvb *)0)) {
    return (0);
  } else {
  }
  printk("\016%s: Closing DVB extension\n", (char *)(& dev->name));
  dvb = dev->dvb;
  em28xx_uninit_usb_xfer(dev, 2);
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
    if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
      prevent_sleep(& (dvb->fe[0])->ops);
      (dvb->fe[0])->exit = 2U;
    } else {
    }
    if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
      prevent_sleep(& (dvb->fe[1])->ops);
      (dvb->fe[1])->exit = 2U;
    } else {
    }
  } else {
  }
  client = dvb->i2c_client_sec;
  if ((unsigned long )client != (unsigned long )((struct i2c_client *)0)) {
    ldv_module_put_27((client->dev.driver)->owner);
    i2c_unregister_device(client);
  } else {
  }
  client = dvb->i2c_client_tuner;
  if ((unsigned long )client != (unsigned long )((struct i2c_client *)0)) {
    ldv_module_put_28((client->dev.driver)->owner);
    i2c_unregister_device(client);
  } else {
  }
  client = dvb->i2c_client_demod;
  if ((unsigned long )client != (unsigned long )((struct i2c_client *)0)) {
    ldv_module_put_29((client->dev.driver)->owner);
    i2c_unregister_device(client);
  } else {
  }
  em28xx_unregister_dvb(dvb);
  kfree((void const *)dvb);
  dev->dvb = (struct em28xx_dvb *)0;
  kref_put(& dev->ref, & em28xx_free_device);
  return (0);
}
}
static int em28xx_dvb_suspend(struct em28xx *dev )
{
  int ret ;
  struct em28xx_dvb *dvb ;
  {
  ret = 0;
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 440UL) == 0U) {
    return (0);
  } else {
  }
  printk("\016%s: Suspending DVB extension\n", (char *)(& dev->name));
  if ((unsigned long )dev->dvb != (unsigned long )((struct em28xx_dvb *)0)) {
    dvb = dev->dvb;
    if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
      ret = dvb_frontend_suspend(dvb->fe[0]);
      printk("\016%s: fe0 suspend %d\n", (char *)(& dev->name), ret);
    } else {
    }
    if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
      dvb_frontend_suspend(dvb->fe[1]);
      printk("\016%s: fe1 suspend %d\n", (char *)(& dev->name), ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int em28xx_dvb_resume(struct em28xx *dev )
{
  int ret ;
  struct em28xx_dvb *dvb ;
  {
  ret = 0;
  if ((unsigned int )*((unsigned char *)dev + 364UL) != 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)dev + 440UL) == 0U) {
    return (0);
  } else {
  }
  printk("\016%s: Resuming DVB extension\n", (char *)(& dev->name));
  if ((unsigned long )dev->dvb != (unsigned long )((struct em28xx_dvb *)0)) {
    dvb = dev->dvb;
    if ((unsigned long )dvb->fe[0] != (unsigned long )((struct dvb_frontend *)0)) {
      ret = dvb_frontend_resume(dvb->fe[0]);
      printk("\016%s: fe0 resume %d\n", (char *)(& dev->name), ret);
    } else {
    }
    if ((unsigned long )dvb->fe[1] != (unsigned long )((struct dvb_frontend *)0)) {
      ret = dvb_frontend_resume(dvb->fe[1]);
      printk("\016%s: fe1 resume %d\n", (char *)(& dev->name), ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
static struct em28xx_ops dvb_ops = {{0, 0}, (char *)"Em28xx dvb Extension", 32, & em28xx_dvb_init, & em28xx_dvb_fini,
    & em28xx_dvb_suspend, & em28xx_dvb_resume};
static int em28xx_dvb_register(void)
{
  int tmp ;
  {
  tmp = em28xx_register_extension(& dvb_ops);
  return (tmp);
}
}
static void em28xx_dvb_unregister(void)
{
  {
  em28xx_unregister_extension(& dvb_ops);
  return;
}
}
int ldv_retval_2 ;
extern int ldv_release_1(void) ;
extern int ldv_bind_1(void) ;
extern int ldv_stop_1(void) ;
int ldv_retval_0 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
extern int ldv_start_1(void) ;
extern int ldv_disconnect_1(void) ;
void ldv_initialize_em28xx_ops_1(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(8952UL);
  dvb_ops_group0 = (struct em28xx *)tmp;
  return;
}
}
int main(void)
{
  struct dvb_frontend *ldvarg0 ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1304UL);
  ldvarg0 = (struct dvb_frontend *)tmp;
  ldv_initialize();
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_2 = 0;
  ldv_54044:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_1 == 2) {
      em28xx_dvb_init(dvb_ops_group0);
      ldv_state_variable_1 = 3;
    } else {
    }
    goto ldv_54022;
    case 1: ;
    if (ldv_state_variable_1 == 3) {
      ldv_retval_1 = em28xx_dvb_suspend(dvb_ops_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_1 = 4;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      ldv_retval_1 = em28xx_dvb_suspend(dvb_ops_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_1 = 6;
      } else {
      }
    } else {
    }
    goto ldv_54022;
    case 2: ;
    if (ldv_state_variable_1 == 6) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 6;
    } else {
    }
    if (ldv_state_variable_1 == 4) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 1) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 3;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      em28xx_dvb_fini(dvb_ops_group0);
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_54022;
    case 3: ;
    if (ldv_state_variable_1 == 6) {
      ldv_retval_0 = em28xx_dvb_resume(dvb_ops_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_1 == 4) {
      ldv_retval_0 = em28xx_dvb_resume(dvb_ops_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 3;
      } else {
      }
    } else {
    }
    goto ldv_54022;
    case 4: ;
    if (ldv_state_variable_1 == 6) {
      ldv_stop_1();
      ldv_state_variable_1 = 4;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      ldv_stop_1();
      ldv_state_variable_1 = 3;
    } else {
    }
    goto ldv_54022;
    case 5: ;
    if (ldv_state_variable_1 == 6) {
      ldv_disconnect_1();
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 4) {
      ldv_disconnect_1();
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      ldv_disconnect_1();
      ldv_state_variable_1 = 2;
    } else {
    }
    if (ldv_state_variable_1 == 5) {
      ldv_disconnect_1();
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_54022;
    case 6: ;
    if (ldv_state_variable_1 == 2) {
      ldv_release_1();
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_54022;
    case 7: ;
    if (ldv_state_variable_1 == 1) {
      ldv_bind_1();
      ldv_state_variable_1 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_54022;
    case 8: ;
    if (ldv_state_variable_1 == 4) {
      ldv_start_1();
      ldv_state_variable_1 = 6;
    } else {
    }
    if (ldv_state_variable_1 == 3) {
      ldv_start_1();
      ldv_state_variable_1 = 5;
    } else {
    }
    goto ldv_54022;
    default:
    ldv_stop();
    }
    ldv_54022: ;
  } else {
  }
  goto ldv_54032;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      em28xx_dvb_unregister();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_54036;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_2 = em28xx_dvb_register();
      if (ldv_retval_2 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_2 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_2 = 1;
        ldv_state_variable_1 = 1;
        ldv_initialize_em28xx_ops_1();
      } else {
      }
    } else {
    }
    goto ldv_54036;
    default:
    ldv_stop();
    }
    ldv_54036: ;
  } else {
  }
  goto ldv_54032;
  case 2: ;
  if (ldv_state_variable_2 != 0) {
    tmp___3 = __VERIFIER_nondet_int();
    switch (tmp___3) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      em28xx_mt352_terratec_xs_init(ldvarg0);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_54041;
    default:
    ldv_stop();
    }
    ldv_54041: ;
  } else {
  }
  goto ldv_54032;
  default:
  ldv_stop();
  }
  ldv_54032: ;
  goto ldv_54044;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_try_module_get_5(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_6(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_7(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_8(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_9(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
bool ldv_try_module_get_10(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_11(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_12(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_13(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_14(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_15(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_16(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_17(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_18(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_19(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_20(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_21(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_22(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_23(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_24(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
bool ldv_try_module_get_25(struct module *ldv_func_arg1 )
{
  int tmp ;
  {
  tmp = ldv_try_module_get(ldv_func_arg1);
  return (tmp != 0);
}
}
void ldv_module_put_26(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_27(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_28(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
void ldv_module_put_29(struct module *ldv_func_arg1 )
{
  {
  ldv_module_put(ldv_func_arg1);
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
bool ldv_is_err(void const *ptr )
{
  {
  return ((unsigned long )ptr > 2012UL);
}
}
void *ldv_err_ptr(long error )
{
  {
  return ((void *)(2012L - error));
}
}
long ldv_ptr_err(void const *ptr )
{
  {
  return ((long )(2012UL - (unsigned long )ptr));
}
}
bool ldv_is_err_or_null(void const *ptr )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void const *)0)) {
    tmp___0 = 1;
  } else {
    tmp = ldv_is_err(ptr);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  }
  return ((bool )tmp___0);
}
}
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
{
  int module_get_succeeded ;
  {
  if ((unsigned long )module != (unsigned long )((struct module *)0)) {
    module_get_succeeded = ldv_undef_int();
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
      ldv_error();
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
  ldv_module_put((struct module *)1);
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
    ldv_error();
  } else {
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __request_module(bool arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *__symbol_get(const char *arg0) {
  return ldv_malloc(0UL);
}
void __symbol_put(const char *arg0) {
  return;
}
void down(struct semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_dmx_init(struct dvb_demux *arg0) {
  return __VERIFIER_nondet_int();
}
void dvb_dmx_release(struct dvb_demux *arg0) {
  return;
}
void dvb_dmx_swfilter(struct dvb_demux *arg0, const u8 *arg1, size_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_dmxdev_init(struct dmxdev *arg0, struct dvb_adapter *arg1) {
  return __VERIFIER_nondet_int();
}
void dvb_dmxdev_release(struct dmxdev *arg0) {
  return;
}
void dvb_frontend_detach(struct dvb_frontend *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_frontend_resume(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_frontend_suspend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_net_init(struct dvb_adapter *arg0, struct dvb_net *arg1, struct dmx_demux *arg2) {
  return __VERIFIER_nondet_int();
}
void dvb_net_release(struct dvb_net *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dvb_register_adapter(struct dvb_adapter *arg0, const char *arg1, struct module *arg2, struct device *arg3, short *arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_register_frontend(struct dvb_adapter *arg0, struct dvb_frontend *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_adapter(struct dvb_adapter *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dvb_unregister_frontend(struct dvb_frontend *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_alloc_urbs(struct em28xx *arg0, enum em28xx_mode arg1, int arg2, int arg3, int arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_gpio_set(struct em28xx *arg0, struct em28xx_reg_seq *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_init_usb_xfer(struct em28xx *arg0, enum em28xx_mode arg1, int arg2, int arg3, int arg4, int arg5, int (*arg6)(struct em28xx *, struct urb *)) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_register_extension(struct em28xx_ops *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_set_mode(struct em28xx *arg0, enum em28xx_mode arg1) {
  return __VERIFIER_nondet_int();
}
void em28xx_setup_xc3028(struct em28xx *arg0, struct xc2028_ctrl *arg1) {
  return;
}
void em28xx_stop_urbs(struct em28xx *arg0) {
  return;
}
void em28xx_uninit_usb_xfer(struct em28xx *arg0, enum em28xx_mode arg1) {
  return;
}
void em28xx_unregister_extension(struct em28xx_ops *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int em28xx_write_reg(struct em28xx *arg0, u16 arg1, u8 arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int em28xx_write_reg_bits(struct em28xx *arg0, u16 arg1, u8 arg2, u8 arg3) {
  return __VERIFIER_nondet_int();
}
void gpio_free(unsigned int arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int gpio_request_one(unsigned int arg0, unsigned long arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int i2c_master_send(const struct i2c_client *arg0, const char *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
struct i2c_client *i2c_new_device(struct i2c_adapter *arg0, const struct i2c_board_info *arg1) {
  return ldv_malloc(sizeof(struct i2c_client));
}
void i2c_unregister_device(struct i2c_client *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_bind_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_disconnect_1() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_release_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_start_1() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_stop_1() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void up(struct semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_set_interface(struct usb_device *arg0, int arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
