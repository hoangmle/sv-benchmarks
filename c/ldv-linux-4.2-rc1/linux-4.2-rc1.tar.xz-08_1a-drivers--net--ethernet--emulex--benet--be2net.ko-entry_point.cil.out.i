extern void __VERIFIER_error() __attribute__ ((__noreturn__));
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
typedef __u16 __sum16;
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
struct ethtool_channels;
struct ethtool_eeprom;
struct ethtool_coalesce;
struct ethtool_wolinfo;
struct ethtool_rxnfc;
struct ethtool_pauseparam;
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
struct proc_dir_entry;
struct pci_driver;
union __anonunion____missing_field_name_220 {
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
   union __anonunion____missing_field_name_220 __annonCompField58 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
union __anonunion____missing_field_name_221 {
   struct iovec const *iov ;
   struct kvec const *kvec ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion____missing_field_name_221 __annonCompField59 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct kiocb;
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iov_iter msg_iter ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
   struct kiocb *msg_iocb ;
};
enum ldv_22286 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_22286 socket_state;
struct poll_table_struct;
struct net;
struct fasync_struct;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct in6_addr;
struct sk_buff;
typedef u64 netdev_features_t;
union __anonunion_in6_u_222 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_222 in6_u ;
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
union __anonunion____missing_field_name_227 {
   struct net_device *physoutdev ;
   char neigh_header[8U] ;
};
union __anonunion____missing_field_name_228 {
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
   union __anonunion____missing_field_name_227 __annonCompField63 ;
   union __anonunion____missing_field_name_228 __annonCompField64 ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_229 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_229 page ;
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
typedef unsigned int sk_buff_data_t;
struct __anonstruct____missing_field_name_231 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion____missing_field_name_230 {
   u64 v64 ;
   struct __anonstruct____missing_field_name_231 __annonCompField65 ;
};
struct skb_mstamp {
   union __anonunion____missing_field_name_230 __annonCompField66 ;
};
union __anonunion____missing_field_name_234 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct __anonstruct____missing_field_name_233 {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion____missing_field_name_234 __annonCompField67 ;
};
union __anonunion____missing_field_name_232 {
   struct __anonstruct____missing_field_name_233 __annonCompField68 ;
   struct rb_node rbnode ;
};
struct sec_path;
struct __anonstruct____missing_field_name_236 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_235 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_236 __annonCompField70 ;
};
union __anonunion____missing_field_name_237 {
   unsigned int napi_id ;
   unsigned int sender_cpu ;
};
union __anonunion____missing_field_name_238 {
   __u32 mark ;
   __u32 reserved_tailroom ;
};
union __anonunion____missing_field_name_239 {
   __be16 inner_protocol ;
   __u8 inner_ipproto ;
};
struct sk_buff {
   union __anonunion____missing_field_name_232 __annonCompField69 ;
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
   union __anonunion____missing_field_name_235 __annonCompField71 ;
   __u32 priority ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   union __anonunion____missing_field_name_237 __annonCompField72 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_238 __annonCompField73 ;
   union __anonunion____missing_field_name_239 __annonCompField74 ;
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
enum pkt_hash_types {
    PKT_HASH_TYPE_NONE = 0,
    PKT_HASH_TYPE_L2 = 1,
    PKT_HASH_TYPE_L3 = 2,
    PKT_HASH_TYPE_L4 = 3
} ;
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
struct __anonstruct_sync_serial_settings_241 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_241 sync_serial_settings;
struct __anonstruct_te1_settings_242 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_242 te1_settings;
struct __anonstruct_raw_hdlc_proto_243 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_243 raw_hdlc_proto;
struct __anonstruct_fr_proto_244 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_244 fr_proto;
struct __anonstruct_fr_proto_pvc_245 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_245 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_246 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_246 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_247 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_247 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_248 {
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
   union __anonunion_ifs_ifsu_248 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_249 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_250 {
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
   union __anonunion_ifr_ifrn_249 ifr_ifrn ;
   union __anonunion_ifr_ifru_250 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct____missing_field_name_255 {
   spinlock_t lock ;
   int count ;
};
union __anonunion____missing_field_name_254 {
   struct __anonstruct____missing_field_name_255 __annonCompField75 ;
};
struct lockref {
   union __anonunion____missing_field_name_254 __annonCompField76 ;
};
struct vfsmount;
struct __anonstruct____missing_field_name_257 {
   u32 hash ;
   u32 len ;
};
union __anonunion____missing_field_name_256 {
   struct __anonstruct____missing_field_name_257 __annonCompField77 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion____missing_field_name_256 __annonCompField78 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_258 {
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
   union __anonunion_d_u_258 d_u ;
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
struct __anonstruct____missing_field_name_262 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion____missing_field_name_261 {
   struct __anonstruct____missing_field_name_262 __annonCompField79 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion____missing_field_name_261 __annonCompField80 ;
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
struct __anonstruct_kprojid_t_266 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_266 kprojid_t;
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion____missing_field_name_267 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion____missing_field_name_267 __annonCompField82 ;
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
union __anonunion____missing_field_name_270 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion____missing_field_name_271 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock_context;
struct cdev;
union __anonunion____missing_field_name_272 {
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
   union __anonunion____missing_field_name_270 __annonCompField83 ;
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
   union __anonunion____missing_field_name_271 __annonCompField84 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock_context *i_flctx ;
   struct address_space i_data ;
   struct list_head i_devices ;
   union __anonunion____missing_field_name_272 __annonCompField85 ;
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
union __anonunion_f_u_273 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_273 f_u ;
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
struct __anonstruct_afs_275 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_274 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_275 afs ;
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
   union __anonunion_fl_u_274 fl_u ;
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
enum ldv_28516 {
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
typedef enum ldv_28516 phy_interface_t;
enum ldv_28570 {
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
   enum ldv_28570 state ;
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
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
union __anonunion____missing_field_name_333 {
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
   union __anonunion____missing_field_name_333 __annonCompField100 ;
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
union __anonunion____missing_field_name_344 {
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
   union __anonunion____missing_field_name_344 __annonCompField101 ;
};
struct __anonstruct_socket_lock_t_345 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_345 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct____missing_field_name_347 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion____missing_field_name_346 {
   __addrpair skc_addrpair ;
   struct __anonstruct____missing_field_name_347 __annonCompField102 ;
};
union __anonunion____missing_field_name_348 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct____missing_field_name_350 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion____missing_field_name_349 {
   __portpair skc_portpair ;
   struct __anonstruct____missing_field_name_350 __annonCompField105 ;
};
union __anonunion____missing_field_name_351 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion____missing_field_name_352 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion____missing_field_name_346 __annonCompField103 ;
   union __anonunion____missing_field_name_348 __annonCompField104 ;
   union __anonunion____missing_field_name_349 __annonCompField106 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse : 4 ;
   unsigned char skc_reuseport : 1 ;
   unsigned char skc_ipv6only : 1 ;
   unsigned char skc_net_refcnt : 1 ;
   int skc_bound_dev_if ;
   union __anonunion____missing_field_name_351 __annonCompField107 ;
   struct proto *skc_prot ;
   possible_net_t skc_net ;
   struct in6_addr skc_v6_daddr ;
   struct in6_addr skc_v6_rcv_saddr ;
   atomic64_t skc_cookie ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion____missing_field_name_352 __annonCompField108 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_353 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_353 sk_backlog ;
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
union __anonunion_h_356 {
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
   union __anonunion_h_356 h ;
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
struct __una_u32 {
   u32 x ;
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
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6_opt_hdr {
   __u8 nexthdr ;
   __u8 hdrlen ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
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
struct icmpv6_echo {
   __be16 identifier ;
   __be16 sequence ;
};
struct icmpv6_nd_advt {
   unsigned char reserved : 5 ;
   unsigned char override : 1 ;
   unsigned char solicited : 1 ;
   unsigned char router : 1 ;
   unsigned int reserved2 : 24 ;
};
struct icmpv6_nd_ra {
   __u8 hop_limit ;
   unsigned char reserved : 3 ;
   unsigned char router_pref : 2 ;
   unsigned char home_agent : 1 ;
   unsigned char other : 1 ;
   unsigned char managed : 1 ;
   __be16 rt_lifetime ;
};
union __anonunion_icmp6_dataun_374 {
   __be32 un_data32[1U] ;
   __be16 un_data16[2U] ;
   __u8 un_data8[4U] ;
   struct icmpv6_echo u_echo ;
   struct icmpv6_nd_advt u_nd_advt ;
   struct icmpv6_nd_ra u_nd_ra ;
};
struct icmp6hdr {
   __u8 icmp6_type ;
   __u8 icmp6_code ;
   __sum16 icmp6_cksum ;
   union __anonunion_icmp6_dataun_374 icmp6_dataun ;
};
struct udphdr {
   __be16 source ;
   __be16 dest ;
   __be16 len ;
   __sum16 check ;
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
union __anonunion____missing_field_name_378 {
   __be32 a4 ;
   __be32 a6[4U] ;
   struct in6_addr in6 ;
};
struct inetpeer_addr_base {
   union __anonunion____missing_field_name_378 __annonCompField110 ;
};
struct inetpeer_addr {
   struct inetpeer_addr_base addr ;
   __u16 family ;
};
union __anonunion____missing_field_name_379 {
   struct list_head gc_list ;
   struct callback_head gc_rcu ;
};
struct __anonstruct____missing_field_name_381 {
   atomic_t rid ;
};
union __anonunion____missing_field_name_380 {
   struct __anonstruct____missing_field_name_381 __annonCompField112 ;
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
   union __anonunion____missing_field_name_379 __annonCompField111 ;
   union __anonunion____missing_field_name_380 __annonCompField113 ;
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
struct inet_ehash_bucket {
   struct hlist_nulls_head chain ;
};
struct inet_bind_hashbucket {
   spinlock_t lock ;
   struct hlist_head chain ;
};
struct inet_listen_hashbucket {
   spinlock_t lock ;
   struct hlist_nulls_head head ;
};
struct inet_hashinfo {
   struct inet_ehash_bucket *ehash ;
   spinlock_t *ehash_locks ;
   unsigned int ehash_mask ;
   unsigned int ehash_locks_mask ;
   struct inet_bind_hashbucket *bhash ;
   unsigned int bhash_size ;
   struct kmem_cache *bind_bucket_cachep ;
   struct inet_listen_hashbucket listening_hash[32U] ;
};
struct vlan_hdr {
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct vlan_ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_vlan_proto ;
   __be16 h_vlan_TCI ;
   __be16 h_vlan_encapsulated_proto ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
struct sensor_device_attribute {
   struct device_attribute dev_attr ;
   int index ;
};
struct be_eq_entry {
   u32 evt ;
};
struct be_eth_wrb {
   __le32 frag_pa_hi ;
   __le32 frag_pa_lo ;
   u32 rsvd0 ;
   __le32 frag_len ;
};
struct be_eth_hdr_wrb {
   __le32 dw[4U] ;
};
struct be_eth_tx_compl {
   u32 dw[4U] ;
};
struct be_eth_rx_d {
   u32 fragpa_hi ;
   u32 fragpa_lo ;
};
struct be_eth_rx_compl {
   u32 dw[4U] ;
};
struct ocrdma_dev;
struct be_dma_mem {
   void *va ;
   dma_addr_t dma ;
   u32 size ;
};
struct be_queue_info {
   struct be_dma_mem dma_mem ;
   u16 len ;
   u16 entry_size ;
   u16 id ;
   u16 tail ;
   u16 head ;
   bool created ;
   atomic_t used ;
};
struct be_adapter;
struct be_eq_obj {
   struct be_queue_info q ;
   char desc[32U] ;
   bool enable_aic ;
   u32 min_eqd ;
   u32 max_eqd ;
   u32 eqd ;
   u32 cur_eqd ;
   u8 idx ;
   u8 msix_idx ;
   u16 spurious_intr ;
   struct napi_struct napi ;
   struct be_adapter *adapter ;
   cpumask_var_t affinity_mask ;
   unsigned int state ;
   spinlock_t lock ;
};
struct be_aic_obj {
   bool enable ;
   u32 min_eqd ;
   u32 max_eqd ;
   u32 prev_eqd ;
   u32 et_eqd ;
   ulong jiffies ;
   u64 rx_pkts_prev ;
   u64 tx_reqs_prev ;
};
struct be_mcc_obj {
   struct be_queue_info q ;
   struct be_queue_info cq ;
   bool rearm_cq ;
};
struct be_tx_stats {
   u64 tx_bytes ;
   u64 tx_pkts ;
   u64 tx_reqs ;
   u64 tx_compl ;
   ulong tx_jiffies ;
   u32 tx_stops ;
   u32 tx_drv_drops ;
   u32 tx_hdr_parse_err ;
   u32 tx_dma_err ;
   u32 tx_tso_err ;
   u32 tx_spoof_check_err ;
   u32 tx_qinq_err ;
   u32 tx_internal_parity_err ;
   struct u64_stats_sync sync ;
   struct u64_stats_sync sync_compl ;
};
struct be_tx_compl_info {
   u8 status ;
   u16 end_index ;
};
struct be_tx_obj {
   u32 db_offset ;
   struct be_queue_info q ;
   struct be_queue_info cq ;
   struct be_tx_compl_info txcp ;
   struct sk_buff *sent_skb_list[2048U] ;
   struct be_tx_stats stats ;
   u16 pend_wrb_cnt ;
   u16 last_req_wrb_cnt ;
   u16 last_req_hdr ;
};
struct be_rx_page_info {
   struct page *page ;
   dma_addr_t bus ;
   u16 page_offset ;
   bool last_frag ;
};
struct be_rx_stats {
   u64 rx_bytes ;
   u64 rx_pkts ;
   u32 rx_drops_no_skbs ;
   u32 rx_drops_no_frags ;
   u32 rx_post_fail ;
   u32 rx_compl ;
   u32 rx_mcast_pkts ;
   u32 rx_compl_err ;
   struct u64_stats_sync sync ;
};
struct be_rx_compl_info {
   u32 rss_hash ;
   u16 vlan_tag ;
   u16 pkt_size ;
   u16 port ;
   u8 vlanf ;
   u8 num_rcvd ;
   u8 err ;
   u8 ipf ;
   u8 tcpf ;
   u8 udpf ;
   u8 ip_csum ;
   u8 l4_csum ;
   u8 ipv6 ;
   u8 qnq ;
   u8 pkt_type ;
   u8 ip_frag ;
   u8 tunneled ;
};
struct be_rx_obj {
   struct be_adapter *adapter ;
   struct be_queue_info q ;
   struct be_queue_info cq ;
   struct be_rx_compl_info rxcp ;
   struct be_rx_page_info page_info_tbl[1024U] ;
   struct be_rx_stats stats ;
   u8 rss_id ;
   bool rx_post_starved ;
};
struct be_drv_stats {
   u32 eth_red_drops ;
   u32 dma_map_errors ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 rx_drops_too_many_frags ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_priority_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 tx_pauseframes ;
   u32 tx_priority_pauseframes ;
   u32 tx_controlframes ;
   u32 rxpp_fifo_overflow_drop ;
   u32 rx_input_fifo_overflow_drop ;
   u32 pmem_fifo_overflow_drop ;
   u32 jabber_events ;
   u32 rx_roce_bytes_lsd ;
   u32 rx_roce_bytes_msd ;
   u32 rx_roce_frames ;
   u32 roce_drops_payload_len ;
   u32 roce_drops_crc ;
};
struct be_vf_cfg {
   unsigned char mac_addr[6U] ;
   int if_handle ;
   int pmac_id ;
   u16 vlan_tag ;
   u32 tx_rate ;
   u32 plink_tracking ;
   u32 privileges ;
   bool spoofchk ;
};
struct phy_info {
   u8 transceiver ;
   u8 autoneg ;
   u8 fc_autoneg ;
   u8 port_type ;
   u16 phy_type ;
   u16 interface_type ;
   u32 misc_params ;
   u16 auto_speeds_supported ;
   u16 fixed_speeds_supported ;
   int link_speed ;
   u32 advertising ;
   u32 supported ;
   u8 cable_type ;
   u8 vendor_name[17U] ;
   u8 vendor_pn[17U] ;
};
struct be_resources {
   u16 max_vfs ;
   u16 max_mcast_mac ;
   u16 max_tx_qs ;
   u16 max_rss_qs ;
   u16 max_rx_qs ;
   u16 max_cq_count ;
   u16 max_uc_mac ;
   u16 max_vlans ;
   u16 max_iface_count ;
   u16 max_mcc_count ;
   u16 max_evt_qs ;
   u32 if_cap_flags ;
   u32 vf_if_cap_flags ;
};
struct rss_info {
   u64 rss_flags ;
   u8 rsstable[128U] ;
   u8 rss_queue[128U] ;
   u8 rss_hkey[40U] ;
};
struct be_hwmon {
   struct device *hwmon_dev ;
   u8 be_on_die_temp ;
};
struct be_wrb_params {
   u32 features ;
   u16 vlan_tag ;
   u16 lso_mss ;
};
struct __anonstruct_roce_db_388 {
   u32 size ;
   u32 total_size ;
   u64 io_addr ;
};
struct be_adapter {
   struct pci_dev *pdev ;
   struct net_device *netdev ;
   u8 *csr ;
   u8 *db ;
   u8 *pcicfg ;
   struct mutex mbox_lock ;
   struct be_dma_mem mbox_mem ;
   struct be_dma_mem mbox_mem_alloced ;
   struct be_mcc_obj mcc_obj ;
   spinlock_t mcc_lock ;
   spinlock_t mcc_cq_lock ;
   u16 cfg_num_qs ;
   u16 num_evt_qs ;
   u16 num_msix_vec ;
   struct be_eq_obj eq_obj[32U] ;
   struct msix_entry msix_entries[32U] ;
   bool isr_registered ;
   u16 num_tx_qs ;
   struct be_tx_obj tx_obj[32U] ;
   u16 num_rx_qs ;
   u16 num_rss_qs ;
   u16 need_def_rxq ;
   struct be_rx_obj rx_obj[32U] ;
   u32 big_page_size ;
   struct be_drv_stats drv_stats ;
   struct be_aic_obj aic_obj[32U] ;
   u8 vlan_prio_bmap ;
   u16 recommended_prio ;
   struct be_dma_mem rx_filter ;
   struct be_dma_mem stats_cmd ;
   struct delayed_work work ;
   u16 work_counter ;
   struct delayed_work be_err_detection_work ;
   u8 err_flags ;
   u32 flags ;
   u32 cmd_privileges ;
   char fw_ver[32U] ;
   char fw_on_flash[32U] ;
   int if_handle ;
   u32 if_flags ;
   u32 *pmac_id ;
   u32 uc_macs ;
   unsigned long vids[64U] ;
   u16 vlans_added ;
   u32 beacon_state ;
   bool eeh_error ;
   bool fw_timeout ;
   bool hw_error ;
   u32 port_num ;
   char port_name ;
   u8 mc_type ;
   u32 function_mode ;
   u32 function_caps ;
   u32 rx_fc ;
   u32 tx_fc ;
   bool stats_cmd_sent ;
   struct __anonstruct_roce_db_388 roce_db ;
   u32 num_msix_roce_vec ;
   struct ocrdma_dev *ocrdma_dev ;
   struct list_head entry ;
   u32 flash_status ;
   struct completion et_cmd_compl ;
   struct be_resources pool_res ;
   struct be_resources res ;
   u16 num_vfs ;
   u8 virtfn ;
   struct be_vf_cfg *vf_cfg ;
   bool be3_native ;
   u32 sli_family ;
   u8 hba_port_num ;
   u16 pvid ;
   __be16 vxlan_port ;
   int vxlan_port_count ;
   struct phy_info phy ;
   u8 wol_cap ;
   bool wol_en ;
   u16 asic_rev ;
   u16 qnq_vid ;
   u32 msg_enable ;
   int be_get_temp_freq ;
   struct be_hwmon hwmon_info ;
   u8 pf_number ;
   struct rss_info rss_info ;
   u32 bmc_filt_mask ;
};
struct be_cmd_req_hdr {
   u8 opcode ;
   u8 subsystem ;
   u8 port_number ;
   u8 domain ;
   u32 timeout ;
   u32 request_length ;
   u8 version ;
   u8 rsvd[3U] ;
};
struct be_cmd_resp_hdr {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd[2U] ;
   u8 base_status ;
   u8 addl_status ;
   u8 rsvd1[2U] ;
   u32 response_length ;
   u32 actual_resp_len ;
};
struct be_port_rxf_stats_v0 {
   u32 rx_bytes_lsd ;
   u32 rx_bytes_msd ;
   u32 rx_total_frames ;
   u32 rx_unicast_frames ;
   u32 rx_multicast_frames ;
   u32 rx_broadcast_frames ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_vlan_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_64_byte_packets ;
   u32 rx_65_127_byte_packets ;
   u32 rx_128_256_byte_packets ;
   u32 rx_256_511_byte_packets ;
   u32 rx_512_1023_byte_packets ;
   u32 rx_1024_1518_byte_packets ;
   u32 rx_1519_2047_byte_packets ;
   u32 rx_2048_4095_byte_packets ;
   u32 rx_4096_8191_byte_packets ;
   u32 rx_8192_9216_byte_packets ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 rx_non_rss_packets ;
   u32 rx_ipv4_packets ;
   u32 rx_ipv6_packets ;
   u32 rx_ipv4_bytes_lsd ;
   u32 rx_ipv4_bytes_msd ;
   u32 rx_ipv6_bytes_lsd ;
   u32 rx_ipv6_bytes_msd ;
   u32 rx_chute1_packets ;
   u32 rx_chute2_packets ;
   u32 rx_chute3_packets ;
   u32 rx_management_packets ;
   u32 rx_switched_unicast_packets ;
   u32 rx_switched_multicast_packets ;
   u32 rx_switched_broadcast_packets ;
   u32 tx_bytes_lsd ;
   u32 tx_bytes_msd ;
   u32 tx_unicastframes ;
   u32 tx_multicastframes ;
   u32 tx_broadcastframes ;
   u32 tx_pauseframes ;
   u32 tx_controlframes ;
   u32 tx_64_byte_packets ;
   u32 tx_65_127_byte_packets ;
   u32 tx_128_256_byte_packets ;
   u32 tx_256_511_byte_packets ;
   u32 tx_512_1023_byte_packets ;
   u32 tx_1024_1518_byte_packets ;
   u32 tx_1519_2047_byte_packets ;
   u32 tx_2048_4095_byte_packets ;
   u32 tx_4096_8191_byte_packets ;
   u32 tx_8192_9216_byte_packets ;
   u32 rx_fifo_overflow ;
   u32 rx_input_fifo_overflow ;
};
struct be_rxf_stats_v0 {
   struct be_port_rxf_stats_v0 port[2U] ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 management_rx_port_packets ;
   u32 management_rx_port_bytes ;
   u32 management_rx_port_pause_frames ;
   u32 management_rx_port_errors ;
   u32 management_tx_port_packets ;
   u32 management_tx_port_bytes ;
   u32 management_tx_port_pause ;
   u32 management_rx_port_rxfifo_overflow ;
   u32 rx_drops_too_many_frags ;
   u32 rx_drops_invalid_ring ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rsvd0[7U] ;
   u32 port0_jabber_events ;
   u32 port1_jabber_events ;
   u32 rsvd1[6U] ;
};
struct be_erx_stats_v0 {
   u32 rx_drops_no_fragments[44U] ;
   u32 rsvd[4U] ;
};
struct be_pmem_stats {
   u32 eth_red_drops ;
   u32 rsvd[5U] ;
};
struct be_hw_stats_v0 {
   struct be_rxf_stats_v0 rxf ;
   u32 rsvd[48U] ;
   struct be_erx_stats_v0 erx ;
   struct be_pmem_stats pmem ;
};
struct be_cmd_resp_get_stats_v0 {
   struct be_cmd_resp_hdr hdr ;
   struct be_hw_stats_v0 hw_stats ;
};
struct lancer_pport_stats {
   u32 tx_packets_lo ;
   u32 tx_packets_hi ;
   u32 tx_unicast_packets_lo ;
   u32 tx_unicast_packets_hi ;
   u32 tx_multicast_packets_lo ;
   u32 tx_multicast_packets_hi ;
   u32 tx_broadcast_packets_lo ;
   u32 tx_broadcast_packets_hi ;
   u32 tx_bytes_lo ;
   u32 tx_bytes_hi ;
   u32 tx_unicast_bytes_lo ;
   u32 tx_unicast_bytes_hi ;
   u32 tx_multicast_bytes_lo ;
   u32 tx_multicast_bytes_hi ;
   u32 tx_broadcast_bytes_lo ;
   u32 tx_broadcast_bytes_hi ;
   u32 tx_discards_lo ;
   u32 tx_discards_hi ;
   u32 tx_errors_lo ;
   u32 tx_errors_hi ;
   u32 tx_pause_frames_lo ;
   u32 tx_pause_frames_hi ;
   u32 tx_pause_on_frames_lo ;
   u32 tx_pause_on_frames_hi ;
   u32 tx_pause_off_frames_lo ;
   u32 tx_pause_off_frames_hi ;
   u32 tx_internal_mac_errors_lo ;
   u32 tx_internal_mac_errors_hi ;
   u32 tx_control_frames_lo ;
   u32 tx_control_frames_hi ;
   u32 tx_packets_64_bytes_lo ;
   u32 tx_packets_64_bytes_hi ;
   u32 tx_packets_65_to_127_bytes_lo ;
   u32 tx_packets_65_to_127_bytes_hi ;
   u32 tx_packets_128_to_255_bytes_lo ;
   u32 tx_packets_128_to_255_bytes_hi ;
   u32 tx_packets_256_to_511_bytes_lo ;
   u32 tx_packets_256_to_511_bytes_hi ;
   u32 tx_packets_512_to_1023_bytes_lo ;
   u32 tx_packets_512_to_1023_bytes_hi ;
   u32 tx_packets_1024_to_1518_bytes_lo ;
   u32 tx_packets_1024_to_1518_bytes_hi ;
   u32 tx_packets_1519_to_2047_bytes_lo ;
   u32 tx_packets_1519_to_2047_bytes_hi ;
   u32 tx_packets_2048_to_4095_bytes_lo ;
   u32 tx_packets_2048_to_4095_bytes_hi ;
   u32 tx_packets_4096_to_8191_bytes_lo ;
   u32 tx_packets_4096_to_8191_bytes_hi ;
   u32 tx_packets_8192_to_9216_bytes_lo ;
   u32 tx_packets_8192_to_9216_bytes_hi ;
   u32 tx_lso_packets_lo ;
   u32 tx_lso_packets_hi ;
   u32 rx_packets_lo ;
   u32 rx_packets_hi ;
   u32 rx_unicast_packets_lo ;
   u32 rx_unicast_packets_hi ;
   u32 rx_multicast_packets_lo ;
   u32 rx_multicast_packets_hi ;
   u32 rx_broadcast_packets_lo ;
   u32 rx_broadcast_packets_hi ;
   u32 rx_bytes_lo ;
   u32 rx_bytes_hi ;
   u32 rx_unicast_bytes_lo ;
   u32 rx_unicast_bytes_hi ;
   u32 rx_multicast_bytes_lo ;
   u32 rx_multicast_bytes_hi ;
   u32 rx_broadcast_bytes_lo ;
   u32 rx_broadcast_bytes_hi ;
   u32 rx_unknown_protos ;
   u32 rsvd_69 ;
   u32 rx_discards_lo ;
   u32 rx_discards_hi ;
   u32 rx_errors_lo ;
   u32 rx_errors_hi ;
   u32 rx_crc_errors_lo ;
   u32 rx_crc_errors_hi ;
   u32 rx_alignment_errors_lo ;
   u32 rx_alignment_errors_hi ;
   u32 rx_symbol_errors_lo ;
   u32 rx_symbol_errors_hi ;
   u32 rx_pause_frames_lo ;
   u32 rx_pause_frames_hi ;
   u32 rx_pause_on_frames_lo ;
   u32 rx_pause_on_frames_hi ;
   u32 rx_pause_off_frames_lo ;
   u32 rx_pause_off_frames_hi ;
   u32 rx_frames_too_long_lo ;
   u32 rx_frames_too_long_hi ;
   u32 rx_internal_mac_errors_lo ;
   u32 rx_internal_mac_errors_hi ;
   u32 rx_undersize_packets ;
   u32 rx_oversize_packets ;
   u32 rx_fragment_packets ;
   u32 rx_jabbers ;
   u32 rx_control_frames_lo ;
   u32 rx_control_frames_hi ;
   u32 rx_control_frames_unknown_opcode_lo ;
   u32 rx_control_frames_unknown_opcode_hi ;
   u32 rx_in_range_errors ;
   u32 rx_out_of_range_errors ;
   u32 rx_address_filtered ;
   u32 rx_vlan_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_invalid_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rx_ip_checksum_errors ;
   u32 rx_tcp_checksum_errors ;
   u32 rx_udp_checksum_errors ;
   u32 rx_non_rss_packets ;
   u32 rsvd_111 ;
   u32 rx_ipv4_packets_lo ;
   u32 rx_ipv4_packets_hi ;
   u32 rx_ipv6_packets_lo ;
   u32 rx_ipv6_packets_hi ;
   u32 rx_ipv4_bytes_lo ;
   u32 rx_ipv4_bytes_hi ;
   u32 rx_ipv6_bytes_lo ;
   u32 rx_ipv6_bytes_hi ;
   u32 rx_nic_packets_lo ;
   u32 rx_nic_packets_hi ;
   u32 rx_tcp_packets_lo ;
   u32 rx_tcp_packets_hi ;
   u32 rx_iscsi_packets_lo ;
   u32 rx_iscsi_packets_hi ;
   u32 rx_management_packets_lo ;
   u32 rx_management_packets_hi ;
   u32 rx_switched_unicast_packets_lo ;
   u32 rx_switched_unicast_packets_hi ;
   u32 rx_switched_multicast_packets_lo ;
   u32 rx_switched_multicast_packets_hi ;
   u32 rx_switched_broadcast_packets_lo ;
   u32 rx_switched_broadcast_packets_hi ;
   u32 num_forwards_lo ;
   u32 num_forwards_hi ;
   u32 rx_fifo_overflow ;
   u32 rx_input_fifo_overflow ;
   u32 rx_drops_too_many_frags_lo ;
   u32 rx_drops_too_many_frags_hi ;
   u32 rx_drops_invalid_queue ;
   u32 rsvd_141 ;
   u32 rx_drops_mtu_lo ;
   u32 rx_drops_mtu_hi ;
   u32 rx_packets_64_bytes_lo ;
   u32 rx_packets_64_bytes_hi ;
   u32 rx_packets_65_to_127_bytes_lo ;
   u32 rx_packets_65_to_127_bytes_hi ;
   u32 rx_packets_128_to_255_bytes_lo ;
   u32 rx_packets_128_to_255_bytes_hi ;
   u32 rx_packets_256_to_511_bytes_lo ;
   u32 rx_packets_256_to_511_bytes_hi ;
   u32 rx_packets_512_to_1023_bytes_lo ;
   u32 rx_packets_512_to_1023_bytes_hi ;
   u32 rx_packets_1024_to_1518_bytes_lo ;
   u32 rx_packets_1024_to_1518_bytes_hi ;
   u32 rx_packets_1519_to_2047_bytes_lo ;
   u32 rx_packets_1519_to_2047_bytes_hi ;
   u32 rx_packets_2048_to_4095_bytes_lo ;
   u32 rx_packets_2048_to_4095_bytes_hi ;
   u32 rx_packets_4096_to_8191_bytes_lo ;
   u32 rx_packets_4096_to_8191_bytes_hi ;
   u32 rx_packets_8192_to_9216_bytes_lo ;
   u32 rx_packets_8192_to_9216_bytes_hi ;
};
struct lancer_cmd_resp_pport_stats {
   struct be_cmd_resp_hdr hdr ;
   struct lancer_pport_stats pport_stats ;
};
struct be_set_eqd {
   u32 eq_id ;
   u32 phase ;
   u32 delay_multiplier ;
};
struct flash_comp {
   unsigned long offset ;
   int optype ;
   int size ;
   int img_type ;
};
struct image_hdr {
   u32 imageid ;
   u32 imageoffset ;
   u32 imagelength ;
   u32 image_checksum ;
   u8 image_version[32U] ;
};
struct flash_file_hdr_g3 {
   u8 sign[52U] ;
   u8 ufi_version[4U] ;
   u32 file_len ;
   u32 cksum ;
   u32 antidote ;
   u32 num_imgs ;
   u8 build[24U] ;
   u8 asic_type_rev ;
   u8 rsvd[31U] ;
};
struct flash_section_hdr {
   u32 format_rev ;
   u32 cksum ;
   u32 antidote ;
   u32 num_images ;
   u8 id_string[128U] ;
   u32 rsvd[4U] ;
};
struct flash_section_hdr_g2 {
   u32 format_rev ;
   u32 cksum ;
   u32 antidote ;
   u32 build_num ;
   u8 id_string[128U] ;
   u32 rsvd[8U] ;
};
struct flash_section_entry {
   u32 type ;
   u32 offset ;
   u32 pad_size ;
   u32 image_size ;
   u32 cksum ;
   u32 main ;
   u16 optype ;
   u16 rsvd0 ;
   u32 rsvd1 ;
   u8 ver_data[32U] ;
};
struct flash_section_info {
   u8 cookie[32U] ;
   struct flash_section_hdr fsec_hdr ;
   struct flash_section_entry fsec_entry[32U] ;
};
struct flash_section_info_g2 {
   u8 cookie[32U] ;
   struct flash_section_hdr_g2 fsec_hdr ;
   struct flash_section_entry fsec_entry[32U] ;
};
struct flashrom_params {
   u32 op_code ;
   u32 op_type ;
   u32 data_buf_size ;
   u32 offset ;
};
struct be_cmd_write_flashrom {
   struct be_cmd_req_hdr hdr ;
   struct flashrom_params params ;
   u8 data_buf[32768U] ;
   u8 rsvd[4U] ;
};
struct be_port_rxf_stats_v1 {
   u32 rsvd0[12U] ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_priority_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rsvd1[10U] ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 rsvd2[7U] ;
   u32 rx_switched_unicast_packets ;
   u32 rx_switched_multicast_packets ;
   u32 rx_switched_broadcast_packets ;
   u32 rsvd3[3U] ;
   u32 tx_pauseframes ;
   u32 tx_priority_pauseframes ;
   u32 tx_controlframes ;
   u32 rsvd4[10U] ;
   u32 rxpp_fifo_overflow_drop ;
   u32 rx_input_fifo_overflow_drop ;
   u32 pmem_fifo_overflow_drop ;
   u32 jabber_events ;
   u32 rsvd5[3U] ;
};
struct be_rxf_stats_v1 {
   struct be_port_rxf_stats_v1 port[4U] ;
   u32 rsvd0[2U] ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 rsvd1[6U] ;
   u32 rx_drops_too_many_frags ;
   u32 rx_drops_invalid_ring ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rsvd2[14U] ;
};
struct be_erx_stats_v1 {
   u32 rx_drops_no_fragments[68U] ;
   u32 rsvd[4U] ;
};
struct be_port_rxf_stats_v2 {
   u32 rsvd0[10U] ;
   u32 roce_bytes_received_lsd ;
   u32 roce_bytes_received_msd ;
   u32 rsvd1[5U] ;
   u32 roce_frames_received ;
   u32 rx_crc_errors ;
   u32 rx_alignment_symbol_errors ;
   u32 rx_pause_frames ;
   u32 rx_priority_pause_frames ;
   u32 rx_control_frames ;
   u32 rx_in_range_errors ;
   u32 rx_out_range_errors ;
   u32 rx_frame_too_long ;
   u32 rx_address_filtered ;
   u32 rx_dropped_too_small ;
   u32 rx_dropped_too_short ;
   u32 rx_dropped_header_too_small ;
   u32 rx_dropped_tcp_length ;
   u32 rx_dropped_runt ;
   u32 rsvd2[10U] ;
   u32 rx_ip_checksum_errs ;
   u32 rx_tcp_checksum_errs ;
   u32 rx_udp_checksum_errs ;
   u32 rsvd3[7U] ;
   u32 rx_switched_unicast_packets ;
   u32 rx_switched_multicast_packets ;
   u32 rx_switched_broadcast_packets ;
   u32 rsvd4[3U] ;
   u32 tx_pauseframes ;
   u32 tx_priority_pauseframes ;
   u32 tx_controlframes ;
   u32 rsvd5[10U] ;
   u32 rxpp_fifo_overflow_drop ;
   u32 rx_input_fifo_overflow_drop ;
   u32 pmem_fifo_overflow_drop ;
   u32 jabber_events ;
   u32 rsvd6[3U] ;
   u32 rx_drops_payload_size ;
   u32 rx_drops_clipped_header ;
   u32 rx_drops_crc ;
   u32 roce_drops_payload_len ;
   u32 roce_drops_crc ;
   u32 rsvd7[19U] ;
};
struct be_rxf_stats_v2 {
   struct be_port_rxf_stats_v2 port[4U] ;
   u32 rsvd0[2U] ;
   u32 rx_drops_no_pbuf ;
   u32 rx_drops_no_txpb ;
   u32 rx_drops_no_erx_descr ;
   u32 rx_drops_no_tpre_descr ;
   u32 rsvd1[6U] ;
   u32 rx_drops_too_many_frags ;
   u32 rx_drops_invalid_ring ;
   u32 forwarded_packets ;
   u32 rx_drops_mtu ;
   u32 rsvd2[35U] ;
};
struct be_hw_stats_v1 {
   struct be_rxf_stats_v1 rxf ;
   u32 rsvd0[48U] ;
   struct be_erx_stats_v1 erx ;
   struct be_pmem_stats pmem ;
   u32 rsvd1[18U] ;
};
struct be_cmd_resp_get_stats_v1 {
   struct be_cmd_resp_hdr hdr ;
   struct be_hw_stats_v1 hw_stats ;
};
struct be_erx_stats_v2 {
   u32 rx_drops_no_fragments[136U] ;
   u32 rsvd[3U] ;
};
struct be_hw_stats_v2 {
   struct be_rxf_stats_v2 rxf ;
   u32 rsvd0[48U] ;
   struct be_erx_stats_v2 erx ;
   struct be_pmem_stats pmem ;
   u32 rsvd1[18U] ;
};
struct be_cmd_resp_get_stats_v2 {
   struct be_cmd_resp_hdr hdr ;
   struct be_hw_stats_v2 hw_stats ;
};
typedef bool ldv_func_ret_type;
typedef bool ldv_func_ret_type___0;
typedef bool ldv_func_ret_type___1;
typedef bool ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef int ldv_func_ret_type___4;
typedef bool ldv_func_ret_type___5;
typedef bool ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
typedef bool ldv_func_ret_type___8;
typedef int ldv_func_ret_type___9;
typedef __u16 __le16;
enum hrtimer_restart;
struct be_sge {
   u32 pa_lo ;
   u32 pa_hi ;
   u32 len ;
};
union __anonunion_payload_389 {
   u8 embedded_payload[236U] ;
   struct be_sge sgl[19U] ;
};
struct be_mcc_wrb {
   u32 embedded ;
   u32 payload_length ;
   u32 tag0 ;
   u32 tag1 ;
   u32 rsvd ;
   union __anonunion_payload_389 payload ;
};
enum mcc_base_status {
    MCC_STATUS_SUCCESS = 0,
    MCC_STATUS_FAILED = 1,
    MCC_STATUS_ILLEGAL_REQUEST = 2,
    MCC_STATUS_ILLEGAL_FIELD = 3,
    MCC_STATUS_INSUFFICIENT_BUFFER = 4,
    MCC_STATUS_UNAUTHORIZED_REQUEST = 5,
    MCC_STATUS_NOT_SUPPORTED = 66,
    MCC_STATUS_FEATURE_NOT_SUPPORTED = 68
} ;
enum mcc_addl_status {
    MCC_ADDL_STATUS_INSUFFICIENT_RESOURCES = 22,
    MCC_ADDL_STATUS_FLASH_IMAGE_CRC_MISMATCH = 77,
    MCC_ADDL_STATUS_TOO_MANY_INTERFACES = 74,
    MCC_ADDL_STATUS_INSUFFICIENT_VLANS = 171
} ;
struct be_mcc_compl {
   u32 status ;
   u32 tag0 ;
   u32 tag1 ;
   u32 flags ;
};
struct be_async_event_link_state {
   u8 physical_port ;
   u8 port_link_status ;
   u8 port_duplex ;
   u8 port_speed ;
   u8 port_fault ;
   u8 rsvd0[7U] ;
   u32 flags ;
};
struct be_async_event_grp5_qos_link_speed {
   u8 physical_port ;
   u8 rsvd[5U] ;
   u16 qos_link_speed ;
   u32 event_tag ;
   u32 flags ;
};
struct be_async_event_grp5_cos_priority {
   u8 physical_port ;
   u8 available_priority_bmap ;
   u8 reco_default_priority ;
   u8 valid ;
   u8 rsvd0 ;
   u8 event_tag ;
   u32 flags ;
};
struct be_async_event_grp5_pvid_state {
   u8 enabled ;
   u8 rsvd0 ;
   u16 tag ;
   u32 event_tag ;
   u32 rsvd1 ;
   u32 flags ;
};
struct be_async_event_qnq {
   u8 valid ;
   u8 rsvd0 ;
   u16 vlan_tag ;
   u32 event_tag ;
   u8 rsvd1[4U] ;
   u32 flags ;
};
struct be_async_event_misconfig_port {
   u32 event_data_word1 ;
   u32 event_data_word2 ;
   u32 rsvd0 ;
   u32 flags ;
};
struct be_async_fw_control {
   u32 event_data_word1 ;
   u32 event_data_word2 ;
   u32 evt_tag ;
   u32 event_data_word4 ;
};
struct be_mcc_mailbox {
   struct be_mcc_wrb wrb ;
   struct be_mcc_compl compl ;
};
struct phys_addr {
   u32 lo ;
   u32 hi ;
};
struct be_cmd_req_eq_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 rsvd0 ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_eq_create {
   struct be_cmd_resp_hdr resp_hdr ;
   u16 eq_id ;
   u16 msix_idx ;
};
struct mac_addr {
   u16 size_of_struct ;
   u8 addr[6U] ;
};
struct be_cmd_req_mac_query {
   struct be_cmd_req_hdr hdr ;
   u8 type ;
   u8 permanent ;
   u16 if_id ;
   u32 pmac_id ;
};
struct be_cmd_resp_mac_query {
   struct be_cmd_resp_hdr hdr ;
   struct mac_addr mac ;
};
struct be_cmd_req_pmac_add {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u8 mac_address[6U] ;
   u8 rsvd0[2U] ;
};
struct be_cmd_resp_pmac_add {
   struct be_cmd_resp_hdr hdr ;
   u32 pmac_id ;
};
struct be_cmd_req_pmac_del {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u32 pmac_id ;
};
struct be_cmd_req_cq_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u8 page_size ;
   u8 rsvd0 ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_cq_create {
   struct be_cmd_resp_hdr hdr ;
   u16 cq_id ;
   u16 rsvd0 ;
};
struct be_cmd_req_get_fat {
   struct be_cmd_req_hdr hdr ;
   u32 fat_operation ;
   u32 read_log_offset ;
   u32 read_log_length ;
   u32 data_buffer_size ;
   u32 data_buffer[1U] ;
};
struct be_cmd_resp_get_fat {
   struct be_cmd_resp_hdr hdr ;
   u32 log_size ;
   u32 read_log_length ;
   u32 rsvd[2U] ;
   u32 data_buffer[1U] ;
};
struct be_cmd_req_mcc_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 cq_id ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_req_mcc_ext_create {
   struct be_cmd_req_hdr hdr ;
   u16 num_pages ;
   u16 cq_id ;
   u32 async_event_bitmap[1U] ;
   u8 context[16U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_mcc_create {
   struct be_cmd_resp_hdr hdr ;
   u16 id ;
   u16 rsvd0 ;
};
struct be_cmd_req_eth_tx_create {
   struct be_cmd_req_hdr hdr ;
   u8 num_pages ;
   u8 ulp_num ;
   u16 type ;
   u16 if_id ;
   u8 queue_size ;
   u8 rsvd0 ;
   u32 rsvd1 ;
   u16 cq_id ;
   u16 rsvd2 ;
   u32 rsvd3[13U] ;
   struct phys_addr pages[8U] ;
};
struct be_cmd_resp_eth_tx_create {
   struct be_cmd_resp_hdr hdr ;
   u16 cid ;
   u16 rid ;
   u32 db_offset ;
   u32 rsvd0[4U] ;
};
struct be_cmd_req_eth_rx_create {
   struct be_cmd_req_hdr hdr ;
   u16 cq_id ;
   u8 frag_size ;
   u8 num_pages ;
   struct phys_addr pages[2U] ;
   u32 interface_id ;
   u16 max_frame_size ;
   u16 rsvd0 ;
   u32 rss_queue ;
};
struct be_cmd_resp_eth_rx_create {
   struct be_cmd_resp_hdr hdr ;
   u16 id ;
   u8 rss_id ;
   u8 rsvd0 ;
};
struct be_cmd_req_q_destroy {
   struct be_cmd_req_hdr hdr ;
   u16 id ;
   u16 bypass_flush ;
};
struct be_cmd_req_if_create {
   struct be_cmd_req_hdr hdr ;
   u32 version ;
   u32 capability_flags ;
   u32 enable_flags ;
   u8 mac_addr[6U] ;
   u8 rsvd0 ;
   u8 pmac_invalid ;
   u32 vlan_tag ;
};
struct be_cmd_resp_if_create {
   struct be_cmd_resp_hdr hdr ;
   u32 interface_id ;
   u32 pmac_id ;
};
struct be_cmd_req_if_destroy {
   struct be_cmd_req_hdr hdr ;
   u32 interface_id ;
};
struct pport_stats_params {
   u16 pport_num ;
   u8 rsvd ;
   u8 reset_stats ;
};
union __anonunion_cmd_params_390 {
   struct pport_stats_params params ;
   u8 rsvd[656U] ;
};
struct lancer_cmd_req_pport_stats {
   struct be_cmd_req_hdr hdr ;
   union __anonunion_cmd_params_390 cmd_params ;
};
struct be_cmd_req_get_cntl_addnl_attribs {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd[8U] ;
};
struct be_cmd_resp_get_cntl_addnl_attribs {
   struct be_cmd_resp_hdr hdr ;
   u16 ipl_file_number ;
   u8 ipl_file_version ;
   u8 rsvd0 ;
   u8 on_die_temperature ;
   u8 rsvd1[3U] ;
};
struct be_cmd_req_vlan_config {
   struct be_cmd_req_hdr hdr ;
   u8 interface_id ;
   u8 promiscuous ;
   u8 untagged ;
   u8 num_vlan ;
   u16 normal_vlan[64U] ;
};
struct macaddr {
   u8 byte[6U] ;
};
struct be_cmd_req_rx_filter {
   struct be_cmd_req_hdr hdr ;
   u32 global_flags_mask ;
   u32 global_flags ;
   u32 if_flags_mask ;
   u32 if_flags ;
   u32 if_id ;
   u32 mcast_num ;
   struct macaddr mcast_mac[64U] ;
};
struct be_cmd_req_link_status {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_link_status {
   struct be_cmd_resp_hdr hdr ;
   u8 physical_port ;
   u8 mac_duplex ;
   u8 mac_speed ;
   u8 mac_fault ;
   u8 mgmt_mac_duplex ;
   u8 mgmt_mac_speed ;
   u16 link_speed ;
   u8 logical_link_status ;
   u8 rsvd1[3U] ;
};
struct be_cmd_req_port_type {
   struct be_cmd_req_hdr hdr ;
   __le32 page_num ;
   __le32 port ;
};
struct be_cmd_resp_port_type {
   struct be_cmd_resp_hdr hdr ;
   u32 page_num ;
   u32 port ;
   u8 page_data[256U] ;
};
struct be_cmd_req_get_fw_version {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[32U] ;
   u8 rsvd1[32U] ;
};
struct be_cmd_resp_get_fw_version {
   struct be_cmd_resp_hdr hdr ;
   u8 firmware_version_string[32U] ;
   u8 fw_on_flash_version_string[32U] ;
};
struct be_cmd_req_set_flow_control {
   struct be_cmd_req_hdr hdr ;
   u16 tx_flow_control ;
   u16 rx_flow_control ;
};
struct be_cmd_req_get_flow_control {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_get_flow_control {
   struct be_cmd_resp_hdr hdr ;
   u16 tx_flow_control ;
   u16 rx_flow_control ;
};
struct be_cmd_req_modify_eq_delay {
   struct be_cmd_req_hdr hdr ;
   u32 num_eq ;
   struct be_set_eqd set_eqd[32U] ;
};
struct be_cmd_req_query_fw_cfg {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd[31U] ;
};
struct be_cmd_resp_query_fw_cfg {
   struct be_cmd_resp_hdr hdr ;
   u32 be_config_number ;
   u32 asic_revision ;
   u32 phys_port ;
   u32 function_mode ;
   u32 rsvd[26U] ;
   u32 function_caps ;
};
struct be_cmd_req_rss_config {
   struct be_cmd_req_hdr hdr ;
   u32 if_id ;
   u16 enable_rss ;
   u16 cpu_table_size_log2 ;
   u32 hash[10U] ;
   u8 cpu_table[128U] ;
   u8 flush ;
   u8 rsvd0[3U] ;
};
struct be_cmd_req_enable_disable_beacon {
   struct be_cmd_req_hdr hdr ;
   u8 port_num ;
   u8 beacon_state ;
   u8 beacon_duration ;
   u8 status_duration ;
};
struct be_cmd_req_get_beacon_state {
   struct be_cmd_req_hdr hdr ;
   u8 port_num ;
   u8 rsvd0 ;
   u16 rsvd1 ;
};
struct be_cmd_resp_get_beacon_state {
   struct be_cmd_resp_hdr resp_hdr ;
   u8 beacon_state ;
   u8 rsvd0[3U] ;
};
struct be_cmd_read_flash_crc {
   struct be_cmd_req_hdr hdr ;
   struct flashrom_params params ;
   u8 crc[4U] ;
   u8 rsvd[4U] ;
};
struct lancer_cmd_req_write_object {
   struct be_cmd_req_hdr hdr ;
   u8 context[4U] ;
   u32 write_offset ;
   u8 object_name[104U] ;
   u32 descriptor_count ;
   u32 buf_len ;
   u32 addr_low ;
   u32 addr_high ;
};
struct lancer_cmd_resp_write_object {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd1[2U] ;
   u8 status ;
   u8 additional_status ;
   u8 rsvd2[2U] ;
   u32 resp_len ;
   u32 actual_resp_len ;
   u32 actual_write_len ;
   u8 change_status ;
   u8 rsvd3[3U] ;
};
struct lancer_cmd_req_read_object {
   struct be_cmd_req_hdr hdr ;
   u32 desired_read_len ;
   u32 read_offset ;
   u8 object_name[104U] ;
   u32 descriptor_count ;
   u32 buf_len ;
   u32 addr_low ;
   u32 addr_high ;
};
struct lancer_cmd_resp_read_object {
   u8 opcode ;
   u8 subsystem ;
   u8 rsvd1[2U] ;
   u8 status ;
   u8 additional_status ;
   u8 rsvd2[2U] ;
   u32 resp_len ;
   u32 actual_resp_len ;
   u32 actual_read_len ;
   u32 eof ;
};
struct lancer_cmd_req_delete_object {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd1 ;
   u32 rsvd2 ;
   u8 object_name[104U] ;
};
struct be_cmd_req_acpi_wol_magic_config {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd0[145U] ;
   u8 magic_mac[6U] ;
   u8 rsvd2[2U] ;
};
struct be_cmd_req_acpi_wol_magic_config_v1 {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[2U] ;
   u8 query_options ;
   u8 rsvd1[5U] ;
   u32 rsvd2[288U] ;
   u8 magic_mac[6U] ;
   u8 rsvd3[22U] ;
};
struct be_cmd_resp_acpi_wol_magic_config_v1 {
   struct be_cmd_resp_hdr hdr ;
   u8 rsvd0[2U] ;
   u8 wol_settings ;
   u8 rsvd1[5U] ;
   u32 rsvd2[295U] ;
};
struct be_cmd_req_loopback_test {
   struct be_cmd_req_hdr hdr ;
   u32 loopback_type ;
   u32 num_pkts ;
   u64 pattern ;
   u32 src_port ;
   u32 dest_port ;
   u32 pkt_size ;
};
struct be_cmd_resp_loopback_test {
   struct be_cmd_resp_hdr resp_hdr ;
   u32 status ;
   u32 num_txfer ;
   u32 num_rx ;
   u32 miscomp_off ;
   u32 ticks_compl ;
};
struct be_cmd_req_set_lmode {
   struct be_cmd_req_hdr hdr ;
   u8 src_port ;
   u8 dest_port ;
   u8 loopback_type ;
   u8 loopback_state ;
};
struct be_cmd_req_ddrdma_test {
   struct be_cmd_req_hdr hdr ;
   u64 pattern ;
   u32 byte_count ;
   u32 rsvd0 ;
   u8 snd_buff[4096U] ;
   u8 rsvd1[4096U] ;
};
struct be_cmd_resp_ddrdma_test {
   struct be_cmd_resp_hdr hdr ;
   u64 pattern ;
   u32 byte_cnt ;
   u32 snd_err ;
   u8 rsvd0[4096U] ;
   u8 rcv_buff[4096U] ;
};
struct be_cmd_req_seeprom_read {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[1024U] ;
};
struct be_cmd_req_get_phy_info {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd0[24U] ;
};
struct be_phy_info {
   u16 phy_type ;
   u16 interface_type ;
   u32 misc_params ;
   u16 ext_phy_details ;
   u16 rsvd ;
   u16 auto_speeds_supported ;
   u16 fixed_speeds_supported ;
   u32 future_use[2U] ;
};
struct be_cmd_req_set_qos {
   struct be_cmd_req_hdr hdr ;
   u32 valid_bits ;
   u32 max_bps_nic ;
   u32 rsvd[7U] ;
};
struct mgmt_hba_attribs {
   u32 rsvd0[24U] ;
   u8 controller_model_number[32U] ;
   u32 rsvd1[79U] ;
   u8 rsvd2[3U] ;
   u8 phy_port ;
   u32 rsvd3[13U] ;
};
struct mgmt_controller_attrib {
   struct mgmt_hba_attribs hba_attribs ;
   u32 rsvd0[10U] ;
};
struct be_cmd_req_cntl_attribs {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_cntl_attribs {
   struct be_cmd_resp_hdr hdr ;
   struct mgmt_controller_attrib attribs ;
};
struct be_cmd_req_set_func_cap {
   struct be_cmd_req_hdr hdr ;
   u32 valid_cap_flags ;
   u32 cap_flags ;
   u8 rsvd[212U] ;
};
struct be_cmd_resp_set_func_cap {
   struct be_cmd_resp_hdr hdr ;
   u32 valid_cap_flags ;
   u32 cap_flags ;
   u8 rsvd[212U] ;
};
struct be_cmd_priv_map {
   u8 opcode ;
   u8 subsystem ;
   u32 priv_mask ;
};
struct be_cmd_req_get_fn_privileges {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_get_fn_privileges {
   struct be_cmd_resp_hdr hdr ;
   u32 privilege_mask ;
};
struct be_cmd_req_set_fn_privileges {
   struct be_cmd_req_hdr hdr ;
   u32 privileges ;
   u32 privileges_lancer ;
};
struct be_cmd_req_get_mac_list {
   struct be_cmd_req_hdr hdr ;
   u8 mac_type ;
   u8 perm_override ;
   u16 iface_id ;
   u32 mac_id ;
   u32 rsvd[3U] ;
};
struct __anonstruct_s_mac_id_392 {
   u8 rsvd[2U] ;
   u32 mac_id ;
};
union __anonunion_mac_addr_id_391 {
   u8 macaddr[6U] ;
   struct __anonstruct_s_mac_id_392 s_mac_id ;
};
struct get_list_macaddr {
   u16 mac_addr_size ;
   union __anonunion_mac_addr_id_391 mac_addr_id ;
};
struct be_cmd_resp_get_mac_list {
   struct be_cmd_resp_hdr hdr ;
   struct get_list_macaddr fd_macaddr ;
   struct get_list_macaddr macid_macaddr ;
   u8 true_mac_count ;
   u8 pseudo_mac_count ;
   u8 mac_list_size ;
   u8 rsvd ;
   struct get_list_macaddr macaddr_list[64U] ;
};
struct be_cmd_req_set_mac_list {
   struct be_cmd_req_hdr hdr ;
   u8 mac_count ;
   u8 rsvd1 ;
   u16 rsvd2 ;
   struct macaddr mac[64U] ;
};
struct be_cmd_req_set_hsw_config {
   struct be_cmd_req_hdr hdr ;
   u8 context[20U] ;
};
struct be_cmd_req_get_hsw_config {
   struct be_cmd_req_hdr hdr ;
   u8 context[4U] ;
};
struct be_cmd_resp_get_hsw_config {
   struct be_cmd_resp_hdr hdr ;
   u8 context[16U] ;
   u32 rsvd ;
};
struct be_cmd_req_get_port_name {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd0 ;
};
struct be_cmd_resp_get_port_name {
   struct be_cmd_req_hdr hdr ;
   u8 port_name[4U] ;
};
struct ext_fat_mode {
   u8 mode ;
   u8 rsvd0 ;
   u16 port_mask ;
   u32 dbg_lvl ;
   u64 fun_mask ;
};
struct ext_fat_modules {
   u8 modules_str[32U] ;
   u32 modules_id ;
   u32 num_modes ;
   struct ext_fat_mode trace_lvl[4U] ;
};
struct be_fat_conf_params {
   u32 max_log_entries ;
   u32 log_entry_size ;
   u8 log_type ;
   u8 max_log_funs ;
   u8 max_log_ports ;
   u8 rsvd0 ;
   u32 supp_modes ;
   u32 num_modules ;
   struct ext_fat_modules module[27U] ;
};
struct be_cmd_req_get_ext_fat_caps {
   struct be_cmd_req_hdr hdr ;
   u32 parameter_type ;
};
struct be_cmd_req_set_ext_fat_caps {
   struct be_cmd_req_hdr hdr ;
   struct be_fat_conf_params set_params ;
};
struct be_res_desc_hdr {
   u8 desc_type ;
   u8 desc_len ;
};
struct be_port_res_desc {
   struct be_res_desc_hdr hdr ;
   u8 rsvd0 ;
   u8 flags ;
   u8 link_num ;
   u8 mc_type ;
   u16 rsvd1 ;
   u8 nv_flags ;
   u8 rsvd2 ;
   __le16 nv_port ;
   u32 rsvd3[19U] ;
};
struct be_pcie_res_desc {
   struct be_res_desc_hdr hdr ;
   u8 rsvd0 ;
   u8 flags ;
   u16 rsvd1 ;
   u8 pf_num ;
   u8 rsvd2 ;
   u32 rsvd3 ;
   u8 sriov_state ;
   u8 pf_state ;
   u8 pf_type ;
   u8 rsvd4 ;
   u16 num_vfs ;
   u16 rsvd5 ;
   u32 rsvd6[17U] ;
};
struct be_nic_res_desc {
   struct be_res_desc_hdr hdr ;
   u8 rsvd1 ;
   u8 flags ;
   u8 vf_num ;
   u8 rsvd2 ;
   u8 pf_num ;
   u8 rsvd3 ;
   u16 unicast_mac_count ;
   u8 rsvd4[6U] ;
   u16 mcc_count ;
   u16 vlan_count ;
   u16 mcast_mac_count ;
   u16 txq_count ;
   u16 rq_count ;
   u16 rssq_count ;
   u16 lro_count ;
   u16 cq_count ;
   u16 toe_conn_count ;
   u16 eq_count ;
   u16 vlan_id ;
   u16 iface_count ;
   u32 cap_flags ;
   u8 link_param ;
   u8 rsvd6 ;
   u16 channel_id_param ;
   u32 bw_min ;
   u32 bw_max ;
   u8 acpi_params ;
   u8 wol_param ;
   u16 rsvd7 ;
   u16 tunnel_iface_count ;
   u16 direct_tenant_iface_count ;
   u32 rsvd8[6U] ;
};
struct be_cmd_req_get_func_config {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_get_func_config {
   struct be_cmd_resp_hdr hdr ;
   u32 desc_count ;
   u8 func_param[23232U] ;
};
struct be_cmd_req_get_profile_config {
   struct be_cmd_req_hdr hdr ;
   u8 rsvd ;
   u8 type ;
   u16 rsvd1 ;
};
struct be_cmd_resp_get_profile_config {
   struct be_cmd_resp_hdr hdr ;
   __le16 desc_count ;
   u16 rsvd ;
   u8 func_param[23232U] ;
};
struct be_cmd_req_set_profile_config {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
   u32 desc_count ;
   u8 desc[176U] ;
};
struct be_cmd_req_get_active_profile {
   struct be_cmd_req_hdr hdr ;
   u32 rsvd ;
};
struct be_cmd_resp_get_active_profile {
   struct be_cmd_resp_hdr hdr ;
   u16 active_profile_id ;
   u16 next_profile_id ;
};
struct be_cmd_enable_disable_vf {
   struct be_cmd_req_hdr hdr ;
   u8 enable ;
   u8 rsvd[3U] ;
};
struct be_cmd_req_intr_set {
   struct be_cmd_req_hdr hdr ;
   u8 intr_enabled ;
   u8 rsvd[3U] ;
};
struct be_if_desc {
   u32 if_id ;
   u32 cap_flags ;
   u32 en_flags ;
};
struct be_cmd_req_get_iface_list {
   struct be_cmd_req_hdr hdr ;
};
struct be_cmd_resp_get_iface_list {
   struct be_cmd_req_hdr hdr ;
   u32 if_cnt ;
   struct be_if_desc if_desc ;
};
struct be_cmd_req_set_ll_link {
   struct be_cmd_req_hdr hdr ;
   u32 link_config ;
};
struct be_cmd_req_manage_iface_filters {
   struct be_cmd_req_hdr hdr ;
   u8 op ;
   u8 rsvd0 ;
   u8 flags ;
   u8 rsvd1 ;
   u32 tunnel_iface_id ;
   u32 target_iface_id ;
   u8 mac[6U] ;
   u16 vlan_tag ;
   u32 tenant_id ;
   u32 filter_id ;
   u32 cap_flags ;
   u32 cap_control_flags ;
};
struct __anonstruct_desc_400 {
   struct be_pcie_res_desc pcie ;
   struct be_nic_res_desc nic_vft ;
};
enum hrtimer_restart;
struct be_cmd_resp_seeprom_read {
   struct be_cmd_req_hdr hdr ;
   u8 seeprom_data[1024U] ;
};
struct be_ethtool_stat {
   char desc[32U] ;
   int type ;
   int size ;
   int offset ;
};
enum hrtimer_restart;
enum be_interrupt_mode {
    BE_INTERRUPT_MODE_MSIX = 0,
    BE_INTERRUPT_MODE_INTX = 1,
    BE_INTERRUPT_MODE_MSI = 2
} ;
struct __anonstruct_msix_387 {
   int num_vectors ;
   int start_vector ;
   u32 vector_list[32U] ;
};
struct be_dev_info {
   u8 *db ;
   u64 unmapped_db ;
   u32 db_page_size ;
   u32 db_total_size ;
   u64 dpp_unmapped_addr ;
   u32 dpp_unmapped_len ;
   struct pci_dev *pdev ;
   struct net_device *netdev ;
   u8 mac_addr[6U] ;
   u32 dev_family ;
   enum be_interrupt_mode intr_mode ;
   struct __anonstruct_msix_387 msix ;
};
struct ocrdma_driver {
   unsigned char name[32U] ;
   u32 be_abi_version ;
   struct ocrdma_dev *(*add)(struct be_dev_info * ) ;
   void (*remove)(struct ocrdma_dev * ) ;
   void (*state_change_handler)(struct ocrdma_dev * , u32 ) ;
};
void __builtin_prefetch(void const * , ...) ;
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
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
__inline static int constant_test_bit(long nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr >> 6)) >> ((int )nr & 63)) & 1);
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
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 rol32(__u32 word , unsigned int shift )
{
  {
  return ((word << shift) | (word >> (8UL * sizeof(word) - (unsigned long )shift)));
}
}
extern int printk(char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __bad_percpu_size(void) ;
extern void __bad_size_call_parameter(void) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
extern int memcmp(void const * , void const * , size_t ) ;
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
__inline static unsigned int cpumask_check(unsigned int cpu )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  __ret_warn_once = (unsigned int )nr_cpu_ids <= cpu;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/cpumask.h", 117);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  ldv__builtin_expect(__ret_warn_once != 0, 0L);
  return (cpu);
}
}
extern unsigned int cpumask_local_spread(unsigned int , int ) ;
__inline static void cpumask_set_cpu(unsigned int cpu , struct cpumask *dstp )
{
  unsigned int tmp ;
  {
  tmp = cpumask_check(cpu);
  set_bit((long )tmp, (unsigned long volatile *)(& dstp->bits));
  return;
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), (unsigned int )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
extern bool zalloc_cpumask_var(cpumask_var_t ** , gfp_t ) ;
extern void free_cpumask_var(cpumask_var_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  int __var ;
  {
  __var = 0;
  return ((int )*((int const volatile *)(& v->counter)));
}
}
__inline static void atomic_add(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; addl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_sub(int i , atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; subl %1,%0": "+m" (v->counter): "ir" (i));
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  __local_bh_disable_ip(0UL, 512U);
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  __local_bh_enable_ip(0UL, 512U);
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_lock_bh(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_bh(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->__annonCompField18.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_lock_bh(spinlock_t *lock )
{
  {
  _raw_spin_lock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->__annonCompField18.rlock);
  return;
}
}
__inline static void spin_unlock_bh(spinlock_t *lock )
{
  {
  _raw_spin_unlock_bh(& lock->__annonCompField18.rlock);
  return;
}
}
extern void dump_page(struct page * , char const * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern unsigned long volatile jiffies ;
extern unsigned int jiffies_to_msecs(unsigned long const ) ;
extern unsigned long __msecs_to_jiffies(unsigned int const ) ;
__inline static unsigned long msecs_to_jiffies(unsigned int const m )
{
  unsigned long tmp___0 ;
  {
  tmp___0 = __msecs_to_jiffies(m);
  return (tmp___0);
}
}
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
extern void flush_workqueue(struct workqueue_struct * ) ;
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
bool ldv_cancel_delayed_work_sync_15(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_16(struct delayed_work *ldv_func_arg1 ) ;
bool ldv_cancel_delayed_work_sync_21(struct delayed_work *ldv_func_arg1 ) ;
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = ldv_queue_delayed_work_on_6(8192, wq, dwork, delay);
  return (tmp);
}
}
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
}
}
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void pci_iounmap(struct pci_dev * , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern int cpu_number ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return ((void *)0);
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
struct ethtool_channels *be_ethtool_ops_group2 ;
int ldv_state_variable_8 ;
int pci_counter ;
struct work_struct *ldv_work_struct_3_1 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct pci_dev *be_driver_group1 ;
int ldv_irq_2_0 = 0;
struct ethtool_eeprom *be_ethtool_ops_group0 ;
int ldv_work_3_2 ;
struct ethtool_coalesce *be_ethtool_ops_group3 ;
int ldv_work_3_0 ;
void *ldv_irq_data_2_3 ;
int ldv_irq_2_2 = 0;
struct work_struct *ldv_work_struct_4_3 ;
int ldv_state_variable_9 ;
int ldv_irq_line_2_0 ;
int ref_cnt ;
int ldv_irq_line_1_1 ;
void *ldv_irq_data_2_2 ;
int ldv_work_3_3 ;
struct work_struct *ldv_work_struct_4_0 ;
int ldv_state_variable_1 ;
int ldv_state_variable_7 ;
int ldv_irq_line_1_2 ;
struct work_struct *ldv_work_struct_3_3 ;
struct pci_dev *be_eeh_handlers_group0 ;
int ldv_irq_line_2_3 ;
struct net_device *be_ethtool_ops_group6 ;
int ldv_irq_2_1 = 0;
void *ldv_irq_data_2_1 ;
int ldv_irq_1_3 = 0;
void *ldv_irq_data_1_1 ;
int ldv_irq_line_2_2 ;
int ldv_irq_1_0 = 0;
struct ethtool_wolinfo *be_ethtool_ops_group5 ;
int ldv_work_4_0 ;
struct work_struct *ldv_work_struct_3_2 ;
int ldv_state_variable_6 ;
void *ldv_irq_data_1_0 ;
int ldv_work_4_1 ;
int ldv_work_4_3 ;
int ldv_work_3_1 ;
int ldv_irq_line_2_1 ;
void *ldv_irq_data_1_3 ;
int ldv_state_variable_2 ;
struct work_struct *ldv_work_struct_4_2 ;
void *ldv_irq_data_1_2 ;
void *ldv_irq_data_2_0 ;
struct work_struct *ldv_work_struct_3_0 ;
int ldv_work_4_2 ;
int ldv_irq_1_2 = 0;
int LDV_IN_INTERRUPT = 1;
int ldv_irq_1_1 = 0;
struct ethtool_rxnfc *be_ethtool_ops_group4 ;
int ldv_irq_2_3 = 0;
struct ethtool_pauseparam *be_ethtool_ops_group1 ;
struct net_device *be_netdev_ops_group1 ;
int ldv_irq_line_1_3 ;
int ldv_state_variable_3 ;
int ldv_irq_line_1_0 ;
struct work_struct *ldv_work_struct_4_1 ;
int ldv_state_variable_4 ;
void work_init_3(void) ;
void choose_interrupt_2(void) ;
void disable_suitable_irq_2(int line , void *data ) ;
void activate_work_4(struct work_struct *work , int state ) ;
void ldv_initialize_pci_error_handlers_7(void) ;
void activate_suitable_irq_2(int line , void *data ) ;
int reg_check_1(irqreturn_t (*handler)(int , void * ) ) ;
void activate_work_3(struct work_struct *work , int state ) ;
void ldv_initialize_ethtool_ops_5(void) ;
void call_and_disable_all_4(int state ) ;
void choose_interrupt_1(void) ;
int reg_check_2(irqreturn_t (*handler)(int , void * ) ) ;
void call_and_disable_work_3(struct work_struct *work ) ;
void disable_work_3(struct work_struct *work ) ;
void ldv_net_device_ops_9(void) ;
void disable_work_4(struct work_struct *work ) ;
void work_init_4(void) ;
void invoke_work_3(void) ;
void disable_suitable_irq_1(int line , void *data ) ;
int ldv_irq_1(int state , int line , void *data ) ;
void activate_suitable_irq_1(int line , void *data ) ;
void invoke_work_4(void) ;
void call_and_disable_all_3(int state ) ;
void call_and_disable_work_4(struct work_struct *work ) ;
int ldv_irq_2(int state , int line , void *data ) ;
void ldv_pci_driver_6(void) ;
__inline static int dev_to_node(struct device *dev )
{
  {
  return (dev->numa_node);
}
}
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
extern void dev_warn(struct device const * , char const * , ...) ;
extern void _dev_info(struct device const * , char const * , ...) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_save_state(struct pci_dev * ) ;
extern void pci_restore_state(struct pci_dev * ) ;
extern int pci_set_power_state(struct pci_dev * , pci_power_t ) ;
extern pci_power_t pci_choose_state(struct pci_dev * , pm_message_t ) ;
extern int __pci_enable_wake(struct pci_dev * , pci_power_t , bool , bool ) ;
__inline static int pci_enable_wake(struct pci_dev *dev , pci_power_t state , bool enable )
{
  int tmp ;
  {
  tmp = __pci_enable_wake(dev, state, 0, (int )enable);
  return (tmp);
}
}
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
int ldv___pci_register_driver_22(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
void ldv_pci_unregister_driver_23(struct pci_driver *ldv_func_arg1 ) ;
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
    ldv_24098: ;
    goto ldv_24098;
  } else {
  }
  atomic_inc(& page->__annonCompField42.__annonCompField41.__annonCompField40._count);
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
extern void pci_disable_msix(struct pci_dev * ) ;
extern int pci_enable_msix_range(struct pci_dev * , struct msix_entry * , int , int ) ;
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
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
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
    ldv_26424: ;
    goto ldv_26424;
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
    ldv_26433: ;
    goto ldv_26433;
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
    ldv_26468: ;
    goto ldv_26468;
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
    ldv_26476: ;
    goto ldv_26476;
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
    ldv_26484: ;
    goto ldv_26484;
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
void *ldv_zalloc(size_t size ) ;
__inline static void *dma_zalloc_coherent(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                          gfp_t flag )
{
  void *ret ;
  void *tmp ;
  {
  tmp = dma_alloc_attrs(dev, size, dma_handle, flag | 32768U, (struct dma_attrs *)0);
  ret = tmp;
  return (ret);
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
extern int pci_enable_sriov(struct pci_dev * , int ) ;
extern void pci_disable_sriov(struct pci_dev * ) ;
extern int pci_num_vf(struct pci_dev * ) ;
extern int pci_vfs_assigned(struct pci_dev * ) ;
extern int pci_sriov_set_totalvfs(struct pci_dev * , u16 ) ;
extern int pci_sriov_get_totalvfs(struct pci_dev * ) ;
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
__inline static void skb_frag_size_set(skb_frag_t *frag , unsigned int size )
{
  {
  frag->size = size;
  return;
}
}
__inline static void skb_frag_size_add(skb_frag_t *frag , int delta )
{
  {
  frag->size = frag->size + (__u32 )delta;
  return;
}
}
extern void kfree_skb(struct sk_buff * ) ;
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *skb_clone(struct sk_buff * , gfp_t ) ;
extern int pskb_expand_head(struct sk_buff * , int , int , gfp_t ) ;
extern int skb_pad(struct sk_buff * , int ) ;
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
__inline static int skb_shared(struct sk_buff const *skb )
{
  int tmp ;
  {
  tmp = atomic_read(& skb->users);
  return (tmp != 1);
}
}
__inline static struct sk_buff *skb_share_check(struct sk_buff *skb , gfp_t pri )
{
  struct sk_buff *nskb ;
  struct sk_buff *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  if ((pri & 16U) != 0U) {
    __might_sleep("include/linux/skbuff.h", 1196, 0);
  } else {
  }
  tmp___1 = skb_shared((struct sk_buff const *)skb);
  if (tmp___1 != 0) {
    tmp = skb_clone(skb, pri);
    nskb = tmp;
    tmp___0 = ldv__builtin_expect((unsigned long )nskb != (unsigned long )((struct sk_buff *)0),
                               1L);
    if (tmp___0 != 0L) {
      consume_skb(skb);
    } else {
      kfree_skb(skb);
    }
    skb = nskb;
  } else {
  }
  return (skb);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
__inline static unsigned char *skb_tail_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->tail);
}
}
__inline static void skb_reset_tail_pointer(struct sk_buff *skb )
{
  {
  skb->tail = (sk_buff_data_t )((long )skb->data) - (sk_buff_data_t )((long )skb->head);
  return;
}
}
__inline static void skb_set_tail_pointer(struct sk_buff *skb , int const offset )
{
  {
  skb_reset_tail_pointer(skb);
  skb->tail = skb->tail + (sk_buff_data_t )offset;
  return;
}
}
__inline static unsigned char *__skb_put(struct sk_buff *skb , unsigned int len )
{
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  {
  tmp___0 = skb_tail_pointer((struct sk_buff const *)skb);
  tmp = tmp___0;
  tmp___1 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___2 = ldv__builtin_expect((long )tmp___1, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                         "i" (1696), "i" (12UL));
    ldv_29123: ;
    goto ldv_29123;
  } else {
  }
  skb->tail = skb->tail + len;
  skb->len = skb->len + len;
  return (tmp);
}
}
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static int pskb_may_pull(struct sk_buff *skb , unsigned int len )
{
  unsigned int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  unsigned char *tmp___3 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  tmp___0 = ldv__builtin_expect(tmp >= len, 1L);
  if (tmp___0 != 0L) {
    return (1);
  } else {
  }
  tmp___1 = ldv__builtin_expect(skb->len < len, 0L);
  if (tmp___1 != 0L) {
    return (0);
  } else {
  }
  tmp___2 = skb_headlen((struct sk_buff const *)skb);
  tmp___3 = __pskb_pull_tail(skb, (int )(len - tmp___2));
  return ((unsigned long )tmp___3 != (unsigned long )((unsigned char *)0U));
}
}
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_inner_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->inner_network_header);
}
}
__inline static unsigned char *skb_inner_mac_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->inner_mac_header);
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
extern int ___pskb_trim(struct sk_buff * , unsigned int ) ;
__inline static void __skb_trim(struct sk_buff *skb , unsigned int len )
{
  int __ret_warn_on ;
  long tmp ;
  bool tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = skb_is_nonlinear((struct sk_buff const *)skb);
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/linux/skbuff.h", 2054);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  skb->len = len;
  skb_set_tail_pointer(skb, (int const )len);
  return;
}
}
__inline static int __pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  {
  if (skb->data_len != 0U) {
    tmp = ___pskb_trim(skb, len);
    return (tmp);
  } else {
  }
  __skb_trim(skb, len);
  return (0);
}
}
__inline static int pskb_trim(struct sk_buff *skb , unsigned int len )
{
  int tmp ;
  int tmp___0 ;
  {
  if (skb->len > len) {
    tmp = __pskb_trim(skb, len);
    tmp___0 = tmp;
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static void __skb_frag_set_page(skb_frag_t *frag , struct page *page )
{
  {
  frag->page.p = page;
  return;
}
}
__inline static void skb_frag_set_page(struct sk_buff *skb , int f , struct page *page )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  __skb_frag_set_page((skb_frag_t *)(& ((struct skb_shared_info *)tmp)->frags) + (unsigned long )f,
                      page);
  return;
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
    tmp___1 = pskb_expand_head(skb, (((_max1 > _max2 ? _max1 : _max2) + -1) + delta) & - (_max1___0 > _max2___0 ? _max1___0 : _max2___0),
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
__inline static int skb_put_padto(struct sk_buff *skb , unsigned int len )
{
  unsigned int size ;
  int tmp ;
  long tmp___0 ;
  {
  size = skb->len;
  tmp___0 = ldv__builtin_expect(size < len, 0L);
  if (tmp___0 != 0L) {
    len = len - size;
    tmp = skb_pad(skb, (int )len);
    if (tmp != 0) {
      return (-12);
    } else {
    }
    __skb_put(skb, len);
  } else {
  }
  return (0);
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
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
__inline static bool skb_is_gso_v6(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_end_pointer(skb);
  return (((int )((struct skb_shared_info *)tmp)->gso_type & 16) != 0);
}
}
__inline static void skb_checksum_none_assert(struct sk_buff const *skb )
{
  {
  return;
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  msleep(seconds * 1000U);
  return;
}
}
__inline static void u64_stats_init(struct u64_stats_sync *syncp )
{
  {
  return;
}
}
__inline static unsigned int u64_stats_fetch_begin_irq(struct u64_stats_sync const *syncp )
{
  {
  return (0U);
}
}
__inline static bool u64_stats_fetch_retry_irq(struct u64_stats_sync const *syncp ,
                                               unsigned int start )
{
  {
  return (0);
}
}
extern void synchronize_irq(unsigned int ) ;
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
__inline static int ldv_request_irq_10(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
__inline static int ldv_request_irq_12(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev ) ;
extern void free_irq(unsigned int , void * ) ;
void ldv_free_irq_11(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_13(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
void ldv_free_irq_14(unsigned int ldv_func_arg1 , void *ldv_func_arg2 ) ;
extern int irq_set_affinity_hint(unsigned int , struct cpumask const * ) ;
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
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
__inline static void napi_complete(struct napi_struct *n )
{
  {
  return;
}
}
extern void napi_hash_add(struct napi_struct * ) ;
extern void napi_hash_del(struct napi_struct * ) ;
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
    ldv_43177: ;
    goto ldv_43177;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0L, (unsigned long volatile *)(& n->state));
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
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 3008U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_18(struct net_device *dev ) ;
void ldv_free_netdev_20(struct net_device *dev ) ;
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
  goto ldv_44251;
  ldv_44250:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_start_queue(txq);
  i = i + 1U;
  ldv_44251: ;
  if (dev->num_tx_queues > i) {
    goto ldv_44250;
  } else {
  }
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
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
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
__inline static bool __netif_subqueue_stopped(struct net_device const *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)txq);
  return (tmp___0);
}
}
extern void netif_wake_subqueue(struct net_device * , u16 ) ;
extern int netif_set_xps_queue(struct net_device * , struct cpumask const * , u16 ) ;
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
extern int netif_get_num_default_rss_queues(void) ;
extern void __dev_kfree_skb_any(struct sk_buff * , enum skb_free_reason ) ;
__inline static void dev_kfree_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 1);
  return;
}
}
__inline static void dev_consume_skb_any(struct sk_buff *skb )
{
  {
  __dev_kfree_skb_any(skb, 0);
  return;
}
}
extern int netif_receive_skb_sk(struct sock * , struct sk_buff * ) ;
__inline static int netif_receive_skb(struct sk_buff *skb )
{
  int tmp ;
  {
  tmp = netif_receive_skb_sk(skb->sk, skb);
  return (tmp);
}
}
extern struct sk_buff *napi_get_frags(struct napi_struct * ) ;
extern gro_result_t napi_gro_frags(struct napi_struct * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  spin_lock(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  local_bh_disable();
  __vpp_verify = (void const *)0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_44826;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44826;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44826;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_44826;
  default:
  __bad_percpu_size();
  }
  ldv_44826:
  pscr_ret__ = pfo_ret__;
  goto ldv_44832;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44836;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44836;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44836;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_44836;
  default:
  __bad_percpu_size();
  }
  ldv_44836:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_44832;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44845;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44845;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44845;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_44845;
  default:
  __bad_percpu_size();
  }
  ldv_44845:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_44832;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44854;
  case 2UL:
  __asm__ ("movw %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44854;
  case 4UL:
  __asm__ ("movl %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44854;
  case 8UL:
  __asm__ ("movq %%gs:%1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_44854;
  default:
  __bad_percpu_size();
  }
  ldv_44854:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_44832;
  default:
  __bad_size_call_parameter();
  goto ldv_44832;
  }
  ldv_44832:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_44864;
  ldv_44863:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_44864: ;
  if (dev->num_tx_queues > i) {
    goto ldv_44863;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_19(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_17(struct net_device *dev ) ;
extern void netdev_rss_key_fill(void * , size_t ) ;
__inline static void netif_set_gso_max_size(struct net_device *dev , unsigned int size )
{
  {
  dev->gso_max_size = size;
  return;
}
}
extern void netdev_info(struct net_device const * , char const * , ...) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
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
__inline static void eth_zero_addr(u8 *addr )
{
  {
  memset((void *)addr, 0, 6UL);
  return;
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
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int ndo_dflt_bridge_getlink(struct sk_buff * , u32 , u32 , struct net_device * ,
                                   u16 , u32 , u32 , int , u32 , int (*)(struct sk_buff * ,
                                                                              struct net_device * ,
                                                                              u32 ) ) ;
extern struct nlattr *nla_find(struct nlattr const * , int , int ) ;
__inline static void *nlmsg_data(struct nlmsghdr const *nlh )
{
  {
  return ((void *)nlh + 16U);
}
}
__inline static int nlmsg_len(struct nlmsghdr const *nlh )
{
  {
  return ((int )((unsigned int )nlh->nlmsg_len - 16U));
}
}
__inline static struct nlattr *nlmsg_attrdata(struct nlmsghdr const *nlh , int hdrlen )
{
  unsigned char *data ;
  void *tmp ;
  {
  tmp = nlmsg_data(nlh);
  data = (unsigned char *)tmp;
  return ((struct nlattr *)(data + ((unsigned long )((unsigned int )hdrlen + 3U) & 4294967292UL)));
}
}
__inline static int nlmsg_attrlen(struct nlmsghdr const *nlh , int hdrlen )
{
  int tmp ;
  {
  tmp = nlmsg_len(nlh);
  return ((int )((unsigned int )tmp - (((unsigned int )hdrlen + 3U) & 4294967292U)));
}
}
__inline static struct nlattr *nlmsg_find_attr(struct nlmsghdr const *nlh , int hdrlen ,
                                               int attrtype )
{
  int tmp ;
  struct nlattr *tmp___0 ;
  struct nlattr *tmp___1 ;
  {
  tmp = nlmsg_attrlen(nlh, hdrlen);
  tmp___0 = nlmsg_attrdata(nlh, hdrlen);
  tmp___1 = nla_find((struct nlattr const *)tmp___0, tmp, attrtype);
  return (tmp___1);
}
}
__inline static int nla_type(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_type & -49153);
}
}
__inline static void *nla_data(struct nlattr const *nla )
{
  {
  return ((void *)nla + 4U);
}
}
__inline static int nla_len(struct nlattr const *nla )
{
  {
  return ((int )nla->nla_len + -4);
}
}
__inline static int nla_ok(struct nlattr const *nla , int remaining )
{
  {
  return ((remaining > 3 && (unsigned int )((unsigned short )nla->nla_len) > 3U) && (int )nla->nla_len <= remaining);
}
}
__inline static struct nlattr *nla_next(struct nlattr const *nla , int *remaining )
{
  int totlen ;
  {
  totlen = ((int )nla->nla_len + 3) & -4;
  *remaining = *remaining - totlen;
  return ((struct nlattr *)nla + (unsigned long )totlen);
}
}
__inline static u16 nla_get_u16(struct nlattr const *nla )
{
  void *tmp ;
  {
  tmp = nla_data(nla);
  return (*((u16 *)tmp));
}
}
__inline static u32 __get_unaligned_cpu32(void const *p )
{
  struct __una_u32 const *ptr ;
  {
  ptr = (struct __una_u32 const *)p;
  return ((u32 )ptr->x);
}
}
__inline static u32 jhash(void const *key , u32 length , u32 initval )
{
  u32 a ;
  u32 b ;
  u32 c ;
  u8 const *k ;
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u32 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  {
  k = (u8 const *)key;
  c = (length + initval) + 3735928559U;
  b = c;
  a = b;
  goto ldv_49329;
  ldv_49328:
  tmp = __get_unaligned_cpu32((void const *)k);
  a = tmp + a;
  tmp___0 = __get_unaligned_cpu32((void const *)k + 4U);
  b = tmp___0 + b;
  tmp___1 = __get_unaligned_cpu32((void const *)k + 8U);
  c = tmp___1 + c;
  a = a - c;
  tmp___2 = rol32(c, 4U);
  a = tmp___2 ^ a;
  c = c + b;
  b = b - a;
  tmp___3 = rol32(a, 6U);
  b = tmp___3 ^ b;
  a = a + c;
  c = c - b;
  tmp___4 = rol32(b, 8U);
  c = tmp___4 ^ c;
  b = b + a;
  a = a - c;
  tmp___5 = rol32(c, 16U);
  a = tmp___5 ^ a;
  c = c + b;
  b = b - a;
  tmp___6 = rol32(a, 19U);
  b = tmp___6 ^ b;
  a = a + c;
  c = c - b;
  tmp___7 = rol32(b, 4U);
  c = tmp___7 ^ c;
  b = b + a;
  length = length - 12U;
  k = k + 12UL;
  ldv_49329: ;
  if (length > 12U) {
    goto ldv_49328;
  } else {
  }
  switch (length) {
  case 12U:
  c = ((unsigned int )*(k + 11UL) << 24) + c;
  case 11U:
  c = ((unsigned int )*(k + 10UL) << 16) + c;
  case 10U:
  c = ((unsigned int )*(k + 9UL) << 8) + c;
  case 9U:
  c = (u32 )*(k + 8UL) + c;
  case 8U:
  b = ((unsigned int )*(k + 7UL) << 24) + b;
  case 7U:
  b = ((unsigned int )*(k + 6UL) << 16) + b;
  case 6U:
  b = ((unsigned int )*(k + 5UL) << 8) + b;
  case 5U:
  b = (u32 )*(k + 4UL) + b;
  case 4U:
  a = ((unsigned int )*(k + 3UL) << 24) + a;
  case 3U:
  a = ((unsigned int )*(k + 2UL) << 16) + a;
  case 2U:
  a = ((unsigned int )*(k + 1UL) << 8) + a;
  case 1U:
  a = (u32 )*k + a;
  c = c ^ b;
  tmp___8 = rol32(b, 14U);
  c = c - tmp___8;
  a = a ^ c;
  tmp___9 = rol32(c, 11U);
  a = a - tmp___9;
  b = b ^ a;
  tmp___10 = rol32(a, 25U);
  b = b - tmp___10;
  c = c ^ b;
  tmp___11 = rol32(b, 16U);
  c = c - tmp___11;
  a = a ^ c;
  tmp___12 = rol32(c, 4U);
  a = a - tmp___12;
  b = b ^ a;
  tmp___13 = rol32(a, 14U);
  b = b - tmp___13;
  c = c ^ b;
  tmp___14 = rol32(b, 24U);
  c = c - tmp___14;
  case 0U: ;
  goto ldv_49344;
  }
  ldv_49344: ;
  return (c);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
__inline static struct iphdr *inner_ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_inner_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
__inline static struct icmp6hdr *icmp6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct icmp6hdr *)tmp);
}
}
__inline static struct udphdr *udp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct udphdr *)tmp);
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static struct ipv6hdr *inner_ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_inner_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static int __vlan_insert_tag(struct sk_buff *skb , __be16 vlan_proto , u16 vlan_tci )
{
  struct vlan_ethhdr *veth ;
  int tmp ;
  unsigned char *tmp___0 ;
  __u16 tmp___1 ;
  {
  tmp = skb_cow_head(skb, 4U);
  if (tmp < 0) {
    return (-12);
  } else {
  }
  tmp___0 = skb_push(skb, 4U);
  veth = (struct vlan_ethhdr *)tmp___0;
  memmove((void *)skb->data, (void const *)skb->data + 4U, 12UL);
  skb->mac_header = (unsigned int )skb->mac_header + 65532U;
  veth->h_vlan_proto = vlan_proto;
  tmp___1 = __fswab16((int )vlan_tci);
  veth->h_vlan_TCI = tmp___1;
  return (0);
}
}
__inline static struct sk_buff *vlan_insert_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                                u16 vlan_tci )
{
  int err ;
  {
  err = __vlan_insert_tag(skb, (int )vlan_proto, (int )vlan_tci);
  if (err != 0) {
    dev_kfree_skb_any(skb);
    return ((struct sk_buff *)0);
  } else {
  }
  return (skb);
}
}
__inline static struct sk_buff *vlan_insert_tag_set_proto(struct sk_buff *skb , __be16 vlan_proto ,
                                                          u16 vlan_tci )
{
  {
  skb = vlan_insert_tag(skb, (int )vlan_proto, (int )vlan_tci);
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    skb->protocol = vlan_proto;
  } else {
  }
  return (skb);
}
}
__inline static void __vlan_hwaccel_put_tag(struct sk_buff *skb , __be16 vlan_proto ,
                                            u16 vlan_tci )
{
  {
  skb->vlan_proto = vlan_proto;
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return;
}
}
__inline static __be16 __vlan_get_protocol(struct sk_buff *skb , __be16 type , int *depth )
{
  unsigned int vlan_depth ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  struct vlan_hdr *vh ;
  int tmp___1 ;
  long tmp___2 ;
  {
  vlan_depth = (unsigned int )skb->mac_len;
  if ((unsigned int )type == 129U || (unsigned int )type == 43144U) {
    if (vlan_depth != 0U) {
      __ret_warn_on = vlan_depth <= 3U;
      tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp != 0L) {
        warn_slowpath_null("include/linux/if_vlan.h", 492);
      } else {
      }
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        return (0U);
      } else {
      }
      vlan_depth = vlan_depth - 4U;
    } else {
      vlan_depth = 14U;
    }
    ldv_54824:
    tmp___1 = pskb_may_pull(skb, vlan_depth + 4U);
    tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
    if (tmp___2 != 0L) {
      return (0U);
    } else {
    }
    vh = (struct vlan_hdr *)skb->data + (unsigned long )vlan_depth;
    type = vh->h_vlan_encapsulated_proto;
    vlan_depth = vlan_depth + 4U;
    if ((unsigned int )type == 129U || (unsigned int )type == 43144U) {
      goto ldv_54824;
    } else {
    }
  } else {
  }
  if ((unsigned long )depth != (unsigned long )((int *)0)) {
    *depth = (int )vlan_depth;
  } else {
  }
  return (type);
}
}
__inline static __be16 vlan_get_protocol(struct sk_buff *skb )
{
  __be16 tmp ;
  {
  tmp = __vlan_get_protocol(skb, (int )skb->protocol, (int *)0);
  return (tmp);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern struct device *devm_hwmon_device_register_with_groups(struct device * , char const * ,
                                                             void * , struct attribute_group const ** ) ;
__inline static u32 MODULO(u16 val , u16 limit )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(((int )limit & ((int )limit + -1)) != 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/emulex/benet/be.h"),
                         "i" (130), "i" (12UL));
    ldv_55077: ;
    goto ldv_55077;
  } else {
  }
  return ((u32 )((int )val & ((int )limit + -1)));
}
}
__inline static void index_adv(u16 *index , u16 val , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO((int )*index + (int )val, (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void index_inc(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO((int )((unsigned int )*index + 1U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void *queue_head_node(struct be_queue_info *q )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )q->head * (int )q->entry_size));
}
}
__inline static void *queue_tail_node(struct be_queue_info *q )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )q->tail * (int )q->entry_size));
}
}
__inline static void *queue_index_node(struct be_queue_info *q , u16 index )
{
  {
  return (q->dma_mem.va + (unsigned long )((int )index * (int )q->entry_size));
}
}
__inline static void queue_head_inc(struct be_queue_info *q )
{
  {
  index_inc(& q->head, (int )q->len);
  return;
}
}
__inline static void queue_tail_inc(struct be_queue_info *q )
{
  {
  index_inc(& q->tail, (int )q->len);
  return;
}
}
__inline static u16 be_max_qs(struct be_adapter *adapter )
{
  u16 num ;
  u16 __max1 ;
  u16 __max2 ;
  u16 _min1 ;
  u16 _min2 ;
  u16 __min1 ;
  u16 __min2 ;
  unsigned int tmp ;
  {
  __max1 = adapter->res.max_rss_qs;
  __max2 = 1U;
  num = (u16 )((int )__max1 > (int )__max2 ? __max1 : __max2);
  _min1 = num;
  _min2 = adapter->res.max_evt_qs;
  num = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  __min1 = num;
  tmp = cpumask_weight(cpu_online_mask);
  __min2 = (u16 )tmp;
  return ((u16 )((int )__min1 < (int )__min2 ? __min1 : __min2));
}
}
struct ethtool_ops const be_ethtool_ops ;
__inline static u32 amap_mask(u32 bitsize )
{
  {
  return (bitsize != 32U ? (u32 )((1 << (int )bitsize) + -1) : 4294967295U);
}
}
__inline static void amap_set(void *ptr , u32 dw_offset , u32 mask , u32 offset ,
                              u32 value )
{
  u32 *dw ;
  {
  dw = (u32 *)ptr + (unsigned long )dw_offset;
  *dw = *dw & ~ (mask << (int )offset);
  *dw = *dw | ((mask & value) << (int )offset);
  return;
}
}
__inline static u32 amap_get(void *ptr , u32 dw_offset , u32 mask , u32 offset )
{
  u32 *dw ;
  {
  dw = (u32 *)ptr;
  return ((*(dw + (unsigned long )dw_offset) >> (int )offset) & mask);
}
}
__inline static void swap_dws(void *wrb , int len )
{
  {
  return;
}
}
__inline static u8 is_udp_pkt(struct sk_buff *skb )
{
  u8 val ;
  struct iphdr *tmp ;
  struct ipv6hdr *tmp___0 ;
  struct iphdr *tmp___1 ;
  struct iphdr *tmp___2 ;
  {
  val = 0U;
  tmp___2 = ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )*((unsigned char *)tmp___2 + 0UL) == 64U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    val = (unsigned int )tmp->protocol == 17U;
  } else {
    tmp___1 = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp___1 + 0UL) == 96U) {
      tmp___0 = ipv6_hdr((struct sk_buff const *)skb);
      val = (unsigned int )tmp___0->nexthdr == 17U;
    } else {
    }
  }
  return (val);
}
}
__inline static bool is_ipv4_pkt(struct sk_buff *skb )
{
  struct iphdr *tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )skb->protocol == 8U) {
    tmp = ip_hdr((struct sk_buff const *)skb);
    if ((unsigned int )*((unsigned char *)tmp + 0UL) == 64U) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return ((bool )tmp___0);
}
}
__inline static u8 be_check_error(struct be_adapter *adapter , u32 err_type )
{
  {
  return ((int )adapter->err_flags & (int )((u8 )err_type));
}
}
__inline static void be_set_error(struct be_adapter *adapter , int err_type )
{
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  adapter->err_flags = (u8 )((int )((signed char )adapter->err_flags) | (int )((signed char )err_type));
  netif_carrier_off(netdev);
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "%s: Link down\n",
            (char *)(& netdev->name));
  return;
}
}
__inline static void be_clear_error(struct be_adapter *adapter , int err_type )
{
  {
  adapter->err_flags = (u8 )((int )((signed char )adapter->err_flags) & ~ ((int )((signed char )err_type)));
  return;
}
}
__inline static bool be_multi_rxq(struct be_adapter const *adapter )
{
  {
  return ((unsigned int )((unsigned short )adapter->num_rx_qs) > 1U);
}
}
void be_cq_notify(struct be_adapter *adapter , u16 qid , bool arm , u16 num_popped ) ;
void be_link_status_update(struct be_adapter *adapter , u8 link_status ) ;
void be_parse_stats(struct be_adapter *adapter ) ;
int be_load_fw(struct be_adapter *adapter , u8 *fw_file ) ;
bool be_pause_supported(struct be_adapter *adapter ) ;
int be_update_queues(struct be_adapter *adapter ) ;
int be_poll(struct napi_struct *napi , int budget ) ;
void be_eqd_update(struct be_adapter *adapter , bool force_update ) ;
void be_roce_dev_add(struct be_adapter *adapter ) ;
void be_roce_dev_remove(struct be_adapter *adapter ) ;
void be_roce_dev_open(struct be_adapter *adapter ) ;
void be_roce_dev_close(struct be_adapter *adapter ) ;
void be_roce_dev_shutdown(struct be_adapter *adapter ) ;
__inline static struct lancer_pport_stats *pport_stats_from_cmd(struct be_adapter *adapter )
{
  struct lancer_cmd_resp_pport_stats *cmd ;
  {
  cmd = (struct lancer_cmd_resp_pport_stats *)adapter->stats_cmd.va;
  return (& cmd->pport_stats);
}
}
__inline static bool be_is_mc(struct be_adapter *adapter )
{
  {
  return ((unsigned int )adapter->mc_type > 1U);
}
}
int be_fw_wait_ready(struct be_adapter *adapter ) ;
int be_cmd_pmac_add(struct be_adapter *adapter , u8 *mac_addr , u32 if_id , u32 *pmac_id ,
                    u32 domain ) ;
int be_cmd_pmac_del(struct be_adapter *adapter , u32 if_id , int pmac_id , u32 dom ) ;
int be_cmd_if_create(struct be_adapter *adapter , u32 cap_flags , u32 en_flags , u32 *if_handle ,
                     u32 domain ) ;
int be_cmd_if_destroy(struct be_adapter *adapter , int interface_id , u32 domain ) ;
int be_cmd_eq_create(struct be_adapter *adapter , struct be_eq_obj *eqo ) ;
int be_cmd_cq_create(struct be_adapter *adapter , struct be_queue_info *cq , struct be_queue_info *eq ,
                     bool no_delay , int coalesce_wm ) ;
int be_cmd_mccq_create(struct be_adapter *adapter , struct be_queue_info *mccq , struct be_queue_info *cq ) ;
int be_cmd_txq_create(struct be_adapter *adapter , struct be_tx_obj *txo ) ;
int be_cmd_rxq_create(struct be_adapter *adapter , struct be_queue_info *rxq , u16 cq_id ,
                      u16 frag_size , u32 if_id , u32 rss , u8 *rss_id ) ;
int be_cmd_q_destroy(struct be_adapter *adapter , struct be_queue_info *q , int queue_type ) ;
int be_cmd_rxq_destroy(struct be_adapter *adapter , struct be_queue_info *q ) ;
int be_cmd_link_status_query(struct be_adapter *adapter , u16 *link_speed , u8 *link_status ,
                             u32 dom ) ;
int be_cmd_get_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int lancer_cmd_get_pport_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_get_fw_ver(struct be_adapter *adapter ) ;
int be_cmd_modify_eqd(struct be_adapter *adapter , struct be_set_eqd *set_eqd , int num ) ;
int be_cmd_vlan_config(struct be_adapter *adapter , u32 if_id , u16 *vtag_array ,
                       u32 num , u32 domain ) ;
int be_cmd_rx_filter(struct be_adapter *adapter , u32 flags , u32 value ) ;
int be_cmd_set_flow_control(struct be_adapter *adapter , u32 tx_fc , u32 rx_fc ) ;
int be_cmd_get_flow_control(struct be_adapter *adapter , u32 *tx_fc , u32 *rx_fc ) ;
int be_cmd_query_fw_cfg(struct be_adapter *adapter ) ;
int be_cmd_reset_function(struct be_adapter *adapter ) ;
int be_cmd_rss_config(struct be_adapter *adapter , u8 *rsstable , u32 rss_hash_opts ,
                      u16 table_size , u8 const *rss_hkey ) ;
int be_process_mcc(struct be_adapter *adapter ) ;
int be_cmd_query_sfp_info(struct be_adapter *adapter ) ;
int be_cmd_write_flashrom(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 flash_type ,
                          u32 flash_opcode , u32 img_offset , u32 buf_size ) ;
int lancer_cmd_write_object(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                            u32 data_size , u32 data_offset , char const *obj_name ,
                            u32 *data_written , u8 *change_status , u8 *addn_status ) ;
int be_cmd_get_flash_crc(struct be_adapter *adapter , u8 *flashed_crc , u16 img_optype ,
                         u32 img_offset , u32 crc_offset ) ;
int be_cmd_enable_magic_wol(struct be_adapter *adapter , u8 *mac , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_fw_init(struct be_adapter *adapter ) ;
int be_cmd_fw_clean(struct be_adapter *adapter ) ;
void be_async_mcc_enable(struct be_adapter *adapter ) ;
void be_async_mcc_disable(struct be_adapter *adapter ) ;
int be_cmd_get_phy_info(struct be_adapter *adapter ) ;
int be_cmd_config_qos(struct be_adapter *adapter , u32 max_rate , u16 link_speed ,
                      u8 domain ) ;
void be_detect_error(struct be_adapter *adapter ) ;
int be_cmd_get_die_temperature(struct be_adapter *adapter ) ;
int be_cmd_get_cntl_attributes(struct be_adapter *adapter ) ;
int be_cmd_req_native_mode(struct be_adapter *adapter ) ;
int be_cmd_get_fn_privileges(struct be_adapter *adapter , u32 *privilege , u32 domain ) ;
int be_cmd_set_fn_privileges(struct be_adapter *adapter , u32 privileges , u32 domain ) ;
int be_cmd_get_active_mac(struct be_adapter *adapter , u32 curr_pmac_id , u8 *mac ,
                          u32 if_handle , bool active , u32 domain ) ;
int be_cmd_get_perm_mac(struct be_adapter *adapter , u8 *mac ) ;
int be_cmd_set_mac(struct be_adapter *adapter , u8 *mac , int if_id , u32 dom ) ;
int be_cmd_set_hsw_config(struct be_adapter *adapter , u16 pvid , u32 domain , u16 intf_id ,
                          u16 hsw_mode , u8 spoofchk ) ;
int be_cmd_get_hsw_config(struct be_adapter *adapter , u16 *pvid , u32 domain , u16 intf_id ,
                          u8 *mode , bool *spoofchk ) ;
int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter ) ;
int be_cmd_get_fw_log_level(struct be_adapter *adapter ) ;
int lancer_physdev_ctrl(struct be_adapter *adapter , u32 mask ) ;
int be_cmd_query_port_name(struct be_adapter *adapter ) ;
int be_cmd_get_func_config(struct be_adapter *adapter , struct be_resources *res ) ;
int be_cmd_get_profile_config(struct be_adapter *adapter , struct be_resources *res ,
                              u8 query , u8 domain ) ;
int be_cmd_get_active_profile(struct be_adapter *adapter , u16 *profile_id ) ;
int be_cmd_get_if_id(struct be_adapter *adapter , struct be_vf_cfg *vf_cfg , int vf_num ) ;
int be_cmd_enable_vf(struct be_adapter *adapter , u8 domain ) ;
int be_cmd_intr_set(struct be_adapter *adapter , bool intr_enable ) ;
int be_cmd_set_logical_link_config(struct be_adapter *adapter , int link_state , u8 domain ) ;
int be_cmd_set_vxlan_port(struct be_adapter *adapter , __be16 port ) ;
int be_cmd_manage_iface(struct be_adapter *adapter , u32 iface , u8 op ) ;
int be_cmd_set_sriov_config(struct be_adapter *adapter , struct be_resources pool_res ,
                            u16 num_vfs___0 , u16 num_vf_qs ) ;
extern int pci_enable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_disable_pcie_error_reporting(struct pci_dev * ) ;
extern int pci_cleanup_aer_uncorrect_error_status(struct pci_dev * ) ;
__inline static void skb_mark_napi_id(struct sk_buff *skb , struct napi_struct *napi )
{
  {
  skb->__annonCompField72.napi_id = napi->napi_id;
  return;
}
}
extern void vxlan_get_rx_port(struct net_device * ) ;
static unsigned int num_vfs ;
static ushort rx_frag_size = 2048U;
static struct pci_device_id const be_dev_ids[9U] =
  { {6562U, 529U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 545U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 1792U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {6562U, 1808U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 57888U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 57896U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 1824U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4319U, 1832U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__be_dev_ids_device_table[9U] ;
static char const * const ue_status_low_desc[32U] =
  { "CEV", "CTX", "DBUF", "ERX",
        "Host", "MPU", "NDMA", "PTC ",
        "RDMA ", "RXF ", "RXIPS ", "RXULP0 ",
        "RXULP1 ", "RXULP2 ", "TIM ", "TPOST ",
        "TPRE ", "TXIPS ", "TXULP0 ", "TXULP1 ",
        "UC ", "WDMA ", "TXULP2 ", "HOST1 ",
        "P0_OB_LINK ", "P1_OB_LINK ", "HOST_GPIO ", "MBOX ",
        "ERX2 ", "SPARE ", "JTAG ", "MPU_INTPEND "};
static char const * const ue_status_hi_desc[32U] =
  { "LPCMEMHOST", "MGMT_MAC", "PCS0ONLINE", "MPU_IRAM",
        "PCS1ONLINE", "PCTL0", "PCTL1", "PMEM",
        "RR", "TXPB", "RXPP", "XAUI",
        "TXP", "ARM", "IPC", "HOST2",
        "HOST3", "HOST4", "HOST5", "HOST6",
        "HOST7", "ECRC", "Poison TLP", "NETC",
        "PERIPH", "LLTXULP", "D2P", "RCON",
        "LDMA", "LLTXP", "LLTXPB", "Unknown"};
static void be_queue_free(struct be_adapter *adapter , struct be_queue_info *q )
{
  struct be_dma_mem *mem ;
  {
  mem = & q->dma_mem;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )mem->size, mem->va, mem->dma,
                   (struct dma_attrs *)0);
    mem->va = (void *)0;
  } else {
  }
  return;
}
}
static int be_queue_alloc(struct be_adapter *adapter , struct be_queue_info *q , u16 len ,
                          u16 entry_size )
{
  struct be_dma_mem *mem ;
  {
  mem = & q->dma_mem;
  memset((void *)q, 0, 40UL);
  q->len = len;
  q->entry_size = entry_size;
  mem->size = (u32 )((int )len * (int )entry_size);
  mem->va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )mem->size, & mem->dma,
                                208U);
  if ((unsigned long )mem->va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static void be_reg_intr_set(struct be_adapter *adapter , bool enable )
{
  u32 reg ;
  u32 enabled ;
  {
  pci_read_config_dword((struct pci_dev const *)adapter->pdev, 252, & reg);
  enabled = reg & 536870912U;
  if (enabled == 0U && (int )enable) {
    reg = reg | 536870912U;
  } else
  if (enabled != 0U && ! enable) {
    reg = reg & 3758096383U;
  } else {
    return;
  }
  pci_write_config_dword((struct pci_dev const *)adapter->pdev, 252, reg);
  return;
}
}
static void be_intr_set(struct be_adapter *adapter , bool enable )
{
  int status ;
  u8 tmp ;
  {
  status = 0;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return;
  } else {
  }
  tmp = be_check_error(adapter, 1U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  status = be_cmd_intr_set(adapter, (int )enable);
  if (status != 0) {
    be_reg_intr_set(adapter, (int )enable);
  } else {
  }
  return;
}
}
static void be_rxq_notify(struct be_adapter *adapter , u16 qid , u16 posted )
{
  u32 val ;
  u8 tmp ;
  {
  val = 0U;
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  val = ((u32 )qid & 1023U) | val;
  val = (u32 )((int )posted << 24) | val;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + 256U);
  return;
}
}
static void be_txq_notify(struct be_adapter *adapter , struct be_tx_obj *txo , u16 posted )
{
  u32 val ;
  u8 tmp ;
  {
  val = 0U;
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  val = ((u32 )txo->q.id & 2047U) | val;
  val = (u32 )(((int )posted & 16383) << 16) | val;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + (unsigned long )txo->db_offset);
  return;
}
}
static void be_eq_notify(struct be_adapter *adapter , u16 qid , bool arm , bool clear_int ,
                         u16 num_popped , u32 eq_delay_mult_enc )
{
  u32 val ;
  u8 tmp ;
  {
  val = 0U;
  val = ((u32 )qid & 511U) | val;
  val = (u32 )(((int )qid & 15872) << 2) | val;
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  if ((int )arm) {
    val = val | 536870912U;
  } else {
  }
  if ((int )clear_int) {
    val = val | 512U;
  } else {
  }
  val = val | 1024U;
  val = (u32 )((int )num_popped << 16) | val;
  val = (eq_delay_mult_enc << 30) | val;
  iowrite32(val, (void *)adapter->db + 288U);
  return;
}
}
void be_cq_notify(struct be_adapter *adapter , u16 qid , bool arm , u16 num_popped )
{
  u32 val ;
  u8 tmp ;
  {
  val = 0U;
  val = ((u32 )qid & 1023U) | val;
  val = (u32 )(((int )qid & 31744) << 1) | val;
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  if ((int )arm) {
    val = val | 536870912U;
  } else {
  }
  val = (u32 )((int )num_popped << 16) | val;
  iowrite32(val, (void *)adapter->db + 288U);
  return;
}
}
static int be_mac_addr_set(struct net_device *netdev , void *p )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct device *dev ;
  struct sockaddr *addr ;
  int status ;
  u8 mac[6U] ;
  u32 old_pmac_id ;
  u32 curr_pmac_id ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  dev = & (adapter->pdev)->dev;
  addr = (struct sockaddr *)p;
  old_pmac_id = *(adapter->pmac_id);
  curr_pmac_id = 0U;
  tmp___0 = is_valid_ether_addr((u8 const *)(& addr->sa_data));
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-99);
  } else {
  }
  tmp___2 = ether_addr_equal((u8 const *)(& addr->sa_data), (u8 const *)netdev->dev_addr);
  if ((int )tmp___2) {
    return (0);
  } else {
  }
  status = be_cmd_pmac_add(adapter, (u8 *)(& addr->sa_data), (u32 )adapter->if_handle,
                           adapter->pmac_id, 0U);
  if (status == 0) {
    curr_pmac_id = *(adapter->pmac_id);
    if (*(adapter->pmac_id) != old_pmac_id) {
      be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )old_pmac_id, 0U);
    } else {
    }
  } else {
  }
  status = be_cmd_get_active_mac(adapter, curr_pmac_id, (u8 *)(& mac), (u32 )adapter->if_handle,
                                 1, 0U);
  if (status != 0) {
    goto err;
  } else {
  }
  tmp___3 = ether_addr_equal((u8 const *)(& addr->sa_data), (u8 const *)(& mac));
  if (tmp___3) {
    tmp___4 = 0;
  } else {
    tmp___4 = 1;
  }
  if (tmp___4) {
    status = -1;
    goto err;
  } else {
  }
  memcpy((void *)netdev->dev_addr, (void const *)(& addr->sa_data), (size_t )netdev->addr_len);
  _dev_info((struct device const *)dev, "MAC address changed to %pM\n", (u8 *)(& mac));
  return (0);
  err:
  dev_warn((struct device const *)dev, "MAC address change to %pM failed\n", (char *)(& addr->sa_data));
  return (status);
}
}
static void *hw_stats_from_cmd(struct be_adapter *adapter )
{
  struct be_cmd_resp_get_stats_v0 *cmd ;
  struct be_cmd_resp_get_stats_v1 *cmd___0 ;
  struct be_cmd_resp_get_stats_v2 *cmd___1 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    cmd = (struct be_cmd_resp_get_stats_v0 *)adapter->stats_cmd.va;
    return ((void *)(& cmd->hw_stats));
  } else
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    cmd___0 = (struct be_cmd_resp_get_stats_v1 *)adapter->stats_cmd.va;
    return ((void *)(& cmd___0->hw_stats));
  } else {
    cmd___1 = (struct be_cmd_resp_get_stats_v2 *)adapter->stats_cmd.va;
    return ((void *)(& cmd___1->hw_stats));
  }
}
}
static void *be_erx_stats_from_cmd(struct be_adapter *adapter )
{
  struct be_hw_stats_v0 *hw_stats ;
  void *tmp ;
  struct be_hw_stats_v1 *hw_stats___0 ;
  void *tmp___0 ;
  struct be_hw_stats_v2 *hw_stats___1 ;
  void *tmp___1 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    tmp = hw_stats_from_cmd(adapter);
    hw_stats = (struct be_hw_stats_v0 *)tmp;
    return ((void *)(& hw_stats->erx));
  } else
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    tmp___0 = hw_stats_from_cmd(adapter);
    hw_stats___0 = (struct be_hw_stats_v1 *)tmp___0;
    return ((void *)(& hw_stats___0->erx));
  } else {
    tmp___1 = hw_stats_from_cmd(adapter);
    hw_stats___1 = (struct be_hw_stats_v2 *)tmp___1;
    return ((void *)(& hw_stats___1->erx));
  }
}
}
static void populate_be_v0_stats(struct be_adapter *adapter )
{
  struct be_hw_stats_v0 *hw_stats ;
  void *tmp ;
  struct be_pmem_stats *pmem_sts ;
  struct be_rxf_stats_v0 *rxf_stats ;
  struct be_port_rxf_stats_v0 *port_stats ;
  struct be_drv_stats *drvs ;
  {
  tmp = hw_stats_from_cmd(adapter);
  hw_stats = (struct be_hw_stats_v0 *)tmp;
  pmem_sts = & hw_stats->pmem;
  rxf_stats = & hw_stats->rxf;
  port_stats = (struct be_port_rxf_stats_v0 *)(& rxf_stats->port) + (unsigned long )adapter->port_num;
  drvs = & adapter->drv_stats;
  swap_dws((void *)hw_stats, 1060);
  drvs->rx_pause_frames = port_stats->rx_pause_frames;
  drvs->rx_crc_errors = port_stats->rx_crc_errors;
  drvs->rx_control_frames = port_stats->rx_control_frames;
  drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
  drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
  drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
  drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
  drvs->rxpp_fifo_overflow_drop = port_stats->rx_fifo_overflow;
  drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
  drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
  drvs->rx_input_fifo_overflow_drop = port_stats->rx_input_fifo_overflow;
  drvs->rx_dropped_header_too_small = port_stats->rx_dropped_header_too_small;
  drvs->rx_address_filtered = port_stats->rx_address_filtered + port_stats->rx_vlan_filtered;
  drvs->rx_alignment_symbol_errors = port_stats->rx_alignment_symbol_errors;
  drvs->tx_pauseframes = port_stats->tx_pauseframes;
  drvs->tx_controlframes = port_stats->tx_controlframes;
  if (adapter->port_num != 0U) {
    drvs->jabber_events = rxf_stats->port1_jabber_events;
  } else {
    drvs->jabber_events = rxf_stats->port0_jabber_events;
  }
  drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
  drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
  drvs->forwarded_packets = rxf_stats->forwarded_packets;
  drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
  drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
  drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
  adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
  return;
}
}
static void populate_be_v1_stats(struct be_adapter *adapter )
{
  struct be_hw_stats_v1 *hw_stats ;
  void *tmp ;
  struct be_pmem_stats *pmem_sts ;
  struct be_rxf_stats_v1 *rxf_stats ;
  struct be_port_rxf_stats_v1 *port_stats ;
  struct be_drv_stats *drvs ;
  {
  tmp = hw_stats_from_cmd(adapter);
  hw_stats = (struct be_hw_stats_v1 *)tmp;
  pmem_sts = & hw_stats->pmem;
  rxf_stats = & hw_stats->rxf;
  port_stats = (struct be_port_rxf_stats_v1 *)(& rxf_stats->port) + (unsigned long )adapter->port_num;
  drvs = & adapter->drv_stats;
  swap_dws((void *)hw_stats, 1848);
  drvs->pmem_fifo_overflow_drop = port_stats->pmem_fifo_overflow_drop;
  drvs->rx_priority_pause_frames = port_stats->rx_priority_pause_frames;
  drvs->rx_pause_frames = port_stats->rx_pause_frames;
  drvs->rx_crc_errors = port_stats->rx_crc_errors;
  drvs->rx_control_frames = port_stats->rx_control_frames;
  drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
  drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
  drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
  drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
  drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
  drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
  drvs->rx_dropped_header_too_small = port_stats->rx_dropped_header_too_small;
  drvs->rx_input_fifo_overflow_drop = port_stats->rx_input_fifo_overflow_drop;
  drvs->rx_address_filtered = port_stats->rx_address_filtered;
  drvs->rx_alignment_symbol_errors = port_stats->rx_alignment_symbol_errors;
  drvs->rxpp_fifo_overflow_drop = port_stats->rxpp_fifo_overflow_drop;
  drvs->tx_pauseframes = port_stats->tx_pauseframes;
  drvs->tx_controlframes = port_stats->tx_controlframes;
  drvs->tx_priority_pauseframes = port_stats->tx_priority_pauseframes;
  drvs->jabber_events = port_stats->jabber_events;
  drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
  drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
  drvs->forwarded_packets = rxf_stats->forwarded_packets;
  drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
  drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
  drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
  adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
  return;
}
}
static void populate_be_v2_stats(struct be_adapter *adapter )
{
  struct be_hw_stats_v2 *hw_stats ;
  void *tmp ;
  struct be_pmem_stats *pmem_sts ;
  struct be_rxf_stats_v2 *rxf_stats ;
  struct be_port_rxf_stats_v2 *port_stats ;
  struct be_drv_stats *drvs ;
  {
  tmp = hw_stats_from_cmd(adapter);
  hw_stats = (struct be_hw_stats_v2 *)tmp;
  pmem_sts = & hw_stats->pmem;
  rxf_stats = & hw_stats->rxf;
  port_stats = (struct be_port_rxf_stats_v2 *)(& rxf_stats->port) + (unsigned long )adapter->port_num;
  drvs = & adapter->drv_stats;
  swap_dws((void *)hw_stats, 2680);
  drvs->pmem_fifo_overflow_drop = port_stats->pmem_fifo_overflow_drop;
  drvs->rx_priority_pause_frames = port_stats->rx_priority_pause_frames;
  drvs->rx_pause_frames = port_stats->rx_pause_frames;
  drvs->rx_crc_errors = port_stats->rx_crc_errors;
  drvs->rx_control_frames = port_stats->rx_control_frames;
  drvs->rx_in_range_errors = port_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = port_stats->rx_frame_too_long;
  drvs->rx_dropped_runt = port_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = port_stats->rx_ip_checksum_errs;
  drvs->rx_tcp_checksum_errs = port_stats->rx_tcp_checksum_errs;
  drvs->rx_udp_checksum_errs = port_stats->rx_udp_checksum_errs;
  drvs->rx_dropped_tcp_length = port_stats->rx_dropped_tcp_length;
  drvs->rx_dropped_too_small = port_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = port_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = port_stats->rx_out_range_errors;
  drvs->rx_dropped_header_too_small = port_stats->rx_dropped_header_too_small;
  drvs->rx_input_fifo_overflow_drop = port_stats->rx_input_fifo_overflow_drop;
  drvs->rx_address_filtered = port_stats->rx_address_filtered;
  drvs->rx_alignment_symbol_errors = port_stats->rx_alignment_symbol_errors;
  drvs->rxpp_fifo_overflow_drop = port_stats->rxpp_fifo_overflow_drop;
  drvs->tx_pauseframes = port_stats->tx_pauseframes;
  drvs->tx_controlframes = port_stats->tx_controlframes;
  drvs->tx_priority_pauseframes = port_stats->tx_priority_pauseframes;
  drvs->jabber_events = port_stats->jabber_events;
  drvs->rx_drops_no_pbuf = rxf_stats->rx_drops_no_pbuf;
  drvs->rx_drops_no_erx_descr = rxf_stats->rx_drops_no_erx_descr;
  drvs->forwarded_packets = rxf_stats->forwarded_packets;
  drvs->rx_drops_mtu = rxf_stats->rx_drops_mtu;
  drvs->rx_drops_no_tpre_descr = rxf_stats->rx_drops_no_tpre_descr;
  drvs->rx_drops_too_many_frags = rxf_stats->rx_drops_too_many_frags;
  adapter->drv_stats.eth_red_drops = pmem_sts->eth_red_drops;
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    drvs->rx_roce_bytes_lsd = port_stats->roce_bytes_received_lsd;
    drvs->rx_roce_bytes_msd = port_stats->roce_bytes_received_msd;
    drvs->rx_roce_frames = port_stats->roce_frames_received;
    drvs->roce_drops_crc = port_stats->roce_drops_crc;
    drvs->roce_drops_payload_len = port_stats->roce_drops_payload_len;
  } else {
  }
  return;
}
}
static void populate_lancer_stats(struct be_adapter *adapter )
{
  struct be_drv_stats *drvs ;
  struct lancer_pport_stats *pport_stats ;
  struct lancer_pport_stats *tmp ;
  {
  drvs = & adapter->drv_stats;
  tmp = pport_stats_from_cmd(adapter);
  pport_stats = tmp;
  swap_dws((void *)pport_stats, 656);
  drvs->rx_pause_frames = pport_stats->rx_pause_frames_lo;
  drvs->rx_crc_errors = pport_stats->rx_crc_errors_lo;
  drvs->rx_control_frames = pport_stats->rx_control_frames_lo;
  drvs->rx_in_range_errors = pport_stats->rx_in_range_errors;
  drvs->rx_frame_too_long = pport_stats->rx_frames_too_long_lo;
  drvs->rx_dropped_runt = pport_stats->rx_dropped_runt;
  drvs->rx_ip_checksum_errs = pport_stats->rx_ip_checksum_errors;
  drvs->rx_tcp_checksum_errs = pport_stats->rx_tcp_checksum_errors;
  drvs->rx_udp_checksum_errs = pport_stats->rx_udp_checksum_errors;
  drvs->rx_dropped_tcp_length = pport_stats->rx_dropped_invalid_tcp_length;
  drvs->rx_dropped_too_small = pport_stats->rx_dropped_too_small;
  drvs->rx_dropped_too_short = pport_stats->rx_dropped_too_short;
  drvs->rx_out_range_errors = pport_stats->rx_out_of_range_errors;
  drvs->rx_dropped_header_too_small = pport_stats->rx_dropped_header_too_small;
  drvs->rx_input_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
  drvs->rx_address_filtered = pport_stats->rx_address_filtered + pport_stats->rx_vlan_filtered;
  drvs->rx_alignment_symbol_errors = pport_stats->rx_symbol_errors_lo;
  drvs->rxpp_fifo_overflow_drop = pport_stats->rx_fifo_overflow;
  drvs->tx_pauseframes = pport_stats->tx_pause_frames_lo;
  drvs->tx_controlframes = pport_stats->tx_control_frames_lo;
  drvs->jabber_events = pport_stats->rx_jabbers;
  drvs->forwarded_packets = pport_stats->num_forwards_lo;
  drvs->rx_drops_mtu = pport_stats->rx_drops_mtu_lo;
  drvs->rx_drops_too_many_frags = pport_stats->rx_drops_too_many_frags_lo;
  return;
}
}
static void accumulate_16bit_val(u32 *acc , u16 val )
{
  bool wrapped ;
  u32 newacc ;
  u32 __var ;
  {
  wrapped = (u32 )val < (*acc & 65535U);
  newacc = (*acc & 4294901760U) + (u32 )val;
  if ((int )wrapped) {
    newacc = newacc + 65536U;
  } else {
  }
  __var = 0U;
  *((u32 volatile *)acc) = newacc;
  return;
}
}
static void populate_erx_stats(struct be_adapter *adapter , struct be_rx_obj *rxo ,
                               u32 erx_stat )
{
  {
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    rxo->stats.rx_drops_no_frags = erx_stat;
  } else {
    accumulate_16bit_val(& rxo->stats.rx_drops_no_frags, (int )((unsigned short )erx_stat));
  }
  return;
}
}
void be_parse_stats(struct be_adapter *adapter )
{
  struct be_erx_stats_v2 *erx ;
  void *tmp ;
  struct be_rx_obj *rxo ;
  int i ;
  u32 erx_stat ;
  {
  tmp = be_erx_stats_from_cmd(adapter);
  erx = (struct be_erx_stats_v2 *)tmp;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    populate_lancer_stats(adapter);
  } else {
    if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
      populate_be_v0_stats(adapter);
    } else
    if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
      populate_be_v1_stats(adapter);
    } else {
      populate_be_v2_stats(adapter);
    }
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_57731;
    ldv_57730:
    erx_stat = erx->rx_drops_no_fragments[(int )rxo->q.id];
    populate_erx_stats(adapter, rxo, erx_stat);
    i = i + 1;
    rxo = rxo + 1;
    ldv_57731: ;
    if ((int )adapter->num_rx_qs > i) {
      goto ldv_57730;
    } else {
    }
  }
  return;
}
}
static struct rtnl_link_stats64 *be_get_stats64(struct net_device *netdev , struct rtnl_link_stats64 *stats )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_drv_stats *drvs ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u64 pkts ;
  u64 bytes ;
  unsigned int start ;
  int i ;
  struct be_rx_stats const *rx_stats ;
  bool tmp___0 ;
  struct be_tx_stats const *tx_stats ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  drvs = & adapter->drv_stats;
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_57749;
  ldv_57748:
  rx_stats = (struct be_rx_stats const *)(& rxo->stats);
  ldv_57746:
  start = u64_stats_fetch_begin_irq(& rx_stats->sync);
  pkts = rxo->stats.rx_pkts;
  bytes = rxo->stats.rx_bytes;
  tmp___0 = u64_stats_fetch_retry_irq(& rx_stats->sync, start);
  if ((int )tmp___0) {
    goto ldv_57746;
  } else {
  }
  stats->rx_packets = stats->rx_packets + pkts;
  stats->rx_bytes = stats->rx_bytes + bytes;
  stats->multicast = stats->multicast + (__u64 )rxo->stats.rx_mcast_pkts;
  stats->rx_dropped = stats->rx_dropped + (__u64 )(rxo->stats.rx_drops_no_skbs + rxo->stats.rx_drops_no_frags);
  i = i + 1;
  rxo = rxo + 1;
  ldv_57749: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_57748;
  } else {
  }
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_57755;
  ldv_57754:
  tx_stats = (struct be_tx_stats const *)(& txo->stats);
  ldv_57752:
  start = u64_stats_fetch_begin_irq(& tx_stats->sync);
  pkts = txo->stats.tx_pkts;
  bytes = txo->stats.tx_bytes;
  tmp___1 = u64_stats_fetch_retry_irq(& tx_stats->sync, start);
  if ((int )tmp___1) {
    goto ldv_57752;
  } else {
  }
  stats->tx_packets = stats->tx_packets + pkts;
  stats->tx_bytes = stats->tx_bytes + bytes;
  i = i + 1;
  txo = txo + 1;
  ldv_57755: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_57754;
  } else {
  }
  stats->rx_errors = (__u64 )(((((((((drvs->rx_crc_errors + drvs->rx_alignment_symbol_errors) + drvs->rx_in_range_errors) + drvs->rx_out_range_errors) + drvs->rx_frame_too_long) + drvs->rx_dropped_too_small) + drvs->rx_dropped_too_short) + drvs->rx_dropped_header_too_small) + drvs->rx_dropped_tcp_length) + drvs->rx_dropped_runt);
  stats->rx_length_errors = (__u64 )((drvs->rx_in_range_errors + drvs->rx_out_range_errors) + drvs->rx_frame_too_long);
  stats->rx_crc_errors = (__u64 )drvs->rx_crc_errors;
  stats->rx_frame_errors = (__u64 )drvs->rx_alignment_symbol_errors;
  stats->rx_fifo_errors = (__u64 )((drvs->rxpp_fifo_overflow_drop + drvs->rx_input_fifo_overflow_drop) + drvs->rx_drops_no_pbuf);
  return (stats);
}
}
void be_link_status_update(struct be_adapter *adapter , u8 link_status )
{
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  if (((unsigned long )adapter->flags & 2UL) == 0UL) {
    netif_carrier_off(netdev);
    adapter->flags = adapter->flags | 2U;
  } else {
  }
  if ((unsigned int )link_status != 0U) {
    netif_carrier_on(netdev);
  } else {
    netif_carrier_off(netdev);
  }
  netdev_info((struct net_device const *)netdev, "Link is %s\n", (unsigned int )link_status != 0U ? (char *)"Up" : (char *)"Down");
  return;
}
}
static void be_tx_stats_update(struct be_tx_obj *txo , struct sk_buff *skb )
{
  struct be_tx_stats *stats ;
  unsigned char *tmp___0 ;
  u64 tmp___1 ;
  unsigned char *tmp___2 ;
  {
  stats = & txo->stats;
  u64_stats_init(& stats->sync);
  stats->tx_reqs = stats->tx_reqs + 1ULL;
  stats->tx_bytes = stats->tx_bytes + (u64 )skb->len;
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  if ((int )((struct skb_shared_info *)tmp___2)->gso_segs != 0) {
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    tmp___1 = (u64 )((int )((struct skb_shared_info *)tmp___0)->gso_segs);
  } else {
    tmp___1 = 1ULL;
  }
  stats->tx_pkts = stats->tx_pkts + tmp___1;
  u64_stats_init(& stats->sync);
  return;
}
}
static u32 skb_wrb_cnt(struct sk_buff *skb )
{
  unsigned int tmp ;
  unsigned char *tmp___0 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  return ((u32 )((tmp != 0U ? 2 : 1) + (int )((struct skb_shared_info *)tmp___0)->nr_frags));
}
}
__inline static void wrb_fill(struct be_eth_wrb *wrb , u64 addr , int len )
{
  {
  wrb->frag_pa_hi = (unsigned int )(addr >> 32ULL);
  wrb->frag_pa_lo = (unsigned int )addr;
  wrb->frag_len = (unsigned int )len & 65535U;
  wrb->rsvd0 = 0U;
  return;
}
}
__inline static void wrb_fill_dummy(struct be_eth_wrb *wrb )
{
  {
  wrb->frag_pa_hi = 0U;
  wrb->frag_pa_lo = 0U;
  wrb->frag_len = 0U;
  wrb->rsvd0 = 0U;
  return;
}
}
__inline static u16 be_get_tx_vlan_tag(struct be_adapter *adapter , struct sk_buff *skb )
{
  u8 vlan_prio ;
  u16 vlan_tag ;
  {
  vlan_tag = (unsigned int )skb->vlan_tci & 61439U;
  vlan_prio = (u8 )((int )vlan_tag >> 13);
  if ((((int )adapter->vlan_prio_bmap >> (int )vlan_prio) & 1) == 0) {
    vlan_tag = (u16 )(((int )((short )vlan_tag) & 8191) | (int )((short )adapter->recommended_prio));
  } else {
  }
  return (vlan_tag);
}
}
static u16 skb_inner_ip_proto(struct sk_buff *skb )
{
  struct iphdr *tmp___0 ;
  struct ipv6hdr *tmp___1 ;
  int tmp___2 ;
  struct iphdr *tmp___3 ;
  {
  tmp___3 = inner_ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )*((unsigned char *)tmp___3 + 0UL) == 64U) {
    tmp___0 = inner_ip_hdr((struct sk_buff const *)skb);
    tmp___2 = (u16 )tmp___0->protocol;
  } else {
    tmp___1 = inner_ipv6_hdr((struct sk_buff const *)skb);
    tmp___2 = (u16 )tmp___1->nexthdr;
  }
  return (tmp___2);
}
}
static u16 skb_ip_proto(struct sk_buff *skb )
{
  struct iphdr *tmp___0 ;
  struct ipv6hdr *tmp___1 ;
  int tmp___2 ;
  struct iphdr *tmp___3 ;
  {
  tmp___3 = ip_hdr((struct sk_buff const *)skb);
  if ((unsigned int )*((unsigned char *)tmp___3 + 0UL) == 64U) {
    tmp___0 = ip_hdr((struct sk_buff const *)skb);
    tmp___2 = (u16 )tmp___0->protocol;
  } else {
    tmp___1 = ipv6_hdr((struct sk_buff const *)skb);
    tmp___2 = (u16 )tmp___1->nexthdr;
  }
  return (tmp___2);
}
}
__inline static bool be_is_txq_full(struct be_tx_obj *txo )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& txo->q.used));
  return (tmp + 30 >= (int )txo->q.len);
}
}
__inline static bool be_can_txq_wake(struct be_tx_obj *txo )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& txo->q.used));
  return (tmp < (int )((unsigned int )txo->q.len / 2U));
}
}
__inline static bool be_is_tx_compl_pending(struct be_tx_obj *txo )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& txo->q.used));
  return (tmp > (int )txo->pend_wrb_cnt);
}
}
static void be_get_wrb_params_from_skb(struct be_adapter *adapter , struct sk_buff *skb ,
                                       struct be_wrb_params *wrb_params )
{
  u16 proto ;
  unsigned char *tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp___1 = skb_is_gso((struct sk_buff const *)skb);
  if ((int )tmp___1) {
    wrb_params->features = wrb_params->features | 16U;
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    wrb_params->lso_mss = ((struct skb_shared_info *)tmp)->gso_size;
    tmp___0 = skb_is_gso_v6((struct sk_buff const *)skb);
    if ((int )tmp___0 && ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U)) {
      wrb_params->features = wrb_params->features | 32U;
    } else {
    }
  } else
  if ((unsigned int )*((unsigned char *)skb + 145UL) == 6U) {
    if ((unsigned int )*((unsigned char *)skb + 146UL) != 0U) {
      wrb_params->features = wrb_params->features | 2U;
      proto = skb_inner_ip_proto(skb);
    } else {
      proto = skb_ip_proto(skb);
    }
    if ((unsigned int )proto == 6U) {
      wrb_params->features = wrb_params->features | 4U;
    } else
    if ((unsigned int )proto == 17U) {
      wrb_params->features = wrb_params->features | 8U;
    } else {
    }
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    wrb_params->features = wrb_params->features | 64U;
    wrb_params->vlan_tag = be_get_tx_vlan_tag(adapter, skb);
  } else {
  }
  wrb_params->features = wrb_params->features | 1U;
  return;
}
}
static void wrb_fill_hdr(struct be_adapter *adapter , struct be_eth_hdr_wrb *hdr ,
                         struct be_wrb_params *wrb_params , struct sk_buff *skb )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  {
  memset((void *)hdr, 0, 16UL);
  tmp = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp, 2U, wrb_params->features & 1U);
  tmp___0 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___0, 6U, (u32 )(((unsigned long )wrb_params->features & 2UL) >> 1));
  tmp___1 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___1, 8U, (u32 )(((unsigned long )wrb_params->features & 4UL) >> 2));
  tmp___2 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___2, 7U, (u32 )(((unsigned long )wrb_params->features & 8UL) >> 3));
  tmp___3 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___3, 9U, (u32 )(((unsigned long )wrb_params->features & 16UL) >> 4));
  tmp___4 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___4, 4U, (u32 )(((unsigned long )wrb_params->features & 32UL) >> 5));
  tmp___5 = amap_mask(14U);
  amap_set((void *)hdr, 2U, tmp___5, 18U, (u32 )wrb_params->lso_mss);
  tmp___6 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___6, 1U, (u32 )(((unsigned long )wrb_params->features & 128UL) >> 7));
  tmp___7 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___7, 10U, (u32 )(((unsigned long )wrb_params->features & 64UL) >> 6));
  tmp___8 = amap_mask(16U);
  amap_set((void *)hdr, 3U, tmp___8, 16U, (u32 )wrb_params->vlan_tag);
  tmp___9 = skb_wrb_cnt(skb);
  tmp___10 = amap_mask(5U);
  amap_set((void *)hdr, 2U, tmp___10, 13U, tmp___9);
  tmp___11 = amap_mask(16U);
  amap_set((void *)hdr, 3U, tmp___11, 0U, skb->len);
  tmp___12 = amap_mask(1U);
  amap_set((void *)hdr, 2U, tmp___12, 5U, (u32 )(((unsigned long )wrb_params->features & 256UL) >> 8));
  return;
}
}
static void unmap_tx_frag(struct device *dev , struct be_eth_wrb *wrb , bool unmap_single )
{
  dma_addr_t dma ;
  u32 frag_len ;
  {
  frag_len = wrb->frag_len;
  dma = ((unsigned long long )wrb->frag_pa_hi << 32) | (unsigned long long )wrb->frag_pa_lo;
  if (frag_len != 0U) {
    if ((int )unmap_single) {
      dma_unmap_single_attrs(dev, dma, (size_t )frag_len, 1, (struct dma_attrs *)0);
    } else {
      dma_unmap_page(dev, dma, (size_t )frag_len, 1);
    }
  } else {
  }
  return;
}
}
static u16 be_tx_get_wrb_hdr(struct be_tx_obj *txo )
{
  u16 head ;
  {
  head = txo->q.head;
  queue_head_inc(& txo->q);
  return (head);
}
}
static void be_tx_setup_wrb_hdr(struct be_adapter *adapter , struct be_tx_obj *txo ,
                                struct be_wrb_params *wrb_params , struct sk_buff *skb ,
                                u16 head )
{
  u32 num_frags ;
  u32 tmp ;
  struct be_queue_info *txq ;
  struct be_eth_hdr_wrb *hdr ;
  void *tmp___0 ;
  long tmp___1 ;
  {
  tmp = skb_wrb_cnt(skb);
  num_frags = tmp;
  txq = & txo->q;
  tmp___0 = queue_index_node(txq, (int )head);
  hdr = (struct be_eth_hdr_wrb *)tmp___0;
  wrb_fill_hdr(adapter, hdr, wrb_params, skb);
  swap_dws((void *)hdr, 16);
  tmp___1 = ldv__builtin_expect((unsigned long )txo->sent_skb_list[(int )head] != (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                         "i" (866), "i" (12UL));
    ldv_57832: ;
    goto ldv_57832;
  } else {
  }
  txo->sent_skb_list[(int )head] = skb;
  txo->last_req_hdr = head;
  atomic_add((int )num_frags, & txq->used);
  txo->last_req_wrb_cnt = (u16 )num_frags;
  txo->pend_wrb_cnt = (int )txo->pend_wrb_cnt + (int )((u16 )num_frags);
  return;
}
}
static void be_tx_setup_wrb_frag(struct be_tx_obj *txo , dma_addr_t busaddr , int len )
{
  struct be_eth_wrb *wrb ;
  struct be_queue_info *txq ;
  void *tmp ;
  {
  txq = & txo->q;
  tmp = queue_head_node(txq);
  wrb = (struct be_eth_wrb *)tmp;
  wrb_fill(wrb, busaddr, len);
  queue_head_inc(txq);
  return;
}
}
static void be_xmit_restore(struct be_adapter *adapter , struct be_tx_obj *txo , u16 head ,
                            bool map_single , u32 copied )
{
  struct device *dev ;
  struct be_eth_wrb *wrb ;
  struct be_queue_info *txq ;
  void *tmp ;
  {
  txq = & txo->q;
  dev = & (adapter->pdev)->dev;
  txq->head = head;
  queue_head_inc(txq);
  goto ldv_57851;
  ldv_57850:
  tmp = queue_head_node(txq);
  wrb = (struct be_eth_wrb *)tmp;
  unmap_tx_frag(dev, wrb, (int )map_single);
  map_single = 0;
  copied = copied - wrb->frag_len;
  queue_head_inc(txq);
  ldv_57851: ;
  if (copied != 0U) {
    goto ldv_57850;
  } else {
  }
  txq->head = head;
  return;
}
}
static u32 be_xmit_enqueue(struct be_adapter *adapter , struct be_tx_obj *txo , struct sk_buff *skb ,
                           struct be_wrb_params *wrb_params )
{
  u32 i ;
  u32 copied ;
  u32 wrb_cnt ;
  u32 tmp ;
  struct device *dev ;
  struct be_queue_info *txq ;
  bool map_single ;
  u16 head ;
  dma_addr_t busaddr ;
  int len ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  struct skb_frag_struct const *frag ;
  unsigned char *tmp___2 ;
  unsigned int tmp___3 ;
  int tmp___4 ;
  unsigned char *tmp___5 ;
  {
  copied = 0U;
  tmp = skb_wrb_cnt(skb);
  wrb_cnt = tmp;
  dev = & (adapter->pdev)->dev;
  txq = & txo->q;
  map_single = 0;
  head = txq->head;
  head = be_tx_get_wrb_hdr(txo);
  if (skb->len > skb->data_len) {
    tmp___0 = skb_headlen((struct sk_buff const *)skb);
    len = (int )tmp___0;
    busaddr = dma_map_single_attrs(dev, (void *)skb->data, (size_t )len, 1, (struct dma_attrs *)0);
    tmp___1 = dma_mapping_error(dev, busaddr);
    if (tmp___1 != 0) {
      goto dma_err;
    } else {
    }
    map_single = 1;
    be_tx_setup_wrb_frag(txo, busaddr, len);
    copied = copied + (u32 )len;
  } else {
  }
  i = 0U;
  goto ldv_57871;
  ldv_57870:
  tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp___2)->frags) + (unsigned long )i;
  tmp___3 = skb_frag_size(frag);
  len = (int )tmp___3;
  busaddr = skb_frag_dma_map(dev, frag, 0UL, (size_t )len, 1);
  tmp___4 = dma_mapping_error(dev, busaddr);
  if (tmp___4 != 0) {
    goto dma_err;
  } else {
  }
  be_tx_setup_wrb_frag(txo, busaddr, len);
  copied = copied + (u32 )len;
  i = i + 1U;
  ldv_57871:
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  if ((u32 )((struct skb_shared_info *)tmp___5)->nr_frags > i) {
    goto ldv_57870;
  } else {
  }
  be_tx_setup_wrb_hdr(adapter, txo, wrb_params, skb, (int )head);
  be_tx_stats_update(txo, skb);
  return (wrb_cnt);
  dma_err:
  adapter->drv_stats.dma_map_errors = adapter->drv_stats.dma_map_errors + 1U;
  be_xmit_restore(adapter, txo, (int )head, (int )map_single, copied);
  return (0U);
}
}
__inline static int qnq_async_evt_rcvd(struct be_adapter *adapter )
{
  {
  return ((int )adapter->flags & 128);
}
}
static struct sk_buff *be_insert_vlan_in_pkt(struct be_adapter *adapter , struct sk_buff *skb ,
                                             struct be_wrb_params *wrb_params )
{
  u16 vlan_tag ;
  long tmp ;
  int tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  vlan_tag = 0U;
  skb = skb_share_check(skb, 32U);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    return (skb);
  } else {
  }
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag = be_get_tx_vlan_tag(adapter, skb);
  } else {
  }
  tmp___0 = qnq_async_evt_rcvd(adapter);
  if (tmp___0 != 0 && (unsigned int )adapter->pvid != 0U) {
    if ((unsigned int )vlan_tag == 0U) {
      vlan_tag = adapter->pvid;
    } else {
    }
    wrb_params->features = wrb_params->features | 128U;
  } else {
  }
  if ((unsigned int )vlan_tag != 0U) {
    skb = vlan_insert_tag_set_proto(skb, 129, (int )vlan_tag);
    tmp___1 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___1 != 0L) {
      return (skb);
    } else {
    }
    skb->vlan_tci = 0U;
  } else {
  }
  if ((unsigned int )adapter->qnq_vid != 0U) {
    vlan_tag = adapter->qnq_vid;
    skb = vlan_insert_tag_set_proto(skb, 129, (int )vlan_tag);
    tmp___2 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___2 != 0L) {
      return (skb);
    } else {
    }
    wrb_params->features = wrb_params->features | 128U;
  } else {
  }
  return (skb);
}
}
static bool be_ipv6_exthdr_check(struct sk_buff *skb )
{
  struct ethhdr *eh ;
  u16 offset ;
  struct ipv6hdr *ip6h ;
  struct ipv6_opt_hdr *ehdr ;
  {
  eh = (struct ethhdr *)skb->data;
  offset = 14U;
  if ((unsigned int )eh->h_proto == 56710U) {
    ip6h = (struct ipv6hdr *)skb->data + (unsigned long )offset;
    offset = (unsigned int )offset + 40U;
    if ((unsigned int )ip6h->nexthdr != 6U && (unsigned int )ip6h->nexthdr != 17U) {
      ehdr = (struct ipv6_opt_hdr *)skb->data + (unsigned long )offset;
      if ((unsigned int )ehdr->hdrlen == 255U) {
        return (1);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static int be_vlan_tag_tx_chk(struct be_adapter *adapter , struct sk_buff *skb )
{
  {
  return ((((int )skb->vlan_tci & 4096) != 0 || (unsigned int )adapter->pvid != 0U) || (unsigned int )adapter->qnq_vid != 0U);
}
}
static int be_ipv6_tx_stall_chk(struct be_adapter *adapter , struct sk_buff *skb )
{
  bool tmp ;
  int tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    tmp = be_ipv6_exthdr_check(skb);
    if ((int )tmp) {
      tmp___0 = 1;
    } else {
      tmp___0 = 0;
    }
  } else {
    tmp___0 = 0;
  }
  return (tmp___0);
}
}
static struct sk_buff *be_lancer_xmit_workarounds(struct be_adapter *adapter , struct sk_buff *skb ,
                                                  struct be_wrb_params *wrb_params )
{
  struct vlan_ethhdr *veh ;
  unsigned int eth_hdr_len ;
  struct iphdr *ip ;
  __u16 tmp ;
  __u16 tmp___0 ;
  bool tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  long tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  veh = (struct vlan_ethhdr *)skb->data;
  tmp = __fswab16((int )skb->protocol);
  eth_hdr_len = (unsigned int )tmp == 33024U ? 18U : 14U;
  if (skb->len <= 60U && (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || ((int )skb->vlan_tci & 4096) != 0)) {
    tmp___1 = is_ipv4_pkt(skb);
    if ((int )tmp___1) {
      ip = ip_hdr((struct sk_buff const *)skb);
      tmp___0 = __fswab16((int )ip->tot_len);
      pskb_trim(skb, (unsigned int )tmp___0 + eth_hdr_len);
    } else {
    }
  } else {
  }
  if ((unsigned int )adapter->pvid != 0U && (unsigned int )veh->h_vlan_proto == 129U) {
    wrb_params->features = wrb_params->features | 128U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)skb + 145UL) != 6U && ((int )skb->vlan_tci & 4096) != 0) {
    skb = be_insert_vlan_in_pkt(adapter, skb, wrb_params);
    tmp___2 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                               0L);
    if (tmp___2 != 0L) {
      goto err;
    } else {
    }
  } else {
  }
  tmp___3 = be_ipv6_tx_stall_chk(adapter, skb);
  if (tmp___3 != 0 && ((unsigned int )adapter->pvid != 0U || (unsigned int )adapter->qnq_vid != 0U)) {
    tmp___4 = qnq_async_evt_rcvd(adapter);
    if (tmp___4 == 0) {
      tmp___5 = 1;
    } else {
      tmp___5 = 0;
    }
  } else {
    tmp___5 = 0;
  }
  tmp___6 = ldv__builtin_expect((long )tmp___5, 0L);
  if (tmp___6 != 0L) {
    goto tx_drop;
  } else {
  }
  tmp___8 = be_ipv6_tx_stall_chk(adapter, skb);
  if (tmp___8 != 0) {
    tmp___9 = be_vlan_tag_tx_chk(adapter, skb);
    if (tmp___9 != 0) {
      skb = be_insert_vlan_in_pkt(adapter, skb, wrb_params);
      tmp___7 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                                 0L);
      if (tmp___7 != 0L) {
        goto err;
      } else {
      }
    } else {
    }
  } else {
  }
  return (skb);
  tx_drop:
  dev_kfree_skb_any(skb);
  err: ;
  return ((struct sk_buff *)0);
}
}
static struct sk_buff *be_xmit_workarounds(struct be_adapter *adapter , struct sk_buff *skb ,
                                           struct be_wrb_params *wrb_params )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp___0 = ldv__builtin_expect((long )((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && skb->len <= 32U),
                             0L);
  if (tmp___0 != 0L) {
    tmp = skb_put_padto(skb, 36U);
    if (tmp != 0) {
      return ((struct sk_buff *)0);
    } else {
    }
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) || ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U)) {
    skb = be_lancer_xmit_workarounds(adapter, skb, wrb_params);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      return ((struct sk_buff *)0);
    } else {
    }
  } else {
  }
  return (skb);
}
}
static void be_xmit_flush(struct be_adapter *adapter , struct be_tx_obj *txo )
{
  struct be_queue_info *txq ;
  struct be_eth_hdr_wrb *hdr ;
  void *tmp ;
  void *tmp___0 ;
  {
  txq = & txo->q;
  tmp = queue_index_node(txq, (int )txo->last_req_hdr);
  hdr = (struct be_eth_hdr_wrb *)tmp;
  if ((hdr->dw[2] & 2U) == 0U) {
    hdr->dw[2] = hdr->dw[2] | 3U;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) && (int )txo->pend_wrb_cnt & 1) {
    tmp___0 = queue_head_node(txq);
    wrb_fill_dummy((struct be_eth_wrb *)tmp___0);
    queue_head_inc(txq);
    atomic_inc(& txq->used);
    txo->pend_wrb_cnt = (u16 )((int )txo->pend_wrb_cnt + 1);
    hdr->dw[2] = hdr->dw[2] & 4294713343U;
    hdr->dw[2] = hdr->dw[2] | (__le32 )(((int )txo->last_req_wrb_cnt + 1) << 13);
  } else {
  }
  be_txq_notify(adapter, txo, (int )txo->pend_wrb_cnt);
  txo->pend_wrb_cnt = 0U;
  return;
}
}
static bool be_send_pkt_to_bmc(struct be_adapter *adapter , struct sk_buff **skb )
{
  struct ethhdr *eh ;
  bool os2bmc ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  struct ipv6hdr *hdr ;
  struct ipv6hdr *tmp___5 ;
  u8 nexthdr ;
  struct icmp6hdr *icmp6 ;
  struct icmp6hdr *tmp___6 ;
  struct udphdr *udp ;
  struct udphdr *tmp___7 ;
  u8 tmp___8 ;
  {
  eh = (struct ethhdr *)(*skb)->data;
  os2bmc = 0;
  if (((unsigned long )adapter->flags & 4096UL) == 0UL) {
    goto done;
  } else {
  }
  tmp = is_multicast_ether_addr((u8 const *)(& eh->h_dest));
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto done;
  } else {
  }
  if (((unsigned long )adapter->bmc_filt_mask & 32768UL) == 0UL) {
    tmp___1 = is_multicast_ether_addr((u8 const *)(& eh->h_dest));
    if ((int )tmp___1) {
      tmp___2 = is_broadcast_ether_addr((u8 const *)(& eh->h_dest));
      if (tmp___2) {
        tmp___3 = 0;
      } else {
        tmp___3 = 1;
      }
      if (tmp___3) {
        os2bmc = 1;
        goto done;
      } else {
        goto _L___1;
      }
    } else {
      goto _L___1;
    }
  } else
  _L___1:
  if (((unsigned long )adapter->bmc_filt_mask & 128UL) == 0UL) {
    tmp___4 = is_broadcast_ether_addr((u8 const *)(& eh->h_dest));
    if ((int )tmp___4) {
      os2bmc = 1;
      goto done;
    } else {
      goto _L;
    }
  } else
  _L:
  if ((unsigned int )(*skb)->protocol == 1544U && (int )adapter->bmc_filt_mask & 1) {
    os2bmc = 1;
    goto done;
  } else {
  }
  if ((unsigned int )(*skb)->protocol == 56710U) {
    tmp___5 = ipv6_hdr((struct sk_buff const *)*skb);
    hdr = tmp___5;
    nexthdr = hdr->nexthdr;
    if ((unsigned int )nexthdr == 58U) {
      tmp___6 = icmp6_hdr((struct sk_buff const *)*skb);
      icmp6 = tmp___6;
      switch ((int )icmp6->icmp6_type) {
      case 134:
      os2bmc = ((unsigned long )adapter->bmc_filt_mask & 512UL) != 0UL;
      goto done;
      case 136:
      os2bmc = ((unsigned long )adapter->bmc_filt_mask & 256UL) != 0UL;
      goto done;
      default: ;
      goto ldv_57931;
      }
      ldv_57931: ;
    } else {
    }
  } else {
  }
  tmp___8 = is_udp_pkt(*skb);
  if ((unsigned int )tmp___8 != 0U) {
    tmp___7 = udp_hdr((struct sk_buff const *)*skb);
    udp = tmp___7;
    switch ((int )udp->dest) {
    case 68:
    os2bmc = ((unsigned long )adapter->bmc_filt_mask & 2UL) != 0UL;
    goto done;
    case 67:
    os2bmc = ((unsigned long )adapter->bmc_filt_mask & 4UL) != 0UL;
    goto done;
    case 137: ;
    case 138:
    os2bmc = ((unsigned long )adapter->bmc_filt_mask & 8UL) != 0UL;
    goto done;
    case 547:
    os2bmc = ((unsigned long )adapter->bmc_filt_mask & 1024UL) != 0UL;
    goto done;
    default: ;
    goto ldv_57939;
    }
    ldv_57939: ;
  } else {
  }
  done: ;
  if ((int )os2bmc) {
    *skb = be_insert_vlan_in_pkt(adapter, *skb, (struct be_wrb_params *)0);
  } else {
  }
  return (os2bmc);
}
}
static netdev_tx_t be_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u16 q_idx ;
  u16 tmp___0 ;
  struct be_tx_obj *txo ;
  struct be_wrb_params wrb_params ;
  bool flush ;
  u16 wrb_cnt ;
  long tmp___1 ;
  u32 tmp___2 ;
  long tmp___3 ;
  u32 tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  bool tmp___7 ;
  bool tmp___8 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  q_idx = tmp___0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )q_idx;
  wrb_params.features = 0U;
  wrb_params.vlan_tag = (unsigned short)0;
  wrb_params.lso_mss = (unsigned short)0;
  flush = (unsigned int )*((unsigned char *)skb + 142UL) == 0U;
  skb = be_xmit_workarounds(adapter, skb, & wrb_params);
  tmp___1 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___1 != 0L) {
    goto drop;
  } else {
  }
  be_get_wrb_params_from_skb(adapter, skb, & wrb_params);
  tmp___2 = be_xmit_enqueue(adapter, txo, skb, & wrb_params);
  wrb_cnt = (u16 )tmp___2;
  tmp___3 = ldv__builtin_expect((unsigned int )wrb_cnt == 0U, 0L);
  if (tmp___3 != 0L) {
    dev_kfree_skb_any(skb);
    goto drop;
  } else {
  }
  tmp___6 = be_send_pkt_to_bmc(adapter, & skb);
  if ((int )tmp___6) {
    wrb_params.features = wrb_params.features | 256U;
    tmp___4 = be_xmit_enqueue(adapter, txo, skb, & wrb_params);
    wrb_cnt = (u16 )tmp___4;
    tmp___5 = ldv__builtin_expect((unsigned int )wrb_cnt == 0U, 0L);
    if (tmp___5 != 0L) {
      goto drop;
    } else {
      skb_get(skb);
    }
  } else {
  }
  tmp___7 = be_is_txq_full(txo);
  if ((int )tmp___7) {
    netif_stop_subqueue(netdev, (int )q_idx);
    txo->stats.tx_stops = txo->stats.tx_stops + 1U;
  } else {
  }
  if ((int )flush) {
    be_xmit_flush(adapter, txo);
  } else {
    tmp___8 = __netif_subqueue_stopped((struct net_device const *)netdev, (int )q_idx);
    if ((int )tmp___8) {
      be_xmit_flush(adapter, txo);
    } else {
    }
  }
  return (0);
  drop:
  txo->stats.tx_drv_drops = txo->stats.tx_drv_drops + 1U;
  if ((int )flush && (unsigned int )txo->pend_wrb_cnt != 0U) {
    be_xmit_flush(adapter, txo);
  } else {
  }
  return (0);
}
}
static int be_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct device *dev ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  dev = & (adapter->pdev)->dev;
  if (new_mtu <= 255 || new_mtu > 9000) {
    _dev_info((struct device const *)dev, "MTU must be between %d and %d bytes\n",
              256, 9000);
    return (-22);
  } else {
  }
  _dev_info((struct device const *)dev, "MTU changed from %d to %d bytes\n", netdev->mtu,
            new_mtu);
  netdev->mtu = (unsigned int )new_mtu;
  return (0);
}
}
__inline static bool be_in_all_promisc(struct be_adapter *adapter )
{
  {
  return ((adapter->if_flags & 648U) == 648U);
}
}
static int be_set_vlan_promisc(struct be_adapter *adapter )
{
  struct device *dev ;
  int status ;
  {
  dev = & (adapter->pdev)->dev;
  if ((adapter->if_flags & 128U) != 0U) {
    return (0);
  } else {
  }
  status = be_cmd_rx_filter(adapter, 128U, 1U);
  if (status == 0) {
    _dev_info((struct device const *)dev, "Enabled VLAN promiscuous mode\n");
    adapter->if_flags = adapter->if_flags | 128U;
  } else {
    dev_err((struct device const *)dev, "Failed to enable VLAN promiscuous mode\n");
  }
  return (status);
}
}
static int be_clear_vlan_promisc(struct be_adapter *adapter )
{
  struct device *dev ;
  int status ;
  {
  dev = & (adapter->pdev)->dev;
  status = be_cmd_rx_filter(adapter, 128U, 0U);
  if (status == 0) {
    _dev_info((struct device const *)dev, "Disabling VLAN promiscuous mode\n");
    adapter->if_flags = adapter->if_flags & 4294967167U;
  } else {
  }
  return (status);
}
}
static int be_vid_config(struct be_adapter *adapter )
{
  struct device *dev ;
  u16 vids[64U] ;
  u16 num ;
  u16 i ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  unsigned long tmp___1 ;
  u16 tmp___2 ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  {
  dev = & (adapter->pdev)->dev;
  num = 0U;
  i = 0U;
  status = 0;
  tmp = be_in_all_promisc(adapter);
  if ((int )tmp) {
    return (0);
  } else {
  }
  if ((int )adapter->vlans_added > (int )adapter->res.max_vlans) {
    tmp___0 = be_set_vlan_promisc(adapter);
    return (tmp___0);
  } else {
  }
  tmp___1 = find_first_bit((unsigned long const *)(& adapter->vids), 4096UL);
  i = (u16 )tmp___1;
  goto ldv_57979;
  ldv_57978:
  tmp___2 = num;
  num = (u16 )((int )num + 1);
  vids[(int )tmp___2] = i;
  tmp___3 = find_next_bit((unsigned long const *)(& adapter->vids), 4096UL, (unsigned long )((int )i + 1));
  i = (u16 )tmp___3;
  ldv_57979: ;
  if ((unsigned int )i <= 4095U) {
    goto ldv_57978;
  } else {
  }
  status = be_cmd_vlan_config(adapter, (u32 )adapter->if_handle, (u16 *)(& vids),
                              (u32 )num, 0U);
  if (status != 0) {
    dev_err((struct device const *)dev, "Setting HW VLAN filtering failed\n");
    if ((status > 0 && ((unsigned int )(status >> 16) & 255U) == 171U) || (status > 0 && ((unsigned int )(status >> 16) & 255U) == 22U)) {
      tmp___4 = be_set_vlan_promisc(adapter);
      return (tmp___4);
    } else {
    }
  } else
  if ((adapter->if_flags & 128U) != 0U) {
    status = be_clear_vlan_promisc(adapter);
  } else {
  }
  return (status);
}
}
static int be_vlan_add_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && (unsigned int )vid == 0U) {
    return (status);
  } else {
  }
  tmp___0 = variable_test_bit((long )vid, (unsigned long const volatile *)(& adapter->vids));
  if (tmp___0 != 0) {
    return (status);
  } else {
  }
  set_bit((long )vid, (unsigned long volatile *)(& adapter->vids));
  adapter->vlans_added = (u16 )((int )adapter->vlans_added + 1);
  status = be_vid_config(adapter);
  if (status != 0) {
    adapter->vlans_added = (u16 )((int )adapter->vlans_added - 1);
    clear_bit((long )vid, (unsigned long volatile *)(& adapter->vids));
  } else {
  }
  return (status);
}
}
static int be_vlan_rem_vid(struct net_device *netdev , __be16 proto , u16 vid )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) && (unsigned int )vid == 0U) {
    return (0);
  } else {
  }
  clear_bit((long )vid, (unsigned long volatile *)(& adapter->vids));
  adapter->vlans_added = (u16 )((int )adapter->vlans_added - 1);
  tmp___0 = be_vid_config(adapter);
  return (tmp___0);
}
}
static void be_clear_all_promisc(struct be_adapter *adapter )
{
  {
  be_cmd_rx_filter(adapter, 648U, 0U);
  adapter->if_flags = adapter->if_flags & 4294966647U;
  return;
}
}
static void be_set_all_promisc(struct be_adapter *adapter )
{
  {
  be_cmd_rx_filter(adapter, 648U, 1U);
  adapter->if_flags = adapter->if_flags | 648U;
  return;
}
}
static void be_set_mc_promisc(struct be_adapter *adapter )
{
  int status ;
  {
  if ((adapter->if_flags & 512U) != 0U) {
    return;
  } else {
  }
  status = be_cmd_rx_filter(adapter, 512U, 1U);
  if (status == 0) {
    adapter->if_flags = adapter->if_flags | 512U;
  } else {
  }
  return;
}
}
static void be_set_mc_list(struct be_adapter *adapter )
{
  int status ;
  {
  status = be_cmd_rx_filter(adapter, 4096U, 1U);
  if (status == 0) {
    adapter->if_flags = adapter->if_flags & 4294966783U;
  } else {
    be_set_mc_promisc(adapter);
  }
  return;
}
}
static void be_set_uc_list(struct be_adapter *adapter )
{
  struct netdev_hw_addr *ha ;
  int i ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  i = 1;
  goto ldv_58014;
  ldv_58013:
  be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )*(adapter->pmac_id + (unsigned long )i),
                  0U);
  adapter->uc_macs = adapter->uc_macs - 1U;
  i = i + 1;
  ldv_58014: ;
  if (adapter->uc_macs != 0U) {
    goto ldv_58013;
  } else {
  }
  if ((adapter->netdev)->uc.count > (int )adapter->res.max_uc_mac) {
    be_set_all_promisc(adapter);
    return;
  } else {
  }
  __mptr = (struct list_head const *)(adapter->netdev)->uc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_58021;
  ldv_58020:
  adapter->uc_macs = adapter->uc_macs + 1U;
  be_cmd_pmac_add(adapter, (u8 *)(& ha->addr), (u32 )adapter->if_handle, adapter->pmac_id + (unsigned long )adapter->uc_macs,
                  0U);
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_58021: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& (adapter->netdev)->uc.list)) {
    goto ldv_58020;
  } else {
  }
  return;
}
}
static void be_clear_uc_list(struct be_adapter *adapter )
{
  int i ;
  {
  i = 1;
  goto ldv_58028;
  ldv_58027:
  be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )*(adapter->pmac_id + (unsigned long )i),
                  0U);
  i = i + 1;
  ldv_58028: ;
  if ((u32 )i < adapter->uc_macs + 1U) {
    goto ldv_58027;
  } else {
  }
  adapter->uc_macs = 0U;
  return;
}
}
static void be_set_rx_mode(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((netdev->flags & 256U) != 0U) {
    be_set_all_promisc(adapter);
    return;
  } else {
  }
  tmp___0 = be_in_all_promisc(adapter);
  if ((int )tmp___0) {
    be_clear_all_promisc(adapter);
    if ((unsigned int )adapter->vlans_added != 0U) {
      be_vid_config(adapter);
    } else {
    }
  } else {
  }
  if ((netdev->flags & 512U) != 0U || netdev->mc.count > (int )adapter->res.max_mcast_mac) {
    be_set_mc_promisc(adapter);
    return;
  } else {
  }
  if ((u32 )netdev->uc.count != adapter->uc_macs) {
    be_set_uc_list(adapter);
  } else {
  }
  be_set_mc_list(adapter);
  return;
}
}
static int be_set_vf_mac(struct net_device *netdev , int vf , u8 *mac )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  tmp___0 = is_valid_ether_addr((u8 const *)mac);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1 || (int )adapter->num_vfs <= vf) {
    return (-22);
  } else {
  }
  tmp___2 = ether_addr_equal((u8 const *)mac, (u8 const *)(& vf_cfg->mac_addr));
  if ((int )tmp___2) {
    return (0);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    be_cmd_pmac_del(adapter, (u32 )vf_cfg->if_handle, vf_cfg->pmac_id, (u32 )(vf + 1));
    status = be_cmd_pmac_add(adapter, mac, (u32 )vf_cfg->if_handle, (u32 *)(& vf_cfg->pmac_id),
                             (u32 )(vf + 1));
  } else {
    status = be_cmd_set_mac(adapter, mac, vf_cfg->if_handle, (u32 )(vf + 1));
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "MAC %pM set on VF %d Failed: %#x",
            mac, vf, status);
    return (status <= 0 ? status : -5);
  } else {
  }
  ether_addr_copy((u8 *)(& vf_cfg->mac_addr), (u8 const *)mac);
  return (0);
}
}
static int be_get_vf_config(struct net_device *netdev , int vf , struct ifla_vf_info *vi )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  if ((int )adapter->num_vfs <= vf) {
    return (-22);
  } else {
  }
  vi->vf = (__u32 )vf;
  vi->max_tx_rate = vf_cfg->tx_rate;
  vi->min_tx_rate = 0U;
  vi->vlan = (__u32 )vf_cfg->vlan_tag & 4095U;
  vi->qos = (__u32 )((int )vf_cfg->vlan_tag >> 13);
  memcpy((void *)(& vi->mac), (void const *)(& vf_cfg->mac_addr), 6UL);
  vi->linkstate = (adapter->vf_cfg + (unsigned long )vf)->plink_tracking;
  vi->spoofchk = (__u32 )(adapter->vf_cfg + (unsigned long )vf)->spoofchk;
  return (0);
}
}
static int be_set_vf_tvt(struct be_adapter *adapter , int vf , u16 vlan )
{
  struct be_vf_cfg *vf_cfg ;
  u16 vids[64U] ;
  int vf_if_id ;
  int status ;
  {
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  vf_if_id = vf_cfg->if_handle;
  status = be_cmd_set_hsw_config(adapter, (int )vlan, (u32 )(vf + 1), (int )((u16 )vf_if_id),
                                 0, 0);
  if (status != 0) {
    return (status);
  } else {
  }
  vids[0] = 0U;
  status = be_cmd_vlan_config(adapter, (u32 )vf_if_id, (u16 *)(& vids), 1U, (u32 )(vf + 1));
  if (status == 0) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "Cleared guest VLANs on VF%d",
              vf);
  } else {
  }
  if ((vf_cfg->privileges & 64U) != 0U) {
    status = be_cmd_set_fn_privileges(adapter, vf_cfg->privileges & 4294967231U, (u32 )(vf + 1));
    if (status == 0) {
      vf_cfg->privileges = vf_cfg->privileges & 4294967231U;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int be_clear_vf_tvt(struct be_adapter *adapter , int vf )
{
  struct be_vf_cfg *vf_cfg ;
  struct device *dev ;
  int status ;
  {
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  dev = & (adapter->pdev)->dev;
  status = be_cmd_set_hsw_config(adapter, 65535, (u32 )(vf + 1), (int )((u16 )vf_cfg->if_handle),
                                 0, 0);
  if (status != 0) {
    return (status);
  } else {
  }
  if ((vf_cfg->privileges & 64U) == 0U) {
    status = be_cmd_set_fn_privileges(adapter, vf_cfg->privileges | 64U, (u32 )(vf + 1));
    if (status == 0) {
      vf_cfg->privileges = vf_cfg->privileges | 64U;
      _dev_info((struct device const *)dev, "VF%d: FILTMGMT priv enabled", vf);
    } else {
    }
  } else {
  }
  _dev_info((struct device const *)dev, "Disable/re-enable i/f in VM to clear Transparent VLAN tag");
  return (0);
}
}
static int be_set_vf_vlan(struct net_device *netdev , int vf , u16 vlan , u8 qos )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  if (((int )adapter->num_vfs <= vf || (unsigned int )vlan > 4095U) || (unsigned int )qos > 7U) {
    return (-22);
  } else {
  }
  if ((unsigned int )vlan != 0U || (unsigned int )qos != 0U) {
    vlan = (u16 )((int )((short )((int )qos << 13)) | (int )((short )vlan));
    status = be_set_vf_tvt(adapter, vf, (int )vlan);
  } else {
    status = be_clear_vf_tvt(adapter, vf);
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "VLAN %d config on VF %d failed : %#x\n",
            (int )vlan, vf, status);
    return (status <= 0 ? status : -5);
  } else {
  }
  vf_cfg->vlan_tag = vlan;
  return (0);
}
}
static int be_set_vf_tx_rate(struct net_device *netdev , int vf , int min_tx_rate ,
                             int max_tx_rate )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct device *dev ;
  int percent_rate ;
  int status ;
  u16 link_speed ;
  u8 link_status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  dev = & (adapter->pdev)->dev;
  status = 0;
  link_speed = 0U;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  if ((int )adapter->num_vfs <= vf) {
    return (-22);
  } else {
  }
  if (min_tx_rate != 0) {
    return (-22);
  } else {
  }
  if (max_tx_rate == 0) {
    goto config_qos;
  } else {
  }
  status = be_cmd_link_status_query(adapter, & link_speed, & link_status, 0U);
  if (status != 0) {
    goto err;
  } else {
  }
  if ((unsigned int )link_status == 0U) {
    dev_err((struct device const *)dev, "TX-rate setting not allowed when link is down\n");
    status = -100;
    goto err;
  } else {
  }
  if (max_tx_rate <= 99 || (int )link_speed < max_tx_rate) {
    dev_err((struct device const *)dev, "TX-rate must be between 100 and %d Mbps\n",
            (int )link_speed);
    status = -22;
    goto err;
  } else {
  }
  percent_rate = (int )((unsigned int )link_speed / 100U);
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && max_tx_rate % percent_rate != 0) {
    dev_err((struct device const *)dev, "TX-rate must be a multiple of %d Mbps\n",
            percent_rate);
    status = -22;
    goto err;
  } else {
  }
  config_qos:
  status = be_cmd_config_qos(adapter, (u32 )max_tx_rate, (int )link_speed, (int )((unsigned int )((u8 )vf) + 1U));
  if (status != 0) {
    goto err;
  } else {
  }
  (adapter->vf_cfg + (unsigned long )vf)->tx_rate = (u32 )max_tx_rate;
  return (0);
  err:
  dev_err((struct device const *)dev, "TX-rate setting of %dMbps on VF%d failed\n",
          max_tx_rate, vf);
  return (status <= 0 ? status : -5);
}
}
static int be_set_vf_link_state(struct net_device *netdev , int vf , int link_state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  if ((int )adapter->num_vfs <= vf) {
    return (-22);
  } else {
  }
  status = be_cmd_set_logical_link_config(adapter, link_state, (int )((unsigned int )((u8 )vf) + 1U));
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Link state change on VF %d failed: %#x\n",
            vf, status);
    return (status <= 0 ? status : -5);
  } else {
  }
  (adapter->vf_cfg + (unsigned long )vf)->plink_tracking = (u32 )link_state;
  return (0);
}
}
static int be_set_vf_spoofchk(struct net_device *netdev , int vf , bool enable )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_vf_cfg *vf_cfg ;
  u8 spoofchk ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-1);
  } else {
  }
  if ((int )adapter->num_vfs <= vf) {
    return (-22);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    return (-95);
  } else {
  }
  if ((int )vf_cfg->spoofchk == (int )enable) {
    return (0);
  } else {
  }
  spoofchk = (int )enable ? 2U : 3U;
  status = be_cmd_set_hsw_config(adapter, 0, (u32 )(vf + 1), (int )((u16 )vf_cfg->if_handle),
                                 0, (int )spoofchk);
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Spoofchk change on VF %d failed: %#x\n",
            vf, status);
    return (status <= 0 ? status : -5);
  } else {
  }
  vf_cfg->spoofchk = enable;
  return (0);
}
}
static void be_aic_update(struct be_aic_obj *aic , u64 rx_pkts , u64 tx_pkts , ulong now )
{
  {
  aic->rx_pkts_prev = rx_pkts;
  aic->tx_reqs_prev = tx_pkts;
  aic->jiffies = now;
  return;
}
}
static int be_get_new_eqd(struct be_eq_obj *eqo )
{
  struct be_adapter *adapter ;
  int eqd ;
  int start ;
  struct be_aic_obj *aic ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u64 rx_pkts ;
  u64 tx_pkts ;
  ulong now ;
  u32 pps ;
  u32 delta ;
  int i ;
  unsigned int tmp ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __max1 ;
  u32 __max2 ;
  {
  adapter = eqo->adapter;
  rx_pkts = 0ULL;
  tx_pkts = 0ULL;
  aic = (struct be_aic_obj *)(& adapter->aic_obj) + (unsigned long )eqo->idx;
  if (! aic->enable) {
    if (aic->jiffies != 0UL) {
      aic->jiffies = 0UL;
    } else {
    }
    eqd = (int )aic->et_eqd;
    return (eqd);
  } else {
  }
  i = (int )eqo->idx;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58128;
  ldv_58127: ;
  ldv_58125:
  tmp = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& rxo->stats.sync));
  start = (int )tmp;
  rx_pkts = rxo->stats.rx_pkts + rx_pkts;
  tmp___0 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& rxo->stats.sync),
                                      (unsigned int )start);
  if ((int )tmp___0) {
    goto ldv_58125;
  } else {
  }
  i = (int )adapter->num_evt_qs + i;
  rxo = rxo + (unsigned long )adapter->num_evt_qs;
  ldv_58128: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58127;
  } else {
  }
  i = (int )eqo->idx;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58133;
  ldv_58132: ;
  ldv_58130:
  tmp___1 = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& txo->stats.sync));
  start = (int )tmp___1;
  tx_pkts = txo->stats.tx_reqs + tx_pkts;
  tmp___2 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& txo->stats.sync),
                                      (unsigned int )start);
  if ((int )tmp___2) {
    goto ldv_58130;
  } else {
  }
  i = (int )adapter->num_evt_qs + i;
  txo = txo + (unsigned long )adapter->num_evt_qs;
  ldv_58133: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58132;
  } else {
  }
  now = jiffies;
  if (((aic->jiffies == 0UL || (long )(now - aic->jiffies) < 0L) || aic->rx_pkts_prev > rx_pkts) || aic->tx_reqs_prev > tx_pkts) {
    be_aic_update(aic, rx_pkts, tx_pkts, now);
    return ((int )aic->prev_eqd);
  } else {
  }
  delta = jiffies_to_msecs(now - aic->jiffies);
  if (delta == 0U) {
    return ((int )aic->prev_eqd);
  } else {
  }
  pps = (((unsigned int )rx_pkts - (unsigned int )aic->rx_pkts_prev) * 1000U) / delta + (((unsigned int )tx_pkts - (unsigned int )aic->tx_reqs_prev) * 1000U) / delta;
  eqd = (int )(pps / 15000U << 2);
  if (eqd <= 7) {
    eqd = 0;
  } else {
  }
  __min1 = (u32 )eqd;
  __min2 = aic->max_eqd;
  eqd = (int )(__min1 < __min2 ? __min1 : __min2);
  __max1 = (u32 )eqd;
  __max2 = aic->min_eqd;
  eqd = (int )(__max1 > __max2 ? __max1 : __max2);
  be_aic_update(aic, rx_pkts, tx_pkts, now);
  return (eqd);
}
}
static u32 be_get_eq_delay_mult_enc(struct be_eq_obj *eqo )
{
  struct be_adapter *adapter ;
  struct be_aic_obj *aic ;
  ulong now ;
  int eqd ;
  u32 mult_enc ;
  unsigned int tmp ;
  {
  adapter = eqo->adapter;
  aic = (struct be_aic_obj *)(& adapter->aic_obj) + (unsigned long )eqo->idx;
  now = jiffies;
  if (! aic->enable) {
    return (0U);
  } else {
  }
  if ((long )(aic->jiffies - now) >= 0L) {
    eqd = (int )aic->prev_eqd;
  } else {
    tmp = jiffies_to_msecs(now - aic->jiffies);
    if (tmp == 0U) {
      eqd = (int )aic->prev_eqd;
    } else {
      eqd = be_get_new_eqd(eqo);
    }
  }
  if (eqd > 100) {
    mult_enc = 1U;
  } else
  if (eqd > 60) {
    mult_enc = 2U;
  } else
  if (eqd > 20) {
    mult_enc = 3U;
  } else {
    mult_enc = 0U;
  }
  aic->prev_eqd = (u32 )eqd;
  return (mult_enc);
}
}
void be_eqd_update(struct be_adapter *adapter , bool force_update )
{
  struct be_set_eqd set_eqd[32U] ;
  struct be_aic_obj *aic ;
  struct be_eq_obj *eqo ;
  int i ;
  int num ;
  int eqd ;
  {
  num = 0;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58172;
  ldv_58171:
  aic = (struct be_aic_obj *)(& adapter->aic_obj) + (unsigned long )eqo->idx;
  eqd = be_get_new_eqd(eqo);
  if ((int )force_update || (u32 )eqd != aic->prev_eqd) {
    set_eqd[num].delay_multiplier = (u32 )((eqd * 65) / 100);
    set_eqd[num].eq_id = (u32 )eqo->q.id;
    aic->prev_eqd = (u32 )eqd;
    num = num + 1;
  } else {
  }
  i = i + 1;
  eqo = eqo + 1;
  ldv_58172: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58171;
  } else {
  }
  if (num != 0) {
    be_cmd_modify_eqd(adapter, (struct be_set_eqd *)(& set_eqd), num);
  } else {
  }
  return;
}
}
static void be_rx_stats_update(struct be_rx_obj *rxo , struct be_rx_compl_info *rxcp )
{
  struct be_rx_stats *stats ;
  {
  stats = & rxo->stats;
  u64_stats_init(& stats->sync);
  stats->rx_compl = stats->rx_compl + 1U;
  stats->rx_bytes = stats->rx_bytes + (u64 )rxcp->pkt_size;
  stats->rx_pkts = stats->rx_pkts + 1ULL;
  if ((unsigned int )rxcp->pkt_type == 1U) {
    stats->rx_mcast_pkts = stats->rx_mcast_pkts + 1U;
  } else {
  }
  if ((unsigned int )rxcp->err != 0U) {
    stats->rx_compl_err = stats->rx_compl_err + 1U;
  } else {
  }
  u64_stats_init(& stats->sync);
  return;
}
}
__inline static bool csum_passed(struct be_rx_compl_info *rxcp )
{
  {
  return ((bool )(((((unsigned int )rxcp->tcpf != 0U || (unsigned int )rxcp->udpf != 0U) && (unsigned int )rxcp->l4_csum != 0U) && ((unsigned int )rxcp->ip_csum != 0U || (unsigned int )rxcp->ipv6 != 0U)) && (unsigned int )rxcp->err == 0U));
}
}
static struct be_rx_page_info *get_rx_page_info(struct be_rx_obj *rxo )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *rx_page_info ;
  struct be_queue_info *rxq ;
  u16 frag_idx ;
  long tmp ;
  {
  adapter = rxo->adapter;
  rxq = & rxo->q;
  frag_idx = rxq->tail;
  rx_page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )frag_idx;
  tmp = ldv__builtin_expect((unsigned long )rx_page_info->page == (unsigned long )((struct page *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                         "i" (1984), "i" (12UL));
    ldv_58189: ;
    goto ldv_58189;
  } else {
  }
  if ((int )rx_page_info->last_frag) {
    dma_unmap_page(& (adapter->pdev)->dev, rx_page_info->bus, (size_t )adapter->big_page_size,
                   2);
    rx_page_info->last_frag = 0;
  } else {
    dma_sync_single_for_cpu(& (adapter->pdev)->dev, rx_page_info->bus, (size_t )rx_frag_size,
                            2);
  }
  queue_tail_inc(rxq);
  atomic_dec(& rxq->used);
  return (rx_page_info);
}
}
static void be_rx_compl_discard(struct be_rx_obj *rxo , struct be_rx_compl_info *rxcp )
{
  struct be_rx_page_info *page_info ;
  u16 i ;
  u16 num_rcvd ;
  {
  num_rcvd = (u16 )rxcp->num_rcvd;
  i = 0U;
  goto ldv_58198;
  ldv_58197:
  page_info = get_rx_page_info(rxo);
  put_page(page_info->page);
  memset((void *)page_info, 0, 24UL);
  i = (u16 )((int )i + 1);
  ldv_58198: ;
  if ((int )i < (int )num_rcvd) {
    goto ldv_58197;
  } else {
  }
  return;
}
}
static void skb_fill_rx_data(struct be_rx_obj *rxo , struct sk_buff *skb , struct be_rx_compl_info *rxcp )
{
  struct be_rx_page_info *page_info ;
  u16 i ;
  u16 j ;
  u16 hdr_len ;
  u16 curr_frag_len ;
  u16 remaining ;
  u8 *start ;
  void *tmp ;
  u16 _min1 ;
  ushort _min2 ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  unsigned char *tmp___2 ;
  long tmp___3 ;
  u16 _min1___0 ;
  ushort _min2___0 ;
  unsigned char *tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  long tmp___8 ;
  {
  page_info = get_rx_page_info(rxo);
  tmp = lowmem_page_address((struct page const *)page_info->page);
  start = (u8 *)tmp + (unsigned long )page_info->page_offset;
  __builtin_prefetch((void const *)start);
  _min1 = rxcp->pkt_size;
  _min2 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  skb->len = (unsigned int )curr_frag_len;
  if ((unsigned int )curr_frag_len <= 64U) {
    memcpy((void *)skb->data, (void const *)start, (size_t )curr_frag_len);
    put_page(page_info->page);
    skb->data_len = 0U;
    skb->tail = skb->tail + (sk_buff_data_t )curr_frag_len;
  } else {
    hdr_len = 14U;
    memcpy((void *)skb->data, (void const *)start, (size_t )hdr_len);
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___0)->nr_frags = 1U;
    skb_frag_set_page(skb, 0, page_info->page);
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___1)->frags[0].page_offset = (__u32 )((int )page_info->page_offset + (int )hdr_len);
    tmp___2 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___2)->frags),
                      (unsigned int )((int )curr_frag_len - (int )hdr_len));
    skb->data_len = (unsigned int )((int )curr_frag_len - (int )hdr_len);
    skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
    skb->tail = skb->tail + (sk_buff_data_t )hdr_len;
  }
  page_info->page = (struct page *)0;
  if ((int )rxcp->pkt_size <= (int )rx_frag_size) {
    tmp___3 = ldv__builtin_expect((unsigned int )rxcp->num_rcvd != 1U, 0L);
    if (tmp___3 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                           "i" (2058), "i" (12UL));
      ldv_58215: ;
      goto ldv_58215;
    } else {
    }
    return;
  } else {
  }
  remaining = (int )rxcp->pkt_size - (int )curr_frag_len;
  i = 1U;
  j = 0U;
  goto ldv_58220;
  ldv_58219:
  page_info = get_rx_page_info(rxo);
  _min1___0 = remaining;
  _min2___0 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1___0 < (int )_min2___0 ? _min1___0 : _min2___0);
  if ((unsigned int )page_info->page_offset == 0U) {
    j = (u16 )((int )j + 1);
    skb_frag_set_page(skb, (int )j, page_info->page);
    tmp___4 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___4)->frags[(int )j].page_offset = (__u32 )page_info->page_offset;
    tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___5)->frags) + (unsigned long )j,
                      0U);
    tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___6)->nr_frags = (unsigned char )((int )((struct skb_shared_info *)tmp___6)->nr_frags + 1);
  } else {
    put_page(page_info->page);
  }
  tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
  skb_frag_size_add((skb_frag_t *)(& ((struct skb_shared_info *)tmp___7)->frags) + (unsigned long )j,
                    (int )curr_frag_len);
  skb->len = skb->len + (unsigned int )curr_frag_len;
  skb->data_len = skb->data_len + (unsigned int )curr_frag_len;
  skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
  remaining = (int )remaining - (int )curr_frag_len;
  page_info->page = (struct page *)0;
  i = (u16 )((int )i + 1);
  ldv_58220: ;
  if ((int )((unsigned short )rxcp->num_rcvd) > (int )i) {
    goto ldv_58219;
  } else {
  }
  tmp___8 = ldv__builtin_expect((unsigned int )j > 17U, 0L);
  if (tmp___8 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                         "i" (2088), "i" (12UL));
    ldv_58222: ;
    goto ldv_58222;
  } else {
  }
  return;
}
}
static void be_rx_compl_process(struct be_rx_obj *rxo , struct napi_struct *napi ,
                                struct be_rx_compl_info *rxcp )
{
  struct be_adapter *adapter ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  adapter = rxo->adapter;
  netdev = adapter->netdev;
  skb = netdev_alloc_skb_ip_align(netdev, 128U);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    rxo->stats.rx_drops_no_skbs = rxo->stats.rx_drops_no_skbs + 1U;
    be_rx_compl_discard(rxo, rxcp);
    return;
  } else {
  }
  skb_fill_rx_data(rxo, skb, rxcp);
  if ((netdev->features & 17179869184ULL) != 0ULL) {
    tmp___0 = csum_passed(rxcp);
    if ((int )tmp___0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    skb->ip_summed = 1U;
  } else {
    skb_checksum_none_assert((struct sk_buff const *)skb);
  }
  skb->protocol = eth_type_trans(skb, netdev);
  skb_record_rx_queue(skb, (int )((u16 )(((long )rxo - (long )(& adapter->rx_obj)) / 24768L)));
  if ((netdev->features & 8589934592ULL) != 0ULL) {
    skb_set_hash(skb, rxcp->rss_hash, 2);
  } else {
  }
  skb->csum_level = rxcp->tunneled;
  skb_mark_napi_id(skb, napi);
  if ((unsigned int )rxcp->vlanf != 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )rxcp->vlan_tag);
  } else {
  }
  netif_receive_skb(skb);
  return;
}
}
static void be_rx_compl_process_gro(struct be_rx_obj *rxo , struct napi_struct *napi ,
                                    struct be_rx_compl_info *rxcp )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *page_info ;
  struct sk_buff *skb ;
  u16 remaining ;
  u16 curr_frag_len ;
  u16 i ;
  u16 j ;
  u16 _min1 ;
  ushort _min2 ;
  unsigned char *tmp ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  long tmp___2 ;
  unsigned char *tmp___3 ;
  {
  adapter = rxo->adapter;
  skb = (struct sk_buff *)0;
  skb = napi_get_frags(napi);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    be_rx_compl_discard(rxo, rxcp);
    return;
  } else {
  }
  remaining = rxcp->pkt_size;
  i = 0U;
  j = 65535U;
  goto ldv_58247;
  ldv_58246:
  page_info = get_rx_page_info(rxo);
  _min1 = remaining;
  _min2 = rx_frag_size;
  curr_frag_len = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  if ((unsigned int )i == 0U || (unsigned int )page_info->page_offset == 0U) {
    j = (u16 )((int )j + 1);
    skb_frag_set_page(skb, (int )j, page_info->page);
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp)->frags[(int )j].page_offset = (__u32 )page_info->page_offset;
    tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
    skb_frag_size_set((skb_frag_t *)(& ((struct skb_shared_info *)tmp___0)->frags) + (unsigned long )j,
                      0U);
  } else {
    put_page(page_info->page);
  }
  tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
  skb_frag_size_add((skb_frag_t *)(& ((struct skb_shared_info *)tmp___1)->frags) + (unsigned long )j,
                    (int )curr_frag_len);
  skb->truesize = skb->truesize + (unsigned int )rx_frag_size;
  remaining = (int )remaining - (int )curr_frag_len;
  memset((void *)page_info, 0, 24UL);
  i = (u16 )((int )i + 1);
  ldv_58247: ;
  if ((int )((unsigned short )rxcp->num_rcvd) > (int )i) {
    goto ldv_58246;
  } else {
  }
  tmp___2 = ldv__builtin_expect((unsigned int )j > 17U, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                         "i" (2166), "i" (12UL));
    ldv_58249: ;
    goto ldv_58249;
  } else {
  }
  tmp___3 = skb_end_pointer((struct sk_buff const *)skb);
  ((struct skb_shared_info *)tmp___3)->nr_frags = (unsigned int )((unsigned char )j) + 1U;
  skb->len = (unsigned int )rxcp->pkt_size;
  skb->data_len = (unsigned int )rxcp->pkt_size;
  skb->ip_summed = 1U;
  skb_record_rx_queue(skb, (int )((u16 )(((long )rxo - (long )(& adapter->rx_obj)) / 24768L)));
  if (((adapter->netdev)->features & 8589934592ULL) != 0ULL) {
    skb_set_hash(skb, rxcp->rss_hash, 2);
  } else {
  }
  skb->csum_level = rxcp->tunneled;
  skb_mark_napi_id(skb, napi);
  if ((unsigned int )rxcp->vlanf != 0U) {
    __vlan_hwaccel_put_tag(skb, 129, (int )rxcp->vlan_tag);
  } else {
  }
  napi_gro_frags(napi);
  return;
}
}
static void be_parse_rx_compl_v1(struct be_eth_rx_compl *compl , struct be_rx_compl_info *rxcp )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  {
  tmp = amap_mask(14U);
  tmp___0 = amap_get((void *)compl, 0U, tmp, 16U);
  rxcp->pkt_size = (u16 )tmp___0;
  tmp___1 = amap_mask(1U);
  tmp___2 = amap_get((void *)compl, 0U, tmp___1, 30U);
  rxcp->vlanf = (u8 )tmp___2;
  tmp___3 = amap_mask(1U);
  tmp___4 = amap_get((void *)compl, 1U, tmp___3, 0U);
  rxcp->err = (u8 )tmp___4;
  tmp___5 = amap_mask(1U);
  tmp___6 = amap_get((void *)compl, 1U, tmp___5, 3U);
  rxcp->tcpf = (u8 )tmp___6;
  tmp___7 = amap_mask(1U);
  tmp___8 = amap_get((void *)compl, 1U, tmp___7, 4U);
  rxcp->udpf = (u8 )tmp___8;
  tmp___9 = amap_mask(1U);
  tmp___10 = amap_get((void *)compl, 1U, tmp___9, 5U);
  rxcp->ip_csum = (u8 )tmp___10;
  tmp___11 = amap_mask(1U);
  tmp___12 = amap_get((void *)compl, 1U, tmp___11, 6U);
  rxcp->l4_csum = (u8 )tmp___12;
  tmp___13 = amap_mask(1U);
  tmp___14 = amap_get((void *)compl, 1U, tmp___13, 7U);
  rxcp->ipv6 = (u8 )tmp___14;
  tmp___15 = amap_mask(3U);
  tmp___16 = amap_get((void *)compl, 1U, tmp___15, 29U);
  rxcp->num_rcvd = (u8 )tmp___16;
  tmp___17 = amap_mask(2U);
  tmp___18 = amap_get((void *)compl, 2U, tmp___17, 1U);
  rxcp->pkt_type = (u8 )tmp___18;
  tmp___19 = amap_mask(32U);
  rxcp->rss_hash = amap_get((void *)compl, 3U, tmp___19, 0U);
  if ((unsigned int )rxcp->vlanf != 0U) {
    tmp___20 = amap_mask(1U);
    tmp___21 = amap_get((void *)compl, 2U, tmp___20, 3U);
    rxcp->qnq = (u8 )tmp___21;
    tmp___22 = amap_mask(16U);
    tmp___23 = amap_get((void *)compl, 0U, tmp___22, 0U);
    rxcp->vlan_tag = (u16 )tmp___23;
  } else {
  }
  tmp___24 = amap_mask(2U);
  tmp___25 = amap_get((void *)compl, 2U, tmp___24, 5U);
  rxcp->port = (u16 )tmp___25;
  tmp___26 = amap_mask(1U);
  tmp___27 = amap_get((void *)compl, 2U, tmp___26, 30U);
  rxcp->tunneled = (u8 )tmp___27;
  return;
}
}
static void be_parse_rx_compl_v0(struct be_eth_rx_compl *compl , struct be_rx_compl_info *rxcp )
{
  u32 tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  u32 tmp___15 ;
  u32 tmp___16 ;
  u32 tmp___17 ;
  u32 tmp___18 ;
  u32 tmp___19 ;
  u32 tmp___20 ;
  u32 tmp___21 ;
  u32 tmp___22 ;
  u32 tmp___23 ;
  u32 tmp___24 ;
  u32 tmp___25 ;
  u32 tmp___26 ;
  u32 tmp___27 ;
  {
  tmp = amap_mask(14U);
  tmp___0 = amap_get((void *)compl, 0U, tmp, 16U);
  rxcp->pkt_size = (u16 )tmp___0;
  tmp___1 = amap_mask(1U);
  tmp___2 = amap_get((void *)compl, 1U, tmp___1, 14U);
  rxcp->vlanf = (u8 )tmp___2;
  tmp___3 = amap_mask(1U);
  tmp___4 = amap_get((void *)compl, 1U, tmp___3, 0U);
  rxcp->err = (u8 )tmp___4;
  tmp___5 = amap_mask(1U);
  tmp___6 = amap_get((void *)compl, 1U, tmp___5, 3U);
  rxcp->tcpf = (u8 )tmp___6;
  tmp___7 = amap_mask(1U);
  tmp___8 = amap_get((void *)compl, 1U, tmp___7, 4U);
  rxcp->udpf = (u8 )tmp___8;
  tmp___9 = amap_mask(1U);
  tmp___10 = amap_get((void *)compl, 1U, tmp___9, 5U);
  rxcp->ip_csum = (u8 )tmp___10;
  tmp___11 = amap_mask(1U);
  tmp___12 = amap_get((void *)compl, 1U, tmp___11, 6U);
  rxcp->l4_csum = (u8 )tmp___12;
  tmp___13 = amap_mask(1U);
  tmp___14 = amap_get((void *)compl, 1U, tmp___13, 7U);
  rxcp->ipv6 = (u8 )tmp___14;
  tmp___15 = amap_mask(3U);
  tmp___16 = amap_get((void *)compl, 1U, tmp___15, 29U);
  rxcp->num_rcvd = (u8 )tmp___16;
  tmp___17 = amap_mask(2U);
  tmp___18 = amap_get((void *)compl, 2U, tmp___17, 1U);
  rxcp->pkt_type = (u8 )tmp___18;
  tmp___19 = amap_mask(32U);
  rxcp->rss_hash = amap_get((void *)compl, 3U, tmp___19, 0U);
  if ((unsigned int )rxcp->vlanf != 0U) {
    tmp___20 = amap_mask(1U);
    tmp___21 = amap_get((void *)compl, 2U, tmp___20, 3U);
    rxcp->qnq = (u8 )tmp___21;
    tmp___22 = amap_mask(16U);
    tmp___23 = amap_get((void *)compl, 0U, tmp___22, 0U);
    rxcp->vlan_tag = (u16 )tmp___23;
  } else {
  }
  tmp___24 = amap_mask(1U);
  tmp___25 = amap_get((void *)compl, 0U, tmp___24, 30U);
  rxcp->port = (u16 )tmp___25;
  tmp___26 = amap_mask(1U);
  tmp___27 = amap_get((void *)compl, 1U, tmp___26, 15U);
  rxcp->ip_frag = (u8 )tmp___27;
  return;
}
}
static struct be_rx_compl_info *be_rx_compl_get(struct be_rx_obj *rxo )
{
  struct be_eth_rx_compl *compl ;
  void *tmp ;
  struct be_rx_compl_info *rxcp ;
  struct be_adapter *adapter ;
  __u16 tmp___0 ;
  int tmp___1 ;
  {
  tmp = queue_tail_node(& rxo->cq);
  compl = (struct be_eth_rx_compl *)tmp;
  rxcp = & rxo->rxcp;
  adapter = rxo->adapter;
  if (compl->dw[2UL] == 0U) {
    return ((struct be_rx_compl_info *)0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  swap_dws((void *)compl, 16);
  if ((int )adapter->be3_native) {
    be_parse_rx_compl_v1(compl, rxcp);
  } else {
    be_parse_rx_compl_v0(compl, rxcp);
  }
  if ((unsigned int )rxcp->ip_frag != 0U) {
    rxcp->l4_csum = 0U;
  } else {
  }
  if ((unsigned int )rxcp->vlanf != 0U) {
    if ((adapter->function_mode & 1024U) != 0U && (unsigned int )rxcp->qnq == 0U) {
      rxcp->vlanf = 0U;
    } else {
    }
    if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
      tmp___0 = __fswab16((int )rxcp->vlan_tag);
      rxcp->vlan_tag = tmp___0;
    } else {
    }
    if ((int )adapter->pvid == ((int )rxcp->vlan_tag & 4095)) {
      tmp___1 = variable_test_bit((long )rxcp->vlan_tag, (unsigned long const volatile *)(& adapter->vids));
      if (tmp___1 == 0) {
        rxcp->vlanf = 0U;
      } else {
      }
    } else {
    }
  } else {
  }
  compl->dw[2UL] = 0U;
  queue_tail_inc(& rxo->cq);
  return (rxcp);
}
}
__inline static struct page *be_alloc_pages(u32 size , gfp_t gfp )
{
  u32 order ;
  int tmp ;
  struct page *tmp___0 ;
  {
  tmp = __get_order((unsigned long )size);
  order = (u32 )tmp;
  if (order != 0U) {
    gfp = gfp | 16384U;
  } else {
  }
  tmp___0 = alloc_pages(gfp, order);
  return (tmp___0);
}
}
static void be_post_rx_frags(struct be_rx_obj *rxo , gfp_t gfp , u32 frags_needed )
{
  struct be_adapter *adapter ;
  struct be_rx_page_info *page_info ;
  struct be_rx_page_info *prev_page_info ;
  struct be_queue_info *rxq ;
  struct page *pagep ;
  struct device *dev ;
  struct be_eth_rx_d *rxd ;
  u64 page_dmaaddr ;
  u64 frag_dmaaddr ;
  u32 posted ;
  u32 page_offset ;
  u32 notify ;
  long tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  unsigned int _min1 ;
  u32 _min2 ;
  int tmp___2 ;
  {
  adapter = rxo->adapter;
  page_info = (struct be_rx_page_info *)0;
  prev_page_info = (struct be_rx_page_info *)0;
  rxq = & rxo->q;
  pagep = (struct page *)0;
  dev = & (adapter->pdev)->dev;
  page_dmaaddr = 0ULL;
  page_offset = 0U;
  notify = 0U;
  page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )rxq->head;
  posted = 0U;
  goto ldv_58288;
  ldv_58287: ;
  if ((unsigned long )pagep == (unsigned long )((struct page *)0)) {
    pagep = be_alloc_pages(adapter->big_page_size, gfp);
    tmp = ldv__builtin_expect((unsigned long )pagep == (unsigned long )((struct page *)0),
                           0L);
    if (tmp != 0L) {
      rxo->stats.rx_post_fail = rxo->stats.rx_post_fail + 1U;
      goto ldv_58286;
    } else {
    }
    page_dmaaddr = dma_map_page(dev, pagep, 0UL, (size_t )adapter->big_page_size,
                                2);
    tmp___0 = dma_mapping_error(dev, page_dmaaddr);
    if (tmp___0 != 0) {
      put_page(pagep);
      pagep = (struct page *)0;
      adapter->drv_stats.dma_map_errors = adapter->drv_stats.dma_map_errors + 1U;
      goto ldv_58286;
    } else {
    }
    page_offset = 0U;
  } else {
    get_page(pagep);
    page_offset = (u32 )rx_frag_size + page_offset;
  }
  page_info->page_offset = (u16 )page_offset;
  page_info->page = pagep;
  tmp___1 = queue_head_node(rxq);
  rxd = (struct be_eth_rx_d *)tmp___1;
  frag_dmaaddr = (u64 )page_info->page_offset + page_dmaaddr;
  rxd->fragpa_lo = (unsigned int )frag_dmaaddr;
  rxd->fragpa_hi = (unsigned int )(frag_dmaaddr >> 32ULL);
  if (((u32 )rx_frag_size + page_offset) + (u32 )rx_frag_size > adapter->big_page_size) {
    pagep = (struct page *)0;
    page_info->last_frag = 1;
    page_info->bus = page_dmaaddr;
  } else {
    page_info->bus = frag_dmaaddr;
  }
  prev_page_info = page_info;
  queue_head_inc(rxq);
  page_info = (struct be_rx_page_info *)(& rxo->page_info_tbl) + (unsigned long )rxq->head;
  posted = posted + 1U;
  ldv_58288: ;
  if (posted < frags_needed && (unsigned long )page_info->page == (unsigned long )((struct page *)0)) {
    goto ldv_58287;
  } else {
  }
  ldv_58286: ;
  if ((unsigned long )pagep != (unsigned long )((struct page *)0)) {
    prev_page_info->last_frag = 1;
    prev_page_info->bus = page_dmaaddr;
  } else {
  }
  if (posted != 0U) {
    atomic_add((int )posted, & rxq->used);
    if ((int )rxo->rx_post_starved) {
      rxo->rx_post_starved = 0;
    } else {
    }
    ldv_58292:
    _min1 = 255U;
    _min2 = posted;
    notify = _min1 < _min2 ? _min1 : _min2;
    be_rxq_notify(adapter, (int )rxq->id, (int )((u16 )notify));
    posted = posted - notify;
    if (posted != 0U) {
      goto ldv_58292;
    } else {
    }
  } else {
    tmp___2 = atomic_read((atomic_t const *)(& rxq->used));
    if (tmp___2 == 0) {
      rxo->rx_post_starved = 1;
    } else {
    }
  }
  return;
}
}
static struct be_tx_compl_info *be_tx_compl_get(struct be_tx_obj *txo )
{
  struct be_queue_info *tx_cq ;
  struct be_tx_compl_info *txcp ;
  struct be_eth_tx_compl *compl ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  tx_cq = & txo->cq;
  txcp = & txo->txcp;
  tmp = queue_tail_node(tx_cq);
  compl = (struct be_eth_tx_compl *)tmp;
  if (compl->dw[3UL] == 0U) {
    return ((struct be_tx_compl_info *)0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  swap_dws((void *)compl, 16);
  tmp___0 = amap_mask(4U);
  tmp___1 = amap_get((void *)compl, 0U, tmp___0, 28U);
  txcp->status = (u8 )tmp___1;
  tmp___2 = amap_mask(16U);
  tmp___3 = amap_get((void *)compl, 0U, tmp___2, 0U);
  txcp->end_index = (u16 )tmp___3;
  compl->dw[3UL] = 0U;
  queue_tail_inc(tx_cq);
  return (txcp);
}
}
static u16 be_tx_compl_process(struct be_adapter *adapter , struct be_tx_obj *txo ,
                               u16 last_index )
{
  struct sk_buff **sent_skbs ;
  struct be_queue_info *txq ;
  u16 frag_index ;
  u16 num_wrbs ;
  struct sk_buff *skb ;
  bool unmap_skb_hdr ;
  struct be_eth_wrb *wrb ;
  void *tmp ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  {
  sent_skbs = (struct sk_buff **)(& txo->sent_skb_list);
  txq = & txo->q;
  num_wrbs = 0U;
  skb = (struct sk_buff *)0;
  unmap_skb_hdr = 0;
  ldv_58312: ;
  if ((unsigned long )*(sent_skbs + (unsigned long )txq->tail) != (unsigned long )((struct sk_buff *)0)) {
    if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
      dev_consume_skb_any(skb);
    } else {
    }
    skb = *(sent_skbs + (unsigned long )txq->tail);
    *(sent_skbs + (unsigned long )txq->tail) = (struct sk_buff *)0;
    queue_tail_inc(txq);
    num_wrbs = (u16 )((int )num_wrbs + 1);
    unmap_skb_hdr = 1;
  } else {
  }
  tmp = queue_tail_node(txq);
  wrb = (struct be_eth_wrb *)tmp;
  frag_index = txq->tail;
  if ((int )unmap_skb_hdr) {
    tmp___0 = skb_headlen((struct sk_buff const *)skb);
    if (tmp___0 != 0U) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  unmap_tx_frag(& (adapter->pdev)->dev, wrb, (int )((bool )tmp___1));
  unmap_skb_hdr = 0;
  queue_tail_inc(txq);
  num_wrbs = (u16 )((int )num_wrbs + 1);
  if ((int )frag_index != (int )last_index) {
    goto ldv_58312;
  } else {
  }
  dev_consume_skb_any(skb);
  return (num_wrbs);
}
}
__inline static int events_get(struct be_eq_obj *eqo )
{
  struct be_eq_entry *eqe ;
  int num ;
  void *tmp ;
  {
  num = 0;
  ldv_58320:
  tmp = queue_tail_node(& eqo->q);
  eqe = (struct be_eq_entry *)tmp;
  if (eqe->evt == 0U) {
    goto ldv_58319;
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  eqe->evt = 0U;
  num = num + 1;
  queue_tail_inc(& eqo->q);
  goto ldv_58320;
  ldv_58319: ;
  return (num);
}
}
static void be_eq_clean(struct be_eq_obj *eqo )
{
  int num ;
  int tmp ;
  {
  tmp = events_get(eqo);
  num = tmp;
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, (int )((u16 )num), 0U);
  return;
}
}
static void be_rx_cq_clean(struct be_rx_obj *rxo )
{
  struct be_rx_page_info *page_info ;
  struct be_queue_info *rxq ;
  struct be_queue_info *rx_cq ;
  struct be_rx_compl_info *rxcp ;
  struct be_adapter *adapter ;
  int flush_wait ;
  int tmp ;
  u8 tmp___0 ;
  unsigned long __ms ;
  unsigned long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  {
  rxq = & rxo->q;
  rx_cq = & rxo->cq;
  adapter = rxo->adapter;
  flush_wait = 0;
  ldv_58339:
  rxcp = be_rx_compl_get(rxo);
  if ((unsigned long )rxcp == (unsigned long )((struct be_rx_compl_info *)0)) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      goto ldv_58334;
    } else {
    }
    tmp = flush_wait;
    flush_wait = flush_wait + 1;
    if (tmp > 50) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "did not receive flush compl\n");
      goto ldv_58334;
    } else {
      tmp___0 = be_check_error(adapter, 3U);
      if ((unsigned int )tmp___0 != 0U) {
        dev_warn((struct device const *)(& (adapter->pdev)->dev), "did not receive flush compl\n");
        goto ldv_58334;
      } else {
      }
    }
    be_cq_notify(adapter, (int )rx_cq->id, 1, 0);
    if (1) {
      __const_udelay(4295000UL);
    } else {
      __ms = 1UL;
      goto ldv_58337;
      ldv_58336:
      __const_udelay(4295000UL);
      ldv_58337:
      tmp___1 = __ms;
      __ms = __ms - 1UL;
      if (tmp___1 != 0UL) {
        goto ldv_58336;
      } else {
      }
    }
  } else {
    be_rx_compl_discard(rxo, rxcp);
    be_cq_notify(adapter, (int )rx_cq->id, 0, 1);
    if ((unsigned int )rxcp->num_rcvd == 0U) {
      goto ldv_58334;
    } else {
    }
  }
  goto ldv_58339;
  ldv_58334:
  be_cq_notify(adapter, (int )rx_cq->id, 0, 0);
  goto ldv_58341;
  ldv_58340:
  page_info = get_rx_page_info(rxo);
  put_page(page_info->page);
  memset((void *)page_info, 0, 24UL);
  ldv_58341:
  tmp___2 = atomic_read((atomic_t const *)(& rxq->used));
  if (tmp___2 > 0) {
    goto ldv_58340;
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& rxq->used));
  tmp___4 = ldv__builtin_expect(tmp___3 != 0, 0L);
  if (tmp___4 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                         "i" (2497), "i" (12UL));
    ldv_58343: ;
    goto ldv_58343;
  } else {
  }
  rxq->tail = 0U;
  rxq->head = 0U;
  return;
}
}
static void be_tx_compl_clean(struct be_adapter *adapter )
{
  u16 end_idx ;
  u16 notified_idx ;
  u16 cmpl ;
  u16 timeo ;
  u16 num_wrbs ;
  struct device *dev ;
  struct be_tx_compl_info *txcp ;
  struct be_queue_info *txq ;
  struct be_tx_obj *txo ;
  int i ;
  int pending_txqs ;
  u16 tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  u8 tmp___2 ;
  unsigned long __ms ;
  unsigned long tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  cmpl = 0U;
  timeo = 0U;
  num_wrbs = 0U;
  dev = & (adapter->pdev)->dev;
  ldv_58369:
  pending_txqs = (int )adapter->num_tx_qs;
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58362;
  ldv_58361:
  cmpl = 0U;
  num_wrbs = 0U;
  txq = & txo->q;
  goto ldv_58359;
  ldv_58358:
  tmp = be_tx_compl_process(adapter, txo, (int )txcp->end_index);
  num_wrbs = (int )tmp + (int )num_wrbs;
  cmpl = (u16 )((int )cmpl + 1);
  ldv_58359:
  txcp = be_tx_compl_get(txo);
  if ((unsigned long )txcp != (unsigned long )((struct be_tx_compl_info *)0)) {
    goto ldv_58358;
  } else {
  }
  if ((unsigned int )cmpl != 0U) {
    be_cq_notify(adapter, (int )txo->cq.id, 0, (int )cmpl);
    atomic_sub((int )num_wrbs, & txq->used);
    timeo = 0U;
  } else {
  }
  tmp___0 = be_is_tx_compl_pending(txo);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    pending_txqs = pending_txqs - 1;
  } else {
  }
  i = i + 1;
  txo = txo + 1;
  ldv_58362: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58361;
  } else {
  }
  if (pending_txqs == 0) {
    goto ldv_58364;
  } else {
    timeo = (u16 )((int )timeo + 1);
    if ((unsigned int )timeo > 10U) {
      goto ldv_58364;
    } else {
      tmp___2 = be_check_error(adapter, 3U);
      if ((unsigned int )tmp___2 != 0U) {
        goto ldv_58364;
      } else {
      }
    }
  }
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_58367;
    ldv_58366:
    __const_udelay(4295000UL);
    ldv_58367:
    tmp___3 = __ms;
    __ms = __ms - 1UL;
    if (tmp___3 != 0UL) {
      goto ldv_58366;
    } else {
    }
  }
  goto ldv_58369;
  ldv_58364:
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58372;
  ldv_58371:
  txq = & txo->q;
  tmp___8 = atomic_read((atomic_t const *)(& txq->used));
  if (tmp___8 != 0) {
    tmp___4 = atomic_read((atomic_t const *)(& txq->used));
    _dev_info((struct device const *)dev, "txq%d: cleaning %d pending tx-wrbs\n",
              i, tmp___4);
    notified_idx = txq->tail;
    end_idx = txq->tail;
    tmp___5 = atomic_read((atomic_t const *)(& txq->used));
    index_adv(& end_idx, (int )((unsigned int )((u16 )tmp___5) + 65535U), (int )txq->len);
    num_wrbs = be_tx_compl_process(adapter, txo, (int )end_idx);
    atomic_sub((int )num_wrbs, & txq->used);
    tmp___6 = atomic_read((atomic_t const *)(& txq->used));
    tmp___7 = ldv__builtin_expect(tmp___6 != 0, 0L);
    if (tmp___7 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c"),
                           "i" (2557), "i" (12UL));
      ldv_58370: ;
      goto ldv_58370;
    } else {
    }
    txo->pend_wrb_cnt = 0U;
    txq->head = notified_idx;
    txq->tail = notified_idx;
  } else {
  }
  i = i + 1;
  txo = txo + 1;
  ldv_58372: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58371;
  } else {
  }
  return;
}
}
static void be_evt_queues_destroy(struct be_adapter *adapter )
{
  struct be_eq_obj *eqo ;
  int i ;
  {
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58380;
  ldv_58379: ;
  if ((int )eqo->q.created) {
    be_eq_clean(eqo);
    be_cmd_q_destroy(adapter, & eqo->q, 1);
    napi_hash_del(& eqo->napi);
    netif_napi_del(& eqo->napi);
  } else {
  }
  free_cpumask_var(eqo->affinity_mask);
  be_queue_free(adapter, & eqo->q);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58380: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58379;
  } else {
  }
  return;
}
}
static int be_evt_queues_create(struct be_adapter *adapter )
{
  struct be_queue_info *eq ;
  struct be_eq_obj *eqo ;
  struct be_aic_obj *aic ;
  int i ;
  int rc ;
  u16 __min1 ;
  u16 __min2 ;
  int numa_node___0 ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned int tmp___2 ;
  {
  __min1 = (unsigned int )adapter->num_msix_vec != 0U ? adapter->num_msix_vec : 1U;
  __min2 = adapter->cfg_num_qs;
  adapter->num_evt_qs = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58395;
  ldv_58394:
  tmp = dev_to_node(& (adapter->pdev)->dev);
  numa_node___0 = tmp;
  tmp___0 = zalloc_cpumask_var(& eqo->affinity_mask, 208U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-12);
  } else {
  }
  tmp___2 = cpumask_local_spread((unsigned int )i, numa_node___0);
  cpumask_set_cpu(tmp___2, eqo->affinity_mask);
  netif_napi_add(adapter->netdev, & eqo->napi, & be_poll, 64);
  napi_hash_add(& eqo->napi);
  aic = (struct be_aic_obj *)(& adapter->aic_obj) + (unsigned long )i;
  eqo->adapter = adapter;
  eqo->idx = (u8 )i;
  aic->max_eqd = 128U;
  aic->enable = 1;
  eq = & eqo->q;
  rc = be_queue_alloc(adapter, eq, 1024, 4);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = be_cmd_eq_create(adapter, eqo);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  eqo = eqo + 1;
  ldv_58395: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58394;
  } else {
  }
  return (0);
}
}
static void be_mcc_queues_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  {
  q = & adapter->mcc_obj.q;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 5);
  } else {
  }
  be_queue_free(adapter, q);
  q = & adapter->mcc_obj.cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  return;
}
}
static int be_mcc_queues_create(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_queue_info *cq ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  cq = & adapter->mcc_obj.cq;
  tmp = be_queue_alloc(adapter, cq, 256, 16);
  if (tmp != 0) {
    goto err;
  } else {
  }
  tmp___0 = be_cmd_cq_create(adapter, cq, & ((struct be_eq_obj *)(& adapter->eq_obj))->q,
                             1, 0);
  if (tmp___0 != 0) {
    goto mcc_cq_free;
  } else {
  }
  q = & adapter->mcc_obj.q;
  tmp___1 = be_queue_alloc(adapter, q, 128, 256);
  if (tmp___1 != 0) {
    goto mcc_cq_destroy;
  } else {
  }
  tmp___2 = be_cmd_mccq_create(adapter, q, cq);
  if (tmp___2 != 0) {
    goto mcc_q_free;
  } else {
  }
  return (0);
  mcc_q_free:
  be_queue_free(adapter, q);
  mcc_cq_destroy:
  be_cmd_q_destroy(adapter, cq, 2);
  mcc_cq_free:
  be_queue_free(adapter, cq);
  err: ;
  return (-1);
}
}
static void be_tx_queues_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_tx_obj *txo ;
  u8 i ;
  {
  i = 0U;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58417;
  ldv_58416:
  q = & txo->q;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 3);
  } else {
  }
  be_queue_free(adapter, q);
  q = & txo->cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  i = (u8 )((int )i + 1);
  txo = txo + 1;
  ldv_58417: ;
  if ((int )((unsigned short )i) < (int )adapter->num_tx_qs) {
    goto ldv_58416;
  } else {
  }
  return;
}
}
static int be_tx_qs_create(struct be_adapter *adapter )
{
  struct be_queue_info *cq ;
  struct be_tx_obj *txo ;
  struct be_eq_obj *eqo ;
  int status ;
  int i ;
  u16 _min1 ;
  u16 _min2 ;
  {
  _min1 = adapter->num_evt_qs;
  _min2 = adapter->res.max_tx_qs;
  adapter->num_tx_qs = (u16 )((int )_min1 < (int )_min2 ? _min1 : _min2);
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58431;
  ldv_58430:
  cq = & txo->cq;
  status = be_queue_alloc(adapter, cq, 1024, 16);
  if (status != 0) {
    return (status);
  } else {
  }
  u64_stats_init(& txo->stats.sync);
  u64_stats_init(& txo->stats.sync_compl);
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )(i % (int )adapter->num_evt_qs);
  status = be_cmd_cq_create(adapter, cq, & eqo->q, 0, 3);
  if (status != 0) {
    return (status);
  } else {
  }
  status = be_queue_alloc(adapter, & txo->q, 2048, 16);
  if (status != 0) {
    return (status);
  } else {
  }
  status = be_cmd_txq_create(adapter, txo);
  if (status != 0) {
    return (status);
  } else {
  }
  netif_set_xps_queue(adapter->netdev, (struct cpumask const *)eqo->affinity_mask,
                      (int )eqo->idx);
  i = i + 1;
  txo = txo + 1;
  ldv_58431: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58430;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "created %d TX queue(s)\n",
            (int )adapter->num_tx_qs);
  return (0);
}
}
static void be_rx_cqs_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_rx_obj *rxo ;
  int i ;
  {
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58440;
  ldv_58439:
  q = & rxo->cq;
  if ((int )q->created) {
    be_cmd_q_destroy(adapter, q, 2);
  } else {
  }
  be_queue_free(adapter, q);
  i = i + 1;
  rxo = rxo + 1;
  ldv_58440: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58439;
  } else {
  }
  return;
}
}
static int be_rx_cqs_create(struct be_adapter *adapter )
{
  struct be_queue_info *eq ;
  struct be_queue_info *cq ;
  struct be_rx_obj *rxo ;
  int rc ;
  int i ;
  int tmp ;
  {
  adapter->num_rss_qs = adapter->num_evt_qs;
  if ((unsigned int )adapter->num_rss_qs <= 1U) {
    adapter->num_rss_qs = 0U;
  } else {
  }
  adapter->num_rx_qs = (int )adapter->num_rss_qs + (int )adapter->need_def_rxq;
  if ((unsigned int )adapter->num_rx_qs == 0U) {
    adapter->num_rx_qs = 1U;
  } else {
  }
  tmp = __get_order((unsigned long )rx_frag_size);
  adapter->big_page_size = (u32 )((unsigned long )(1 << tmp)) * 4096U;
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58451;
  ldv_58450:
  rxo->adapter = adapter;
  cq = & rxo->cq;
  rc = be_queue_alloc(adapter, cq, 1024, 16);
  if (rc != 0) {
    return (rc);
  } else {
  }
  u64_stats_init(& rxo->stats.sync);
  eq = & adapter->eq_obj[i % (int )adapter->num_evt_qs].q;
  rc = be_cmd_cq_create(adapter, cq, eq, 0, 3);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_58451: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58450;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "created %d RX queue(s)\n",
            (int )adapter->num_rx_qs);
  return (0);
}
}
static irqreturn_t be_intx(int irq , void *dev )
{
  struct be_eq_obj *eqo ;
  struct be_adapter *adapter ;
  int num_evts ;
  bool tmp ;
  u16 tmp___0 ;
  {
  eqo = (struct be_eq_obj *)dev;
  adapter = eqo->adapter;
  num_evts = 0;
  tmp = napi_schedule_prep(& eqo->napi);
  if ((int )tmp) {
    num_evts = events_get(eqo);
    __napi_schedule(& eqo->napi);
    if (num_evts != 0) {
      eqo->spurious_intr = 0U;
    } else {
    }
  } else {
  }
  be_eq_notify(adapter, (int )eqo->q.id, 0, 1, (int )((u16 )num_evts), 0U);
  if (num_evts != 0) {
    return (1);
  } else {
    tmp___0 = eqo->spurious_intr;
    eqo->spurious_intr = (u16 )((int )eqo->spurious_intr + 1);
    if ((unsigned int )tmp___0 == 0U) {
      return (1);
    } else {
      return (0);
    }
  }
}
}
static irqreturn_t be_msix(int irq , void *dev )
{
  struct be_eq_obj *eqo ;
  {
  eqo = (struct be_eq_obj *)dev;
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, 0, 0U);
  napi_schedule(& eqo->napi);
  return (1);
}
}
__inline static bool do_gro(struct be_rx_compl_info *rxcp )
{
  {
  return ((bool )(((unsigned int )rxcp->tcpf != 0U && (unsigned int )rxcp->err == 0U) && (unsigned int )rxcp->l4_csum != 0U));
}
}
static int be_process_rx(struct be_rx_obj *rxo , struct napi_struct *napi , int budget ,
                         int polling )
{
  struct be_adapter *adapter ;
  struct be_queue_info *rx_cq ;
  struct be_rx_compl_info *rxcp ;
  u32 work_done ;
  u32 frags_consumed ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  bool tmp___2 ;
  u32 __max1 ;
  u32 __max2 ;
  int tmp___3 ;
  {
  adapter = rxo->adapter;
  rx_cq = & rxo->cq;
  frags_consumed = 0U;
  work_done = 0U;
  goto ldv_58482;
  ldv_58481:
  rxcp = be_rx_compl_get(rxo);
  if ((unsigned long )rxcp == (unsigned long )((struct be_rx_compl_info *)0)) {
    goto ldv_58479;
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )rxcp->num_rcvd == 0U, 0L);
  if (tmp != 0L) {
    goto loop_continue;
  } else {
  }
  tmp___0 = ldv__builtin_expect((unsigned int )rxcp->pkt_size == 0U, 0L);
  if (tmp___0 != 0L) {
    be_rx_compl_discard(rxo, rxcp);
    goto loop_continue;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((u32 )rxcp->port != adapter->port_num && ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U)),
                             0L);
  if (tmp___1 != 0L) {
    be_rx_compl_discard(rxo, rxcp);
    goto loop_continue;
  } else {
  }
  tmp___2 = do_gro(rxcp);
  if ((int )tmp___2 && polling != 1) {
    be_rx_compl_process_gro(rxo, napi, rxcp);
  } else {
    be_rx_compl_process(rxo, napi, rxcp);
  }
  loop_continue:
  frags_consumed = (u32 )rxcp->num_rcvd + frags_consumed;
  be_rx_stats_update(rxo, rxcp);
  work_done = work_done + 1U;
  ldv_58482: ;
  if ((u32 )budget > work_done) {
    goto ldv_58481;
  } else {
  }
  ldv_58479: ;
  if (work_done != 0U) {
    be_cq_notify(adapter, (int )rx_cq->id, 1, (int )((u16 )work_done));
    tmp___3 = atomic_read((atomic_t const *)(& rxo->q.used));
    if (tmp___3 <= 959 && ! rxo->rx_post_starved) {
      __max1 = 64U;
      __max2 = frags_consumed;
      be_post_rx_frags(rxo, 32U, __max1 > __max2 ? __max1 : __max2);
    } else {
    }
  } else {
  }
  return ((int )work_done);
}
}
__inline static void be_update_tx_err(struct be_tx_obj *txo , u8 status )
{
  {
  switch ((int )status) {
  case 2:
  txo->stats.tx_hdr_parse_err = txo->stats.tx_hdr_parse_err + 1U;
  goto ldv_58491;
  case 3:
  txo->stats.tx_dma_err = txo->stats.tx_dma_err + 1U;
  goto ldv_58491;
  case 5:
  txo->stats.tx_spoof_check_err = txo->stats.tx_spoof_check_err + 1U;
  goto ldv_58491;
  }
  ldv_58491: ;
  return;
}
}
__inline static void lancer_update_tx_err(struct be_tx_obj *txo , u8 status )
{
  {
  switch ((int )status) {
  case 1:
  txo->stats.tx_tso_err = txo->stats.tx_tso_err + 1U;
  goto ldv_58499;
  case 3: ;
  case 5:
  txo->stats.tx_spoof_check_err = txo->stats.tx_spoof_check_err + 1U;
  goto ldv_58499;
  case 7:
  txo->stats.tx_qinq_err = txo->stats.tx_qinq_err + 1U;
  goto ldv_58499;
  case 11:
  txo->stats.tx_internal_parity_err = txo->stats.tx_internal_parity_err + 1U;
  goto ldv_58499;
  case 13:
  txo->stats.tx_dma_err = txo->stats.tx_dma_err + 1U;
  goto ldv_58499;
  }
  ldv_58499: ;
  return;
}
}
static void be_process_tx(struct be_adapter *adapter , struct be_tx_obj *txo , int idx )
{
  int num_wrbs ;
  int work_done ;
  struct be_tx_compl_info *txcp ;
  u16 tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  num_wrbs = 0;
  work_done = 0;
  goto ldv_58514;
  ldv_58513:
  tmp = be_tx_compl_process(adapter, txo, (int )txcp->end_index);
  num_wrbs = (int )tmp + num_wrbs;
  work_done = work_done + 1;
  if ((unsigned int )txcp->status != 0U) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      lancer_update_tx_err(txo, (int )txcp->status);
    } else {
      be_update_tx_err(txo, (int )txcp->status);
    }
  } else {
  }
  ldv_58514:
  txcp = be_tx_compl_get(txo);
  if ((unsigned long )txcp != (unsigned long )((struct be_tx_compl_info *)0)) {
    goto ldv_58513;
  } else {
  }
  if (work_done != 0) {
    be_cq_notify(adapter, (int )txo->cq.id, 1, (int )((u16 )work_done));
    atomic_sub(num_wrbs, & txo->q.used);
    tmp___0 = __netif_subqueue_stopped((struct net_device const *)adapter->netdev,
                                       (int )((u16 )idx));
    if ((int )tmp___0) {
      tmp___1 = be_can_txq_wake(txo);
      if ((int )tmp___1) {
        netif_wake_subqueue(adapter->netdev, (int )((u16 )idx));
      } else {
      }
    } else {
    }
    u64_stats_init(& txo->stats.sync_compl);
    txo->stats.tx_compl = txo->stats.tx_compl + (u64 )work_done;
    u64_stats_init(& txo->stats.sync_compl);
  } else {
  }
  return;
}
}
__inline static bool be_lock_napi(struct be_eq_obj *eqo )
{
  bool status ;
  int __ret_warn_on ;
  long tmp ;
  {
  status = 1;
  spin_lock(& eqo->lock);
  if ((eqo->state & 3U) != 0U) {
    __ret_warn_on = (int )eqo->state & 1;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c",
                         2976);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    eqo->state = eqo->state | 4U;
    status = 0;
  } else {
    eqo->state = 1U;
  }
  spin_unlock(& eqo->lock);
  return (status);
}
}
__inline static void be_unlock_napi(struct be_eq_obj *eqo )
{
  int __ret_warn_on ;
  long tmp ;
  {
  spin_lock(& eqo->lock);
  __ret_warn_on = (eqo->state & 6U) != 0U;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c",
                       2990);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  eqo->state = 0U;
  spin_unlock(& eqo->lock);
  return;
}
}
__inline static bool be_lock_busy_poll(struct be_eq_obj *eqo )
{
  bool status ;
  {
  status = 1;
  spin_lock_bh(& eqo->lock);
  if ((eqo->state & 3U) != 0U) {
    eqo->state = eqo->state | 8U;
    status = 0;
  } else {
    eqo->state = eqo->state | 2U;
  }
  spin_unlock_bh(& eqo->lock);
  return (status);
}
}
__inline static void be_unlock_busy_poll(struct be_eq_obj *eqo )
{
  int __ret_warn_on ;
  long tmp ;
  {
  spin_lock_bh(& eqo->lock);
  __ret_warn_on = (int )eqo->state & 1;
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_main.c",
                       3015);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  eqo->state = 0U;
  spin_unlock_bh(& eqo->lock);
  return;
}
}
__inline static void be_enable_busy_poll(struct be_eq_obj *eqo )
{
  struct lock_class_key __key ;
  {
  spinlock_check(& eqo->lock);
  __raw_spin_lock_init(& eqo->lock.__annonCompField18.rlock, "&(&eqo->lock)->rlock",
                       & __key);
  eqo->state = 0U;
  return;
}
}
__inline static void be_disable_busy_poll(struct be_eq_obj *eqo )
{
  unsigned long __ms ;
  unsigned long tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  local_bh_disable();
  goto ldv_58548;
  ldv_58547: ;
  if (1) {
    __const_udelay(4295000UL);
  } else {
    __ms = 1UL;
    goto ldv_58545;
    ldv_58544:
    __const_udelay(4295000UL);
    ldv_58545:
    tmp = __ms;
    __ms = __ms - 1UL;
    if (tmp != 0UL) {
      goto ldv_58544;
    } else {
    }
  }
  ldv_58548:
  tmp___0 = be_lock_napi(eqo);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    goto ldv_58547;
  } else {
  }
  local_bh_enable();
  return;
}
}
int be_poll(struct napi_struct *napi , int budget )
{
  struct be_eq_obj *eqo ;
  struct napi_struct const *__mptr ;
  struct be_adapter *adapter ;
  int max_work ;
  int work ;
  int i ;
  int num_evts ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u32 mult_enc ;
  int _max1 ;
  int _max2 ;
  bool tmp ;
  {
  __mptr = (struct napi_struct const *)napi;
  eqo = (struct be_eq_obj *)__mptr + 0xffffffffffffffa0UL;
  adapter = eqo->adapter;
  max_work = 0;
  mult_enc = 0U;
  num_evts = events_get(eqo);
  i = (int )eqo->idx;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58566;
  ldv_58565:
  be_process_tx(adapter, txo, i);
  i = (int )adapter->num_evt_qs + i;
  txo = txo + (unsigned long )adapter->num_evt_qs;
  ldv_58566: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58565;
  } else {
  }
  tmp = be_lock_napi(eqo);
  if ((int )tmp) {
    i = (int )eqo->idx;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_58572;
    ldv_58571:
    work = be_process_rx(rxo, napi, budget, 0);
    _max1 = work;
    _max2 = max_work;
    max_work = _max1 > _max2 ? _max1 : _max2;
    i = (int )adapter->num_evt_qs + i;
    rxo = rxo + (unsigned long )adapter->num_evt_qs;
    ldv_58572: ;
    if ((int )adapter->num_rx_qs > i) {
      goto ldv_58571;
    } else {
    }
    be_unlock_napi(eqo);
  } else {
    max_work = budget;
  }
  if ((unsigned int )eqo->idx == 0U) {
    be_process_mcc(adapter);
  } else {
  }
  if (max_work < budget) {
    napi_complete(napi);
    if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
      mult_enc = be_get_eq_delay_mult_enc(eqo);
    } else {
    }
    be_eq_notify(adapter, (int )eqo->q.id, 1, 0, (int )((u16 )num_evts), mult_enc);
  } else {
    be_eq_notify(adapter, (int )eqo->q.id, 0, 0, (int )((u16 )num_evts), 0U);
  }
  return (max_work);
}
}
static int be_busy_poll(struct napi_struct *napi )
{
  struct be_eq_obj *eqo ;
  struct napi_struct const *__mptr ;
  struct be_adapter *adapter ;
  struct be_rx_obj *rxo ;
  int i ;
  int work ;
  bool tmp ;
  int tmp___0 ;
  {
  __mptr = (struct napi_struct const *)napi;
  eqo = (struct be_eq_obj *)__mptr + 0xffffffffffffffa0UL;
  adapter = eqo->adapter;
  work = 0;
  tmp = be_lock_busy_poll(eqo);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-2);
  } else {
  }
  i = (int )eqo->idx;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58586;
  ldv_58585:
  work = be_process_rx(rxo, napi, 4, 1);
  if (work != 0) {
    goto ldv_58584;
  } else {
  }
  i = (int )adapter->num_evt_qs + i;
  rxo = rxo + (unsigned long )adapter->num_evt_qs;
  ldv_58586: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58585;
  } else {
  }
  ldv_58584:
  be_unlock_busy_poll(eqo);
  return (work);
}
}
void be_detect_error(struct be_adapter *adapter )
{
  u32 ue_lo ;
  u32 ue_hi ;
  u32 ue_lo_mask ;
  u32 ue_hi_mask ;
  u32 sliport_status ;
  u32 sliport_err1 ;
  u32 sliport_err2 ;
  u32 i ;
  struct device *dev ;
  u8 tmp ;
  {
  ue_lo = 0U;
  ue_hi = 0U;
  ue_lo_mask = 0U;
  ue_hi_mask = 0U;
  sliport_status = 0U;
  sliport_err1 = 0U;
  sliport_err2 = 0U;
  dev = & (adapter->pdev)->dev;
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    sliport_status = ioread32((void *)adapter->db + 1028U);
    if ((int )sliport_status < 0) {
      be_set_error(adapter, 2);
      sliport_err1 = ioread32((void *)adapter->db + 1036U);
      sliport_err2 = ioread32((void *)adapter->db + 1040U);
      if (sliport_err1 == 2U && sliport_err2 == 0U) {
        _dev_info((struct device const *)dev, "Firmware update in progress\n");
      } else {
        dev_err((struct device const *)dev, "Error detected in the card\n");
        dev_err((struct device const *)dev, "ERR: sliport status 0x%x\n", sliport_status);
        dev_err((struct device const *)dev, "ERR: sliport error1 0x%x\n", sliport_err1);
        dev_err((struct device const *)dev, "ERR: sliport error2 0x%x\n", sliport_err2);
      }
    } else {
    }
  } else {
    ue_lo = ioread32((void *)adapter->pcicfg + 160U);
    ue_hi = ioread32((void *)adapter->pcicfg + 164U);
    ue_lo_mask = ioread32((void *)adapter->pcicfg + 168U);
    ue_hi_mask = ioread32((void *)adapter->pcicfg + 172U);
    ue_lo = ~ ue_lo_mask & ue_lo;
    ue_hi = ~ ue_hi_mask & ue_hi;
    if (ue_lo != 0U || ue_hi != 0U) {
      dev_err((struct device const *)dev, "Unrecoverable Error detected in the adapter");
      dev_err((struct device const *)dev, "Please reboot server to recover");
      if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
        be_set_error(adapter, 2);
      } else {
      }
      i = 0U;
      goto ldv_58600;
      ldv_58599: ;
      if ((int )ue_lo & 1) {
        dev_err((struct device const *)dev, "UE: %s bit set\n", ue_status_low_desc[i]);
      } else {
      }
      ue_lo = ue_lo >> 1;
      i = i + 1U;
      ldv_58600: ;
      if (ue_lo != 0U) {
        goto ldv_58599;
      } else {
      }
      i = 0U;
      goto ldv_58603;
      ldv_58602: ;
      if ((int )ue_hi & 1) {
        dev_err((struct device const *)dev, "UE: %s bit set\n", ue_status_hi_desc[i]);
      } else {
      }
      ue_hi = ue_hi >> 1;
      i = i + 1U;
      ldv_58603: ;
      if (ue_hi != 0U) {
        goto ldv_58602;
      } else {
      }
    } else {
    }
  }
  return;
}
}
static void be_msix_disable(struct be_adapter *adapter )
{
  {
  if ((unsigned int )adapter->num_msix_vec != 0U) {
    pci_disable_msix(adapter->pdev);
    adapter->num_msix_vec = 0U;
    adapter->num_msix_roce_vec = 0U;
  } else {
  }
  return;
}
}
static int be_msix_enable(struct be_adapter *adapter )
{
  int i ;
  int num_vec ;
  struct device *dev ;
  int __min1 ;
  int __min2 ;
  unsigned int tmp ;
  {
  dev = & (adapter->pdev)->dev;
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    __min1 = (int )adapter->res.max_evt_qs * 2;
    tmp = cpumask_weight(cpu_online_mask);
    __min2 = (int )(tmp * 2U);
    num_vec = __min1 < __min2 ? __min1 : __min2;
  } else {
    num_vec = (int )adapter->cfg_num_qs;
  }
  i = 0;
  goto ldv_58618;
  ldv_58617:
  adapter->msix_entries[i].entry = (u16 )i;
  i = i + 1;
  ldv_58618: ;
  if (i < num_vec) {
    goto ldv_58617;
  } else {
  }
  num_vec = pci_enable_msix_range(adapter->pdev, (struct msix_entry *)(& adapter->msix_entries),
                                  1, num_vec);
  if (num_vec < 0) {
    goto fail;
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) && num_vec > 1) {
    adapter->num_msix_roce_vec = (u32 )(num_vec / 2);
    _dev_info((struct device const *)dev, "enabled %d MSI-x vector(s) for RoCE\n",
              adapter->num_msix_roce_vec);
  } else {
  }
  adapter->num_msix_vec = (int )((u16 )num_vec) - (int )((u16 )adapter->num_msix_roce_vec);
  _dev_info((struct device const *)dev, "enabled %d MSI-x vector(s) for NIC\n",
            (int )adapter->num_msix_vec);
  return (0);
  fail:
  dev_warn((struct device const *)dev, "MSIx enable failed\n");
  if ((unsigned int )adapter->virtfn != 0U) {
    return (num_vec);
  } else {
  }
  return (0);
}
}
__inline static int be_msix_vec_get(struct be_adapter *adapter , struct be_eq_obj *eqo )
{
  {
  return ((int )adapter->msix_entries[(int )eqo->msix_idx].vector);
}
}
static int be_msix_register(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  struct be_eq_obj *eqo ;
  int status ;
  int i ;
  int vec ;
  int tmp ;
  {
  netdev = adapter->netdev;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58635;
  ldv_58634:
  sprintf((char *)(& eqo->desc), "%s-q%d", (char *)(& netdev->name), i);
  vec = be_msix_vec_get(adapter, eqo);
  status = ldv_request_irq_10((unsigned int )vec, & be_msix, 0UL, (char const *)(& eqo->desc),
                              (void *)eqo);
  if (status != 0) {
    goto err_msix;
  } else {
  }
  irq_set_affinity_hint((unsigned int )vec, (struct cpumask const *)eqo->affinity_mask);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58635: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58634;
  } else {
  }
  return (0);
  err_msix:
  i = i - 1;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58638;
  ldv_58637:
  tmp = be_msix_vec_get(adapter, eqo);
  ldv_free_irq_11((unsigned int )tmp, (void *)eqo);
  i = i - 1;
  eqo = eqo - 1;
  ldv_58638: ;
  if (i >= 0) {
    goto ldv_58637;
  } else {
  }
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "MSIX Request IRQ failed - err %d\n",
           status);
  be_msix_disable(adapter);
  return (status);
}
}
static int be_irq_register(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  int status ;
  {
  netdev = adapter->netdev;
  if ((unsigned int )adapter->num_msix_vec != 0U) {
    status = be_msix_register(adapter);
    if (status == 0) {
      goto done;
    } else {
    }
    if ((unsigned int )adapter->virtfn != 0U) {
      return (status);
    } else {
    }
  } else {
  }
  netdev->irq = (int )(adapter->pdev)->irq;
  status = ldv_request_irq_12((unsigned int )netdev->irq, & be_intx, 128UL, (char const *)(& netdev->name),
                              (void *)(& adapter->eq_obj));
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "INTx request IRQ failed - err %d\n",
            status);
    return (status);
  } else {
  }
  done:
  adapter->isr_registered = 1;
  return (0);
}
}
static void be_irq_unregister(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  struct be_eq_obj *eqo ;
  int i ;
  int vec ;
  {
  netdev = adapter->netdev;
  if (! adapter->isr_registered) {
    return;
  } else {
  }
  if ((unsigned int )adapter->num_msix_vec == 0U) {
    ldv_free_irq_13((unsigned int )netdev->irq, (void *)(& adapter->eq_obj));
    goto done;
  } else {
  }
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58655;
  ldv_58654:
  vec = be_msix_vec_get(adapter, eqo);
  irq_set_affinity_hint((unsigned int )vec, (struct cpumask const *)0);
  ldv_free_irq_14((unsigned int )vec, (void *)eqo);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58655: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58654;
  } else {
  }
  done:
  adapter->isr_registered = 0;
  return;
}
}
static void be_rx_qs_destroy(struct be_adapter *adapter )
{
  struct be_queue_info *q ;
  struct be_rx_obj *rxo ;
  int i ;
  {
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58664;
  ldv_58663:
  q = & rxo->q;
  if ((int )q->created) {
    be_cmd_rxq_destroy(adapter, q);
    be_rx_cq_clean(rxo);
  } else {
  }
  be_queue_free(adapter, q);
  i = i + 1;
  rxo = rxo + 1;
  ldv_58664: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58663;
  } else {
  }
  return;
}
}
static int be_close(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (((unsigned long )adapter->flags & 512UL) == 0UL) {
    return (0);
  } else {
  }
  be_roce_dev_close(adapter);
  if (((unsigned long )adapter->flags & 64UL) != 0UL) {
    i = 0;
    eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
    goto ldv_58673;
    ldv_58672:
    napi_disable(& eqo->napi);
    be_disable_busy_poll(eqo);
    i = i + 1;
    eqo = eqo + 1;
    ldv_58673: ;
    if ((int )adapter->num_evt_qs > i) {
      goto ldv_58672;
    } else {
    }
    adapter->flags = adapter->flags & 4294967231U;
  } else {
  }
  be_async_mcc_disable(adapter);
  netif_tx_disable(netdev);
  be_tx_compl_clean(adapter);
  be_rx_qs_destroy(adapter);
  be_clear_uc_list(adapter);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58676;
  ldv_58675: ;
  if ((unsigned int )adapter->num_msix_vec != 0U) {
    tmp___0 = be_msix_vec_get(adapter, eqo);
    synchronize_irq((unsigned int )tmp___0);
  } else {
    synchronize_irq((unsigned int )netdev->irq);
  }
  be_eq_clean(eqo);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58676: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58675;
  } else {
  }
  be_irq_unregister(adapter);
  return (0);
}
}
static int be_rx_qs_create(struct be_adapter *adapter )
{
  struct rss_info *rss ;
  u8 rss_key[40U] ;
  struct be_rx_obj *rxo ;
  int rc ;
  int i ;
  int j ;
  bool tmp ;
  {
  rss = & adapter->rss_info;
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58688;
  ldv_58687:
  rc = be_queue_alloc(adapter, & rxo->q, 1024, 8);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_58688: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58687;
  } else {
  }
  if ((unsigned int )adapter->need_def_rxq != 0U || (unsigned int )adapter->num_rss_qs == 0U) {
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + ((unsigned long )adapter->num_rx_qs + 0xffffffffffffffffUL);
    rc = be_cmd_rxq_create(adapter, & rxo->q, (int )rxo->cq.id, (int )rx_frag_size,
                           (u32 )adapter->if_handle, 0U, & rxo->rss_id);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58691;
  ldv_58690:
  rc = be_cmd_rxq_create(adapter, & rxo->q, (int )rxo->cq.id, (int )rx_frag_size,
                         (u32 )adapter->if_handle, 1U, & rxo->rss_id);
  if (rc != 0) {
    return (rc);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_58691: ;
  if ((int )adapter->num_rss_qs > i) {
    goto ldv_58690;
  } else {
  }
  tmp = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp) {
    j = 0;
    goto ldv_58697;
    ldv_58696:
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_58695;
    ldv_58694: ;
    if (j + i > 127) {
      goto ldv_58693;
    } else {
    }
    rss->rsstable[j + i] = rxo->rss_id;
    rss->rss_queue[j + i] = (u8 )i;
    i = i + 1;
    rxo = rxo + 1;
    ldv_58695: ;
    if ((int )adapter->num_rss_qs > i) {
      goto ldv_58694;
    } else {
    }
    ldv_58693:
    j = (int )adapter->num_rss_qs + j;
    ldv_58697: ;
    if (j <= 127) {
      goto ldv_58696;
    } else {
    }
    rss->rss_flags = 15ULL;
    if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
      rss->rss_flags = rss->rss_flags | 48ULL;
    } else {
    }
  } else {
    rss->rss_flags = 0ULL;
  }
  netdev_rss_key_fill((void *)(& rss_key), 40UL);
  rc = be_cmd_rss_config(adapter, (u8 *)(& rss->rsstable), (u32 )rss->rss_flags, 128,
                         (u8 const *)(& rss_key));
  if (rc != 0) {
    rss->rss_flags = 0ULL;
    return (rc);
  } else {
  }
  memcpy((void *)(& rss->rss_hkey), (void const *)(& rss_key), 40UL);
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58700;
  ldv_58699:
  be_post_rx_frags(rxo, 208U, 1023U);
  i = i + 1;
  rxo = rxo + 1;
  ldv_58700: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58699;
  } else {
  }
  return (0);
}
}
static int be_open(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  u8 link_status ;
  int status ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = be_rx_qs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_irq_register(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_58714;
  ldv_58713:
  be_cq_notify(adapter, (int )rxo->cq.id, 1, 0);
  i = i + 1;
  rxo = rxo + 1;
  ldv_58714: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_58713;
  } else {
  }
  i = 0;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )i;
  goto ldv_58717;
  ldv_58716:
  be_cq_notify(adapter, (int )txo->cq.id, 1, 0);
  i = i + 1;
  txo = txo + 1;
  ldv_58717: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_58716;
  } else {
  }
  be_async_mcc_enable(adapter);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58720;
  ldv_58719:
  napi_enable(& eqo->napi);
  be_enable_busy_poll(eqo);
  be_eq_notify(adapter, (int )eqo->q.id, 1, 1, 0, 0U);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58720: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58719;
  } else {
  }
  adapter->flags = adapter->flags | 64U;
  status = be_cmd_link_status_query(adapter, (u16 *)0U, & link_status, 0U);
  if (status == 0) {
    be_link_status_update(adapter, (int )link_status);
  } else {
  }
  netif_tx_start_all_queues(netdev);
  be_roce_dev_open(adapter);
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    vxlan_get_rx_port(netdev);
  } else {
  }
  return (0);
  err:
  be_close(adapter->netdev);
  return (-5);
}
}
static int be_setup_wol(struct be_adapter *adapter , bool enable )
{
  struct be_dma_mem cmd ;
  int status ;
  u8 mac[6U] ;
  {
  status = 0;
  eth_zero_addr((u8 *)(& mac));
  cmd.size = 604U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               208U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  if ((int )enable) {
    status = pci_write_config_dword((struct pci_dev const *)adapter->pdev, 68, 264U);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Could not enable Wake-on-lan\n");
      dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
      return (status);
    } else {
    }
    status = be_cmd_enable_magic_wol(adapter, (adapter->netdev)->dev_addr, & cmd);
    pci_enable_wake(adapter->pdev, 3, 1);
    pci_enable_wake(adapter->pdev, 4, 1);
  } else {
    status = be_cmd_enable_magic_wol(adapter, (u8 *)(& mac), & cmd);
    pci_enable_wake(adapter->pdev, 3, 0);
    pci_enable_wake(adapter->pdev, 4, 0);
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  return (status);
}
}
static void be_vf_eth_addr_generate(struct be_adapter *adapter , u8 *mac )
{
  u32 addr ;
  {
  addr = jhash((void const *)(adapter->netdev)->dev_addr, 6U, 0U);
  *(mac + 5UL) = (unsigned char )addr;
  *(mac + 4UL) = (unsigned char )(addr >> 8);
  *(mac + 3UL) = (unsigned char )(addr >> 16);
  memcpy((void *)mac, (void const *)(adapter->netdev)->dev_addr, 3UL);
  return;
}
}
static int be_vf_eth_addr_config(struct be_adapter *adapter )
{
  u32 vf ;
  int status ;
  u8 mac[6U] ;
  struct be_vf_cfg *vf_cfg ;
  {
  status = 0;
  be_vf_eth_addr_generate(adapter, (u8 *)(& mac));
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58742;
  ldv_58741: ;
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    status = be_cmd_pmac_add(adapter, (u8 *)(& mac), (u32 )vf_cfg->if_handle, (u32 *)(& vf_cfg->pmac_id),
                             vf + 1U);
  } else {
    status = be_cmd_set_mac(adapter, (u8 *)(& mac), vf_cfg->if_handle, vf + 1U);
  }
  if (status != 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Mac address assignment failed for VF %d\n",
            vf);
  } else {
    memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac), 6UL);
  }
  mac[5] = (unsigned int )mac[5] + 1U;
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_58742: ;
  if ((u32 )adapter->num_vfs > vf) {
    goto ldv_58741;
  } else {
  }
  return (status);
}
}
static int be_vfs_mac_query(struct be_adapter *adapter )
{
  int status ;
  int vf ;
  u8 mac[6U] ;
  struct be_vf_cfg *vf_cfg ;
  {
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58752;
  ldv_58751:
  status = be_cmd_get_active_mac(adapter, (u32 )vf_cfg->pmac_id, (u8 *)(& mac), (u32 )vf_cfg->if_handle,
                                 0, (u32 )(vf + 1));
  if (status != 0) {
    return (status);
  } else {
  }
  memcpy((void *)(& vf_cfg->mac_addr), (void const *)(& mac), 6UL);
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_58752: ;
  if ((int )adapter->num_vfs > vf) {
    goto ldv_58751;
  } else {
  }
  return (0);
}
}
static void be_vf_clear(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  u32 vf ;
  int tmp ;
  {
  tmp = pci_vfs_assigned(adapter->pdev);
  if (tmp != 0) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "VFs are assigned to VMs: not disabling VFs\n");
    goto done;
  } else {
  }
  pci_disable_sriov(adapter->pdev);
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58761;
  ldv_58760: ;
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    be_cmd_pmac_del(adapter, (u32 )vf_cfg->if_handle, vf_cfg->pmac_id, vf + 1U);
  } else {
    be_cmd_set_mac(adapter, (u8 *)0U, vf_cfg->if_handle, vf + 1U);
  }
  be_cmd_if_destroy(adapter, vf_cfg->if_handle, vf + 1U);
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_58761: ;
  if ((u32 )adapter->num_vfs > vf) {
    goto ldv_58760;
  } else {
  }
  done:
  kfree((void const *)adapter->vf_cfg);
  adapter->num_vfs = 0U;
  adapter->flags = adapter->flags & 4294967291U;
  return;
}
}
static void be_clear_queues(struct be_adapter *adapter )
{
  {
  be_mcc_queues_destroy(adapter);
  be_rx_cqs_destroy(adapter);
  be_tx_queues_destroy(adapter);
  be_evt_queues_destroy(adapter);
  return;
}
}
static void be_cancel_worker(struct be_adapter *adapter )
{
  {
  if (((unsigned long )adapter->flags & 8UL) != 0UL) {
    ldv_cancel_delayed_work_sync_15(& adapter->work);
    adapter->flags = adapter->flags & 4294967287U;
  } else {
  }
  return;
}
}
static void be_cancel_err_detection(struct be_adapter *adapter )
{
  {
  if (((unsigned long )adapter->flags & 2048UL) != 0UL) {
    ldv_cancel_delayed_work_sync_16(& adapter->be_err_detection_work);
    adapter->flags = adapter->flags & 4294965247U;
  } else {
  }
  return;
}
}
static void be_mac_clear(struct be_adapter *adapter )
{
  {
  if ((unsigned long )adapter->pmac_id != (unsigned long )((u32 *)0U)) {
    be_cmd_pmac_del(adapter, (u32 )adapter->if_handle, (int )*(adapter->pmac_id),
                    0U);
    kfree((void const *)adapter->pmac_id);
    adapter->pmac_id = (u32 *)0U;
  } else {
  }
  return;
}
}
static void be_disable_vxlan_offloads(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  {
  netdev = adapter->netdev;
  if (((unsigned long )adapter->flags & 256UL) != 0UL) {
    be_cmd_manage_iface(adapter, (u32 )adapter->if_handle, 1);
  } else {
  }
  if ((unsigned int )adapter->vxlan_port != 0U) {
    be_cmd_set_vxlan_port(adapter, 0);
  } else {
  }
  adapter->flags = adapter->flags & 4294967039U;
  adapter->vxlan_port = 0U;
  netdev->hw_enc_features = 0ULL;
  netdev->hw_features = netdev->hw_features & 0xfffffffffbffffffULL;
  netdev->features = netdev->features & 0xfffffffffbffffffULL;
  return;
}
}
static u16 be_calculate_vf_qs(struct be_adapter *adapter , u16 num_vfs___0 )
{
  struct be_resources res ;
  u16 num_vf_qs ;
  bool tmp ;
  int tmp___0 ;
  {
  res = adapter->pool_res;
  num_vf_qs = 1U;
  if ((unsigned int )num_vfs___0 != 0U) {
    tmp = be_is_mc(adapter);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      if ((int )num_vfs___0 < (int )adapter->pool_res.max_vfs + -8) {
        num_vf_qs = (u16 )(((int )res.max_rss_qs + -8) / (int )num_vfs___0);
      } else {
        num_vf_qs = (u16 )((int )res.max_rss_qs / (int )num_vfs___0);
      }
      if ((unsigned int )num_vfs___0 > 14U) {
        num_vf_qs = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (num_vf_qs);
}
}
static int be_clear(struct be_adapter *adapter )
{
  struct pci_dev *pdev ;
  u16 num_vf_qs ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  pdev = adapter->pdev;
  be_cancel_worker(adapter);
  if (((unsigned long )adapter->flags & 4UL) != 0UL) {
    be_vf_clear(adapter);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (unsigned int )adapter->virtfn == 0U) {
    tmp___1 = pci_vfs_assigned(pdev);
    if (tmp___1 == 0) {
      tmp = pci_sriov_get_totalvfs(pdev);
      num_vf_qs = be_calculate_vf_qs(adapter, (int )((u16 )tmp));
      tmp___0 = pci_sriov_get_totalvfs(pdev);
      be_cmd_set_sriov_config(adapter, adapter->pool_res, (int )((u16 )tmp___0), (int )num_vf_qs);
    } else {
    }
  } else {
  }
  be_disable_vxlan_offloads(adapter);
  be_mac_clear(adapter);
  be_cmd_if_destroy(adapter, adapter->if_handle, 0U);
  be_clear_queues(adapter);
  be_msix_disable(adapter);
  adapter->flags = adapter->flags & 4294966783U;
  return (0);
}
}
static int be_if_create(struct be_adapter *adapter , u32 *if_handle , u32 cap_flags ,
                        u32 vf )
{
  u32 en_flags ;
  int tmp ;
  {
  en_flags = 16783412U;
  en_flags = en_flags & cap_flags;
  tmp = be_cmd_if_create(adapter, cap_flags, en_flags, if_handle, vf);
  return (tmp);
}
}
static int be_vfs_if_create(struct be_adapter *adapter )
{
  struct be_resources res ;
  struct be_vf_cfg *vf_cfg ;
  u32 cap_flags ;
  u32 vf ;
  int status ;
  {
  res.max_vfs = 0U;
  res.max_mcast_mac = (unsigned short)0;
  res.max_tx_qs = (unsigned short)0;
  res.max_rss_qs = (unsigned short)0;
  res.max_rx_qs = (unsigned short)0;
  res.max_cq_count = (unsigned short)0;
  res.max_uc_mac = (unsigned short)0;
  res.max_vlans = (unsigned short)0;
  res.max_iface_count = (unsigned short)0;
  res.max_mcc_count = (unsigned short)0;
  res.max_evt_qs = (unsigned short)0;
  res.if_cap_flags = 0U;
  res.vf_if_cap_flags = 0U;
  cap_flags = 6192U;
  vf = 0U;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58806;
  ldv_58805: ;
  if ((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) {
    status = be_cmd_get_profile_config(adapter, & res, 0, (int )((unsigned int )((u8 )vf) + 1U));
    if (status == 0) {
      cap_flags = res.if_cap_flags;
      cap_flags = cap_flags & 4294967167U;
    } else {
    }
  } else {
  }
  status = be_if_create(adapter, (u32 *)(& vf_cfg->if_handle), cap_flags, vf + 1U);
  if (status != 0) {
    return (status);
  } else {
  }
  vf = vf + 1U;
  vf_cfg = vf_cfg + 1;
  ldv_58806: ;
  if ((u32 )adapter->num_vfs > vf) {
    goto ldv_58805;
  } else {
  }
  return (0);
}
}
static int be_vf_setup_init(struct be_adapter *adapter )
{
  struct be_vf_cfg *vf_cfg ;
  int vf ;
  void *tmp ;
  {
  tmp = kcalloc((size_t )adapter->num_vfs, 36UL, 208U);
  adapter->vf_cfg = (struct be_vf_cfg *)tmp;
  if ((unsigned long )adapter->vf_cfg == (unsigned long )((struct be_vf_cfg *)0)) {
    return (-12);
  } else {
  }
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58814;
  ldv_58813:
  vf_cfg->if_handle = -1;
  vf_cfg->pmac_id = -1;
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_58814: ;
  if ((int )adapter->num_vfs > vf) {
    goto ldv_58813;
  } else {
  }
  return (0);
}
}
static int be_vf_setup(struct be_adapter *adapter )
{
  struct device *dev ;
  struct be_vf_cfg *vf_cfg ;
  int status ;
  int old_vfs ;
  int vf ;
  bool spoofchk ;
  {
  dev = & (adapter->pdev)->dev;
  old_vfs = pci_num_vf(adapter->pdev);
  status = be_vf_setup_init(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  if (old_vfs != 0) {
    vf = 0;
    vf_cfg = adapter->vf_cfg + (unsigned long )vf;
    goto ldv_58827;
    ldv_58826:
    status = be_cmd_get_if_id(adapter, vf_cfg, vf);
    if (status != 0) {
      goto err;
    } else {
    }
    vf = vf + 1;
    vf_cfg = vf_cfg + 1;
    ldv_58827: ;
    if ((int )adapter->num_vfs > vf) {
      goto ldv_58826;
    } else {
    }
    status = be_vfs_mac_query(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
    status = be_vfs_if_create(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
    status = be_vf_eth_addr_config(adapter);
    if (status != 0) {
      goto err;
    } else {
    }
  }
  vf = 0;
  vf_cfg = adapter->vf_cfg + (unsigned long )vf;
  goto ldv_58830;
  ldv_58829:
  status = be_cmd_get_fn_privileges(adapter, & vf_cfg->privileges, (u32 )(vf + 1));
  if (status == 0 && (vf_cfg->privileges & 64U) == 0U) {
    status = be_cmd_set_fn_privileges(adapter, vf_cfg->privileges | 64U, (u32 )(vf + 1));
    if (status == 0) {
      vf_cfg->privileges = vf_cfg->privileges | 64U;
      _dev_info((struct device const *)dev, "VF%d has FILTMGMT privilege\n", vf);
    } else {
    }
  } else {
  }
  if (old_vfs == 0) {
    be_cmd_config_qos(adapter, 0U, 0, (int )((unsigned int )((u8 )vf) + 1U));
  } else {
  }
  status = be_cmd_get_hsw_config(adapter, (u16 *)0U, (u32 )(vf + 1), (int )((u16 )vf_cfg->if_handle),
                                 (u8 *)0U, & spoofchk);
  if (status == 0) {
    vf_cfg->spoofchk = spoofchk;
  } else {
  }
  if (old_vfs == 0) {
    be_cmd_enable_vf(adapter, (int )((unsigned int )((u8 )vf) + 1U));
    be_cmd_set_logical_link_config(adapter, 0, (int )((unsigned int )((u8 )vf) + 1U));
  } else {
  }
  vf = vf + 1;
  vf_cfg = vf_cfg + 1;
  ldv_58830: ;
  if ((int )adapter->num_vfs > vf) {
    goto ldv_58829;
  } else {
  }
  if (old_vfs == 0) {
    status = pci_enable_sriov(adapter->pdev, (int )adapter->num_vfs);
    if (status != 0) {
      dev_err((struct device const *)dev, "SRIOV enable failed\n");
      adapter->num_vfs = 0U;
      goto err;
    } else {
    }
  } else {
  }
  adapter->flags = adapter->flags | 4U;
  return (0);
  err:
  dev_err((struct device const *)dev, "VF setup failed\n");
  be_vf_clear(adapter);
  return (status);
}
}
static u8 be_convert_mc_type(u32 function_mode )
{
  {
  if ((function_mode & 131072U) != 0U && (function_mode & 1024U) != 0U) {
    return (4U);
  } else
  if ((function_mode & 1024U) != 0U) {
    return (3U);
  } else
  if ((function_mode & 131072U) != 0U) {
    return (7U);
  } else
  if ((function_mode & 16777216U) != 0U) {
    return (2U);
  } else {
    return (1U);
  }
}
}
static void BEx_get_resources(struct be_adapter *adapter , struct be_resources *res )
{
  bool use_sriov ;
  bool tmp ;
  struct be_resources super_nic_res ;
  bool tmp___0 ;
  {
  use_sriov = (unsigned int )adapter->num_vfs != 0U;
  if ((unsigned int )adapter->virtfn == 0U) {
    res->max_uc_mac = 30U;
  } else {
    res->max_uc_mac = 2U;
  }
  adapter->mc_type = be_convert_mc_type(adapter->function_mode);
  tmp = be_is_mc(adapter);
  if ((int )tmp) {
    if ((adapter->function_mode & 1024U) != 0U) {
      res->max_vlans = 8U;
    } else {
      res->max_vlans = 15U;
    }
  } else {
    res->max_vlans = 64U;
  }
  res->max_mcast_mac = 64U;
  if (((((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) || (int )use_sriov) || adapter->port_num > 1U) || (unsigned int )adapter->virtfn != 0U) {
    res->max_tx_qs = 1U;
  } else {
    tmp___0 = be_is_mc(adapter);
    if ((int )tmp___0 && (adapter->function_caps & 2U) == 0U) {
      res->max_tx_qs = 1U;
    } else
    if ((adapter->function_caps & 64U) != 0U) {
      super_nic_res.max_vfs = 0U;
      super_nic_res.max_mcast_mac = (unsigned short)0;
      super_nic_res.max_tx_qs = (unsigned short)0;
      super_nic_res.max_rss_qs = (unsigned short)0;
      super_nic_res.max_rx_qs = (unsigned short)0;
      super_nic_res.max_cq_count = (unsigned short)0;
      super_nic_res.max_uc_mac = (unsigned short)0;
      super_nic_res.max_vlans = (unsigned short)0;
      super_nic_res.max_iface_count = (unsigned short)0;
      super_nic_res.max_mcc_count = (unsigned short)0;
      super_nic_res.max_evt_qs = (unsigned short)0;
      super_nic_res.if_cap_flags = 0U;
      super_nic_res.vf_if_cap_flags = 0U;
      be_cmd_get_profile_config(adapter, & super_nic_res, 0, 0);
      res->max_tx_qs = (int )super_nic_res.max_tx_qs != 0 ? (u16 )((int )super_nic_res.max_tx_qs) : 16U;
    } else {
      res->max_tx_qs = 16U;
    }
  }
  if (((adapter->function_caps & 2U) != 0U && ! use_sriov) && (unsigned int )adapter->virtfn == 0U) {
    res->max_rss_qs = (int )adapter->be3_native ? 16U : 4U;
  } else {
  }
  res->max_rx_qs = (unsigned int )res->max_rss_qs + 1U;
  if ((unsigned int )adapter->virtfn == 0U) {
    res->max_evt_qs = (unsigned int )adapter->pool_res.max_vfs != 0U ? 8U : 16U;
  } else {
    res->max_evt_qs = 1U;
  }
  res->if_cap_flags = 16784316U;
  res->if_cap_flags = res->if_cap_flags & 4278190079U;
  if ((adapter->function_caps & 2U) == 0U) {
    res->if_cap_flags = res->if_cap_flags & 4294967291U;
  } else {
  }
  return;
}
}
static void be_setup_init(struct be_adapter *adapter )
{
  {
  adapter->vlan_prio_bmap = 255U;
  adapter->phy.link_speed = -1;
  adapter->if_handle = -1;
  adapter->be3_native = 0;
  adapter->if_flags = 0U;
  if ((unsigned int )adapter->virtfn == 0U) {
    adapter->cmd_privileges = 1792U;
  } else {
    adapter->cmd_privileges = 1U;
  }
  return;
}
}
static int be_get_sriov_config(struct be_adapter *adapter )
{
  struct be_resources res ;
  int max_vfs ;
  int old_vfs ;
  int _min1 ;
  int _min2 ;
  int tmp ;
  {
  res.max_vfs = 0U;
  res.max_mcast_mac = (unsigned short)0;
  res.max_tx_qs = (unsigned short)0;
  res.max_rss_qs = (unsigned short)0;
  res.max_rx_qs = (unsigned short)0;
  res.max_cq_count = (unsigned short)0;
  res.max_uc_mac = (unsigned short)0;
  res.max_vlans = (unsigned short)0;
  res.max_iface_count = (unsigned short)0;
  res.max_mcc_count = (unsigned short)0;
  res.max_evt_qs = (unsigned short)0;
  res.if_cap_flags = 0U;
  res.vf_if_cap_flags = 0U;
  be_cmd_get_profile_config(adapter, & res, 0, 0);
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) && (unsigned int )res.max_vfs == 0U) {
    max_vfs = pci_sriov_get_totalvfs(adapter->pdev);
    if (max_vfs > 0) {
      _min1 = 30;
      _min2 = max_vfs;
      res.max_vfs = (u16 )(_min1 < _min2 ? _min1 : _min2);
    } else {
      res.max_vfs = 0U;
    }
  } else {
  }
  adapter->pool_res = res;
  old_vfs = pci_num_vf(adapter->pdev);
  if (old_vfs != 0) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "%d VFs are already enabled\n",
              old_vfs);
    tmp = pci_sriov_get_totalvfs(adapter->pdev);
    adapter->pool_res.max_vfs = (u16 )tmp;
    adapter->num_vfs = (u16 )old_vfs;
  } else {
  }
  return (0);
}
}
static void be_alloc_sriov_res(struct be_adapter *adapter )
{
  int old_vfs ;
  int tmp ;
  u16 num_vf_qs ;
  int status ;
  {
  tmp = pci_num_vf(adapter->pdev);
  old_vfs = tmp;
  be_get_sriov_config(adapter);
  if (old_vfs == 0) {
    pci_sriov_set_totalvfs(adapter->pdev, (int )adapter->pool_res.max_vfs);
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (unsigned int )adapter->pool_res.max_vfs != 0U) && old_vfs == 0) {
    num_vf_qs = be_calculate_vf_qs(adapter, 0);
    status = be_cmd_set_sriov_config(adapter, adapter->pool_res, 0, (int )num_vf_qs);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to optimize SRIOV resources\n");
    } else {
    }
  } else {
  }
  return;
}
}
static int be_get_resources(struct be_adapter *adapter )
{
  struct device *dev ;
  struct be_resources res ;
  int status ;
  u16 __min1 ;
  int tmp ;
  u16 __min2 ;
  u16 tmp___0 ;
  {
  dev = & (adapter->pdev)->dev;
  res.max_vfs = 0U;
  res.max_mcast_mac = (unsigned short)0;
  res.max_tx_qs = (unsigned short)0;
  res.max_rss_qs = (unsigned short)0;
  res.max_rx_qs = (unsigned short)0;
  res.max_cq_count = (unsigned short)0;
  res.max_uc_mac = (unsigned short)0;
  res.max_vlans = (unsigned short)0;
  res.max_iface_count = (unsigned short)0;
  res.max_mcc_count = (unsigned short)0;
  res.max_evt_qs = (unsigned short)0;
  res.if_cap_flags = 0U;
  res.vf_if_cap_flags = 0U;
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    BEx_get_resources(adapter, & res);
    adapter->res = res;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    status = be_cmd_get_func_config(adapter, & res);
    if (status != 0) {
      return (status);
    } else {
    }
    if (((unsigned int )res.max_rss_qs != 0U && (int )res.max_rss_qs == (int )res.max_rx_qs) && (res.if_cap_flags & 16777216U) == 0U) {
      res.max_rss_qs = (unsigned int )res.max_rss_qs + 65535U;
    } else {
    }
    if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
      res.max_evt_qs = (u16 )((unsigned int )res.max_evt_qs / 2U);
    } else {
    }
    adapter->res = res;
  } else {
  }
  adapter->need_def_rxq = (adapter->res.if_cap_flags & 16777216U) == 0U;
  _dev_info((struct device const *)dev, "Max: txqs %d, rxqs %d, rss %d, eqs %d, vfs %d\n",
            (int )adapter->res.max_tx_qs, (int )adapter->res.max_rx_qs, (int )adapter->res.max_rss_qs,
            (int )adapter->res.max_evt_qs, (int )adapter->pool_res.max_vfs);
  _dev_info((struct device const *)dev, "Max: uc-macs %d, mc-macs %d, vlans %d\n",
            (int )adapter->res.max_uc_mac, (int )adapter->res.max_mcast_mac, (int )adapter->res.max_vlans);
  tmp = netif_get_num_default_rss_queues();
  __min1 = (u16 )tmp;
  tmp___0 = be_max_qs(adapter);
  __min2 = tmp___0;
  adapter->cfg_num_qs = (u16 )((int )__min1 < (int )__min2 ? __min1 : __min2);
  return (0);
}
}
static int be_get_config(struct be_adapter *adapter )
{
  int status ;
  int level ;
  u16 profile_id ;
  void *tmp ;
  {
  status = be_cmd_get_cntl_attributes(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  status = be_cmd_query_fw_cfg(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    level = be_cmd_get_fw_log_level(adapter);
    adapter->msg_enable = level <= 48 ? 8192U : 0U;
  } else {
  }
  be_cmd_get_acpi_wol_cap(adapter);
  be_cmd_query_port_name(adapter);
  if ((unsigned int )adapter->virtfn == 0U) {
    status = be_cmd_get_active_profile(adapter, & profile_id);
    if (status == 0) {
      _dev_info((struct device const *)(& (adapter->pdev)->dev), "Using profile 0x%x\n",
                (int )profile_id);
    } else {
    }
  } else {
  }
  status = be_get_resources(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp = kcalloc((size_t )adapter->res.max_uc_mac, 4UL, 208U);
  adapter->pmac_id = (u32 *)tmp;
  if ((unsigned long )adapter->pmac_id == (unsigned long )((u32 *)0U)) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int be_mac_setup(struct be_adapter *adapter )
{
  u8 mac[6U] ;
  int status ;
  bool tmp ;
  {
  tmp = is_zero_ether_addr((u8 const *)(adapter->netdev)->dev_addr);
  if ((int )tmp) {
    status = be_cmd_get_perm_mac(adapter, (u8 *)(& mac));
    if (status != 0) {
      return (status);
    } else {
    }
    memcpy((void *)(adapter->netdev)->dev_addr, (void const *)(& mac), 6UL);
    memcpy((void *)(& (adapter->netdev)->perm_addr), (void const *)(& mac), 6UL);
  } else {
    memcpy((void *)(& mac), (void const *)(adapter->netdev)->dev_addr, 6UL);
  }
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) || (unsigned int )adapter->virtfn == 0U) {
    be_cmd_pmac_add(adapter, (u8 *)(& mac), (u32 )adapter->if_handle, adapter->pmac_id,
                    0U);
  } else {
  }
  return (0);
}
}
static void be_schedule_worker(struct be_adapter *adapter )
{
  unsigned long tmp ;
  {
  tmp = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->work, tmp);
  adapter->flags = adapter->flags | 8U;
  return;
}
}
static void be_schedule_err_detection(struct be_adapter *adapter )
{
  unsigned long tmp ;
  {
  tmp = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->be_err_detection_work, tmp);
  adapter->flags = adapter->flags | 2048U;
  return;
}
}
static int be_setup_queues(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  int status ;
  {
  netdev = adapter->netdev;
  status = be_evt_queues_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_tx_qs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_rx_cqs_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_mcc_queues_create(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = netif_set_real_num_rx_queues(netdev, (unsigned int )adapter->num_rx_qs);
  if (status != 0) {
    goto err;
  } else {
  }
  status = netif_set_real_num_tx_queues(netdev, (unsigned int )adapter->num_tx_qs);
  if (status != 0) {
    goto err;
  } else {
  }
  return (0);
  err:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "queue_setup failed\n");
  return (status);
}
}
int be_update_queues(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  int status ;
  bool tmp ;
  bool tmp___0 ;
  {
  netdev = adapter->netdev;
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    be_close(netdev);
  } else {
  }
  be_cancel_worker(adapter);
  if (adapter->num_msix_roce_vec == 0U) {
    be_msix_disable(adapter);
  } else {
  }
  be_clear_queues(adapter);
  if ((unsigned int )adapter->num_msix_vec == 0U) {
    status = be_msix_enable(adapter);
    if (status != 0) {
      return (status);
    } else {
    }
  } else {
  }
  status = be_setup_queues(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  be_schedule_worker(adapter);
  tmp___0 = netif_running((struct net_device const *)netdev);
  if ((int )tmp___0) {
    status = be_open(netdev);
  } else {
  }
  return (status);
}
}
__inline static int fw_major_num(char const *fw_ver )
{
  int fw_major ;
  int i ;
  {
  fw_major = 0;
  i = sscanf(fw_ver, "%d.", & fw_major);
  if (i != 1) {
    return (0);
  } else {
  }
  return (fw_major);
}
}
static bool be_reset_required(struct be_adapter *adapter )
{
  int tmp ;
  {
  tmp = pci_num_vf(adapter->pdev);
  return (tmp == 0);
}
}
static int be_func_init(struct be_adapter *adapter )
{
  int status ;
  bool tmp ;
  {
  status = be_fw_wait_ready(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp = be_reset_required(adapter);
  if ((int )tmp) {
    status = be_cmd_reset_function(adapter);
    if (status != 0) {
      return (status);
    } else {
    }
    msleep(100U);
    be_clear_error(adapter, 255);
  } else {
  }
  status = be_cmd_fw_init(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  be_intr_set(adapter, 1);
  return (0);
}
}
static int be_setup(struct be_adapter *adapter )
{
  struct device *dev ;
  int status ;
  int tmp ;
  bool tmp___0 ;
  {
  dev = & (adapter->pdev)->dev;
  status = be_func_init(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  be_setup_init(adapter);
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    be_cmd_req_native_mode(adapter);
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) && (unsigned int )adapter->virtfn == 0U) {
    be_alloc_sriov_res(adapter);
  } else {
  }
  status = be_get_config(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_msix_enable(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  status = be_if_create(adapter, (u32 *)(& adapter->if_handle), adapter->res.if_cap_flags,
                        0U);
  if (status != 0) {
    goto err;
  } else {
  }
  rtnl_lock();
  status = be_setup_queues(adapter);
  rtnl_unlock();
  if (status != 0) {
    goto err;
  } else {
  }
  be_cmd_get_fn_privileges(adapter, & adapter->cmd_privileges, 0U);
  status = be_mac_setup(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  be_cmd_get_fw_ver(adapter);
  _dev_info((struct device const *)dev, "FW version is %s\n", (char *)(& adapter->fw_ver));
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    tmp = fw_major_num((char const *)(& adapter->fw_ver));
    if (tmp <= 3) {
      dev_err((struct device const *)dev, "Firmware on card is old(%s), IRQs may not work",
              (char *)(& adapter->fw_ver));
      dev_err((struct device const *)dev, "Please upgrade firmware to version >= 4.0\n");
    } else {
    }
  } else {
  }
  if ((unsigned int )adapter->vlans_added != 0U) {
    be_vid_config(adapter);
  } else {
  }
  be_set_rx_mode(adapter->netdev);
  status = be_cmd_set_flow_control(adapter, adapter->tx_fc, adapter->rx_fc);
  if (status != 0) {
    be_cmd_get_flow_control(adapter, & adapter->tx_fc, & adapter->rx_fc);
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "HW Flow control - TX:%d RX:%d\n",
            adapter->tx_fc, adapter->rx_fc);
  if ((unsigned int )adapter->virtfn == 0U) {
    be_cmd_set_logical_link_config(adapter, 0, 0);
  } else {
  }
  if ((unsigned int )adapter->num_vfs != 0U) {
    be_vf_setup(adapter);
  } else {
  }
  status = be_cmd_get_phy_info(adapter);
  if (status == 0) {
    tmp___0 = be_pause_supported(adapter);
    if ((int )tmp___0) {
      adapter->phy.fc_autoneg = 1U;
    } else {
    }
  } else {
  }
  be_schedule_worker(adapter);
  adapter->flags = adapter->flags | 512U;
  return (0);
  err:
  be_clear(adapter);
  return (status);
}
}
static void be_netpoll(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_eq_obj *eqo ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_58921;
  ldv_58920:
  be_eq_notify(eqo->adapter, (int )eqo->q.id, 0, 1, 0, 0U);
  napi_schedule(& eqo->napi);
  i = i + 1;
  eqo = eqo + 1;
  ldv_58921: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_58920;
  } else {
  }
  return;
}
}
static char flash_cookie[2U][16U] = { { '*', '*', '*', ' ',
            'S', 'E', ' ', 'F',
            'L', 'A', 'S', '\000'},
   { 'H', ' ', 'D', 'I',
            'R', 'E', 'C', 'T',
            'O', 'R', 'Y', ' ',
            '*', '*', '*', ' '}};
static bool phy_flashing_required(struct be_adapter *adapter )
{
  {
  return ((bool )((unsigned int )adapter->phy.phy_type == 13U && (unsigned int )adapter->phy.interface_type == 6U));
}
}
static bool is_comp_in_ufi(struct be_adapter *adapter , struct flash_section_info *fsec ,
                           int type )
{
  int i ;
  int img_type ;
  struct flash_section_info_g2 *fsec_g2 ;
  {
  i = 0;
  img_type = 0;
  fsec_g2 = (struct flash_section_info_g2 *)0;
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    fsec_g2 = (struct flash_section_info_g2 *)fsec;
  } else {
  }
  i = 0;
  goto ldv_58936;
  ldv_58935: ;
  if ((unsigned long )fsec_g2 != (unsigned long )((struct flash_section_info_g2 *)0)) {
    img_type = (int )fsec_g2->fsec_entry[i].type;
  } else {
    img_type = (int )fsec->fsec_entry[i].type;
  }
  if (img_type == type) {
    return (1);
  } else {
  }
  i = i + 1;
  ldv_58936: ;
  if (i <= 31) {
    goto ldv_58935;
  } else {
  }
  return (0);
}
}
static struct flash_section_info *get_fsec_info(struct be_adapter *adapter , int header_size ,
                                                struct firmware const *fw )
{
  struct flash_section_info *fsec ;
  u8 const *p ;
  int tmp ;
  {
  fsec = (struct flash_section_info *)0;
  p = fw->data;
  p = p + (unsigned long )header_size;
  goto ldv_58946;
  ldv_58945:
  fsec = (struct flash_section_info *)p;
  tmp = memcmp((void const *)(& flash_cookie), (void const *)(& fsec->cookie),
               32UL);
  if (tmp == 0) {
    return (fsec);
  } else {
  }
  p = p + 32UL;
  ldv_58946: ;
  if ((unsigned long )((unsigned char const *)(fw->data + fw->size)) > (unsigned long )p) {
    goto ldv_58945;
  } else {
  }
  return ((struct flash_section_info *)0);
}
}
static int be_check_flash_crc(struct be_adapter *adapter , u8 const *p , u32 img_offset ,
                              u32 img_size , int hdr_size , u16 img_optype , bool *crc_match )
{
  u32 crc_offset ;
  int status ;
  u8 crc[4U] ;
  int tmp ;
  {
  status = be_cmd_get_flash_crc(adapter, (u8 *)(& crc), (int )img_optype, img_offset,
                                img_size - 4U);
  if (status != 0) {
    return (status);
  } else {
  }
  crc_offset = (((u32 )hdr_size + img_offset) + img_size) - 4U;
  tmp = memcmp((void const *)(& crc), (void const *)p + (unsigned long )crc_offset,
               4UL);
  if (tmp == 0) {
    *crc_match = 1;
  } else {
    *crc_match = 0;
  }
  return (status);
}
}
static int be_flash(struct be_adapter *adapter , u8 const *img , struct be_dma_mem *flash_cmd ,
                    int optype , int img_size , u32 img_offset )
{
  u32 flash_op ;
  u32 num_bytes ;
  u32 total_bytes ;
  u32 bytes_sent ;
  struct be_cmd_write_flashrom *req ;
  int status ;
  u32 __min1 ;
  u32 __min2 ;
  {
  total_bytes = (u32 )img_size;
  bytes_sent = 0U;
  req = (struct be_cmd_write_flashrom *)flash_cmd->va;
  goto ldv_58979;
  ldv_58978:
  __min1 = 32768U;
  __min2 = total_bytes;
  num_bytes = __min1 < __min2 ? __min1 : __min2;
  total_bytes = total_bytes - num_bytes;
  if (total_bytes == 0U) {
    if (optype == 99) {
      flash_op = 9U;
    } else {
      flash_op = 1U;
    }
  } else
  if (optype == 99) {
    flash_op = 10U;
  } else {
    flash_op = 2U;
  }
  memcpy((void *)(& req->data_buf), (void const *)img, (size_t )num_bytes);
  img = img + (unsigned long )num_bytes;
  status = be_cmd_write_flashrom(adapter, flash_cmd, (u32 )optype, flash_op, img_offset + bytes_sent,
                                 num_bytes);
  if ((status > 0 && ((unsigned int )status & 65535U) == 2U) && optype == 99) {
    goto ldv_58977;
  } else
  if (status != 0) {
    return (status);
  } else {
  }
  bytes_sent = bytes_sent + num_bytes;
  ldv_58979: ;
  if (total_bytes != 0U) {
    goto ldv_58978;
  } else {
  }
  ldv_58977: ;
  return (0);
}
}
static int be_flash_BEx(struct be_adapter *adapter , struct firmware const *fw ,
                        struct be_dma_mem *flash_cmd , int num_of_images )
{
  int img_hdrs_size ;
  struct device *dev ;
  struct flash_section_info *fsec ;
  int status ;
  int i ;
  int filehdr_size ;
  int num_comp ;
  struct flash_comp const *pflashcomp ;
  bool crc_match ;
  u8 const *p ;
  struct flash_comp gen3_flash_types[10U] ;
  struct flash_comp gen2_flash_types[8U] ;
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  img_hdrs_size = (int )((unsigned int )num_of_images * 48U);
  dev = & (adapter->pdev)->dev;
  fsec = (struct flash_section_info *)0;
  gen3_flash_types[0].offset = 2097152UL;
  gen3_flash_types[0].optype = 0;
  gen3_flash_types[0].size = 2097152;
  gen3_flash_types[0].img_type = 160;
  gen3_flash_types[1].offset = 262144UL;
  gen3_flash_types[1].optype = 1;
  gen3_flash_types[1].size = 1048576;
  gen3_flash_types[1].img_type = 224;
  gen3_flash_types[2].offset = 12582912UL;
  gen3_flash_types[2].optype = 2;
  gen3_flash_types[2].size = 524288;
  gen3_flash_types[2].img_type = 34;
  gen3_flash_types[3].offset = 13107200UL;
  gen3_flash_types[3].optype = 3;
  gen3_flash_types[3].size = 524288;
  gen3_flash_types[3].img_type = 32;
  gen3_flash_types[4].offset = 13631488UL;
  gen3_flash_types[4].optype = 8;
  gen3_flash_types[4].size = 524288;
  gen3_flash_types[4].img_type = 33;
  gen3_flash_types[5].offset = 4194304UL;
  gen3_flash_types[5].optype = 9;
  gen3_flash_types[5].size = 2097152;
  gen3_flash_types[5].img_type = 176;
  gen3_flash_types[6].offset = 6291456UL;
  gen3_flash_types[6].optype = 10;
  gen3_flash_types[6].size = 2097152;
  gen3_flash_types[6].img_type = 162;
  gen3_flash_types[7].offset = 8388608UL;
  gen3_flash_types[7].optype = 11;
  gen3_flash_types[7].size = 2097152;
  gen3_flash_types[7].img_type = 178;
  gen3_flash_types[8].offset = 15990784UL;
  gen3_flash_types[8].optype = 13;
  gen3_flash_types[8].size = 262144;
  gen3_flash_types[8].img_type = 16;
  gen3_flash_types[9].offset = 1310720UL;
  gen3_flash_types[9].optype = 99;
  gen3_flash_types[9].size = 262144;
  gen3_flash_types[9].img_type = 192;
  gen2_flash_types[0].offset = 1048576UL;
  gen2_flash_types[0].optype = 0;
  gen2_flash_types[0].size = 1310720;
  gen2_flash_types[0].img_type = 160;
  gen2_flash_types[1].offset = 0UL;
  gen2_flash_types[1].optype = 1;
  gen2_flash_types[1].size = 262144;
  gen2_flash_types[1].img_type = 224;
  gen2_flash_types[2].offset = 7340032UL;
  gen2_flash_types[2].optype = 2;
  gen2_flash_types[2].size = 262144;
  gen2_flash_types[2].img_type = 34;
  gen2_flash_types[3].offset = 7864320UL;
  gen2_flash_types[3].optype = 3;
  gen2_flash_types[3].size = 262144;
  gen2_flash_types[3].img_type = 32;
  gen2_flash_types[4].offset = 524288UL;
  gen2_flash_types[4].optype = 8;
  gen2_flash_types[4].size = 262144;
  gen2_flash_types[4].img_type = 33;
  gen2_flash_types[5].offset = 2359296UL;
  gen2_flash_types[5].optype = 9;
  gen2_flash_types[5].size = 1310720;
  gen2_flash_types[5].img_type = 176;
  gen2_flash_types[6].offset = 3670016UL;
  gen2_flash_types[6].optype = 10;
  gen2_flash_types[6].size = 1310720;
  gen2_flash_types[6].img_type = 162;
  gen2_flash_types[7].offset = 4980736UL;
  gen2_flash_types[7].optype = 11;
  gen2_flash_types[7].size = 1310720;
  gen2_flash_types[7].img_type = 178;
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    pflashcomp = (struct flash_comp const *)(& gen3_flash_types);
    filehdr_size = 128;
    num_comp = 10;
  } else {
    pflashcomp = (struct flash_comp const *)(& gen2_flash_types);
    filehdr_size = 96;
    num_comp = 8;
    img_hdrs_size = 0;
  }
  fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
  if ((unsigned long )fsec == (unsigned long )((struct flash_section_info *)0)) {
    dev_err((struct device const *)dev, "Invalid Cookie. FW image may be corrupted\n");
    return (-1);
  } else {
  }
  i = 0;
  goto ldv_59004;
  ldv_59003:
  tmp = is_comp_in_ufi(adapter, fsec, (pflashcomp + (unsigned long )i)->img_type);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    goto ldv_59002;
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 13) {
    tmp___1 = memcmp((void const *)(& adapter->fw_ver), (void const *)"3.102.148.0",
                     11UL);
    if (tmp___1 < 0) {
      goto ldv_59002;
    } else {
    }
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 99) {
    tmp___2 = phy_flashing_required(adapter);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      goto ldv_59002;
    } else {
    }
  } else {
  }
  if ((int )(pflashcomp + (unsigned long )i)->optype == 1) {
    status = be_check_flash_crc(adapter, fw->data, (u32 )(pflashcomp + (unsigned long )i)->offset,
                                (u32 )(pflashcomp + (unsigned long )i)->size, filehdr_size + img_hdrs_size,
                                1, & crc_match);
    if (status != 0) {
      dev_err((struct device const *)dev, "Could not get CRC for 0x%x region\n",
              (pflashcomp + (unsigned long )i)->optype);
      goto ldv_59002;
    } else {
    }
    if ((int )crc_match) {
      goto ldv_59002;
    } else {
    }
  } else {
  }
  p = fw->data + (((unsigned long )filehdr_size + (unsigned long )(pflashcomp + (unsigned long )i)->offset) + (unsigned long )img_hdrs_size);
  if ((unsigned long )(p + (unsigned long )(pflashcomp + (unsigned long )i)->size) > (unsigned long )((unsigned char const *)(fw->data + fw->size))) {
    return (-1);
  } else {
  }
  status = be_flash(adapter, p, flash_cmd, (pflashcomp + (unsigned long )i)->optype,
                    (pflashcomp + (unsigned long )i)->size, 0U);
  if (status != 0) {
    dev_err((struct device const *)dev, "Flashing section type 0x%x failed\n", (pflashcomp + (unsigned long )i)->img_type);
    return (status);
  } else {
  }
  ldv_59002:
  i = i + 1;
  ldv_59004: ;
  if (i < num_comp) {
    goto ldv_59003;
  } else {
  }
  return (0);
}
}
static u16 be_get_img_optype(struct flash_section_entry fsec_entry )
{
  u32 img_type ;
  u16 img_optype ;
  {
  img_type = fsec_entry.type;
  img_optype = fsec_entry.optype;
  if ((unsigned int )img_optype != 65535U) {
    return (img_optype);
  } else {
  }
  switch (img_type) {
  case 160U:
  img_optype = 0U;
  goto ldv_59012;
  case 224U:
  img_optype = 1U;
  goto ldv_59012;
  case 34U:
  img_optype = 2U;
  goto ldv_59012;
  case 32U:
  img_optype = 3U;
  goto ldv_59012;
  case 33U:
  img_optype = 8U;
  goto ldv_59012;
  case 176U:
  img_optype = 9U;
  goto ldv_59012;
  case 16U:
  img_optype = 13U;
  goto ldv_59012;
  case 48U:
  img_optype = 22U;
  goto ldv_59012;
  case 192U:
  img_optype = 21U;
  goto ldv_59012;
  case 208U:
  img_optype = 18U;
  goto ldv_59012;
  case 209U:
  img_optype = 19U;
  goto ldv_59012;
  case 210U:
  img_optype = 23U;
  goto ldv_59012;
  default: ;
  goto ldv_59012;
  }
  ldv_59012: ;
  return (img_optype);
}
}
static int be_flash_skyhawk(struct be_adapter *adapter , struct firmware const *fw ,
                            struct be_dma_mem *flash_cmd , int num_of_images )
{
  int img_hdrs_size ;
  bool crc_match ;
  bool old_fw_img ;
  bool flash_offset_support ;
  struct device *dev ;
  struct flash_section_info *fsec ;
  u32 img_offset ;
  u32 img_size ;
  u32 img_type ;
  u16 img_optype ;
  u16 flash_optype ;
  int status ;
  int i ;
  int filehdr_size ;
  u8 const *p ;
  {
  img_hdrs_size = (int )((unsigned int )num_of_images * 48U);
  flash_offset_support = 1;
  dev = & (adapter->pdev)->dev;
  fsec = (struct flash_section_info *)0;
  filehdr_size = 128;
  fsec = get_fsec_info(adapter, filehdr_size + img_hdrs_size, fw);
  if ((unsigned long )fsec == (unsigned long )((struct flash_section_info *)0)) {
    dev_err((struct device const *)dev, "Invalid Cookie. FW image may be corrupted\n");
    return (-22);
  } else {
  }
  retry_flash:
  i = 0;
  goto ldv_59050;
  ldv_59049:
  img_offset = fsec->fsec_entry[i].offset;
  img_size = fsec->fsec_entry[i].pad_size;
  img_type = fsec->fsec_entry[i].type;
  img_optype = be_get_img_optype(fsec->fsec_entry[i]);
  old_fw_img = (unsigned int )fsec->fsec_entry[i].optype == 65535U;
  if ((unsigned int )img_optype == 65535U) {
    goto ldv_59047;
  } else {
  }
  if ((int )flash_offset_support) {
    flash_optype = 7U;
  } else {
    flash_optype = img_optype;
  }
  if ((int )old_fw_img) {
    goto flash;
  } else {
  }
  status = be_check_flash_crc(adapter, fw->data, img_offset, img_size, filehdr_size + img_hdrs_size,
                              (int )flash_optype, & crc_match);
  if ((status > 0 && ((unsigned int )status & 65535U) == 2U) || (status > 0 && ((unsigned int )status & 65535U) == 3U)) {
    if ((unsigned int )flash_optype == 7U) {
      flash_offset_support = 0;
      goto retry_flash;
    } else {
    }
    dev_err((struct device const *)dev, "Flash incomplete. Reset the server\n");
    dev_err((struct device const *)dev, "Download FW image again after reset\n");
    return (-11);
  } else
  if (status != 0) {
    dev_err((struct device const *)dev, "Could not get CRC for 0x%x region\n", (int )img_optype);
    return (-14);
  } else {
  }
  if ((int )crc_match) {
    goto ldv_59047;
  } else {
  }
  flash:
  p = fw->data + (((unsigned long )filehdr_size + (unsigned long )img_offset) + (unsigned long )img_hdrs_size);
  if ((unsigned long )(p + (unsigned long )img_size) > (unsigned long )((unsigned char const *)(fw->data + fw->size))) {
    return (-1);
  } else {
  }
  status = be_flash(adapter, p, flash_cmd, (int )flash_optype, (int )img_size, img_offset);
  if ((status > 0 && ((unsigned int )status & 65535U) == 3U) && (unsigned int )flash_optype == 7U) {
    flash_offset_support = 0;
    goto retry_flash;
  } else {
  }
  if ((int )old_fw_img && ((status > 0 && ((unsigned int )status & 65535U) == 3U) || ((unsigned int )img_optype == 23U && (status > 0 && ((unsigned int )status & 65535U) == 1U)))) {
    goto ldv_59047;
  } else
  if (status != 0) {
    dev_err((struct device const *)dev, "Flashing section type 0x%x failed\n", img_type);
    return (-14);
  } else {
  }
  ldv_59047:
  i = i + 1;
  ldv_59050: ;
  if ((u32 )i < fsec->fsec_hdr.num_images) {
    goto ldv_59049;
  } else {
  }
  return (0);
}
}
static int lancer_fw_download(struct be_adapter *adapter , struct firmware const *fw )
{
  struct device *dev ;
  struct be_dma_mem flash_cmd ;
  u8 const *data_ptr ;
  u8 *dest_image_ptr ;
  size_t image_size ;
  u32 chunk_size ;
  u32 data_written ;
  u32 offset ;
  int status ;
  u8 add_status ;
  u8 change_status ;
  u32 __min1 ;
  u32 __min2 ;
  {
  dev = & (adapter->pdev)->dev;
  data_ptr = (u8 const *)0U;
  dest_image_ptr = (u8 *)0U;
  image_size = 0UL;
  chunk_size = 0U;
  data_written = 0U;
  offset = 0U;
  status = 0;
  add_status = 0U;
  if (((unsigned long )fw->size & 3UL) != 0UL) {
    dev_err((struct device const *)dev, "FW image size should be multiple of 4\n");
    return (-22);
  } else {
  }
  flash_cmd.size = 32912U;
  flash_cmd.va = dma_zalloc_coherent(dev, (size_t )flash_cmd.size, & flash_cmd.dma,
                                     208U);
  if ((unsigned long )flash_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  dest_image_ptr = (u8 *)flash_cmd.va + 144U;
  image_size = fw->size;
  data_ptr = fw->data;
  goto ldv_59072;
  ldv_59071:
  __min1 = (u32 )image_size;
  __min2 = 32768U;
  chunk_size = __min1 < __min2 ? __min1 : __min2;
  memcpy((void *)dest_image_ptr, (void const *)data_ptr, (size_t )chunk_size);
  status = lancer_cmd_write_object(adapter, & flash_cmd, chunk_size, offset, "/prg",
                                   & data_written, & change_status, & add_status);
  if (status != 0) {
    goto ldv_59070;
  } else {
  }
  offset = offset + data_written;
  data_ptr = data_ptr + (unsigned long )data_written;
  image_size = image_size - (size_t )data_written;
  ldv_59072: ;
  if (image_size != 0UL) {
    goto ldv_59071;
  } else {
  }
  ldv_59070: ;
  if (status == 0) {
    status = lancer_cmd_write_object(adapter, & flash_cmd, 0U, offset, "/prg", & data_written,
                                     & change_status, & add_status);
  } else {
  }
  dma_free_attrs(dev, (size_t )flash_cmd.size, flash_cmd.va, flash_cmd.dma, (struct dma_attrs *)0);
  if (status != 0) {
    dev_err((struct device const *)dev, "Firmware load error\n");
    return (status <= 0 ? status : -5);
  } else {
  }
  _dev_info((struct device const *)dev, "Firmware flashed successfully\n");
  if ((unsigned int )change_status == 2U) {
    _dev_info((struct device const *)dev, "Resetting adapter to activate new FW\n");
    status = lancer_physdev_ctrl(adapter, 2U);
    if (status != 0) {
      dev_err((struct device const *)dev, "Adapter busy, could not reset FW\n");
      dev_err((struct device const *)dev, "Reboot server to activate new FW\n");
    } else {
    }
  } else
  if ((unsigned int )change_status != 0U) {
    _dev_info((struct device const *)dev, "Reboot server to activate new FW\n");
  } else {
  }
  return (0);
}
}
static bool be_check_ufi_compatibility(struct be_adapter *adapter , struct flash_file_hdr_g3 *fhdr )
{
  {
  if ((unsigned long )fhdr == (unsigned long )((struct flash_file_hdr_g3 *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Invalid FW UFI file");
    return (1);
  } else {
  }
  switch ((int )fhdr->build[0]) {
  case 52: ;
  if ((unsigned int )(adapter->pdev)->device != 1824U && (unsigned int )(adapter->pdev)->device != 1832U) {
    return (0);
  } else {
  }
  goto ldv_59078;
  case 51: ;
  if ((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) {
    return (0);
  } else {
  }
  goto ldv_59078;
  case 50: ;
  if ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) {
    return (0);
  } else {
  }
  goto ldv_59078;
  default: ;
  return (0);
  }
  ldv_59078: ;
  return ((int )((unsigned short )fhdr->asic_type_rev) >= (int )adapter->asic_rev);
}
}
static int be_fw_download(struct be_adapter *adapter , struct firmware const *fw )
{
  struct device *dev ;
  struct flash_file_hdr_g3 *fhdr3 ;
  struct image_hdr *img_hdr_ptr ;
  int status ;
  int i ;
  int num_imgs ;
  struct be_dma_mem flash_cmd ;
  bool tmp ;
  int tmp___0 ;
  {
  dev = & (adapter->pdev)->dev;
  status = 0;
  fhdr3 = (struct flash_file_hdr_g3 *)fw->data;
  tmp = be_check_ufi_compatibility(adapter, fhdr3);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_err((struct device const *)dev, "Flash image is not compatible with adapter\n");
    return (-22);
  } else {
  }
  flash_cmd.size = 32804U;
  flash_cmd.va = dma_zalloc_coherent(dev, (size_t )flash_cmd.size, & flash_cmd.dma,
                                     208U);
  if ((unsigned long )flash_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  num_imgs = (int )fhdr3->num_imgs;
  i = 0;
  goto ldv_59095;
  ldv_59094:
  img_hdr_ptr = (struct image_hdr *)(fw->data + ((unsigned long )i * 48UL + 128UL));
  if (((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) && img_hdr_ptr->imageid != 1U) {
    goto ldv_59093;
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    status = be_flash_skyhawk(adapter, fw, & flash_cmd, num_imgs);
  } else {
    status = be_flash_BEx(adapter, fw, & flash_cmd, num_imgs);
  }
  ldv_59093:
  i = i + 1;
  ldv_59095: ;
  if (i < num_imgs) {
    goto ldv_59094;
  } else {
  }
  dma_free_attrs(dev, (size_t )flash_cmd.size, flash_cmd.va, flash_cmd.dma, (struct dma_attrs *)0);
  if (status == 0) {
    _dev_info((struct device const *)dev, "Firmware flashed successfully\n");
  } else {
  }
  return (status);
}
}
int be_load_fw(struct be_adapter *adapter , u8 *fw_file )
{
  struct firmware const *fw ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  {
  tmp = netif_running((struct net_device const *)adapter->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Firmware load not allowed (interface is down)\n");
    return (-100);
  } else {
  }
  status = request_firmware(& fw, (char const *)fw_file, & (adapter->pdev)->dev);
  if (status != 0) {
    goto fw_exit;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Flashing firmware file %s\n",
            fw_file);
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = lancer_fw_download(adapter, fw);
  } else {
    status = be_fw_download(adapter, fw);
  }
  if (status == 0) {
    be_cmd_get_fw_ver(adapter);
  } else {
  }
  fw_exit:
  release_firmware(fw);
  return (status);
}
}
static int be_ndo_bridge_setlink(struct net_device *dev , struct nlmsghdr *nlh , u16 flags )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct nlattr *attr ;
  struct nlattr *br_spec ;
  int rem ;
  int status ;
  u16 mode ;
  void *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  mode = 0U;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (-95);
  } else {
  }
  br_spec = nlmsg_find_attr((struct nlmsghdr const *)nlh, 16, 26);
  if ((unsigned long )br_spec == (unsigned long )((struct nlattr *)0)) {
    return (-22);
  } else {
  }
  tmp___0 = nla_data((struct nlattr const *)br_spec);
  attr = (struct nlattr *)tmp___0;
  rem = nla_len((struct nlattr const *)br_spec);
  goto ldv_59118;
  ldv_59117:
  tmp___1 = nla_type((struct nlattr const *)attr);
  if (tmp___1 != 1) {
    goto ldv_59115;
  } else {
  }
  tmp___2 = nla_len((struct nlattr const *)attr);
  if ((unsigned int )tmp___2 <= 1U) {
    return (-22);
  } else {
  }
  mode = nla_get_u16((struct nlattr const *)attr);
  if ((unsigned int )mode != 1U && (unsigned int )mode != 0U) {
    return (-22);
  } else {
  }
  status = be_cmd_set_hsw_config(adapter, 0, 0U, (int )((u16 )adapter->if_handle),
                                 (unsigned int )mode == 1U ? 3 : 2, 0);
  if (status != 0) {
    goto err;
  } else {
  }
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "enabled switch mode: %s\n",
            (unsigned int )mode == 1U ? (char *)"VEPA" : (char *)"VEB");
  return (status);
  ldv_59115:
  attr = nla_next((struct nlattr const *)attr, & rem);
  ldv_59118:
  tmp___3 = nla_ok((struct nlattr const *)attr, rem);
  if (tmp___3 != 0) {
    goto ldv_59117;
  } else {
  }
  err:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "Failed to set switch mode %s\n",
          (unsigned int )mode == 1U ? (char *)"VEPA" : (char *)"VEB");
  return (status);
}
}
static int be_ndo_bridge_getlink(struct sk_buff *skb , u32 pid , u32 seq , struct net_device *dev ,
                                 u32 filter_mask , int nlflags )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  u8 hsw_mode ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  if (((unsigned long )adapter->flags & 4UL) == 0UL) {
    return (0);
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) || ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U)) {
    hsw_mode = 2U;
  } else {
    status = be_cmd_get_hsw_config(adapter, (u16 *)0U, 0U, (int )((u16 )adapter->if_handle),
                                   & hsw_mode, (bool *)0);
    if (status != 0) {
      return (0);
    } else {
    }
  }
  tmp___0 = ndo_dflt_bridge_getlink(skb, pid, seq, dev, (unsigned int )hsw_mode == 3U,
                                    0U, 0U, nlflags, filter_mask, (int (*)(struct sk_buff * ,
                                                                           struct net_device * ,
                                                                           u32 ))0);
  return (tmp___0);
}
}
static void be_add_vxlan_port(struct net_device *netdev , sa_family_t sa_family ,
                              __be16 port )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct device *dev ;
  int status ;
  int tmp___0 ;
  __u16 tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  dev = & (adapter->pdev)->dev;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return;
  } else {
  }
  if (((unsigned long )adapter->flags & 256UL) != 0UL) {
    _dev_info((struct device const *)dev, "Only one UDP port supported for VxLAN offloads\n");
    _dev_info((struct device const *)dev, "Disabling VxLAN offloads\n");
    adapter->vxlan_port_count = adapter->vxlan_port_count + 1;
    goto err;
  } else {
  }
  tmp___0 = adapter->vxlan_port_count;
  adapter->vxlan_port_count = adapter->vxlan_port_count + 1;
  if (tmp___0 > 0) {
    return;
  } else {
  }
  status = be_cmd_manage_iface(adapter, (u32 )adapter->if_handle, 0);
  if (status != 0) {
    dev_warn((struct device const *)dev, "Failed to convert normal interface to tunnel\n");
    goto err;
  } else {
  }
  status = be_cmd_set_vxlan_port(adapter, (int )port);
  if (status != 0) {
    dev_warn((struct device const *)dev, "Failed to add VxLAN port\n");
    goto err;
  } else {
  }
  adapter->flags = adapter->flags | 256U;
  adapter->vxlan_port = port;
  netdev->hw_enc_features = netdev->hw_enc_features | 68222994ULL;
  netdev->hw_features = netdev->hw_features | 67108864ULL;
  netdev->features = netdev->features | 67108864ULL;
  tmp___1 = __fswab16((int )port);
  _dev_info((struct device const *)dev, "Enabled VxLAN offloads for UDP port %d\n",
            (int )tmp___1);
  return;
  err:
  be_disable_vxlan_offloads(adapter);
  return;
}
}
static void be_del_vxlan_port(struct net_device *netdev , sa_family_t sa_family ,
                              __be16 port )
{
  struct be_adapter *adapter ;
  void *tmp ;
  __u16 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return;
  } else {
  }
  if ((int )adapter->vxlan_port != (int )port) {
    goto done;
  } else {
  }
  be_disable_vxlan_offloads(adapter);
  tmp___0 = __fswab16((int )port);
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Disabled VxLAN offloads for UDP port %d\n",
            (int )tmp___0);
  done:
  adapter->vxlan_port_count = adapter->vxlan_port_count - 1;
  return;
}
}
static netdev_features_t be_features_check(struct sk_buff *skb , struct net_device *dev ,
                                           netdev_features_t features )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u8 l4_hdr ;
  __be16 tmp___0 ;
  struct iphdr *tmp___1 ;
  struct ipv6hdr *tmp___2 ;
  unsigned char *tmp___3 ;
  unsigned char *tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  adapter = (struct be_adapter *)tmp;
  l4_hdr = 0U;
  if ((unsigned int )*((unsigned char *)skb + 146UL) == 0U || ((unsigned long )adapter->flags & 256UL) == 0UL) {
    return (features);
  } else {
  }
  tmp___0 = vlan_get_protocol(skb);
  switch ((int )tmp___0) {
  case 8:
  tmp___1 = ip_hdr((struct sk_buff const *)skb);
  l4_hdr = tmp___1->protocol;
  goto ldv_59155;
  case 56710:
  tmp___2 = ipv6_hdr((struct sk_buff const *)skb);
  l4_hdr = tmp___2->nexthdr;
  goto ldv_59155;
  default: ;
  return (features);
  }
  ldv_59155: ;
  if (((unsigned int )l4_hdr != 17U || (unsigned int )*((unsigned char *)skb + 147UL) != 0U) || (unsigned int )skb->__annonCompField74.inner_protocol != 22629U) {
    return (features & 0xffffffffe000ffe5ULL);
  } else {
    tmp___3 = skb_inner_mac_header((struct sk_buff const *)skb);
    tmp___4 = skb_transport_header((struct sk_buff const *)skb);
    if ((long )tmp___3 - (long )tmp___4 != 16L) {
      return (features & 0xffffffffe000ffe5ULL);
    } else {
    }
  }
  return (features);
}
}
static struct net_device_ops const be_netdev_ops =
     {0, 0, & be_open, & be_close, & be_xmit, 0, 0, & be_set_rx_mode, & be_mac_addr_set,
    & eth_validate_addr, 0, 0, & be_change_mtu, 0, 0, & be_get_stats64, 0, & be_vlan_add_vid,
    & be_vlan_rem_vid, & be_netpoll, 0, 0, & be_busy_poll, & be_set_vf_mac, & be_set_vf_vlan,
    & be_set_vf_tx_rate, & be_set_vf_spoofchk, & be_get_vf_config, & be_set_vf_link_state,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & be_ndo_bridge_setlink,
    & be_ndo_bridge_getlink, 0, 0, 0, 0, & be_add_vxlan_port, & be_del_vxlan_port,
    0, 0, 0, 0, & be_features_check, 0, 0};
static void be_netdev_init(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  netdev->hw_features = netdev->hw_features | 17180983443ULL;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp___0) {
    netdev->hw_features = netdev->hw_features | 8589934592ULL;
  } else {
  }
  netdev->features = (netdev->features | netdev->hw_features) | 768ULL;
  netdev->vlan_features = netdev->vlan_features | 1114131ULL;
  netdev->priv_flags = netdev->priv_flags | 131072U;
  netdev->flags = netdev->flags | 4096U;
  netif_set_gso_max_size(netdev, 65521U);
  netdev->netdev_ops = & be_netdev_ops;
  netdev->ethtool_ops = & be_ethtool_ops;
  return;
}
}
static void be_cleanup(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  bool tmp ;
  {
  netdev = adapter->netdev;
  rtnl_lock();
  netif_device_detach(netdev);
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    be_close(netdev);
  } else {
  }
  rtnl_unlock();
  be_clear(adapter);
  return;
}
}
static int be_resume(struct be_adapter *adapter )
{
  struct net_device *netdev ;
  int status ;
  bool tmp ;
  {
  netdev = adapter->netdev;
  status = be_setup(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    status = be_open(netdev);
    if (status != 0) {
      return (status);
    } else {
    }
  } else {
  }
  netif_device_attach(netdev);
  return (0);
}
}
static int be_err_recover(struct be_adapter *adapter )
{
  struct device *dev ;
  int status ;
  {
  dev = & (adapter->pdev)->dev;
  status = be_resume(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  _dev_info((struct device const *)dev, "Adapter recovery successful\n");
  return (0);
  err: ;
  if ((unsigned int )adapter->virtfn == 0U) {
    dev_err((struct device const *)dev, "Adapter recovery failed\n");
  } else {
    dev_err((struct device const *)dev, "Re-trying adapter recovery\n");
  }
  return (status);
}
}
static void be_err_detection_task(struct work_struct *work )
{
  struct be_adapter *adapter ;
  struct work_struct const *__mptr ;
  int status ;
  u8 tmp ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct be_adapter *)__mptr + 0xffffffffffeb84c0UL;
  status = 0;
  be_detect_error(adapter);
  tmp = be_check_error(adapter, 3U);
  if ((unsigned int )tmp != 0U) {
    be_cleanup(adapter);
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      status = be_err_recover(adapter);
    } else {
    }
  } else {
  }
  if (status == 0 || (unsigned int )adapter->virtfn != 0U) {
    be_schedule_err_detection(adapter);
  } else {
  }
  return;
}
}
static void be_log_sfp_info(struct be_adapter *adapter )
{
  int status ;
  {
  status = be_cmd_query_sfp_info(adapter);
  if (status == 0) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Unqualified SFP+ detected on %c from %s part no: %s",
            (int )adapter->port_name, (u8 *)(& adapter->phy.vendor_name), (u8 *)(& adapter->phy.vendor_pn));
  } else {
  }
  adapter->flags = adapter->flags & 4294966271U;
  return;
}
}
static void be_worker(struct work_struct *work )
{
  struct be_adapter *adapter ;
  struct work_struct const *__mptr ;
  struct be_rx_obj *rxo ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  unsigned long tmp___2 ;
  {
  __mptr = (struct work_struct const *)work;
  adapter = (struct be_adapter *)__mptr + 0xffffffffffeb85a8UL;
  tmp = netif_running((struct net_device const *)adapter->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    local_bh_disable();
    be_process_mcc(adapter);
    local_bh_enable();
    goto reschedule;
  } else {
  }
  if (! adapter->stats_cmd_sent) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      lancer_cmd_get_pport_stats(adapter, & adapter->stats_cmd);
    } else {
      be_cmd_get_stats(adapter, & adapter->stats_cmd);
    }
  } else {
  }
  if ((unsigned int )adapter->virtfn == 0U) {
    tmp___1 = MODULO((int )adapter->work_counter, (int )((u16 )adapter->be_get_temp_freq));
    if (tmp___1 == 0U) {
      be_cmd_get_die_temperature(adapter);
    } else {
    }
  } else {
  }
  i = 0;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
  goto ldv_59199;
  ldv_59198: ;
  if ((int )rxo->rx_post_starved) {
    be_post_rx_frags(rxo, 208U, 64U);
  } else {
  }
  i = i + 1;
  rxo = rxo + 1;
  ldv_59199: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_59198;
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device != 1824U && (unsigned int )(adapter->pdev)->device != 1832U) {
    be_eqd_update(adapter, 0);
  } else {
  }
  if (((unsigned long )adapter->flags & 1024UL) != 0UL) {
    be_log_sfp_info(adapter);
  } else {
  }
  reschedule:
  adapter->work_counter = (u16 )((int )adapter->work_counter + 1);
  tmp___2 = msecs_to_jiffies(1000U);
  schedule_delayed_work(& adapter->work, tmp___2);
  return;
}
}
static void be_unmap_pci_bars(struct be_adapter *adapter )
{
  {
  if ((unsigned long )adapter->csr != (unsigned long )((u8 *)0U)) {
    pci_iounmap(adapter->pdev, (void *)adapter->csr);
  } else {
  }
  if ((unsigned long )adapter->db != (unsigned long )((u8 *)0U)) {
    pci_iounmap(adapter->pdev, (void *)adapter->db);
  } else {
  }
  return;
}
}
static int db_bar(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) || (unsigned int )adapter->virtfn != 0U) {
    return (0);
  } else {
    return (4);
  }
}
}
static int be_roce_map_pci_bars(struct be_adapter *adapter )
{
  int tmp ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    adapter->roce_db.size = 4096U;
    tmp = db_bar(adapter);
    adapter->roce_db.io_addr = (adapter->pdev)->resource[tmp].start;
    tmp___5 = db_bar(adapter);
    if ((adapter->pdev)->resource[tmp___5].start != 0ULL) {
      tmp___3 = db_bar(adapter);
      tmp___4 = db_bar(adapter);
      adapter->roce_db.total_size = ((u32 )(adapter->pdev)->resource[tmp___3].end - (u32 )(adapter->pdev)->resource[tmp___4].start) + 1U;
    } else {
      tmp___6 = db_bar(adapter);
      tmp___7 = db_bar(adapter);
      if ((adapter->pdev)->resource[tmp___6].end != (adapter->pdev)->resource[tmp___7].start) {
        tmp___3 = db_bar(adapter);
        tmp___4 = db_bar(adapter);
        adapter->roce_db.total_size = ((u32 )(adapter->pdev)->resource[tmp___3].end - (u32 )(adapter->pdev)->resource[tmp___4].start) + 1U;
      } else {
        adapter->roce_db.total_size = 0U;
      }
    }
  } else {
  }
  return (0);
}
}
static int be_map_pci_bars(struct be_adapter *adapter )
{
  struct pci_dev *pdev ;
  u8 *addr ;
  u32 sli_intf ;
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  pdev = adapter->pdev;
  pci_read_config_dword((struct pci_dev const *)adapter->pdev, 88, & sli_intf);
  adapter->sli_family = (sli_intf & 3840U) >> 8;
  adapter->virtfn = (unsigned int )((u8 )sli_intf) & 1U;
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) && (unsigned int )adapter->virtfn == 0U) {
    tmp = pci_iomap(pdev, 2, 0UL);
    adapter->csr = (u8 *)tmp;
    if ((unsigned long )adapter->csr == (unsigned long )((u8 *)0U)) {
      return (-12);
    } else {
    }
  } else {
  }
  tmp___0 = db_bar(adapter);
  tmp___1 = pci_iomap(pdev, tmp___0, 0UL);
  addr = (u8 *)tmp___1;
  if ((unsigned long )addr == (unsigned long )((u8 *)0U)) {
    goto pci_map_err;
  } else {
  }
  adapter->db = addr;
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) || (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    if ((unsigned int )adapter->virtfn == 0U) {
      tmp___2 = pci_iomap(pdev, (unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U,
                          0UL);
      addr = (u8 *)tmp___2;
      if ((unsigned long )addr == (unsigned long )((u8 *)0U)) {
        goto pci_map_err;
      } else {
      }
      adapter->pcicfg = addr;
    } else {
      adapter->pcicfg = adapter->db + 4096UL;
    }
  } else {
  }
  be_roce_map_pci_bars(adapter);
  return (0);
  pci_map_err:
  dev_err((struct device const *)(& pdev->dev), "Error in mapping PCI BARs\n");
  be_unmap_pci_bars(adapter);
  return (-12);
}
}
static void be_drv_cleanup(struct be_adapter *adapter )
{
  struct be_dma_mem *mem ;
  struct device *dev ;
  {
  mem = & adapter->mbox_mem_alloced;
  dev = & (adapter->pdev)->dev;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(dev, (size_t )mem->size, mem->va, mem->dma, (struct dma_attrs *)0);
  } else {
  }
  mem = & adapter->rx_filter;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(dev, (size_t )mem->size, mem->va, mem->dma, (struct dma_attrs *)0);
  } else {
  }
  mem = & adapter->stats_cmd;
  if ((unsigned long )mem->va != (unsigned long )((void *)0)) {
    dma_free_attrs(dev, (size_t )mem->size, mem->va, mem->dma, (struct dma_attrs *)0);
  } else {
  }
  return;
}
}
static int be_drv_init(struct be_adapter *adapter )
{
  struct be_dma_mem *mbox_mem_alloc ;
  struct be_dma_mem *mbox_mem_align ;
  struct be_dma_mem *rx_filter ;
  struct be_dma_mem *stats_cmd ;
  struct device *dev ;
  int status ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___5 ;
  {
  mbox_mem_alloc = & adapter->mbox_mem_alloced;
  mbox_mem_align = & adapter->mbox_mem;
  rx_filter = & adapter->rx_filter;
  stats_cmd = & adapter->stats_cmd;
  dev = & (adapter->pdev)->dev;
  status = 0;
  mbox_mem_alloc->size = 288U;
  mbox_mem_alloc->va = dma_zalloc_coherent(dev, (size_t )mbox_mem_alloc->size, & mbox_mem_alloc->dma,
                                           208U);
  if ((unsigned long )mbox_mem_alloc->va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  mbox_mem_align->size = 272U;
  mbox_mem_align->va = (void *)(((unsigned long )mbox_mem_alloc->va + 15UL) & 0xfffffffffffffff0UL);
  mbox_mem_align->dma = (unsigned long long )((unsigned long )mbox_mem_alloc->dma + 15UL) & 0xfffffffffffffff0ULL;
  rx_filter->size = 424U;
  rx_filter->va = dma_zalloc_coherent(dev, (size_t )rx_filter->size, & rx_filter->dma,
                                      208U);
  if ((unsigned long )rx_filter->va == (unsigned long )((void *)0)) {
    status = -12;
    goto free_mbox;
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    stats_cmd->size = 672U;
  } else
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    stats_cmd->size = 1076U;
  } else
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    stats_cmd->size = 1864U;
  } else {
    stats_cmd->size = 2696U;
  }
  stats_cmd->va = dma_zalloc_coherent(dev, (size_t )stats_cmd->size, & stats_cmd->dma,
                                      208U);
  if ((unsigned long )stats_cmd->va == (unsigned long )((void *)0)) {
    status = -12;
    goto free_rx_filter;
  } else {
  }
  __mutex_init(& adapter->mbox_lock, "&adapter->mbox_lock", & __key);
  spinlock_check(& adapter->mcc_lock);
  __raw_spin_lock_init(& adapter->mcc_lock.__annonCompField18.rlock, "&(&adapter->mcc_lock)->rlock",
                       & __key___0);
  spinlock_check(& adapter->mcc_cq_lock);
  __raw_spin_lock_init(& adapter->mcc_cq_lock.__annonCompField18.rlock, "&(&adapter->mcc_cq_lock)->rlock",
                       & __key___1);
  init_completion(& adapter->et_cmd_compl);
  pci_save_state(adapter->pdev);
  __init_work(& adapter->work.work, 0);
  __constr_expr_0.counter = 137438953408L;
  adapter->work.work.data = __constr_expr_0;
  lockdep_init_map(& adapter->work.work.lockdep_map, "(&(&adapter->work)->work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& adapter->work.work.entry);
  adapter->work.work.func = & be_worker;
  init_timer_key(& adapter->work.timer, 2097152U, "(&(&adapter->work)->timer)", & __key___3);
  adapter->work.timer.function = & delayed_work_timer_fn;
  adapter->work.timer.data = (unsigned long )(& adapter->work);
  __init_work(& adapter->be_err_detection_work.work, 0);
  __constr_expr_1.counter = 137438953408L;
  adapter->be_err_detection_work.work.data = __constr_expr_1;
  lockdep_init_map(& adapter->be_err_detection_work.work.lockdep_map, "(&(&adapter->be_err_detection_work)->work)",
                   & __key___4, 0);
  INIT_LIST_HEAD(& adapter->be_err_detection_work.work.entry);
  adapter->be_err_detection_work.work.func = & be_err_detection_task;
  init_timer_key(& adapter->be_err_detection_work.timer, 2097152U, "(&(&adapter->be_err_detection_work)->timer)",
                 & __key___5);
  adapter->be_err_detection_work.timer.function = & delayed_work_timer_fn;
  adapter->be_err_detection_work.timer.data = (unsigned long )(& adapter->be_err_detection_work);
  adapter->rx_fc = 1U;
  adapter->tx_fc = 1U;
  adapter->be_get_temp_freq = 64;
  return (0);
  free_rx_filter:
  dma_free_attrs(dev, (size_t )rx_filter->size, rx_filter->va, rx_filter->dma, (struct dma_attrs *)0);
  free_mbox:
  dma_free_attrs(dev, (size_t )mbox_mem_alloc->size, mbox_mem_alloc->va, mbox_mem_alloc->dma,
                 (struct dma_attrs *)0);
  return (status);
}
}
static void be_remove(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned long )adapter == (unsigned long )((struct be_adapter *)0)) {
    return;
  } else {
  }
  be_roce_dev_remove(adapter);
  be_intr_set(adapter, 0);
  be_cancel_err_detection(adapter);
  ldv_unregister_netdev_17(adapter->netdev);
  be_clear(adapter);
  be_cmd_fw_clean(adapter);
  be_unmap_pci_bars(adapter);
  be_drv_cleanup(adapter);
  pci_disable_pcie_error_reporting(pdev);
  pci_release_regions(pdev);
  pci_disable_device(pdev);
  ldv_free_netdev_18(adapter->netdev);
  return;
}
}
static ssize_t be_hwmon_show_temp(struct device *dev , struct device_attribute *dev_attr ,
                                  char *buf )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = dev_get_drvdata((struct device const *)dev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )adapter->hwmon_info.be_on_die_temp == 255U) {
    return (-5L);
  } else {
    tmp___0 = sprintf(buf, "%u\n", (int )adapter->hwmon_info.be_on_die_temp * 1000);
    return ((ssize_t )tmp___0);
  }
}
}
static struct sensor_device_attribute sensor_dev_attr_temp1_input = {{{"temp1_input", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
     & be_hwmon_show_temp, (ssize_t (*)(struct device * , struct device_attribute * ,
                                        char const * , size_t ))0}, 1};
static struct attribute *be_hwmon_attrs[2U] = { & sensor_dev_attr_temp1_input.dev_attr.attr, (struct attribute *)0};
static struct attribute_group const be_hwmon_group = {0, 0, (struct attribute **)(& be_hwmon_attrs), 0};
static struct attribute_group const *be_hwmon_groups[2U] = { & be_hwmon_group, (struct attribute_group const *)0};
static char *mc_name(struct be_adapter *adapter )
{
  char *str ;
  {
  str = (char *)"";
  switch ((int )adapter->mc_type) {
  case 2:
  str = (char *)"UMC";
  goto ldv_59273;
  case 3:
  str = (char *)"FLEX10";
  goto ldv_59273;
  case 4:
  str = (char *)"vNIC-1";
  goto ldv_59273;
  case 5:
  str = (char *)"nPAR";
  goto ldv_59273;
  case 6:
  str = (char *)"UFP";
  goto ldv_59273;
  case 7:
  str = (char *)"vNIC-2";
  goto ldv_59273;
  default:
  str = (char *)"";
  }
  ldv_59273: ;
  return (str);
}
}
__inline static char *func_name(struct be_adapter *adapter )
{
  {
  return ((unsigned int )adapter->virtfn == 0U ? (char *)"PF" : (char *)"VF");
}
}
__inline static char *nic_name(struct pci_dev *pdev )
{
  {
  switch ((int )pdev->device) {
  case 1792: ;
  return ((char *)"Emulex OneConnect");
  case 1808: ;
  return ((char *)"Emulex OneConnect(be3)");
  case 57888: ;
  case 57896: ;
  return ((char *)"Emulex OneConnect(Lancer)");
  case 545: ;
  return ((char *)"Emulex BladeEngine3");
  case 1824: ;
  case 1832: ;
  return ((char *)"Emulex OneConnect(Skyhawk)");
  default: ;
  return ((char *)"Emulex BladeEngine2");
  }
}
}
static int be_probe(struct pci_dev *pdev , struct pci_device_id const *pdev_id )
{
  struct be_adapter *adapter ;
  struct net_device *netdev ;
  int status ;
  void *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  {
  status = 0;
  _dev_info((struct device const *)(& pdev->dev), "%s version is %s\n", (char *)"be2net",
            (char *)"10.6.0.2");
  status = pci_enable_device(pdev);
  if (status != 0) {
    goto do_none;
  } else {
  }
  status = pci_request_regions(pdev, "be2net");
  if (status != 0) {
    goto disable_dev;
  } else {
  }
  pci_set_master(pdev);
  netdev = alloc_etherdev_mqs(1343872, 32U, 32U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    status = -12;
    goto rel_reg;
  } else {
  }
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  adapter->pdev = pdev;
  pci_set_drvdata(pdev, (void *)adapter);
  adapter->netdev = netdev;
  netdev->dev.parent = & pdev->dev;
  status = dma_set_mask_and_coherent(& pdev->dev, 0xffffffffffffffffULL);
  if (status == 0) {
    netdev->features = netdev->features | 32ULL;
  } else {
    status = dma_set_mask_and_coherent(& pdev->dev, 4294967295ULL);
    if (status != 0) {
      dev_err((struct device const *)(& pdev->dev), "Could not set PCI DMA Mask\n");
      goto free_netdev;
    } else {
    }
  }
  status = pci_enable_pcie_error_reporting(pdev);
  if (status == 0) {
    _dev_info((struct device const *)(& pdev->dev), "PCIe error reporting enabled\n");
  } else {
  }
  status = be_map_pci_bars(adapter);
  if (status != 0) {
    goto free_netdev;
  } else {
  }
  status = be_drv_init(adapter);
  if (status != 0) {
    goto unmap_bars;
  } else {
  }
  status = be_setup(adapter);
  if (status != 0) {
    goto drv_cleanup;
  } else {
  }
  be_netdev_init(netdev);
  status = ldv_register_netdev_19(netdev);
  if (status != 0) {
    goto unsetup;
  } else {
  }
  be_roce_dev_add(adapter);
  be_schedule_err_detection(adapter);
  if ((unsigned int )adapter->virtfn == 0U) {
    adapter->hwmon_info.hwmon_dev = devm_hwmon_device_register_with_groups(& pdev->dev,
                                                                           "be2net",
                                                                           (void *)adapter,
                                                                           (struct attribute_group const **)(& be_hwmon_groups));
    adapter->hwmon_info.be_on_die_temp = 255U;
  } else {
  }
  tmp___0 = mc_name(adapter);
  tmp___1 = func_name(adapter);
  tmp___2 = nic_name(pdev);
  _dev_info((struct device const *)(& pdev->dev), "%s: %s %s port %c\n", tmp___2,
            tmp___1, tmp___0, (int )adapter->port_name);
  return (0);
  unsetup:
  be_clear(adapter);
  drv_cleanup:
  be_drv_cleanup(adapter);
  unmap_bars:
  be_unmap_pci_bars(adapter);
  free_netdev:
  ldv_free_netdev_20(netdev);
  rel_reg:
  pci_release_regions(pdev);
  disable_dev:
  pci_disable_device(pdev);
  do_none:
  tmp___3 = nic_name(pdev);
  dev_err((struct device const *)(& pdev->dev), "%s initialization failed\n", tmp___3);
  return (status);
}
}
static int be_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  pci_power_t tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if ((int )adapter->wol_en) {
    be_setup_wol(adapter, 1);
  } else {
  }
  be_intr_set(adapter, 0);
  be_cancel_err_detection(adapter);
  be_cleanup(adapter);
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___0 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___0);
  return (0);
}
}
static int be_pci_resume(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  status = pci_enable_device(pdev);
  if (status != 0) {
    return (status);
  } else {
  }
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  status = be_resume(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  be_schedule_err_detection(adapter);
  if ((int )adapter->wol_en) {
    be_setup_wol(adapter, 0);
  } else {
  }
  return (0);
}
}
static void be_shutdown(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned long )adapter == (unsigned long )((struct be_adapter *)0)) {
    return;
  } else {
  }
  be_roce_dev_shutdown(adapter);
  ldv_cancel_delayed_work_sync_21(& adapter->work);
  be_cancel_err_detection(adapter);
  netif_device_detach(adapter->netdev);
  be_cmd_reset_function(adapter);
  pci_disable_device(pdev);
  return;
}
}
static pci_ers_result_t be_eeh_err_detected(struct pci_dev *pdev , pci_channel_state_t state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u8 tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  dev_err((struct device const *)(& (adapter->pdev)->dev), "EEH error detected\n");
  tmp___0 = be_check_error(adapter, 1U);
  if ((unsigned int )tmp___0 == 0U) {
    be_set_error(adapter, 1);
    be_cancel_err_detection(adapter);
    be_cleanup(adapter);
  } else {
  }
  if (state == 3U) {
    return (4U);
  } else {
  }
  pci_disable_device(pdev);
  if (pdev->devfn == 0U) {
    ssleep(30U);
  } else {
  }
  return (3U);
}
}
static pci_ers_result_t be_eeh_reset(struct pci_dev *pdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "EEH reset\n");
  status = pci_enable_device(pdev);
  if (status != 0) {
    return (4U);
  } else {
  }
  pci_set_master(pdev);
  pci_set_power_state(pdev, 0);
  pci_restore_state(pdev);
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "Waiting for FW to be ready after EEH reset\n");
  status = be_fw_wait_ready(adapter);
  if (status != 0) {
    return (4U);
  } else {
  }
  pci_cleanup_aer_uncorrect_error_status(pdev);
  be_clear_error(adapter, 255);
  return (5U);
}
}
static void be_eeh_resume(struct pci_dev *pdev )
{
  int status ;
  struct be_adapter *adapter ;
  void *tmp ;
  {
  status = 0;
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  _dev_info((struct device const *)(& (adapter->pdev)->dev), "EEH resume\n");
  pci_save_state(pdev);
  status = be_resume(adapter);
  if (status != 0) {
    goto err;
  } else {
  }
  be_schedule_err_detection(adapter);
  return;
  err:
  dev_err((struct device const *)(& (adapter->pdev)->dev), "EEH resume failed\n");
  return;
}
}
static int be_pci_sriov_configure(struct pci_dev *pdev , int num_vfs___0 )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u16 num_vf_qs ;
  int status ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  adapter = (struct be_adapter *)tmp;
  if (num_vfs___0 == 0) {
    be_vf_clear(adapter);
  } else {
  }
  adapter->num_vfs = (u16 )num_vfs___0;
  if ((unsigned int )adapter->num_vfs == 0U) {
    tmp___0 = pci_vfs_assigned(pdev);
    if (tmp___0 != 0) {
      dev_warn((struct device const *)(& pdev->dev), "Cannot disable VFs while they are assigned\n");
      return (-16);
    } else {
    }
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    tmp___1 = pci_num_vf(pdev);
    if (tmp___1 == 0) {
      num_vf_qs = be_calculate_vf_qs(adapter, (int )adapter->num_vfs);
      status = be_cmd_set_sriov_config(adapter, adapter->pool_res, (int )adapter->num_vfs,
                                       (int )num_vf_qs);
      if (status != 0) {
        dev_err((struct device const *)(& pdev->dev), "Failed to optimize SR-IOV resources\n");
      } else {
      }
    } else {
    }
  } else {
  }
  status = be_get_resources(adapter);
  if (status != 0) {
    return (status <= 0 ? status : -5);
  } else {
  }
  rtnl_lock();
  status = be_update_queues(adapter);
  rtnl_unlock();
  if (status != 0) {
    return (status <= 0 ? status : -5);
  } else {
  }
  if ((unsigned int )adapter->num_vfs != 0U) {
    status = be_vf_setup(adapter);
  } else {
  }
  if (status == 0) {
    return ((int )adapter->num_vfs);
  } else {
  }
  return (0);
}
}
static struct pci_error_handlers const be_eeh_handlers = {(pci_ers_result_t (*)(struct pci_dev * , enum pci_channel_state ))(& be_eeh_err_detected),
    0, 0, & be_eeh_reset, 0, & be_eeh_resume};
static struct pci_driver be_driver =
     {{0, 0}, "be2net", (struct pci_device_id const *)(& be_dev_ids), & be_probe,
    & be_remove, & be_suspend, 0, 0, & be_pci_resume, & be_shutdown, & be_pci_sriov_configure,
    & be_eeh_handlers, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}, {{{{{{0}},
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
static int be_init_module(void)
{
  int tmp ;
  {
  if (((unsigned int )rx_frag_size != 8192U && (unsigned int )rx_frag_size != 4096U) && (unsigned int )rx_frag_size != 2048U) {
    printk("\fbe2net : Module param rx_frag_size must be 2048/4096/8192. Using 2048\n");
    rx_frag_size = 2048U;
  } else {
  }
  if (num_vfs != 0U) {
    printk("\016be2net : Module param num_vfs is obsolete.");
    printk("\016be2net : Use sysfs method to enable VFs\n");
  } else {
  }
  tmp = ldv___pci_register_driver_22(& be_driver, & __this_module, "be2net");
  return (tmp);
}
}
static void be_exit_module(void)
{
  {
  ldv_pci_unregister_driver_23(& be_driver);
  return;
}
}
extern int ldv_suspend_7(void) ;
int ldv_retval_2 ;
int ldv_retval_5 ;
int ldv_retval_0 ;
int ldv_retval_6 ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_resume_early_6(void) ;
extern int ldv_ndo_init_9(void) ;
extern int ldv_ndo_uninit_9(void) ;
extern int ldv_suspend_late_6(void) ;
int ldv_retval_4 ;
extern int ldv_probe_7(void) ;
void ldv_check_final_state(void) ;
extern int ldv_release_7(void) ;
int ldv_retval_3 ;
int ldv_retval_7 ;
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
void choose_interrupt_2(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_0, ldv_irq_line_2_0, ldv_irq_data_2_0);
  goto ldv_59396;
  case 1:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_1, ldv_irq_line_2_1, ldv_irq_data_2_1);
  goto ldv_59396;
  case 2:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_2, ldv_irq_line_2_2, ldv_irq_data_2_2);
  goto ldv_59396;
  case 3:
  ldv_irq_2_0 = ldv_irq_2(ldv_irq_2_3, ldv_irq_line_2_3, ldv_irq_data_2_3);
  goto ldv_59396;
  default:
  ldv_stop();
  }
  ldv_59396: ;
  return;
}
}
void disable_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 != 0 && line == ldv_irq_line_2_0) {
    ldv_irq_2_0 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_1 != 0 && line == ldv_irq_line_2_1) {
    ldv_irq_2_1 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_2 != 0 && line == ldv_irq_line_2_2) {
    ldv_irq_2_2 = 0;
    return;
  } else {
  }
  if (ldv_irq_2_3 != 0 && line == ldv_irq_line_2_3) {
    ldv_irq_2_3 = 0;
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
void ldv_initialize_pci_error_handlers_7(void)
{
  {
  be_eeh_handlers_group0 = ldv_malloc(sizeof(struct pci_dev));
  return;
}
}
void activate_suitable_irq_2(int line , void *data )
{
  {
  if (ldv_irq_2_0 == 0) {
    ldv_irq_line_2_0 = line;
    ldv_irq_data_2_0 = data;
    ldv_irq_2_0 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_1 == 0) {
    ldv_irq_line_2_1 = line;
    ldv_irq_data_2_1 = data;
    ldv_irq_2_1 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_2 == 0) {
    ldv_irq_line_2_2 = line;
    ldv_irq_data_2_2 = data;
    ldv_irq_2_2 = 1;
    return;
  } else {
  }
  if (ldv_irq_2_3 == 0) {
    ldv_irq_line_2_3 = line;
    ldv_irq_data_2_3 = data;
    ldv_irq_2_3 = 1;
    return;
  } else {
  }
  return;
}
}
int reg_check_1(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& be_msix)) {
    return (1);
  } else {
  }
  return (0);
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
void choose_interrupt_1(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_0, ldv_irq_line_1_0, ldv_irq_data_1_0);
  goto ldv_59432;
  case 1:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_1, ldv_irq_line_1_1, ldv_irq_data_1_1);
  goto ldv_59432;
  case 2:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_2, ldv_irq_line_1_2, ldv_irq_data_1_2);
  goto ldv_59432;
  case 3:
  ldv_irq_1_0 = ldv_irq_1(ldv_irq_1_3, ldv_irq_line_1_3, ldv_irq_data_1_3);
  goto ldv_59432;
  default:
  ldv_stop();
  }
  ldv_59432: ;
  return;
}
}
int reg_check_2(irqreturn_t (*handler)(int , void * ) )
{
  {
  if ((unsigned long )handler == (unsigned long )(& be_intx)) {
    return (1);
  } else {
  }
  return (0);
}
}
void call_and_disable_work_3(struct work_struct *work )
{
  {
  if ((ldv_work_3_0 == 2 || ldv_work_3_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_0) {
    be_worker(work);
    ldv_work_3_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_1 == 2 || ldv_work_3_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_1) {
    be_worker(work);
    ldv_work_3_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_2 == 2 || ldv_work_3_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_2) {
    be_worker(work);
    ldv_work_3_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_3_3 == 2 || ldv_work_3_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_3_3) {
    be_worker(work);
    ldv_work_3_3 = 1;
    return;
  } else {
  }
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
void ldv_net_device_ops_9(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(3008UL);
  be_netdev_ops_group1 = (struct net_device *)tmp;
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
void invoke_work_3(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_3_0 == 2 || ldv_work_3_0 == 3) {
    ldv_work_3_0 = 4;
    be_worker(ldv_work_struct_3_0);
    ldv_work_3_0 = 1;
  } else {
  }
  goto ldv_59465;
  case 1: ;
  if (ldv_work_3_1 == 2 || ldv_work_3_1 == 3) {
    ldv_work_3_1 = 4;
    be_worker(ldv_work_struct_3_0);
    ldv_work_3_1 = 1;
  } else {
  }
  goto ldv_59465;
  case 2: ;
  if (ldv_work_3_2 == 2 || ldv_work_3_2 == 3) {
    ldv_work_3_2 = 4;
    be_worker(ldv_work_struct_3_0);
    ldv_work_3_2 = 1;
  } else {
  }
  goto ldv_59465;
  case 3: ;
  if (ldv_work_3_3 == 2 || ldv_work_3_3 == 3) {
    ldv_work_3_3 = 4;
    be_worker(ldv_work_struct_3_0);
    ldv_work_3_3 = 1;
  } else {
  }
  goto ldv_59465;
  default:
  ldv_stop();
  }
  ldv_59465: ;
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
      irq_retval = be_msix(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_59481;
    default:
    ldv_stop();
    }
    ldv_59481: ;
  } else {
  }
  return (state);
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
void invoke_work_4(void)
{
  int tmp ;
  {
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_work_4_0 == 2 || ldv_work_4_0 == 3) {
    ldv_work_4_0 = 4;
    be_err_detection_task(ldv_work_struct_4_0);
    ldv_work_4_0 = 1;
  } else {
  }
  goto ldv_59495;
  case 1: ;
  if (ldv_work_4_1 == 2 || ldv_work_4_1 == 3) {
    ldv_work_4_1 = 4;
    be_err_detection_task(ldv_work_struct_4_0);
    ldv_work_4_1 = 1;
  } else {
  }
  goto ldv_59495;
  case 2: ;
  if (ldv_work_4_2 == 2 || ldv_work_4_2 == 3) {
    ldv_work_4_2 = 4;
    be_err_detection_task(ldv_work_struct_4_0);
    ldv_work_4_2 = 1;
  } else {
  }
  goto ldv_59495;
  case 3: ;
  if (ldv_work_4_3 == 2 || ldv_work_4_3 == 3) {
    ldv_work_4_3 = 4;
    be_err_detection_task(ldv_work_struct_4_0);
    ldv_work_4_3 = 1;
  } else {
  }
  goto ldv_59495;
  default:
  ldv_stop();
  }
  ldv_59495: ;
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
void call_and_disable_work_4(struct work_struct *work )
{
  {
  if ((ldv_work_4_0 == 2 || ldv_work_4_0 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_0) {
    be_err_detection_task(work);
    ldv_work_4_0 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_1 == 2 || ldv_work_4_1 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_1) {
    be_err_detection_task(work);
    ldv_work_4_1 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_2 == 2 || ldv_work_4_2 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_2) {
    be_err_detection_task(work);
    ldv_work_4_2 = 1;
    return;
  } else {
  }
  if ((ldv_work_4_3 == 2 || ldv_work_4_3 == 3) && (unsigned long )work == (unsigned long )ldv_work_struct_4_3) {
    be_err_detection_task(work);
    ldv_work_4_3 = 1;
    return;
  } else {
  }
  return;
}
}
int ldv_irq_2(int state , int line , void *data )
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
      irq_retval = be_intx(line, data);
      LDV_IN_INTERRUPT = 1;
      return (state);
    } else {
    }
    goto ldv_59515;
    default:
    ldv_stop();
    }
    ldv_59515: ;
  } else {
  }
  return (state);
}
}
void ldv_pci_driver_6(void)
{
  void *tmp ;
  {
  tmp = ldv_init_zalloc(2976UL);
  be_driver_group1 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_main_exported_5(void) ;
int main(void)
{
  pm_message_t ldvarg1 ;
  int ldvarg0 ;
  struct pci_device_id *ldvarg2 ;
  void *tmp ;
  enum pci_channel_state ldvarg3 ;
  struct napi_struct *ldvarg18 ;
  void *tmp___0 ;
  u8 ldvarg11 ;
  __be16 ldvarg32 ;
  void *ldvarg7 ;
  void *tmp___1 ;
  struct sk_buff *ldvarg23 ;
  void *tmp___2 ;
  u16 ldvarg12 ;
  int ldvarg37 ;
  struct ifla_vf_info *ldvarg29 ;
  void *tmp___3 ;
  u32 ldvarg24 ;
  u16 ldvarg35 ;
  int ldvarg38 ;
  u8 *ldvarg5 ;
  void *tmp___4 ;
  u16 ldvarg33 ;
  int ldvarg6 ;
  struct sk_buff *ldvarg16 ;
  void *tmp___5 ;
  struct rtnl_link_stats64 *ldvarg4 ;
  void *tmp___6 ;
  __be16 ldvarg14 ;
  struct nlmsghdr *ldvarg34 ;
  void *tmp___7 ;
  int ldvarg28 ;
  int ldvarg39 ;
  bool ldvarg20 ;
  u16 ldvarg31 ;
  int ldvarg8 ;
  int ldvarg13 ;
  __be16 ldvarg36 ;
  sa_family_t ldvarg10 ;
  __be16 ldvarg9 ;
  u32 ldvarg26 ;
  int ldvarg27 ;
  sa_family_t ldvarg15 ;
  int ldvarg30 ;
  int ldvarg21 ;
  netdev_features_t ldvarg17 ;
  u32 ldvarg25 ;
  int ldvarg22 ;
  struct sk_buff *ldvarg19 ;
  void *tmp___8 ;
  char *ldvarg41 ;
  void *tmp___9 ;
  struct device_attribute *ldvarg42 ;
  void *tmp___10 ;
  struct device *ldvarg40 ;
  void *tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = ldv_init_zalloc(32UL);
  ldvarg2 = (struct pci_device_id *)tmp;
  tmp___0 = ldv_init_zalloc(280UL);
  ldvarg18 = (struct napi_struct *)tmp___0;
  tmp___1 = ldv_init_zalloc(1UL);
  ldvarg7 = tmp___1;
  tmp___2 = ldv_init_zalloc(232UL);
  ldvarg23 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_init_zalloc(64UL);
  ldvarg29 = (struct ifla_vf_info *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg5 = (u8 *)tmp___4;
  tmp___5 = ldv_init_zalloc(232UL);
  ldvarg16 = (struct sk_buff *)tmp___5;
  tmp___6 = ldv_init_zalloc(184UL);
  ldvarg4 = (struct rtnl_link_stats64 *)tmp___6;
  tmp___7 = ldv_init_zalloc(16UL);
  ldvarg34 = (struct nlmsghdr *)tmp___7;
  tmp___8 = ldv_init_zalloc(232UL);
  ldvarg19 = (struct sk_buff *)tmp___8;
  tmp___9 = ldv_init_zalloc(1UL);
  ldvarg41 = (char *)tmp___9;
  tmp___10 = ldv_init_zalloc(48UL);
  ldvarg42 = (struct device_attribute *)tmp___10;
  tmp___11 = ldv_init_zalloc(1416UL);
  ldvarg40 = (struct device *)tmp___11;
  ldv_initialize();
  ldv_memset((void *)(& ldvarg1), 0, 4UL);
  ldv_memset((void *)(& ldvarg0), 0, 4UL);
  ldv_memset((void *)(& ldvarg3), 0, 4UL);
  ldv_memset((void *)(& ldvarg11), 0, 1UL);
  ldv_memset((void *)(& ldvarg32), 0, 2UL);
  ldv_memset((void *)(& ldvarg12), 0, 2UL);
  ldv_memset((void *)(& ldvarg37), 0, 4UL);
  ldv_memset((void *)(& ldvarg24), 0, 4UL);
  ldv_memset((void *)(& ldvarg35), 0, 2UL);
  ldv_memset((void *)(& ldvarg38), 0, 4UL);
  ldv_memset((void *)(& ldvarg33), 0, 2UL);
  ldv_memset((void *)(& ldvarg6), 0, 4UL);
  ldv_memset((void *)(& ldvarg14), 0, 2UL);
  ldv_memset((void *)(& ldvarg28), 0, 4UL);
  ldv_memset((void *)(& ldvarg39), 0, 4UL);
  ldv_memset((void *)(& ldvarg20), 0, 1UL);
  ldv_memset((void *)(& ldvarg31), 0, 2UL);
  ldv_memset((void *)(& ldvarg8), 0, 4UL);
  ldv_memset((void *)(& ldvarg13), 0, 4UL);
  ldv_memset((void *)(& ldvarg36), 0, 2UL);
  ldv_memset((void *)(& ldvarg10), 0, 2UL);
  ldv_memset((void *)(& ldvarg9), 0, 2UL);
  ldv_memset((void *)(& ldvarg26), 0, 4UL);
  ldv_memset((void *)(& ldvarg27), 0, 4UL);
  ldv_memset((void *)(& ldvarg15), 0, 2UL);
  ldv_memset((void *)(& ldvarg30), 0, 4UL);
  ldv_memset((void *)(& ldvarg21), 0, 4UL);
  ldv_memset((void *)(& ldvarg17), 0, 8UL);
  ldv_memset((void *)(& ldvarg25), 0, 4UL);
  ldv_memset((void *)(& ldvarg22), 0, 4UL);
  ldv_state_variable_6 = 0;
  work_init_3();
  ldv_state_variable_3 = 1;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_2 = 1;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  work_init_4();
  ldv_state_variable_4 = 1;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_5 = 0;
  ldv_59643:
  tmp___12 = __VERIFIER_nondet_int();
  switch (tmp___12) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      ldv_retval_4 = be_probe(be_driver_group1, (struct pci_device_id const *)ldvarg2);
      if (ldv_retval_4 == 0) {
        ldv_state_variable_6 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_59580;
    case 1: ;
    if (ldv_state_variable_6 == 2 && pci_counter == 0) {
      ldv_retval_3 = be_suspend(be_driver_group1, ldvarg1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_6 = 3;
      } else {
      }
    } else {
    }
    goto ldv_59580;
    case 2: ;
    if (ldv_state_variable_6 == 4) {
      ldv_retval_2 = be_pci_resume(be_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_6 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      ldv_retval_2 = be_pci_resume(be_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_6 = 2;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_6 == 5) {
      ldv_retval_2 = be_pci_resume(be_driver_group1);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_6 = 2;
      } else {
      }
    } else {
    }
    goto ldv_59580;
    case 3: ;
    if (ldv_state_variable_6 == 4) {
      be_shutdown(be_driver_group1);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      be_shutdown(be_driver_group1);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      be_shutdown(be_driver_group1);
      ldv_state_variable_6 = 2;
    } else {
    }
    if (ldv_state_variable_6 == 5) {
      be_shutdown(be_driver_group1);
      ldv_state_variable_6 = 5;
    } else {
    }
    goto ldv_59580;
    case 4: ;
    if (ldv_state_variable_6 == 4) {
      be_pci_sriov_configure(be_driver_group1, ldvarg0);
      ldv_state_variable_6 = 4;
    } else {
    }
    if (ldv_state_variable_6 == 1) {
      be_pci_sriov_configure(be_driver_group1, ldvarg0);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      be_pci_sriov_configure(be_driver_group1, ldvarg0);
      ldv_state_variable_6 = 3;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      be_pci_sriov_configure(be_driver_group1, ldvarg0);
      ldv_state_variable_6 = 2;
    } else {
    }
    if (ldv_state_variable_6 == 5) {
      be_pci_sriov_configure(be_driver_group1, ldvarg0);
      ldv_state_variable_6 = 5;
    } else {
    }
    goto ldv_59580;
    case 5: ;
    if (ldv_state_variable_6 == 4) {
      be_remove(be_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      be_remove(be_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 2) {
      be_remove(be_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    if (ldv_state_variable_6 == 5) {
      be_remove(be_driver_group1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_59580;
    case 6: ;
    if (ldv_state_variable_6 == 3) {
      ldv_retval_1 = ldv_suspend_late_6();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_6 = 4;
      } else {
      }
    } else {
    }
    goto ldv_59580;
    case 7: ;
    if (ldv_state_variable_6 == 4) {
      ldv_retval_0 = ldv_resume_early_6();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 5;
      } else {
      }
    } else {
    }
    if (ldv_state_variable_6 == 3) {
      ldv_retval_0 = ldv_resume_early_6();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_6 = 5;
      } else {
      }
    } else {
    }
    goto ldv_59580;
    default:
    ldv_stop();
    }
    ldv_59580: ;
  } else {
  }
  goto ldv_59589;
  case 1: ;
  if (ldv_state_variable_3 != 0) {
    invoke_work_3();
  } else {
  }
  goto ldv_59589;
  case 2: ;
  if (ldv_state_variable_7 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_7 == 3) {
      be_eeh_resume(be_eeh_handlers_group0);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_59593;
    case 1: ;
    if (ldv_state_variable_7 == 1) {
      be_eeh_reset(be_eeh_handlers_group0);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      be_eeh_reset(be_eeh_handlers_group0);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      be_eeh_reset(be_eeh_handlers_group0);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_59593;
    case 2: ;
    if (ldv_state_variable_7 == 1) {
      be_eeh_err_detected(be_eeh_handlers_group0, (pci_channel_state_t )ldvarg3);
      ldv_state_variable_7 = 1;
    } else {
    }
    if (ldv_state_variable_7 == 3) {
      be_eeh_err_detected(be_eeh_handlers_group0, (pci_channel_state_t )ldvarg3);
      ldv_state_variable_7 = 3;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      be_eeh_err_detected(be_eeh_handlers_group0, (pci_channel_state_t )ldvarg3);
      ldv_state_variable_7 = 2;
    } else {
    }
    goto ldv_59593;
    case 3: ;
    if (ldv_state_variable_7 == 2) {
      ldv_suspend_7();
      ldv_state_variable_7 = 3;
    } else {
    }
    goto ldv_59593;
    case 4: ;
    if (ldv_state_variable_7 == 3) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_7 == 2) {
      ldv_release_7();
      ldv_state_variable_7 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_59593;
    case 5: ;
    if (ldv_state_variable_7 == 1) {
      ldv_probe_7();
      ldv_state_variable_7 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_59593;
    default:
    ldv_stop();
    }
    ldv_59593: ;
  } else {
  }
  goto ldv_59589;
  case 3: ;
  if (ldv_state_variable_9 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_9 == 1) {
      be_set_vf_tx_rate(be_netdev_ops_group1, ldvarg39, ldvarg38, ldvarg37);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_vf_tx_rate(be_netdev_ops_group1, ldvarg39, ldvarg38, ldvarg37);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_vf_tx_rate(be_netdev_ops_group1, ldvarg39, ldvarg38, ldvarg37);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      be_vlan_rem_vid(be_netdev_ops_group1, (int )ldvarg36, (int )ldvarg35);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_vlan_rem_vid(be_netdev_ops_group1, (int )ldvarg36, (int )ldvarg35);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_vlan_rem_vid(be_netdev_ops_group1, (int )ldvarg36, (int )ldvarg35);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      be_ndo_bridge_setlink(be_netdev_ops_group1, ldvarg34, (int )ldvarg33);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_ndo_bridge_setlink(be_netdev_ops_group1, ldvarg34, (int )ldvarg33);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_ndo_bridge_setlink(be_netdev_ops_group1, ldvarg34, (int )ldvarg33);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      be_vlan_add_vid(be_netdev_ops_group1, (int )ldvarg32, (int )ldvarg31);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_vlan_add_vid(be_netdev_ops_group1, (int )ldvarg32, (int )ldvarg31);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_vlan_add_vid(be_netdev_ops_group1, (int )ldvarg32, (int )ldvarg31);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 4: ;
    if (ldv_state_variable_9 == 1) {
      be_get_vf_config(be_netdev_ops_group1, ldvarg30, ldvarg29);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_get_vf_config(be_netdev_ops_group1, ldvarg30, ldvarg29);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_get_vf_config(be_netdev_ops_group1, ldvarg30, ldvarg29);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 5: ;
    if (ldv_state_variable_9 == 1) {
      be_set_vf_link_state(be_netdev_ops_group1, ldvarg28, ldvarg27);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_vf_link_state(be_netdev_ops_group1, ldvarg28, ldvarg27);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_vf_link_state(be_netdev_ops_group1, ldvarg28, ldvarg27);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 6: ;
    if (ldv_state_variable_9 == 1) {
      be_ndo_bridge_getlink(ldvarg23, ldvarg25, ldvarg24, be_netdev_ops_group1, ldvarg26,
                            ldvarg22);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_ndo_bridge_getlink(ldvarg23, ldvarg25, ldvarg24, be_netdev_ops_group1, ldvarg26,
                            ldvarg22);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_ndo_bridge_getlink(ldvarg23, ldvarg25, ldvarg24, be_netdev_ops_group1, ldvarg26,
                            ldvarg22);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 7: ;
    if (ldv_state_variable_9 == 2) {
      ldv_retval_6 = be_open(be_netdev_ops_group1);
      if (ldv_retval_6 == 0) {
        ldv_state_variable_9 = 3;
      } else {
      }
    } else {
    }
    goto ldv_59602;
    case 8: ;
    if (ldv_state_variable_9 == 1) {
      be_set_vf_spoofchk(be_netdev_ops_group1, ldvarg21, (int )ldvarg20);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_vf_spoofchk(be_netdev_ops_group1, ldvarg21, (int )ldvarg20);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_vf_spoofchk(be_netdev_ops_group1, ldvarg21, (int )ldvarg20);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 9: ;
    if (ldv_state_variable_9 == 3) {
      be_xmit(ldvarg19, be_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    goto ldv_59602;
    case 10: ;
    if (ldv_state_variable_9 == 3) {
      be_close(be_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 11: ;
    if (ldv_state_variable_9 == 1) {
      be_set_rx_mode(be_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_rx_mode(be_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_rx_mode(be_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 12: ;
    if (ldv_state_variable_9 == 1) {
      eth_validate_addr(be_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      eth_validate_addr(be_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      eth_validate_addr(be_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 13: ;
    if (ldv_state_variable_9 == 1) {
      be_busy_poll(ldvarg18);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_busy_poll(ldvarg18);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_busy_poll(ldvarg18);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 14: ;
    if (ldv_state_variable_9 == 1) {
      be_features_check(ldvarg16, be_netdev_ops_group1, ldvarg17);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_features_check(ldvarg16, be_netdev_ops_group1, ldvarg17);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_features_check(ldvarg16, be_netdev_ops_group1, ldvarg17);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 15: ;
    if (ldv_state_variable_9 == 1) {
      be_del_vxlan_port(be_netdev_ops_group1, (int )ldvarg15, (int )ldvarg14);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_del_vxlan_port(be_netdev_ops_group1, (int )ldvarg15, (int )ldvarg14);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_del_vxlan_port(be_netdev_ops_group1, (int )ldvarg15, (int )ldvarg14);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 16: ;
    if (ldv_state_variable_9 == 1) {
      be_netpoll(be_netdev_ops_group1);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_netpoll(be_netdev_ops_group1);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_netpoll(be_netdev_ops_group1);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 17: ;
    if (ldv_state_variable_9 == 1) {
      be_set_vf_vlan(be_netdev_ops_group1, ldvarg13, (int )ldvarg12, (int )ldvarg11);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_vf_vlan(be_netdev_ops_group1, ldvarg13, (int )ldvarg12, (int )ldvarg11);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_vf_vlan(be_netdev_ops_group1, ldvarg13, (int )ldvarg12, (int )ldvarg11);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 18: ;
    if (ldv_state_variable_9 == 1) {
      be_add_vxlan_port(be_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_add_vxlan_port(be_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_add_vxlan_port(be_netdev_ops_group1, (int )ldvarg10, (int )ldvarg9);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 19: ;
    if (ldv_state_variable_9 == 3) {
      be_change_mtu(be_netdev_ops_group1, ldvarg8);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_change_mtu(be_netdev_ops_group1, ldvarg8);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 20: ;
    if (ldv_state_variable_9 == 1) {
      be_mac_addr_set(be_netdev_ops_group1, ldvarg7);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_mac_addr_set(be_netdev_ops_group1, ldvarg7);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_mac_addr_set(be_netdev_ops_group1, ldvarg7);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 21: ;
    if (ldv_state_variable_9 == 1) {
      be_set_vf_mac(be_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_set_vf_mac(be_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_set_vf_mac(be_netdev_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 22: ;
    if (ldv_state_variable_9 == 1) {
      be_get_stats64(be_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 3) {
      be_get_stats64(be_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 3;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      be_get_stats64(be_netdev_ops_group1, ldvarg4);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_59602;
    case 23: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_5 = ldv_ndo_init_9();
      if (ldv_retval_5 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_59602;
    case 24: ;
    if (ldv_state_variable_9 == 2) {
      ldv_ndo_uninit_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_59602;
    default:
    ldv_stop();
    }
    ldv_59602: ;
  } else {
  }
  goto ldv_59589;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    choose_interrupt_2();
  } else {
  }
  goto ldv_59589;
  case 5: ;
  if (ldv_state_variable_8 != 0) {
    tmp___16 = __VERIFIER_nondet_int();
    switch (tmp___16) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      be_hwmon_show_temp(ldvarg40, ldvarg42, ldvarg41);
      ldv_state_variable_8 = 1;
    } else {
    }
    goto ldv_59631;
    default:
    ldv_stop();
    }
    ldv_59631: ;
  } else {
  }
  goto ldv_59589;
  case 6: ;
  if (ldv_state_variable_1 != 0) {
    choose_interrupt_1();
  } else {
  }
  goto ldv_59589;
  case 7: ;
  if (ldv_state_variable_4 != 0) {
    invoke_work_4();
  } else {
  }
  goto ldv_59589;
  case 8: ;
  if (ldv_state_variable_0 != 0) {
    tmp___17 = __VERIFIER_nondet_int();
    switch (tmp___17) {
    case 0: ;
    if (ldv_state_variable_0 == 2 && ref_cnt == 0) {
      be_exit_module();
      ldv_state_variable_0 = 3;
      goto ldv_final;
    } else {
    }
    goto ldv_59638;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_7 = be_init_module();
      if (ldv_retval_7 != 0) {
        ldv_state_variable_0 = 3;
        goto ldv_final;
      } else {
      }
      if (ldv_retval_7 == 0) {
        ldv_state_variable_0 = 2;
        ldv_state_variable_5 = 1;
        ldv_initialize_ethtool_ops_5();
        ldv_state_variable_7 = 1;
        ldv_initialize_pci_error_handlers_7();
        ldv_state_variable_8 = 1;
      } else {
      }
    } else {
    }
    goto ldv_59638;
    default:
    ldv_stop();
    }
    ldv_59638: ;
  } else {
  }
  goto ldv_59589;
  case 9: ;
  if (ldv_state_variable_5 != 0) {
    ldv_main_exported_5();
  } else {
  }
  goto ldv_59589;
  default:
  ldv_stop();
  }
  ldv_59589: ;
  goto ldv_59643;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
bool ldv_queue_work_on_5(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_6(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_7(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                         struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_8(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_9(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                 struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
__inline static int ldv_request_irq_10(unsigned int irq , irqreturn_t (*handler)(int ,
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
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_11(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
__inline static int ldv_request_irq_12(unsigned int irq , irqreturn_t (*handler)(int ,
                                                                                 void * ) ,
                                       unsigned long flags , char const *name ,
                                       void *dev )
{
  ldv_func_ret_type___4 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = request_irq(irq, handler, flags, name, dev);
  ldv_func_res = tmp;
  tmp___0 = reg_check_2(handler);
  if (tmp___0 != 0 && ldv_func_res == 0) {
    activate_suitable_irq_2((int )irq, dev);
  } else {
  }
  return (ldv_func_res);
}
}
void ldv_free_irq_13(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_free_irq_14(unsigned int ldv_func_arg1 , void *ldv_func_arg2 )
{
  {
  free_irq(ldv_func_arg1, ldv_func_arg2);
  disable_suitable_irq_2((int )ldv_func_arg1, ldv_func_arg2);
  return;
}
}
bool ldv_cancel_delayed_work_sync_15(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
bool ldv_cancel_delayed_work_sync_16(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_17(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
void ldv_free_netdev_18(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
int ldv_register_netdev_19(struct net_device *dev )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_9 = 1;
  ldv_net_device_ops_9();
  return (ldv_func_res);
}
}
void ldv_free_netdev_20(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_9 = 0;
  return;
}
}
bool ldv_cancel_delayed_work_sync_21(struct delayed_work *ldv_func_arg1 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  bool tmp ;
  {
  tmp = cancel_delayed_work_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_work_3(& ldv_func_arg1->work);
  return (ldv_func_res);
}
}
int ldv___pci_register_driver_22(struct pci_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                                 char const *ldv_func_arg3 )
{
  ldv_func_ret_type___9 ldv_func_res ;
  int tmp ;
  {
  tmp = __pci_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_6 = 1;
  ldv_pci_driver_6();
  return (ldv_func_res);
}
}
void ldv_pci_unregister_driver_23(struct pci_driver *ldv_func_arg1 )
{
  {
  pci_unregister_driver(ldv_func_arg1);
  ldv_state_variable_6 = 0;
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
__inline static int __ilog2_u32(u32 n )
{
  int tmp ;
  {
  tmp = fls((int )n);
  return (tmp + -1);
}
}
extern char *strcpy(char * , char const * ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
extern int mutex_lock_interruptible_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void wait_for_completion(struct completion * ) ;
extern unsigned long wait_for_completion_timeout(struct completion * , unsigned long ) ;
extern void complete(struct completion * ) ;
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_48(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 ) ;
extern unsigned long msleep_interruptible(unsigned int ) ;
int be_roce_mcc_cmd(void *netdev_handle , void *wrb_payload , int wrb_payload_size ,
                    u16 *cmd_status , u16 *ext_status ) ;
__inline static u32 MODULO___0(u16 val , u16 limit )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(((int )limit & ((int )limit + -1)) != 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/inst/current/envs/linux-4.2-rc1.tar.xz/linux-4.2-rc1/drivers/net/ethernet/emulex/benet/be.h"),
                         "i" (130), "i" (12UL));
    ldv_54975: ;
    goto ldv_54975;
  } else {
  }
  return ((u32 )((int )val & ((int )limit + -1)));
}
}
__inline static void index_inc___0(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO___0((int )((unsigned int )*index + 1U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void queue_head_inc___0(struct be_queue_info *q )
{
  {
  index_inc___0(& q->head, (int )q->len);
  return;
}
}
__inline static void index_dec(u16 *index , u16 limit )
{
  u32 tmp ;
  {
  tmp = MODULO___0((int )((unsigned int )*index + 65535U), (int )limit);
  *index = (u16 )tmp;
  return;
}
}
__inline static void queue_tail_inc___0(struct be_queue_info *q )
{
  {
  index_inc___0(& q->tail, (int )q->len);
  return;
}
}
int be_cmd_mac_addr_query(struct be_adapter *adapter , u8 *mac_addr , bool permanent ,
                          u32 if_handle , u32 pmac_id ) ;
int be_cmd_set_beacon_state(struct be_adapter *adapter , u8 port_num , u8 bcn , u8 sts ,
                            u8 state ) ;
int be_cmd_get_beacon_state(struct be_adapter *adapter , u8 port_num , u32 *state ) ;
int be_cmd_read_port_transceiver_data(struct be_adapter *adapter , u8 page_num , u8 *data ) ;
int be_cmd_query_cable_type(struct be_adapter *adapter ) ;
int lancer_cmd_read_object(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 data_size ,
                           u32 data_offset , char const *obj_name , u32 *data_read ,
                           u32 *eof , u8 *addn_status ) ;
int lancer_cmd_delete_object(struct be_adapter *adapter , char const *obj_name ) ;
int be_cmd_loopback_test(struct be_adapter *adapter , u32 port_num , u32 loopback_type ,
                         u32 pkt_size , u32 num_pkts , u64 pattern ) ;
int be_cmd_ddr_dma_test(struct be_adapter *adapter , u64 pattern , u32 byte_cnt ,
                        struct be_dma_mem *cmd ) ;
int be_cmd_get_seeprom_data(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd ) ;
int be_cmd_set_loopback(struct be_adapter *adapter , u8 port_num , u8 loopback_type ,
                        u8 enable ) ;
int be_cmd_get_reg_len(struct be_adapter *adapter , u32 *log_size ) ;
int be_cmd_get_regs(struct be_adapter *adapter , u32 buf_len , void *buf ) ;
int be_cmd_get_mac_from_list(struct be_adapter *adapter , u8 *mac , bool *pmac_id_valid ,
                             u32 *pmac_id , u32 if_handle , u8 domain ) ;
int be_cmd_set_mac_list(struct be_adapter *adapter , u8 *mac_array , u8 mac_count ,
                        u32 domain ) ;
int be_cmd_set_fw_log_level(struct be_adapter *adapter , u32 level ) ;
int be_cmd_get_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ) ;
int be_cmd_set_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                                   struct be_fat_conf_params *configs ) ;
int lancer_initiate_dump(struct be_adapter *adapter ) ;
int lancer_delete_dump(struct be_adapter *adapter ) ;
bool dump_present(struct be_adapter *adapter ) ;
static char *be_port_misconfig_evt_desc[5U] = { (char *)"A valid SFP module detected", (char *)"Optics faulted/ incorrectly installed/ not installed.", (char *)"Optics of two types installed.", (char *)"Incompatible optics.",
        (char *)"Unknown port SFP status"};
static char *be_port_misconfig_remedy_desc[5U] = { (char *)"", (char *)"Reseat optics. If issue not resolved, replace", (char *)"Remove one optic or install matching pair of optics", (char *)"Replace with compatible optics for card to function",
        (char *)""};
static struct be_cmd_priv_map cmd_priv_map[5U] = { {12U, 3U, 1800U},
        {37U, 1U, 1794U},
        {36U, 1U, 1800U},
        {18U, 3U, 1800U},
        {102U, 1U, 1800U}};
static bool be_cmd_allowed(struct be_adapter *adapter , u8 opcode , u8 subsystem )
{
  int i ;
  int num_entries ;
  u32 cmd_privileges ;
  {
  num_entries = 5;
  cmd_privileges = adapter->cmd_privileges;
  i = 0;
  goto ldv_57164;
  ldv_57163: ;
  if ((int )cmd_priv_map[i].opcode == (int )opcode && (int )cmd_priv_map[i].subsystem == (int )subsystem) {
    if ((cmd_priv_map[i].priv_mask & cmd_privileges) == 0U) {
      return (0);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_57164: ;
  if (i < num_entries) {
    goto ldv_57163;
  } else {
  }
  return (1);
}
}
__inline static void *embedded_payload(struct be_mcc_wrb *wrb )
{
  {
  return ((void *)(& wrb->payload.embedded_payload));
}
}
static void be_mcc_notify(struct be_adapter *adapter )
{
  struct be_queue_info *mccq ;
  u32 val ;
  u8 tmp ;
  {
  mccq = & adapter->mcc_obj.q;
  val = 0U;
  tmp = be_check_error(adapter, 7U);
  if ((unsigned int )tmp != 0U) {
    return;
  } else {
  }
  val = ((u32 )mccq->id & 2047U) | val;
  val = val | 65536U;
  __asm__ volatile ("sfence": : : "memory");
  iowrite32(val, (void *)adapter->db + 320U);
  return;
}
}
__inline static bool be_mcc_compl_is_new(struct be_mcc_compl *compl )
{
  u32 flags ;
  {
  if (compl->flags != 0U) {
    flags = compl->flags;
    if ((int )flags < 0) {
      compl->flags = flags;
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
__inline static void be_mcc_compl_use(struct be_mcc_compl *compl )
{
  {
  compl->flags = 0U;
  return;
}
}
static struct be_cmd_resp_hdr *be_decode_resp_hdr(u32 tag0 , u32 tag1 )
{
  unsigned long addr ;
  {
  addr = (unsigned long )tag1;
  addr = (addr << 32UL) | (unsigned long )tag0;
  return ((struct be_cmd_resp_hdr *)addr);
}
}
static bool be_skip_err_log(u8 opcode , u16 base_status , u16 addl_status )
{
  {
  if (((((unsigned int )base_status == 66U || (unsigned int )base_status == 2U) || (unsigned int )addl_status == 74U) || (unsigned int )addl_status == 171U) || ((unsigned int )opcode == 7U && ((unsigned int )base_status == 3U || (unsigned int )addl_status == 77U))) {
    return (1);
  } else {
    return (0);
  }
}
}
static void be_async_cmd_process(struct be_adapter *adapter , struct be_mcc_compl *compl ,
                                 struct be_cmd_resp_hdr *resp_hdr )
{
  enum mcc_base_status base_status ;
  u8 opcode ;
  u8 subsystem ;
  struct be_cmd_resp_get_cntl_addnl_attribs *resp ;
  {
  base_status = compl->status != 0U ? (enum mcc_base_status )(compl->status & 65535U) : 0;
  opcode = 0U;
  subsystem = 0U;
  if ((unsigned long )resp_hdr != (unsigned long )((struct be_cmd_resp_hdr *)0)) {
    opcode = resp_hdr->opcode;
    subsystem = resp_hdr->subsystem;
  } else {
  }
  if ((unsigned int )opcode == 18U && (unsigned int )subsystem == 11U) {
    complete(& adapter->et_cmd_compl);
    return;
  } else {
  }
  if (((unsigned int )opcode == 7U || (unsigned int )opcode == 172U) && (unsigned int )subsystem == 1U) {
    adapter->flash_status = compl->status;
    complete(& adapter->et_cmd_compl);
    return;
  } else {
  }
  if ((((unsigned int )opcode == 4U || (unsigned int )opcode == 18U) && (unsigned int )subsystem == 3U) && (unsigned int )base_status == 0U) {
    be_parse_stats(adapter);
    adapter->stats_cmd_sent = 0;
    return;
  } else {
  }
  if ((unsigned int )opcode == 121U && (unsigned int )subsystem == 1U) {
    if ((unsigned int )base_status == 0U) {
      resp = (struct be_cmd_resp_get_cntl_addnl_attribs *)resp_hdr;
      adapter->hwmon_info.be_on_die_temp = resp->on_die_temperature;
    } else {
      adapter->be_get_temp_freq = 0;
      adapter->hwmon_info.be_on_die_temp = 255U;
    }
    return;
  } else {
  }
  return;
}
}
static int be_mcc_compl_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  enum mcc_base_status base_status ;
  enum mcc_addl_status addl_status ;
  struct be_cmd_resp_hdr *resp_hdr ;
  u8 opcode ;
  u8 subsystem ;
  bool tmp ;
  int tmp___0 ;
  {
  opcode = 0U;
  subsystem = 0U;
  swap_dws((void *)compl, 4);
  base_status = compl->status != 0U ? (enum mcc_base_status )(compl->status & 65535U) : 0;
  addl_status = compl->status != 0U ? (enum mcc_addl_status )((compl->status >> 16) & 255U) : 0;
  resp_hdr = be_decode_resp_hdr(compl->tag0, compl->tag1);
  if ((unsigned long )resp_hdr != (unsigned long )((struct be_cmd_resp_hdr *)0)) {
    opcode = resp_hdr->opcode;
    subsystem = resp_hdr->subsystem;
  } else {
  }
  be_async_cmd_process(adapter, compl, resp_hdr);
  if ((unsigned int )base_status != 0U) {
    tmp = be_skip_err_log((int )opcode, (int )((u16 )base_status), (int )((u16 )addl_status));
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      if ((unsigned int )base_status == 5U) {
        dev_warn((struct device const *)(& (adapter->pdev)->dev), "VF is not privileged to issue opcode %d-%d\n",
                 (int )opcode, (int )subsystem);
      } else {
        dev_err((struct device const *)(& (adapter->pdev)->dev), "opcode %d-%d failed:status %d-%d\n",
                (int )opcode, (int )subsystem, (unsigned int )base_status, (unsigned int )addl_status);
      }
    } else {
    }
  } else {
  }
  return ((int )compl->status);
}
}
static void be_async_link_state_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_event_link_state *evt ;
  {
  evt = (struct be_async_event_link_state *)compl;
  adapter->phy.link_speed = -1;
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && ((int )evt->port_link_status & 2) == 0) {
    return;
  } else {
  }
  if (((unsigned long )adapter->flags & 2UL) != 0UL) {
    be_link_status_update(adapter, (int )evt->port_link_status & 1);
  } else {
  }
  return;
}
}
static void be_async_port_misconfig_event_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_event_misconfig_port *evt ;
  u32 sfp_mismatch_evt ;
  struct device *dev ;
  u8 port_misconfig_evt ;
  {
  evt = (struct be_async_event_misconfig_port *)compl;
  sfp_mismatch_evt = evt->event_data_word1;
  dev = & (adapter->pdev)->dev;
  port_misconfig_evt = (u8 )(sfp_mismatch_evt >> (int )adapter->hba_port_num * 8);
  _dev_info((struct device const *)dev, "Port %c: %s %s", (int )adapter->port_name,
            be_port_misconfig_evt_desc[(int )port_misconfig_evt], be_port_misconfig_remedy_desc[(int )port_misconfig_evt]);
  if ((unsigned int )port_misconfig_evt == 3U) {
    adapter->flags = adapter->flags | 1024U;
  } else {
  }
  return;
}
}
static void be_async_grp5_cos_priority_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_event_grp5_cos_priority *evt ;
  {
  evt = (struct be_async_event_grp5_cos_priority *)compl;
  if ((unsigned int )evt->valid != 0U) {
    adapter->vlan_prio_bmap = evt->available_priority_bmap;
    adapter->recommended_prio = (unsigned int )adapter->recommended_prio & 8191U;
    adapter->recommended_prio = (int )((u16 )evt->reco_default_priority) << 13U;
  } else {
  }
  return;
}
}
static void be_async_grp5_qos_speed_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_event_grp5_qos_link_speed *evt ;
  {
  evt = (struct be_async_event_grp5_qos_link_speed *)compl;
  if (adapter->phy.link_speed >= 0 && (u32 )evt->physical_port == adapter->port_num) {
    adapter->phy.link_speed = (int )evt->qos_link_speed * 10;
  } else {
  }
  return;
}
}
static void be_async_grp5_pvid_state_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_event_grp5_pvid_state *evt ;
  {
  evt = (struct be_async_event_grp5_pvid_state *)compl;
  if ((unsigned int )evt->enabled != 0U) {
    adapter->pvid = (unsigned int )evt->tag & 4095U;
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "LPVID: %d\n", (int )adapter->pvid);
  } else {
    adapter->pvid = 0U;
  }
  return;
}
}
static void be_async_grp5_fw_control_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  struct be_async_fw_control *evt ;
  u32 evt_dw1 ;
  {
  evt = (struct be_async_fw_control *)compl;
  evt_dw1 = evt->event_data_word1;
  if ((evt_dw1 & 4U) != 0U) {
    adapter->flags = adapter->flags | 4096U;
    adapter->bmc_filt_mask = evt->event_data_word2;
  } else {
    adapter->flags = adapter->flags & 4294963199U;
  }
  return;
}
}
static void be_async_grp5_evt_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  u8 event_type ;
  {
  event_type = (u8 )(compl->flags >> 16);
  switch ((int )event_type) {
  case 2:
  be_async_grp5_cos_priority_process(adapter, compl);
  goto ldv_57249;
  case 1:
  be_async_grp5_qos_speed_process(adapter, compl);
  goto ldv_57249;
  case 3:
  be_async_grp5_pvid_state_process(adapter, compl);
  goto ldv_57249;
  case 5:
  be_async_grp5_fw_control_process(adapter, compl);
  goto ldv_57249;
  default: ;
  goto ldv_57249;
  }
  ldv_57249: ;
  return;
}
}
static void be_async_dbg_evt_process(struct be_adapter *adapter , struct be_mcc_compl *cmp )
{
  u8 event_type ;
  struct be_async_event_qnq *evt ;
  {
  event_type = 0U;
  evt = (struct be_async_event_qnq *)cmp;
  event_type = (u8 )(cmp->flags >> 16);
  switch ((int )event_type) {
  case 1: ;
  if ((unsigned int )evt->valid != 0U) {
    adapter->qnq_vid = evt->vlan_tag;
  } else {
  }
  adapter->flags = adapter->flags | 128U;
  goto ldv_57261;
  default:
  dev_warn((struct device const *)(& (adapter->pdev)->dev), "Unknown debug event 0x%x!\n",
           (int )event_type);
  goto ldv_57261;
  }
  ldv_57261: ;
  return;
}
}
static void be_async_sliport_evt_process(struct be_adapter *adapter , struct be_mcc_compl *cmp )
{
  u8 event_type ;
  {
  event_type = (u8 )(cmp->flags >> 16);
  if ((unsigned int )event_type == 9U) {
    be_async_port_misconfig_event_process(adapter, cmp);
  } else {
  }
  return;
}
}
__inline static bool is_link_state_evt(u32 flags )
{
  {
  return (((flags >> 8) & 255U) == 1U);
}
}
__inline static bool is_grp5_evt(u32 flags )
{
  {
  return (((flags >> 8) & 255U) == 5U);
}
}
__inline static bool is_dbg_evt(u32 flags )
{
  {
  return (((flags >> 8) & 255U) == 6U);
}
}
__inline static bool is_sliport_evt(u32 flags )
{
  {
  return (((flags >> 8) & 255U) == 17U);
}
}
static void be_mcc_event_process(struct be_adapter *adapter , struct be_mcc_compl *compl )
{
  bool tmp ;
  bool tmp___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp___2 = is_link_state_evt(compl->flags);
  if ((int )tmp___2) {
    be_async_link_state_process(adapter, compl);
  } else {
    tmp___1 = is_grp5_evt(compl->flags);
    if ((int )tmp___1) {
      be_async_grp5_evt_process(adapter, compl);
    } else {
      tmp___0 = is_dbg_evt(compl->flags);
      if ((int )tmp___0) {
        be_async_dbg_evt_process(adapter, compl);
      } else {
        tmp = is_sliport_evt(compl->flags);
        if ((int )tmp) {
          be_async_sliport_evt_process(adapter, compl);
        } else {
        }
      }
    }
  }
  return;
}
}
static struct be_mcc_compl *be_mcc_compl_get(struct be_adapter *adapter )
{
  struct be_queue_info *mcc_cq ;
  struct be_mcc_compl *compl ;
  void *tmp ;
  bool tmp___0 ;
  {
  mcc_cq = & adapter->mcc_obj.cq;
  tmp = queue_tail_node(mcc_cq);
  compl = (struct be_mcc_compl *)tmp;
  tmp___0 = be_mcc_compl_is_new(compl);
  if ((int )tmp___0) {
    queue_tail_inc___0(mcc_cq);
    return (compl);
  } else {
  }
  return ((struct be_mcc_compl *)0);
}
}
void be_async_mcc_enable(struct be_adapter *adapter )
{
  {
  spin_lock_bh(& adapter->mcc_cq_lock);
  be_cq_notify(adapter, (int )adapter->mcc_obj.cq.id, 1, 0);
  adapter->mcc_obj.rearm_cq = 1;
  spin_unlock_bh(& adapter->mcc_cq_lock);
  return;
}
}
void be_async_mcc_disable(struct be_adapter *adapter )
{
  {
  spin_lock_bh(& adapter->mcc_cq_lock);
  adapter->mcc_obj.rearm_cq = 0;
  be_cq_notify(adapter, (int )adapter->mcc_obj.cq.id, 0, 0);
  spin_unlock_bh(& adapter->mcc_cq_lock);
  return;
}
}
int be_process_mcc(struct be_adapter *adapter )
{
  struct be_mcc_compl *compl ;
  int num ;
  int status ;
  struct be_mcc_obj *mcc_obj ;
  {
  num = 0;
  status = 0;
  mcc_obj = & adapter->mcc_obj;
  spin_lock(& adapter->mcc_cq_lock);
  goto ldv_57303;
  ldv_57302: ;
  if (((unsigned long )compl->flags & 1073741824UL) != 0UL) {
    be_mcc_event_process(adapter, compl);
  } else
  if (((unsigned long )compl->flags & 268435456UL) != 0UL) {
    status = be_mcc_compl_process(adapter, compl);
    atomic_dec(& mcc_obj->q.used);
  } else {
  }
  be_mcc_compl_use(compl);
  num = num + 1;
  ldv_57303:
  compl = be_mcc_compl_get(adapter);
  if ((unsigned long )compl != (unsigned long )((struct be_mcc_compl *)0)) {
    goto ldv_57302;
  } else {
  }
  if (num != 0) {
    be_cq_notify(adapter, (int )mcc_obj->cq.id, (int )mcc_obj->rearm_cq, (int )((u16 )num));
  } else {
  }
  spin_unlock(& adapter->mcc_cq_lock);
  return (status);
}
}
static int be_mcc_wait_compl(struct be_adapter *adapter )
{
  int i ;
  int status ;
  struct be_mcc_obj *mcc_obj ;
  u8 tmp ;
  int tmp___0 ;
  {
  status = 0;
  mcc_obj = & adapter->mcc_obj;
  i = 0;
  goto ldv_57313;
  ldv_57312:
  tmp = be_check_error(adapter, 7U);
  if ((unsigned int )tmp != 0U) {
    return (-5);
  } else {
  }
  local_bh_disable();
  status = be_process_mcc(adapter);
  local_bh_enable();
  tmp___0 = atomic_read((atomic_t const *)(& mcc_obj->q.used));
  if (tmp___0 == 0) {
    goto ldv_57311;
  } else {
  }
  __const_udelay(429500UL);
  i = i + 1;
  ldv_57313: ;
  if (i <= 119999) {
    goto ldv_57312;
  } else {
  }
  ldv_57311: ;
  if (i == 120000) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FW not responding\n");
    be_set_error(adapter, 4);
    return (-5);
  } else {
  }
  return (status);
}
}
static int be_mcc_notify_wait(struct be_adapter *adapter )
{
  int status ;
  struct be_mcc_wrb *wrb ;
  struct be_mcc_obj *mcc_obj ;
  u16 index ;
  struct be_cmd_resp_hdr *resp ;
  void *tmp ;
  {
  mcc_obj = & adapter->mcc_obj;
  index = mcc_obj->q.head;
  index_dec(& index, (int )mcc_obj->q.len);
  tmp = queue_index_node(& mcc_obj->q, (int )index);
  wrb = (struct be_mcc_wrb *)tmp;
  resp = be_decode_resp_hdr(wrb->tag0, wrb->tag1);
  be_mcc_notify(adapter);
  status = be_mcc_wait_compl(adapter);
  if (status == -5) {
    goto out;
  } else {
  }
  status = (int )resp->base_status | ((int )resp->addl_status << 16);
  out: ;
  return (status);
}
}
static int be_mbox_db_ready_wait(struct be_adapter *adapter , void *db )
{
  int msecs ;
  u32 ready ;
  u8 tmp ;
  {
  msecs = 0;
  ldv_57330:
  tmp = be_check_error(adapter, 7U);
  if ((unsigned int )tmp != 0U) {
    return (-5);
  } else {
  }
  ready = ioread32(db);
  if (ready == 4294967295U) {
    return (-1);
  } else {
  }
  ready = ready & 1U;
  if (ready != 0U) {
    goto ldv_57329;
  } else {
  }
  if (msecs > 4000) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FW not responding\n");
    be_set_error(adapter, 4);
    be_detect_error(adapter);
    return (-1);
  } else {
  }
  msleep(1U);
  msecs = msecs + 1;
  goto ldv_57330;
  ldv_57329: ;
  return (0);
}
}
static int be_mbox_notify_wait(struct be_adapter *adapter )
{
  int status ;
  u32 val ;
  void *db ;
  struct be_dma_mem *mbox_mem ;
  struct be_mcc_mailbox *mbox ;
  struct be_mcc_compl *compl ;
  bool tmp ;
  {
  val = 0U;
  db = (void *)adapter->db + 352U;
  mbox_mem = & adapter->mbox_mem;
  mbox = (struct be_mcc_mailbox *)mbox_mem->va;
  compl = & mbox->compl;
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  val = val | 2U;
  val = ((u32 )(mbox_mem->dma >> 32ULL) & 4294967292U) | val;
  iowrite32(val, db);
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  val = 0U;
  val = ((unsigned int )(mbox_mem->dma >> 4) << 2) | val;
  iowrite32(val, db);
  status = be_mbox_db_ready_wait(adapter, db);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp = be_mcc_compl_is_new(compl);
  if ((int )tmp) {
    status = be_mcc_compl_process(adapter, & mbox->compl);
    be_mcc_compl_use(compl);
    if (status != 0) {
      return (status);
    } else {
    }
  } else {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "invalid mailbox completion\n");
    return (-1);
  }
  return (0);
}
}
static u16 be_POST_stage_get(struct be_adapter *adapter )
{
  u32 sem ;
  {
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    sem = ioread32((void *)adapter->csr + 172U);
  } else {
    pci_read_config_dword((struct pci_dev const *)adapter->pdev, 148, & sem);
  }
  return ((u16 )sem);
}
}
static int lancer_wait_ready(struct be_adapter *adapter )
{
  u32 sliport_status ;
  int i ;
  {
  i = 0;
  goto ldv_57350;
  ldv_57349:
  sliport_status = ioread32((void *)adapter->db + 1028U);
  if ((sliport_status & 8388608U) != 0U) {
    return (0);
  } else {
  }
  if ((int )sliport_status < 0 && (sliport_status & 16777216U) == 0U) {
    return (-5);
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_57350: ;
  if (i <= 29) {
    goto ldv_57349;
  } else {
  }
  return (sliport_status != 0U ? (int )sliport_status : -1);
}
}
int be_fw_wait_ready(struct be_adapter *adapter )
{
  u16 stage ;
  int status ;
  int timeout ;
  struct device *dev ;
  unsigned long tmp ;
  {
  timeout = 0;
  dev = & (adapter->pdev)->dev;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    status = lancer_wait_ready(adapter);
    if (status != 0) {
      stage = (u16 )status;
      goto err;
    } else {
    }
    return (0);
  } else {
  }
  ldv_57360: ;
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) && (unsigned int )adapter->virtfn != 0U) {
    return (0);
  } else {
  }
  stage = be_POST_stage_get(adapter);
  if ((unsigned int )stage == 49152U) {
    return (0);
  } else {
  }
  _dev_info((struct device const *)dev, "Waiting for POST, %ds elapsed\n", timeout);
  tmp = msleep_interruptible(2000U);
  if (tmp != 0UL) {
    dev_err((struct device const *)dev, "Waiting for POST aborted\n");
    return (-4);
  } else {
  }
  timeout = timeout + 2;
  if (timeout <= 59) {
    goto ldv_57360;
  } else {
  }
  err:
  dev_err((struct device const *)dev, "POST timeout; stage=%#x\n", (int )stage);
  return (-110);
}
}
__inline static struct be_sge *nonembedded_sgl(struct be_mcc_wrb *wrb )
{
  {
  return ((struct be_sge *)(& wrb->payload.sgl));
}
}
__inline static void fill_wrb_tags(struct be_mcc_wrb *wrb , unsigned long addr )
{
  {
  wrb->tag0 = (u32 )addr;
  wrb->tag1 = (unsigned int )(addr >> 32UL);
  return;
}
}
static void be_wrb_cmd_hdr_prepare(struct be_cmd_req_hdr *req_hdr , u8 subsystem ,
                                   u8 opcode , int cmd_len , struct be_mcc_wrb *wrb ,
                                   struct be_dma_mem *mem )
{
  struct be_sge *sge ;
  {
  req_hdr->opcode = opcode;
  req_hdr->subsystem = subsystem;
  req_hdr->request_length = (unsigned int )cmd_len - 16U;
  req_hdr->version = 0U;
  fill_wrb_tags(wrb, (unsigned long )req_hdr);
  wrb->payload_length = (u32 )cmd_len;
  if ((unsigned long )mem != (unsigned long )((struct be_dma_mem *)0)) {
    wrb->embedded = wrb->embedded | 8U;
    sge = nonembedded_sgl(wrb);
    sge->pa_hi = (unsigned int )(mem->dma >> 32ULL);
    sge->pa_lo = (unsigned int )mem->dma;
    sge->len = mem->size;
  } else {
    wrb->embedded = wrb->embedded | 1U;
  }
  swap_dws((void *)wrb, 8);
  return;
}
}
static void be_cmd_page_addrs_prepare(struct phys_addr *pages , u32 max_pages , struct be_dma_mem *mem )
{
  int i ;
  int buf_pages ;
  unsigned int _min1 ;
  u32 _min2 ;
  u64 dma ;
  {
  _min1 = (unsigned int )(((((unsigned long )mem->va & 4095UL) + (unsigned long )mem->size) + 4095UL) >> 12);
  _min2 = max_pages;
  buf_pages = (int )(_min1 < _min2 ? _min1 : _min2);
  dma = mem->dma;
  i = 0;
  goto ldv_57390;
  ldv_57389:
  (pages + (unsigned long )i)->lo = (unsigned int )dma;
  (pages + (unsigned long )i)->hi = (unsigned int )(dma >> 32ULL);
  dma = dma + 4096ULL;
  i = i + 1;
  ldv_57390: ;
  if (i < buf_pages) {
    goto ldv_57389;
  } else {
  }
  return;
}
}
__inline static struct be_mcc_wrb *wrb_from_mbox(struct be_adapter *adapter )
{
  struct be_dma_mem *mbox_mem ;
  struct be_mcc_wrb *wrb ;
  {
  mbox_mem = & adapter->mbox_mem;
  wrb = & ((struct be_mcc_mailbox *)mbox_mem->va)->wrb;
  memset((void *)wrb, 0, 256UL);
  return (wrb);
}
}
static struct be_mcc_wrb *wrb_from_mccq(struct be_adapter *adapter )
{
  struct be_queue_info *mccq ;
  struct be_mcc_wrb *wrb ;
  int tmp ;
  void *tmp___0 ;
  {
  mccq = & adapter->mcc_obj.q;
  if (! mccq->created) {
    return ((struct be_mcc_wrb *)0);
  } else {
  }
  tmp = atomic_read((atomic_t const *)(& mccq->used));
  if (tmp >= (int )mccq->len) {
    return ((struct be_mcc_wrb *)0);
  } else {
  }
  tmp___0 = queue_head_node(mccq);
  wrb = (struct be_mcc_wrb *)tmp___0;
  queue_head_inc___0(mccq);
  atomic_inc(& mccq->used);
  memset((void *)wrb, 0, 256UL);
  return (wrb);
}
}
static bool use_mcc(struct be_adapter *adapter )
{
  {
  return (adapter->mcc_obj.q.created);
}
}
static int be_cmd_lock(struct be_adapter *adapter )
{
  int tmp ;
  bool tmp___0 ;
  {
  tmp___0 = use_mcc(adapter);
  if ((int )tmp___0) {
    spin_lock_bh(& adapter->mcc_lock);
    return (0);
  } else {
    tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
    return (tmp);
  }
}
}
static void be_cmd_unlock(struct be_adapter *adapter )
{
  bool tmp ;
  {
  tmp = use_mcc(adapter);
  if ((int )tmp) {
    spin_unlock_bh(& adapter->mcc_lock);
  } else {
    return;
  }
  return;
}
}
static struct be_mcc_wrb *be_cmd_copy(struct be_adapter *adapter , struct be_mcc_wrb *wrb )
{
  struct be_mcc_wrb *dest_wrb ;
  bool tmp ;
  void *tmp___0 ;
  {
  tmp = use_mcc(adapter);
  if ((int )tmp) {
    dest_wrb = wrb_from_mccq(adapter);
    if ((unsigned long )dest_wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
      return ((struct be_mcc_wrb *)0);
    } else {
    }
  } else {
    dest_wrb = wrb_from_mbox(adapter);
  }
  memcpy((void *)dest_wrb, (void const *)wrb, 256UL);
  if ((int )wrb->embedded & 1) {
    tmp___0 = embedded_payload(wrb);
    fill_wrb_tags(dest_wrb, (unsigned long )tmp___0);
  } else {
  }
  return (dest_wrb);
}
}
static int be_cmd_notify_wait(struct be_adapter *adapter , struct be_mcc_wrb *wrb )
{
  struct be_mcc_wrb *dest_wrb ;
  int status ;
  bool tmp ;
  {
  status = be_cmd_lock(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  dest_wrb = be_cmd_copy(adapter, wrb);
  if ((unsigned long )dest_wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    return (-16);
  } else {
  }
  tmp = use_mcc(adapter);
  if ((int )tmp) {
    status = be_mcc_notify_wait(adapter);
  } else {
    status = be_mbox_notify_wait(adapter);
  }
  if (status == 0) {
    memcpy((void *)wrb, (void const *)dest_wrb, 256UL);
  } else {
  }
  be_cmd_unlock(adapter);
  return (status);
}
}
int be_cmd_fw_init(struct be_adapter *adapter )
{
  u8 *wrb ;
  int status ;
  int tmp ;
  struct be_mcc_wrb *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return (0);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  tmp___0 = wrb_from_mbox(adapter);
  wrb = (u8 *)tmp___0;
  tmp___1 = wrb;
  wrb = wrb + 1;
  *tmp___1 = 255U;
  tmp___2 = wrb;
  wrb = wrb + 1;
  *tmp___2 = 18U;
  tmp___3 = wrb;
  wrb = wrb + 1;
  *tmp___3 = 52U;
  tmp___4 = wrb;
  wrb = wrb + 1;
  *tmp___4 = 255U;
  tmp___5 = wrb;
  wrb = wrb + 1;
  *tmp___5 = 255U;
  tmp___6 = wrb;
  wrb = wrb + 1;
  *tmp___6 = 86U;
  tmp___7 = wrb;
  wrb = wrb + 1;
  *tmp___7 = 120U;
  *wrb = 255U;
  status = be_mbox_notify_wait(adapter);
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_fw_clean(struct be_adapter *adapter )
{
  u8 *wrb ;
  int status ;
  int tmp ;
  struct be_mcc_wrb *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    return (0);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  tmp___0 = wrb_from_mbox(adapter);
  wrb = (u8 *)tmp___0;
  tmp___1 = wrb;
  wrb = wrb + 1;
  *tmp___1 = 255U;
  tmp___2 = wrb;
  wrb = wrb + 1;
  *tmp___2 = 170U;
  tmp___3 = wrb;
  wrb = wrb + 1;
  *tmp___3 = 187U;
  tmp___4 = wrb;
  wrb = wrb + 1;
  *tmp___4 = 255U;
  tmp___5 = wrb;
  wrb = wrb + 1;
  *tmp___5 = 255U;
  tmp___6 = wrb;
  wrb = wrb + 1;
  *tmp___6 = 204U;
  tmp___7 = wrb;
  wrb = wrb + 1;
  *tmp___7 = 221U;
  *wrb = 255U;
  status = be_mbox_notify_wait(adapter);
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_eq_create(struct be_adapter *adapter , struct be_eq_obj *eqo )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_eq_create *req ;
  struct be_dma_mem *q_mem ;
  int status ;
  int ver ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  struct be_cmd_resp_eq_create *resp ;
  void *tmp___5 ;
  {
  q_mem = & eqo->q.dma_mem;
  ver = 0;
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_eq_create *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 13, 100, wrb, (struct be_dma_mem *)0);
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U)) {
    ver = 2;
  } else {
  }
  req->hdr.version = (u8 )ver;
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  tmp___1 = amap_mask(1U);
  amap_set((void *)(& req->context), 0U, tmp___1, 29U, 1U);
  tmp___2 = amap_mask(1U);
  amap_set((void *)(& req->context), 0U, tmp___2, 31U, 0U);
  tmp___3 = __ilog2_u32((unsigned int )eqo->q.len / 256U);
  tmp___4 = amap_mask(3U);
  amap_set((void *)(& req->context), 1U, tmp___4, 26U, (u32 )tmp___3);
  swap_dws((void *)(& req->context), 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___5 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_eq_create *)tmp___5;
    eqo->q.id = resp->eq_id;
    eqo->msix_idx = ver == 2 ? (u8 )resp->msix_idx : eqo->idx;
    eqo->q.created = 1;
  } else {
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_mac_addr_query(struct be_adapter *adapter , u8 *mac_addr , bool permanent ,
                          u32 if_handle , u32 pmac_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mac_query *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_mac_query *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_mac_query *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 1, 24, wrb, (struct be_dma_mem *)0);
  req->type = 1U;
  if ((int )permanent) {
    req->permanent = 1U;
  } else {
    req->if_id = (unsigned short )if_handle;
    req->pmac_id = pmac_id;
    req->permanent = 0U;
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mac_query *)tmp___0;
    memcpy((void *)mac_addr, (void const *)(& resp->mac.addr), 6UL);
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_pmac_add(struct be_adapter *adapter , u8 *mac_addr , u32 if_id , u32 *pmac_id ,
                    u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_pmac_add *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_pmac_add *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_pmac_add *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 59, 28, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  req->if_id = if_id;
  memcpy((void *)(& req->mac_address), (void const *)mac_addr, 6UL);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_pmac_add *)tmp___0;
    *pmac_id = resp->pmac_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  if (status == 5) {
    status = -1;
  } else {
  }
  return (status);
}
}
int be_cmd_pmac_del(struct be_adapter *adapter , u32 if_id , int pmac_id , u32 dom )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_pmac_del *req ;
  int status ;
  void *tmp ;
  {
  if (pmac_id == -1) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_pmac_del *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 60, 24, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )dom;
  req->if_id = if_id;
  req->pmac_id = (unsigned int )pmac_id;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_cq_create(struct be_adapter *adapter , struct be_queue_info *cq , struct be_queue_info *eq ,
                     bool no_delay , int coalesce_wm )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_cq_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  int tmp___10 ;
  u32 tmp___11 ;
  u32 tmp___12 ;
  u32 tmp___13 ;
  u32 tmp___14 ;
  struct be_cmd_resp_cq_create *resp ;
  void *tmp___15 ;
  {
  q_mem = & cq->dma_mem;
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_cq_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 12, 100, wrb, (struct be_dma_mem *)0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    tmp___1 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___1, 12U, (u32 )coalesce_wm);
    tmp___2 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___2, 14U, (u32 )no_delay);
    tmp___3 = __ilog2_u32((unsigned int )cq->len / 256U);
    tmp___4 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___4, 27U, (u32 )tmp___3);
    tmp___5 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___5, 29U, 1U);
    tmp___6 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___6, 31U, 1U);
    tmp___7 = amap_mask(8U);
    amap_set(ctxt, 1U, tmp___7, 22U, (u32 )eq->id);
  } else {
    req->hdr.version = 2U;
    req->page_size = 1U;
    if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
      tmp___8 = amap_mask(2U);
      amap_set(ctxt, 0U, tmp___8, 12U, (u32 )coalesce_wm);
    } else {
    }
    tmp___9 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___9, 14U, (u32 )no_delay);
    tmp___10 = __ilog2_u32((unsigned int )cq->len / 256U);
    tmp___11 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___11, 27U, (u32 )tmp___10);
    tmp___12 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___12, 29U, 1U);
    tmp___13 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___13, 31U, 1U);
    tmp___14 = amap_mask(16U);
    amap_set(ctxt, 1U, tmp___14, 0U, (u32 )eq->id);
  }
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___15 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_cq_create *)tmp___15;
    cq->id = resp->cq_id;
    cq->created = 1;
  } else {
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
static u32 be_encoded_q_len(int q_len )
{
  u32 len_encoded ;
  int tmp ;
  {
  tmp = fls(q_len);
  len_encoded = (u32 )tmp;
  if (len_encoded == 16U) {
    len_encoded = 0U;
  } else {
  }
  return (len_encoded);
}
}
static int be_cmd_mccq_ext_create(struct be_adapter *adapter , struct be_queue_info *mccq ,
                                  struct be_queue_info *cq )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mcc_ext_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  struct be_cmd_resp_mcc_create *resp ;
  void *tmp___10 ;
  {
  q_mem = & mccq->dma_mem;
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_mcc_ext_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 90, 104, wrb, (struct be_dma_mem *)0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    tmp___1 = amap_mask(1U);
    amap_set(ctxt, 1U, tmp___1, 31U, 1U);
    tmp___2 = be_encoded_q_len((int )mccq->len);
    tmp___3 = amap_mask(4U);
    amap_set(ctxt, 0U, tmp___3, 16U, tmp___2);
    tmp___4 = amap_mask(10U);
    amap_set(ctxt, 0U, tmp___4, 22U, (u32 )cq->id);
  } else {
    req->hdr.version = 1U;
    req->cq_id = cq->id;
    tmp___5 = be_encoded_q_len((int )mccq->len);
    tmp___6 = amap_mask(4U);
    amap_set(ctxt, 0U, tmp___6, 16U, tmp___5);
    tmp___7 = amap_mask(1U);
    amap_set(ctxt, 1U, tmp___7, 31U, 1U);
    tmp___8 = amap_mask(16U);
    amap_set(ctxt, 0U, tmp___8, 0U, (u32 )cq->id);
    tmp___9 = amap_mask(1U);
    amap_set(ctxt, 2U, tmp___9, 0U, 1U);
  }
  req->async_event_bitmap[0] = 131170U;
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___10 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mcc_create *)tmp___10;
    mccq->id = resp->id;
    mccq->created = 1;
  } else {
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
static int be_cmd_mccq_org_create(struct be_adapter *adapter , struct be_queue_info *mccq ,
                                  struct be_queue_info *cq )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_mcc_create *req ;
  struct be_dma_mem *q_mem ;
  void *ctxt ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  struct be_cmd_resp_mcc_create *resp ;
  void *tmp___5 ;
  {
  q_mem = & mccq->dma_mem;
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_mcc_create *)tmp___0;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 21, 100, wrb, (struct be_dma_mem *)0);
  req->num_pages = (unsigned short )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  tmp___1 = amap_mask(1U);
  amap_set(ctxt, 1U, tmp___1, 31U, 1U);
  tmp___2 = be_encoded_q_len((int )mccq->len);
  tmp___3 = amap_mask(4U);
  amap_set(ctxt, 0U, tmp___3, 16U, tmp___2);
  tmp___4 = amap_mask(10U);
  amap_set(ctxt, 0U, tmp___4, 22U, (u32 )cq->id);
  swap_dws(ctxt, 16);
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___5 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_mcc_create *)tmp___5;
    mccq->id = resp->id;
    mccq->created = 1;
  } else {
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_mccq_create(struct be_adapter *adapter , struct be_queue_info *mccq , struct be_queue_info *cq )
{
  int status ;
  {
  status = be_cmd_mccq_ext_create(adapter, mccq, cq);
  if (status != 0 && (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "Upgrade to F/W ver 2.102.235.0 or newer to avoid conflicting priorities between NIC and FCoE traffic");
    status = be_cmd_mccq_org_create(adapter, mccq, cq);
  } else {
  }
  return (status);
}
}
int be_cmd_txq_create(struct be_adapter *adapter , struct be_tx_obj *txo )
{
  struct be_mcc_wrb wrb ;
  struct be_cmd_req_eth_tx_create *req ;
  struct be_queue_info *txq ;
  struct be_queue_info *cq ;
  struct be_dma_mem *q_mem ;
  int status ;
  int ver ;
  void *tmp ;
  u32 tmp___0 ;
  struct be_cmd_resp_eth_tx_create *resp ;
  void *tmp___1 ;
  {
  wrb.embedded = 0U;
  wrb.payload_length = 0U;
  wrb.tag0 = 0U;
  wrb.tag1 = 0U;
  wrb.rsvd = 0U;
  wrb.payload.embedded_payload[0] = (unsigned char)0;
  wrb.payload.embedded_payload[1] = (unsigned char)0;
  wrb.payload.embedded_payload[2] = (unsigned char)0;
  wrb.payload.embedded_payload[3] = (unsigned char)0;
  wrb.payload.embedded_payload[4] = (unsigned char)0;
  wrb.payload.embedded_payload[5] = (unsigned char)0;
  wrb.payload.embedded_payload[6] = (unsigned char)0;
  wrb.payload.embedded_payload[7] = (unsigned char)0;
  wrb.payload.embedded_payload[8] = (unsigned char)0;
  wrb.payload.embedded_payload[9] = (unsigned char)0;
  wrb.payload.embedded_payload[10] = (unsigned char)0;
  wrb.payload.embedded_payload[11] = (unsigned char)0;
  wrb.payload.embedded_payload[12] = (unsigned char)0;
  wrb.payload.embedded_payload[13] = (unsigned char)0;
  wrb.payload.embedded_payload[14] = (unsigned char)0;
  wrb.payload.embedded_payload[15] = (unsigned char)0;
  wrb.payload.embedded_payload[16] = (unsigned char)0;
  wrb.payload.embedded_payload[17] = (unsigned char)0;
  wrb.payload.embedded_payload[18] = (unsigned char)0;
  wrb.payload.embedded_payload[19] = (unsigned char)0;
  wrb.payload.embedded_payload[20] = (unsigned char)0;
  wrb.payload.embedded_payload[21] = (unsigned char)0;
  wrb.payload.embedded_payload[22] = (unsigned char)0;
  wrb.payload.embedded_payload[23] = (unsigned char)0;
  wrb.payload.embedded_payload[24] = (unsigned char)0;
  wrb.payload.embedded_payload[25] = (unsigned char)0;
  wrb.payload.embedded_payload[26] = (unsigned char)0;
  wrb.payload.embedded_payload[27] = (unsigned char)0;
  wrb.payload.embedded_payload[28] = (unsigned char)0;
  wrb.payload.embedded_payload[29] = (unsigned char)0;
  wrb.payload.embedded_payload[30] = (unsigned char)0;
  wrb.payload.embedded_payload[31] = (unsigned char)0;
  wrb.payload.embedded_payload[32] = (unsigned char)0;
  wrb.payload.embedded_payload[33] = (unsigned char)0;
  wrb.payload.embedded_payload[34] = (unsigned char)0;
  wrb.payload.embedded_payload[35] = (unsigned char)0;
  wrb.payload.embedded_payload[36] = (unsigned char)0;
  wrb.payload.embedded_payload[37] = (unsigned char)0;
  wrb.payload.embedded_payload[38] = (unsigned char)0;
  wrb.payload.embedded_payload[39] = (unsigned char)0;
  wrb.payload.embedded_payload[40] = (unsigned char)0;
  wrb.payload.embedded_payload[41] = (unsigned char)0;
  wrb.payload.embedded_payload[42] = (unsigned char)0;
  wrb.payload.embedded_payload[43] = (unsigned char)0;
  wrb.payload.embedded_payload[44] = (unsigned char)0;
  wrb.payload.embedded_payload[45] = (unsigned char)0;
  wrb.payload.embedded_payload[46] = (unsigned char)0;
  wrb.payload.embedded_payload[47] = (unsigned char)0;
  wrb.payload.embedded_payload[48] = (unsigned char)0;
  wrb.payload.embedded_payload[49] = (unsigned char)0;
  wrb.payload.embedded_payload[50] = (unsigned char)0;
  wrb.payload.embedded_payload[51] = (unsigned char)0;
  wrb.payload.embedded_payload[52] = (unsigned char)0;
  wrb.payload.embedded_payload[53] = (unsigned char)0;
  wrb.payload.embedded_payload[54] = (unsigned char)0;
  wrb.payload.embedded_payload[55] = (unsigned char)0;
  wrb.payload.embedded_payload[56] = (unsigned char)0;
  wrb.payload.embedded_payload[57] = (unsigned char)0;
  wrb.payload.embedded_payload[58] = (unsigned char)0;
  wrb.payload.embedded_payload[59] = (unsigned char)0;
  wrb.payload.embedded_payload[60] = (unsigned char)0;
  wrb.payload.embedded_payload[61] = (unsigned char)0;
  wrb.payload.embedded_payload[62] = (unsigned char)0;
  wrb.payload.embedded_payload[63] = (unsigned char)0;
  wrb.payload.embedded_payload[64] = (unsigned char)0;
  wrb.payload.embedded_payload[65] = (unsigned char)0;
  wrb.payload.embedded_payload[66] = (unsigned char)0;
  wrb.payload.embedded_payload[67] = (unsigned char)0;
  wrb.payload.embedded_payload[68] = (unsigned char)0;
  wrb.payload.embedded_payload[69] = (unsigned char)0;
  wrb.payload.embedded_payload[70] = (unsigned char)0;
  wrb.payload.embedded_payload[71] = (unsigned char)0;
  wrb.payload.embedded_payload[72] = (unsigned char)0;
  wrb.payload.embedded_payload[73] = (unsigned char)0;
  wrb.payload.embedded_payload[74] = (unsigned char)0;
  wrb.payload.embedded_payload[75] = (unsigned char)0;
  wrb.payload.embedded_payload[76] = (unsigned char)0;
  wrb.payload.embedded_payload[77] = (unsigned char)0;
  wrb.payload.embedded_payload[78] = (unsigned char)0;
  wrb.payload.embedded_payload[79] = (unsigned char)0;
  wrb.payload.embedded_payload[80] = (unsigned char)0;
  wrb.payload.embedded_payload[81] = (unsigned char)0;
  wrb.payload.embedded_payload[82] = (unsigned char)0;
  wrb.payload.embedded_payload[83] = (unsigned char)0;
  wrb.payload.embedded_payload[84] = (unsigned char)0;
  wrb.payload.embedded_payload[85] = (unsigned char)0;
  wrb.payload.embedded_payload[86] = (unsigned char)0;
  wrb.payload.embedded_payload[87] = (unsigned char)0;
  wrb.payload.embedded_payload[88] = (unsigned char)0;
  wrb.payload.embedded_payload[89] = (unsigned char)0;
  wrb.payload.embedded_payload[90] = (unsigned char)0;
  wrb.payload.embedded_payload[91] = (unsigned char)0;
  wrb.payload.embedded_payload[92] = (unsigned char)0;
  wrb.payload.embedded_payload[93] = (unsigned char)0;
  wrb.payload.embedded_payload[94] = (unsigned char)0;
  wrb.payload.embedded_payload[95] = (unsigned char)0;
  wrb.payload.embedded_payload[96] = (unsigned char)0;
  wrb.payload.embedded_payload[97] = (unsigned char)0;
  wrb.payload.embedded_payload[98] = (unsigned char)0;
  wrb.payload.embedded_payload[99] = (unsigned char)0;
  wrb.payload.embedded_payload[100] = (unsigned char)0;
  wrb.payload.embedded_payload[101] = (unsigned char)0;
  wrb.payload.embedded_payload[102] = (unsigned char)0;
  wrb.payload.embedded_payload[103] = (unsigned char)0;
  wrb.payload.embedded_payload[104] = (unsigned char)0;
  wrb.payload.embedded_payload[105] = (unsigned char)0;
  wrb.payload.embedded_payload[106] = (unsigned char)0;
  wrb.payload.embedded_payload[107] = (unsigned char)0;
  wrb.payload.embedded_payload[108] = (unsigned char)0;
  wrb.payload.embedded_payload[109] = (unsigned char)0;
  wrb.payload.embedded_payload[110] = (unsigned char)0;
  wrb.payload.embedded_payload[111] = (unsigned char)0;
  wrb.payload.embedded_payload[112] = (unsigned char)0;
  wrb.payload.embedded_payload[113] = (unsigned char)0;
  wrb.payload.embedded_payload[114] = (unsigned char)0;
  wrb.payload.embedded_payload[115] = (unsigned char)0;
  wrb.payload.embedded_payload[116] = (unsigned char)0;
  wrb.payload.embedded_payload[117] = (unsigned char)0;
  wrb.payload.embedded_payload[118] = (unsigned char)0;
  wrb.payload.embedded_payload[119] = (unsigned char)0;
  wrb.payload.embedded_payload[120] = (unsigned char)0;
  wrb.payload.embedded_payload[121] = (unsigned char)0;
  wrb.payload.embedded_payload[122] = (unsigned char)0;
  wrb.payload.embedded_payload[123] = (unsigned char)0;
  wrb.payload.embedded_payload[124] = (unsigned char)0;
  wrb.payload.embedded_payload[125] = (unsigned char)0;
  wrb.payload.embedded_payload[126] = (unsigned char)0;
  wrb.payload.embedded_payload[127] = (unsigned char)0;
  wrb.payload.embedded_payload[128] = (unsigned char)0;
  wrb.payload.embedded_payload[129] = (unsigned char)0;
  wrb.payload.embedded_payload[130] = (unsigned char)0;
  wrb.payload.embedded_payload[131] = (unsigned char)0;
  wrb.payload.embedded_payload[132] = (unsigned char)0;
  wrb.payload.embedded_payload[133] = (unsigned char)0;
  wrb.payload.embedded_payload[134] = (unsigned char)0;
  wrb.payload.embedded_payload[135] = (unsigned char)0;
  wrb.payload.embedded_payload[136] = (unsigned char)0;
  wrb.payload.embedded_payload[137] = (unsigned char)0;
  wrb.payload.embedded_payload[138] = (unsigned char)0;
  wrb.payload.embedded_payload[139] = (unsigned char)0;
  wrb.payload.embedded_payload[140] = (unsigned char)0;
  wrb.payload.embedded_payload[141] = (unsigned char)0;
  wrb.payload.embedded_payload[142] = (unsigned char)0;
  wrb.payload.embedded_payload[143] = (unsigned char)0;
  wrb.payload.embedded_payload[144] = (unsigned char)0;
  wrb.payload.embedded_payload[145] = (unsigned char)0;
  wrb.payload.embedded_payload[146] = (unsigned char)0;
  wrb.payload.embedded_payload[147] = (unsigned char)0;
  wrb.payload.embedded_payload[148] = (unsigned char)0;
  wrb.payload.embedded_payload[149] = (unsigned char)0;
  wrb.payload.embedded_payload[150] = (unsigned char)0;
  wrb.payload.embedded_payload[151] = (unsigned char)0;
  wrb.payload.embedded_payload[152] = (unsigned char)0;
  wrb.payload.embedded_payload[153] = (unsigned char)0;
  wrb.payload.embedded_payload[154] = (unsigned char)0;
  wrb.payload.embedded_payload[155] = (unsigned char)0;
  wrb.payload.embedded_payload[156] = (unsigned char)0;
  wrb.payload.embedded_payload[157] = (unsigned char)0;
  wrb.payload.embedded_payload[158] = (unsigned char)0;
  wrb.payload.embedded_payload[159] = (unsigned char)0;
  wrb.payload.embedded_payload[160] = (unsigned char)0;
  wrb.payload.embedded_payload[161] = (unsigned char)0;
  wrb.payload.embedded_payload[162] = (unsigned char)0;
  wrb.payload.embedded_payload[163] = (unsigned char)0;
  wrb.payload.embedded_payload[164] = (unsigned char)0;
  wrb.payload.embedded_payload[165] = (unsigned char)0;
  wrb.payload.embedded_payload[166] = (unsigned char)0;
  wrb.payload.embedded_payload[167] = (unsigned char)0;
  wrb.payload.embedded_payload[168] = (unsigned char)0;
  wrb.payload.embedded_payload[169] = (unsigned char)0;
  wrb.payload.embedded_payload[170] = (unsigned char)0;
  wrb.payload.embedded_payload[171] = (unsigned char)0;
  wrb.payload.embedded_payload[172] = (unsigned char)0;
  wrb.payload.embedded_payload[173] = (unsigned char)0;
  wrb.payload.embedded_payload[174] = (unsigned char)0;
  wrb.payload.embedded_payload[175] = (unsigned char)0;
  wrb.payload.embedded_payload[176] = (unsigned char)0;
  wrb.payload.embedded_payload[177] = (unsigned char)0;
  wrb.payload.embedded_payload[178] = (unsigned char)0;
  wrb.payload.embedded_payload[179] = (unsigned char)0;
  wrb.payload.embedded_payload[180] = (unsigned char)0;
  wrb.payload.embedded_payload[181] = (unsigned char)0;
  wrb.payload.embedded_payload[182] = (unsigned char)0;
  wrb.payload.embedded_payload[183] = (unsigned char)0;
  wrb.payload.embedded_payload[184] = (unsigned char)0;
  wrb.payload.embedded_payload[185] = (unsigned char)0;
  wrb.payload.embedded_payload[186] = (unsigned char)0;
  wrb.payload.embedded_payload[187] = (unsigned char)0;
  wrb.payload.embedded_payload[188] = (unsigned char)0;
  wrb.payload.embedded_payload[189] = (unsigned char)0;
  wrb.payload.embedded_payload[190] = (unsigned char)0;
  wrb.payload.embedded_payload[191] = (unsigned char)0;
  wrb.payload.embedded_payload[192] = (unsigned char)0;
  wrb.payload.embedded_payload[193] = (unsigned char)0;
  wrb.payload.embedded_payload[194] = (unsigned char)0;
  wrb.payload.embedded_payload[195] = (unsigned char)0;
  wrb.payload.embedded_payload[196] = (unsigned char)0;
  wrb.payload.embedded_payload[197] = (unsigned char)0;
  wrb.payload.embedded_payload[198] = (unsigned char)0;
  wrb.payload.embedded_payload[199] = (unsigned char)0;
  wrb.payload.embedded_payload[200] = (unsigned char)0;
  wrb.payload.embedded_payload[201] = (unsigned char)0;
  wrb.payload.embedded_payload[202] = (unsigned char)0;
  wrb.payload.embedded_payload[203] = (unsigned char)0;
  wrb.payload.embedded_payload[204] = (unsigned char)0;
  wrb.payload.embedded_payload[205] = (unsigned char)0;
  wrb.payload.embedded_payload[206] = (unsigned char)0;
  wrb.payload.embedded_payload[207] = (unsigned char)0;
  wrb.payload.embedded_payload[208] = (unsigned char)0;
  wrb.payload.embedded_payload[209] = (unsigned char)0;
  wrb.payload.embedded_payload[210] = (unsigned char)0;
  wrb.payload.embedded_payload[211] = (unsigned char)0;
  wrb.payload.embedded_payload[212] = (unsigned char)0;
  wrb.payload.embedded_payload[213] = (unsigned char)0;
  wrb.payload.embedded_payload[214] = (unsigned char)0;
  wrb.payload.embedded_payload[215] = (unsigned char)0;
  wrb.payload.embedded_payload[216] = (unsigned char)0;
  wrb.payload.embedded_payload[217] = (unsigned char)0;
  wrb.payload.embedded_payload[218] = (unsigned char)0;
  wrb.payload.embedded_payload[219] = (unsigned char)0;
  wrb.payload.embedded_payload[220] = (unsigned char)0;
  wrb.payload.embedded_payload[221] = (unsigned char)0;
  wrb.payload.embedded_payload[222] = (unsigned char)0;
  wrb.payload.embedded_payload[223] = (unsigned char)0;
  wrb.payload.embedded_payload[224] = (unsigned char)0;
  wrb.payload.embedded_payload[225] = (unsigned char)0;
  wrb.payload.embedded_payload[226] = (unsigned char)0;
  wrb.payload.embedded_payload[227] = (unsigned char)0;
  wrb.payload.embedded_payload[228] = (unsigned char)0;
  wrb.payload.embedded_payload[229] = (unsigned char)0;
  wrb.payload.embedded_payload[230] = (unsigned char)0;
  wrb.payload.embedded_payload[231] = (unsigned char)0;
  wrb.payload.embedded_payload[232] = (unsigned char)0;
  wrb.payload.embedded_payload[233] = (unsigned char)0;
  wrb.payload.embedded_payload[234] = (unsigned char)0;
  wrb.payload.embedded_payload[235] = (unsigned char)0;
  txq = & txo->q;
  cq = & txo->cq;
  q_mem = & txq->dma_mem;
  ver = 0;
  tmp = embedded_payload(& wrb);
  req = (struct be_cmd_req_eth_tx_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 7, 148, & wrb, (struct be_dma_mem *)0);
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    req->hdr.version = 1U;
  } else
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    if ((adapter->function_caps & 64U) != 0U) {
      req->hdr.version = 2U;
    } else {
    }
  } else {
    req->hdr.version = 2U;
  }
  if ((unsigned int )req->hdr.version != 0U) {
    req->if_id = (unsigned short )adapter->if_handle;
  } else {
  }
  req->num_pages = (u8 )(((((unsigned long )q_mem->va & 4095UL) + (unsigned long )q_mem->size) + 4095UL) >> 12);
  req->ulp_num = 1U;
  req->type = 2U;
  req->cq_id = cq->id;
  tmp___0 = be_encoded_q_len((int )txq->len);
  req->queue_size = (u8 )tmp___0;
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 8U, q_mem);
  ver = (int )req->hdr.version;
  status = be_cmd_notify_wait(adapter, & wrb);
  if (status == 0) {
    tmp___1 = embedded_payload(& wrb);
    resp = (struct be_cmd_resp_eth_tx_create *)tmp___1;
    txq->id = resp->cid;
    if (ver == 2) {
      txo->db_offset = resp->db_offset;
    } else {
      txo->db_offset = 96U;
    }
    txq->created = 1;
  } else {
  }
  return (status);
}
}
int be_cmd_rxq_create(struct be_adapter *adapter , struct be_queue_info *rxq , u16 cq_id ,
                      u16 frag_size , u32 if_id , u32 rss , u8 *rss_id )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_eth_rx_create *req ;
  struct be_dma_mem *q_mem ;
  int status ;
  void *tmp ;
  int tmp___0 ;
  struct be_cmd_resp_eth_rx_create *resp ;
  void *tmp___1 ;
  {
  q_mem = & rxq->dma_mem;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_eth_rx_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 8, 48, wrb, (struct be_dma_mem *)0);
  req->cq_id = cq_id;
  tmp___0 = fls((int )frag_size);
  req->frag_size = (unsigned int )((u8 )tmp___0) + 255U;
  req->num_pages = 2U;
  be_cmd_page_addrs_prepare((struct phys_addr *)(& req->pages), 2U, q_mem);
  req->interface_id = if_id;
  req->max_frame_size = 9018U;
  req->rss_queue = rss;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_eth_rx_create *)tmp___1;
    rxq->id = resp->id;
    rxq->created = 1;
    *rss_id = resp->rss_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_q_destroy(struct be_adapter *adapter , struct be_queue_info *q , int queue_type )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_q_destroy *req ;
  u8 subsys ;
  u8 opcode ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  subsys = 0U;
  opcode = 0U;
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_q_destroy *)tmp___0;
  switch (queue_type) {
  case 1:
  subsys = 1U;
  opcode = 55U;
  goto ldv_57571;
  case 2:
  subsys = 1U;
  opcode = 54U;
  goto ldv_57571;
  case 3:
  subsys = 3U;
  opcode = 9U;
  goto ldv_57571;
  case 4:
  subsys = 3U;
  opcode = 10U;
  goto ldv_57571;
  case 5:
  subsys = 1U;
  opcode = 53U;
  goto ldv_57571;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/--X--defaultlinux-4.2-rc1.tar.xz--X--08_1a--X--cpachecker/linux-4.2-rc1.tar.xz/csd_deg_dscv/11140/dscv_tempdir/dscv/ri/08_1a/drivers/net/ethernet/emulex/benet/be_cmds.c"),
                       "i" (1414), "i" (12UL));
  ldv_57577: ;
  goto ldv_57577;
  }
  ldv_57571:
  be_wrb_cmd_hdr_prepare(& req->hdr, (int )subsys, (int )opcode, 20, wrb, (struct be_dma_mem *)0);
  req->id = q->id;
  status = be_mbox_notify_wait(adapter);
  q->created = 0;
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_rxq_destroy(struct be_adapter *adapter , struct be_queue_info *q )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_q_destroy *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_q_destroy *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 10, 20, wrb, (struct be_dma_mem *)0);
  req->id = q->id;
  status = be_mcc_notify_wait(adapter);
  q->created = 0;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_if_create(struct be_adapter *adapter , u32 cap_flags , u32 en_flags , u32 *if_handle ,
                     u32 domain )
{
  struct be_mcc_wrb wrb ;
  struct be_cmd_req_if_create *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_if_create *resp ;
  void *tmp___0 ;
  {
  wrb.embedded = 0U;
  wrb.payload_length = 0U;
  wrb.tag0 = 0U;
  wrb.tag1 = 0U;
  wrb.rsvd = 0U;
  wrb.payload.embedded_payload[0] = (unsigned char)0;
  wrb.payload.embedded_payload[1] = (unsigned char)0;
  wrb.payload.embedded_payload[2] = (unsigned char)0;
  wrb.payload.embedded_payload[3] = (unsigned char)0;
  wrb.payload.embedded_payload[4] = (unsigned char)0;
  wrb.payload.embedded_payload[5] = (unsigned char)0;
  wrb.payload.embedded_payload[6] = (unsigned char)0;
  wrb.payload.embedded_payload[7] = (unsigned char)0;
  wrb.payload.embedded_payload[8] = (unsigned char)0;
  wrb.payload.embedded_payload[9] = (unsigned char)0;
  wrb.payload.embedded_payload[10] = (unsigned char)0;
  wrb.payload.embedded_payload[11] = (unsigned char)0;
  wrb.payload.embedded_payload[12] = (unsigned char)0;
  wrb.payload.embedded_payload[13] = (unsigned char)0;
  wrb.payload.embedded_payload[14] = (unsigned char)0;
  wrb.payload.embedded_payload[15] = (unsigned char)0;
  wrb.payload.embedded_payload[16] = (unsigned char)0;
  wrb.payload.embedded_payload[17] = (unsigned char)0;
  wrb.payload.embedded_payload[18] = (unsigned char)0;
  wrb.payload.embedded_payload[19] = (unsigned char)0;
  wrb.payload.embedded_payload[20] = (unsigned char)0;
  wrb.payload.embedded_payload[21] = (unsigned char)0;
  wrb.payload.embedded_payload[22] = (unsigned char)0;
  wrb.payload.embedded_payload[23] = (unsigned char)0;
  wrb.payload.embedded_payload[24] = (unsigned char)0;
  wrb.payload.embedded_payload[25] = (unsigned char)0;
  wrb.payload.embedded_payload[26] = (unsigned char)0;
  wrb.payload.embedded_payload[27] = (unsigned char)0;
  wrb.payload.embedded_payload[28] = (unsigned char)0;
  wrb.payload.embedded_payload[29] = (unsigned char)0;
  wrb.payload.embedded_payload[30] = (unsigned char)0;
  wrb.payload.embedded_payload[31] = (unsigned char)0;
  wrb.payload.embedded_payload[32] = (unsigned char)0;
  wrb.payload.embedded_payload[33] = (unsigned char)0;
  wrb.payload.embedded_payload[34] = (unsigned char)0;
  wrb.payload.embedded_payload[35] = (unsigned char)0;
  wrb.payload.embedded_payload[36] = (unsigned char)0;
  wrb.payload.embedded_payload[37] = (unsigned char)0;
  wrb.payload.embedded_payload[38] = (unsigned char)0;
  wrb.payload.embedded_payload[39] = (unsigned char)0;
  wrb.payload.embedded_payload[40] = (unsigned char)0;
  wrb.payload.embedded_payload[41] = (unsigned char)0;
  wrb.payload.embedded_payload[42] = (unsigned char)0;
  wrb.payload.embedded_payload[43] = (unsigned char)0;
  wrb.payload.embedded_payload[44] = (unsigned char)0;
  wrb.payload.embedded_payload[45] = (unsigned char)0;
  wrb.payload.embedded_payload[46] = (unsigned char)0;
  wrb.payload.embedded_payload[47] = (unsigned char)0;
  wrb.payload.embedded_payload[48] = (unsigned char)0;
  wrb.payload.embedded_payload[49] = (unsigned char)0;
  wrb.payload.embedded_payload[50] = (unsigned char)0;
  wrb.payload.embedded_payload[51] = (unsigned char)0;
  wrb.payload.embedded_payload[52] = (unsigned char)0;
  wrb.payload.embedded_payload[53] = (unsigned char)0;
  wrb.payload.embedded_payload[54] = (unsigned char)0;
  wrb.payload.embedded_payload[55] = (unsigned char)0;
  wrb.payload.embedded_payload[56] = (unsigned char)0;
  wrb.payload.embedded_payload[57] = (unsigned char)0;
  wrb.payload.embedded_payload[58] = (unsigned char)0;
  wrb.payload.embedded_payload[59] = (unsigned char)0;
  wrb.payload.embedded_payload[60] = (unsigned char)0;
  wrb.payload.embedded_payload[61] = (unsigned char)0;
  wrb.payload.embedded_payload[62] = (unsigned char)0;
  wrb.payload.embedded_payload[63] = (unsigned char)0;
  wrb.payload.embedded_payload[64] = (unsigned char)0;
  wrb.payload.embedded_payload[65] = (unsigned char)0;
  wrb.payload.embedded_payload[66] = (unsigned char)0;
  wrb.payload.embedded_payload[67] = (unsigned char)0;
  wrb.payload.embedded_payload[68] = (unsigned char)0;
  wrb.payload.embedded_payload[69] = (unsigned char)0;
  wrb.payload.embedded_payload[70] = (unsigned char)0;
  wrb.payload.embedded_payload[71] = (unsigned char)0;
  wrb.payload.embedded_payload[72] = (unsigned char)0;
  wrb.payload.embedded_payload[73] = (unsigned char)0;
  wrb.payload.embedded_payload[74] = (unsigned char)0;
  wrb.payload.embedded_payload[75] = (unsigned char)0;
  wrb.payload.embedded_payload[76] = (unsigned char)0;
  wrb.payload.embedded_payload[77] = (unsigned char)0;
  wrb.payload.embedded_payload[78] = (unsigned char)0;
  wrb.payload.embedded_payload[79] = (unsigned char)0;
  wrb.payload.embedded_payload[80] = (unsigned char)0;
  wrb.payload.embedded_payload[81] = (unsigned char)0;
  wrb.payload.embedded_payload[82] = (unsigned char)0;
  wrb.payload.embedded_payload[83] = (unsigned char)0;
  wrb.payload.embedded_payload[84] = (unsigned char)0;
  wrb.payload.embedded_payload[85] = (unsigned char)0;
  wrb.payload.embedded_payload[86] = (unsigned char)0;
  wrb.payload.embedded_payload[87] = (unsigned char)0;
  wrb.payload.embedded_payload[88] = (unsigned char)0;
  wrb.payload.embedded_payload[89] = (unsigned char)0;
  wrb.payload.embedded_payload[90] = (unsigned char)0;
  wrb.payload.embedded_payload[91] = (unsigned char)0;
  wrb.payload.embedded_payload[92] = (unsigned char)0;
  wrb.payload.embedded_payload[93] = (unsigned char)0;
  wrb.payload.embedded_payload[94] = (unsigned char)0;
  wrb.payload.embedded_payload[95] = (unsigned char)0;
  wrb.payload.embedded_payload[96] = (unsigned char)0;
  wrb.payload.embedded_payload[97] = (unsigned char)0;
  wrb.payload.embedded_payload[98] = (unsigned char)0;
  wrb.payload.embedded_payload[99] = (unsigned char)0;
  wrb.payload.embedded_payload[100] = (unsigned char)0;
  wrb.payload.embedded_payload[101] = (unsigned char)0;
  wrb.payload.embedded_payload[102] = (unsigned char)0;
  wrb.payload.embedded_payload[103] = (unsigned char)0;
  wrb.payload.embedded_payload[104] = (unsigned char)0;
  wrb.payload.embedded_payload[105] = (unsigned char)0;
  wrb.payload.embedded_payload[106] = (unsigned char)0;
  wrb.payload.embedded_payload[107] = (unsigned char)0;
  wrb.payload.embedded_payload[108] = (unsigned char)0;
  wrb.payload.embedded_payload[109] = (unsigned char)0;
  wrb.payload.embedded_payload[110] = (unsigned char)0;
  wrb.payload.embedded_payload[111] = (unsigned char)0;
  wrb.payload.embedded_payload[112] = (unsigned char)0;
  wrb.payload.embedded_payload[113] = (unsigned char)0;
  wrb.payload.embedded_payload[114] = (unsigned char)0;
  wrb.payload.embedded_payload[115] = (unsigned char)0;
  wrb.payload.embedded_payload[116] = (unsigned char)0;
  wrb.payload.embedded_payload[117] = (unsigned char)0;
  wrb.payload.embedded_payload[118] = (unsigned char)0;
  wrb.payload.embedded_payload[119] = (unsigned char)0;
  wrb.payload.embedded_payload[120] = (unsigned char)0;
  wrb.payload.embedded_payload[121] = (unsigned char)0;
  wrb.payload.embedded_payload[122] = (unsigned char)0;
  wrb.payload.embedded_payload[123] = (unsigned char)0;
  wrb.payload.embedded_payload[124] = (unsigned char)0;
  wrb.payload.embedded_payload[125] = (unsigned char)0;
  wrb.payload.embedded_payload[126] = (unsigned char)0;
  wrb.payload.embedded_payload[127] = (unsigned char)0;
  wrb.payload.embedded_payload[128] = (unsigned char)0;
  wrb.payload.embedded_payload[129] = (unsigned char)0;
  wrb.payload.embedded_payload[130] = (unsigned char)0;
  wrb.payload.embedded_payload[131] = (unsigned char)0;
  wrb.payload.embedded_payload[132] = (unsigned char)0;
  wrb.payload.embedded_payload[133] = (unsigned char)0;
  wrb.payload.embedded_payload[134] = (unsigned char)0;
  wrb.payload.embedded_payload[135] = (unsigned char)0;
  wrb.payload.embedded_payload[136] = (unsigned char)0;
  wrb.payload.embedded_payload[137] = (unsigned char)0;
  wrb.payload.embedded_payload[138] = (unsigned char)0;
  wrb.payload.embedded_payload[139] = (unsigned char)0;
  wrb.payload.embedded_payload[140] = (unsigned char)0;
  wrb.payload.embedded_payload[141] = (unsigned char)0;
  wrb.payload.embedded_payload[142] = (unsigned char)0;
  wrb.payload.embedded_payload[143] = (unsigned char)0;
  wrb.payload.embedded_payload[144] = (unsigned char)0;
  wrb.payload.embedded_payload[145] = (unsigned char)0;
  wrb.payload.embedded_payload[146] = (unsigned char)0;
  wrb.payload.embedded_payload[147] = (unsigned char)0;
  wrb.payload.embedded_payload[148] = (unsigned char)0;
  wrb.payload.embedded_payload[149] = (unsigned char)0;
  wrb.payload.embedded_payload[150] = (unsigned char)0;
  wrb.payload.embedded_payload[151] = (unsigned char)0;
  wrb.payload.embedded_payload[152] = (unsigned char)0;
  wrb.payload.embedded_payload[153] = (unsigned char)0;
  wrb.payload.embedded_payload[154] = (unsigned char)0;
  wrb.payload.embedded_payload[155] = (unsigned char)0;
  wrb.payload.embedded_payload[156] = (unsigned char)0;
  wrb.payload.embedded_payload[157] = (unsigned char)0;
  wrb.payload.embedded_payload[158] = (unsigned char)0;
  wrb.payload.embedded_payload[159] = (unsigned char)0;
  wrb.payload.embedded_payload[160] = (unsigned char)0;
  wrb.payload.embedded_payload[161] = (unsigned char)0;
  wrb.payload.embedded_payload[162] = (unsigned char)0;
  wrb.payload.embedded_payload[163] = (unsigned char)0;
  wrb.payload.embedded_payload[164] = (unsigned char)0;
  wrb.payload.embedded_payload[165] = (unsigned char)0;
  wrb.payload.embedded_payload[166] = (unsigned char)0;
  wrb.payload.embedded_payload[167] = (unsigned char)0;
  wrb.payload.embedded_payload[168] = (unsigned char)0;
  wrb.payload.embedded_payload[169] = (unsigned char)0;
  wrb.payload.embedded_payload[170] = (unsigned char)0;
  wrb.payload.embedded_payload[171] = (unsigned char)0;
  wrb.payload.embedded_payload[172] = (unsigned char)0;
  wrb.payload.embedded_payload[173] = (unsigned char)0;
  wrb.payload.embedded_payload[174] = (unsigned char)0;
  wrb.payload.embedded_payload[175] = (unsigned char)0;
  wrb.payload.embedded_payload[176] = (unsigned char)0;
  wrb.payload.embedded_payload[177] = (unsigned char)0;
  wrb.payload.embedded_payload[178] = (unsigned char)0;
  wrb.payload.embedded_payload[179] = (unsigned char)0;
  wrb.payload.embedded_payload[180] = (unsigned char)0;
  wrb.payload.embedded_payload[181] = (unsigned char)0;
  wrb.payload.embedded_payload[182] = (unsigned char)0;
  wrb.payload.embedded_payload[183] = (unsigned char)0;
  wrb.payload.embedded_payload[184] = (unsigned char)0;
  wrb.payload.embedded_payload[185] = (unsigned char)0;
  wrb.payload.embedded_payload[186] = (unsigned char)0;
  wrb.payload.embedded_payload[187] = (unsigned char)0;
  wrb.payload.embedded_payload[188] = (unsigned char)0;
  wrb.payload.embedded_payload[189] = (unsigned char)0;
  wrb.payload.embedded_payload[190] = (unsigned char)0;
  wrb.payload.embedded_payload[191] = (unsigned char)0;
  wrb.payload.embedded_payload[192] = (unsigned char)0;
  wrb.payload.embedded_payload[193] = (unsigned char)0;
  wrb.payload.embedded_payload[194] = (unsigned char)0;
  wrb.payload.embedded_payload[195] = (unsigned char)0;
  wrb.payload.embedded_payload[196] = (unsigned char)0;
  wrb.payload.embedded_payload[197] = (unsigned char)0;
  wrb.payload.embedded_payload[198] = (unsigned char)0;
  wrb.payload.embedded_payload[199] = (unsigned char)0;
  wrb.payload.embedded_payload[200] = (unsigned char)0;
  wrb.payload.embedded_payload[201] = (unsigned char)0;
  wrb.payload.embedded_payload[202] = (unsigned char)0;
  wrb.payload.embedded_payload[203] = (unsigned char)0;
  wrb.payload.embedded_payload[204] = (unsigned char)0;
  wrb.payload.embedded_payload[205] = (unsigned char)0;
  wrb.payload.embedded_payload[206] = (unsigned char)0;
  wrb.payload.embedded_payload[207] = (unsigned char)0;
  wrb.payload.embedded_payload[208] = (unsigned char)0;
  wrb.payload.embedded_payload[209] = (unsigned char)0;
  wrb.payload.embedded_payload[210] = (unsigned char)0;
  wrb.payload.embedded_payload[211] = (unsigned char)0;
  wrb.payload.embedded_payload[212] = (unsigned char)0;
  wrb.payload.embedded_payload[213] = (unsigned char)0;
  wrb.payload.embedded_payload[214] = (unsigned char)0;
  wrb.payload.embedded_payload[215] = (unsigned char)0;
  wrb.payload.embedded_payload[216] = (unsigned char)0;
  wrb.payload.embedded_payload[217] = (unsigned char)0;
  wrb.payload.embedded_payload[218] = (unsigned char)0;
  wrb.payload.embedded_payload[219] = (unsigned char)0;
  wrb.payload.embedded_payload[220] = (unsigned char)0;
  wrb.payload.embedded_payload[221] = (unsigned char)0;
  wrb.payload.embedded_payload[222] = (unsigned char)0;
  wrb.payload.embedded_payload[223] = (unsigned char)0;
  wrb.payload.embedded_payload[224] = (unsigned char)0;
  wrb.payload.embedded_payload[225] = (unsigned char)0;
  wrb.payload.embedded_payload[226] = (unsigned char)0;
  wrb.payload.embedded_payload[227] = (unsigned char)0;
  wrb.payload.embedded_payload[228] = (unsigned char)0;
  wrb.payload.embedded_payload[229] = (unsigned char)0;
  wrb.payload.embedded_payload[230] = (unsigned char)0;
  wrb.payload.embedded_payload[231] = (unsigned char)0;
  wrb.payload.embedded_payload[232] = (unsigned char)0;
  wrb.payload.embedded_payload[233] = (unsigned char)0;
  wrb.payload.embedded_payload[234] = (unsigned char)0;
  wrb.payload.embedded_payload[235] = (unsigned char)0;
  tmp = embedded_payload(& wrb);
  req = (struct be_cmd_req_if_create *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 50, 40, & wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  req->capability_flags = cap_flags;
  req->enable_flags = en_flags;
  req->pmac_invalid = 1U;
  status = be_cmd_notify_wait(adapter, & wrb);
  if (status == 0) {
    tmp___0 = embedded_payload(& wrb);
    resp = (struct be_cmd_resp_if_create *)tmp___0;
    *if_handle = resp->interface_id;
    if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) && (unsigned int )adapter->virtfn != 0U) {
      *(adapter->pmac_id) = resp->pmac_id;
    } else {
    }
  } else {
  }
  return (status);
}
}
int be_cmd_if_destroy(struct be_adapter *adapter , int interface_id , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_if_destroy *req ;
  int status ;
  void *tmp ;
  {
  if (interface_id == -1) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_if_destroy *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 51, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  req->interface_id = (unsigned int )interface_id;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *hdr ;
  int status ;
  {
  status = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  hdr = (struct be_cmd_req_hdr *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(hdr, 3, 4, (int )nonemb_cmd->size, wrb, nonemb_cmd);
  if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
    hdr->version = 0U;
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U)) {
    hdr->version = 1U;
  } else {
    hdr->version = 2U;
  }
  be_mcc_notify(adapter);
  adapter->stats_cmd_sent = 1;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int lancer_cmd_get_pport_stats(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_pport_stats *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  {
  status = 0;
  tmp = be_cmd_allowed(adapter, 18, 3);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct lancer_cmd_req_pport_stats *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 18, (int )nonemb_cmd->size, wrb, nonemb_cmd);
  req->cmd_params.params.pport_num = (unsigned short )adapter->hba_port_num;
  req->cmd_params.params.reset_stats = 0U;
  be_mcc_notify(adapter);
  adapter->stats_cmd_sent = 1;
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int be_mac_to_link_speed(int mac_speed )
{
  {
  switch (mac_speed) {
  case 0: ;
  return (0);
  case 1: ;
  return (10);
  case 2: ;
  return (100);
  case 3: ;
  return (1000);
  case 4: ;
  return (10000);
  case 5: ;
  return (20000);
  case 6: ;
  return (25000);
  case 7: ;
  return (40000);
  }
  return (0);
}
}
int be_cmd_link_status_query(struct be_adapter *adapter , u16 *link_speed , u8 *link_status ,
                             u32 dom )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_link_status *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_link_status *resp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  if ((unsigned long )link_status != (unsigned long )((u8 *)0U)) {
    *link_status = 0U;
  } else {
  }
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_link_status *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 5, 20, wrb, (struct be_dma_mem *)0);
  if ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U) {
    req->hdr.version = 1U;
  } else {
  }
  req->hdr.domain = (u8 )dom;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_link_status *)tmp___0;
    if ((unsigned long )link_speed != (unsigned long )((u16 *)0U)) {
      if ((unsigned int )resp->link_speed != 0U) {
        *link_speed = (unsigned int )resp->link_speed * 10U;
      } else {
        tmp___1 = be_mac_to_link_speed((int )resp->mac_speed);
        *link_speed = (u16 )tmp___1;
      }
      if ((unsigned int )resp->logical_link_status == 0U) {
        *link_speed = 0U;
      } else {
      }
    } else {
    }
    if ((unsigned long )link_status != (unsigned long )((u8 *)0U)) {
      *link_status = resp->logical_link_status;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_die_temperature(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_cntl_addnl_attribs *req ;
  int status ;
  void *tmp ;
  {
  status = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_cntl_addnl_attribs *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 121, 24, wrb, (struct be_dma_mem *)0);
  be_mcc_notify(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_reg_len(struct be_adapter *adapter , u32 *log_size )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fat *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fat *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fat *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 68, 36, wrb, (struct be_dma_mem *)0);
  req->fat_operation = 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fat *)tmp___0;
    if ((unsigned long )log_size != (unsigned long )((u32 *)0U) && resp->log_size != 0U) {
      *log_size = resp->log_size - 4U;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_regs(struct be_adapter *adapter , u32 buf_len , void *buf )
{
  struct be_dma_mem get_fat_cmd ;
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fat *req ;
  u32 offset ;
  u32 total_size ;
  u32 buf_size ;
  u32 log_offset ;
  u32 payload_len ;
  int status ;
  u32 _min1 ;
  unsigned int _min2 ;
  struct be_cmd_resp_get_fat *resp ;
  {
  offset = 0U;
  log_offset = 4U;
  status = 0;
  if (buf_len == 0U) {
    return (-5);
  } else {
  }
  total_size = buf_len;
  get_fat_cmd.size = 61476U;
  get_fat_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )get_fat_cmd.size,
                                       & get_fat_cmd.dma, 32U);
  if ((unsigned long )get_fat_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure while reading FAT data\n");
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  goto ldv_57680;
  ldv_57679:
  _min1 = total_size;
  _min2 = 61440U;
  buf_size = _min1 < _min2 ? _min1 : _min2;
  total_size = total_size - buf_size;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_fat *)get_fat_cmd.va;
  payload_len = buf_size + 36U;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 68, (int )payload_len, wrb, & get_fat_cmd);
  req->fat_operation = 0U;
  req->read_log_offset = log_offset;
  req->read_log_length = buf_size;
  req->data_buffer_size = buf_size;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_fat *)get_fat_cmd.va;
    memcpy(buf + (unsigned long )offset, (void const *)(& resp->data_buffer),
             (size_t )resp->read_log_length);
  } else {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "FAT Table Retrieve error\n");
    goto err;
  }
  offset = offset + buf_size;
  log_offset = log_offset + buf_size;
  ldv_57680: ;
  if (total_size != 0U) {
    goto ldv_57679;
  } else {
  }
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )get_fat_cmd.size, get_fat_cmd.va,
                 get_fat_cmd.dma, (struct dma_attrs *)0);
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_fw_ver(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fw_version *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fw_version *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fw_version *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 35, 80, wrb, (struct be_dma_mem *)0);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fw_version *)tmp___0;
    strlcpy((char *)(& adapter->fw_ver), (char const *)(& resp->firmware_version_string),
            32UL);
    strlcpy((char *)(& adapter->fw_on_flash), (char const *)(& resp->fw_on_flash_version_string),
            32UL);
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int __be_cmd_modify_eqd(struct be_adapter *adapter , struct be_set_eqd *set_eqd ,
                               int num )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_modify_eq_delay *req ;
  int status ;
  int i ;
  void *tmp ;
  {
  status = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_modify_eq_delay *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 41, 404, wrb, (struct be_dma_mem *)0);
  req->num_eq = (unsigned int )num;
  i = 0;
  goto ldv_57701;
  ldv_57700:
  req->set_eqd[i].eq_id = (set_eqd + (unsigned long )i)->eq_id;
  req->set_eqd[i].phase = 0U;
  req->set_eqd[i].delay_multiplier = (set_eqd + (unsigned long )i)->delay_multiplier;
  i = i + 1;
  ldv_57701: ;
  if (i < num) {
    goto ldv_57700;
  } else {
  }
  be_mcc_notify(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_modify_eqd(struct be_adapter *adapter , struct be_set_eqd *set_eqd , int num )
{
  int num_eqs ;
  int i ;
  int _min1 ;
  int _min2 ;
  {
  i = 0;
  goto ldv_57714;
  ldv_57713:
  _min1 = num;
  _min2 = 8;
  num_eqs = _min1 < _min2 ? _min1 : _min2;
  __be_cmd_modify_eqd(adapter, set_eqd + (unsigned long )i, num_eqs);
  i = i + num_eqs;
  num = num - num_eqs;
  ldv_57714: ;
  if (num != 0) {
    goto ldv_57713;
  } else {
  }
  return (0);
}
}
int be_cmd_vlan_config(struct be_adapter *adapter , u32 if_id , u16 *vtag_array ,
                       u32 num , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_vlan_config *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_vlan_config *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 4, 148, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  req->interface_id = (u8 )if_id;
  req->untagged = (adapter->res.if_cap_flags & 32U) != 0U;
  req->num_vlan = (u8 )num;
  memcpy((void *)(& req->normal_vlan), (void const *)vtag_array, (unsigned long )req->num_vlan * 2UL);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int __be_cmd_rx_filter(struct be_adapter *adapter , u32 flags , u32 value )
{
  struct be_mcc_wrb *wrb ;
  struct be_dma_mem *mem ;
  struct be_cmd_req_rx_filter *req ;
  int status ;
  struct netdev_hw_addr *ha ;
  int i ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  mem = & adapter->rx_filter;
  req = (struct be_cmd_req_rx_filter *)mem->va;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  memset((void *)req, 0, 424UL);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 34, 424, wrb, mem);
  req->if_id = (unsigned int )adapter->if_handle;
  req->if_flags_mask = flags;
  req->if_flags = value == 1U ? req->if_flags_mask : 0U;
  if ((flags & 4096U) != 0U) {
    i = 0;
    req->if_flags_mask = req->if_flags_mask | (adapter->res.if_cap_flags & 512U);
    req->mcast_num = (unsigned int )(adapter->netdev)->mc.count;
    __mptr = (struct list_head const *)(adapter->netdev)->mc.list.next;
    ha = (struct netdev_hw_addr *)__mptr;
    goto ldv_57744;
    ldv_57743:
    tmp = i;
    i = i + 1;
    memcpy((void *)(& req->mcast_mac[tmp].byte), (void const *)(& ha->addr), 6UL);
    __mptr___0 = (struct list_head const *)ha->list.next;
    ha = (struct netdev_hw_addr *)__mptr___0;
    ldv_57744: ;
    if ((unsigned long )(& ha->list) != (unsigned long )(& (adapter->netdev)->mc.list)) {
      goto ldv_57743;
    } else {
    }
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_rx_filter(struct be_adapter *adapter , u32 flags , u32 value )
{
  struct device *dev ;
  int tmp ;
  {
  dev = & (adapter->pdev)->dev;
  if ((adapter->res.if_cap_flags & flags) != flags) {
    dev_warn((struct device const *)dev, "Cannot set rx filter flags 0x%x\n", flags);
    dev_warn((struct device const *)dev, "Interface is capable of 0x%x flags only\n",
             adapter->res.if_cap_flags);
  } else {
  }
  flags = adapter->res.if_cap_flags & flags;
  tmp = __be_cmd_rx_filter(adapter, flags, value);
  return (tmp);
}
}
int be_cmd_set_flow_control(struct be_adapter *adapter , u32 tx_fc , u32 rx_fc )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_flow_control *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  tmp = be_cmd_allowed(adapter, 36, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___1 = embedded_payload(wrb);
  req = (struct be_cmd_req_set_flow_control *)tmp___1;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 36, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.version = 1U;
  req->tx_flow_control = (unsigned short )tx_fc;
  req->rx_flow_control = (unsigned short )rx_fc;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  if (status > 0 && ((unsigned int )status & 65535U) == 68U) {
    return (-95);
  } else {
  }
  return (status);
}
}
int be_cmd_get_flow_control(struct be_adapter *adapter , u32 *tx_fc , u32 *rx_fc )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_flow_control *req ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  struct be_cmd_resp_get_flow_control *resp ;
  void *tmp___2 ;
  {
  tmp = be_cmd_allowed(adapter, 37, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___1 = embedded_payload(wrb);
  req = (struct be_cmd_req_get_flow_control *)tmp___1;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 37, 20, wrb, (struct be_dma_mem *)0);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___2 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_flow_control *)tmp___2;
    *tx_fc = (u32 )resp->tx_flow_control;
    *rx_fc = (u32 )resp->rx_flow_control;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_query_fw_cfg(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_query_fw_cfg *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_query_fw_cfg *resp ;
  void *tmp___1 ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_query_fw_cfg *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 58, 140, wrb, (struct be_dma_mem *)0);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_query_fw_cfg *)tmp___1;
    adapter->port_num = resp->phys_port;
    adapter->function_mode = resp->function_mode;
    adapter->function_caps = resp->function_caps;
    adapter->asic_rev = (unsigned int )((u16 )resp->asic_revision) & 255U;
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "FW config: function_mode=0x%x, function_caps=0x%x\n",
              adapter->function_mode, adapter->function_caps);
  } else {
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_reset_function(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    iowrite32(134217728U, (void *)adapter->db + 1032U);
    status = lancer_wait_ready(adapter);
    if (status != 0) {
      dev_err((struct device const *)(& (adapter->pdev)->dev), "Adapter in non recoverable error\n");
    } else {
    }
    return (status);
  } else {
  }
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_hdr *)tmp___0;
  be_wrb_cmd_hdr_prepare(req, 1, 61, 16, wrb, (struct be_dma_mem *)0);
  status = be_mbox_notify_wait(adapter);
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_rss_config(struct be_adapter *adapter , u8 *rsstable , u32 rss_hash_opts ,
                      u16 table_size , u8 const *rss_hkey )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_rss_config *req ;
  int status ;
  void *tmp ;
  int tmp___0 ;
  {
  if ((adapter->res.if_cap_flags & 4U) == 0U) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_rss_config *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 1, 196, wrb, (struct be_dma_mem *)0);
  req->if_id = (unsigned int )adapter->if_handle;
  req->enable_rss = (unsigned short )rss_hash_opts;
  tmp___0 = fls((int )table_size);
  req->cpu_table_size_log2 = (unsigned int )((unsigned short )tmp___0) - 1U;
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    req->hdr.version = 1U;
  } else {
  }
  memcpy((void *)(& req->cpu_table), (void const *)rsstable, (size_t )table_size);
  memcpy((void *)(& req->hash), (void const *)rss_hkey, 40UL);
  swap_dws((void *)(& req->hash), 40);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_beacon_state(struct be_adapter *adapter , u8 port_num , u8 bcn , u8 sts ,
                            u8 state )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_enable_disable_beacon *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_enable_disable_beacon *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 69, 20, wrb, (struct be_dma_mem *)0);
  req->port_num = port_num;
  req->beacon_state = state;
  req->beacon_duration = bcn;
  req->status_duration = sts;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_beacon_state(struct be_adapter *adapter , u8 port_num , u32 *state )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_beacon_state *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_beacon_state *resp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_beacon_state *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 70, 20, wrb, (struct be_dma_mem *)0);
  req->port_num = port_num;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_beacon_state *)tmp___0;
    *state = (u32 )resp->beacon_state;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_read_port_transceiver_data(struct be_adapter *adapter , u8 page_num , u8 *data )
{
  struct be_dma_mem cmd ;
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_port_type *req ;
  int status ;
  struct be_cmd_resp_port_type *resp ;
  {
  if ((unsigned int )page_num > 162U) {
    return (-22);
  } else {
  }
  cmd.size = 280U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failed\n");
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_port_type *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 73, (int )cmd.size, wrb, & cmd);
  req->port = (unsigned int )adapter->hba_port_num;
  req->page_num = (unsigned int )page_num;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_port_type *)cmd.va;
    memcpy((void *)data, (void const *)(& resp->page_data), 256UL);
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  return (status);
}
}
int lancer_cmd_write_object(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                            u32 data_size , u32 data_offset , char const *obj_name ,
                            u32 *data_written , u8 *change_status , u8 *addn_status )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_write_object *req ;
  struct lancer_cmd_resp_write_object *resp ;
  void *ctxt ;
  int status ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  void *tmp___5 ;
  {
  ctxt = (void *)0;
  spin_lock_bh(& adapter->mcc_lock);
  adapter->flash_status = 0U;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct lancer_cmd_req_write_object *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 172, 144, wrb, (struct be_dma_mem *)0);
  ctxt = (void *)(& req->context);
  tmp___0 = amap_mask(24U);
  amap_set(ctxt, 0U, tmp___0, 0U, data_size);
  if (data_size == 0U) {
    tmp___1 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___1, 31U, 1U);
  } else {
    tmp___2 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___2, 31U, 0U);
  }
  swap_dws(ctxt, 4);
  req->write_offset = data_offset;
  strlcpy((char *)(& req->object_name), obj_name, 104UL);
  req->descriptor_count = 1U;
  req->buf_len = data_size;
  req->addr_low = (unsigned int )cmd->dma + 144U;
  req->addr_high = (unsigned int )((cmd->dma + 144ULL) >> 32ULL);
  be_mcc_notify(adapter);
  spin_unlock_bh(& adapter->mcc_lock);
  tmp___3 = msecs_to_jiffies(60000U);
  tmp___4 = wait_for_completion_timeout(& adapter->et_cmd_compl, tmp___3);
  if (tmp___4 == 0UL) {
    status = -110;
  } else {
    status = (int )adapter->flash_status;
  }
  tmp___5 = embedded_payload(wrb);
  resp = (struct lancer_cmd_resp_write_object *)tmp___5;
  if (status == 0) {
    *data_written = resp->actual_write_len;
    *change_status = resp->change_status;
  } else {
    *addn_status = resp->additional_status;
  }
  return (status);
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_query_cable_type(struct be_adapter *adapter )
{
  u8 page_data[256U] ;
  int status ;
  {
  status = be_cmd_read_port_transceiver_data(adapter, 160, (u8 *)(& page_data));
  if (status == 0) {
    switch ((int )adapter->phy.interface_type) {
    case 10:
    adapter->phy.cable_type = page_data[131];
    goto ldv_57849;
    case 3:
    adapter->phy.cable_type = page_data[8];
    goto ldv_57849;
    default:
    adapter->phy.cable_type = 0U;
    goto ldv_57849;
    }
    ldv_57849: ;
  } else {
  }
  return (status);
}
}
int be_cmd_query_sfp_info(struct be_adapter *adapter )
{
  u8 page_data[256U] ;
  int status ;
  {
  status = be_cmd_read_port_transceiver_data(adapter, 160, (u8 *)(& page_data));
  if (status == 0) {
    strlcpy((char *)(& adapter->phy.vendor_name), (char const *)(& page_data) + 20U,
            16UL);
    strlcpy((char *)(& adapter->phy.vendor_pn), (char const *)(& page_data) + 40U,
            16UL);
  } else {
  }
  return (status);
}
}
int lancer_cmd_delete_object(struct be_adapter *adapter , char const *obj_name )
{
  struct lancer_cmd_req_delete_object *req ;
  struct be_mcc_wrb *wrb ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct lancer_cmd_req_delete_object *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 174, 128, wrb, (struct be_dma_mem *)0);
  strlcpy((char *)(& req->object_name), obj_name, 104UL);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int lancer_cmd_read_object(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 data_size ,
                           u32 data_offset , char const *obj_name , u32 *data_read ,
                           u32 *eof , u8 *addn_status )
{
  struct be_mcc_wrb *wrb ;
  struct lancer_cmd_req_read_object *req ;
  struct lancer_cmd_resp_read_object *resp ;
  int status ;
  void *tmp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct lancer_cmd_req_read_object *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 171, 144, wrb, (struct be_dma_mem *)0);
  req->desired_read_len = data_size;
  req->read_offset = data_offset;
  strcpy((char *)(& req->object_name), obj_name);
  req->descriptor_count = 1U;
  req->buf_len = data_size;
  req->addr_low = (unsigned int )cmd->dma;
  req->addr_high = (unsigned int )(cmd->dma >> 32ULL);
  status = be_mcc_notify_wait(adapter);
  tmp___0 = embedded_payload(wrb);
  resp = (struct lancer_cmd_resp_read_object *)tmp___0;
  if (status == 0) {
    *data_read = resp->actual_read_len;
    *eof = resp->eof;
  } else {
    *addn_status = resp->additional_status;
  }
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_write_flashrom(struct be_adapter *adapter , struct be_dma_mem *cmd , u32 flash_type ,
                          u32 flash_opcode , u32 img_offset , u32 buf_size )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_write_flashrom *req ;
  int status ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  adapter->flash_status = 0U;
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err_unlock;
  } else {
  }
  req = (struct be_cmd_write_flashrom *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 7, (int )cmd->size, wrb, cmd);
  req->params.op_type = flash_type;
  if (flash_type == 7U) {
    req->params.offset = img_offset;
  } else {
  }
  req->params.op_code = flash_opcode;
  req->params.data_buf_size = buf_size;
  be_mcc_notify(adapter);
  spin_unlock_bh(& adapter->mcc_lock);
  tmp = msecs_to_jiffies(40000U);
  tmp___0 = wait_for_completion_timeout(& adapter->et_cmd_compl, tmp);
  if (tmp___0 == 0UL) {
    status = -110;
  } else {
    status = (int )adapter->flash_status;
  }
  return (status);
  err_unlock:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_flash_crc(struct be_adapter *adapter , u8 *flashed_crc , u16 img_optype ,
                         u32 img_offset , u32 crc_offset )
{
  struct be_cmd_read_flash_crc *req ;
  struct be_mcc_wrb *wrb ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_read_flash_crc *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 6, 40, wrb, (struct be_dma_mem *)0);
  req->params.op_type = (unsigned int )img_optype;
  if ((unsigned int )img_optype == 7U) {
    req->params.offset = img_offset + crc_offset;
  } else {
    req->params.offset = crc_offset;
  }
  req->params.op_code = 4U;
  req->params.data_buf_size = 4U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    memcpy((void *)flashed_crc, (void const *)(& req->crc), 4UL);
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_enable_magic_wol(struct be_adapter *adapter , u8 *mac , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_acpi_wol_magic_config *req ;
  int status ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_acpi_wol_magic_config *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 12, 604, wrb, nonemb_cmd);
  memcpy((void *)(& req->magic_mac), (void const *)mac, 6UL);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_loopback(struct be_adapter *adapter , u8 port_num , u8 loopback_type ,
                        u8 enable )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_lmode *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_lmode *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 19, 20, wrb, (struct be_dma_mem *)0);
  req->src_port = port_num;
  req->dest_port = port_num;
  req->loopback_type = loopback_type;
  req->loopback_state = enable;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_loopback_test(struct be_adapter *adapter , u32 port_num , u32 loopback_type ,
                         u32 pkt_size , u32 num_pkts , u64 pattern )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_loopback_test *req ;
  struct be_cmd_resp_loopback_test *resp ;
  int status ;
  void *tmp ;
  void *tmp___0 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_loopback_test *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 18, 48, wrb, (struct be_dma_mem *)0);
  req->hdr.timeout = 15U;
  req->pattern = pattern;
  req->src_port = port_num;
  req->dest_port = port_num;
  req->pkt_size = pkt_size;
  req->num_pkts = num_pkts;
  req->loopback_type = loopback_type;
  be_mcc_notify(adapter);
  spin_unlock_bh(& adapter->mcc_lock);
  wait_for_completion(& adapter->et_cmd_compl);
  tmp___0 = embedded_payload(wrb);
  resp = (struct be_cmd_resp_loopback_test *)tmp___0;
  status = (int )resp->status;
  return (status);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_ddr_dma_test(struct be_adapter *adapter , u64 pattern , u32 byte_cnt ,
                        struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_ddrdma_test *req ;
  int status ;
  int i ;
  int j ;
  struct be_cmd_resp_ddrdma_test *resp ;
  int tmp ;
  {
  j = 0;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_ddrdma_test *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 11, 17, (int )cmd->size, wrb, cmd);
  req->pattern = pattern;
  req->byte_count = byte_cnt;
  i = 0;
  goto ldv_57948;
  ldv_57947:
  req->snd_buff[i] = (unsigned char )(pattern >> j * 8);
  j = j + 1;
  if (j > 7) {
    j = 0;
  } else {
  }
  i = i + 1;
  ldv_57948: ;
  if ((u32 )i < byte_cnt) {
    goto ldv_57947;
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_ddrdma_test *)cmd->va;
    tmp = memcmp((void const *)(& resp->rcv_buff), (void const *)(& req->snd_buff),
                 (size_t )byte_cnt);
    if (tmp != 0 || resp->snd_err != 0U) {
      status = -1;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_seeprom_data(struct be_adapter *adapter , struct be_dma_mem *nonemb_cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_seeprom_read *req ;
  int status ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_seeprom_read *)nonemb_cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 30, 1040, wrb, nonemb_cmd);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_phy_info(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_phy_info *req ;
  struct be_dma_mem cmd ;
  int status ;
  bool tmp ;
  int tmp___0 ;
  struct be_phy_info *resp_phy_info ;
  {
  tmp = be_cmd_allowed(adapter, 102, 1);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  cmd.size = 40U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory alloc failure\n");
    status = -12;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_phy_info *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 102, 40, wrb, & cmd);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp_phy_info = (struct be_phy_info *)cmd.va + 16U;
    adapter->phy.phy_type = resp_phy_info->phy_type;
    adapter->phy.interface_type = resp_phy_info->interface_type;
    adapter->phy.auto_speeds_supported = resp_phy_info->auto_speeds_supported;
    adapter->phy.fixed_speeds_supported = resp_phy_info->fixed_speeds_supported;
    adapter->phy.misc_params = resp_phy_info->misc_params;
    if ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U) {
      adapter->phy.fixed_speeds_supported = 12U;
    } else {
    }
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int be_cmd_set_qos(struct be_adapter *adapter , u32 bps , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_qos *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_qos *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 28, 52, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  req->valid_bits = 1U;
  req->max_bps_nic = bps;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_cntl_attributes(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_cntl_attribs *req ;
  int status ;
  int payload_len ;
  unsigned long _max1 ;
  unsigned long _max2 ;
  struct mgmt_controller_attrib *attribs ;
  struct be_dma_mem attribs_cmd ;
  int tmp ;
  {
  _max1 = 16UL;
  _max2 = 556UL;
  payload_len = (int )(_max1 > _max2 ? _max1 : _max2);
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& attribs_cmd), 0, 24UL);
  attribs_cmd.size = 556U;
  attribs_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )attribs_cmd.size,
                                       & attribs_cmd.dma, 32U);
  if ((unsigned long )attribs_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_cntl_attribs *)attribs_cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 32, payload_len, wrb, & attribs_cmd);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    attribs = (struct mgmt_controller_attrib *)attribs_cmd.va + 16U;
    adapter->hba_port_num = attribs->hba_attribs.phy_port;
  } else {
  }
  err:
  mutex_unlock(& adapter->mbox_lock);
  if ((unsigned long )attribs_cmd.va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )attribs_cmd.size, attribs_cmd.va,
                   attribs_cmd.dma, (struct dma_attrs *)0);
  } else {
  }
  return (status);
}
}
int be_cmd_req_native_mode(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_func_cap *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_set_func_cap *resp ;
  void *tmp___1 ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_set_func_cap *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 103, 236, wrb, (struct be_dma_mem *)0);
  req->valid_cap_flags = 6U;
  req->cap_flags = 4U;
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_set_func_cap *)tmp___1;
    adapter->be3_native = (resp->cap_flags & 4U) != 0U;
    if (! adapter->be3_native) {
      dev_warn((struct device const *)(& (adapter->pdev)->dev), "adapter not in advanced mode\n");
    } else {
    }
  } else {
  }
  err:
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_get_fn_privileges(struct be_adapter *adapter , u32 *privilege , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_fn_privileges *req ;
  int status ;
  void *tmp ;
  struct be_cmd_resp_get_fn_privileges *resp ;
  void *tmp___0 ;
  bool tmp___1 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_fn_privileges *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 170, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___0 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_fn_privileges *)tmp___0;
    *privilege = resp->privilege_mask;
    if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
      tmp___1 = be_is_mc(adapter);
      if ((int )tmp___1) {
        if ((unsigned int )adapter->virtfn == 0U) {
          *privilege = 1792U;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_fn_privileges(struct be_adapter *adapter , u32 privileges , u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_fn_privileges *req ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_fn_privileges *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 100, 24, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    req->privileges_lancer = privileges;
  } else {
    req->privileges = privileges;
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_mac_from_list(struct be_adapter *adapter , u8 *mac , bool *pmac_id_valid ,
                             u32 *pmac_id , u32 if_handle , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_mac_list *req ;
  int status ;
  int mac_count ;
  struct be_dma_mem get_mac_list_cmd ;
  int i ;
  struct be_cmd_resp_get_mac_list *resp ;
  struct get_list_macaddr *mac_entry ;
  u16 mac_addr_size ;
  u32 mac_id ;
  {
  memset((void *)(& get_mac_list_cmd), 0, 24UL);
  get_mac_list_cmd.size = 548U;
  get_mac_list_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )get_mac_list_cmd.size,
                                            & get_mac_list_cmd.dma, 32U);
  if ((unsigned long )get_mac_list_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure during GET_MAC_LIST\n");
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto out;
  } else {
  }
  req = (struct be_cmd_req_get_mac_list *)get_mac_list_cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 147, (int )get_mac_list_cmd.size, wrb, & get_mac_list_cmd);
  req->hdr.domain = domain;
  req->mac_type = 1U;
  if ((int )*pmac_id_valid) {
    req->mac_id = *pmac_id;
    req->iface_id = (unsigned short )if_handle;
    req->perm_override = 0U;
  } else {
    req->perm_override = 1U;
  }
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_mac_list *)get_mac_list_cmd.va;
    if ((int )*pmac_id_valid) {
      memcpy((void *)mac, (void const *)(& resp->macid_macaddr.mac_addr_id.macaddr),
               6UL);
      goto out;
    } else {
    }
    mac_count = (int )resp->true_mac_count + (int )resp->pseudo_mac_count;
    i = 0;
    goto ldv_58038;
    ldv_58037:
    mac_entry = (struct get_list_macaddr *)(& resp->macaddr_list) + (unsigned long )i;
    mac_addr_size = mac_entry->mac_addr_size;
    if ((unsigned int )mac_addr_size == 4U) {
      *pmac_id_valid = 1;
      mac_id = mac_entry->mac_addr_id.s_mac_id.mac_id;
      *pmac_id = mac_id;
      goto out;
    } else {
    }
    i = i + 1;
    ldv_58038: ;
    if (i < mac_count) {
      goto ldv_58037;
    } else {
    }
    *pmac_id_valid = 0;
    memcpy((void *)mac, (void const *)(& resp->macaddr_list[0].mac_addr_id.macaddr),
             6UL);
  } else {
  }
  out:
  spin_unlock_bh(& adapter->mcc_lock);
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )get_mac_list_cmd.size, get_mac_list_cmd.va,
                 get_mac_list_cmd.dma, (struct dma_attrs *)0);
  return (status);
}
}
int be_cmd_get_active_mac(struct be_adapter *adapter , u32 curr_pmac_id , u8 *mac ,
                          u32 if_handle , bool active , u32 domain )
{
  int tmp ;
  int tmp___0 ;
  {
  if (! active) {
    be_cmd_get_mac_from_list(adapter, mac, & active, & curr_pmac_id, if_handle, (int )((u8 )domain));
  } else {
  }
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    tmp = be_cmd_mac_addr_query(adapter, mac, 0, if_handle, curr_pmac_id);
    return (tmp);
  } else {
    tmp___0 = be_cmd_get_mac_from_list(adapter, mac, & active, & curr_pmac_id, if_handle,
                                       (int )((u8 )domain));
    return (tmp___0);
  }
}
}
int be_cmd_get_perm_mac(struct be_adapter *adapter , u8 *mac )
{
  int status ;
  bool pmac_valid ;
  {
  pmac_valid = 0;
  eth_zero_addr(mac);
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    if ((unsigned int )adapter->virtfn == 0U) {
      status = be_cmd_mac_addr_query(adapter, mac, 1, 0U, 0U);
    } else {
      status = be_cmd_mac_addr_query(adapter, mac, 0, (u32 )adapter->if_handle, 0U);
    }
  } else {
    status = be_cmd_get_mac_from_list(adapter, mac, & pmac_valid, (u32 *)0U, (u32 )adapter->if_handle,
                                      0);
  }
  return (status);
}
}
int be_cmd_set_mac_list(struct be_adapter *adapter , u8 *mac_array , u8 mac_count ,
                        u32 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_mac_list *req ;
  int status ;
  struct be_dma_mem cmd ;
  {
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 404U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               208U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_set_mac_list *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 148, 404, wrb, & cmd);
  req->hdr.domain = (u8 )domain;
  req->mac_count = mac_count;
  if ((unsigned int )mac_count != 0U) {
    memcpy((void *)(& req->mac), (void const *)mac_array, (size_t )((int )mac_count * 6));
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_mac(struct be_adapter *adapter , u8 *mac , int if_id , u32 dom )
{
  bool active_mac ;
  u8 old_mac[6U] ;
  u32 pmac_id ;
  int status ;
  int tmp ;
  {
  active_mac = 0;
  status = be_cmd_get_mac_from_list(adapter, (u8 *)(& old_mac), & active_mac, & pmac_id,
                                    (u32 )if_id, (int )((u8 )dom));
  if (status == 0 && (int )active_mac) {
    be_cmd_pmac_del(adapter, (u32 )if_id, (int )pmac_id, dom);
  } else {
  }
  tmp = be_cmd_set_mac_list(adapter, mac, (unsigned long )mac != (unsigned long )((u8 *)0U),
                            dom);
  return (tmp);
}
}
int be_cmd_set_hsw_config(struct be_adapter *adapter , u16 pvid , u32 domain , u16 intf_id ,
                          u16 hsw_mode , u8 spoofchk )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_hsw_config *req ;
  void *ctxt ;
  int status ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  u32 tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_hsw_config *)tmp;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 153, 36, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  tmp___0 = amap_mask(16U);
  amap_set(ctxt, 0U, tmp___0, 0U, (u32 )intf_id);
  if ((unsigned int )pvid != 0U) {
    tmp___1 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___1, 30U, 1U);
    tmp___2 = amap_mask(16U);
    amap_set(ctxt, 1U, tmp___2, 16U, (u32 )pvid);
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && (unsigned int )hsw_mode != 0U) {
    tmp___3 = amap_mask(16U);
    amap_set(ctxt, 0U, tmp___3, 0U, (u32 )adapter->hba_port_num);
    tmp___4 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___4, 31U, 1U);
    tmp___5 = amap_mask(3U);
    amap_set(ctxt, 1U, tmp___5, 6U, (u32 )hsw_mode);
  } else {
  }
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && (unsigned int )spoofchk != 0U) {
    tmp___6 = amap_mask(2U);
    amap_set(ctxt, 0U, tmp___6, 24U, (u32 )spoofchk);
    tmp___7 = amap_mask(2U);
    amap_set(ctxt, 1U, tmp___7, 14U, (u32 )spoofchk);
  } else {
  }
  swap_dws((void *)(& req->context), 20);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_get_hsw_config(struct be_adapter *adapter , u16 *pvid , u32 domain , u16 intf_id ,
                          u8 *mode , bool *spoofchk )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_hsw_config *req ;
  void *ctxt ;
  int status ;
  u16 vid ;
  void *tmp ;
  u32 tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  struct be_cmd_resp_get_hsw_config *resp ;
  void *tmp___4 ;
  u32 tmp___5 ;
  u32 tmp___6 ;
  u32 tmp___7 ;
  u32 tmp___8 ;
  u32 tmp___9 ;
  u32 tmp___10 ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_hsw_config *)tmp;
  ctxt = (void *)(& req->context);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 152, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (u8 )domain;
  tmp___0 = amap_mask(16U);
  amap_set(ctxt, 0U, tmp___0, 0U, (u32 )intf_id);
  tmp___1 = amap_mask(1U);
  amap_set(ctxt, 0U, tmp___1, 30U, 1U);
  if ((((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) && (unsigned long )mode != (unsigned long )((u8 *)0U)) {
    tmp___2 = amap_mask(16U);
    amap_set(ctxt, 0U, tmp___2, 0U, (u32 )adapter->hba_port_num);
    tmp___3 = amap_mask(1U);
    amap_set(ctxt, 0U, tmp___3, 31U, 1U);
  } else {
  }
  swap_dws((void *)(& req->context), 4);
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    tmp___4 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_hsw_config *)tmp___4;
    swap_dws((void *)(& resp->context), 16);
    tmp___5 = amap_mask(16U);
    tmp___6 = amap_get((void *)(& resp->context), 0U, tmp___5, 16U);
    vid = (u16 )tmp___6;
    if ((unsigned long )pvid != (unsigned long )((u16 *)0U)) {
      *pvid = vid;
    } else {
    }
    if ((unsigned long )mode != (unsigned long )((u8 *)0U)) {
      tmp___7 = amap_mask(3U);
      tmp___8 = amap_get((void *)(& resp->context), 0U, tmp___7, 6U);
      *mode = (u8 )tmp___8;
    } else {
    }
    if ((unsigned long )spoofchk != (unsigned long )((bool *)0)) {
      tmp___9 = amap_mask(1U);
      tmp___10 = amap_get((void *)(& resp->context), 0U, tmp___9, 14U);
      *spoofchk = tmp___10 != 0U;
    } else {
    }
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static bool be_is_wol_excluded(struct be_adapter *adapter )
{
  struct pci_dev *pdev ;
  {
  pdev = adapter->pdev;
  if ((unsigned int )adapter->virtfn != 0U) {
    return (1);
  } else {
  }
  switch ((int )pdev->subsystem_device) {
  case 58882: ;
  case 58946: ;
  case 58898: ;
  case 58962: ;
  return (1);
  default: ;
  return (0);
  }
}
}
int be_cmd_get_acpi_wol_cap(struct be_adapter *adapter )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_acpi_wol_magic_config_v1 *req ;
  int status ;
  struct be_dma_mem cmd ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  struct be_cmd_resp_acpi_wol_magic_config_v1 *resp ;
  {
  status = 0;
  tmp = be_cmd_allowed(adapter, 12, 3);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-1);
  } else {
  }
  tmp___1 = be_is_wol_excluded(adapter);
  if ((int )tmp___1) {
    return (status);
  } else {
  }
  tmp___2 = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp___2 != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 1204U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_acpi_wol_magic_config_v1 *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 3, 12, 1204, wrb, & cmd);
  req->hdr.version = 1U;
  req->query_options = 2U;
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_acpi_wol_magic_config_v1 *)cmd.va;
    adapter->wol_cap = resp->wol_settings;
    if ((int )adapter->wol_cap & 1) {
      adapter->wol_en = 1;
    } else {
    }
  } else {
  }
  err:
  mutex_unlock(& adapter->mbox_lock);
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  } else {
  }
  return (status);
}
}
int be_cmd_set_fw_log_level(struct be_adapter *adapter , u32 level )
{
  struct be_dma_mem extfat_cmd ;
  struct be_fat_conf_params *cfgs ;
  int status ;
  int i ;
  int j ;
  u32 num_modes ;
  {
  memset((void *)(& extfat_cmd), 0, 24UL);
  extfat_cmd.size = 2844U;
  extfat_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )extfat_cmd.size,
                                      & extfat_cmd.dma, 32U);
  if ((unsigned long )extfat_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  status = be_cmd_get_ext_fat_capabilites(adapter, & extfat_cmd);
  if (status != 0) {
    goto err;
  } else {
  }
  cfgs = (struct be_fat_conf_params *)extfat_cmd.va + 16U;
  i = 0;
  goto ldv_58136;
  ldv_58135:
  num_modes = cfgs->module[i].num_modes;
  j = 0;
  goto ldv_58133;
  ldv_58132: ;
  if ((unsigned int )cfgs->module[i].trace_lvl[j].mode == 0U) {
    cfgs->module[i].trace_lvl[j].dbg_lvl = level;
  } else {
  }
  j = j + 1;
  ldv_58133: ;
  if ((u32 )j < num_modes) {
    goto ldv_58132;
  } else {
  }
  i = i + 1;
  ldv_58136: ;
  if ((u32 )i < cfgs->num_modules) {
    goto ldv_58135;
  } else {
  }
  status = be_cmd_set_ext_fat_capabilites(adapter, & extfat_cmd, cfgs);
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )extfat_cmd.size, extfat_cmd.va,
                 extfat_cmd.dma, (struct dma_attrs *)0);
  return (status);
}
}
int be_cmd_get_fw_log_level(struct be_adapter *adapter )
{
  struct be_dma_mem extfat_cmd ;
  struct be_fat_conf_params *cfgs ;
  int status ;
  int j ;
  int level ;
  {
  level = 0;
  memset((void *)(& extfat_cmd), 0, 24UL);
  extfat_cmd.size = 2844U;
  extfat_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )extfat_cmd.size,
                                      & extfat_cmd.dma, 32U);
  if ((unsigned long )extfat_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "%s: Memory allocation failure\n",
            "be_cmd_get_fw_log_level");
    goto err;
  } else {
  }
  status = be_cmd_get_ext_fat_capabilites(adapter, & extfat_cmd);
  if (status == 0) {
    cfgs = (struct be_fat_conf_params *)extfat_cmd.va + 16U;
    j = 0;
    goto ldv_58149;
    ldv_58148: ;
    if ((unsigned int )cfgs->module[0].trace_lvl[j].mode == 0U) {
      level = (int )cfgs->module[0].trace_lvl[j].dbg_lvl;
    } else {
    }
    j = j + 1;
    ldv_58149: ;
    if ((u32 )j < cfgs->module[0].num_modes) {
      goto ldv_58148;
    } else {
    }
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )extfat_cmd.size, extfat_cmd.va,
                 extfat_cmd.dma, (struct dma_attrs *)0);
  err: ;
  return (level);
}
}
int be_cmd_get_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_ext_fat_caps *req ;
  int status ;
  int tmp ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_ext_fat_caps *)cmd->va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 125, (int )cmd->size, wrb, cmd);
  req->parameter_type = 1U;
  status = be_mbox_notify_wait(adapter);
  err:
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_set_ext_fat_capabilites(struct be_adapter *adapter , struct be_dma_mem *cmd ,
                                   struct be_fat_conf_params *configs )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_ext_fat_caps *req ;
  int status ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_set_ext_fat_caps *)cmd->va;
  memcpy((void *)(& req->set_params), (void const *)configs, 2828UL);
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 126, (int )cmd->size, wrb, cmd);
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_query_port_name(struct be_adapter *adapter )
{
  struct be_cmd_req_get_port_name *req ;
  struct be_mcc_wrb *wrb ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_get_port_name *resp ;
  void *tmp___1 ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_get_port_name *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 77, 20, wrb, (struct be_dma_mem *)0);
  if (((unsigned int )(adapter->pdev)->device != 545U && (unsigned int )(adapter->pdev)->device != 1808U) && ((unsigned int )(adapter->pdev)->device != 529U && (unsigned int )(adapter->pdev)->device != 1792U)) {
    req->hdr.version = 1U;
  } else {
  }
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_port_name *)tmp___1;
    adapter->port_name = (char )resp->port_name[(int )adapter->hba_port_num];
  } else {
    adapter->port_name = (char )((unsigned int )adapter->hba_port_num + 48U);
  }
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
static struct be_nic_res_desc *be_get_nic_desc(u8 *buf , u32 desc_count , int desc_type )
{
  struct be_res_desc_hdr *hdr ;
  struct be_nic_res_desc *nic ;
  int i ;
  {
  hdr = (struct be_res_desc_hdr *)buf;
  i = 0;
  goto ldv_58187;
  ldv_58186: ;
  if ((unsigned int )hdr->desc_type == 65U || (unsigned int )hdr->desc_type == 81U) {
    nic = (struct be_nic_res_desc *)hdr;
    if (desc_type == 1 || (desc_type == 2 && ((int )nic->flags & 8) != 0)) {
      return (nic);
    } else {
    }
  } else {
  }
  hdr->desc_len = (int )hdr->desc_len != 0 ? (u8 )((int )hdr->desc_len) : 72U;
  hdr = hdr + (unsigned long )hdr->desc_len;
  i = i + 1;
  ldv_58187: ;
  if ((u32 )i < desc_count) {
    goto ldv_58186;
  } else {
  }
  return ((struct be_nic_res_desc *)0);
}
}
static struct be_nic_res_desc *be_get_vft_desc(u8 *buf , u32 desc_count )
{
  struct be_nic_res_desc *tmp ;
  {
  tmp = be_get_nic_desc(buf, desc_count, 2);
  return (tmp);
}
}
static struct be_nic_res_desc *be_get_func_nic_desc(u8 *buf , u32 desc_count )
{
  struct be_nic_res_desc *tmp ;
  {
  tmp = be_get_nic_desc(buf, desc_count, 1);
  return (tmp);
}
}
static struct be_pcie_res_desc *be_get_pcie_desc(u8 devfn , u8 *buf , u32 desc_count )
{
  struct be_res_desc_hdr *hdr ;
  struct be_pcie_res_desc *pcie ;
  int i ;
  {
  hdr = (struct be_res_desc_hdr *)buf;
  i = 0;
  goto ldv_58206;
  ldv_58205: ;
  if ((unsigned int )hdr->desc_type == 64U || (unsigned int )hdr->desc_type == 80U) {
    pcie = (struct be_pcie_res_desc *)hdr;
    if ((int )pcie->pf_num == (int )devfn) {
      return (pcie);
    } else {
    }
  } else {
  }
  hdr->desc_len = (int )hdr->desc_len != 0 ? (u8 )((int )hdr->desc_len) : 72U;
  hdr = hdr + (unsigned long )hdr->desc_len;
  i = i + 1;
  ldv_58206: ;
  if ((u32 )i < desc_count) {
    goto ldv_58205;
  } else {
  }
  return ((struct be_pcie_res_desc *)0);
}
}
static struct be_port_res_desc *be_get_port_desc(u8 *buf , u32 desc_count )
{
  struct be_res_desc_hdr *hdr ;
  int i ;
  {
  hdr = (struct be_res_desc_hdr *)buf;
  i = 0;
  goto ldv_58215;
  ldv_58214: ;
  if ((unsigned int )hdr->desc_type == 85U) {
    return ((struct be_port_res_desc *)hdr);
  } else {
  }
  hdr->desc_len = (int )hdr->desc_len != 0 ? (u8 )((int )hdr->desc_len) : 72U;
  hdr = hdr + (unsigned long )hdr->desc_len;
  i = i + 1;
  ldv_58215: ;
  if ((u32 )i < desc_count) {
    goto ldv_58214;
  } else {
  }
  return ((struct be_port_res_desc *)0);
}
}
static void be_copy_nic_desc(struct be_resources *res , struct be_nic_res_desc *desc )
{
  {
  res->max_uc_mac = desc->unicast_mac_count;
  res->max_vlans = desc->vlan_count;
  res->max_mcast_mac = desc->mcast_mac_count;
  res->max_tx_qs = desc->txq_count;
  res->max_rss_qs = desc->rssq_count;
  res->max_rx_qs = desc->rq_count;
  res->max_evt_qs = desc->eq_count;
  res->max_cq_count = desc->cq_count;
  res->max_iface_count = desc->iface_count;
  res->max_mcc_count = desc->mcc_count;
  res->if_cap_flags = desc->cap_flags & 16784316U;
  return;
}
}
int be_cmd_get_func_config(struct be_adapter *adapter , struct be_resources *res )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_func_config *req ;
  int status ;
  struct be_dma_mem cmd ;
  int tmp ;
  struct be_cmd_resp_get_func_config *resp ;
  u32 desc_count ;
  struct be_nic_res_desc *desc ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 23252U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory alloc failure\n");
    status = -12;
    goto err;
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  req = (struct be_cmd_req_get_func_config *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 160, (int )cmd.size, wrb, & cmd);
  if ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) {
    req->hdr.version = 1U;
  } else {
  }
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_func_config *)cmd.va;
    desc_count = resp->desc_count;
    desc = be_get_func_nic_desc((u8 *)(& resp->func_param), desc_count);
    if ((unsigned long )desc == (unsigned long )((struct be_nic_res_desc *)0)) {
      status = -22;
      goto err;
    } else {
    }
    adapter->pf_number = desc->pf_num;
    be_copy_nic_desc(res, desc);
  } else {
  }
  err:
  mutex_unlock(& adapter->mbox_lock);
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  } else {
  }
  return (status);
}
}
int be_cmd_get_profile_config(struct be_adapter *adapter , struct be_resources *res ,
                              u8 query , u8 domain )
{
  struct be_cmd_resp_get_profile_config *resp ;
  struct be_cmd_req_get_profile_config *req ;
  struct be_nic_res_desc *vf_res ;
  struct be_pcie_res_desc *pcie ;
  struct be_port_res_desc *port ;
  struct be_nic_res_desc *nic ;
  struct be_mcc_wrb wrb ;
  struct be_dma_mem cmd ;
  u16 desc_count ;
  int status ;
  {
  wrb.embedded = 0U;
  wrb.payload_length = 0U;
  wrb.tag0 = 0U;
  wrb.tag1 = 0U;
  wrb.rsvd = 0U;
  wrb.payload.embedded_payload[0] = (unsigned char)0;
  wrb.payload.embedded_payload[1] = (unsigned char)0;
  wrb.payload.embedded_payload[2] = (unsigned char)0;
  wrb.payload.embedded_payload[3] = (unsigned char)0;
  wrb.payload.embedded_payload[4] = (unsigned char)0;
  wrb.payload.embedded_payload[5] = (unsigned char)0;
  wrb.payload.embedded_payload[6] = (unsigned char)0;
  wrb.payload.embedded_payload[7] = (unsigned char)0;
  wrb.payload.embedded_payload[8] = (unsigned char)0;
  wrb.payload.embedded_payload[9] = (unsigned char)0;
  wrb.payload.embedded_payload[10] = (unsigned char)0;
  wrb.payload.embedded_payload[11] = (unsigned char)0;
  wrb.payload.embedded_payload[12] = (unsigned char)0;
  wrb.payload.embedded_payload[13] = (unsigned char)0;
  wrb.payload.embedded_payload[14] = (unsigned char)0;
  wrb.payload.embedded_payload[15] = (unsigned char)0;
  wrb.payload.embedded_payload[16] = (unsigned char)0;
  wrb.payload.embedded_payload[17] = (unsigned char)0;
  wrb.payload.embedded_payload[18] = (unsigned char)0;
  wrb.payload.embedded_payload[19] = (unsigned char)0;
  wrb.payload.embedded_payload[20] = (unsigned char)0;
  wrb.payload.embedded_payload[21] = (unsigned char)0;
  wrb.payload.embedded_payload[22] = (unsigned char)0;
  wrb.payload.embedded_payload[23] = (unsigned char)0;
  wrb.payload.embedded_payload[24] = (unsigned char)0;
  wrb.payload.embedded_payload[25] = (unsigned char)0;
  wrb.payload.embedded_payload[26] = (unsigned char)0;
  wrb.payload.embedded_payload[27] = (unsigned char)0;
  wrb.payload.embedded_payload[28] = (unsigned char)0;
  wrb.payload.embedded_payload[29] = (unsigned char)0;
  wrb.payload.embedded_payload[30] = (unsigned char)0;
  wrb.payload.embedded_payload[31] = (unsigned char)0;
  wrb.payload.embedded_payload[32] = (unsigned char)0;
  wrb.payload.embedded_payload[33] = (unsigned char)0;
  wrb.payload.embedded_payload[34] = (unsigned char)0;
  wrb.payload.embedded_payload[35] = (unsigned char)0;
  wrb.payload.embedded_payload[36] = (unsigned char)0;
  wrb.payload.embedded_payload[37] = (unsigned char)0;
  wrb.payload.embedded_payload[38] = (unsigned char)0;
  wrb.payload.embedded_payload[39] = (unsigned char)0;
  wrb.payload.embedded_payload[40] = (unsigned char)0;
  wrb.payload.embedded_payload[41] = (unsigned char)0;
  wrb.payload.embedded_payload[42] = (unsigned char)0;
  wrb.payload.embedded_payload[43] = (unsigned char)0;
  wrb.payload.embedded_payload[44] = (unsigned char)0;
  wrb.payload.embedded_payload[45] = (unsigned char)0;
  wrb.payload.embedded_payload[46] = (unsigned char)0;
  wrb.payload.embedded_payload[47] = (unsigned char)0;
  wrb.payload.embedded_payload[48] = (unsigned char)0;
  wrb.payload.embedded_payload[49] = (unsigned char)0;
  wrb.payload.embedded_payload[50] = (unsigned char)0;
  wrb.payload.embedded_payload[51] = (unsigned char)0;
  wrb.payload.embedded_payload[52] = (unsigned char)0;
  wrb.payload.embedded_payload[53] = (unsigned char)0;
  wrb.payload.embedded_payload[54] = (unsigned char)0;
  wrb.payload.embedded_payload[55] = (unsigned char)0;
  wrb.payload.embedded_payload[56] = (unsigned char)0;
  wrb.payload.embedded_payload[57] = (unsigned char)0;
  wrb.payload.embedded_payload[58] = (unsigned char)0;
  wrb.payload.embedded_payload[59] = (unsigned char)0;
  wrb.payload.embedded_payload[60] = (unsigned char)0;
  wrb.payload.embedded_payload[61] = (unsigned char)0;
  wrb.payload.embedded_payload[62] = (unsigned char)0;
  wrb.payload.embedded_payload[63] = (unsigned char)0;
  wrb.payload.embedded_payload[64] = (unsigned char)0;
  wrb.payload.embedded_payload[65] = (unsigned char)0;
  wrb.payload.embedded_payload[66] = (unsigned char)0;
  wrb.payload.embedded_payload[67] = (unsigned char)0;
  wrb.payload.embedded_payload[68] = (unsigned char)0;
  wrb.payload.embedded_payload[69] = (unsigned char)0;
  wrb.payload.embedded_payload[70] = (unsigned char)0;
  wrb.payload.embedded_payload[71] = (unsigned char)0;
  wrb.payload.embedded_payload[72] = (unsigned char)0;
  wrb.payload.embedded_payload[73] = (unsigned char)0;
  wrb.payload.embedded_payload[74] = (unsigned char)0;
  wrb.payload.embedded_payload[75] = (unsigned char)0;
  wrb.payload.embedded_payload[76] = (unsigned char)0;
  wrb.payload.embedded_payload[77] = (unsigned char)0;
  wrb.payload.embedded_payload[78] = (unsigned char)0;
  wrb.payload.embedded_payload[79] = (unsigned char)0;
  wrb.payload.embedded_payload[80] = (unsigned char)0;
  wrb.payload.embedded_payload[81] = (unsigned char)0;
  wrb.payload.embedded_payload[82] = (unsigned char)0;
  wrb.payload.embedded_payload[83] = (unsigned char)0;
  wrb.payload.embedded_payload[84] = (unsigned char)0;
  wrb.payload.embedded_payload[85] = (unsigned char)0;
  wrb.payload.embedded_payload[86] = (unsigned char)0;
  wrb.payload.embedded_payload[87] = (unsigned char)0;
  wrb.payload.embedded_payload[88] = (unsigned char)0;
  wrb.payload.embedded_payload[89] = (unsigned char)0;
  wrb.payload.embedded_payload[90] = (unsigned char)0;
  wrb.payload.embedded_payload[91] = (unsigned char)0;
  wrb.payload.embedded_payload[92] = (unsigned char)0;
  wrb.payload.embedded_payload[93] = (unsigned char)0;
  wrb.payload.embedded_payload[94] = (unsigned char)0;
  wrb.payload.embedded_payload[95] = (unsigned char)0;
  wrb.payload.embedded_payload[96] = (unsigned char)0;
  wrb.payload.embedded_payload[97] = (unsigned char)0;
  wrb.payload.embedded_payload[98] = (unsigned char)0;
  wrb.payload.embedded_payload[99] = (unsigned char)0;
  wrb.payload.embedded_payload[100] = (unsigned char)0;
  wrb.payload.embedded_payload[101] = (unsigned char)0;
  wrb.payload.embedded_payload[102] = (unsigned char)0;
  wrb.payload.embedded_payload[103] = (unsigned char)0;
  wrb.payload.embedded_payload[104] = (unsigned char)0;
  wrb.payload.embedded_payload[105] = (unsigned char)0;
  wrb.payload.embedded_payload[106] = (unsigned char)0;
  wrb.payload.embedded_payload[107] = (unsigned char)0;
  wrb.payload.embedded_payload[108] = (unsigned char)0;
  wrb.payload.embedded_payload[109] = (unsigned char)0;
  wrb.payload.embedded_payload[110] = (unsigned char)0;
  wrb.payload.embedded_payload[111] = (unsigned char)0;
  wrb.payload.embedded_payload[112] = (unsigned char)0;
  wrb.payload.embedded_payload[113] = (unsigned char)0;
  wrb.payload.embedded_payload[114] = (unsigned char)0;
  wrb.payload.embedded_payload[115] = (unsigned char)0;
  wrb.payload.embedded_payload[116] = (unsigned char)0;
  wrb.payload.embedded_payload[117] = (unsigned char)0;
  wrb.payload.embedded_payload[118] = (unsigned char)0;
  wrb.payload.embedded_payload[119] = (unsigned char)0;
  wrb.payload.embedded_payload[120] = (unsigned char)0;
  wrb.payload.embedded_payload[121] = (unsigned char)0;
  wrb.payload.embedded_payload[122] = (unsigned char)0;
  wrb.payload.embedded_payload[123] = (unsigned char)0;
  wrb.payload.embedded_payload[124] = (unsigned char)0;
  wrb.payload.embedded_payload[125] = (unsigned char)0;
  wrb.payload.embedded_payload[126] = (unsigned char)0;
  wrb.payload.embedded_payload[127] = (unsigned char)0;
  wrb.payload.embedded_payload[128] = (unsigned char)0;
  wrb.payload.embedded_payload[129] = (unsigned char)0;
  wrb.payload.embedded_payload[130] = (unsigned char)0;
  wrb.payload.embedded_payload[131] = (unsigned char)0;
  wrb.payload.embedded_payload[132] = (unsigned char)0;
  wrb.payload.embedded_payload[133] = (unsigned char)0;
  wrb.payload.embedded_payload[134] = (unsigned char)0;
  wrb.payload.embedded_payload[135] = (unsigned char)0;
  wrb.payload.embedded_payload[136] = (unsigned char)0;
  wrb.payload.embedded_payload[137] = (unsigned char)0;
  wrb.payload.embedded_payload[138] = (unsigned char)0;
  wrb.payload.embedded_payload[139] = (unsigned char)0;
  wrb.payload.embedded_payload[140] = (unsigned char)0;
  wrb.payload.embedded_payload[141] = (unsigned char)0;
  wrb.payload.embedded_payload[142] = (unsigned char)0;
  wrb.payload.embedded_payload[143] = (unsigned char)0;
  wrb.payload.embedded_payload[144] = (unsigned char)0;
  wrb.payload.embedded_payload[145] = (unsigned char)0;
  wrb.payload.embedded_payload[146] = (unsigned char)0;
  wrb.payload.embedded_payload[147] = (unsigned char)0;
  wrb.payload.embedded_payload[148] = (unsigned char)0;
  wrb.payload.embedded_payload[149] = (unsigned char)0;
  wrb.payload.embedded_payload[150] = (unsigned char)0;
  wrb.payload.embedded_payload[151] = (unsigned char)0;
  wrb.payload.embedded_payload[152] = (unsigned char)0;
  wrb.payload.embedded_payload[153] = (unsigned char)0;
  wrb.payload.embedded_payload[154] = (unsigned char)0;
  wrb.payload.embedded_payload[155] = (unsigned char)0;
  wrb.payload.embedded_payload[156] = (unsigned char)0;
  wrb.payload.embedded_payload[157] = (unsigned char)0;
  wrb.payload.embedded_payload[158] = (unsigned char)0;
  wrb.payload.embedded_payload[159] = (unsigned char)0;
  wrb.payload.embedded_payload[160] = (unsigned char)0;
  wrb.payload.embedded_payload[161] = (unsigned char)0;
  wrb.payload.embedded_payload[162] = (unsigned char)0;
  wrb.payload.embedded_payload[163] = (unsigned char)0;
  wrb.payload.embedded_payload[164] = (unsigned char)0;
  wrb.payload.embedded_payload[165] = (unsigned char)0;
  wrb.payload.embedded_payload[166] = (unsigned char)0;
  wrb.payload.embedded_payload[167] = (unsigned char)0;
  wrb.payload.embedded_payload[168] = (unsigned char)0;
  wrb.payload.embedded_payload[169] = (unsigned char)0;
  wrb.payload.embedded_payload[170] = (unsigned char)0;
  wrb.payload.embedded_payload[171] = (unsigned char)0;
  wrb.payload.embedded_payload[172] = (unsigned char)0;
  wrb.payload.embedded_payload[173] = (unsigned char)0;
  wrb.payload.embedded_payload[174] = (unsigned char)0;
  wrb.payload.embedded_payload[175] = (unsigned char)0;
  wrb.payload.embedded_payload[176] = (unsigned char)0;
  wrb.payload.embedded_payload[177] = (unsigned char)0;
  wrb.payload.embedded_payload[178] = (unsigned char)0;
  wrb.payload.embedded_payload[179] = (unsigned char)0;
  wrb.payload.embedded_payload[180] = (unsigned char)0;
  wrb.payload.embedded_payload[181] = (unsigned char)0;
  wrb.payload.embedded_payload[182] = (unsigned char)0;
  wrb.payload.embedded_payload[183] = (unsigned char)0;
  wrb.payload.embedded_payload[184] = (unsigned char)0;
  wrb.payload.embedded_payload[185] = (unsigned char)0;
  wrb.payload.embedded_payload[186] = (unsigned char)0;
  wrb.payload.embedded_payload[187] = (unsigned char)0;
  wrb.payload.embedded_payload[188] = (unsigned char)0;
  wrb.payload.embedded_payload[189] = (unsigned char)0;
  wrb.payload.embedded_payload[190] = (unsigned char)0;
  wrb.payload.embedded_payload[191] = (unsigned char)0;
  wrb.payload.embedded_payload[192] = (unsigned char)0;
  wrb.payload.embedded_payload[193] = (unsigned char)0;
  wrb.payload.embedded_payload[194] = (unsigned char)0;
  wrb.payload.embedded_payload[195] = (unsigned char)0;
  wrb.payload.embedded_payload[196] = (unsigned char)0;
  wrb.payload.embedded_payload[197] = (unsigned char)0;
  wrb.payload.embedded_payload[198] = (unsigned char)0;
  wrb.payload.embedded_payload[199] = (unsigned char)0;
  wrb.payload.embedded_payload[200] = (unsigned char)0;
  wrb.payload.embedded_payload[201] = (unsigned char)0;
  wrb.payload.embedded_payload[202] = (unsigned char)0;
  wrb.payload.embedded_payload[203] = (unsigned char)0;
  wrb.payload.embedded_payload[204] = (unsigned char)0;
  wrb.payload.embedded_payload[205] = (unsigned char)0;
  wrb.payload.embedded_payload[206] = (unsigned char)0;
  wrb.payload.embedded_payload[207] = (unsigned char)0;
  wrb.payload.embedded_payload[208] = (unsigned char)0;
  wrb.payload.embedded_payload[209] = (unsigned char)0;
  wrb.payload.embedded_payload[210] = (unsigned char)0;
  wrb.payload.embedded_payload[211] = (unsigned char)0;
  wrb.payload.embedded_payload[212] = (unsigned char)0;
  wrb.payload.embedded_payload[213] = (unsigned char)0;
  wrb.payload.embedded_payload[214] = (unsigned char)0;
  wrb.payload.embedded_payload[215] = (unsigned char)0;
  wrb.payload.embedded_payload[216] = (unsigned char)0;
  wrb.payload.embedded_payload[217] = (unsigned char)0;
  wrb.payload.embedded_payload[218] = (unsigned char)0;
  wrb.payload.embedded_payload[219] = (unsigned char)0;
  wrb.payload.embedded_payload[220] = (unsigned char)0;
  wrb.payload.embedded_payload[221] = (unsigned char)0;
  wrb.payload.embedded_payload[222] = (unsigned char)0;
  wrb.payload.embedded_payload[223] = (unsigned char)0;
  wrb.payload.embedded_payload[224] = (unsigned char)0;
  wrb.payload.embedded_payload[225] = (unsigned char)0;
  wrb.payload.embedded_payload[226] = (unsigned char)0;
  wrb.payload.embedded_payload[227] = (unsigned char)0;
  wrb.payload.embedded_payload[228] = (unsigned char)0;
  wrb.payload.embedded_payload[229] = (unsigned char)0;
  wrb.payload.embedded_payload[230] = (unsigned char)0;
  wrb.payload.embedded_payload[231] = (unsigned char)0;
  wrb.payload.embedded_payload[232] = (unsigned char)0;
  wrb.payload.embedded_payload[233] = (unsigned char)0;
  wrb.payload.embedded_payload[234] = (unsigned char)0;
  wrb.payload.embedded_payload[235] = (unsigned char)0;
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 23252U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  req = (struct be_cmd_req_get_profile_config *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 164, (int )cmd.size, & wrb, & cmd);
  req->hdr.domain = domain;
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    req->hdr.version = 1U;
  } else {
  }
  req->type = 2U;
  if ((unsigned int )query == 1U) {
    req->type = (u8 )((unsigned int )req->type | 8U);
  } else {
  }
  status = be_cmd_notify_wait(adapter, & wrb);
  if (status != 0) {
    goto err;
  } else {
  }
  resp = (struct be_cmd_resp_get_profile_config *)cmd.va;
  desc_count = resp->desc_count;
  pcie = be_get_pcie_desc((int )((u8 )(adapter->pdev)->devfn), (u8 *)(& resp->func_param),
                          (u32 )desc_count);
  if ((unsigned long )pcie != (unsigned long )((struct be_pcie_res_desc *)0)) {
    res->max_vfs = pcie->num_vfs;
  } else {
  }
  port = be_get_port_desc((u8 *)(& resp->func_param), (u32 )desc_count);
  if ((unsigned long )port != (unsigned long )((struct be_port_res_desc *)0)) {
    adapter->mc_type = port->mc_type;
  } else {
  }
  nic = be_get_func_nic_desc((u8 *)(& resp->func_param), (u32 )desc_count);
  if ((unsigned long )nic != (unsigned long )((struct be_nic_res_desc *)0)) {
    be_copy_nic_desc(res, nic);
  } else {
  }
  vf_res = be_get_vft_desc((u8 *)(& resp->func_param), (u32 )desc_count);
  if ((unsigned long )vf_res != (unsigned long )((struct be_nic_res_desc *)0)) {
    res->vf_if_cap_flags = vf_res->cap_flags;
  } else {
  }
  err: ;
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  } else {
  }
  return (status);
}
}
static int be_cmd_set_profile_config(struct be_adapter *adapter , void *desc , int size ,
                                     int count , u8 version , u8 domain )
{
  struct be_cmd_req_set_profile_config *req ;
  struct be_mcc_wrb wrb ;
  struct be_dma_mem cmd ;
  int status ;
  {
  wrb.embedded = 0U;
  wrb.payload_length = 0U;
  wrb.tag0 = 0U;
  wrb.tag1 = 0U;
  wrb.rsvd = 0U;
  wrb.payload.embedded_payload[0] = (unsigned char)0;
  wrb.payload.embedded_payload[1] = (unsigned char)0;
  wrb.payload.embedded_payload[2] = (unsigned char)0;
  wrb.payload.embedded_payload[3] = (unsigned char)0;
  wrb.payload.embedded_payload[4] = (unsigned char)0;
  wrb.payload.embedded_payload[5] = (unsigned char)0;
  wrb.payload.embedded_payload[6] = (unsigned char)0;
  wrb.payload.embedded_payload[7] = (unsigned char)0;
  wrb.payload.embedded_payload[8] = (unsigned char)0;
  wrb.payload.embedded_payload[9] = (unsigned char)0;
  wrb.payload.embedded_payload[10] = (unsigned char)0;
  wrb.payload.embedded_payload[11] = (unsigned char)0;
  wrb.payload.embedded_payload[12] = (unsigned char)0;
  wrb.payload.embedded_payload[13] = (unsigned char)0;
  wrb.payload.embedded_payload[14] = (unsigned char)0;
  wrb.payload.embedded_payload[15] = (unsigned char)0;
  wrb.payload.embedded_payload[16] = (unsigned char)0;
  wrb.payload.embedded_payload[17] = (unsigned char)0;
  wrb.payload.embedded_payload[18] = (unsigned char)0;
  wrb.payload.embedded_payload[19] = (unsigned char)0;
  wrb.payload.embedded_payload[20] = (unsigned char)0;
  wrb.payload.embedded_payload[21] = (unsigned char)0;
  wrb.payload.embedded_payload[22] = (unsigned char)0;
  wrb.payload.embedded_payload[23] = (unsigned char)0;
  wrb.payload.embedded_payload[24] = (unsigned char)0;
  wrb.payload.embedded_payload[25] = (unsigned char)0;
  wrb.payload.embedded_payload[26] = (unsigned char)0;
  wrb.payload.embedded_payload[27] = (unsigned char)0;
  wrb.payload.embedded_payload[28] = (unsigned char)0;
  wrb.payload.embedded_payload[29] = (unsigned char)0;
  wrb.payload.embedded_payload[30] = (unsigned char)0;
  wrb.payload.embedded_payload[31] = (unsigned char)0;
  wrb.payload.embedded_payload[32] = (unsigned char)0;
  wrb.payload.embedded_payload[33] = (unsigned char)0;
  wrb.payload.embedded_payload[34] = (unsigned char)0;
  wrb.payload.embedded_payload[35] = (unsigned char)0;
  wrb.payload.embedded_payload[36] = (unsigned char)0;
  wrb.payload.embedded_payload[37] = (unsigned char)0;
  wrb.payload.embedded_payload[38] = (unsigned char)0;
  wrb.payload.embedded_payload[39] = (unsigned char)0;
  wrb.payload.embedded_payload[40] = (unsigned char)0;
  wrb.payload.embedded_payload[41] = (unsigned char)0;
  wrb.payload.embedded_payload[42] = (unsigned char)0;
  wrb.payload.embedded_payload[43] = (unsigned char)0;
  wrb.payload.embedded_payload[44] = (unsigned char)0;
  wrb.payload.embedded_payload[45] = (unsigned char)0;
  wrb.payload.embedded_payload[46] = (unsigned char)0;
  wrb.payload.embedded_payload[47] = (unsigned char)0;
  wrb.payload.embedded_payload[48] = (unsigned char)0;
  wrb.payload.embedded_payload[49] = (unsigned char)0;
  wrb.payload.embedded_payload[50] = (unsigned char)0;
  wrb.payload.embedded_payload[51] = (unsigned char)0;
  wrb.payload.embedded_payload[52] = (unsigned char)0;
  wrb.payload.embedded_payload[53] = (unsigned char)0;
  wrb.payload.embedded_payload[54] = (unsigned char)0;
  wrb.payload.embedded_payload[55] = (unsigned char)0;
  wrb.payload.embedded_payload[56] = (unsigned char)0;
  wrb.payload.embedded_payload[57] = (unsigned char)0;
  wrb.payload.embedded_payload[58] = (unsigned char)0;
  wrb.payload.embedded_payload[59] = (unsigned char)0;
  wrb.payload.embedded_payload[60] = (unsigned char)0;
  wrb.payload.embedded_payload[61] = (unsigned char)0;
  wrb.payload.embedded_payload[62] = (unsigned char)0;
  wrb.payload.embedded_payload[63] = (unsigned char)0;
  wrb.payload.embedded_payload[64] = (unsigned char)0;
  wrb.payload.embedded_payload[65] = (unsigned char)0;
  wrb.payload.embedded_payload[66] = (unsigned char)0;
  wrb.payload.embedded_payload[67] = (unsigned char)0;
  wrb.payload.embedded_payload[68] = (unsigned char)0;
  wrb.payload.embedded_payload[69] = (unsigned char)0;
  wrb.payload.embedded_payload[70] = (unsigned char)0;
  wrb.payload.embedded_payload[71] = (unsigned char)0;
  wrb.payload.embedded_payload[72] = (unsigned char)0;
  wrb.payload.embedded_payload[73] = (unsigned char)0;
  wrb.payload.embedded_payload[74] = (unsigned char)0;
  wrb.payload.embedded_payload[75] = (unsigned char)0;
  wrb.payload.embedded_payload[76] = (unsigned char)0;
  wrb.payload.embedded_payload[77] = (unsigned char)0;
  wrb.payload.embedded_payload[78] = (unsigned char)0;
  wrb.payload.embedded_payload[79] = (unsigned char)0;
  wrb.payload.embedded_payload[80] = (unsigned char)0;
  wrb.payload.embedded_payload[81] = (unsigned char)0;
  wrb.payload.embedded_payload[82] = (unsigned char)0;
  wrb.payload.embedded_payload[83] = (unsigned char)0;
  wrb.payload.embedded_payload[84] = (unsigned char)0;
  wrb.payload.embedded_payload[85] = (unsigned char)0;
  wrb.payload.embedded_payload[86] = (unsigned char)0;
  wrb.payload.embedded_payload[87] = (unsigned char)0;
  wrb.payload.embedded_payload[88] = (unsigned char)0;
  wrb.payload.embedded_payload[89] = (unsigned char)0;
  wrb.payload.embedded_payload[90] = (unsigned char)0;
  wrb.payload.embedded_payload[91] = (unsigned char)0;
  wrb.payload.embedded_payload[92] = (unsigned char)0;
  wrb.payload.embedded_payload[93] = (unsigned char)0;
  wrb.payload.embedded_payload[94] = (unsigned char)0;
  wrb.payload.embedded_payload[95] = (unsigned char)0;
  wrb.payload.embedded_payload[96] = (unsigned char)0;
  wrb.payload.embedded_payload[97] = (unsigned char)0;
  wrb.payload.embedded_payload[98] = (unsigned char)0;
  wrb.payload.embedded_payload[99] = (unsigned char)0;
  wrb.payload.embedded_payload[100] = (unsigned char)0;
  wrb.payload.embedded_payload[101] = (unsigned char)0;
  wrb.payload.embedded_payload[102] = (unsigned char)0;
  wrb.payload.embedded_payload[103] = (unsigned char)0;
  wrb.payload.embedded_payload[104] = (unsigned char)0;
  wrb.payload.embedded_payload[105] = (unsigned char)0;
  wrb.payload.embedded_payload[106] = (unsigned char)0;
  wrb.payload.embedded_payload[107] = (unsigned char)0;
  wrb.payload.embedded_payload[108] = (unsigned char)0;
  wrb.payload.embedded_payload[109] = (unsigned char)0;
  wrb.payload.embedded_payload[110] = (unsigned char)0;
  wrb.payload.embedded_payload[111] = (unsigned char)0;
  wrb.payload.embedded_payload[112] = (unsigned char)0;
  wrb.payload.embedded_payload[113] = (unsigned char)0;
  wrb.payload.embedded_payload[114] = (unsigned char)0;
  wrb.payload.embedded_payload[115] = (unsigned char)0;
  wrb.payload.embedded_payload[116] = (unsigned char)0;
  wrb.payload.embedded_payload[117] = (unsigned char)0;
  wrb.payload.embedded_payload[118] = (unsigned char)0;
  wrb.payload.embedded_payload[119] = (unsigned char)0;
  wrb.payload.embedded_payload[120] = (unsigned char)0;
  wrb.payload.embedded_payload[121] = (unsigned char)0;
  wrb.payload.embedded_payload[122] = (unsigned char)0;
  wrb.payload.embedded_payload[123] = (unsigned char)0;
  wrb.payload.embedded_payload[124] = (unsigned char)0;
  wrb.payload.embedded_payload[125] = (unsigned char)0;
  wrb.payload.embedded_payload[126] = (unsigned char)0;
  wrb.payload.embedded_payload[127] = (unsigned char)0;
  wrb.payload.embedded_payload[128] = (unsigned char)0;
  wrb.payload.embedded_payload[129] = (unsigned char)0;
  wrb.payload.embedded_payload[130] = (unsigned char)0;
  wrb.payload.embedded_payload[131] = (unsigned char)0;
  wrb.payload.embedded_payload[132] = (unsigned char)0;
  wrb.payload.embedded_payload[133] = (unsigned char)0;
  wrb.payload.embedded_payload[134] = (unsigned char)0;
  wrb.payload.embedded_payload[135] = (unsigned char)0;
  wrb.payload.embedded_payload[136] = (unsigned char)0;
  wrb.payload.embedded_payload[137] = (unsigned char)0;
  wrb.payload.embedded_payload[138] = (unsigned char)0;
  wrb.payload.embedded_payload[139] = (unsigned char)0;
  wrb.payload.embedded_payload[140] = (unsigned char)0;
  wrb.payload.embedded_payload[141] = (unsigned char)0;
  wrb.payload.embedded_payload[142] = (unsigned char)0;
  wrb.payload.embedded_payload[143] = (unsigned char)0;
  wrb.payload.embedded_payload[144] = (unsigned char)0;
  wrb.payload.embedded_payload[145] = (unsigned char)0;
  wrb.payload.embedded_payload[146] = (unsigned char)0;
  wrb.payload.embedded_payload[147] = (unsigned char)0;
  wrb.payload.embedded_payload[148] = (unsigned char)0;
  wrb.payload.embedded_payload[149] = (unsigned char)0;
  wrb.payload.embedded_payload[150] = (unsigned char)0;
  wrb.payload.embedded_payload[151] = (unsigned char)0;
  wrb.payload.embedded_payload[152] = (unsigned char)0;
  wrb.payload.embedded_payload[153] = (unsigned char)0;
  wrb.payload.embedded_payload[154] = (unsigned char)0;
  wrb.payload.embedded_payload[155] = (unsigned char)0;
  wrb.payload.embedded_payload[156] = (unsigned char)0;
  wrb.payload.embedded_payload[157] = (unsigned char)0;
  wrb.payload.embedded_payload[158] = (unsigned char)0;
  wrb.payload.embedded_payload[159] = (unsigned char)0;
  wrb.payload.embedded_payload[160] = (unsigned char)0;
  wrb.payload.embedded_payload[161] = (unsigned char)0;
  wrb.payload.embedded_payload[162] = (unsigned char)0;
  wrb.payload.embedded_payload[163] = (unsigned char)0;
  wrb.payload.embedded_payload[164] = (unsigned char)0;
  wrb.payload.embedded_payload[165] = (unsigned char)0;
  wrb.payload.embedded_payload[166] = (unsigned char)0;
  wrb.payload.embedded_payload[167] = (unsigned char)0;
  wrb.payload.embedded_payload[168] = (unsigned char)0;
  wrb.payload.embedded_payload[169] = (unsigned char)0;
  wrb.payload.embedded_payload[170] = (unsigned char)0;
  wrb.payload.embedded_payload[171] = (unsigned char)0;
  wrb.payload.embedded_payload[172] = (unsigned char)0;
  wrb.payload.embedded_payload[173] = (unsigned char)0;
  wrb.payload.embedded_payload[174] = (unsigned char)0;
  wrb.payload.embedded_payload[175] = (unsigned char)0;
  wrb.payload.embedded_payload[176] = (unsigned char)0;
  wrb.payload.embedded_payload[177] = (unsigned char)0;
  wrb.payload.embedded_payload[178] = (unsigned char)0;
  wrb.payload.embedded_payload[179] = (unsigned char)0;
  wrb.payload.embedded_payload[180] = (unsigned char)0;
  wrb.payload.embedded_payload[181] = (unsigned char)0;
  wrb.payload.embedded_payload[182] = (unsigned char)0;
  wrb.payload.embedded_payload[183] = (unsigned char)0;
  wrb.payload.embedded_payload[184] = (unsigned char)0;
  wrb.payload.embedded_payload[185] = (unsigned char)0;
  wrb.payload.embedded_payload[186] = (unsigned char)0;
  wrb.payload.embedded_payload[187] = (unsigned char)0;
  wrb.payload.embedded_payload[188] = (unsigned char)0;
  wrb.payload.embedded_payload[189] = (unsigned char)0;
  wrb.payload.embedded_payload[190] = (unsigned char)0;
  wrb.payload.embedded_payload[191] = (unsigned char)0;
  wrb.payload.embedded_payload[192] = (unsigned char)0;
  wrb.payload.embedded_payload[193] = (unsigned char)0;
  wrb.payload.embedded_payload[194] = (unsigned char)0;
  wrb.payload.embedded_payload[195] = (unsigned char)0;
  wrb.payload.embedded_payload[196] = (unsigned char)0;
  wrb.payload.embedded_payload[197] = (unsigned char)0;
  wrb.payload.embedded_payload[198] = (unsigned char)0;
  wrb.payload.embedded_payload[199] = (unsigned char)0;
  wrb.payload.embedded_payload[200] = (unsigned char)0;
  wrb.payload.embedded_payload[201] = (unsigned char)0;
  wrb.payload.embedded_payload[202] = (unsigned char)0;
  wrb.payload.embedded_payload[203] = (unsigned char)0;
  wrb.payload.embedded_payload[204] = (unsigned char)0;
  wrb.payload.embedded_payload[205] = (unsigned char)0;
  wrb.payload.embedded_payload[206] = (unsigned char)0;
  wrb.payload.embedded_payload[207] = (unsigned char)0;
  wrb.payload.embedded_payload[208] = (unsigned char)0;
  wrb.payload.embedded_payload[209] = (unsigned char)0;
  wrb.payload.embedded_payload[210] = (unsigned char)0;
  wrb.payload.embedded_payload[211] = (unsigned char)0;
  wrb.payload.embedded_payload[212] = (unsigned char)0;
  wrb.payload.embedded_payload[213] = (unsigned char)0;
  wrb.payload.embedded_payload[214] = (unsigned char)0;
  wrb.payload.embedded_payload[215] = (unsigned char)0;
  wrb.payload.embedded_payload[216] = (unsigned char)0;
  wrb.payload.embedded_payload[217] = (unsigned char)0;
  wrb.payload.embedded_payload[218] = (unsigned char)0;
  wrb.payload.embedded_payload[219] = (unsigned char)0;
  wrb.payload.embedded_payload[220] = (unsigned char)0;
  wrb.payload.embedded_payload[221] = (unsigned char)0;
  wrb.payload.embedded_payload[222] = (unsigned char)0;
  wrb.payload.embedded_payload[223] = (unsigned char)0;
  wrb.payload.embedded_payload[224] = (unsigned char)0;
  wrb.payload.embedded_payload[225] = (unsigned char)0;
  wrb.payload.embedded_payload[226] = (unsigned char)0;
  wrb.payload.embedded_payload[227] = (unsigned char)0;
  wrb.payload.embedded_payload[228] = (unsigned char)0;
  wrb.payload.embedded_payload[229] = (unsigned char)0;
  wrb.payload.embedded_payload[230] = (unsigned char)0;
  wrb.payload.embedded_payload[231] = (unsigned char)0;
  wrb.payload.embedded_payload[232] = (unsigned char)0;
  wrb.payload.embedded_payload[233] = (unsigned char)0;
  wrb.payload.embedded_payload[234] = (unsigned char)0;
  wrb.payload.embedded_payload[235] = (unsigned char)0;
  memset((void *)(& cmd), 0, 24UL);
  cmd.size = 200U;
  cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )cmd.size, & cmd.dma,
                               32U);
  if ((unsigned long )cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  req = (struct be_cmd_req_set_profile_config *)cmd.va;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 165, (int )cmd.size, & wrb, & cmd);
  req->hdr.version = version;
  req->hdr.domain = domain;
  req->desc_count = (unsigned int )count;
  memcpy((void *)(& req->desc), (void const *)desc, (size_t )size);
  status = be_cmd_notify_wait(adapter, & wrb);
  if ((unsigned long )cmd.va != (unsigned long )((void *)0)) {
    dma_free_attrs(& (adapter->pdev)->dev, (size_t )cmd.size, cmd.va, cmd.dma, (struct dma_attrs *)0);
  } else {
  }
  return (status);
}
}
static void be_reset_nic_desc(struct be_nic_res_desc *nic )
{
  {
  memset((void *)nic, 0, 88UL);
  nic->unicast_mac_count = 65535U;
  nic->mcc_count = 65535U;
  nic->vlan_count = 65535U;
  nic->mcast_mac_count = 65535U;
  nic->txq_count = 65535U;
  nic->rq_count = 65535U;
  nic->rssq_count = 65535U;
  nic->lro_count = 65535U;
  nic->cq_count = 65535U;
  nic->toe_conn_count = 65535U;
  nic->eq_count = 65535U;
  nic->iface_count = 65535U;
  nic->link_param = 255U;
  nic->channel_id_param = 61440U;
  nic->acpi_params = 255U;
  nic->wol_param = 15U;
  nic->tunnel_iface_count = 65535U;
  nic->direct_tenant_iface_count = 65535U;
  nic->bw_min = 4294967295U;
  nic->bw_max = 4294967295U;
  return;
}
}
static void be_reset_pcie_desc(struct be_pcie_res_desc *pcie )
{
  {
  memset((void *)pcie, 0, 88UL);
  pcie->sriov_state = 255U;
  pcie->pf_state = 255U;
  pcie->pf_type = 255U;
  pcie->num_vfs = 65535U;
  return;
}
}
int be_cmd_config_qos(struct be_adapter *adapter , u32 max_rate , u16 link_speed ,
                      u8 domain )
{
  struct be_nic_res_desc nic_desc ;
  u32 bw_percent ;
  u16 version ;
  int tmp ;
  int tmp___0 ;
  {
  version = 0U;
  if ((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) {
    tmp = be_cmd_set_qos(adapter, max_rate / 10U, (u32 )domain);
    return (tmp);
  } else {
  }
  be_reset_nic_desc(& nic_desc);
  nic_desc.pf_num = adapter->pf_number;
  nic_desc.vf_num = domain;
  nic_desc.bw_min = 0U;
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    nic_desc.hdr.desc_type = 65U;
    nic_desc.hdr.desc_len = 72U;
    nic_desc.flags = 208U;
    nic_desc.bw_max = max_rate / 10U;
  } else {
    version = 1U;
    nic_desc.hdr.desc_type = 81U;
    nic_desc.hdr.desc_len = 88U;
    nic_desc.flags = 192U;
    bw_percent = max_rate != 0U ? (max_rate * 100U) / (u32 )link_speed : 100U;
    nic_desc.bw_max = bw_percent;
  }
  tmp___0 = be_cmd_set_profile_config(adapter, (void *)(& nic_desc), (int )nic_desc.hdr.desc_len,
                                      1, (int )((u8 )version), (int )domain);
  return (tmp___0);
}
}
static void be_fill_vf_res_template(struct be_adapter *adapter , struct be_resources pool_res ,
                                    u16 num_vfs___0 , u16 num_vf_qs , struct be_nic_res_desc *nic_vft )
{
  u32 vf_if_cap_flags ;
  struct be_resources res_mod ;
  {
  vf_if_cap_flags = pool_res.vf_if_cap_flags;
  res_mod.max_vfs = 0U;
  res_mod.max_mcast_mac = (unsigned short)0;
  res_mod.max_tx_qs = (unsigned short)0;
  res_mod.max_rss_qs = (unsigned short)0;
  res_mod.max_rx_qs = (unsigned short)0;
  res_mod.max_cq_count = (unsigned short)0;
  res_mod.max_uc_mac = (unsigned short)0;
  res_mod.max_vlans = (unsigned short)0;
  res_mod.max_iface_count = (unsigned short)0;
  res_mod.max_mcc_count = (unsigned short)0;
  res_mod.max_evt_qs = (unsigned short)0;
  res_mod.if_cap_flags = 0U;
  res_mod.vf_if_cap_flags = 0U;
  be_cmd_get_profile_config(adapter, & res_mod, 1, 0);
  if ((res_mod.vf_if_cap_flags & 4U) != 0U) {
    nic_vft->flags = (u8 )((unsigned int )nic_vft->flags | 1U);
    if ((unsigned int )num_vf_qs > 1U) {
      vf_if_cap_flags = vf_if_cap_flags | 4U;
      if ((pool_res.if_cap_flags & 16777216U) != 0U) {
        vf_if_cap_flags = vf_if_cap_flags | 16777216U;
      } else {
      }
    } else {
      vf_if_cap_flags = vf_if_cap_flags & 4278190075U;
    }
    nic_vft->cap_flags = vf_if_cap_flags;
  } else {
    num_vf_qs = 1U;
  }
  nic_vft->rq_count = num_vf_qs;
  nic_vft->txq_count = num_vf_qs;
  nic_vft->rssq_count = num_vf_qs;
  nic_vft->cq_count = (unsigned short )((int )pool_res.max_cq_count / ((int )num_vfs___0 + 1));
  if ((unsigned int )res_mod.max_uc_mac == 65535U) {
    nic_vft->unicast_mac_count = (unsigned short )((int )pool_res.max_uc_mac / ((int )num_vfs___0 + 1));
  } else {
  }
  if ((unsigned int )res_mod.max_vlans == 65535U) {
    nic_vft->vlan_count = (unsigned short )((int )pool_res.max_vlans / ((int )num_vfs___0 + 1));
  } else {
  }
  if ((unsigned int )res_mod.max_iface_count == 65535U) {
    nic_vft->iface_count = (unsigned short )((int )pool_res.max_iface_count / ((int )num_vfs___0 + 1));
  } else {
  }
  if ((unsigned int )res_mod.max_mcc_count == 65535U) {
    nic_vft->mcc_count = (unsigned short )((int )pool_res.max_mcc_count / ((int )num_vfs___0 + 1));
  } else {
  }
  return;
}
}
int be_cmd_set_sriov_config(struct be_adapter *adapter , struct be_resources pool_res ,
                            u16 num_vfs___0 , u16 num_vf_qs )
{
  struct __anonstruct_desc_400 desc ;
  int tmp ;
  {
  be_reset_pcie_desc(& desc.pcie);
  desc.pcie.hdr.desc_type = 80U;
  desc.pcie.hdr.desc_len = 88U;
  desc.pcie.flags = 192U;
  desc.pcie.pf_num = (u8 )(adapter->pdev)->devfn;
  desc.pcie.sriov_state = (unsigned int )num_vfs___0 != 0U;
  desc.pcie.num_vfs = num_vfs___0;
  be_reset_nic_desc(& desc.nic_vft);
  desc.nic_vft.hdr.desc_type = 81U;
  desc.nic_vft.hdr.desc_len = 88U;
  desc.nic_vft.flags = 200U;
  desc.nic_vft.pf_num = (u8 )(adapter->pdev)->devfn;
  desc.nic_vft.vf_num = 0U;
  be_fill_vf_res_template(adapter, pool_res, (int )num_vfs___0, (int )num_vf_qs, & desc.nic_vft);
  tmp = be_cmd_set_profile_config(adapter, (void *)(& desc), 176, 2, 1, 0);
  return (tmp);
}
}
int be_cmd_manage_iface(struct be_adapter *adapter , u32 iface , u8 op )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_manage_iface_filters *req ;
  int status ;
  void *tmp ;
  {
  if (iface == 4294967295U) {
    return (-1);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_manage_iface_filters *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 193, 52, wrb, (struct be_dma_mem *)0);
  req->op = op;
  req->target_iface_id = iface;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_set_vxlan_port(struct be_adapter *adapter , __be16 port )
{
  struct be_port_res_desc port_desc ;
  __u16 tmp ;
  int tmp___0 ;
  {
  memset((void *)(& port_desc), 0, 88UL);
  port_desc.hdr.desc_type = 85U;
  port_desc.hdr.desc_len = 88U;
  port_desc.flags = 192U;
  port_desc.link_num = adapter->hba_port_num;
  if ((unsigned int )port != 0U) {
    port_desc.nv_flags = 23U;
    tmp = __fswab16((int )port);
    port_desc.nv_port = tmp;
  } else {
    port_desc.nv_flags = 1U;
    port_desc.nv_port = 0U;
  }
  tmp___0 = be_cmd_set_profile_config(adapter, (void *)(& port_desc), 88, 1, 1, 0);
  return (tmp___0);
}
}
int be_cmd_get_if_id(struct be_adapter *adapter , struct be_vf_cfg *vf_cfg , int vf_num )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_get_iface_list *req ;
  struct be_cmd_resp_get_iface_list *resp ;
  int status ;
  void *tmp ;
  {
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_get_iface_list *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 194, 32, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = (unsigned int )((u8 )vf_num) + 1U;
  status = be_mcc_notify_wait(adapter);
  if (status == 0) {
    resp = (struct be_cmd_resp_get_iface_list *)req;
    vf_cfg->if_handle = (int )resp->if_desc.if_id;
  } else {
  }
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static int lancer_wait_idle(struct be_adapter *adapter )
{
  u32 reg_val ;
  int status ;
  int i ;
  {
  status = 0;
  i = 0;
  goto ldv_58328;
  ldv_58327:
  reg_val = ioread32((void *)adapter->db + 1044U);
  if ((reg_val & 1073741824U) == 0U) {
    goto ldv_58326;
  } else {
  }
  ssleep(1U);
  i = i + 1;
  ldv_58328: ;
  if (i <= 29) {
    goto ldv_58327;
  } else {
  }
  ldv_58326: ;
  if (i == 30) {
    status = -1;
  } else {
  }
  return (status);
}
}
int lancer_physdev_ctrl(struct be_adapter *adapter , u32 mask )
{
  int status ;
  {
  status = 0;
  status = lancer_wait_idle(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  iowrite32(mask, (void *)adapter->db + 1044U);
  return (status);
}
}
bool dump_present(struct be_adapter *adapter )
{
  u32 sliport_status ;
  {
  sliport_status = 0U;
  sliport_status = ioread32((void *)adapter->db + 1028U);
  return ((sliport_status & 33554432U) != 0U);
}
}
int lancer_initiate_dump(struct be_adapter *adapter )
{
  struct device *dev ;
  int status ;
  bool tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  dev = & (adapter->pdev)->dev;
  tmp = dump_present(adapter);
  if ((int )tmp) {
    _dev_info((struct device const *)dev, "Previous dump not cleared, not forcing dump\n");
    return (-17);
  } else {
  }
  status = lancer_physdev_ctrl(adapter, 6U);
  if (status < 0) {
    dev_err((struct device const *)dev, "FW reset failed\n");
    return (status);
  } else {
  }
  status = lancer_wait_idle(adapter);
  if (status != 0) {
    return (status);
  } else {
  }
  tmp___0 = dump_present(adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_err((struct device const *)dev, "FW dump not generated\n");
    return (-5);
  } else {
  }
  return (0);
}
}
int lancer_delete_dump(struct be_adapter *adapter )
{
  int status ;
  {
  status = lancer_cmd_delete_object(adapter, "/dbg/dump.bin");
  return (status <= 0 ? status : -5);
}
}
int be_cmd_enable_vf(struct be_adapter *adapter , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_enable_disable_vf *req ;
  int status ;
  void *tmp ;
  {
  if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
    return (0);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_enable_disable_vf *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 196, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.domain = domain;
  req->enable = 1U;
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_cmd_intr_set(struct be_adapter *adapter , bool intr_enable )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_intr_set *req ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_intr_set *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 89, 20, wrb, (struct be_dma_mem *)0);
  req->intr_enabled = (u8 )intr_enable;
  status = be_mbox_notify_wait(adapter);
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_get_active_profile(struct be_adapter *adapter , u16 *profile_id )
{
  struct be_cmd_req_get_active_profile *req ;
  struct be_mcc_wrb *wrb ;
  int status ;
  int tmp ;
  void *tmp___0 ;
  struct be_cmd_resp_get_active_profile *resp ;
  void *tmp___1 ;
  {
  tmp = mutex_lock_interruptible_nested(& adapter->mbox_lock, 0U);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  wrb = wrb_from_mbox(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_get_active_profile *)tmp___0;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 167, 20, wrb, (struct be_dma_mem *)0);
  status = be_mbox_notify_wait(adapter);
  if (status == 0) {
    tmp___1 = embedded_payload(wrb);
    resp = (struct be_cmd_resp_get_active_profile *)tmp___1;
    *profile_id = resp->active_profile_id;
  } else {
  }
  err:
  mutex_unlock(& adapter->mbox_lock);
  return (status);
}
}
int be_cmd_set_logical_link_config(struct be_adapter *adapter , int link_state , u8 domain )
{
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_set_ll_link *req ;
  int status ;
  void *tmp ;
  {
  if ((((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) || ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U)) {
    return (-95);
  } else {
  }
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp = embedded_payload(wrb);
  req = (struct be_cmd_req_set_ll_link *)tmp;
  be_wrb_cmd_hdr_prepare(& req->hdr, 1, 80, 20, wrb, (struct be_dma_mem *)0);
  req->hdr.version = 1U;
  req->hdr.domain = domain;
  if (link_state == 1) {
    req->link_config = req->link_config | 1U;
  } else {
  }
  if (link_state == 0) {
    req->link_config = req->link_config | 256U;
  } else {
  }
  status = be_mcc_notify_wait(adapter);
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
int be_roce_mcc_cmd(void *netdev_handle , void *wrb_payload , int wrb_payload_size ,
                    u16 *cmd_status , u16 *ext_status )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_mcc_wrb *wrb ;
  struct be_cmd_req_hdr *hdr ;
  struct be_cmd_req_hdr *req ;
  struct be_cmd_resp_hdr *resp ;
  int status ;
  void *tmp___0 ;
  void *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev_handle);
  adapter = (struct be_adapter *)tmp;
  hdr = (struct be_cmd_req_hdr *)wrb_payload;
  spin_lock_bh(& adapter->mcc_lock);
  wrb = wrb_from_mccq(adapter);
  if ((unsigned long )wrb == (unsigned long )((struct be_mcc_wrb *)0)) {
    status = -16;
    goto err;
  } else {
  }
  tmp___0 = embedded_payload(wrb);
  req = (struct be_cmd_req_hdr *)tmp___0;
  tmp___1 = embedded_payload(wrb);
  resp = (struct be_cmd_resp_hdr *)tmp___1;
  be_wrb_cmd_hdr_prepare(req, (int )hdr->subsystem, (int )hdr->opcode, wrb_payload_size,
                         wrb, (struct be_dma_mem *)0);
  memcpy((void *)req, (void const *)wrb_payload, (size_t )wrb_payload_size);
  swap_dws((void *)req, wrb_payload_size);
  status = be_mcc_notify_wait(adapter);
  if ((unsigned long )cmd_status != (unsigned long )((u16 *)0U)) {
    *cmd_status = (u16 )status;
  } else {
  }
  if ((unsigned long )ext_status != (unsigned long )((u16 *)0U)) {
    *ext_status = 0U;
  } else {
  }
  memcpy(wrb_payload, (void const *)resp, (unsigned long )resp->response_length + 16UL);
  swap_dws(wrb_payload, (int )(resp->response_length + 16U));
  err:
  spin_unlock_bh(& adapter->mcc_lock);
  return (status);
}
}
static char const __kstrtab_be_roce_mcc_cmd[16U] =
  { 'b', 'e', '_', 'r',
        'o', 'c', 'e', '_',
        'm', 'c', 'c', '_',
        'c', 'm', 'd', '\000'};
struct kernel_symbol const __ksymtab_be_roce_mcc_cmd ;
struct kernel_symbol const __ksymtab_be_roce_mcc_cmd = {(unsigned long )(& be_roce_mcc_cmd), (char const *)(& __kstrtab_be_roce_mcc_cmd)};
bool ldv_queue_work_on_47(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_48(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_49(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_50(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_51(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 ) ;
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
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
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
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2L, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
__inline static bool check_privilege(struct be_adapter *adapter , u32 flags )
{
  {
  return ((adapter->cmd_privileges & flags) != 0U);
}
}
static struct be_ethtool_stat const et_stats[37U] =
  { {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 2,
      4, 36},
        {{'r', 'x', '_', 'a', 'l', 'i', 'g', 'n', 'm', 'e', 'n', 't', '_', 's', 'y',
       'm', 'b', 'o', 'l', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 2, 4, 40},
        {{'r', 'x', '_', 'p', 'a', 'u', 's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's',
       '\000'}, 2, 4, 44},
        {{'r', 'x', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l', '_', 'f', 'r', 'a', 'm',
       'e', 's', '\000'}, 2, 4, 52},
        {{'r', 'x', '_', 'i', 'n', '_', 'r', 'a', 'n', 'g', 'e', '_', 'e', 'r', 'r',
       'o', 'r', 's', '\000'}, 2, 4, 56},
        {{'r', 'x', '_', 'o', 'u', 't', '_', 'r', 'a', 'n', 'g', 'e', '_', 'e', 'r',
       'r', 'o', 'r', 's', '\000'}, 2, 4, 60},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', '_', 't', 'o', 'o', '_', 'l', 'o',
       'n', 'g', '\000'}, 2, 4, 64},
        {{'r', 'x', '_', 'a', 'd', 'd', 'r', 'e', 's', 's', '_', 'f', 'i', 'l', 't',
       'e', 'r', 'e', 'd', '\000'}, 2, 4, 68},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'o', 'o', '_',
       's', 'm', 'a', 'l', 'l', '\000'}, 2, 4, 72},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'o', 'o', '_',
       's', 'h', 'o', 'r', 't', '\000'}, 2, 4, 76},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 'h', 'e', 'a', 'd',
       'e', 'r', '_', 't', 'o', 'o', '_', 's', 'm', 'a', 'l', 'l', '\000'}, 2, 4,
      80},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 't', 'c', 'p', '_',
       'l', 'e', 'n', 'g', 't', 'h', '\000'}, 2, 4, 84},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 'p', 'e', 'd', '_', 'r', 'u', 'n', 't',
       '\000'}, 2, 4, 88},
        {{'r', 'x', 'p', 'p', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f',
       'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4, 116},
        {{'r', 'x', '_', 'i', 'n', 'p', 'u', 't', '_', 'f', 'i', 'f', 'o', '_', 'o',
       'v', 'e', 'r', 'f', 'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4,
      120},
        {{'r', 'x', '_', 'i', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm', '_',
       'e', 'r', 'r', 's', '\000'}, 2, 4, 92},
        {{'r', 'x', '_', 't', 'c', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm',
       '_', 'e', 'r', 'r', 's', '\000'}, 2, 4, 96},
        {{'r', 'x', '_', 'u', 'd', 'p', '_', 'c', 'h', 'e', 'c', 'k', 's', 'u', 'm',
       '_', 'e', 'r', 'r', 's', '\000'}, 2, 4, 100},
        {{'t', 'x', '_', 'p', 'a', 'u', 's', 'e', 'f', 'r', 'a', 'm', 'e', 's', '\000'},
      2, 4, 104},
        {{'t', 'x', '_', 'c', 'o', 'n', 't', 'r', 'o', 'l', 'f', 'r', 'a', 'm', 'e',
       's', '\000'}, 2, 4, 112},
        {{'r', 'x', '_', 'p', 'r', 'i', 'o', 'r', 'i', 't', 'y', '_', 'p', 'a', 'u',
       's', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'}, 2, 4, 48},
        {{'t', 'x', '_', 'p', 'r', 'i', 'o', 'r', 'i', 't', 'y', '_', 'p', 'a', 'u',
       's', 'e', 'f', 'r', 'a', 'm', 'e', 's', '\000'}, 2, 4, 108},
        {{'p', 'm', 'e', 'm', '_', 'f', 'i', 'f', 'o', '_', 'o', 'v', 'e', 'r', 'f',
       'l', 'o', 'w', '_', 'd', 'r', 'o', 'p', '\000'}, 2, 4, 124},
        {{'j', 'a', 'b', 'b', 'e', 'r', '_', 'e', 'v', 'e', 'n', 't', 's', '\000'}, 2,
      4, 128},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'p', 'b', 'u',
       'f', '\000'}, 2, 4, 8},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'e', 'r', 'x',
       '_', 'd', 'e', 's', 'c', 'r', '\000'}, 2, 4, 16},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 't', 'p', 'r',
       'e', '_', 'd', 'e', 's', 'c', 'r', '\000'}, 2, 4, 20},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 't', 'o', 'o', '_', 'm', 'a',
       'n', 'y', '_', 'f', 'r', 'a', 'g', 's', '\000'}, 2, 4, 24},
        {{'f', 'o', 'r', 'w', 'a', 'r', 'd', 'e', 'd', '_', 'p', 'a', 'c', 'k', 'e',
       't', 's', '\000'}, 2, 4, 28},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'm', 't', 'u', '\000'}, 2, 4,
      32},
        {{'d', 'm', 'a', '_', 'm', 'a', 'p', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'},
      2, 4, 4},
        {{'e', 't', 'h', '_', 'r', 'e', 'd', '_', 'd', 'r', 'o', 'p', 's', '\000'}, 2,
      4, 0},
        {{'r', 'x', '_', 'r', 'o', 'c', 'e', '_', 'b', 'y', 't', 'e', 's', '_', 'l',
       's', 'd', '\000'}, 2, 4, 132},
        {{'r', 'x', '_', 'r', 'o', 'c', 'e', '_', 'b', 'y', 't', 'e', 's', '_', 'm',
       's', 'd', '\000'}, 2, 4, 136},
        {{'r', 'x', '_', 'r', 'o', 'c', 'e', '_', 'f', 'r', 'a', 'm', 'e', 's', '\000'},
      2, 4, 140},
        {{'r', 'o', 'c', 'e', '_', 'd', 'r', 'o', 'p', 's', '_', 'p', 'a', 'y', 'l',
       'o', 'a', 'd', '_', 'l', 'e', 'n', '\000'}, 2, 4, 144},
        {{'r', 'o', 'c', 'e', '_', 'd', 'r', 'o', 'p', 's', '_', 'c', 'r', 'c', '\000'},
      2, 4, 148}};
static struct be_ethtool_stat const et_rx_stats[8U] =
  { {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 1, 8, 0},
        {{'r', 'x', '_', 'p', 'k', 't', 's', '\000'}, 1, 8, 8},
        {{'r', 'x', '_', 'c', 'o', 'm', 'p', 'l', '\000'}, 1, 4, 28},
        {{'r', 'x', '_', 'c', 'o', 'm', 'p', 'l', '_', 'e', 'r', 'r', '\000'}, 1, 4,
      36},
        {{'r', 'x', '_', 'm', 'c', 'a', 's', 't', '_', 'p', 'k', 't', 's', '\000'}, 1,
      4, 32},
        {{'r', 'x', '_', 'p', 'o', 's', 't', '_', 'f', 'a', 'i', 'l', '\000'}, 1, 4,
      24},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 's', 'k', 'b',
       's', '\000'}, 1, 4, 16},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', 's', '_', 'n', 'o', '_', 'f', 'r', 'a',
       'g', 's', '\000'}, 1, 4, 20}};
static struct be_ethtool_stat const et_tx_stats[12U] =
  { {{'t', 'x', '_', 'c', 'o', 'm', 'p', 'l', '\000'}, 0, 8, 24},
        {{'t', 'x', '_', 'h', 'd', 'r', '_', 'p', 'a', 'r', 's', 'e', '_', 'e', 'r',
       'r', '\000'}, 0, 4, 48},
        {{'t', 'x', '_', 'd', 'm', 'a', '_', 'e', 'r', 'r', '\000'}, 0, 4, 52},
        {{'t', 'x', '_', 's', 'p', 'o', 'o', 'f', '_', 'c', 'h', 'e', 'c', 'k', '_',
       'e', 'r', 'r', '\000'}, 0, 4, 60},
        {{'t', 'x', '_', 't', 's', 'o', '_', 'e', 'r', 'r', '\000'}, 0, 4, 56},
        {{'t', 'x', '_', 'q', 'i', 'n', 'q', '_', 'e', 'r', 'r', '\000'}, 0, 4, 64},
        {{'t', 'x', '_', 'i', 'n', 't', 'e', 'r', 'n', 'a', 'l', '_', 'p', 'a', 'r',
       'i', 't', 'y', '_', 'e', 'r', 'r', '\000'}, 0, 4, 68},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '\000'}, 0, 8, 0},
        {{'t', 'x', '_', 'p', 'k', 't', 's', '\000'}, 0, 8, 8},
        {{'t', 'x', '_', 'r', 'e', 'q', 's', '\000'}, 0, 8, 16},
        {{'t', 'x', '_', 's', 't', 'o', 'p', 's', '\000'}, 0, 4, 40},
        {{'t', 'x', '_', 'd', 'r', 'v', '_', 'd', 'r', 'o', 'p', 's', '\000'}, 0, 4,
      44}};
static char const et_self_tests[5U][32U] = { { 'M', 'A', 'C', ' ',
            'L', 'o', 'o', 'p',
            'b', 'a', 'c', 'k',
            ' ', 't', 'e', 's',
            't', '\000'},
   { 'P', 'H', 'Y', ' ',
            'L', 'o', 'o', 'p',
            'b', 'a', 'c', 'k',
            ' ', 't', 'e', 's',
            't', '\000'},
   { 'E', 'x', 't', 'e',
            'r', 'n', 'a', 'l',
            ' ', 'L', 'o', 'o',
            'p', 'b', 'a', 'c',
            'k', ' ', 't', 'e',
            's', 't', '\000'},
   { 'D', 'D', 'R', ' ',
            'D', 'M', 'A', ' ',
            't', 'e', 's', 't',
            '\000'},
   { 'L', 'i', 'n', 'k',
            ' ', 't', 'e', 's',
            't', '\000'}};
static void be_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  strlcpy((char *)(& drvinfo->driver), "be2net", 32UL);
  strlcpy((char *)(& drvinfo->version), "10.6.0.2", 32UL);
  tmp___0 = memcmp((void const *)(& adapter->fw_ver), (void const *)(& adapter->fw_on_flash),
                   32UL);
  if (tmp___0 == 0) {
    strlcpy((char *)(& drvinfo->fw_version), (char const *)(& adapter->fw_ver),
            32UL);
  } else {
    snprintf((char *)(& drvinfo->fw_version), 32UL, "%s [%s]", (char *)(& adapter->fw_ver),
             (char *)(& adapter->fw_on_flash));
  }
  tmp___1 = pci_name((struct pci_dev const *)adapter->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___1, 32UL);
  drvinfo->testinfo_len = 0U;
  drvinfo->regdump_len = 0U;
  drvinfo->eedump_len = 0U;
  return;
}
}
static u32 lancer_cmd_get_file_len(struct be_adapter *adapter , u8 *file_name )
{
  u32 data_read ;
  u32 eof ;
  u8 addn_status ;
  struct be_dma_mem data_len_cmd ;
  int status ;
  {
  data_read = 0U;
  memset((void *)(& data_len_cmd), 0, 24UL);
  status = lancer_cmd_read_object(adapter, & data_len_cmd, 0U, 0U, (char const *)file_name,
                                  & data_read, & eof, & addn_status);
  return (data_read);
}
}
static int lancer_cmd_read_file(struct be_adapter *adapter , u8 *file_name , u32 buf_len ,
                                void *buf )
{
  struct be_dma_mem read_cmd ;
  u32 read_len ;
  u32 total_read_len ;
  u32 chunk_size ;
  u32 eof ;
  u8 addn_status ;
  int status ;
  u32 __min1 ;
  u32 __min2 ;
  {
  read_len = 0U;
  total_read_len = 0U;
  eof = 0U;
  status = 0;
  read_cmd.size = 32768U;
  read_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )read_cmd.size,
                                    & read_cmd.dma, 32U);
  if ((unsigned long )read_cmd.va == (unsigned long )((void *)0)) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Memory allocation failure while reading dump\n");
    return (-12);
  } else {
  }
  goto ldv_57197;
  ldv_57196:
  __min1 = buf_len - total_read_len;
  __min2 = 32768U;
  chunk_size = __min1 < __min2 ? __min1 : __min2;
  chunk_size = (chunk_size + 3U) & 4294967292U;
  status = lancer_cmd_read_object(adapter, & read_cmd, chunk_size, total_read_len,
                                  (char const *)file_name, & read_len, & eof, & addn_status);
  if (status == 0) {
    memcpy(buf + (unsigned long )total_read_len, (void const *)read_cmd.va, (size_t )read_len);
    total_read_len = total_read_len + read_len;
    eof = eof & 2147483648U;
  } else {
    status = -5;
    goto ldv_57195;
  }
  ldv_57197: ;
  if (total_read_len < buf_len && eof == 0U) {
    goto ldv_57196;
  } else {
  }
  ldv_57195:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )read_cmd.size, read_cmd.va, read_cmd.dma,
                 (struct dma_attrs *)0);
  return (status);
}
}
static int be_get_reg_len(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u32 log_size ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  log_size = 0U;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  if ((unsigned int )adapter->virtfn == 0U) {
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      log_size = lancer_cmd_get_file_len(adapter, (u8 *)"/dbg/dump.bin");
    } else {
      be_cmd_get_reg_len(adapter, & log_size);
    }
  } else {
  }
  return ((int )log_size);
}
}
static void be_get_regs(struct net_device *netdev , struct ethtool_regs *regs , void *buf )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )adapter->virtfn == 0U) {
    memset(buf, 0, (size_t )regs->len);
    if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
      lancer_cmd_read_file(adapter, (u8 *)"/dbg/dump.bin", regs->len, buf);
    } else {
      be_cmd_get_regs(adapter, regs->len, buf);
    }
  } else {
  }
  return;
}
}
static int be_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *et )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_aic_obj *aic ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  aic = (struct be_aic_obj *)(& adapter->aic_obj);
  et->rx_coalesce_usecs = aic->prev_eqd;
  et->rx_coalesce_usecs_high = aic->max_eqd;
  et->rx_coalesce_usecs_low = aic->min_eqd;
  et->tx_coalesce_usecs = aic->prev_eqd;
  et->tx_coalesce_usecs_high = aic->max_eqd;
  et->tx_coalesce_usecs_low = aic->min_eqd;
  et->use_adaptive_rx_coalesce = (__u32 )aic->enable;
  et->use_adaptive_tx_coalesce = (__u32 )aic->enable;
  return (0);
}
}
static int be_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *et )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_aic_obj *aic ;
  struct be_eq_obj *eqo ;
  int i ;
  __u32 _min1 ;
  unsigned int _min2 ;
  __u32 _min1___0 ;
  u32 _min2___0 ;
  __u32 _min1___1 ;
  u32 _min2___1 ;
  u32 _max1 ;
  u32 _max2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  aic = (struct be_aic_obj *)(& adapter->aic_obj);
  i = 0;
  eqo = (struct be_eq_obj *)(& adapter->eq_obj) + (unsigned long )i;
  goto ldv_57236;
  ldv_57235:
  aic->enable = et->use_adaptive_rx_coalesce != 0U;
  _min1 = et->rx_coalesce_usecs_high;
  _min2 = 128U;
  aic->max_eqd = _min1 < _min2 ? _min1 : _min2;
  _min1___0 = et->rx_coalesce_usecs_low;
  _min2___0 = aic->max_eqd;
  aic->min_eqd = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  _min1___1 = et->rx_coalesce_usecs;
  _min2___1 = aic->max_eqd;
  aic->et_eqd = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
  _max1 = aic->et_eqd;
  _max2 = aic->min_eqd;
  aic->et_eqd = _max1 > _max2 ? _max1 : _max2;
  aic = aic + 1;
  i = i + 1;
  eqo = eqo + 1;
  ldv_57236: ;
  if ((int )adapter->num_evt_qs > i) {
    goto ldv_57235;
  } else {
  }
  if (et->use_adaptive_rx_coalesce == 0U && ((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U)) {
    be_eqd_update(adapter, 1);
  } else {
  }
  return (0);
}
}
static void be_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                 uint64_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_rx_obj *rxo ;
  struct be_tx_obj *txo ;
  void *p ;
  unsigned int i ;
  unsigned int j ;
  unsigned int base ;
  unsigned int start ;
  struct be_rx_stats *stats___0 ;
  bool tmp___0 ;
  struct be_tx_stats *stats___1 ;
  bool tmp___1 ;
  bool tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  base = 0U;
  i = 0U;
  goto ldv_57254;
  ldv_57253:
  p = (void *)(& adapter->drv_stats) + (unsigned long )et_stats[i].offset;
  *(data + (unsigned long )i) = (uint64_t )*((u32 *)p);
  i = i + 1U;
  ldv_57254: ;
  if (i <= 36U) {
    goto ldv_57253;
  } else {
  }
  base = base + 37U;
  j = 0U;
  rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )j;
  goto ldv_57269;
  ldv_57268:
  stats___0 = & rxo->stats;
  ldv_57259:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& stats___0->sync));
  *(data + (unsigned long )base) = stats___0->rx_bytes;
  *(data + (unsigned long )(base + 1U)) = stats___0->rx_pkts;
  tmp___0 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& stats___0->sync),
                                      start);
  if ((int )tmp___0) {
    goto ldv_57259;
  } else {
  }
  i = 2U;
  goto ldv_57264;
  ldv_57263:
  p = (void *)stats___0 + (unsigned long )et_rx_stats[i].offset;
  *(data + (unsigned long )(base + i)) = (uint64_t )*((u32 *)p);
  i = i + 1U;
  ldv_57264: ;
  if (i <= 7U) {
    goto ldv_57263;
  } else {
  }
  base = base + 8U;
  j = j + 1U;
  rxo = rxo + 1;
  ldv_57269: ;
  if ((unsigned int )adapter->num_rx_qs > j) {
    goto ldv_57268;
  } else {
  }
  j = 0U;
  txo = (struct be_tx_obj *)(& adapter->tx_obj) + (unsigned long )j;
  goto ldv_57284;
  ldv_57283:
  stats___1 = & txo->stats;
  ldv_57272:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& stats___1->sync_compl));
  *(data + (unsigned long )base) = stats___1->tx_compl;
  tmp___1 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& stats___1->sync_compl),
                                      start);
  if ((int )tmp___1) {
    goto ldv_57272;
  } else {
  }
  ldv_57279:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& stats___1->sync));
  i = 1U;
  goto ldv_57277;
  ldv_57276:
  p = (void *)stats___1 + (unsigned long )et_tx_stats[i].offset;
  *(data + (unsigned long )(base + i)) = et_tx_stats[i].size == 8 ? *((u64 *)p) : (u64 )*((u32 *)p);
  i = i + 1U;
  ldv_57277: ;
  if (i <= 11U) {
    goto ldv_57276;
  } else {
  }
  tmp___2 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& stats___1->sync),
                                      start);
  if ((int )tmp___2) {
    goto ldv_57279;
  } else {
  }
  base = base + 12U;
  j = j + 1U;
  txo = txo + 1;
  ldv_57284: ;
  if ((unsigned int )adapter->num_tx_qs > j) {
    goto ldv_57283;
  } else {
  }
  return;
}
}
static void be_get_stat_strings(struct net_device *netdev , uint32_t stringset , uint8_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int i ;
  int j ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch (stringset) {
  case 1U:
  i = 0;
  goto ldv_57298;
  ldv_57297:
  memcpy((void *)data, (void const *)(& et_stats[i].desc), 32UL);
  data = data + 32UL;
  i = i + 1;
  ldv_57298: ;
  if ((unsigned int )i <= 36U) {
    goto ldv_57297;
  } else {
  }
  i = 0;
  goto ldv_57306;
  ldv_57305:
  j = 0;
  goto ldv_57303;
  ldv_57302:
  sprintf((char *)data, "rxq%d: %s", i, (char const *)(& et_rx_stats[j].desc));
  data = data + 32UL;
  j = j + 1;
  ldv_57303: ;
  if ((unsigned int )j <= 7U) {
    goto ldv_57302;
  } else {
  }
  i = i + 1;
  ldv_57306: ;
  if ((int )adapter->num_rx_qs > i) {
    goto ldv_57305;
  } else {
  }
  i = 0;
  goto ldv_57314;
  ldv_57313:
  j = 0;
  goto ldv_57311;
  ldv_57310:
  sprintf((char *)data, "txq%d: %s", i, (char const *)(& et_tx_stats[j].desc));
  data = data + 32UL;
  j = j + 1;
  ldv_57311: ;
  if ((unsigned int )j <= 11U) {
    goto ldv_57310;
  } else {
  }
  i = i + 1;
  ldv_57314: ;
  if ((int )adapter->num_tx_qs > i) {
    goto ldv_57313;
  } else {
  }
  goto ldv_57316;
  case 0U:
  i = 0;
  goto ldv_57321;
  ldv_57320:
  memcpy((void *)data, (void const *)(& et_self_tests) + (unsigned long )i, 32UL);
  data = data + 32UL;
  i = i + 1;
  ldv_57321: ;
  if ((unsigned int )i <= 4U) {
    goto ldv_57320;
  } else {
  }
  goto ldv_57316;
  }
  ldv_57316: ;
  return;
}
}
static int be_get_sset_count(struct net_device *netdev , int stringset )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch (stringset) {
  case 0: ;
  return (5);
  case 1: ;
  return ((int )(((unsigned int )adapter->num_rx_qs * 8U + (unsigned int )adapter->num_tx_qs * 12U) + 37U));
  default: ;
  return (-22);
  }
}
}
static u32 be_get_port_type(struct be_adapter *adapter )
{
  u32 port ;
  {
  switch ((int )adapter->phy.interface_type) {
  case 7: ;
  case 8: ;
  case 9:
  port = 0U;
  goto ldv_57346;
  case 3: ;
  if (((int )adapter->phy.cable_type & 4) != 0) {
    port = 5U;
  } else {
    port = 3U;
  }
  goto ldv_57346;
  case 10: ;
  if (((int )adapter->phy.cable_type & 8) != 0) {
    port = 5U;
  } else {
    port = 3U;
  }
  goto ldv_57346;
  case 1: ;
  case 2:
  port = 3U;
  goto ldv_57346;
  case 6:
  port = 0U;
  goto ldv_57346;
  default:
  port = 255U;
  }
  ldv_57346: ;
  return (port);
}
}
static u32 convert_to_et_setting(struct be_adapter *adapter , u32 if_speeds )
{
  u32 val ;
  {
  val = 0U;
  switch ((int )adapter->phy.interface_type) {
  case 7: ;
  case 8: ;
  case 9:
  val = val | 128U;
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  if ((if_speeds & 2U) != 0U) {
    val = val | 8U;
  } else {
  }
  if ((int )if_speeds & 1) {
    val = val | 2U;
  } else {
  }
  goto ldv_57361;
  case 5:
  val = val | 65536U;
  if ((if_speeds & 4U) != 0U) {
    val = val | 131072U;
  } else {
  }
  if ((if_speeds & 8U) != 0U) {
    val = val | 262144U;
  } else {
  }
  goto ldv_57361;
  case 12:
  val = val | 65536U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 524288U;
  } else {
  }
  if ((if_speeds & 16U) != 0U) {
    val = val | 4194304U;
  } else {
  }
  goto ldv_57361;
  case 4:
  val = val | 589824U;
  goto ldv_57361;
  case 11:
  val = val | 65536U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 524288U;
  } else {
  }
  if ((if_speeds & 32U) != 0U) {
    val = val | 8388608U;
  } else {
  }
  goto ldv_57361;
  case 10: ;
  if ((if_speeds & 32U) != 0U) {
    switch ((int )adapter->phy.cable_type) {
    case 8:
    val = val | 16777216U;
    goto ldv_57368;
    case 2:
    val = val | 67108864U;
    goto ldv_57368;
    default:
    val = val | 33554432U;
    goto ldv_57368;
    }
    ldv_57368: ;
  } else {
  }
  case 3: ;
  case 1: ;
  case 2:
  val = val | 1024U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 4096U;
  } else {
  }
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  goto ldv_57361;
  case 6:
  val = val | 128U;
  if ((if_speeds & 8U) != 0U) {
    val = val | 4096U;
  } else {
  }
  if ((if_speeds & 4U) != 0U) {
    val = val | 32U;
  } else {
  }
  if ((if_speeds & 2U) != 0U) {
    val = val | 8U;
  } else {
  }
  goto ldv_57361;
  default:
  val = val | 128U;
  }
  ldv_57361: ;
  return (val);
}
}
bool be_pause_supported(struct be_adapter *adapter )
{
  {
  return ((bool )((unsigned int )adapter->phy.interface_type != 3U && (unsigned int )adapter->phy.interface_type != 1U));
}
}
static int be_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u8 link_status ;
  u16 link_speed ;
  int status ;
  u32 auto_speeds ;
  u32 fixed_speeds ;
  u32 tmp___0 ;
  bool tmp___1 ;
  __u32 tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  link_speed = 0U;
  if (adapter->phy.link_speed < 0) {
    status = be_cmd_link_status_query(adapter, & link_speed, & link_status, 0U);
    if (status == 0) {
      be_link_status_update(adapter, (int )link_status);
    } else {
    }
    ethtool_cmd_speed_set(ecmd, (__u32 )link_speed);
    status = be_cmd_get_phy_info(adapter);
    if (status == 0) {
      auto_speeds = (u32 )adapter->phy.auto_speeds_supported;
      fixed_speeds = (u32 )adapter->phy.fixed_speeds_supported;
      be_cmd_query_cable_type(adapter);
      ecmd->supported = convert_to_et_setting(adapter, auto_speeds | fixed_speeds);
      ecmd->advertising = convert_to_et_setting(adapter, auto_speeds);
      tmp___0 = be_get_port_type(adapter);
      ecmd->port = (__u8 )tmp___0;
      if ((unsigned int )adapter->phy.auto_speeds_supported != 0U) {
        ecmd->supported = ecmd->supported | 64U;
        ecmd->autoneg = 1U;
        ecmd->advertising = ecmd->advertising | 64U;
      } else {
      }
      ecmd->supported = ecmd->supported | 8192U;
      tmp___1 = be_pause_supported(adapter);
      if ((int )tmp___1) {
        ecmd->advertising = ecmd->advertising | 8192U;
      } else {
      }
      switch ((int )adapter->phy.interface_type) {
      case 4: ;
      case 5:
      ecmd->transceiver = 0U;
      goto ldv_57391;
      default:
      ecmd->transceiver = 1U;
      goto ldv_57391;
      }
      ldv_57391: ;
    } else {
      ecmd->port = 255U;
      ecmd->autoneg = 0U;
      ecmd->transceiver = 2U;
    }
    tmp___2 = ethtool_cmd_speed((struct ethtool_cmd const *)ecmd);
    adapter->phy.link_speed = (int )tmp___2;
    adapter->phy.port_type = ecmd->port;
    adapter->phy.transceiver = ecmd->transceiver;
    adapter->phy.autoneg = ecmd->autoneg;
    adapter->phy.advertising = ecmd->advertising;
    adapter->phy.supported = ecmd->supported;
  } else {
    ethtool_cmd_speed_set(ecmd, (__u32 )adapter->phy.link_speed);
    ecmd->port = adapter->phy.port_type;
    ecmd->transceiver = adapter->phy.transceiver;
    ecmd->autoneg = adapter->phy.autoneg;
    ecmd->advertising = adapter->phy.advertising;
    ecmd->supported = adapter->phy.supported;
  }
  tmp___3 = netif_carrier_ok((struct net_device const *)netdev);
  ecmd->duplex = (int )tmp___3 ? 1U : 255U;
  ecmd->phy_address = (__u8 )adapter->port_num;
  return (0);
}
}
static void be_get_ringparam(struct net_device *netdev , struct ethtool_ringparam *ring )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  ring->rx_max_pending = (__u32 )adapter->rx_obj[0].q.len;
  ring->rx_pending = (__u32 )adapter->rx_obj[0].q.len;
  ring->tx_max_pending = (__u32 )adapter->tx_obj[0].q.len;
  ring->tx_pending = (__u32 )adapter->tx_obj[0].q.len;
  return;
}
}
static void be_get_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  be_cmd_get_flow_control(adapter, & ecmd->tx_pause, & ecmd->rx_pause);
  ecmd->autoneg = (__u32 )adapter->phy.fc_autoneg;
  return;
}
}
static int be_set_pauseparam(struct net_device *netdev , struct ethtool_pauseparam *ecmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (ecmd->autoneg != (__u32 )adapter->phy.fc_autoneg) {
    return (-22);
  } else {
  }
  status = be_cmd_set_flow_control(adapter, ecmd->tx_pause, ecmd->rx_pause);
  if (status != 0) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "Pause param set failed\n");
    return (status <= 0 ? status : -5);
  } else {
  }
  adapter->tx_fc = ecmd->tx_pause;
  adapter->rx_fc = ecmd->rx_pause;
  return (0);
}
}
static int be_set_phys_id(struct net_device *netdev , enum ethtool_phys_id_state state )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  switch ((unsigned int )state) {
  case 1U:
  be_cmd_get_beacon_state(adapter, (int )adapter->hba_port_num, & adapter->beacon_state);
  return (1);
  case 2U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, 1);
  goto ldv_57416;
  case 3U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, 0);
  goto ldv_57416;
  case 0U:
  be_cmd_set_beacon_state(adapter, (int )adapter->hba_port_num, 0, 0, (int )((u8 )adapter->beacon_state));
  }
  ldv_57416: ;
  return (0);
}
}
static int be_set_dump(struct net_device *netdev , struct ethtool_dump *dump )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct device *dev ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  dev = & (adapter->pdev)->dev;
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    return (-95);
  } else {
    tmp___0 = check_privilege(adapter, 1792U);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      return (-95);
    } else {
    }
  }
  switch (dump->flag) {
  case 1U:
  status = lancer_initiate_dump(adapter);
  if (status == 0) {
    _dev_info((struct device const *)dev, "FW dump initiated successfully\n");
  } else {
  }
  goto ldv_57427;
  case 2U:
  status = lancer_delete_dump(adapter);
  if (status == 0) {
    _dev_info((struct device const *)dev, "FW dump deleted successfully\n");
  } else {
  }
  goto ldv_57427;
  default:
  dev_err((struct device const *)dev, "Invalid dump level: 0x%x\n", dump->flag);
  return (-22);
  }
  ldv_57427: ;
  return (status);
}
}
static void be_get_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((int )adapter->wol_cap & 1) {
    wol->supported = wol->supported | 32U;
    if ((int )adapter->wol_en) {
      wol->wolopts = wol->wolopts | 32U;
    } else {
    }
  } else {
    wol->wolopts = 0U;
  }
  memset((void *)(& wol->sopass), 0, 6UL);
  return;
}
}
static int be_set_wol(struct net_device *netdev , struct ethtool_wolinfo *wol )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((wol->wolopts & 4294967263U) != 0U) {
    return (-95);
  } else {
  }
  if (((int )adapter->wol_cap & 1) == 0) {
    dev_warn((struct device const *)(& (adapter->pdev)->dev), "WOL not supported\n");
    return (-95);
  } else {
  }
  if ((wol->wolopts & 32U) != 0U) {
    adapter->wol_en = 1;
  } else {
    adapter->wol_en = 0;
  }
  return (0);
}
}
static int be_test_ddr_dma(struct be_adapter *adapter )
{
  int ret ;
  int i ;
  struct be_dma_mem ddrdma_cmd ;
  u64 pattern[2U] ;
  {
  pattern[0] = 6510615555426900570ULL;
  pattern[1] = 0xa5a5a5a5a5a5a5a5ULL;
  ddrdma_cmd.size = 8224U;
  ddrdma_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )ddrdma_cmd.size,
                                      & ddrdma_cmd.dma, 208U);
  if ((unsigned long )ddrdma_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_57449;
  ldv_57448:
  ret = be_cmd_ddr_dma_test(adapter, pattern[i], 4096U, & ddrdma_cmd);
  if (ret != 0) {
    goto err;
  } else {
  }
  i = i + 1;
  ldv_57449: ;
  if (i <= 1) {
    goto ldv_57448;
  } else {
  }
  err:
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )ddrdma_cmd.size, ddrdma_cmd.va,
                 ddrdma_cmd.dma, (struct dma_attrs *)0);
  return (ret <= 0 ? ret : -5);
}
}
static u64 be_loopback_test(struct be_adapter *adapter , u8 loopback_type , u64 *status )
{
  int tmp ;
  {
  be_cmd_set_loopback(adapter, (int )adapter->hba_port_num, (int )loopback_type, 1);
  tmp = be_cmd_loopback_test(adapter, (u32 )adapter->hba_port_num, (u32 )loopback_type,
                             1500U, 2U, 2748ULL);
  *status = (u64 )tmp;
  be_cmd_set_loopback(adapter, (int )adapter->hba_port_num, 255, 1);
  return (*status);
}
}
static void be_self_test(struct net_device *netdev , struct ethtool_test *test , u64 *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  u8 link_status ;
  u64 tmp___0 ;
  u64 tmp___1 ;
  u64 tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  link_status = 0U;
  if ((adapter->function_caps & 64U) != 0U) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "Self test not supported\n");
    test->flags = test->flags | 2U;
    return;
  } else {
  }
  memset((void *)data, 0, 40UL);
  if ((int )test->flags & 1) {
    tmp___0 = be_loopback_test(adapter, 0, data);
    if (tmp___0 != 0ULL) {
      test->flags = test->flags | 2U;
    } else {
    }
    tmp___1 = be_loopback_test(adapter, 1, data + 1UL);
    if (tmp___1 != 0ULL) {
      test->flags = test->flags | 2U;
    } else {
    }
    if ((test->flags & 4U) != 0U) {
      tmp___2 = be_loopback_test(adapter, 2, data + 2UL);
      if (tmp___2 != 0ULL) {
        test->flags = test->flags | 2U;
      } else {
      }
      test->flags = test->flags | 8U;
    } else {
    }
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device != 57888U && (unsigned int )(adapter->pdev)->device != 57896U) {
    tmp___3 = be_test_ddr_dma(adapter);
    if (tmp___3 != 0) {
      *(data + 3UL) = 1ULL;
      test->flags = test->flags | 2U;
    } else {
    }
  } else {
  }
  status = be_cmd_link_status_query(adapter, (u16 *)0U, & link_status, 0U);
  if (status != 0) {
    test->flags = test->flags | 2U;
    *(data + 4UL) = 0xffffffffffffffffULL;
  } else
  if ((unsigned int )link_status == 0U) {
    test->flags = test->flags | 2U;
    *(data + 4UL) = 1ULL;
  } else {
  }
  return;
}
}
static int be_do_flash(struct net_device *netdev , struct ethtool_flash *efl )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = be_load_fw(adapter, (u8 *)(& efl->data));
  return (tmp___0);
}
}
static int be_get_eeprom_len(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  u32 tmp___2 ;
  u32 tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (0);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    if ((unsigned int )adapter->virtfn == 0U) {
      tmp___2 = lancer_cmd_get_file_len(adapter, (u8 *)"/vpd/ntr_pf.vpd");
      return ((int )tmp___2);
    } else {
      tmp___3 = lancer_cmd_get_file_len(adapter, (u8 *)"/vpd/ntr_vf.vpd");
      return ((int )tmp___3);
    }
  } else {
    return (1024);
  }
}
}
static int be_read_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                          uint8_t *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  struct be_dma_mem eeprom_cmd ;
  struct be_cmd_resp_seeprom_read *resp ;
  int status ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (eeprom->len == 0U) {
    return (-22);
  } else {
  }
  if ((unsigned int )(adapter->pdev)->device == 57888U || (unsigned int )(adapter->pdev)->device == 57896U) {
    if ((unsigned int )adapter->virtfn == 0U) {
      tmp___0 = lancer_cmd_read_file(adapter, (u8 *)"/vpd/ntr_pf.vpd", eeprom->len,
                                     (void *)data);
      return (tmp___0);
    } else {
      tmp___1 = lancer_cmd_read_file(adapter, (u8 *)"/vpd/ntr_vf.vpd", eeprom->len,
                                     (void *)data);
      return (tmp___1);
    }
  } else {
  }
  eeprom->magic = (__u32 )(((int )(adapter->pdev)->device << 16) | 6562);
  memset((void *)(& eeprom_cmd), 0, 24UL);
  eeprom_cmd.size = 1040U;
  eeprom_cmd.va = dma_zalloc_coherent(& (adapter->pdev)->dev, (size_t )eeprom_cmd.size,
                                      & eeprom_cmd.dma, 208U);
  if ((unsigned long )eeprom_cmd.va == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  status = be_cmd_get_seeprom_data(adapter, & eeprom_cmd);
  if (status == 0) {
    resp = (struct be_cmd_resp_seeprom_read *)eeprom_cmd.va;
    memcpy((void *)data, (void const *)(& resp->seeprom_data) + (unsigned long )eeprom->offset,
             (size_t )eeprom->len);
  } else {
  }
  dma_free_attrs(& (adapter->pdev)->dev, (size_t )eeprom_cmd.size, eeprom_cmd.va,
                 eeprom_cmd.dma, (struct dma_attrs *)0);
  return (status <= 0 ? status : -5);
}
}
static u32 be_get_msg_level(struct net_device *netdev )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  return (adapter->msg_enable);
}
}
static void be_set_msg_level(struct net_device *netdev , u32 level )
{
  struct be_adapter *adapter ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (adapter->msg_enable == level) {
    return;
  } else {
  }
  if (((adapter->msg_enable ^ level) & 8192U) != 0U) {
    if (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U)) {
      be_cmd_set_fw_log_level(adapter, (level & 8192U) != 0U ? 48U : 64U);
    } else {
    }
  } else {
  }
  adapter->msg_enable = level;
  return;
}
}
static u64 be_get_rss_hash_opts(struct be_adapter *adapter , u64 flow_type )
{
  u64 data ;
  {
  data = 0ULL;
  switch (flow_type) {
  case 1ULL: ;
  if ((int )adapter->rss_info.rss_flags & 1) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_info.rss_flags & 2ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_57499;
  case 2ULL: ;
  if ((int )adapter->rss_info.rss_flags & 1) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_info.rss_flags & 16ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_57499;
  case 5ULL: ;
  if ((adapter->rss_info.rss_flags & 4ULL) != 0ULL) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_info.rss_flags & 8ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_57499;
  case 6ULL: ;
  if ((adapter->rss_info.rss_flags & 4ULL) != 0ULL) {
    data = data | 48ULL;
  } else {
  }
  if ((adapter->rss_info.rss_flags & 32ULL) != 0ULL) {
    data = data | 192ULL;
  } else {
  }
  goto ldv_57499;
  }
  ldv_57499: ;
  return (data);
}
}
static int be_get_rxnfc(struct net_device *netdev , struct ethtool_rxnfc *cmd , u32 *rule_locs )
{
  struct be_adapter *adapter ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    _dev_info((struct device const *)(& (adapter->pdev)->dev), "ethtool::get_rxnfc: RX flow hashing is disabled\n");
    return (-22);
  } else {
  }
  switch (cmd->cmd) {
  case 41U:
  cmd->data = be_get_rss_hash_opts(adapter, (u64 )cmd->flow_type);
  goto ldv_57510;
  case 45U:
  cmd->data = (__u64 )((int )adapter->num_rx_qs + -1);
  goto ldv_57510;
  default: ;
  return (-22);
  }
  ldv_57510: ;
  return (0);
}
}
static int be_set_rss_hash_opts(struct be_adapter *adapter , struct ethtool_rxnfc *cmd )
{
  struct be_rx_obj *rxo ;
  int status ;
  int i ;
  int j ;
  u8 rsstable[128U] ;
  u32 rss_flags ;
  bool tmp ;
  {
  status = 0;
  rss_flags = (u32 )adapter->rss_info.rss_flags;
  if (cmd->data != 48ULL && cmd->data != 240ULL) {
    return (-22);
  } else {
  }
  switch (cmd->flow_type) {
  case 1U: ;
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967293U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 3U;
  } else {
  }
  goto ldv_57524;
  case 5U: ;
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967287U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 12U;
  } else {
  }
  goto ldv_57524;
  case 2U: ;
  if (cmd->data == 240ULL && (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return (-22);
  } else {
  }
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967279U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 17U;
  } else {
  }
  goto ldv_57524;
  case 6U: ;
  if (cmd->data == 240ULL && (((unsigned int )(adapter->pdev)->device == 545U || (unsigned int )(adapter->pdev)->device == 1808U) || ((unsigned int )(adapter->pdev)->device == 529U || (unsigned int )(adapter->pdev)->device == 1792U))) {
    return (-22);
  } else {
  }
  if (cmd->data == 48ULL) {
    rss_flags = rss_flags & 4294967263U;
  } else
  if (cmd->data == 240ULL) {
    rss_flags = rss_flags | 36U;
  } else {
  }
  goto ldv_57524;
  default: ;
  return (-22);
  }
  ldv_57524: ;
  if ((u64 )rss_flags == adapter->rss_info.rss_flags) {
    return (status);
  } else {
  }
  tmp = be_multi_rxq((struct be_adapter const *)adapter);
  if ((int )tmp) {
    j = 0;
    goto ldv_57533;
    ldv_57532:
    i = 0;
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )i;
    goto ldv_57531;
    ldv_57530: ;
    if (j + i > 127) {
      goto ldv_57529;
    } else {
    }
    rsstable[j + i] = rxo->rss_id;
    i = i + 1;
    rxo = rxo + 1;
    ldv_57531: ;
    if ((int )adapter->num_rss_qs > i) {
      goto ldv_57530;
    } else {
    }
    ldv_57529:
    j = (int )adapter->num_rss_qs + j;
    ldv_57533: ;
    if (j <= 127) {
      goto ldv_57532;
    } else {
    }
  } else {
  }
  status = be_cmd_rss_config(adapter, (u8 *)(& adapter->rss_info.rsstable), rss_flags,
                             128, (u8 const *)(& adapter->rss_info.rss_hkey));
  if (status == 0) {
    adapter->rss_info.rss_flags = (u64 )rss_flags;
  } else {
  }
  return (status <= 0 ? status : -5);
}
}
static int be_set_rxnfc(struct net_device *netdev , struct ethtool_rxnfc *cmd )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  status = 0;
  tmp___0 = be_multi_rxq((struct be_adapter const *)adapter);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_err((struct device const *)(& (adapter->pdev)->dev), "ethtool::set_rxnfc: RX flow hashing is disabled\n");
    return (-22);
  } else {
  }
  switch (cmd->cmd) {
  case 42U:
  status = be_set_rss_hash_opts(adapter, cmd);
  goto ldv_57542;
  default: ;
  return (-22);
  }
  ldv_57542: ;
  return (status);
}
}
static void be_get_channels(struct net_device *netdev , struct ethtool_channels *ch )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u16 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  ch->combined_count = (__u32 )adapter->num_evt_qs;
  tmp___0 = be_max_qs(adapter);
  ch->max_combined = (__u32 )tmp___0;
  return;
}
}
static int be_set_channels(struct net_device *netdev , struct ethtool_channels *ch )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  u16 tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if (((ch->rx_count != 0U || ch->tx_count != 0U) || ch->other_count != 0U) || ch->combined_count == 0U) {
    return (-22);
  } else {
    tmp___0 = be_max_qs(adapter);
    if (ch->combined_count > (__u32 )tmp___0) {
      return (-22);
    } else {
    }
  }
  adapter->cfg_num_qs = (u16 )ch->combined_count;
  status = be_update_queues(adapter);
  return (status <= 0 ? status : -5);
}
}
static u32 be_get_rxfh_indir_size(struct net_device *netdev )
{
  {
  return (128U);
}
}
static u32 be_get_rxfh_key_size(struct net_device *netdev )
{
  {
  return (40U);
}
}
static int be_get_rxfh(struct net_device *netdev , u32 *indir , u8 *hkey , u8 *hfunc )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int i ;
  struct rss_info *rss ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  rss = & adapter->rss_info;
  if ((unsigned long )indir != (unsigned long )((u32 *)0U)) {
    i = 0;
    goto ldv_57571;
    ldv_57570:
    *(indir + (unsigned long )i) = (u32 )rss->rss_queue[i];
    i = i + 1;
    ldv_57571: ;
    if (i <= 127) {
      goto ldv_57570;
    } else {
    }
  } else {
  }
  if ((unsigned long )hkey != (unsigned long )((u8 *)0U)) {
    memcpy((void *)hkey, (void const *)(& rss->rss_hkey), 40UL);
  } else {
  }
  if ((unsigned long )hfunc != (unsigned long )((u8 *)0U)) {
    *hfunc = 1U;
  } else {
  }
  return (0);
}
}
static int be_set_rxfh(struct net_device *netdev , u32 const *indir , u8 const *hkey ,
                       u8 const hfunc )
{
  int rc ;
  int i ;
  int j ;
  struct be_adapter *adapter ;
  void *tmp ;
  u8 rsstable[128U] ;
  struct be_rx_obj *rxo ;
  {
  rc = 0;
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  if ((unsigned int )((unsigned char )hfunc) != 0U && (unsigned int )((unsigned char )hfunc) != 1U) {
    return (-95);
  } else {
  }
  if ((unsigned long )indir != (unsigned long )((u32 const *)0U)) {
    i = 0;
    goto ldv_57586;
    ldv_57585:
    j = (int )*(indir + (unsigned long )i);
    rxo = (struct be_rx_obj *)(& adapter->rx_obj) + (unsigned long )j;
    rsstable[i] = rxo->rss_id;
    adapter->rss_info.rss_queue[i] = (u8 )j;
    i = i + 1;
    ldv_57586: ;
    if (i <= 127) {
      goto ldv_57585;
    } else {
    }
  } else {
    memcpy((void *)(& rsstable), (void const *)(& adapter->rss_info.rsstable),
             128UL);
  }
  if ((unsigned long )hkey == (unsigned long )((u8 const *)0U)) {
    hkey = (u8 const *)(& adapter->rss_info.rss_hkey);
  } else {
  }
  rc = be_cmd_rss_config(adapter, (u8 *)(& rsstable), (u32 )adapter->rss_info.rss_flags,
                         128, hkey);
  if (rc != 0) {
    adapter->rss_info.rss_flags = 0ULL;
    return (-5);
  } else {
  }
  memcpy((void *)(& adapter->rss_info.rss_hkey), (void const *)hkey, 40UL);
  memcpy((void *)(& adapter->rss_info.rsstable), (void const *)(& rsstable), 128UL);
  return (0);
}
}
static int be_get_module_info(struct net_device *netdev , struct ethtool_modinfo *modinfo )
{
  struct be_adapter *adapter ;
  void *tmp ;
  u8 page_data[256U] ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-95);
  } else {
  }
  status = be_cmd_read_port_transceiver_data(adapter, 160, (u8 *)(& page_data));
  if (status == 0) {
    if ((unsigned int )page_data[94] == 0U) {
      modinfo->type = 1U;
      modinfo->eeprom_len = 256U;
    } else {
      modinfo->type = 2U;
      modinfo->eeprom_len = 512U;
    }
  } else {
  }
  return (status <= 0 ? status : -5);
}
}
static int be_get_module_eeprom(struct net_device *netdev , struct ethtool_eeprom *eeprom ,
                                u8 *data )
{
  struct be_adapter *adapter ;
  void *tmp ;
  int status ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  adapter = (struct be_adapter *)tmp;
  tmp___0 = check_privilege(adapter, 1792U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return (-95);
  } else {
  }
  status = be_cmd_read_port_transceiver_data(adapter, 160, data);
  if (status != 0) {
    goto err;
  } else {
  }
  if (eeprom->offset + eeprom->len > 256U) {
    status = be_cmd_read_port_transceiver_data(adapter, 162, data + 256UL);
    if (status != 0) {
      goto err;
    } else {
    }
  } else {
  }
  if (eeprom->offset != 0U) {
    memcpy((void *)data, (void const *)data + (unsigned long )eeprom->offset,
             (size_t )eeprom->len);
  } else {
  }
  err: ;
  return (status <= 0 ? status : -5);
}
}
struct ethtool_ops const be_ethtool_ops =
     {& be_get_settings, 0, & be_get_drvinfo, & be_get_reg_len, & be_get_regs, & be_get_wol,
    & be_set_wol, & be_get_msg_level, & be_set_msg_level, 0, & ethtool_op_get_link,
    & be_get_eeprom_len, & be_read_eeprom, 0, & be_get_coalesce, & be_set_coalesce,
    & be_get_ringparam, 0, & be_get_pauseparam, & be_set_pauseparam, & be_self_test,
    & be_get_stat_strings, & be_set_phys_id, & be_get_ethtool_stats, 0, 0, 0, 0, & be_get_sset_count,
    & be_get_rxnfc, & be_set_rxnfc, & be_do_flash, 0, & be_get_rxfh_key_size, & be_get_rxfh_indir_size,
    & be_get_rxfh, & be_set_rxfh, & be_get_channels, & be_set_channels, 0, 0, & be_set_dump,
    0, & be_get_module_info, & be_get_module_eeprom, 0, 0, 0, 0};
void ldv_initialize_ethtool_ops_5(void)
{
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  {
  tmp = ldv_init_zalloc(36UL);
  be_ethtool_ops_group2 = (struct ethtool_channels *)tmp;
  tmp___0 = ldv_init_zalloc(92UL);
  be_ethtool_ops_group3 = (struct ethtool_coalesce *)tmp___0;
  tmp___1 = ldv_init_zalloc(3008UL);
  be_ethtool_ops_group6 = (struct net_device *)tmp___1;
  tmp___2 = ldv_init_zalloc(16UL);
  be_ethtool_ops_group0 = (struct ethtool_eeprom *)tmp___2;
  tmp___3 = ldv_init_zalloc(192UL);
  be_ethtool_ops_group4 = (struct ethtool_rxnfc *)tmp___3;
  tmp___4 = ldv_init_zalloc(20UL);
  be_ethtool_ops_group5 = (struct ethtool_wolinfo *)tmp___4;
  tmp___5 = ldv_init_zalloc(16UL);
  be_ethtool_ops_group1 = (struct ethtool_pauseparam *)tmp___5;
  return;
}
}
void ldv_main_exported_5(void)
{
  u64 *ldvarg47 ;
  void *tmp ;
  u32 ldvarg52 ;
  u32 *ldvarg61 ;
  void *tmp___0 ;
  struct ethtool_test *ldvarg54 ;
  void *tmp___1 ;
  struct ethtool_stats *ldvarg48 ;
  void *tmp___2 ;
  struct ethtool_dump *ldvarg68 ;
  void *tmp___3 ;
  u8 ldvarg63 ;
  void *ldvarg45 ;
  void *tmp___4 ;
  struct ethtool_flash *ldvarg44 ;
  void *tmp___5 ;
  u32 ldvarg55 ;
  u8 *ldvarg64 ;
  void *tmp___6 ;
  struct ethtool_ringparam *ldvarg66 ;
  void *tmp___7 ;
  u64 *ldvarg53 ;
  void *tmp___8 ;
  int ldvarg58 ;
  struct ethtool_cmd *ldvarg57 ;
  void *tmp___9 ;
  u32 *ldvarg65 ;
  void *tmp___10 ;
  struct ethtool_regs *ldvarg46 ;
  void *tmp___11 ;
  struct ethtool_modinfo *ldvarg50 ;
  void *tmp___12 ;
  enum ethtool_phys_id_state ldvarg62 ;
  struct ethtool_drvinfo *ldvarg49 ;
  void *tmp___13 ;
  u8 *ldvarg56 ;
  void *tmp___14 ;
  u8 *ldvarg59 ;
  void *tmp___15 ;
  u8 *ldvarg43 ;
  void *tmp___16 ;
  u8 *ldvarg60 ;
  void *tmp___17 ;
  u32 *ldvarg67 ;
  void *tmp___18 ;
  u8 *ldvarg51 ;
  void *tmp___19 ;
  int tmp___20 ;
  {
  tmp = ldv_init_zalloc(8UL);
  ldvarg47 = (u64 *)tmp;
  tmp___0 = ldv_init_zalloc(4UL);
  ldvarg61 = (u32 *)tmp___0;
  tmp___1 = ldv_init_zalloc(16UL);
  ldvarg54 = (struct ethtool_test *)tmp___1;
  tmp___2 = ldv_init_zalloc(8UL);
  ldvarg48 = (struct ethtool_stats *)tmp___2;
  tmp___3 = ldv_init_zalloc(16UL);
  ldvarg68 = (struct ethtool_dump *)tmp___3;
  tmp___4 = ldv_init_zalloc(1UL);
  ldvarg45 = tmp___4;
  tmp___5 = ldv_init_zalloc(136UL);
  ldvarg44 = (struct ethtool_flash *)tmp___5;
  tmp___6 = ldv_init_zalloc(1UL);
  ldvarg64 = (u8 *)tmp___6;
  tmp___7 = ldv_init_zalloc(36UL);
  ldvarg66 = (struct ethtool_ringparam *)tmp___7;
  tmp___8 = ldv_init_zalloc(8UL);
  ldvarg53 = (u64 *)tmp___8;
  tmp___9 = ldv_init_zalloc(44UL);
  ldvarg57 = (struct ethtool_cmd *)tmp___9;
  tmp___10 = ldv_init_zalloc(4UL);
  ldvarg65 = (u32 *)tmp___10;
  tmp___11 = ldv_init_zalloc(12UL);
  ldvarg46 = (struct ethtool_regs *)tmp___11;
  tmp___12 = ldv_init_zalloc(44UL);
  ldvarg50 = (struct ethtool_modinfo *)tmp___12;
  tmp___13 = ldv_init_zalloc(196UL);
  ldvarg49 = (struct ethtool_drvinfo *)tmp___13;
  tmp___14 = ldv_init_zalloc(1UL);
  ldvarg56 = (u8 *)tmp___14;
  tmp___15 = ldv_init_zalloc(1UL);
  ldvarg59 = (u8 *)tmp___15;
  tmp___16 = ldv_init_zalloc(1UL);
  ldvarg43 = (u8 *)tmp___16;
  tmp___17 = ldv_init_zalloc(1UL);
  ldvarg60 = (u8 *)tmp___17;
  tmp___18 = ldv_init_zalloc(4UL);
  ldvarg67 = (u32 *)tmp___18;
  tmp___19 = ldv_init_zalloc(1UL);
  ldvarg51 = (u8 *)tmp___19;
  ldv_memset((void *)(& ldvarg52), 0, 4UL);
  ldv_memset((void *)(& ldvarg63), 0, 1UL);
  ldv_memset((void *)(& ldvarg55), 0, 4UL);
  ldv_memset((void *)(& ldvarg58), 0, 4UL);
  ldv_memset((void *)(& ldvarg62), 0, 4UL);
  tmp___20 = __VERIFIER_nondet_int();
  switch (tmp___20) {
  case 0: ;
  if (ldv_state_variable_5 == 1) {
    be_set_dump(be_ethtool_ops_group6, ldvarg68);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 1: ;
  if (ldv_state_variable_5 == 1) {
    be_set_rxnfc(be_ethtool_ops_group6, be_ethtool_ops_group4);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 2: ;
  if (ldv_state_variable_5 == 1) {
    be_get_rxnfc(be_ethtool_ops_group6, be_ethtool_ops_group4, ldvarg67);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 3: ;
  if (ldv_state_variable_5 == 1) {
    be_get_ringparam(be_ethtool_ops_group6, ldvarg66);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 4: ;
  if (ldv_state_variable_5 == 1) {
    be_set_rxfh(be_ethtool_ops_group6, (u32 const *)ldvarg65, (u8 const *)ldvarg64,
                (int )ldvarg63);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 5: ;
  if (ldv_state_variable_5 == 1) {
    be_set_phys_id(be_ethtool_ops_group6, ldvarg62);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 6: ;
  if (ldv_state_variable_5 == 1) {
    be_get_pauseparam(be_ethtool_ops_group6, be_ethtool_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 7: ;
  if (ldv_state_variable_5 == 1) {
    be_set_channels(be_ethtool_ops_group6, be_ethtool_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 8: ;
  if (ldv_state_variable_5 == 1) {
    be_get_rxfh(be_ethtool_ops_group6, ldvarg61, ldvarg60, ldvarg59);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 9: ;
  if (ldv_state_variable_5 == 1) {
    be_get_sset_count(be_ethtool_ops_group6, ldvarg58);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 10: ;
  if (ldv_state_variable_5 == 1) {
    be_get_settings(be_ethtool_ops_group6, ldvarg57);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 11: ;
  if (ldv_state_variable_5 == 1) {
    be_set_coalesce(be_ethtool_ops_group6, be_ethtool_ops_group3);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 12: ;
  if (ldv_state_variable_5 == 1) {
    be_get_module_eeprom(be_ethtool_ops_group6, be_ethtool_ops_group0, ldvarg56);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 13: ;
  if (ldv_state_variable_5 == 1) {
    be_set_msg_level(be_ethtool_ops_group6, ldvarg55);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 14: ;
  if (ldv_state_variable_5 == 1) {
    be_get_eeprom_len(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 15: ;
  if (ldv_state_variable_5 == 1) {
    be_self_test(be_ethtool_ops_group6, ldvarg54, ldvarg53);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 16: ;
  if (ldv_state_variable_5 == 1) {
    be_get_stat_strings(be_ethtool_ops_group6, ldvarg52, ldvarg51);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 17: ;
  if (ldv_state_variable_5 == 1) {
    be_get_module_info(be_ethtool_ops_group6, ldvarg50);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 18: ;
  if (ldv_state_variable_5 == 1) {
    be_get_rxfh_key_size(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 19: ;
  if (ldv_state_variable_5 == 1) {
    be_get_channels(be_ethtool_ops_group6, be_ethtool_ops_group2);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 20: ;
  if (ldv_state_variable_5 == 1) {
    ethtool_op_get_link(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 21: ;
  if (ldv_state_variable_5 == 1) {
    be_get_drvinfo(be_ethtool_ops_group6, ldvarg49);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 22: ;
  if (ldv_state_variable_5 == 1) {
    be_set_pauseparam(be_ethtool_ops_group6, be_ethtool_ops_group1);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 23: ;
  if (ldv_state_variable_5 == 1) {
    be_get_ethtool_stats(be_ethtool_ops_group6, ldvarg48, ldvarg47);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 24: ;
  if (ldv_state_variable_5 == 1) {
    be_get_coalesce(be_ethtool_ops_group6, be_ethtool_ops_group3);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 25: ;
  if (ldv_state_variable_5 == 1) {
    be_get_regs(be_ethtool_ops_group6, ldvarg46, ldvarg45);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 26: ;
  if (ldv_state_variable_5 == 1) {
    be_get_rxfh_indir_size(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 27: ;
  if (ldv_state_variable_5 == 1) {
    be_set_wol(be_ethtool_ops_group6, be_ethtool_ops_group5);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 28: ;
  if (ldv_state_variable_5 == 1) {
    be_do_flash(be_ethtool_ops_group6, ldvarg44);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 29: ;
  if (ldv_state_variable_5 == 1) {
    be_read_eeprom(be_ethtool_ops_group6, be_ethtool_ops_group0, ldvarg43);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 30: ;
  if (ldv_state_variable_5 == 1) {
    be_get_wol(be_ethtool_ops_group6, be_ethtool_ops_group5);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 31: ;
  if (ldv_state_variable_5 == 1) {
    be_get_msg_level(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  case 32: ;
  if (ldv_state_variable_5 == 1) {
    be_get_reg_len(be_ethtool_ops_group6);
    ldv_state_variable_5 = 1;
  } else {
  }
  goto ldv_57637;
  default:
  ldv_stop();
  }
  ldv_57637: ;
  return;
}
}
bool ldv_queue_work_on_61(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_62(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_63(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_64(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_65(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 ) ;
bool ldv_queue_delayed_work_on_76(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
bool ldv_queue_delayed_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 ) ;
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 ) ;
__inline static bool netif_oper_up(struct net_device const *dev )
{
  {
  return ((bool )((unsigned int )((unsigned char )dev->operstate) == 6U || (unsigned int )((unsigned char )dev->operstate) == 0U));
}
}
int be_roce_register_driver(struct ocrdma_driver *drv ) ;
void be_roce_unregister_driver(struct ocrdma_driver *drv ) ;
static struct ocrdma_driver *ocrdma_drv ;
static struct list_head be_adapter_list = {& be_adapter_list, & be_adapter_list};
static struct mutex be_adapter_list_lock = {{1}, {{{{{0}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "be_adapter_list_lock.wait_lock",
                                                          0, 0UL}}}}, {& be_adapter_list_lock.wait_list,
                                                                       & be_adapter_list_lock.wait_list},
    0, (void *)(& be_adapter_list_lock), {0, {0, 0}, "be_adapter_list_lock", 0, 0UL}};
static void _be_roce_dev_add(struct be_adapter *adapter )
{
  struct be_dev_info dev_info ;
  int i ;
  int num_vec ;
  struct pci_dev *pdev ;
  int _min1 ;
  int _min2 ;
  {
  pdev = adapter->pdev;
  if ((unsigned long )ocrdma_drv == (unsigned long )((struct ocrdma_driver *)0)) {
    return;
  } else {
  }
  if (ocrdma_drv->be_abi_version != 1U) {
    dev_warn((struct device const *)(& pdev->dev), "Cannot initialize RoCE due to ocrdma ABI mismatch\n");
    return;
  } else {
  }
  if ((unsigned int )pdev->device == 1824U) {
    if ((unsigned int )adapter->num_msix_vec == 0U) {
      return;
    } else {
    }
    dev_info.dpp_unmapped_addr = pdev->resource[2].start;
    dev_info.dpp_unmapped_len = pdev->resource[2].start != 0ULL || pdev->resource[2].end != pdev->resource[2].start ? ((u32 )pdev->resource[2].end - (u32 )pdev->resource[2].start) + 1U : 0U;
  } else {
    dev_info.dpp_unmapped_addr = 0ULL;
    dev_info.dpp_unmapped_len = 0U;
  }
  dev_info.pdev = adapter->pdev;
  dev_info.db = adapter->db;
  dev_info.unmapped_db = adapter->roce_db.io_addr;
  dev_info.db_page_size = adapter->roce_db.size;
  dev_info.db_total_size = adapter->roce_db.total_size;
  dev_info.netdev = adapter->netdev;
  memcpy((void *)(& dev_info.mac_addr), (void const *)(adapter->netdev)->dev_addr,
           6UL);
  dev_info.dev_family = adapter->sli_family;
  if ((unsigned int )adapter->num_msix_vec != 0U) {
    num_vec = (int )((u32 )adapter->num_msix_vec + adapter->num_msix_roce_vec);
    dev_info.intr_mode = 0;
    _min1 = num_vec;
    _min2 = 32;
    dev_info.msix.num_vectors = _min1 < _min2 ? _min1 : _min2;
    dev_info.msix.start_vector = (int )adapter->num_evt_qs;
    i = 0;
    goto ldv_57167;
    ldv_57166:
    dev_info.msix.vector_list[i] = adapter->msix_entries[i].vector;
    i = i + 1;
    ldv_57167: ;
    if (dev_info.msix.num_vectors > i) {
      goto ldv_57166;
    } else {
    }
  } else {
    dev_info.msix.num_vectors = 0;
    dev_info.intr_mode = 1;
  }
  adapter->ocrdma_dev = (*(ocrdma_drv->add))(& dev_info);
  return;
}
}
void be_roce_dev_add(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    INIT_LIST_HEAD(& adapter->entry);
    mutex_lock_nested(& be_adapter_list_lock, 0U);
    list_add_tail(& adapter->entry, & be_adapter_list);
    _be_roce_dev_add(adapter);
    mutex_unlock(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
static void _be_roce_dev_remove(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )ocrdma_drv->remove != (unsigned long )((void (*)(struct ocrdma_dev * ))0)) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) {
    (*(ocrdma_drv->remove))(adapter->ocrdma_dev);
  } else {
  }
  adapter->ocrdma_dev = (struct ocrdma_dev *)0;
  return;
}
}
void be_roce_dev_remove(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    mutex_lock_nested(& be_adapter_list_lock, 0U);
    _be_roce_dev_remove(adapter);
    list_del(& adapter->entry);
    mutex_unlock(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
static void _be_roce_dev_open(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) && (unsigned long )ocrdma_drv->state_change_handler != (unsigned long )((void (*)(struct ocrdma_dev * ,
                                                                                                                                                                                                                                                       u32 ))0)) {
    (*(ocrdma_drv->state_change_handler))(adapter->ocrdma_dev, 0U);
  } else {
  }
  return;
}
}
void be_roce_dev_open(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    mutex_lock_nested(& be_adapter_list_lock, 0U);
    _be_roce_dev_open(adapter);
    mutex_unlock(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
static void _be_roce_dev_close(struct be_adapter *adapter )
{
  {
  if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) && (unsigned long )ocrdma_drv->state_change_handler != (unsigned long )((void (*)(struct ocrdma_dev * ,
                                                                                                                                                                                                                                                       u32 ))0)) {
    (*(ocrdma_drv->state_change_handler))(adapter->ocrdma_dev, 1U);
  } else {
  }
  return;
}
}
void be_roce_dev_close(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    mutex_lock_nested(& be_adapter_list_lock, 0U);
    _be_roce_dev_close(adapter);
    mutex_unlock(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
void be_roce_dev_shutdown(struct be_adapter *adapter )
{
  {
  if (((unsigned int )(adapter->pdev)->device == 1824U || (unsigned int )(adapter->pdev)->device == 1832U) && (adapter->function_mode & 4U) != 0U) {
    mutex_lock_nested(& be_adapter_list_lock, 0U);
    if (((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0) && (unsigned long )adapter->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) && (unsigned long )ocrdma_drv->state_change_handler != (unsigned long )((void (*)(struct ocrdma_dev * ,
                                                                                                                                                                                                                                                         u32 ))0)) {
      (*(ocrdma_drv->state_change_handler))(adapter->ocrdma_dev, 2U);
    } else {
    }
    mutex_unlock(& be_adapter_list_lock);
  } else {
  }
  return;
}
}
int be_roce_register_driver(struct ocrdma_driver *drv )
{
  struct be_adapter *dev ;
  struct list_head const *__mptr ;
  struct net_device *netdev ;
  bool tmp ;
  bool tmp___0 ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& be_adapter_list_lock, 0U);
  if ((unsigned long )ocrdma_drv != (unsigned long )((struct ocrdma_driver *)0)) {
    mutex_unlock(& be_adapter_list_lock);
    return (-22);
  } else {
  }
  ocrdma_drv = drv;
  __mptr = (struct list_head const *)be_adapter_list.next;
  dev = (struct be_adapter *)__mptr + 0xffffffffffeb8130UL;
  goto ldv_57203;
  ldv_57202:
  _be_roce_dev_add(dev);
  netdev = dev->netdev;
  tmp = netif_running((struct net_device const *)netdev);
  if ((int )tmp) {
    tmp___0 = netif_oper_up((struct net_device const *)netdev);
    if ((int )tmp___0) {
      _be_roce_dev_open(dev);
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->entry.next;
  dev = (struct be_adapter *)__mptr___0 + 0xffffffffffeb8130UL;
  ldv_57203: ;
  if ((unsigned long )(& dev->entry) != (unsigned long )(& be_adapter_list)) {
    goto ldv_57202;
  } else {
  }
  mutex_unlock(& be_adapter_list_lock);
  return (0);
}
}
static char const __kstrtab_be_roce_register_driver[24U] =
  { 'b', 'e', '_', 'r',
        'o', 'c', 'e', '_',
        'r', 'e', 'g', 'i',
        's', 't', 'e', 'r',
        '_', 'd', 'r', 'i',
        'v', 'e', 'r', '\000'};
struct kernel_symbol const __ksymtab_be_roce_register_driver ;
struct kernel_symbol const __ksymtab_be_roce_register_driver = {(unsigned long )(& be_roce_register_driver), (char const *)(& __kstrtab_be_roce_register_driver)};
void be_roce_unregister_driver(struct ocrdma_driver *drv )
{
  struct be_adapter *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  mutex_lock_nested(& be_adapter_list_lock, 0U);
  __mptr = (struct list_head const *)be_adapter_list.next;
  dev = (struct be_adapter *)__mptr + 0xffffffffffeb8130UL;
  goto ldv_57221;
  ldv_57220: ;
  if ((unsigned long )dev->ocrdma_dev != (unsigned long )((struct ocrdma_dev *)0)) {
    _be_roce_dev_remove(dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->entry.next;
  dev = (struct be_adapter *)__mptr___0 + 0xffffffffffeb8130UL;
  ldv_57221: ;
  if ((unsigned long )(& dev->entry) != (unsigned long )(& be_adapter_list)) {
    goto ldv_57220;
  } else {
  }
  ocrdma_drv = (struct ocrdma_driver *)0;
  mutex_unlock(& be_adapter_list_lock);
  return;
}
}
static char const __kstrtab_be_roce_unregister_driver[26U] =
  { 'b', 'e', '_', 'r',
        'o', 'c', 'e', '_',
        'u', 'n', 'r', 'e',
        'g', 'i', 's', 't',
        'e', 'r', '_', 'd',
        'r', 'i', 'v', 'e',
        'r', '\000'};
struct kernel_symbol const __ksymtab_be_roce_unregister_driver ;
struct kernel_symbol const __ksymtab_be_roce_unregister_driver = {(unsigned long )(& be_roce_unregister_driver), (char const *)(& __kstrtab_be_roce_unregister_driver)};
bool ldv_queue_work_on_75(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_delayed_work_on_76(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___0 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
}
}
bool ldv_queue_work_on_77(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                          struct work_struct *ldv_func_arg3 )
{
  ldv_func_ret_type___1 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  activate_work_3(ldv_func_arg3, 2);
  return (ldv_func_res);
}
}
void ldv_flush_workqueue_78(struct workqueue_struct *ldv_func_arg1 )
{
  {
  flush_workqueue(ldv_func_arg1);
  call_and_disable_all_3(2);
  return;
}
}
bool ldv_queue_delayed_work_on_79(int ldv_func_arg1 , struct workqueue_struct *ldv_func_arg2 ,
                                  struct delayed_work *ldv_func_arg3 , unsigned long ldv_func_arg4 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  bool tmp ;
  {
  tmp = queue_delayed_work_on(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3, ldv_func_arg4);
  ldv_func_res = tmp;
  activate_work_3(& ldv_func_arg3->work, 2);
  return (ldv_func_res);
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
int __VERIFIER_nondet_int(void);
int ___pskb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
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
void __local_bh_disable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __local_bh_enable_ip(unsigned long arg0, unsigned int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _dev_info(const struct device *arg0, const char *arg1, ...) {
  return;
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
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return ldv_malloc(sizeof(struct net_device));
}
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(struct page));
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int cpumask_local_spread(unsigned int arg0, int arg1) {
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
void dev_err(const struct device *arg0, const char *arg1, ...) {
  return;
}
void dev_warn(const struct device *arg0, const char *arg1, ...) {
  return;
}
struct device *devm_hwmon_device_register_with_groups(struct device *arg0, const char *arg1, void *arg2, const struct attribute_group **arg3) {
  return ldv_malloc(sizeof(struct device));
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
void dump_page(struct page *arg0, const char *arg1) {
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
void flush_workqueue(struct workqueue_struct *arg0) {
  return;
}
void free_cpumask_var(cpumask_var_t arg0) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int irq_set_affinity_hint(unsigned int arg0, const struct cpumask *arg1) {
  return __VERIFIER_nondet_int();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int jiffies_to_msecs(const unsigned long arg0) {
  return __VERIFIER_nondet_uint();
}
void kfree_skb(struct sk_buff *arg0) {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_9() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_resume_early_6() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_7() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_suspend_late_6() {
  return __VERIFIER_nondet_int();
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
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msleep_interruptible(unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
int __VERIFIER_nondet_int(void);
int mutex_lock_interruptible_nested(struct mutex *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
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
struct sk_buff *napi_get_frags(struct napi_struct *arg0) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_frags(struct napi_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void napi_hash_add(struct napi_struct *arg0) {
  return;
}
void napi_hash_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int ndo_dflt_bridge_getlink(struct sk_buff *arg0, u32 arg1, u32 arg2, struct net_device *arg3, u16 arg4, u32 arg5, u32 arg6, int arg7, u32 arg8, int (*arg9)(struct sk_buff *, struct net_device *, u32 )) {
  return __VERIFIER_nondet_int();
}
void netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return;
}
void netdev_rss_key_fill(void *arg0, size_t arg1) {
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
int __VERIFIER_nondet_int(void);
int netif_receive_skb_sk(struct sock *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_rx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_real_num_tx_queues(struct net_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netif_set_xps_queue(struct net_device *arg0, const struct cpumask *arg1, u16 arg2) {
  return __VERIFIER_nondet_int();
}
void netif_wake_subqueue(struct net_device *arg0, u16 arg1) {
  return;
}
struct nlattr *nla_find(const struct nlattr *arg0, int arg1, int arg2) {
  return ldv_malloc(sizeof(struct nlattr));
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_cleanup_aer_uncorrect_error_status(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_disable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_disable_sriov(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix_range(struct pci_dev *arg0, struct msix_entry *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_pcie_error_reporting(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_sriov(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return ldv_malloc(arg2);
}
void pci_iounmap(struct pci_dev *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_num_vf(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
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
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_sriov_get_totalvfs(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_sriov_set_totalvfs(struct pci_dev *arg0, u16 arg1) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_vfs_assigned(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pskb_expand_head(struct sk_buff *arg0, int arg1, int arg2, gfp_t arg3) {
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
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
struct sk_buff *skb_clone(struct sk_buff *arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct sk_buff));
}
int __VERIFIER_nondet_int(void);
int skb_pad(struct sk_buff *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
unsigned char *skb_push(struct sk_buff *arg0, unsigned int arg1) {
  return ldv_malloc(sizeof(unsigned char));
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void vxlan_get_rx_port(struct net_device *arg0) {
  return;
}
void wait_for_completion(struct completion *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int wait_for_completion_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool zalloc_cpumask_var(cpumask_var_t **arg0, gfp_t arg1) {
  return __VERIFIER_nondet_bool();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
