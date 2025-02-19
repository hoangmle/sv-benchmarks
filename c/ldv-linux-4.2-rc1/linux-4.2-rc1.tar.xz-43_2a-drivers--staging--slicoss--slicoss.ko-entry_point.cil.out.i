extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
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
typedef unsigned short ushort;
typedef unsigned int uint;
typedef unsigned long ulong;
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
struct pci_dev;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
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
struct pci_driver;
union __anonunion____missing_field_name_228 {
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
   unsigned char has_secondary_link : 1 ;
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
   union __anonunion____missing_field_name_228 __annonCompField65 ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
union __anonunion____missing_field_name_229 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_229 __annonCompField66 ;
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
struct kiocb;
struct __anonstruct_sync_serial_settings_231 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_231 sync_serial_settings;
struct __anonstruct_te1_settings_232 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_232 te1_settings;
struct __anonstruct_raw_hdlc_proto_233 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_233 raw_hdlc_proto;
struct __anonstruct_fr_proto_234 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_234 fr_proto;
struct __anonstruct_fr_proto_pvc_235 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_235 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_236 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_236 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_237 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_237 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_238 {
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
   union __anonunion_ifs_ifsu_238 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_239 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_240 {
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
   union __anonunion_ifr_ifrn_239 ifr_ifrn ;
   union __anonunion_ifr_ifru_240 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_245 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_244 {
   struct __anonstruct____missing_field_name_245 __annonCompField67 ;
};
struct lockref {
   union __anonunion____missing_field_name_244 __annonCompField68 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_247 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_246 {
   struct __anonstruct____missing_field_name_247 __annonCompField69 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_246 __annonCompField70 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_248 {
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
   union __anonunion_d_u_248 d_u ;
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
struct __anonstruct____missing_field_name_252 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_251 {
   struct __anonstruct____missing_field_name_252 __annonCompField71 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_251 __annonCompField72 ;
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
struct __anonstruct_kprojid_t_256 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_256 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_257 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_257 __annonCompField74 ;
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
union __anonunion____missing_field_name_260 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_261 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_262 {
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
   union __anonunion____missing_field_name_260 __annonCompField75 ;
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
   union __anonunion____missing_field_name_261 __annonCompField76 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_262 __annonCompField77 ;
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
union __anonunion_f_u_263 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_263 f_u ;
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
struct __anonstruct_afs_265 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_264 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_265 afs ;
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
   union __anonunion_fl_u_264 fl_u ;
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
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_280 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_280 in6_u ;
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
union __anonunion____missing_field_name_285 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_286 {
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
   union __anonunion____missing_field_name_285 __annonCompField81 ;
   union __anonunion____missing_field_name_286 __annonCompField82 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_289 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_288 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_289 __annonCompField83 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_288 __annonCompField84 ;
};
union __anonunion____missing_field_name_292 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_291 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_292 __annonCompField85 ;
};
union __anonunion____missing_field_name_290 {
   struct __anonstruct____missing_field_name_291 __annonCompField86 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_294 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_293 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_294 __annonCompField88 ;
};
union __anonunion____missing_field_name_295 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_296 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_297 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_290 __annonCompField87 ;
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
   union __anonunion____missing_field_name_293 __annonCompField89 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_295 __annonCompField90 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_296 __annonCompField91 ;
   union __anonunion____missing_field_name_297 __annonCompField92 ;
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
struct __anonstruct_possible_net_t_306 {
   struct net *net ;
};
typedef struct __anonstruct_possible_net_t_306 possible_net_t;
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
enum ldv_28599 {
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
typedef enum ldv_28599 phy_interface_t;
enum ldv_28653 {
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
   enum ldv_28653 state ;
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
struct __anonstruct_adj_list_316 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_317 {
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
union __anonunion____missing_field_name_318 {
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
   struct __anonstruct_adj_list_316 adj_list ;
   struct __anonstruct_all_adj_list_317 all_adj_list ;
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
   union __anonunion____missing_field_name_318 __annonCompField95 ;
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
enum skb_free_reason {
    SKB_REASON_CONSUMED = 0,
    SKB_REASON_DROPPED = 1
} ;
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct slic_rcvbuf {
   u8 pad1[6U] ;
   u16 pad2 ;
   u32 pad3 ;
   u32 pad4 ;
   u32 buffer ;
   u32 length ;
   u32 status ;
   u32 pad5 ;
   u16 pad6 ;
   u8 data[2014U] ;
};
struct __anonstruct_hdrs_14port_332 {
   u32 frame_status ;
   u32 frame_status_b ;
   u32 time_stamp ;
   u32 checksum ;
};
struct __anonstruct_hdrs_gbit_333 {
   u32 frame_status ;
   u16 ByteCnt ;
   u16 TpChksum ;
   u16 CtxHash ;
   u16 MacHash ;
   u32 BufLnk ;
};
union __anonunion_u0_331 {
   struct __anonstruct_hdrs_14port_332 hdrs_14port ;
   struct __anonstruct_hdrs_gbit_333 hdrs_gbit ;
};
struct slic_hddr_wds {
   union __anonunion_u0_331 u0 ;
};
struct slic_host64sg {
   u32 paddrl ;
   u32 paddrh ;
   u32 length ;
};
union __anonunion_u0_334 {
   u16 rsv1 ;
   u16 rsv2 ;
};
struct __anonstruct_slic_buffers_336 {
   u32 totlen ;
   struct slic_host64sg bufs[23U] ;
};
union __anonunion_u_335 {
   struct __anonstruct_slic_buffers_336 slic_buffers ;
};
struct slic_host64_cmd {
   u32 hosthandle ;
   u32 RSVD ;
   u8 command ;
   u8 flags ;
   union __anonunion_u0_334 u0 ;
   union __anonunion_u_335 u ;
};
struct slic_rspbuf {
   u32 hosthandle ;
   u32 pad0 ;
   u32 pad1 ;
   u32 status ;
   u32 pad2[4U] ;
};
struct slic_regs {
   u32 slic_reset ;
   u32 pad0 ;
   u32 slic_icr ;
   u32 pad2 ;
   u32 slic_isp ;
   u32 pad1 ;
   u32 slic_isr ;
   u32 pad3 ;
   u32 slic_hbar ;
   u32 pad4 ;
   u32 slic_dbar ;
   u32 pad5 ;
   u32 slic_cbar ;
   u32 slic_wcs ;
   u32 slic_rbar ;
   u32 pad7 ;
   u32 slic_stats ;
   u32 pad8 ;
   u32 slic_rlsr ;
   u32 pad9 ;
   u32 slic_wmcfg ;
   u32 pad10 ;
   u32 slic_wphy ;
   u32 pad11 ;
   u32 slic_rcbar ;
   u32 pad12 ;
   u32 slic_rconfig ;
   u32 pad13 ;
   u32 slic_intagg ;
   u32 pad14 ;
   u32 slic_wxcfg ;
   u32 pad16 ;
   u32 slic_wrcfg ;
   u32 pad17 ;
   u32 slic_wraddral ;
   u32 pad18 ;
   u32 slic_wraddrah ;
   u32 pad19 ;
   u32 slic_wraddrbl ;
   u32 pad20 ;
   u32 slic_wraddrbh ;
   u32 pad21 ;
   u32 slic_mcastlow ;
   u32 pad22 ;
   u32 slic_mcasthigh ;
   u32 pad23 ;
   u32 slic_ping ;
   u32 pad24 ;
   u32 slic_dump_cmd ;
   u32 pad25 ;
   u32 slic_dump_data ;
   u32 pad26 ;
   u32 slic_pcistatus ;
   u32 pad27 ;
   u32 slic_wrhostid ;
   u32 pad28 ;
   u32 slic_low_power ;
   u32 pad29 ;
   u32 slic_quiesce ;
   u32 pad30 ;
   u32 slic_reset_iface ;
   u32 pad31 ;
   u32 slic_addr_upper ;
   u32 pad32 ;
   u32 slic_hbar64 ;
   u32 pad33 ;
   u32 slic_dbar64 ;
   u32 pad34 ;
   u32 slic_cbar64 ;
   u32 pad35 ;
   u32 slic_rbar64 ;
   u32 pad36 ;
   u32 slic_rcbar64 ;
   u32 pad37 ;
   u32 slic_stats64 ;
   u32 pad38 ;
   u32 slic_rcv_wcs ;
   u32 pad39 ;
   u32 slic_wrvlanid ;
   u32 pad40 ;
   u32 slic_read_xf_info ;
   u32 pad41 ;
   u32 slic_write_xf_info ;
   u32 pad42 ;
   u32 RSVD1 ;
   u32 pad43 ;
   u32 RSVD2 ;
   u32 pad44 ;
   u32 RSVD3 ;
   u32 pad45 ;
   u32 RSVD4 ;
   u32 pad46 ;
   u32 slic_ticks_per_sec ;
   u32 pad47 ;
};
struct inicpm_wakepattern {
   u32 patternlength ;
   u8 pattern[128U] ;
   u8 mask[128U] ;
};
struct inicpm_state {
   u32 powercaps ;
   u32 powerstate ;
   u32 wake_linkstatus ;
   u32 wake_magicpacket ;
   u32 wake_framepattern ;
   struct inicpm_wakepattern wakepattern[6U] ;
};
struct xmt_stats {
   u32 xmit_tcp_bytes ;
   u32 xmit_tcp_segs ;
   u32 xmit_bytes ;
   u32 xmit_collisions ;
   u32 xmit_unicasts ;
   u32 xmit_other_error ;
   u32 xmit_excess_collisions ;
};
struct rcv_stats {
   u32 rcv_tcp_bytes ;
   u32 rcv_tcp_segs ;
   u32 rcv_bytes ;
   u32 rcv_unicasts ;
   u32 rcv_other_error ;
   u32 rcv_drops ;
};
struct xmt_statsgb {
   u64 xmit_tcp_bytes ;
   u64 xmit_tcp_segs ;
   u64 xmit_bytes ;
   u64 xmit_collisions ;
   u64 xmit_unicasts ;
   u64 xmit_other_error ;
   u64 xmit_excess_collisions ;
};
struct rcv_statsgb {
   u64 rcv_tcp_bytes ;
   u64 rcv_tcp_segs ;
   u64 rcv_bytes ;
   u64 rcv_unicasts ;
   u64 rcv_other_error ;
   u64 rcv_drops ;
};
struct __anonstruct_stats_100_338 {
   struct xmt_stats xmt100 ;
   struct rcv_stats rcv100 ;
};
struct __anonstruct_stats_GB_339 {
   struct xmt_statsgb xmtGB ;
   struct rcv_statsgb rcvGB ;
};
union __anonunion_u_337 {
   struct __anonstruct_stats_100_338 stats_100 ;
   struct __anonstruct_stats_GB_339 stats_GB ;
};
struct slic_stats {
   union __anonunion_u_337 u ;
};
struct slic_config_mac {
   u8 macaddrA[6U] ;
};
struct atk_fru {
   u8 assembly[6U] ;
   u8 revision[2U] ;
   u8 serial[14U] ;
   u8 pad[3U] ;
};
struct vendor1_fru {
   u8 commodity ;
   u8 assembly[4U] ;
   u8 revision[2U] ;
   u8 supplier[2U] ;
   u8 date[2U] ;
   u8 sequence[3U] ;
   u8 pad[13U] ;
};
struct vendor2_fru {
   u8 part[8U] ;
   u8 supplier[5U] ;
   u8 date[3U] ;
   u8 sequence[4U] ;
   u8 pad[7U] ;
};
struct vendor3_fru {
   u8 assembly[6U] ;
   u8 revision[2U] ;
   u8 serial[14U] ;
   u8 pad[3U] ;
};
struct vendor4_fru {
   u8 number[8U] ;
   u8 part[8U] ;
   u8 version[8U] ;
   u8 pad[3U] ;
};
union oemfru {
   struct vendor1_fru vendor1_fru ;
   struct vendor2_fru vendor2_fru ;
   struct vendor3_fru vendor3_fru ;
   struct vendor4_fru vendor4_fru ;
};
union __anonunion_u1_340 {
   u8 NetIntPin3 ;
   u8 FreeTime ;
};
struct __anonstruct_mac_342 {
   struct slic_config_mac MacInfo[4U] ;
};
struct __anonstruct_mojave_343 {
   struct slic_config_mac pad[3U] ;
   u16 DeviceId2 ;
   u8 IntPin2 ;
   u8 ClassCode2[3U] ;
};
union __anonunion_u2_341 {
   struct __anonstruct_mac_342 mac ;
   struct __anonstruct_mojave_343 mojave ;
};
struct slic_eeprom {
   u16 Id ;
   u16 EecodeSize ;
   u16 FlashSize ;
   u16 EepromSize ;
   u16 VendorId ;
   u16 DeviceId ;
   u8 RevisionId ;
   u8 ClassCode[3U] ;
   u8 DbgIntPin ;
   u8 NetIntPin0 ;
   u8 MinGrant ;
   u8 MaxLat ;
   u16 PciStatus ;
   u16 SubSysVId ;
   u16 SubSysId ;
   u16 DbgDevId ;
   u16 DramRomFn ;
   u16 DSize2Pci ;
   u16 RSize2Pci ;
   u8 NetIntPin1 ;
   u8 NetIntPin2 ;
   union __anonunion_u1_340 u1 ;
   u8 TBIctl ;
   u16 DramSize ;
   union __anonunion_u2_341 u2 ;
   u16 CfgByte6 ;
   u16 PMECapab ;
   u16 NwClkCtrls ;
   u8 FruFormat ;
   struct atk_fru AtkFru ;
   u8 OemFruFormat ;
   union oemfru OemFru ;
   u8 Pad[4U] ;
};
struct oslic_eeprom {
   u16 Id ;
   u16 EecodeSize ;
   u16 FlashConfig0 ;
   u16 FlashConfig1 ;
   u16 VendorId ;
   u16 DeviceId ;
   u8 RevisionId ;
   u8 ClassCode[3U] ;
   u8 IntPin1 ;
   u8 ClassCode2[3U] ;
   u8 IntPin2 ;
   u8 IntPin0 ;
   u8 MinGrant ;
   u8 MaxLat ;
   u16 SubSysVId ;
   u16 SubSysId ;
   u16 FlashSize ;
   u16 DSize2Pci ;
   u16 RSize2Pci ;
   u16 DeviceId1 ;
   u16 DeviceId2 ;
   u16 CfgByte6 ;
   u16 PMECapab ;
   u8 MSICapab ;
   u8 ClockDivider ;
   u16 PciStatusLow ;
   u16 PciStatusHigh ;
   u16 DramConfigLow ;
   u16 DramConfigHigh ;
   u16 DramSize ;
   u16 GpioTbiCtl ;
   u16 EepromSize ;
   struct slic_config_mac MacInfo[2U] ;
   u8 FruFormat ;
   struct atk_fru AtkFru ;
   u8 OemFruFormat ;
   union oemfru OemFru ;
   u8 Pad[4U] ;
};
union __anonunion_OemFru_344 {
   struct vendor1_fru vendor1_fru ;
   struct vendor2_fru vendor2_fru ;
   struct vendor3_fru vendor3_fru ;
   struct vendor4_fru vendor4_fru ;
};
struct slic_config {
   bool EepromValid ;
   u16 DramSize ;
   struct slic_config_mac MacInfo[4U] ;
   u8 FruFormat ;
   struct atk_fru AtkFru ;
   u8 OemFruFormat ;
   union __anonunion_OemFru_344 OemFru ;
};
struct slic_rspqueue {
   u32 offset ;
   u32 pageindex ;
   u32 num_pages ;
   struct slic_rspbuf *rspbuf ;
   u32 *vaddr[10U] ;
   dma_addr_t paddr[10U] ;
};
struct slic_rcvqueue {
   struct sk_buff *head ;
   struct sk_buff *tail ;
   u32 count ;
   u32 size ;
   u32 errors ;
};
struct __anonstruct_parts_346 {
   ushort index ;
   ushort bottombits ;
};
union __anonunion_handle_345 {
   struct __anonstruct_parts_346 parts ;
   u32 whole ;
};
struct slic_handle_word {
   union __anonunion_handle_345 handle ;
};
struct slic_handle {
   struct slic_handle_word token ;
   ushort type ;
   void *address ;
   ushort offset ;
   struct slic_handle *other_handle ;
   struct slic_handle *next ;
};
struct slic_hostcmd {
   struct slic_host64_cmd cmd64 ;
   u32 type ;
   struct sk_buff *skb ;
   u32 paddrl ;
   u32 paddrh ;
   u32 busy ;
   u32 cmdsize ;
   ushort numbufs ;
   struct slic_handle *pslic_handle ;
   struct slic_hostcmd *next ;
   struct slic_hostcmd *next_all ;
};
struct slic_cmdqmem {
   int pagecnt ;
   u32 *pages[32U] ;
   dma_addr_t dma_pages[32U] ;
};
struct slic_cmdqueue {
   struct slic_hostcmd *head ;
   struct slic_hostcmd *tail ;
   int count ;
   spinlock_t lock ;
};
struct mcast_address {
   unsigned char address[6U] ;
   struct mcast_address *next ;
};
struct slic_iface_stats {
   u64 xmt_bytes ;
   u64 xmt_ucast ;
   u64 xmt_mcast ;
   u64 xmt_bcast ;
   u64 xmt_errors ;
   u64 xmt_discards ;
   u64 xmit_collisions ;
   u64 xmit_excess_xmit_collisions ;
   u64 rcv_bytes ;
   u64 rcv_ucast ;
   u64 rcv_mcast ;
   u64 rcv_bcast ;
   u64 rcv_errors ;
   u64 rcv_discards ;
};
struct sliccp_stats {
   u64 xmit_tcp_segs ;
   u64 xmit_tcp_bytes ;
   u64 rcv_tcp_segs ;
   u64 rcv_tcp_bytes ;
};
struct slicnet_stats {
   struct sliccp_stats tcp ;
   struct slic_iface_stats iface ;
};
struct ether_header {
   unsigned char ether_dhost[6U] ;
   unsigned char ether_shost[6U] ;
   ushort ether_type ;
};
struct adapter;
struct sliccard {
   uint busnumber ;
   uint slotnumber ;
   uint state ;
   uint cardnum ;
   uint card_size ;
   uint adapters_activated ;
   uint adapters_allocated ;
   uint adapters_sleeping ;
   uint gennumber ;
   u32 events ;
   u32 loadlevel_current ;
   u32 load ;
   uint reset_in_progress ;
   u32 pingstatus ;
   u32 bad_pingstatus ;
   struct timer_list loadtimer ;
   u32 loadtimerset ;
   uint config_set ;
   struct slic_config config ;
   struct adapter *master ;
   struct adapter *adapter[4U] ;
   struct sliccard *next ;
   u32 error_interrupts ;
   u32 error_rmiss_interrupts ;
   u32 rcv_interrupts ;
   u32 xmit_interrupts ;
   u32 num_isrs ;
   u32 false_interrupts ;
   u32 max_isr_rcvs ;
   u32 max_isr_xmits ;
   u32 rcv_interrupt_yields ;
   u32 tx_packets ;
   u32 debug_ix ;
   ushort reg_type[32U] ;
   ushort reg_offset[32U] ;
   u32 reg_value[32U] ;
   u32 reg_valueh[32U] ;
};
struct physcard {
   struct adapter *adapter[4U] ;
   struct physcard *next ;
   uint adapters_allocd ;
};
struct base_driver {
   spinlock_t driver_lock ;
   u32 num_slic_cards ;
   u32 num_slic_ports ;
   u32 num_slic_ports_active ;
   u32 dynamic_intagg ;
   struct sliccard *slic_card ;
   struct physcard *phys_card ;
   uint cardnuminuse[32U] ;
};
struct slic_shmem {
   u32 volatile isr ;
   u32 volatile linkstatus ;
   struct slic_stats volatile inicstats ;
};
struct slic_upr {
   uint adapter ;
   u32 upr_request ;
   u32 upr_data ;
   u32 upr_data_h ;
   u32 upr_buffer ;
   u32 upr_buffer_h ;
   struct slic_upr *next ;
};
struct slic_ifevents {
   uint oflow802 ;
   uint uflow802 ;
   uint Tprtoflow ;
   uint rcvearly ;
   uint Bufov ;
   uint Carre ;
   uint Longe ;
   uint Invp ;
   uint Crc ;
   uint Drbl ;
   uint Code ;
   uint IpHlen ;
   uint IpLen ;
   uint IpCsum ;
   uint TpCsum ;
   uint TpHlen ;
};
struct adapter {
   void *ifp ;
   struct sliccard *card ;
   uint port ;
   struct physcard *physcard ;
   uint physport ;
   uint cardindex ;
   uint card_size ;
   uint chipid ;
   struct net_device *netdev ;
   spinlock_t adapter_lock ;
   spinlock_t reset_lock ;
   struct pci_dev *pcidev ;
   uint busnumber ;
   uint slotnumber ;
   uint functionnumber ;
   ushort vendid ;
   ushort devid ;
   ushort subsysid ;
   u32 irq ;
   u32 drambase ;
   u32 dramlength ;
   uint queues_initialized ;
   uint allocated ;
   uint activated ;
   u32 intrregistered ;
   uint isp_initialized ;
   uint gennumber ;
   struct slic_shmem *pshmem ;
   dma_addr_t phys_shmem ;
   u32 isrcopy ;
   struct slic_regs *slic_regs ;
   unsigned char state ;
   unsigned char linkstate ;
   unsigned char linkspeed ;
   unsigned char linkduplex ;
   uint flags ;
   unsigned char macaddr[6U] ;
   unsigned char currmacaddr[6U] ;
   u32 macopts ;
   ushort devflags_prev ;
   u64 mcastmask ;
   struct mcast_address *mcastaddrs ;
   struct slic_upr *upr_list ;
   uint upr_busy ;
   struct timer_list pingtimer ;
   u32 pingtimerset ;
   struct timer_list loadtimer ;
   u32 loadtimerset ;
   spinlock_t upr_lock ;
   spinlock_t bit64reglock ;
   struct slic_rspqueue rspqueue ;
   struct slic_rcvqueue rcvqueue ;
   struct slic_cmdqueue cmdq_free ;
   struct slic_cmdqueue cmdq_done ;
   struct slic_cmdqueue cmdq_all ;
   struct slic_cmdqmem cmdqmem ;
   struct slic_handle slic_handles[257U] ;
   struct slic_handle *pfree_slic_handles ;
   spinlock_t handle_lock ;
   ushort slic_handle_ix ;
   u32 xmitq_full ;
   u32 all_reg_writes ;
   u32 icr_reg_writes ;
   u32 isr_reg_writes ;
   u32 error_interrupts ;
   u32 error_rmiss_interrupts ;
   u32 rx_errors ;
   u32 rcv_drops ;
   u32 rcv_interrupts ;
   u32 xmit_interrupts ;
   u32 linkevent_interrupts ;
   u32 upr_interrupts ;
   u32 num_isrs ;
   u32 false_interrupts ;
   u32 tx_packets ;
   u32 xmit_completes ;
   u32 tx_drops ;
   u32 rcv_broadcasts ;
   u32 rcv_multicasts ;
   u32 rcv_unicasts ;
   u32 max_isr_rcvs ;
   u32 max_isr_xmits ;
   u32 rcv_interrupt_yields ;
   u32 intagg_period ;
   struct inicpm_state *inicpm_info ;
   void *pinicpm_info ;
   struct slic_ifevents if_events ;
   struct slic_stats inicstats_prev ;
   struct slicnet_stats slic_stats ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
__inline static long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
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
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern void __might_fault(char const * , int ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
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
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strcpy(char * , char const * ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void ldv_spin_lock_5(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_9(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock ) ;
__inline static void ldv_spin_unlock_irqrestore_12(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->__annonCompField18.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern unsigned long volatile jiffies ;
extern int del_timer(struct timer_list * ) ;
int ldv_del_timer_38(struct timer_list *ldv_func_arg1 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 ) ;
__inline static unsigned short readw(void const volatile *addr )
{
  unsigned short ret ;
  {
  __asm__ volatile ("movw %1,%0": "=r" (ret): "m" (*((unsigned short volatile *)addr)): "memory");
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
__inline static phys_addr_t virt_to_phys(void volatile *address )
{
  unsigned long tmp ;
  {
  tmp = __phys_addr((unsigned long )address);
  return ((phys_addr_t )tmp);
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
__inline static void *ioremap(resource_size_t offset , unsigned long size )
{
  void *tmp ;
  {
  tmp = ioremap_nocache(offset, size);
  return (tmp);
}
}
extern void iounmap(void volatile * ) ;
extern bool capable(int ) ;
extern void kfree(void const * ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int pci_counter ;
int ldv_irq_1_0 = 0;
struct timer_list *ldv_timer_list_2_0 ;
struct timer_list *ldv_timer_list_2_1 ;
struct pci_dev *slic_driver_group1 ;
int ldv_timer_2_1 ;
void *ldv_irq_data_1_0 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
int ldv_timer_2_0 ;
int ldv_state_variable_2 ;
void *ldv_irq_data_1_3 ;
struct net_device *slic_netdev_ops_group1 ;
struct timer_list *ldv_timer_list_3_1 ;
void *ldv_irq_data_1_2 ;
struct timer_list *ldv_timer_list_3_2 ;
int ldv_timer_2_2 ;
int ldv_timer_3_3 ;
int ldv_irq_1_2 = 0;
int ldv_timer_2_3 ;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct timer_list *ldv_timer_list_3_3 ;
int ldv_irq_line_1_3 ;
int ldv_timer_3_2 ;
int ldv_state_variable_3 ;
int ldv_timer_3_1 ;
int ldv_irq_line_1_0 ;
int ref_cnt ;
struct timer_list *ldv_timer_list_2_3 ;
struct timer_list *ldv_timer_list_3_0 ;
int ldv_timer_3_0 ;
int ldv_irq_line_1_1 ;
int ldv_state_variable_1 ;
struct timer_list *ldv_timer_list_2_2 ;
int ldv_irq_line_1_2 ;
int ldv_state_variable_4 ;
void disable_suitable_timer_3(struct timer_list *timer ) ;
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data ) ;
void ldv_net_device_ops_5(void) ;
void choose_timer_2(void) ;
int reg_timer_2(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void choose_timer_3(void) ;
void disable_suitable_timer_2(struct timer_list *timer ) ;
void disable_suitable_irq_1(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void timer_init_3(void) ;
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data ) ;
void ldv_pci_driver_4(void) ;
void activate_suitable_timer_2(struct timer_list *timer , unsigned long data ) ;
void choose_interrupt_1(void) ;
void ldv_timer_2(int state , struct timer_list *timer ) ;
void timer_init_2(void) ;
void ldv_timer_3(int state , struct timer_list *timer ) ;
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
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, (irqreturn_t (*)(int , void * ))0, flags,
                             name, dev);
  return (tmp);
}
}
__inline static int ldv_request_irq_39(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_37(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
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
extern void dev_err(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_45(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_46(struct pci_driver *ldv_func_arg1 ) ;
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
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
    ldv_28132: ;
    goto ldv_28132;
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
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
extern void *dma_alloc_attrs(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
extern void dma_free_attrs(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags ) ;
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static void *pci_zalloc_consistent(struct pci_dev *hwdev , size_t size ,
                                            dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_zalloc_coherent((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                            size, dma_handle, 32U);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                 size, vaddr, dma_handle, (struct dma_attrs *)0);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                             ptr, size, (enum dma_data_direction )direction, (struct dma_attrs *)0);
  return (tmp);
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void consume_skb(struct sk_buff * ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags ) ;
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags ) ;
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
void *ldv_malloc(size_t size ) ;
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags ) ;
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_42(struct net_device *dev ) ;
void ldv_free_netdev_44(struct net_device *dev ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_start_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_start_queue(tmp);
  return;
}
}
extern void netif_tx_wake_queue(struct netdev_queue * ) ;
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  {
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern void __dev_kfree_skb_irq(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_irq(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_irq(skb, 1);
  return;
}
}
extern int netif_rx(struct sk_buff * ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_43(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_41(struct net_device *dev ) ;
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
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_change_mtu(struct net_device * , int ) ;
extern int eth_validate_addr(struct net_device * ) ;
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
__inline static bool is_broadcast_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )(((int )((unsigned short )*((u16 const *)addr)) & (int )((unsigned short )*((u16 const *)addr + 2U))) & (int )((unsigned short )*((u16 const *)addr + 4U))) == 65535U);
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
__inline static void ether_addr_copy(u8 *dst , u8 const *src )
{
  {
  *((u32 *)dst) = *((u32 const *)src);
  *((u16 *)dst + 4U) = *((u16 const *)src + 4U);
  return;
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  u32 fold ;
  {
  fold = ((unsigned int )*((u32 const *)addr1) ^ (unsigned int )*((u32 const *)addr2)) | (unsigned int )((int )((unsigned short )*((u16 const *)addr1 + 4U)) ^ (int )((unsigned short )*((u16 const *)addr2 + 4U)));
  return (fold == 0U);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
static u32 OasisRcvUCodeLen = 512U;
static u32 GBRcvUCodeLen = 512U;
static uint slic_first_init = 1U;
static char *slic_banner = (char *)"Alacritech SLIC Technology(tm) Server and Storage Accelerator (Non-Accelerated)";
static char *slic_proc_version = (char *)"2.0.351  2006/07/14 12:26:00";
static struct base_driver slic_global =
     {{{{{{0}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, 0U, 0U, 0U, 1U, (struct sliccard *)0,
    (struct physcard *)0, {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                           0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U,
                           0U, 0U, 0U, 0U}};
static int intagg_delay = 100;
static u32 dynamic_intagg ;
static unsigned int rcv_count ;
static struct pci_device_id const slic_pci_tbl[3U] = { {5018U, 5U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {5018U, 7U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__slic_pci_tbl_device_table[3U] ;
__inline static void slic_reg32_write(void *reg , u32 value , bool flush )
{
  {
  writel(value, (void volatile *)reg);
  if ((int )flush) {
    __asm__ volatile ("mfence": : : "memory");
  } else {
  }
  return;
}
}
__inline static void slic_reg64_write(struct adapter *adapter , void *reg , u32 value ,
                                      void *regh , u32 paddrh , bool flush )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  writel(paddrh, (void volatile *)regh);
  writel(value, (void volatile *)reg);
  if ((int )flush) {
    __asm__ volatile ("mfence": : : "memory");
  } else {
  }
  spin_unlock_irqrestore(& adapter->bit64reglock, flags);
  return;
}
}
static void slic_mcast_set_bit(struct adapter *adapter , char *address )
{
  unsigned char crcpoly ;
  u32 __x ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  tmp = crc32_le(4294967295U, (unsigned char const *)address, 6UL);
  __x = tmp;
  tmp___0 = __bitrev32(__x);
  crcpoly = (unsigned char )(tmp___0 >> 23);
  crcpoly = (unsigned int )crcpoly & 63U;
  adapter->mcastmask = adapter->mcastmask | (1ULL << (int )crcpoly);
  return;
}
}
static void slic_mcast_set_mask(struct adapter *adapter )
{
  struct slic_regs *slic_regs ;
  {
  slic_regs = adapter->slic_regs;
  if ((adapter->macopts & 40U) != 0U) {
    slic_reg32_write((void *)(& slic_regs->slic_mcastlow), 4294967295U, 1);
    slic_reg32_write((void *)(& slic_regs->slic_mcasthigh), 4294967295U, 1);
  } else {
    slic_reg32_write((void *)(& slic_regs->slic_mcastlow), (unsigned int )adapter->mcastmask,
                     1);
    slic_reg32_write((void *)(& slic_regs->slic_mcasthigh), (unsigned int )(adapter->mcastmask >> 32),
                     1);
  }
  return;
}
}
static void slic_timer_ping(ulong dev )
{
  struct adapter *adapter ;
  struct sliccard *card ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  card = adapter->card;
  adapter->pingtimer.expires = (unsigned long )jiffies + 250UL;
  add_timer(& adapter->pingtimer);
  return;
}
}
static void slic_unmap_mmio_space(struct adapter *adapter )
{
  {
  if ((unsigned long )adapter->slic_regs != (unsigned long )((struct slic_regs *)0)) {
    iounmap((void volatile *)adapter->slic_regs);
  } else {
  }
  adapter->slic_regs = (struct slic_regs *)0;
  return;
}
}
static void slic_link_config(struct adapter *adapter , u32 linkspeed , u32 linkduplex )
{
  u32 *wphy ;
  u32 speed ;
  u32 duplex ;
  u32 phy_config ;
  u32 phy_advreg ;
  u32 phy_gctlreg ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  {
  if ((unsigned int )adapter->state != 1U) {
    return;
  } else {
  }
  if (linkspeed > 3U) {
    linkspeed = 2U;
  } else {
  }
  if (linkduplex > 2U) {
    linkduplex = 2U;
  } else {
  }
  wphy = & (adapter->slic_regs)->slic_wphy;
  if (linkspeed == 2U || linkspeed == 3U) {
    if ((adapter->flags & 8U) != 0U) {
      phy_advreg = 262176U;
      phy_advreg = phy_advreg | 384U;
      slic_reg32_write((void *)wphy, phy_advreg, 1);
      if (linkspeed == 2U) {
        phy_config = 37376U;
        slic_reg32_write((void *)wphy, phy_config, 1);
      } else {
        phy_config = 2048U;
        slic_reg32_write((void *)wphy, phy_config, 1);
        __ms = 10UL;
        goto ldv_47098;
        ldv_47097:
        __const_udelay(4295000UL);
        ldv_47098:
        tmp = __ms;
        __ms = __ms - 1UL;
        if (tmp != 0UL) {
          goto ldv_47097;
        } else {
        }
        phy_config = 33088U;
        slic_reg32_write((void *)wphy, phy_config, 1);
      }
    } else {
      if (linkspeed == 2U) {
        phy_advreg = 262624U;
      } else {
        phy_advreg = 262144U;
      }
      phy_advreg = phy_advreg | 3072U;
      phy_advreg = phy_advreg | 1U;
      slic_reg32_write((void *)wphy, phy_advreg, 1);
      phy_gctlreg = 590336U;
      slic_reg32_write((void *)wphy, phy_gctlreg, 1);
      if ((unsigned int )adapter->subsysid != 8U) {
        phy_config = 1048680U;
        slic_reg32_write((void *)wphy, phy_config, 1);
        phy_config = 37376U;
        slic_reg32_write((void *)wphy, phy_config, 1);
      } else {
        phy_config = 4608U;
        slic_reg32_write((void *)wphy, phy_config, 1);
      }
    }
  } else {
    if (linkspeed == 0U) {
      speed = 0U;
    } else {
      speed = 8192U;
    }
    if (linkduplex == 0U) {
      duplex = 0U;
    } else {
      duplex = 256U;
    }
    if ((unsigned int )adapter->subsysid != 8U) {
      phy_config = 1048584U;
      slic_reg32_write((void *)wphy, phy_config, 1);
    } else {
    }
    phy_config = (speed | duplex) | 2048U;
    slic_reg32_write((void *)wphy, phy_config, 1);
    __ms___0 = 10UL;
    goto ldv_47102;
    ldv_47101:
    __const_udelay(4295000UL);
    ldv_47102:
    tmp___0 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_47101;
    } else {
    }
    if ((unsigned int )adapter->subsysid != 8U) {
      phy_config = (speed | duplex) | 32768U;
      slic_reg32_write((void *)wphy, phy_config, 1);
    } else {
      phy_config = speed | duplex;
      slic_reg32_write((void *)wphy, phy_config, 1);
    }
  }
  return;
}
}
static int slic_card_download_gbrcv(struct adapter *adapter )
{
  struct firmware const *fw ;
  char const *file ;
  int ret ;
  struct slic_regs *slic_regs ;
  u32 codeaddr ;
  u32 instruction ;
  int index ;
  u32 rcvucodelen ;
  {
  file = "";
  slic_regs = adapter->slic_regs;
  index = 0;
  rcvucodelen = 0U;
  switch ((int )adapter->devid) {
  case 7:
  file = "slicoss/oasisrcvucode.sys";
  goto ldv_47116;
  case 5:
  file = "slicoss/gbrcvucode.sys";
  goto ldv_47116;
  default: ;
  return (-2);
  }
  ldv_47116:
  ret = request_firmware(& fw, file, & (adapter->pcidev)->dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (adapter->pcidev)->dev), "Failed to load firmware %s\n",
            file);
    return (ret);
  } else {
  }
  rcvucodelen = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  switch ((int )adapter->devid) {
  case 7: ;
  if (rcvucodelen != OasisRcvUCodeLen) {
    release_firmware(fw);
    return (-22);
  } else {
  }
  goto ldv_47120;
  case 5: ;
  if (rcvucodelen != GBRcvUCodeLen) {
    release_firmware(fw);
    return (-22);
  } else {
  }
  goto ldv_47120;
  }
  ldv_47120:
  slic_reg32_write((void *)(& slic_regs->slic_rcv_wcs), 1073741824U, 1);
  codeaddr = 0U;
  goto ldv_47123;
  ldv_47122:
  slic_reg32_write((void *)(& slic_regs->slic_rcv_wcs), codeaddr, 1);
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  slic_reg32_write((void *)(& slic_regs->slic_rcv_wcs), instruction, 1);
  instruction = (u32 )*((u8 *)fw->data + (unsigned long )index);
  index = index + 1;
  slic_reg32_write((void *)(& slic_regs->slic_rcv_wcs), (u32 )((unsigned char )instruction),
                   1);
  codeaddr = codeaddr + 1U;
  ldv_47123: ;
  if (codeaddr < rcvucodelen) {
    goto ldv_47122;
  } else {
  }
  release_firmware(fw);
  slic_reg32_write((void *)(& slic_regs->slic_rcv_wcs), 2147483648U, 1);
  return (0);
}
}
static int slic_card_download(struct adapter *adapter )
{
  struct firmware const *fw ;
  char const *file ;
  int ret ;
  u32 section ;
  int thissectionsize ;
  int codeaddr ;
  struct slic_regs *slic_regs ;
  u32 instruction ;
  u32 baseaddress ;
  u32 i ;
  u32 numsects ;
  u32 sectsize[3U] ;
  u32 sectstart[3U] ;
  int ucode_start ;
  int index ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  {
  file = "";
  slic_regs = adapter->slic_regs;
  numsects = 0U;
  index = 0;
  switch ((int )adapter->devid) {
  case 7:
  file = "slicoss/oasisdownload.sys";
  goto ldv_47146;
  case 5:
  file = "slicoss/gbdownload.sys";
  goto ldv_47146;
  default: ;
  return (-2);
  }
  ldv_47146:
  ret = request_firmware(& fw, file, & (adapter->pcidev)->dev);
  if (ret != 0) {
    dev_err((struct device const *)(& (adapter->pcidev)->dev), "Failed to load firmware %s\n",
            file);
    return (ret);
  } else {
  }
  numsects = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  i = 0U;
  goto ldv_47150;
  ldv_47149:
  sectsize[i] = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  i = i + 1U;
  ldv_47150: ;
  if (i < numsects) {
    goto ldv_47149;
  } else {
  }
  i = 0U;
  goto ldv_47153;
  ldv_47152:
  sectstart[i] = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  i = i + 1U;
  ldv_47153: ;
  if (i < numsects) {
    goto ldv_47152;
  } else {
  }
  ucode_start = index;
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  section = 0U;
  goto ldv_47159;
  ldv_47158:
  baseaddress = sectstart[section];
  thissectionsize = (int )(sectsize[section] >> 3);
  codeaddr = 0;
  goto ldv_47156;
  ldv_47155:
  slic_reg32_write((void *)(& slic_regs->slic_wcs), baseaddress + (u32 )codeaddr,
                   1);
  slic_reg32_write((void *)(& slic_regs->slic_wcs), instruction, 1);
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  slic_reg32_write((void *)(& slic_regs->slic_wcs), instruction, 1);
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  codeaddr = codeaddr + 1;
  ldv_47156: ;
  if (codeaddr < thissectionsize) {
    goto ldv_47155;
  } else {
  }
  section = section + 1U;
  ldv_47159: ;
  if (section < numsects) {
    goto ldv_47158;
  } else {
  }
  index = ucode_start;
  section = 0U;
  goto ldv_47166;
  ldv_47165:
  instruction = *((u32 *)fw->data + (unsigned long )index);
  baseaddress = sectstart[section];
  if (baseaddress <= 32767U) {
    goto ldv_47161;
  } else {
  }
  thissectionsize = (int )(sectsize[section] >> 3);
  codeaddr = 0;
  goto ldv_47163;
  ldv_47162:
  slic_reg32_write((void *)(& slic_regs->slic_wcs), (baseaddress + (u32 )codeaddr) | 1073741824U,
                   1);
  slic_reg32_write((void *)(& slic_regs->slic_wcs), instruction, 1);
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  slic_reg32_write((void *)(& slic_regs->slic_wcs), instruction, 1);
  instruction = *((u32 *)fw->data + (unsigned long )index);
  index = index + 4;
  codeaddr = codeaddr + 1;
  ldv_47163: ;
  if (codeaddr < thissectionsize) {
    goto ldv_47162;
  } else {
  }
  ldv_47161:
  section = section + 1U;
  ldv_47166: ;
  if (section < numsects) {
    goto ldv_47165;
  } else {
  }
  release_firmware(fw);
  __ms = 10UL;
  goto ldv_47170;
  ldv_47169:
  __const_udelay(4295000UL);
  ldv_47170:
  tmp = __ms;
  __ms = __ms - 1UL;
  if (tmp != 0UL) {
    goto ldv_47169;
  } else {
  }
  slic_reg32_write((void *)(& slic_regs->slic_wcs), 2147483648U, 1);
  __ms___0 = 20UL;
  goto ldv_47174;
  ldv_47173:
  __const_udelay(4295000UL);
  ldv_47174:
  tmp___0 = __ms___0;
  __ms___0 = __ms___0 - 1UL;
  if (tmp___0 != 0UL) {
    goto ldv_47173;
  } else {
  }
  return (0);
}
}
static void slic_adapter_set_hwaddr(struct adapter *adapter )
{
  struct sliccard *card ;
  bool tmp ;
  {
  card = adapter->card;
  if ((unsigned long )adapter->card != (unsigned long )((struct sliccard *)0) && card->config_set != 0U) {
    memcpy((void *)(& adapter->macaddr), (void const *)(& card->config.MacInfo[adapter->functionnumber].macaddrA),
             6UL);
    tmp = is_zero_ether_addr((u8 const *)(& adapter->currmacaddr));
    if ((int )tmp) {
      memcpy((void *)(& adapter->currmacaddr), (void const *)(& adapter->macaddr),
               6UL);
    } else {
    }
    if ((unsigned long )adapter->netdev != (unsigned long )((struct net_device *)0)) {
      memcpy((void *)(adapter->netdev)->dev_addr, (void const *)(& adapter->currmacaddr),
               6UL);
    } else {
    }
  } else {
  }
  return;
}
}
static void slic_intagg_set(struct adapter *adapter , u32 value )
{
  {
  slic_reg32_write((void *)(& (adapter->slic_regs)->slic_intagg), value, 1);
  (adapter->card)->loadlevel_current = value;
  return;
}
}
static void slic_soft_reset(struct adapter *adapter )
{
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long __ms___0 ;
  unsigned long tmp___0 ;
  {
  if ((adapter->card)->state == 1U) {
    slic_reg32_write((void *)(& (adapter->slic_regs)->slic_quiesce), 0U, 1);
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_47191;
      ldv_47190:
      __const_udelay(4295000UL);
      ldv_47191:
      tmp = __ms;
      __ms = __ms - 1UL;
      if (tmp != 0UL) {
        goto ldv_47190;
      } else {
      }
    }
  } else {
  }
  slic_reg32_write((void *)(& (adapter->slic_regs)->slic_reset), 57005U, 1);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms___0 = 1UL;
    goto ldv_47195;
    ldv_47194:
    __const_udelay(4295000UL);
    ldv_47195:
    tmp___0 = __ms___0;
    __ms___0 = __ms___0 - 1UL;
    if (tmp___0 != 0UL) {
      goto ldv_47194;
    } else {
    }
  }
  return;
}
}
static void slic_mac_address_config(struct adapter *adapter )
{
  u32 value ;
  u32 value2 ;
  struct slic_regs *slic_regs ;
  __u32 tmp ;
  {
  slic_regs = adapter->slic_regs;
  tmp = __fswab32(*((__be32 *)(& adapter->currmacaddr) + 2U));
  value = tmp;
  slic_reg32_write((void *)(& slic_regs->slic_wraddral), value, 1);
  slic_reg32_write((void *)(& slic_regs->slic_wraddrbl), value, 1);
  value2 = (unsigned int )(((int )adapter->currmacaddr[0] << 8) | (int )adapter->currmacaddr[1]) & 65535U;
  slic_reg32_write((void *)(& slic_regs->slic_wraddrah), value2, 1);
  slic_reg32_write((void *)(& slic_regs->slic_wraddrbh), value2, 1);
  slic_mcast_set_mask(adapter);
  return;
}
}
static void slic_mac_config(struct adapter *adapter )
{
  u32 value ;
  struct slic_regs *slic_regs ;
  {
  slic_regs = adapter->slic_regs;
  if ((unsigned int )adapter->linkspeed == 3U) {
    value = 1578560U;
  } else {
    value = 1840704U;
  }
  if ((unsigned int )adapter->linkspeed == 3U) {
    value = value | 536870912U;
  } else {
  }
  if ((unsigned int )adapter->linkduplex == 1U || (adapter->macopts & 16U) != 0U) {
    value = value | 268435456U;
  } else {
  }
  slic_reg32_write((void *)(& slic_regs->slic_wmcfg), value, 1);
  slic_mac_address_config(adapter);
  return;
}
}
static void slic_config_set(struct adapter *adapter , bool linkchange )
{
  u32 value ;
  u32 RcrReset ;
  struct slic_regs *slic_regs ;
  {
  slic_regs = adapter->slic_regs;
  if ((int )linkchange) {
    slic_mac_config(adapter);
    RcrReset = 2147483648U;
  } else {
    slic_mac_address_config(adapter);
    RcrReset = 0U;
  }
  if ((unsigned int )adapter->linkduplex == 1U) {
    value = 3758096384U;
    slic_reg32_write((void *)(& slic_regs->slic_wxcfg), value, 1);
    value = RcrReset | 438042624U;
  } else {
    value = 3221225472U;
    slic_reg32_write((void *)(& slic_regs->slic_wxcfg), value, 1);
    value = RcrReset | 303824896U;
  }
  if ((unsigned int )adapter->state != 0U) {
    value = value | 1073741824U;
  } else {
  }
  if ((adapter->macopts & 8U) != 0U) {
    value = value | 536870912U;
  } else {
  }
  slic_reg32_write((void *)(& slic_regs->slic_wrcfg), value, 1);
  return;
}
}
static void slic_config_clear(struct adapter *adapter )
{
  u32 value ;
  u32 phy_config ;
  struct slic_regs *slic_regs ;
  {
  slic_regs = adapter->slic_regs;
  value = 2684354560U;
  slic_reg32_write((void *)(& slic_regs->slic_wxcfg), value, 1);
  value = 2317090816U;
  slic_reg32_write((void *)(& slic_regs->slic_wrcfg), value, 1);
  phy_config = 2048U;
  slic_reg32_write((void *)(& slic_regs->slic_wphy), phy_config, 1);
  return;
}
}
static bool slic_mac_filter(struct adapter *adapter , struct ether_header *ether_frame )
{
  struct net_device *netdev ;
  u32 opts ;
  bool tmp ;
  struct mcast_address *mcaddr ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  netdev = adapter->netdev;
  opts = adapter->macopts;
  if ((opts & 8U) != 0U) {
    return (1);
  } else {
  }
  tmp = is_broadcast_ether_addr((u8 const *)(& ether_frame->ether_dhost));
  if ((int )tmp) {
    if ((opts & 2U) != 0U) {
      adapter->rcv_broadcasts = adapter->rcv_broadcasts + 1U;
      return (1);
    } else {
    }
    return (0);
  } else {
  }
  tmp___1 = is_multicast_ether_addr((u8 const *)(& ether_frame->ether_dhost));
  if ((int )tmp___1) {
    if ((opts & 32U) != 0U) {
      adapter->rcv_multicasts = adapter->rcv_multicasts + 1U;
      netdev->stats.multicast = netdev->stats.multicast + 1UL;
      return (1);
    } else {
    }
    if ((opts & 4U) != 0U) {
      mcaddr = adapter->mcastaddrs;
      goto ldv_47229;
      ldv_47228:
      tmp___0 = ether_addr_equal((u8 const *)(& mcaddr->address), (u8 const *)(& ether_frame->ether_dhost));
      if ((int )tmp___0) {
        adapter->rcv_multicasts = adapter->rcv_multicasts + 1U;
        netdev->stats.multicast = netdev->stats.multicast + 1UL;
        return (1);
      } else {
      }
      mcaddr = mcaddr->next;
      ldv_47229: ;
      if ((unsigned long )mcaddr != (unsigned long )((struct mcast_address *)0)) {
        goto ldv_47228;
      } else {
      }
      return (0);
    } else {
    }
    return (0);
  } else {
  }
  if ((int )opts & 1) {
    adapter->rcv_unicasts = adapter->rcv_unicasts + 1U;
    return (1);
  } else {
  }
  return (0);
}
}
static int slic_mac_set_address(struct net_device *dev , void *ptr )
{
  struct adapter *adapter ;
  void *tmp ;
  struct sockaddr *addr ;
  bool tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  addr = (struct sockaddr *)ptr;
  tmp___0 = netif_running((struct net_device const *)dev);
  if ((int )tmp___0) {
    return (-16);
  } else {
  }
  if ((unsigned long )adapter == (unsigned long )((struct adapter *)0)) {
    return (-16);
  } else {
  }
  tmp___1 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    return (-22);
  } else {
  }
  memcpy((void *)dev->dev_addr, (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  memcpy((void *)(& adapter->currmacaddr), (void const *)(& addr->sa_data), (size_t )dev->addr_len);
  slic_config_set(adapter, 1);
  return (0);
}
}
static void slic_timer_load_check(ulong cardaddr )
{
  struct sliccard *card ;
  struct adapter *adapter ;
  u32 *intagg ;
  u32 load ;
  u32 level ;
  {
  card = (struct sliccard *)cardaddr;
  adapter = card->master;
  load = card->events;
  level = 0U;
  if ((((unsigned long )adapter != (unsigned long )((struct adapter *)0) && (unsigned int )adapter->state == 1U) && card->state == 1U) && slic_global.dynamic_intagg != 0U) {
    intagg = & (adapter->slic_regs)->slic_intagg;
    if ((unsigned int )adapter->devid == 5U) {
      if ((unsigned int )adapter->linkspeed == 3U) {
        level = 100U;
      } else
      if (load > 16000U) {
        level = 250U;
      } else
      if (load > 14000U) {
        level = 200U;
      } else
      if (load > 12000U) {
        level = 150U;
      } else
      if (load > 10000U) {
        level = 100U;
      } else
      if (load > 8000U) {
        level = 50U;
      } else {
        level = 0U;
      }
      if (card->loadlevel_current != level) {
        card->loadlevel_current = level;
        slic_reg32_write((void *)intagg, level, 1);
      } else {
      }
    } else {
      if (load > 16000U) {
        level = 250U;
      } else
      if (load > 14000U) {
        level = 200U;
      } else
      if (load > 12000U) {
        level = 150U;
      } else
      if (load > 10000U) {
        level = 100U;
      } else
      if (load > 8000U) {
        level = 50U;
      } else {
        level = 0U;
      }
      if (card->loadlevel_current != level) {
        card->loadlevel_current = level;
        slic_reg32_write((void *)intagg, level, 1);
      } else {
      }
    }
  } else {
  }
  card->events = 0U;
  card->loadtimer.expires = (unsigned long )jiffies + 250UL;
  add_timer(& card->loadtimer);
  return;
}
}
static int slic_upr_queue_request(struct adapter *adapter , u32 upr_request , u32 upr_data ,
                                  u32 upr_data_h , u32 upr_buffer , u32 upr_buffer_h )
{
  struct slic_upr *upr ;
  struct slic_upr *uprqueue ;
  void *tmp ;
  {
  tmp = kmalloc(32UL, 32U);
  upr = (struct slic_upr *)tmp;
  if ((unsigned long )upr == (unsigned long )((struct slic_upr *)0)) {
    return (-12);
  } else {
  }
  upr->adapter = adapter->port;
  upr->upr_request = upr_request;
  upr->upr_data = upr_data;
  upr->upr_buffer = upr_buffer;
  upr->upr_data_h = upr_data_h;
  upr->upr_buffer_h = upr_buffer_h;
  upr->next = (struct slic_upr *)0;
  if ((unsigned long )adapter->upr_list != (unsigned long )((struct slic_upr *)0)) {
    uprqueue = adapter->upr_list;
    goto ldv_47256;
    ldv_47255:
    uprqueue = uprqueue->next;
    ldv_47256: ;
    if ((unsigned long )uprqueue->next != (unsigned long )((struct slic_upr *)0)) {
      goto ldv_47255;
    } else {
    }
    uprqueue->next = upr;
  } else {
    adapter->upr_list = upr;
  }
  return (0);
}
}
static void slic_upr_start(struct adapter *adapter )
{
  struct slic_upr *upr ;
  struct slic_regs *slic_regs ;
  {
  slic_regs = adapter->slic_regs;
  upr = adapter->upr_list;
  if ((unsigned long )upr == (unsigned long )((struct slic_upr *)0)) {
    return;
  } else {
  }
  if (adapter->upr_busy != 0U) {
    return;
  } else {
  }
  adapter->upr_busy = 1U;
  switch (upr->upr_request) {
  case 0U: ;
  if (upr->upr_data_h == 0U) {
    slic_reg32_write((void *)(& slic_regs->slic_stats), upr->upr_data, 1);
  } else {
    slic_reg64_write(adapter, (void *)(& slic_regs->slic_stats64), upr->upr_data,
                     (void *)(& slic_regs->slic_addr_upper), upr->upr_data_h, 1);
  }
  goto ldv_47264;
  case 1U:
  slic_reg64_write(adapter, (void *)(& slic_regs->slic_rlsr), upr->upr_data, (void *)(& slic_regs->slic_addr_upper),
                   upr->upr_data_h, 1);
  goto ldv_47264;
  case 3U:
  slic_reg64_write(adapter, (void *)(& slic_regs->slic_rconfig), upr->upr_data, (void *)(& slic_regs->slic_addr_upper),
                   upr->upr_data_h, 1);
  goto ldv_47264;
  case 8U:
  slic_reg32_write((void *)(& slic_regs->slic_ping), 1U, 1);
  goto ldv_47264;
  }
  ldv_47264: ;
  return;
}
}
static int slic_upr_request(struct adapter *adapter , u32 upr_request , u32 upr_data ,
                            u32 upr_data_h , u32 upr_buffer , u32 upr_buffer_h )
{
  unsigned long flags ;
  int rc ;
  {
  ldv_spin_lock();
  rc = slic_upr_queue_request(adapter, upr_request, upr_data, upr_data_h, upr_buffer,
                              upr_buffer_h);
  if (rc != 0) {
    goto err_unlock_irq;
  } else {
  }
  slic_upr_start(adapter);
  err_unlock_irq:
  spin_unlock_irqrestore(& adapter->upr_lock, flags);
  return (rc);
}
}
static void slic_link_upr_complete(struct adapter *adapter , u32 isr )
{
  u32 linkstatus ;
  uint linkup ;
  unsigned char linkspeed ;
  unsigned char linkduplex ;
  struct slic_shmem *pshmem ;
  {
  linkstatus = (adapter->pshmem)->linkstatus;
  if ((isr & 16777216U) != 0U || (isr & 131072U) != 0U) {
    pshmem = (struct slic_shmem *)adapter->phys_shmem;
    slic_upr_queue_request(adapter, 1U, (unsigned int )((long )(& pshmem->linkstatus)),
                           (unsigned int )((unsigned long long )(& pshmem->linkstatus) >> 32),
                           0U, 0U);
    return;
  } else {
  }
  if ((unsigned int )adapter->state != 1U) {
    return;
  } else {
  }
  linkup = (int )linkstatus & 1 ? 2U : 0U;
  if ((linkstatus & 8U) != 0U) {
    linkspeed = 3U;
  } else
  if ((linkstatus & 4U) != 0U) {
    linkspeed = 1U;
  } else {
    linkspeed = 0U;
  }
  if ((linkstatus & 2U) != 0U) {
    linkduplex = 1U;
  } else {
    linkduplex = 0U;
  }
  if ((unsigned int )adapter->linkstate == 0U && linkup == 0U) {
    return;
  } else {
  }
  if ((((unsigned int )adapter->linkstate == 2U && linkup == 2U) && (int )adapter->linkspeed == (int )linkspeed) && (int )adapter->linkduplex == (int )linkduplex) {
    return;
  } else {
  }
  if (linkup == 0U) {
    adapter->linkstate = 0U;
    return;
  } else {
  }
  adapter->linkspeed = linkspeed;
  adapter->linkduplex = linkduplex;
  if ((unsigned int )adapter->linkstate != 2U) {
    slic_config_set(adapter, 1);
    adapter->linkstate = 2U;
    netif_start_queue(adapter->netdev);
  } else {
  }
  return;
}
}
static void slic_upr_request_complete(struct adapter *adapter , u32 isr )
{
  struct sliccard *card ;
  struct slic_upr *upr ;
  unsigned long flags ;
  struct slic_stats *slicstats ;
  struct slic_stats *newstats ;
  struct slic_stats *old ;
  struct slicnet_stats *stst ;
  {
  card = adapter->card;
  ldv_spin_lock();
  upr = adapter->upr_list;
  if ((unsigned long )upr == (unsigned long )((struct slic_upr *)0)) {
    spin_unlock_irqrestore(& adapter->upr_lock, flags);
    return;
  } else {
  }
  adapter->upr_list = upr->next;
  upr->next = (struct slic_upr *)0;
  adapter->upr_busy = 0U;
  switch (upr->upr_request) {
  case 0U:
  slicstats = (struct slic_stats *)(& (adapter->pshmem)->inicstats);
  newstats = slicstats;
  old = & adapter->inicstats_prev;
  stst = & adapter->slic_stats;
  if ((isr & 16777216U) != 0U) {
    dev_err((struct device const *)(& (adapter->netdev)->dev), "SLIC_UPR_STATS command failed isr[%x]\n",
            isr);
    goto ldv_47300;
  } else {
  }
  stst->tcp.xmit_tcp_segs = stst->tcp.xmit_tcp_segs + (newstats->u.stats_GB.xmtGB.xmit_tcp_segs - old->u.stats_GB.xmtGB.xmit_tcp_segs);
  stst->tcp.xmit_tcp_bytes = stst->tcp.xmit_tcp_bytes + (newstats->u.stats_GB.xmtGB.xmit_tcp_bytes - old->u.stats_GB.xmtGB.xmit_tcp_bytes);
  stst->tcp.rcv_tcp_segs = stst->tcp.rcv_tcp_segs + (newstats->u.stats_GB.rcvGB.rcv_tcp_segs - old->u.stats_GB.rcvGB.rcv_tcp_segs);
  stst->tcp.rcv_tcp_bytes = stst->tcp.rcv_tcp_bytes + (newstats->u.stats_GB.rcvGB.rcv_tcp_bytes - old->u.stats_GB.rcvGB.rcv_tcp_bytes);
  stst->iface.xmt_bytes = stst->iface.xmt_bytes + (newstats->u.stats_GB.xmtGB.xmit_bytes - old->u.stats_GB.xmtGB.xmit_bytes);
  stst->iface.xmt_ucast = stst->iface.xmt_ucast + (newstats->u.stats_GB.xmtGB.xmit_unicasts - old->u.stats_GB.xmtGB.xmit_unicasts);
  stst->iface.rcv_bytes = stst->iface.rcv_bytes + (newstats->u.stats_GB.rcvGB.rcv_bytes - old->u.stats_GB.rcvGB.rcv_bytes);
  stst->iface.rcv_ucast = stst->iface.rcv_ucast + (newstats->u.stats_GB.rcvGB.rcv_unicasts - old->u.stats_GB.rcvGB.rcv_unicasts);
  stst->iface.xmt_errors = stst->iface.xmt_errors + (newstats->u.stats_GB.xmtGB.xmit_collisions - old->u.stats_GB.xmtGB.xmit_collisions);
  stst->iface.xmt_errors = stst->iface.xmt_errors + (newstats->u.stats_GB.xmtGB.xmit_excess_collisions - old->u.stats_GB.xmtGB.xmit_excess_collisions);
  stst->iface.xmt_errors = stst->iface.xmt_errors + (newstats->u.stats_GB.xmtGB.xmit_other_error - old->u.stats_GB.xmtGB.xmit_other_error);
  stst->iface.rcv_errors = stst->iface.rcv_errors + (newstats->u.stats_GB.rcvGB.rcv_other_error - old->u.stats_GB.rcvGB.rcv_other_error);
  stst->iface.rcv_discards = stst->iface.rcv_discards + (newstats->u.stats_GB.rcvGB.rcv_drops - old->u.stats_GB.rcvGB.rcv_drops);
  if (newstats->u.stats_GB.rcvGB.rcv_drops > old->u.stats_GB.rcvGB.rcv_drops) {
    adapter->rcv_drops = adapter->rcv_drops + ((u32 )newstats->u.stats_GB.rcvGB.rcv_drops - (u32 )old->u.stats_GB.rcvGB.rcv_drops);
  } else {
  }
  memcpy((void *)old, (void const *)newstats, 104UL);
  goto ldv_47300;
  case 1U:
  slic_link_upr_complete(adapter, isr);
  goto ldv_47300;
  case 3U: ;
  goto ldv_47300;
  case 8U:
  card->pingstatus = card->pingstatus | (isr & 7405568U);
  goto ldv_47300;
  }
  ldv_47300:
  kfree((void const *)upr);
  slic_upr_start(adapter);
  spin_unlock_irqrestore(& adapter->upr_lock, flags);
  return;
}
}
static int slic_config_get(struct adapter *adapter , u32 config , u32 config_h )
{
  int tmp ;
  {
  tmp = slic_upr_request(adapter, 3U, config, config_h, 0U, 0U);
  return (tmp);
}
}
static u16 slic_eeprom_cksum(void *eeprom , unsigned int len )
{
  u16 *wp ;
  u32 checksum ;
  u16 *tmp ;
  {
  wp = (u16 *)eeprom;
  checksum = 0U;
  goto ldv_47316;
  ldv_47315:
  tmp = wp;
  wp = wp + 1;
  checksum = (u32 )*tmp + checksum;
  len = len - 2U;
  ldv_47316: ;
  if (len > 1U) {
    goto ldv_47315;
  } else {
  }
  if (len != 0U) {
    checksum = (u32 )*((u8 *)wp) + checksum;
  } else {
  }
  goto ldv_47319;
  ldv_47318:
  checksum = (checksum & 65535U) + (checksum >> 16);
  ldv_47319: ;
  if (checksum >> 16 != 0U) {
    goto ldv_47318;
  } else {
  }
  return (~ ((int )((u16 )checksum)));
}
}
static void slic_rspqueue_free(struct adapter *adapter )
{
  int i ;
  struct slic_rspqueue *rspq ;
  {
  rspq = & adapter->rspqueue;
  i = 0;
  goto ldv_47327;
  ldv_47326: ;
  if ((unsigned long )rspq->vaddr[i] != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(adapter->pcidev, 4096UL, (void *)rspq->vaddr[i], rspq->paddr[i]);
  } else {
  }
  rspq->vaddr[i] = (u32 *)0U;
  rspq->paddr[i] = 0ULL;
  i = i + 1;
  ldv_47327: ;
  if ((u32 )i < rspq->num_pages) {
    goto ldv_47326;
  } else {
  }
  rspq->offset = 0U;
  rspq->pageindex = 0U;
  rspq->rspbuf = (struct slic_rspbuf *)0;
  return;
}
}
static int slic_rspqueue_init(struct adapter *adapter )
{
  int i ;
  struct slic_rspqueue *rspq ;
  struct slic_regs *slic_regs ;
  u32 paddrh ;
  void *tmp ;
  {
  rspq = & adapter->rspqueue;
  slic_regs = adapter->slic_regs;
  paddrh = 0U;
  memset((void *)rspq, 0, 184UL);
  rspq->num_pages = 10U;
  i = 0;
  goto ldv_47337;
  ldv_47336:
  tmp = pci_zalloc_consistent(adapter->pcidev, 4096UL, (dma_addr_t *)(& rspq->paddr) + (unsigned long )i);
  rspq->vaddr[i] = (u32 *)tmp;
  if ((unsigned long )rspq->vaddr[i] == (unsigned long )((u32 *)0U)) {
    dev_err((struct device const *)(& (adapter->pcidev)->dev), "pci_alloc_consistent failed\n");
    slic_rspqueue_free(adapter);
    return (-12);
  } else {
  }
  if (paddrh == 0U) {
    slic_reg32_write((void *)(& slic_regs->slic_rbar), (u32 )rspq->paddr[i] | 128U,
                     0);
  } else {
    slic_reg64_write(adapter, (void *)(& slic_regs->slic_rbar64), (u32 )rspq->paddr[i] | 128U,
                     (void *)(& slic_regs->slic_addr_upper), paddrh, 0);
  }
  i = i + 1;
  ldv_47337: ;
  if ((u32 )i < rspq->num_pages) {
    goto ldv_47336;
  } else {
  }
  rspq->offset = 0U;
  rspq->pageindex = 0U;
  rspq->rspbuf = (struct slic_rspbuf *)rspq->vaddr[0];
  return (0);
}
}
static struct slic_rspbuf *slic_rspqueue_getnext(struct adapter *adapter )
{
  struct slic_rspqueue *rspq ;
  struct slic_rspbuf *buf ;
  {
  rspq = & adapter->rspqueue;
  if ((rspq->rspbuf)->status == 0U) {
    return ((struct slic_rspbuf *)0);
  } else {
  }
  buf = rspq->rspbuf;
  rspq->offset = rspq->offset + 1U;
  if (rspq->offset <= 127U) {
    rspq->rspbuf = rspq->rspbuf + 1;
  } else {
    slic_reg64_write(adapter, (void *)(& (adapter->slic_regs)->slic_rbar64), (u32 )rspq->paddr[rspq->pageindex] | 128U,
                     (void *)(& (adapter->slic_regs)->slic_addr_upper), 0U, 0);
    rspq->pageindex = (rspq->pageindex + 1U) % rspq->num_pages;
    rspq->offset = 0U;
    rspq->rspbuf = (struct slic_rspbuf *)rspq->vaddr[rspq->pageindex];
  }
  return (buf);
}
}
static void slic_cmdqmem_free(struct adapter *adapter )
{
  struct slic_cmdqmem *cmdqmem ;
  int i ;
  {
  cmdqmem = & adapter->cmdqmem;
  i = 0;
  goto ldv_47350;
  ldv_47349: ;
  if ((unsigned long )cmdqmem->pages[i] != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(adapter->pcidev, 4096UL, (void *)cmdqmem->pages[i], cmdqmem->dma_pages[i]);
  } else {
  }
  i = i + 1;
  ldv_47350: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_47349;
  } else {
  }
  memset((void *)cmdqmem, 0, 520UL);
  return;
}
}
static u32 *slic_cmdqmem_addpage(struct adapter *adapter )
{
  struct slic_cmdqmem *cmdqmem ;
  u32 *pageaddr ;
  void *tmp ;
  {
  cmdqmem = & adapter->cmdqmem;
  if ((unsigned int )cmdqmem->pagecnt > 31U) {
    return ((u32 *)0U);
  } else {
  }
  tmp = pci_alloc_consistent(adapter->pcidev, 4096UL, (dma_addr_t *)(& cmdqmem->dma_pages) + (unsigned long )cmdqmem->pagecnt);
  pageaddr = (u32 *)tmp;
  if ((unsigned long )pageaddr == (unsigned long )((u32 *)0U)) {
    return ((u32 *)0U);
  } else {
  }
  cmdqmem->pages[cmdqmem->pagecnt] = pageaddr;
  cmdqmem->pagecnt = cmdqmem->pagecnt + 1;
  return (pageaddr);
}
}
static void slic_cmdq_free(struct adapter *adapter )
{
  struct slic_hostcmd *cmd ;
  struct sk_buff *tempskb ;
  {
  cmd = adapter->cmdq_all.head;
  goto ldv_47363;
  ldv_47362: ;
  if (cmd->busy != 0U) {
    tempskb = cmd->skb;
    if ((unsigned long )tempskb != (unsigned long )((struct sk_buff *)0)) {
      cmd->skb = (struct sk_buff *)0;
      dev_kfree_skb_irq(tempskb);
    } else {
    }
  } else {
  }
  cmd = cmd->next_all;
  ldv_47363: ;
  if ((unsigned long )cmd != (unsigned long )((struct slic_hostcmd *)0)) {
    goto ldv_47362;
  } else {
  }
  memset((void *)(& adapter->cmdq_all), 0, 96UL);
  memset((void *)(& adapter->cmdq_free), 0, 96UL);
  memset((void *)(& adapter->cmdq_done), 0, 96UL);
  slic_cmdqmem_free(adapter);
  return;
}
}
static void slic_cmdq_addcmdpage(struct adapter *adapter , u32 *page )
{
  struct slic_hostcmd *cmd ;
  struct slic_hostcmd *prev ;
  struct slic_hostcmd *tail ;
  struct slic_cmdqueue *cmdq ;
  int cmdcnt ;
  void *cmdaddr ;
  ulong phys_addr ;
  u32 phys_addrl ;
  u32 phys_addrh ;
  struct slic_handle *pslic_handle ;
  unsigned long flags ;
  phys_addr_t tmp ;
  ushort tmp___0 ;
  {
  cmdaddr = (void *)page;
  cmd = (struct slic_hostcmd *)cmdaddr;
  cmdcnt = 0;
  tmp = virt_to_phys((void volatile *)page);
  phys_addr = (ulong )tmp;
  phys_addrl = (unsigned int )phys_addr;
  phys_addrh = (unsigned int )((unsigned long long )phys_addr >> 32);
  prev = (struct slic_hostcmd *)0;
  tail = cmd;
  goto ldv_47381;
  ldv_47380:
  ldv_spin_lock();
  pslic_handle = adapter->pfree_slic_handles;
  adapter->pfree_slic_handles = pslic_handle->next;
  spin_unlock_irqrestore(& adapter->handle_lock, flags);
  pslic_handle->type = 2U;
  pslic_handle->address = (void *)cmd;
  tmp___0 = adapter->slic_handle_ix;
  adapter->slic_handle_ix = (ushort )((int )adapter->slic_handle_ix + 1);
  pslic_handle->offset = tmp___0;
  pslic_handle->other_handle = (struct slic_handle *)0;
  pslic_handle->next = (struct slic_handle *)0;
  cmd->pslic_handle = pslic_handle;
  cmd->cmd64.hosthandle = pslic_handle->token.handle.whole;
  cmd->busy = 0U;
  cmd->paddrl = phys_addrl;
  cmd->paddrh = phys_addrh;
  cmd->next_all = prev;
  cmd->next = prev;
  prev = cmd;
  phys_addrl = phys_addrl + 512U;
  cmdaddr = cmdaddr + 512UL;
  cmd = (struct slic_hostcmd *)cmdaddr;
  cmdcnt = cmdcnt + 1;
  ldv_47381: ;
  if ((unsigned int )cmdcnt <= 7U && (unsigned int )adapter->slic_handle_ix <= 255U) {
    goto ldv_47380;
  } else {
  }
  cmdq = & adapter->cmdq_all;
  cmdq->count = cmdq->count + cmdcnt;
  tail->next_all = cmdq->head;
  cmdq->head = prev;
  cmdq = & adapter->cmdq_free;
  ldv_spin_lock();
  cmdq->count = cmdq->count + cmdcnt;
  tail->next = cmdq->head;
  cmdq->head = prev;
  spin_unlock_irqrestore(& cmdq->lock, flags);
  return;
}
}
static int slic_cmdq_init(struct adapter *adapter )
{
  int i ;
  u32 *pageaddr ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  memset((void *)(& adapter->cmdq_all), 0, 96UL);
  memset((void *)(& adapter->cmdq_free), 0, 96UL);
  memset((void *)(& adapter->cmdq_done), 0, 96UL);
  spinlock_check(& adapter->cmdq_all.lock);
  __raw_spin_lock_init(& adapter->cmdq_all.lock.__annonCompField18.rlock, "&(&adapter->cmdq_all.lock)->rlock",
                       & __key);
  spinlock_check(& adapter->cmdq_free.lock);
  __raw_spin_lock_init(& adapter->cmdq_free.lock.__annonCompField18.rlock, "&(&adapter->cmdq_free.lock)->rlock",
                       & __key___0);
  spinlock_check(& adapter->cmdq_done.lock);
  __raw_spin_lock_init(& adapter->cmdq_done.lock.__annonCompField18.rlock, "&(&adapter->cmdq_done.lock)->rlock",
                       & __key___1);
  memset((void *)(& adapter->cmdqmem), 0, 520UL);
  adapter->slic_handle_ix = 1U;
  i = 0;
  goto ldv_47392;
  ldv_47391:
  pageaddr = slic_cmdqmem_addpage(adapter);
  if ((unsigned long )pageaddr == (unsigned long )((u32 *)0U)) {
    slic_cmdq_free(adapter);
    return (-12);
  } else {
  }
  slic_cmdq_addcmdpage(adapter, pageaddr);
  i = i + 1;
  ldv_47392: ;
  if ((unsigned int )i <= 31U) {
    goto ldv_47391;
  } else {
  }
  adapter->slic_handle_ix = 1U;
  return (0);
}
}
static void slic_cmdq_reset(struct adapter *adapter )
{
  struct slic_hostcmd *hcmd ;
  struct sk_buff *skb ;
  u32 outstanding ;
  unsigned long flags ;
  {
  ldv_spin_lock();
  spin_lock(& adapter->cmdq_done.lock);
  outstanding = (u32 )(adapter->cmdq_all.count - adapter->cmdq_done.count);
  outstanding = outstanding - (u32 )adapter->cmdq_free.count;
  hcmd = adapter->cmdq_all.head;
  goto ldv_47402;
  ldv_47401: ;
  if (hcmd->busy != 0U) {
    skb = hcmd->skb;
    hcmd->busy = 0U;
    hcmd->skb = (struct sk_buff *)0;
    dev_kfree_skb_irq(skb);
  } else {
  }
  hcmd = hcmd->next_all;
  ldv_47402: ;
  if ((unsigned long )hcmd != (unsigned long )((struct slic_hostcmd *)0)) {
    goto ldv_47401;
  } else {
  }
  adapter->cmdq_free.count = 0;
  adapter->cmdq_free.head = (struct slic_hostcmd *)0;
  adapter->cmdq_free.tail = (struct slic_hostcmd *)0;
  adapter->cmdq_done.count = 0;
  adapter->cmdq_done.head = (struct slic_hostcmd *)0;
  adapter->cmdq_done.tail = (struct slic_hostcmd *)0;
  adapter->cmdq_free.head = adapter->cmdq_all.head;
  hcmd = adapter->cmdq_all.head;
  goto ldv_47405;
  ldv_47404:
  adapter->cmdq_free.count = adapter->cmdq_free.count + 1;
  hcmd->next = hcmd->next_all;
  hcmd = hcmd->next_all;
  ldv_47405: ;
  if ((unsigned long )hcmd != (unsigned long )((struct slic_hostcmd *)0)) {
    goto ldv_47404;
  } else {
  }
  if (adapter->cmdq_free.count != adapter->cmdq_all.count) {
    dev_err((struct device const *)(& (adapter->netdev)->dev), "free_count %d != all count %d\n",
            adapter->cmdq_free.count, adapter->cmdq_all.count);
  } else {
  }
  spin_unlock(& adapter->cmdq_done.lock);
  spin_unlock_irqrestore(& adapter->cmdq_free.lock, flags);
  return;
}
}
static void slic_cmdq_getdone(struct adapter *adapter )
{
  struct slic_cmdqueue *done_cmdq ;
  struct slic_cmdqueue *free_cmdq ;
  unsigned long flags ;
  {
  done_cmdq = & adapter->cmdq_done;
  free_cmdq = & adapter->cmdq_free;
  ldv_spin_lock();
  free_cmdq->head = done_cmdq->head;
  free_cmdq->count = done_cmdq->count;
  done_cmdq->head = (struct slic_hostcmd *)0;
  done_cmdq->tail = (struct slic_hostcmd *)0;
  done_cmdq->count = 0;
  spin_unlock_irqrestore(& done_cmdq->lock, flags);
  return;
}
}
static struct slic_hostcmd *slic_cmdq_getfree(struct adapter *adapter )
{
  struct slic_cmdqueue *cmdq ;
  struct slic_hostcmd *cmd ;
  unsigned long flags ;
  u32 *pageaddr ;
  {
  cmdq = & adapter->cmdq_free;
  cmd = (struct slic_hostcmd *)0;
  lock_and_retry:
  ldv_spin_lock();
  retry:
  cmd = cmdq->head;
  if ((unsigned long )cmd != (unsigned long )((struct slic_hostcmd *)0)) {
    cmdq->head = cmd->next;
    cmdq->count = cmdq->count - 1;
    spin_unlock_irqrestore(& cmdq->lock, flags);
  } else {
    slic_cmdq_getdone(adapter);
    cmd = cmdq->head;
    if ((unsigned long )cmd != (unsigned long )((struct slic_hostcmd *)0)) {
      goto retry;
    } else {
      spin_unlock_irqrestore(& cmdq->lock, flags);
      pageaddr = slic_cmdqmem_addpage(adapter);
      if ((unsigned long )pageaddr != (unsigned long )((u32 *)0U)) {
        slic_cmdq_addcmdpage(adapter, pageaddr);
        goto lock_and_retry;
      } else {
      }
    }
  }
  return (cmd);
}
}
static void slic_cmdq_putdone_irq(struct adapter *adapter , struct slic_hostcmd *cmd )
{
  struct slic_cmdqueue *cmdq ;
  {
  cmdq = & adapter->cmdq_done;
  spin_lock(& cmdq->lock);
  cmd->busy = 0U;
  cmd->next = cmdq->head;
  cmdq->head = cmd;
  cmdq->count = cmdq->count + 1;
  if (adapter->xmitq_full != 0U && cmdq->count > 10) {
    netif_wake_queue(adapter->netdev);
  } else {
  }
  spin_unlock(& cmdq->lock);
  return;
}
}
static int slic_rcvqueue_fill(struct adapter *adapter )
{
  void *paddr ;
  u32 paddrl ;
  u32 paddrh ;
  struct slic_rcvqueue *rcvq ;
  int i ;
  struct device *dev ;
  struct slic_rcvbuf *rcvbuf ;
  struct sk_buff *skb ;
  dma_addr_t tmp ;
  {
  rcvq = & adapter->rcvqueue;
  i = 0;
  dev = & (adapter->netdev)->dev;
  goto ldv_47442;
  ldv_47441: ;
  retry_rcvqfill:
  skb = alloc_skb(2048U, 32U);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    tmp = pci_map_single(adapter->pcidev, (void *)skb->data, 2048UL, 2);
    paddr = (void *)tmp;
    paddrl = (unsigned int )((long )paddr);
    paddrh = (unsigned int )((unsigned long long )paddr >> 32);
    skb->len = 34U;
    rcvbuf = (struct slic_rcvbuf *)skb->head;
    rcvbuf->status = 0U;
    skb->__annonCompField87.__annonCompField86.next = (struct sk_buff *)0;
    if (paddrl == 0U) {
      dev_err((struct device const *)dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
              "slic_rcvqueue_fill");
      dev_err((struct device const *)dev, "skb[%p] PROBLEM\n", skb);
      dev_err((struct device const *)dev, "         skbdata[%p]\n", skb->data);
      dev_err((struct device const *)dev, "         skblen[%x]\n", skb->len);
      dev_err((struct device const *)dev, "         paddr[%p]\n", paddr);
      dev_err((struct device const *)dev, "         paddrl[%x]\n", paddrl);
      dev_err((struct device const *)dev, "         paddrh[%x]\n", paddrh);
      dev_err((struct device const *)dev, "         rcvq->head[%p]\n", rcvq->head);
      dev_err((struct device const *)dev, "         rcvq->tail[%p]\n", rcvq->tail);
      dev_err((struct device const *)dev, "         rcvq->count[%x]\n", rcvq->count);
      dev_err((struct device const *)dev, "SKIP THIS SKB!!!!!!!!\n");
      goto retry_rcvqfill;
    } else {
    }
    if (paddrh == 0U) {
      slic_reg32_write((void *)(& (adapter->slic_regs)->slic_hbar), paddrl, 0);
    } else {
      slic_reg64_write(adapter, (void *)(& (adapter->slic_regs)->slic_hbar64), paddrl,
                       (void *)(& (adapter->slic_regs)->slic_addr_upper), paddrh,
                       0);
    }
    if ((unsigned long )rcvq->head != (unsigned long )((struct sk_buff *)0)) {
      (rcvq->tail)->__annonCompField87.__annonCompField86.next = skb;
    } else {
      rcvq->head = skb;
    }
    rcvq->tail = skb;
    rcvq->count = rcvq->count + 1U;
    i = i + 1;
  } else {
    dev_err((struct device const *)(& (adapter->netdev)->dev), "slic_rcvqueue_fill could only get [%d] skbuffs\n",
            i);
    goto ldv_47440;
  }
  ldv_47442: ;
  if (i <= 15) {
    goto ldv_47441;
  } else {
  }
  ldv_47440: ;
  return (i);
}
}
static void slic_rcvqueue_free(struct adapter *adapter )
{
  struct slic_rcvqueue *rcvq ;
  struct sk_buff *skb ;
  {
  rcvq = & adapter->rcvqueue;
  goto ldv_47449;
  ldv_47448:
  skb = rcvq->head;
  rcvq->head = (rcvq->head)->__annonCompField87.__annonCompField86.next;
  consume_skb(skb);
  ldv_47449: ;
  if ((unsigned long )rcvq->head != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_47448;
  } else {
  }
  rcvq->tail = (struct sk_buff *)0;
  rcvq->head = (struct sk_buff *)0;
  rcvq->count = 0U;
  return;
}
}
static int slic_rcvqueue_init(struct adapter *adapter )
{
  int i ;
  int count ;
  struct slic_rcvqueue *rcvq ;
  int tmp ;
  {
  rcvq = & adapter->rcvqueue;
  rcvq->tail = (struct sk_buff *)0;
  rcvq->head = (struct sk_buff *)0;
  rcvq->size = 256U;
  rcvq->errors = 0U;
  rcvq->count = 0U;
  i = 16;
  count = 0;
  goto ldv_47458;
  ldv_47457:
  tmp = slic_rcvqueue_fill(adapter);
  count = tmp + count;
  i = i - 1;
  ldv_47458: ;
  if (i != 0) {
    goto ldv_47457;
  } else {
  }
  if (rcvq->count <= 127U) {
    slic_rcvqueue_free(adapter);
    return (-12);
  } else {
  }
  return (0);
}
}
static struct sk_buff *slic_rcvqueue_getnext(struct adapter *adapter )
{
  struct slic_rcvqueue *rcvq ;
  struct sk_buff *skb ;
  struct slic_rcvbuf *rcvbuf ;
  int count ;
  {
  rcvq = & adapter->rcvqueue;
  if (rcvq->count != 0U) {
    skb = rcvq->head;
    rcvbuf = (struct slic_rcvbuf *)skb->head;
    if ((int )rcvbuf->status < 0) {
      rcvq->head = (rcvq->head)->__annonCompField87.__annonCompField86.next;
      skb->__annonCompField87.__annonCompField86.next = (struct sk_buff *)0;
      rcvq->count = rcvq->count - 1U;
    } else {
      skb = (struct sk_buff *)0;
    }
  } else {
    dev_err((struct device const *)(& (adapter->netdev)->dev), "RcvQ Empty!! rcvq[%p] count[%x]\n",
            rcvq, rcvq->count);
    skb = (struct sk_buff *)0;
  }
  goto ldv_47469;
  ldv_47468:
  count = slic_rcvqueue_fill(adapter);
  if (count == 0) {
    goto ldv_47467;
  } else {
  }
  ldv_47469: ;
  if (rcvq->count <= 239U) {
    goto ldv_47468;
  } else {
  }
  ldv_47467: ;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    rcvq->errors = 0U;
  } else {
  }
  return (skb);
}
}
static u32 slic_rcvqueue_reinsert(struct adapter *adapter , struct sk_buff *skb )
{
  struct slic_rcvqueue *rcvq ;
  void *paddr ;
  u32 paddrl ;
  u32 paddrh ;
  struct slic_rcvbuf *rcvbuf ;
  struct device *dev ;
  dma_addr_t tmp ;
  {
  rcvq = & adapter->rcvqueue;
  rcvbuf = (struct slic_rcvbuf *)skb->head;
  tmp = pci_map_single(adapter->pcidev, (void *)skb->head, 2048UL, 2);
  paddr = (void *)tmp;
  rcvbuf->status = 0U;
  skb->__annonCompField87.__annonCompField86.next = (struct sk_buff *)0;
  paddrl = (unsigned int )((long )paddr);
  paddrh = (unsigned int )((unsigned long long )paddr >> 32);
  if (paddrl == 0U) {
    dev = & (adapter->netdev)->dev;
    dev_err((struct device const *)dev, "%s: LOW 32bits PHYSICAL ADDRESS == 0\n",
            "slic_rcvqueue_reinsert");
    dev_err((struct device const *)dev, "skb[%p] PROBLEM\n", skb);
    dev_err((struct device const *)dev, "         skbdata[%p]\n", skb->data);
    dev_err((struct device const *)dev, "         skblen[%x]\n", skb->len);
    dev_err((struct device const *)dev, "         paddr[%p]\n", paddr);
    dev_err((struct device const *)dev, "         paddrl[%x]\n", paddrl);
    dev_err((struct device const *)dev, "         paddrh[%x]\n", paddrh);
    dev_err((struct device const *)dev, "         rcvq->head[%p]\n", rcvq->head);
    dev_err((struct device const *)dev, "         rcvq->tail[%p]\n", rcvq->tail);
    dev_err((struct device const *)dev, "         rcvq->count[%x]\n", rcvq->count);
  } else {
  }
  if (paddrh == 0U) {
    slic_reg32_write((void *)(& (adapter->slic_regs)->slic_hbar), paddrl, 0);
  } else {
    slic_reg64_write(adapter, (void *)(& (adapter->slic_regs)->slic_hbar64), paddrl,
                     (void *)(& (adapter->slic_regs)->slic_addr_upper), paddrh, 0);
  }
  if ((unsigned long )rcvq->head != (unsigned long )((struct sk_buff *)0)) {
    (rcvq->tail)->__annonCompField87.__annonCompField86.next = skb;
  } else {
    rcvq->head = skb;
  }
  rcvq->tail = skb;
  rcvq->count = rcvq->count + 1U;
  return (rcvq->count);
}
}
static void slic_link_event_handler(struct adapter *adapter )
{
  int status ;
  struct slic_shmem *pshmem ;
  {
  if ((unsigned int )adapter->state != 1U) {
    return;
  } else {
  }
  pshmem = (struct slic_shmem *)adapter->phys_shmem;
  status = slic_upr_request(adapter, 1U, (unsigned int )((long )(& pshmem->linkstatus)),
                            (unsigned int )((unsigned long long )(& pshmem->linkstatus) >> 32),
                            0U, 0U);
  return;
}
}
static void slic_init_cleanup(struct adapter *adapter )
{
  {
  if (adapter->intrregistered != 0U) {
    adapter->intrregistered = 0U;
    ldv_free_irq_37((unsigned int )(adapter->netdev)->irq, (void *)adapter->netdev);
  } else {
  }
  if ((unsigned long )adapter->pshmem != (unsigned long )((struct slic_shmem *)0)) {
    pci_free_consistent(adapter->pcidev, 112UL, (void *)adapter->pshmem, adapter->phys_shmem);
    adapter->pshmem = (struct slic_shmem *)0;
    adapter->phys_shmem = 0ULL;
  } else {
  }
  if (adapter->pingtimerset != 0U) {
    adapter->pingtimerset = 0U;
    ldv_del_timer_38(& adapter->pingtimer);
  } else {
  }
  slic_rspqueue_free(adapter);
  slic_cmdq_free(adapter);
  slic_rcvqueue_free(adapter);
  return;
}
}
static int slic_mcast_add_list(struct adapter *adapter , char *address )
{
  struct mcast_address *mcaddr ;
  struct mcast_address *mlist ;
  bool tmp ;
  void *tmp___0 ;
  {
  mlist = adapter->mcastaddrs;
  goto ldv_47496;
  ldv_47495:
  tmp = ether_addr_equal((u8 const *)(& mlist->address), (u8 const *)address);
  if ((int )tmp) {
    return (0);
  } else {
  }
  mlist = mlist->next;
  ldv_47496: ;
  if ((unsigned long )mlist != (unsigned long )((struct mcast_address *)0)) {
    goto ldv_47495;
  } else {
  }
  tmp___0 = kmalloc(16UL, 32U);
  mcaddr = (struct mcast_address *)tmp___0;
  if ((unsigned long )mcaddr == (unsigned long )((struct mcast_address *)0)) {
    return (1);
  } else {
  }
  ether_addr_copy((u8 *)(& mcaddr->address), (u8 const *)address);
  mcaddr->next = adapter->mcastaddrs;
  adapter->mcastaddrs = mcaddr;
  return (0);
}
}
static void slic_mcast_set_list(struct net_device *dev )
{
  struct adapter *adapter ;
  void *tmp ;
  int status ;
  char *addresses ;
  struct netdev_hw_addr *ha ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  status = 0;
  __mptr = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_47511;
  ldv_47510:
  addresses = (char *)(& ha->addr);
  status = slic_mcast_add_list(adapter, addresses);
  if (status != 0) {
    goto ldv_47509;
  } else {
  }
  slic_mcast_set_bit(adapter, addresses);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_47511: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_47510;
  } else {
  }
  ldv_47509: ;
  if ((unsigned int )adapter->devflags_prev != dev->flags) {
    adapter->macopts = 1U;
    if (dev->flags != 0U) {
      if ((dev->flags & 2U) != 0U) {
        adapter->macopts = adapter->macopts | 2U;
      } else {
      }
      if ((dev->flags & 256U) != 0U) {
        adapter->macopts = adapter->macopts | 8U;
      } else {
      }
      if ((dev->flags & 512U) != 0U) {
        adapter->macopts = adapter->macopts | 32U;
      } else {
      }
      if ((dev->flags & 4096U) != 0U) {
        adapter->macopts = adapter->macopts | 4U;
      } else {
      }
    } else {
    }
    adapter->devflags_prev = (ushort )dev->flags;
    slic_config_set(adapter, 1);
  } else
  if (status == 0) {
    slic_mcast_set_mask(adapter);
  } else {
  }
  return;
}
}
static void slic_xmit_build_request(struct adapter *adapter , struct slic_hostcmd *hcmd ,
                                    struct sk_buff *skb )
{
  struct slic_host64_cmd *ihcmd ;
  ulong phys_addr ;
  dma_addr_t tmp ;
  {
  ihcmd = & hcmd->cmd64;
  ihcmd->flags = (int )((u8 )adapter->port) << 2U;
  ihcmd->command = 1U;
  ihcmd->u.slic_buffers.totlen = skb->len;
  tmp = pci_map_single(adapter->pcidev, (void *)skb->data, (size_t )skb->len, 1);
  phys_addr = (ulong )tmp;
  ihcmd->u.slic_buffers.bufs[0].paddrl = (unsigned int )phys_addr;
  ihcmd->u.slic_buffers.bufs[0].paddrh = (unsigned int )((unsigned long long )phys_addr >> 32);
  ihcmd->u.slic_buffers.bufs[0].length = skb->len;
  hcmd->cmdsize = (unsigned int )((((unsigned long long )((struct slic_host64sg *)(& ihcmd->u.slic_buffers.bufs) + 1UL) - (unsigned long long )hcmd) + 31ULL) >> 5);
  return;
}
}
static void slic_xmit_fail(struct adapter *adapter , struct sk_buff *skb , void *cmd ,
                           u32 skbtype , u32 status )
{
  {
  if (adapter->xmitq_full != 0U) {
    netif_stop_queue(adapter->netdev);
  } else {
  }
  if ((unsigned long )cmd == (unsigned long )((void *)0) && status <= 3U) {
    switch (status) {
    case 1U:
    dev_err((struct device const *)(& (adapter->netdev)->dev), "reject xmit skb[%p: %x] linkstate[%s] adapter[%s:%d] card[%s:%d]\n",
            skb, (int )skb->pkt_type, (unsigned int )adapter->linkstate == 0U ? (char *)"Down" : (char *)"Up  ",
            (unsigned int )adapter->state == 1U ? (char *)"UP" : (char *)"Down", (int )adapter->state,
            (adapter->card)->state == 1U ? (char *)"UP" : (char *)"Down", (adapter->card)->state);
    goto ldv_47527;
    case 2U:
    dev_err((struct device const *)(& (adapter->netdev)->dev), "xmit_start skb->len == 0 skb[%p] type[%x]\n",
            skb, (int )skb->pkt_type);
    goto ldv_47527;
    case 3U:
    dev_err((struct device const *)(& (adapter->netdev)->dev), "xmit_start skb[%p] type[%x] No host commands available\n",
            skb, (int )skb->pkt_type);
    goto ldv_47527;
    }
    ldv_47527: ;
  } else {
  }
  consume_skb(skb);
  (adapter->netdev)->stats.tx_dropped = (adapter->netdev)->stats.tx_dropped + 1UL;
  return;
}
}
static void slic_rcv_handle_error(struct adapter *adapter , struct slic_rcvbuf *rcvbuf )
{
  struct slic_hddr_wds *hdr ;
  struct net_device *netdev ;
  u32 xerr ;
  u32 nerr ;
  u32 lerr ;
  {
  hdr = (struct slic_hddr_wds *)(& rcvbuf->data);
  netdev = adapter->netdev;
  if ((unsigned int )adapter->devid != 5U) {
    if ((int )hdr->u0.hdrs_14port.frame_status < 0) {
      adapter->if_events.oflow802 = adapter->if_events.oflow802 + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status & 268435456U) != 0U) {
      adapter->if_events.Tprtoflow = adapter->if_events.Tprtoflow + 1U;
    } else {
    }
    if ((int )hdr->u0.hdrs_14port.frame_status_b < 0) {
      adapter->if_events.uflow802 = adapter->if_events.uflow802 + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 1073741824U) != 0U) {
      adapter->if_events.rcvearly = adapter->if_events.rcvearly + 1U;
      netdev->stats.rx_fifo_errors = netdev->stats.rx_fifo_errors + 1UL;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 536870912U) != 0U) {
      adapter->if_events.Bufov = adapter->if_events.Bufov + 1U;
      netdev->stats.rx_over_errors = netdev->stats.rx_over_errors + 1UL;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 134217728U) != 0U) {
      adapter->if_events.Carre = adapter->if_events.Carre + 1U;
      netdev->stats.tx_carrier_errors = netdev->stats.tx_carrier_errors + 1UL;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 33554432U) != 0U) {
      adapter->if_events.Longe = adapter->if_events.Longe + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 16777216U) != 0U) {
      adapter->if_events.Invp = adapter->if_events.Invp + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 8388608U) != 0U) {
      adapter->if_events.Crc = adapter->if_events.Crc + 1U;
      netdev->stats.rx_crc_errors = netdev->stats.rx_crc_errors + 1UL;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 4194304U) != 0U) {
      adapter->if_events.Drbl = adapter->if_events.Drbl + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 2097152U) != 0U) {
      adapter->if_events.Code = adapter->if_events.Code + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 1048576U) != 0U) {
      adapter->if_events.TpCsum = adapter->if_events.TpCsum + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 524288U) != 0U) {
      adapter->if_events.TpHlen = adapter->if_events.TpHlen + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 262144U) != 0U) {
      adapter->if_events.IpCsum = adapter->if_events.IpCsum + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 131072U) != 0U) {
      adapter->if_events.IpLen = adapter->if_events.IpLen + 1U;
    } else {
    }
    if ((hdr->u0.hdrs_14port.frame_status_b & 65536U) != 0U) {
      adapter->if_events.IpHlen = adapter->if_events.IpHlen + 1U;
    } else {
    }
  } else {
    if ((hdr->u0.hdrs_gbit.frame_status & 1073741824U) != 0U) {
      xerr = hdr->u0.hdrs_gbit.frame_status >> 25;
      if (xerr == 35U) {
        adapter->if_events.TpCsum = adapter->if_events.TpCsum + 1U;
      } else {
      }
      if (xerr == 34U) {
        adapter->if_events.Tprtoflow = adapter->if_events.Tprtoflow + 1U;
      } else {
      }
      if (xerr == 32U) {
        adapter->if_events.TpHlen = adapter->if_events.TpHlen + 1U;
      } else {
      }
    } else {
    }
    if ((hdr->u0.hdrs_gbit.frame_status & 16777216U) != 0U) {
      nerr = (hdr->u0.hdrs_gbit.frame_status >> 16) & 511U;
      if (nerr == 259U) {
        adapter->if_events.IpCsum = adapter->if_events.IpCsum + 1U;
      } else {
      }
      if (nerr == 258U) {
        adapter->if_events.IpLen = adapter->if_events.IpLen + 1U;
      } else {
      }
      if (nerr == 256U) {
        adapter->if_events.IpHlen = adapter->if_events.IpHlen + 1U;
      } else {
      }
    } else {
    }
    if ((hdr->u0.hdrs_gbit.frame_status & 128U) != 0U) {
      lerr = hdr->u0.hdrs_gbit.frame_status & 255U;
      if (lerr == 134U) {
        adapter->if_events.rcvearly = adapter->if_events.rcvearly + 1U;
      } else {
      }
      if (lerr == 133U) {
        adapter->if_events.Bufov = adapter->if_events.Bufov + 1U;
      } else {
      }
      if (lerr == 132U) {
        adapter->if_events.Code = adapter->if_events.Code + 1U;
      } else {
      }
      if (lerr == 131U) {
        adapter->if_events.Drbl = adapter->if_events.Drbl + 1U;
      } else {
      }
      if (lerr == 130U) {
        adapter->if_events.Crc = adapter->if_events.Crc + 1U;
      } else {
      }
      if (lerr == 129U) {
        adapter->if_events.oflow802 = adapter->if_events.oflow802 + 1U;
      } else {
      }
      if (lerr == 128U) {
        adapter->if_events.uflow802 = adapter->if_events.uflow802 + 1U;
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void slic_rcv_handler(struct adapter *adapter )
{
  struct net_device *netdev ;
  struct sk_buff *skb ;
  struct slic_rcvbuf *rcvbuf ;
  u32 frames ;
  u32 rx_bytes ;
  bool tmp ;
  int tmp___0 ;
  u32 _max1 ;
  u32 _max2 ;
  {
  netdev = adapter->netdev;
  frames = 0U;
  goto ldv_47547;
  ldv_47549:
  rcvbuf = (struct slic_rcvbuf *)skb->head;
  (adapter->card)->events = (adapter->card)->events + 1U;
  if ((rcvbuf->status & 268435456U) != 0U) {
    adapter->rx_errors = adapter->rx_errors + 1U;
    slic_rcv_handle_error(adapter, rcvbuf);
    slic_rcvqueue_reinsert(adapter, skb);
    goto ldv_47547;
  } else {
  }
  tmp = slic_mac_filter(adapter, (struct ether_header *)(& rcvbuf->data));
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    slic_rcvqueue_reinsert(adapter, skb);
    goto ldv_47547;
  } else {
  }
  skb_pull(skb, 34U);
  rx_bytes = rcvbuf->length & 65535U;
  skb_put(skb, rx_bytes);
  netdev->stats.rx_packets = netdev->stats.rx_packets + 1UL;
  netdev->stats.rx_bytes = netdev->stats.rx_bytes + (unsigned long )rx_bytes;
  skb->ip_summed = 1U;
  skb->dev = adapter->netdev;
  skb->protocol = eth_type_trans(skb, skb->dev);
  netif_rx(skb);
  frames = frames + 1U;
  if (frames > 1023U) {
    adapter->rcv_interrupt_yields = adapter->rcv_interrupt_yields + 1U;
    goto ldv_47548;
  } else {
  }
  ldv_47547:
  skb = slic_rcvqueue_getnext(adapter);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_47549;
  } else {
  }
  ldv_47548:
  _max1 = adapter->max_isr_rcvs;
  _max2 = frames;
  adapter->max_isr_rcvs = _max1 > _max2 ? _max1 : _max2;
  return;
}
}
static void slic_xmit_complete(struct adapter *adapter )
{
  struct slic_hostcmd *hcmd ;
  struct slic_rspbuf *rspbuf ;
  u32 frames ;
  struct slic_handle_word slic_handle_word ;
  u32 _max1 ;
  u32 _max2 ;
  {
  frames = 0U;
  ldv_47561:
  rspbuf = slic_rspqueue_getnext(adapter);
  if ((unsigned long )rspbuf == (unsigned long )((struct slic_rspbuf *)0)) {
    goto ldv_47560;
  } else {
  }
  adapter->xmit_completes = adapter->xmit_completes + 1U;
  (adapter->card)->events = (adapter->card)->events + 1U;
  slic_handle_word.handle.whole = rspbuf->hosthandle;
  hcmd = (struct slic_hostcmd *)adapter->slic_handles[(int )slic_handle_word.handle.parts.index].address;
  if (hcmd->type == 3U) {
    if ((unsigned long )hcmd->skb != (unsigned long )((struct sk_buff *)0)) {
      dev_kfree_skb_irq(hcmd->skb);
    } else {
    }
    slic_cmdq_putdone_irq(adapter, hcmd);
  } else {
  }
  rspbuf->status = 0U;
  rspbuf->hosthandle = 0U;
  frames = frames + 1U;
  goto ldv_47561;
  ldv_47560:
  _max1 = adapter->max_isr_xmits;
  _max2 = frames;
  adapter->max_isr_xmits = _max1 > _max2 ? _max1 : _max2;
  return;
}
}
static void slic_interrupt_card_up(u32 isr , struct adapter *adapter , struct net_device *dev )
{
  int count ;
  int pre_count ;
  int errors ;
  struct slic_rcvqueue *rcvq ;
  {
  if ((isr & 2684354559U) != 0U) {
    if ((int )isr < 0) {
      adapter->error_interrupts = adapter->error_interrupts + 1U;
      if ((isr & 33554432U) != 0U) {
        rcvq = & adapter->rcvqueue;
        adapter->error_rmiss_interrupts = adapter->error_rmiss_interrupts + 1U;
        if (rcvq->errors == 0U) {
          rcv_count = rcvq->count;
        } else {
        }
        pre_count = (int )rcvq->count;
        errors = (int )rcvq->errors;
        goto ldv_47576;
        ldv_47575:
        count = slic_rcvqueue_fill(adapter);
        if (count == 0) {
          goto ldv_47574;
        } else {
        }
        ldv_47576: ;
        if (rcvq->count <= 239U) {
          goto ldv_47575;
        } else {
        }
        ldv_47574: ;
      } else
      if ((isr & 8388608U) != 0U) {
        dev_err((struct device const *)(& dev->dev), "isr & ISR_ERR [%x] ISR_XDROP\n",
                isr);
      } else {
        dev_err((struct device const *)(& dev->dev), "isr & ISR_ERR [%x]\n", isr);
      }
    } else {
    }
    if ((isr & 134217728U) != 0U) {
      adapter->linkevent_interrupts = adapter->linkevent_interrupts + 1U;
      slic_link_event_handler(adapter);
    } else {
    }
    if (((isr & 268435456U) != 0U || (isr & 16777216U) != 0U) || (isr & 131072U) != 0U) {
      adapter->upr_interrupts = adapter->upr_interrupts + 1U;
      slic_upr_request_complete(adapter, isr);
    } else {
    }
  } else {
  }
  if ((isr & 1073741824U) != 0U) {
    adapter->rcv_interrupts = adapter->rcv_interrupts + 1U;
    slic_rcv_handler(adapter);
  } else {
  }
  if ((isr & 536870912U) != 0U) {
    adapter->xmit_interrupts = adapter->xmit_interrupts + 1U;
    slic_xmit_complete(adapter);
  } else {
  }
  return;
}
}
static irqreturn_t slic_interrupt(int irq , void *dev_id )
{
  struct net_device *dev ;
  struct adapter *adapter ;
  void *tmp ;
  u32 isr ;
  u32 tmp___0 ;
  {
  dev = (struct net_device *)dev_id;
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  if ((unsigned long )adapter->pshmem != (unsigned long )((struct slic_shmem *)0) && (unsigned int )(adapter->pshmem)->isr != 0U) {
    slic_reg32_write((void *)(& (adapter->slic_regs)->slic_icr), 2U, 1);
    tmp___0 = (adapter->pshmem)->isr;
    adapter->isrcopy = tmp___0;
    isr = tmp___0;
    (adapter->pshmem)->isr = 0U;
    adapter->num_isrs = adapter->num_isrs + 1U;
    switch ((adapter->card)->state) {
    case 1U:
    slic_interrupt_card_up(isr, adapter, dev);
    goto ldv_47585;
    case 0U: ;
    if (((isr & 268435456U) != 0U || (isr & 16777216U) != 0U) || (isr & 131072U) != 0U) {
      adapter->upr_interrupts = adapter->upr_interrupts + 1U;
      slic_upr_request_complete(adapter, isr);
    } else {
    }
    goto ldv_47585;
    }
    ldv_47585:
    adapter->isrcopy = 0U;
    adapter->all_reg_writes = adapter->all_reg_writes + 2U;
    adapter->isr_reg_writes = adapter->isr_reg_writes + 1U;
    slic_reg32_write((void *)(& (adapter->slic_regs)->slic_isr), 0U, 1);
  } else {
    adapter->false_interrupts = adapter->false_interrupts + 1U;
  }
  return (1);
}
}
static netdev_tx_t slic_xmit_start(struct sk_buff *skb , struct net_device *dev )
{
  struct sliccard *card ;
  struct adapter *adapter ;
  void *tmp ;
  struct slic_hostcmd *hcmd ;
  u32 status ;
  void *offloadcmd ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  hcmd = (struct slic_hostcmd *)0;
  status = 0U;
  offloadcmd = (void *)0;
  card = adapter->card;
  if (((unsigned int )adapter->linkstate != 2U || (unsigned int )adapter->state != 1U) || card->state != 1U) {
    status = 1U;
    goto xmit_fail;
  } else
  if (skb->len == 0U) {
    status = 2U;
    goto xmit_fail;
  } else {
  }
  hcmd = slic_cmdq_getfree(adapter);
  if ((unsigned long )hcmd == (unsigned long )((struct slic_hostcmd *)0)) {
    adapter->xmitq_full = 1U;
    status = 3U;
    goto xmit_fail;
  } else {
  }
  hcmd->skb = skb;
  hcmd->busy = 1U;
  hcmd->type = 3U;
  slic_xmit_build_request(adapter, hcmd, skb);
  dev->stats.tx_packets = dev->stats.tx_packets + 1UL;
  dev->stats.tx_bytes = dev->stats.tx_bytes + (unsigned long )skb->len;
  if (hcmd->paddrh == 0U) {
    slic_reg32_write((void *)(& (adapter->slic_regs)->slic_cbar), hcmd->paddrl | hcmd->cmdsize,
                     0);
  } else {
    slic_reg64_write(adapter, (void *)(& (adapter->slic_regs)->slic_cbar64), hcmd->paddrl | hcmd->cmdsize,
                     (void *)(& (adapter->slic_regs)->slic_addr_upper), hcmd->paddrh,
                     0);
  }
  xmit_done: ;
  return (0);
  xmit_fail:
  slic_xmit_fail(adapter, skb, offloadcmd, 0U, status);
  goto xmit_done;
}
}
static void slic_adapter_freeresources(struct adapter *adapter )
{
  {
  slic_init_cleanup(adapter);
  adapter->error_interrupts = 0U;
  adapter->rcv_interrupts = 0U;
  adapter->xmit_interrupts = 0U;
  adapter->linkevent_interrupts = 0U;
  adapter->upr_interrupts = 0U;
  adapter->num_isrs = 0U;
  adapter->xmit_completes = 0U;
  adapter->rcv_broadcasts = 0U;
  adapter->rcv_multicasts = 0U;
  adapter->rcv_unicasts = 0U;
  return;
}
}
static int slic_adapter_allocresources(struct adapter *adapter , unsigned long *flags )
{
  int retval ;
  {
  if (adapter->intrregistered == 0U) {
    spin_unlock_irqrestore(& slic_global.driver_lock, *flags);
    retval = ldv_request_irq_39((unsigned int )(adapter->netdev)->irq, & slic_interrupt,
                                128UL, (char const *)(& (adapter->netdev)->name),
                                (void *)adapter->netdev);
    ldv_spin_lock();
    if (retval != 0) {
      dev_err((struct device const *)(& (adapter->netdev)->dev), "request_irq (%s) FAILED [%x]\n",
              (char *)(& (adapter->netdev)->name), retval);
      return (retval);
    } else {
    }
    adapter->intrregistered = 1U;
  } else {
  }
  return (0);
}
}
static int slic_if_init(struct adapter *adapter , unsigned long *flags )
{
  struct sliccard *card ;
  struct net_device *dev ;
  struct slic_regs *slic_regs ;
  struct slic_shmem *pshmem ;
  int rc ;
  unsigned long __ms ;
  unsigned long tmp ;
  unsigned long flags___0 ;
  {
  card = adapter->card;
  dev = adapter->netdev;
  slic_regs = adapter->slic_regs;
  if ((unsigned int )adapter->state != 0U) {
    dev_err((struct device const *)(& dev->dev), "%s: adapter->state != ADAPT_DOWN\n",
            "slic_if_init");
    rc = -5;
    goto err;
  } else {
  }
  adapter->devflags_prev = (ushort )dev->flags;
  adapter->macopts = 1U;
  if (dev->flags != 0U) {
    if ((dev->flags & 2U) != 0U) {
      adapter->macopts = adapter->macopts | 2U;
    } else {
    }
    if ((dev->flags & 256U) != 0U) {
      adapter->macopts = adapter->macopts | 8U;
    } else {
    }
    if ((dev->flags & 512U) != 0U) {
      adapter->macopts = adapter->macopts | 32U;
    } else {
    }
    if ((dev->flags & 4096U) != 0U) {
      adapter->macopts = adapter->macopts | 4U;
    } else {
    }
  } else {
  }
  rc = slic_adapter_allocresources(adapter, flags);
  if (rc != 0) {
    dev_err((struct device const *)(& dev->dev), "slic_adapter_allocresources FAILED %x\n",
            rc);
    slic_adapter_freeresources(adapter);
    goto err;
  } else {
  }
  if (adapter->queues_initialized == 0U) {
    rc = slic_rspqueue_init(adapter);
    if (rc != 0) {
      goto err;
    } else {
    }
    rc = slic_cmdq_init(adapter);
    if (rc != 0) {
      goto err;
    } else {
    }
    rc = slic_rcvqueue_init(adapter);
    if (rc != 0) {
      goto err;
    } else {
    }
    adapter->queues_initialized = 1U;
  } else {
  }
  slic_reg32_write((void *)(& slic_regs->slic_icr), 0U, 1);
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_47619;
    ldv_47618:
    __const_udelay(4295000UL);
    ldv_47619:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_47618;
    } else {
    }
  }
  if (adapter->isp_initialized == 0U) {
    pshmem = (struct slic_shmem *)adapter->phys_shmem;
    ldv_spin_lock();
    slic_reg32_write((void *)(& slic_regs->slic_addr_upper), (unsigned int )((unsigned long long )(& pshmem->isr) >> 32),
                     0);
    slic_reg32_write((void *)(& slic_regs->slic_isp), (unsigned int )((long )(& pshmem->isr)),
                     1);
    spin_unlock_irqrestore(& adapter->bit64reglock, flags___0);
    adapter->isp_initialized = 1U;
  } else {
  }
  adapter->state = 1U;
  if (card->loadtimerset == 0U) {
    reg_timer_3(& card->loadtimer, & slic_timer_load_check, (unsigned long )card);
    card->loadtimer.expires = (unsigned long )jiffies + 250UL;
    add_timer(& card->loadtimer);
    card->loadtimerset = 1U;
  } else {
  }
  if (adapter->pingtimerset == 0U) {
    reg_timer_3(& adapter->pingtimer, & slic_timer_ping, (unsigned long )dev);
    adapter->pingtimer.expires = (unsigned long )jiffies + 250UL;
    add_timer(& adapter->pingtimer);
    adapter->pingtimerset = 1U;
    (adapter->card)->pingstatus = 7340032U;
  } else {
  }
  adapter->isrcopy = 0U;
  (adapter->pshmem)->isr = 0U;
  slic_reg32_write((void *)(& slic_regs->slic_isr), 0U, 1);
  slic_reg32_write((void *)(& slic_regs->slic_icr), 1U, 1);
  slic_link_config(adapter, 2U, 2U);
  slic_link_event_handler(adapter);
  err: ;
  return (rc);
}
}
static int slic_entry_open(struct net_device *dev )
{
  struct adapter *adapter ;
  void *tmp ;
  struct sliccard *card ;
  unsigned long flags ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  card = adapter->card;
  netif_stop_queue(adapter->netdev);
  ldv_spin_lock();
  if (adapter->activated == 0U) {
    card->adapters_activated = card->adapters_activated + 1U;
    slic_global.num_slic_ports_active = slic_global.num_slic_ports_active + 1U;
    adapter->activated = 1U;
  } else {
  }
  status = slic_if_init(adapter, & flags);
  if (status != 0) {
    if (adapter->activated != 0U) {
      card->adapters_activated = card->adapters_activated - 1U;
      slic_global.num_slic_ports_active = slic_global.num_slic_ports_active - 1U;
      adapter->activated = 0U;
    } else {
    }
    goto spin_unlock;
  } else {
  }
  if ((unsigned long )card->master == (unsigned long )((struct adapter *)0)) {
    card->master = adapter;
  } else {
  }
  spin_unlock:
  spin_unlock_irqrestore(& slic_global.driver_lock, flags);
  return (status);
}
}
static void slic_card_cleanup(struct sliccard *card )
{
  {
  if (card->loadtimerset != 0U) {
    card->loadtimerset = 0U;
    ldv_del_timer_sync_40(& card->loadtimer);
  } else {
  }
  kfree((void const *)card);
  return;
}
}
static void slic_entry_remove(struct pci_dev *pcidev )
{
  struct net_device *dev ;
  void *tmp ;
  struct adapter *adapter ;
  void *tmp___0 ;
  struct sliccard *card ;
  struct mcast_address *mcaddr ;
  struct mcast_address *mlist ;
  struct sliccard *curr_card ;
  {
  tmp = pci_get_drvdata(pcidev);
  dev = (struct net_device *)tmp;
  tmp___0 = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp___0;
  ldv_unregister_netdev_41(dev);
  slic_adapter_freeresources(adapter);
  slic_unmap_mmio_space(adapter);
  mlist = adapter->mcastaddrs;
  goto ldv_47642;
  ldv_47641:
  mcaddr = mlist;
  mlist = mlist->next;
  kfree((void const *)mcaddr);
  ldv_47642: ;
  if ((unsigned long )mlist != (unsigned long )((struct mcast_address *)0)) {
    goto ldv_47641;
  } else {
  }
  card = adapter->card;
  card->adapters_allocated = card->adapters_allocated - 1U;
  adapter->allocated = 0U;
  if (card->adapters_allocated == 0U) {
    curr_card = slic_global.slic_card;
    if ((unsigned long )curr_card == (unsigned long )card) {
      slic_global.slic_card = card->next;
    } else {
      goto ldv_47646;
      ldv_47645:
      curr_card = curr_card->next;
      ldv_47646: ;
      if ((unsigned long )curr_card->next != (unsigned long )card) {
        goto ldv_47645;
      } else {
      }
      curr_card->next = card->next;
    }
    slic_global.num_slic_cards = slic_global.num_slic_cards - 1U;
    slic_card_cleanup(card);
  } else {
  }
  ldv_free_netdev_42(dev);
  pci_release_regions(pcidev);
  pci_disable_device(pcidev);
  return;
}
}
static int slic_entry_halt(struct net_device *dev )
{
  struct adapter *adapter ;
  void *tmp ;
  struct sliccard *card ;
  struct slic_regs *slic_regs ;
  unsigned long flags ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  card = adapter->card;
  slic_regs = adapter->slic_regs;
  ldv_spin_lock();
  netif_stop_queue(adapter->netdev);
  adapter->state = 0U;
  adapter->linkstate = 0U;
  adapter->upr_list = (struct slic_upr *)0;
  adapter->upr_busy = 0U;
  adapter->devflags_prev = 0U;
  slic_reg32_write((void *)(& slic_regs->slic_icr), 0U, 1);
  adapter->all_reg_writes = adapter->all_reg_writes + 1U;
  adapter->icr_reg_writes = adapter->icr_reg_writes + 1U;
  slic_config_clear(adapter);
  if (adapter->activated != 0U) {
    card->adapters_activated = card->adapters_activated - 1U;
    slic_global.num_slic_ports_active = slic_global.num_slic_ports_active - 1U;
    adapter->activated = 0U;
  } else {
  }
  slic_cmdq_reset(adapter);
  spin_unlock_irqrestore(& slic_global.driver_lock, flags);
  return (0);
}
}
static struct net_device_stats *slic_get_stats(struct net_device *dev )
{
  struct adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  dev->stats.collisions = (unsigned long )adapter->slic_stats.iface.xmit_collisions;
  dev->stats.rx_errors = (unsigned long )adapter->slic_stats.iface.rcv_errors;
  dev->stats.tx_errors = (unsigned long )adapter->slic_stats.iface.xmt_errors;
  dev->stats.rx_missed_errors = (unsigned long )adapter->slic_stats.iface.rcv_discards;
  dev->stats.tx_heartbeat_errors = 0UL;
  dev->stats.tx_aborted_errors = 0UL;
  dev->stats.tx_window_errors = 0UL;
  dev->stats.tx_fifo_errors = 0UL;
  dev->stats.rx_frame_errors = 0UL;
  dev->stats.rx_length_errors = 0UL;
  return (& dev->stats);
}
}
static int slic_ioctl(struct net_device *dev , struct ifreq *rq , int cmd )
{
  struct adapter *adapter ;
  void *tmp ;
  struct ethtool_cmd edata ;
  struct ethtool_cmd ecmd ;
  u32 data[7U] ;
  u32 intagg ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  u32 speed ;
  u32 duplex ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct adapter *)tmp;
  switch (cmd) {
  case 35322:
  tmp___0 = copy_from_user((void *)(& data), (void const *)rq->ifr_ifru.ifru_data,
                           28UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  intagg = data[0];
  dev_err((struct device const *)(& dev->dev), "set interrupt aggregation to %d\n",
          intagg);
  slic_intagg_set(adapter, intagg);
  return (0);
  case 35142:
  tmp___1 = copy_from_user((void *)(& ecmd), (void const *)rq->ifr_ifru.ifru_data,
                           44UL);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
  }
  if (ecmd.cmd == 1U) {
    memset((void *)(& edata), 0, 44UL);
    edata.supported = 591U;
    edata.port = 2U;
    edata.transceiver = 0U;
    edata.phy_address = 0U;
    if ((unsigned int )adapter->linkspeed == 1U) {
      edata.speed = 100U;
    } else
    if ((unsigned int )adapter->linkspeed == 0U) {
      edata.speed = 10U;
    } else {
      edata.speed = 0U;
    }
    if ((unsigned int )adapter->linkduplex == 1U) {
      edata.duplex = 1U;
    } else {
      edata.duplex = 0U;
    }
    edata.autoneg = 1U;
    edata.maxtxpkt = 1U;
    edata.maxrxpkt = 1U;
    tmp___2 = copy_to_user(rq->ifr_ifru.ifru_data, (void const *)(& edata), 44UL);
    if (tmp___2 != 0UL) {
      return (-14);
    } else {
    }
  } else
  if (ecmd.cmd == 2U) {
    tmp___3 = capable(12);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    if (tmp___4) {
      return (-1);
    } else {
    }
    if ((unsigned int )adapter->linkspeed == 1U) {
      edata.speed = 100U;
    } else
    if ((unsigned int )adapter->linkspeed == 0U) {
      edata.speed = 10U;
    } else {
      edata.speed = 0U;
    }
    if ((unsigned int )adapter->linkduplex == 1U) {
      edata.duplex = 1U;
    } else {
      edata.duplex = 0U;
    }
    edata.autoneg = 1U;
    edata.maxtxpkt = 1U;
    edata.maxrxpkt = 1U;
    if ((int )ecmd.speed != (int )edata.speed || (int )ecmd.duplex != (int )edata.duplex) {
      if ((unsigned int )ecmd.speed == 10U) {
        speed = 0U;
      } else {
        speed = 8192U;
      }
      if ((unsigned int )ecmd.duplex == 1U) {
        duplex = 256U;
      } else {
        duplex = 0U;
      }
      slic_link_config(adapter, speed, duplex);
      slic_link_event_handler(adapter);
    } else {
    }
  } else {
  }
  return (0);
  default: ;
  return (-95);
  }
}
}
static void slic_config_pci(struct pci_dev *pcidev )
{
  u16 pci_command ;
  u16 new_command ;
  {
  pci_read_config_word((struct pci_dev const *)pcidev, 4, & pci_command);
  new_command = (u16 )((unsigned int )pci_command | 854U);
  if ((int )pci_command != (int )new_command) {
    pci_write_config_word((struct pci_dev const *)pcidev, 4, (int )new_command);
  } else {
  }
  return;
}
}
static int slic_card_init(struct sliccard *card , struct adapter *adapter )
{
  struct slic_regs *slic_regs ;
  struct slic_eeprom *peeprom ;
  struct oslic_eeprom *pOeeprom ;
  dma_addr_t phys_config ;
  u32 phys_configh ;
  u32 phys_configl ;
  u32 i ;
  struct slic_shmem *pshmem ;
  int status ;
  uint macaddrs ;
  ushort eecodesize ;
  ushort dramsize ;
  ushort ee_chksum ;
  ushort calc_chksum ;
  struct slic_config_mac *pmac ;
  unsigned char fruformat ;
  unsigned char oemfruformat ;
  struct atk_fru *patkfru ;
  union oemfru *poemfru ;
  unsigned long flags ;
  void *tmp ;
  unsigned long __ms ;
  unsigned long tmp___0 ;
  unsigned long __ms___0 ;
  unsigned long tmp___1 ;
  {
  slic_regs = adapter->slic_regs;
  i = 0U;
  macaddrs = card->card_size;
  slic_soft_reset(adapter);
  status = slic_card_download(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  if (card->config_set == 0U) {
    tmp = pci_alloc_consistent(adapter->pcidev, 128UL, & phys_config);
    peeprom = (struct slic_eeprom *)tmp;
    phys_configl = (unsigned int )phys_config;
    phys_configh = (unsigned int )(phys_config >> 32);
    if ((unsigned long )peeprom == (unsigned long )((struct slic_eeprom *)0)) {
      dev_err((struct device const *)(& (adapter->pcidev)->dev), "Failed to allocate DMA memory for EEPROM.\n");
      return (-12);
    } else {
    }
    memset((void *)peeprom, 0, 128UL);
    slic_reg32_write((void *)(& slic_regs->slic_icr), 0U, 1);
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_47705;
      ldv_47704:
      __const_udelay(4295000UL);
      ldv_47705:
      tmp___0 = __ms;
      __ms = __ms - 1UL;
      if (tmp___0 != 0UL) {
        goto ldv_47704;
      } else {
      }
    }
    pshmem = (struct slic_shmem *)adapter->phys_shmem;
    ldv_spin_lock();
    slic_reg32_write((void *)(& slic_regs->slic_addr_upper), (unsigned int )((unsigned long long )(& pshmem->isr) >> 32),
                     0);
    slic_reg32_write((void *)(& slic_regs->slic_isp), (unsigned int )((long )(& pshmem->isr)),
                     1);
    spin_unlock_irqrestore(& adapter->bit64reglock, flags);
    status = slic_config_get(adapter, phys_configl, phys_configh);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pcidev)->dev), "Failed to fetch config data from device.\n");
      goto card_init_err;
    } else {
    }
    ldv_47713: ;
    if ((unsigned int )(adapter->pshmem)->isr != 0U) {
      if (((unsigned int )(adapter->pshmem)->isr & 268435456U) != 0U) {
        (adapter->pshmem)->isr = 0U;
        slic_reg64_write(adapter, (void *)(& slic_regs->slic_isp), 0U, (void *)(& slic_regs->slic_addr_upper),
                         0U, 1);
        slic_reg32_write((void *)(& slic_regs->slic_isr), 0U, 1);
        slic_upr_request_complete(adapter, 0U);
        goto ldv_47708;
      } else {
      }
      (adapter->pshmem)->isr = 0U;
      slic_reg32_write((void *)(& slic_regs->slic_isr), 0U, 1);
    } else {
      if (1) {
        __const_udelay(4295000UL);
      } else {
        __ms___0 = 1UL;
        goto ldv_47711;
        ldv_47710:
        __const_udelay(4295000UL);
        ldv_47711:
        tmp___1 = __ms___0;
        __ms___0 = __ms___0 - 1UL;
        if (tmp___1 != 0UL) {
          goto ldv_47710;
        } else {
        }
      }
      i = i + 1U;
      if (i > 5000U) {
        dev_err((struct device const *)(& (adapter->pcidev)->dev), "Fetch of config data timed out.\n");
        slic_reg64_write(adapter, (void *)(& slic_regs->slic_isp), 0U, (void *)(& slic_regs->slic_addr_upper),
                         0U, 1);
        status = -22;
        goto card_init_err;
      } else {
      }
    }
    goto ldv_47713;
    ldv_47708: ;
    switch ((int )adapter->devid) {
    case 7:
    pOeeprom = (struct oslic_eeprom *)peeprom;
    eecodesize = pOeeprom->EecodeSize;
    dramsize = pOeeprom->DramSize;
    pmac = (struct slic_config_mac *)(& pOeeprom->MacInfo);
    fruformat = pOeeprom->FruFormat;
    patkfru = & pOeeprom->AtkFru;
    oemfruformat = pOeeprom->OemFruFormat;
    poemfru = & pOeeprom->OemFru;
    macaddrs = 2U;
    goto ldv_47715;
    default:
    eecodesize = peeprom->EecodeSize;
    dramsize = peeprom->DramSize;
    pmac = (struct slic_config_mac *)(& peeprom->u2.mac.MacInfo);
    fruformat = peeprom->FruFormat;
    patkfru = & peeprom->AtkFru;
    oemfruformat = peeprom->OemFruFormat;
    poemfru = & peeprom->OemFru;
    goto ldv_47715;
    }
    ldv_47715:
    card->config.EepromValid = 0;
    if ((unsigned int )eecodesize <= 128U && (unsigned int )eecodesize > 97U) {
      ee_chksum = *((u16 *)peeprom + ((unsigned long )eecodesize + 0xfffffffffffffffeUL));
      calc_chksum = slic_eeprom_cksum((void *)peeprom, (unsigned int )((int )eecodesize + -2));
      if ((int )ee_chksum == (int )calc_chksum) {
        card->config.EepromValid = 1;
      } else {
      }
    } else {
    }
    card->config.DramSize = dramsize;
    i = 0U;
    goto ldv_47718;
    ldv_47717:
    memcpy((void *)(& card->config.MacInfo) + (unsigned long )i, (void const *)pmac + (unsigned long )i,
             6UL);
    i = i + 1U;
    ldv_47718: ;
    if (i < macaddrs) {
      goto ldv_47717;
    } else {
    }
    card->config.FruFormat = fruformat;
    memcpy((void *)(& card->config.AtkFru), (void const *)patkfru, 25UL);
    pci_free_consistent(adapter->pcidev, 128UL, (void *)peeprom, phys_config);
    if (! card->config.EepromValid) {
      slic_reg64_write(adapter, (void *)(& slic_regs->slic_isp), 0U, (void *)(& slic_regs->slic_addr_upper),
                       0U, 1);
      dev_err((struct device const *)(& (adapter->pcidev)->dev), "EEPROM invalid.\n");
      return (-22);
    } else {
    }
    card->config_set = 1U;
  } else {
  }
  status = slic_card_download_gbrcv(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  if (slic_global.dynamic_intagg != 0U) {
    slic_intagg_set(adapter, 0U);
  } else {
    slic_intagg_set(adapter, (u32 )intagg_delay);
  }
  card->pingstatus = 7340032U;
  card->state = 1U;
  card->reset_in_progress = 0U;
  return (0);
  card_init_err:
  pci_free_consistent(adapter->pcidev, 128UL, (void *)peeprom, phys_config);
  return (status);
}
}
static void slic_init_driver(void)
{
  struct lock_class_key __key ;
  {
  if (slic_first_init != 0U) {
    slic_first_init = 0U;
    spinlock_check(& slic_global.driver_lock);
    __raw_spin_lock_init(& slic_global.driver_lock.__annonCompField18.rlock, "&(&slic_global.driver_lock)->rlock",
                         & __key);
  } else {
  }
  return;
}
}
static void slic_init_adapter(struct net_device *netdev , struct pci_dev *pcidev ,
                              struct pci_device_id const *pci_tbl_entry , void *memaddr ,
                              int chip_idx )
{
  ushort index ;
  struct slic_handle *pslic_handle ;
  struct adapter *adapter ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  void *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct adapter *)tmp;
  adapter->vendid = (ushort )pci_tbl_entry->vendor;
  adapter->devid = (ushort )pci_tbl_entry->device;
  adapter->subsysid = (ushort )pci_tbl_entry->subdevice;
  adapter->busnumber = (uint )(pcidev->bus)->number;
  adapter->slotnumber = (pcidev->devfn >> 3) & 31U;
  adapter->functionnumber = pcidev->devfn & 7U;
  adapter->slic_regs = (struct slic_regs *)memaddr;
  adapter->irq = pcidev->irq;
  adapter->chipid = (uint )chip_idx;
  adapter->port = 0U;
  adapter->cardindex = adapter->port;
  spinlock_check(& adapter->upr_lock);
  __raw_spin_lock_init(& adapter->upr_lock.__annonCompField18.rlock, "&(&adapter->upr_lock)->rlock",
                       & __key);
  spinlock_check(& adapter->bit64reglock);
  __raw_spin_lock_init(& adapter->bit64reglock.__annonCompField18.rlock, "&(&adapter->bit64reglock)->rlock",
                       & __key___0);
  spinlock_check(& adapter->adapter_lock);
  __raw_spin_lock_init(& adapter->adapter_lock.__annonCompField18.rlock, "&(&adapter->adapter_lock)->rlock",
                       & __key___1);
  spinlock_check(& adapter->reset_lock);
  __raw_spin_lock_init(& adapter->reset_lock.__annonCompField18.rlock, "&(&adapter->reset_lock)->rlock",
                       & __key___2);
  spinlock_check(& adapter->handle_lock);
  __raw_spin_lock_init(& adapter->handle_lock.__annonCompField18.rlock, "&(&adapter->handle_lock)->rlock",
                       & __key___3);
  adapter->card_size = 1U;
  index = 1U;
  pslic_handle = (struct slic_handle *)(& adapter->slic_handles) + 1UL;
  goto ldv_47740;
  ldv_47739:
  pslic_handle->token.handle.parts.index = index;
  pslic_handle->type = 0U;
  pslic_handle->next = adapter->pfree_slic_handles;
  adapter->pfree_slic_handles = pslic_handle;
  index = (ushort )((int )index + 1);
  pslic_handle = pslic_handle + 1;
  ldv_47740: ;
  if ((unsigned int )index <= 255U) {
    goto ldv_47739;
  } else {
  }
  tmp___0 = pci_alloc_consistent(adapter->pcidev, 112UL, & adapter->phys_shmem);
  adapter->pshmem = (struct slic_shmem *)tmp___0;
  if ((unsigned long )adapter->pshmem != (unsigned long )((struct slic_shmem *)0)) {
    memset((void *)adapter->pshmem, 0, 112UL);
  } else {
  }
  return;
}
}
static struct net_device_ops const slic_netdev_ops =
     {0, 0, & slic_entry_open, & slic_entry_halt, & slic_xmit_start, 0, 0, & slic_mcast_set_list,
    & slic_mac_set_address, & eth_validate_addr, & slic_ioctl, 0, & eth_change_mtu,
    0, 0, 0, & slic_get_stats, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0};
static u32 slic_card_locate(struct adapter *adapter )
{
  struct sliccard *card ;
  struct physcard *physcard ;
  ushort card_hostid ;
  u16 *hostid_reg ;
  uint i ;
  uint rdhostid_offset ;
  void *tmp ;
  void *tmp___0 ;
  {
  card = slic_global.slic_card;
  physcard = slic_global.phys_card;
  rdhostid_offset = 0U;
  switch ((int )adapter->devid) {
  case 7:
  rdhostid_offset = 5460U;
  goto ldv_47753;
  case 5:
  rdhostid_offset = 5460U;
  goto ldv_47753;
  default: ;
  return (4294967277U);
  }
  ldv_47753:
  hostid_reg = (u16 *)adapter->slic_regs + (unsigned long )rdhostid_offset;
  card_hostid = readw((void const volatile *)hostid_reg);
  if ((unsigned int )card_hostid == 65535U) {
    tmp = kmalloc(768UL, 208U);
    card = (struct sliccard *)tmp;
    if ((unsigned long )card == (unsigned long )((struct sliccard *)0)) {
      return (4294967284U);
    } else {
    }
    card->next = slic_global.slic_card;
    slic_global.slic_card = card;
    card->busnumber = adapter->busnumber;
    card->slotnumber = adapter->slotnumber;
    i = 0U;
    goto ldv_47758;
    ldv_47757: ;
    if (slic_global.cardnuminuse[i] == 0U) {
      slic_global.cardnuminuse[i] = 1U;
      card->cardnum = i;
      goto ldv_47756;
    } else {
    }
    i = i + 1U;
    ldv_47758: ;
    if (i <= 31U) {
      goto ldv_47757;
    } else {
    }
    ldv_47756:
    slic_global.num_slic_cards = slic_global.num_slic_cards + 1U;
  } else {
    goto ldv_47761;
    ldv_47760: ;
    if (card->cardnum == (uint )card_hostid) {
      goto ldv_47759;
    } else {
    }
    card = card->next;
    ldv_47761: ;
    if ((unsigned long )card != (unsigned long )((struct sliccard *)0)) {
      goto ldv_47760;
    } else {
    }
    ldv_47759: ;
  }
  if ((unsigned long )card == (unsigned long )((struct sliccard *)0)) {
    return (4294967290U);
  } else {
  }
  if ((unsigned long )card->adapter[adapter->port] == (unsigned long )((struct adapter *)0)) {
    card->adapter[adapter->port] = adapter;
    adapter->card = card;
  } else {
  }
  card->card_size = 1U;
  goto ldv_47767;
  ldv_47766:
  i = 0U;
  goto ldv_47764;
  ldv_47763: ;
  if ((unsigned long )physcard->adapter[i] != (unsigned long )((struct adapter *)0)) {
    goto ldv_47762;
  } else {
  }
  i = i + 1U;
  ldv_47764: ;
  if (i <= 3U) {
    goto ldv_47763;
  } else {
  }
  ldv_47762: ;
  if (i == 4U) {
    goto ldv_47765;
  } else {
  }
  if ((physcard->adapter[i])->slotnumber == adapter->slotnumber) {
    goto ldv_47765;
  } else {
  }
  physcard = physcard->next;
  ldv_47767: ;
  if ((unsigned long )physcard != (unsigned long )((struct physcard *)0)) {
    goto ldv_47766;
  } else {
  }
  ldv_47765: ;
  if ((unsigned long )physcard == (unsigned long )((struct physcard *)0)) {
    tmp___0 = kmalloc(48UL, 32U);
    physcard = (struct physcard *)tmp___0;
    if ((unsigned long )physcard == (unsigned long )((struct physcard *)0)) {
      if ((unsigned int )card_hostid == 65535U) {
        kfree((void const *)card);
      } else {
      }
      return (4294967284U);
    } else {
    }
    physcard->next = slic_global.phys_card;
    slic_global.phys_card = physcard;
    physcard->adapters_allocd = 1U;
  } else {
    physcard->adapters_allocd = physcard->adapters_allocd + 1U;
  }
  adapter->physport = physcard->adapters_allocd - 1U;
  physcard->adapter[adapter->physport] = adapter;
  adapter->physcard = physcard;
  return (0U);
}
}
static int slic_entry_probe(struct pci_dev *pcidev , struct pci_device_id const *pci_tbl_entry )
{
  int cards_found ;
  int did_version ;
  int err ;
  struct net_device *netdev ;
  struct adapter *adapter ;
  void *memmapped_ioaddr ;
  ulong mmio_start ;
  ulong mmio_len ;
  struct sliccard *card ;
  int pci_using_dac ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  u32 tmp___2 ;
  {
  err = -19;
  memmapped_ioaddr = (void *)0;
  mmio_start = 0UL;
  mmio_len = 0UL;
  card = (struct sliccard *)0;
  pci_using_dac = 0;
  slic_global.dynamic_intagg = dynamic_intagg;
  err = pci_enable_device(pcidev);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp = did_version;
  did_version = did_version + 1;
  if (tmp == 0) {
    _dev_info((struct device const *)(& pcidev->dev), "%s\n", slic_banner);
    _dev_info((struct device const *)(& pcidev->dev), "%s\n", slic_proc_version);
  } else {
  }
  tmp___0 = pci_set_dma_mask(pcidev, 0xffffffffffffffffULL);
  if (tmp___0 == 0) {
    pci_using_dac = 1;
    err = pci_set_consistent_dma_mask(pcidev, 0xffffffffffffffffULL);
    if (err != 0) {
      dev_err((struct device const *)(& pcidev->dev), "unable to obtain 64-bit DMA for consistent allocations\n");
      goto err_out_disable_pci;
    } else {
    }
  } else {
    err = pci_set_dma_mask(pcidev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)(& pcidev->dev), "no usable DMA configuration\n");
      goto err_out_disable_pci;
    } else {
    }
    pci_using_dac = 0;
    pci_set_consistent_dma_mask(pcidev, 4294967295ULL);
  }
  err = pci_request_regions(pcidev, "slicoss");
  if (err != 0) {
    dev_err((struct device const *)(& pcidev->dev), "can\'t obtain PCI resources\n");
    goto err_out_disable_pci;
  } else {
  }
  pci_set_master(pcidev);
  netdev = alloc_etherdev_mqs(12592, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    err = -12;
    goto err_out_exit_slic_probe;
  } else {
  }
  netdev->dev.parent = & pcidev->dev;
  pci_set_drvdata(pcidev, (void *)netdev);
  tmp___1 = netdev_priv((struct net_device const *)netdev);
  adapter = (struct adapter *)tmp___1;
  adapter->netdev = netdev;
  adapter->pcidev = pcidev;
  if (pci_using_dac != 0) {
    netdev->features = netdev->features | 32ULL;
  } else {
  }
  mmio_start = (ulong )pcidev->resource[0].start;
  mmio_len = pcidev->resource[0].start != 0ULL || pcidev->resource[0].end != pcidev->resource[0].start ? (ulong )((pcidev->resource[0].end - pcidev->resource[0].start) + 1ULL) : 0UL;
  memmapped_ioaddr = ioremap((resource_size_t )mmio_start, mmio_len);
  if ((unsigned long )memmapped_ioaddr == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& pcidev->dev), "cannot remap MMIO region %lx @ %lx\n",
            mmio_len, mmio_start);
    err = -12;
    goto err_out_free_netdev;
  } else {
  }
  slic_config_pci(pcidev);
  slic_init_driver();
  slic_init_adapter(netdev, pcidev, pci_tbl_entry, memmapped_ioaddr, cards_found);
  tmp___2 = slic_card_locate(adapter);
  err = (int )tmp___2;
  if (err != 0) {
    dev_err((struct device const *)(& pcidev->dev), "cannot locate card\n");
    goto err_out_unmap;
  } else {
  }
  card = adapter->card;
  if (adapter->allocated == 0U) {
    card->adapters_allocated = card->adapters_allocated + 1U;
    adapter->allocated = 1U;
  } else {
  }
  err = slic_card_init(card, adapter);
  if (err != 0) {
    goto err_out_unmap;
  } else {
  }
  slic_adapter_set_hwaddr(adapter);
  netdev->base_addr = (unsigned long )memmapped_ioaddr;
  netdev->irq = (int )adapter->irq;
  netdev->netdev_ops = & slic_netdev_ops;
  strcpy((char *)(& netdev->name), "eth%d");
  err = ldv_register_netdev_43(netdev);
  if (err != 0) {
    dev_err((struct device const *)(& pcidev->dev), "Cannot register net device, aborting.\n");
    goto err_out_unmap;
  } else {
  }
  cards_found = cards_found + 1;
  return (0);
  err_out_unmap:
  iounmap((void volatile *)memmapped_ioaddr);
  err_out_free_netdev:
  ldv_free_netdev_44(netdev);
  err_out_exit_slic_probe:
  pci_release_regions(pcidev);
  err_out_disable_pci:
  pci_disable_device(pcidev);
  return (err);
}
}
static struct pci_driver slic_driver =
     {{0, 0}, "slicoss", (struct pci_device_id const *)(& slic_pci_tbl), & slic_entry_probe,
    & slic_entry_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0,
                                               0, 0, 0, 0, 0, 0}, {{{{{{0}}, 0U, 0U,
                                                                      0, {0, {0, 0},
                                                                          0, 0, 0UL}}}},
                                                                   {0, 0}}};
static int slic_module_init(void)
{
  int tmp ;
  {
  slic_init_driver();
  tmp = ldv___pci_register_driver_45(& slic_driver, & __this_module, "slicoss");
  return (tmp);
}
}
static void slic_module_cleanup(void)
{
  {
  ldv_pci_unregister_driver_46(& slic_driver);
  return;
}
}
int ldv_retval_2 ;
int ldv_retval_0 ;
extern int ldv_ndo_init_5(void) ;
extern void ldv_initialize(void) ;
int ldv_retval_1 ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
extern int ldv_ndo_uninit_5(void) ;
extern int ldv_shutdown_4(void) ;
void disable_suitable_timer_3(struct timer_list *timer )
{
  {
  if (ldv_timer_3_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_0) {
    ldv_timer_3_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_1) {
    ldv_timer_3_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_2) {
    ldv_timer_3_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_3_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_3_3) {
    ldv_timer_3_3 = 0;
    return;
  } else {
  }
  return;
}
}
void activate_suitable_timer_3(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_3_0 == 0 || ldv_timer_3_0 == 2) {
    ldv_timer_list_3_0 = timer;
    ldv_timer_list_3_0->data = data;
    ldv_timer_3_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_1 == 0 || ldv_timer_3_1 == 2) {
    ldv_timer_list_3_1 = timer;
    ldv_timer_list_3_1->data = data;
    ldv_timer_3_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_2 == 0 || ldv_timer_3_2 == 2) {
    ldv_timer_list_3_2 = timer;
    ldv_timer_list_3_2->data = data;
    ldv_timer_3_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_3_3 == 0 || ldv_timer_3_3 == 2) {
    ldv_timer_list_3_3 = timer;
    ldv_timer_list_3_3->data = data;
    ldv_timer_3_3 = 1;
    return;
  } else {
  }
  return;
}
}
void ldv_net_device_ops_5(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  slic_netdev_ops_group1 = (struct net_device *)tmp;
  return;
}
}
void choose_timer_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_2_0 == 1) {
    ldv_timer_2_0 = 2;
    ldv_timer_2(ldv_timer_2_0, ldv_timer_list_2_0);
  } else {
  }
  goto ldv_47831;
  case 1: ;
  if (ldv_timer_2_1 == 1) {
    ldv_timer_2_1 = 2;
    ldv_timer_2(ldv_timer_2_1, ldv_timer_list_2_1);
  } else {
  }
  goto ldv_47831;
  case 2: ;
  if (ldv_timer_2_2 == 1) {
    ldv_timer_2_2 = 2;
    ldv_timer_2(ldv_timer_2_2, ldv_timer_list_2_2);
  } else {
  }
  goto ldv_47831;
  case 3: ;
  if (ldv_timer_2_3 == 1) {
    ldv_timer_2_3 = 2;
    ldv_timer_2(ldv_timer_2_3, ldv_timer_list_2_3);
  } else {
  }
  goto ldv_47831;
  default:
  ldv_stop();
  }
  ldv_47831: ;
  return;
}
}
int reg_timer_2(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& slic_timer_load_check)) {
    activate_suitable_timer_2(timer, data);
  } else {
  }
  return (0);
}
}
void activate_pending_timer_2(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_2_0 == (unsigned long )timer) {
    if (ldv_timer_2_0 == 2 || pending_flag != 0) {
      ldv_timer_list_2_0 = timer;
      ldv_timer_list_2_0->data = data;
      ldv_timer_2_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_2_1 == (unsigned long )timer) {
    if (ldv_timer_2_1 == 2 || pending_flag != 0) {
      ldv_timer_list_2_1 = timer;
      ldv_timer_list_2_1->data = data;
      ldv_timer_2_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_2_2 == (unsigned long )timer) {
    if (ldv_timer_2_2 == 2 || pending_flag != 0) {
      ldv_timer_list_2_2 = timer;
      ldv_timer_list_2_2->data = data;
      ldv_timer_2_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_2_3 == (unsigned long )timer) {
    if (ldv_timer_2_3 == 2 || pending_flag != 0) {
      ldv_timer_list_2_3 = timer;
      ldv_timer_list_2_3->data = data;
      ldv_timer_2_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_2(timer, data);
  return;
}
}
void choose_timer_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_timer_3_0 == 1) {
    ldv_timer_3_0 = 2;
    ldv_timer_3(ldv_timer_3_0, ldv_timer_list_3_0);
  } else {
  }
  goto ldv_47851;
  case 1: ;
  if (ldv_timer_3_1 == 1) {
    ldv_timer_3_1 = 2;
    ldv_timer_3(ldv_timer_3_1, ldv_timer_list_3_1);
  } else {
  }
  goto ldv_47851;
  case 2: ;
  if (ldv_timer_3_2 == 1) {
    ldv_timer_3_2 = 2;
    ldv_timer_3(ldv_timer_3_2, ldv_timer_list_3_2);
  } else {
  }
  goto ldv_47851;
  case 3: ;
  if (ldv_timer_3_3 == 1) {
    ldv_timer_3_3 = 2;
    ldv_timer_3(ldv_timer_3_3, ldv_timer_list_3_3);
  } else {
  }
  goto ldv_47851;
  default:
  ldv_stop();
  }
  ldv_47851: ;
  return;
}
}
void disable_suitable_timer_2(struct timer_list *timer )
{
  {
  if (ldv_timer_2_0 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_2_0) {
    ldv_timer_2_0 = 0;
    return;
  } else {
  }
  if (ldv_timer_2_1 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_2_1) {
    ldv_timer_2_1 = 0;
    return;
  } else {
  }
  if (ldv_timer_2_2 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_2_2) {
    ldv_timer_2_2 = 0;
    return;
  } else {
  }
  if (ldv_timer_2_3 != 0 && (unsigned long )timer == (unsigned long )ldv_timer_list_2_3) {
    ldv_timer_2_3 = 0;
    return;
  } else {
  }
  return;
}
}
void disable_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 != 0 && line == ldv_irq_line_1_0) {
    ldv_irq_1_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_1 != 0 && line == ldv_irq_line_1_1) {
    ldv_irq_1_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_2 != 0 && line == ldv_irq_line_1_2) {
    ldv_irq_1_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_1_3 != 0 && line == ldv_irq_line_1_3) {
    ldv_irq_1_3 = 0;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& slic_interrupt)) {
    return (1);
  } else {
  }
  return (0);
}
}
void activate_suitable_irq_1(int line , void *data )
{
  {
  if (ldv_irq_1_0 == 0) {
    ldv_irq_line_1_0 = line;
    ldv_irq_data_1_0 = data;
    ldv_irq_1_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_1 == 0) {
    ldv_irq_line_1_1 = line;
    ldv_irq_data_1_1 = data;
    ldv_irq_1_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_2 == 0) {
    ldv_irq_line_1_2 = line;
    ldv_irq_data_1_2 = data;
    ldv_irq_1_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_1_3 == 0) {
    ldv_irq_line_1_3 = line;
    ldv_irq_data_1_3 = data;
    ldv_irq_1_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_1(int state , int line , void *data )
{
  irqreturn_t irq_retval ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = __VERIFIER_nondet_int();
  irq_retval = (irqreturn_t )tmp;
  if (state != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (state == 1) {
      LDV_IN_INTERRUPT = 2;
      irq_retval = slic_interrupt(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_47879;
    default:
    ldv_stop();
    }
    ldv_47879: ;
  } else {
  }
  return (state);
}
}
void activate_pending_timer_3(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_3_0 == (unsigned long )timer) {
    if (ldv_timer_3_0 == 2 || pending_flag != 0) {
      ldv_timer_list_3_0 = timer;
      ldv_timer_list_3_0->data = data;
      ldv_timer_3_0 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_1 == (unsigned long )timer) {
    if (ldv_timer_3_1 == 2 || pending_flag != 0) {
      ldv_timer_list_3_1 = timer;
      ldv_timer_list_3_1->data = data;
      ldv_timer_3_1 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_2 == (unsigned long )timer) {
    if (ldv_timer_3_2 == 2 || pending_flag != 0) {
      ldv_timer_list_3_2 = timer;
      ldv_timer_list_3_2->data = data;
      ldv_timer_3_2 = 1;
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )ldv_timer_list_3_3 == (unsigned long )timer) {
    if (ldv_timer_3_3 == 2 || pending_flag != 0) {
      ldv_timer_list_3_3 = timer;
      ldv_timer_list_3_3->data = data;
      ldv_timer_3_3 = 1;
    } else {
    }
    return;
  } else {
  }
  activate_suitable_timer_3(timer, data);
  return;
}
}
void timer_init_3(void)
{
  {
  ldv_timer_3_0 = 0;
  ldv_timer_3_1 = 0;
  ldv_timer_3_2 = 0;
  ldv_timer_3_3 = 0;
  return;
}
}
int reg_timer_3(struct timer_list *timer , void (*function)(unsigned long ) , unsigned long data )
{
  {
  if ((unsigned long )function == (unsigned long )(& slic_timer_ping)) {
    activate_suitable_timer_3(timer, data);
  } else {
  }
  return (0);
}
}
void ldv_pci_driver_4(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  slic_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void activate_suitable_timer_2(struct timer_list *timer , unsigned long data )
{
  {
  if (ldv_timer_2_0 == 0 || ldv_timer_2_0 == 2) {
    ldv_timer_list_2_0 = timer;
    ldv_timer_list_2_0->data = data;
    ldv_timer_2_0 = 1;
    return;
  } else {
  }
  if (ldv_timer_2_1 == 0 || ldv_timer_2_1 == 2) {
    ldv_timer_list_2_1 = timer;
    ldv_timer_list_2_1->data = data;
    ldv_timer_2_1 = 1;
    return;
  } else {
  }
  if (ldv_timer_2_2 == 0 || ldv_timer_2_2 == 2) {
    ldv_timer_list_2_2 = timer;
    ldv_timer_list_2_2->data = data;
    ldv_timer_2_2 = 1;
    return;
  } else {
  }
  if (ldv_timer_2_3 == 0 || ldv_timer_2_3 == 2) {
    ldv_timer_list_2_3 = timer;
    ldv_timer_list_2_3->data = data;
    ldv_timer_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_47908;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_47908;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_47908;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_47908;
  default:
  ldv_stop();
  }
  ldv_47908: ;
  return;
}
}
void ldv_timer_2(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  slic_timer_load_check(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
void timer_init_2(void)
{
  {
  ldv_timer_2_0 = 0;
  ldv_timer_2_1 = 0;
  ldv_timer_2_2 = 0;
  ldv_timer_2_3 = 0;
  return;
}
}
void ldv_timer_3(int state , struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  slic_timer_ping(timer->data);
  LDV_IN_INTERRUPT = 1;
  return;
}
}
int main(void)
{
  struct pci_device_id *ldvarg0 ;
  void *tmp ;
  void *ldvarg1 ;
  void *tmp___0 ;
  int ldvarg4 ;
  int ldvarg3 ;
  struct ifreq *ldvarg5 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg2 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg0 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(1UL);
  ldvarg1 = tmp___0;
  tmp___1 = ldv_init_zalloc(40UL);
  ldvarg5 = (struct ifreq *)tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg2 = (struct sk_buff *)tmp___2;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg4), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  timer_init_3();
  ldv_state_variable_3 = 1;
  timer_init_2();
  ldv_state_variable_2 = 1;
  ldv_state_variable_5 = 0;
  ldv_47970:
  tmp___3 = __VERIFIER_nondet_int();
  switch (tmp___3) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___4 = __VERIFIER_nondet_int();
    switch (tmp___4) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      ldv_retval_0 = slic_entry_probe(slic_driver_group1, (struct pci_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_4 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47941;
    case 1: ;
    if (ldv_state_variable_4 == 2) {
      slic_entry_remove(slic_driver_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_47941;
    case 2: ;
    if (ldv_state_variable_4 == 2) {
      ldv_shutdown_4();
      ldv_state_variable_4 = 2;
    } else {
    }
    goto ldv_47941;
    default:
    ldv_stop();
    }
    ldv_47941: ;
  } else {
  }
  goto ldv_47945;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_47945;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___5 = __VERIFIER_nondet_int();
    switch (tmp___5) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      slic_module_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_47950;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = slic_module_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_47950;
    default:
    ldv_stop();
    }
    ldv_47950: ;
  } else {
  }
  goto ldv_47945;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    choose_timer_3();
  } else {
  }
  goto ldv_47945;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_timer_2();
  } else {
  }
  goto ldv_47945;
  case 5: ;
  if (ldv_state_variable_5 != 0) {
    tmp___6 = __VERIFIER_nondet_int();
    switch (tmp___6) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      slic_mcast_set_list(slic_netdev_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      slic_mcast_set_list(slic_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      slic_mcast_set_list(slic_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 1: ;
    if (ldv_state_variable_5 == 3) {
      slic_entry_halt(slic_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 2: ;
    if (ldv_state_variable_5 == 1) {
      eth_validate_addr(slic_netdev_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      eth_validate_addr(slic_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      eth_validate_addr(slic_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 3: ;
    if (ldv_state_variable_5 == 1) {
      slic_ioctl(slic_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      slic_ioctl(slic_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      slic_ioctl(slic_netdev_ops_group1, ldvarg5, ldvarg4);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 4: ;
    if (ldv_state_variable_5 == 1) {
      slic_get_stats(slic_netdev_ops_group1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      slic_get_stats(slic_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      slic_get_stats(slic_netdev_ops_group1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 5: ;
    if (ldv_state_variable_5 == 3) {
      eth_change_mtu(slic_netdev_ops_group1, ldvarg3);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      eth_change_mtu(slic_netdev_ops_group1, ldvarg3);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 6: ;
    if (ldv_state_variable_5 == 2) {
      ldv_retval_3 = slic_entry_open(slic_netdev_ops_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_5 = 3;
      } else {
      }
    } else {
    }
    goto ldv_47957;
    case 7: ;
    if (ldv_state_variable_5 == 3) {
      slic_xmit_start(ldvarg2, slic_netdev_ops_group1);
      ldv_state_variable_5 = 3;
    } else {
    }
    goto ldv_47957;
    case 8: ;
    if (ldv_state_variable_5 == 1) {
      slic_mac_set_address(slic_netdev_ops_group1, ldvarg1);
      ldv_state_variable_5 = 1;
    } else {
    }
    if (ldv_state_variable_5 == 3) {
      slic_mac_set_address(slic_netdev_ops_group1, ldvarg1);
      ldv_state_variable_5 = 3;
    } else {
    }
    if (ldv_state_variable_5 == 2) {
      slic_mac_set_address(slic_netdev_ops_group1, ldvarg1);
      ldv_state_variable_5 = 2;
    } else {
    }
    goto ldv_47957;
    case 9: ;
    if (ldv_state_variable_5 == 1) {
      ldv_retval_2 = ldv_ndo_init_5();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_5 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_47957;
    case 10: ;
    if (ldv_state_variable_5 == 2) {
      ldv_ndo_uninit_5();
      ldv_state_variable_5 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_47957;
    default:
    ldv_stop();
    }
    ldv_47957: ;
  } else {
  }
  goto ldv_47945;
  default:
  ldv_stop();
  }
  ldv_47945: ;
  goto ldv_47970;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  ldv_spin_lock();
  ldv_spin_lock_5(lock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_9(lock);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_12(lock, flags);
  return;
}
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(size);
  return (tmp);
}
}
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_zalloc(size);
  return (tmp);
}
}
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_26(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_28(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv_skb_copy_30(struct sk_buff const *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_31(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_32(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
struct sk_buff *ldv___netdev_alloc_skb_33(struct net_device *ldv_func_arg1 , unsigned int ldv_func_arg2 ,
                                          gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
int ldv_pskb_expand_head_34(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
int ldv_pskb_expand_head_35(struct sk_buff *ldv_func_arg1 , int ldv_func_arg2 , int ldv_func_arg3 ,
                            gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return __VERIFIER_nondet_int();
}
}
struct sk_buff *ldv_skb_clone_36(struct sk_buff *ldv_func_arg1 , gfp_t flags )
{
  void *tmp ;
  {
  ldv_check_alloc_flags(flags);
  tmp = ldv_malloc(sizeof(struct sk_buff));
  return ((struct sk_buff *)tmp);
}
}
void ldv_free_irq_37(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_1((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
int ldv_del_timer_38(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_39(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_1(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_1((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_40(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_3(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_41(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
void ldv_free_netdev_42(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
int ldv_register_netdev_43(struct net_device *dev )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_5 = 1;
  ldv_net_device_ops_5();
  return (ldv_func_res);
}
}
void ldv_free_netdev_44(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_5 = 0;
  return;
}
}
int ldv___pci_register_driver_45(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_4 = 1;
  ldv_pci_driver_4();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_46(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_4 = 0;
  return;
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
}
void __dev_kfree_skb_irq(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __might_fault(const char *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
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
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
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
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void dev_err(const struct device *arg0, const char *arg1, ...) {
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
int __VERIFIER_nondet_int(void);
int eth_change_mtu(struct net_device *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
int __VERIFIER_nondet_int(void);
int eth_validate_addr(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_5() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_shutdown_4() {
  return __VERIFIER_nondet_int();
}
struct page *ldv_some_page() {
  return ldv_malloc(sizeof(struct page));
}
int __VERIFIER_nondet_int(void);
int netif_rx(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
void netif_tx_wake_queue(struct netdev_queue *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
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
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
void release_firmware(const struct firmware *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned char *skb_pull(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
