extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
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
typedef u64 cycle_t;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
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
struct platform_device;
struct ieee_ets;
struct ethtool_cmd;
struct ethtool_coalesce;
struct ieee_pfc;
struct ethtool_pauseparam;
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
struct pdev_archdata {
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
struct of_device_id;
struct acpi_device_id;
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
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   char *driver_override ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
   bool prevent_deferred_probe ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_220 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_220 __annonCompField58 ;
   unsigned long nr_segs ;
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
struct bdi_writeback;
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
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct __anonstruct_sync_serial_settings_222 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_222 sync_serial_settings;
struct __anonstruct_te1_settings_223 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_223 te1_settings;
struct __anonstruct_raw_hdlc_proto_224 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_224 raw_hdlc_proto;
struct __anonstruct_fr_proto_225 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_225 fr_proto;
struct __anonstruct_fr_proto_pvc_226 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_226 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_227 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_227 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_228 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_228 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_229 {
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
   union __anonunion_ifs_ifsu_229 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_230 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_231 {
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
   union __anonunion_ifr_ifrn_230 ifr_ifrn ;
   union __anonunion_ifr_ifru_231 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_236 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_235 {
   struct __anonstruct____missing_field_name_236 __annonCompField59 ;
};
struct lockref {
   union __anonunion____missing_field_name_235 __annonCompField60 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_238 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_237 {
   struct __anonstruct____missing_field_name_238 __annonCompField61 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_237 __annonCompField62 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_239 {
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
   union __anonunion_d_u_239 d_u ;
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
struct __anonstruct____missing_field_name_243 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_242 {
   struct __anonstruct____missing_field_name_243 __annonCompField63 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_242 __annonCompField64 ;
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
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
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
struct dquot;
typedef __kernel_uid32_t projid_t;
struct __anonstruct_kprojid_t_247 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_247 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_248 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_248 __annonCompField66 ;
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
union __anonunion____missing_field_name_251 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_252 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_253 {
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
   union __anonunion____missing_field_name_251 __annonCompField67 ;
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
   union __anonunion____missing_field_name_252 __annonCompField68 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_253 __annonCompField69 ;
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
union __anonunion_f_u_254 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_254 f_u ;
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
struct __anonstruct_afs_256 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_255 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_256 afs ;
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
   union __anonunion_fl_u_255 fl_u ;
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
union __anonunion_in6_u_271 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_271 in6_u ;
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
union __anonunion____missing_field_name_276 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_277 {
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
   union __anonunion____missing_field_name_276 __annonCompField73 ;
   union __anonunion____missing_field_name_277 __annonCompField74 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_280 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_279 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_280 __annonCompField75 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_279 __annonCompField76 ;
};
union __anonunion____missing_field_name_283 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_282 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_283 __annonCompField77 ;
};
union __anonunion____missing_field_name_281 {
   struct __anonstruct____missing_field_name_282 __annonCompField78 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_285 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_284 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_285 __annonCompField80 ;
};
union __anonunion____missing_field_name_286 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_287 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_288 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_281 __annonCompField79 ;
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
   union __anonunion____missing_field_name_284 __annonCompField81 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_286 __annonCompField82 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_287 __annonCompField83 ;
   union __anonunion____missing_field_name_288 __annonCompField84 ;
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
enum pkt_hash_types {
    PKT_HASH_TYPE_NONE = 0,
    PKT_HASH_TYPE_L2 = 1,
    PKT_HASH_TYPE_L3 = 2,
    PKT_HASH_TYPE_L4 = 3
} ;
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
struct __anonstruct_possible_net_t_305 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_305 possible_net_t;
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
typedef int phy_interface_t;
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
   int state ;
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
struct __anonstruct_adj_list_315 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_316 {
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
union __anonunion____missing_field_name_317 {
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
   struct __anonstruct_adj_list_315 adj_list ;
   struct __anonstruct_all_adj_list_316 all_adj_list ;
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
   union __anonunion____missing_field_name_317 __annonCompField94 ;
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
struct clk;
typedef u64 acpi_io_address;
typedef void *acpi_handle;
typedef u32 acpi_object_type;
struct __anonstruct_integer_326 {
   acpi_object_type type ;
   u64 value ;
};
struct __anonstruct_string_327 {
   acpi_object_type type ;
   u32 length ;
   char *pointer ;
};
struct __anonstruct_buffer_328 {
   acpi_object_type type ;
   u32 length ;
   u8 *pointer ;
};
struct __anonstruct_package_329 {
   acpi_object_type type ;
   u32 count ;
   union acpi_object *elements ;
};
struct __anonstruct_reference_330 {
   acpi_object_type type ;
   acpi_object_type actual_type ;
   acpi_handle handle ;
};
struct __anonstruct_processor_331 {
   acpi_object_type type ;
   u32 proc_id ;
   acpi_io_address pblk_address ;
   u32 pblk_length ;
};
struct __anonstruct_power_resource_332 {
   acpi_object_type type ;
   u32 system_level ;
   u32 resource_order ;
};
union acpi_object {
   acpi_object_type type ;
   struct __anonstruct_integer_326 integer ;
   struct __anonstruct_string_327 string ;
   struct __anonstruct_buffer_328 buffer ;
   struct __anonstruct_package_329 package ;
   struct __anonstruct_reference_330 reference ;
   struct __anonstruct_processor_331 processor ;
   struct __anonstruct_power_resource_332 power_resource ;
};
struct acpi_driver;
struct acpi_device;
struct acpi_hotplug_profile {
   struct kobject kobj ;
   int (*scan_dependent)(struct acpi_device * ) ;
   void (*notify_online)(struct acpi_device * ) ;
   bool enabled ;
   bool demand_offline ;
};
struct acpi_scan_handler {
   struct acpi_device_id const *ids ;
   struct list_head list_node ;
   bool (*match)(char * , struct acpi_device_id const ** ) ;
   int (*attach)(struct acpi_device * , struct acpi_device_id const * ) ;
   void (*detach)(struct acpi_device * ) ;
   void (*bind)(struct device * ) ;
   void (*unbind)(struct device * ) ;
   struct acpi_hotplug_profile hotplug ;
};
struct acpi_hotplug_context {
   struct acpi_device *self ;
   int (*notify)(struct acpi_device * , u32 ) ;
   void (*uevent)(struct acpi_device * , u32 ) ;
   void (*fixup)(struct acpi_device * ) ;
};
struct acpi_device_ops {
   int (*add)(struct acpi_device * ) ;
   int (*remove)(struct acpi_device * ) ;
   void (*notify)(struct acpi_device * , u32 ) ;
};
struct acpi_driver {
   char name[80U] ;
   char class[80U] ;
   struct acpi_device_id const *ids ;
   unsigned int flags ;
   struct acpi_device_ops ops ;
   struct device_driver drv ;
   struct module *owner ;
};
struct acpi_device_status {
   unsigned char present : 1 ;
   unsigned char enabled : 1 ;
   unsigned char show_in_ui : 1 ;
   unsigned char functional : 1 ;
   unsigned char battery_present : 1 ;
   unsigned int reserved : 27 ;
};
struct acpi_device_flags {
   unsigned char dynamic_status : 1 ;
   unsigned char removable : 1 ;
   unsigned char ejectable : 1 ;
   unsigned char power_manageable : 1 ;
   unsigned char match_driver : 1 ;
   unsigned char initialized : 1 ;
   unsigned char visited : 1 ;
   unsigned char hotplug_notify : 1 ;
   unsigned char is_dock_station : 1 ;
   unsigned char of_compatible_ok : 1 ;
   unsigned char coherent_dma : 1 ;
   unsigned char cca_seen : 1 ;
   unsigned int reserved : 20 ;
};
struct acpi_device_dir {
   struct proc_dir_entry *entry ;
};
typedef char acpi_bus_id[8U];
typedef unsigned long acpi_bus_address;
typedef char acpi_device_name[40U];
typedef char acpi_device_class[20U];
struct acpi_pnp_type {
   unsigned char hardware_id : 1 ;
   unsigned char bus_address : 1 ;
   unsigned char platform_id : 1 ;
   unsigned int reserved : 29 ;
};
struct acpi_device_pnp {
   acpi_bus_id bus_id ;
   struct acpi_pnp_type type ;
   acpi_bus_address bus_address ;
   char *unique_id ;
   struct list_head ids ;
   acpi_device_name device_name ;
   acpi_device_class device_class ;
   union acpi_object *str_obj ;
};
struct acpi_device_power_flags {
   unsigned char explicit_get : 1 ;
   unsigned char power_resources : 1 ;
   unsigned char inrush_current : 1 ;
   unsigned char power_removed : 1 ;
   unsigned char ignore_parent : 1 ;
   unsigned char dsw_present : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_flags_333 {
   unsigned char valid : 1 ;
   unsigned char explicit_set : 1 ;
   unsigned char reserved : 6 ;
};
struct acpi_device_power_state {
   struct __anonstruct_flags_333 flags ;
   int power ;
   int latency ;
   struct list_head resources ;
};
struct acpi_device_power {
   int state ;
   struct acpi_device_power_flags flags ;
   struct acpi_device_power_state states[5U] ;
};
struct acpi_device_perf_flags {
   u8 reserved ;
};
struct __anonstruct_flags_334 {
   unsigned char valid : 1 ;
   unsigned char reserved : 7 ;
};
struct acpi_device_perf_state {
   struct __anonstruct_flags_334 flags ;
   u8 power ;
   u8 performance ;
   int latency ;
};
struct acpi_device_perf {
   int state ;
   struct acpi_device_perf_flags flags ;
   int state_count ;
   struct acpi_device_perf_state *states ;
};
struct acpi_device_wakeup_flags {
   unsigned char valid : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char notifier_present : 1 ;
   unsigned char enabled : 1 ;
};
struct acpi_device_wakeup_context {
   struct work_struct work ;
   struct device *dev ;
};
struct acpi_device_wakeup {
   acpi_handle gpe_device ;
   u64 gpe_number ;
   u64 sleep_state ;
   struct list_head resources ;
   struct acpi_device_wakeup_flags flags ;
   struct acpi_device_wakeup_context context ;
   struct wakeup_source *ws ;
   int prepare_count ;
};
struct acpi_device_data {
   union acpi_object const *pointer ;
   union acpi_object const *properties ;
   union acpi_object const *of_compatible ;
};
struct acpi_gpio_mapping;
struct acpi_device {
   int device_type ;
   acpi_handle handle ;
   struct fwnode_handle fwnode ;
   struct acpi_device *parent ;
   struct list_head children ;
   struct list_head node ;
   struct list_head wakeup_list ;
   struct list_head del_list ;
   struct acpi_device_status status ;
   struct acpi_device_flags flags ;
   struct acpi_device_pnp pnp ;
   struct acpi_device_power power ;
   struct acpi_device_wakeup wakeup ;
   struct acpi_device_perf performance ;
   struct acpi_device_dir dir ;
   struct acpi_device_data data ;
   struct acpi_scan_handler *handler ;
   struct acpi_hotplug_context *hp ;
   struct acpi_driver *driver ;
   struct acpi_gpio_mapping const *driver_gpios ;
   void *driver_data ;
   struct device dev ;
   unsigned int physical_node_count ;
   unsigned int dep_unmet ;
   struct list_head physical_node_list ;
   struct mutex physical_node_lock ;
   void (*remove)(struct acpi_device * ) ;
};
struct acpi_gpio_params {
   unsigned int crs_entry_index ;
   unsigned int line_index ;
   bool active_low ;
};
struct acpi_gpio_mapping {
   char const *name ;
   struct acpi_gpio_params const *data ;
   unsigned int size ;
};
struct cdev {
   struct kobject kobj ;
   struct module *owner ;
   struct file_operations const *ops ;
   struct list_head list ;
   dev_t dev ;
   unsigned int count ;
};
struct ptp_clock_time {
   __s64 sec ;
   __u32 nsec ;
   __u32 reserved ;
};
struct ptp_extts_request {
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[2U] ;
};
struct ptp_perout_request {
   struct ptp_clock_time start ;
   struct ptp_clock_time period ;
   unsigned int index ;
   unsigned int flags ;
   unsigned int rsv[4U] ;
};
enum ptp_pin_function {
    PTP_PF_NONE = 0,
    PTP_PF_EXTTS = 1,
    PTP_PF_PEROUT = 2,
    PTP_PF_PHYSYNC = 3
} ;
struct ptp_pin_desc {
   char name[64U] ;
   unsigned int index ;
   unsigned int func ;
   unsigned int chan ;
   unsigned int rsv[5U] ;
};
enum ldv_33499 {
    PTP_CLK_REQ_EXTTS = 0,
    PTP_CLK_REQ_PEROUT = 1,
    PTP_CLK_REQ_PPS = 2
} ;
union __anonunion____missing_field_name_339 {
   struct ptp_extts_request extts ;
   struct ptp_perout_request perout ;
};
struct ptp_clock_request {
   enum ldv_33499 type ;
   union __anonunion____missing_field_name_339 __annonCompField95 ;
};
struct ptp_clock_info {
   struct module *owner ;
   char name[16U] ;
   s32 max_adj ;
   int n_alarm ;
   int n_ext_ts ;
   int n_per_out ;
   int n_pins ;
   int pps ;
   struct ptp_pin_desc *pin_config ;
   int (*adjfreq)(struct ptp_clock_info * , s32 ) ;
   int (*adjtime)(struct ptp_clock_info * , s64 ) ;
   int (*gettime64)(struct ptp_clock_info * , struct timespec * ) ;
   int (*settime64)(struct ptp_clock_info * , struct timespec const * ) ;
   int (*enable)(struct ptp_clock_info * , struct ptp_clock_request * , int ) ;
   int (*verify)(struct ptp_clock_info * , unsigned int , enum ptp_pin_function ,
                 unsigned int ) ;
};
struct ptp_clock;
struct cyclecounter {
   cycle_t (*read)(struct cyclecounter const * ) ;
   cycle_t mask ;
   u32 mult ;
   u32 shift ;
};
struct timecounter {
   struct cyclecounter const *cc ;
   cycle_t cycle_last ;
   u64 nsec ;
   u64 mask ;
   u64 frac ;
};
struct hwtstamp_config {
   int flags ;
   int tx_type ;
   int rx_filter ;
};
struct xgbe_prv_data;
struct xgbe_packet_data {
   struct sk_buff *skb ;
   unsigned int attributes ;
   unsigned int errors ;
   unsigned int rdesc_count ;
   unsigned int length ;
   unsigned int header_len ;
   unsigned int tcp_header_len ;
   unsigned int tcp_payload_len ;
   unsigned short mss ;
   unsigned short vlan_ctag ;
   u64 rx_tstamp ;
   u32 rss_hash ;
   enum pkt_hash_types rss_hash_type ;
   unsigned int tx_packets ;
   unsigned int tx_bytes ;
};
struct xgbe_ring_desc {
   __le32 desc0 ;
   __le32 desc1 ;
   __le32 desc2 ;
   __le32 desc3 ;
};
struct xgbe_page_alloc {
   struct page *pages ;
   unsigned int pages_len ;
   unsigned int pages_offset ;
   dma_addr_t pages_dma ;
};
struct xgbe_buffer_data {
   struct xgbe_page_alloc pa ;
   struct xgbe_page_alloc pa_unmap ;
   dma_addr_t dma ;
   unsigned int dma_len ;
};
struct xgbe_tx_ring_data {
   unsigned int packets ;
   unsigned int bytes ;
};
struct xgbe_rx_ring_data {
   struct xgbe_buffer_data hdr ;
   struct xgbe_buffer_data buf ;
   unsigned short hdr_len ;
   unsigned short len ;
};
struct __anonstruct_state_341 {
   struct sk_buff *skb ;
   unsigned int len ;
   unsigned int error ;
};
struct xgbe_ring_data {
   struct xgbe_ring_desc *rdesc ;
   dma_addr_t rdesc_dma ;
   struct sk_buff *skb ;
   dma_addr_t skb_dma ;
   unsigned int skb_dma_len ;
   struct xgbe_tx_ring_data tx ;
   struct xgbe_rx_ring_data rx ;
   unsigned int mapped_as_page ;
   unsigned int state_saved ;
   struct __anonstruct_state_341 state ;
};
struct __anonstruct_tx_343 {
   unsigned int queue_stopped ;
   unsigned int xmit_more ;
   unsigned short cur_mss ;
   unsigned short cur_vlan_ctag ;
};
union __anonunion____missing_field_name_342 {
   struct __anonstruct_tx_343 tx ;
};
struct xgbe_ring {
   spinlock_t lock ;
   struct xgbe_packet_data packet_data ;
   struct xgbe_ring_desc *rdesc ;
   dma_addr_t rdesc_dma ;
   unsigned int rdesc_count ;
   struct xgbe_ring_data *rdata ;
   struct xgbe_page_alloc rx_hdr_pa ;
   struct xgbe_page_alloc rx_buf_pa ;
   unsigned int cur ;
   unsigned int dirty ;
   unsigned int coalesce_count ;
   union __anonunion____missing_field_name_342 __annonCompField97 ;
};
struct xgbe_channel {
   char name[16U] ;
   struct xgbe_prv_data *pdata ;
   unsigned int queue_index ;
   void *dma_regs ;
   int dma_irq ;
   char dma_irq_name[48U] ;
   struct napi_struct napi ;
   unsigned int saved_ier ;
   unsigned int tx_timer_active ;
   struct timer_list tx_timer ;
   struct xgbe_ring *tx_ring ;
   struct xgbe_ring *rx_ring ;
};
enum xgbe_int {
    XGMAC_INT_DMA_CH_SR_TI = 0,
    XGMAC_INT_DMA_CH_SR_TPS = 1,
    XGMAC_INT_DMA_CH_SR_TBU = 2,
    XGMAC_INT_DMA_CH_SR_RI = 3,
    XGMAC_INT_DMA_CH_SR_RBU = 4,
    XGMAC_INT_DMA_CH_SR_RPS = 5,
    XGMAC_INT_DMA_CH_SR_TI_RI = 6,
    XGMAC_INT_DMA_CH_SR_FBE = 7,
    XGMAC_INT_DMA_ALL = 8
} ;
enum xgbe_an {
    XGBE_AN_READY = 0,
    XGBE_AN_PAGE_RECEIVED = 1,
    XGBE_AN_INCOMPAT_LINK = 2,
    XGBE_AN_COMPLETE = 3,
    XGBE_AN_NO_LINK = 4,
    XGBE_AN_ERROR = 5
} ;
enum xgbe_rx {
    XGBE_RX_BPA = 0,
    XGBE_RX_XNP = 1,
    XGBE_RX_COMPLETE = 2,
    XGBE_RX_ERROR = 3
} ;
struct xgbe_phy {
   u32 supported ;
   u32 advertising ;
   u32 lp_advertising ;
   int address ;
   int autoneg ;
   int speed ;
   int duplex ;
   int link ;
   int pause_autoneg ;
   int tx_pause ;
   int rx_pause ;
};
struct xgbe_mmc_stats {
   u64 txoctetcount_gb ;
   u64 txframecount_gb ;
   u64 txbroadcastframes_g ;
   u64 txmulticastframes_g ;
   u64 tx64octets_gb ;
   u64 tx65to127octets_gb ;
   u64 tx128to255octets_gb ;
   u64 tx256to511octets_gb ;
   u64 tx512to1023octets_gb ;
   u64 tx1024tomaxoctets_gb ;
   u64 txunicastframes_gb ;
   u64 txmulticastframes_gb ;
   u64 txbroadcastframes_gb ;
   u64 txunderflowerror ;
   u64 txoctetcount_g ;
   u64 txframecount_g ;
   u64 txpauseframes ;
   u64 txvlanframes_g ;
   u64 rxframecount_gb ;
   u64 rxoctetcount_gb ;
   u64 rxoctetcount_g ;
   u64 rxbroadcastframes_g ;
   u64 rxmulticastframes_g ;
   u64 rxcrcerror ;
   u64 rxrunterror ;
   u64 rxjabbererror ;
   u64 rxundersize_g ;
   u64 rxoversize_g ;
   u64 rx64octets_gb ;
   u64 rx65to127octets_gb ;
   u64 rx128to255octets_gb ;
   u64 rx256to511octets_gb ;
   u64 rx512to1023octets_gb ;
   u64 rx1024tomaxoctets_gb ;
   u64 rxunicastframes_g ;
   u64 rxlengtherror ;
   u64 rxoutofrangetype ;
   u64 rxpauseframes ;
   u64 rxfifooverflow ;
   u64 rxvlanframes_gb ;
   u64 rxwatchdogerror ;
};
struct xgbe_ext_stats {
   u64 tx_tso_packets ;
   u64 rx_split_header_packets ;
};
struct xgbe_hw_if {
   int (*tx_complete)(struct xgbe_ring_desc * ) ;
   int (*set_mac_address)(struct xgbe_prv_data * , u8 * ) ;
   int (*config_rx_mode)(struct xgbe_prv_data * ) ;
   int (*enable_rx_csum)(struct xgbe_prv_data * ) ;
   int (*disable_rx_csum)(struct xgbe_prv_data * ) ;
   int (*enable_rx_vlan_stripping)(struct xgbe_prv_data * ) ;
   int (*disable_rx_vlan_stripping)(struct xgbe_prv_data * ) ;
   int (*enable_rx_vlan_filtering)(struct xgbe_prv_data * ) ;
   int (*disable_rx_vlan_filtering)(struct xgbe_prv_data * ) ;
   int (*update_vlan_hash_table)(struct xgbe_prv_data * ) ;
   int (*read_mmd_regs)(struct xgbe_prv_data * , int , int ) ;
   void (*write_mmd_regs)(struct xgbe_prv_data * , int , int , int ) ;
   int (*set_gmii_speed)(struct xgbe_prv_data * ) ;
   int (*set_gmii_2500_speed)(struct xgbe_prv_data * ) ;
   int (*set_xgmii_speed)(struct xgbe_prv_data * ) ;
   void (*enable_tx)(struct xgbe_prv_data * ) ;
   void (*disable_tx)(struct xgbe_prv_data * ) ;
   void (*enable_rx)(struct xgbe_prv_data * ) ;
   void (*disable_rx)(struct xgbe_prv_data * ) ;
   void (*powerup_tx)(struct xgbe_prv_data * ) ;
   void (*powerdown_tx)(struct xgbe_prv_data * ) ;
   void (*powerup_rx)(struct xgbe_prv_data * ) ;
   void (*powerdown_rx)(struct xgbe_prv_data * ) ;
   int (*init)(struct xgbe_prv_data * ) ;
   int (*exit)(struct xgbe_prv_data * ) ;
   int (*enable_int)(struct xgbe_channel * , enum xgbe_int ) ;
   int (*disable_int)(struct xgbe_channel * , enum xgbe_int ) ;
   void (*dev_xmit)(struct xgbe_channel * ) ;
   int (*dev_read)(struct xgbe_channel * ) ;
   void (*tx_desc_init)(struct xgbe_channel * ) ;
   void (*rx_desc_init)(struct xgbe_channel * ) ;
   void (*tx_desc_reset)(struct xgbe_ring_data * ) ;
   void (*rx_desc_reset)(struct xgbe_prv_data * , struct xgbe_ring_data * , unsigned int ) ;
   int (*is_last_desc)(struct xgbe_ring_desc * ) ;
   int (*is_context_desc)(struct xgbe_ring_desc * ) ;
   void (*tx_start_xmit)(struct xgbe_channel * , struct xgbe_ring * ) ;
   int (*config_tx_flow_control)(struct xgbe_prv_data * ) ;
   int (*config_rx_flow_control)(struct xgbe_prv_data * ) ;
   int (*config_rx_coalesce)(struct xgbe_prv_data * ) ;
   int (*config_tx_coalesce)(struct xgbe_prv_data * ) ;
   unsigned int (*usec_to_riwt)(struct xgbe_prv_data * , unsigned int ) ;
   unsigned int (*riwt_to_usec)(struct xgbe_prv_data * , unsigned int ) ;
   int (*config_rx_threshold)(struct xgbe_prv_data * , unsigned int ) ;
   int (*config_tx_threshold)(struct xgbe_prv_data * , unsigned int ) ;
   int (*config_rsf_mode)(struct xgbe_prv_data * , unsigned int ) ;
   int (*config_tsf_mode)(struct xgbe_prv_data * , unsigned int ) ;
   int (*config_osp_mode)(struct xgbe_prv_data * ) ;
   int (*config_rx_pbl_val)(struct xgbe_prv_data * ) ;
   int (*get_rx_pbl_val)(struct xgbe_prv_data * ) ;
   int (*config_tx_pbl_val)(struct xgbe_prv_data * ) ;
   int (*get_tx_pbl_val)(struct xgbe_prv_data * ) ;
   int (*config_pblx8)(struct xgbe_prv_data * ) ;
   void (*rx_mmc_int)(struct xgbe_prv_data * ) ;
   void (*tx_mmc_int)(struct xgbe_prv_data * ) ;
   void (*read_mmc_stats)(struct xgbe_prv_data * ) ;
   int (*config_tstamp)(struct xgbe_prv_data * , unsigned int ) ;
   void (*update_tstamp_addend)(struct xgbe_prv_data * , unsigned int ) ;
   void (*set_tstamp_time)(struct xgbe_prv_data * , unsigned int , unsigned int ) ;
   u64 (*get_tstamp_time)(struct xgbe_prv_data * ) ;
   u64 (*get_tx_tstamp)(struct xgbe_prv_data * ) ;
   void (*config_dcb_tc)(struct xgbe_prv_data * ) ;
   void (*config_dcb_pfc)(struct xgbe_prv_data * ) ;
   int (*enable_rss)(struct xgbe_prv_data * ) ;
   int (*disable_rss)(struct xgbe_prv_data * ) ;
   int (*set_rss_hash_key)(struct xgbe_prv_data * , u8 const * ) ;
   int (*set_rss_lookup_table)(struct xgbe_prv_data * , u32 const * ) ;
};
struct xgbe_phy_if {
   void (*phy_init)(struct xgbe_prv_data * ) ;
   int (*phy_reset)(struct xgbe_prv_data * ) ;
   int (*phy_start)(struct xgbe_prv_data * ) ;
   void (*phy_stop)(struct xgbe_prv_data * ) ;
   void (*phy_status)(struct xgbe_prv_data * ) ;
   int (*phy_config_aneg)(struct xgbe_prv_data * ) ;
};
struct xgbe_desc_if {
   int (*alloc_ring_resources)(struct xgbe_prv_data * ) ;
   void (*free_ring_resources)(struct xgbe_prv_data * ) ;
   int (*map_tx_skb)(struct xgbe_channel * , struct sk_buff * ) ;
   int (*map_rx_buffer)(struct xgbe_prv_data * , struct xgbe_ring * , struct xgbe_ring_data * ) ;
   void (*unmap_rdata)(struct xgbe_prv_data * , struct xgbe_ring_data * ) ;
   void (*wrapper_tx_desc_init)(struct xgbe_prv_data * ) ;
   void (*wrapper_rx_desc_init)(struct xgbe_prv_data * ) ;
};
struct xgbe_hw_features {
   unsigned int version ;
   unsigned int gmii ;
   unsigned int vlhash ;
   unsigned int sma ;
   unsigned int rwk ;
   unsigned int mgk ;
   unsigned int mmc ;
   unsigned int aoe ;
   unsigned int ts ;
   unsigned int eee ;
   unsigned int tx_coe ;
   unsigned int rx_coe ;
   unsigned int addn_mac ;
   unsigned int ts_src ;
   unsigned int sa_vlan_ins ;
   unsigned int rx_fifo_size ;
   unsigned int tx_fifo_size ;
   unsigned int adv_ts_hi ;
   unsigned int dma_width ;
   unsigned int dcb ;
   unsigned int sph ;
   unsigned int tso ;
   unsigned int dma_debug ;
   unsigned int rss ;
   unsigned int tc_cnt ;
   unsigned int hash_table_size ;
   unsigned int l3l4_filter_num ;
   unsigned int rx_q_cnt ;
   unsigned int tx_q_cnt ;
   unsigned int rx_ch_cnt ;
   unsigned int tx_ch_cnt ;
   unsigned int pps_out_num ;
   unsigned int aux_snap_num ;
};
struct xgbe_prv_data {
   struct net_device *netdev ;
   struct platform_device *pdev ;
   struct acpi_device *adev ;
   struct device *dev ;
   unsigned int use_acpi ;
   void *xgmac_regs ;
   void *xpcs_regs ;
   void *rxtx_regs ;
   void *sir0_regs ;
   void *sir1_regs ;
   spinlock_t lock ;
   struct mutex xpcs_mutex ;
   struct mutex rss_mutex ;
   unsigned long dev_state ;
   int dev_irq ;
   unsigned int per_channel_irq ;
   struct xgbe_hw_if hw_if ;
   struct xgbe_phy_if phy_if ;
   struct xgbe_desc_if desc_if ;
   unsigned int coherent ;
   unsigned int axdomain ;
   unsigned int arcache ;
   unsigned int awcache ;
   struct workqueue_struct *dev_workqueue ;
   struct work_struct service_work ;
   struct timer_list service_timer ;
   struct xgbe_channel *channel ;
   unsigned int channel_count ;
   unsigned int tx_ring_count ;
   unsigned int tx_desc_count ;
   unsigned int rx_ring_count ;
   unsigned int rx_desc_count ;
   unsigned int tx_q_count ;
   unsigned int rx_q_count ;
   unsigned int pblx8 ;
   unsigned int tx_sf_mode ;
   unsigned int tx_threshold ;
   unsigned int tx_pbl ;
   unsigned int tx_osp_mode ;
   unsigned int rx_sf_mode ;
   unsigned int rx_threshold ;
   unsigned int rx_pbl ;
   unsigned int tx_usecs ;
   unsigned int tx_frames ;
   unsigned int rx_riwt ;
   unsigned int rx_usecs ;
   unsigned int rx_frames ;
   unsigned int rx_buf_size ;
   unsigned int pause_autoneg ;
   unsigned int tx_pause ;
   unsigned int rx_pause ;
   u8 rss_key[40U] ;
   u32 rss_table[256U] ;
   u32 rss_options ;
   unsigned char mac_addr[6U] ;
   netdev_features_t netdev_features ;
   struct napi_struct napi ;
   struct xgbe_mmc_stats mmc_stats ;
   struct xgbe_ext_stats ext_stats ;
   unsigned long active_vlans[64U] ;
   struct clk *sysclk ;
   unsigned long sysclk_rate ;
   struct clk *ptpclk ;
   unsigned long ptpclk_rate ;
   spinlock_t tstamp_lock ;
   struct ptp_clock_info ptp_clock_info ;
   struct ptp_clock *ptp_clock ;
   struct hwtstamp_config tstamp_config ;
   struct cyclecounter tstamp_cc ;
   struct timecounter tstamp_tc ;
   unsigned int tstamp_addend ;
   struct work_struct tx_tstamp_work ;
   struct sk_buff *tx_tstamp_skb ;
   u64 tx_tstamp ;
   struct ieee_ets *ets ;
   struct ieee_pfc *pfc ;
   unsigned int q2tc_map[16U] ;
   unsigned int prio2q_map[8U] ;
   struct xgbe_hw_features hw_feat ;
   struct work_struct restart_work ;
   unsigned int power_down ;
   u32 msg_enable ;
   phy_interface_t phy_mode ;
   int phy_link ;
   int phy_speed ;
   struct xgbe_phy phy ;
   int mdio_mmd ;
   unsigned long link_check ;
   char an_name[48U] ;
   struct workqueue_struct *an_workqueue ;
   int an_irq ;
   struct work_struct an_irq_work ;
   unsigned int speed_set ;
   u32 serdes_blwc[3U] ;
   u32 serdes_cdr_rate[3U] ;
   u32 serdes_pq_skew[3U] ;
   u32 serdes_tx_amp[3U] ;
   u32 serdes_dfe_tap_cfg[3U] ;
   u32 serdes_dfe_tap_ena[3U] ;
   struct mutex an_mutex ;
   enum xgbe_an an_result ;
   enum xgbe_an an_state ;
   enum xgbe_rx kr_state ;
   enum xgbe_rx kx_state ;
   struct work_struct an_work ;
   unsigned int an_supported ;
   unsigned int parallel_detect ;
   unsigned int fec_ability ;
   unsigned long an_start ;
   unsigned int lpm_ctrl ;
   struct dentry *xgbe_debugfs ;
   unsigned int debugfs_xgmac_reg ;
   unsigned int debugfs_xpcs_mmd ;
   unsigned int debugfs_xpcs_reg ;
};
typedef bool ldv_func_ret_type___2;
typedef bool ldv_func_ret_type___3;
typedef bool ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef short __s16;
typedef __u16 __sum16;
enum hrtimer_restart;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
enum ldv_18572 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_18572 socket_state;
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
   int (*sendmsg)(struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   int (*set_peek_off)(struct sock * , int ) ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_228 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_228 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   u32 tskey ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
struct rtable;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct icmpv6_mib_device {
   atomic_long_t mibs[6U] ;
};
struct icmpv6msg_mib_device {
   atomic_long_t mibs[512U] ;
};
struct xfrm_policy;
struct xfrm_state;
struct request_sock;
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct page_counter {
   atomic_long_t count ;
   unsigned long limit ;
   struct page_counter *parent ;
   unsigned long watermark ;
   unsigned long failcnt ;
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
enum bpf_prog_type {
    BPF_PROG_TYPE_UNSPEC = 0,
    BPF_PROG_TYPE_SOCKET_FILTER = 1,
    BPF_PROG_TYPE_KPROBE = 2,
    BPF_PROG_TYPE_SCHED_CLS = 3,
    BPF_PROG_TYPE_SCHED_ACT = 4
} ;
struct bpf_prog_aux;
struct sock_fprog_kern {
   u16 len ;
   struct sock_filter *filter ;
};
union __anonunion____missing_field_name_328 {
   struct sock_filter insns[0U] ;
   struct bpf_insn insnsi[0U] ;
};
struct bpf_prog {
   u16 pages ;
   bool jited ;
   bool gpl_compatible ;
   u32 len ;
   enum bpf_prog_type type ;
   struct bpf_prog_aux *aux ;
   struct sock_fprog_kern *orig_prog ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct bpf_insn const * ) ;
   union __anonunion____missing_field_name_328 __annonCompField99 ;
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
   possible_net_t net ;
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
   int data[13U] ;
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
   possible_net_t net ;
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
   __be16 protocol ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   bool (*key_eq)(struct neighbour const * , void const * ) ;
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
union __anonunion____missing_field_name_339___0 {
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
   union __anonunion____missing_field_name_339___0 __annonCompField100 ;
};
struct __anonstruct_socket_lock_t_340 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_340 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_342 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_341 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_342 __annonCompField101 ;
};
union __anonunion____missing_field_name_343 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_345 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_344 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_345 __annonCompField104 ;
};
union __anonunion____missing_field_name_346 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_347 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_341 __annonCompField102 ;
   union __anonunion____missing_field_name_343 __annonCompField103 ;
   union __anonunion____missing_field_name_344 __annonCompField105 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_346 __annonCompField106 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_347 __annonCompField107 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_348 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_348 sk_backlog ;
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
   u32 sk_ack_backlog ;
   u32 sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
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
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_351 {
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
   int (*sendmsg)(struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct sock * , struct msghdr * , size_t , int , int , int * ) ;
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
   union __anonunion_h_351 h ;
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
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct request_sock const * ) ;
};
struct request_sock {
   struct sock_common __req_common ;
   struct request_sock *dl_next ;
   struct sock *rsk_listener ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   struct timer_list rsk_timer ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 *saved_syn ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct ipv6_stable_secret {
   bool initialized ;
   struct in6_addr secret ;
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
   struct ipv6_stable_secret stable_secret ;
   void *sysctl ;
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
union __anonunion____missing_field_name_376 {
   __be32 a4 ;
   __be32 a6[4U] ;
   struct in6_addr in6 ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_376 __annonCompField109 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_377 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_379 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_378 {
   struct __anonstruct____missing_field_name_379 __annonCompField111 ;
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
   union __anonunion____missing_field_name_377 __annonCompField110 ;
   union __anonunion____missing_field_name_378 __annonCompField112 ;
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
typedef int ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef __u16 __le16;
enum tk_offsets {
    TK_OFFS_REAL = 0,
    TK_OFFS_BOOT = 1,
    TK_OFFS_TAI = 2,
    TK_OFFS_MAX = 3
} ;
enum hrtimer_restart;
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool global_use ;
   int sync_cnt ;
   int refcount ;
   int synced ;
   struct callback_head callback_head ;
};
enum xgbe_mtl_fifo_size {
    XGMAC_MTL_FIFO_SIZE_256 = 0,
    XGMAC_MTL_FIFO_SIZE_512 = 1,
    XGMAC_MTL_FIFO_SIZE_1K = 3,
    XGMAC_MTL_FIFO_SIZE_2K = 7,
    XGMAC_MTL_FIFO_SIZE_4K = 15,
    XGMAC_MTL_FIFO_SIZE_8K = 31,
    XGMAC_MTL_FIFO_SIZE_16K = 63,
    XGMAC_MTL_FIFO_SIZE_32K = 127,
    XGMAC_MTL_FIFO_SIZE_64K = 255,
    XGMAC_MTL_FIFO_SIZE_128K = 511,
    XGMAC_MTL_FIFO_SIZE_256K = 1023
} ;
enum hrtimer_restart;
enum hrtimer_restart;
struct xgbe_stats {
   char stat_string[32U] ;
   int stat_size ;
   int stat_offset ;
};
enum hrtimer_restart;
enum xgbe_mode {
    XGBE_MODE_KR = 0,
    XGBE_MODE_KX = 1
} ;
typedef bool ldv_func_ret_type___10;
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static void set_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
}
}
extern void __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                              , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_is_err(void const *ptr ) ;
long ldv_ptr_err(void const *ptr ) ;
extern void *malloc(size_t ) ;
extern void *calloc(size_t , size_t ) ;
extern void *memset(void * , int , size_t ) ;
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
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int strcmp(char const * , char const * ) ;
extern char *strchr(char const * , int ) ;
extern int __bitmap_weight(unsigned long const * , unsigned int ) ;
__inline static int bitmap_weight(unsigned long const *src , unsigned int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static long PTR_ERR(void const *ptr ) ;
__inline static bool IS_ERR(void const *ptr ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
void ldv_destroy_workqueue_43(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_47(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_destroy_workqueue_49(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static unsigned long resource_type(struct resource const *res )
{
  {
  return ((unsigned long )res->flags & 7936UL);
}
}
extern int acpi_disabled ;
void ldv_check_alloc_flags(gfp_t flags ) ;
struct timer_list *ldv_timer_list_7_1 ;
struct work_struct *ldv_work_struct_3_1 ;
struct file *xpcs_reg_value_fops_group2 ;
int ldv_state_variable_0 ;
int ldv_work_1_1 ;
int ldv_state_variable_12 ;
struct platform_device *xgbe_driver_group1 ;
int ldv_state_variable_14 ;
int ldv_timer_6_2 ;
struct file *xpcs_reg_addr_fops_group2 ;
struct file *xgmac_reg_addr_fops_group2 ;
int ldv_state_variable_17 ;
struct work_struct *ldv_work_struct_2_0 ;
struct ieee_ets *xgbe_dcbnl_ops_group2 ;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
int ldv_timer_6_0 ;
struct work_struct *ldv_work_struct_2_2 ;
int ref_cnt ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_7 ;
struct work_struct *ldv_work_struct_3_3 ;
struct timer_list *ldv_timer_list_6_3 ;
struct timer_list *ldv_timer_list_6_2 ;
struct work_struct *ldv_work_struct_1_1 ;
struct inode *xpcs_mmd_fops_group1 ;
struct timer_list *ldv_timer_list_7_3 ;
int ldv_work_1_3 ;
struct work_struct *ldv_work_struct_2_1 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
int ldv_work_5_0 ;
struct work_struct *ldv_work_struct_4_2 ;
struct timer_list *ldv_timer_list_6_0 ;
struct file *xgmac_reg_value_fops_group2 ;
int ldv_timer_7_1 ;
int LDV_IN_INTERRUPT = 1;
struct timer_list *ldv_timer_list_7_0 ;
struct ethtool_cmd *xgbe_ethtool_ops_group0 ;
struct work_struct *ldv_work_struct_5_1 ;
int ldv_work_5_2 ;
int ldv_state_variable_3 ;
struct ethtool_coalesce *xgbe_ethtool_ops_group2 ;
struct net_device *xgbe_dcbnl_ops_group0 ;
int ldv_work_1_0 ;
int ldv_state_variable_4 ;
int ldv_work_2_1 ;
int ldv_timer_7_3 ;
int ldv_state_variable_8 ;
struct ieee_pfc *xgbe_dcbnl_ops_group1 ;
int ldv_state_variable_15 ;
struct net_device *xgbe_netdev_ops_group1 ;
struct device *xgbe_pm_ops_group1 ;
struct file *xpcs_mmd_fops_group2 ;
struct work_struct *ldv_work_struct_1_3 ;
struct work_struct *ldv_work_struct_5_2 ;
struct work_struct *ldv_work_struct_5_3 ;
int ldv_state_variable_5 ;
int ldv_state_variable_13 ;
struct net_device *xgbe_ethtool_ops_group3 ;
struct inode *xpcs_reg_value_fops_group1 ;
struct inode *xgmac_reg_value_fops_group1 ;
int ldv_work_3_2 ;
struct timer_list *ldv_timer_list_7_2 ;
int ldv_work_3_0 ;
struct work_struct *ldv_work_struct_2_3 ;
struct timer_list *ldv_timer_list_6_1 ;
int ldv_timer_7_0 ;
int ldv_state_variable_1 ;
int ldv_work_5_3 ;
int ldv_timer_6_3 ;
struct work_struct *ldv_work_struct_1_0 ;
int ldv_state_variable_10 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
int ldv_state_variable_16 ;
int ldv_state_variable_2 ;
struct ethtool_pauseparam *xgbe_ethtool_ops_group1 ;
int ldv_work_5_1 ;
int ldv_work_2_0 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
struct inode *xgmac_reg_addr_fops_group1 ;
int ldv_timer_7_2 ;
int ldv_state_variable_11 ;
int ldv_work_1_2 ;
struct inode *xpcs_reg_addr_fops_group1 ;
struct work_struct *ldv_work_struct_5_0 ;
struct work_struct *ldv_work_struct_1_2 ;
int ldv_timer_6_1 ;
int ldv_work_2_2 ;
struct work_struct *ldv_work_struct_4_1 ;
int probed_16 = 0;
int ldv_work_2_3 ;
void work_init_3(void) ;
void call_and_disable_all_2(int state ) ;
void work_init_5(void) ;
void ldv_initialize_ethtool_ops_14(void) ;
void ldv_net_device_ops_15(void) ;
void ldv_file_operations_9(void) ;
void timer_init_6(void) ;
void work_init_1(void) ;
void ldv_initialize_dcbnl_rtnl_ops_13(void) ;
void ldv_dev_pm_ops_17(void) ;
void ldv_file_operations_12(void) ;
void work_init_2(void) ;
void activate_work_2(struct work_struct *work , int state ) ;
void ldv_file_operations_10(void) ;
void timer_init_7(void) ;
void ldv_platform_driver_init_16(void) ;
void ldv_platform_probe_16(int (*probe)(struct platform_device * ) ) ;
void ldv_file_operations_8(void) ;
void work_init_4(void) ;
void ldv_file_operations_11(void) ;
extern void *devm_ioremap_resource(struct device * , struct resource * ) ;
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
extern struct device *get_device(struct device * ) ;
extern void dev_err(struct device const * , char const * , ...) ;
extern void dev_notice(struct device const * , char const * , ...) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq(struct platform_device * , unsigned int ) ;
extern void platform_device_put(struct platform_device * ) ;
extern int __platform_driver_register(struct platform_driver * , struct module * ) ;
int ldv___platform_driver_register_52(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
void ldv_platform_driver_unregister_53(struct platform_driver *ldv_func_arg1 ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
__inline static void platform_set_drvdata(struct platform_device *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static int dma_set_mask_and_coherent(struct device *dev , u64 mask )
{
  int rc ;
  int tmp ;
  {
  tmp = dma_set_mask(dev, mask);
  rc = tmp;
  if (rc == 0) {
    dma_set_coherent_mask(dev, mask);
  } else {
  }
  return (rc);
}
}
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
extern bool device_property_present(struct device * , char const * ) ;
extern int device_property_read_u8_array(struct device * , char const * , u8 * ,
                                         size_t ) ;
extern int device_property_read_u32_array(struct device * , char const * , u32 * ,
                                          size_t ) ;
extern int device_property_read_string(struct device * , char const * , char const ** ) ;
__inline static int device_property_read_u32(struct device *dev , char const *propname ,
                                             u32 *val )
{
  int tmp ;
  {
  tmp = device_property_read_u32_array(dev, propname, val, 1UL);
  return (tmp);
}
}
extern bool device_dma_is_coherent(struct device * ) ;
extern void of_node_put(struct device_node * ) ;
extern struct device_node *of_parse_phandle(struct device_node const * , char const * ,
                                            int ) ;
__inline static char const *phy_modes(phy_interface_t interface )
{
  {
  switch ((unsigned int )interface) {
  case 0U: ;
  return ("");
  case 1U: ;
  return ("mii");
  case 2U: ;
  return ("gmii");
  case 3U: ;
  return ("sgmii");
  case 4U: ;
  return ("tbi");
  case 5U: ;
  return ("rev-mii");
  case 6U: ;
  return ("rmii");
  case 7U: ;
  return ("rgmii");
  case 8U: ;
  return ("rgmii-id");
  case 9U: ;
  return ("rgmii-rxid");
  case 10U: ;
  return ("rgmii-txid");
  case 11U: ;
  return ("rtbi");
  case 12U: ;
  return ("smii");
  case 13U: ;
  return ("xgmii");
  case 14U: ;
  return ("moca");
  case 15U: ;
  return ("qsgmii");
  default: ;
  return ("unknown");
  }
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_45(struct net_device *dev ) ;
void ldv_free_netdev_51(struct net_device *dev ) ;
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static u32 netif_msg_init(int debug_value , int default_msg_enable_bits )
{
  {
  if (debug_value < 0 || (unsigned int )debug_value > 31U) {
    return ((u32 )default_msg_enable_bits);
  } else {
  }
  if (debug_value == 0) {
    return (0U);
  } else {
  }
  return ((u32 )((1 << debug_value) + -1));
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_42(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_44(struct net_device *dev ) ;
void ldv_unregister_netdev_50(struct net_device *dev ) ;
extern void netdev_rss_key_fill(void * , size_t ) ;
__inline static char const *netdev_name(struct net_device const *dev )
{
  char *tmp ;
  {
  if ((int )((signed char )dev->name[0]) == 0) {
    return ("(unnamed net_device)");
  } else {
    tmp = strchr((char const *)(& dev->name), 37);
    if ((unsigned long )tmp != (unsigned long )((char *)0)) {
      return ("(unnamed net_device)");
    } else {
    }
  }
  return ((char const *)(& dev->name));
}
}
extern void netdev_err(struct net_device const * , char const * , ...) ;
extern void netdev_notice(struct net_device const * , char const * , ...) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  u32 a ;
  {
  a = *((u32 const *)addr);
  return ((a & 1U) != 0U);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
extern struct platform_device *of_find_device_by_node(struct device_node * ) ;
extern struct clk *devm_clk_get(struct device * , char const * ) ;
extern unsigned long clk_get_rate(struct clk * ) ;
__inline static bool is_acpi_node(struct fwnode_handle *fwnode )
{
  {
  return ((bool )((unsigned long )fwnode != (unsigned long )((struct fwnode_handle *)0) && (unsigned int )fwnode->type == 2U));
}
}
__inline static struct acpi_device *to_acpi_node(struct fwnode_handle *fwnode )
{
  struct fwnode_handle const *__mptr ;
  struct acpi_device *tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = is_acpi_node(fwnode);
  if ((int )tmp___1) {
    __mptr = (struct fwnode_handle const *)fwnode;
    tmp___0 = (struct acpi_device *)__mptr + 0xfffffffffffffff0UL;
  } else {
    tmp___0 = (struct acpi_device *)0;
  }
  return (tmp___0);
}
}
void xgbe_init_function_ptrs_dev(struct xgbe_hw_if *hw_if ) ;
void xgbe_init_function_ptrs_phy(struct xgbe_phy_if *phy_if ) ;
void xgbe_init_function_ptrs_desc(struct xgbe_desc_if *desc_if ) ;
struct net_device_ops *xgbe_get_netdev_ops(void) ;
struct ethtool_ops *xgbe_get_ethtool_ops(void) ;
struct dcbnl_rtnl_ops const *xgbe_get_dcbnl_ops(void) ;
void xgbe_ptp_register(struct xgbe_prv_data *pdata ) ;
void xgbe_ptp_unregister(struct xgbe_prv_data *pdata ) ;
void xgbe_get_all_hw_features(struct xgbe_prv_data *pdata ) ;
int xgbe_powerup(struct net_device *netdev , unsigned int caller ) ;
int xgbe_powerdown(struct net_device *netdev , unsigned int caller ) ;
void xgbe_init_rx_coalesce(struct xgbe_prv_data *pdata ) ;
void xgbe_init_tx_coalesce(struct xgbe_prv_data *pdata ) ;
void xgbe_debugfs_init(struct xgbe_prv_data *pdata ) ;
void xgbe_debugfs_exit(struct xgbe_prv_data *pdata ) ;
static int debug = -1;
static unsigned int const default_msg_level = 52U;
static u32 const xgbe_serdes_blwc[3U] = { 1U, 1U, 0U};
static u32 const xgbe_serdes_cdr_rate[3U] = { 2U, 2U, 7U};
static u32 const xgbe_serdes_pq_skew[3U] = { 10U, 10U, 18U};
static u32 const xgbe_serdes_tx_amp[3U] = { 15U, 15U, 10U};
static u32 const xgbe_serdes_dfe_tap_cfg[3U] = { 3U, 3U, 1U};
static u32 const xgbe_serdes_dfe_tap_ena[3U] = { 0U, 0U, 127U};
static void xgbe_default_config(struct xgbe_prv_data *pdata )
{
  {
  pdata->pblx8 = 1U;
  pdata->tx_sf_mode = 1U;
  pdata->tx_threshold = 0U;
  pdata->tx_pbl = 16U;
  pdata->tx_osp_mode = 1U;
  pdata->rx_sf_mode = 0U;
  pdata->rx_threshold = 0U;
  pdata->rx_pbl = 16U;
  pdata->pause_autoneg = 1U;
  pdata->tx_pause = 1U;
  pdata->rx_pause = 1U;
  pdata->phy_speed = -1;
  pdata->power_down = 0U;
  return;
}
}
static void xgbe_init_all_fptrs(struct xgbe_prv_data *pdata )
{
  {
  xgbe_init_function_ptrs_dev(& pdata->hw_if);
  xgbe_init_function_ptrs_phy(& pdata->phy_if);
  xgbe_init_function_ptrs_desc(& pdata->desc_if);
  return;
}
}
static int xgbe_acpi_support(struct xgbe_prv_data *pdata )
{
  struct device *dev ;
  u32 property ;
  int ret ;
  {
  dev = pdata->dev;
  ret = device_property_read_u32(dev, "amd,dma-freq", & property);
  if (ret != 0) {
    dev_err((struct device const *)dev, "unable to obtain %s property\n", (char *)"amd,dma-freq");
    return (ret);
  } else {
  }
  pdata->sysclk_rate = (unsigned long )property;
  ret = device_property_read_u32(dev, "amd,ptp-freq", & property);
  if (ret != 0) {
    dev_err((struct device const *)dev, "unable to obtain %s property\n", (char *)"amd,ptp-freq");
    return (ret);
  } else {
  }
  pdata->ptpclk_rate = (unsigned long )property;
  return (0);
}
}
static int xgbe_of_support(struct xgbe_prv_data *pdata )
{
  struct device *dev ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  {
  dev = pdata->dev;
  pdata->sysclk = devm_clk_get(dev, "dma_clk");
  tmp___0 = IS_ERR((void const *)pdata->sysclk);
  if ((int )tmp___0) {
    dev_err((struct device const *)dev, "dma devm_clk_get failed\n");
    tmp = PTR_ERR((void const *)pdata->sysclk);
    return ((int )tmp);
  } else {
  }
  pdata->sysclk_rate = clk_get_rate(pdata->sysclk);
  pdata->ptpclk = devm_clk_get(dev, "ptp_clk");
  tmp___2 = IS_ERR((void const *)pdata->ptpclk);
  if ((int )tmp___2) {
    dev_err((struct device const *)dev, "ptp devm_clk_get failed\n");
    tmp___1 = PTR_ERR((void const *)pdata->ptpclk);
    return ((int )tmp___1);
  } else {
  }
  pdata->ptpclk_rate = clk_get_rate(pdata->ptpclk);
  return (0);
}
}
static struct platform_device *xgbe_of_get_phy_pdev(struct xgbe_prv_data *pdata )
{
  struct device *dev ;
  struct device_node *phy_node ;
  struct platform_device *phy_pdev ;
  {
  dev = pdata->dev;
  phy_node = of_parse_phandle((struct device_node const *)dev->of_node, "phy-handle",
                              0);
  if ((unsigned long )phy_node != (unsigned long )((struct device_node *)0)) {
    phy_pdev = of_find_device_by_node(phy_node);
    of_node_put(phy_node);
  } else {
    get_device(dev);
    phy_pdev = pdata->pdev;
  }
  return (phy_pdev);
}
}
static unsigned int xgbe_resource_count(struct platform_device *pdev , unsigned int type )
{
  unsigned int count ;
  int i ;
  struct resource *res ;
  unsigned long tmp ;
  {
  i = 0;
  count = 0U;
  goto ldv_50036;
  ldv_50035:
  res = pdev->resource + (unsigned long )i;
  tmp = resource_type((struct resource const *)res);
  if ((unsigned long )type == tmp) {
    count = count + 1U;
  } else {
  }
  i = i + 1;
  ldv_50036: ;
  if ((u32 )i < pdev->num_resources) {
    goto ldv_50035;
  } else {
  }
  return (count);
}
}
static struct platform_device *xgbe_get_phy_pdev(struct xgbe_prv_data *pdata )
{
  struct platform_device *phy_pdev ;
  {
  if (pdata->use_acpi != 0U) {
    get_device(pdata->dev);
    phy_pdev = pdata->pdev;
  } else {
    phy_pdev = xgbe_of_get_phy_pdev(pdata);
  }
  return (phy_pdev);
}
}
static int xgbe_probe(struct platform_device *pdev )
{
  struct xgbe_prv_data *pdata ;
  struct net_device *netdev ;
  struct device *dev ;
  struct device *phy_dev ;
  struct platform_device *phy_pdev ;
  struct resource *res ;
  char const *phy_mode ;
  unsigned int i ;
  unsigned int phy_memnum ;
  unsigned int phy_irqnum ;
  int ret ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  struct _ddebug descriptor___0 ;
  long tmp___7 ;
  unsigned int tmp___8 ;
  long tmp___9 ;
  bool tmp___10 ;
  struct _ddebug descriptor___1 ;
  long tmp___11 ;
  unsigned int tmp___12 ;
  long tmp___13 ;
  bool tmp___14 ;
  struct _ddebug descriptor___2 ;
  long tmp___15 ;
  unsigned int tmp___16 ;
  long tmp___17 ;
  bool tmp___18 ;
  struct _ddebug descriptor___3 ;
  long tmp___19 ;
  bool tmp___20 ;
  int tmp___21 ;
  char const *tmp___22 ;
  int tmp___23 ;
  bool tmp___24 ;
  bool tmp___25 ;
  bool tmp___26 ;
  bool tmp___27 ;
  bool tmp___28 ;
  bool tmp___29 ;
  bool tmp___30 ;
  bool tmp___31 ;
  unsigned int tmp___32 ;
  unsigned int __min1 ;
  unsigned int tmp___33 ;
  unsigned int __min2 ;
  unsigned int __min1___0 ;
  int tmp___34 ;
  unsigned int __min2___0 ;
  struct net_device_ops *tmp___35 ;
  struct ethtool_ops *tmp___36 ;
  char const *tmp___37 ;
  struct lock_class_key __key___3 ;
  char const *__lock_name ;
  char const *tmp___38 ;
  struct workqueue_struct *tmp___39 ;
  struct lock_class_key __key___4 ;
  char const *__lock_name___0 ;
  struct workqueue_struct *tmp___40 ;
  {
  dev = & pdev->dev;
  netdev = alloc_etherdev_mqs(5024, 16U, 16U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    dev_err((struct device const *)dev, "alloc_etherdev failed\n");
    ret = -12;
    goto err_alloc;
  } else {
  }
  netdev->dev.parent = dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  pdata->netdev = netdev;
  pdata->pdev = pdev;
  pdata->adev = to_acpi_node(dev->fwnode);
  pdata->dev = dev;
  platform_set_drvdata(pdev, (void *)netdev);
  spinlock_check(& pdata->lock);
  __raw_spin_lock_init(& pdata->lock.__annonCompField18.rlock, "&(&pdata->lock)->rlock",
                       & __key);
  __mutex_init(& pdata->xpcs_mutex, "&pdata->xpcs_mutex", & __key___0);
  __mutex_init(& pdata->rss_mutex, "&pdata->rss_mutex", & __key___1);
  spinlock_check(& pdata->tstamp_lock);
  __raw_spin_lock_init(& pdata->tstamp_lock.__annonCompField18.rlock, "&(&pdata->tstamp_lock)->rlock",
                       & __key___2);
  pdata->msg_enable = netif_msg_init(debug, (int )default_msg_level);
  set_bit(0L, (unsigned long volatile *)(& pdata->dev_state));
  pdata->use_acpi = (unsigned int )((unsigned long )pdata->adev != (unsigned long )((struct acpi_device *)0) && acpi_disabled == 0);
  phy_pdev = xgbe_get_phy_pdev(pdata);
  if ((unsigned long )phy_pdev == (unsigned long )((struct platform_device *)0)) {
    dev_err((struct device const *)dev, "unable to obtain phy device\n");
    ret = -22;
    goto err_phydev;
  } else {
  }
  phy_dev = & phy_pdev->dev;
  if ((unsigned long )pdev == (unsigned long )phy_pdev) {
    tmp___0 = xgbe_resource_count(pdev, 512U);
    phy_memnum = tmp___0 - 3U;
    tmp___1 = xgbe_resource_count(pdev, 1024U);
    phy_irqnum = tmp___1 - 1U;
  } else {
    phy_memnum = 0U;
    phy_irqnum = 0U;
  }
  pdata->tx_desc_count = 512U;
  if ((pdata->tx_desc_count & (pdata->tx_desc_count - 1U)) != 0U) {
    dev_err((struct device const *)dev, "tx descriptor count (%d) is not valid\n",
            pdata->tx_desc_count);
    ret = -22;
    goto err_io;
  } else {
  }
  pdata->rx_desc_count = 512U;
  if ((pdata->rx_desc_count & (pdata->rx_desc_count - 1U)) != 0U) {
    dev_err((struct device const *)dev, "rx descriptor count (%d) is not valid\n",
            pdata->rx_desc_count);
    ret = -22;
    goto err_io;
  } else {
  }
  res = platform_get_resource(pdev, 512U, 0U);
  pdata->xgmac_regs = devm_ioremap_resource(dev, res);
  tmp___3 = IS_ERR((void const *)pdata->xgmac_regs);
  if ((int )tmp___3) {
    dev_err((struct device const *)dev, "xgmac ioremap failed\n");
    tmp___2 = PTR_ERR((void const *)pdata->xgmac_regs);
    ret = (int )tmp___2;
    goto err_io;
  } else {
  }
  if ((pdata->msg_enable & 2U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_probe";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-main.c";
    descriptor.format = "xgmac_regs = %p\n";
    descriptor.lineno = 426U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "xgmac_regs = %p\n",
                        pdata->xgmac_regs);
    } else {
    }
  } else {
  }
  res = platform_get_resource(pdev, 512U, 1U);
  pdata->xpcs_regs = devm_ioremap_resource(dev, res);
  tmp___6 = IS_ERR((void const *)pdata->xpcs_regs);
  if ((int )tmp___6) {
    dev_err((struct device const *)dev, "xpcs ioremap failed\n");
    tmp___5 = PTR_ERR((void const *)pdata->xpcs_regs);
    ret = (int )tmp___5;
    goto err_io;
  } else {
  }
  if ((pdata->msg_enable & 2U) != 0U) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_probe";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-main.c";
    descriptor___0.format = "xpcs_regs  = %p\n";
    descriptor___0.lineno = 436U;
    descriptor___0.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "xpcs_regs  = %p\n",
                        pdata->xpcs_regs);
    } else {
    }
  } else {
  }
  tmp___8 = phy_memnum;
  phy_memnum = phy_memnum + 1U;
  res = platform_get_resource(phy_pdev, 512U, tmp___8);
  pdata->rxtx_regs = devm_ioremap_resource(dev, res);
  tmp___10 = IS_ERR((void const *)pdata->rxtx_regs);
  if ((int )tmp___10) {
    dev_err((struct device const *)dev, "rxtx ioremap failed\n");
    tmp___9 = PTR_ERR((void const *)pdata->rxtx_regs);
    ret = (int )tmp___9;
    goto err_io;
  } else {
  }
  if ((pdata->msg_enable & 2U) != 0U) {
    descriptor___1.modname = "amd_xgbe";
    descriptor___1.function = "xgbe_probe";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-main.c";
    descriptor___1.format = "rxtx_regs  = %p\n";
    descriptor___1.lineno = 446U;
    descriptor___1.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "rxtx_regs  = %p\n",
                        pdata->rxtx_regs);
    } else {
    }
  } else {
  }
  tmp___12 = phy_memnum;
  phy_memnum = phy_memnum + 1U;
  res = platform_get_resource(phy_pdev, 512U, tmp___12);
  pdata->sir0_regs = devm_ioremap_resource(dev, res);
  tmp___14 = IS_ERR((void const *)pdata->sir0_regs);
  if ((int )tmp___14) {
    dev_err((struct device const *)dev, "sir0 ioremap failed\n");
    tmp___13 = PTR_ERR((void const *)pdata->sir0_regs);
    ret = (int )tmp___13;
    goto err_io;
  } else {
  }
  if ((pdata->msg_enable & 2U) != 0U) {
    descriptor___2.modname = "amd_xgbe";
    descriptor___2.function = "xgbe_probe";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-main.c";
    descriptor___2.format = "sir0_regs  = %p\n";
    descriptor___2.lineno = 456U;
    descriptor___2.flags = 0U;
    tmp___15 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "sir0_regs  = %p\n",
                        pdata->sir0_regs);
    } else {
    }
  } else {
  }
  tmp___16 = phy_memnum;
  phy_memnum = phy_memnum + 1U;
  res = platform_get_resource(phy_pdev, 512U, tmp___16);
  pdata->sir1_regs = devm_ioremap_resource(dev, res);
  tmp___18 = IS_ERR((void const *)pdata->sir1_regs);
  if ((int )tmp___18) {
    dev_err((struct device const *)dev, "sir1 ioremap failed\n");
    tmp___17 = PTR_ERR((void const *)pdata->sir1_regs);
    ret = (int )tmp___17;
    goto err_io;
  } else {
  }
  if ((pdata->msg_enable & 2U) != 0U) {
    descriptor___3.modname = "amd_xgbe";
    descriptor___3.function = "xgbe_probe";
    descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-main.c";
    descriptor___3.format = "sir1_regs  = %p\n";
    descriptor___3.lineno = 466U;
    descriptor___3.flags = 0U;
    tmp___19 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev, "sir1_regs  = %p\n",
                        pdata->sir1_regs);
    } else {
    }
  } else {
  }
  ret = device_property_read_u8_array(dev, "mac-address", (u8 *)(& pdata->mac_addr),
                                      6UL);
  if (ret != 0) {
    goto _L;
  } else {
    tmp___20 = is_valid_ether_addr((u8 const *)(& pdata->mac_addr));
    if (tmp___20) {
      tmp___21 = 0;
    } else {
      tmp___21 = 1;
    }
    if (tmp___21) {
      _L:
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"mac-address");
      if (ret == 0) {
        ret = -22;
      } else {
      }
      goto err_io;
    } else {
    }
  }
  ret = device_property_read_string(dev, "phy-mode", & phy_mode);
  if (ret != 0) {
    goto _L___0;
  } else {
    tmp___22 = phy_modes(13);
    tmp___23 = strcmp(phy_mode, tmp___22);
    if (tmp___23 != 0) {
      _L___0:
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"phy-mode");
      if (ret == 0) {
        ret = -22;
      } else {
      }
      goto err_io;
    } else {
    }
  }
  pdata->phy_mode = 13;
  tmp___24 = device_property_present(dev, "amd,per-channel-interrupt");
  if ((int )tmp___24) {
    pdata->per_channel_irq = 1U;
  } else {
  }
  ret = device_property_read_u32(phy_dev, "amd,speed-set", & pdata->speed_set);
  if (ret != 0) {
    dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,speed-set");
    goto err_io;
  } else {
  }
  switch (pdata->speed_set) {
  case 0U: ;
  case 1U: ;
  goto ldv_50071;
  default:
  dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,speed-set");
  ret = -22;
  goto err_io;
  }
  ldv_50071:
  tmp___25 = device_property_present(phy_dev, "amd,serdes-blwc");
  if ((int )tmp___25) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-blwc", (u32 *)(& pdata->serdes_blwc),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-blwc");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_blwc), (void const *)(& xgbe_serdes_blwc),
             12UL);
  }
  tmp___26 = device_property_present(phy_dev, "amd,serdes-cdr-rate");
  if ((int )tmp___26) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-cdr-rate", (u32 *)(& pdata->serdes_cdr_rate),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-cdr-rate");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_cdr_rate), (void const *)(& xgbe_serdes_cdr_rate),
             12UL);
  }
  tmp___27 = device_property_present(phy_dev, "amd,serdes-pq-skew");
  if ((int )tmp___27) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-pq-skew", (u32 *)(& pdata->serdes_pq_skew),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-pq-skew");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_pq_skew), (void const *)(& xgbe_serdes_pq_skew),
             12UL);
  }
  tmp___28 = device_property_present(phy_dev, "amd,serdes-tx-amp");
  if ((int )tmp___28) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-tx-amp", (u32 *)(& pdata->serdes_tx_amp),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-tx-amp");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_tx_amp), (void const *)(& xgbe_serdes_tx_amp),
             12UL);
  }
  tmp___29 = device_property_present(phy_dev, "amd,serdes-dfe-tap-config");
  if ((int )tmp___29) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-dfe-tap-config", (u32 *)(& pdata->serdes_dfe_tap_cfg),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-dfe-tap-config");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_dfe_tap_cfg), (void const *)(& xgbe_serdes_dfe_tap_cfg),
             12UL);
  }
  tmp___30 = device_property_present(phy_dev, "amd,serdes-dfe-tap-enable");
  if ((int )tmp___30) {
    ret = device_property_read_u32_array(phy_dev, "amd,serdes-dfe-tap-enable", (u32 *)(& pdata->serdes_dfe_tap_ena),
                                         3UL);
    if (ret != 0) {
      dev_err((struct device const *)dev, "invalid %s property\n", (char *)"amd,serdes-dfe-tap-enable");
      goto err_io;
    } else {
    }
  } else {
    memcpy((void *)(& pdata->serdes_dfe_tap_ena), (void const *)(& xgbe_serdes_dfe_tap_ena),
             12UL);
  }
  if (pdata->use_acpi != 0U) {
    ret = xgbe_acpi_support(pdata);
  } else {
    ret = xgbe_of_support(pdata);
  }
  if (ret != 0) {
    goto err_io;
  } else {
  }
  tmp___31 = device_dma_is_coherent(pdata->dev);
  pdata->coherent = (unsigned int )tmp___31;
  if (pdata->coherent != 0U) {
    pdata->axdomain = 2U;
    pdata->arcache = 11U;
    pdata->awcache = 15U;
  } else {
    pdata->axdomain = 3U;
    pdata->arcache = 0U;
    pdata->awcache = 0U;
  }
  ret = platform_get_irq(pdev, 0U);
  if (ret < 0) {
    dev_err((struct device const *)dev, "platform_get_irq 0 failed\n");
    goto err_io;
  } else {
  }
  pdata->dev_irq = ret;
  tmp___32 = phy_irqnum;
  phy_irqnum = phy_irqnum + 1U;
  ret = platform_get_irq(phy_pdev, tmp___32);
  if (ret < 0) {
    dev_err((struct device const *)dev, "platform_get_irq phy 0 failed\n");
    goto err_io;
  } else {
  }
  pdata->an_irq = ret;
  netdev->irq = pdata->dev_irq;
  netdev->base_addr = (unsigned long )pdata->xgmac_regs;
  memcpy((void *)netdev->dev_addr, (void const *)(& pdata->mac_addr), (size_t )netdev->addr_len);
  xgbe_init_all_fptrs(pdata);
  (*(pdata->hw_if.exit))(pdata);
  xgbe_get_all_hw_features(pdata);
  xgbe_default_config(pdata);
  ret = dma_set_mask_and_coherent(dev, pdata->hw_feat.dma_width != 64U ? (1ULL << (int )pdata->hw_feat.dma_width) - 1ULL : 0xffffffffffffffffULL);
  if (ret != 0) {
    dev_err((struct device const *)dev, "dma_set_mask_and_coherent failed\n");
    goto err_io;
  } else {
  }
  tmp___33 = cpumask_weight(cpu_online_mask);
  __min1 = tmp___33;
  __min2 = pdata->hw_feat.tx_ch_cnt;
  pdata->tx_ring_count = __min1 < __min2 ? __min1 : __min2;
  pdata->tx_q_count = pdata->tx_ring_count;
  ret = netif_set_real_num_tx_queues(netdev, pdata->tx_ring_count);
  if (ret != 0) {
    dev_err((struct device const *)dev, "error setting real tx queue count\n");
    goto err_io;
  } else {
  }
  tmp___34 = netif_get_num_default_rss_queues();
  __min1___0 = (unsigned int )tmp___34;
  __min2___0 = pdata->hw_feat.rx_ch_cnt;
  pdata->rx_ring_count = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  pdata->rx_q_count = pdata->hw_feat.rx_q_cnt;
  ret = netif_set_real_num_rx_queues(netdev, pdata->rx_ring_count);
  if (ret != 0) {
    dev_err((struct device const *)dev, "error setting real rx queue count\n");
    goto err_io;
  } else {
  }
  netdev_rss_key_fill((void *)(& pdata->rss_key), 40UL);
  i = 0U;
  goto ldv_50080;
  ldv_50079:
  pdata->rss_table[i] = pdata->rss_table[i] & 4294967280U;
  pdata->rss_table[i] = pdata->rss_table[i] | (i % pdata->rx_ring_count & 15U);
  i = i + 1U;
  ldv_50080: ;
  if (i <= 255U) {
    goto ldv_50079;
  } else {
  }
  pdata->rss_options = pdata->rss_options & 4294967293U;
  pdata->rss_options = pdata->rss_options | 2U;
  pdata->rss_options = pdata->rss_options & 4294967291U;
  pdata->rss_options = pdata->rss_options | 4U;
  pdata->rss_options = pdata->rss_options & 4294967287U;
  pdata->rss_options = pdata->rss_options | 8U;
  (*(pdata->phy_if.phy_init))(pdata);
  tmp___35 = xgbe_get_netdev_ops();
  netdev->netdev_ops = (struct net_device_ops const *)tmp___35;
  tmp___36 = xgbe_get_ethtool_ops();
  netdev->ethtool_ops = (struct ethtool_ops const *)tmp___36;
  netdev->dcbnl_ops = xgbe_get_dcbnl_ops();
  netdev->hw_features = 17181000595ULL;
  if (pdata->hw_feat.rss != 0U) {
    netdev->hw_features = netdev->hw_features | 8589934592ULL;
  } else {
  }
  netdev->vlan_features = netdev->vlan_features | 1114131ULL;
  netdev->features = netdev->features | netdev->hw_features;
  pdata->netdev_features = netdev->features;
  netdev->priv_flags = netdev->priv_flags | 131072U;
  netdev->watchdog_timeo = 0;
  xgbe_init_rx_coalesce(pdata);
  xgbe_init_tx_coalesce(pdata);
  netif_carrier_off(netdev);
  ret = ldv_register_netdev_42(netdev);
  if (ret != 0) {
    dev_err((struct device const *)dev, "net device registration failed\n");
    goto err_io;
  } else {
  }
  tmp___37 = netdev_name((struct net_device const *)netdev);
  snprintf((char *)(& pdata->an_name), 47UL, "%s-pcs", tmp___37);
  __lock_name = "\"%s\"netdev_name(netdev)";
  tmp___38 = netdev_name((struct net_device const *)netdev);
  tmp___39 = __alloc_workqueue_key("%s", 131082U, 1, & __key___3, __lock_name, tmp___38);
  pdata->dev_workqueue = tmp___39;
  if ((unsigned long )pdata->dev_workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    netdev_err((struct net_device const *)netdev, "device workqueue creation failed\n");
    ret = -12;
    goto err_netdev;
  } else {
  }
  __lock_name___0 = "\"%s\"pdata->an_name";
  tmp___40 = __alloc_workqueue_key("%s", 131082U, 1, & __key___4, __lock_name___0,
                                   (char *)(& pdata->an_name));
  pdata->an_workqueue = tmp___40;
  if ((unsigned long )pdata->an_workqueue == (unsigned long )((struct workqueue_struct *)0)) {
    netdev_err((struct net_device const *)netdev, "phy workqueue creation failed\n");
    ret = -12;
    goto err_wq;
  } else {
  }
  xgbe_ptp_register(pdata);
  xgbe_debugfs_init(pdata);
  platform_device_put(phy_pdev);
  netdev_notice((struct net_device const *)netdev, "net device enabled\n");
  return (0);
  err_wq:
  ldv_destroy_workqueue_43(pdata->dev_workqueue);
  err_netdev:
  ldv_unregister_netdev_44(netdev);
  err_io:
  platform_device_put(phy_pdev);
  err_phydev:
  ldv_free_netdev_45(netdev);
  err_alloc:
  dev_notice((struct device const *)dev, "net device not enabled\n");
  return (ret);
}
}
static int xgbe_remove(struct platform_device *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct xgbe_prv_data *pdata ;
  void *tmp___0 ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)pdev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp___0;
  xgbe_debugfs_exit(pdata);
  xgbe_ptp_unregister(pdata);
  ldv_flush_workqueue_46(pdata->an_workqueue);
  ldv_destroy_workqueue_47(pdata->an_workqueue);
  ldv_flush_workqueue_48(pdata->dev_workqueue);
  ldv_destroy_workqueue_49(pdata->dev_workqueue);
  ldv_unregister_netdev_50(netdev);
  ldv_free_netdev_51(netdev);
  return (0);
}
}
static int xgbe_suspend(struct device *dev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct xgbe_prv_data *pdata ;
  void *tmp___0 ;
  int ret ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp___0;
  ret = 0;
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    ret = xgbe_powerdown(netdev, 1U);
  } else {
  }
  tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  pdata->lpm_ctrl = (unsigned int )tmp___2;
  pdata->lpm_ctrl = pdata->lpm_ctrl | 2048U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )pdata->lpm_ctrl);
  return (ret);
}
}
static int xgbe_resume(struct device *dev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct xgbe_prv_data *pdata ;
  void *tmp___0 ;
  int ret ;
  bool tmp___1 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  netdev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp___0;
  ret = 0;
  pdata->lpm_ctrl = pdata->lpm_ctrl & 4294965247U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )pdata->lpm_ctrl);
  tmp___1 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___1) {
    ret = xgbe_powerup(netdev, 1U);
  } else {
  }
  return (ret);
}
}
static struct acpi_device_id const xgbe_acpi_match[2U] = { {{'A', 'M', 'D', 'I', '8', '0', '0', '1', '\000'}, 0UL}};
struct acpi_device_id const __mod_acpi__xgbe_acpi_match_device_table[2U] ;
static struct of_device_id const xgbe_of_match[2U] = { {{(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
       (char)0, (char)0, (char)0, (char)0, (char)0}, {(char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0,
                                                      (char)0, (char)0, (char)0, (char)0},
      {'a', 'm', 'd', ',', 'x', 'g', 'b', 'e', '-', 's', 'e', 'a', 't', 't', 'l',
       'e', '-', 'v', '1', 'a', '\000'}, 0}};
struct of_device_id const __mod_of__xgbe_of_match_device_table[2U] ;
static struct dev_pm_ops const xgbe_pm_ops =
     {0, 0, & xgbe_suspend, & xgbe_resume, & xgbe_suspend, & xgbe_resume, & xgbe_suspend,
    & xgbe_resume, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct platform_driver xgbe_driver =
     {& xgbe_probe, & xgbe_remove, 0, 0, 0, {"amd-xgbe", 0, 0, 0, (_Bool)0, 0, (struct of_device_id const *)(& xgbe_of_match),
                                           (struct acpi_device_id const *)(& xgbe_acpi_match),
                                           0, 0, 0, 0, 0, 0, & xgbe_pm_ops, 0}, 0,
    (_Bool)0};
static int xgbe_driver_init(void)
{
  int tmp ;
  {
  tmp = ldv___platform_driver_register_52(& xgbe_driver, & __this_module);
  return (tmp);
}
}
static void xgbe_driver_exit(void)
{
  {
  ldv_platform_driver_unregister_53(& xgbe_driver);
  return;
}
}
int ldv_retval_20 ;
extern int ldv_suspend_late_17(void) ;
int ldv_retval_18 ;
int ldv_retval_2 ;
extern int ldv_resume_early_17(void) ;
int ldv_retval_5 ;
int ldv_retval_11 ;
int ldv_retval_1 ;
extern int ldv_prepare_17(void) ;
extern int ldv_freeze_late_17(void) ;
int ldv_retval_22 ;
extern int ldv_complete_17(void) ;
int ldv_retval_15 ;
extern int ldv_freeze_noirq_17(void) ;
int ldv_retval_16 ;
extern int ldv_thaw_early_17(void) ;
extern int ldv_suspend_noirq_17(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_8 ;
extern int ldv_restore_noirq_17(void) ;
int ldv_retval_7 ;
int ldv_retval_19 ;
extern int ldv_poweroff_late_17(void) ;
int ldv_retval_14 ;
int ldv_retval_17 ;
int ldv_retval_12 ;
extern int ldv_resume_noirq_17(void) ;
extern int ldv_poweroff_noirq_17(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_6 ;
int ldv_retval_21 ;
int ldv_retval_13 ;
int ldv_retval_9 ;
int ldv_retval_10 ;
int ldv_retval_4 ;
extern int ldv_thaw_noirq_17(void) ;
int ldv_retval_3 ;
extern int ldv_restore_early_17(void) ;
void ldv_dev_pm_ops_17(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1416UL);
  xgbe_pm_ops_group1 = (struct device *)tmp;
  return;
}
}
void ldv_platform_driver_init_16(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(1472UL);
  xgbe_driver_group1 = (struct platform_device *)tmp;
  return;
}
}
void ldv_platform_probe_16(int (*probe)(struct platform_device * ) )
{
  int err ;
  {
  err = (*probe)(xgbe_driver_group1);
  if (err == 0) {
    probed_16 = 1;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  return;
}
}
void ldv_main_exported_13(void) ;
void ldv_main_exported_8(void) ;
void ldv_main_exported_11(void) ;
void ldv_main_exported_10(void) ;
void ldv_main_exported_9(void) ;
void ldv_main_exported_12(void) ;
void ldv_main_exported_15(void) ;
void ldv_main_exported_14(void) ;
int main(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ldv_initialize();
  ldv_state_variable_11 = 0;
  timer_init_7();
  ldv_state_variable_7 = 1;
  ldv_state_variable_17 = 0;
  work_init_2();
  ldv_state_variable_2 = 1;
  work_init_1();
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_16 = 0;
  ldv_state_variable_13 = 0;
  timer_init_6();
  ldv_state_variable_6 = 1;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_15 = 0;
  ldv_state_variable_8 = 0;
  work_init_4();
  ldv_state_variable_4 = 1;
  ldv_state_variable_10 = 0;
  work_init_5();
  ldv_state_variable_5 = 1;
  ldv_50272:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_11 != 0) {
    ldv_main_exported_11();
  } else {
  }
  goto ldv_50222;
  case 1: ;
  goto ldv_50222;
  case 2: ;
  if (ldv_state_variable_17 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_17 == 12) {
      ldv_retval_19 = xgbe_resume(xgbe_pm_ops_group1);
      if (ldv_retval_19 == 0) {
        ldv_state_variable_17 = 15;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 1: ;
    if (ldv_state_variable_17 == 13) {
      ldv_retval_18 = xgbe_resume(xgbe_pm_ops_group1);
      if (ldv_retval_18 == 0) {
        ldv_state_variable_17 = 15;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 2: ;
    if (ldv_state_variable_17 == 2) {
      ldv_retval_17 = xgbe_suspend(xgbe_pm_ops_group1);
      if (ldv_retval_17 == 0) {
        ldv_state_variable_17 = 3;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 3: ;
    if (ldv_state_variable_17 == 2) {
      ldv_retval_16 = xgbe_suspend(xgbe_pm_ops_group1);
      if (ldv_retval_16 == 0) {
        ldv_state_variable_17 = 4;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 4: ;
    if (ldv_state_variable_17 == 2) {
      ldv_retval_15 = xgbe_suspend(xgbe_pm_ops_group1);
      if (ldv_retval_15 == 0) {
        ldv_state_variable_17 = 5;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 5: ;
    if (ldv_state_variable_17 == 14) {
      ldv_retval_14 = xgbe_resume(xgbe_pm_ops_group1);
      if (ldv_retval_14 == 0) {
        ldv_state_variable_17 = 15;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 6: ;
    if (ldv_state_variable_17 == 5) {
      ldv_retval_13 = ldv_suspend_late_17();
      if (ldv_retval_13 == 0) {
        ldv_state_variable_17 = 10;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 7: ;
    if (ldv_state_variable_17 == 7) {
      ldv_retval_12 = ldv_restore_early_17();
      if (ldv_retval_12 == 0) {
        ldv_state_variable_17 = 12;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 8: ;
    if (ldv_state_variable_17 == 10) {
      ldv_retval_11 = ldv_resume_early_17();
      if (ldv_retval_11 == 0) {
        ldv_state_variable_17 = 14;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 9: ;
    if (ldv_state_variable_17 == 9) {
      ldv_retval_10 = ldv_thaw_early_17();
      if (ldv_retval_10 == 0) {
        ldv_state_variable_17 = 13;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 10: ;
    if (ldv_state_variable_17 == 11) {
      ldv_retval_9 = ldv_resume_noirq_17();
      if (ldv_retval_9 == 0) {
        ldv_state_variable_17 = 14;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 11: ;
    if (ldv_state_variable_17 == 4) {
      ldv_retval_8 = ldv_freeze_noirq_17();
      if (ldv_retval_8 == 0) {
        ldv_state_variable_17 = 8;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 12: ;
    if (ldv_state_variable_17 == 1) {
      ldv_retval_7 = ldv_prepare_17();
      if (ldv_retval_7 == 0) {
        ldv_state_variable_17 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 13: ;
    if (ldv_state_variable_17 == 4) {
      ldv_retval_6 = ldv_freeze_late_17();
      if (ldv_retval_6 == 0) {
        ldv_state_variable_17 = 9;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 14: ;
    if (ldv_state_variable_17 == 8) {
      ldv_retval_5 = ldv_thaw_noirq_17();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_17 = 13;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 15: ;
    if (ldv_state_variable_17 == 3) {
      ldv_retval_4 = ldv_poweroff_noirq_17();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_17 = 6;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 16: ;
    if (ldv_state_variable_17 == 3) {
      ldv_retval_3 = ldv_poweroff_late_17();
      if (ldv_retval_3 == 0) {
        ldv_state_variable_17 = 7;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 17: ;
    if (ldv_state_variable_17 == 6) {
      ldv_retval_2 = ldv_restore_noirq_17();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_17 = 12;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 18: ;
    if (ldv_state_variable_17 == 5) {
      ldv_retval_1 = ldv_suspend_noirq_17();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_17 = 11;
      } else {
      }
    } else {
    }
    goto ldv_50226;
    case 19: ;
    if (ldv_state_variable_17 == 15) {
      ldv_complete_17();
      ldv_state_variable_17 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_50226;
    default:
    ldv_stop();
    }
    ldv_50226: ;
  } else {
  }
  goto ldv_50222;
  case 3: ;
  goto ldv_50222;
  case 4: ;
  goto ldv_50222;
  case 5: ;
  if (ldv_state_variable_0 != 0) {
    tmp___1 = __VERIFIER_nondet_int();
    switch (tmp___1) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      xgbe_driver_exit();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_50252;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_20 = xgbe_driver_init();
      if (ldv_retval_20 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_20 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_13 = 1;
        ldv_initialize_dcbnl_rtnl_ops_13();
        ldv_state_variable_10 = 1;
        ldv_file_operations_10();
        ldv_state_variable_8 = 1;
        ldv_file_operations_8();
        ldv_state_variable_14 = 1;
        ldv_initialize_ethtool_ops_14();
        ldv_state_variable_12 = 1;
        ldv_file_operations_12();
        ldv_state_variable_17 = 1;
        ldv_dev_pm_ops_17();
        ldv_state_variable_9 = 1;
        ldv_file_operations_9();
        ldv_state_variable_11 = 1;
        ldv_file_operations_11();
      } else {
      }
    } else {
    }
    goto ldv_50252;
    default:
    ldv_stop();
    }
    ldv_50252: ;
  } else {
  }
  goto ldv_50222;
  case 6: ;
  if (ldv_state_variable_16 != 0) {
    tmp___2 = __VERIFIER_nondet_int();
    switch (tmp___2) {
    case 0: ;
    if (ldv_state_variable_16 == 1) {
      ldv_retval_22 = xgbe_probe(xgbe_driver_group1);
      if (ldv_retval_22 == 0) {
        ldv_state_variable_16 = 2;
        ref_cnt = ref_cnt + 1;
        probed_16 = 1;
      } else {
      }
    } else {
    }
    goto ldv_50257;
    case 1: ;
    if (ldv_state_variable_16 == 2 && probed_16 == 1) {
      ldv_retval_21 = xgbe_remove(xgbe_driver_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_16 = 1;
        ref_cnt = ref_cnt - 1;
        probed_16 = 0;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_16 == 1 && probed_16 == 1) {
      ldv_retval_21 = xgbe_remove(xgbe_driver_group1);
      if (ldv_retval_21 == 0) {
        ldv_state_variable_16 = 1;
        ref_cnt = ref_cnt - 1;
        probed_16 = 0;
      } else {
      }
    } else {
    }
    goto ldv_50257;
    default:
    ldv_stop();
    }
    ldv_50257: ;
  } else {
  }
  goto ldv_50222;
  case 7: ;
  if (ldv_state_variable_13 != 0) {
    ldv_main_exported_13();
  } else {
  }
  goto ldv_50222;
  case 8: ;
  goto ldv_50222;
  case 9: ;
  goto ldv_50222;
  case 10: ;
  if (ldv_state_variable_9 != 0) {
    ldv_main_exported_9();
  } else {
  }
  goto ldv_50222;
  case 11: ;
  if (ldv_state_variable_12 != 0) {
    ldv_main_exported_12();
  } else {
  }
  goto ldv_50222;
  case 12: ;
  if (ldv_state_variable_14 != 0) {
    ldv_main_exported_14();
  } else {
  }
  goto ldv_50222;
  case 13: ;
  if (ldv_state_variable_15 != 0) {
    ldv_main_exported_15();
  } else {
  }
  goto ldv_50222;
  case 14: ;
  if (ldv_state_variable_8 != 0) {
    ldv_main_exported_8();
  } else {
  }
  goto ldv_50222;
  case 15: ;
  goto ldv_50222;
  case 16: ;
  if (ldv_state_variable_10 != 0) {
    ldv_main_exported_10();
  } else {
  }
  goto ldv_50222;
  case 17: ;
  goto ldv_50222;
  default:
  ldv_stop();
  }
  ldv_50222: ;
  goto ldv_50272;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static long PTR_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv_ptr_err(ptr);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr )
{
  bool tmp ;
  {
  tmp = ldv_is_err(ptr);
  return (tmp);
}
}
bool ldv_queue_work_on_15(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_16(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_17(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_18(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_19(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_31(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv_skb_clone_33(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_35(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_36(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_37(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_38(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_39(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_40(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_41(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_register_netdev_42(struct net_device *dev )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_15 = 1;
  ldv_net_device_ops_15();
  return (ldv_func_res);
}
}
void ldv_destroy_workqueue_43(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_unregister_netdev_44(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_15 = 0;
  return;
}
}
void ldv_free_netdev_45(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_15 = 0;
  return;
}
}
void ldv_flush_workqueue_46(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_47(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_flush_workqueue_48(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_destroy_workqueue_49(struct workqueue_struct *ldv_func_arg1 )
{
  {
  destroy_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_unregister_netdev_50(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_15 = 0;
  return;
}
}
void ldv_free_netdev_51(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_15 = 0;
  return;
}
}
int ldv___platform_driver_register_52(struct platform_driver *ldv_func_arg1 , struct module *ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = __platform_driver_register(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  ldv_state_variable_16 = 1;
  ldv_platform_driver_init_16();
  return (ldv_func_res);
}
}
void ldv_platform_driver_unregister_53(struct platform_driver *ldv_func_arg1 )
{
  {
  platform_driver_unregister(ldv_func_arg1);
  ldv_state_variable_16 = 0;
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static void clear_bit(long nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern void __dynamic_netdev_dbg(struct _ddebug * , struct net_device const * ,
                                 char const * , ...) ;
extern void __might_fault(char const * , int ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void *memset(void * , int , size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static void ldv_spin_unlock_irqrestore_82(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
__inline static ktime_t ns_to_ktime(u64 ns )
{
  ktime_t ktime_zero ;
  ktime_t __constr_expr_0 ;
  {
  ktime_zero.tv64 = 0LL;
  __constr_expr_0.tv64 = (long long )((unsigned long long )ktime_zero.tv64 + ns);
  return (__constr_expr_0);
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_113(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
int ldv_mod_timer_114(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_115(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_116(struct timer_list *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
bool ldv_queue_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_87(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_86(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_117(struct workqueue_struct *ldv_func_arg1 ) ;
void ldv_flush_workqueue_118(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_85(8192, wq, work);
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
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void kfree(void const * ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
void activate_suitable_timer_6(struct timer_list *timer , unsigned long data ) ;
void call_and_disable_work_1(struct work_struct *work ) ;
int reg_timer_7(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void activate_work_1(struct work_struct *work , int state ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void disable_work_1(struct work_struct *work ) ;
void ldv_timer_7(int state , struct timer_list *timer ) ;
void disable_suitable_timer_6(struct timer_list *timer ) ;
void activate_pending_timer_6(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void invoke_work_2(void) ;
void disable_suitable_timer_7(struct timer_list *timer ) ;
void call_and_disable_all_1(int state ) ;
void choose_timer_6(void) ;
int reg_timer_6(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_timer_6(int state , struct timer_list *timer ) ;
void disable_work_2(struct work_struct *work ) ;
void invoke_work_3(void) ;
void invoke_work_1(void) ;
void choose_timer_7(void) ;
void call_and_disable_all_3(int state ) ;
void activate_pending_timer_7(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void call_and_disable_work_2(struct work_struct *work ) ;
void activate_suitable_timer_7(struct timer_list *timer , unsigned long data ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 697);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    __copy_from_user_overflow();
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  __might_fault("./arch/x86/include/asm/uaccess.h", 732);
  tmp___0 = ldv__builtin_expect((long )(sz < 0 || (unsigned long )sz >= n), 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    __copy_to_user_overflow();
  }
  return (n);
}
}
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
extern void debug_dma_sync_single_for_cpu(struct device * , dma_addr_t , size_t ,
                                          int ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static void dma_sync_single_for_cpu(struct device *dev , dma_addr_t addr ,
                                             size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (108), "i" (12UL));
    ldv_26542: ;
    goto ldv_26542;
  } else {
  }
  if ((unsigned long )ops->sync_single_for_cpu != (unsigned long )((void (*)(struct device * ,
                                                                             dma_addr_t ,
                                                                             size_t ,
                                                                             enum dma_data_direction ))0)) {
    (*(ops->sync_single_for_cpu))(dev, addr, size, dir);
  } else {
  }
  debug_dma_sync_single_for_cpu(dev, addr, size, (int )dir);
  return;
}
}
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
struct sk_buff *ldv_skb_clone_103(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_111(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_105(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_101(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_109(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
__inline static void skb_set_hash(struct sk_buff *skb , __u32 hash , enum pkt_hash_types type )
{
  {
  skb->l4_hash = (unsigned int )type == 3U;
  skb->sw_hash = 0U;
  skb->hash = hash;
  return;
}
}
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static struct skb_shared_hwtstamps *skb_hwtstamps(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  return (& ((struct skb_shared_info *)tmp)->hwtstamps);
}
}
__inline static struct sk_buff *skb_get(struct sk_buff *skb )
{
  {
  atomic_inc(& skb->users);
  return (skb);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 142UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern void skb_add_rx_frag(struct sk_buff * , int , struct page * , int , int ,
                            unsigned int ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
struct sk_buff *ldv___netdev_alloc_skb_106(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_107(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_108(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern struct sk_buff *__napi_alloc_skb(struct napi_struct * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *napi_alloc_skb(struct napi_struct *napi , unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __napi_alloc_skb(napi, length, 32U);
  return (tmp);
}
}
__inline static int __skb_cow(struct sk_buff *skb , unsigned int headroom , int cloned )
{
  int delta ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  int tmp___1 ;
  {
  delta = 0;
  tmp___0 = skb_headroom((struct sk_buff const *)skb);
  if (tmp___0 < headroom) {
    tmp = skb_headroom((struct sk_buff const *)skb);
    delta = (int )(headroom - tmp);
  } else {
  }
  if (delta != 0 || cloned != 0) {
    _max1 = 32;
    _max2 = 64;
    _max1___0 = 32;
    _max2___0 = 64;
    tmp___1 = ldv_pskb_expand_head_109(skb, (((_max1 > _max2 ? _max1 : _max2) + -1) + delta) & - (_max1___0 > _max2___0 ? _max1___0 : _max2___0),
                                       0, 32U);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
__inline static int skb_cow_head(struct sk_buff *skb , unsigned int headroom )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = skb_header_cloned((struct sk_buff const *)skb);
  tmp___0 = __skb_cow(skb, headroom, tmp);
  return (tmp___0);
}
}
__inline static void skb_copy_to_linear_data(struct sk_buff *skb , void const *from ,
                                             unsigned int const len )
{
  {
  memcpy((void *)skb->data, from, (size_t )len);
  return;
}
}
extern void skb_clone_tx_timestamp(struct sk_buff * ) ;
extern void skb_tstamp_tx(struct sk_buff * , struct skb_shared_hwtstamps * ) ;
__inline static void sw_tx_timestamp(struct sk_buff *skb )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  if (((int )((struct skb_shared_info *)tmp)->tx_flags & 2) != 0) {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    if (((int )((struct skb_shared_info *)tmp___0)->tx_flags & 4) == 0) {
      skb_tstamp_tx(skb, (struct skb_shared_hwtstamps *)0);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void skb_tx_timestamp(struct sk_buff *skb )
{
  {
  skb_clone_tx_timestamp(skb);
  sw_tx_timestamp(skb);
  return;
}
}
__inline static void skb_record_rx_queue(struct sk_buff *skb , u16 rx_queue )
{
  {
  skb->queue_mapping = (unsigned int )rx_queue + 1U;
  return;
}
}
__inline static bool skb_is_gso(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return ((unsigned int )((struct skb_shared_info *)tmp)->gso_size != 0U);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
__inline static void dql_queued(struct dql *dql , unsigned int count )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(count > 268435455U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/dynamic_queue_limits.h"),
                         "i" (74), "i" (12UL));
    ldv_30529: ;
    goto ldv_30529;
  } else {
  }
  dql->last_obj_cnt = count;
  __asm__ volatile ("": : : "memory");
  dql->num_queued = dql->num_queued + count;
  return;
}
}
__inline static int dql_avail(struct dql const *dql )
{
  unsigned int __var ;
  unsigned int __var___0 ;
  {
  __var = 0U;
  __var___0 = 0U;
  return ((int )((unsigned int )*((unsigned int const volatile *)(& dql->adj_limit)) - (unsigned int )*((unsigned int const volatile *)(& dql->num_queued))));
}
}
extern void dql_completed(struct dql * , unsigned int ) ;
extern void dql_reset(struct dql * ) ;
extern int devm_request_threaded_irq(struct device * , unsigned int , irqreturn_t (*)(int ,
                                                                                       void * ) ,
                                     irqreturn_t (*)(int , void * ) , unsigned long ,
                                     char const * , void * ) ;
__inline static int devm_request_irq(struct device *dev , unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                                    void * ) ,
                                     unsigned long irqflags , char const *devname ,
                                     void *dev_id )
{
  int tmp ;
  {
  tmp = devm_request_threaded_irq(dev, irq, handler, (irqreturn_t (*)(int , void * ))0,
                                  irqflags, devname, dev_id);
  return (tmp);
}
}
extern void devm_free_irq(struct device * , unsigned int , void * ) ;
extern void disable_irq_nosync(unsigned int ) ;
extern void disable_irq(unsigned int ) ;
extern void enable_irq(unsigned int ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1L, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_complete(struct napi_struct *n )
{
  {
  return;
}
}
extern void napi_disable(struct napi_struct * ) ;
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (507), "i" (12UL));
    ldv_42002: ;
    goto ldv_42002;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void netdev_reset_tc(struct net_device *dev )
{
  {
  dev->num_tc = 0U;
  memset((void *)(& dev->tc_to_txq), 0, 64UL);
  memset((void *)(& dev->prio_tc_map), 0, 16UL);
  return;
}
}
__inline static int netdev_set_tc_queue(struct net_device *dev , u8 tc , u16 count ,
                                        u16 offset )
{
  {
  if ((int )dev->num_tc <= (int )tc) {
    return (-22);
  } else {
  }
  dev->tc_to_txq[(int )tc].count = count;
  dev->tc_to_txq[(int )tc].offset = offset;
  return (0);
}
}
__inline static int netdev_set_num_tc(struct net_device *dev , u8 num_tc )
{
  {
  if ((unsigned int )num_tc > 16U) {
    return (-22);
  } else {
  }
  dev->num_tc = num_tc;
  return (0);
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void netif_schedule_queue(struct netdev_queue * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_start_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_43068;
  ldv_43067:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  ldv_43068: ;
  if (dev->num_tx_queues > i) {
    goto ldv_43067;
  } else {
  }
  return;
}
}
extern void netif_tx_wake_queue(struct netdev_queue * ) ;
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
extern void netif_tx_stop_all_queues(struct net_device * ) ;
__inline static void netdev_tx_sent_queue(struct netdev_queue *dev_queue , unsigned int bytes )
{
  int tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  dql_queued(& dev_queue->dql, bytes);
  tmp = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___0 = ldv__builtin_expect(tmp >= 0, 1L);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  set_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  __asm__ volatile ("mfence": : : "memory");
  tmp___1 = dql_avail((struct dql const *)(& dev_queue->dql));
  tmp___2 = ldv__builtin_expect(tmp___1 >= 0, 0L);
  if (tmp___2 != 0L) {
    clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  } else {
  }
  return;
}
}
__inline static void netdev_tx_completed_queue(struct netdev_queue *dev_queue , unsigned int pkts ,
                                               unsigned int bytes )
{
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = ldv__builtin_expect(bytes == 0U, 0L);
  if (tmp != 0L) {
    return;
  } else {
  }
  dql_completed(& dev_queue->dql, bytes);
  __asm__ volatile ("mfence": : : "memory");
  tmp___0 = dql_avail((struct dql const *)(& dev_queue->dql));
  if (tmp___0 < 0) {
    return;
  } else {
  }
  tmp___1 = test_and_clear_bit(1L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___1 != 0) {
    netif_schedule_queue(dev_queue);
  } else {
  }
  return;
}
}
__inline static void netdev_tx_reset_queue(struct netdev_queue *q )
{
  {
  clear_bit(1L, (unsigned long volatile *)(& q->state));
  dql_reset(& q->dql);
  return;
}
}
__inline static void netif_stop_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  netif_tx_stop_queue(txq);
  return;
}
}
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern void netdev_alert(struct net_device const * , char const * , ...) ;
extern void netdev_warn(struct net_device const * , char const * , ...) ;
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )((int )tmp->doff * 4));
}
}
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
__inline static void __vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                            u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return;
}
}
__inline static void skb_mark_napi_id(struct sk_buff *skb , struct napi_struct *napi )
{
  {
  skb->__annonCompField82.napi_id = napi->napi_id;
  return;
}
}
extern int clk_prepare(struct clk * ) ;
extern void clk_unprepare(struct clk * ) ;
extern int clk_enable(struct clk * ) ;
extern void clk_disable(struct clk * ) ;
__inline static int clk_prepare_enable(struct clk *clk )
{
  int ret ;
  {
  ret = clk_prepare(clk);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = clk_enable(clk);
  if (ret != 0) {
    clk_unprepare(clk);
  } else {
  }
  return (ret);
}
}
__inline static void clk_disable_unprepare(struct clk *clk )
{
  {
  clk_disable(clk);
  clk_unprepare(clk);
  return;
}
}
extern u64 timecounter_cyc2time(struct timecounter * , cycle_t ) ;
void xgbe_dump_tx_desc(struct xgbe_prv_data *pdata , struct xgbe_ring *ring , unsigned int idx ,
                       unsigned int count , unsigned int flag ) ;
void xgbe_dump_rx_desc(struct xgbe_prv_data *pdata , struct xgbe_ring *ring , unsigned int idx ) ;
void xgbe_print_pkt(struct net_device *netdev , struct sk_buff *skb , bool tx_rx ) ;
static int xgbe_one_poll(struct napi_struct *napi , int budget ) ;
static int xgbe_all_poll(struct napi_struct *napi , int budget ) ;
static int xgbe_alloc_channels(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel_mem ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *tx_ring ;
  struct xgbe_ring *rx_ring ;
  unsigned int count ;
  unsigned int i ;
  int ret ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  struct xgbe_ring *tmp___2 ;
  struct lock_class_key __key___0 ;
  struct xgbe_ring *tmp___3 ;
  struct _ddebug descriptor ;
  long tmp___4 ;
  {
  ret = -12;
  __max1 = pdata->tx_ring_count;
  __max2 = pdata->rx_ring_count;
  count = __max1 > __max2 ? __max1 : __max2;
  tmp = kcalloc((size_t )count, 576UL, 208U);
  channel_mem = (struct xgbe_channel *)tmp;
  if ((unsigned long )channel_mem == (unsigned long )((struct xgbe_channel *)0)) {
    goto err_channel;
  } else {
  }
  tmp___0 = kcalloc((size_t )pdata->tx_ring_count, 256UL, 208U);
  tx_ring = (struct xgbe_ring *)tmp___0;
  if ((unsigned long )tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto err_tx_ring;
  } else {
  }
  tmp___1 = kcalloc((size_t )pdata->rx_ring_count, 256UL, 208U);
  rx_ring = (struct xgbe_ring *)tmp___1;
  if ((unsigned long )rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto err_rx_ring;
  } else {
  }
  i = 0U;
  channel = channel_mem;
  goto ldv_52405;
  ldv_52404:
  snprintf((char *)(& channel->name), 16UL, "channel-%d", i);
  channel->pdata = pdata;
  channel->queue_index = i;
  channel->dma_regs = pdata->xgmac_regs + ((unsigned long )(i * 128U) + 12544UL);
  if (pdata->per_channel_irq != 0U) {
    ret = platform_get_irq(pdata->pdev, i + 1U);
    if (ret < 0) {
      netdev_err((struct net_device const *)pdata->netdev, "platform_get_irq %u failed\n",
                 i + 1U);
      goto err_irq;
    } else {
    }
    channel->dma_irq = ret;
  } else {
  }
  if (pdata->tx_ring_count > i) {
    spinlock_check(& tx_ring->lock);
    __raw_spin_lock_init(& tx_ring->lock.__annonCompField18.rlock, "&(&tx_ring->lock)->rlock",
                         & __key);
    tmp___2 = tx_ring;
    tx_ring = tx_ring + 1;
    channel->tx_ring = tmp___2;
  } else {
  }
  if (pdata->rx_ring_count > i) {
    spinlock_check(& rx_ring->lock);
    __raw_spin_lock_init(& rx_ring->lock.__annonCompField18.rlock, "&(&rx_ring->lock)->rlock",
                         & __key___0);
    tmp___3 = rx_ring;
    rx_ring = rx_ring + 1;
    channel->rx_ring = tmp___3;
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_alloc_channels";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
    descriptor.format = "%s: dma_regs=%p, dma_irq=%d, tx=%p, rx=%p\n";
    descriptor.lineno = 189U;
    descriptor.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "%s: dma_regs=%p, dma_irq=%d, tx=%p, rx=%p\n", (char *)(& channel->name),
                           channel->dma_regs, channel->dma_irq, channel->tx_ring,
                           channel->rx_ring);
    } else {
    }
  } else {
  }
  i = i + 1U;
  channel = channel + 1;
  ldv_52405: ;
  if (i < count) {
    goto ldv_52404;
  } else {
  }
  pdata->channel = channel_mem;
  pdata->channel_count = count;
  return (0);
  err_irq:
  kfree((void const *)rx_ring);
  err_rx_ring:
  kfree((void const *)tx_ring);
  err_tx_ring:
  kfree((void const *)channel_mem);
  err_channel: ;
  return (ret);
}
}
static void xgbe_free_channels(struct xgbe_prv_data *pdata )
{
  {
  if ((unsigned long )pdata->channel == (unsigned long )((struct xgbe_channel *)0)) {
    return;
  } else {
  }
  kfree((void const *)(pdata->channel)->rx_ring);
  kfree((void const *)(pdata->channel)->tx_ring);
  kfree((void const *)pdata->channel);
  pdata->channel = (struct xgbe_channel *)0;
  pdata->channel_count = 0U;
  return;
}
}
__inline static unsigned int xgbe_tx_avail_desc(struct xgbe_ring *ring )
{
  {
  return (ring->rdesc_count + (ring->dirty - ring->cur));
}
}
__inline static unsigned int xgbe_rx_dirty_desc(struct xgbe_ring *ring )
{
  {
  return (ring->cur - ring->dirty);
}
}
static int xgbe_maybe_stop_tx_queue(struct xgbe_channel *channel , struct xgbe_ring *ring ,
                                    unsigned int count )
{
  struct xgbe_prv_data *pdata ;
  unsigned int tmp ;
  {
  pdata = channel->pdata;
  tmp = xgbe_tx_avail_desc(ring);
  if (tmp < count) {
    if ((int )pdata->msg_enable & 1) {
      netdev_info((struct net_device const *)pdata->netdev, "Tx queue stopped, not enough descriptors available\n");
    } else {
    }
    netif_stop_subqueue(pdata->netdev, (int )((u16 )channel->queue_index));
    ring->__annonCompField97.tx.queue_stopped = 1U;
    if (ring->__annonCompField97.tx.xmit_more != 0U) {
      (*(pdata->hw_if.tx_start_xmit))(channel, ring);
    } else {
    }
    return (16);
  } else {
  }
  return (0);
}
}
static int xgbe_calc_rx_buf_size(struct net_device *netdev , unsigned int mtu )
{
  unsigned int rx_buf_size ;
  unsigned int __min1 ;
  unsigned int __max1 ;
  unsigned int __max2 ;
  unsigned int __min2 ;
  {
  if (mtu > 9000U) {
    netdev_alert((struct net_device const *)netdev, "MTU exceeds maximum supported value\n");
    return (-22);
  } else {
  }
  rx_buf_size = mtu + 22U;
  __max1 = rx_buf_size;
  __max2 = 1522U;
  __min1 = __max1 > __max2 ? __max1 : __max2;
  __min2 = 4096U;
  rx_buf_size = __min1 < __min2 ? __min1 : __min2;
  rx_buf_size = (rx_buf_size + 63U) & 4294967232U;
  return ((int )rx_buf_size);
}
}
static void xgbe_enable_rx_tx_ints(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_channel *channel ;
  enum xgbe_int int_id ;
  unsigned int i ;
  {
  hw_if = & pdata->hw_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_52442;
  ldv_52441: ;
  if ((unsigned long )channel->tx_ring != (unsigned long )((struct xgbe_ring *)0) && (unsigned long )channel->rx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 6;
  } else
  if ((unsigned long )channel->tx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 0;
  } else
  if ((unsigned long )channel->rx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 3;
  } else {
    goto ldv_52440;
  }
  (*(hw_if->enable_int))(channel, int_id);
  ldv_52440:
  i = i + 1U;
  channel = channel + 1;
  ldv_52442: ;
  if (pdata->channel_count > i) {
    goto ldv_52441;
  } else {
  }
  return;
}
}
static void xgbe_disable_rx_tx_ints(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_channel *channel ;
  enum xgbe_int int_id ;
  unsigned int i ;
  {
  hw_if = & pdata->hw_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_52453;
  ldv_52452: ;
  if ((unsigned long )channel->tx_ring != (unsigned long )((struct xgbe_ring *)0) && (unsigned long )channel->rx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 6;
  } else
  if ((unsigned long )channel->tx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 0;
  } else
  if ((unsigned long )channel->rx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    int_id = 3;
  } else {
    goto ldv_52451;
  }
  (*(hw_if->disable_int))(channel, int_id);
  ldv_52451:
  i = i + 1U;
  channel = channel + 1;
  ldv_52453: ;
  if (pdata->channel_count > i) {
    goto ldv_52452;
  } else {
  }
  return;
}
}
static irqreturn_t xgbe_isr(int irq , void *data )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_hw_if *hw_if ;
  struct xgbe_channel *channel ;
  unsigned int dma_isr ;
  unsigned int dma_ch_isr ;
  unsigned int mac_isr ;
  unsigned int mac_tssr ;
  unsigned int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  pdata = (struct xgbe_prv_data *)data;
  hw_if = & pdata->hw_if;
  dma_isr = ioread32(pdata->xgmac_regs + 12296UL);
  if (dma_isr == 0U) {
    goto isr_done;
  } else {
  }
  if ((pdata->msg_enable & 512U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_isr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
    descriptor.format = "DMA_ISR=%#010x\n";
    descriptor.lineno = 335U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "DMA_ISR=%#010x\n", dma_isr);
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_52473;
  ldv_52472: ;
  if (((unsigned int )(1 << (int )i) & dma_isr) == 0U) {
    goto ldv_52470;
  } else {
  }
  channel = pdata->channel + (unsigned long )i;
  dma_ch_isr = ioread32(channel->dma_regs + 96UL);
  if ((pdata->msg_enable & 512U) != 0U) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_isr";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
    descriptor___0.format = "DMA_CH%u_ISR=%#010x\n";
    descriptor___0.lineno = 345U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                           "DMA_CH%u_ISR=%#010x\n", i, dma_ch_isr);
    } else {
    }
  } else {
  }
  if (pdata->per_channel_irq == 0U && ((int )dma_ch_isr & 1 || (dma_ch_isr & 64U) != 0U)) {
    tmp___1 = napi_schedule_prep(& pdata->napi);
    if ((int )tmp___1) {
      xgbe_disable_rx_tx_ints(pdata);
      __napi_schedule(& pdata->napi);
    } else {
    }
  } else {
  }
  if ((dma_ch_isr & 4096U) != 0U) {
    schedule_work(& pdata->restart_work);
  } else {
  }
  iowrite32(dma_ch_isr, channel->dma_regs + 96UL);
  ldv_52470:
  i = i + 1U;
  ldv_52473: ;
  if (pdata->channel_count > i) {
    goto ldv_52472;
  } else {
  }
  if ((dma_isr & 131072U) != 0U) {
    mac_isr = ioread32(pdata->xgmac_regs + 176UL);
    if ((mac_isr & 1024U) != 0U) {
      (*(hw_if->tx_mmc_int))(pdata);
    } else {
    }
    if ((mac_isr & 512U) != 0U) {
      (*(hw_if->rx_mmc_int))(pdata);
    } else {
    }
    if ((mac_isr & 4096U) != 0U) {
      mac_tssr = ioread32(pdata->xgmac_regs + 3360UL);
      if ((mac_tssr & 32768U) != 0U) {
        pdata->tx_tstamp = (*(hw_if->get_tx_tstamp))(pdata);
        schedule_work(& pdata->tx_tstamp_work);
      } else {
      }
    } else {
    }
  } else {
  }
  isr_done: ;
  return (1);
}
}
static irqreturn_t xgbe_dma_isr(int irq , void *data )
{
  struct xgbe_channel *channel ;
  bool tmp ;
  {
  channel = (struct xgbe_channel *)data;
  tmp = napi_schedule_prep(& channel->napi);
  if ((int )tmp) {
    disable_irq_nosync((unsigned int )channel->dma_irq);
    __napi_schedule(& channel->napi);
  } else {
  }
  return (1);
}
}
static void xgbe_tx_timer(unsigned long data )
{
  struct xgbe_channel *channel ;
  struct xgbe_prv_data *pdata ;
  struct napi_struct *napi ;
  bool tmp ;
  {
  channel = (struct xgbe_channel *)data;
  pdata = channel->pdata;
  napi = pdata->per_channel_irq != 0U ? & channel->napi : & pdata->napi;
  tmp = napi_schedule_prep(napi);
  if ((int )tmp) {
    if (pdata->per_channel_irq != 0U) {
      disable_irq_nosync((unsigned int )channel->dma_irq);
    } else {
      xgbe_disable_rx_tx_ints(pdata);
    }
    __napi_schedule(napi);
  } else {
  }
  channel->tx_timer_active = 0U;
  return;
}
}
static void xgbe_service(struct work_struct *work )
{
  struct xgbe_prv_data *pdata ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffffb88UL;
  (*(pdata->phy_if.phy_status))(pdata);
  return;
}
}
static void xgbe_service_timer(unsigned long data )
{
  struct xgbe_prv_data *pdata ;
  {
  pdata = (struct xgbe_prv_data *)data;
  schedule_work(& pdata->service_work);
  ldv_mod_timer_113(& pdata->service_timer, (unsigned long )jiffies + 250UL);
  return;
}
}
static void xgbe_init_timers(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  reg_timer_7(& pdata->service_timer, & xgbe_service_timer, (unsigned long )pdata);
  channel = pdata->channel;
  i = 0U;
  goto ldv_52503;
  ldv_52502: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_52501;
  } else {
  }
  reg_timer_7(& channel->tx_timer, & xgbe_tx_timer, (unsigned long )channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_52503: ;
  if (pdata->channel_count > i) {
    goto ldv_52502;
  } else {
  }
  ldv_52501: ;
  return;
}
}
static void xgbe_start_timers(struct xgbe_prv_data *pdata )
{
  {
  ldv_mod_timer_114(& pdata->service_timer, (unsigned long )jiffies + 250UL);
  return;
}
}
static void xgbe_stop_timers(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  ldv_del_timer_sync_115(& pdata->service_timer);
  channel = pdata->channel;
  i = 0U;
  goto ldv_52514;
  ldv_52513: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_52512;
  } else {
  }
  ldv_del_timer_sync_116(& channel->tx_timer);
  i = i + 1U;
  channel = channel + 1;
  ldv_52514: ;
  if (pdata->channel_count > i) {
    goto ldv_52513;
  } else {
  }
  ldv_52512: ;
  return;
}
}
void xgbe_get_all_hw_features(struct xgbe_prv_data *pdata )
{
  unsigned int mac_hfr0 ;
  unsigned int mac_hfr1 ;
  unsigned int mac_hfr2 ;
  struct xgbe_hw_features *hw_feat ;
  {
  hw_feat = & pdata->hw_feat;
  mac_hfr0 = ioread32(pdata->xgmac_regs + 284UL);
  mac_hfr1 = ioread32(pdata->xgmac_regs + 288UL);
  mac_hfr2 = ioread32(pdata->xgmac_regs + 292UL);
  memset((void *)hw_feat, 0, 132UL);
  hw_feat->version = ioread32(pdata->xgmac_regs + 272UL);
  hw_feat->gmii = (mac_hfr0 >> 1) & 1U;
  hw_feat->vlhash = (mac_hfr0 >> 4) & 1U;
  hw_feat->sma = (mac_hfr0 >> 5) & 1U;
  hw_feat->rwk = (mac_hfr0 >> 6) & 1U;
  hw_feat->mgk = (mac_hfr0 >> 7) & 1U;
  hw_feat->mmc = (mac_hfr0 >> 8) & 1U;
  hw_feat->aoe = (mac_hfr0 >> 9) & 1U;
  hw_feat->ts = (mac_hfr0 >> 12) & 1U;
  hw_feat->eee = (mac_hfr0 >> 13) & 1U;
  hw_feat->tx_coe = (mac_hfr0 >> 14) & 1U;
  hw_feat->rx_coe = (mac_hfr0 >> 16) & 1U;
  hw_feat->addn_mac = (mac_hfr0 >> 18) & 31U;
  hw_feat->ts_src = (mac_hfr0 >> 25) & 3U;
  hw_feat->sa_vlan_ins = (mac_hfr0 >> 27) & 1U;
  hw_feat->rx_fifo_size = mac_hfr1 & 31U;
  hw_feat->tx_fifo_size = (mac_hfr1 >> 6) & 31U;
  hw_feat->adv_ts_hi = (mac_hfr1 >> 13) & 1U;
  hw_feat->dma_width = (mac_hfr1 >> 14) & 3U;
  hw_feat->dcb = (mac_hfr1 >> 16) & 1U;
  hw_feat->sph = (mac_hfr1 >> 17) & 1U;
  hw_feat->tso = (mac_hfr1 >> 18) & 1U;
  hw_feat->dma_debug = (mac_hfr1 >> 19) & 1U;
  hw_feat->rss = (mac_hfr1 >> 20) & 1U;
  hw_feat->tc_cnt = (mac_hfr1 >> 21) & 7U;
  hw_feat->hash_table_size = (mac_hfr1 >> 24) & 7U;
  hw_feat->l3l4_filter_num = (mac_hfr1 >> 27) & 15U;
  hw_feat->rx_q_cnt = mac_hfr2 & 15U;
  hw_feat->tx_q_cnt = (mac_hfr2 >> 6) & 15U;
  hw_feat->rx_ch_cnt = (mac_hfr2 >> 12) & 15U;
  hw_feat->tx_ch_cnt = (mac_hfr2 >> 18) & 15U;
  hw_feat->pps_out_num = (mac_hfr2 >> 24) & 7U;
  hw_feat->aux_snap_num = (mac_hfr2 >> 28) & 7U;
  switch (hw_feat->hash_table_size) {
  case 0U: ;
  goto ldv_52523;
  case 1U:
  hw_feat->hash_table_size = 64U;
  goto ldv_52523;
  case 2U:
  hw_feat->hash_table_size = 128U;
  goto ldv_52523;
  case 3U:
  hw_feat->hash_table_size = 256U;
  goto ldv_52523;
  }
  ldv_52523: ;
  switch (hw_feat->dma_width) {
  case 0U:
  hw_feat->dma_width = 32U;
  goto ldv_52528;
  case 1U:
  hw_feat->dma_width = 40U;
  goto ldv_52528;
  case 2U:
  hw_feat->dma_width = 48U;
  goto ldv_52528;
  default:
  hw_feat->dma_width = 32U;
  }
  ldv_52528:
  hw_feat->rx_q_cnt = hw_feat->rx_q_cnt + 1U;
  hw_feat->tx_q_cnt = hw_feat->tx_q_cnt + 1U;
  hw_feat->rx_ch_cnt = hw_feat->rx_ch_cnt + 1U;
  hw_feat->tx_ch_cnt = hw_feat->tx_ch_cnt + 1U;
  hw_feat->tc_cnt = hw_feat->tc_cnt + 1U;
  return;
}
}
static void xgbe_napi_enable(struct xgbe_prv_data *pdata , unsigned int add )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  if (pdata->per_channel_irq != 0U) {
    channel = pdata->channel;
    i = 0U;
    goto ldv_52539;
    ldv_52538: ;
    if (add != 0U) {
      netif_napi_add(pdata->netdev, & channel->napi, & xgbe_one_poll, 64);
    } else {
    }
    napi_enable(& channel->napi);
    i = i + 1U;
    channel = channel + 1;
    ldv_52539: ;
    if (pdata->channel_count > i) {
      goto ldv_52538;
    } else {
    }
  } else {
    if (add != 0U) {
      netif_napi_add(pdata->netdev, & pdata->napi, & xgbe_all_poll, 64);
    } else {
    }
    napi_enable(& pdata->napi);
  }
  return;
}
}
static void xgbe_napi_disable(struct xgbe_prv_data *pdata , unsigned int del )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  if (pdata->per_channel_irq != 0U) {
    channel = pdata->channel;
    i = 0U;
    goto ldv_52548;
    ldv_52547:
    napi_disable(& channel->napi);
    if (del != 0U) {
      netif_napi_del(& channel->napi);
    } else {
    }
    i = i + 1U;
    channel = channel + 1;
    ldv_52548: ;
    if (pdata->channel_count > i) {
      goto ldv_52547;
    } else {
    }
  } else {
    napi_disable(& pdata->napi);
    if (del != 0U) {
      netif_napi_del(& pdata->napi);
    } else {
    }
  }
  return;
}
}
static int xgbe_request_irqs(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  struct net_device *netdev ;
  unsigned int i ;
  int ret ;
  char const *tmp ;
  {
  netdev = pdata->netdev;
  ret = devm_request_irq(pdata->dev, (unsigned int )pdata->dev_irq, & xgbe_isr, 0UL,
                         (char const *)(& netdev->name), (void *)pdata);
  if (ret != 0) {
    netdev_alert((struct net_device const *)netdev, "error requesting irq %d\n",
                 pdata->dev_irq);
    return (ret);
  } else {
  }
  if (pdata->per_channel_irq == 0U) {
    return (0);
  } else {
  }
  channel = pdata->channel;
  i = 0U;
  goto ldv_52559;
  ldv_52558:
  tmp = netdev_name((struct net_device const *)netdev);
  snprintf((char *)(& channel->dma_irq_name), 47UL, "%s-TxRx-%u", tmp, channel->queue_index);
  ret = devm_request_irq(pdata->dev, (unsigned int )channel->dma_irq, & xgbe_dma_isr,
                         0UL, (char const *)(& channel->dma_irq_name), (void *)channel);
  if (ret != 0) {
    netdev_alert((struct net_device const *)netdev, "error requesting irq %d\n",
                 channel->dma_irq);
    goto err_irq;
  } else {
  }
  i = i + 1U;
  channel = channel + 1;
  ldv_52559: ;
  if (pdata->channel_count > i) {
    goto ldv_52558;
  } else {
  }
  return (0);
  err_irq:
  i = i - 1U;
  channel = channel - 1;
  goto ldv_52562;
  ldv_52561:
  devm_free_irq(pdata->dev, (unsigned int )channel->dma_irq, (void *)channel);
  i = i - 1U;
  channel = channel - 1;
  ldv_52562: ;
  if (pdata->channel_count > i) {
    goto ldv_52561;
  } else {
  }
  devm_free_irq(pdata->dev, (unsigned int )pdata->dev_irq, (void *)pdata);
  return (ret);
}
}
static void xgbe_free_irqs(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  devm_free_irq(pdata->dev, (unsigned int )pdata->dev_irq, (void *)pdata);
  if (pdata->per_channel_irq == 0U) {
    return;
  } else {
  }
  channel = pdata->channel;
  i = 0U;
  goto ldv_52570;
  ldv_52569:
  devm_free_irq(pdata->dev, (unsigned int )channel->dma_irq, (void *)channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_52570: ;
  if (pdata->channel_count > i) {
    goto ldv_52569;
  } else {
  }
  return;
}
}
void xgbe_init_tx_coalesce(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  {
  hw_if = & pdata->hw_if;
  pdata->tx_usecs = 1000U;
  pdata->tx_frames = 25U;
  (*(hw_if->config_tx_coalesce))(pdata);
  return;
}
}
void xgbe_init_rx_coalesce(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  {
  hw_if = & pdata->hw_if;
  pdata->rx_riwt = (*(hw_if->usec_to_riwt))(pdata, 30U);
  pdata->rx_usecs = 30U;
  pdata->rx_frames = 25U;
  (*(hw_if->config_rx_coalesce))(pdata);
  return;
}
}
static void xgbe_free_tx_data(struct xgbe_prv_data *pdata )
{
  struct xgbe_desc_if *desc_if ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  unsigned int i ;
  unsigned int j ;
  {
  desc_if = & pdata->desc_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_52594;
  ldv_52593:
  ring = channel->tx_ring;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_52589;
  } else {
  }
  j = 0U;
  goto ldv_52591;
  ldv_52590:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & j);
  (*(desc_if->unmap_rdata))(pdata, rdata);
  j = j + 1U;
  ldv_52591: ;
  if (ring->rdesc_count > j) {
    goto ldv_52590;
  } else {
  }
  i = i + 1U;
  channel = channel + 1;
  ldv_52594: ;
  if (pdata->channel_count > i) {
    goto ldv_52593;
  } else {
  }
  ldv_52589: ;
  return;
}
}
static void xgbe_free_rx_data(struct xgbe_prv_data *pdata )
{
  struct xgbe_desc_if *desc_if ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  unsigned int i ;
  unsigned int j ;
  {
  desc_if = & pdata->desc_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_52609;
  ldv_52608:
  ring = channel->rx_ring;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_52604;
  } else {
  }
  j = 0U;
  goto ldv_52606;
  ldv_52605:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & j);
  (*(desc_if->unmap_rdata))(pdata, rdata);
  j = j + 1U;
  ldv_52606: ;
  if (ring->rdesc_count > j) {
    goto ldv_52605;
  } else {
  }
  i = i + 1U;
  channel = channel + 1;
  ldv_52609: ;
  if (pdata->channel_count > i) {
    goto ldv_52608;
  } else {
  }
  ldv_52604: ;
  return;
}
}
static int xgbe_phy_init(struct xgbe_prv_data *pdata )
{
  int tmp ;
  {
  pdata->phy_link = -1;
  pdata->phy_speed = -1;
  tmp = (*(pdata->phy_if.phy_reset))(pdata);
  return (tmp);
}
}
int xgbe_powerdown(struct net_device *netdev , unsigned int caller )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  unsigned long flags ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 || (caller == 2U && pdata->power_down != 0U)) {
    netdev_alert((struct net_device const *)netdev, "Device is already powered down\n");
    return (-22);
  } else {
  }
  ldv_spin_lock();
  if (caller == 1U) {
    netif_device_detach(netdev);
  } else {
  }
  netif_tx_stop_all_queues(netdev);
  xgbe_stop_timers(pdata);
  ldv_flush_workqueue_117(pdata->dev_workqueue);
  (*(hw_if->powerdown_tx))(pdata);
  (*(hw_if->powerdown_rx))(pdata);
  xgbe_napi_disable(pdata, 0U);
  pdata->power_down = 1U;
  spin_unlock_irqrestore(& pdata->lock, flags);
  return (0);
}
}
int xgbe_powerup(struct net_device *netdev , unsigned int caller )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  unsigned long flags ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  tmp___0 = netif_running((struct net_device const *)netdev);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 || (caller == 2U && pdata->power_down == 0U)) {
    netdev_alert((struct net_device const *)netdev, "Device is already powered up\n");
    return (-22);
  } else {
  }
  ldv_spin_lock();
  pdata->power_down = 0U;
  xgbe_napi_enable(pdata, 0U);
  (*(hw_if->powerup_tx))(pdata);
  (*(hw_if->powerup_rx))(pdata);
  if (caller == 1U) {
    netif_device_attach(netdev);
  } else {
  }
  netif_tx_start_all_queues(netdev);
  xgbe_start_timers(pdata);
  spin_unlock_irqrestore(& pdata->lock, flags);
  return (0);
}
}
static int xgbe_start(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_phy_if *phy_if ;
  struct net_device *netdev ;
  int ret ;
  {
  hw_if = & pdata->hw_if;
  phy_if = & pdata->phy_if;
  netdev = pdata->netdev;
  (*(hw_if->init))(pdata);
  ret = (*(phy_if->phy_start))(pdata);
  if (ret != 0) {
    goto err_phy;
  } else {
  }
  xgbe_napi_enable(pdata, 1U);
  ret = xgbe_request_irqs(pdata);
  if (ret != 0) {
    goto err_napi;
  } else {
  }
  (*(hw_if->enable_tx))(pdata);
  (*(hw_if->enable_rx))(pdata);
  netif_tx_start_all_queues(netdev);
  xgbe_start_timers(pdata);
  schedule_work(& pdata->service_work);
  return (0);
  err_napi:
  xgbe_napi_disable(pdata, 1U);
  (*(phy_if->phy_stop))(pdata);
  err_phy:
  (*(hw_if->exit))(pdata);
  return (ret);
}
}
static void xgbe_stop(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_phy_if *phy_if ;
  struct xgbe_channel *channel ;
  struct net_device *netdev ;
  struct netdev_queue *txq ;
  unsigned int i ;
  {
  hw_if = & pdata->hw_if;
  phy_if = & pdata->phy_if;
  netdev = pdata->netdev;
  netif_tx_stop_all_queues(netdev);
  xgbe_stop_timers(pdata);
  ldv_flush_workqueue_118(pdata->dev_workqueue);
  (*(hw_if->disable_tx))(pdata);
  (*(hw_if->disable_rx))(pdata);
  xgbe_free_irqs(pdata);
  xgbe_napi_disable(pdata, 1U);
  (*(phy_if->phy_stop))(pdata);
  (*(hw_if->exit))(pdata);
  channel = pdata->channel;
  i = 0U;
  goto ldv_52647;
  ldv_52646: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_52645;
  } else {
  }
  txq = netdev_get_tx_queue((struct net_device const *)netdev, channel->queue_index);
  netdev_tx_reset_queue(txq);
  ldv_52645:
  i = i + 1U;
  channel = channel + 1;
  ldv_52647: ;
  if (pdata->channel_count > i) {
    goto ldv_52646;
  } else {
  }
  return;
}
}
static void xgbe_restart_dev(struct xgbe_prv_data *pdata )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = netif_running((struct net_device const *)pdata->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  xgbe_stop(pdata);
  xgbe_free_tx_data(pdata);
  xgbe_free_rx_data(pdata);
  xgbe_start(pdata);
  return;
}
}
static void xgbe_restart(struct work_struct *work )
{
  struct xgbe_prv_data *pdata ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  pdata = (struct xgbe_prv_data *)__mptr + 0xffffffffffffef18UL;
  rtnl_lock();
  xgbe_restart_dev(pdata);
  rtnl_unlock();
  return;
}
}
static void xgbe_tx_tstamp(struct work_struct *work )
{
  struct xgbe_prv_data *pdata ;
  struct work_struct const *__mptr ;
  struct skb_shared_hwtstamps hwtstamps ;
  u64 nsec ;
  unsigned long flags ;
  {
  __mptr = (struct work_struct const *)work;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff070UL;
  if (pdata->tx_tstamp != 0ULL) {
    nsec = timecounter_cyc2time(& pdata->tstamp_tc, pdata->tx_tstamp);
    memset((void *)(& hwtstamps), 0, 8UL);
    hwtstamps.hwtstamp = ns_to_ktime(nsec);
    skb_tstamp_tx(pdata->tx_tstamp_skb, & hwtstamps);
  } else {
  }
  dev_kfree_skb_any(pdata->tx_tstamp_skb);
  ldv_spin_lock();
  pdata->tx_tstamp_skb = (struct sk_buff *)0;
  spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  return;
}
}
static int xgbe_get_hwtstamp_settings(struct xgbe_prv_data *pdata , struct ifreq *ifreq )
{
  unsigned long tmp ;
  {
  tmp = copy_to_user(ifreq->ifr_ifru.ifru_data, (void const *)(& pdata->tstamp_config),
                     12UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  return (0);
}
}
static int xgbe_set_hwtstamp_settings(struct xgbe_prv_data *pdata , struct ifreq *ifreq )
{
  struct hwtstamp_config config ;
  unsigned int mac_tscr ;
  unsigned long tmp ;
  {
  tmp = copy_from_user((void *)(& config), (void const *)ifreq->ifr_ifru.ifru_data,
                       12UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  if (config.flags != 0) {
    return (-22);
  } else {
  }
  mac_tscr = 0U;
  switch (config.tx_type) {
  case 0: ;
  goto ldv_52678;
  case 1:
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52678;
  default: ;
  return (-34);
  }
  ldv_52678: ;
  switch (config.rx_filter) {
  case 0: ;
  goto ldv_52682;
  case 1:
  mac_tscr = mac_tscr & 4294967039U;
  mac_tscr = mac_tscr | 256U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 6:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  case 3:
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294770687U;
  mac_tscr = mac_tscr | 65536U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 7:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  case 4:
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 8:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  case 5:
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294934527U;
  mac_tscr = mac_tscr | 32768U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 9:
  mac_tscr = mac_tscr & 4026531839U;
  mac_tscr = mac_tscr | 268435456U;
  mac_tscr = mac_tscr & 4294770687U;
  mac_tscr = mac_tscr | 65536U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 10:
  mac_tscr = mac_tscr & 4026531839U;
  mac_tscr = mac_tscr | 268435456U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 11:
  mac_tscr = mac_tscr & 4026531839U;
  mac_tscr = mac_tscr | 268435456U;
  mac_tscr = mac_tscr & 4294934527U;
  mac_tscr = mac_tscr | 32768U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 12:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  mac_tscr = mac_tscr & 4294965247U;
  mac_tscr = mac_tscr | 2048U;
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294770687U;
  mac_tscr = mac_tscr | 65536U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 13:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  mac_tscr = mac_tscr & 4294965247U;
  mac_tscr = mac_tscr | 2048U;
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  case 14:
  mac_tscr = mac_tscr & 4294966271U;
  mac_tscr = mac_tscr | 1024U;
  mac_tscr = mac_tscr & 4294965247U;
  mac_tscr = mac_tscr | 2048U;
  mac_tscr = mac_tscr & 4294959103U;
  mac_tscr = mac_tscr | 8192U;
  mac_tscr = mac_tscr & 4294963199U;
  mac_tscr = mac_tscr | 4096U;
  mac_tscr = mac_tscr & 4294934527U;
  mac_tscr = mac_tscr | 32768U;
  mac_tscr = mac_tscr & 4294950911U;
  mac_tscr = mac_tscr | 16384U;
  mac_tscr = mac_tscr & 4294967294U;
  mac_tscr = mac_tscr | 1U;
  goto ldv_52682;
  default: ;
  return (-34);
  }
  ldv_52682:
  (*(pdata->hw_if.config_tstamp))(pdata, mac_tscr);
  memcpy((void *)(& pdata->tstamp_config), (void const *)(& config), 12UL);
  return (0);
}
}
static void xgbe_prep_tx_tstamp(struct xgbe_prv_data *pdata , struct sk_buff *skb ,
                                struct xgbe_packet_data *packet )
{
  unsigned long flags ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  {
  if ((packet->attributes & 8U) != 0U) {
    ldv_spin_lock();
    if ((unsigned long )pdata->tx_tstamp_skb != (unsigned long )((struct sk_buff *)0)) {
      packet->attributes = packet->attributes & 4294967287U;
      packet->attributes = packet->attributes;
    } else {
      pdata->tx_tstamp_skb = skb_get(skb);
      tmp = skb_end_pointer((struct sk_buff const *)skb);
      tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
      ((struct skb_shared_info *)tmp)->tx_flags = (__u8 )((unsigned int )((struct skb_shared_info *)tmp___0)->tx_flags | 4U);
    }
    spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  } else {
  }
  if ((packet->attributes & 8U) == 0U) {
    skb_tx_timestamp(skb);
  } else {
  }
  return;
}
}
static void xgbe_prep_vlan(struct sk_buff *skb , struct xgbe_packet_data *packet )
{
  {
  if (((int )skb->vlan_tci & 4096) != 0) {
    packet->vlan_ctag = (unsigned int )skb->vlan_tci & 61439U;
  } else {
  }
  return;
}
}
static int xgbe_prep_tso(struct sk_buff *skb , struct xgbe_packet_data *packet )
{
  int ret ;
  int tmp ;
  unsigned int tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  {
  if ((packet->attributes & 2U) == 0U) {
    return (0);
  } else {
  }
  ret = skb_cow_head(skb, 0U);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp = skb_transport_offset((struct sk_buff const *)skb);
  tmp___0 = tcp_hdrlen((struct sk_buff const *)skb);
  packet->header_len = (unsigned int )tmp + tmp___0;
  packet->tcp_header_len = tcp_hdrlen((struct sk_buff const *)skb);
  packet->tcp_payload_len = skb->len - packet->header_len;
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  packet->mss = ((struct skb_shared_info *)tmp___1)->gso_size;
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  packet->tx_packets = (unsigned int )((struct skb_shared_info *)tmp___2)->gso_segs;
  packet->tx_bytes = packet->tx_bytes + (packet->tx_packets - 1U) * packet->header_len;
  return (0);
}
}
static int xgbe_is_tso(struct sk_buff *skb )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )*((unsigned char *)skb + 145UL) != 6U) {
    return (0);
  } else {
  }
  tmp = skb_is_gso((struct sk_buff const *)skb);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (0);
  } else {
  }
  return (1);
}
}
static void xgbe_packet_info(struct xgbe_prv_data *pdata , struct xgbe_ring *ring ,
                             struct sk_buff *skb , struct xgbe_packet_data *packet )
{
  struct skb_frag_struct *frag ;
  unsigned int context_desc ;
  unsigned int len ;
  unsigned int i ;
  unsigned char *tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned char *tmp___2 ;
  unsigned int __min1___0 ;
  unsigned int __min2___0 ;
  unsigned char *tmp___3 ;
  {
  packet->skb = skb;
  context_desc = 0U;
  packet->rdesc_count = 0U;
  packet->tx_packets = 1U;
  packet->tx_bytes = skb->len;
  tmp___0 = xgbe_is_tso(skb);
  if (tmp___0 != 0) {
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    if ((int )((struct skb_shared_info *)tmp)->gso_size != (int )ring->__annonCompField97.tx.cur_mss) {
      context_desc = 1U;
      packet->rdesc_count = packet->rdesc_count + 1U;
    } else {
    }
    packet->rdesc_count = packet->rdesc_count + 1U;
    packet->attributes = packet->attributes & 4294967293U;
    packet->attributes = packet->attributes | 2U;
    packet->attributes = packet->attributes & 4294967294U;
    packet->attributes = packet->attributes | 1U;
  } else
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    packet->attributes = packet->attributes & 4294967294U;
    packet->attributes = packet->attributes | 1U;
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    if (((int )skb->vlan_tci & -4097) != (int )ring->__annonCompField97.tx.cur_vlan_ctag) {
      if (context_desc == 0U) {
        context_desc = 1U;
        packet->rdesc_count = packet->rdesc_count + 1U;
      } else {
      }
    } else {
    }
    packet->attributes = packet->attributes & 4294967291U;
    packet->attributes = packet->attributes | 4U;
  } else {
  }
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  if ((int )((struct skb_shared_info *)tmp___1)->tx_flags & 1 && pdata->tstamp_config.tx_type == 1) {
    packet->attributes = packet->attributes & 4294967287U;
    packet->attributes = packet->attributes | 8U;
  } else {
  }
  len = skb_headlen((struct sk_buff const *)skb);
  goto ldv_52729;
  ldv_52728:
  packet->rdesc_count = packet->rdesc_count + 1U;
  __min1 = len;
  __min2 = 16320U;
  len = len - (__min1 < __min2 ? __min1 : __min2);
  ldv_52729: ;
  if (len != 0U) {
    goto ldv_52728;
  } else {
  }
  i = 0U;
  goto ldv_52738;
  ldv_52737:
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___2)->frags) + (unsigned long )i;
  len = skb_frag_size((skb_frag_t const *)frag);
  goto ldv_52735;
  ldv_52734:
  packet->rdesc_count = packet->rdesc_count + 1U;
  __min1___0 = len;
  __min2___0 = 16320U;
  len = len - (__min1___0 < __min2___0 ? __min1___0 : __min2___0);
  ldv_52735: ;
  if (len != 0U) {
    goto ldv_52734;
  } else {
  }
  i = i + 1U;
  ldv_52738:
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___3)->nr_frags > i) {
    goto ldv_52737;
  } else {
  }
  return;
}
}
static int xgbe_open(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_desc_if *desc_if ;
  int ret ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  desc_if = & pdata->desc_if;
  ret = xgbe_phy_init(pdata);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = clk_prepare_enable(pdata->sysclk);
  if (ret != 0) {
    netdev_alert((struct net_device const *)netdev, "dma clk_prepare_enable failed\n");
    return (ret);
  } else {
  }
  ret = clk_prepare_enable(pdata->ptpclk);
  if (ret != 0) {
    netdev_alert((struct net_device const *)netdev, "ptp clk_prepare_enable failed\n");
    goto err_sysclk;
  } else {
  }
  ret = xgbe_calc_rx_buf_size(netdev, netdev->mtu);
  if (ret < 0) {
    goto err_ptpclk;
  } else {
  }
  pdata->rx_buf_size = (unsigned int )ret;
  ret = xgbe_alloc_channels(pdata);
  if (ret != 0) {
    goto err_ptpclk;
  } else {
  }
  ret = (*(desc_if->alloc_ring_resources))(pdata);
  if (ret != 0) {
    goto err_channels;
  } else {
  }
  __init_work(& pdata->service_work, 0);
  __constr_expr_0.counter = 137438953408L;
  pdata->service_work.data = __constr_expr_0;
  lockdep_init_map(& pdata->service_work.lockdep_map, "(&pdata->service_work)", & __key,
                   0);
  INIT_LIST_HEAD(& pdata->service_work.entry);
  pdata->service_work.func = & xgbe_service;
  __init_work(& pdata->restart_work, 0);
  __constr_expr_1.counter = 137438953408L;
  pdata->restart_work.data = __constr_expr_1;
  lockdep_init_map(& pdata->restart_work.lockdep_map, "(&pdata->restart_work)", & __key___0,
                   0);
  INIT_LIST_HEAD(& pdata->restart_work.entry);
  pdata->restart_work.func = & xgbe_restart;
  __init_work(& pdata->tx_tstamp_work, 0);
  __constr_expr_2.counter = 137438953408L;
  pdata->tx_tstamp_work.data = __constr_expr_2;
  lockdep_init_map(& pdata->tx_tstamp_work.lockdep_map, "(&pdata->tx_tstamp_work)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& pdata->tx_tstamp_work.entry);
  pdata->tx_tstamp_work.func = & xgbe_tx_tstamp;
  xgbe_init_timers(pdata);
  ret = xgbe_start(pdata);
  if (ret != 0) {
    goto err_rings;
  } else {
  }
  clear_bit(0L, (unsigned long volatile *)(& pdata->dev_state));
  return (0);
  err_rings:
  (*(desc_if->free_ring_resources))(pdata);
  err_channels:
  xgbe_free_channels(pdata);
  err_ptpclk:
  clk_disable_unprepare(pdata->ptpclk);
  err_sysclk:
  clk_disable_unprepare(pdata->sysclk);
  return (ret);
}
}
static int xgbe_close(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_desc_if *desc_if ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  desc_if = & pdata->desc_if;
  xgbe_stop(pdata);
  (*(desc_if->free_ring_resources))(pdata);
  xgbe_free_channels(pdata);
  clk_disable_unprepare(pdata->ptpclk);
  clk_disable_unprepare(pdata->sysclk);
  set_bit(0L, (unsigned long volatile *)(& pdata->dev_state));
  return (0);
}
}
static int xgbe_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  struct xgbe_desc_if *desc_if ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *ring ;
  struct xgbe_packet_data *packet ;
  struct netdev_queue *txq ;
  int ret ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  desc_if = & pdata->desc_if;
  channel = pdata->channel + (unsigned long )skb->queue_mapping;
  txq = netdev_get_tx_queue((struct net_device const *)netdev, channel->queue_index);
  ring = channel->tx_ring;
  packet = & ring->packet_data;
  ret = 0;
  if (skb->len == 0U) {
    if ((pdata->msg_enable & 128U) != 0U) {
      netdev_err((struct net_device const *)netdev, "empty skb received from stack\n");
    } else {
    }
    dev_kfree_skb_any(skb);
    goto tx_netdev_return;
  } else {
  }
  memset((void *)packet, 0, 64UL);
  xgbe_packet_info(pdata, ring, skb, packet);
  ret = xgbe_maybe_stop_tx_queue(channel, ring, packet->rdesc_count);
  if (ret != 0) {
    goto tx_netdev_return;
  } else {
  }
  ret = xgbe_prep_tso(skb, packet);
  if (ret != 0) {
    if ((pdata->msg_enable & 128U) != 0U) {
      netdev_err((struct net_device const *)netdev, "error processing TSO packet\n");
    } else {
    }
    dev_kfree_skb_any(skb);
    goto tx_netdev_return;
  } else {
  }
  xgbe_prep_vlan(skb, packet);
  tmp___0 = (*(desc_if->map_tx_skb))(channel, skb);
  if (tmp___0 == 0) {
    dev_kfree_skb_any(skb);
    goto tx_netdev_return;
  } else {
  }
  xgbe_prep_tx_tstamp(pdata, skb, packet);
  netdev_tx_sent_queue(txq, packet->tx_bytes);
  (*(hw_if->dev_xmit))(channel);
  if ((pdata->msg_enable & 4096U) != 0U) {
    xgbe_print_pkt(netdev, skb, 1);
  } else {
  }
  xgbe_maybe_stop_tx_queue(channel, ring, 24U);
  ret = 0;
  tx_netdev_return: ;
  return (ret);
}
}
static void xgbe_set_rx_mode(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  (*(hw_if->config_rx_mode))(pdata);
  return;
}
}
static int xgbe_set_mac_address(struct net_device *netdev , void *addr )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  struct sockaddr *saddr ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  saddr = (struct sockaddr *)addr;
  tmp___0 = is_valid_ether_addr((u8 const *)(& saddr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& saddr->sa_data), (size_t )netdev->addr_len);
  (*(hw_if->set_mac_address))(pdata, netdev->dev_addr);
  return (0);
}
}
static int xgbe_ioctl(struct net_device *netdev , struct ifreq *ifreq , int cmd )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  switch (cmd) {
  case 35249:
  ret = xgbe_get_hwtstamp_settings(pdata, ifreq);
  goto ldv_52794;
  case 35248:
  ret = xgbe_set_hwtstamp_settings(pdata, ifreq);
  goto ldv_52794;
  default:
  ret = -95;
  }
  ldv_52794: ;
  return (ret);
}
}
static int xgbe_change_mtu(struct net_device *netdev , int mtu )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  ret = xgbe_calc_rx_buf_size(netdev, (unsigned int )mtu);
  if (ret < 0) {
    return (ret);
  } else {
  }
  pdata->rx_buf_size = (unsigned int )ret;
  netdev->mtu = (unsigned int )mtu;
  xgbe_restart_dev(pdata);
  return (0);
}
}
static void xgbe_tx_timeout(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  netdev_warn((struct net_device const *)netdev, "tx timeout, device restarting\n");
  schedule_work(& pdata->restart_work);
  return;
}
}
static struct rtnl_link_stats64 *xgbe_get_stats64(struct net_device *netdev , struct rtnl_link_stats64 *s )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_mmc_stats *pstats ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  pstats = & pdata->mmc_stats;
  (*(pdata->hw_if.read_mmc_stats))(pdata);
  s->rx_packets = pstats->rxframecount_gb;
  s->rx_bytes = pstats->rxoctetcount_gb;
  s->rx_errors = ((pstats->rxframecount_gb - pstats->rxbroadcastframes_g) - pstats->rxmulticastframes_g) - pstats->rxunicastframes_g;
  s->multicast = pstats->rxmulticastframes_g;
  s->rx_length_errors = pstats->rxlengtherror;
  s->rx_crc_errors = pstats->rxcrcerror;
  s->rx_fifo_errors = pstats->rxfifooverflow;
  s->tx_packets = pstats->txframecount_gb;
  s->tx_bytes = pstats->txoctetcount_gb;
  s->tx_errors = pstats->txframecount_gb - pstats->txframecount_g;
  s->tx_dropped = (__u64 )netdev->stats.tx_dropped;
  return (s);
}
}
static int xgbe_vlan_rx_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  set_bit((long )vid, (unsigned long volatile *)(& pdata->active_vlans));
  (*(hw_if->update_vlan_hash_table))(pdata);
  return (0);
}
}
static int xgbe_vlan_rx_kill_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  clear_bit((long )vid, (unsigned long volatile *)(& pdata->active_vlans));
  (*(hw_if->update_vlan_hash_table))(pdata);
  return (0);
}
}
static void xgbe_poll_controller(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  if (pdata->per_channel_irq != 0U) {
    channel = pdata->channel;
    i = 0U;
    goto ldv_52834;
    ldv_52833:
    xgbe_dma_isr(channel->dma_irq, (void *)channel);
    i = i + 1U;
    channel = channel + 1;
    ldv_52834: ;
    if (pdata->channel_count > i) {
      goto ldv_52833;
    } else {
    }
  } else {
    disable_irq((unsigned int )pdata->dev_irq);
    xgbe_isr(pdata->dev_irq, (void *)pdata);
    enable_irq((unsigned int )pdata->dev_irq);
  }
  return;
}
}
static int xgbe_setup_tc(struct net_device *netdev , u8 tc )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  unsigned int offset ;
  unsigned int queue ;
  u8 i ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  if ((unsigned int )tc != 0U && (unsigned int )tc != pdata->hw_feat.tc_cnt) {
    return (-22);
  } else {
  }
  if ((unsigned int )tc != 0U) {
    netdev_set_num_tc(netdev, (int )tc);
    i = 0U;
    queue = 0U;
    offset = 0U;
    goto ldv_52850;
    ldv_52849: ;
    goto ldv_52845;
    ldv_52844:
    queue = queue + 1U;
    ldv_52845: ;
    if (pdata->tx_q_count > queue && pdata->q2tc_map[queue] == (unsigned int )i) {
      goto ldv_52844;
    } else {
    }
    if ((int )pdata->msg_enable & 1) {
      descriptor.modname = "amd_xgbe";
      descriptor.function = "xgbe_setup_tc";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
      descriptor.format = "TC%u using TXq%u-%u\n";
      descriptor.lineno = 1642U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "TC%u using TXq%u-%u\n",
                             (int )i, offset, queue - 1U);
      } else {
      }
    } else {
    }
    netdev_set_tc_queue(netdev, (int )i, (int )((u16 )queue) - (int )((u16 )offset),
                        (int )((u16 )offset));
    offset = queue;
    i = (u8 )((int )i + 1);
    ldv_52850: ;
    if ((int )i < (int )tc) {
      goto ldv_52849;
    } else {
    }
  } else {
    netdev_reset_tc(netdev);
  }
  return (0);
}
}
static int xgbe_set_features(struct net_device *netdev , netdev_features_t features )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  netdev_features_t rxhash ;
  netdev_features_t rxcsum ;
  netdev_features_t rxvlan ;
  netdev_features_t rxvlan_filter ;
  int ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  ret = 0;
  rxhash = pdata->netdev_features & 8589934592ULL;
  rxcsum = pdata->netdev_features & 17179869184ULL;
  rxvlan = pdata->netdev_features & 256ULL;
  rxvlan_filter = pdata->netdev_features & 512ULL;
  if ((features & 8589934592ULL) != 0ULL && rxhash == 0ULL) {
    ret = (*(hw_if->enable_rss))(pdata);
  } else
  if ((features & 8589934592ULL) == 0ULL && rxhash != 0ULL) {
    ret = (*(hw_if->disable_rss))(pdata);
  } else {
  }
  if (ret != 0) {
    return (ret);
  } else {
  }
  if ((features & 17179869184ULL) != 0ULL && rxcsum == 0ULL) {
    (*(hw_if->enable_rx_csum))(pdata);
  } else
  if ((features & 17179869184ULL) == 0ULL && rxcsum != 0ULL) {
    (*(hw_if->disable_rx_csum))(pdata);
  } else {
  }
  if ((features & 256ULL) != 0ULL && rxvlan == 0ULL) {
    (*(hw_if->enable_rx_vlan_stripping))(pdata);
  } else
  if ((features & 256ULL) == 0ULL && rxvlan != 0ULL) {
    (*(hw_if->disable_rx_vlan_stripping))(pdata);
  } else {
  }
  if ((features & 512ULL) != 0ULL && rxvlan_filter == 0ULL) {
    (*(hw_if->enable_rx_vlan_filtering))(pdata);
  } else
  if ((features & 512ULL) == 0ULL && rxvlan_filter != 0ULL) {
    (*(hw_if->disable_rx_vlan_filtering))(pdata);
  } else {
  }
  pdata->netdev_features = features;
  return (0);
}
}
static struct net_device_ops const xgbe_netdev_ops =
     {0, 0, & xgbe_open, & xgbe_close, (netdev_tx_t (*)(struct sk_buff * , struct net_device * ))(& xgbe_xmit),
    0, 0, & xgbe_set_rx_mode, & xgbe_set_mac_address, & eth_validate_addr, & xgbe_ioctl,
    0, & xgbe_change_mtu, 0, & xgbe_tx_timeout, & xgbe_get_stats64, 0, & xgbe_vlan_rx_add_vid,
    & xgbe_vlan_rx_kill_vid, & xgbe_poll_controller, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, & xgbe_setup_tc, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & xgbe_set_features,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct net_device_ops *xgbe_get_netdev_ops(void)
{
  {
  return ((struct net_device_ops *)(& xgbe_netdev_ops));
}
}
static void xgbe_rx_refresh(struct xgbe_channel *channel )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_hw_if *hw_if ;
  struct xgbe_desc_if *desc_if ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  int tmp ;
  {
  pdata = channel->pdata;
  hw_if = & pdata->hw_if;
  desc_if = & pdata->desc_if;
  ring = channel->rx_ring;
  goto ldv_52877;
  ldv_52876:
  rdata = ring->rdata + (unsigned long )(ring->dirty & (ring->rdesc_count - 1U));
  (*(desc_if->unmap_rdata))(pdata, rdata);
  tmp = (*(desc_if->map_rx_buffer))(pdata, ring, rdata);
  if (tmp != 0) {
    goto ldv_52875;
  } else {
  }
  (*(hw_if->rx_desc_reset))(pdata, rdata, ring->dirty);
  ring->dirty = ring->dirty + 1U;
  ldv_52877: ;
  if (ring->dirty != ring->cur) {
    goto ldv_52876;
  } else {
  }
  ldv_52875:
  __asm__ volatile ("sfence": : : "memory");
  rdata = ring->rdata + (unsigned long )((ring->dirty - 1U) & (ring->rdesc_count - 1U));
  iowrite32((unsigned int )rdata->rdesc_dma, channel->dma_regs + 44UL);
  return;
}
}
static struct sk_buff *xgbe_create_skb(struct xgbe_prv_data *pdata , struct napi_struct *napi ,
                                       struct xgbe_ring_data *rdata , unsigned int len )
{
  struct sk_buff *skb ;
  u8 *packet ;
  unsigned int copy_len ;
  void *tmp ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned char *tmp___0 ;
  {
  skb = napi_alloc_skb(napi, rdata->rx.hdr.dma_len);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return ((struct sk_buff *)0);
  } else {
  }
  dma_sync_single_for_cpu(pdata->dev, rdata->rx.hdr.dma, (size_t )rdata->rx.hdr.dma_len,
                          2);
  tmp = lowmem_page_address((struct page const *)rdata->rx.hdr.pa.pages);
  packet = (u8 *)tmp + (unsigned long )rdata->rx.hdr.pa.pages_offset;
  copy_len = (unsigned int )rdata->rx.hdr_len != 0U ? (unsigned int )rdata->rx.hdr_len : len;
  _min1 = rdata->rx.hdr.dma_len;
  _min2 = copy_len;
  copy_len = _min1 < _min2 ? _min1 : _min2;
  skb_copy_to_linear_data(skb, (void const *)packet, copy_len);
  skb_put(skb, copy_len);
  len = len - copy_len;
  if (len != 0U) {
    dma_sync_single_for_cpu(pdata->dev, rdata->rx.buf.dma, (size_t )rdata->rx.buf.dma_len,
                            2);
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    skb_add_rx_frag(skb, (int )((struct skb_shared_info *)tmp___0)->nr_frags, rdata->rx.buf.pa.pages,
                    (int )rdata->rx.buf.pa.pages_offset, (int )len, rdata->rx.buf.dma_len);
    rdata->rx.buf.pa.pages = (struct page *)0;
  } else {
  }
  return (skb);
}
}
static int xgbe_tx_poll(struct xgbe_channel *channel )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_hw_if *hw_if ;
  struct xgbe_desc_if *desc_if ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  struct net_device *netdev ;
  struct netdev_queue *txq ;
  int processed ;
  unsigned int tx_packets ;
  unsigned int tx_bytes ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  pdata = channel->pdata;
  hw_if = & pdata->hw_if;
  desc_if = & pdata->desc_if;
  ring = channel->tx_ring;
  netdev = pdata->netdev;
  processed = 0;
  tx_packets = 0U;
  tx_bytes = 0U;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    return (0);
  } else {
  }
  txq = netdev_get_tx_queue((struct net_device const *)netdev, channel->queue_index);
  goto ldv_52906;
  ldv_52905:
  rdata = ring->rdata + (unsigned long )(ring->dirty & (ring->rdesc_count - 1U));
  rdesc = rdata->rdesc;
  tmp = (*(hw_if->tx_complete))(rdesc);
  if (tmp == 0) {
    goto ldv_52904;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  if ((pdata->msg_enable & 1024U) != 0U) {
    xgbe_dump_tx_desc(pdata, ring, ring->dirty, 1U, 0U);
  } else {
  }
  tmp___0 = (*(hw_if->is_last_desc))(rdesc);
  if (tmp___0 != 0) {
    tx_packets = rdata->tx.packets + tx_packets;
    tx_bytes = rdata->tx.bytes + tx_bytes;
  } else {
  }
  (*(desc_if->unmap_rdata))(pdata, rdata);
  (*(hw_if->tx_desc_reset))(rdata);
  processed = processed + 1;
  ring->dirty = ring->dirty + 1U;
  ldv_52906: ;
  if (processed <= 255 && ring->dirty != ring->cur) {
    goto ldv_52905;
  } else {
  }
  ldv_52904: ;
  if (processed == 0) {
    return (0);
  } else {
  }
  netdev_tx_completed_queue(txq, tx_packets, tx_bytes);
  if (ring->__annonCompField97.tx.queue_stopped == 1U) {
    tmp___1 = xgbe_tx_avail_desc(ring);
    if (tmp___1 > 64U) {
      ring->__annonCompField97.tx.queue_stopped = 0U;
      netif_tx_wake_queue(txq);
    } else {
    }
  } else {
  }
  return (processed);
}
}
static int xgbe_rx_poll(struct xgbe_channel *channel , int budget )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_hw_if *hw_if ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_packet_data *packet ;
  struct net_device *netdev ;
  struct napi_struct *napi ;
  struct sk_buff *skb ;
  struct skb_shared_hwtstamps *hwtstamps ;
  unsigned int incomplete ;
  unsigned int error ;
  unsigned int context_next ;
  unsigned int context ;
  unsigned int len ;
  unsigned int rdesc_len ;
  unsigned int max_len ;
  unsigned int received ;
  int packet_count ;
  unsigned int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  u64 nsec ;
  {
  pdata = channel->pdata;
  hw_if = & pdata->hw_if;
  ring = channel->rx_ring;
  netdev = pdata->netdev;
  received = 0U;
  packet_count = 0;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    return (0);
  } else {
  }
  incomplete = 0U;
  context_next = 0U;
  napi = pdata->per_channel_irq != 0U ? & channel->napi : & pdata->napi;
  rdata = ring->rdata + (unsigned long )(ring->cur & (ring->rdesc_count - 1U));
  packet = & ring->packet_data;
  goto ldv_52934;
  ldv_52933: ;
  if (received == 0U && rdata->state_saved != 0U) {
    skb = rdata->state.skb;
    error = rdata->state.error;
    len = rdata->state.len;
  } else {
    memset((void *)packet, 0, 64UL);
    skb = (struct sk_buff *)0;
    error = 0U;
    len = 0U;
  }
  read_again:
  rdata = ring->rdata + (unsigned long )(ring->cur & (ring->rdesc_count - 1U));
  tmp = xgbe_rx_dirty_desc(ring);
  if (tmp > 64U) {
    xgbe_rx_refresh(channel);
  } else {
  }
  tmp___0 = (*(hw_if->dev_read))(channel);
  if (tmp___0 != 0) {
    goto ldv_52930;
  } else {
  }
  received = received + 1U;
  ring->cur = ring->cur + 1U;
  incomplete = (packet->attributes >> 2) & 1U;
  context_next = (packet->attributes >> 3) & 1U;
  context = (packet->attributes >> 4) & 1U;
  if ((incomplete != 0U || context_next != 0U) && error != 0U) {
    goto read_again;
  } else {
  }
  if (error != 0U || packet->errors != 0U) {
    if (packet->errors != 0U) {
      if ((pdata->msg_enable & 64U) != 0U) {
        netdev_err((struct net_device const *)netdev, "error in received packet\n");
      } else {
      }
    } else {
    }
    consume_skb(skb);
    goto next_packet;
  } else {
  }
  if (context == 0U) {
    rdesc_len = (unsigned int )rdata->rx.len - len;
    len = len + rdesc_len;
    if (rdesc_len != 0U && (unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      skb = xgbe_create_skb(pdata, napi, rdata, rdesc_len);
      if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
        error = 1U;
      } else {
      }
    } else
    if (rdesc_len != 0U) {
      dma_sync_single_for_cpu(pdata->dev, rdata->rx.buf.dma, (size_t )rdata->rx.buf.dma_len,
                              2);
      tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
      skb_add_rx_frag(skb, (int )((struct skb_shared_info *)tmp___1)->nr_frags, rdata->rx.buf.pa.pages,
                      (int )rdata->rx.buf.pa.pages_offset, (int )rdesc_len, rdata->rx.buf.dma_len);
      rdata->rx.buf.pa.pages = (struct page *)0;
    } else {
    }
  } else {
  }
  if (incomplete != 0U || context_next != 0U) {
    goto read_again;
  } else {
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    goto next_packet;
  } else {
  }
  max_len = netdev->mtu + 14U;
  if ((netdev->features & 256ULL) == 0ULL && (unsigned int )skb->protocol == 129U) {
    max_len = max_len + 4U;
  } else {
  }
  if (skb->len > max_len) {
    if ((pdata->msg_enable & 64U) != 0U) {
      netdev_err((struct net_device const *)netdev, "packet length exceeds configured MTU\n");
    } else {
    }
    consume_skb(skb);
    goto next_packet;
  } else {
  }
  if ((pdata->msg_enable & 4096U) != 0U) {
    xgbe_print_pkt(netdev, skb, 0);
  } else {
  }
  skb_checksum_none_assert((struct sk_buff const *)skb);
  if ((int )packet->attributes & 1) {
    skb->ip_summed = 1U;
  } else {
  }
  if ((packet->attributes & 2U) != 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )packet->vlan_ctag);
  } else {
  }
  if ((packet->attributes & 32U) != 0U) {
    nsec = timecounter_cyc2time(& pdata->tstamp_tc, packet->rx_tstamp);
    hwtstamps = skb_hwtstamps(skb);
    hwtstamps->hwtstamp = ns_to_ktime(nsec);
  } else {
  }
  if ((packet->attributes & 64U) != 0U) {
    skb_set_hash(skb, packet->rss_hash, packet->rss_hash_type);
  } else {
  }
  skb->dev = netdev;
  skb->protocol = eth_type_trans(skb, netdev);
  skb_record_rx_queue(skb, (int )((u16 )channel->queue_index));
  skb_mark_napi_id(skb, napi);
  napi_gro_receive(napi, skb);
  next_packet:
  packet_count = packet_count + 1;
  ldv_52934: ;
  if (packet_count < budget) {
    goto ldv_52933;
  } else {
  }
  ldv_52930: ;
  if (received != 0U && (incomplete != 0U || context_next != 0U)) {
    rdata = ring->rdata + (unsigned long )(ring->cur & (ring->rdesc_count - 1U));
    rdata->state_saved = 1U;
    rdata->state.skb = skb;
    rdata->state.len = len;
    rdata->state.error = error;
  } else {
  }
  return (packet_count);
}
}
static int xgbe_one_poll(struct napi_struct *napi , int budget )
{
  struct xgbe_channel *channel ;
  struct napi_struct const *__mptr ;
  int processed ;
  {
  __mptr = (struct napi_struct const *)napi;
  channel = (struct xgbe_channel *)__mptr + 0xffffffffffffffa0UL;
  processed = 0;
  xgbe_tx_poll(channel);
  processed = xgbe_rx_poll(channel, budget);
  if (processed < budget) {
    napi_complete(napi);
    enable_irq((unsigned int )channel->dma_irq);
  } else {
  }
  return (processed);
}
}
static int xgbe_all_poll(struct napi_struct *napi , int budget )
{
  struct xgbe_prv_data *pdata ;
  struct napi_struct const *__mptr ;
  struct xgbe_channel *channel ;
  int ring_budget ;
  int processed ;
  int last_processed ;
  unsigned int i ;
  int tmp ;
  {
  __mptr = (struct napi_struct const *)napi;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff610UL;
  processed = 0;
  ring_budget = (int )((unsigned int )budget / pdata->rx_ring_count);
  ldv_52958:
  last_processed = processed;
  channel = pdata->channel;
  i = 0U;
  goto ldv_52956;
  ldv_52955:
  xgbe_tx_poll(channel);
  if (budget - processed < ring_budget) {
    ring_budget = budget - processed;
  } else {
  }
  tmp = xgbe_rx_poll(channel, ring_budget);
  processed = tmp + processed;
  i = i + 1U;
  channel = channel + 1;
  ldv_52956: ;
  if (pdata->channel_count > i) {
    goto ldv_52955;
  } else {
  }
  if (processed < budget && processed != last_processed) {
    goto ldv_52958;
  } else {
  }
  if (processed < budget) {
    napi_complete(napi);
    xgbe_enable_rx_tx_ints(pdata);
  } else {
  }
  return (processed);
}
}
void xgbe_dump_tx_desc(struct xgbe_prv_data *pdata , struct xgbe_ring *ring , unsigned int idx ,
                       unsigned int count , unsigned int flag )
{
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned int tmp___0 ;
  {
  goto ldv_52972;
  ldv_52971:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & idx);
  rdesc = rdata->rdesc;
  descriptor.modname = "amd_xgbe";
  descriptor.function = "xgbe_dump_tx_desc";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor.format = "TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\n";
  descriptor.lineno = 2119U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                         "TX_NORMAL_DESC[%d %s] = %08x:%08x:%08x:%08x\n", idx, flag == 1U ? (char *)"QUEUED FOR TX" : (char *)"TX BY DEVICE",
                         rdesc->desc0, rdesc->desc1, rdesc->desc2, rdesc->desc3);
  } else {
  }
  idx = idx + 1U;
  ldv_52972:
  tmp___0 = count;
  count = count - 1U;
  if (tmp___0 != 0U) {
    goto ldv_52971;
  } else {
  }
  return;
}
}
void xgbe_dump_rx_desc(struct xgbe_prv_data *pdata , struct xgbe_ring *ring , unsigned int idx )
{
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & idx);
  rdesc = rdata->rdesc;
  descriptor.modname = "amd_xgbe";
  descriptor.function = "xgbe_dump_rx_desc";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor.format = "RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\n";
  descriptor.lineno = 2135U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                         "RX_NORMAL_DESC[%d RX BY DEVICE] = %08x:%08x:%08x:%08x\n",
                         idx, rdesc->desc0, rdesc->desc1, rdesc->desc2, rdesc->desc3);
  } else {
  }
  return;
}
}
void xgbe_print_pkt(struct net_device *netdev , struct sk_buff *skb , bool tx_rx )
{
  struct ethhdr *eth ;
  unsigned char *buf ;
  unsigned char buffer[128U] ;
  unsigned int i ;
  unsigned int j ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct _ddebug descriptor___1 ;
  long tmp___1 ;
  struct _ddebug descriptor___2 ;
  long tmp___2 ;
  struct _ddebug descriptor___3 ;
  __u16 tmp___3 ;
  long tmp___4 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___4 ;
  long tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  struct _ddebug descriptor___5 ;
  long tmp___11 ;
  struct _ddebug descriptor___6 ;
  long tmp___12 ;
  {
  eth = (struct ethhdr *)skb->data;
  buf = skb->data;
  descriptor.modname = "amd_xgbe";
  descriptor.function = "xgbe_print_pkt";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor.format = "\n************** SKB dump ****************\n";
  descriptor.lineno = 2145U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "\n************** SKB dump ****************\n");
  } else {
  }
  descriptor___0.modname = "amd_xgbe";
  descriptor___0.function = "xgbe_print_pkt";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor___0.format = "%s packet of %d bytes\n";
  descriptor___0.lineno = 2148U;
  descriptor___0.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)netdev, "%s packet of %d bytes\n",
                         (int )tx_rx ? (char *)"TX" : (char *)"RX", skb->len);
  } else {
  }
  descriptor___1.modname = "amd_xgbe";
  descriptor___1.function = "xgbe_print_pkt";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor___1.format = "Dst MAC addr: %pM\n";
  descriptor___1.lineno = 2150U;
  descriptor___1.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)netdev, "Dst MAC addr: %pM\n",
                         (unsigned char *)(& eth->h_dest));
  } else {
  }
  descriptor___2.modname = "amd_xgbe";
  descriptor___2.function = "xgbe_print_pkt";
  descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor___2.format = "Src MAC addr: %pM\n";
  descriptor___2.lineno = 2151U;
  descriptor___2.flags = 0U;
  tmp___2 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)netdev, "Src MAC addr: %pM\n",
                         (unsigned char *)(& eth->h_source));
  } else {
  }
  descriptor___3.modname = "amd_xgbe";
  descriptor___3.function = "xgbe_print_pkt";
  descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor___3.format = "Protocol: %#06hx\n";
  descriptor___3.lineno = 2152U;
  descriptor___3.flags = 0U;
  tmp___4 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = __fswab16((int )eth->h_proto);
    __dynamic_netdev_dbg(& descriptor___3, (struct net_device const *)netdev, "Protocol: %#06hx\n",
                         (int )tmp___3);
  } else {
  }
  i = 0U;
  j = 0U;
  goto ldv_53001;
  ldv_53000:
  tmp___5 = i;
  i = i + 1U;
  tmp___6 = snprintf((char *)(& buffer) + (unsigned long )j, 128UL - (unsigned long )j,
                     "%02hhx", (int )*(buf + (unsigned long )tmp___5));
  j = (unsigned int )tmp___6 + j;
  if ((i & 31U) == 0U) {
    descriptor___4.modname = "amd_xgbe";
    descriptor___4.function = "xgbe_print_pkt";
    descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
    descriptor___4.format = "  %#06x: %s\n";
    descriptor___4.lineno = 2159U;
    descriptor___4.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_netdev_dbg(& descriptor___4, (struct net_device const *)netdev,
                           "  %#06x: %s\n", i - 32U, (unsigned char *)(& buffer));
    } else {
    }
    j = 0U;
  } else
  if ((i & 15U) == 0U) {
    tmp___8 = j;
    j = j + 1U;
    buffer[tmp___8] = 32U;
    tmp___9 = j;
    j = j + 1U;
    buffer[tmp___9] = 32U;
  } else
  if ((i & 3U) == 0U) {
    tmp___10 = j;
    j = j + 1U;
    buffer[tmp___10] = 32U;
  } else {
  }
  ldv_53001: ;
  if (skb->len > i) {
    goto ldv_53000;
  } else {
  }
  if ((i & 31U) != 0U) {
    descriptor___5.modname = "amd_xgbe";
    descriptor___5.function = "xgbe_print_pkt";
    descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
    descriptor___5.format = "  %#06x: %s\n";
    descriptor___5.lineno = 2169U;
    descriptor___5.flags = 0U;
    tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
    if (tmp___11 != 0L) {
      __dynamic_netdev_dbg(& descriptor___5, (struct net_device const *)netdev,
                           "  %#06x: %s\n", i & 4294967264U, (unsigned char *)(& buffer));
    } else {
    }
  } else {
  }
  descriptor___6.modname = "amd_xgbe";
  descriptor___6.function = "xgbe_print_pkt";
  descriptor___6.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-drv.c";
  descriptor___6.format = "\n************** SKB dump ****************\n";
  descriptor___6.lineno = 2171U;
  descriptor___6.flags = 0U;
  tmp___12 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    __dynamic_netdev_dbg(& descriptor___6, (struct net_device const *)netdev, "\n************** SKB dump ****************\n");
  } else {
  }
  return;
}
}
int ldv_retval_26 ;
extern int ldv_ndo_init_15(void) ;
int ldv_retval_25 ;
extern int ldv_ndo_uninit_15(void) ;
void work_init_3(void)
{
  {
  ldv_work_3_0 = 0;
  ldv_work_3_1 = 0;
  ldv_work_3_2 = 0;
  ldv_work_3_3 = 0;
  return;
}
}
void activate_suitable_timer_6(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_6_0 == 0 || ldv_timer_6_0 == 2) {
    ldv_timer_list_6_0 = timer;
    ldv_timer_list_6_0->data = data;
    ldv_timer_6_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_6_1 == 0 || ldv_timer_6_1 == 2) {
    ldv_timer_list_6_1 = timer;
    ldv_timer_list_6_1->data = data;
    ldv_timer_6_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_6_2 == 0 || ldv_timer_6_2 == 2) {
    ldv_timer_list_6_2 = timer;
    ldv_timer_list_6_2->data = data;
    ldv_timer_6_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_6_3 == 0 || ldv_timer_6_3 == 2) {
    ldv_timer_list_6_3 = timer;
    ldv_timer_list_6_3->data = data;
    ldv_timer_6_3 = 1;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 2 || ldv_work_1_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_0) {
    xgbe_service(work);
    ldv_work_1_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_1 == 2 || ldv_work_1_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_1) {
    xgbe_service(work);
    ldv_work_1_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_2 == 2 || ldv_work_1_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_2) {
    xgbe_service(work);
    ldv_work_1_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_1_3 == 2 || ldv_work_1_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_1_3) {
    xgbe_service(work);
    ldv_work_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int reg_timer_7(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& xgbe_tx_timer)) {
    activate_suitable_timer_7(timer, data);
  } else {
  }
  return (0);
}
}
void call_and_disable_all_2(int state )
{
  {
  if (ldv_work_2_0 == state) {
    call_and_disable_work_2(ldv_work_struct_2_0);
  } else {
  }
  if (ldv_work_2_1 == state) {
    call_and_disable_work_2(ldv_work_struct_2_1);
  } else {
  }
  if (ldv_work_2_2 == state) {
    call_and_disable_work_2(ldv_work_struct_2_2);
  } else {
  }
  if (ldv_work_2_3 == state) {
    call_and_disable_work_2(ldv_work_struct_2_3);
  } else {
  }
  return;
}
}
void activate_work_3(struct work_struct *work , int state )
{
  {
  if (ldv_work_3_0 == 0) {
    ldv_work_struct_3_0 = work;
    ldv_work_3_0 = state;
    return;
  } else {
  }
  if (ldv_work_3_1 == 0) {
    ldv_work_struct_3_1 = work;
    ldv_work_3_1 = state;
    return;
  } else {
  }
  if (ldv_work_3_2 == 0) {
    ldv_work_struct_3_2 = work;
    ldv_work_3_2 = state;
    return;
  } else {
  }
  if (ldv_work_3_3 == 0) {
    ldv_work_struct_3_3 = work;
    ldv_work_3_3 = state;
    return;
  } else {
  }
  return;
}
}
void activate_work_1(struct work_struct *work , int state )
{
  {
  if (ldv_work_1_0 == 0) {
    ldv_work_struct_1_0 = work;
    ldv_work_1_0 = state;
    return;
  } else {
  }
  if (ldv_work_1_1 == 0) {
    ldv_work_struct_1_1 = work;
    ldv_work_1_1 = state;
    return;
  } else {
  }
  if (ldv_work_1_2 == 0) {
    ldv_work_struct_1_2 = work;
    ldv_work_1_2 = state;
    return;
  } else {
  }
  if (ldv_work_1_3 == 0) {
    ldv_work_struct_1_3 = work;
    ldv_work_1_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    xgbe_tx_tstamp(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    xgbe_tx_tstamp(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    xgbe_tx_tstamp(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    xgbe_tx_tstamp(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_15(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  xgbe_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void timer_init_6(void)
{
  {
  ldv_timer_6_0 = 0;
  ldv_timer_6_1 = 0;
  ldv_timer_6_2 = 0;
  ldv_timer_6_3 = 0;
  return;
}
}
void disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 3 || ldv_work_3_0 == 2) && (unsigned long )ldv_work_struct_3_0 == (unsigned long )work) {
    ldv_work_3_0 = 1;
  } else {
  }
  if ((ldv_work_3_1 == 3 || ldv_work_3_1 == 2) && (unsigned long )ldv_work_struct_3_1 == (unsigned long )work) {
    ldv_work_3_1 = 1;
  } else {
  }
  if ((ldv_work_3_2 == 3 || ldv_work_3_2 == 2) && (unsigned long )ldv_work_struct_3_2 == (unsigned long )work) {
    ldv_work_3_2 = 1;
  } else {
  }
  if ((ldv_work_3_3 == 3 || ldv_work_3_3 == 2) && (unsigned long )ldv_work_struct_3_3 == (unsigned long )work) {
    ldv_work_3_3 = 1;
  } else {
  }
  return;
}
}
void disable_work_1(struct work_struct *work )
{
  {
  if ((ldv_work_1_0 == 3 || ldv_work_1_0 == 2) && (unsigned long )ldv_work_struct_1_0 == (unsigned long )work) {
    ldv_work_1_0 = 1;
  } else {
  }
  if ((ldv_work_1_1 == 3 || ldv_work_1_1 == 2) && (unsigned long )ldv_work_struct_1_1 == (unsigned long )work) {
    ldv_work_1_1 = 1;
  } else {
  }
  if ((ldv_work_1_2 == 3 || ldv_work_1_2 == 2) && (unsigned long )ldv_work_struct_1_2 == (unsigned long )work) {
    ldv_work_1_2 = 1;
  } else {
  }
  if ((ldv_work_1_3 == 3 || ldv_work_1_3 == 2) && (unsigned long )ldv_work_struct_1_3 == (unsigned long )work) {
    ldv_work_1_3 = 1;
  } else {
  }
  return;
}
}
void ldv_timer_7(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  xgbe_tx_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void work_init_1(void)
{
  {
  ldv_work_1_0 = 0;
  ldv_work_1_1 = 0;
  ldv_work_1_2 = 0;
  ldv_work_1_3 = 0;
  return;
}
}
void disable_suitable_timer_6(struct timer_list *timer )
{
  {
  if (ldv_timer_6_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_6_0) {
    ldv_timer_6_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_6_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_6_1) {
    ldv_timer_6_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_6_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_6_2) {
    ldv_timer_6_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_6_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_6_3) {
    ldv_timer_6_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_pending_timer_6(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_6_0 == (unsigned long )timer) {
    if (ldv_timer_6_0 == 2 || pending_flag != 0) {
      ldv_timer_list_6_0 = timer;
      ldv_timer_list_6_0->data = data;
      ldv_timer_6_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_6_1 == (unsigned long )timer) {
    if (ldv_timer_6_1 == 2 || pending_flag != 0) {
      ldv_timer_list_6_1 = timer;
      ldv_timer_list_6_1->data = data;
      ldv_timer_6_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_6_2 == (unsigned long )timer) {
    if (ldv_timer_6_2 == 2 || pending_flag != 0) {
      ldv_timer_list_6_2 = timer;
      ldv_timer_list_6_2->data = data;
      ldv_timer_6_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_6_3 == (unsigned long )timer) {
    if (ldv_timer_6_3 == 2 || pending_flag != 0) {
      ldv_timer_list_6_3 = timer;
      ldv_timer_list_6_3->data = data;
      ldv_timer_6_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_6(timer, data);
  return;
}
}
void invoke_work_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_2_0 == 2 || ldv_work_2_0 == 3) {
    ldv_work_2_0 = 4;
    xgbe_restart(ldv_work_struct_2_0);
    ldv_work_2_0 = 1;
  } else {
  }
  goto ldv_53078;
  case 1: ;
  if (ldv_work_2_1 == 2 || ldv_work_2_1 == 3) {
    ldv_work_2_1 = 4;
    xgbe_restart(ldv_work_struct_2_0);
    ldv_work_2_1 = 1;
  } else {
  }
  goto ldv_53078;
  case 2: ;
  if (ldv_work_2_2 == 2 || ldv_work_2_2 == 3) {
    ldv_work_2_2 = 4;
    xgbe_restart(ldv_work_struct_2_0);
    ldv_work_2_2 = 1;
  } else {
  }
  goto ldv_53078;
  case 3: ;
  if (ldv_work_2_3 == 2 || ldv_work_2_3 == 3) {
    ldv_work_2_3 = 4;
    xgbe_restart(ldv_work_struct_2_0);
    ldv_work_2_3 = 1;
  } else {
  }
  goto ldv_53078;
  default:
  ldv_stop();
  }
  ldv_53078: ;
  return;
}
}
void work_init_2(void)
{
  {
  ldv_work_2_0 = 0;
  ldv_work_2_1 = 0;
  ldv_work_2_2 = 0;
  ldv_work_2_3 = 0;
  return;
}
}
void disable_suitable_timer_7(struct timer_list *timer )
{
  {
  if (ldv_timer_7_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_7_0) {
    ldv_timer_7_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_7_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_7_1) {
    ldv_timer_7_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_7_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_7_2) {
    ldv_timer_7_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_7_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_7_3) {
    ldv_timer_7_3 = 0;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_1(int state )
{
  {
  if (ldv_work_1_0 == state) {
    call_and_disable_work_1(ldv_work_struct_1_0);
  } else {
  }
  if (ldv_work_1_1 == state) {
    call_and_disable_work_1(ldv_work_struct_1_1);
  } else {
  }
  if (ldv_work_1_2 == state) {
    call_and_disable_work_1(ldv_work_struct_1_2);
  } else {
  }
  if (ldv_work_1_3 == state) {
    call_and_disable_work_1(ldv_work_struct_1_3);
  } else {
  }
  return;
}
}
void choose_timer_6(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_6_0 == 1) {
    ldv_timer_6_0 = 2;
    ldv_timer_6(ldv_timer_6_0, ldv_timer_list_6_0);
  } else {
  }
  goto ldv_53096;
  case 1: ;
  if (ldv_timer_6_1 == 1) {
    ldv_timer_6_1 = 2;
    ldv_timer_6(ldv_timer_6_1, ldv_timer_list_6_1);
  } else {
  }
  goto ldv_53096;
  case 2: ;
  if (ldv_timer_6_2 == 1) {
    ldv_timer_6_2 = 2;
    ldv_timer_6(ldv_timer_6_2, ldv_timer_list_6_2);
  } else {
  }
  goto ldv_53096;
  case 3: ;
  if (ldv_timer_6_3 == 1) {
    ldv_timer_6_3 = 2;
    ldv_timer_6(ldv_timer_6_3, ldv_timer_list_6_3);
  } else {
  }
  goto ldv_53096;
  default:
  ldv_stop();
  }
  ldv_53096: ;
  return;
}
}
void activate_work_2(struct work_struct *work , int state )
{
  {
  if (ldv_work_2_0 == 0) {
    ldv_work_struct_2_0 = work;
    ldv_work_2_0 = state;
    return;
  } else {
  }
  if (ldv_work_2_1 == 0) {
    ldv_work_struct_2_1 = work;
    ldv_work_2_1 = state;
    return;
  } else {
  }
  if (ldv_work_2_2 == 0) {
    ldv_work_struct_2_2 = work;
    ldv_work_2_2 = state;
    return;
  } else {
  }
  if (ldv_work_2_3 == 0) {
    ldv_work_struct_2_3 = work;
    ldv_work_2_3 = state;
    return;
  } else {
  }
  return;
}
}
int reg_timer_6(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& xgbe_service_timer)) {
    activate_suitable_timer_6(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_timer_6(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  xgbe_service_timer(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void timer_init_7(void)
{
  {
  ldv_timer_7_0 = 0;
  ldv_timer_7_1 = 0;
  ldv_timer_7_2 = 0;
  ldv_timer_7_3 = 0;
  return;
}
}
void disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 3 || ldv_work_2_0 == 2) && (unsigned long )ldv_work_struct_2_0 == (unsigned long )work) {
    ldv_work_2_0 = 1;
  } else {
  }
  if ((ldv_work_2_1 == 3 || ldv_work_2_1 == 2) && (unsigned long )ldv_work_struct_2_1 == (unsigned long )work) {
    ldv_work_2_1 = 1;
  } else {
  }
  if ((ldv_work_2_2 == 3 || ldv_work_2_2 == 2) && (unsigned long )ldv_work_struct_2_2 == (unsigned long )work) {
    ldv_work_2_2 = 1;
  } else {
  }
  if ((ldv_work_2_3 == 3 || ldv_work_2_3 == 2) && (unsigned long )ldv_work_struct_2_3 == (unsigned long )work) {
    ldv_work_2_3 = 1;
  } else {
  }
  return;
}
}
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    xgbe_tx_tstamp(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_53127;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    xgbe_tx_tstamp(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_53127;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    xgbe_tx_tstamp(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_53127;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    xgbe_tx_tstamp(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_53127;
  default:
  ldv_stop();
  }
  ldv_53127: ;
  return;
}
}
void invoke_work_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_1_0 == 2 || ldv_work_1_0 == 3) {
    ldv_work_1_0 = 4;
    xgbe_service(ldv_work_struct_1_0);
    ldv_work_1_0 = 1;
  } else {
  }
  goto ldv_53138;
  case 1: ;
  if (ldv_work_1_1 == 2 || ldv_work_1_1 == 3) {
    ldv_work_1_1 = 4;
    xgbe_service(ldv_work_struct_1_0);
    ldv_work_1_1 = 1;
  } else {
  }
  goto ldv_53138;
  case 2: ;
  if (ldv_work_1_2 == 2 || ldv_work_1_2 == 3) {
    ldv_work_1_2 = 4;
    xgbe_service(ldv_work_struct_1_0);
    ldv_work_1_2 = 1;
  } else {
  }
  goto ldv_53138;
  case 3: ;
  if (ldv_work_1_3 == 2 || ldv_work_1_3 == 3) {
    ldv_work_1_3 = 4;
    xgbe_service(ldv_work_struct_1_0);
    ldv_work_1_3 = 1;
  } else {
  }
  goto ldv_53138;
  default:
  ldv_stop();
  }
  ldv_53138: ;
  return;
}
}
void choose_timer_7(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_7_0 == 1) {
    ldv_timer_7_0 = 2;
    ldv_timer_7(ldv_timer_7_0, ldv_timer_list_7_0);
  } else {
  }
  goto ldv_53147;
  case 1: ;
  if (ldv_timer_7_1 == 1) {
    ldv_timer_7_1 = 2;
    ldv_timer_7(ldv_timer_7_1, ldv_timer_list_7_1);
  } else {
  }
  goto ldv_53147;
  case 2: ;
  if (ldv_timer_7_2 == 1) {
    ldv_timer_7_2 = 2;
    ldv_timer_7(ldv_timer_7_2, ldv_timer_list_7_2);
  } else {
  }
  goto ldv_53147;
  case 3: ;
  if (ldv_timer_7_3 == 1) {
    ldv_timer_7_3 = 2;
    ldv_timer_7(ldv_timer_7_3, ldv_timer_list_7_3);
  } else {
  }
  goto ldv_53147;
  default:
  ldv_stop();
  }
  ldv_53147: ;
  return;
}
}
void call_and_disable_all_3(int state )
{
  {
  if (ldv_work_3_0 == state) {
    call_and_disable_work_3(ldv_work_struct_3_0);
  } else {
  }
  if (ldv_work_3_1 == state) {
    call_and_disable_work_3(ldv_work_struct_3_1);
  } else {
  }
  if (ldv_work_3_2 == state) {
    call_and_disable_work_3(ldv_work_struct_3_2);
  } else {
  }
  if (ldv_work_3_3 == state) {
    call_and_disable_work_3(ldv_work_struct_3_3);
  } else {
  }
  return;
}
}
void activate_pending_timer_7(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_7_0 == (unsigned long )timer) {
    if (ldv_timer_7_0 == 2 || pending_flag != 0) {
      ldv_timer_list_7_0 = timer;
      ldv_timer_list_7_0->data = data;
      ldv_timer_7_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_7_1 == (unsigned long )timer) {
    if (ldv_timer_7_1 == 2 || pending_flag != 0) {
      ldv_timer_list_7_1 = timer;
      ldv_timer_list_7_1->data = data;
      ldv_timer_7_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_7_2 == (unsigned long )timer) {
    if (ldv_timer_7_2 == 2 || pending_flag != 0) {
      ldv_timer_list_7_2 = timer;
      ldv_timer_list_7_2->data = data;
      ldv_timer_7_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_7_3 == (unsigned long )timer) {
    if (ldv_timer_7_3 == 2 || pending_flag != 0) {
      ldv_timer_list_7_3 = timer;
      ldv_timer_list_7_3->data = data;
      ldv_timer_7_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_7(timer, data);
  return;
}
}
void call_and_disable_work_2(struct work_struct *work )
{
  {
  if ((ldv_work_2_0 == 2 || ldv_work_2_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_0) {
    xgbe_restart(work);
    ldv_work_2_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_1 == 2 || ldv_work_2_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_1) {
    xgbe_restart(work);
    ldv_work_2_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_2 == 2 || ldv_work_2_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_2) {
    xgbe_restart(work);
    ldv_work_2_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_2_3 == 2 || ldv_work_2_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_2_3) {
    xgbe_restart(work);
    ldv_work_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_7(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_7_0 == 0 || ldv_timer_7_0 == 2) {
    ldv_timer_list_7_0 = timer;
    ldv_timer_list_7_0->data = data;
    ldv_timer_7_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_7_1 == 0 || ldv_timer_7_1 == 2) {
    ldv_timer_list_7_1 = timer;
    ldv_timer_list_7_1->data = data;
    ldv_timer_7_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_7_2 == 0 || ldv_timer_7_2 == 2) {
    ldv_timer_list_7_2 = timer;
    ldv_timer_list_7_2->data = data;
    ldv_timer_7_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_7_3 == 0 || ldv_timer_7_3 == 2) {
    ldv_timer_list_7_3 = timer;
    ldv_timer_list_7_3->data = data;
    ldv_timer_7_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_main_exported_15(void)
{
  struct rtnl_link_stats64 *ldvarg34 ;
  void *tmp ;
  u16 ldvarg44 ;
  u16 ldvarg40 ;
  void *ldvarg36 ;
  void *tmp___0 ;
  struct sk_buff *ldvarg37 ;
  void *tmp___1 ;
  int ldvarg38 ;
  int ldvarg42 ;
  struct ifreq *ldvarg43 ;
  void *tmp___2 ;
  __be16 ldvarg41 ;
  u8 ldvarg35 ;
  netdev_features_t ldvarg39 ;
  __be16 ldvarg45 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(184UL);
  ldvarg34 = (struct rtnl_link_stats64 *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg36 = tmp___0;
  tmp___1 = ldv_init_zalloc(232UL);
  ldvarg37 = (struct sk_buff *)tmp___1;
  tmp___2 = ldv_init_zalloc(40UL);
  ldvarg43 = (struct ifreq *)tmp___2;
  ldv_memset((void *)(& ldvarg44), 0, 2UL);
  ldv_memset((void *)(& ldvarg40), 0, 2UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg42), 0, 4UL);
  ldv_memset((void *)(& ldvarg41), 0, 2UL);
  ldv_memset((void *)(& ldvarg35), 0, 1UL);
  ldv_memset((void *)(& ldvarg39), 0, 8UL);
  ldv_memset((void *)(& ldvarg45), 0, 2UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_close(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  goto ldv_53185;
  case 1: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_set_rx_mode(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_set_rx_mode(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_set_rx_mode(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 2: ;
  if (ldv_state_variable_15 == 3) {
    eth_validate_addr(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    eth_validate_addr(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    eth_validate_addr(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 3: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_vlan_rx_kill_vid(xgbe_netdev_ops_group1, (int )ldvarg45, (int )ldvarg44);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_vlan_rx_kill_vid(xgbe_netdev_ops_group1, (int )ldvarg45, (int )ldvarg44);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_vlan_rx_kill_vid(xgbe_netdev_ops_group1, (int )ldvarg45, (int )ldvarg44);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 4: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_ioctl(xgbe_netdev_ops_group1, ldvarg43, ldvarg42);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_ioctl(xgbe_netdev_ops_group1, ldvarg43, ldvarg42);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_ioctl(xgbe_netdev_ops_group1, ldvarg43, ldvarg42);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 5: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_vlan_rx_add_vid(xgbe_netdev_ops_group1, (int )ldvarg41, (int )ldvarg40);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_vlan_rx_add_vid(xgbe_netdev_ops_group1, (int )ldvarg41, (int )ldvarg40);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_vlan_rx_add_vid(xgbe_netdev_ops_group1, (int )ldvarg41, (int )ldvarg40);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 6: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_poll_controller(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_poll_controller(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_poll_controller(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 7: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_set_features(xgbe_netdev_ops_group1, ldvarg39);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_set_features(xgbe_netdev_ops_group1, ldvarg39);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_set_features(xgbe_netdev_ops_group1, ldvarg39);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 8: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_change_mtu(xgbe_netdev_ops_group1, ldvarg38);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_change_mtu(xgbe_netdev_ops_group1, ldvarg38);
    ldv_state_variable_15 = 2;
  } else {
  }
  goto ldv_53185;
  case 9: ;
  if (ldv_state_variable_15 == 2) {
    ldv_retval_26 = xgbe_open(xgbe_netdev_ops_group1);
    if (ldv_retval_26 == 0) {
      ldv_state_variable_15 = 3;
    } else {
    }
  } else {
  }
  goto ldv_53185;
  case 10: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_xmit(ldvarg37, xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  goto ldv_53185;
  case 11: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_set_mac_address(xgbe_netdev_ops_group1, ldvarg36);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_set_mac_address(xgbe_netdev_ops_group1, ldvarg36);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_set_mac_address(xgbe_netdev_ops_group1, ldvarg36);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 12: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_setup_tc(xgbe_netdev_ops_group1, (int )ldvarg35);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_setup_tc(xgbe_netdev_ops_group1, (int )ldvarg35);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_setup_tc(xgbe_netdev_ops_group1, (int )ldvarg35);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 13: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_get_stats64(xgbe_netdev_ops_group1, ldvarg34);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_get_stats64(xgbe_netdev_ops_group1, ldvarg34);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_get_stats64(xgbe_netdev_ops_group1, ldvarg34);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 14: ;
  if (ldv_state_variable_15 == 3) {
    xgbe_tx_timeout(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 3;
  } else {
  }
  if (ldv_state_variable_15 == 2) {
    xgbe_tx_timeout(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 2;
  } else {
  }
  if (ldv_state_variable_15 == 1) {
    xgbe_tx_timeout(xgbe_netdev_ops_group1);
    ldv_state_variable_15 = 1;
  } else {
  }
  goto ldv_53185;
  case 15: ;
  if (ldv_state_variable_15 == 1) {
    ldv_retval_25 = ldv_ndo_init_15();
    if (ldv_retval_25 == 0) {
      ldv_state_variable_15 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_53185;
  case 16: ;
  if (ldv_state_variable_15 == 2) {
    ldv_ndo_uninit_15();
    ldv_state_variable_15 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_53185;
  default:
  ldv_stop();
  }
  ldv_53185: ;
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_82(lock, flags);
  return;
}
}
bool ldv_queue_work_on_85(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_86(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_87(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_88(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_89(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_calloc(n, size);
  return (tmp);
}
}
int ldv_pskb_expand_head_101(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_103(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_105(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_106(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_107(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_108(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_109(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_110(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_111(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_mod_timer_113(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_7(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_mod_timer_114(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_7(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_115(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_7(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_116(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_7(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_117(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
void ldv_flush_workqueue_118(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
__inline static int get_bitmask_order(unsigned int count )
{
  int order ;
  {
  order = fls((int )count);
  return (order);
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long __usecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long usecs_to_jiffies(unsigned int const u )
{
  unsigned long tmp___1 ;
  {
  tmp___1 = __usecs_to_jiffies(u);
  return (tmp___1);
}
}
extern ktime_t ktime_get_with_offset(enum tk_offsets ) ;
__inline static ktime_t ktime_get_real(void)
{
  ktime_t tmp ;
  {
  tmp = ktime_get_with_offset(0);
  return (tmp);
}
}
int ldv_mod_timer_171(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
bool ldv_queue_work_on_144(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_148(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_147(struct workqueue_struct *ldv_func_arg1 ) ;
struct sk_buff *ldv_skb_clone_162(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_170(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_164(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_160(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_168(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_169(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_165(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_166(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern u8 const byte_rev_table[256U] ;
__inline static u8 __bitrev8(u8 byte )
{
  {
  return ((u8 )byte_rev_table[(int )byte]);
}
}
__inline static u16 __bitrev16(u16 x )
{
  u8 tmp ;
  u8 tmp___0 ;
  {
  tmp = __bitrev8((int )((u8 )x));
  tmp___0 = __bitrev8((int )((u8 )((int )x >> 8)));
  return ((u16 )((int )((short )((int )tmp << 8)) | (int )((short )tmp___0)));
}
}
__inline static u32 __bitrev32(u32 x )
{
  u16 tmp ;
  u16 tmp___0 ;
  {
  tmp = __bitrev16((int )((u16 )x));
  tmp___0 = __bitrev16((int )((u16 )(x >> 16)));
  return ((u32 )(((int )tmp << 16) | (int )tmp___0));
}
}
extern u32 crc32_le(u32 , unsigned char const * , size_t ) ;
extern void __const_udelay(unsigned long ) ;
extern void usleep_range(unsigned long , unsigned long ) ;
__inline static bool netif_xmit_stopped(struct netdev_queue const *dev_queue )
{
  {
  return (((unsigned long )dev_queue->state & 3UL) != 0UL);
}
}
extern void timecounter_init(struct timecounter * , struct cyclecounter const * ,
                             u64 ) ;
static unsigned int xgbe_usec_to_riwt(struct xgbe_prv_data *pdata , unsigned int usec )
{
  unsigned long rate ;
  unsigned int ret ;
  {
  rate = pdata->sysclk_rate;
  ret = (unsigned int )(((unsigned long )usec * (rate / 1000000UL)) / 256UL);
  return (ret);
}
}
static unsigned int xgbe_riwt_to_usec(struct xgbe_prv_data *pdata , unsigned int riwt )
{
  unsigned long rate ;
  unsigned int ret ;
  {
  rate = pdata->sysclk_rate;
  ret = (unsigned int )((unsigned long )(riwt * 256U) / (rate / 1000000UL));
  return (ret);
}
}
static int xgbe_config_pblx8(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45781;
  ldv_45780:
  tmp = ioread32(channel->dma_regs);
  reg_val = tmp;
  reg_val = reg_val & 4294901759U;
  reg_val = ((pdata->pblx8 & 1U) << 16) | reg_val;
  iowrite32(reg_val, channel->dma_regs);
  i = i + 1U;
  channel = channel + 1;
  ldv_45781: ;
  if (pdata->channel_count > i) {
    goto ldv_45780;
  } else {
  }
  return (0);
}
}
static int xgbe_get_tx_pbl_val(struct xgbe_prv_data *pdata )
{
  unsigned int tmp ;
  {
  tmp = ioread32((pdata->channel)->dma_regs + 4UL);
  return ((int )(tmp >> 16) & 63);
}
}
static int xgbe_config_tx_pbl_val(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45794;
  ldv_45793: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45791;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4290838527U;
  reg_val = ((pdata->tx_pbl & 63U) << 16) | reg_val;
  iowrite32(reg_val, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45794: ;
  if (pdata->channel_count > i) {
    goto ldv_45793;
  } else {
  }
  ldv_45791: ;
  return (0);
}
}
static int xgbe_get_rx_pbl_val(struct xgbe_prv_data *pdata )
{
  unsigned int tmp ;
  {
  tmp = ioread32((pdata->channel)->dma_regs + 8UL);
  return ((int )(tmp >> 16) & 63);
}
}
static int xgbe_config_rx_pbl_val(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45806;
  ldv_45805: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45803;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4290838527U;
  reg_val = ((pdata->rx_pbl & 63U) << 16) | reg_val;
  iowrite32(reg_val, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45806: ;
  if (pdata->channel_count > i) {
    goto ldv_45805;
  } else {
  }
  ldv_45803: ;
  return (0);
}
}
static int xgbe_config_osp_mode(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45815;
  ldv_45814: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45812;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967279U;
  reg_val = ((pdata->tx_osp_mode & 1U) << 4) | reg_val;
  iowrite32(reg_val, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45815: ;
  if (pdata->channel_count > i) {
    goto ldv_45814;
  } else {
  }
  ldv_45812: ;
  return (0);
}
}
static int xgbe_config_rsf_mode(struct xgbe_prv_data *pdata , unsigned int val )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  i = 0U;
  goto ldv_45823;
  ldv_45822:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967263U;
  reg_val = ((val & 1U) << 5) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  i = i + 1U;
  ldv_45823: ;
  if (pdata->rx_q_count > i) {
    goto ldv_45822;
  } else {
  }
  return (0);
}
}
static int xgbe_config_tsf_mode(struct xgbe_prv_data *pdata , unsigned int val )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  i = 0U;
  goto ldv_45832;
  ldv_45831:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967293U;
  reg_val = ((val & 1U) << 1) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_45832: ;
  if (pdata->tx_q_count > i) {
    goto ldv_45831;
  } else {
  }
  return (0);
}
}
static int xgbe_config_rx_threshold(struct xgbe_prv_data *pdata , unsigned int val )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  i = 0U;
  goto ldv_45841;
  ldv_45840:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967292U;
  reg_val = (val & 3U) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  i = i + 1U;
  ldv_45841: ;
  if (pdata->rx_q_count > i) {
    goto ldv_45840;
  } else {
  }
  return (0);
}
}
static int xgbe_config_tx_threshold(struct xgbe_prv_data *pdata , unsigned int val )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  i = 0U;
  goto ldv_45850;
  ldv_45849:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967183U;
  reg_val = ((val & 7U) << 4) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_45850: ;
  if (pdata->tx_q_count > i) {
    goto ldv_45849;
  } else {
  }
  return (0);
}
}
static int xgbe_config_rx_coalesce(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45860;
  ldv_45859: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45857;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 60UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967040U;
  reg_val = (pdata->rx_riwt & 255U) | reg_val;
  iowrite32(reg_val, channel->dma_regs + 60UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45860: ;
  if (pdata->channel_count > i) {
    goto ldv_45859;
  } else {
  }
  ldv_45857: ;
  return (0);
}
}
static int xgbe_config_tx_coalesce(struct xgbe_prv_data *pdata )
{
  {
  return (0);
}
}
static void xgbe_config_rx_buffer_size(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45872;
  ldv_45871: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45869;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4294934529U;
  reg_val = ((pdata->rx_buf_size & 16383U) << 1) | reg_val;
  iowrite32(reg_val, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45872: ;
  if (pdata->channel_count > i) {
    goto ldv_45871;
  } else {
  }
  ldv_45869: ;
  return;
}
}
static void xgbe_config_tso_mode(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45881;
  ldv_45880: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45878;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294963199U;
  reg_val = reg_val | 4096U;
  iowrite32(reg_val, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_45881: ;
  if (pdata->channel_count > i) {
    goto ldv_45880;
  } else {
  }
  ldv_45878: ;
  return;
}
}
static void xgbe_config_sph_mode(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45890;
  ldv_45889: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45887;
  } else {
  }
  tmp = ioread32(channel->dma_regs);
  reg_val = tmp;
  reg_val = reg_val & 4278190079U;
  reg_val = reg_val | 16777216U;
  iowrite32(reg_val, channel->dma_regs);
  i = i + 1U;
  channel = channel + 1;
  ldv_45890: ;
  if (pdata->channel_count > i) {
    goto ldv_45889;
  } else {
  }
  ldv_45887:
  tmp___0 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294938623U;
  reg_val___0 = reg_val___0 | 8192U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 4UL);
  return;
}
}
static int xgbe_write_rss_reg(struct xgbe_prv_data *pdata , unsigned int type , unsigned int index ,
                              unsigned int val )
{
  unsigned int wait ;
  int ret ;
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  u32 reg_val___0 ;
  unsigned int tmp___1 ;
  u32 reg_val___1 ;
  unsigned int tmp___2 ;
  u32 reg_val___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  {
  ret = 0;
  mutex_lock_nested(& pdata->rss_mutex, 0U);
  tmp = ioread32(pdata->xgmac_regs + 3208UL);
  if ((int )tmp & 1) {
    ret = -16;
    goto unlock;
  } else {
  }
  iowrite32(val, pdata->xgmac_regs + 3212UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 3208UL);
  reg_val = tmp___0;
  reg_val = reg_val & 4294902015U;
  reg_val = ((index << 8) & 65535U) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 3208UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 3208UL);
  reg_val___0 = tmp___1;
  reg_val___0 = reg_val___0 & 4294967291U;
  reg_val___0 = ((type & 1U) << 2) | reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + 3208UL);
  tmp___2 = ioread32(pdata->xgmac_regs + 3208UL);
  reg_val___1 = tmp___2;
  reg_val___1 = reg_val___1 & 4294967293U;
  reg_val___1 = reg_val___1;
  iowrite32(reg_val___1, pdata->xgmac_regs + 3208UL);
  tmp___3 = ioread32(pdata->xgmac_regs + 3208UL);
  reg_val___2 = tmp___3;
  reg_val___2 = reg_val___2 & 4294967294U;
  reg_val___2 = reg_val___2 | 1U;
  iowrite32(reg_val___2, pdata->xgmac_regs + 3208UL);
  wait = 1000U;
  goto ldv_45906;
  ldv_45905:
  tmp___4 = ioread32(pdata->xgmac_regs + 3208UL);
  if ((tmp___4 & 1U) == 0U) {
    goto unlock;
  } else {
  }
  usleep_range(1000UL, 1500UL);
  ldv_45906:
  tmp___5 = wait;
  wait = wait - 1U;
  if (tmp___5 != 0U) {
    goto ldv_45905;
  } else {
  }
  ret = -16;
  unlock:
  mutex_unlock(& pdata->rss_mutex);
  return (ret);
}
}
static int xgbe_write_rss_hash_key(struct xgbe_prv_data *pdata )
{
  unsigned int key_regs ;
  unsigned int *key ;
  int ret ;
  unsigned int *tmp ;
  unsigned int tmp___0 ;
  {
  key_regs = 10U;
  key = (unsigned int *)(& pdata->rss_key);
  goto ldv_45915;
  ldv_45914:
  tmp = key;
  key = key + 1;
  ret = xgbe_write_rss_reg(pdata, 1U, key_regs, *tmp);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ldv_45915:
  tmp___0 = key_regs;
  key_regs = key_regs - 1U;
  if (tmp___0 != 0U) {
    goto ldv_45914;
  } else {
  }
  return (0);
}
}
static int xgbe_write_rss_lookup_table(struct xgbe_prv_data *pdata )
{
  unsigned int i ;
  int ret ;
  {
  i = 0U;
  goto ldv_45925;
  ldv_45924:
  ret = xgbe_write_rss_reg(pdata, 0U, i, pdata->rss_table[i]);
  if (ret != 0) {
    return (ret);
  } else {
  }
  i = i + 1U;
  ldv_45925: ;
  if (i <= 255U) {
    goto ldv_45924;
  } else {
  }
  return (0);
}
}
static int xgbe_set_rss_hash_key(struct xgbe_prv_data *pdata , u8 const *key )
{
  int tmp ;
  {
  memcpy((void *)(& pdata->rss_key), (void const *)key, 40UL);
  tmp = xgbe_write_rss_hash_key(pdata);
  return (tmp);
}
}
static int xgbe_set_rss_lookup_table(struct xgbe_prv_data *pdata , u32 const *table )
{
  unsigned int i ;
  int tmp ;
  {
  i = 0U;
  goto ldv_45939;
  ldv_45938:
  pdata->rss_table[i] = pdata->rss_table[i] & 4294967280U;
  pdata->rss_table[i] = pdata->rss_table[i] | ((u32 )*(table + (unsigned long )i) & 15U);
  i = i + 1U;
  ldv_45939: ;
  if (i <= 255U) {
    goto ldv_45938;
  } else {
  }
  tmp = xgbe_write_rss_lookup_table(pdata);
  return (tmp);
}
}
static int xgbe_enable_rss(struct xgbe_prv_data *pdata )
{
  int ret ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  if (pdata->hw_feat.rss == 0U) {
    return (-95);
  } else {
  }
  ret = xgbe_write_rss_hash_key(pdata);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ret = xgbe_write_rss_lookup_table(pdata);
  if (ret != 0) {
    return (ret);
  } else {
  }
  iowrite32(pdata->rss_options, pdata->xgmac_regs + 3200UL);
  tmp = ioread32(pdata->xgmac_regs + 3200UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, pdata->xgmac_regs + 3200UL);
  return (0);
}
}
static int xgbe_disable_rss(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  if (pdata->hw_feat.rss == 0U) {
    return (-95);
  } else {
  }
  tmp = ioread32(pdata->xgmac_regs + 3200UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 3200UL);
  return (0);
}
}
static void xgbe_config_rss(struct xgbe_prv_data *pdata )
{
  int ret ;
  {
  if (pdata->hw_feat.rss == 0U) {
    return;
  } else {
  }
  if (((pdata->netdev)->features & 8589934592ULL) != 0ULL) {
    ret = xgbe_enable_rss(pdata);
  } else {
    ret = xgbe_disable_rss(pdata);
  }
  if (ret != 0) {
    netdev_err((struct net_device const *)pdata->netdev, "error configuring RSS, RSS disabled\n");
  } else {
  }
  return;
}
}
static int xgbe_disable_tx_flow_control(struct xgbe_prv_data *pdata )
{
  unsigned int max_q_count ;
  unsigned int q_count ;
  unsigned int reg ;
  unsigned int reg_val ;
  unsigned int i ;
  u32 reg_val___0 ;
  unsigned int tmp ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  i = 0U;
  goto ldv_45964;
  ldv_45963:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  reg_val___0 = tmp;
  reg_val___0 = reg_val___0 & 4294967167U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  i = i + 1U;
  ldv_45964: ;
  if (pdata->rx_q_count > i) {
    goto ldv_45963;
  } else {
  }
  max_q_count = 8U;
  __min1 = pdata->tx_q_count;
  __min2 = max_q_count;
  q_count = __min1 < __min2 ? __min1 : __min2;
  reg = 112U;
  i = 0U;
  goto ldv_45970;
  ldv_45969:
  reg_val = ioread32(pdata->xgmac_regs + (unsigned long )reg);
  reg_val = reg_val & 4294967293U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + (unsigned long )reg);
  reg = reg + 4U;
  i = i + 1U;
  ldv_45970: ;
  if (i < q_count) {
    goto ldv_45969;
  } else {
  }
  return (0);
}
}
static int xgbe_enable_tx_flow_control(struct xgbe_prv_data *pdata )
{
  unsigned int max_q_count ;
  unsigned int q_count ;
  unsigned int reg ;
  unsigned int reg_val ;
  unsigned int i ;
  u32 reg_val___0 ;
  unsigned int tmp ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  i = 0U;
  goto ldv_45982;
  ldv_45981:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  reg_val___0 = tmp;
  reg_val___0 = reg_val___0 & 4294967167U;
  reg_val___0 = reg_val___0 | 128U;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  i = i + 1U;
  ldv_45982: ;
  if (pdata->rx_q_count > i) {
    goto ldv_45981;
  } else {
  }
  max_q_count = 8U;
  __min1 = pdata->tx_q_count;
  __min2 = max_q_count;
  q_count = __min1 < __min2 ? __min1 : __min2;
  reg = 112U;
  i = 0U;
  goto ldv_45988;
  ldv_45987:
  reg_val = ioread32(pdata->xgmac_regs + (unsigned long )reg);
  reg_val = reg_val & 4294967293U;
  reg_val = reg_val | 2U;
  reg_val = reg_val & 65535U;
  reg_val = reg_val | 4294901760U;
  iowrite32(reg_val, pdata->xgmac_regs + (unsigned long )reg);
  reg = reg + 4U;
  i = i + 1U;
  ldv_45988: ;
  if (i < q_count) {
    goto ldv_45987;
  } else {
  }
  return (0);
}
}
static int xgbe_disable_rx_flow_control(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 144UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 144UL);
  return (0);
}
}
static int xgbe_enable_rx_flow_control(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 144UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, pdata->xgmac_regs + 144UL);
  return (0);
}
}
static int xgbe_config_tx_flow_control(struct xgbe_prv_data *pdata )
{
  struct ieee_pfc *pfc ;
  {
  pfc = pdata->pfc;
  if (pdata->tx_pause != 0U || ((unsigned long )pfc != (unsigned long )((struct ieee_pfc *)0) && (unsigned int )pfc->pfc_en != 0U)) {
    xgbe_enable_tx_flow_control(pdata);
  } else {
    xgbe_disable_tx_flow_control(pdata);
  }
  return (0);
}
}
static int xgbe_config_rx_flow_control(struct xgbe_prv_data *pdata )
{
  struct ieee_pfc *pfc ;
  {
  pfc = pdata->pfc;
  if (pdata->rx_pause != 0U || ((unsigned long )pfc != (unsigned long )((struct ieee_pfc *)0) && (unsigned int )pfc->pfc_en != 0U)) {
    xgbe_enable_rx_flow_control(pdata);
  } else {
    xgbe_disable_rx_flow_control(pdata);
  }
  return (0);
}
}
static void xgbe_config_flow_control(struct xgbe_prv_data *pdata )
{
  struct ieee_pfc *pfc ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  pfc = pdata->pfc;
  xgbe_config_tx_flow_control(pdata);
  xgbe_config_rx_flow_control(pdata);
  tmp = ioread32(pdata->xgmac_regs + 144UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967039U;
  reg_val = (u32 )((((unsigned long )pfc != (unsigned long )((struct ieee_pfc *)0) && (unsigned int )pfc->pfc_en != 0U) & 1) << 8) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 144UL);
  return;
}
}
static void xgbe_enable_dma_interrupts(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int dma_ch_isr ;
  unsigned int dma_ch_ier ;
  unsigned int i ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46019;
  ldv_46018:
  dma_ch_isr = ioread32(channel->dma_regs + 96UL);
  iowrite32(dma_ch_isr, channel->dma_regs + 96UL);
  dma_ch_ier = 0U;
  dma_ch_ier = dma_ch_ier & 4294901759U;
  dma_ch_ier = dma_ch_ier | 65536U;
  dma_ch_ier = dma_ch_ier & 4294934527U;
  dma_ch_ier = dma_ch_ier | 32768U;
  dma_ch_ier = dma_ch_ier & 4294963199U;
  dma_ch_ier = dma_ch_ier | 4096U;
  if ((unsigned long )channel->tx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    if (pdata->per_channel_irq == 0U) {
      dma_ch_ier = dma_ch_ier & 4294967294U;
      dma_ch_ier = dma_ch_ier | 1U;
    } else {
    }
  } else {
  }
  if ((unsigned long )channel->rx_ring != (unsigned long )((struct xgbe_ring *)0)) {
    dma_ch_ier = dma_ch_ier & 4294967167U;
    dma_ch_ier = dma_ch_ier | 128U;
    if (pdata->per_channel_irq == 0U) {
      dma_ch_ier = dma_ch_ier & 4294967231U;
      dma_ch_ier = dma_ch_ier | 64U;
    } else {
    }
  } else {
  }
  iowrite32(dma_ch_ier, channel->dma_regs + 56UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46019: ;
  if (pdata->channel_count > i) {
    goto ldv_46018;
  } else {
  }
  return;
}
}
static void xgbe_enable_mtl_interrupts(struct xgbe_prv_data *pdata )
{
  unsigned int mtl_q_isr ;
  unsigned int q_count ;
  unsigned int i ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  {
  _max1 = pdata->hw_feat.tx_q_cnt;
  _max2 = pdata->hw_feat.rx_q_cnt;
  q_count = _max1 > _max2 ? _max1 : _max2;
  i = 0U;
  goto ldv_46031;
  ldv_46030:
  mtl_q_isr = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4468UL));
  iowrite32(mtl_q_isr, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4468UL));
  iowrite32(0U, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4464UL));
  i = i + 1U;
  ldv_46031: ;
  if (i < q_count) {
    goto ldv_46030;
  } else {
  }
  return;
}
}
static void xgbe_enable_mac_interrupts(struct xgbe_prv_data *pdata )
{
  unsigned int mac_ier ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  mac_ier = 0U;
  mac_ier = mac_ier & 4294963199U;
  mac_ier = mac_ier | 4096U;
  iowrite32(mac_ier, pdata->xgmac_regs + 180UL);
  tmp = ioread32(pdata->xgmac_regs + 2060UL);
  reg_val = tmp;
  reg_val = reg_val & 4286578688U;
  reg_val = reg_val | 8388607U;
  iowrite32(reg_val, pdata->xgmac_regs + 2060UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 2064UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294705152U;
  reg_val___0 = reg_val___0 | 262143U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 2064UL);
  return;
}
}
static int xgbe_set_gmii_speed(struct xgbe_prv_data *pdata )
{
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs);
  if (((tmp >> 29) & 3U) == 3U) {
    return (0);
  } else {
  }
  tmp___0 = ioread32(pdata->xgmac_regs);
  reg_val = tmp___0;
  reg_val = reg_val & 2684354559U;
  reg_val = reg_val | 1610612736U;
  iowrite32(reg_val, pdata->xgmac_regs);
  return (0);
}
}
static int xgbe_set_gmii_2500_speed(struct xgbe_prv_data *pdata )
{
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs);
  if (((tmp >> 29) & 3U) == 2U) {
    return (0);
  } else {
  }
  tmp___0 = ioread32(pdata->xgmac_regs);
  reg_val = tmp___0;
  reg_val = reg_val & 2684354559U;
  reg_val = reg_val | 1073741824U;
  iowrite32(reg_val, pdata->xgmac_regs);
  return (0);
}
}
static int xgbe_set_xgmii_speed(struct xgbe_prv_data *pdata )
{
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs);
  if (((tmp >> 29) & 3U) == 0U) {
    return (0);
  } else {
  }
  tmp___0 = ioread32(pdata->xgmac_regs);
  reg_val = tmp___0;
  reg_val = reg_val & 2684354559U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs);
  return (0);
}
}
static int xgbe_set_promiscuous_mode(struct xgbe_prv_data *pdata , unsigned int enable )
{
  unsigned int val ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u32 reg_val ;
  unsigned int tmp___1 ;
  {
  val = enable != 0U;
  tmp = ioread32(pdata->xgmac_regs + 8UL);
  if ((tmp & 1U) == val) {
    return (0);
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_set_promiscuous_mode";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "%s promiscuous mode\n";
    descriptor.lineno = 714U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "%s promiscuous mode\n", enable != 0U ? (char *)"entering" : (char *)"leaving");
    } else {
    }
  } else {
  }
  tmp___1 = ioread32(pdata->xgmac_regs + 8UL);
  reg_val = tmp___1;
  reg_val = reg_val & 4294967294U;
  reg_val = (val & 1U) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 8UL);
  return (0);
}
}
static int xgbe_set_all_multicast_mode(struct xgbe_prv_data *pdata , unsigned int enable )
{
  unsigned int val ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u32 reg_val ;
  unsigned int tmp___1 ;
  {
  val = enable != 0U;
  tmp = ioread32(pdata->xgmac_regs + 8UL);
  if (((tmp >> 4) & 1U) == val) {
    return (0);
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_set_all_multicast_mode";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "%s allmulti mode\n";
    descriptor.lineno = 729U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "%s allmulti mode\n", enable != 0U ? (char *)"entering" : (char *)"leaving");
    } else {
    }
  } else {
  }
  tmp___1 = ioread32(pdata->xgmac_regs + 8UL);
  reg_val = tmp___1;
  reg_val = reg_val & 4294967279U;
  reg_val = ((val & 1U) << 4) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 8UL);
  return (0);
}
}
static void xgbe_set_mac_reg(struct xgbe_prv_data *pdata , struct netdev_hw_addr *ha ,
                             unsigned int *mac_reg )
{
  unsigned int mac_addr_hi ;
  unsigned int mac_addr_lo ;
  u8 *mac_addr ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  mac_addr_lo = 0U;
  mac_addr_hi = 0U;
  if ((unsigned long )ha != (unsigned long )((struct netdev_hw_addr *)0)) {
    mac_addr = (u8 *)(& mac_addr_lo);
    *mac_addr = ha->addr[0];
    *(mac_addr + 1UL) = ha->addr[1];
    *(mac_addr + 2UL) = ha->addr[2];
    *(mac_addr + 3UL) = ha->addr[3];
    mac_addr = (u8 *)(& mac_addr_hi);
    *mac_addr = ha->addr[4];
    *(mac_addr + 1UL) = ha->addr[5];
    if ((int )pdata->msg_enable & 1) {
      descriptor.modname = "amd_xgbe";
      descriptor.function = "xgbe_set_mac_reg";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
      descriptor.format = "adding mac address %pM at %#x\n";
      descriptor.lineno = 756U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                             "adding mac address %pM at %#x\n", (unsigned char *)(& ha->addr),
                             *mac_reg);
      } else {
      }
    } else {
    }
    mac_addr_hi = mac_addr_hi & 2147483647U;
    mac_addr_hi = mac_addr_hi | 2147483648U;
  } else {
  }
  iowrite32(mac_addr_hi, pdata->xgmac_regs + (unsigned long )*mac_reg);
  *mac_reg = *mac_reg + 4U;
  iowrite32(mac_addr_lo, pdata->xgmac_regs + (unsigned long )*mac_reg);
  *mac_reg = *mac_reg + 4U;
  return;
}
}
static void xgbe_set_mac_addn_addrs(struct xgbe_prv_data *pdata )
{
  struct net_device *netdev ;
  struct netdev_hw_addr *ha ;
  unsigned int mac_reg ;
  unsigned int addn_macs ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  unsigned int tmp ;
  {
  netdev = pdata->netdev;
  mac_reg = 776U;
  addn_macs = pdata->hw_feat.addn_mac;
  if ((unsigned int )netdev->uc.count > addn_macs) {
    xgbe_set_promiscuous_mode(pdata, 1U);
  } else {
    __mptr = (struct list_head const *)netdev->uc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_46089;
    ldv_46088:
    xgbe_set_mac_reg(pdata, ha, & mac_reg);
    addn_macs = addn_macs - 1U;
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_46089: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->uc.list)) {
      goto ldv_46088;
    } else {
    }
    if ((unsigned int )netdev->mc.count > addn_macs) {
      xgbe_set_all_multicast_mode(pdata, 1U);
    } else {
      __mptr___1 = (struct list_head const *)netdev->mc.list.next;
      ha = (struct netdev_hw_addr *)__mptr___1;
      goto ldv_46096;
      ldv_46095:
      xgbe_set_mac_reg(pdata, ha, & mac_reg);
      addn_macs = addn_macs - 1U;
      __mptr___2 = (struct list_head const *)ha->list.next;
      ha = (struct netdev_hw_addr *)__mptr___2;
      ldv_46096: ;
      if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
        goto ldv_46095;
      } else {
      }
    }
  }
  goto ldv_46099;
  ldv_46098:
  xgbe_set_mac_reg(pdata, (struct netdev_hw_addr *)0, & mac_reg);
  ldv_46099:
  tmp = addn_macs;
  addn_macs = addn_macs - 1U;
  if (tmp != 0U) {
    goto ldv_46098;
  } else {
  }
  return;
}
}
static void xgbe_set_mac_hash_table(struct xgbe_prv_data *pdata )
{
  struct net_device *netdev ;
  struct netdev_hw_addr *ha ;
  unsigned int hash_reg ;
  unsigned int hash_table_shift ;
  unsigned int hash_table_count ;
  u32 hash_table[8U] ;
  u32 crc ;
  unsigned int i ;
  struct list_head const *__mptr ;
  u32 __x ;
  u32 tmp ;
  u32 tmp___0 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  u32 __x___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  struct list_head const *__mptr___2 ;
  {
  netdev = pdata->netdev;
  hash_table_shift = 26U - (pdata->hw_feat.hash_table_size >> 7);
  hash_table_count = pdata->hw_feat.hash_table_size / 32U;
  memset((void *)(& hash_table), 0, 32UL);
  __mptr = (struct list_head const *)netdev->uc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_46121;
  ldv_46120:
  tmp = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
  __x = ~ tmp;
  tmp___0 = __bitrev32(__x);
  crc = tmp___0;
  crc = crc >> (int )hash_table_shift;
  hash_table[crc >> 5] = hash_table[crc >> 5] | (u32 )(1 << ((int )crc & 31));
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_46121: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->uc.list)) {
    goto ldv_46120;
  } else {
  }
  __mptr___1 = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr___1;
  goto ldv_46132;
  ldv_46131:
  tmp___1 = crc32_le(4294967295U, (unsigned char const *)(& ha->addr), 6UL);
  __x___0 = ~ tmp___1;
  tmp___2 = __bitrev32(__x___0);
  crc = tmp___2;
  crc = crc >> (int )hash_table_shift;
  hash_table[crc >> 5] = hash_table[crc >> 5] | (u32 )(1 << ((int )crc & 31));
  __mptr___2 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___2;
  ldv_46132: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_46131;
  } else {
  }
  hash_reg = 16U;
  i = 0U;
  goto ldv_46135;
  ldv_46134:
  iowrite32(hash_table[i], pdata->xgmac_regs + (unsigned long )hash_reg);
  hash_reg = hash_reg + 4U;
  i = i + 1U;
  ldv_46135: ;
  if (i < hash_table_count) {
    goto ldv_46134;
  } else {
  }
  return;
}
}
static int xgbe_add_mac_addresses(struct xgbe_prv_data *pdata )
{
  {
  if (pdata->hw_feat.hash_table_size != 0U) {
    xgbe_set_mac_hash_table(pdata);
  } else {
    xgbe_set_mac_addn_addrs(pdata);
  }
  return (0);
}
}
static int xgbe_set_mac_address___0(struct xgbe_prv_data *pdata , u8 *addr )
{
  unsigned int mac_addr_hi ;
  unsigned int mac_addr_lo ;
  {
  mac_addr_hi = (unsigned int )(((int )*(addr + 5UL) << 8) | (int )*(addr + 4UL));
  mac_addr_lo = (unsigned int )(((((int )*(addr + 3UL) << 24) | ((int )*(addr + 2UL) << 16)) | ((int )*(addr + 1UL) << 8)) | (int )*addr);
  iowrite32(mac_addr_hi, pdata->xgmac_regs + 768UL);
  iowrite32(mac_addr_lo, pdata->xgmac_regs + 772UL);
  return (0);
}
}
static int xgbe_config_rx_mode(struct xgbe_prv_data *pdata )
{
  struct net_device *netdev ;
  unsigned int pr_mode ;
  unsigned int am_mode ;
  {
  netdev = pdata->netdev;
  pr_mode = (netdev->flags & 256U) != 0U;
  am_mode = (netdev->flags & 512U) != 0U;
  xgbe_set_promiscuous_mode(pdata, pr_mode);
  xgbe_set_all_multicast_mode(pdata, am_mode);
  xgbe_add_mac_addresses(pdata);
  return (0);
}
}
static int xgbe_read_mmd_regs(struct xgbe_prv_data *pdata , int prtad , int mmd_reg )
{
  unsigned int mmd_address ;
  int mmd_data ;
  unsigned int tmp ;
  {
  if ((mmd_reg & 1073741824) != 0) {
    mmd_address = (unsigned int )mmd_reg & 3221225471U;
  } else {
    mmd_address = (unsigned int )((pdata->mdio_mmd << 16) | (mmd_reg & 65535));
  }
  mutex_lock_nested(& pdata->xpcs_mutex, 0U);
  iowrite32(mmd_address >> 8, pdata->xpcs_regs + 1020UL);
  tmp = ioread32(pdata->xpcs_regs + (unsigned long )((mmd_address & 255U) << 2));
  mmd_data = (int )tmp;
  mutex_unlock(& pdata->xpcs_mutex);
  return (mmd_data);
}
}
static void xgbe_write_mmd_regs(struct xgbe_prv_data *pdata , int prtad , int mmd_reg ,
                                int mmd_data )
{
  unsigned int mmd_address ;
  {
  if ((mmd_reg & 1073741824) != 0) {
    mmd_address = (unsigned int )mmd_reg & 3221225471U;
  } else {
    mmd_address = (unsigned int )((pdata->mdio_mmd << 16) | (mmd_reg & 65535));
  }
  mutex_lock_nested(& pdata->xpcs_mutex, 0U);
  iowrite32(mmd_address >> 8, pdata->xpcs_regs + 1020UL);
  iowrite32((u32 )mmd_data, pdata->xpcs_regs + (unsigned long )((mmd_address & 255U) << 2));
  mutex_unlock(& pdata->xpcs_mutex);
  return;
}
}
static int xgbe_tx_complete(struct xgbe_ring_desc *rdesc )
{
  {
  return ((int )rdesc->desc3 >= 0);
}
}
static int xgbe_disable_rx_csum(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294966783U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 4UL);
  return (0);
}
}
static int xgbe_enable_rx_csum(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294966783U;
  reg_val = reg_val | 512U;
  iowrite32(reg_val, pdata->xgmac_regs + 4UL);
  return (0);
}
}
static int xgbe_enable_rx_vlan_stripping(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  u32 reg_val___2 ;
  unsigned int tmp___2 ;
  u32 reg_val___3 ;
  unsigned int tmp___3 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 80UL);
  reg_val = tmp;
  reg_val = reg_val & 4278190079U;
  reg_val = reg_val | 16777216U;
  iowrite32(reg_val, pdata->xgmac_regs + 80UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4293918719U;
  reg_val___0 = reg_val___0 | 1048576U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 80UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294443007U;
  reg_val___1 = reg_val___1;
  iowrite32(reg_val___1, pdata->xgmac_regs + 80UL);
  tmp___2 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___2 = tmp___2;
  reg_val___2 = reg_val___2 & 4294705151U;
  reg_val___2 = reg_val___2;
  iowrite32(reg_val___2, pdata->xgmac_regs + 80UL);
  tmp___3 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___3 = tmp___3;
  reg_val___3 = reg_val___3 & 4288675839U;
  reg_val___3 = reg_val___3 | 6291456U;
  iowrite32(reg_val___3, pdata->xgmac_regs + 80UL);
  return (0);
}
}
static int xgbe_disable_rx_vlan_stripping(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 80UL);
  reg_val = tmp;
  reg_val = reg_val & 4288675839U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 80UL);
  return (0);
}
}
static int xgbe_enable_rx_vlan_filtering(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  u32 reg_val___2 ;
  unsigned int tmp___2 ;
  u32 reg_val___3 ;
  unsigned int tmp___3 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4294901759U;
  reg_val = reg_val | 65536U;
  iowrite32(reg_val, pdata->xgmac_regs + 8UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4261412863U;
  reg_val___0 = reg_val___0 | 33554432U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 80UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294836223U;
  reg_val___1 = reg_val___1;
  iowrite32(reg_val___1, pdata->xgmac_regs + 80UL);
  tmp___2 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___2 = tmp___2;
  reg_val___2 = reg_val___2 & 4294901759U;
  reg_val___2 = reg_val___2 | 65536U;
  iowrite32(reg_val___2, pdata->xgmac_regs + 80UL);
  tmp___3 = ioread32(pdata->xgmac_regs + 80UL);
  reg_val___3 = tmp___3;
  reg_val___3 = reg_val___3 & 4294901760U;
  reg_val___3 = reg_val___3 | 1U;
  iowrite32(reg_val___3, pdata->xgmac_regs + 80UL);
  return (0);
}
}
static int xgbe_disable_rx_vlan_filtering(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread32(pdata->xgmac_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4294901759U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 8UL);
  return (0);
}
}
static u32 xgbe_vid_crc32_le(__le16 vid_le )
{
  u32 poly ;
  u32 crc ;
  u32 temp ;
  unsigned char *data ;
  unsigned char data_byte ;
  int i ;
  int bits ;
  {
  poly = 3988292384U;
  crc = 4294967295U;
  temp = 0U;
  data = (unsigned char *)(& vid_le);
  data_byte = 0U;
  bits = get_bitmask_order(4095U);
  i = 0;
  goto ldv_46212;
  ldv_46211: ;
  if (((unsigned int )i & 7U) == 0U) {
    data_byte = *(data + (unsigned long )(i / 8));
  } else {
  }
  temp = ((crc & 1U) ^ (u32 )data_byte) & 1U;
  crc = crc >> 1;
  data_byte = (int )data_byte >> 1;
  if (temp != 0U) {
    crc = crc ^ poly;
  } else {
  }
  i = i + 1;
  ldv_46212: ;
  if (i < bits) {
    goto ldv_46211;
  } else {
  }
  return (crc);
}
}
static int xgbe_update_vlan_hash_table(struct xgbe_prv_data *pdata )
{
  u32 crc ;
  u16 vid ;
  __le16 vid_le ;
  u16 vlan_hash_table ;
  unsigned long tmp ;
  u32 __x ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  unsigned long tmp___2 ;
  u32 reg_val ;
  unsigned int tmp___3 ;
  {
  vlan_hash_table = 0U;
  tmp = find_first_bit((unsigned long const *)(& pdata->active_vlans), 4096UL);
  vid = (u16 )tmp;
  goto ldv_46226;
  ldv_46225:
  vid_le = vid;
  tmp___0 = xgbe_vid_crc32_le((int )vid_le);
  __x = ~ tmp___0;
  tmp___1 = __bitrev32(__x);
  crc = tmp___1 >> 28;
  vlan_hash_table = (u16 )((int )((short )(1 << (int )crc)) | (int )((short )vlan_hash_table));
  tmp___2 = find_next_bit((unsigned long const *)(& pdata->active_vlans), 4096UL,
                          (unsigned long )((int )vid + 1));
  vid = (u16 )tmp___2;
  ldv_46226: ;
  if ((unsigned int )vid <= 4095U) {
    goto ldv_46225;
  } else {
  }
  tmp___3 = ioread32(pdata->xgmac_regs + 88UL);
  reg_val = tmp___3;
  reg_val = reg_val & 4294901760U;
  reg_val = (u32 )vlan_hash_table | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 88UL);
  return (0);
}
}
static void xgbe_tx_desc_reset(struct xgbe_ring_data *rdata )
{
  struct xgbe_ring_desc *rdesc ;
  {
  rdesc = rdata->rdesc;
  rdesc->desc0 = 0U;
  rdesc->desc1 = 0U;
  rdesc->desc2 = 0U;
  rdesc->desc3 = 0U;
  __asm__ volatile ("": : : "memory");
  return;
}
}
static void xgbe_tx_desc_init(struct xgbe_channel *channel )
{
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  int i ;
  int start_index ;
  {
  ring = channel->tx_ring;
  start_index = (int )ring->cur;
  i = 0;
  goto ldv_46241;
  ldv_46240:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )i);
  xgbe_tx_desc_reset(rdata);
  i = i + 1;
  ldv_46241: ;
  if ((unsigned int )i < ring->rdesc_count) {
    goto ldv_46240;
  } else {
  }
  iowrite32(ring->rdesc_count - 1U, channel->dma_regs + 48UL);
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )start_index);
  iowrite32((unsigned int )(rdata->rdesc_dma >> 32ULL), channel->dma_regs + 16UL);
  iowrite32((unsigned int )rdata->rdesc_dma, channel->dma_regs + 20UL);
  return;
}
}
static void xgbe_rx_desc_reset(struct xgbe_prv_data *pdata , struct xgbe_ring_data *rdata ,
                               unsigned int index )
{
  struct xgbe_ring_desc *rdesc ;
  unsigned int rx_usecs ;
  unsigned int rx_frames ;
  unsigned int inte ;
  {
  rdesc = rdata->rdesc;
  rx_usecs = pdata->rx_usecs;
  rx_frames = pdata->rx_frames;
  if (rx_usecs == 0U && rx_frames == 0U) {
    inte = 1U;
  } else
  if (rx_frames != 0U && (index + 1U) % rx_frames == 0U) {
    inte = 1U;
  } else {
    inte = 0U;
  }
  rdesc->desc0 = (unsigned int )rdata->rx.hdr.dma;
  rdesc->desc1 = (unsigned int )(rdata->rx.hdr.dma >> 32ULL);
  rdesc->desc2 = (unsigned int )rdata->rx.buf.dma;
  rdesc->desc3 = (unsigned int )(rdata->rx.buf.dma >> 32ULL);
  rdesc->desc3 = rdesc->desc3 & 3221225471U;
  rdesc->desc3 = rdesc->desc3 | ((inte & 1U) << 30);
  __asm__ volatile ("": : : "memory");
  rdesc->desc3 = rdesc->desc3 & 2147483647U;
  rdesc->desc3 = rdesc->desc3 | 2147483648U;
  __asm__ volatile ("": : : "memory");
  return;
}
}
static void xgbe_rx_desc_init(struct xgbe_channel *channel )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  unsigned int start_index ;
  unsigned int i ;
  {
  pdata = channel->pdata;
  ring = channel->rx_ring;
  start_index = ring->cur;
  i = 0U;
  goto ldv_46261;
  ldv_46260:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & i);
  xgbe_rx_desc_reset(pdata, rdata, i);
  i = i + 1U;
  ldv_46261: ;
  if (ring->rdesc_count > i) {
    goto ldv_46260;
  } else {
  }
  iowrite32(ring->rdesc_count - 1U, channel->dma_regs + 52UL);
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & start_index);
  iowrite32((unsigned int )(rdata->rdesc_dma >> 32ULL), channel->dma_regs + 24UL);
  iowrite32((unsigned int )rdata->rdesc_dma, channel->dma_regs + 28UL);
  rdata = ring->rdata + (unsigned long )(((ring->rdesc_count + start_index) - 1U) & (ring->rdesc_count - 1U));
  iowrite32((unsigned int )rdata->rdesc_dma, channel->dma_regs + 44UL);
  return;
}
}
static void xgbe_update_tstamp_addend(struct xgbe_prv_data *pdata , unsigned int addend )
{
  u32 reg_val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  iowrite32(addend, pdata->xgmac_regs + 3352UL);
  tmp = ioread32(pdata->xgmac_regs + 3328UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967263U;
  reg_val = reg_val | 32U;
  iowrite32(reg_val, pdata->xgmac_regs + 3328UL);
  goto ldv_46269;
  ldv_46268:
  __const_udelay(21475UL);
  ldv_46269:
  tmp___0 = ioread32(pdata->xgmac_regs + 3328UL);
  if ((tmp___0 & 32U) != 0U) {
    goto ldv_46268;
  } else {
  }
  return;
}
}
static void xgbe_set_tstamp_time(struct xgbe_prv_data *pdata , unsigned int sec ,
                                 unsigned int nsec )
{
  u32 reg_val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  iowrite32(sec, pdata->xgmac_regs + 3344UL);
  iowrite32(nsec, pdata->xgmac_regs + 3348UL);
  tmp = ioread32(pdata->xgmac_regs + 3328UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967291U;
  reg_val = reg_val | 4U;
  iowrite32(reg_val, pdata->xgmac_regs + 3328UL);
  goto ldv_46278;
  ldv_46277:
  __const_udelay(21475UL);
  ldv_46278:
  tmp___0 = ioread32(pdata->xgmac_regs + 3328UL);
  if ((tmp___0 & 4U) != 0U) {
    goto ldv_46277;
  } else {
  }
  return;
}
}
static u64 xgbe_get_tstamp_time(struct xgbe_prv_data *pdata )
{
  u64 nsec ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 3336UL);
  nsec = (u64 )tmp;
  nsec = nsec * 1000000000ULL;
  tmp___0 = ioread32(pdata->xgmac_regs + 3340UL);
  nsec = (u64 )tmp___0 + nsec;
  return (nsec);
}
}
static u64 xgbe_get_tx_tstamp(struct xgbe_prv_data *pdata )
{
  unsigned int tx_snr ;
  u64 nsec ;
  unsigned int tmp ;
  {
  tx_snr = ioread32(pdata->xgmac_regs + 3376UL);
  if ((int )tx_snr < 0) {
    return (0ULL);
  } else {
  }
  tmp = ioread32(pdata->xgmac_regs + 3380UL);
  nsec = (u64 )tmp;
  nsec = nsec * 1000000000ULL;
  nsec = (u64 )tx_snr + nsec;
  return (nsec);
}
}
static void xgbe_get_rx_tstamp(struct xgbe_packet_data *packet , struct xgbe_ring_desc *rdesc )
{
  u64 nsec ;
  {
  if ((rdesc->desc3 & 16U) != 0U && (rdesc->desc3 & 64U) == 0U) {
    nsec = (u64 )rdesc->desc1;
    nsec = nsec << 32;
    nsec = (u64 )rdesc->desc0 | nsec;
    if (nsec != 0xffffffffffffffffULL) {
      packet->rx_tstamp = nsec;
      packet->attributes = packet->attributes & 4294967263U;
      packet->attributes = packet->attributes | 32U;
    } else {
    }
  } else {
  }
  return;
}
}
static int xgbe_config_tstamp(struct xgbe_prv_data *pdata , unsigned int mac_tscr )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  ktime_t tmp___1 ;
  {
  mac_tscr = mac_tscr & 4294966783U;
  mac_tscr = mac_tscr | 512U;
  mac_tscr = mac_tscr & 4294967293U;
  mac_tscr = mac_tscr | 2U;
  mac_tscr = mac_tscr & 4278190079U;
  mac_tscr = mac_tscr | 16777216U;
  iowrite32(mac_tscr, pdata->xgmac_regs + 3328UL);
  if ((mac_tscr & 1U) == 0U) {
    return (0);
  } else {
  }
  tmp = ioread32(pdata->xgmac_regs + 3332UL);
  reg_val = tmp;
  reg_val = reg_val & 4278255615U;
  reg_val = reg_val | 1310720U;
  iowrite32(reg_val, pdata->xgmac_regs + 3332UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 3332UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294902015U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + 3332UL);
  xgbe_update_tstamp_addend(pdata, pdata->tstamp_addend);
  xgbe_set_tstamp_time(pdata, 0U, 0U);
  tmp___1 = ktime_get_real();
  timecounter_init(& pdata->tstamp_tc, (struct cyclecounter const *)(& pdata->tstamp_cc),
                   (u64 )tmp___1.tv64);
  return (0);
}
}
static void xgbe_config_dcb_tc(struct xgbe_prv_data *pdata )
{
  struct ieee_ets *ets ;
  unsigned int total_weight ;
  unsigned int min_weight ;
  unsigned int weight ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  u32 reg_val___0 ;
  unsigned int tmp___1 ;
  unsigned int _min1 ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  unsigned int _min2 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  u32 reg_val___1 ;
  unsigned int tmp___3 ;
  u32 reg_val___2 ;
  unsigned int tmp___4 ;
  {
  ets = pdata->ets;
  if ((unsigned long )ets == (unsigned long )((struct ieee_ets *)0)) {
    return;
  } else {
  }
  tmp = ioread32(pdata->xgmac_regs + 4096UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967199U;
  reg_val = reg_val | 64U;
  iowrite32(reg_val, pdata->xgmac_regs + 4096UL);
  total_weight = (pdata->netdev)->mtu * pdata->hw_feat.tc_cnt;
  min_weight = total_weight / 100U;
  if (min_weight == 0U) {
    min_weight = 1U;
  } else {
  }
  i = 0U;
  goto ldv_46328;
  ldv_46327: ;
  switch ((int )ets->tc_tsa[i]) {
  case 0: ;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_config_dcb_tc";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "TC%u using SP\n";
    descriptor.lineno = 1312U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "TC%u using SP\n", i);
    } else {
    }
  } else {
  }
  tmp___1 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  reg_val___0 = tmp___1;
  reg_val___0 = reg_val___0 & 4294967292U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  goto ldv_46313;
  case 2:
  weight = ((unsigned int )ets->tc_tx_bw[i] * total_weight) / 100U;
  _max1 = weight;
  _max2 = min_weight;
  _min1 = _max1 > _max2 ? _max1 : _max2;
  _min2 = total_weight;
  weight = _min1 < _min2 ? _min1 : _min2;
  if ((int )pdata->msg_enable & 1) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_config_dcb_tc";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor___0.format = "TC%u using DWRR (weight %u)\n";
    descriptor___0.lineno = 1321U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                           "TC%u using DWRR (weight %u)\n", i, weight);
    } else {
    }
  } else {
  }
  tmp___3 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  reg_val___1 = tmp___3;
  reg_val___1 = reg_val___1 & 4294967292U;
  reg_val___1 = reg_val___1 | 2U;
  iowrite32(reg_val___1, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  tmp___4 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4376UL));
  reg_val___2 = tmp___4;
  reg_val___2 = reg_val___2 & 4292870144U;
  reg_val___2 = (weight & 2097151U) | reg_val___2;
  iowrite32(reg_val___2, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4376UL));
  goto ldv_46313;
  }
  ldv_46313:
  i = i + 1U;
  ldv_46328: ;
  if (pdata->hw_feat.tc_cnt > i) {
    goto ldv_46327;
  } else {
  }
  return;
}
}
static void xgbe_config_dcb_pfc(struct xgbe_prv_data *pdata )
{
  struct ieee_pfc *pfc ;
  struct ieee_ets *ets ;
  unsigned int mask ;
  unsigned int reg ;
  unsigned int reg_val ;
  unsigned int tc ;
  unsigned int prio ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pfc = pdata->pfc;
  ets = pdata->ets;
  if ((unsigned long )pfc == (unsigned long )((struct ieee_pfc *)0) || (unsigned long )ets == (unsigned long )((struct ieee_ets *)0)) {
    return;
  } else {
  }
  tc = 0U;
  goto ldv_46346;
  ldv_46345:
  mask = 0U;
  prio = 0U;
  goto ldv_46341;
  ldv_46340: ;
  if (((int )pfc->pfc_en >> (int )prio) & 1 && (unsigned int )ets->prio_tc[prio] == tc) {
    mask = (unsigned int )(1 << (int )prio) | mask;
  } else {
  }
  prio = prio + 1U;
  ldv_46341: ;
  if (prio <= 7U) {
    goto ldv_46340;
  } else {
  }
  mask = mask & 255U;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_config_dcb_pfc";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "TC%u PFC mask=%#x\n";
    descriptor.lineno = 1351U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "TC%u PFC mask=%#x\n", tc, mask);
    } else {
    }
  } else {
  }
  reg = (tc / 4U + 1040U) * 4U;
  reg_val = ioread32(pdata->xgmac_regs + (unsigned long )reg);
  reg_val = (unsigned int )(~ (255 << (int )((tc & 3U) << 3))) & reg_val;
  reg_val = (mask << (int )((tc & 3U) << 3)) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + (unsigned long )reg);
  tc = tc + 1U;
  ldv_46346: ;
  if (pdata->hw_feat.tc_cnt > tc) {
    goto ldv_46345;
  } else {
  }
  xgbe_config_flow_control(pdata);
  return;
}
}
static void xgbe_tx_start_xmit(struct xgbe_channel *channel , struct xgbe_ring *ring )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_ring_data *rdata ;
  unsigned long tmp ;
  {
  pdata = channel->pdata;
  __asm__ volatile ("sfence": : : "memory");
  rdata = ring->rdata + (unsigned long )(ring->cur & (ring->rdesc_count - 1U));
  iowrite32((unsigned int )rdata->rdesc_dma, channel->dma_regs + 36UL);
  if (pdata->tx_usecs != 0U && channel->tx_timer_active == 0U) {
    channel->tx_timer_active = 1U;
    tmp = usecs_to_jiffies(pdata->tx_usecs);
    ldv_mod_timer_171(& channel->tx_timer, tmp + (unsigned long )jiffies);
  } else {
  }
  ring->__annonCompField97.tx.xmit_more = 0U;
  return;
}
}
static void xgbe_dev_xmit(struct xgbe_channel *channel )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  struct xgbe_packet_data *packet ;
  unsigned int csum ;
  unsigned int tso ;
  unsigned int vlan ;
  unsigned int tso_context ;
  unsigned int vlan_context ;
  unsigned int tx_set_ic ;
  int start_index ;
  int cur_index ;
  int i ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  struct netdev_queue *tmp___1 ;
  bool tmp___2 ;
  {
  pdata = channel->pdata;
  ring = channel->tx_ring;
  packet = & ring->packet_data;
  start_index = (int )ring->cur;
  cur_index = (int )ring->cur;
  csum = packet->attributes & 1U;
  tso = (packet->attributes >> 1) & 1U;
  vlan = (packet->attributes >> 2) & 1U;
  if (tso != 0U && (int )packet->mss != (int )ring->__annonCompField97.tx.cur_mss) {
    tso_context = 1U;
  } else {
    tso_context = 0U;
  }
  if (vlan != 0U && (int )packet->vlan_ctag != (int )ring->__annonCompField97.tx.cur_vlan_ctag) {
    vlan_context = 1U;
  } else {
    vlan_context = 0U;
  }
  ring->coalesce_count = ring->coalesce_count + packet->tx_packets;
  if (pdata->tx_frames == 0U) {
    tx_set_ic = 0U;
  } else
  if (packet->tx_packets > pdata->tx_frames) {
    tx_set_ic = 1U;
  } else
  if (ring->coalesce_count % pdata->tx_frames < packet->tx_packets) {
    tx_set_ic = 1U;
  } else {
    tx_set_ic = 0U;
  }
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )cur_index);
  rdesc = rdata->rdesc;
  if (tso_context != 0U || vlan_context != 0U) {
    if (tso_context != 0U) {
      if ((pdata->msg_enable & 256U) != 0U) {
        descriptor.modname = "amd_xgbe";
        descriptor.function = "xgbe_dev_xmit";
        descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
        descriptor.format = "TSO context descriptor, mss=%u\n";
        descriptor.lineno = 1451U;
        descriptor.flags = 0U;
        tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp != 0L) {
          __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                               "TSO context descriptor, mss=%u\n", (int )packet->mss);
        } else {
        }
      } else {
      }
      rdesc->desc2 = rdesc->desc2 & 4294934528U;
      rdesc->desc2 = rdesc->desc2 | ((__le32 )packet->mss & 32767U);
      rdesc->desc3 = rdesc->desc3 & 3221225471U;
      rdesc->desc3 = rdesc->desc3 | 1073741824U;
      rdesc->desc3 = rdesc->desc3 & 4227858431U;
      rdesc->desc3 = rdesc->desc3 | 67108864U;
      ring->__annonCompField97.tx.cur_mss = packet->mss;
    } else {
    }
    if (vlan_context != 0U) {
      if ((pdata->msg_enable & 256U) != 0U) {
        descriptor___0.modname = "amd_xgbe";
        descriptor___0.function = "xgbe_dev_xmit";
        descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
        descriptor___0.format = "VLAN context descriptor, ctag=%u\n";
        descriptor___0.lineno = 1471U;
        descriptor___0.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                               "VLAN context descriptor, ctag=%u\n", (int )packet->vlan_ctag);
        } else {
        }
      } else {
      }
      rdesc->desc3 = rdesc->desc3 & 3221225471U;
      rdesc->desc3 = rdesc->desc3 | 1073741824U;
      rdesc->desc3 = rdesc->desc3 & 4294901760U;
      rdesc->desc3 = rdesc->desc3 | (__le32 )packet->vlan_ctag;
      rdesc->desc3 = rdesc->desc3 & 4294901759U;
      rdesc->desc3 = rdesc->desc3 | 65536U;
      ring->__annonCompField97.tx.cur_vlan_ctag = packet->vlan_ctag;
    } else {
    }
    cur_index = cur_index + 1;
    rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )cur_index);
    rdesc = rdata->rdesc;
  } else {
  }
  rdesc->desc0 = (unsigned int )rdata->skb_dma;
  rdesc->desc1 = (unsigned int )(rdata->skb_dma >> 32ULL);
  rdesc->desc2 = rdesc->desc2 & 4294950912U;
  rdesc->desc2 = rdesc->desc2 | (rdata->skb_dma_len & 16383U);
  if (vlan != 0U) {
    rdesc->desc2 = rdesc->desc2 & 4294918143U;
    rdesc->desc2 = rdesc->desc2 | 32768U;
  } else {
  }
  if ((packet->attributes & 8U) != 0U) {
    rdesc->desc2 = rdesc->desc2 & 3221225471U;
    rdesc->desc2 = rdesc->desc2 | 1073741824U;
  } else {
  }
  rdesc->desc3 = rdesc->desc3 & 3758096383U;
  rdesc->desc3 = rdesc->desc3 | 536870912U;
  rdesc->desc3 = rdesc->desc3 & 3221225471U;
  rdesc->desc3 = rdesc->desc3;
  if (cur_index != start_index) {
    rdesc->desc3 = rdesc->desc3 & 2147483647U;
    rdesc->desc3 = rdesc->desc3 | 2147483648U;
  } else {
  }
  if (tso != 0U) {
    rdesc->desc3 = rdesc->desc3 & 4294705151U;
    rdesc->desc3 = rdesc->desc3 | 262144U;
    rdesc->desc3 = rdesc->desc3 & 4294705152U;
    rdesc->desc3 = rdesc->desc3 | (packet->tcp_payload_len & 262143U);
    rdesc->desc3 = rdesc->desc3 & 4287102975U;
    rdesc->desc3 = rdesc->desc3 | ((packet->tcp_header_len / 4U & 15U) << 19);
    pdata->ext_stats.tx_tso_packets = pdata->ext_stats.tx_tso_packets + 1ULL;
  } else {
    rdesc->desc3 = rdesc->desc3 & 4093640703U;
    rdesc->desc3 = rdesc->desc3;
    if (csum != 0U) {
      rdesc->desc3 = rdesc->desc3 & 4294770687U;
      rdesc->desc3 = rdesc->desc3 | 196608U;
    } else {
    }
    rdesc->desc3 = rdesc->desc3 & 4294934528U;
    rdesc->desc3 = rdesc->desc3 | (packet->length & 32767U);
  }
  i = (cur_index - start_index) + 1;
  goto ldv_46375;
  ldv_46374:
  cur_index = cur_index + 1;
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )cur_index);
  rdesc = rdata->rdesc;
  rdesc->desc0 = (unsigned int )rdata->skb_dma;
  rdesc->desc1 = (unsigned int )(rdata->skb_dma >> 32ULL);
  rdesc->desc2 = rdesc->desc2 & 4294950912U;
  rdesc->desc2 = rdesc->desc2 | (rdata->skb_dma_len & 16383U);
  rdesc->desc3 = rdesc->desc3 & 2147483647U;
  rdesc->desc3 = rdesc->desc3 | 2147483648U;
  rdesc->desc3 = rdesc->desc3 & 3221225471U;
  rdesc->desc3 = rdesc->desc3;
  if (csum != 0U) {
    rdesc->desc3 = rdesc->desc3 & 4294770687U;
    rdesc->desc3 = rdesc->desc3 | 196608U;
  } else {
  }
  i = i + 1;
  ldv_46375: ;
  if ((unsigned int )i < packet->rdesc_count) {
    goto ldv_46374;
  } else {
  }
  rdesc->desc3 = rdesc->desc3 & 4026531839U;
  rdesc->desc3 = rdesc->desc3 | 268435456U;
  if (tx_set_ic != 0U) {
    rdesc->desc2 = rdesc->desc2 & 2147483647U;
    rdesc->desc2 = rdesc->desc2 | 2147483648U;
  } else {
  }
  rdata->tx.packets = packet->tx_packets;
  rdata->tx.bytes = packet->tx_bytes;
  __asm__ volatile ("": : : "memory");
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & (unsigned int )start_index);
  rdesc = rdata->rdesc;
  rdesc->desc3 = rdesc->desc3 & 2147483647U;
  rdesc->desc3 = rdesc->desc3 | 2147483648U;
  if ((pdata->msg_enable & 256U) != 0U) {
    xgbe_dump_tx_desc(pdata, ring, (unsigned int )start_index, packet->rdesc_count,
                      1U);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  ring->cur = (unsigned int )(cur_index + 1);
  if ((unsigned int )*((unsigned char *)packet->skb + 142UL) == 0U) {
    xgbe_tx_start_xmit(channel, ring);
  } else {
    tmp___1 = netdev_get_tx_queue((struct net_device const *)pdata->netdev, channel->queue_index);
    tmp___2 = netif_xmit_stopped((struct netdev_queue const *)tmp___1);
    if ((int )tmp___2) {
      xgbe_tx_start_xmit(channel, ring);
    } else {
      ring->__annonCompField97.tx.xmit_more = 1U;
    }
  }
  return;
}
}
static int xgbe_dev_read(struct xgbe_channel *channel )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  struct xgbe_packet_data *packet ;
  struct net_device *netdev ;
  unsigned int err ;
  unsigned int etlt ;
  unsigned int l34t ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  pdata = channel->pdata;
  ring = channel->rx_ring;
  packet = & ring->packet_data;
  netdev = pdata->netdev;
  rdata = ring->rdata + (unsigned long )(ring->cur & (ring->rdesc_count - 1U));
  rdesc = rdata->rdesc;
  if ((int )rdesc->desc3 < 0) {
    return (1);
  } else {
  }
  __asm__ volatile ("": : : "memory");
  if ((pdata->msg_enable & 2048U) != 0U) {
    xgbe_dump_rx_desc(pdata, ring, ring->cur);
  } else {
  }
  if ((rdesc->desc3 & 1073741824U) != 0U) {
    xgbe_get_rx_tstamp(packet, rdesc);
    packet->attributes = packet->attributes & 4294967279U;
    packet->attributes = packet->attributes | 16U;
    packet->attributes = packet->attributes & 4294967287U;
    packet->attributes = packet->attributes;
    return (0);
  } else {
  }
  packet->attributes = packet->attributes & 4294967279U;
  packet->attributes = packet->attributes;
  if ((rdesc->desc3 & 134217728U) != 0U) {
    packet->attributes = packet->attributes & 4294967287U;
    packet->attributes = packet->attributes | 8U;
  } else {
  }
  if ((rdesc->desc3 & 536870912U) != 0U) {
    rdata->rx.hdr_len = (unsigned int )((unsigned short )rdesc->desc2) & 1023U;
    if ((unsigned int )rdata->rx.hdr_len != 0U) {
      pdata->ext_stats.rx_split_header_packets = pdata->ext_stats.rx_split_header_packets + 1ULL;
    } else {
    }
  } else {
  }
  if ((rdesc->desc3 & 67108864U) != 0U) {
    packet->attributes = packet->attributes & 4294967231U;
    packet->attributes = packet->attributes | 64U;
    packet->rss_hash = rdesc->desc1;
    l34t = (rdesc->desc3 >> 20) & 15U;
    switch (l34t) {
    case 1U: ;
    case 2U: ;
    case 9U: ;
    case 10U:
    packet->rss_hash_type = 3;
    goto ldv_46393;
    default:
    packet->rss_hash_type = 2;
    }
    ldv_46393: ;
  } else {
  }
  rdata->rx.len = (unsigned int )((unsigned short )rdesc->desc3) & 16383U;
  if ((rdesc->desc3 & 268435456U) == 0U) {
    packet->attributes = packet->attributes & 4294967291U;
    packet->attributes = packet->attributes | 4U;
    return (0);
  } else {
  }
  packet->attributes = packet->attributes & 4294967291U;
  packet->attributes = packet->attributes;
  if ((netdev->features & 17179869184ULL) != 0ULL) {
    packet->attributes = packet->attributes & 4294967294U;
    packet->attributes = packet->attributes | 1U;
  } else {
  }
  err = (rdesc->desc3 >> 15) & 1U;
  etlt = (rdesc->desc3 >> 16) & 15U;
  if ((pdata->msg_enable & 2048U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_dev_read";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "err=%u, etlt=%#x\n";
    descriptor.lineno = 1706U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "err=%u, etlt=%#x\n",
                           err, etlt);
    } else {
    }
  } else {
  }
  if (err == 0U || etlt == 0U) {
    if (etlt == 9U && (netdev->features & 256ULL) != 0ULL) {
      packet->attributes = packet->attributes & 4294967293U;
      packet->attributes = packet->attributes | 2U;
      packet->vlan_ctag = (unsigned short )rdesc->desc0;
      if ((pdata->msg_enable & 2048U) != 0U) {
        descriptor___0.modname = "amd_xgbe";
        descriptor___0.function = "xgbe_dev_read";
        descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
        descriptor___0.format = "vlan-ctag=%#06x\n";
        descriptor___0.lineno = 1718U;
        descriptor___0.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)netdev,
                               "vlan-ctag=%#06x\n", (int )packet->vlan_ctag);
        } else {
        }
      } else {
      }
    } else {
    }
  } else
  if (etlt == 5U || etlt == 6U) {
    packet->attributes = packet->attributes & 4294967294U;
    packet->attributes = packet->attributes;
  } else {
    packet->errors = packet->errors & 4294967287U;
    packet->errors = packet->errors | 8U;
  }
  return (0);
}
}
static int xgbe_is_context_desc(struct xgbe_ring_desc *rdesc )
{
  {
  return ((int )(rdesc->desc3 >> 30) & 1);
}
}
static int xgbe_is_last_desc(struct xgbe_ring_desc *rdesc )
{
  {
  return ((int )(rdesc->desc3 >> 28) & 1);
}
}
static int xgbe_enable_int(struct xgbe_channel *channel , enum xgbe_int int_id )
{
  unsigned int dma_ch_ier ;
  {
  dma_ch_ier = ioread32(channel->dma_regs + 56UL);
  switch ((unsigned int )int_id) {
  case 0U:
  dma_ch_ier = dma_ch_ier & 4294967294U;
  dma_ch_ier = dma_ch_ier | 1U;
  goto ldv_46410;
  case 1U:
  dma_ch_ier = dma_ch_ier & 4294967293U;
  dma_ch_ier = dma_ch_ier | 2U;
  goto ldv_46410;
  case 2U:
  dma_ch_ier = dma_ch_ier & 4294967291U;
  dma_ch_ier = dma_ch_ier | 4U;
  goto ldv_46410;
  case 3U:
  dma_ch_ier = dma_ch_ier & 4294967231U;
  dma_ch_ier = dma_ch_ier | 64U;
  goto ldv_46410;
  case 4U:
  dma_ch_ier = dma_ch_ier & 4294967167U;
  dma_ch_ier = dma_ch_ier | 128U;
  goto ldv_46410;
  case 5U:
  dma_ch_ier = dma_ch_ier & 4294967039U;
  dma_ch_ier = dma_ch_ier | 256U;
  goto ldv_46410;
  case 6U:
  dma_ch_ier = dma_ch_ier & 4294967294U;
  dma_ch_ier = dma_ch_ier | 1U;
  dma_ch_ier = dma_ch_ier & 4294967231U;
  dma_ch_ier = dma_ch_ier | 64U;
  goto ldv_46410;
  case 7U:
  dma_ch_ier = dma_ch_ier & 4294963199U;
  dma_ch_ier = dma_ch_ier | 4096U;
  goto ldv_46410;
  case 8U:
  dma_ch_ier = channel->saved_ier | dma_ch_ier;
  goto ldv_46410;
  default: ;
  return (-1);
  }
  ldv_46410:
  iowrite32(dma_ch_ier, channel->dma_regs + 56UL);
  return (0);
}
}
static int xgbe_disable_int(struct xgbe_channel *channel , enum xgbe_int int_id )
{
  unsigned int dma_ch_ier ;
  {
  dma_ch_ier = ioread32(channel->dma_regs + 56UL);
  switch ((unsigned int )int_id) {
  case 0U:
  dma_ch_ier = dma_ch_ier & 4294967294U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 1U:
  dma_ch_ier = dma_ch_ier & 4294967293U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 2U:
  dma_ch_ier = dma_ch_ier & 4294967291U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 3U:
  dma_ch_ier = dma_ch_ier & 4294967231U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 4U:
  dma_ch_ier = dma_ch_ier & 4294967167U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 5U:
  dma_ch_ier = dma_ch_ier & 4294967039U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 6U:
  dma_ch_ier = dma_ch_ier & 4294967294U;
  dma_ch_ier = dma_ch_ier;
  dma_ch_ier = dma_ch_ier & 4294967231U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 7U:
  dma_ch_ier = dma_ch_ier & 4294963199U;
  dma_ch_ier = dma_ch_ier;
  goto ldv_46426;
  case 8U:
  channel->saved_ier = dma_ch_ier & 12743U;
  dma_ch_ier = dma_ch_ier & 4294954552U;
  goto ldv_46426;
  default: ;
  return (-1);
  }
  ldv_46426:
  iowrite32(dma_ch_ier, channel->dma_regs + 56UL);
  return (0);
}
}
static int xgbe_exit(struct xgbe_prv_data *pdata )
{
  unsigned int count ;
  u32 reg_val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  count = 2000U;
  tmp = ioread32(pdata->xgmac_regs + 12288UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, pdata->xgmac_regs + 12288UL);
  usleep_range(10UL, 15UL);
  goto ldv_46442;
  ldv_46441:
  usleep_range(500UL, 600UL);
  ldv_46442:
  tmp___0 = count;
  count = count - 1U;
  if (tmp___0 != 0U) {
    tmp___1 = ioread32(pdata->xgmac_regs + 12288UL);
    if ((int )tmp___1 & 1) {
      goto ldv_46441;
    } else {
      goto ldv_46443;
    }
  } else {
  }
  ldv_46443: ;
  if (count == 0U) {
    return (-16);
  } else {
  }
  return (0);
}
}
static int xgbe_flush_tx_queues(struct xgbe_prv_data *pdata )
{
  unsigned int i ;
  unsigned int count ;
  u32 reg_val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((pdata->hw_feat.version & 255U) <= 32U) {
    return (0);
  } else {
  }
  i = 0U;
  goto ldv_46451;
  ldv_46450:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_46451: ;
  if (pdata->tx_q_count > i) {
    goto ldv_46450;
  } else {
  }
  i = 0U;
  goto ldv_46457;
  ldv_46456:
  count = 2000U;
  goto ldv_46454;
  ldv_46453:
  usleep_range(500UL, 600UL);
  ldv_46454:
  tmp___0 = count;
  count = count - 1U;
  if (tmp___0 != 0U) {
    tmp___1 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
    if ((int )tmp___1 & 1) {
      goto ldv_46453;
    } else {
      goto ldv_46455;
    }
  } else {
  }
  ldv_46455: ;
  if (count == 0U) {
    return (-16);
  } else {
  }
  i = i + 1U;
  ldv_46457: ;
  if (pdata->tx_q_count > i) {
    goto ldv_46456;
  } else {
  }
  return (0);
}
}
static void xgbe_config_dma_bus(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 12292UL);
  reg_val = tmp;
  reg_val = reg_val & 4294965247U;
  reg_val = reg_val | 2048U;
  iowrite32(reg_val, pdata->xgmac_regs + 12292UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 12292UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967294U;
  reg_val___0 = reg_val___0 | 1U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 12292UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 12292UL);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294967167U;
  reg_val___1 = reg_val___1 | 128U;
  iowrite32(reg_val___1, pdata->xgmac_regs + 12292UL);
  return;
}
}
static void xgbe_config_dma_cache(struct xgbe_prv_data *pdata )
{
  unsigned int arcache ;
  unsigned int awcache ;
  {
  arcache = 0U;
  arcache = arcache & 4294967280U;
  arcache = (pdata->arcache & 15U) | arcache;
  arcache = arcache & 4294967247U;
  arcache = ((pdata->axdomain & 3U) << 4) | arcache;
  arcache = arcache & 4294963455U;
  arcache = ((pdata->arcache & 15U) << 8) | arcache;
  arcache = arcache & 4294955007U;
  arcache = ((pdata->axdomain & 3U) << 12) | arcache;
  arcache = arcache & 4293984255U;
  arcache = ((pdata->arcache & 15U) << 16) | arcache;
  arcache = arcache & 4291821567U;
  arcache = ((pdata->axdomain & 3U) << 20) | arcache;
  iowrite32(arcache, pdata->xgmac_regs + 12304UL);
  awcache = 0U;
  awcache = awcache & 4294967280U;
  awcache = (pdata->awcache & 15U) | awcache;
  awcache = awcache & 4294967247U;
  awcache = ((pdata->axdomain & 3U) << 4) | awcache;
  awcache = awcache & 4294963455U;
  awcache = ((pdata->awcache & 15U) << 8) | awcache;
  awcache = awcache & 4294955007U;
  awcache = ((pdata->axdomain & 3U) << 12) | awcache;
  awcache = awcache & 4293984255U;
  awcache = ((pdata->awcache & 15U) << 16) | awcache;
  awcache = awcache & 4291821567U;
  awcache = ((pdata->axdomain & 3U) << 20) | awcache;
  awcache = awcache & 4043309055U;
  awcache = ((pdata->awcache & 15U) << 24) | awcache;
  awcache = awcache & 3489660927U;
  awcache = ((pdata->axdomain & 3U) << 28) | awcache;
  iowrite32(awcache, pdata->xgmac_regs + 12312UL);
  return;
}
}
static void xgbe_config_mtl_mode(struct xgbe_prv_data *pdata )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  u32 reg_val___2 ;
  unsigned int tmp___2 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 4096UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967199U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 4096UL);
  i = 0U;
  goto ldv_46478;
  ldv_46477:
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967292U;
  reg_val___0 = reg_val___0 | 2U;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4368UL));
  tmp___1 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4376UL));
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4292870144U;
  reg_val___1 = reg_val___1 | 1U;
  iowrite32(reg_val___1, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4376UL));
  i = i + 1U;
  ldv_46478: ;
  if (pdata->hw_feat.tc_cnt > i) {
    goto ldv_46477;
  } else {
  }
  tmp___2 = ioread32(pdata->xgmac_regs + 4096UL);
  reg_val___2 = tmp___2;
  reg_val___2 = reg_val___2 & 4294967291U;
  reg_val___2 = reg_val___2;
  iowrite32(reg_val___2, pdata->xgmac_regs + 4096UL);
  return;
}
}
static unsigned int xgbe_calculate_per_queue_fifo(unsigned int fifo_size , unsigned int queue_count )
{
  unsigned int q_fifo_size ;
  enum xgbe_mtl_fifo_size p_fifo ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  {
  q_fifo_size = 0U;
  p_fifo = 0;
  switch (fifo_size) {
  case 0U:
  q_fifo_size = 128U;
  goto ldv_46488;
  case 1U:
  q_fifo_size = 256U;
  goto ldv_46488;
  case 2U:
  q_fifo_size = 512U;
  goto ldv_46488;
  case 3U:
  q_fifo_size = 1024U;
  goto ldv_46488;
  case 4U:
  q_fifo_size = 2048U;
  goto ldv_46488;
  case 5U:
  q_fifo_size = 4096U;
  goto ldv_46488;
  case 6U:
  q_fifo_size = 8192U;
  goto ldv_46488;
  case 7U:
  q_fifo_size = 16384U;
  goto ldv_46488;
  case 8U:
  q_fifo_size = 32768U;
  goto ldv_46488;
  case 9U:
  q_fifo_size = 65536U;
  goto ldv_46488;
  case 10U:
  q_fifo_size = 131072U;
  goto ldv_46488;
  case 11U:
  q_fifo_size = 262144U;
  goto ldv_46488;
  }
  ldv_46488:
  __min1 = 81920U;
  __min2 = q_fifo_size;
  q_fifo_size = __min1 < __min2 ? __min1 : __min2;
  q_fifo_size = q_fifo_size / queue_count;
  if (q_fifo_size > 262143U) {
    p_fifo = 1023;
  } else
  if (q_fifo_size > 131071U) {
    p_fifo = 511;
  } else
  if (q_fifo_size > 65535U) {
    p_fifo = 255;
  } else
  if (q_fifo_size > 32767U) {
    p_fifo = 127;
  } else
  if (q_fifo_size > 16383U) {
    p_fifo = 63;
  } else
  if (q_fifo_size > 8191U) {
    p_fifo = 31;
  } else
  if (q_fifo_size > 4095U) {
    p_fifo = 15;
  } else
  if (q_fifo_size > 2047U) {
    p_fifo = 7;
  } else
  if (q_fifo_size > 1023U) {
    p_fifo = 3;
  } else
  if (q_fifo_size > 511U) {
    p_fifo = 1;
  } else
  if (q_fifo_size > 255U) {
    p_fifo = 0;
  } else {
  }
  return ((unsigned int )p_fifo);
}
}
static void xgbe_config_tx_fifo_size(struct xgbe_prv_data *pdata )
{
  enum xgbe_mtl_fifo_size fifo_size ;
  unsigned int i ;
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  {
  tmp = xgbe_calculate_per_queue_fifo(pdata->hw_feat.tx_fifo_size, pdata->tx_q_count);
  fifo_size = (enum xgbe_mtl_fifo_size )tmp;
  i = 0U;
  goto ldv_46510;
  ldv_46509:
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val = tmp___0;
  reg_val = reg_val & 4227923967U;
  reg_val = (((unsigned int )fifo_size & 1023U) << 16) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_46510: ;
  if (pdata->tx_q_count > i) {
    goto ldv_46509;
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    netdev_info((struct net_device const *)pdata->netdev, "%d Tx hardware queues, %d byte fifo per queue\n",
                pdata->tx_q_count, ((unsigned int )fifo_size + 1U) * 256U);
  } else {
  }
  return;
}
}
static void xgbe_config_rx_fifo_size(struct xgbe_prv_data *pdata )
{
  enum xgbe_mtl_fifo_size fifo_size ;
  unsigned int i ;
  unsigned int tmp ;
  u32 reg_val ;
  unsigned int tmp___0 ;
  {
  tmp = xgbe_calculate_per_queue_fifo(pdata->hw_feat.rx_fifo_size, pdata->rx_q_count);
  fifo_size = (enum xgbe_mtl_fifo_size )tmp;
  i = 0U;
  goto ldv_46519;
  ldv_46518:
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  reg_val = tmp___0;
  reg_val = reg_val & 4261478399U;
  reg_val = (((unsigned int )fifo_size & 511U) << 16) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4416UL));
  i = i + 1U;
  ldv_46519: ;
  if (pdata->rx_q_count > i) {
    goto ldv_46518;
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    netdev_info((struct net_device const *)pdata->netdev, "%d Rx hardware queues, %d byte fifo per queue\n",
                pdata->rx_q_count, ((unsigned int )fifo_size + 1U) * 256U);
  } else {
  }
  return;
}
}
static void xgbe_config_queue_mapping(struct xgbe_prv_data *pdata )
{
  unsigned int qptc ;
  unsigned int qptc_extra ;
  unsigned int queue ;
  unsigned int prio_queues ;
  unsigned int ppq ;
  unsigned int ppq_extra ;
  unsigned int prio ;
  unsigned int mask ;
  unsigned int i ;
  unsigned int j ;
  unsigned int reg ;
  unsigned int reg_val ;
  struct _ddebug descriptor ;
  long tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  u32 reg_val___1 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  struct _ddebug descriptor___1 ;
  long tmp___5 ;
  unsigned int tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int tmp___9 ;
  unsigned int tmp___10 ;
  {
  qptc = pdata->tx_q_count / pdata->hw_feat.tc_cnt;
  qptc_extra = pdata->tx_q_count % pdata->hw_feat.tc_cnt;
  i = 0U;
  queue = 0U;
  goto ldv_46545;
  ldv_46544:
  j = 0U;
  goto ldv_46540;
  ldv_46539: ;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_config_queue_mapping";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor.format = "TXq%u mapped to TC%u\n";
    descriptor.lineno = 2064U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "TXq%u mapped to TC%u\n", queue, i);
    } else {
    }
  } else {
  }
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(queue * 128U) + 4352UL));
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294965503U;
  reg_val___0 = ((i & 7U) << 8) | reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(queue * 128U) + 4352UL));
  tmp___1 = queue;
  queue = queue + 1U;
  pdata->q2tc_map[tmp___1] = i;
  j = j + 1U;
  ldv_46540: ;
  if (j < qptc) {
    goto ldv_46539;
  } else {
  }
  if (i < qptc_extra) {
    if ((int )pdata->msg_enable & 1) {
      descriptor___0.modname = "amd_xgbe";
      descriptor___0.function = "xgbe_config_queue_mapping";
      descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
      descriptor___0.format = "TXq%u mapped to TC%u\n";
      descriptor___0.lineno = 2072U;
      descriptor___0.flags = 0U;
      tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                             "TXq%u mapped to TC%u\n", queue, i);
      } else {
      }
    } else {
    }
    tmp___3 = ioread32(pdata->xgmac_regs + ((unsigned long )(queue * 128U) + 4352UL));
    reg_val___1 = tmp___3;
    reg_val___1 = reg_val___1 & 4294965503U;
    reg_val___1 = ((i & 7U) << 8) | reg_val___1;
    iowrite32(reg_val___1, pdata->xgmac_regs + ((unsigned long )(queue * 128U) + 4352UL));
    tmp___4 = queue;
    queue = queue + 1U;
    pdata->q2tc_map[tmp___4] = i;
  } else {
  }
  i = i + 1U;
  ldv_46545: ;
  if (pdata->hw_feat.tc_cnt > i) {
    goto ldv_46544;
  } else {
  }
  __min1 = 8U;
  __min2 = pdata->rx_q_count;
  prio_queues = __min1 < __min2 ? __min1 : __min2;
  ppq = 8U / prio_queues;
  ppq_extra = 8U % prio_queues;
  reg = 168U;
  reg_val = 0U;
  i = 0U;
  prio = 0U;
  goto ldv_46555;
  ldv_46556:
  mask = 0U;
  j = 0U;
  goto ldv_46552;
  ldv_46551: ;
  if ((int )pdata->msg_enable & 1) {
    descriptor___1.modname = "amd_xgbe";
    descriptor___1.function = "xgbe_config_queue_mapping";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
    descriptor___1.format = "PRIO%u mapped to RXq%u\n";
    descriptor___1.lineno = 2091U;
    descriptor___1.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)pdata->netdev,
                           "PRIO%u mapped to RXq%u\n", prio, i);
    } else {
    }
  } else {
  }
  mask = (unsigned int )(1 << (int )prio) | mask;
  tmp___6 = prio;
  prio = prio + 1U;
  pdata->prio2q_map[tmp___6] = i;
  j = j + 1U;
  ldv_46552: ;
  if (j < ppq) {
    goto ldv_46551;
  } else {
  }
  if (i < ppq_extra) {
    if ((int )pdata->msg_enable & 1) {
      descriptor___2.modname = "amd_xgbe";
      descriptor___2.function = "xgbe_config_queue_mapping";
      descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dev.c";
      descriptor___2.format = "PRIO%u mapped to RXq%u\n";
      descriptor___2.lineno = 2098U;
      descriptor___2.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)pdata->netdev,
                             "PRIO%u mapped to RXq%u\n", prio, i);
      } else {
      }
    } else {
    }
    mask = (unsigned int )(1 << (int )prio) | mask;
    tmp___8 = prio;
    prio = prio + 1U;
    pdata->prio2q_map[tmp___8] = i;
  } else {
  }
  tmp___9 = i;
  i = i + 1U;
  reg_val = (mask << (int )((tmp___9 & 3U) << 3)) | reg_val;
  if ((i & 3U) != 0U && i != prio_queues) {
    goto ldv_46555;
  } else {
  }
  iowrite32(reg_val, pdata->xgmac_regs + (unsigned long )reg);
  reg = reg + 4U;
  reg_val = 0U;
  ldv_46555: ;
  if (i < prio_queues) {
    goto ldv_46556;
  } else {
  }
  reg = 4144U;
  reg_val = 0U;
  i = 0U;
  goto ldv_46558;
  ldv_46559:
  tmp___10 = i;
  i = i + 1U;
  reg_val = (unsigned int )(128 << (int )((tmp___10 & 3U) << 3)) | reg_val;
  if ((i & 3U) != 0U && pdata->rx_q_count != i) {
    goto ldv_46558;
  } else {
  }
  iowrite32(reg_val, pdata->xgmac_regs + (unsigned long )reg);
  reg = reg + 4U;
  reg_val = 0U;
  ldv_46558: ;
  if (pdata->rx_q_count > i) {
    goto ldv_46559;
  } else {
  }
  return;
}
}
static void xgbe_config_flow_control_threshold(struct xgbe_prv_data *pdata )
{
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  i = 0U;
  goto ldv_46568;
  ldv_46567:
  tmp = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4432UL));
  reg_val = tmp;
  reg_val = reg_val & 4294967169U;
  reg_val = reg_val | 4U;
  iowrite32(reg_val, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4432UL));
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4432UL));
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4286709759U;
  reg_val___0 = reg_val___0 | 524288U;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4432UL));
  i = i + 1U;
  ldv_46568: ;
  if (pdata->rx_q_count > i) {
    goto ldv_46567;
  } else {
  }
  return;
}
}
static void xgbe_config_mac_address(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  {
  xgbe_set_mac_address___0(pdata, (pdata->netdev)->dev_addr);
  if (pdata->hw_feat.hash_table_size != 0U) {
    tmp = ioread32(pdata->xgmac_regs + 8UL);
    reg_val = tmp;
    reg_val = reg_val & 4294966271U;
    reg_val = reg_val | 1024U;
    iowrite32(reg_val, pdata->xgmac_regs + 8UL);
    tmp___0 = ioread32(pdata->xgmac_regs + 8UL);
    reg_val___0 = tmp___0;
    reg_val___0 = reg_val___0 & 4294967293U;
    reg_val___0 = reg_val___0 | 2U;
    iowrite32(reg_val___0, pdata->xgmac_regs + 8UL);
    tmp___1 = ioread32(pdata->xgmac_regs + 8UL);
    reg_val___1 = tmp___1;
    reg_val___1 = reg_val___1 & 4294967291U;
    reg_val___1 = reg_val___1 | 4U;
    iowrite32(reg_val___1, pdata->xgmac_regs + 8UL);
  } else {
  }
  return;
}
}
static void xgbe_config_jumbo_enable(struct xgbe_prv_data *pdata )
{
  unsigned int val ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  val = (pdata->netdev)->mtu > 1500U;
  tmp = ioread32(pdata->xgmac_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967039U;
  reg_val = ((val & 1U) << 8) | reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 4UL);
  return;
}
}
static void xgbe_config_mac_speed(struct xgbe_prv_data *pdata )
{
  {
  switch (pdata->phy_speed) {
  case 10000:
  xgbe_set_xgmii_speed(pdata);
  goto ldv_46585;
  case 2500:
  xgbe_set_gmii_2500_speed(pdata);
  goto ldv_46585;
  case 1000:
  xgbe_set_gmii_speed(pdata);
  goto ldv_46585;
  }
  ldv_46585: ;
  return;
}
}
static void xgbe_config_checksum_offload(struct xgbe_prv_data *pdata )
{
  {
  if (((pdata->netdev)->features & 17179869184ULL) != 0ULL) {
    xgbe_enable_rx_csum(pdata);
  } else {
    xgbe_disable_rx_csum(pdata);
  }
  return;
}
}
static void xgbe_config_vlan_support(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 96UL);
  reg_val = tmp;
  reg_val = reg_val & 4294443007U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 96UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 96UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4293918719U;
  reg_val___0 = reg_val___0 | 1048576U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 96UL);
  xgbe_update_vlan_hash_table(pdata);
  if (((pdata->netdev)->features & 512ULL) != 0ULL) {
    xgbe_enable_rx_vlan_filtering(pdata);
  } else {
    xgbe_disable_rx_vlan_filtering(pdata);
  }
  if (((pdata->netdev)->features & 256ULL) != 0ULL) {
    xgbe_enable_rx_vlan_stripping(pdata);
  } else {
    xgbe_disable_rx_vlan_stripping(pdata);
  }
  return;
}
}
static u64 xgbe_mmc_read(struct xgbe_prv_data *pdata , unsigned int reg_lo )
{
  bool read_hi ;
  u64 val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  switch (reg_lo) {
  case 2068U: ;
  case 2180U: ;
  case 2312U: ;
  case 2320U:
  read_hi = 1;
  goto ldv_46606;
  default:
  read_hi = 0;
  }
  ldv_46606:
  tmp = ioread32(pdata->xgmac_regs + (unsigned long )reg_lo);
  val = (u64 )tmp;
  if ((int )read_hi) {
    tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )reg_lo + 4UL));
    val = ((unsigned long long )tmp___0 << 32) | val;
  } else {
  }
  return (val);
}
}
static void xgbe_tx_mmc_int(struct xgbe_prv_data *pdata )
{
  struct xgbe_mmc_stats *stats ;
  unsigned int mmc_isr ;
  unsigned int tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  u64 tmp___9 ;
  u64 tmp___10 ;
  u64 tmp___11 ;
  u64 tmp___12 ;
  u64 tmp___13 ;
  u64 tmp___14 ;
  u64 tmp___15 ;
  u64 tmp___16 ;
  u64 tmp___17 ;
  {
  stats = & pdata->mmc_stats;
  tmp = ioread32(pdata->xgmac_regs + 2056UL);
  mmc_isr = tmp;
  if ((int )mmc_isr & 1) {
    tmp___0 = xgbe_mmc_read(pdata, 2068U);
    stats->txoctetcount_gb = stats->txoctetcount_gb + tmp___0;
  } else {
  }
  if ((mmc_isr & 2U) != 0U) {
    tmp___1 = xgbe_mmc_read(pdata, 2076U);
    stats->txframecount_gb = stats->txframecount_gb + tmp___1;
  } else {
  }
  if ((mmc_isr & 4U) != 0U) {
    tmp___2 = xgbe_mmc_read(pdata, 2084U);
    stats->txbroadcastframes_g = stats->txbroadcastframes_g + tmp___2;
  } else {
  }
  if ((mmc_isr & 8U) != 0U) {
    tmp___3 = xgbe_mmc_read(pdata, 2092U);
    stats->txmulticastframes_g = stats->txmulticastframes_g + tmp___3;
  } else {
  }
  if ((mmc_isr & 16U) != 0U) {
    tmp___4 = xgbe_mmc_read(pdata, 2100U);
    stats->tx64octets_gb = stats->tx64octets_gb + tmp___4;
  } else {
  }
  if ((mmc_isr & 32U) != 0U) {
    tmp___5 = xgbe_mmc_read(pdata, 2108U);
    stats->tx65to127octets_gb = stats->tx65to127octets_gb + tmp___5;
  } else {
  }
  if ((mmc_isr & 64U) != 0U) {
    tmp___6 = xgbe_mmc_read(pdata, 2116U);
    stats->tx128to255octets_gb = stats->tx128to255octets_gb + tmp___6;
  } else {
  }
  if ((mmc_isr & 128U) != 0U) {
    tmp___7 = xgbe_mmc_read(pdata, 2124U);
    stats->tx256to511octets_gb = stats->tx256to511octets_gb + tmp___7;
  } else {
  }
  if ((mmc_isr & 256U) != 0U) {
    tmp___8 = xgbe_mmc_read(pdata, 2132U);
    stats->tx512to1023octets_gb = stats->tx512to1023octets_gb + tmp___8;
  } else {
  }
  if ((mmc_isr & 512U) != 0U) {
    tmp___9 = xgbe_mmc_read(pdata, 2140U);
    stats->tx1024tomaxoctets_gb = stats->tx1024tomaxoctets_gb + tmp___9;
  } else {
  }
  if ((mmc_isr & 1024U) != 0U) {
    tmp___10 = xgbe_mmc_read(pdata, 2148U);
    stats->txunicastframes_gb = stats->txunicastframes_gb + tmp___10;
  } else {
  }
  if ((mmc_isr & 2048U) != 0U) {
    tmp___11 = xgbe_mmc_read(pdata, 2156U);
    stats->txmulticastframes_gb = stats->txmulticastframes_gb + tmp___11;
  } else {
  }
  if ((mmc_isr & 4096U) != 0U) {
    tmp___12 = xgbe_mmc_read(pdata, 2164U);
    stats->txbroadcastframes_g = stats->txbroadcastframes_g + tmp___12;
  } else {
  }
  if ((mmc_isr & 8192U) != 0U) {
    tmp___13 = xgbe_mmc_read(pdata, 2172U);
    stats->txunderflowerror = stats->txunderflowerror + tmp___13;
  } else {
  }
  if ((mmc_isr & 16384U) != 0U) {
    tmp___14 = xgbe_mmc_read(pdata, 2180U);
    stats->txoctetcount_g = stats->txoctetcount_g + tmp___14;
  } else {
  }
  if ((mmc_isr & 32768U) != 0U) {
    tmp___15 = xgbe_mmc_read(pdata, 2188U);
    stats->txframecount_g = stats->txframecount_g + tmp___15;
  } else {
  }
  if ((mmc_isr & 65536U) != 0U) {
    tmp___16 = xgbe_mmc_read(pdata, 2196U);
    stats->txpauseframes = stats->txpauseframes + tmp___16;
  } else {
  }
  if ((mmc_isr & 131072U) != 0U) {
    tmp___17 = xgbe_mmc_read(pdata, 2204U);
    stats->txvlanframes_g = stats->txvlanframes_g + tmp___17;
  } else {
  }
  return;
}
}
static void xgbe_rx_mmc_int(struct xgbe_prv_data *pdata )
{
  struct xgbe_mmc_stats *stats ;
  unsigned int mmc_isr ;
  unsigned int tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  u64 tmp___9 ;
  u64 tmp___10 ;
  u64 tmp___11 ;
  u64 tmp___12 ;
  u64 tmp___13 ;
  u64 tmp___14 ;
  u64 tmp___15 ;
  u64 tmp___16 ;
  u64 tmp___17 ;
  u64 tmp___18 ;
  u64 tmp___19 ;
  u64 tmp___20 ;
  u64 tmp___21 ;
  u64 tmp___22 ;
  {
  stats = & pdata->mmc_stats;
  tmp = ioread32(pdata->xgmac_regs + 2052UL);
  mmc_isr = tmp;
  if ((int )mmc_isr & 1) {
    tmp___0 = xgbe_mmc_read(pdata, 2304U);
    stats->rxframecount_gb = stats->rxframecount_gb + tmp___0;
  } else {
  }
  if ((mmc_isr & 2U) != 0U) {
    tmp___1 = xgbe_mmc_read(pdata, 2312U);
    stats->rxoctetcount_gb = stats->rxoctetcount_gb + tmp___1;
  } else {
  }
  if ((mmc_isr & 4U) != 0U) {
    tmp___2 = xgbe_mmc_read(pdata, 2320U);
    stats->rxoctetcount_g = stats->rxoctetcount_g + tmp___2;
  } else {
  }
  if ((mmc_isr & 8U) != 0U) {
    tmp___3 = xgbe_mmc_read(pdata, 2328U);
    stats->rxbroadcastframes_g = stats->rxbroadcastframes_g + tmp___3;
  } else {
  }
  if ((mmc_isr & 16U) != 0U) {
    tmp___4 = xgbe_mmc_read(pdata, 2336U);
    stats->rxmulticastframes_g = stats->rxmulticastframes_g + tmp___4;
  } else {
  }
  if ((mmc_isr & 32U) != 0U) {
    tmp___5 = xgbe_mmc_read(pdata, 2344U);
    stats->rxcrcerror = stats->rxcrcerror + tmp___5;
  } else {
  }
  if ((mmc_isr & 64U) != 0U) {
    tmp___6 = xgbe_mmc_read(pdata, 2352U);
    stats->rxrunterror = stats->rxrunterror + tmp___6;
  } else {
  }
  if ((mmc_isr & 128U) != 0U) {
    tmp___7 = xgbe_mmc_read(pdata, 2356U);
    stats->rxjabbererror = stats->rxjabbererror + tmp___7;
  } else {
  }
  if ((mmc_isr & 256U) != 0U) {
    tmp___8 = xgbe_mmc_read(pdata, 2360U);
    stats->rxundersize_g = stats->rxundersize_g + tmp___8;
  } else {
  }
  if ((mmc_isr & 512U) != 0U) {
    tmp___9 = xgbe_mmc_read(pdata, 2364U);
    stats->rxoversize_g = stats->rxoversize_g + tmp___9;
  } else {
  }
  if ((mmc_isr & 1024U) != 0U) {
    tmp___10 = xgbe_mmc_read(pdata, 2368U);
    stats->rx64octets_gb = stats->rx64octets_gb + tmp___10;
  } else {
  }
  if ((mmc_isr & 2048U) != 0U) {
    tmp___11 = xgbe_mmc_read(pdata, 2376U);
    stats->rx65to127octets_gb = stats->rx65to127octets_gb + tmp___11;
  } else {
  }
  if ((mmc_isr & 4096U) != 0U) {
    tmp___12 = xgbe_mmc_read(pdata, 2384U);
    stats->rx128to255octets_gb = stats->rx128to255octets_gb + tmp___12;
  } else {
  }
  if ((mmc_isr & 8192U) != 0U) {
    tmp___13 = xgbe_mmc_read(pdata, 2392U);
    stats->rx256to511octets_gb = stats->rx256to511octets_gb + tmp___13;
  } else {
  }
  if ((mmc_isr & 16384U) != 0U) {
    tmp___14 = xgbe_mmc_read(pdata, 2400U);
    stats->rx512to1023octets_gb = stats->rx512to1023octets_gb + tmp___14;
  } else {
  }
  if ((mmc_isr & 32768U) != 0U) {
    tmp___15 = xgbe_mmc_read(pdata, 2408U);
    stats->rx1024tomaxoctets_gb = stats->rx1024tomaxoctets_gb + tmp___15;
  } else {
  }
  if ((mmc_isr & 65536U) != 0U) {
    tmp___16 = xgbe_mmc_read(pdata, 2416U);
    stats->rxunicastframes_g = stats->rxunicastframes_g + tmp___16;
  } else {
  }
  if ((mmc_isr & 131072U) != 0U) {
    tmp___17 = xgbe_mmc_read(pdata, 2424U);
    stats->rxlengtherror = stats->rxlengtherror + tmp___17;
  } else {
  }
  if ((mmc_isr & 262144U) != 0U) {
    tmp___18 = xgbe_mmc_read(pdata, 2432U);
    stats->rxoutofrangetype = stats->rxoutofrangetype + tmp___18;
  } else {
  }
  if ((mmc_isr & 524288U) != 0U) {
    tmp___19 = xgbe_mmc_read(pdata, 2440U);
    stats->rxpauseframes = stats->rxpauseframes + tmp___19;
  } else {
  }
  if ((mmc_isr & 1048576U) != 0U) {
    tmp___20 = xgbe_mmc_read(pdata, 2448U);
    stats->rxfifooverflow = stats->rxfifooverflow + tmp___20;
  } else {
  }
  if ((mmc_isr & 2097152U) != 0U) {
    tmp___21 = xgbe_mmc_read(pdata, 2456U);
    stats->rxvlanframes_gb = stats->rxvlanframes_gb + tmp___21;
  } else {
  }
  if ((mmc_isr & 4194304U) != 0U) {
    tmp___22 = xgbe_mmc_read(pdata, 2464U);
    stats->rxwatchdogerror = stats->rxwatchdogerror + tmp___22;
  } else {
  }
  return;
}
}
static void xgbe_read_mmc_stats(struct xgbe_prv_data *pdata )
{
  struct xgbe_mmc_stats *stats ;
  u32 reg_val ;
  unsigned int tmp ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  u64 tmp___3 ;
  u64 tmp___4 ;
  u64 tmp___5 ;
  u64 tmp___6 ;
  u64 tmp___7 ;
  u64 tmp___8 ;
  u64 tmp___9 ;
  u64 tmp___10 ;
  u64 tmp___11 ;
  u64 tmp___12 ;
  u64 tmp___13 ;
  u64 tmp___14 ;
  u64 tmp___15 ;
  u64 tmp___16 ;
  u64 tmp___17 ;
  u64 tmp___18 ;
  u64 tmp___19 ;
  u64 tmp___20 ;
  u64 tmp___21 ;
  u64 tmp___22 ;
  u64 tmp___23 ;
  u64 tmp___24 ;
  u64 tmp___25 ;
  u64 tmp___26 ;
  u64 tmp___27 ;
  u64 tmp___28 ;
  u64 tmp___29 ;
  u64 tmp___30 ;
  u64 tmp___31 ;
  u64 tmp___32 ;
  u64 tmp___33 ;
  u64 tmp___34 ;
  u64 tmp___35 ;
  u64 tmp___36 ;
  u64 tmp___37 ;
  u64 tmp___38 ;
  u64 tmp___39 ;
  u64 tmp___40 ;
  u32 reg_val___0 ;
  unsigned int tmp___41 ;
  {
  stats = & pdata->mmc_stats;
  tmp = ioread32(pdata->xgmac_regs + 2048UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967287U;
  reg_val = reg_val | 8U;
  iowrite32(reg_val, pdata->xgmac_regs + 2048UL);
  tmp___0 = xgbe_mmc_read(pdata, 2068U);
  stats->txoctetcount_gb = stats->txoctetcount_gb + tmp___0;
  tmp___1 = xgbe_mmc_read(pdata, 2076U);
  stats->txframecount_gb = stats->txframecount_gb + tmp___1;
  tmp___2 = xgbe_mmc_read(pdata, 2084U);
  stats->txbroadcastframes_g = stats->txbroadcastframes_g + tmp___2;
  tmp___3 = xgbe_mmc_read(pdata, 2092U);
  stats->txmulticastframes_g = stats->txmulticastframes_g + tmp___3;
  tmp___4 = xgbe_mmc_read(pdata, 2100U);
  stats->tx64octets_gb = stats->tx64octets_gb + tmp___4;
  tmp___5 = xgbe_mmc_read(pdata, 2108U);
  stats->tx65to127octets_gb = stats->tx65to127octets_gb + tmp___5;
  tmp___6 = xgbe_mmc_read(pdata, 2116U);
  stats->tx128to255octets_gb = stats->tx128to255octets_gb + tmp___6;
  tmp___7 = xgbe_mmc_read(pdata, 2124U);
  stats->tx256to511octets_gb = stats->tx256to511octets_gb + tmp___7;
  tmp___8 = xgbe_mmc_read(pdata, 2132U);
  stats->tx512to1023octets_gb = stats->tx512to1023octets_gb + tmp___8;
  tmp___9 = xgbe_mmc_read(pdata, 2140U);
  stats->tx1024tomaxoctets_gb = stats->tx1024tomaxoctets_gb + tmp___9;
  tmp___10 = xgbe_mmc_read(pdata, 2148U);
  stats->txunicastframes_gb = stats->txunicastframes_gb + tmp___10;
  tmp___11 = xgbe_mmc_read(pdata, 2156U);
  stats->txmulticastframes_gb = stats->txmulticastframes_gb + tmp___11;
  tmp___12 = xgbe_mmc_read(pdata, 2164U);
  stats->txbroadcastframes_g = stats->txbroadcastframes_g + tmp___12;
  tmp___13 = xgbe_mmc_read(pdata, 2172U);
  stats->txunderflowerror = stats->txunderflowerror + tmp___13;
  tmp___14 = xgbe_mmc_read(pdata, 2180U);
  stats->txoctetcount_g = stats->txoctetcount_g + tmp___14;
  tmp___15 = xgbe_mmc_read(pdata, 2188U);
  stats->txframecount_g = stats->txframecount_g + tmp___15;
  tmp___16 = xgbe_mmc_read(pdata, 2196U);
  stats->txpauseframes = stats->txpauseframes + tmp___16;
  tmp___17 = xgbe_mmc_read(pdata, 2204U);
  stats->txvlanframes_g = stats->txvlanframes_g + tmp___17;
  tmp___18 = xgbe_mmc_read(pdata, 2304U);
  stats->rxframecount_gb = stats->rxframecount_gb + tmp___18;
  tmp___19 = xgbe_mmc_read(pdata, 2312U);
  stats->rxoctetcount_gb = stats->rxoctetcount_gb + tmp___19;
  tmp___20 = xgbe_mmc_read(pdata, 2320U);
  stats->rxoctetcount_g = stats->rxoctetcount_g + tmp___20;
  tmp___21 = xgbe_mmc_read(pdata, 2328U);
  stats->rxbroadcastframes_g = stats->rxbroadcastframes_g + tmp___21;
  tmp___22 = xgbe_mmc_read(pdata, 2336U);
  stats->rxmulticastframes_g = stats->rxmulticastframes_g + tmp___22;
  tmp___23 = xgbe_mmc_read(pdata, 2344U);
  stats->rxcrcerror = stats->rxcrcerror + tmp___23;
  tmp___24 = xgbe_mmc_read(pdata, 2352U);
  stats->rxrunterror = stats->rxrunterror + tmp___24;
  tmp___25 = xgbe_mmc_read(pdata, 2356U);
  stats->rxjabbererror = stats->rxjabbererror + tmp___25;
  tmp___26 = xgbe_mmc_read(pdata, 2360U);
  stats->rxundersize_g = stats->rxundersize_g + tmp___26;
  tmp___27 = xgbe_mmc_read(pdata, 2364U);
  stats->rxoversize_g = stats->rxoversize_g + tmp___27;
  tmp___28 = xgbe_mmc_read(pdata, 2368U);
  stats->rx64octets_gb = stats->rx64octets_gb + tmp___28;
  tmp___29 = xgbe_mmc_read(pdata, 2376U);
  stats->rx65to127octets_gb = stats->rx65to127octets_gb + tmp___29;
  tmp___30 = xgbe_mmc_read(pdata, 2384U);
  stats->rx128to255octets_gb = stats->rx128to255octets_gb + tmp___30;
  tmp___31 = xgbe_mmc_read(pdata, 2392U);
  stats->rx256to511octets_gb = stats->rx256to511octets_gb + tmp___31;
  tmp___32 = xgbe_mmc_read(pdata, 2400U);
  stats->rx512to1023octets_gb = stats->rx512to1023octets_gb + tmp___32;
  tmp___33 = xgbe_mmc_read(pdata, 2408U);
  stats->rx1024tomaxoctets_gb = stats->rx1024tomaxoctets_gb + tmp___33;
  tmp___34 = xgbe_mmc_read(pdata, 2416U);
  stats->rxunicastframes_g = stats->rxunicastframes_g + tmp___34;
  tmp___35 = xgbe_mmc_read(pdata, 2424U);
  stats->rxlengtherror = stats->rxlengtherror + tmp___35;
  tmp___36 = xgbe_mmc_read(pdata, 2432U);
  stats->rxoutofrangetype = stats->rxoutofrangetype + tmp___36;
  tmp___37 = xgbe_mmc_read(pdata, 2440U);
  stats->rxpauseframes = stats->rxpauseframes + tmp___37;
  tmp___38 = xgbe_mmc_read(pdata, 2448U);
  stats->rxfifooverflow = stats->rxfifooverflow + tmp___38;
  tmp___39 = xgbe_mmc_read(pdata, 2456U);
  stats->rxvlanframes_gb = stats->rxvlanframes_gb + tmp___39;
  tmp___40 = xgbe_mmc_read(pdata, 2464U);
  stats->rxwatchdogerror = stats->rxwatchdogerror + tmp___40;
  tmp___41 = ioread32(pdata->xgmac_regs + 2048UL);
  reg_val___0 = tmp___41;
  reg_val___0 = reg_val___0 & 4294967287U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + 2048UL);
  return;
}
}
static void xgbe_config_mmc(struct xgbe_prv_data *pdata )
{
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 2048UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967291U;
  reg_val = reg_val | 4U;
  iowrite32(reg_val, pdata->xgmac_regs + 2048UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 2048UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967294U;
  reg_val___0 = reg_val___0 | 1U;
  iowrite32(reg_val___0, pdata->xgmac_regs + 2048UL);
  return;
}
}
static void xgbe_prepare_tx_stop(struct xgbe_prv_data *pdata , struct xgbe_channel *channel )
{
  unsigned int tx_dsr ;
  unsigned int tx_pos ;
  unsigned int tx_qidx ;
  unsigned int tx_status ;
  unsigned long tx_timeout ;
  {
  if (channel->queue_index <= 2U) {
    tx_dsr = 12320U;
    tx_pos = channel->queue_index * 8U + 12U;
  } else {
    tx_qidx = channel->queue_index - 3U;
    tx_dsr = (tx_qidx / 4U + 3081U) * 4U;
    tx_pos = (tx_qidx & 3U) * 8U + 4U;
  }
  tx_timeout = (unsigned long )jiffies + 1250UL;
  goto ldv_46646;
  ldv_46645:
  tx_status = ioread32(pdata->xgmac_regs + (unsigned long )tx_dsr);
  tx_status = (tx_status >> (int )tx_pos) & 15U;
  if (tx_status == 0U || tx_status == 6U) {
    goto ldv_46644;
  } else {
  }
  usleep_range(500UL, 1000UL);
  ldv_46646: ;
  if ((long )((unsigned long )jiffies - tx_timeout) < 0L) {
    goto ldv_46645;
  } else {
  }
  ldv_46644: ;
  if ((long )((unsigned long )jiffies - tx_timeout) >= 0L) {
    netdev_info((struct net_device const *)pdata->netdev, "timed out waiting for Tx DMA channel %u to stop\n",
                channel->queue_index);
  } else {
  }
  return;
}
}
static void xgbe_enable_tx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46661;
  ldv_46660: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46658;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46661: ;
  if (pdata->channel_count > i) {
    goto ldv_46660;
  } else {
  }
  ldv_46658:
  i = 0U;
  goto ldv_46664;
  ldv_46663:
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967283U;
  reg_val___0 = reg_val___0 | 8U;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_46664: ;
  if (pdata->tx_q_count > i) {
    goto ldv_46663;
  } else {
  }
  tmp___1 = ioread32(pdata->xgmac_regs);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294967294U;
  reg_val___1 = reg_val___1 | 1U;
  iowrite32(reg_val___1, pdata->xgmac_regs);
  return;
}
}
static void xgbe_disable_tx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46674;
  ldv_46673: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46672;
  } else {
  }
  xgbe_prepare_tx_stop(pdata, channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_46674: ;
  if (pdata->channel_count > i) {
    goto ldv_46673;
  } else {
  }
  ldv_46672:
  tmp = ioread32(pdata->xgmac_regs);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs);
  i = 0U;
  goto ldv_46678;
  ldv_46677:
  tmp___0 = ioread32(pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967283U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + ((unsigned long )(i * 128U) + 4352UL));
  i = i + 1U;
  ldv_46678: ;
  if (pdata->tx_q_count > i) {
    goto ldv_46677;
  } else {
  }
  channel = pdata->channel;
  i = 0U;
  goto ldv_46683;
  ldv_46682: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46680;
  } else {
  }
  tmp___1 = ioread32(channel->dma_regs + 4UL);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294967294U;
  reg_val___1 = reg_val___1;
  iowrite32(reg_val___1, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46683: ;
  if (pdata->channel_count > i) {
    goto ldv_46682;
  } else {
  }
  ldv_46680: ;
  return;
}
}
static void xgbe_enable_rx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int reg_val ;
  unsigned int i ;
  u32 reg_val___0 ;
  unsigned int tmp ;
  u32 reg_val___1 ;
  unsigned int tmp___0 ;
  u32 reg_val___2 ;
  unsigned int tmp___1 ;
  u32 reg_val___3 ;
  unsigned int tmp___2 ;
  u32 reg_val___4 ;
  unsigned int tmp___3 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46693;
  ldv_46692: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46690;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 8UL);
  reg_val___0 = tmp;
  reg_val___0 = reg_val___0 & 4294967294U;
  reg_val___0 = reg_val___0 | 1U;
  iowrite32(reg_val___0, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46693: ;
  if (pdata->channel_count > i) {
    goto ldv_46692;
  } else {
  }
  ldv_46690:
  reg_val = 0U;
  i = 0U;
  goto ldv_46695;
  ldv_46694:
  reg_val = (unsigned int )(2 << (int )(i << 1)) | reg_val;
  i = i + 1U;
  ldv_46695: ;
  if (pdata->rx_q_count > i) {
    goto ldv_46694;
  } else {
  }
  iowrite32(reg_val, pdata->xgmac_regs + 160UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___1 = tmp___0;
  reg_val___1 = reg_val___1 & 4294967287U;
  reg_val___1 = reg_val___1 | 8U;
  iowrite32(reg_val___1, pdata->xgmac_regs + 4UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___2 = tmp___1;
  reg_val___2 = reg_val___2 & 4294967291U;
  reg_val___2 = reg_val___2 | 4U;
  iowrite32(reg_val___2, pdata->xgmac_regs + 4UL);
  tmp___2 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___3 = tmp___2;
  reg_val___3 = reg_val___3 & 4294967293U;
  reg_val___3 = reg_val___3 | 2U;
  iowrite32(reg_val___3, pdata->xgmac_regs + 4UL);
  tmp___3 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___4 = tmp___3;
  reg_val___4 = reg_val___4 & 4294967294U;
  reg_val___4 = reg_val___4 | 1U;
  iowrite32(reg_val___4, pdata->xgmac_regs + 4UL);
  return;
}
}
static void xgbe_disable_rx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  u32 reg_val___1 ;
  unsigned int tmp___1 ;
  u32 reg_val___2 ;
  unsigned int tmp___2 ;
  u32 reg_val___3 ;
  unsigned int tmp___3 ;
  {
  tmp = ioread32(pdata->xgmac_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967287U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs + 4UL);
  tmp___0 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967291U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, pdata->xgmac_regs + 4UL);
  tmp___1 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___1 = tmp___1;
  reg_val___1 = reg_val___1 & 4294967293U;
  reg_val___1 = reg_val___1;
  iowrite32(reg_val___1, pdata->xgmac_regs + 4UL);
  tmp___2 = ioread32(pdata->xgmac_regs + 4UL);
  reg_val___2 = tmp___2;
  reg_val___2 = reg_val___2 & 4294967294U;
  reg_val___2 = reg_val___2;
  iowrite32(reg_val___2, pdata->xgmac_regs + 4UL);
  iowrite32(0U, pdata->xgmac_regs + 160UL);
  channel = pdata->channel;
  i = 0U;
  goto ldv_46713;
  ldv_46712: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46710;
  } else {
  }
  tmp___3 = ioread32(channel->dma_regs + 8UL);
  reg_val___3 = tmp___3;
  reg_val___3 = reg_val___3 & 4294967294U;
  reg_val___3 = reg_val___3;
  iowrite32(reg_val___3, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46713: ;
  if (pdata->channel_count > i) {
    goto ldv_46712;
  } else {
  }
  ldv_46710: ;
  return;
}
}
static void xgbe_powerup_tx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46722;
  ldv_46721: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46719;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 4UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46722: ;
  if (pdata->channel_count > i) {
    goto ldv_46721;
  } else {
  }
  ldv_46719:
  tmp___0 = ioread32(pdata->xgmac_regs);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967294U;
  reg_val___0 = reg_val___0 | 1U;
  iowrite32(reg_val___0, pdata->xgmac_regs);
  return;
}
}
static void xgbe_powerdown_tx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  u32 reg_val___0 ;
  unsigned int tmp___0 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46731;
  ldv_46730: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46729;
  } else {
  }
  xgbe_prepare_tx_stop(pdata, channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_46731: ;
  if (pdata->channel_count > i) {
    goto ldv_46730;
  } else {
  }
  ldv_46729:
  tmp = ioread32(pdata->xgmac_regs);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val;
  iowrite32(reg_val, pdata->xgmac_regs);
  channel = pdata->channel;
  i = 0U;
  goto ldv_46736;
  ldv_46735: ;
  if ((unsigned long )channel->tx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46733;
  } else {
  }
  tmp___0 = ioread32(channel->dma_regs + 4UL);
  reg_val___0 = tmp___0;
  reg_val___0 = reg_val___0 & 4294967294U;
  reg_val___0 = reg_val___0;
  iowrite32(reg_val___0, channel->dma_regs + 4UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46736: ;
  if (pdata->channel_count > i) {
    goto ldv_46735;
  } else {
  }
  ldv_46733: ;
  return;
}
}
static void xgbe_powerup_rx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46745;
  ldv_46744: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46742;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val | 1U;
  iowrite32(reg_val, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46745: ;
  if (pdata->channel_count > i) {
    goto ldv_46744;
  } else {
  }
  ldv_46742: ;
  return;
}
}
static void xgbe_powerdown_rx(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  u32 reg_val ;
  unsigned int tmp ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_46754;
  ldv_46753: ;
  if ((unsigned long )channel->rx_ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_46751;
  } else {
  }
  tmp = ioread32(channel->dma_regs + 8UL);
  reg_val = tmp;
  reg_val = reg_val & 4294967294U;
  reg_val = reg_val;
  iowrite32(reg_val, channel->dma_regs + 8UL);
  i = i + 1U;
  channel = channel + 1;
  ldv_46754: ;
  if (pdata->channel_count > i) {
    goto ldv_46753;
  } else {
  }
  ldv_46751: ;
  return;
}
}
static int xgbe_init(struct xgbe_prv_data *pdata )
{
  struct xgbe_desc_if *desc_if ;
  int ret ;
  {
  desc_if = & pdata->desc_if;
  ret = xgbe_flush_tx_queues(pdata);
  if (ret != 0) {
    return (ret);
  } else {
  }
  xgbe_config_dma_bus(pdata);
  xgbe_config_dma_cache(pdata);
  xgbe_config_osp_mode(pdata);
  xgbe_config_pblx8(pdata);
  xgbe_config_tx_pbl_val(pdata);
  xgbe_config_rx_pbl_val(pdata);
  xgbe_config_rx_coalesce(pdata);
  xgbe_config_tx_coalesce(pdata);
  xgbe_config_rx_buffer_size(pdata);
  xgbe_config_tso_mode(pdata);
  xgbe_config_sph_mode(pdata);
  xgbe_config_rss(pdata);
  (*(desc_if->wrapper_tx_desc_init))(pdata);
  (*(desc_if->wrapper_rx_desc_init))(pdata);
  xgbe_enable_dma_interrupts(pdata);
  xgbe_config_mtl_mode(pdata);
  xgbe_config_queue_mapping(pdata);
  xgbe_config_tsf_mode(pdata, pdata->tx_sf_mode);
  xgbe_config_rsf_mode(pdata, pdata->rx_sf_mode);
  xgbe_config_tx_threshold(pdata, pdata->tx_threshold);
  xgbe_config_rx_threshold(pdata, pdata->rx_threshold);
  xgbe_config_tx_fifo_size(pdata);
  xgbe_config_rx_fifo_size(pdata);
  xgbe_config_flow_control_threshold(pdata);
  xgbe_config_dcb_tc(pdata);
  xgbe_config_dcb_pfc(pdata);
  xgbe_enable_mtl_interrupts(pdata);
  xgbe_config_mac_address(pdata);
  xgbe_config_rx_mode(pdata);
  xgbe_config_jumbo_enable(pdata);
  xgbe_config_flow_control(pdata);
  xgbe_config_mac_speed(pdata);
  xgbe_config_checksum_offload(pdata);
  xgbe_config_vlan_support(pdata);
  xgbe_config_mmc(pdata);
  xgbe_enable_mac_interrupts(pdata);
  return (0);
}
}
void xgbe_init_function_ptrs_dev(struct xgbe_hw_if *hw_if )
{
  {
  hw_if->tx_complete = & xgbe_tx_complete;
  hw_if->set_mac_address = & xgbe_set_mac_address___0;
  hw_if->config_rx_mode = & xgbe_config_rx_mode;
  hw_if->enable_rx_csum = & xgbe_enable_rx_csum;
  hw_if->disable_rx_csum = & xgbe_disable_rx_csum;
  hw_if->enable_rx_vlan_stripping = & xgbe_enable_rx_vlan_stripping;
  hw_if->disable_rx_vlan_stripping = & xgbe_disable_rx_vlan_stripping;
  hw_if->enable_rx_vlan_filtering = & xgbe_enable_rx_vlan_filtering;
  hw_if->disable_rx_vlan_filtering = & xgbe_disable_rx_vlan_filtering;
  hw_if->update_vlan_hash_table = & xgbe_update_vlan_hash_table;
  hw_if->read_mmd_regs = & xgbe_read_mmd_regs;
  hw_if->write_mmd_regs = & xgbe_write_mmd_regs;
  hw_if->set_gmii_speed = & xgbe_set_gmii_speed;
  hw_if->set_gmii_2500_speed = & xgbe_set_gmii_2500_speed;
  hw_if->set_xgmii_speed = & xgbe_set_xgmii_speed;
  hw_if->enable_tx = & xgbe_enable_tx;
  hw_if->disable_tx = & xgbe_disable_tx;
  hw_if->enable_rx = & xgbe_enable_rx;
  hw_if->disable_rx = & xgbe_disable_rx;
  hw_if->powerup_tx = & xgbe_powerup_tx;
  hw_if->powerdown_tx = & xgbe_powerdown_tx;
  hw_if->powerup_rx = & xgbe_powerup_rx;
  hw_if->powerdown_rx = & xgbe_powerdown_rx;
  hw_if->dev_xmit = & xgbe_dev_xmit;
  hw_if->dev_read = & xgbe_dev_read;
  hw_if->enable_int = & xgbe_enable_int;
  hw_if->disable_int = & xgbe_disable_int;
  hw_if->init = & xgbe_init;
  hw_if->exit = & xgbe_exit;
  hw_if->tx_desc_init = & xgbe_tx_desc_init;
  hw_if->rx_desc_init = & xgbe_rx_desc_init;
  hw_if->tx_desc_reset = & xgbe_tx_desc_reset;
  hw_if->rx_desc_reset = & xgbe_rx_desc_reset;
  hw_if->is_last_desc = & xgbe_is_last_desc;
  hw_if->is_context_desc = & xgbe_is_context_desc;
  hw_if->tx_start_xmit = & xgbe_tx_start_xmit;
  hw_if->config_tx_flow_control = & xgbe_config_tx_flow_control;
  hw_if->config_rx_flow_control = & xgbe_config_rx_flow_control;
  hw_if->config_rx_coalesce = & xgbe_config_rx_coalesce;
  hw_if->config_tx_coalesce = & xgbe_config_tx_coalesce;
  hw_if->usec_to_riwt = & xgbe_usec_to_riwt;
  hw_if->riwt_to_usec = & xgbe_riwt_to_usec;
  hw_if->config_rx_threshold = & xgbe_config_rx_threshold;
  hw_if->config_tx_threshold = & xgbe_config_tx_threshold;
  hw_if->config_rsf_mode = & xgbe_config_rsf_mode;
  hw_if->config_tsf_mode = & xgbe_config_tsf_mode;
  hw_if->config_osp_mode = & xgbe_config_osp_mode;
  hw_if->config_rx_pbl_val = & xgbe_config_rx_pbl_val;
  hw_if->get_rx_pbl_val = & xgbe_get_rx_pbl_val;
  hw_if->config_tx_pbl_val = & xgbe_config_tx_pbl_val;
  hw_if->get_tx_pbl_val = & xgbe_get_tx_pbl_val;
  hw_if->config_pblx8 = & xgbe_config_pblx8;
  hw_if->tx_mmc_int = & xgbe_tx_mmc_int;
  hw_if->rx_mmc_int = & xgbe_rx_mmc_int;
  hw_if->read_mmc_stats = & xgbe_read_mmc_stats;
  hw_if->config_tstamp = & xgbe_config_tstamp;
  hw_if->update_tstamp_addend = & xgbe_update_tstamp_addend;
  hw_if->set_tstamp_time = & xgbe_set_tstamp_time;
  hw_if->get_tstamp_time = & xgbe_get_tstamp_time;
  hw_if->get_tx_tstamp = & xgbe_get_tx_tstamp;
  hw_if->config_dcb_tc = & xgbe_config_dcb_tc;
  hw_if->config_dcb_pfc = & xgbe_config_dcb_pfc;
  hw_if->enable_rss = & xgbe_enable_rss;
  hw_if->disable_rss = & xgbe_disable_rss;
  hw_if->set_rss_hash_key = & xgbe_set_rss_hash_key;
  hw_if->set_rss_lookup_table = & xgbe_set_rss_lookup_table;
  return;
}
}
bool ldv_queue_work_on_144(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_145(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_146(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_147(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_148(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_160(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_162(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_164(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_165(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_166(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_167(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_168(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_169(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_170(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_mod_timer_171(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_7(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void dump_page(struct page * , char const * ) ;
bool ldv_queue_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_196(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_195(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
extern bool __get_page_tail(struct page * ) ;
__inline static void get_page(struct page *page )
{
  bool tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  tmp___1 = PageTail((struct page const *)page);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    tmp = __get_page_tail(page);
    tmp___0 = ldv__builtin_expect((long )tmp, 1L);
    if (tmp___0 != 0L) {
      return;
    } else {
    }
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& page->__annonCompField42.__annonCompField41.__annonCompField40._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    dump_page(page, "VM_BUG_ON_PAGE(atomic_read(&page->_count) <= 0)");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (543), "i" (12UL));
    ldv_22888: ;
    goto ldv_22888;
  } else {
  }
  atomic_inc(& page->__annonCompField42.__annonCompField41.__annonCompField40._count);
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_25002: ;
    goto ldv_25002;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, (struct page *)-24189255811072L + (tmp___2 >> 12),
                            (unsigned long )ptr & 4095UL, size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, (struct page *)-24189255811072L + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_25011: ;
    goto ldv_25011;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (84), "i" (12UL));
    ldv_25046: ;
    goto ldv_25046;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, (struct dma_attrs *)0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (96), "i" (12UL));
    ldv_25054: ;
    goto ldv_25054;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, (struct dma_attrs *)0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_218(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_212(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_217(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_215(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  return (tmp___0);
}
}
static void xgbe_unmap_rdata(struct xgbe_prv_data *pdata , struct xgbe_ring_data *rdata ) ;
static void xgbe_free_ring(struct xgbe_prv_data *pdata , struct xgbe_ring *ring )
{
  struct xgbe_ring_data *rdata ;
  unsigned int i ;
  {
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    return;
  } else {
  }
  if ((unsigned long )ring->rdata != (unsigned long )((struct xgbe_ring_data *)0)) {
    i = 0U;
    goto ldv_45572;
    ldv_45571:
    rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & i);
    xgbe_unmap_rdata(pdata, rdata);
    i = i + 1U;
    ldv_45572: ;
    if (ring->rdesc_count > i) {
      goto ldv_45571;
    } else {
    }
    kfree((void const *)ring->rdata);
    ring->rdata = (struct xgbe_ring_data *)0;
  } else {
  }
  if ((unsigned long )ring->rx_hdr_pa.pages != (unsigned long )((struct page *)0)) {
    dma_unmap_page(pdata->dev, ring->rx_hdr_pa.pages_dma, (size_t )ring->rx_hdr_pa.pages_len,
                   2);
    put_page(ring->rx_hdr_pa.pages);
    ring->rx_hdr_pa.pages = (struct page *)0;
    ring->rx_hdr_pa.pages_len = 0U;
    ring->rx_hdr_pa.pages_offset = 0U;
    ring->rx_hdr_pa.pages_dma = 0ULL;
  } else {
  }
  if ((unsigned long )ring->rx_buf_pa.pages != (unsigned long )((struct page *)0)) {
    dma_unmap_page(pdata->dev, ring->rx_buf_pa.pages_dma, (size_t )ring->rx_buf_pa.pages_len,
                   2);
    put_page(ring->rx_buf_pa.pages);
    ring->rx_buf_pa.pages = (struct page *)0;
    ring->rx_buf_pa.pages_len = 0U;
    ring->rx_buf_pa.pages_offset = 0U;
    ring->rx_buf_pa.pages_dma = 0ULL;
  } else {
  }
  if ((unsigned long )ring->rdesc != (unsigned long )((struct xgbe_ring_desc *)0)) {
    dma_free_attrs(pdata->dev, (unsigned long )ring->rdesc_count * 16UL, (void *)ring->rdesc,
                   ring->rdesc_dma, (struct dma_attrs *)0);
    ring->rdesc = (struct xgbe_ring_desc *)0;
  } else {
  }
  return;
}
}
static void xgbe_free_ring_resources(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45580;
  ldv_45579:
  xgbe_free_ring(pdata, channel->tx_ring);
  xgbe_free_ring(pdata, channel->rx_ring);
  i = i + 1U;
  channel = channel + 1;
  ldv_45580: ;
  if (pdata->channel_count > i) {
    goto ldv_45579;
  } else {
  }
  return;
}
}
static int xgbe_init_ring(struct xgbe_prv_data *pdata , struct xgbe_ring *ring , unsigned int rdesc_count )
{
  void *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    return (0);
  } else {
  }
  ring->rdesc_count = rdesc_count;
  tmp = dma_alloc_attrs(pdata->dev, (unsigned long )rdesc_count * 16UL, & ring->rdesc_dma,
                        208U, (struct dma_attrs *)0);
  ring->rdesc = (struct xgbe_ring_desc *)tmp;
  if ((unsigned long )ring->rdesc == (unsigned long )((struct xgbe_ring_desc *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = kcalloc((size_t )rdesc_count, 208UL, 208U);
  ring->rdata = (struct xgbe_ring_data *)tmp___0;
  if ((unsigned long )ring->rdata == (unsigned long )((struct xgbe_ring_data *)0)) {
    return (-12);
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_init_ring";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor.format = "rdesc=%p, rdesc_dma=%pad, rdata=%p\n";
    descriptor.lineno = 213U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "rdesc=%p, rdesc_dma=%pad, rdata=%p\n", ring->rdesc, & ring->rdesc_dma,
                           ring->rdata);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int xgbe_alloc_ring_resources(struct xgbe_prv_data *pdata )
{
  struct xgbe_channel *channel ;
  unsigned int i ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  channel = pdata->channel;
  i = 0U;
  goto ldv_45600;
  ldv_45599: ;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_alloc_ring_resources";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor.format = "%s - Tx ring:\n";
    descriptor.lineno = 231U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "%s - Tx ring:\n", (char *)(& channel->name));
    } else {
    }
  } else {
  }
  ret = xgbe_init_ring(pdata, channel->tx_ring, pdata->tx_desc_count);
  if (ret != 0) {
    netdev_alert((struct net_device const *)pdata->netdev, "error initializing Tx ring\n");
    goto err_ring;
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_alloc_ring_resources";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor___0.format = "%s - Rx ring:\n";
    descriptor___0.lineno = 242U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                           "%s - Rx ring:\n", (char *)(& channel->name));
    } else {
    }
  } else {
  }
  ret = xgbe_init_ring(pdata, channel->rx_ring, pdata->rx_desc_count);
  if (ret != 0) {
    netdev_alert((struct net_device const *)pdata->netdev, "error initializing Rx ring\n");
    goto err_ring;
  } else {
  }
  i = i + 1U;
  channel = channel + 1;
  ldv_45600: ;
  if (pdata->channel_count > i) {
    goto ldv_45599;
  } else {
  }
  return (0);
  err_ring:
  xgbe_free_ring_resources(pdata);
  return (ret);
}
}
static int xgbe_alloc_pages(struct xgbe_prv_data *pdata , struct xgbe_page_alloc *pa ,
                            gfp_t gfp , int order )
{
  struct page *pages ;
  dma_addr_t pages_dma ;
  int ret ;
  {
  pages = (struct page *)0;
  gfp = gfp | 17152U;
  goto ldv_45613;
  ldv_45612:
  pages = alloc_pages(gfp, (unsigned int )order);
  if ((unsigned long )pages != (unsigned long )((struct page *)0)) {
    goto ldv_45611;
  } else {
  }
  order = order - 1;
  ldv_45613: ;
  if (order >= 0) {
    goto ldv_45612;
  } else {
  }
  ldv_45611: ;
  if ((unsigned long )pages == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  pages_dma = dma_map_page(pdata->dev, pages, 0UL, 4096UL << order, 2);
  ret = dma_mapping_error(pdata->dev, pages_dma);
  if (ret != 0) {
    put_page(pages);
    return (ret);
  } else {
  }
  pa->pages = pages;
  pa->pages_len = (unsigned int )(4096UL << order);
  pa->pages_offset = 0U;
  pa->pages_dma = pages_dma;
  return (0);
}
}
static void xgbe_set_buffer_data(struct xgbe_buffer_data *bd , struct xgbe_page_alloc *pa ,
                                 unsigned int len )
{
  {
  get_page(pa->pages);
  bd->pa = *pa;
  bd->dma = pa->pages_dma + (dma_addr_t )pa->pages_offset;
  bd->dma_len = len;
  pa->pages_offset = pa->pages_offset + len;
  if (pa->pages_offset + len > pa->pages_len) {
    bd->pa_unmap = *pa;
    pa->pages = (struct page *)0;
    pa->pages_len = 0U;
    pa->pages_offset = 0U;
    pa->pages_dma = 0ULL;
  } else {
  }
  return;
}
}
static int xgbe_map_rx_buffer(struct xgbe_prv_data *pdata , struct xgbe_ring *ring ,
                              struct xgbe_ring_data *rdata )
{
  int order ;
  int ret ;
  int __max1 ;
  int __max2 ;
  {
  if ((unsigned long )ring->rx_hdr_pa.pages == (unsigned long )((struct page *)0)) {
    ret = xgbe_alloc_pages(pdata, & ring->rx_hdr_pa, 32U, 0);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  if ((unsigned long )ring->rx_buf_pa.pages == (unsigned long )((struct page *)0)) {
    __max1 = 2;
    __max2 = 0;
    order = __max1 > __max2 ? __max1 : __max2;
    ret = xgbe_alloc_pages(pdata, & ring->rx_buf_pa, 32U, order);
    if (ret != 0) {
      return (ret);
    } else {
    }
  } else {
  }
  xgbe_set_buffer_data(& rdata->rx.hdr, & ring->rx_hdr_pa, 256U);
  xgbe_set_buffer_data(& rdata->rx.buf, & ring->rx_buf_pa, pdata->rx_buf_size);
  return (0);
}
}
static void xgbe_wrapper_tx_descriptor_init(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_ring_desc *rdesc ;
  dma_addr_t rdesc_dma ;
  unsigned int i ;
  unsigned int j ;
  {
  hw_if = & pdata->hw_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_45645;
  ldv_45644:
  ring = channel->tx_ring;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45640;
  } else {
  }
  rdesc = ring->rdesc;
  rdesc_dma = ring->rdesc_dma;
  j = 0U;
  goto ldv_45642;
  ldv_45641:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & j);
  rdata->rdesc = rdesc;
  rdata->rdesc_dma = rdesc_dma;
  rdesc = rdesc + 1;
  rdesc_dma = rdesc_dma + 16ULL;
  j = j + 1U;
  ldv_45642: ;
  if (ring->rdesc_count > j) {
    goto ldv_45641;
  } else {
  }
  ring->cur = 0U;
  ring->dirty = 0U;
  memset((void *)(& ring->__annonCompField97.tx), 0, 12UL);
  (*(hw_if->tx_desc_init))(channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_45645: ;
  if (pdata->channel_count > i) {
    goto ldv_45644;
  } else {
  }
  ldv_45640: ;
  return;
}
}
static void xgbe_wrapper_rx_descriptor_init(struct xgbe_prv_data *pdata )
{
  struct xgbe_hw_if *hw_if ;
  struct xgbe_channel *channel ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_desc *rdesc ;
  struct xgbe_ring_data *rdata ;
  dma_addr_t rdesc_dma ;
  unsigned int i ;
  unsigned int j ;
  int tmp ;
  {
  hw_if = & pdata->hw_if;
  channel = pdata->channel;
  i = 0U;
  goto ldv_45662;
  ldv_45661:
  ring = channel->rx_ring;
  if ((unsigned long )ring == (unsigned long )((struct xgbe_ring *)0)) {
    goto ldv_45657;
  } else {
  }
  rdesc = ring->rdesc;
  rdesc_dma = ring->rdesc_dma;
  j = 0U;
  goto ldv_45660;
  ldv_45659:
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & j);
  rdata->rdesc = rdesc;
  rdata->rdesc_dma = rdesc_dma;
  tmp = xgbe_map_rx_buffer(pdata, ring, rdata);
  if (tmp != 0) {
    goto ldv_45658;
  } else {
  }
  rdesc = rdesc + 1;
  rdesc_dma = rdesc_dma + 16ULL;
  j = j + 1U;
  ldv_45660: ;
  if (ring->rdesc_count > j) {
    goto ldv_45659;
  } else {
  }
  ldv_45658:
  ring->cur = 0U;
  ring->dirty = 0U;
  (*(hw_if->rx_desc_init))(channel);
  i = i + 1U;
  channel = channel + 1;
  ldv_45662: ;
  if (pdata->channel_count > i) {
    goto ldv_45661;
  } else {
  }
  ldv_45657: ;
  return;
}
}
static void xgbe_unmap_rdata(struct xgbe_prv_data *pdata , struct xgbe_ring_data *rdata )
{
  {
  if (rdata->skb_dma != 0ULL) {
    if (rdata->mapped_as_page != 0U) {
      dma_unmap_page(pdata->dev, rdata->skb_dma, (size_t )rdata->skb_dma_len, 1);
    } else {
      dma_unmap_single_attrs(pdata->dev, rdata->skb_dma, (size_t )rdata->skb_dma_len,
                             1, (struct dma_attrs *)0);
    }
    rdata->skb_dma = 0ULL;
    rdata->skb_dma_len = 0U;
  } else {
  }
  if ((unsigned long )rdata->skb != (unsigned long )((struct sk_buff *)0)) {
    dev_kfree_skb_any(rdata->skb);
    rdata->skb = (struct sk_buff *)0;
  } else {
  }
  if ((unsigned long )rdata->rx.hdr.pa.pages != (unsigned long )((struct page *)0)) {
    put_page(rdata->rx.hdr.pa.pages);
  } else {
  }
  if ((unsigned long )rdata->rx.hdr.pa_unmap.pages != (unsigned long )((struct page *)0)) {
    dma_unmap_page(pdata->dev, rdata->rx.hdr.pa_unmap.pages_dma, (size_t )rdata->rx.hdr.pa_unmap.pages_len,
                   2);
    put_page(rdata->rx.hdr.pa_unmap.pages);
  } else {
  }
  if ((unsigned long )rdata->rx.buf.pa.pages != (unsigned long )((struct page *)0)) {
    put_page(rdata->rx.buf.pa.pages);
  } else {
  }
  if ((unsigned long )rdata->rx.buf.pa_unmap.pages != (unsigned long )((struct page *)0)) {
    dma_unmap_page(pdata->dev, rdata->rx.buf.pa_unmap.pages_dma, (size_t )rdata->rx.buf.pa_unmap.pages_len,
                   2);
    put_page(rdata->rx.buf.pa_unmap.pages);
  } else {
  }
  memset((void *)(& rdata->tx), 0, 8UL);
  memset((void *)(& rdata->rx), 0, 136UL);
  rdata->mapped_as_page = 0U;
  if (rdata->state_saved != 0U) {
    rdata->state_saved = 0U;
    rdata->state.skb = (struct sk_buff *)0;
    rdata->state.len = 0U;
    rdata->state.error = 0U;
  } else {
  }
  return;
}
}
static int xgbe_map_tx_skb(struct xgbe_channel *channel , struct sk_buff *skb )
{
  struct xgbe_prv_data *pdata ;
  struct xgbe_ring *ring ;
  struct xgbe_ring_data *rdata ;
  struct xgbe_packet_data *packet ;
  struct skb_frag_struct *frag ;
  dma_addr_t skb_dma ;
  unsigned int start_index ;
  unsigned int cur_index ;
  unsigned int offset ;
  unsigned int tso ;
  unsigned int vlan ;
  unsigned int datalen ;
  unsigned int len ;
  unsigned int i ;
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  int tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  long tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned int __min1___0 ;
  unsigned int __min2___0 ;
  int tmp___6 ;
  struct _ddebug descriptor___2 ;
  long tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned int tmp___9 ;
  {
  pdata = channel->pdata;
  ring = channel->tx_ring;
  offset = 0U;
  start_index = ring->cur;
  cur_index = ring->cur;
  packet = & ring->packet_data;
  packet->rdesc_count = 0U;
  packet->length = 0U;
  tso = (packet->attributes >> 1) & 1U;
  vlan = (packet->attributes >> 2) & 1U;
  if ((tso != 0U && (int )packet->mss != (int )ring->__annonCompField97.tx.cur_mss) || (vlan != 0U && (int )packet->vlan_ctag != (int )ring->__annonCompField97.tx.cur_vlan_ctag)) {
    cur_index = cur_index + 1U;
  } else {
  }
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & cur_index);
  if (tso != 0U) {
    skb_dma = dma_map_single_attrs(pdata->dev, (void *)skb->data, (size_t )packet->header_len,
                                   1, (struct dma_attrs *)0);
    tmp = dma_mapping_error(pdata->dev, skb_dma);
    if (tmp != 0) {
      netdev_alert((struct net_device const *)pdata->netdev, "dma_map_single failed\n");
      goto err_out;
    } else {
    }
    rdata->skb_dma = skb_dma;
    rdata->skb_dma_len = packet->header_len;
    if ((pdata->msg_enable & 256U) != 0U) {
      descriptor.modname = "amd_xgbe";
      descriptor.function = "xgbe_map_tx_skb";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
      descriptor.format = "skb header: index=%u, dma=%pad, len=%u\n";
      descriptor.lineno = 535U;
      descriptor.flags = 0U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                             "skb header: index=%u, dma=%pad, len=%u\n", cur_index,
                             & skb_dma, packet->header_len);
      } else {
      }
    } else {
    }
    offset = packet->header_len;
    packet->length = packet->length + packet->header_len;
    cur_index = cur_index + 1U;
    rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & cur_index);
  } else {
  }
  tmp___1 = skb_headlen((struct sk_buff const *)skb);
  datalen = tmp___1 - offset;
  goto ldv_45693;
  ldv_45692:
  __min1 = datalen;
  __min2 = 16320U;
  len = __min1 < __min2 ? __min1 : __min2;
  skb_dma = dma_map_single_attrs(pdata->dev, (void *)skb->data + (unsigned long )offset,
                                 (size_t )len, 1, (struct dma_attrs *)0);
  tmp___2 = dma_mapping_error(pdata->dev, skb_dma);
  if (tmp___2 != 0) {
    netdev_alert((struct net_device const *)pdata->netdev, "dma_map_single failed\n");
    goto err_out;
  } else {
  }
  rdata->skb_dma = skb_dma;
  rdata->skb_dma_len = len;
  if ((pdata->msg_enable & 256U) != 0U) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_map_tx_skb";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor___0.format = "skb data: index=%u, dma=%pad, len=%u\n";
    descriptor___0.lineno = 559U;
    descriptor___0.flags = 0U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                           "skb data: index=%u, dma=%pad, len=%u\n", cur_index, & skb_dma,
                           len);
    } else {
    }
  } else {
  }
  datalen = datalen - len;
  offset = offset + len;
  packet->length = packet->length + len;
  cur_index = cur_index + 1U;
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & cur_index);
  ldv_45693: ;
  if (datalen != 0U) {
    goto ldv_45692;
  } else {
  }
  i = 0U;
  goto ldv_45704;
  ldv_45703: ;
  if ((pdata->msg_enable & 256U) != 0U) {
    descriptor___1.modname = "amd_xgbe";
    descriptor___1.function = "xgbe_map_tx_skb";
    descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor___1.format = "mapping frag %u\n";
    descriptor___1.lineno = 572U;
    descriptor___1.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)pdata->netdev,
                           "mapping frag %u\n", i);
    } else {
    }
  } else {
  }
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct *)(& ((struct skb_shared_info *)tmp___5)->frags) + (unsigned long )i;
  offset = 0U;
  datalen = skb_frag_size((skb_frag_t const *)frag);
  goto ldv_45701;
  ldv_45700:
  __min1___0 = datalen;
  __min2___0 = 16320U;
  len = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  skb_dma = skb_frag_dma_map(pdata->dev, (skb_frag_t const *)frag, (size_t )offset,
                             (size_t )len, 1);
  tmp___6 = dma_mapping_error(pdata->dev, skb_dma);
  if (tmp___6 != 0) {
    netdev_alert((struct net_device const *)pdata->netdev, "skb_frag_dma_map failed\n");
    goto err_out;
  } else {
  }
  rdata->skb_dma = skb_dma;
  rdata->skb_dma_len = len;
  rdata->mapped_as_page = 1U;
  if ((pdata->msg_enable & 256U) != 0U) {
    descriptor___2.modname = "amd_xgbe";
    descriptor___2.function = "xgbe_map_tx_skb";
    descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-desc.c";
    descriptor___2.format = "skb frag: index=%u, dma=%pad, len=%u\n";
    descriptor___2.lineno = 593U;
    descriptor___2.flags = 0U;
    tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      __dynamic_netdev_dbg(& descriptor___2, (struct net_device const *)pdata->netdev,
                           "skb frag: index=%u, dma=%pad, len=%u\n", cur_index, & skb_dma,
                           len);
    } else {
    }
  } else {
  }
  datalen = datalen - len;
  offset = offset + len;
  packet->length = packet->length + len;
  cur_index = cur_index + 1U;
  rdata = ring->rdata + (unsigned long )((ring->rdesc_count - 1U) & cur_index);
  ldv_45701: ;
  if (datalen != 0U) {
    goto ldv_45700;
  } else {
  }
  i = i + 1U;
  ldv_45704:
  tmp___8 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___8)->nr_frags > i) {
    goto ldv_45703;
  } else {
  }
  rdata = ring->rdata + (unsigned long )((cur_index - 1U) & (ring->rdesc_count - 1U));
  rdata->skb = skb;
  packet->rdesc_count = cur_index - start_index;
  return ((int )packet->rdesc_count);
  err_out: ;
  goto ldv_45707;
  ldv_45706:
  tmp___9 = start_index;
  start_index = start_index + 1U;
  rdata = ring->rdata + (unsigned long )(tmp___9 & (ring->rdesc_count - 1U));
  xgbe_unmap_rdata(pdata, rdata);
  ldv_45707: ;
  if (start_index < cur_index) {
    goto ldv_45706;
  } else {
  }
  return (0);
}
}
void xgbe_init_function_ptrs_desc(struct xgbe_desc_if *desc_if )
{
  {
  desc_if->alloc_ring_resources = & xgbe_alloc_ring_resources;
  desc_if->free_ring_resources = & xgbe_free_ring_resources;
  desc_if->map_tx_skb = & xgbe_map_tx_skb;
  desc_if->map_rx_buffer = & xgbe_map_rx_buffer;
  desc_if->unmap_rdata = & xgbe_unmap_rdata;
  desc_if->wrapper_tx_desc_init = & xgbe_wrapper_tx_descriptor_init;
  desc_if->wrapper_rx_desc_init = & xgbe_wrapper_rx_descriptor_init;
  return;
}
}
bool ldv_queue_work_on_192(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_193(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_194(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_195(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_196(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static struct page *alloc_pages(gfp_t flags , unsigned int order )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct page));
  return ((struct page *)tmp);
}
}
int ldv_pskb_expand_head_208(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_210(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_212(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_213(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_214(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_215(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_216(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_217(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_218(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
extern size_t strlcpy(char * , char const * , size_t ) ;
bool ldv_queue_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_240(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_242(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_241(struct workqueue_struct *ldv_func_arg1 ) ;
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
struct sk_buff *ldv_skb_clone_256(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_264(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_258(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_254(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_263(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_261(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
__inline static __u32 ethtool_cmd_speed(struct ethtool_cmd const *ep )
{
  {
  return ((__u32 )(((int )ep->speed_hi << 16) | (int )ep->speed));
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern int ptp_clock_index(struct ptp_clock * ) ;
static struct xgbe_stats const xgbe_gstring_stats[38U] =
  { {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 2824},
        {{'t', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2832},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}, 8, 2904},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}, 8, 2920},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}, 8, 2912},
        {{'t', 'x', '_', 'v', 'l', 'a', 'n', '_', 'p', 'a', 'c', 'k', 'e', 't', 's',
       '\000'}, 8, 2960},
        {{'t', 'x', '_', 't', 's', 'o', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'},
      8, 3152},
        {{'t', 'x', '_', '6', '4', '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}, 8, 2856},
        {{'t', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'b', 'y',
       't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2864},
        {{'t', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2872},
        {{'t', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1', '1', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2880},
        {{'t', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2888},
        {{'t',
       'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', 'm', 'a', 'x', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2896},
        {{'t', 'x', '_', 'u', 'n', 'd', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'e', 'r',
       'r', 'o', 'r', 's', '\000'}, 8, 2928},
        {{'t', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's',
       '\000'}, 8, 2952},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 8, 2976},
        {{'r', 'x', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 2968},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}, 8, 3096},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}, 8, 2992},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}, 8, 3000},
        {{'r', 'x', '_', 'v', 'l', 'a', 'n', '_', 'p', 'a', 'c', 'k', 'e', 't', 's',
       '\000'}, 8, 3136},
        {{'r', 'x', '_', '6', '4', '_', 'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k',
       'e', 't', 's', '\000'}, 8, 3048},
        {{'r', 'x', '_', '6', '5', '_', 't', 'o', '_', '1', '2', '7', '_', 'b', 'y',
       't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3056},
        {{'r', 'x', '_', '1', '2', '8', '_', 't', 'o', '_', '2', '5', '5', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3064},
        {{'r', 'x', '_', '2', '5', '6', '_', 't', 'o', '_', '5', '1', '1', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3072},
        {{'r', 'x', '_', '5', '1', '2', '_', 't', 'o', '_', '1', '0', '2', '3', '_',
       'b', 'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3080},
        {{'r',
       'x', '_', '1', '0', '2', '4', '_', 't', 'o', '_', 'm', 'a', 'x', '_', 'b',
       'y', 't', 'e', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3088},
        {{'r', 'x', '_', 'u', 'n', 'd', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'a',
       'c', 'k', 'e', 't', 's', '\000'}, 8, 3032},
        {{'r', 'x', '_', 'o', 'v', 'e', 'r', 's', 'i', 'z', 'e', '_', 'p', 'a', 'c',
       'k', 'e', 't', 's', '\000'}, 8, 3040},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8,
      3008},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '_', 's',
       'm', 'a', 'l', 'l', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3016},
        {{'r',
       'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '_', 'g', 'i',
       'a', 'n', 't', '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3024},
        {{'r', 'x', '_', 'l', 'e', 'n', 'g', 't', 'h', '_', 'e', 'r', 'r', 'o', 'r',
       's', '\000'}, 8, 3104},
        {{'r', 'x', '_', 'o', 'u', 't', '_', 'o', 'f', '_', 'r', 'a', 'n', 'g', 'e',
       '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8, 3112},
        {{'r', 'x', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f', 'l', 'o',
       'w', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 8, 3128},
        {{'r', 'x', '_', 'w', 'a', 't', 'c', 'h', 'd', 'o', 'g', '_', 'e', 'r', 'r',
       'o', 'r', 's', '\000'}, 8, 3144},
        {{'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's',
       '\000'}, 8, 3120},
        {{'r', 'x', '_', 's', 'p', 'l', 'i', 't', '_', 'h', 'e', 'a', 'd', 'e', 'r',
       '_', 'p', 'a', 'c', 'k', 'e', 't', 's', '\000'}, 8, 3160}};
static void xgbe_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  int i ;
  {
  switch (stringset) {
  case 1U:
  i = 0;
  goto ldv_45577;
  ldv_45576:
  memcpy((void *)data, (void const *)(& xgbe_gstring_stats[i].stat_string), 32UL);
  data = data + 32UL;
  i = i + 1;
  ldv_45577: ;
  if ((unsigned int )i <= 37U) {
    goto ldv_45576;
  } else {
  }
  goto ldv_45579;
  }
  ldv_45579: ;
  return;
}
}
static void xgbe_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  u8 *stat ;
  int i ;
  u64 *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  (*(pdata->hw_if.read_mmc_stats))(pdata);
  i = 0;
  goto ldv_45591;
  ldv_45590:
  stat = (u8 *)pdata + (unsigned long )xgbe_gstring_stats[i].stat_offset;
  tmp___0 = data;
  data = data + 1;
  *tmp___0 = *((u64 *)stat);
  i = i + 1;
  ldv_45591: ;
  if ((unsigned int )i <= 37U) {
    goto ldv_45590;
  } else {
  }
  return;
}
}
static int xgbe_get_sset_count(struct net_device *netdev , int stringset )
{
  int ret ;
  {
  switch (stringset) {
  case 1:
  ret = 38;
  goto ldv_45601;
  default:
  ret = -95;
  }
  ldv_45601: ;
  return (ret);
}
}
static void xgbe_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  pause->autoneg = (__u32 )pdata->phy.pause_autoneg;
  pause->tx_pause = (__u32 )pdata->phy.tx_pause;
  pause->rx_pause = (__u32 )pdata->phy.rx_pause;
  return;
}
}
static int xgbe_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *pause )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  int ret ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  ret = 0;
  if (pause->autoneg != 0U && pdata->phy.autoneg != 1) {
    return (-22);
  } else {
  }
  pdata->phy.pause_autoneg = (int )pause->autoneg;
  pdata->phy.tx_pause = (int )pause->tx_pause;
  pdata->phy.rx_pause = (int )pause->rx_pause;
  pdata->phy.advertising = pdata->phy.advertising & 4294959103U;
  pdata->phy.advertising = pdata->phy.advertising & 4294950911U;
  if (pause->rx_pause != 0U) {
    pdata->phy.advertising = pdata->phy.advertising | 8192U;
    pdata->phy.advertising = pdata->phy.advertising | 16384U;
  } else {
  }
  if (pause->tx_pause != 0U) {
    pdata->phy.advertising = pdata->phy.advertising ^ 16384U;
  } else {
  }
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    ret = (*(pdata->phy_if.phy_config_aneg))(pdata);
  } else {
  }
  return (ret);
}
}
static int xgbe_get_settings(struct net_device *netdev , struct ethtool_cmd *cmd )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  cmd->phy_address = (__u8 )pdata->phy.address;
  cmd->supported = pdata->phy.supported;
  cmd->advertising = pdata->phy.advertising;
  cmd->lp_advertising = pdata->phy.lp_advertising;
  cmd->autoneg = (__u8 )pdata->phy.autoneg;
  ethtool_cmd_speed_set(cmd, (__u32 )pdata->phy.speed);
  cmd->duplex = (__u8 )pdata->phy.duplex;
  cmd->port = 239U;
  cmd->transceiver = 0U;
  return (0);
}
}
static int xgbe_set_settings(struct net_device *netdev , struct ethtool_cmd *cmd )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  u32 speed ;
  int ret ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  speed = ethtool_cmd_speed((struct ethtool_cmd const *)cmd);
  if ((int )cmd->phy_address != pdata->phy.address) {
    return (-22);
  } else {
  }
  if ((unsigned int )cmd->autoneg != 1U && (unsigned int )cmd->autoneg != 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )cmd->autoneg == 0U) {
    switch (speed) {
    case 10000U: ;
    case 2500U: ;
    case 1000U: ;
    goto ldv_45629;
    default: ;
    return (-22);
    }
    ldv_45629: ;
    if ((unsigned int )cmd->duplex != 1U) {
      return (-22);
    } else {
    }
  } else {
  }
  cmd->advertising = cmd->advertising & pdata->phy.supported;
  if ((unsigned int )cmd->autoneg == 1U && cmd->advertising == 0U) {
    return (-22);
  } else {
  }
  ret = 0;
  pdata->phy.autoneg = (int )cmd->autoneg;
  pdata->phy.speed = (int )speed;
  pdata->phy.duplex = (int )cmd->duplex;
  pdata->phy.advertising = cmd->advertising;
  if ((unsigned int )cmd->autoneg == 1U) {
    pdata->phy.advertising = pdata->phy.advertising | 64U;
  } else {
    pdata->phy.advertising = pdata->phy.advertising & 4294967231U;
  }
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    ret = (*(pdata->phy_if.phy_config_aneg))(pdata);
  } else {
  }
  return (ret);
}
}
static void xgbe_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_features *hw_feat ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_feat = & pdata->hw_feat;
  strlcpy((char *)(& drvinfo->driver), "amd-xgbe", 32UL);
  strlcpy((char *)(& drvinfo->version), "1.0.2", 32UL);
  tmp___0 = dev_name((struct device const *)pdata->dev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  snprintf((char *)(& drvinfo->fw_version), 32UL, "%d.%d.%d", (hw_feat->version >> 16) & 255U,
           (hw_feat->version >> 8) & 255U, hw_feat->version & 255U);
  drvinfo->n_stats = 38U;
  return;
}
}
static int xgbe_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *ec )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  memset((void *)ec, 0, 92UL);
  ec->rx_coalesce_usecs = pdata->rx_usecs;
  ec->rx_max_coalesced_frames = pdata->rx_frames;
  ec->tx_max_coalesced_frames = pdata->tx_frames;
  return (0);
}
}
static int xgbe_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *ec )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  unsigned int rx_frames ;
  unsigned int rx_riwt ;
  unsigned int rx_usecs ;
  unsigned int tx_frames ;
  unsigned int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  if ((((((((((((((((((ec->rx_coalesce_usecs_irq != 0U || ec->rx_max_coalesced_frames_irq != 0U) || ec->tx_coalesce_usecs != 0U) || ec->tx_coalesce_usecs_irq != 0U) || ec->tx_max_coalesced_frames_irq != 0U) || ec->stats_block_coalesce_usecs != 0U) || ec->use_adaptive_rx_coalesce != 0U) || ec->use_adaptive_tx_coalesce != 0U) || ec->pkt_rate_low != 0U) || ec->rx_coalesce_usecs_low != 0U) || ec->rx_max_coalesced_frames_low != 0U) || ec->tx_coalesce_usecs_low != 0U) || ec->tx_max_coalesced_frames_low != 0U) || ec->pkt_rate_high != 0U) || ec->rx_coalesce_usecs_high != 0U) || ec->rx_max_coalesced_frames_high != 0U) || ec->tx_coalesce_usecs_high != 0U) || ec->tx_max_coalesced_frames_high != 0U) || ec->rate_sample_interval != 0U) {
    return (-95);
  } else {
  }
  rx_riwt = (*(hw_if->usec_to_riwt))(pdata, ec->rx_coalesce_usecs);
  rx_usecs = ec->rx_coalesce_usecs;
  rx_frames = ec->rx_max_coalesced_frames;
  if (rx_usecs != 0U && rx_riwt == 0U) {
    rx_riwt = 1U;
  } else {
  }
  if (rx_riwt > 255U) {
    tmp___0 = (*(hw_if->riwt_to_usec))(pdata, 255U);
    netdev_alert((struct net_device const *)netdev, "rx-usec is limited to %d usecs\n",
                 tmp___0);
    return (-22);
  } else {
  }
  if (pdata->rx_desc_count < rx_frames) {
    netdev_alert((struct net_device const *)netdev, "rx-frames is limited to %d frames\n",
                 pdata->rx_desc_count);
    return (-22);
  } else {
  }
  tx_frames = ec->tx_max_coalesced_frames;
  if (pdata->tx_desc_count < tx_frames) {
    netdev_alert((struct net_device const *)netdev, "tx-frames is limited to %d frames\n",
                 pdata->tx_desc_count);
    return (-22);
  } else {
  }
  pdata->rx_riwt = rx_riwt;
  pdata->rx_usecs = rx_usecs;
  pdata->rx_frames = rx_frames;
  (*(hw_if->config_rx_coalesce))(pdata);
  pdata->tx_frames = tx_frames;
  (*(hw_if->config_tx_coalesce))(pdata);
  return (0);
}
}
static int xgbe_get_rxnfc(struct net_device *netdev , struct ethtool_rxnfc *rxnfc ,
                          u32 *rule_locs )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  switch (rxnfc->cmd) {
  case 45U:
  rxnfc->data = (__u64 )pdata->rx_ring_count;
  goto ldv_45661;
  default: ;
  return (-95);
  }
  ldv_45661: ;
  return (0);
}
}
static u32 xgbe_get_rxfh_key_size(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  return (40U);
}
}
static u32 xgbe_get_rxfh_indir_size(struct net_device *netdev )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  return (256U);
}
}
static int xgbe_get_rxfh(struct net_device *netdev , u32 *indir , u8 *key , u8 *hfunc )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  unsigned int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  if ((unsigned long )indir != (unsigned long )((u32 *)0U)) {
    i = 0U;
    goto ldv_45684;
    ldv_45683:
    *(indir + (unsigned long )i) = pdata->rss_table[i] & 15U;
    i = i + 1U;
    ldv_45684: ;
    if (i <= 255U) {
      goto ldv_45683;
    } else {
    }
  } else {
  }
  if ((unsigned long )key != (unsigned long )((u8 *)0U)) {
    memcpy((void *)key, (void const *)(& pdata->rss_key), 40UL);
  } else {
  }
  if ((unsigned long )hfunc != (unsigned long )((u8 *)0U)) {
    *hfunc = 1U;
  } else {
  }
  return (0);
}
}
static int xgbe_set_rxfh(struct net_device *netdev , u32 const *indir , u8 const *key ,
                         u8 const hfunc )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct xgbe_hw_if *hw_if ;
  unsigned int ret ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  hw_if = & pdata->hw_if;
  if ((unsigned int )((unsigned char )hfunc) != 0U && (unsigned int )((unsigned char )hfunc) != 1U) {
    return (-95);
  } else {
  }
  if ((unsigned long )indir != (unsigned long )((u32 const *)0U)) {
    tmp___0 = (*(hw_if->set_rss_lookup_table))(pdata, indir);
    ret = (unsigned int )tmp___0;
    if (ret != 0U) {
      return ((int )ret);
    } else {
    }
  } else {
  }
  if ((unsigned long )key != (unsigned long )((u8 const *)0U)) {
    tmp___1 = (*(hw_if->set_rss_hash_key))(pdata, key);
    ret = (unsigned int )tmp___1;
    if (ret != 0U) {
      return ((int )ret);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int xgbe_get_ts_info(struct net_device *netdev , struct ethtool_ts_info *ts_info )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  ts_info->so_timestamping = 95U;
  if ((unsigned long )pdata->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    ts_info->phc_index = ptp_clock_index(pdata->ptp_clock);
  } else {
    ts_info->phc_index = -1;
  }
  ts_info->tx_types = 3U;
  ts_info->rx_filters = 29179U;
  return (0);
}
}
static struct ethtool_ops const xgbe_ethtool_ops =
     {& xgbe_get_settings, & xgbe_set_settings, & xgbe_get_drvinfo, 0, 0, 0, 0, 0, 0,
    0, & ethtool_op_get_link, 0, 0, 0, & xgbe_get_coalesce, & xgbe_set_coalesce, 0,
    0, & xgbe_get_pauseparam, & xgbe_set_pauseparam, 0, & xgbe_get_strings, 0, & xgbe_get_ethtool_stats,
    0, 0, 0, 0, & xgbe_get_sset_count, & xgbe_get_rxnfc, 0, 0, 0, & xgbe_get_rxfh_key_size,
    & xgbe_get_rxfh_indir_size, & xgbe_get_rxfh, & xgbe_set_rxfh, 0, 0, 0, 0, 0, & xgbe_get_ts_info,
    0, 0, 0, 0, 0, 0};
struct ethtool_ops *xgbe_get_ethtool_ops(void)
{
  {
  return ((struct ethtool_ops *)(& xgbe_ethtool_ops));
}
}
void ldv_initialize_ethtool_ops_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = ldv_init_zalloc(92UL);
  xgbe_ethtool_ops_group2 = (struct ethtool_coalesce *)tmp;
  tmp___0 = ldv_init_zalloc(3008UL);
  xgbe_ethtool_ops_group3 = (struct net_device *)tmp___0;
  tmp___1 = ldv_init_zalloc(44UL);
  xgbe_ethtool_ops_group0 = (struct ethtool_cmd *)tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  xgbe_ethtool_ops_group1 = (struct ethtool_pauseparam *)tmp___2;
  return;
}
}
void ldv_main_exported_14(void)
{
  u32 *ldvarg28 ;
  void *tmp ;
  u8 *ldvarg19 ;
  void *tmp___0 ;
  int ldvarg22 ;
  u64 *ldvarg29 ;
  void *tmp___1 ;
  u32 *ldvarg25 ;
  void *tmp___2 ;
  struct ethtool_ts_info *ldvarg21 ;
  void *tmp___3 ;
  struct ethtool_stats *ldvarg30 ;
  void *tmp___4 ;
  struct ethtool_drvinfo *ldvarg33 ;
  void *tmp___5 ;
  u8 *ldvarg23 ;
  void *tmp___6 ;
  u32 ldvarg20 ;
  u32 *ldvarg31 ;
  void *tmp___7 ;
  struct ethtool_rxnfc *ldvarg32 ;
  void *tmp___8 ;
  u8 ldvarg26 ;
  u8 *ldvarg27 ;
  void *tmp___9 ;
  u8 *ldvarg24 ;
  void *tmp___10 ;
  int tmp___11 ;
  {
  tmp = ldv_init_zalloc(4UL);
  ldvarg28 = (u32 *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg19 = (u8 *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg29 = (u64 *)tmp___1;
  tmp___2 = ldv_init_zalloc(4UL);
  ldvarg25 = (u32 *)tmp___2;
  tmp___3 = ldv_init_zalloc(44UL);
  ldvarg21 = (struct ethtool_ts_info *)tmp___3;
  tmp___4 = ldv_init_zalloc(8UL);
  ldvarg30 = (struct ethtool_stats *)tmp___4;
  tmp___5 = ldv_init_zalloc(196UL);
  ldvarg33 = (struct ethtool_drvinfo *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg23 = (u8 *)tmp___6;
  tmp___7 = ldv_init_zalloc(4UL);
  ldvarg31 = (u32 *)tmp___7;
  tmp___8 = ldv_init_zalloc(192UL);
  ldvarg32 = (struct ethtool_rxnfc *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg27 = (u8 *)tmp___9;
  tmp___10 = ldv_init_zalloc(1UL);
  ldvarg24 = (u8 *)tmp___10;
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_memset((void *)(& ldvarg20), 0, 4UL);
  ldv_memset((void *)(& ldvarg26), 0, 1UL);
  tmp___11 = __VERIFIER_nondet_int();
  switch (tmp___11) {
  case 0: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_drvinfo(xgbe_ethtool_ops_group3, ldvarg33);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 1: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_set_pauseparam(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group1);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 2: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_rxnfc(xgbe_ethtool_ops_group3, ldvarg32, ldvarg31);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 3: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_ethtool_stats(xgbe_ethtool_ops_group3, ldvarg30, ldvarg29);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 4: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_coalesce(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group2);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 5: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_set_rxfh(xgbe_ethtool_ops_group3, (u32 const *)ldvarg28, (u8 const *)ldvarg27,
                  (int )ldvarg26);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 6: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_pauseparam(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group1);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 7: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_rxfh(xgbe_ethtool_ops_group3, ldvarg25, ldvarg24, ldvarg23);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 8: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_sset_count(xgbe_ethtool_ops_group3, ldvarg22);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 9: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_settings(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 10: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_rxfh_indir_size(xgbe_ethtool_ops_group3);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 11: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_set_coalesce(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group2);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 12: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_ts_info(xgbe_ethtool_ops_group3, ldvarg21);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 13: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_set_settings(xgbe_ethtool_ops_group3, xgbe_ethtool_ops_group0);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 14: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_strings(xgbe_ethtool_ops_group3, ldvarg20, ldvarg19);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 15: ;
  if (ldv_state_variable_14 == 1) {
    xgbe_get_rxfh_key_size(xgbe_ethtool_ops_group3);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  case 16: ;
  if (ldv_state_variable_14 == 1) {
    ethtool_op_get_link(xgbe_ethtool_ops_group3);
    ldv_state_variable_14 = 1;
  } else {
  }
  goto ldv_45726;
  default:
  ldv_stop();
  }
  ldv_45726: ;
  return;
}
}
bool ldv_queue_work_on_238(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_239(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_240(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_241(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_242(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_254(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_256(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_258(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_259(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_260(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_261(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_262(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_263(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_264(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
bool ldv_queue_work_on_284(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_286(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_285(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_288(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_287(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool flush_work(struct work_struct * ) ;
bool ldv_flush_work_311(struct work_struct *ldv_func_arg1 ) ;
__inline static bool queue_work___0(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = ldv_queue_work_on_284(8192, wq, work);
  return (tmp);
}
}
extern unsigned int ioread16(void * ) ;
extern void iowrite16(u16 , void * ) ;
void activate_work_5(struct work_struct *work , int state ) ;
void call_and_disable_all_4(int state ) ;
void disable_work_5(struct work_struct *work ) ;
void invoke_work_4(void) ;
void call_and_disable_work_5(struct work_struct *work ) ;
void activate_work_4(struct work_struct *work , int state ) ;
void call_and_disable_all_5(int state ) ;
void invoke_work_5(void) ;
void disable_work_4(struct work_struct *work ) ;
void call_and_disable_work_4(struct work_struct *work ) ;
struct sk_buff *ldv_skb_clone_302(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_310(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_304(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_300(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_308(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_305(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
extern void msleep(unsigned int ) ;
extern void netif_carrier_on(struct net_device * ) ;
static void xgbe_an_enable_kr_training(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073807510);
  reg = (unsigned int )tmp;
  reg = reg | 2U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073807510, (int )reg);
  return;
}
}
static void xgbe_an_disable_kr_training(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073807510);
  reg = (unsigned int )tmp;
  reg = reg & 4294967293U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073807510, (int )reg);
  return;
}
}
static void xgbe_pcs_power_cycle(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp;
  reg = reg | 2048U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  usleep_range(75UL, 100UL);
  reg = reg & 4294965247U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  return;
}
}
static void xgbe_serdes_start_ratechange(struct xgbe_prv_data *pdata )
{
  u16 reg_val ;
  unsigned int tmp ;
  {
  tmp = ioread16(pdata->sir1_regs);
  reg_val = (u16 )tmp;
  reg_val = (unsigned int )reg_val & 65471U;
  reg_val = (u16 )((unsigned int )reg_val | 64U);
  iowrite16((int )reg_val, pdata->sir1_regs);
  return;
}
}
static void xgbe_serdes_complete_ratechange(struct xgbe_prv_data *pdata )
{
  unsigned int wait ;
  u16 status ;
  u16 reg_val ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  u16 reg_val___0 ;
  unsigned int tmp___3 ;
  u16 reg_val___1 ;
  unsigned int tmp___4 ;
  {
  tmp = ioread16(pdata->sir1_regs);
  reg_val = (u16 )tmp;
  reg_val = (unsigned int )reg_val & 65471U;
  reg_val = reg_val;
  iowrite16((int )reg_val, pdata->sir1_regs);
  wait = 500U;
  goto ldv_45659;
  ldv_45658:
  usleep_range(50UL, 75UL);
  tmp___0 = ioread16(pdata->sir0_regs + 64UL);
  status = (u16 )tmp___0;
  if ((int )status & 1 && ((int )status >> 8) & 1) {
    goto rx_reset;
  } else {
  }
  ldv_45659:
  tmp___1 = wait;
  wait = wait - 1U;
  if (tmp___1 != 0U) {
    goto ldv_45658;
  } else {
  }
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_serdes_complete_ratechange";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "SerDes rx/tx not ready (%#hx)\n";
    descriptor.lineno = 189U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "SerDes rx/tx not ready (%#hx)\n", (int )status);
    } else {
    }
  } else {
  }
  rx_reset:
  tmp___3 = ioread16(pdata->rxtx_regs + 24UL);
  reg_val___0 = (u16 )tmp___3;
  reg_val___0 = (unsigned int )reg_val___0 & 65279U;
  reg_val___0 = reg_val___0;
  iowrite16((int )reg_val___0, pdata->rxtx_regs + 24UL);
  tmp___4 = ioread16(pdata->rxtx_regs + 24UL);
  reg_val___1 = (u16 )tmp___4;
  reg_val___1 = (unsigned int )reg_val___1 & 65279U;
  reg_val___1 = (u16 )((unsigned int )reg_val___1 | 256U);
  iowrite16((int )reg_val___1, pdata->rxtx_regs + 24UL);
  return;
}
}
static void xgbe_xgmii_mode(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  int tmp___0 ;
  u16 reg_val ;
  unsigned int tmp___1 ;
  u16 reg_val___0 ;
  unsigned int tmp___2 ;
  u16 reg_val___1 ;
  unsigned int tmp___3 ;
  u16 reg_val___2 ;
  unsigned int tmp___4 ;
  u16 reg_val___3 ;
  unsigned int tmp___5 ;
  u16 reg_val___4 ;
  unsigned int tmp___6 ;
  u16 reg_val___5 ;
  unsigned int tmp___7 ;
  u16 reg_val___6 ;
  unsigned int tmp___8 ;
  struct _ddebug descriptor ;
  long tmp___9 ;
  {
  xgbe_an_enable_kr_training(pdata);
  (*(pdata->hw_if.set_xgmii_speed))(pdata);
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938439);
  reg = (unsigned int )tmp;
  reg = reg & 4294967292U;
  reg = reg;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938439, (int )reg);
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp___0;
  reg = reg & 4294958979U;
  reg = reg | 8256U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  xgbe_pcs_power_cycle(pdata);
  xgbe_serdes_start_ratechange(pdata);
  tmp___1 = ioread16(pdata->sir1_regs);
  reg_val = (u16 )tmp___1;
  reg_val = (unsigned int )reg_val & 65487U;
  reg_val = reg_val;
  iowrite16((int )reg_val, pdata->sir1_regs);
  tmp___2 = ioread16(pdata->sir1_regs);
  reg_val___0 = (u16 )tmp___2;
  reg_val___0 = (unsigned int )reg_val___0 & 65528U;
  reg_val___0 = (u16 )((unsigned int )reg_val___0 | 7U);
  iowrite16((int )reg_val___0, pdata->sir1_regs);
  tmp___3 = ioread16(pdata->sir1_regs);
  reg_val___1 = (u16 )tmp___3;
  reg_val___1 = (unsigned int )reg_val___1 & 65527U;
  reg_val___1 = (u16 )((unsigned int )reg_val___1 | 8U);
  iowrite16((int )reg_val___1, pdata->sir1_regs);
  tmp___4 = ioread16(pdata->sir1_regs);
  reg_val___2 = (u16 )tmp___4;
  reg_val___2 = (unsigned int )reg_val___2 & 4095U;
  reg_val___2 = ((int )((u16 )pdata->serdes_cdr_rate[2]) << 12U) | (int )reg_val___2;
  iowrite16((int )reg_val___2, pdata->sir1_regs);
  tmp___5 = ioread16(pdata->sir1_regs);
  reg_val___3 = (u16 )tmp___5;
  reg_val___3 = (unsigned int )reg_val___3 & 61695U;
  reg_val___3 = (((unsigned int )((u16 )pdata->serdes_tx_amp[2]) & 15U) << 8U) | (unsigned int )reg_val___3;
  iowrite16((int )reg_val___3, pdata->sir1_regs);
  tmp___6 = ioread16(pdata->rxtx_regs + 80UL);
  reg_val___4 = (u16 )tmp___6;
  reg_val___4 = (unsigned int )reg_val___4 & 65531U;
  reg_val___4 = (((unsigned int )((u16 )pdata->serdes_blwc[2]) & 1U) << 2U) | (unsigned int )reg_val___4;
  iowrite16((int )reg_val___4, pdata->rxtx_regs + 80UL);
  tmp___7 = ioread16(pdata->rxtx_regs + 456UL);
  reg_val___5 = (u16 )tmp___7;
  reg_val___5 = (unsigned int )reg_val___5 & 511U;
  reg_val___5 = ((int )((u16 )pdata->serdes_pq_skew[2]) << 9U) | (int )reg_val___5;
  iowrite16((int )reg_val___5, pdata->rxtx_regs + 456UL);
  tmp___8 = ioread16(pdata->rxtx_regs + 516UL);
  reg_val___6 = (u16 )tmp___8;
  reg_val___6 = (unsigned int )reg_val___6 & 16383U;
  reg_val___6 = ((int )((u16 )pdata->serdes_dfe_tap_cfg[2]) << 14U) | (int )reg_val___6;
  iowrite16((int )reg_val___6, pdata->rxtx_regs + 516UL);
  iowrite16((int )((u16 )pdata->serdes_dfe_tap_ena[2]), pdata->rxtx_regs + 88UL);
  xgbe_serdes_complete_ratechange(pdata);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_xgmii_mode";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "10GbE KR mode set\n";
    descriptor.lineno = 242U;
    descriptor.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "10GbE KR mode set\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void xgbe_gmii_2500_mode(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  int tmp___0 ;
  u16 reg_val ;
  unsigned int tmp___1 ;
  u16 reg_val___0 ;
  unsigned int tmp___2 ;
  u16 reg_val___1 ;
  unsigned int tmp___3 ;
  u16 reg_val___2 ;
  unsigned int tmp___4 ;
  u16 reg_val___3 ;
  unsigned int tmp___5 ;
  u16 reg_val___4 ;
  unsigned int tmp___6 ;
  u16 reg_val___5 ;
  unsigned int tmp___7 ;
  u16 reg_val___6 ;
  unsigned int tmp___8 ;
  struct _ddebug descriptor ;
  long tmp___9 ;
  {
  xgbe_an_disable_kr_training(pdata);
  (*(pdata->hw_if.set_gmii_2500_speed))(pdata);
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938439);
  reg = (unsigned int )tmp;
  reg = reg & 4294967292U;
  reg = reg | 1U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938439, (int )reg);
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp___0;
  reg = reg & 4294958979U;
  reg = reg | 64U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  xgbe_pcs_power_cycle(pdata);
  xgbe_serdes_start_ratechange(pdata);
  tmp___1 = ioread16(pdata->sir1_regs);
  reg_val = (u16 )tmp___1;
  reg_val = (unsigned int )reg_val & 65487U;
  reg_val = (u16 )((unsigned int )reg_val | 16U);
  iowrite16((int )reg_val, pdata->sir1_regs);
  tmp___2 = ioread16(pdata->sir1_regs);
  reg_val___0 = (u16 )tmp___2;
  reg_val___0 = (unsigned int )reg_val___0 & 65528U;
  reg_val___0 = (u16 )((unsigned int )reg_val___0 | 1U);
  iowrite16((int )reg_val___0, pdata->sir1_regs);
  tmp___3 = ioread16(pdata->sir1_regs);
  reg_val___1 = (u16 )tmp___3;
  reg_val___1 = (unsigned int )reg_val___1 & 65527U;
  reg_val___1 = reg_val___1;
  iowrite16((int )reg_val___1, pdata->sir1_regs);
  tmp___4 = ioread16(pdata->sir1_regs);
  reg_val___2 = (u16 )tmp___4;
  reg_val___2 = (unsigned int )reg_val___2 & 4095U;
  reg_val___2 = ((int )((u16 )pdata->serdes_cdr_rate[1]) << 12U) | (int )reg_val___2;
  iowrite16((int )reg_val___2, pdata->sir1_regs);
  tmp___5 = ioread16(pdata->sir1_regs);
  reg_val___3 = (u16 )tmp___5;
  reg_val___3 = (unsigned int )reg_val___3 & 61695U;
  reg_val___3 = (((unsigned int )((u16 )pdata->serdes_tx_amp[1]) & 15U) << 8U) | (unsigned int )reg_val___3;
  iowrite16((int )reg_val___3, pdata->sir1_regs);
  tmp___6 = ioread16(pdata->rxtx_regs + 80UL);
  reg_val___4 = (u16 )tmp___6;
  reg_val___4 = (unsigned int )reg_val___4 & 65531U;
  reg_val___4 = (((unsigned int )((u16 )pdata->serdes_blwc[1]) & 1U) << 2U) | (unsigned int )reg_val___4;
  iowrite16((int )reg_val___4, pdata->rxtx_regs + 80UL);
  tmp___7 = ioread16(pdata->rxtx_regs + 456UL);
  reg_val___5 = (u16 )tmp___7;
  reg_val___5 = (unsigned int )reg_val___5 & 511U;
  reg_val___5 = ((int )((u16 )pdata->serdes_pq_skew[1]) << 9U) | (int )reg_val___5;
  iowrite16((int )reg_val___5, pdata->rxtx_regs + 456UL);
  tmp___8 = ioread16(pdata->rxtx_regs + 516UL);
  reg_val___6 = (u16 )tmp___8;
  reg_val___6 = (unsigned int )reg_val___6 & 16383U;
  reg_val___6 = ((int )((u16 )pdata->serdes_dfe_tap_cfg[1]) << 14U) | (int )reg_val___6;
  iowrite16((int )reg_val___6, pdata->rxtx_regs + 516UL);
  iowrite16((int )((u16 )pdata->serdes_dfe_tap_ena[1]), pdata->rxtx_regs + 88UL);
  xgbe_serdes_complete_ratechange(pdata);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_gmii_2500_mode";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "2.5GbE KX mode set\n";
    descriptor.lineno = 290U;
    descriptor.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "2.5GbE KX mode set\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void xgbe_gmii_mode(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  int tmp___0 ;
  u16 reg_val ;
  unsigned int tmp___1 ;
  u16 reg_val___0 ;
  unsigned int tmp___2 ;
  u16 reg_val___1 ;
  unsigned int tmp___3 ;
  u16 reg_val___2 ;
  unsigned int tmp___4 ;
  u16 reg_val___3 ;
  unsigned int tmp___5 ;
  u16 reg_val___4 ;
  unsigned int tmp___6 ;
  u16 reg_val___5 ;
  unsigned int tmp___7 ;
  u16 reg_val___6 ;
  unsigned int tmp___8 ;
  struct _ddebug descriptor ;
  long tmp___9 ;
  {
  xgbe_an_disable_kr_training(pdata);
  (*(pdata->hw_if.set_gmii_speed))(pdata);
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938439);
  reg = (unsigned int )tmp;
  reg = reg & 4294967292U;
  reg = reg | 1U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938439, (int )reg);
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp___0;
  reg = reg & 4294958979U;
  reg = reg | 64U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  xgbe_pcs_power_cycle(pdata);
  xgbe_serdes_start_ratechange(pdata);
  tmp___1 = ioread16(pdata->sir1_regs);
  reg_val = (u16 )tmp___1;
  reg_val = (unsigned int )reg_val & 65487U;
  reg_val = (u16 )((unsigned int )reg_val | 48U);
  iowrite16((int )reg_val, pdata->sir1_regs);
  tmp___2 = ioread16(pdata->sir1_regs);
  reg_val___0 = (u16 )tmp___2;
  reg_val___0 = (unsigned int )reg_val___0 & 65528U;
  reg_val___0 = (u16 )((unsigned int )reg_val___0 | 1U);
  iowrite16((int )reg_val___0, pdata->sir1_regs);
  tmp___3 = ioread16(pdata->sir1_regs);
  reg_val___1 = (u16 )tmp___3;
  reg_val___1 = (unsigned int )reg_val___1 & 65527U;
  reg_val___1 = reg_val___1;
  iowrite16((int )reg_val___1, pdata->sir1_regs);
  tmp___4 = ioread16(pdata->sir1_regs);
  reg_val___2 = (u16 )tmp___4;
  reg_val___2 = (unsigned int )reg_val___2 & 4095U;
  reg_val___2 = ((int )((u16 )pdata->serdes_cdr_rate[0]) << 12U) | (int )reg_val___2;
  iowrite16((int )reg_val___2, pdata->sir1_regs);
  tmp___5 = ioread16(pdata->sir1_regs);
  reg_val___3 = (u16 )tmp___5;
  reg_val___3 = (unsigned int )reg_val___3 & 61695U;
  reg_val___3 = (((unsigned int )((u16 )pdata->serdes_tx_amp[0]) & 15U) << 8U) | (unsigned int )reg_val___3;
  iowrite16((int )reg_val___3, pdata->sir1_regs);
  tmp___6 = ioread16(pdata->rxtx_regs + 80UL);
  reg_val___4 = (u16 )tmp___6;
  reg_val___4 = (unsigned int )reg_val___4 & 65531U;
  reg_val___4 = (((unsigned int )((u16 )pdata->serdes_blwc[0]) & 1U) << 2U) | (unsigned int )reg_val___4;
  iowrite16((int )reg_val___4, pdata->rxtx_regs + 80UL);
  tmp___7 = ioread16(pdata->rxtx_regs + 456UL);
  reg_val___5 = (u16 )tmp___7;
  reg_val___5 = (unsigned int )reg_val___5 & 511U;
  reg_val___5 = ((int )((u16 )pdata->serdes_pq_skew[0]) << 9U) | (int )reg_val___5;
  iowrite16((int )reg_val___5, pdata->rxtx_regs + 456UL);
  tmp___8 = ioread16(pdata->rxtx_regs + 516UL);
  reg_val___6 = (u16 )tmp___8;
  reg_val___6 = (unsigned int )reg_val___6 & 16383U;
  reg_val___6 = ((int )((u16 )pdata->serdes_dfe_tap_cfg[0]) << 14U) | (int )reg_val___6;
  iowrite16((int )reg_val___6, pdata->rxtx_regs + 516UL);
  iowrite16((int )((u16 )pdata->serdes_dfe_tap_ena[0]), pdata->rxtx_regs + 88UL);
  xgbe_serdes_complete_ratechange(pdata);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_gmii_mode";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "1GbE KX mode set\n";
    descriptor.lineno = 338U;
    descriptor.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "1GbE KX mode set\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void xgbe_cur_mode(struct xgbe_prv_data *pdata , enum xgbe_mode *mode )
{
  unsigned int reg ;
  int tmp ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938439);
  reg = (unsigned int )tmp;
  if ((reg & 3U) == 0U) {
    *mode = 0;
  } else {
    *mode = 1;
  }
  return;
}
}
static bool xgbe_in_kr_mode(struct xgbe_prv_data *pdata )
{
  enum xgbe_mode mode ;
  {
  xgbe_cur_mode(pdata, & mode);
  return ((unsigned int )mode == 0U);
}
}
static void xgbe_switch_mode(struct xgbe_prv_data *pdata )
{
  bool tmp ;
  {
  tmp = xgbe_in_kr_mode(pdata);
  if ((int )tmp) {
    if (pdata->speed_set == 0U) {
      xgbe_gmii_mode(pdata);
    } else {
      xgbe_gmii_2500_mode(pdata);
    }
  } else {
    xgbe_xgmii_mode(pdata);
  }
  return;
}
}
static void xgbe_set_mode(struct xgbe_prv_data *pdata , enum xgbe_mode mode )
{
  enum xgbe_mode cur_mode ;
  {
  xgbe_cur_mode(pdata, & cur_mode);
  if ((unsigned int )mode != (unsigned int )cur_mode) {
    xgbe_switch_mode(pdata);
  } else {
  }
  return;
}
}
static bool xgbe_use_xgmii_mode(struct xgbe_prv_data *pdata )
{
  {
  if (pdata->phy.autoneg == 1) {
    if ((pdata->phy.advertising & 524288U) != 0U) {
      return (1);
    } else {
    }
  } else
  if (pdata->phy.speed == 10000) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool xgbe_use_gmii_2500_mode(struct xgbe_prv_data *pdata )
{
  {
  if (pdata->phy.autoneg == 1) {
    if ((pdata->phy.advertising & 32768U) != 0U) {
      return (1);
    } else {
    }
  } else
  if (pdata->phy.speed == 2500) {
    return (1);
  } else {
  }
  return (0);
}
}
static bool xgbe_use_gmii_mode(struct xgbe_prv_data *pdata )
{
  {
  if (pdata->phy.autoneg == 1) {
    if ((pdata->phy.advertising & 131072U) != 0U) {
      return (1);
    } else {
    }
  } else
  if (pdata->phy.speed == 1000) {
    return (1);
  } else {
  }
  return (0);
}
}
static void xgbe_set_an(struct xgbe_prv_data *pdata , bool enable , bool restart )
{
  unsigned int reg ;
  int tmp ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200576);
  reg = (unsigned int )tmp;
  reg = reg & 4294963199U;
  if ((int )enable) {
    reg = reg | 4096U;
  } else {
  }
  if ((int )restart) {
    reg = reg | 512U;
  } else {
  }
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200576, (int )reg);
  return;
}
}
static void xgbe_restart_an(struct xgbe_prv_data *pdata )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  xgbe_set_an(pdata, 1, 1);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_restart_an";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN enabled/restarted\n";
    descriptor.lineno = 444U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN enabled/restarted\n");
    } else {
    }
  } else {
  }
  return;
}
}
static void xgbe_disable_an(struct xgbe_prv_data *pdata )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  xgbe_set_an(pdata, 0, 0);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_disable_an";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN disabled\n";
    descriptor.lineno = 451U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN disabled\n");
    } else {
    }
  } else {
  }
  return;
}
}
static enum xgbe_an xgbe_an_tx_training(struct xgbe_prv_data *pdata , enum xgbe_rx *state )
{
  unsigned int ad_reg ;
  unsigned int lp_reg ;
  unsigned int reg ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  u16 reg_val ;
  unsigned int tmp___5 ;
  u16 reg_val___0 ;
  unsigned int tmp___6 ;
  struct _ddebug descriptor ;
  long tmp___7 ;
  {
  *state = 2;
  tmp = xgbe_in_kr_mode(pdata);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (1);
  } else {
  }
  tmp___1 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200594);
  ad_reg = (unsigned int )tmp___1;
  tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200597);
  lp_reg = (unsigned int )tmp___2;
  tmp___3 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073807531);
  reg = (unsigned int )tmp___3;
  reg = reg & 4294967292U;
  if ((ad_reg & 49152U) != 0U && (lp_reg & 49152U) != 0U) {
    reg = pdata->fec_ability | reg;
  } else {
  }
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073807531, (int )reg);
  tmp___4 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073807510);
  reg = (unsigned int )tmp___4;
  if (((unsigned long )reg & 2UL) != 0UL) {
    tmp___5 = ioread16(pdata->sir0_regs + 44UL);
    reg_val = (u16 )tmp___5;
    reg_val = (unsigned int )reg_val & 63487U;
    reg_val = (u16 )((unsigned int )reg_val | 2048U);
    iowrite16((int )reg_val, pdata->sir0_regs + 44UL);
    reg = reg | 1U;
    (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073807510, (int )reg);
    tmp___6 = ioread16(pdata->sir0_regs + 44UL);
    reg_val___0 = (u16 )tmp___6;
    reg_val___0 = (unsigned int )reg_val___0 & 63487U;
    reg_val___0 = reg_val___0;
    iowrite16((int )reg_val___0, pdata->sir0_regs + 44UL);
    if ((pdata->msg_enable & 4U) != 0U) {
      descriptor.modname = "amd_xgbe";
      descriptor.function = "xgbe_an_tx_training";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
      descriptor.format = "KR training initiated\n";
      descriptor.lineno = 488U;
      descriptor.flags = 0U;
      tmp___7 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                             "KR training initiated\n");
      } else {
      }
    } else {
    }
  } else {
  }
  return (1);
}
}
static enum xgbe_an xgbe_an_tx_xnp(struct xgbe_prv_data *pdata , enum xgbe_rx *state )
{
  u16 msg ;
  {
  *state = 1;
  msg = 1U;
  msg = (u16 )((unsigned int )msg | 8192U);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200600, 0);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200599, 0);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200598, (int )msg);
  return (1);
}
}
static enum xgbe_an xgbe_an_rx_bpa(struct xgbe_prv_data *pdata , enum xgbe_rx *state )
{
  unsigned int link_support ;
  unsigned int reg ;
  unsigned int ad_reg ;
  unsigned int lp_reg ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  enum xgbe_an tmp___3 ;
  enum xgbe_an tmp___4 ;
  unsigned int tmp___5 ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200596);
  reg = (unsigned int )tmp;
  tmp___0 = xgbe_in_kr_mode(pdata);
  link_support = (int )tmp___0 ? 128U : 32U;
  if ((reg & link_support) == 0U) {
    return (2);
  } else {
  }
  tmp___1 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200592);
  ad_reg = (unsigned int )tmp___1;
  tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200595);
  lp_reg = (unsigned int )tmp___2;
  if (((unsigned long )ad_reg & 32768UL) != 0UL || ((unsigned long )lp_reg & 32768UL) != 0UL) {
    tmp___3 = xgbe_an_tx_xnp(pdata, state);
    tmp___5 = tmp___3;
  } else {
    tmp___4 = xgbe_an_tx_training(pdata, state);
    tmp___5 = tmp___4;
  }
  return (tmp___5);
}
}
static enum xgbe_an xgbe_an_rx_xnp(struct xgbe_prv_data *pdata , enum xgbe_rx *state )
{
  unsigned int ad_reg ;
  unsigned int lp_reg ;
  int tmp ;
  int tmp___0 ;
  enum xgbe_an tmp___1 ;
  enum xgbe_an tmp___2 ;
  unsigned int tmp___3 ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200598);
  ad_reg = (unsigned int )tmp;
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200601);
  lp_reg = (unsigned int )tmp___0;
  if (((unsigned long )ad_reg & 32768UL) != 0UL || ((unsigned long )lp_reg & 32768UL) != 0UL) {
    tmp___1 = xgbe_an_tx_xnp(pdata, state);
    tmp___3 = tmp___1;
  } else {
    tmp___2 = xgbe_an_tx_training(pdata, state);
    tmp___3 = tmp___2;
  }
  return (tmp___3);
}
}
static enum xgbe_an xgbe_an_page_received(struct xgbe_prv_data *pdata )
{
  enum xgbe_rx *state ;
  unsigned long an_timeout ;
  enum xgbe_an ret ;
  unsigned long tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  if (pdata->an_start == 0UL) {
    pdata->an_start = jiffies;
  } else {
    tmp = msecs_to_jiffies(500U);
    an_timeout = pdata->an_start + tmp;
    if ((long )(an_timeout - (unsigned long )jiffies) < 0L) {
      pdata->kr_state = 0;
      pdata->kx_state = 0;
      pdata->an_start = jiffies;
      if ((pdata->msg_enable & 4U) != 0U) {
        descriptor.modname = "amd_xgbe";
        descriptor.function = "xgbe_an_page_received";
        descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
        descriptor.format = "AN timed out, resetting state\n";
        descriptor.lineno = 569U;
        descriptor.flags = 0U;
        tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
        if (tmp___0 != 0L) {
          __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                               "AN timed out, resetting state\n");
        } else {
        }
      } else {
      }
    } else {
    }
  }
  tmp___1 = xgbe_in_kr_mode(pdata);
  state = (int )tmp___1 ? & pdata->kr_state : & pdata->kx_state;
  switch ((unsigned int )*state) {
  case 0U:
  ret = xgbe_an_rx_bpa(pdata, state);
  goto ldv_45794;
  case 1U:
  ret = xgbe_an_rx_xnp(pdata, state);
  goto ldv_45794;
  default:
  ret = 5;
  }
  ldv_45794: ;
  return (ret);
}
}
static enum xgbe_an xgbe_an_incompat_link(struct xgbe_prv_data *pdata )
{
  bool tmp ;
  {
  tmp = xgbe_in_kr_mode(pdata);
  if ((int )tmp) {
    pdata->kr_state = 3;
    if ((pdata->phy.advertising & 131072U) == 0U && (pdata->phy.advertising & 32768U) == 0U) {
      return (4);
    } else {
    }
    if ((unsigned int )pdata->kx_state != 0U) {
      return (4);
    } else {
    }
  } else {
    pdata->kx_state = 3;
    if ((pdata->phy.advertising & 524288U) == 0U) {
      return (4);
    } else {
    }
    if ((unsigned int )pdata->kr_state != 0U) {
      return (4);
    } else {
    }
  }
  xgbe_disable_an(pdata);
  xgbe_switch_mode(pdata);
  xgbe_restart_an(pdata);
  return (2);
}
}
static irqreturn_t xgbe_an_isr(int irq , void *data )
{
  struct xgbe_prv_data *pdata ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  pdata = (struct xgbe_prv_data *)data;
  if ((pdata->msg_enable & 512U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_an_isr";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN interrupt received\n";
    descriptor.lineno = 627U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN interrupt received\n");
    } else {
    }
  } else {
  }
  disable_irq_nosync((unsigned int )pdata->an_irq);
  queue_work___0(pdata->an_workqueue, & pdata->an_irq_work);
  return (1);
}
}
static void xgbe_an_irq_work(struct work_struct *work )
{
  struct xgbe_prv_data *pdata ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  pdata = (struct xgbe_prv_data *)__mptr + 0xffffffffffffee38UL;
  ldv_flush_work_311(& pdata->an_work);
  queue_work___0(pdata->an_workqueue, & pdata->an_work);
  return;
}
}
static char const *xgbe_state_as_string(enum xgbe_an state )
{
  {
  switch ((unsigned int )state) {
  case 0U: ;
  return ("Ready");
  case 1U: ;
  return ("Page-Received");
  case 2U: ;
  return ("Incompatible-Link");
  case 3U: ;
  return ("Complete");
  case 4U: ;
  return ("No-Link");
  case 5U: ;
  return ("Error");
  default: ;
  return ("Undefined");
  }
}
}
static void xgbe_an_state_machine(struct work_struct *work )
{
  struct xgbe_prv_data *pdata ;
  struct work_struct const *__mptr ;
  enum xgbe_an cur_state ;
  unsigned int int_reg ;
  unsigned int int_mask ;
  int tmp ;
  struct _ddebug descriptor ;
  char const *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  char const *tmp___3 ;
  long tmp___4 ;
  {
  __mptr = (struct work_struct const *)work;
  pdata = (struct xgbe_prv_data *)__mptr + 0xffffffffffffece8UL;
  cur_state = pdata->an_state;
  mutex_lock_nested(& pdata->an_mutex, 0U);
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074233346);
  int_reg = (unsigned int )tmp;
  if (int_reg == 0U) {
    goto out;
  } else {
  }
  next_int: ;
  if ((int_reg & 4U) != 0U) {
    pdata->an_state = 1;
    int_mask = 4U;
  } else
  if ((int_reg & 2U) != 0U) {
    pdata->an_state = 2;
    int_mask = 2U;
  } else
  if ((int )int_reg & 1) {
    pdata->an_state = 3;
    int_mask = 1U;
  } else {
    pdata->an_state = 5;
    int_mask = 0U;
  }
  int_reg = ~ int_mask & int_reg;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233346, (int )int_reg);
  pdata->an_result = pdata->an_state;
  again: ;
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_an_state_machine";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN %s\n";
    descriptor.lineno = 708U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xgbe_state_as_string(pdata->an_state);
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN %s\n", tmp___0);
    } else {
    }
  } else {
  }
  cur_state = pdata->an_state;
  switch ((unsigned int )pdata->an_state) {
  case 0U:
  pdata->an_supported = 0U;
  goto ldv_45838;
  case 1U:
  pdata->an_state = xgbe_an_page_received(pdata);
  pdata->an_supported = pdata->an_supported + 1U;
  goto ldv_45838;
  case 2U:
  pdata->an_supported = 0U;
  pdata->parallel_detect = 0U;
  pdata->an_state = xgbe_an_incompat_link(pdata);
  goto ldv_45838;
  case 3U:
  pdata->parallel_detect = pdata->an_supported == 0U;
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_an_state_machine";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor___0.format = "%s successful\n";
    descriptor___0.lineno = 732U;
    descriptor___0.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)pdata->netdev,
                           "%s successful\n", pdata->an_supported != 0U ? (char *)"Auto negotiation" : (char *)"Parallel detection");
    } else {
    }
  } else {
  }
  goto ldv_45838;
  case 4U: ;
  goto ldv_45838;
  default:
  pdata->an_state = 5;
  }
  ldv_45838: ;
  if ((unsigned int )pdata->an_state == 4U) {
    int_reg = 0U;
    (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233346, 0);
  } else
  if ((unsigned int )pdata->an_state == 5U) {
    netdev_err((struct net_device const *)pdata->netdev, "error during auto-negotiation, state=%u\n",
               (unsigned int )cur_state);
    int_reg = 0U;
    (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233346, 0);
  } else {
  }
  if ((unsigned int )pdata->an_state > 2U) {
    pdata->an_result = pdata->an_state;
    pdata->an_state = 0;
    pdata->kr_state = 0;
    pdata->kx_state = 0;
    pdata->an_start = 0UL;
    if ((pdata->msg_enable & 4U) != 0U) {
      descriptor___1.modname = "amd_xgbe";
      descriptor___1.function = "xgbe_an_state_machine";
      descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
      descriptor___1.format = "AN result: %s\n";
      descriptor___1.lineno = 762U;
      descriptor___1.flags = 0U;
      tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___4 != 0L) {
        tmp___3 = xgbe_state_as_string(pdata->an_result);
        __dynamic_netdev_dbg(& descriptor___1, (struct net_device const *)pdata->netdev,
                             "AN result: %s\n", tmp___3);
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned int )pdata->an_state != (unsigned int )cur_state) {
    goto again;
  } else {
  }
  if (int_reg != 0U) {
    goto next_int;
  } else {
  }
  out:
  enable_irq((unsigned int )pdata->an_irq);
  mutex_unlock(& pdata->an_mutex);
  return;
}
}
static void xgbe_an_init(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200594);
  reg = (unsigned int )tmp;
  if ((pdata->phy.advertising & 1048576U) != 0U) {
    reg = reg | 49152U;
  } else {
    reg = reg & 4294918143U;
  }
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200594, (int )reg);
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200593);
  reg = (unsigned int )tmp___0;
  if ((pdata->phy.advertising & 524288U) != 0U) {
    reg = reg | 128U;
  } else {
    reg = reg & 4294967167U;
  }
  if ((pdata->phy.advertising & 131072U) != 0U || (pdata->phy.advertising & 32768U) != 0U) {
    reg = reg | 32U;
  } else {
    reg = reg & 4294967263U;
  }
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200593, (int )reg);
  tmp___1 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200592);
  reg = (unsigned int )tmp___1;
  if ((pdata->phy.advertising & 8192U) != 0U) {
    reg = reg | 1024U;
  } else {
    reg = reg & 4294966271U;
  }
  if ((pdata->phy.advertising & 16384U) != 0U) {
    reg = reg | 2048U;
  } else {
    reg = reg & 4294965247U;
  }
  reg = reg & 4294934527U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074200592, (int )reg);
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_an_init";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN initialized\n";
    descriptor.lineno = 822U;
    descriptor.flags = 0U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN initialized\n");
    } else {
    }
  } else {
  }
  return;
}
}
static char const *xgbe_phy_fc_string(struct xgbe_prv_data *pdata )
{
  {
  if (pdata->tx_pause != 0U && pdata->rx_pause != 0U) {
    return ("rx/tx");
  } else
  if (pdata->rx_pause != 0U) {
    return ("rx");
  } else
  if (pdata->tx_pause != 0U) {
    return ("tx");
  } else {
    return ("off");
  }
}
}
static char const *xgbe_phy_speed_string(int speed )
{
  {
  switch (speed) {
  case 1000: ;
  return ("1Gbps");
  case 2500: ;
  return ("2.5Gbps");
  case 10000: ;
  return ("10Gbps");
  case -1: ;
  return ("Unknown");
  default: ;
  return ("Unsupported");
  }
}
}
static void xgbe_phy_print_status(struct xgbe_prv_data *pdata )
{
  char const *tmp ;
  char const *tmp___0 ;
  {
  if (pdata->phy.link != 0) {
    tmp = xgbe_phy_fc_string(pdata);
    tmp___0 = xgbe_phy_speed_string(pdata->phy.speed);
    netdev_info((struct net_device const *)pdata->netdev, "Link is Up - %s/%s - flow control %s\n",
                tmp___0, pdata->phy.duplex == 1 ? (char *)"Full" : (char *)"Half",
                tmp);
  } else {
    netdev_info((struct net_device const *)pdata->netdev, "Link is Down\n");
  }
  return;
}
}
static void xgbe_phy_adjust_link(struct xgbe_prv_data *pdata )
{
  int new_state ;
  {
  new_state = 0;
  if (pdata->phy.link != 0) {
    pdata->pause_autoneg = (unsigned int )pdata->phy.pause_autoneg;
    if (pdata->tx_pause != (unsigned int )pdata->phy.tx_pause) {
      new_state = 1;
      (*(pdata->hw_if.config_tx_flow_control))(pdata);
      pdata->tx_pause = (unsigned int )pdata->phy.tx_pause;
    } else {
    }
    if (pdata->rx_pause != (unsigned int )pdata->phy.rx_pause) {
      new_state = 1;
      (*(pdata->hw_if.config_rx_flow_control))(pdata);
      pdata->rx_pause = (unsigned int )pdata->phy.rx_pause;
    } else {
    }
    if (pdata->phy_speed != pdata->phy.speed) {
      new_state = 1;
      pdata->phy_speed = pdata->phy.speed;
    } else {
    }
    if (pdata->phy_link != pdata->phy.link) {
      new_state = 1;
      pdata->phy_link = pdata->phy.link;
    } else {
    }
  } else
  if (pdata->phy_link != 0) {
    new_state = 1;
    pdata->phy_link = 0;
    pdata->phy_speed = -1;
  } else {
  }
  if (new_state != 0 && (pdata->msg_enable & 4U) != 0U) {
    xgbe_phy_print_status(pdata);
  } else {
  }
  return;
}
}
static int xgbe_phy_config_fixed(struct xgbe_prv_data *pdata )
{
  struct _ddebug descriptor ;
  long tmp ;
  {
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_phy_config_fixed";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "fixed PHY configuration\n";
    descriptor.lineno = 907U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "fixed PHY configuration\n");
    } else {
    }
  } else {
  }
  xgbe_disable_an(pdata);
  switch (pdata->phy.speed) {
  case 10000:
  xgbe_set_mode(pdata, 0);
  goto ldv_45876;
  case 2500: ;
  case 1000:
  xgbe_set_mode(pdata, 1);
  goto ldv_45876;
  default: ;
  return (-22);
  }
  ldv_45876: ;
  if (pdata->phy.duplex != 1) {
    return (-22);
  } else {
  }
  return (0);
}
}
static int __xgbe_phy_config_aneg(struct xgbe_prv_data *pdata )
{
  int tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  {
  set_bit(2L, (unsigned long volatile *)(& pdata->dev_state));
  pdata->link_check = jiffies;
  if (pdata->phy.autoneg != 1) {
    tmp = xgbe_phy_config_fixed(pdata);
    return (tmp);
  } else {
  }
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "__xgbe_phy_config_aneg";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "AN PHY configuration\n";
    descriptor.lineno = 942U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "AN PHY configuration\n");
    } else {
    }
  } else {
  }
  disable_irq((unsigned int )pdata->an_irq);
  if ((pdata->phy.advertising & 524288U) != 0U) {
    xgbe_set_mode(pdata, 0);
  } else
  if ((pdata->phy.advertising & 131072U) != 0U || (pdata->phy.advertising & 32768U) != 0U) {
    xgbe_set_mode(pdata, 1);
  } else {
    enable_irq((unsigned int )pdata->an_irq);
    return (-22);
  }
  xgbe_disable_an(pdata);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233346, 0);
  pdata->an_result = 0;
  pdata->an_state = 0;
  pdata->kr_state = 0;
  pdata->kx_state = 0;
  enable_irq((unsigned int )pdata->an_irq);
  xgbe_an_init(pdata);
  xgbe_restart_an(pdata);
  return (0);
}
}
static int xgbe_phy_config_aneg(struct xgbe_prv_data *pdata )
{
  int ret ;
  {
  mutex_lock_nested(& pdata->an_mutex, 0U);
  ret = __xgbe_phy_config_aneg(pdata);
  if (ret != 0) {
    set_bit(3L, (unsigned long volatile *)(& pdata->dev_state));
  } else {
    clear_bit(3L, (unsigned long volatile *)(& pdata->dev_state));
  }
  mutex_unlock(& pdata->an_mutex);
  return (ret);
}
}
static bool xgbe_phy_aneg_done(struct xgbe_prv_data *pdata )
{
  {
  return ((unsigned int )pdata->an_result == 3U);
}
}
static void xgbe_check_link_timeout(struct xgbe_prv_data *pdata )
{
  unsigned long link_timeout ;
  struct _ddebug descriptor ;
  long tmp ;
  {
  link_timeout = pdata->link_check + 2500UL;
  if ((long )(link_timeout - (unsigned long )jiffies) < 0L) {
    if ((pdata->msg_enable & 4U) != 0U) {
      descriptor.modname = "amd_xgbe";
      descriptor.function = "xgbe_check_link_timeout";
      descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
      descriptor.format = "AN link timeout\n";
      descriptor.lineno = 1009U;
      descriptor.flags = 0U;
      tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp != 0L) {
        __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                             "AN link timeout\n");
      } else {
      }
    } else {
    }
    xgbe_phy_config_aneg(pdata);
  } else {
  }
  return;
}
}
static void xgbe_phy_status_aneg(struct xgbe_prv_data *pdata )
{
  unsigned int ad_reg ;
  unsigned int lp_reg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  pdata->phy.lp_advertising = 0U;
  if (pdata->phy.autoneg != 1 || pdata->parallel_detect != 0U) {
    return;
  } else {
  }
  pdata->phy.lp_advertising = pdata->phy.lp_advertising | 64U;
  pdata->phy.lp_advertising = pdata->phy.lp_advertising | 65536U;
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200592);
  ad_reg = (unsigned int )tmp;
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200595);
  lp_reg = (unsigned int )tmp___0;
  if ((lp_reg & 1024U) != 0U) {
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 8192U;
  } else {
  }
  if ((lp_reg & 2048U) != 0U) {
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 16384U;
  } else {
  }
  if (pdata->phy.pause_autoneg != 0) {
    pdata->phy.tx_pause = 0;
    pdata->phy.rx_pause = 0;
    if (((ad_reg & lp_reg) & 1024U) != 0U) {
      pdata->phy.tx_pause = 1;
      pdata->phy.rx_pause = 1;
    } else
    if (((ad_reg & lp_reg) & 2048U) != 0U) {
      if ((ad_reg & 1024U) != 0U) {
        pdata->phy.rx_pause = 1;
      } else
      if ((lp_reg & 1024U) != 0U) {
        pdata->phy.tx_pause = 1;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___1 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200593);
  ad_reg = (unsigned int )tmp___1;
  tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200596);
  lp_reg = (unsigned int )tmp___2;
  if ((lp_reg & 128U) != 0U) {
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 524288U;
  } else {
  }
  if ((lp_reg & 32U) != 0U) {
    switch (pdata->speed_set) {
    case 0U:
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 131072U;
    goto ldv_45916;
    case 1U:
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 32768U;
    goto ldv_45916;
    }
    ldv_45916: ;
  } else {
  }
  ad_reg = ad_reg & lp_reg;
  if ((ad_reg & 128U) != 0U) {
    pdata->phy.speed = 10000;
    xgbe_set_mode(pdata, 0);
  } else
  if ((ad_reg & 32U) != 0U) {
    switch (pdata->speed_set) {
    case 0U:
    pdata->phy.speed = 1000;
    goto ldv_45919;
    case 1U:
    pdata->phy.speed = 2500;
    goto ldv_45919;
    }
    ldv_45919:
    xgbe_set_mode(pdata, 1);
  } else {
    pdata->phy.speed = -1;
  }
  tmp___3 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200594);
  ad_reg = (unsigned int )tmp___3;
  tmp___4 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200597);
  lp_reg = (unsigned int )tmp___4;
  if ((lp_reg & 49152U) != 0U) {
    pdata->phy.lp_advertising = pdata->phy.lp_advertising | 1048576U;
  } else {
  }
  pdata->phy.duplex = 1;
  return;
}
}
static void xgbe_phy_status(struct xgbe_prv_data *pdata )
{
  unsigned int reg ;
  unsigned int link_aneg ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  tmp___0 = constant_test_bit(3L, (unsigned long const volatile *)(& pdata->dev_state));
  if (tmp___0 != 0) {
    tmp = test_and_clear_bit(1L, (unsigned long volatile *)(& pdata->dev_state));
    if (tmp != 0) {
      netif_carrier_off(pdata->netdev);
    } else {
    }
    pdata->phy.link = 0;
    goto adjust_link;
  } else {
  }
  link_aneg = pdata->phy.autoneg == 1;
  tmp___1 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938433);
  reg = (unsigned int )tmp___1;
  tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938433);
  reg = (unsigned int )tmp___2;
  pdata->phy.link = (reg & 4U) != 0U;
  if (pdata->phy.link != 0) {
    if (link_aneg != 0U) {
      tmp___3 = xgbe_phy_aneg_done(pdata);
      if (tmp___3) {
        tmp___4 = 0;
      } else {
        tmp___4 = 1;
      }
      if (tmp___4) {
        xgbe_check_link_timeout(pdata);
        return;
      } else {
      }
    } else {
    }
    xgbe_phy_status_aneg(pdata);
    tmp___5 = constant_test_bit(2L, (unsigned long const volatile *)(& pdata->dev_state));
    if (tmp___5 != 0) {
      clear_bit(2L, (unsigned long volatile *)(& pdata->dev_state));
    } else {
    }
    tmp___6 = constant_test_bit(1L, (unsigned long const volatile *)(& pdata->dev_state));
    if (tmp___6 == 0) {
      set_bit(1L, (unsigned long volatile *)(& pdata->dev_state));
      netif_carrier_on(pdata->netdev);
    } else {
    }
  } else {
    tmp___7 = constant_test_bit(2L, (unsigned long const volatile *)(& pdata->dev_state));
    if (tmp___7 != 0) {
      xgbe_check_link_timeout(pdata);
      if (link_aneg != 0U) {
        return;
      } else {
      }
    } else {
    }
    xgbe_phy_status_aneg(pdata);
    tmp___8 = constant_test_bit(1L, (unsigned long const volatile *)(& pdata->dev_state));
    if (tmp___8 != 0) {
      clear_bit(1L, (unsigned long volatile *)(& pdata->dev_state));
      netif_carrier_off(pdata->netdev);
    } else {
    }
  }
  adjust_link:
  xgbe_phy_adjust_link(pdata);
  return;
}
}
static void xgbe_phy_stop(struct xgbe_prv_data *pdata )
{
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  {
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_phy_stop";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "stopping PHY\n";
    descriptor.lineno = 1171U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "stopping PHY\n");
    } else {
    }
  } else {
  }
  xgbe_disable_an(pdata);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233345, 0);
  devm_free_irq(pdata->dev, (unsigned int )pdata->an_irq, (void *)pdata);
  pdata->phy.link = 0;
  tmp___0 = test_and_clear_bit(1L, (unsigned long volatile *)(& pdata->dev_state));
  if (tmp___0 != 0) {
    netif_carrier_off(pdata->netdev);
  } else {
  }
  xgbe_phy_adjust_link(pdata);
  return;
}
}
static int xgbe_phy_start(struct xgbe_prv_data *pdata )
{
  struct net_device *netdev ;
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  netdev = pdata->netdev;
  if ((pdata->msg_enable & 4U) != 0U) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_phy_start";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
    descriptor.format = "starting PHY\n";
    descriptor.lineno = 1193U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)pdata->netdev,
                           "starting PHY\n");
    } else {
    }
  } else {
  }
  ret = devm_request_irq(pdata->dev, (unsigned int )pdata->an_irq, & xgbe_an_isr,
                         0UL, (char const *)(& pdata->an_name), (void *)pdata);
  if (ret != 0) {
    netdev_err((struct net_device const *)netdev, "phy irq request failed\n");
    return (ret);
  } else {
  }
  tmp___2 = xgbe_use_xgmii_mode(pdata);
  if ((int )tmp___2) {
    xgbe_xgmii_mode(pdata);
  } else {
    tmp___1 = xgbe_use_gmii_mode(pdata);
    if ((int )tmp___1) {
      xgbe_gmii_mode(pdata);
    } else {
      tmp___0 = xgbe_use_gmii_2500_mode(pdata);
      if ((int )tmp___0) {
        xgbe_gmii_2500_mode(pdata);
      } else {
        ret = -22;
        goto err_irq;
      }
    }
  }
  xgbe_an_init(pdata);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233345, 7);
  tmp___3 = xgbe_phy_config_aneg(pdata);
  return (tmp___3);
  err_irq:
  devm_free_irq(pdata->dev, (unsigned int )pdata->an_irq, (void *)pdata);
  return (ret);
}
}
static int xgbe_phy_reset(struct xgbe_prv_data *pdata )
{
  unsigned int count ;
  unsigned int reg ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp;
  reg = reg | 32768U;
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1073938432, (int )reg);
  count = 50U;
  ldv_45945:
  msleep(20U);
  tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
  reg = (unsigned int )tmp___0;
  if ((reg & 32768U) != 0U) {
    count = count - 1U;
    if (count != 0U) {
      goto ldv_45945;
    } else {
      goto ldv_45946;
    }
  } else {
  }
  ldv_45946: ;
  if ((reg & 32768U) != 0U) {
    return (-110);
  } else {
  }
  xgbe_disable_an(pdata);
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, 1074233346, 0);
  return (0);
}
}
static void xgbe_dump_phy_registers(struct xgbe_prv_data *pdata )
{
  struct device *dev ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  int tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___1 ;
  int tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___2 ;
  int tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___3 ;
  int tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___4 ;
  int tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___5 ;
  int tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___6 ;
  int tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___7 ;
  int tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___8 ;
  int tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___9 ;
  int tmp___18 ;
  long tmp___19 ;
  struct _ddebug descriptor___10 ;
  int tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___11 ;
  int tmp___22 ;
  long tmp___23 ;
  struct _ddebug descriptor___12 ;
  long tmp___24 ;
  {
  dev = pdata->dev;
  descriptor.modname = "amd_xgbe";
  descriptor.function = "xgbe_dump_phy_registers";
  descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor.format = "\n************* PHY Reg dump **********************\n";
  descriptor.lineno = 1261U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)dev, "\n************* PHY Reg dump **********************\n");
  } else {
  }
  descriptor___0.modname = "amd_xgbe";
  descriptor___0.function = "xgbe_dump_phy_registers";
  descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___0.format = "PCS Control Reg (%#04x) = %#04x\n";
  descriptor___0.lineno = 1264U;
  descriptor___0.flags = 0U;
  tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938432);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)dev, "PCS Control Reg (%#04x) = %#04x\n",
                      0, tmp___0);
  } else {
  }
  descriptor___1.modname = "amd_xgbe";
  descriptor___1.function = "xgbe_dump_phy_registers";
  descriptor___1.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___1.format = "PCS Status Reg (%#04x) = %#04x\n";
  descriptor___1.lineno = 1266U;
  descriptor___1.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938433);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)dev, "PCS Status Reg (%#04x) = %#04x\n",
                      1, tmp___2);
  } else {
  }
  descriptor___2.modname = "amd_xgbe";
  descriptor___2.function = "xgbe_dump_phy_registers";
  descriptor___2.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___2.format = "Phy Id (PHYS ID 1 %#04x)= %#04x\n";
  descriptor___2.lineno = 1268U;
  descriptor___2.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938434);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)dev, "Phy Id (PHYS ID 1 %#04x)= %#04x\n",
                      2, tmp___4);
  } else {
  }
  descriptor___3.modname = "amd_xgbe";
  descriptor___3.function = "xgbe_dump_phy_registers";
  descriptor___3.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___3.format = "Phy Id (PHYS ID 2 %#04x)= %#04x\n";
  descriptor___3.lineno = 1270U;
  descriptor___3.flags = 0U;
  tmp___7 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938435);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)dev, "Phy Id (PHYS ID 2 %#04x)= %#04x\n",
                      3, tmp___6);
  } else {
  }
  descriptor___4.modname = "amd_xgbe";
  descriptor___4.function = "xgbe_dump_phy_registers";
  descriptor___4.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___4.format = "Devices in Package (%#04x)= %#04x\n";
  descriptor___4.lineno = 1272U;
  descriptor___4.flags = 0U;
  tmp___9 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938437);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)dev, "Devices in Package (%#04x)= %#04x\n",
                      5, tmp___8);
  } else {
  }
  descriptor___5.modname = "amd_xgbe";
  descriptor___5.function = "xgbe_dump_phy_registers";
  descriptor___5.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___5.format = "Devices in Package (%#04x)= %#04x\n";
  descriptor___5.lineno = 1274U;
  descriptor___5.flags = 0U;
  tmp___11 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073938438);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)dev, "Devices in Package (%#04x)= %#04x\n",
                      6, tmp___10);
  } else {
  }
  descriptor___6.modname = "amd_xgbe";
  descriptor___6.function = "xgbe_dump_phy_registers";
  descriptor___6.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___6.format = "Auto-Neg Control Reg (%#04x) = %#04x\n";
  descriptor___6.lineno = 1277U;
  descriptor___6.flags = 0U;
  tmp___13 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200576);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)dev, "Auto-Neg Control Reg (%#04x) = %#04x\n",
                      0, tmp___12);
  } else {
  }
  descriptor___7.modname = "amd_xgbe";
  descriptor___7.function = "xgbe_dump_phy_registers";
  descriptor___7.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___7.format = "Auto-Neg Status Reg (%#04x) = %#04x\n";
  descriptor___7.lineno = 1279U;
  descriptor___7.flags = 0U;
  tmp___15 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200577);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)dev, "Auto-Neg Status Reg (%#04x) = %#04x\n",
                      1, tmp___14);
  } else {
  }
  descriptor___8.modname = "amd_xgbe";
  descriptor___8.function = "xgbe_dump_phy_registers";
  descriptor___8.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___8.format = "Auto-Neg Ad Reg 1 (%#04x) = %#04x\n";
  descriptor___8.lineno = 1282U;
  descriptor___8.flags = 0U;
  tmp___17 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200592);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)dev, "Auto-Neg Ad Reg 1 (%#04x) = %#04x\n",
                      16, tmp___16);
  } else {
  }
  descriptor___9.modname = "amd_xgbe";
  descriptor___9.function = "xgbe_dump_phy_registers";
  descriptor___9.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___9.format = "Auto-Neg Ad Reg 2 (%#04x) = %#04x\n";
  descriptor___9.lineno = 1285U;
  descriptor___9.flags = 0U;
  tmp___19 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___19 != 0L) {
    tmp___18 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200593);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)dev, "Auto-Neg Ad Reg 2 (%#04x) = %#04x\n",
                      17, tmp___18);
  } else {
  }
  descriptor___10.modname = "amd_xgbe";
  descriptor___10.function = "xgbe_dump_phy_registers";
  descriptor___10.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___10.format = "Auto-Neg Ad Reg 3 (%#04x) = %#04x\n";
  descriptor___10.lineno = 1288U;
  descriptor___10.flags = 0U;
  tmp___21 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___21 != 0L) {
    tmp___20 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200594);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)dev, "Auto-Neg Ad Reg 3 (%#04x) = %#04x\n",
                      18, tmp___20);
  } else {
  }
  descriptor___11.modname = "amd_xgbe";
  descriptor___11.function = "xgbe_dump_phy_registers";
  descriptor___11.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___11.format = "Auto-Neg Completion Reg (%#04x) = %#04x\n";
  descriptor___11.lineno = 1291U;
  descriptor___11.flags = 0U;
  tmp___23 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___23 != 0L) {
    tmp___22 = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1074200624);
    __dynamic_dev_dbg(& descriptor___11, (struct device const *)dev, "Auto-Neg Completion Reg (%#04x) = %#04x\n",
                      48, tmp___22);
  } else {
  }
  descriptor___12.modname = "amd_xgbe";
  descriptor___12.function = "xgbe_dump_phy_registers";
  descriptor___12.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-mdio.c";
  descriptor___12.format = "\n*************************************************\n";
  descriptor___12.lineno = 1293U;
  descriptor___12.flags = 0U;
  tmp___24 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    __dynamic_dev_dbg(& descriptor___12, (struct device const *)dev, "\n*************************************************\n");
  } else {
  }
  return;
}
}
static void xgbe_phy_init___0(struct xgbe_prv_data *pdata )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  int tmp ;
  {
  __mutex_init(& pdata->an_mutex, "&pdata->an_mutex", & __key);
  __init_work(& pdata->an_irq_work, 0);
  __constr_expr_0.counter = 137438953408L;
  pdata->an_irq_work.data = __constr_expr_0;
  lockdep_init_map(& pdata->an_irq_work.lockdep_map, "(&pdata->an_irq_work)", & __key___0,
                   0);
  INIT_LIST_HEAD(& pdata->an_irq_work.entry);
  pdata->an_irq_work.func = & xgbe_an_irq_work;
  __init_work(& pdata->an_work, 0);
  __constr_expr_1.counter = 137438953408L;
  pdata->an_work.data = __constr_expr_1;
  lockdep_init_map(& pdata->an_work.lockdep_map, "(&pdata->an_work)", & __key___1,
                   0);
  INIT_LIST_HEAD(& pdata->an_work.entry);
  pdata->an_work.func = & xgbe_an_state_machine;
  pdata->mdio_mmd = 3;
  pdata->phy.supported = 64U;
  pdata->phy.supported = pdata->phy.supported | 24576U;
  pdata->phy.supported = pdata->phy.supported | 65536U;
  pdata->phy.supported = pdata->phy.supported | 524288U;
  switch (pdata->speed_set) {
  case 0U:
  pdata->phy.supported = pdata->phy.supported | 131072U;
  goto ldv_45975;
  case 1U:
  pdata->phy.supported = pdata->phy.supported | 32768U;
  goto ldv_45975;
  }
  ldv_45975:
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, 1073807530);
  pdata->fec_ability = (unsigned int )tmp;
  pdata->fec_ability = pdata->fec_ability & 3U;
  if ((int )pdata->fec_ability & 1) {
    pdata->phy.supported = pdata->phy.supported | 1048576U;
  } else {
  }
  pdata->phy.advertising = pdata->phy.supported;
  pdata->phy.address = 0;
  pdata->phy.autoneg = 1;
  pdata->phy.speed = -1;
  pdata->phy.duplex = 255;
  pdata->phy.link = 0;
  pdata->phy.pause_autoneg = (int )pdata->pause_autoneg;
  pdata->phy.tx_pause = (int )pdata->tx_pause;
  pdata->phy.rx_pause = (int )pdata->rx_pause;
  pdata->phy.advertising = pdata->phy.advertising & 4294959103U;
  pdata->phy.advertising = pdata->phy.advertising & 4294950911U;
  if (pdata->rx_pause != 0U) {
    pdata->phy.advertising = pdata->phy.advertising | 8192U;
    pdata->phy.advertising = pdata->phy.advertising | 16384U;
  } else {
  }
  if (pdata->tx_pause != 0U) {
    pdata->phy.advertising = pdata->phy.advertising ^ 16384U;
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    xgbe_dump_phy_registers(pdata);
  } else {
  }
  return;
}
}
void xgbe_init_function_ptrs_phy(struct xgbe_phy_if *phy_if )
{
  {
  phy_if->phy_init = & xgbe_phy_init___0;
  phy_if->phy_reset = & xgbe_phy_reset;
  phy_if->phy_start = & xgbe_phy_start;
  phy_if->phy_stop = & xgbe_phy_stop;
  phy_if->phy_status = & xgbe_phy_status;
  phy_if->phy_config_aneg = & xgbe_phy_config_aneg;
  return;
}
}
void activate_work_5(struct work_struct *work , int state )
{
  {
  if (ldv_work_5_0 == 0) {
    ldv_work_struct_5_0 = work;
    ldv_work_5_0 = state;
    return;
  } else {
  }
  if (ldv_work_5_1 == 0) {
    ldv_work_struct_5_1 = work;
    ldv_work_5_1 = state;
    return;
  } else {
  }
  if (ldv_work_5_2 == 0) {
    ldv_work_struct_5_2 = work;
    ldv_work_5_2 = state;
    return;
  } else {
  }
  if (ldv_work_5_3 == 0) {
    ldv_work_struct_5_3 = work;
    ldv_work_5_3 = state;
    return;
  } else {
  }
  return;
}
}
void work_init_5(void)
{
  {
  ldv_work_5_0 = 0;
  ldv_work_5_1 = 0;
  ldv_work_5_2 = 0;
  ldv_work_5_3 = 0;
  return;
}
}
void call_and_disable_all_4(int state )
{
  {
  if (ldv_work_4_0 == state) {
    call_and_disable_work_4(ldv_work_struct_4_0);
  } else {
  }
  if (ldv_work_4_1 == state) {
    call_and_disable_work_4(ldv_work_struct_4_1);
  } else {
  }
  if (ldv_work_4_2 == state) {
    call_and_disable_work_4(ldv_work_struct_4_2);
  } else {
  }
  if (ldv_work_4_3 == state) {
    call_and_disable_work_4(ldv_work_struct_4_3);
  } else {
  }
  return;
}
}
void disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 3 || ldv_work_5_0 == 2) && (unsigned long )ldv_work_struct_5_0 == (unsigned long )work) {
    ldv_work_5_0 = 1;
  } else {
  }
  if ((ldv_work_5_1 == 3 || ldv_work_5_1 == 2) && (unsigned long )ldv_work_struct_5_1 == (unsigned long )work) {
    ldv_work_5_1 = 1;
  } else {
  }
  if ((ldv_work_5_2 == 3 || ldv_work_5_2 == 2) && (unsigned long )ldv_work_struct_5_2 == (unsigned long )work) {
    ldv_work_5_2 = 1;
  } else {
  }
  if ((ldv_work_5_3 == 3 || ldv_work_5_3 == 2) && (unsigned long )ldv_work_struct_5_3 == (unsigned long )work) {
    ldv_work_5_3 = 1;
  } else {
  }
  return;
}
}
void invoke_work_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_4_0 == 2 || ldv_work_4_0 == 3) {
    ldv_work_4_0 = 4;
    xgbe_an_irq_work(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_45999;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    xgbe_an_irq_work(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_45999;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    xgbe_an_irq_work(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_45999;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    xgbe_an_irq_work(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_45999;
  default:
  ldv_stop();
  }
  ldv_45999: ;
  return;
}
}
void call_and_disable_work_5(struct work_struct *work )
{
  {
  if ((ldv_work_5_0 == 2 || ldv_work_5_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_0) {
    xgbe_an_state_machine(work);
    ldv_work_5_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_1 == 2 || ldv_work_5_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_1) {
    xgbe_an_state_machine(work);
    ldv_work_5_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_2 == 2 || ldv_work_5_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_2) {
    xgbe_an_state_machine(work);
    ldv_work_5_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_5_3 == 2 || ldv_work_5_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_5_3) {
    xgbe_an_state_machine(work);
    ldv_work_5_3 = 1;
    return;
  } else {
  }
  return;
}
}
void activate_work_4(struct work_struct *work , int state )
{
  {
  if (ldv_work_4_0 == 0) {
    ldv_work_struct_4_0 = work;
    ldv_work_4_0 = state;
    return;
  } else {
  }
  if (ldv_work_4_1 == 0) {
    ldv_work_struct_4_1 = work;
    ldv_work_4_1 = state;
    return;
  } else {
  }
  if (ldv_work_4_2 == 0) {
    ldv_work_struct_4_2 = work;
    ldv_work_4_2 = state;
    return;
  } else {
  }
  if (ldv_work_4_3 == 0) {
    ldv_work_struct_4_3 = work;
    ldv_work_4_3 = state;
    return;
  } else {
  }
  return;
}
}
void call_and_disable_all_5(int state )
{
  {
  if (ldv_work_5_0 == state) {
    call_and_disable_work_5(ldv_work_struct_5_0);
  } else {
  }
  if (ldv_work_5_1 == state) {
    call_and_disable_work_5(ldv_work_struct_5_1);
  } else {
  }
  if (ldv_work_5_2 == state) {
    call_and_disable_work_5(ldv_work_struct_5_2);
  } else {
  }
  if (ldv_work_5_3 == state) {
    call_and_disable_work_5(ldv_work_struct_5_3);
  } else {
  }
  return;
}
}
void invoke_work_5(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_5_0 == 2 || ldv_work_5_0 == 3) {
    ldv_work_5_0 = 4;
    xgbe_an_state_machine(ldv_work_struct_5_0);
    ldv_work_5_0 = 1;
  } else {
  }
  goto ldv_46022;
  case 1: ;
  if (ldv_work_5_1 == 2 || ldv_work_5_1 == 3) {
    ldv_work_5_1 = 4;
    xgbe_an_state_machine(ldv_work_struct_5_0);
    ldv_work_5_1 = 1;
  } else {
  }
  goto ldv_46022;
  case 2: ;
  if (ldv_work_5_2 == 2 || ldv_work_5_2 == 3) {
    ldv_work_5_2 = 4;
    xgbe_an_state_machine(ldv_work_struct_5_0);
    ldv_work_5_2 = 1;
  } else {
  }
  goto ldv_46022;
  case 3: ;
  if (ldv_work_5_3 == 2 || ldv_work_5_3 == 3) {
    ldv_work_5_3 = 4;
    xgbe_an_state_machine(ldv_work_struct_5_0);
    ldv_work_5_3 = 1;
  } else {
  }
  goto ldv_46022;
  default:
  ldv_stop();
  }
  ldv_46022: ;
  return;
}
}
void disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 3 || ldv_work_4_0 == 2) && (unsigned long )ldv_work_struct_4_0 == (unsigned long )work) {
    ldv_work_4_0 = 1;
  } else {
  }
  if ((ldv_work_4_1 == 3 || ldv_work_4_1 == 2) && (unsigned long )ldv_work_struct_4_1 == (unsigned long )work) {
    ldv_work_4_1 = 1;
  } else {
  }
  if ((ldv_work_4_2 == 3 || ldv_work_4_2 == 2) && (unsigned long )ldv_work_struct_4_2 == (unsigned long )work) {
    ldv_work_4_2 = 1;
  } else {
  }
  if ((ldv_work_4_3 == 3 || ldv_work_4_3 == 2) && (unsigned long )ldv_work_struct_4_3 == (unsigned long )work) {
    ldv_work_4_3 = 1;
  } else {
  }
  return;
}
}
void work_init_4(void)
{
  {
  ldv_work_4_0 = 0;
  ldv_work_4_1 = 0;
  ldv_work_4_2 = 0;
  ldv_work_4_3 = 0;
  return;
}
}
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    xgbe_an_irq_work(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    xgbe_an_irq_work(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    xgbe_an_irq_work(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    xgbe_an_irq_work(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_284(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_285(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_286(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_287(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_288(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_300(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_302(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_304(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_305(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_306(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_307(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_308(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_309(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_310(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
bool ldv_flush_work_311(struct work_struct *ldv_func_arg1 )
{
  ldv_func_ret_type___10 ldv_func_res ;
  bool tmp ;
  {
  tmp = flush_work(ldv_func_arg1);
  ldv_func_res = tmp;
  call_and_disable_work_2(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static u64 div_u64_rem(u64 dividend , u32 divisor , u32 *remainder )
{
  {
  *remainder = (u32 )(dividend % (u64 )divisor);
  return (dividend / (u64 )divisor);
}
}
__inline static u64 div_u64(u64 dividend , u32 divisor )
{
  u32 remainder ;
  u64 tmp ;
  {
  tmp = div_u64_rem(dividend, divisor, & remainder);
  return (tmp);
}
}
__inline static bool IS_ERR(void const *ptr ) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
__inline static s64 timespec_to_ns(struct timespec const *ts )
{
  {
  return ((long long )ts->tv_sec * 1000000000LL + (long long )ts->tv_nsec);
}
}
extern struct timespec ns_to_timespec(s64 const ) ;
bool ldv_queue_work_on_332(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_334(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_333(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_335(struct workqueue_struct *ldv_func_arg1 ) ;
extern struct ptp_clock *ptp_clock_register(struct ptp_clock_info * , struct device * ) ;
extern int ptp_clock_unregister(struct ptp_clock * ) ;
struct sk_buff *ldv_skb_clone_350(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_358(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_352(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_348(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_356(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_357(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_353(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_354(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_355(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
__inline static void timecounter_adjtime(struct timecounter *tc , s64 delta )
{
  {
  tc->nsec = tc->nsec + (unsigned long long )delta;
  return;
}
}
extern u64 timecounter_read(struct timecounter * ) ;
static cycle_t xgbe_cc_read(struct cyclecounter const *cc )
{
  struct xgbe_prv_data *pdata ;
  struct cyclecounter const *__mptr ;
  u64 nsec ;
  {
  __mptr = cc;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff0b8UL;
  nsec = (*(pdata->hw_if.get_tstamp_time))(pdata);
  return (nsec);
}
}
static int xgbe_adjfreq(struct ptp_clock_info *info , s32 delta )
{
  struct xgbe_prv_data *pdata ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u64 adjust ;
  u32 addend ;
  u32 diff ;
  unsigned int neg_adjust ;
  u64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)info;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff138UL;
  neg_adjust = 0U;
  if (delta < 0) {
    neg_adjust = 1U;
    delta = - delta;
  } else {
  }
  adjust = (u64 )pdata->tstamp_addend;
  adjust = (u64 )delta * adjust;
  tmp = div_u64(adjust, 1000000000U);
  diff = (u32 )tmp;
  addend = neg_adjust != 0U ? pdata->tstamp_addend - diff : pdata->tstamp_addend + diff;
  ldv_spin_lock();
  (*(pdata->hw_if.update_tstamp_addend))(pdata, addend);
  spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  return (0);
}
}
static int xgbe_adjtime(struct ptp_clock_info *info , s64 delta )
{
  struct xgbe_prv_data *pdata ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  {
  __mptr = (struct ptp_clock_info const *)info;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff138UL;
  ldv_spin_lock();
  timecounter_adjtime(& pdata->tstamp_tc, delta);
  spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  return (0);
}
}
static int xgbe_gettime(struct ptp_clock_info *info , struct timespec *ts )
{
  struct xgbe_prv_data *pdata ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u64 nsec ;
  {
  __mptr = (struct ptp_clock_info const *)info;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff138UL;
  ldv_spin_lock();
  nsec = timecounter_read(& pdata->tstamp_tc);
  spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  *ts = ns_to_timespec((s64 const )nsec);
  return (0);
}
}
static int xgbe_settime(struct ptp_clock_info *info , struct timespec const *ts )
{
  struct xgbe_prv_data *pdata ;
  struct ptp_clock_info const *__mptr ;
  unsigned long flags ;
  u64 nsec ;
  s64 tmp ;
  {
  __mptr = (struct ptp_clock_info const *)info;
  pdata = (struct xgbe_prv_data *)__mptr + 0xfffffffffffff138UL;
  tmp = timespec_to_ns(ts);
  nsec = (u64 )tmp;
  ldv_spin_lock();
  timecounter_init(& pdata->tstamp_tc, (struct cyclecounter const *)(& pdata->tstamp_cc),
                   nsec);
  spin_unlock_irqrestore(& pdata->tstamp_lock, flags);
  return (0);
}
}
static int xgbe_enable(struct ptp_clock_info *info , struct ptp_clock_request *request ,
                       int on )
{
  {
  return (-95);
}
}
void xgbe_ptp_register(struct xgbe_prv_data *pdata )
{
  struct ptp_clock_info *info ;
  struct ptp_clock *clock ;
  struct cyclecounter *cc ;
  u64 dividend ;
  char const *tmp ;
  bool tmp___0 ;
  u64 tmp___1 ;
  ktime_t tmp___2 ;
  {
  info = & pdata->ptp_clock_info;
  cc = & pdata->tstamp_cc;
  tmp = netdev_name((struct net_device const *)pdata->netdev);
  snprintf((char *)(& info->name), 16UL, "%s", tmp);
  info->owner = & __this_module;
  info->max_adj = (s32 )pdata->ptpclk_rate;
  info->adjfreq = & xgbe_adjfreq;
  info->adjtime = & xgbe_adjtime;
  info->gettime64 = & xgbe_gettime;
  info->settime64 = & xgbe_settime;
  info->enable = & xgbe_enable;
  clock = ptp_clock_register(info, pdata->dev);
  tmp___0 = IS_ERR((void const *)clock);
  if ((int )tmp___0) {
    dev_err((struct device const *)pdata->dev, "ptp_clock_register failed\n");
    return;
  } else {
  }
  pdata->ptp_clock = clock;
  dividend = 50000000ULL;
  dividend = dividend << 32;
  tmp___1 = div_u64(dividend, (u32 )pdata->ptpclk_rate);
  pdata->tstamp_addend = (unsigned int )tmp___1;
  cc->read = & xgbe_cc_read;
  cc->mask = 0xffffffffffffffffULL;
  cc->mult = 1U;
  cc->shift = 0U;
  tmp___2 = ktime_get_real();
  timecounter_init(& pdata->tstamp_tc, (struct cyclecounter const *)(& pdata->tstamp_cc),
                   (u64 )tmp___2.tv64);
  iowrite32(0U, pdata->xgmac_regs);
  pdata->tstamp_config.tx_type = 0;
  pdata->tstamp_config.rx_filter = 0;
  return;
}
}
void xgbe_ptp_unregister(struct xgbe_prv_data *pdata )
{
  {
  if ((unsigned long )pdata->ptp_clock != (unsigned long )((struct ptp_clock *)0)) {
    ptp_clock_unregister(pdata->ptp_clock);
  } else {
  }
  return;
}
}
bool ldv_queue_work_on_332(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_333(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_334(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_335(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_336(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_348(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_350(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_352(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_353(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_354(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_355(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_356(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_357(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_358(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
__inline static long ldv__builtin_expect(long exp , long c ) ;
bool ldv_queue_work_on_378(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_380(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_379(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_382(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_381(struct workqueue_struct *ldv_func_arg1 ) ;
extern void *devm_kmalloc(struct device * , size_t , gfp_t ) ;
__inline static void *devm_kzalloc(struct device *dev , size_t size , gfp_t gfp )
{
  void *tmp ;
  {
  tmp = devm_kmalloc(dev, size, gfp | 32768U);
  return (tmp);
}
}
struct sk_buff *ldv_skb_clone_396(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_404(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_398(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_394(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_402(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_403(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_399(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_400(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_401(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static int xgbe_dcb_ieee_getets(struct net_device *netdev , struct ieee_ets *ets )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  ets->ets_cap = (__u8 )pdata->hw_feat.tc_cnt;
  if ((unsigned long )pdata->ets != (unsigned long )((struct ieee_ets *)0)) {
    ets->cbs = (pdata->ets)->cbs;
    memmove((void *)(& ets->tc_tx_bw), (void const *)(& (pdata->ets)->tc_tx_bw),
             8UL);
    memmove((void *)(& ets->tc_tsa), (void const *)(& (pdata->ets)->tc_tsa), 8UL);
    memmove((void *)(& ets->prio_tc), (void const *)(& (pdata->ets)->prio_tc),
             8UL);
  } else {
  }
  return (0);
}
}
static int xgbe_dcb_ieee_setets(struct net_device *netdev , struct ieee_ets *ets )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  unsigned int i ;
  unsigned int tc_ets ;
  unsigned int tc_ets_weight ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  tc_ets = 0U;
  tc_ets_weight = 0U;
  i = 0U;
  goto ldv_45583;
  ldv_45582: ;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_dcb_ieee_setets";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dcb.c";
    descriptor.format = "TC%u: tx_bw=%hhu, rx_bw=%hhu, tsa=%hhu\n";
    descriptor.lineno = 156U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "TC%u: tx_bw=%hhu, rx_bw=%hhu, tsa=%hhu\n",
                           i, (int )ets->tc_tx_bw[i], (int )ets->tc_rx_bw[i], (int )ets->tc_tsa[i]);
    } else {
    }
  } else {
  }
  if ((int )pdata->msg_enable & 1) {
    descriptor___0.modname = "amd_xgbe";
    descriptor___0.function = "xgbe_dcb_ieee_setets";
    descriptor___0.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dcb.c";
    descriptor___0.format = "PRIO%u: TC=%hhu\n";
    descriptor___0.lineno = 158U;
    descriptor___0.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor___0, (struct net_device const *)netdev,
                           "PRIO%u: TC=%hhu\n", i, (int )ets->prio_tc[i]);
    } else {
    }
  } else {
  }
  if (((unsigned int )ets->tc_tx_bw[i] != 0U || (unsigned int )ets->tc_tsa[i] != 0U) && pdata->hw_feat.tc_cnt <= i) {
    return (-22);
  } else {
  }
  if ((unsigned int )ets->prio_tc[i] >= pdata->hw_feat.tc_cnt) {
    return (-22);
  } else {
  }
  switch ((int )ets->tc_tsa[i]) {
  case 0: ;
  goto ldv_45579;
  case 2:
  tc_ets = 1U;
  tc_ets_weight = (unsigned int )ets->tc_tx_bw[i] + tc_ets_weight;
  goto ldv_45579;
  default: ;
  return (-22);
  }
  ldv_45579:
  i = i + 1U;
  ldv_45583: ;
  if (i <= 7U) {
    goto ldv_45582;
  } else {
  }
  if (tc_ets != 0U && tc_ets_weight != 100U) {
    return (-22);
  } else {
  }
  if ((unsigned long )pdata->ets == (unsigned long )((struct ieee_ets *)0)) {
    tmp___2 = devm_kzalloc(pdata->dev, 59UL, 208U);
    pdata->ets = (struct ieee_ets *)tmp___2;
    if ((unsigned long )pdata->ets == (unsigned long )((struct ieee_ets *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  memcpy((void *)pdata->ets, (void const *)ets, 59UL);
  (*(pdata->hw_if.config_dcb_tc))(pdata);
  return (0);
}
}
static int xgbe_dcb_ieee_getpfc(struct net_device *netdev , struct ieee_pfc *pfc )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  pfc->pfc_cap = (__u8 )pdata->hw_feat.tc_cnt;
  if ((unsigned long )pdata->pfc != (unsigned long )((struct ieee_pfc *)0)) {
    pfc->pfc_en = (pdata->pfc)->pfc_en;
    pfc->mbc = (pdata->pfc)->mbc;
    pfc->delay = (pdata->pfc)->delay;
  } else {
  }
  return (0);
}
}
static int xgbe_dcb_ieee_setpfc(struct net_device *netdev , struct ieee_pfc *pfc )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_dcb_ieee_setpfc";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dcb.c";
    descriptor.format = "cap=%hhu, en=%#hhx, mbc=%hhu, delay=%hhu\n";
    descriptor.lineno = 222U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "cap=%hhu, en=%#hhx, mbc=%hhu, delay=%hhu\n",
                           (int )pfc->pfc_cap, (int )pfc->pfc_en, (int )pfc->mbc,
                           (int )pfc->delay);
    } else {
    }
  } else {
  }
  if ((unsigned long )pdata->pfc == (unsigned long )((struct ieee_pfc *)0)) {
    tmp___1 = devm_kzalloc(pdata->dev, 136UL, 208U);
    pdata->pfc = (struct ieee_pfc *)tmp___1;
    if ((unsigned long )pdata->pfc == (unsigned long )((struct ieee_pfc *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  memmove((void *)pdata->pfc, (void const *)pfc, 136UL);
  (*(pdata->hw_if.config_dcb_pfc))(pdata);
  return (0);
}
}
static u8 xgbe_dcb_getdcbx(struct net_device *netdev )
{
  {
  return (9U);
}
}
static u8 xgbe_dcb_setdcbx(struct net_device *netdev , u8 dcbx )
{
  struct xgbe_prv_data *pdata ;
  void *tmp ;
  u8 support ;
  u8 tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  pdata = (struct xgbe_prv_data *)tmp;
  tmp___0 = xgbe_dcb_getdcbx(netdev);
  support = tmp___0;
  if ((int )pdata->msg_enable & 1) {
    descriptor.modname = "amd_xgbe";
    descriptor.function = "xgbe_dcb_setdcbx";
    descriptor.filename = "/home/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--43_2a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/10730/dscv_tempdir/dscv/ri/43_2a/drivers/net/ethernet/amd/xgbe/xgbe-dcb.c";
    descriptor.format = "DCBX=%#hhx\n";
    descriptor.lineno = 248U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_netdev_dbg(& descriptor, (struct net_device const *)netdev, "DCBX=%#hhx\n",
                           (int )dcbx);
    } else {
    }
  } else {
  }
  if (((int )dcbx & ~ ((int )support)) != 0) {
    return (1U);
  } else {
  }
  if (((int )dcbx & (int )support) != (int )support) {
    return (1U);
  } else {
  }
  return (0U);
}
}
static struct dcbnl_rtnl_ops const xgbe_dcbnl_ops =
     {& xgbe_dcb_ieee_getets, & xgbe_dcb_ieee_setets, 0, 0, 0, 0, 0, & xgbe_dcb_ieee_getpfc,
    & xgbe_dcb_ieee_setpfc, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & xgbe_dcb_getdcbx, & xgbe_dcb_setdcbx,
    0, 0, 0, 0};
struct dcbnl_rtnl_ops const *xgbe_get_dcbnl_ops(void)
{
  {
  return (& xgbe_dcbnl_ops);
}
}
void ldv_initialize_dcbnl_rtnl_ops_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = ldv_init_zalloc(3008UL);
  xgbe_dcbnl_ops_group0 = (struct net_device *)tmp;
  tmp___0 = ldv_init_zalloc(136UL);
  xgbe_dcbnl_ops_group1 = (struct ieee_pfc *)tmp___0;
  tmp___1 = ldv_init_zalloc(59UL);
  xgbe_dcbnl_ops_group2 = (struct ieee_ets *)tmp___1;
  return;
}
}
void ldv_main_exported_13(void)
{
  u8 ldvarg6 ;
  int tmp ;
  {
  ldv_memset((void *)(& ldvarg6), 0, 1UL);
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_ieee_getets(xgbe_dcbnl_ops_group0, xgbe_dcbnl_ops_group2);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  case 1: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_ieee_setets(xgbe_dcbnl_ops_group0, xgbe_dcbnl_ops_group2);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  case 2: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_ieee_getpfc(xgbe_dcbnl_ops_group0, xgbe_dcbnl_ops_group1);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  case 3: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_setdcbx(xgbe_dcbnl_ops_group0, (int )ldvarg6);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  case 4: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_getdcbx(xgbe_dcbnl_ops_group0);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  case 5: ;
  if (ldv_state_variable_13 == 1) {
    xgbe_dcb_ieee_setpfc(xgbe_dcbnl_ops_group0, xgbe_dcbnl_ops_group1);
    ldv_state_variable_13 = 1;
  } else {
  }
  goto ldv_45620;
  default:
  ldv_stop();
  }
  ldv_45620: ;
  return;
}
}
bool ldv_queue_work_on_378(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_379(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_380(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_381(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_382(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_394(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_396(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_398(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_399(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_400(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_401(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_402(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_403(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_404(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
extern int kstrtouint(char const * , unsigned int , unsigned int * ) ;
extern char *kasprintf(gfp_t , char const * , ...) ;
extern size_t strlen(char const * ) ;
bool ldv_queue_work_on_424(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_426(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_425(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_428(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_427(struct workqueue_struct *ldv_func_arg1 ) ;
extern int simple_open(struct inode * , struct file * ) ;
extern ssize_t simple_read_from_buffer(void * , size_t , loff_t * , void const * ,
                                       size_t ) ;
extern ssize_t simple_write_to_buffer(void * , size_t , loff_t * , void const * ,
                                      size_t ) ;
extern struct dentry *debugfs_create_file(char const * , umode_t , struct dentry * ,
                                          void * , struct file_operations const * ) ;
extern struct dentry *debugfs_create_dir(char const * , struct dentry * ) ;
extern void debugfs_remove_recursive(struct dentry * ) ;
struct sk_buff *ldv_skb_clone_442(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_450(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_444(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_440(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_448(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
int ldv_pskb_expand_head_449(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_445(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_446(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_447(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags ) ;
static ssize_t xgbe_common_read(char *buffer , size_t count , loff_t *ppos , unsigned int value )
{
  char *buf ;
  ssize_t len ;
  size_t tmp ;
  size_t tmp___0 ;
  {
  if (*ppos != 0LL) {
    return (0L);
  } else {
  }
  buf = kasprintf(208U, "0x%08x\n", value);
  if ((unsigned long )buf == (unsigned long )((char *)0)) {
    return (-12L);
  } else {
  }
  tmp = strlen((char const *)buf);
  if (tmp > count) {
    kfree((void const *)buf);
    return (-28L);
  } else {
  }
  tmp___0 = strlen((char const *)buf);
  len = simple_read_from_buffer((void *)buffer, count, ppos, (void const *)buf,
                                tmp___0);
  kfree((void const *)buf);
  return (len);
}
}
static ssize_t xgbe_common_write(char const *buffer , size_t count , loff_t *ppos ,
                                 unsigned int *value )
{
  char workarea[32U] ;
  ssize_t len ;
  int ret ;
  {
  if (*ppos != 0LL) {
    return (0L);
  } else {
  }
  if (count > 31UL) {
    return (-28L);
  } else {
  }
  len = simple_write_to_buffer((void *)(& workarea), 31UL, ppos, (void const *)buffer,
                               count);
  if (len < 0L) {
    return (len);
  } else {
  }
  workarea[len] = 0;
  ret = kstrtouint((char const *)(& workarea), 16U, value);
  if (ret != 0) {
    return (-5L);
  } else {
  }
  return (len);
}
}
static ssize_t xgmac_reg_addr_read(struct file *filp , char *buffer , size_t count ,
                                   loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_read(buffer, count, ppos, pdata->debugfs_xgmac_reg);
  return (tmp);
}
}
static ssize_t xgmac_reg_addr_write(struct file *filp , char const *buffer , size_t count ,
                                    loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_write(buffer, count, ppos, & pdata->debugfs_xgmac_reg);
  return (tmp);
}
}
static ssize_t xgmac_reg_value_read(struct file *filp , char *buffer , size_t count ,
                                    loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  unsigned int value ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  value = ioread32(pdata->xgmac_regs + (unsigned long )pdata->debugfs_xgmac_reg);
  tmp = xgbe_common_read(buffer, count, ppos, value);
  return (tmp);
}
}
static ssize_t xgmac_reg_value_write(struct file *filp , char const *buffer , size_t count ,
                                     loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  unsigned int value ;
  ssize_t len ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  len = xgbe_common_write(buffer, count, ppos, & value);
  if (len < 0L) {
    return (len);
  } else {
  }
  iowrite32(value, pdata->xgmac_regs + (unsigned long )pdata->debugfs_xgmac_reg);
  return (len);
}
}
static struct file_operations const xgmac_reg_addr_fops =
     {& __this_module, 0, & xgmac_reg_addr_read, & xgmac_reg_addr_write, 0, 0, 0, 0,
    0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const xgmac_reg_value_fops =
     {& __this_module, 0, & xgmac_reg_value_read, & xgmac_reg_value_write, 0, 0, 0,
    0, 0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static ssize_t xpcs_mmd_read(struct file *filp , char *buffer , size_t count , loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_read(buffer, count, ppos, pdata->debugfs_xpcs_mmd);
  return (tmp);
}
}
static ssize_t xpcs_mmd_write(struct file *filp , char const *buffer , size_t count ,
                              loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_write(buffer, count, ppos, & pdata->debugfs_xpcs_mmd);
  return (tmp);
}
}
static ssize_t xpcs_reg_addr_read(struct file *filp , char *buffer , size_t count ,
                                  loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_read(buffer, count, ppos, pdata->debugfs_xpcs_reg);
  return (tmp);
}
}
static ssize_t xpcs_reg_addr_write(struct file *filp , char const *buffer , size_t count ,
                                   loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  ssize_t tmp ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = xgbe_common_write(buffer, count, ppos, & pdata->debugfs_xpcs_reg);
  return (tmp);
}
}
static ssize_t xpcs_reg_value_read(struct file *filp , char *buffer , size_t count ,
                                   loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  unsigned int value ;
  int tmp ;
  ssize_t tmp___0 ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  tmp = (*(pdata->hw_if.read_mmd_regs))(pdata, 0, (int )(((pdata->debugfs_xpcs_mmd << 16) | (pdata->debugfs_xpcs_reg & 65535U)) | 1073741824U));
  value = (unsigned int )tmp;
  tmp___0 = xgbe_common_read(buffer, count, ppos, value);
  return (tmp___0);
}
}
static ssize_t xpcs_reg_value_write(struct file *filp , char const *buffer , size_t count ,
                                    loff_t *ppos )
{
  struct xgbe_prv_data *pdata ;
  unsigned int value ;
  ssize_t len ;
  {
  pdata = (struct xgbe_prv_data *)filp->private_data;
  len = xgbe_common_write(buffer, count, ppos, & value);
  if (len < 0L) {
    return (len);
  } else {
  }
  (*(pdata->hw_if.write_mmd_regs))(pdata, 0, (int )(((pdata->debugfs_xpcs_mmd << 16) | (pdata->debugfs_xpcs_reg & 65535U)) | 1073741824U),
                                   (int )value);
  return (len);
}
}
static struct file_operations const xpcs_mmd_fops =
     {& __this_module, 0, & xpcs_mmd_read, & xpcs_mmd_write, 0, 0, 0, 0, 0, 0, 0, 0,
    & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const xpcs_reg_addr_fops =
     {& __this_module, 0, & xpcs_reg_addr_read, & xpcs_reg_addr_write, 0, 0, 0, 0, 0,
    0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct file_operations const xpcs_reg_value_fops =
     {& __this_module, 0, & xpcs_reg_value_read, & xpcs_reg_value_write, 0, 0, 0, 0,
    0, 0, 0, 0, & simple_open, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void xgbe_debugfs_init(struct xgbe_prv_data *pdata )
{
  struct dentry *pfile ;
  char *buf ;
  {
  pdata->debugfs_xgmac_reg = 0U;
  pdata->debugfs_xpcs_mmd = 1U;
  pdata->debugfs_xpcs_reg = 0U;
  buf = kasprintf(208U, "amd-xgbe-%s", (char *)(& (pdata->netdev)->name));
  pdata->xgbe_debugfs = debugfs_create_dir((char const *)buf, (struct dentry *)0);
  if ((unsigned long )pdata->xgbe_debugfs == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_dir failed\n");
    return;
  } else {
  }
  pfile = debugfs_create_file("xgmac_register", 384, pdata->xgbe_debugfs, (void *)pdata,
                              & xgmac_reg_addr_fops);
  if ((unsigned long )pfile == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_file failed\n");
  } else {
  }
  pfile = debugfs_create_file("xgmac_register_value", 384, pdata->xgbe_debugfs, (void *)pdata,
                              & xgmac_reg_value_fops);
  if ((unsigned long )pfile == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_file failed\n");
  } else {
  }
  pfile = debugfs_create_file("xpcs_mmd", 384, pdata->xgbe_debugfs, (void *)pdata,
                              & xpcs_mmd_fops);
  if ((unsigned long )pfile == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_file failed\n");
  } else {
  }
  pfile = debugfs_create_file("xpcs_register", 384, pdata->xgbe_debugfs, (void *)pdata,
                              & xpcs_reg_addr_fops);
  if ((unsigned long )pfile == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_file failed\n");
  } else {
  }
  pfile = debugfs_create_file("xpcs_register_value", 384, pdata->xgbe_debugfs, (void *)pdata,
                              & xpcs_reg_value_fops);
  if ((unsigned long )pfile == (unsigned long )((struct dentry *)0)) {
    netdev_err((struct net_device const *)pdata->netdev, "debugfs_create_file failed\n");
  } else {
  }
  kfree((void const *)buf);
  return;
}
}
void xgbe_debugfs_exit(struct xgbe_prv_data *pdata )
{
  {
  debugfs_remove_recursive(pdata->xgbe_debugfs);
  pdata->xgbe_debugfs = (struct dentry *)0;
  return;
}
}
extern int ldv_release_11(void) ;
extern int ldv_release_9(void) ;
int ldv_retval_24 ;
extern int ldv_release_8(void) ;
int ldv_retval_0 ;
extern int ldv_release_12(void) ;
int ldv_retval_23 ;
int ldv_retval_28 ;
extern int ldv_release_10(void) ;
int ldv_retval_27 ;
void ldv_file_operations_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  xpcs_reg_addr_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  xpcs_reg_addr_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  xgmac_reg_addr_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  xgmac_reg_addr_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  xpcs_mmd_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  xpcs_mmd_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_8(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  xpcs_reg_value_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  xpcs_reg_value_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_file_operations_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_init_zalloc(1000UL);
  xgmac_reg_value_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_init_zalloc(504UL);
  xgmac_reg_value_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_main_exported_8(void)
{
  loff_t *ldvarg46 ;
  void *tmp ;
  size_t ldvarg47 ;
  size_t ldvarg50 ;
  loff_t *ldvarg49 ;
  void *tmp___0 ;
  char *ldvarg51 ;
  void *tmp___1 ;
  char *ldvarg48 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg46 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg49 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg51 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg48 = (char *)tmp___2;
  ldv_memset((void *)(& ldvarg47), 0, 8UL);
  ldv_memset((void *)(& ldvarg50), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_8 == 1) {
    ldv_retval_27 = simple_open(xpcs_reg_value_fops_group1, xpcs_reg_value_fops_group2);
    if (ldv_retval_27 == 0) {
      ldv_state_variable_8 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45841;
  case 1: ;
  if (ldv_state_variable_8 == 2) {
    xpcs_reg_value_write(xpcs_reg_value_fops_group2, (char const *)ldvarg51, ldvarg50,
                         ldvarg49);
    ldv_state_variable_8 = 2;
  } else {
  }
  if (ldv_state_variable_8 == 1) {
    xpcs_reg_value_write(xpcs_reg_value_fops_group2, (char const *)ldvarg51, ldvarg50,
                         ldvarg49);
    ldv_state_variable_8 = 1;
  } else {
  }
  goto ldv_45841;
  case 2: ;
  if (ldv_state_variable_8 == 2) {
    xpcs_reg_value_read(xpcs_reg_value_fops_group2, ldvarg48, ldvarg47, ldvarg46);
    ldv_state_variable_8 = 2;
  } else {
  }
  goto ldv_45841;
  case 3: ;
  if (ldv_state_variable_8 == 2) {
    ldv_release_8();
    ldv_state_variable_8 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45841;
  default:
  ldv_stop();
  }
  ldv_45841: ;
  return;
}
}
void ldv_main_exported_11(void)
{
  char *ldvarg2 ;
  void *tmp ;
  char *ldvarg5 ;
  void *tmp___0 ;
  loff_t *ldvarg0 ;
  void *tmp___1 ;
  loff_t *ldvarg3 ;
  void *tmp___2 ;
  size_t ldvarg4 ;
  size_t ldvarg1 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg2 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg5 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg0 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg3 = (loff_t *)tmp___2;
  ldv_memset((void *)(& ldvarg4), 0, 8UL);
  ldv_memset((void *)(& ldvarg1), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_11 == 1) {
    ldv_retval_0 = simple_open(xgmac_reg_value_fops_group1, xgmac_reg_value_fops_group2);
    if (ldv_retval_0 == 0) {
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45856;
  case 1: ;
  if (ldv_state_variable_11 == 1) {
    xgmac_reg_value_write(xgmac_reg_value_fops_group2, (char const *)ldvarg5, ldvarg4,
                          ldvarg3);
    ldv_state_variable_11 = 1;
  } else {
  }
  if (ldv_state_variable_11 == 2) {
    xgmac_reg_value_write(xgmac_reg_value_fops_group2, (char const *)ldvarg5, ldvarg4,
                          ldvarg3);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_45856;
  case 2: ;
  if (ldv_state_variable_11 == 2) {
    xgmac_reg_value_read(xgmac_reg_value_fops_group2, ldvarg2, ldvarg1, ldvarg0);
    ldv_state_variable_11 = 2;
  } else {
  }
  goto ldv_45856;
  case 3: ;
  if (ldv_state_variable_11 == 2) {
    ldv_release_11();
    ldv_state_variable_11 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45856;
  default:
  ldv_stop();
  }
  ldv_45856: ;
  return;
}
}
void ldv_main_exported_10(void)
{
  loff_t *ldvarg52 ;
  void *tmp ;
  size_t ldvarg56 ;
  loff_t *ldvarg55 ;
  void *tmp___0 ;
  size_t ldvarg53 ;
  char *ldvarg54 ;
  void *tmp___1 ;
  char *ldvarg57 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg52 = (loff_t *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg55 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg54 = (char *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg57 = (char *)tmp___2;
  ldv_memset((void *)(& ldvarg56), 0, 8UL);
  ldv_memset((void *)(& ldvarg53), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_10 == 1) {
    ldv_retval_28 = simple_open(xpcs_mmd_fops_group1, xpcs_mmd_fops_group2);
    if (ldv_retval_28 == 0) {
      ldv_state_variable_10 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45871;
  case 1: ;
  if (ldv_state_variable_10 == 2) {
    xpcs_mmd_write(xpcs_mmd_fops_group2, (char const *)ldvarg57, ldvarg56, ldvarg55);
    ldv_state_variable_10 = 2;
  } else {
  }
  if (ldv_state_variable_10 == 1) {
    xpcs_mmd_write(xpcs_mmd_fops_group2, (char const *)ldvarg57, ldvarg56, ldvarg55);
    ldv_state_variable_10 = 1;
  } else {
  }
  goto ldv_45871;
  case 2: ;
  if (ldv_state_variable_10 == 2) {
    xpcs_mmd_read(xpcs_mmd_fops_group2, ldvarg54, ldvarg53, ldvarg52);
    ldv_state_variable_10 = 2;
  } else {
  }
  goto ldv_45871;
  case 3: ;
  if (ldv_state_variable_10 == 2) {
    ldv_release_10();
    ldv_state_variable_10 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45871;
  default:
  ldv_stop();
  }
  ldv_45871: ;
  return;
}
}
void ldv_main_exported_9(void)
{
  char *ldvarg9 ;
  void *tmp ;
  char *ldvarg12 ;
  void *tmp___0 ;
  loff_t *ldvarg10 ;
  void *tmp___1 ;
  loff_t *ldvarg7 ;
  void *tmp___2 ;
  size_t ldvarg11 ;
  size_t ldvarg8 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg9 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg12 = (char *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg10 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg7 = (loff_t *)tmp___2;
  ldv_memset((void *)(& ldvarg11), 0, 8UL);
  ldv_memset((void *)(& ldvarg8), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_9 == 1) {
    ldv_retval_23 = simple_open(xpcs_reg_addr_fops_group1, xpcs_reg_addr_fops_group2);
    if (ldv_retval_23 == 0) {
      ldv_state_variable_9 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45886;
  case 1: ;
  if (ldv_state_variable_9 == 2) {
    xpcs_reg_addr_write(xpcs_reg_addr_fops_group2, (char const *)ldvarg12, ldvarg11,
                        ldvarg10);
    ldv_state_variable_9 = 2;
  } else {
  }
  if (ldv_state_variable_9 == 1) {
    xpcs_reg_addr_write(xpcs_reg_addr_fops_group2, (char const *)ldvarg12, ldvarg11,
                        ldvarg10);
    ldv_state_variable_9 = 1;
  } else {
  }
  goto ldv_45886;
  case 2: ;
  if (ldv_state_variable_9 == 2) {
    xpcs_reg_addr_read(xpcs_reg_addr_fops_group2, ldvarg9, ldvarg8, ldvarg7);
    ldv_state_variable_9 = 2;
  } else {
  }
  goto ldv_45886;
  case 3: ;
  if (ldv_state_variable_9 == 2) {
    ldv_release_9();
    ldv_state_variable_9 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45886;
  default:
  ldv_stop();
  }
  ldv_45886: ;
  return;
}
}
void ldv_main_exported_12(void)
{
  char *ldvarg15 ;
  void *tmp ;
  loff_t *ldvarg16 ;
  void *tmp___0 ;
  loff_t *ldvarg13 ;
  void *tmp___1 ;
  size_t ldvarg14 ;
  size_t ldvarg17 ;
  char *ldvarg18 ;
  void *tmp___2 ;
  int tmp___3 ;
  {
  tmp = ldv_init_zalloc(1UL);
  ldvarg15 = (char *)tmp;
  tmp___0 = ldv_init_zalloc(8UL);
  ldvarg16 = (loff_t *)tmp___0;
  tmp___1 = ldv_init_zalloc(8UL);
  ldvarg13 = (loff_t *)tmp___1;
  tmp___2 = ldv_init_zalloc(1UL);
  ldvarg18 = (char *)tmp___2;
  ldv_memset((void *)(& ldvarg14), 0, 8UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_12 == 1) {
    ldv_retval_24 = simple_open(xgmac_reg_addr_fops_group1, xgmac_reg_addr_fops_group2);
    if (ldv_retval_24 == 0) {
      ldv_state_variable_12 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
  } else {
  }
  goto ldv_45901;
  case 1: ;
  if (ldv_state_variable_12 == 2) {
    xgmac_reg_addr_write(xgmac_reg_addr_fops_group2, (char const *)ldvarg18, ldvarg17,
                         ldvarg16);
    ldv_state_variable_12 = 2;
  } else {
  }
  if (ldv_state_variable_12 == 1) {
    xgmac_reg_addr_write(xgmac_reg_addr_fops_group2, (char const *)ldvarg18, ldvarg17,
                         ldvarg16);
    ldv_state_variable_12 = 1;
  } else {
  }
  goto ldv_45901;
  case 2: ;
  if (ldv_state_variable_12 == 2) {
    xgmac_reg_addr_read(xgmac_reg_addr_fops_group2, ldvarg15, ldvarg14, ldvarg13);
    ldv_state_variable_12 = 2;
  } else {
  }
  goto ldv_45901;
  case 3: ;
  if (ldv_state_variable_12 == 2) {
    ldv_release_12();
    ldv_state_variable_12 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_45901;
  default:
  ldv_stop();
  }
  ldv_45901: ;
  return;
}
}
bool ldv_queue_work_on_424(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_425(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_426(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                           struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_2(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_427(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_2(2);
  return;
}
}
bool ldv_queue_delayed_work_on_428(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                   struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_2(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
int ldv_pskb_expand_head_440(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_442(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_444(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_445(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_446(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_447(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                           gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_448(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_449(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                             gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_450(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
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
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  return;
}
}
extern struct page *ldv_some_page(void) ;
struct page *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page *tmp ;
  {
  if (ldv_spin != 0 && (flags & 16U) != 0U) {
    ldv_error();
  } else {
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin != 0) {
    ldv_error();
  } else {
  }
  return;
}
}
void ldv_spin_lock(void)
{
  {
  ldv_spin = 1;
  return;
}
}
void ldv_spin_unlock(void)
{
  {
  ldv_spin = 0;
  return;
}
}
int ldv_spin_trylock(void)
{
  int is_lock ;
  {
  is_lock = ldv_undef_int();
  if (is_lock != 0) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return;
}
void __dynamic_netdev_dbg(struct _ddebug *arg0, const struct net_device *arg1, const char *arg2, ...) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
struct sk_buff *__napi_alloc_skb(struct napi_struct *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int __platform_driver_register(struct platform_driver *arg0, struct module *arg1) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __usecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
void clk_disable(struct clk *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int clk_enable(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int clk_get_rate(struct clk *arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int clk_prepare(struct clk *arg0) {
  return __VERIFIER_nondet_int();
}
void clk_unprepare(struct clk *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
u32 crc32_le(u32 arg0, const unsigned char *arg1, size_t arg2) {
  return __VERIFIER_nondet_uint();
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_sync_single_for_cpu(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
struct dentry *debugfs_create_dir(const char *arg0, struct dentry *arg1) {
  return ldv_malloc(sizeof(struct dentry));
}
struct dentry *debugfs_create_file(const char *arg0, umode_t arg1, struct dentry *arg2, void *arg3, const struct file_operations *arg4) {
  return ldv_malloc(sizeof(struct dentry));
}
void debugfs_remove_recursive(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_notice(const struct device *arg0, const char *arg1, ...) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool device_dma_is_coherent(struct device *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool device_property_present(struct device *arg0, const char *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int device_property_read_string(struct device *arg0, const char *arg1, const char **arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_property_read_u32_array(struct device *arg0, const char *arg1, u32 *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_property_read_u8_array(struct device *arg0, const char *arg1, u8 *arg2, size_t arg3) {
  return __VERIFIER_nondet_int();
}
struct clk *devm_clk_get(struct device *arg0, const char *arg1) {
  return ldv_malloc(0UL);
}
void devm_free_irq(struct device *arg0, unsigned int arg1, void *arg2) {
  return;
}
void *devm_ioremap_resource(struct device *arg0, struct resource *arg1) {
  return ldv_malloc(0UL);
}
void *devm_kmalloc(struct device *arg0, size_t arg1, gfp_t arg2) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int devm_request_threaded_irq(struct device *arg0, unsigned int arg1, irqreturn_t (*arg2)(int, void *), irqreturn_t (*arg3)(int, void *), unsigned long arg4, const char *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void disable_irq(unsigned int arg0) {
  return;
}
void disable_irq_nosync(unsigned int arg0) {
  return;
}
void *dma_alloc_attrs(struct device *arg0, size_t arg1, dma_addr_t *arg2, gfp_t arg3, struct dma_attrs *arg4) {
  return ldv_malloc(0UL);
}
void dma_free_attrs(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3, struct dma_attrs *arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void dql_completed(struct dql *arg0, unsigned int arg1) {
  return;
}
void dql_reset(struct dql *arg0) {
  return;
}
void dump_page(struct page *arg0, const char *arg1) {
  return;
}
void enable_irq(unsigned int arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
struct device *get_device(struct device *arg0) {
  return ldv_malloc(sizeof(struct device));
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread16(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite16(u16 arg0, void *arg1) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
char *kasprintf(gfp_t arg0, const char *arg1, ...) {
  return ldv_malloc(sizeof(char));
}
int __VERIFIER_nondet_int(void);
int kstrtouint(const char *arg0, unsigned int arg1, unsigned int *arg2) {
  return __VERIFIER_nondet_int();
}
ktime_t ktime_get_with_offset(enum tk_offsets arg0) {
  return *(union ktime *)ldv_xmalloc(sizeof(union ktime));
}
void ldv_check_final_state() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_complete_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_late_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_freeze_noirq_17() {
  return __VERIFIER_nondet_int();
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_15() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_late_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_poweroff_noirq_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_prepare_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_10() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_11() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_8() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_early_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_restore_noirq_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_noirq_17() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_noirq_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_early_17() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_thaw_noirq_17() {
  return __VERIFIER_nondet_int();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
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
void napi_disable(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
void netdev_alert(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_notice(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_rss_key_fill(void *arg0, size_t arg1) {
  return;
}
void netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_device_attach(struct net_device *arg0) {
  return;
}
void netif_device_detach(struct net_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_get_num_default_rss_queues() {
  return __VERIFIER_nondet_int();
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
void netif_schedule_queue(struct netdev_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void netif_tx_stop_all_queues(struct net_device *arg0) {
  return;
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
struct timespec ns_to_timespec(const s64 arg0) {
  return *(struct timespec *)ldv_xmalloc(sizeof(struct timespec));
}
struct platform_device *of_find_device_by_node(struct device_node *arg0) {
  return ldv_malloc(sizeof(struct platform_device));
}
void of_node_put(struct device_node *arg0) {
  return;
}
struct device_node *of_parse_phandle(const struct device_node *arg0, const char *arg1, int arg2) {
  return ldv_malloc(sizeof(struct device_node));
}
void platform_device_put(struct platform_device *arg0) {
  return;
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq(struct platform_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct resource));
}
int __VERIFIER_nondet_int(void);
int ptp_clock_index(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
struct ptp_clock *ptp_clock_register(struct ptp_clock_info *arg0, struct device *arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int ptp_clock_unregister(struct ptp_clock *arg0) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
int __VERIFIER_nondet_int(void);
int simple_open(struct inode *arg0, struct file *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_read_from_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
ssize_t simple_write_to_buffer(void *arg0, size_t arg1, loff_t *arg2, const void *arg3, size_t arg4) {
  return __VERIFIER_nondet_long();
}
void skb_add_rx_frag(struct sk_buff *arg0, int arg1, struct page *arg2, int arg3, int arg4, unsigned int arg5) {
  return;
}
void skb_clone_tx_timestamp(struct sk_buff *arg0) {
  return;
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void skb_tstamp_tx(struct sk_buff *arg0, struct skb_shared_hwtstamps *arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 timecounter_cyc2time(struct timecounter *arg0, cycle_t arg1) {
  return __VERIFIER_nondet_ulong();
}
void timecounter_init(struct timecounter *arg0, const struct cyclecounter *arg1, u64 arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
u64 timecounter_read(struct timecounter *arg0) {
  return __VERIFIER_nondet_ulong();
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void usleep_range(unsigned long arg0, unsigned long arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
