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
typedef unsigned int uint;
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
struct __anonstruct_ldv_1022_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1037_10 {
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
union __anonunion_ldv_1038_8 {
   struct __anonstruct_ldv_1022_9 ldv_1022 ;
   struct __anonstruct_ldv_1037_10 ldv_1037 ;
};
struct desc_struct {
   union __anonunion_ldv_1038_8 ldv_1038 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1458_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1458_15 ldv_1458 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct qrwlock {
   atomic_t cnts ;
   arch_spinlock_t lock ;
};
typedef struct qrwlock arch_rwlock_t;
typedef void (*ctor_fn_t)(void);
struct device;
struct file_operations;
struct completion;
struct pid;
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct timespec;
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
union __anonunion_ldv_2998_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2998_20 ldv_2998 ;
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
struct __anonstruct_ldv_5289_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5295_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5296_24 {
   struct __anonstruct_ldv_5289_25 ldv_5289 ;
   struct __anonstruct_ldv_5295_26 ldv_5295 ;
};
union __anonunion_ldv_5305_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5296_24 ldv_5296 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5305_27 ldv_5305 ;
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
struct lockdep_map;
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
struct __anonstruct_ldv_6346_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6347_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6346_31 ldv_6346 ;
};
struct spinlock {
   union __anonunion_ldv_6347_30 ldv_6347 ;
};
typedef struct spinlock spinlock_t;
struct __anonstruct_rwlock_t_32 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_32 rwlock_t;
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
struct __anonstruct_kuid_t_34 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_34 kuid_t;
struct __anonstruct_kgid_t_35 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_35 kgid_t;
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
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct optimistic_spin_queue;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct call_single_data {
   struct llist_node llist ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
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
struct execute_work {
   struct work_struct work ;
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
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
} __attribute__((__aligned__(sizeof(long )))) ;
struct rb_root {
   struct rb_node *rb_node ;
};
struct vm_area_struct;
struct bio_vec;
struct nsproxy;
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
struct __anonstruct_ldv_14020_136 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_14024_137 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_14025_135 {
   struct __anonstruct_ldv_14020_136 ldv_14020 ;
   struct __anonstruct_ldv_14024_137 ldv_14024 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_14025_135 ldv_14025 ;
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
union __anonunion_ldv_14134_138 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_14140_140 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14150_144 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14152_143 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14150_144 ldv_14150 ;
   int units ;
};
struct __anonstruct_ldv_14154_142 {
   union __anonunion_ldv_14152_143 ldv_14152 ;
   atomic_t _count ;
};
union __anonunion_ldv_14156_141 {
   unsigned long counters ;
   struct __anonstruct_ldv_14154_142 ldv_14154 ;
   unsigned int active ;
};
struct __anonstruct_ldv_14157_139 {
   union __anonunion_ldv_14140_140 ldv_14140 ;
   union __anonunion_ldv_14156_141 ldv_14156 ;
};
struct __anonstruct_ldv_14164_146 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14169_145 {
   struct list_head lru ;
   struct __anonstruct_ldv_14164_146 ldv_14164 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_14175_147 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_14134_138 ldv_14134 ;
   struct __anonstruct_ldv_14157_139 ldv_14157 ;
   union __anonunion_ldv_14169_145 ldv_14169 ;
   union __anonunion_ldv_14175_147 ldv_14175 ;
   unsigned long debug_flags ;
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
union __anonunion_ldv_14538_153 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_14538_153 ldv_14538 ;
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
};
union __anonunion_ldv_14682_154 {
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
   union __anonunion_ldv_14682_154 ldv_14682 ;
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
union __anonunion_ldv_15357_155 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_15357_155 ldv_15357 ;
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
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct __anonstruct_ldv_15977_157 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_15983_158 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_15984_156 {
   struct __anonstruct_ldv_15977_157 ldv_15977 ;
   struct __anonstruct_ldv_15983_158 ldv_15983 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15984_156 ldv_15984 ;
};
struct scsi_cmnd;
struct megasas_register_set;
struct megasas_instance;
struct scsi_device;
struct device_driver;
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
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
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
union __anonunion_ldv_17855_162 {
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
   union __anonunion_ldv_17855_162 ldv_17855 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
   char *driver_override ;
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
   unsigned char is_added : 1 ;
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
struct dma_pool;
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_24960_165 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_24960_165 ldv_24960 ;
   unsigned long nr_segs ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_25248_167 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_25249_166 {
   struct __anonstruct_ldv_25248_167 ldv_25248 ;
};
struct lockref {
   union __anonunion_ldv_25249_166 ldv_25249 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_25272_169 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_25274_168 {
   struct __anonstruct_ldv_25272_169 ldv_25272 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_25274_168 ldv_25274 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_170 {
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
   union __anonunion_d_u_170 d_u ;
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
struct __anonstruct_ldv_25635_172 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_25637_171 {
   struct __anonstruct_ldv_25635_172 ldv_25635 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_25637_171 ldv_25637 ;
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
struct bio_set;
struct bio;
struct bio_integrity_payload;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bvec_iter {
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned int bi_idx ;
   unsigned int bi_bvec_done ;
};
struct bio {
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   struct bvec_iter bi_iter ;
   unsigned int bi_phys_segments ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   atomic_t bi_remaining ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned short bi_vcnt ;
   unsigned short bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
struct export_operations;
struct hd_geometry;
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
struct __anonstruct_kprojid_t_174 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_174 kprojid_t;
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
union __anonunion_ldv_26434_175 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_26434_175 ldv_26434 ;
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
   struct rw_semaphore dqptr_sem ;
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
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , unsigned long , unsigned long ) ;
   void (*is_dirty_writeback)(struct page * , bool * , bool * ) ;
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
   unsigned long nrshadows ;
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
union __anonunion_ldv_26849_178 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_26869_179 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_26886_180 {
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
   union __anonunion_ldv_26849_178 ldv_26849 ;
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
   union __anonunion_ldv_26869_179 ldv_26869 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   atomic_t i_readcount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_26886_180 ldv_26886 ;
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
union __anonunion_f_u_181 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_181 f_u ;
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
struct files_struct;
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
struct __anonstruct_afs_183 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_182 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_183 afs ;
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
   union __anonunion_fl_u_182 fl_u ;
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
struct block_device_operations;
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
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
typedef unsigned long cputime_t;
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
struct __anonstruct__sigfault_201 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_202 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_203 {
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
   struct __anonstruct__sigpoll_202 _sigpoll ;
   struct __anonstruct__sigsys_203 _sigsys ;
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
struct rlimit {
   __kernel_ulong_t rlim_cur ;
   __kernel_ulong_t rlim_max ;
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
union __anonunion_ldv_29965_206 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_29973_207 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_29986_209 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_29987_208 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_29986_209 ldv_29986 ;
};
union __anonunion_type_data_210 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_212 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_30002_211 {
   union __anonunion_payload_212 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_29965_206 ldv_29965 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_29973_207 ldv_29973 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_29987_208 ldv_29987 ;
   union __anonunion_type_data_210 type_data ;
   union __anonunion_ldv_30002_211 ldv_30002 ;
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
   unsigned char may_oom : 1 ;
};
struct sched_class;
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
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
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
   unsigned long numa_migrate_retry ;
   u64 node_stamp ;
   u64 last_task_numa_placement ;
   u64 last_sum_exec_runtime ;
   struct callback_head numa_work ;
   struct list_head numa_entry ;
   struct numa_group *numa_group ;
   unsigned long *numa_faults_memory ;
   unsigned long total_numa_faults ;
   unsigned long *numa_faults_buffer_memory ;
   unsigned long *numa_faults_cpu ;
   unsigned long *numa_faults_buffer_cpu ;
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
typedef u32 compat_size_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_iovec {
   compat_uptr_t iov_base ;
   compat_size_t iov_len ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
   unsigned char for_sync : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   struct delayed_work dwork ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
union __anonunion_ldv_34287_228 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_34291_229 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_34287_228 ldv_34287 ;
   union __anonunion_ldv_34291_229 ldv_34291 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   struct bvec_iter bip_iter ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned char bip_owns_buf : 1 ;
   struct work_struct bip_work ;
   struct bio_vec *bip_vec ;
   struct bio_vec bip_inline_vecs[0U] ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bvec_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_integrity_pool ;
   spinlock_t rescue_lock ;
   struct bio_list rescue_list ;
   struct work_struct rescue_work ;
   struct workqueue_struct *rescue_workqueue ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct blk_trace;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_34795_230 {
   struct call_single_data csd ;
   unsigned long fifo_time ;
};
struct blk_mq_ctx;
union __anonunion_ldv_34810_231 {
   struct hlist_node hash ;
   struct list_head ipi_list ;
};
union __anonunion_ldv_34814_232 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_234 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_235 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_34825_233 {
   struct __anonstruct_elv_234 elv ;
   struct __anonstruct_flush_235 flush ;
};
struct request {
   struct list_head queuelist ;
   union __anonunion_ldv_34795_230 ldv_34795 ;
   struct request_queue *q ;
   struct blk_mq_ctx *mq_ctx ;
   u64 cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   union __anonunion_ldv_34810_231 ldv_34810 ;
   union __anonunion_ldv_34814_232 ldv_34814 ;
   union __anonunion_ldv_34825_233 ldv_34825 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   void *special ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
struct elevator_type;
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * , struct elevator_type * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   unsigned char registered : 1 ;
   struct hlist_head hash[64U] ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int chunk_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
   unsigned char raid_partial_stripes_expensive ;
};
struct blk_mq_ops;
struct blk_mq_hw_ctx;
struct throtl_data;
struct blk_mq_tag_set;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   struct blk_mq_ops *mq_ops ;
   unsigned int *mq_map ;
   struct blk_mq_ctx *queue_ctx ;
   unsigned int nr_queues ;
   struct blk_mq_hw_ctx **queue_hw_ctx ;
   unsigned int nr_hw_queues ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   struct kobject mq_kobj ;
   struct device *dev ;
   int rpm_status ;
   unsigned int nr_pending ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   struct blk_trace *blk_trace ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request *flush_rq ;
   spinlock_t mq_flush_lock ;
   struct list_head requeue_list ;
   spinlock_t requeue_lock ;
   struct work_struct requeue_work ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct throtl_data *td ;
   struct callback_head callback_head ;
   wait_queue_head_t mq_freeze_wq ;
   struct percpu_counter mq_usage_counter ;
   struct list_head all_q_node ;
   struct blk_mq_tag_set *tag_set ;
   struct list_head tag_set_list ;
};
struct blk_plug {
   struct list_head list ;
   struct list_head mq_list ;
   struct list_head cb_list ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   void (*release)(struct gendisk * , fmode_t ) ;
   int (*rw_page)(struct block_device * , sector_t , struct page * , int ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef struct poll_table_struct poll_table;
struct scsi_sense_hdr;
enum scsi_device_state {
    SDEV_CREATED = 1,
    SDEV_RUNNING = 2,
    SDEV_CANCEL = 3,
    SDEV_DEL = 4,
    SDEV_QUIESCE = 5,
    SDEV_OFFLINE = 6,
    SDEV_TRANSPORT_OFFLINE = 7,
    SDEV_BLOCK = 8,
    SDEV_CREATED_BLOCK = 9
} ;
struct Scsi_Host;
struct scsi_target;
struct scsi_dh_data;
struct scsi_device {
   struct Scsi_Host *host ;
   struct request_queue *request_queue ;
   struct list_head siblings ;
   struct list_head same_target_siblings ;
   unsigned int device_busy ;
   spinlock_t list_lock ;
   struct list_head cmd_list ;
   struct list_head starved_entry ;
   struct scsi_cmnd *current_cmnd ;
   unsigned short queue_depth ;
   unsigned short max_queue_depth ;
   unsigned short last_queue_full_depth ;
   unsigned short last_queue_full_count ;
   unsigned long last_queue_full_time ;
   unsigned long queue_ramp_up_period ;
   unsigned long last_queue_ramp_up ;
   unsigned int id ;
   unsigned int lun ;
   unsigned int channel ;
   unsigned int manufacturer ;
   unsigned int sector_size ;
   void *hostdata ;
   char type ;
   char scsi_level ;
   char inq_periph_qual ;
   unsigned char inquiry_len ;
   unsigned char *inquiry ;
   char const *vendor ;
   char const *model ;
   char const *rev ;
   int vpd_pg83_len ;
   unsigned char *vpd_pg83 ;
   int vpd_pg80_len ;
   unsigned char *vpd_pg80 ;
   unsigned char current_tag ;
   struct scsi_target *sdev_target ;
   unsigned int sdev_bflags ;
   unsigned int eh_timeout ;
   unsigned char writeable : 1 ;
   unsigned char removable : 1 ;
   unsigned char changed : 1 ;
   unsigned char busy : 1 ;
   unsigned char lockable : 1 ;
   unsigned char locked : 1 ;
   unsigned char borken : 1 ;
   unsigned char disconnect : 1 ;
   unsigned char soft_reset : 1 ;
   unsigned char sdtr : 1 ;
   unsigned char wdtr : 1 ;
   unsigned char ppr : 1 ;
   unsigned char tagged_supported : 1 ;
   unsigned char simple_tags : 1 ;
   unsigned char ordered_tags : 1 ;
   unsigned char was_reset : 1 ;
   unsigned char expecting_cc_ua : 1 ;
   unsigned char use_10_for_rw : 1 ;
   unsigned char use_10_for_ms : 1 ;
   unsigned char no_report_opcodes : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char use_16_for_rw : 1 ;
   unsigned char skip_ms_page_8 : 1 ;
   unsigned char skip_ms_page_3f : 1 ;
   unsigned char skip_vpd_pages : 1 ;
   unsigned char use_192_bytes_for_3f : 1 ;
   unsigned char no_start_on_add : 1 ;
   unsigned char allow_restart : 1 ;
   unsigned char manage_start_stop : 1 ;
   unsigned char start_stop_pwr_cond : 1 ;
   unsigned char no_uld_attach : 1 ;
   unsigned char select_no_atn : 1 ;
   unsigned char fix_capacity : 1 ;
   unsigned char guess_capacity : 1 ;
   unsigned char retry_hwerror : 1 ;
   unsigned char last_sector_bug : 1 ;
   unsigned char no_read_disc_info : 1 ;
   unsigned char no_read_capacity_16 : 1 ;
   unsigned char try_rc_10_first : 1 ;
   unsigned char is_visible : 1 ;
   unsigned char wce_default_on : 1 ;
   unsigned char no_dif : 1 ;
   atomic_t disk_events_disable_depth ;
   unsigned long supported_events[1U] ;
   unsigned long pending_events[1U] ;
   struct list_head event_list ;
   struct work_struct event_work ;
   unsigned int device_blocked ;
   unsigned int max_device_blocked ;
   atomic_t iorequest_cnt ;
   atomic_t iodone_cnt ;
   atomic_t ioerr_cnt ;
   struct device sdev_gendev ;
   struct device sdev_dev ;
   struct execute_work ew ;
   struct work_struct requeue_work ;
   struct scsi_dh_data *scsi_dh_data ;
   enum scsi_device_state sdev_state ;
   unsigned long sdev_data[0U] ;
};
struct scsi_dh_devlist {
   char *vendor ;
   char *model ;
};
struct scsi_device_handler {
   struct list_head list ;
   struct module *module ;
   char const *name ;
   struct scsi_dh_devlist const *devlist ;
   int (*check_sense)(struct scsi_device * , struct scsi_sense_hdr * ) ;
   int (*attach)(struct scsi_device * ) ;
   void (*detach)(struct scsi_device * ) ;
   int (*activate)(struct scsi_device * , void (*)(void * , int ) , void * ) ;
   int (*prep_fn)(struct scsi_device * , struct request * ) ;
   int (*set_params)(struct scsi_device * , char const * ) ;
   bool (*match)(struct scsi_device * ) ;
};
struct scsi_dh_data {
   struct scsi_device_handler *scsi_dh ;
   struct scsi_device *sdev ;
   struct kref kref ;
   char buf[0U] ;
};
enum scsi_target_state {
    STARGET_CREATED = 1,
    STARGET_RUNNING = 2,
    STARGET_DEL = 3
} ;
struct scsi_target {
   struct scsi_device *starget_sdev_user ;
   struct list_head siblings ;
   struct list_head devices ;
   struct device dev ;
   struct kref reap_ref ;
   unsigned int channel ;
   unsigned int id ;
   unsigned char create : 1 ;
   unsigned char single_lun : 1 ;
   unsigned char pdt_1f_for_no_lun : 1 ;
   unsigned char no_report_luns : 1 ;
   unsigned char expecting_lun_change : 1 ;
   unsigned int target_busy ;
   unsigned int can_queue ;
   unsigned int target_blocked ;
   unsigned int max_target_blocked ;
   char scsi_level ;
   enum scsi_target_state state ;
   void *hostdata ;
   unsigned long starget_data[0U] ;
};
struct scsi_data_buffer {
   struct sg_table table ;
   unsigned int length ;
   int resid ;
};
struct scsi_pointer {
   char *ptr ;
   int this_residual ;
   struct scatterlist *buffer ;
   int buffers_residual ;
   dma_addr_t dma_handle ;
   int volatile Status ;
   int volatile Message ;
   int volatile have_data_in ;
   int volatile sent_command ;
   int volatile phase ;
};
struct scsi_cmnd {
   struct scsi_device *device ;
   struct list_head list ;
   struct list_head eh_entry ;
   struct delayed_work abort_work ;
   int eh_eflags ;
   unsigned long serial_number ;
   unsigned long jiffies_at_alloc ;
   int retries ;
   int allowed ;
   unsigned char prot_op ;
   unsigned char prot_type ;
   unsigned short cmd_len ;
   enum dma_data_direction sc_data_direction ;
   unsigned char *cmnd ;
   struct scsi_data_buffer sdb ;
   struct scsi_data_buffer *prot_sdb ;
   unsigned int underflow ;
   unsigned int transfersize ;
   struct request *request ;
   unsigned char *sense_buffer ;
   void (*scsi_done)(struct scsi_cmnd * ) ;
   struct scsi_pointer SCp ;
   unsigned char *host_scribble ;
   int result ;
   unsigned char tag ;
};
struct scsi_host_cmd_pool;
struct scsi_transport_template;
struct scsi_host_template {
   struct module *module ;
   char const *name ;
   int (*detect)(struct scsi_host_template * ) ;
   int (*release)(struct Scsi_Host * ) ;
   char const *(*info)(struct Scsi_Host * ) ;
   int (*ioctl)(struct scsi_device * , int , void * ) ;
   int (*compat_ioctl)(struct scsi_device * , int , void * ) ;
   int (*queuecommand)(struct Scsi_Host * , struct scsi_cmnd * ) ;
   int (*transfer_response)(struct scsi_cmnd * , void (*)(struct scsi_cmnd * ) ) ;
   int (*eh_abort_handler)(struct scsi_cmnd * ) ;
   int (*eh_device_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_target_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_bus_reset_handler)(struct scsi_cmnd * ) ;
   int (*eh_host_reset_handler)(struct scsi_cmnd * ) ;
   int (*slave_alloc)(struct scsi_device * ) ;
   int (*slave_configure)(struct scsi_device * ) ;
   void (*slave_destroy)(struct scsi_device * ) ;
   int (*target_alloc)(struct scsi_target * ) ;
   void (*target_destroy)(struct scsi_target * ) ;
   int (*scan_finished)(struct Scsi_Host * , unsigned long ) ;
   void (*scan_start)(struct Scsi_Host * ) ;
   int (*change_queue_depth)(struct scsi_device * , int , int ) ;
   int (*change_queue_type)(struct scsi_device * , int ) ;
   int (*bios_param)(struct scsi_device * , struct block_device * , sector_t , int * ) ;
   void (*unlock_native_capacity)(struct scsi_device * ) ;
   int (*show_info)(struct seq_file * , struct Scsi_Host * ) ;
   int (*write_info)(struct Scsi_Host * , char * , int ) ;
   enum blk_eh_timer_return (*eh_timed_out)(struct scsi_cmnd * ) ;
   int (*host_reset)(struct Scsi_Host * , int ) ;
   char const *proc_name ;
   struct proc_dir_entry *proc_dir ;
   int can_queue ;
   int this_id ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   short cmd_per_lun ;
   unsigned char present ;
   unsigned char supported_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char emulated : 1 ;
   unsigned char skip_settle_delay : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned char no_write_same : 1 ;
   unsigned char no_async_abort : 1 ;
   unsigned int max_host_blocked ;
   struct device_attribute **shost_attrs ;
   struct device_attribute **sdev_attrs ;
   struct list_head legacy_hosts ;
   u64 vendor_id ;
   unsigned int cmd_size ;
   struct scsi_host_cmd_pool *cmd_pool ;
};
enum scsi_host_state {
    SHOST_CREATED = 1,
    SHOST_RUNNING = 2,
    SHOST_CANCEL = 3,
    SHOST_DEL = 4,
    SHOST_RECOVERY = 5,
    SHOST_CANCEL_RECOVERY = 6,
    SHOST_DEL_RECOVERY = 7
} ;
struct Scsi_Host {
   struct list_head __devices ;
   struct list_head __targets ;
   struct scsi_host_cmd_pool *cmd_pool ;
   spinlock_t free_list_lock ;
   struct list_head free_list ;
   struct list_head starved_list ;
   spinlock_t default_lock ;
   spinlock_t *host_lock ;
   struct mutex scan_mutex ;
   struct list_head eh_cmd_q ;
   struct task_struct *ehandler ;
   struct completion *eh_action ;
   wait_queue_head_t host_wait ;
   struct scsi_host_template *hostt ;
   struct scsi_transport_template *transportt ;
   struct blk_queue_tag *bqt ;
   unsigned int host_busy ;
   unsigned int host_failed ;
   unsigned int host_eh_scheduled ;
   unsigned int host_no ;
   int eh_deadline ;
   unsigned long last_reset ;
   unsigned int max_id ;
   unsigned int max_lun ;
   unsigned int max_channel ;
   unsigned int unique_id ;
   unsigned short max_cmd_len ;
   int this_id ;
   int can_queue ;
   short cmd_per_lun ;
   unsigned short sg_tablesize ;
   unsigned short sg_prot_tablesize ;
   unsigned short max_sectors ;
   unsigned long dma_boundary ;
   unsigned long cmd_serial_number ;
   unsigned char active_mode : 2 ;
   unsigned char unchecked_isa_dma : 1 ;
   unsigned char use_clustering : 1 ;
   unsigned char use_blk_tcq : 1 ;
   unsigned char host_self_blocked : 1 ;
   unsigned char reverse_ordering : 1 ;
   unsigned char ordered_tag : 1 ;
   unsigned char tmf_in_progress : 1 ;
   unsigned char async_scan : 1 ;
   unsigned char eh_noresume : 1 ;
   unsigned char no_write_same : 1 ;
   char work_q_name[20U] ;
   struct workqueue_struct *work_q ;
   struct workqueue_struct *tmf_work_q ;
   unsigned int host_blocked ;
   unsigned int max_host_blocked ;
   unsigned int prot_capabilities ;
   unsigned char prot_guard_type ;
   struct request_queue *uspace_req_q ;
   unsigned long base ;
   unsigned long io_port ;
   unsigned char n_io_port ;
   unsigned char dma_channel ;
   unsigned int irq ;
   enum scsi_host_state shost_state ;
   struct device shost_gendev ;
   struct device shost_dev ;
   struct list_head sht_legacy_list ;
   void *shost_data ;
   struct device *dma_dev ;
   unsigned long hostdata[0U] ;
};
struct RAID_CONTEXT {
   unsigned char Type : 4 ;
   unsigned char nseg : 4 ;
   u8 resvd0 ;
   u16 timeoutValue ;
   u8 regLockFlags ;
   u8 resvd1 ;
   u16 VirtualDiskTgtId ;
   u64 regLockRowLBA ;
   u32 regLockLength ;
   u16 nextLMId ;
   u8 exStatus ;
   u8 status ;
   u8 RAIDFlags ;
   u8 numSGE ;
   u16 configSeqNum ;
   u8 spanArm ;
   u8 resvd2[3U] ;
};
union __anonunion_u_240 {
   u32 Address32 ;
   u64 Address64 ;
};
struct MPI2_SGE_SIMPLE_UNION {
   u32 FlagsLength ;
   union __anonunion_u_240 u ;
};
struct MPI2_SCSI_IO_CDB_EEDP32 {
   u8 CDB[20U] ;
   u32 PrimaryReferenceTag ;
   u16 PrimaryApplicationTag ;
   u16 PrimaryApplicationTagMask ;
   u32 TransferLength ;
};
union __anonunion_u_241 {
   u32 Address32 ;
   u64 Address64 ;
};
struct MPI2_SGE_CHAIN_UNION {
   u16 Length ;
   u8 NextChainOffset ;
   u8 Flags ;
   union __anonunion_u_241 u ;
};
struct MPI2_IEEE_SGE_SIMPLE32 {
   u32 Address ;
   u32 FlagsLength ;
};
struct MPI2_IEEE_SGE_CHAIN32 {
   u32 Address ;
   u32 FlagsLength ;
};
struct MPI2_IEEE_SGE_SIMPLE64 {
   u64 Address ;
   u32 Length ;
   u16 Reserved1 ;
   u8 Reserved2 ;
   u8 Flags ;
};
struct MPI2_IEEE_SGE_CHAIN64 {
   u64 Address ;
   u32 Length ;
   u16 Reserved1 ;
   u8 Reserved2 ;
   u8 Flags ;
};
union MPI2_IEEE_SGE_SIMPLE_UNION {
   struct MPI2_IEEE_SGE_SIMPLE32 Simple32 ;
   struct MPI2_IEEE_SGE_SIMPLE64 Simple64 ;
};
union MPI2_IEEE_SGE_CHAIN_UNION {
   struct MPI2_IEEE_SGE_CHAIN32 Chain32 ;
   struct MPI2_IEEE_SGE_CHAIN64 Chain64 ;
};
union MPI2_SGE_IO_UNION {
   struct MPI2_SGE_SIMPLE_UNION MpiSimple ;
   struct MPI2_SGE_CHAIN_UNION MpiChain ;
   union MPI2_IEEE_SGE_SIMPLE_UNION IeeeSimple ;
   union MPI2_IEEE_SGE_CHAIN_UNION IeeeChain ;
};
union MPI2_SCSI_IO_CDB_UNION {
   u8 CDB32[32U] ;
   struct MPI2_SCSI_IO_CDB_EEDP32 EEDP32 ;
   struct MPI2_SGE_SIMPLE_UNION SGE ;
};
struct MPI2_RAID_SCSI_IO_REQUEST {
   u16 DevHandle ;
   u8 ChainOffset ;
   u8 Function ;
   u16 Reserved1 ;
   u8 Reserved2 ;
   u8 MsgFlags ;
   u8 VP_ID ;
   u8 VF_ID ;
   u16 Reserved3 ;
   u32 SenseBufferLowAddress ;
   u16 SGLFlags ;
   u8 SenseBufferLength ;
   u8 Reserved4 ;
   u8 SGLOffset0 ;
   u8 SGLOffset1 ;
   u8 SGLOffset2 ;
   u8 SGLOffset3 ;
   u32 SkipCount ;
   u32 DataLength ;
   u32 BidirectionalDataLength ;
   u16 IoFlags ;
   u16 EEDPFlags ;
   u32 EEDPBlockSize ;
   u32 SecondaryReferenceTag ;
   u16 SecondaryApplicationTag ;
   u16 ApplicationTagTranslationMask ;
   u8 LUN[8U] ;
   u32 Control ;
   union MPI2_SCSI_IO_CDB_UNION CDB ;
   struct RAID_CONTEXT RaidContext ;
   union MPI2_SGE_IO_UNION SGL ;
};
struct MEGASAS_RAID_MFA_IO_REQUEST_DESCRIPTOR {
   unsigned char RequestFlags ;
   unsigned int MessageAddress1 : 24 ;
   u32 MessageAddress2 ;
};
struct MPI2_DEFAULT_REQUEST_DESCRIPTOR {
   u8 RequestFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 LMID ;
   u16 DescriptorTypeDependent ;
};
struct MPI2_HIGH_PRIORITY_REQUEST_DESCRIPTOR {
   u8 RequestFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 LMID ;
   u16 Reserved1 ;
};
struct MPI2_SCSI_IO_REQUEST_DESCRIPTOR {
   u8 RequestFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 LMID ;
   u16 DevHandle ;
};
struct MPI2_SCSI_TARGET_REQUEST_DESCRIPTOR {
   u8 RequestFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 LMID ;
   u16 IoIndex ;
};
struct MPI2_RAID_ACCEL_REQUEST_DESCRIPTOR {
   u8 RequestFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 LMID ;
   u16 Reserved ;
};
struct __anonstruct_u_243 {
   u32 low ;
   u32 high ;
};
union __anonunion_ldv_37409_242 {
   struct __anonstruct_u_243 u ;
   u64 Words ;
};
union MEGASAS_REQUEST_DESCRIPTOR_UNION {
   struct MPI2_DEFAULT_REQUEST_DESCRIPTOR Default ;
   struct MPI2_HIGH_PRIORITY_REQUEST_DESCRIPTOR HighPriority ;
   struct MPI2_SCSI_IO_REQUEST_DESCRIPTOR SCSIIO ;
   struct MPI2_SCSI_TARGET_REQUEST_DESCRIPTOR SCSITarget ;
   struct MPI2_RAID_ACCEL_REQUEST_DESCRIPTOR RAIDAccelerator ;
   struct MEGASAS_RAID_MFA_IO_REQUEST_DESCRIPTOR MFAIo ;
   union __anonunion_ldv_37409_242 ldv_37409 ;
};
struct MPI2_DEFAULT_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u16 DescriptorTypeDependent1 ;
   u32 DescriptorTypeDependent2 ;
};
struct MPI2_ADDRESS_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u32 ReplyFrameAddress ;
};
struct MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u16 TaskTag ;
   u16 Reserved1 ;
};
struct MPI2_TARGETASSIST_SUCCESS_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u8 SequenceNumber ;
   u8 Reserved1 ;
   u16 IoIndex ;
};
struct MPI2_TARGET_COMMAND_BUFFER_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u8 VP_ID ;
   u8 Flags ;
   u16 InitiatorDevHandle ;
   u16 IoIndex ;
};
struct MPI2_RAID_ACCELERATOR_SUCCESS_REPLY_DESCRIPTOR {
   u8 ReplyFlags ;
   u8 MSIxIndex ;
   u16 SMID ;
   u32 Reserved ;
};
union MPI2_REPLY_DESCRIPTORS_UNION {
   struct MPI2_DEFAULT_REPLY_DESCRIPTOR Default ;
   struct MPI2_ADDRESS_REPLY_DESCRIPTOR AddressReply ;
   struct MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR SCSIIOSuccess ;
   struct MPI2_TARGETASSIST_SUCCESS_REPLY_DESCRIPTOR TargetAssistSuccess ;
   struct MPI2_TARGET_COMMAND_BUFFER_REPLY_DESCRIPTOR TargetCommandBuffer ;
   struct MPI2_RAID_ACCELERATOR_SUCCESS_REPLY_DESCRIPTOR RAIDAcceleratorSuccess ;
   u64 Words ;
};
struct MR_DEV_HANDLE_INFO {
   u16 curDevHdl ;
   u8 validHandles ;
   u8 reserved ;
   u16 devHandle[2U] ;
};
struct MR_ARRAY_INFO {
   u16 pd[32U] ;
};
struct MR_QUAD_ELEMENT {
   u64 logStart ;
   u64 logEnd ;
   u64 offsetInSpan ;
   u32 diff ;
   u32 reserved1 ;
};
struct MR_SPAN_INFO {
   u32 noElements ;
   u32 reserved1 ;
   struct MR_QUAD_ELEMENT quad[8U] ;
};
struct MR_LD_SPAN {
   u64 startBlk ;
   u64 numBlks ;
   u16 arrayRef ;
   u8 spanRowSize ;
   u8 spanRowDataSize ;
   u8 reserved[4U] ;
};
struct MR_SPAN_BLOCK_INFO {
   u64 num_rows ;
   struct MR_LD_SPAN span ;
   struct MR_SPAN_INFO block_span_info ;
};
struct __anonstruct_capability_244 {
   unsigned char fpCapable : 1 ;
   unsigned char reserved5 : 3 ;
   unsigned char ldPiMode : 4 ;
   unsigned char pdPiMode : 4 ;
   unsigned char encryptionType ;
   unsigned char fpWriteCapable : 1 ;
   unsigned char fpReadCapable : 1 ;
   unsigned char fpWriteAcrossStripe : 1 ;
   unsigned char fpReadAcrossStripe : 1 ;
   unsigned char fpNonRWCapable : 1 ;
   unsigned char reserved4 : 7 ;
};
struct __anonstruct_flags_245 {
   unsigned char ldSyncRequired : 1 ;
   unsigned int reserved : 31 ;
};
struct MR_LD_RAID {
   struct __anonstruct_capability_244 capability ;
   u32 reserved6 ;
   u64 size ;
   u8 spanDepth ;
   u8 level ;
   u8 stripeShift ;
   u8 rowSize ;
   u8 rowDataSize ;
   u8 writeMode ;
   u8 PRL ;
   u8 SRL ;
   u16 targetId ;
   u8 ldState ;
   u8 regTypeReqOnWrite ;
   u8 modFactor ;
   u8 regTypeReqOnRead ;
   u16 seqNum ;
   struct __anonstruct_flags_245 flags ;
   u8 LUN[8U] ;
   u8 fpIoTimeoutForLd ;
   u8 reserved3[83U] ;
};
struct MR_LD_SPAN_MAP {
   struct MR_LD_RAID ldRaid ;
   u8 dataArmMap[32U] ;
   struct MR_SPAN_BLOCK_INFO spanBlock[8U] ;
};
struct __anonstruct_validationInfo_247 {
   u32 maxLd ;
   u32 maxSpanDepth ;
   u32 maxRowSize ;
   u32 maxPdCount ;
   u32 maxArrays ;
};
union __anonunion_ldv_37561_246 {
   struct __anonstruct_validationInfo_247 validationInfo ;
   u32 version[5U] ;
   u32 reserved1[5U] ;
};
struct MR_FW_RAID_MAP {
   u32 totalSize ;
   union __anonunion_ldv_37561_246 ldv_37561 ;
   u32 ldCount ;
   u32 Reserved1 ;
   u8 ldTgtIdToLd[128U] ;
   u8 fpPdIoTimeoutSec ;
   u8 reserved2[7U] ;
   struct MR_ARRAY_INFO arMapInfo[128U] ;
   struct MR_DEV_HANDLE_INFO devHndlInfo[256U] ;
   struct MR_LD_SPAN_MAP ldSpanMap[1U] ;
};
struct megasas_cmd_fusion {
   struct MPI2_RAID_SCSI_IO_REQUEST *io_request ;
   dma_addr_t io_request_phys_addr ;
   union MPI2_SGE_IO_UNION *sg_frame ;
   dma_addr_t sg_frame_phys_addr ;
   u8 *sense ;
   dma_addr_t sense_phys_addr ;
   struct list_head list ;
   struct scsi_cmnd *scmd ;
   struct megasas_instance *instance ;
   u8 retry_for_fw_reset ;
   union MEGASAS_REQUEST_DESCRIPTOR_UNION *request_desc ;
   u32 sync_cmd_idx ;
   u32 index ;
   u8 flags ;
};
struct LD_LOAD_BALANCE_INFO {
   u8 loadBalanceFlag ;
   u8 reserved1 ;
   u16 raid1DevHandle[2U] ;
   atomic_t scsi_pending_cmds[2U] ;
   u64 last_accessed_block[2U] ;
};
struct _LD_SPAN_SET {
   u64 log_start_lba ;
   u64 log_end_lba ;
   u64 span_row_start ;
   u64 span_row_end ;
   u64 data_strip_start ;
   u64 data_strip_end ;
   u64 data_row_start ;
   u64 data_row_end ;
   u8 strip_offset[8U] ;
   u32 span_row_data_width ;
   u32 diff ;
   u32 reserved[2U] ;
};
typedef struct _LD_SPAN_SET LD_SPAN_SET;
struct LOG_BLOCK_SPAN_INFO {
   LD_SPAN_SET span_set[8U] ;
};
typedef struct LOG_BLOCK_SPAN_INFO LD_SPAN_INFO;
struct MR_FW_RAID_MAP_ALL {
   struct MR_FW_RAID_MAP raidMap ;
   struct MR_LD_SPAN_MAP ldSpanMap[63U] ;
};
struct fusion_context {
   struct megasas_cmd_fusion **cmd_list ;
   struct list_head cmd_pool ;
   spinlock_t cmd_pool_lock ;
   dma_addr_t req_frames_desc_phys ;
   u8 *req_frames_desc ;
   struct dma_pool *io_request_frames_pool ;
   dma_addr_t io_request_frames_phys ;
   u8 *io_request_frames ;
   struct dma_pool *sg_dma_pool ;
   struct dma_pool *sense_dma_pool ;
   dma_addr_t reply_frames_desc_phys ;
   union MPI2_REPLY_DESCRIPTORS_UNION *reply_frames_desc ;
   struct dma_pool *reply_frames_desc_pool ;
   u16 last_reply_idx[128U] ;
   u32 reply_q_depth ;
   u32 request_alloc_sz ;
   u32 reply_alloc_sz ;
   u32 io_frames_alloc_sz ;
   u16 max_sge_in_main_msg ;
   u16 max_sge_in_chain ;
   u8 chain_offset_io_request ;
   u8 chain_offset_mfi_pthru ;
   struct MR_FW_RAID_MAP_ALL *ld_map[2U] ;
   dma_addr_t ld_map_phys[2U] ;
   u32 map_sz ;
   u8 fast_path_io ;
   struct LD_LOAD_BALANCE_INFO load_balance_info[64U] ;
   LD_SPAN_INFO log_to_span[64U] ;
};
struct __anonstruct_mrPdAddress_251 {
   u8 enclIndex ;
   u8 slotNumber ;
};
struct __anonstruct_mrEnclAddress_252 {
   u8 enclPosition ;
   u8 enclConnectorIndex ;
};
union __anonunion_ldv_37823_250 {
   struct __anonstruct_mrPdAddress_251 mrPdAddress ;
   struct __anonstruct_mrEnclAddress_252 mrEnclAddress ;
};
union __anonunion_ldv_37828_253 {
   u8 connectedPortBitmap ;
   u8 connectedPortNumbers ;
};
struct MR_PD_ADDRESS {
   u16 deviceId ;
   u16 enclDeviceId ;
   union __anonunion_ldv_37823_250 ldv_37823 ;
   u8 scsiDevType ;
   union __anonunion_ldv_37828_253 ldv_37828 ;
   u64 sasAddr[2U] ;
};
struct MR_PD_LIST {
   u32 size ;
   u32 count ;
   struct MR_PD_ADDRESS addr[1U] ;
};
struct megasas_pd_list {
   u16 tid ;
   u8 driveType ;
   u8 driveState ;
};
struct __anonstruct_ldv_37843_254 {
   u8 targetId ;
   u8 reserved ;
   u16 seqNum ;
};
union MR_LD_REF {
   struct __anonstruct_ldv_37843_254 ldv_37843 ;
   u32 ref ;
};
struct __anonstruct_ldList_255 {
   union MR_LD_REF ref ;
   u8 state ;
   u8 reserved[3U] ;
   u64 size ;
};
struct MR_LD_LIST {
   u32 ldCount ;
   u32 reserved ;
   struct __anonstruct_ldList_255 ldList[64U] ;
};
struct MR_LD_TARGETID_LIST {
   u32 size ;
   u32 count ;
   u8 pad[3U] ;
   u8 targetId[64U] ;
};
struct __anonstruct_OnOffProperties_256 {
   unsigned char copyBackDisabled : 1 ;
   unsigned char SMARTerEnabled : 1 ;
   unsigned char prCorrectUnconfiguredAreas : 1 ;
   unsigned char useFdeOnly : 1 ;
   unsigned char disableNCQ : 1 ;
   unsigned char SSDSMARTerEnabled : 1 ;
   unsigned char SSDPatrolReadEnabled : 1 ;
   unsigned char enableSpinDownUnconfigured : 1 ;
   unsigned char autoEnhancedImport : 1 ;
   unsigned char enableSecretKeyControl : 1 ;
   unsigned char disableOnlineCtrlReset : 1 ;
   unsigned char allowBootWithPinnedCache : 1 ;
   unsigned char disableSpinDownHS : 1 ;
   unsigned char enableJBOD : 1 ;
   unsigned int reserved : 18 ;
};
struct megasas_ctrl_prop {
   u16 seq_num ;
   u16 pred_fail_poll_interval ;
   u16 intr_throttle_count ;
   u16 intr_throttle_timeouts ;
   u8 rebuild_rate ;
   u8 patrol_read_rate ;
   u8 bgi_rate ;
   u8 cc_rate ;
   u8 recon_rate ;
   u8 cache_flush_interval ;
   u8 spinup_drv_count ;
   u8 spinup_delay ;
   u8 cluster_enable ;
   u8 coercion_mode ;
   u8 alarm_enable ;
   u8 disable_auto_rebuild ;
   u8 disable_battery_warn ;
   u8 ecc_bucket_size ;
   u16 ecc_bucket_leak_rate ;
   u8 restore_hotspare_on_insertion ;
   u8 expose_encl_devices ;
   u8 maintainPdFailHistory ;
   u8 disallowHostRequestReordering ;
   u8 abortCCOnError ;
   u8 loadBalanceMode ;
   u8 disableAutoDetectBackplane ;
   u8 snapVDSpace ;
   struct __anonstruct_OnOffProperties_256 OnOffProperties ;
   u8 autoSnapVDSpace ;
   u8 viewSpace ;
   u16 spinDownTime ;
   u8 reserved[24U] ;
};
struct __anonstruct_pci_257 {
   u16 vendor_id ;
   u16 device_id ;
   u16 sub_vendor_id ;
   u16 sub_device_id ;
   u8 reserved[24U] ;
};
struct __anonstruct_host_interface_258 {
   unsigned char PCIX : 1 ;
   unsigned char PCIE : 1 ;
   unsigned char iSCSI : 1 ;
   unsigned char SAS_3G : 1 ;
   unsigned char SRIOV : 1 ;
   unsigned char reserved_0 : 3 ;
   u8 reserved_1[6U] ;
   u8 port_count ;
   u64 port_addr[8U] ;
};
struct __anonstruct_device_interface_259 {
   unsigned char SPI : 1 ;
   unsigned char SAS_3G : 1 ;
   unsigned char SATA_1_5G : 1 ;
   unsigned char SATA_3G : 1 ;
   unsigned char reserved_0 : 4 ;
   u8 reserved_1[6U] ;
   u8 port_count ;
   u64 port_addr[8U] ;
};
struct __anonstruct_image_component_260 {
   char name[8U] ;
   char version[32U] ;
   char build_date[16U] ;
   char built_time[16U] ;
};
struct __anonstruct_pending_image_component_261 {
   char name[8U] ;
   char version[32U] ;
   char build_date[16U] ;
   char build_time[16U] ;
};
struct __anonstruct_hw_present_262 {
   unsigned char bbu : 1 ;
   unsigned char alarm : 1 ;
   unsigned char nvram : 1 ;
   unsigned char uart : 1 ;
   unsigned int reserved : 28 ;
};
struct __anonstruct_raid_levels_263 {
   unsigned char raid_level_0 : 1 ;
   unsigned char raid_level_1 : 1 ;
   unsigned char raid_level_5 : 1 ;
   unsigned char raid_level_1E : 1 ;
   unsigned char raid_level_6 : 1 ;
   unsigned int reserved : 27 ;
};
struct __anonstruct_adapter_operations_264 {
   unsigned char rbld_rate : 1 ;
   unsigned char cc_rate : 1 ;
   unsigned char bgi_rate : 1 ;
   unsigned char recon_rate : 1 ;
   unsigned char patrol_rate : 1 ;
   unsigned char alarm_control : 1 ;
   unsigned char cluster_supported : 1 ;
   unsigned char bbu : 1 ;
   unsigned char spanning_allowed : 1 ;
   unsigned char dedicated_hotspares : 1 ;
   unsigned char revertible_hotspares : 1 ;
   unsigned char foreign_config_import : 1 ;
   unsigned char self_diagnostic : 1 ;
   unsigned char mixed_redundancy_arr : 1 ;
   unsigned char global_hot_spares : 1 ;
   unsigned int reserved : 17 ;
};
struct __anonstruct_ld_operations_265 {
   unsigned char read_policy : 1 ;
   unsigned char write_policy : 1 ;
   unsigned char io_policy : 1 ;
   unsigned char access_policy : 1 ;
   unsigned char disk_cache_policy : 1 ;
   unsigned int reserved : 27 ;
};
struct __anonstruct_stripe_sz_ops_266 {
   u8 min ;
   u8 max ;
   u8 reserved[2U] ;
};
struct __anonstruct_pd_operations_267 {
   unsigned char force_online : 1 ;
   unsigned char force_offline : 1 ;
   unsigned char force_rebuild : 1 ;
   unsigned int reserved : 29 ;
};
struct __anonstruct_pd_mix_support_268 {
   unsigned char ctrl_supports_sas : 1 ;
   unsigned char ctrl_supports_sata : 1 ;
   unsigned char allow_mix_in_encl : 1 ;
   unsigned char allow_mix_in_ld : 1 ;
   unsigned char allow_sata_in_cluster : 1 ;
   unsigned int reserved : 27 ;
};
struct __anonstruct_pdsForRaidLevels_269 {
   unsigned char minPdRaidLevel_0 : 4 ;
   unsigned short maxPdRaidLevel_0 : 12 ;
   unsigned char minPdRaidLevel_1 : 4 ;
   unsigned short maxPdRaidLevel_1 : 12 ;
   unsigned char minPdRaidLevel_5 : 4 ;
   unsigned short maxPdRaidLevel_5 : 12 ;
   unsigned char minPdRaidLevel_1E : 4 ;
   unsigned short maxPdRaidLevel_1E : 12 ;
   unsigned char minPdRaidLevel_6 : 4 ;
   unsigned short maxPdRaidLevel_6 : 12 ;
   unsigned char minPdRaidLevel_10 : 4 ;
   unsigned short maxPdRaidLevel_10 : 12 ;
   unsigned char minPdRaidLevel_50 : 4 ;
   unsigned short maxPdRaidLevel_50 : 12 ;
   unsigned char minPdRaidLevel_60 : 4 ;
   unsigned short maxPdRaidLevel_60 : 12 ;
   unsigned char minPdRaidLevel_1E_RLQ0 : 4 ;
   unsigned short maxPdRaidLevel_1E_RLQ0 : 12 ;
   unsigned char minPdRaidLevel_1E0_RLQ0 : 4 ;
   unsigned short maxPdRaidLevel_1E0_RLQ0 : 12 ;
   u16 reserved[6U] ;
};
struct __anonstruct_adapterOperations2_270 {
   unsigned char supportPIcontroller : 1 ;
   unsigned char supportLdPIType1 : 1 ;
   unsigned char supportLdPIType2 : 1 ;
   unsigned char supportLdPIType3 : 1 ;
   unsigned char supportLdBBMInfo : 1 ;
   unsigned char supportShieldState : 1 ;
   unsigned char blockSSDWriteCacheChange : 1 ;
   unsigned char supportSuspendResumeBGops : 1 ;
   unsigned char supportEmergencySpares : 1 ;
   unsigned char supportSetLinkSpeed : 1 ;
   unsigned char supportBootTimePFKChange : 1 ;
   unsigned char supportJBOD : 1 ;
   unsigned char disableOnlinePFKChange : 1 ;
   unsigned char supportPerfTuning : 1 ;
   unsigned char supportSSDPatrolRead : 1 ;
   unsigned char realTimeScheduler : 1 ;
   unsigned char supportResetNow : 1 ;
   unsigned char supportEmulatedDrives : 1 ;
   unsigned char headlessMode : 1 ;
   unsigned char dedicatedHotSparesLimited : 1 ;
   unsigned char supportUnevenSpans : 1 ;
   unsigned char supportPointInTimeProgress : 1 ;
   unsigned char supportDataLDonSSCArray : 1 ;
   unsigned char mpio : 1 ;
   unsigned char supportConfigAutoBalance : 1 ;
   unsigned char activePassive : 2 ;
   unsigned char reserved : 5 ;
};
struct __anonstruct_cluster_271 {
   unsigned char peerIsPresent : 1 ;
   unsigned char peerIsIncompatible : 1 ;
   unsigned char hwIncompatible : 1 ;
   unsigned char fwVersionMismatch : 1 ;
   unsigned char ctrlPropIncompatible : 1 ;
   unsigned char premiumFeatureMismatch : 1 ;
   unsigned int reserved : 26 ;
};
struct __anonstruct_iov_272 {
   u8 maxVFsSupported ;
   u8 numVFsEnabled ;
   u8 requestorId ;
   u8 reserved ;
};
struct megasas_ctrl_info {
   struct __anonstruct_pci_257 pci ;
   struct __anonstruct_host_interface_258 host_interface ;
   struct __anonstruct_device_interface_259 device_interface ;
   u32 image_check_word ;
   u32 image_component_count ;
   struct __anonstruct_image_component_260 image_component[8U] ;
   u32 pending_image_component_count ;
   struct __anonstruct_pending_image_component_261 pending_image_component[8U] ;
   u8 max_arms ;
   u8 max_spans ;
   u8 max_arrays ;
   u8 max_lds ;
   char product_name[80U] ;
   char serial_no[32U] ;
   struct __anonstruct_hw_present_262 hw_present ;
   u32 current_fw_time ;
   u16 max_concurrent_cmds ;
   u16 max_sge_count ;
   u32 max_request_size ;
   u16 ld_present_count ;
   u16 ld_degraded_count ;
   u16 ld_offline_count ;
   u16 pd_present_count ;
   u16 pd_disk_present_count ;
   u16 pd_disk_pred_failure_count ;
   u16 pd_disk_failed_count ;
   u16 nvram_size ;
   u16 memory_size ;
   u16 flash_size ;
   u16 mem_correctable_error_count ;
   u16 mem_uncorrectable_error_count ;
   u8 cluster_permitted ;
   u8 cluster_active ;
   u16 max_strips_per_io ;
   struct __anonstruct_raid_levels_263 raid_levels ;
   struct __anonstruct_adapter_operations_264 adapter_operations ;
   struct __anonstruct_ld_operations_265 ld_operations ;
   struct __anonstruct_stripe_sz_ops_266 stripe_sz_ops ;
   struct __anonstruct_pd_operations_267 pd_operations ;
   struct __anonstruct_pd_mix_support_268 pd_mix_support ;
   u8 ecc_bucket_count ;
   u8 reserved_2[11U] ;
   struct megasas_ctrl_prop properties ;
   char package_version[96U] ;
   u64 deviceInterfacePortAddr2[8U] ;
   u8 reserved3[128U] ;
   struct __anonstruct_pdsForRaidLevels_269 pdsForRaidLevels ;
   u16 maxPds ;
   u16 maxDedHSPs ;
   u16 maxGlobalHSPs ;
   u16 ddfSize ;
   u8 maxLdsPerArray ;
   u8 partitionsInDDF ;
   u8 lockKeyBinding ;
   u8 maxPITsPerLd ;
   u8 maxViewsPerLd ;
   u8 maxTargetId ;
   u16 maxBvlVdSize ;
   u16 maxConfigurableSSCSize ;
   u16 currentSSCsize ;
   char expanderFwVersion[12U] ;
   u16 PFKTrialTimeRemaining ;
   u16 cacheMemorySize ;
   struct __anonstruct_adapterOperations2_270 adapterOperations2 ;
   u8 driverVersion[32U] ;
   u8 maxDAPdCountSpinup60 ;
   u8 temperatureROC ;
   u8 temperatureCtrl ;
   u8 reserved4 ;
   u16 maxConfigurablePds ;
   u8 reserved5[2U] ;
   struct __anonstruct_cluster_271 cluster ;
   char clusterId[16U] ;
   struct __anonstruct_iov_272 iov ;
   u8 pad[24U] ;
};
struct megasas_register_set {
   u32 doorbell ;
   u32 fusion_seq_offset ;
   u32 fusion_host_diag ;
   u32 reserved_01 ;
   u32 inbound_msg_0 ;
   u32 inbound_msg_1 ;
   u32 outbound_msg_0 ;
   u32 outbound_msg_1 ;
   u32 inbound_doorbell ;
   u32 inbound_intr_status ;
   u32 inbound_intr_mask ;
   u32 outbound_doorbell ;
   u32 outbound_intr_status ;
   u32 outbound_intr_mask ;
   u32 reserved_1[2U] ;
   u32 inbound_queue_port ;
   u32 outbound_queue_port ;
   u32 reserved_2[9U] ;
   u32 reply_post_host_index ;
   u32 reserved_2_2[12U] ;
   u32 outbound_doorbell_clear ;
   u32 reserved_3[3U] ;
   u32 outbound_scratch_pad ;
   u32 outbound_scratch_pad_2 ;
   u32 reserved_4[2U] ;
   u32 inbound_low_queue_port ;
   u32 inbound_high_queue_port ;
   u32 reserved_5 ;
   u32 res_6[11U] ;
   u32 host_diag ;
   u32 seq_offset ;
   u32 index_registers[807U] ;
};
struct megasas_sge32 {
   u32 phys_addr ;
   u32 length ;
};
struct megasas_sge64 {
   u64 phys_addr ;
   u32 length ;
};
struct megasas_sge_skinny {
   u64 phys_addr ;
   u32 length ;
   u32 flag ;
};
union megasas_sgl {
   struct megasas_sge32 sge32[1U] ;
   struct megasas_sge64 sge64[1U] ;
   struct megasas_sge_skinny sge_skinny[1U] ;
};
struct megasas_header {
   u8 cmd ;
   u8 sense_len ;
   u8 cmd_status ;
   u8 scsi_status ;
   u8 target_id ;
   u8 lun ;
   u8 cdb_len ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 data_xferlen ;
};
struct __anonstruct_mfi_capabilities_273 {
   unsigned char support_fp_remote_lun : 1 ;
   unsigned char support_additional_msix : 1 ;
   unsigned int reserved : 30 ;
};
union _MFI_CAPABILITIES {
   struct __anonstruct_mfi_capabilities_273 mfi_capabilities ;
   u32 reg ;
};
typedef union _MFI_CAPABILITIES MFI_CAPABILITIES;
struct megasas_init_frame {
   u8 cmd ;
   u8 reserved_0 ;
   u8 cmd_status ;
   u8 reserved_1 ;
   MFI_CAPABILITIES driver_operations ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 reserved_3 ;
   u32 data_xfer_len ;
   u32 queue_info_new_phys_addr_lo ;
   u32 queue_info_new_phys_addr_hi ;
   u32 queue_info_old_phys_addr_lo ;
   u32 queue_info_old_phys_addr_hi ;
   u32 reserved_4[6U] ;
};
struct megasas_init_queue_info {
   u32 init_flags ;
   u32 reply_queue_entries ;
   u32 reply_queue_start_phys_addr_lo ;
   u32 reply_queue_start_phys_addr_hi ;
   u32 producer_index_phys_addr_lo ;
   u32 producer_index_phys_addr_hi ;
   u32 consumer_index_phys_addr_lo ;
   u32 consumer_index_phys_addr_hi ;
};
struct megasas_io_frame {
   u8 cmd ;
   u8 sense_len ;
   u8 cmd_status ;
   u8 scsi_status ;
   u8 target_id ;
   u8 access_byte ;
   u8 reserved_0 ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 lba_count ;
   u32 sense_buf_phys_addr_lo ;
   u32 sense_buf_phys_addr_hi ;
   u32 start_lba_lo ;
   u32 start_lba_hi ;
   union megasas_sgl sgl ;
};
struct megasas_pthru_frame {
   u8 cmd ;
   u8 sense_len ;
   u8 cmd_status ;
   u8 scsi_status ;
   u8 target_id ;
   u8 lun ;
   u8 cdb_len ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 data_xfer_len ;
   u32 sense_buf_phys_addr_lo ;
   u32 sense_buf_phys_addr_hi ;
   u8 cdb[16U] ;
   union megasas_sgl sgl ;
};
union __anonunion_mbox_274 {
   u8 b[12U] ;
   u16 s[6U] ;
   u32 w[3U] ;
};
struct megasas_dcmd_frame {
   u8 cmd ;
   u8 reserved_0 ;
   u8 cmd_status ;
   u8 reserved_1[4U] ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 data_xfer_len ;
   u32 opcode ;
   union __anonunion_mbox_274 mbox ;
   union megasas_sgl sgl ;
};
struct megasas_abort_frame {
   u8 cmd ;
   u8 reserved_0 ;
   u8 cmd_status ;
   u8 reserved_1 ;
   u32 reserved_2 ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 reserved_3 ;
   u32 reserved_4 ;
   u32 abort_context ;
   u32 pad_1 ;
   u32 abort_mfi_phys_addr_lo ;
   u32 abort_mfi_phys_addr_hi ;
   u32 reserved_5[6U] ;
};
union __anonunion_sgl_275 {
   struct megasas_sge32 sge32[2U] ;
   struct megasas_sge64 sge64[2U] ;
};
struct megasas_smp_frame {
   u8 cmd ;
   u8 reserved_1 ;
   u8 cmd_status ;
   u8 connection_status ;
   u8 reserved_2[3U] ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 data_xfer_len ;
   u64 sas_addr ;
   union __anonunion_sgl_275 sgl ;
};
union __anonunion_sgl_276 {
   struct megasas_sge32 sge32[2U] ;
   struct megasas_sge64 sge64[2U] ;
};
struct megasas_stp_frame {
   u8 cmd ;
   u8 reserved_1 ;
   u8 cmd_status ;
   u8 reserved_2 ;
   u8 target_id ;
   u8 reserved_3[2U] ;
   u8 sge_count ;
   u32 context ;
   u32 pad_0 ;
   u16 flags ;
   u16 timeout ;
   u32 data_xfer_len ;
   u16 fis[10U] ;
   u32 stp_flags ;
   union __anonunion_sgl_276 sgl ;
};
union megasas_frame {
   struct megasas_header hdr ;
   struct megasas_init_frame init ;
   struct megasas_io_frame io ;
   struct megasas_pthru_frame pthru ;
   struct megasas_dcmd_frame dcmd ;
   struct megasas_abort_frame abort ;
   struct megasas_smp_frame smp ;
   struct megasas_stp_frame stp ;
   u8 raw_bytes[64U] ;
};
struct megasas_cmd;
struct __anonstruct_members_277 {
   u16 locale ;
   u8 reserved ;
   s8 class ;
};
union megasas_evt_class_locale {
   struct __anonstruct_members_277 members ;
   u32 word ;
};
struct megasas_evt_log_info {
   u32 newest_seq_num ;
   u32 oldest_seq_num ;
   u32 clear_seq_num ;
   u32 shutdown_seq_num ;
   u32 boot_seq_num ;
};
struct megasas_progress {
   u16 progress ;
   u16 elapsed_seconds ;
};
struct megasas_evtarg_ld {
   u16 target_id ;
   u8 ld_index ;
   u8 reserved ;
};
struct megasas_evtarg_pd {
   u16 device_id ;
   u8 encl_index ;
   u8 slot_number ;
};
struct __anonstruct_cdbSense_279 {
   struct megasas_evtarg_pd pd ;
   u8 cdb_length ;
   u8 sense_length ;
   u8 reserved[2U] ;
   u8 cdb[16U] ;
   u8 sense[64U] ;
};
struct __anonstruct_ld_count_280 {
   struct megasas_evtarg_ld ld ;
   u64 count ;
};
struct __anonstruct_ld_lba_281 {
   u64 lba ;
   struct megasas_evtarg_ld ld ;
};
struct __anonstruct_ld_owner_282 {
   struct megasas_evtarg_ld ld ;
   u32 prevOwner ;
   u32 newOwner ;
};
struct __anonstruct_ld_lba_pd_lba_283 {
   u64 ld_lba ;
   u64 pd_lba ;
   struct megasas_evtarg_ld ld ;
   struct megasas_evtarg_pd pd ;
};
struct __anonstruct_ld_prog_284 {
   struct megasas_evtarg_ld ld ;
   struct megasas_progress prog ;
};
struct __anonstruct_ld_state_285 {
   struct megasas_evtarg_ld ld ;
   u32 prev_state ;
   u32 new_state ;
};
struct __anonstruct_ld_strip_286 {
   u64 strip ;
   struct megasas_evtarg_ld ld ;
};
struct __anonstruct_pd_err_287 {
   struct megasas_evtarg_pd pd ;
   u32 err ;
};
struct __anonstruct_pd_lba_288 {
   u64 lba ;
   struct megasas_evtarg_pd pd ;
};
struct __anonstruct_pd_lba_ld_289 {
   u64 lba ;
   struct megasas_evtarg_pd pd ;
   struct megasas_evtarg_ld ld ;
};
struct __anonstruct_pd_prog_290 {
   struct megasas_evtarg_pd pd ;
   struct megasas_progress prog ;
};
struct __anonstruct_pd_state_291 {
   struct megasas_evtarg_pd pd ;
   u32 prevState ;
   u32 newState ;
};
struct __anonstruct_pci_292 {
   u16 vendorId ;
   u16 deviceId ;
   u16 subVendorId ;
   u16 subDeviceId ;
};
struct __anonstruct_time_293 {
   u32 rtc ;
   u32 elapsedSeconds ;
};
struct __anonstruct_ecc_294 {
   u32 ecar ;
   u32 elog ;
   char str[64U] ;
};
union __anonunion_args_278 {
   struct __anonstruct_cdbSense_279 cdbSense ;
   struct megasas_evtarg_ld ld ;
   struct __anonstruct_ld_count_280 ld_count ;
   struct __anonstruct_ld_lba_281 ld_lba ;
   struct __anonstruct_ld_owner_282 ld_owner ;
   struct __anonstruct_ld_lba_pd_lba_283 ld_lba_pd_lba ;
   struct __anonstruct_ld_prog_284 ld_prog ;
   struct __anonstruct_ld_state_285 ld_state ;
   struct __anonstruct_ld_strip_286 ld_strip ;
   struct megasas_evtarg_pd pd ;
   struct __anonstruct_pd_err_287 pd_err ;
   struct __anonstruct_pd_lba_288 pd_lba ;
   struct __anonstruct_pd_lba_ld_289 pd_lba_ld ;
   struct __anonstruct_pd_prog_290 pd_prog ;
   struct __anonstruct_pd_state_291 pd_state ;
   struct __anonstruct_pci_292 pci ;
   u32 rate ;
   char str[96U] ;
   struct __anonstruct_time_293 time ;
   struct __anonstruct_ecc_294 ecc ;
   u8 b[96U] ;
   u16 s[48U] ;
   u32 w[24U] ;
   u64 d[12U] ;
};
struct megasas_evt_detail {
   u32 seq_num ;
   u32 time_stamp ;
   u32 code ;
   union megasas_evt_class_locale cl ;
   u8 arg_type ;
   u8 reserved1[15U] ;
   union __anonunion_args_278 args ;
   char description[128U] ;
};
struct megasas_aen_event {
   struct delayed_work hotplug_work ;
   struct megasas_instance *instance ;
};
struct megasas_irq_context {
   struct megasas_instance *instance ;
   u32 MSIxIndex ;
};
struct MR_LD_VF_AFFILIATION;
struct MR_LD_VF_AFFILIATION_111;
struct MR_CTRL_HB_HOST_MEM;
struct megasas_instance_template;
struct megasas_instance {
   u32 *producer ;
   dma_addr_t producer_h ;
   u32 *consumer ;
   dma_addr_t consumer_h ;
   struct MR_LD_VF_AFFILIATION *vf_affiliation ;
   dma_addr_t vf_affiliation_h ;
   struct MR_LD_VF_AFFILIATION_111 *vf_affiliation_111 ;
   dma_addr_t vf_affiliation_111_h ;
   struct MR_CTRL_HB_HOST_MEM *hb_host_mem ;
   dma_addr_t hb_host_mem_h ;
   u32 *reply_queue ;
   dma_addr_t reply_queue_h ;
   struct megasas_register_set *reg_set ;
   u32 *reply_post_host_index_addr[16U] ;
   struct megasas_pd_list pd_list[256U] ;
   struct megasas_pd_list local_pd_list[256U] ;
   u8 ld_ids[128U] ;
   s8 init_id ;
   u16 max_num_sge ;
   u16 max_fw_cmds ;
   u16 max_mfi_cmds ;
   u32 max_sectors_per_req ;
   struct megasas_aen_event *ev ;
   struct megasas_cmd **cmd_list ;
   struct list_head cmd_pool ;
   spinlock_t cmd_pool_lock ;
   spinlock_t hba_lock ;
   spinlock_t completion_lock ;
   struct dma_pool *frame_dma_pool ;
   struct dma_pool *sense_dma_pool ;
   struct megasas_evt_detail *evt_detail ;
   dma_addr_t evt_detail_h ;
   struct megasas_cmd *aen_cmd ;
   struct mutex aen_mutex ;
   struct semaphore ioctl_sem ;
   struct Scsi_Host *host ;
   wait_queue_head_t int_cmd_wait_q ;
   wait_queue_head_t abort_cmd_wait_q ;
   struct pci_dev *pdev ;
   u32 unique_id ;
   u32 fw_support_ieee ;
   atomic_t fw_outstanding ;
   atomic_t fw_reset_no_pci_access ;
   struct megasas_instance_template *instancet ;
   struct tasklet_struct isr_tasklet ;
   struct work_struct work_init ;
   u8 flag ;
   u8 unload ;
   u8 flag_ieee ;
   u8 issuepend_done ;
   u8 disableOnlineCtrlReset ;
   u8 UnevenSpanSupport ;
   u8 adprecovery ;
   unsigned long last_time ;
   u32 mfiStatus ;
   u32 last_seq_num ;
   struct list_head internal_reset_pending_q ;
   void *ctrl_context ;
   unsigned int msix_vectors ;
   struct msix_entry msixentry[128U] ;
   struct megasas_irq_context irq_context[128U] ;
   u64 map_id ;
   struct megasas_cmd *map_update_cmd ;
   unsigned long bar ;
   long reset_flags ;
   struct mutex reset_mutex ;
   struct timer_list sriov_heartbeat_timer ;
   char skip_heartbeat_timer_del ;
   u8 requestorId ;
   u64 initiator_sas_address ;
   u64 ld_sas_address[64U] ;
   char PlasmaFW111 ;
   char mpio ;
   int throttlequeuedepth ;
   u8 mask_interrupts ;
   u8 is_imr ;
};
struct MR_LD_VF_MAP {
   u32 size ;
   union MR_LD_REF ref ;
   u8 ldVfCount ;
   u8 reserved[6U] ;
   u8 policy[1U] ;
};
struct MR_LD_VF_AFFILIATION {
   u32 size ;
   u8 ldCount ;
   u8 vfCount ;
   u8 thisVf ;
   u8 reserved[9U] ;
   struct MR_LD_VF_MAP map[1U] ;
};
struct IOV_111 {
   u8 maxVFsSupported ;
   u8 numVFsEnabled ;
   u8 requestorId ;
   u8 reserved[5U] ;
};
struct MR_LD_VF_MAP_111 {
   u8 targetId ;
   u8 reserved[3U] ;
   u8 policy[8U] ;
};
struct MR_LD_VF_AFFILIATION_111 {
   u8 vdCount ;
   u8 vfCount ;
   u8 thisVf ;
   u8 reserved[5U] ;
   struct MR_LD_VF_MAP_111 map[64U] ;
};
struct __anonstruct_debug_296 {
   unsigned char debugmode : 1 ;
   unsigned int reserved : 31 ;
};
struct __anonstruct_HB_295 {
   u32 fwCounter ;
   struct __anonstruct_debug_296 debug ;
   u32 reserved_fw[6U] ;
   u32 driverCounter ;
   u32 reserved_driver[7U] ;
};
struct MR_CTRL_HB_HOST_MEM {
   struct __anonstruct_HB_295 HB ;
   u8 pad[960U] ;
};
struct megasas_instance_template {
   void (*fire_cmd)(struct megasas_instance * , dma_addr_t , u32 , struct megasas_register_set * ) ;
   void (*enable_intr)(struct megasas_instance * ) ;
   void (*disable_intr)(struct megasas_instance * ) ;
   int (*clear_intr)(struct megasas_register_set * ) ;
   u32 (*read_fw_status_reg)(struct megasas_register_set * ) ;
   int (*adp_reset)(struct megasas_instance * , struct megasas_register_set * ) ;
   int (*check_reset)(struct megasas_instance * , struct megasas_register_set * ) ;
   irqreturn_t (*service_isr)(int , void * ) ;
   void (*tasklet)(unsigned long ) ;
   u32 (*init_adapter)(struct megasas_instance * ) ;
   u32 (*build_and_issue_cmd)(struct megasas_instance * , struct scsi_cmnd * ) ;
   void (*issue_dcmd)(struct megasas_instance * , struct megasas_cmd * ) ;
};
struct __anonstruct_context_298 {
   u16 smid ;
   u16 resvd ;
};
union __anonunion_ldv_38649_297 {
   struct __anonstruct_context_298 context ;
   u32 frame_count ;
};
struct megasas_cmd {
   union megasas_frame *frame ;
   dma_addr_t frame_phys_addr ;
   u8 *sense ;
   dma_addr_t sense_phys_addr ;
   u32 index ;
   u8 sync_cmd ;
   u8 cmd_status ;
   u8 abort_aen ;
   u8 retry_for_fw_reset ;
   struct list_head list ;
   struct scsi_cmnd *scmd ;
   struct megasas_instance *instance ;
   union __anonunion_ldv_38649_297 ldv_38649 ;
};
union __anonunion_frame_299 {
   u8 raw[128U] ;
   struct megasas_header hdr ;
};
struct megasas_iocpacket {
   u16 host_no ;
   u16 __pad1 ;
   u32 sgl_off ;
   u32 sge_count ;
   u32 sense_off ;
   u32 sense_len ;
   union __anonunion_frame_299 frame ;
   struct iovec sgl[16U] ;
};
struct megasas_aen {
   u16 host_no ;
   u16 __pad1 ;
   u32 seq_num ;
   u32 class_locale_word ;
};
union __anonunion_frame_300 {
   u8 raw[128U] ;
   struct megasas_header hdr ;
};
struct compat_megasas_iocpacket {
   u16 host_no ;
   u16 __pad1 ;
   u32 sgl_off ;
   u32 sge_count ;
   u32 sense_off ;
   u32 sense_len ;
   union __anonunion_frame_300 frame ;
   struct compat_iovec sgl[16U] ;
};
struct megasas_mgmt_info {
   u16 count ;
   struct megasas_instance *instance[1024U] ;
   int max_index ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___3;
typedef struct Scsi_Host *ldv_func_ret_type___4;
typedef int ldv_func_ret_type___5;
typedef int ldv_func_ret_type___6;
typedef int ldv_func_ret_type___7;
enum hrtimer_restart;
struct MPI25_IEEE_SGE_CHAIN64 {
   u64 Address ;
   u32 Length ;
   u16 Reserved1 ;
   u8 NextChainOffset ;
   u8 Flags ;
};
struct MPI2_IOC_INIT_REQUEST {
   u8 WhoInit ;
   u8 Reserved1 ;
   u8 ChainOffset ;
   u8 Function ;
   u16 Reserved2 ;
   u8 Reserved3 ;
   u8 MsgFlags ;
   u8 VP_ID ;
   u8 VF_ID ;
   u16 Reserved4 ;
   u16 MsgVersion ;
   u16 HeaderVersion ;
   u32 Reserved5 ;
   u16 Reserved6 ;
   u8 Reserved7 ;
   u8 HostMSIxVectors ;
   u16 Reserved8 ;
   u16 SystemRequestFrameSize ;
   u16 ReplyDescriptorPostQueueDepth ;
   u16 ReplyFreeQueueDepth ;
   u32 SenseBufferAddressHigh ;
   u32 SystemReplyAddressHigh ;
   u64 SystemRequestFrameBaseAddress ;
   u64 ReplyDescriptorPostQueueAddress ;
   u64 ReplyFreeQueueAddress ;
   u64 TimeStamp ;
};
struct IO_REQUEST_INFO {
   u64 ldStartBlock ;
   u32 numBlocks ;
   u16 ldTgtId ;
   u8 isRead ;
   u16 devHandle ;
   u64 pdBlock ;
   u8 fpOkForIo ;
   u8 IoforUnevenSpan ;
   u8 start_span ;
   u8 reserved ;
   u64 start_row ;
};
struct MR_LD_TARGET_SYNC {
   u8 targetId ;
   u8 reserved ;
   u16 seqNum ;
};
struct __anonstruct_u_249 {
   u32 low ;
   u32 high ;
};
union desc_value {
   u64 word ;
   struct __anonstruct_u_249 u ;
};
typedef __u64 uint64_t;
enum hrtimer_restart;
typedef struct LOG_BLOCK_SPAN_INFO *PLD_SPAN_INFO;
typedef struct page___0 *pgtable_t___0;
struct __anonstruct____missing_field_name_211 {
   unsigned int inuse : 16 ;
   unsigned int objects : 15 ;
   unsigned int frozen : 1 ;
};
union __anonunion____missing_field_name_210 {
   atomic_t _mapcount ;
   struct __anonstruct____missing_field_name_211 __annonCompField39 ;
   int units ;
};
struct __anonstruct____missing_field_name_209 {
   union __anonunion____missing_field_name_210 __annonCompField40 ;
   atomic_t _count ;
};
union __anonunion____missing_field_name_208 {
   unsigned long counters ;
   struct __anonstruct____missing_field_name_209 __annonCompField41 ;
   unsigned int active ;
};
struct __anonstruct____missing_field_name_206 {
   union __anonunion_ldv_14140_140 __annonCompField38 ;
   union __anonunion____missing_field_name_208 __annonCompField42 ;
};
struct __anonstruct____missing_field_name_213 {
   struct page___0 *next ;
   int pages ;
   int pobjects ;
};
union __anonunion____missing_field_name_212 {
   struct list_head lru ;
   struct __anonstruct____missing_field_name_213 __annonCompField44 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t___0 pmd_huge_pte ;
};
union __anonunion____missing_field_name_214 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache___0 *slab_cache ;
   struct page___0 *first_page ;
};
struct page___0 {
   unsigned long flags ;
   union __anonunion_ldv_14134_138 __annonCompField37 ;
   struct __anonstruct____missing_field_name_206 __annonCompField43 ;
   union __anonunion____missing_field_name_212 __annonCompField45 ;
   union __anonunion____missing_field_name_214 __annonCompField46 ;
   unsigned long debug_flags ;
} __attribute__((__aligned__((2) * (sizeof(unsigned long )) ))) ;
enum kobj_ns_type;
struct attribute___0 {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep : 1 ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct sysfs_ops___0 {
   ssize_t (*show)(struct kobject___0 * , struct attribute___0 * , char * ) ;
   ssize_t (*store)(struct kobject___0 * , struct attribute___0 * , char const * ,
                    size_t ) ;
};
struct kobject___0 {
   char const *name ;
   struct list_head entry ;
   struct kobject___0 *parent ;
   struct kset *kset ;
   struct kobj_type___0 *ktype ;
   struct kernfs_node *sd ;
   struct kref kref ;
   struct delayed_work release ;
   unsigned int state_initialized : 1 ;
   unsigned int state_in_sysfs : 1 ;
   unsigned int state_add_uevent_sent : 1 ;
   unsigned int state_remove_uevent_sent : 1 ;
   unsigned int uevent_suppress : 1 ;
};
struct kobj_type___0 {
   void (*release)(struct kobject___0 *kobj ) ;
   struct sysfs_ops___0 const *sysfs_ops ;
   struct attribute___0 **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject___0 *kobj ) ;
   void const *(*namespace)(struct kobject___0 *kobj ) ;
};
struct kmem_cache_cpu___0 {
   void **freelist ;
   unsigned long tid ;
   struct page___0 *page ;
   struct page___0 *partial ;
   unsigned int stat[26] ;
};
struct kmem_cache___0 {
   struct kmem_cache_cpu___0 *cpu_slab ;
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
   struct kobject___0 kobj ;
   struct memcg_cache_params___0 *memcg_params ;
   int max_attr_size ;
   struct kset *memcg_kset ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1 << 10] ;
};
struct __anonstruct____missing_field_name_227 {
   struct callback_head callback_head ;
   struct kmem_cache___0 *memcg_caches[0] ;
};
struct __anonstruct____missing_field_name_228 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache___0 *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion____missing_field_name_226 {
   struct __anonstruct____missing_field_name_227 __annonCompField50 ;
   struct __anonstruct____missing_field_name_228 __annonCompField51 ;
};
struct memcg_cache_params___0 {
   bool is_root_cache ;
   union __anonunion____missing_field_name_226 __annonCompField52 ;
};
long ldv__builtin_expect(long exp , long c ) ;
void ldv_spin_lock(void) ;
void ldv_spin_unlock(void) ;
extern struct module __this_module ;
extern struct pv_irq_ops pv_irq_ops ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
extern unsigned long find_first_bit(unsigned long const * , unsigned long ) ;
extern unsigned int reset_devices ;
extern int printk(char const * , ...) ;
extern void might_fault(void) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
extern int sscanf(char const * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
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
extern void __list_del_entry(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
__inline static void __list_splice(struct list_head const *list , struct list_head *prev ,
                                   struct list_head *next )
{
  struct list_head *first ;
  struct list_head *last ;
  {
  first = list->next;
  last = list->prev;
  first->prev = prev;
  prev->next = first;
  last->next = next;
  next->prev = last;
  return;
}
}
__inline static void list_splice_init(struct list_head *list , struct list_head *head )
{
  int tmp ;
  {
  tmp = list_empty((struct list_head const *)list);
  if (tmp == 0) {
    __list_splice((struct list_head const *)list, head, head->next);
    INIT_LIST_HEAD(list);
  } else {
  }
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlen(char const * ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
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
      warn_slowpath_null("include/linux/cpumask.h", 108);
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
__inline static unsigned int cpumask_first(struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  tmp = find_first_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_next(int n , struct cpumask const *srcp )
{
  unsigned long tmp ;
  {
  if (n != -1) {
    cpumask_check((unsigned int )n);
  } else {
  }
  tmp = find_next_bit((unsigned long const *)(& srcp->bits), (unsigned long )nr_cpu_ids,
                      (unsigned long )(n + 1));
  return ((unsigned int )tmp);
}
}
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
extern unsigned long const cpu_bit_bitmap[65U][128U] ;
__inline static struct cpumask const *get_cpu_mask(unsigned int cpu )
{
  unsigned long const *p ;
  {
  p = (unsigned long const *)(& cpu_bit_bitmap) + (unsigned long )((cpu & 63U) + 1U);
  p = p + - ((unsigned long )(cpu / 64U));
  return ((struct cpumask const *)p);
}
}
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
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"./arch/x86/include/asm/paravirt.h"),
                         "i" (804), "i" (12UL));
    ldv_4851: ;
    goto ldv_4851;
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
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
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
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_6347.rlock);
}
}
__inline static void ldv_spin_unlock_irqrestore_8(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_6347.rlock, flags);
  return;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern long prepare_to_wait_event(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 ) ;
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
__inline static bool queue_work(struct workqueue_struct *wq , struct work_struct *work )
{
  bool tmp ;
  {
  tmp = queue_work_on(8192, wq, work);
  return (tmp);
}
}
__inline static bool queue_delayed_work(struct workqueue_struct *wq , struct delayed_work *dwork ,
                                        unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work_on(8192, wq, dwork, delay);
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
__inline static bool schedule_delayed_work(struct delayed_work *dwork , unsigned long delay )
{
  bool tmp ;
  {
  tmp = queue_delayed_work(system_wq, dwork, delay);
  return (tmp);
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
extern void iounmap(void volatile * ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *ldv_kmalloc_12(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
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
__inline static void *ldv_kcalloc_14(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void ldv_check_alloc_flags(gfp_t flags ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern size_t __VERIFIER_nondet_size_t(void) ;
extern loff_t __VERIFIER_nondet_loff_t(void) ;
extern u32 __VERIFIER_nondet_u32(void) ;
extern unsigned int __VERIFIER_nondet_uint(void) ;
extern unsigned long __VERIFIER_nondet_ulong(void) ;
extern void __VERIFIER_assume(int expression ) ;
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
__inline static void ldv_error(void)
{
  {
  ERROR: ;
  __VERIFIER_error();
}
}
__inline static void ldv_stop(void)
{
  {
  LDV_STOP: ;
  goto LDV_STOP;
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
  ldv_error();
  return;
}
}
struct scsi_cmnd *megasas_template_group0 ;
int ldv_state_variable_8 ;
int ldv_state_variable_10 ;
int ldv_state_variable_6 ;
int ldv_state_variable_0 ;
int ldv_state_variable_5 ;
struct megasas_register_set *megasas_instance_template_xscale_group1 ;
struct inode *megasas_mgmt_fops_group1 ;
int ldv_state_variable_13 ;
int ldv_state_variable_2 ;
int ldv_state_variable_12 ;
struct megasas_register_set *megasas_instance_template_fusion_group1 ;
struct megasas_instance *megasas_instance_template_xscale_group0 ;
struct scsi_device *megasas_template_group1 ;
struct device_driver *driver_attr_dbg_lvl_group0 ;
struct megasas_register_set *megasas_instance_template_ppc_group1 ;
int ldv_state_variable_14 ;
int ldv_state_variable_11 ;
int LDV_IN_INTERRUPT = 1;
struct megasas_instance *megasas_instance_template_ppc_group0 ;
struct pci_dev *megasas_pci_driver_group0 ;
int ldv_state_variable_9 ;
struct megasas_instance *megasas_instance_template_fusion_group0 ;
int ldv_state_variable_3 ;
struct megasas_register_set *megasas_instance_template_skinny_group1 ;
struct file *megasas_mgmt_fops_group2 ;
int ldv_timer_state_1 = 0;
struct megasas_instance *megasas_instance_template_skinny_group0 ;
int ref_cnt ;
int ldv_state_variable_1 ;
struct megasas_register_set *megasas_instance_template_gen2_group1 ;
int ldv_state_variable_7 ;
struct timer_list *ldv_timer_list_1 ;
struct megasas_instance *megasas_instance_template_gen2_group0 ;
int ldv_state_variable_4 ;
void ldv_initialize_megasas_instance_template_11(void) ;
void ldv_initialize_megasas_instance_template_2(void) ;
void ldv_file_operations_9(void) ;
void ldv_initialize_megasas_instance_template_13(void) ;
int reg_timer_1(struct timer_list *timer ) ;
void ldv_initialize_pci_driver_8(void) ;
void ldv_initialize_megasas_instance_template_12(void) ;
void disable_suitable_timer_1(struct timer_list *timer ) ;
void ldv_initialize_scsi_host_template_10(void) ;
void ldv_initialize_driver_attribute_3(void) ;
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag ) ;
void ldv_initialize_megasas_instance_template_14(void) ;
void choose_timer_1(struct timer_list *timer ) ;
extern int driver_create_file(struct device_driver * , struct driver_attribute const * ) ;
extern void driver_remove_file(struct device_driver * , struct driver_attribute const * ) ;
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
extern int dev_printk(char const * , struct device const * , char const * , ...) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_find_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
extern int pci_bus_read_config_dword(struct pci_bus * , unsigned int , int , u32 * ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
extern int pci_bus_write_config_dword(struct pci_bus * , unsigned int , int , u32 ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
__inline static int pci_read_config_dword(struct pci_dev const *dev , int where ,
                                          u32 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_dword(dev->bus, dev->devfn, where, val);
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
__inline static int pci_write_config_dword(struct pci_dev const *dev , int where ,
                                           u32 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_dword(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device_mem(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_select_bars(struct pci_dev * , unsigned long ) ;
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
extern int pci_request_selected_regions(struct pci_dev * , int , char const * ) ;
extern void pci_release_selected_regions(struct pci_dev * , int ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
void *ldv_dma_pool_alloc_22(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_23(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
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
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
extern int dma_supported(struct device * , u64 ) ;
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
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
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
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
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
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("./arch/x86/include/asm/dma-mapping.h", 166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
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
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : (struct device *)0,
                        size, dma_handle, 32U, (struct dma_attrs *)0);
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
extern unsigned long clear_user(void * , unsigned long ) ;
extern unsigned long copy_in_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern void __copy_from_user_overflow(void) ;
extern void __copy_to_user_overflow(void) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __copy_from_user_overflow();
    }
  }
  return (n);
}
}
__inline static unsigned long copy_to_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = __builtin_object_size(from, 0);
  sz = (int )tmp;
  might_fault();
  tmp___0 = ldv__builtin_expect(sz < 0, 1L);
  if (tmp___0 != 0L) {
    n = _copy_to_user(to, from, (unsigned int )n);
  } else {
    tmp___1 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___1 != 0L) {
      n = _copy_to_user(to, from, (unsigned int )n);
    } else {
      __copy_to_user_overflow();
    }
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
extern void free_irq(unsigned int , void * ) ;
extern int irq_set_affinity_hint(unsigned int , struct cpumask const * ) ;
extern void __tasklet_schedule(struct tasklet_struct * ) ;
__inline static void tasklet_schedule(struct tasklet_struct *t )
{
  int tmp ;
  {
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& t->state));
  if (tmp == 0) {
    __tasklet_schedule(t);
  } else {
  }
  return;
}
}
extern void tasklet_kill(struct tasklet_struct * ) ;
extern void tasklet_init(struct tasklet_struct * , void (*)(unsigned long ) , unsigned long ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  msleep(seconds * 1000U);
  return;
}
}
extern bool capable(int ) ;
__inline static void sema_init(struct semaphore *sem , int val )
{
  struct lock_class_key __key ;
  struct semaphore __constr_expr_0 ;
  {
  __constr_expr_0.lock.raw_lock.ldv_1458.head_tail = 0U;
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
extern int down_interruptible(struct semaphore * ) ;
extern void up(struct semaphore * ) ;
extern int fasync_helper(int , struct file * , int , struct fasync_struct ** ) ;
extern void kill_fasync(struct fasync_struct ** , int , int ) ;
extern int __register_chrdev(unsigned int , unsigned int , unsigned int , char const * ,
                             struct file_operations const * ) ;
extern void __unregister_chrdev(unsigned int , unsigned int , unsigned int , char const * ) ;
__inline static int register_chrdev(unsigned int major , char const *name , struct file_operations const *fops )
{
  int tmp ;
  {
  tmp = __register_chrdev(major, 0U, 256U, name, fops);
  return (tmp);
}
}
__inline static int ldv_register_chrdev_28(unsigned int major , char const *name ,
                                           struct file_operations const *fops ) ;
__inline static void unregister_chrdev(unsigned int major , char const *name )
{
  {
  __unregister_chrdev(major, 0U, 256U, name);
  return;
}
}
__inline static void ldv_unregister_chrdev_29(unsigned int major , char const *name ) ;
__inline static void ldv_unregister_chrdev_29(unsigned int major , char const *name ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern long schedule_timeout(long ) ;
extern void schedule(void) ;
__inline static void *compat_ptr(compat_uptr_t uptr )
{
  {
  return ((void *)((unsigned long )uptr));
}
}
extern void *compat_alloc_user_space(unsigned long ) ;
extern void blk_queue_rq_timeout(struct request_queue * , unsigned int ) ;
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
extern int scsi_add_device(struct Scsi_Host * , uint , uint , uint ) ;
extern void scsi_remove_device(struct scsi_device * ) ;
extern void scsi_device_put(struct scsi_device * ) ;
extern struct scsi_device *scsi_device_lookup(struct Scsi_Host * , uint , uint ,
                                              uint ) ;
extern void scsi_adjust_queue_depth(struct scsi_device * , int , int ) ;
extern int scsi_dma_map(struct scsi_cmnd * ) ;
extern void scsi_dma_unmap(struct scsi_cmnd * ) ;
__inline static struct scatterlist *scsi_sglist(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.table.sgl);
}
}
__inline static unsigned int scsi_bufflen(struct scsi_cmnd *cmd )
{
  {
  return (cmd->sdb.length);
}
}
extern struct Scsi_Host *scsi_host_alloc(struct scsi_host_template * , int ) ;
struct Scsi_Host *ldv_scsi_host_alloc_24(struct scsi_host_template *sht , int privsize ) ;
extern int scsi_add_host_with_dma(struct Scsi_Host * , struct device * , struct device * ) ;
int ldv_scsi_add_host_with_dma_20(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
extern void scsi_scan_host(struct Scsi_Host * ) ;
extern void scsi_remove_host(struct Scsi_Host * ) ;
void ldv_scsi_remove_host_27(struct Scsi_Host *shost ) ;
extern void scsi_host_put(struct Scsi_Host * ) ;
extern void scsi_cmd_get_serial(struct Scsi_Host * , struct scsi_cmnd * ) ;
__inline static int scsi_add_host(struct Scsi_Host *host , struct device *dev )
{
  int tmp ;
  {
  tmp = ldv_scsi_add_host_with_dma_20(host, dev, dev);
  return (tmp);
}
}
__inline static int scsi_get_tag_type(struct scsi_device *sdev )
{
  {
  if ((unsigned int )*((unsigned char *)sdev + 329UL) == 0U) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)sdev + 329UL) != 0U) {
    return (34);
  } else {
  }
  if ((unsigned int )*((unsigned char *)sdev + 329UL) != 0U) {
    return (32);
  } else {
  }
  return (0);
}
}
u8 MR_ValidateMapInfo(struct megasas_instance *instance ) ;
static unsigned int max_sectors ;
static int msix_disable ;
static unsigned int msix_vectors ;
static int allow_vf_ioctls ;
static int throttlequeuedepth = 16;
int resetwaittime = 180;
int megasas_transition_to_ready(struct megasas_instance *instance , int ocr ) ;
static int megasas_get_pd_list(struct megasas_instance *instance ) ;
static int megasas_ld_list_query(struct megasas_instance *instance , u8 query_type ) ;
static int megasas_issue_init_mfi(struct megasas_instance *instance ) ;
static int megasas_register_aen(struct megasas_instance *instance , u32 seq_num ,
                                u32 class_locale_word ) ;
static struct pci_device_id megasas_pci_table[14U] =
  { {4096U, 1041U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 96U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 124U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 120U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 121U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 115U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 113U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 1043U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4136U, 21U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 91U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 47U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 93U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4096U, 95U, 4294967295U, 4294967295U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci__megasas_pci_table_device_table ;
static int megasas_mgmt_majorno ;
struct megasas_mgmt_info megasas_mgmt_info ;
static struct fasync_struct *megasas_async_queue ;
static struct mutex megasas_async_queue_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "megasas_async_queue_mutex.wait_lock",
                                                           0, 0UL}}}}, {& megasas_async_queue_mutex.wait_list,
                                                                        & megasas_async_queue_mutex.wait_list},
    0, 0, (void *)(& megasas_async_queue_mutex), {0, {0, 0}, "megasas_async_queue_mutex",
                                                  0, 0UL}};
static int megasas_poll_wait_aen ;
static wait_queue_head_t megasas_poll_wait = {{{{{{0U}}, 3735899821U, 4294967295U, (void *)-1, {0, {0, 0}, "megasas_poll_wait.lock",
                                                      0, 0UL}}}}, {& megasas_poll_wait.task_list,
                                                                   & megasas_poll_wait.task_list}};
static u32 support_poll_for_event ;
u32 megasas_dbg_lvl ;
static u32 support_device_change ;
spinlock_t poll_aen_lock ;
void megasas_complete_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd ,
                          u8 alt_status ) ;
static u32 megasas_read_fw_status_reg_gen2(struct megasas_register_set *regs ) ;
static int megasas_adp_reset_gen2(struct megasas_instance *instance , struct megasas_register_set *reg_set ) ;
static irqreturn_t megasas_isr(int irq , void *devp ) ;
static u32 megasas_init_adapter_mfi(struct megasas_instance *instance ) ;
u32 megasas_build_and_issue_cmd(struct megasas_instance *instance , struct scsi_cmnd *scmd ) ;
static void megasas_complete_cmd_dpc(unsigned long instance_addr ) ;
void megasas_release_fusion(struct megasas_instance *instance ) ;
int megasas_ioc_init_fusion(struct megasas_instance *instance ) ;
void megasas_free_cmds_fusion(struct megasas_instance *instance ) ;
u8 megasas_get_map_info(struct megasas_instance *instance ) ;
int megasas_sync_map_info(struct megasas_instance *instance ) ;
int wait_and_poll(struct megasas_instance *instance , struct megasas_cmd *cmd , int seconds ) ;
void megasas_reset_reply_desc(struct megasas_instance *instance ) ;
int megasas_reset_fusion(struct Scsi_Host *shost , int iotimeout ) ;
void megasas_fusion_ocr_wq(struct work_struct *work ) ;
static int megasas_get_ld_vf_affiliation(struct megasas_instance *instance , int initial ) ;
int megasas_check_mpio_paths(struct megasas_instance *instance , struct scsi_cmnd *scmd ) ;
void megasas_issue_dcmd(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  {
  (*((instance->instancet)->fire_cmd))(instance, cmd->frame_phys_addr, 0U, instance->reg_set);
  return;
}
}
struct megasas_cmd *megasas_get_cmd(struct megasas_instance *instance )
{
  unsigned long flags ;
  struct megasas_cmd *cmd ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  cmd = (struct megasas_cmd *)0;
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& instance->cmd_pool));
  if (tmp == 0) {
    __mptr = (struct list_head const *)instance->cmd_pool.next;
    cmd = (struct megasas_cmd *)__mptr + 0xffffffffffffffd8UL;
    list_del_init(& cmd->list);
  } else {
    printk("\vmegasas: Command pool empty!\n");
  }
  spin_unlock_irqrestore(& instance->cmd_pool_lock, flags);
  return (cmd);
}
}
__inline void megasas_return_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  cmd->scmd = (struct scsi_cmnd *)0;
  cmd->ldv_38649.frame_count = 0U;
  if (((((unsigned int )(instance->pdev)->device != 91U && (unsigned int )(instance->pdev)->device != 47U) && (unsigned int )(instance->pdev)->device != 93U) && (unsigned int )(instance->pdev)->device != 95U) && reset_devices != 0U) {
    (cmd->frame)->hdr.cmd = 255U;
  } else {
  }
  list_add_tail(& cmd->list, & instance->cmd_pool);
  spin_unlock_irqrestore(& instance->cmd_pool_lock, flags);
  return;
}
}
__inline static void megasas_enable_intr_xscale(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  {
  regs = instance->reg_set;
  writel(0U, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
__inline static void megasas_disable_intr_xscale(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  u32 mask ;
  {
  mask = 31U;
  regs = instance->reg_set;
  writel(mask, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
static u32 megasas_read_fw_status_reg_xscale(struct megasas_register_set *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& regs->outbound_msg_0));
  return (tmp);
}
}
static int megasas_clear_intr_xscale(struct megasas_register_set *regs )
{
  u32 status ;
  u32 mfiStatus ;
  {
  mfiStatus = 0U;
  status = readl((void const volatile *)(& regs->outbound_intr_status));
  if ((status & 2U) != 0U) {
    mfiStatus = 1U;
  } else {
  }
  if ((int )status & 1) {
    mfiStatus = mfiStatus | 2U;
  } else {
  }
  if (mfiStatus != 0U) {
    writel(status, (void volatile *)(& regs->outbound_intr_status));
  } else {
  }
  readl((void const volatile *)(& regs->outbound_intr_status));
  return ((int )mfiStatus);
}
}
__inline static void megasas_fire_cmd_xscale(struct megasas_instance *instance , dma_addr_t frame_phys_addr ,
                                             u32 frame_count , struct megasas_register_set *regs )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  writel((unsigned int )(frame_phys_addr >> 3) | frame_count, (void volatile *)(& regs->inbound_queue_port));
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  return;
}
}
static int megasas_adp_reset_xscale(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  u32 i ;
  u32 pcidata ;
  {
  writel(64U, (void volatile *)(& regs->inbound_doorbell));
  i = 0U;
  goto ldv_38930;
  ldv_38929:
  msleep(1000U);
  i = i + 1U;
  ldv_38930: ;
  if (i <= 2U) {
    goto ldv_38929;
  } else {
  }
  pcidata = 0U;
  pci_read_config_dword((struct pci_dev const *)instance->pdev, 132, & pcidata);
  printk("\rpcidata = %x\n", pcidata);
  if ((pcidata & 2U) != 0U) {
    printk("\rmfi 1068 offset read=%x\n", pcidata);
    pcidata = pcidata & 4294967293U;
    pci_write_config_dword((struct pci_dev const *)instance->pdev, 132, pcidata);
    i = 0U;
    goto ldv_38933;
    ldv_38932:
    msleep(1000U);
    i = i + 1U;
    ldv_38933: ;
    if (i <= 1U) {
      goto ldv_38932;
    } else {
    }
    pcidata = 0U;
    pci_read_config_dword((struct pci_dev const *)instance->pdev, 100, & pcidata);
    printk("i068 offset handshake read=%x\n", pcidata);
    if ((pcidata & 4294901760U) == 3722248192U) {
      printk("i068 offset pcidt=%x\n", pcidata);
      pcidata = 0U;
      pci_write_config_dword((struct pci_dev const *)instance->pdev, 100, pcidata);
    } else {
    }
  } else {
  }
  return (0);
}
}
static int megasas_check_reset_xscale(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  if ((unsigned int )instance->adprecovery != 0U && *(instance->consumer) == 3735936685U) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct megasas_instance_template megasas_instance_template_xscale =
     {& megasas_fire_cmd_xscale, & megasas_enable_intr_xscale, & megasas_disable_intr_xscale,
    & megasas_clear_intr_xscale, & megasas_read_fw_status_reg_xscale, & megasas_adp_reset_xscale,
    & megasas_check_reset_xscale, & megasas_isr, & megasas_complete_cmd_dpc, & megasas_init_adapter_mfi,
    & megasas_build_and_issue_cmd, & megasas_issue_dcmd};
__inline static void megasas_enable_intr_ppc(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  {
  regs = instance->reg_set;
  writel(4294967295U, (void volatile *)(& regs->outbound_doorbell_clear));
  writel(2147483647U, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
__inline static void megasas_disable_intr_ppc(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  u32 mask ;
  {
  mask = 4294967295U;
  regs = instance->reg_set;
  writel(mask, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
static u32 megasas_read_fw_status_reg_ppc(struct megasas_register_set *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& regs->outbound_scratch_pad));
  return (tmp);
}
}
static int megasas_clear_intr_ppc(struct megasas_register_set *regs )
{
  u32 status ;
  u32 mfiStatus ;
  {
  mfiStatus = 0U;
  status = readl((void const volatile *)(& regs->outbound_intr_status));
  if ((int )status < 0) {
    mfiStatus = 1U;
  } else {
  }
  if ((status & 4U) != 0U) {
    mfiStatus = mfiStatus | 2U;
  } else {
  }
  writel(status, (void volatile *)(& regs->outbound_doorbell_clear));
  readl((void const volatile *)(& regs->outbound_doorbell_clear));
  return ((int )mfiStatus);
}
}
__inline static void megasas_fire_cmd_ppc(struct megasas_instance *instance , dma_addr_t frame_phys_addr ,
                                          u32 frame_count , struct megasas_register_set *regs )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  writel(((frame_count << 1) | (unsigned int )frame_phys_addr) | 1U, (void volatile *)(& regs->inbound_queue_port));
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  return;
}
}
static int megasas_check_reset_ppc(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  if ((unsigned int )instance->adprecovery != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct megasas_instance_template megasas_instance_template_ppc =
     {& megasas_fire_cmd_ppc, & megasas_enable_intr_ppc, & megasas_disable_intr_ppc,
    & megasas_clear_intr_ppc, & megasas_read_fw_status_reg_ppc, & megasas_adp_reset_xscale,
    & megasas_check_reset_ppc, & megasas_isr, & megasas_complete_cmd_dpc, & megasas_init_adapter_mfi,
    & megasas_build_and_issue_cmd, & megasas_issue_dcmd};
__inline static void megasas_enable_intr_skinny(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  {
  regs = instance->reg_set;
  writel(4294967295U, (void volatile *)(& regs->outbound_intr_mask));
  writel(4294967294U, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
static u32 megasas_read_fw_status_reg_skinny(struct megasas_register_set *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& regs->outbound_scratch_pad));
  return (tmp);
}
}
static int megasas_clear_intr_skinny(struct megasas_register_set *regs )
{
  u32 status ;
  u32 mfiStatus ;
  u32 tmp ;
  {
  mfiStatus = 0U;
  status = readl((void const volatile *)(& regs->outbound_intr_status));
  if ((status & 1U) == 0U) {
    return (0);
  } else {
  }
  tmp = megasas_read_fw_status_reg_skinny(regs);
  if ((tmp & 4026531840U) == 4026531840U) {
    mfiStatus = 2U;
  } else {
    mfiStatus = 1U;
  }
  writel(status, (void volatile *)(& regs->outbound_intr_status));
  readl((void const volatile *)(& regs->outbound_intr_status));
  return ((int )mfiStatus);
}
}
__inline static void megasas_fire_cmd_skinny(struct megasas_instance *instance , dma_addr_t frame_phys_addr ,
                                             u32 frame_count , struct megasas_register_set *regs )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  writel((unsigned int )(frame_phys_addr >> 32ULL), (void volatile *)(& regs->inbound_high_queue_port));
  writel(((unsigned int )frame_phys_addr | (frame_count << 1)) | 1U, (void volatile *)(& regs->inbound_low_queue_port));
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  return;
}
}
static int megasas_check_reset_skinny(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  if ((unsigned int )instance->adprecovery != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct megasas_instance_template megasas_instance_template_skinny =
     {& megasas_fire_cmd_skinny, & megasas_enable_intr_skinny, & megasas_disable_intr_ppc,
    & megasas_clear_intr_skinny, & megasas_read_fw_status_reg_skinny, & megasas_adp_reset_gen2,
    & megasas_check_reset_skinny, & megasas_isr, & megasas_complete_cmd_dpc, & megasas_init_adapter_mfi,
    & megasas_build_and_issue_cmd, & megasas_issue_dcmd};
__inline static void megasas_enable_intr_gen2(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  {
  regs = instance->reg_set;
  writel(4294967295U, (void volatile *)(& regs->outbound_doorbell_clear));
  writel(4294967290U, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
static u32 megasas_read_fw_status_reg_gen2(struct megasas_register_set *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& regs->outbound_scratch_pad));
  return (tmp);
}
}
static int megasas_clear_intr_gen2(struct megasas_register_set *regs )
{
  u32 status ;
  u32 mfiStatus ;
  {
  mfiStatus = 0U;
  status = readl((void const volatile *)(& regs->outbound_intr_status));
  if ((int )status & 1) {
    mfiStatus = 1U;
  } else {
  }
  if ((status & 4U) != 0U) {
    mfiStatus = mfiStatus | 2U;
  } else {
  }
  if (mfiStatus != 0U) {
    writel(status, (void volatile *)(& regs->outbound_doorbell_clear));
  } else {
  }
  readl((void const volatile *)(& regs->outbound_intr_status));
  return ((int )mfiStatus);
}
}
static int megasas_adp_reset_gen2(struct megasas_instance *instance , struct megasas_register_set *reg_set )
{
  u32 retry ;
  u32 HostDiag ;
  u32 *seq_offset ;
  u32 *hostdiag_offset ;
  u32 tmp ;
  u32 tmp___0 ;
  {
  retry = 0U;
  seq_offset = & reg_set->seq_offset;
  hostdiag_offset = & reg_set->host_diag;
  if ((unsigned long )instance->instancet == (unsigned long )(& megasas_instance_template_skinny)) {
    seq_offset = & reg_set->fusion_seq_offset;
    hostdiag_offset = & reg_set->fusion_host_diag;
  } else {
  }
  writel(0U, (void volatile *)seq_offset);
  writel(4U, (void volatile *)seq_offset);
  writel(11U, (void volatile *)seq_offset);
  writel(2U, (void volatile *)seq_offset);
  writel(7U, (void volatile *)seq_offset);
  writel(13U, (void volatile *)seq_offset);
  msleep(1000U);
  HostDiag = readl((void const volatile *)hostdiag_offset);
  goto ldv_39031;
  ldv_39030:
  msleep(100U);
  HostDiag = readl((void const volatile *)hostdiag_offset);
  printk("\rRESETGEN2: retry=%x, hostdiag=%x\n", retry, HostDiag);
  tmp = retry;
  retry = retry + 1U;
  if (tmp > 99U) {
    return (1);
  } else {
  }
  ldv_39031: ;
  if ((HostDiag & 128U) == 0U) {
    goto ldv_39030;
  } else {
  }
  printk("\rADP_RESET_GEN2: HostDiag=%x\n", HostDiag);
  writel(HostDiag | 4U, (void volatile *)hostdiag_offset);
  ssleep(10U);
  HostDiag = readl((void const volatile *)hostdiag_offset);
  goto ldv_39034;
  ldv_39033:
  msleep(100U);
  HostDiag = readl((void const volatile *)hostdiag_offset);
  printk("\rRESET_GEN2: retry=%x, hostdiag=%x\n", retry, HostDiag);
  tmp___0 = retry;
  retry = retry + 1U;
  if (tmp___0 > 999U) {
    return (1);
  } else {
  }
  ldv_39034: ;
  if ((HostDiag & 4U) != 0U) {
    goto ldv_39033;
  } else {
  }
  return (0);
}
}
static int megasas_check_reset_gen2(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  if ((unsigned int )instance->adprecovery != 0U) {
    return (1);
  } else {
  }
  return (0);
}
}
static struct megasas_instance_template megasas_instance_template_gen2 =
     {& megasas_fire_cmd_ppc, & megasas_enable_intr_gen2, & megasas_disable_intr_ppc,
    & megasas_clear_intr_gen2, & megasas_read_fw_status_reg_gen2, & megasas_adp_reset_gen2,
    & megasas_check_reset_gen2, & megasas_isr, & megasas_complete_cmd_dpc, & megasas_init_adapter_mfi,
    & megasas_build_and_issue_cmd, & megasas_issue_dcmd};
struct megasas_instance_template megasas_instance_template_fusion ;
int megasas_issue_polled(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  int seconds ;
  struct megasas_header *frame_hdr ;
  int tmp ;
  {
  frame_hdr = & (cmd->frame)->hdr;
  frame_hdr->cmd_status = 255U;
  frame_hdr->flags = (u16 )((unsigned int )frame_hdr->flags | 1U);
  (*((instance->instancet)->issue_dcmd))(instance, cmd);
  if ((unsigned int )instance->requestorId != 0U) {
    seconds = 300;
  } else {
    seconds = 60;
  }
  tmp = wait_and_poll(instance, cmd, seconds);
  return (tmp);
}
}
static int megasas_issue_blocked_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd ,
                                     int timeout )
{
  int ret ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  wait_queue_t __wait___0 ;
  long __ret___1 ;
  long __int___0 ;
  long tmp___0 ;
  {
  ret = 0;
  cmd->cmd_status = 61U;
  (*((instance->instancet)->issue_dcmd))(instance, cmd);
  if (timeout != 0) {
    __ret = (long )(timeout * 250);
    __cond___0 = (unsigned int )cmd->cmd_status != 61U;
    if ((int )__cond___0 && __ret == 0L) {
      __ret = 1L;
    } else {
    }
    if (((int )__cond___0 || __ret == 0L) == 0) {
      __ret___0 = (long )(timeout * 250);
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_39064:
      tmp = prepare_to_wait_event(& instance->int_cmd_wait_q, & __wait, 2);
      __int = tmp;
      __cond = (unsigned int )cmd->cmd_status != 61U;
      if ((int )__cond && __ret___0 == 0L) {
        __ret___0 = 1L;
      } else {
      }
      if (((int )__cond || __ret___0 == 0L) != 0) {
        goto ldv_39063;
      } else {
      }
      __ret___0 = schedule_timeout(__ret___0);
      goto ldv_39064;
      ldv_39063:
      finish_wait(& instance->int_cmd_wait_q, & __wait);
      __ret = __ret___0;
    } else {
    }
    ret = (int )__ret;
    if (ret == 0) {
      return (1);
    } else {
    }
  } else {
    if ((unsigned int )cmd->cmd_status != 61U) {
      goto ldv_39067;
    } else {
    }
    __ret___1 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    ldv_39073:
    tmp___0 = prepare_to_wait_event(& instance->int_cmd_wait_q, & __wait___0, 2);
    __int___0 = tmp___0;
    if ((unsigned int )cmd->cmd_status != 61U) {
      goto ldv_39072;
    } else {
    }
    schedule();
    goto ldv_39073;
    ldv_39072:
    finish_wait(& instance->int_cmd_wait_q, & __wait___0);
    ldv_39067: ;
  }
  return (0);
}
}
static int megasas_issue_blocked_abort_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd_to_abort ,
                                           int timeout )
{
  struct megasas_cmd *cmd ;
  struct megasas_abort_frame *abort_fr ;
  int ret ;
  long __ret ;
  wait_queue_t __wait ;
  long __ret___0 ;
  long __int ;
  long tmp ;
  bool __cond ;
  bool __cond___0 ;
  wait_queue_t __wait___0 ;
  long __ret___1 ;
  long __int___0 ;
  long tmp___0 ;
  {
  ret = 0;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return (-1);
  } else {
  }
  abort_fr = & (cmd->frame)->abort;
  abort_fr->cmd = 6U;
  abort_fr->cmd_status = 255U;
  abort_fr->flags = 0U;
  abort_fr->abort_context = cmd_to_abort->index;
  abort_fr->abort_mfi_phys_addr_lo = (unsigned int )cmd_to_abort->frame_phys_addr;
  abort_fr->abort_mfi_phys_addr_hi = (unsigned int )(cmd_to_abort->frame_phys_addr >> 32ULL);
  cmd->sync_cmd = 1U;
  cmd->cmd_status = 255U;
  (*((instance->instancet)->issue_dcmd))(instance, cmd);
  if (timeout != 0) {
    __ret = (long )(timeout * 250);
    __cond___0 = (unsigned int )cmd->cmd_status != 61U;
    if ((int )__cond___0 && __ret == 0L) {
      __ret = 1L;
    } else {
    }
    if (((int )__cond___0 || __ret == 0L) == 0) {
      __ret___0 = (long )(timeout * 250);
      INIT_LIST_HEAD(& __wait.task_list);
      __wait.flags = 0U;
      ldv_39093:
      tmp = prepare_to_wait_event(& instance->abort_cmd_wait_q, & __wait, 2);
      __int = tmp;
      __cond = (unsigned int )cmd->cmd_status != 61U;
      if ((int )__cond && __ret___0 == 0L) {
        __ret___0 = 1L;
      } else {
      }
      if (((int )__cond || __ret___0 == 0L) != 0) {
        goto ldv_39092;
      } else {
      }
      __ret___0 = schedule_timeout(__ret___0);
      goto ldv_39093;
      ldv_39092:
      finish_wait(& instance->abort_cmd_wait_q, & __wait);
      __ret = __ret___0;
    } else {
    }
    ret = (int )__ret;
    if (ret == 0) {
      dev_err((struct device const *)(& (instance->pdev)->dev), "Command timedoutfrom %s\n",
              "megasas_issue_blocked_abort_cmd");
      return (1);
    } else {
    }
  } else {
    if ((unsigned int )cmd->cmd_status != 61U) {
      goto ldv_39097;
    } else {
    }
    __ret___1 = 0L;
    INIT_LIST_HEAD(& __wait___0.task_list);
    __wait___0.flags = 0U;
    ldv_39103:
    tmp___0 = prepare_to_wait_event(& instance->abort_cmd_wait_q, & __wait___0, 2);
    __int___0 = tmp___0;
    if ((unsigned int )cmd->cmd_status != 61U) {
      goto ldv_39102;
    } else {
    }
    schedule();
    goto ldv_39103;
    ldv_39102:
    finish_wait(& instance->abort_cmd_wait_q, & __wait___0);
    ldv_39097: ;
  }
  cmd->sync_cmd = 0U;
  megasas_return_cmd(instance, cmd);
  return (0);
}
}
static int megasas_make_sgl64(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                              union megasas_sgl *mfi_sgl )
{
  int i ;
  int sge_count ;
  struct scatterlist *os_sgl ;
  long tmp ;
  {
  sge_count = scsi_dma_map(scp);
  tmp = ldv__builtin_expect(sge_count < 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5295/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/megaraid/megaraid_sas_base.o.c.prepared"),
                         "i" (1121), "i" (12UL));
    ldv_39125: ;
    goto ldv_39125;
  } else {
  }
  if (sge_count != 0) {
    i = 0;
    os_sgl = scsi_sglist(scp);
    goto ldv_39127;
    ldv_39126:
    mfi_sgl->sge64[i].length = os_sgl->dma_length;
    mfi_sgl->sge64[i].phys_addr = os_sgl->dma_address;
    i = i + 1;
    os_sgl = sg_next(os_sgl);
    ldv_39127: ;
    if (i < sge_count) {
      goto ldv_39126;
    } else {
    }
  } else {
  }
  return (sge_count);
}
}
static int megasas_make_sgl_skinny(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                                   union megasas_sgl *mfi_sgl )
{
  int i ;
  int sge_count ;
  struct scatterlist *os_sgl ;
  {
  sge_count = scsi_dma_map(scp);
  if (sge_count != 0) {
    i = 0;
    os_sgl = scsi_sglist(scp);
    goto ldv_39138;
    ldv_39137:
    mfi_sgl->sge_skinny[i].length = os_sgl->dma_length;
    mfi_sgl->sge_skinny[i].phys_addr = os_sgl->dma_address;
    mfi_sgl->sge_skinny[i].flag = 0U;
    i = i + 1;
    os_sgl = sg_next(os_sgl);
    ldv_39138: ;
    if (i < sge_count) {
      goto ldv_39137;
    } else {
    }
  } else {
  }
  return (sge_count);
}
}
static u32 megasas_get_frame_count(struct megasas_instance *instance , u8 sge_count ,
                                   u8 frame_type )
{
  int num_cnt ;
  int sge_bytes ;
  u32 sge_sz ;
  u32 frame_count ;
  long tmp ;
  {
  frame_count = 0U;
  sge_sz = 12U;
  if ((unsigned int )instance->flag_ieee != 0U) {
    sge_sz = 16U;
  } else {
  }
  tmp = ldv__builtin_expect((unsigned int )frame_type == 1U, 0L);
  if (tmp != 0L) {
    if ((unsigned int )instance->flag_ieee == 1U) {
      num_cnt = (int )sge_count + -1;
    } else {
      num_cnt = (int )sge_count + -1;
    }
  } else
  if ((unsigned int )instance->flag_ieee == 1U) {
    num_cnt = (int )sge_count + -1;
  } else {
    num_cnt = (int )sge_count + -2;
  }
  if (num_cnt > 0) {
    sge_bytes = (int )(sge_sz * (u32 )num_cnt);
    frame_count = (u32 )(sge_bytes / 64 + (((unsigned int )sge_bytes & 63U) != 0U));
  } else {
  }
  frame_count = frame_count + 1U;
  if (frame_count > 7U) {
    frame_count = 8U;
  } else {
  }
  return (frame_count);
}
}
static int megasas_build_dcdb(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                              struct megasas_cmd *cmd )
{
  u32 is_logical ;
  u32 device_id ;
  u16 flags ;
  struct megasas_pthru_frame *pthru ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  int tmp___0 ;
  {
  flags = 0U;
  is_logical = (scp->device)->channel > 1U;
  device_id = ((scp->device)->channel & 1U) * 128U + (scp->device)->id;
  pthru = (struct megasas_pthru_frame *)cmd->frame;
  if ((unsigned int )scp->sc_data_direction == 1U) {
    flags = 8U;
  } else
  if ((unsigned int )scp->sc_data_direction == 2U) {
    flags = 16U;
  } else
  if ((unsigned int )scp->sc_data_direction == 3U) {
    flags = 0U;
  } else {
  }
  if ((unsigned int )instance->flag_ieee == 1U) {
    flags = (u16 )((unsigned int )flags | 32U);
  } else {
  }
  pthru->cmd = is_logical != 0U ? 3U : 4U;
  pthru->cmd_status = 0U;
  pthru->scsi_status = 0U;
  pthru->target_id = (u8 )device_id;
  pthru->lun = (u8 )(scp->device)->lun;
  pthru->cdb_len = (u8 )scp->cmd_len;
  pthru->timeout = 0U;
  pthru->pad_0 = 0U;
  pthru->flags = flags;
  pthru->data_xfer_len = scsi_bufflen(scp);
  __len = (size_t )scp->cmd_len;
  __ret = memcpy((void *)(& pthru->cdb), (void const *)scp->cmnd, __len);
  if ((int )((signed char )(scp->device)->type) == 1) {
    if ((scp->request)->timeout > 16383999U) {
      pthru->timeout = 65535U;
    } else {
      pthru->timeout = (unsigned short )((scp->request)->timeout / 250U);
    }
  } else {
  }
  if ((unsigned int )instance->flag_ieee == 1U) {
    pthru->flags = (u16 )((unsigned int )pthru->flags | 2U);
    tmp = megasas_make_sgl_skinny(instance, scp, & pthru->sgl);
    pthru->sge_count = (u8 )tmp;
  } else {
    pthru->flags = (u16 )((unsigned int )pthru->flags | 2U);
    tmp___0 = megasas_make_sgl64(instance, scp, & pthru->sgl);
    pthru->sge_count = (u8 )tmp___0;
  }
  if ((int )((unsigned short )pthru->sge_count) > (int )instance->max_num_sge) {
    printk("\vmegasas: DCDB two many SGE NUM=%x\n", (int )pthru->sge_count);
    return (0);
  } else {
  }
  pthru->sense_len = 96U;
  pthru->sense_buf_phys_addr_hi = (unsigned int )(cmd->sense_phys_addr >> 32ULL);
  pthru->sense_buf_phys_addr_lo = (unsigned int )cmd->sense_phys_addr;
  cmd->ldv_38649.frame_count = megasas_get_frame_count(instance, (int )pthru->sge_count,
                                                       1);
  return ((int )cmd->ldv_38649.frame_count);
}
}
static int megasas_build_ldio(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                              struct megasas_cmd *cmd )
{
  u32 device_id ;
  u8 sc ;
  u16 flags ;
  struct megasas_io_frame *ldio ;
  int tmp ;
  int tmp___0 ;
  {
  sc = *(scp->cmnd);
  flags = 0U;
  device_id = ((scp->device)->channel & 1U) * 128U + (scp->device)->id;
  ldio = (struct megasas_io_frame *)cmd->frame;
  if ((unsigned int )scp->sc_data_direction == 1U) {
    flags = 8U;
  } else
  if ((unsigned int )scp->sc_data_direction == 2U) {
    flags = 16U;
  } else {
  }
  if ((unsigned int )instance->flag_ieee == 1U) {
    flags = (u16 )((unsigned int )flags | 32U);
  } else {
  }
  ldio->cmd = ((int )sc & 2) != 0 ? 2U : 1U;
  ldio->cmd_status = 0U;
  ldio->scsi_status = 0U;
  ldio->target_id = (u8 )device_id;
  ldio->timeout = 0U;
  ldio->reserved_0 = 0U;
  ldio->pad_0 = 0U;
  ldio->flags = flags;
  ldio->start_lba_hi = 0U;
  ldio->access_byte = (unsigned int )scp->cmd_len != 6U ? *(scp->cmnd + 1UL) : 0U;
  if ((unsigned int )scp->cmd_len == 6U) {
    ldio->lba_count = (unsigned int )*(scp->cmnd + 4UL);
    ldio->start_lba_lo = (((unsigned int )*(scp->cmnd + 1UL) << 16) | ((unsigned int )*(scp->cmnd + 2UL) << 8)) | (unsigned int )*(scp->cmnd + 3UL);
    ldio->start_lba_lo = ldio->start_lba_lo & 2097151U;
  } else
  if ((unsigned int )scp->cmd_len == 10U) {
    ldio->lba_count = (unsigned int )*(scp->cmnd + 8UL) | ((unsigned int )*(scp->cmnd + 7UL) << 8);
    ldio->start_lba_lo = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else
  if ((unsigned int )scp->cmd_len == 12U) {
    ldio->lba_count = ((((unsigned int )*(scp->cmnd + 6UL) << 24) | ((unsigned int )*(scp->cmnd + 7UL) << 16)) | ((unsigned int )*(scp->cmnd + 8UL) << 8)) | (unsigned int )*(scp->cmnd + 9UL);
    ldio->start_lba_lo = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else
  if ((unsigned int )scp->cmd_len == 16U) {
    ldio->lba_count = ((((unsigned int )*(scp->cmnd + 10UL) << 24) | ((unsigned int )*(scp->cmnd + 11UL) << 16)) | ((unsigned int )*(scp->cmnd + 12UL) << 8)) | (unsigned int )*(scp->cmnd + 13UL);
    ldio->start_lba_lo = ((((unsigned int )*(scp->cmnd + 6UL) << 24) | ((unsigned int )*(scp->cmnd + 7UL) << 16)) | ((unsigned int )*(scp->cmnd + 8UL) << 8)) | (unsigned int )*(scp->cmnd + 9UL);
    ldio->start_lba_hi = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else {
  }
  if ((unsigned int )instance->flag_ieee != 0U) {
    ldio->flags = (u16 )((unsigned int )ldio->flags | 2U);
    tmp = megasas_make_sgl_skinny(instance, scp, & ldio->sgl);
    ldio->sge_count = (u8 )tmp;
  } else {
    ldio->flags = (u16 )((unsigned int )ldio->flags | 2U);
    tmp___0 = megasas_make_sgl64(instance, scp, & ldio->sgl);
    ldio->sge_count = (u8 )tmp___0;
  }
  if ((int )((unsigned short )ldio->sge_count) > (int )instance->max_num_sge) {
    printk("\vmegasas: build_ld_io: sge_count = %x\n", (int )ldio->sge_count);
    return (0);
  } else {
  }
  ldio->sense_len = 96U;
  ldio->sense_buf_phys_addr_hi = 0U;
  ldio->sense_buf_phys_addr_lo = (unsigned int )cmd->sense_phys_addr;
  cmd->ldv_38649.frame_count = megasas_get_frame_count(instance, (int )ldio->sge_count,
                                                       0);
  return ((int )cmd->ldv_38649.frame_count);
}
}
__inline int megasas_is_ldio(struct scsi_cmnd *cmd )
{
  {
  if ((cmd->device)->channel <= 1U) {
    return (0);
  } else {
  }
  switch ((int )*(cmd->cmnd)) {
  case 40: ;
  case 42: ;
  case 168: ;
  case 170: ;
  case 8: ;
  case 10: ;
  case 136: ;
  case 138: ;
  return (1);
  default: ;
  return (0);
  }
}
}
__inline static void megasas_dump_pending_frames(struct megasas_instance *instance )
{
  struct megasas_cmd *cmd ;
  int i ;
  int n ;
  union megasas_sgl *mfi_sgl ;
  struct megasas_io_frame *ldio ;
  struct megasas_pthru_frame *pthru ;
  u32 sgcount ;
  u32 max_cmd ;
  int tmp ;
  int tmp___0 ;
  {
  max_cmd = (u32 )instance->max_fw_cmds;
  printk("\v\nmegasas[%d]: Dumping Frame Phys Address of all pending cmds in FW\n",
         (instance->host)->host_no);
  tmp = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  printk("\vmegasas[%d]: Total OS Pending cmds : %d\n", (instance->host)->host_no,
         tmp);
  printk("\v\nmegasas[%d]: 64 bit SGLs were sent to FW\n", (instance->host)->host_no);
  printk("\vmegasas[%d]: Pending OS cmds in FW : \n", (instance->host)->host_no);
  i = 0;
  goto ldv_39198;
  ldv_39197:
  cmd = *(instance->cmd_list + (unsigned long )i);
  if ((unsigned long )cmd->scmd == (unsigned long )((struct scsi_cmnd *)0)) {
    goto ldv_39193;
  } else {
  }
  printk("\vmegasas[%d]: Frame addr :0x%08lx : ", (instance->host)->host_no, (unsigned long )cmd->frame_phys_addr);
  tmp___0 = megasas_is_ldio(cmd->scmd);
  if (tmp___0 != 0) {
    ldio = (struct megasas_io_frame *)cmd->frame;
    mfi_sgl = & ldio->sgl;
    sgcount = (u32 )ldio->sge_count;
    printk("\vmegasas[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x, lba lo : 0x%x, lba_hi : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\n",
           (instance->host)->host_no, cmd->ldv_38649.frame_count, (int )ldio->cmd,
           (int )ldio->target_id, ldio->start_lba_lo, ldio->start_lba_hi, ldio->sense_buf_phys_addr_lo,
           sgcount);
  } else {
    pthru = (struct megasas_pthru_frame *)cmd->frame;
    mfi_sgl = & pthru->sgl;
    sgcount = (u32 )pthru->sge_count;
    printk("\vmegasas[%d]: frame count : 0x%x, Cmd : 0x%x, Tgt id : 0x%x, lun : 0x%x, cdb_len : 0x%x, data xfer len : 0x%x, sense_buf addr : 0x%x,sge count : 0x%x\n",
           (instance->host)->host_no, cmd->ldv_38649.frame_count, (int )pthru->cmd,
           (int )pthru->target_id, (int )pthru->lun, (int )pthru->cdb_len, pthru->data_xfer_len,
           pthru->sense_buf_phys_addr_lo, sgcount);
  }
  if ((int )megasas_dbg_lvl & 1) {
    n = 0;
    goto ldv_39195;
    ldv_39194:
    printk("\vmegasas: sgl len : 0x%x, sgl addr : 0x%llx ", mfi_sgl->sge64[n].length,
           mfi_sgl->sge64[n].phys_addr);
    n = n + 1;
    ldv_39195: ;
    if ((u32 )n < sgcount) {
      goto ldv_39194;
    } else {
    }
  } else {
  }
  printk("\v\n");
  ldv_39193:
  i = i + 1;
  ldv_39198: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39197;
  } else {
  }
  printk("\v\nmegasas[%d]: Pending Internal cmds in FW : \n", (instance->host)->host_no);
  i = 0;
  goto ldv_39201;
  ldv_39200:
  cmd = *(instance->cmd_list + (unsigned long )i);
  if ((unsigned int )cmd->sync_cmd == 1U) {
    printk("Xx%08lx : ", (unsigned long )cmd->frame_phys_addr);
  } else {
  }
  i = i + 1;
  ldv_39201: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39200;
  } else {
  }
  printk("\vmegasas[%d]: Dumping Done.\n\n", (instance->host)->host_no);
  return;
}
}
u32 megasas_build_and_issue_cmd(struct megasas_instance *instance , struct scsi_cmnd *scmd )
{
  struct megasas_cmd *cmd ;
  u32 frame_count ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return (4181U);
  } else {
  }
  tmp___1 = megasas_is_ldio(scmd);
  if (tmp___1 != 0) {
    tmp = megasas_build_ldio(instance, scmd, cmd);
    frame_count = (u32 )tmp;
  } else {
    tmp___0 = megasas_build_dcdb(instance, scmd, cmd);
    frame_count = (u32 )tmp___0;
  }
  if (frame_count == 0U) {
    goto out_return_cmd;
  } else {
  }
  cmd->scmd = scmd;
  scmd->SCp.ptr = (char *)cmd;
  atomic_inc(& instance->fw_outstanding);
  (*((instance->instancet)->fire_cmd))(instance, cmd->frame_phys_addr, cmd->ldv_38649.frame_count - 1U,
                                       instance->reg_set);
  return (0U);
  out_return_cmd:
  megasas_return_cmd(instance, cmd);
  return (1U);
}
}
static int megasas_queue_command_lck(struct scsi_cmnd *scmd , void (*done)(struct scsi_cmnd * ) )
{
  struct megasas_instance *instance ;
  unsigned long flags ;
  int tmp ;
  u32 tmp___0 ;
  {
  instance = (struct megasas_instance *)(& ((scmd->device)->host)->hostdata);
  if ((unsigned int )instance->issuepend_done == 0U) {
    return (4181);
  } else {
  }
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery == 1U) {
    tmp = megasas_check_mpio_paths(instance, scmd);
    if (tmp == 524288) {
      spin_unlock_irqrestore(& instance->hba_lock, flags);
      return (4181);
    } else {
      spin_unlock_irqrestore(& instance->hba_lock, flags);
      scmd->result = 65536;
      (*done)(scmd);
      return (0);
    }
  } else {
  }
  if ((unsigned int )instance->adprecovery == 4U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    scmd->result = 65536;
    (*done)(scmd);
    return (0);
  } else {
  }
  if ((unsigned int )instance->adprecovery != 0U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    return (4181);
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  scmd->scsi_done = done;
  scmd->result = 0;
  if ((scmd->device)->channel > 1U && ((scmd->device)->id > 63U || (scmd->device)->lun != 0U)) {
    scmd->result = 262144;
    goto out_done;
  } else {
  }
  switch ((int )*(scmd->cmnd)) {
  case 53:
  scmd->result = 0;
  goto out_done;
  default: ;
  goto ldv_39220;
  }
  ldv_39220:
  tmp___0 = (*((instance->instancet)->build_and_issue_cmd))(instance, scmd);
  if (tmp___0 != 0U) {
    printk("\vmegasas: Err returned from build_and_issue_cmd\n");
    return (4181);
  } else {
  }
  return (0);
  out_done:
  (*done)(scmd);
  return (0);
}
}
static int megasas_queue_command(struct Scsi_Host *shost , struct scsi_cmnd *cmd )
{
  unsigned long irq_flags ;
  int rc ;
  {
  ldv_spin_lock();
  scsi_cmd_get_serial(shost, cmd);
  rc = megasas_queue_command_lck(cmd, cmd->scsi_done);
  spin_unlock_irqrestore(shost->host_lock, irq_flags);
  return (rc);
}
}
static struct megasas_instance *megasas_lookup_instance(u16 host_no )
{
  int i ;
  {
  i = 0;
  goto ldv_39232;
  ldv_39231: ;
  if ((unsigned long )megasas_mgmt_info.instance[i] != (unsigned long )((struct megasas_instance *)0) && ((megasas_mgmt_info.instance[i])->host)->host_no == (unsigned int )host_no) {
    return (megasas_mgmt_info.instance[i]);
  } else {
  }
  i = i + 1;
  ldv_39232: ;
  if (megasas_mgmt_info.max_index > i) {
    goto ldv_39231;
  } else {
  }
  return ((struct megasas_instance *)0);
}
}
static int megasas_slave_configure(struct scsi_device *sdev )
{
  u16 pd_index ;
  struct megasas_instance *instance ;
  {
  pd_index = 0U;
  instance = megasas_lookup_instance((int )((u16 )(sdev->host)->host_no));
  if (sdev->channel <= 1U && (int )((signed char )sdev->type) == 0) {
    pd_index = (unsigned int )((u16 )sdev->channel) * 128U + (unsigned int )((u16 )sdev->id);
    if ((unsigned int )instance->pd_list[(int )pd_index].driveState == 64U) {
      blk_queue_rq_timeout(sdev->request_queue, 22500U);
      return (0);
    } else {
    }
    return (-6);
  } else {
  }
  blk_queue_rq_timeout(sdev->request_queue, 22500U);
  return (0);
}
}
static int megasas_slave_alloc(struct scsi_device *sdev )
{
  u16 pd_index ;
  struct megasas_instance *instance ;
  {
  pd_index = 0U;
  instance = megasas_lookup_instance((int )((u16 )(sdev->host)->host_no));
  if (sdev->channel <= 1U && (int )((signed char )sdev->type) == 0) {
    pd_index = (unsigned int )((u16 )sdev->channel) * 128U + (unsigned int )((u16 )sdev->id);
    if ((unsigned int )instance->pd_list[(int )pd_index].driveState == 64U && (unsigned int )instance->pd_list[(int )pd_index].driveType == 0U) {
      return (0);
    } else {
    }
    return (-6);
  } else {
  }
  return (0);
}
}
void megaraid_sas_kill_hba(struct megasas_instance *instance )
{
  {
  if ((((((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) || (unsigned int )(instance->pdev)->device == 91U) || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    writel(32U, (void volatile *)(& (instance->reg_set)->doorbell));
    readl((void const volatile *)(& (instance->reg_set)->doorbell));
    if ((int )((signed char )instance->mpio) != 0 && (unsigned int )instance->requestorId != 0U) {
      memset((void *)(& instance->ld_ids), 255, 128UL);
    } else {
    }
  } else {
    writel(32U, (void volatile *)(& (instance->reg_set)->inbound_doorbell));
  }
  return;
}
}
void megasas_check_and_restore_queue_depth(struct megasas_instance *instance )
{
  unsigned long flags ;
  int tmp ;
  {
  if ((int )instance->flag & 1 && (long )((instance->last_time - (unsigned long )jiffies) + 1250UL) < 0L) {
    tmp = atomic_read((atomic_t const *)(& instance->fw_outstanding));
    if (tmp < instance->throttlequeuedepth + 1) {
      ldv_spin_lock();
      instance->flag = (unsigned int )instance->flag & 254U;
      if ((unsigned int )instance->is_imr != 0U) {
        (instance->host)->can_queue = (int )instance->max_fw_cmds + -5;
      } else {
        (instance->host)->can_queue = (int )instance->max_fw_cmds + -32;
      }
      spin_unlock_irqrestore((instance->host)->host_lock, flags);
    } else {
    }
  } else {
  }
  return;
}
}
static void megasas_complete_cmd_dpc(unsigned long instance_addr )
{
  u32 producer ;
  u32 consumer ;
  u32 context ;
  struct megasas_cmd *cmd ;
  struct megasas_instance *instance ;
  unsigned long flags ;
  {
  instance = (struct megasas_instance *)instance_addr;
  if ((unsigned int )instance->adprecovery == 4U) {
    return;
  } else {
  }
  ldv_spin_lock();
  producer = *(instance->producer);
  consumer = *(instance->consumer);
  goto ldv_39268;
  ldv_39267:
  context = *(instance->reply_queue + (unsigned long )consumer);
  if ((u32 )instance->max_fw_cmds <= context) {
    printk("\vUnexpected context value %x\n", context);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5295/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/megaraid/megaraid_sas_base.o.c.prepared"),
                         "i" (1833), "i" (12UL));
    ldv_39266: ;
    goto ldv_39266;
  } else {
  }
  cmd = *(instance->cmd_list + (unsigned long )context);
  megasas_complete_cmd(instance, cmd, 0);
  consumer = consumer + 1U;
  if ((u32 )((int )instance->max_fw_cmds + 1) == consumer) {
    consumer = 0U;
  } else {
  }
  ldv_39268: ;
  if (consumer != producer) {
    goto ldv_39267;
  } else {
  }
  *(instance->consumer) = producer;
  spin_unlock_irqrestore(& instance->completion_lock, flags);
  megasas_check_and_restore_queue_depth(instance);
  return;
}
}
void megasas_start_timer(struct megasas_instance *instance , struct timer_list *timer ,
                         void *fn , unsigned long interval )
{
  {
  reg_timer_1(timer);
  timer->expires = (unsigned long )jiffies + interval;
  timer->data = (unsigned long )instance;
  timer->function = (void (*)(unsigned long ))fn;
  add_timer(timer);
  return;
}
}
static void megasas_internal_reset_defer_cmds(struct megasas_instance *instance ) ;
static void process_fw_state_change_wq(struct work_struct *work ) ;
void megasas_do_ocr(struct megasas_instance *instance )
{
  {
  if (((unsigned int )(instance->pdev)->device == 1041U || (unsigned int )(instance->pdev)->device == 21U) || (unsigned int )(instance->pdev)->device == 1043U) {
    *(instance->consumer) = 3735936685U;
  } else {
  }
  (*((instance->instancet)->disable_intr))(instance);
  instance->adprecovery = 1U;
  instance->issuepend_done = 0U;
  atomic_set(& instance->fw_outstanding, 0);
  megasas_internal_reset_defer_cmds(instance);
  process_fw_state_change_wq(& instance->work_init);
  return;
}
}
static int megasas_get_ld_vf_affiliation(struct megasas_instance *instance , int initial )
{
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct MR_LD_VF_AFFILIATION *new_affiliation ;
  struct MR_LD_VF_AFFILIATION_111 *new_affiliation_111 ;
  struct MR_LD_VF_MAP *newmap ;
  struct MR_LD_VF_MAP *savedmap ;
  dma_addr_t new_affiliation_h ;
  dma_addr_t new_affiliation_111_h ;
  int ld ;
  int retval ;
  u8 thisVf ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  new_affiliation = (struct MR_LD_VF_AFFILIATION *)0;
  new_affiliation_111 = (struct MR_LD_VF_AFFILIATION_111 *)0;
  newmap = (struct MR_LD_VF_MAP *)0;
  savedmap = (struct MR_LD_VF_MAP *)0;
  retval = 0;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: megasas_get_ld_vf_affiliation: Failed to get cmd for scsi%d.\n",
           (instance->host)->host_no);
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  if ((unsigned long )instance->vf_affiliation == (unsigned long )((struct MR_LD_VF_AFFILIATION *)0) && (unsigned long )instance->vf_affiliation_111 == (unsigned long )((struct MR_LD_VF_AFFILIATION_111 *)0)) {
    printk("\fmegasas: SR-IOV: Couldn\'t get LD/VF affiliation for scsi%d.\n", (instance->host)->host_no);
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  if (initial != 0) {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      memset((void *)instance->vf_affiliation_111, 0, 776UL);
    } else {
      memset((void *)instance->vf_affiliation, 0, 2080UL);
    }
  } else {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      tmp = pci_alloc_consistent(instance->pdev, 776UL, & new_affiliation_111_h);
      new_affiliation_111 = (struct MR_LD_VF_AFFILIATION_111 *)tmp;
    } else {
      tmp___0 = pci_alloc_consistent(instance->pdev, 2080UL, & new_affiliation_h);
      new_affiliation = (struct MR_LD_VF_AFFILIATION *)tmp___0;
    }
    if ((unsigned long )new_affiliation == (unsigned long )((struct MR_LD_VF_AFFILIATION *)0) && (unsigned long )new_affiliation_111 == (unsigned long )((struct MR_LD_VF_AFFILIATION_111 *)0)) {
      printk("\017megasas: SR-IOV: Couldn\'t allocate memory for new affiliation for scsi%d.\n",
             (instance->host)->host_no);
      megasas_return_cmd(instance, cmd);
      return (-12);
    } else {
    }
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      memset((void *)new_affiliation_111, 0, 776UL);
    } else {
      memset((void *)new_affiliation, 0, 2080UL);
    }
  }
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 24U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  if ((int )((signed char )instance->PlasmaFW111) != 0) {
    dcmd->data_xfer_len = 776U;
    dcmd->opcode = 52429312U;
  } else {
    dcmd->data_xfer_len = 2080U;
    dcmd->opcode = 51708416U;
  }
  if (initial != 0) {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      dcmd->sgl.sge32[0].phys_addr = (u32 )instance->vf_affiliation_111_h;
    } else {
      dcmd->sgl.sge32[0].phys_addr = (u32 )instance->vf_affiliation_h;
    }
  } else
  if ((int )((signed char )instance->PlasmaFW111) != 0) {
    dcmd->sgl.sge32[0].phys_addr = (u32 )new_affiliation_111_h;
  } else {
    dcmd->sgl.sge32[0].phys_addr = (u32 )new_affiliation_h;
  }
  if ((int )((signed char )instance->PlasmaFW111) != 0) {
    dcmd->sgl.sge32[0].length = 776U;
  } else {
    dcmd->sgl.sge32[0].length = 2080U;
  }
  printk("\fmegasas: SR-IOV: Getting LD/VF affiliation for scsi%d\n", (instance->host)->host_no);
  megasas_issue_blocked_cmd(instance, cmd, 0);
  if ((unsigned int )dcmd->cmd_status != 0U) {
    printk("\fmegasas: SR-IOV: LD/VF affiliation DCMD failed with status 0x%x for scsi%d.\n",
           (int )dcmd->cmd_status, (instance->host)->host_no);
    retval = 1;
    goto out;
  } else {
  }
  if (initial == 0) {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      if ((unsigned int )new_affiliation_111->vdCount == 0U) {
        printk("\fmegasas: SR-IOV: Got new LD/VF affiliation for passive path for scsi%d.\n",
               (instance->host)->host_no);
        retval = 1;
        goto out;
      } else {
      }
      thisVf = new_affiliation_111->thisVf;
      ld = 0;
      goto ldv_39303;
      ldv_39302: ;
      if ((int )(instance->vf_affiliation_111)->map[ld].policy[(int )thisVf] != (int )new_affiliation_111->map[ld].policy[(int )thisVf]) {
        printk("\fmegasas: SR-IOV: Got new LD/VF affiliation for scsi%d.\n", (instance->host)->host_no);
        __len = 776UL;
        if (__len > 63UL) {
          __ret = memcpy((void *)instance->vf_affiliation_111, (void const *)new_affiliation_111,
                           __len);
        } else {
          __ret = memcpy((void *)instance->vf_affiliation_111, (void const *)new_affiliation_111,
                                   __len);
        }
        retval = 1;
        goto out;
      } else {
      }
      ld = ld + 1;
      ldv_39303: ;
      if ((int )new_affiliation_111->vdCount > ld) {
        goto ldv_39302;
      } else {
      }
    } else {
      if ((unsigned int )new_affiliation->ldCount == 0U) {
        printk("\fmegasas: SR-IOV: Got new LD/VF affiliation for passive path for scsi%d.\n",
               (instance->host)->host_no);
        retval = 1;
        goto out;
      } else {
      }
      newmap = (struct MR_LD_VF_MAP *)(& new_affiliation->map);
      savedmap = (struct MR_LD_VF_MAP *)(& (instance->vf_affiliation)->map);
      thisVf = new_affiliation->thisVf;
      ld = 0;
      goto ldv_39309;
      ldv_39308: ;
      if ((int )savedmap->policy[(int )thisVf] != (int )newmap->policy[(int )thisVf]) {
        printk("\fmegasas: SR-IOV: Got new LD/VF affiliation for scsi%d.\n", (instance->host)->host_no);
        __len___0 = (size_t )new_affiliation->size;
        __ret___0 = memcpy((void *)instance->vf_affiliation, (void const *)new_affiliation,
                                     __len___0);
        retval = 1;
        goto out;
      } else {
      }
      savedmap = savedmap + (unsigned long )savedmap->size;
      newmap = newmap + (unsigned long )newmap->size;
      ld = ld + 1;
      ldv_39309: ;
      if ((int )new_affiliation->ldCount > ld) {
        goto ldv_39308;
      } else {
      }
    }
  } else {
  }
  out: ;
  if ((unsigned long )new_affiliation != (unsigned long )((struct MR_LD_VF_AFFILIATION *)0)) {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      pci_free_consistent(instance->pdev, 776UL, (void *)new_affiliation_111, new_affiliation_111_h);
    } else {
      pci_free_consistent(instance->pdev, 2080UL, (void *)new_affiliation, new_affiliation_h);
    }
  } else {
  }
  megasas_return_cmd(instance, cmd);
  return (retval);
}
}
int megasas_sriov_start_heartbeat(struct megasas_instance *instance , int initial )
{
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  int retval ;
  void *tmp ;
  int tmp___0 ;
  {
  retval = 0;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: megasas_sriov_start_heartbeat: Failed to get cmd for scsi%d.\n",
           (instance->host)->host_no);
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  if (initial != 0) {
    tmp = pci_alloc_consistent(instance->pdev, 1024UL, & instance->hb_host_mem_h);
    instance->hb_host_mem = (struct MR_CTRL_HB_HOST_MEM *)tmp;
    if ((unsigned long )instance->hb_host_mem == (unsigned long )((struct MR_CTRL_HB_HOST_MEM *)0)) {
      printk("\017megasas: SR-IOV: Couldn\'t allocate memory for heartbeat host memory for scsi%d.\n",
             (instance->host)->host_no);
      retval = -12;
      goto out;
    } else {
    }
    memset((void *)instance->hb_host_mem, 0, 1024UL);
  } else {
  }
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->mbox.s[0] = 1024U;
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 24U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 1024U;
  dcmd->opcode = 17728645U;
  dcmd->sgl.sge32[0].phys_addr = (u32 )instance->hb_host_mem_h;
  dcmd->sgl.sge32[0].length = 1024U;
  printk("\fmegasas: SR-IOV: Starting heartbeat for scsi%d\n", (instance->host)->host_no);
  tmp___0 = megasas_issue_polled(instance, cmd);
  if (tmp___0 == 0) {
    retval = 0;
  } else {
    printk("\fmegasas: SR-IOV: MR_DCMD_CTRL_SHARED_HOST_MEM_ALLOC DCMD timed out for scsi%d\n",
           (instance->host)->host_no);
    retval = 1;
    goto out;
  }
  if ((unsigned int )dcmd->cmd_status != 0U) {
    printk("\fmegasas: SR-IOV: MR_DCMD_CTRL_SHARED_HOST_MEM_ALLOC DCMD failed with status 0x%x for scsi%d\n",
           (int )dcmd->cmd_status, (instance->host)->host_no);
    retval = 1;
    goto out;
  } else {
  }
  out:
  megasas_return_cmd(instance, cmd);
  return (retval);
}
}
void megasas_sriov_heartbeat_handler(unsigned long instance_addr )
{
  struct megasas_instance *instance ;
  {
  instance = (struct megasas_instance *)instance_addr;
  if ((instance->hb_host_mem)->HB.fwCounter != (instance->hb_host_mem)->HB.driverCounter) {
    (instance->hb_host_mem)->HB.driverCounter = (instance->hb_host_mem)->HB.fwCounter;
    ldv_mod_timer_21(& instance->sriov_heartbeat_timer, (unsigned long )jiffies + 1250UL);
  } else {
    printk("\fmegasas: SR-IOV: Heartbeat never completed for scsi%d\n", (instance->host)->host_no);
    schedule_work(& instance->work_init);
  }
  return;
}
}
static int megasas_wait_for_outstanding(struct megasas_instance *instance )
{
  int i ;
  u32 reset_index ;
  u32 wait_time ;
  u8 adprecovery ;
  unsigned long flags ;
  struct list_head clist_local ;
  struct megasas_cmd *reset_cmd ;
  u32 fw_state ;
  u8 kill_adapter_flag ;
  struct list_head const *__mptr ;
  int tmp ;
  int outstanding ;
  int tmp___0 ;
  u32 tmp___1 ;
  int outstanding___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  wait_time = 180U;
  ldv_spin_lock();
  adprecovery = instance->adprecovery;
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  if ((unsigned int )adprecovery != 0U) {
    INIT_LIST_HEAD(& clist_local);
    ldv_spin_lock();
    list_splice_init(& instance->internal_reset_pending_q, & clist_local);
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    printk("\rmegasas: HBA reset wait ...\n");
    i = 0;
    goto ldv_39337;
    ldv_39336:
    msleep(1000U);
    ldv_spin_lock();
    adprecovery = instance->adprecovery;
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    if ((unsigned int )adprecovery == 0U) {
      goto ldv_39335;
    } else {
    }
    i = i + 1;
    ldv_39337: ;
    if ((u32 )i < wait_time) {
      goto ldv_39336;
    } else {
    }
    ldv_39335: ;
    if ((unsigned int )adprecovery != 0U) {
      printk("\rmegasas: reset: Stopping HBA.\n");
      ldv_spin_lock();
      instance->adprecovery = 4U;
      spin_unlock_irqrestore(& instance->hba_lock, flags);
      return (8195);
    } else {
    }
    reset_index = 0U;
    goto ldv_39341;
    ldv_39340:
    __mptr = (struct list_head const *)clist_local.next;
    reset_cmd = (struct megasas_cmd *)__mptr + 0xffffffffffffffd8UL;
    list_del_init(& reset_cmd->list);
    if ((unsigned long )reset_cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
      (reset_cmd->scmd)->result = 524288;
      printk("\r%d:%p reset [%02x]\n", reset_index, reset_cmd, (int )*((reset_cmd->scmd)->cmnd));
      (*((reset_cmd->scmd)->scsi_done))(reset_cmd->scmd);
      megasas_return_cmd(instance, reset_cmd);
    } else
    if ((unsigned int )reset_cmd->sync_cmd != 0U) {
      printk("\rmegasas:%p synch cmdsreset queue\n", reset_cmd);
      reset_cmd->cmd_status = 61U;
      (*((instance->instancet)->fire_cmd))(instance, reset_cmd->frame_phys_addr, 0U,
                                           instance->reg_set);
    } else {
      printk("\rmegasas: %p unexpectedcmds lst\n", reset_cmd);
    }
    reset_index = reset_index + 1U;
    ldv_39341:
    tmp = list_empty((struct list_head const *)(& clist_local));
    if (tmp == 0) {
      goto ldv_39340;
    } else {
    }
    return (8194);
  } else {
  }
  i = 0;
  goto ldv_39346;
  ldv_39345:
  tmp___0 = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  outstanding = tmp___0;
  if (outstanding == 0) {
    goto ldv_39344;
  } else {
  }
  if (i % 5 == 0) {
    printk("\rmegasas: [%2d]waiting for %d commands to complete\n", i, outstanding);
    megasas_complete_cmd_dpc((unsigned long )instance);
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_39346: ;
  if (i < resetwaittime) {
    goto ldv_39345;
  } else {
  }
  ldv_39344:
  i = 0;
  kill_adapter_flag = 0U;
  ldv_39348:
  tmp___1 = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
  fw_state = tmp___1 & 4026531840U;
  if (fw_state == 4026531840U && (unsigned int )instance->disableOnlineCtrlReset == 0U) {
    if (i == 3) {
      kill_adapter_flag = 2U;
      goto ldv_39347;
    } else {
    }
    megasas_do_ocr(instance);
    kill_adapter_flag = 1U;
    msleep(1000U);
  } else {
  }
  i = i + 1;
  if (i <= 3) {
    goto ldv_39348;
  } else {
  }
  ldv_39347:
  tmp___3 = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  if (tmp___3 != 0 && (unsigned int )kill_adapter_flag == 0U) {
    if ((unsigned int )instance->disableOnlineCtrlReset == 0U) {
      megasas_do_ocr(instance);
      i = 0;
      goto ldv_39351;
      ldv_39350:
      tmp___2 = atomic_read((atomic_t const *)(& instance->fw_outstanding));
      outstanding___0 = tmp___2;
      if (outstanding___0 == 0) {
        return (8194);
      } else {
      }
      msleep(1000U);
      i = i + 1;
      ldv_39351: ;
      if ((u32 )i < wait_time) {
        goto ldv_39350;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___4 = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  if (tmp___4 != 0 || (unsigned int )kill_adapter_flag == 2U) {
    printk("\rmegaraid_sas: pending cmds after reset\n");
    if ((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) {
      writel(32U, (void volatile *)(& (instance->reg_set)->doorbell));
    } else {
      writel(32U, (void volatile *)(& (instance->reg_set)->inbound_doorbell));
    }
    megasas_dump_pending_frames(instance);
    ldv_spin_lock();
    instance->adprecovery = 4U;
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    return (8195);
  } else {
  }
  printk("\rmegaraid_sas: no pending cmds after reset\n");
  return (8194);
}
}
static int megasas_generic_reset(struct scsi_cmnd *scmd )
{
  int ret_val ;
  struct megasas_instance *instance ;
  {
  instance = (struct megasas_instance *)(& ((scmd->device)->host)->hostdata);
  if ((unsigned long )(scmd->request)->rq_disk != (unsigned long )((struct gendisk *)0)) {
    dev_printk("\r", (struct device const *)(& (scmd->device)->sdev_gendev), "[%s] megasas: RESET cmd=%x retries=%x\n",
               (char *)(& ((scmd->request)->rq_disk)->disk_name), (int )*(scmd->cmnd),
               scmd->retries);
  } else {
    dev_printk("\r", (struct device const *)(& (scmd->device)->sdev_gendev), "megasas: RESET cmd=%x retries=%x\n",
               (int )*(scmd->cmnd), scmd->retries);
  }
  if ((unsigned int )instance->adprecovery == 4U) {
    printk("\vmegasas: cannot recover from previous reset failures\n");
    return (8195);
  } else {
  }
  ret_val = megasas_wait_for_outstanding(instance);
  if (ret_val == 8194) {
    printk("\rmegasas: reset successful \n");
  } else {
    printk("\vmegasas: failed to do reset\n");
  }
  return (ret_val);
}
}
static enum blk_eh_timer_return megasas_reset_timer(struct scsi_cmnd *scmd )
{
  struct megasas_instance *instance ;
  unsigned long flags ;
  {
  if ((long )((scmd->jiffies_at_alloc - (unsigned long )jiffies) + 45000UL) < 0L) {
    return (0);
  } else {
  }
  instance = (struct megasas_instance *)(& ((scmd->device)->host)->hostdata);
  if (((int )instance->flag & 1) == 0) {
    ldv_spin_lock();
    (instance->host)->can_queue = instance->throttlequeuedepth;
    instance->last_time = jiffies;
    instance->flag = (u8 )((unsigned int )instance->flag | 1U);
    spin_unlock_irqrestore((instance->host)->host_lock, flags);
  } else {
  }
  return (2);
}
}
static int megasas_reset_device(struct scsi_cmnd *scmd )
{
  int ret ;
  {
  ret = megasas_generic_reset(scmd);
  return (ret);
}
}
static int megasas_reset_bus_host(struct scsi_cmnd *scmd )
{
  int ret ;
  struct megasas_instance *instance ;
  {
  instance = (struct megasas_instance *)(& ((scmd->device)->host)->hostdata);
  if ((((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    ret = megasas_reset_fusion((scmd->device)->host, 1);
  } else {
    ret = megasas_generic_reset(scmd);
  }
  return (ret);
}
}
static int megasas_bios_param(struct scsi_device *sdev , struct block_device *bdev ,
                              sector_t capacity , int *geom )
{
  int heads ;
  int sectors ;
  sector_t cylinders ;
  unsigned long tmp ;
  int _res ;
  int _res___0 ;
  {
  heads = 64;
  sectors = 32;
  tmp = (unsigned long )(heads * sectors);
  cylinders = capacity;
  _res = (int )(cylinders % tmp);
  cylinders = cylinders / tmp;
  if (capacity > 2097151UL) {
    heads = 255;
    sectors = 63;
    tmp = (unsigned long )(heads * sectors);
    cylinders = capacity;
    _res___0 = (int )(cylinders % tmp);
    cylinders = cylinders / tmp;
  } else {
  }
  *geom = heads;
  *(geom + 1UL) = sectors;
  *(geom + 2UL) = (int )cylinders;
  return (0);
}
}
static void megasas_aen_polling(struct work_struct *work ) ;
static void megasas_service_aen(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  unsigned long flags ;
  struct megasas_aen_event *ev ;
  void *tmp ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  if ((unsigned int )cmd->abort_aen == 0U && (unsigned int )instance->unload == 0U) {
    ldv_spin_lock();
    megasas_poll_wait_aen = 1;
    spin_unlock_irqrestore(& poll_aen_lock, flags);
    __wake_up(& megasas_poll_wait, 3U, 1, (void *)0);
    kill_fasync(& megasas_async_queue, 29, 131073);
  } else {
    cmd->abort_aen = 0U;
  }
  instance->aen_cmd = (struct megasas_cmd *)0;
  megasas_return_cmd(instance, cmd);
  if ((unsigned int )instance->unload == 0U && (unsigned int )instance->issuepend_done == 1U) {
    tmp = kzalloc(232UL, 32U);
    ev = (struct megasas_aen_event *)tmp;
    if ((unsigned long )ev == (unsigned long )((struct megasas_aen_event *)0)) {
      printk("\vmegasas_service_aen: out of memory\n");
    } else {
      ev->instance = instance;
      instance->ev = ev;
      __init_work(& ev->hotplug_work.work, 0);
      __constr_expr_0.counter = 137438953408L;
      ev->hotplug_work.work.data = __constr_expr_0;
      lockdep_init_map(& ev->hotplug_work.work.lockdep_map, "(&(&ev->hotplug_work)->work)",
                       & __key, 0);
      INIT_LIST_HEAD(& ev->hotplug_work.work.entry);
      ev->hotplug_work.work.func = & megasas_aen_polling;
      init_timer_key(& ev->hotplug_work.timer, 2U, "(&(&ev->hotplug_work)->timer)",
                     & __key___0);
      ev->hotplug_work.timer.function = & delayed_work_timer_fn;
      ev->hotplug_work.timer.data = (unsigned long )(& ev->hotplug_work);
      schedule_delayed_work(& ev->hotplug_work, 0UL);
    }
  } else {
  }
  return;
}
}
static int megasas_change_queue_depth(struct scsi_device *sdev , int queue_depth ,
                                      int reason )
{
  int tmp ;
  {
  if (reason != 0) {
    return (-95);
  } else {
  }
  if ((sdev->host)->can_queue < queue_depth) {
    queue_depth = (sdev->host)->can_queue;
  } else {
  }
  tmp = scsi_get_tag_type(sdev);
  scsi_adjust_queue_depth(sdev, tmp, queue_depth);
  return (queue_depth);
}
}
static struct scsi_host_template megasas_template =
     {& __this_module, "LSI SAS based MegaRAID driver", 0, 0, 0, 0, 0, & megasas_queue_command,
    0, 0, & megasas_reset_device, 0, & megasas_reset_bus_host, & megasas_reset_bus_host,
    & megasas_slave_alloc, & megasas_slave_configure, 0, 0, 0, 0, 0, & megasas_change_queue_depth,
    0, & megasas_bios_param, 0, 0, 0, & megasas_reset_timer, 0, "megaraid_sas", 0,
    0, 0, (unsigned short)0, (unsigned short)0, (unsigned short)0, 0UL, (short)0,
    (unsigned char)0, (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0, (unsigned char)0,
    (unsigned char)0, 1U, (unsigned char)0, 0U, 0, 0, {0, 0}, 0ULL, 0U, 0};
static void megasas_complete_int_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  {
  cmd->cmd_status = (cmd->frame)->io.cmd_status;
  if ((unsigned int )cmd->cmd_status == 61U) {
    cmd->cmd_status = 0U;
  } else {
  }
  __wake_up(& instance->int_cmd_wait_q, 3U, 1, (void *)0);
  return;
}
}
static void megasas_complete_abort(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  {
  if ((unsigned int )cmd->sync_cmd != 0U) {
    cmd->sync_cmd = 0U;
    cmd->cmd_status = 0U;
    __wake_up(& instance->abort_cmd_wait_q, 3U, 1, (void *)0);
  } else {
  }
  return;
}
}
void megasas_complete_cmd(struct megasas_instance *instance , struct megasas_cmd *cmd ,
                          u8 alt_status )
{
  int exception ;
  struct megasas_header *hdr ;
  unsigned long flags ;
  struct fusion_context *fusion ;
  u32 opcode ;
  size_t __len ;
  void *__ret ;
  u8 tmp ;
  {
  exception = 0;
  hdr = & (cmd->frame)->hdr;
  fusion = (struct fusion_context *)instance->ctrl_context;
  cmd->retry_for_fw_reset = 0U;
  if ((unsigned long )cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (cmd->scmd)->SCp.ptr = (char *)0;
  } else {
  }
  switch ((int )hdr->cmd) {
  case 255:
  printk("\fmegaraid_sas: MFI_CMD_INVALID command completed.\n");
  printk("\fmegaraid_sas: If you have a controller other than PERC5, please upgrade your firmware.\n");
  goto ldv_39428;
  case 4: ;
  case 3: ;
  if ((unsigned int )cmd->sync_cmd != 0U) {
    cmd->sync_cmd = 0U;
    megasas_complete_int_cmd(instance, cmd);
    goto ldv_39428;
  } else {
  }
  case 1: ;
  case 2: ;
  if ((unsigned int )alt_status != 0U) {
    (cmd->scmd)->result = (int )alt_status << 16;
    exception = 1;
  } else {
  }
  if (exception != 0) {
    atomic_dec(& instance->fw_outstanding);
    scsi_dma_unmap(cmd->scmd);
    (*((cmd->scmd)->scsi_done))(cmd->scmd);
    megasas_return_cmd(instance, cmd);
    goto ldv_39428;
  } else {
  }
  switch ((int )hdr->cmd_status) {
  case 0:
  (cmd->scmd)->result = 0;
  goto ldv_39434;
  case 46: ;
  case 24:
  (cmd->scmd)->result = (int )hdr->scsi_status | 458752;
  goto ldv_39434;
  case 45:
  (cmd->scmd)->result = (int )hdr->scsi_status;
  if ((unsigned int )hdr->scsi_status == 2U) {
    memset((void *)(cmd->scmd)->sense_buffer, 0, 96UL);
    __len = (size_t )hdr->sense_len;
    __ret = memcpy((void *)(cmd->scmd)->sense_buffer, (void const *)cmd->sense,
                             __len);
    (cmd->scmd)->result = (cmd->scmd)->result | 134217728;
  } else {
  }
  goto ldv_39434;
  case 51: ;
  case 12:
  (cmd->scmd)->result = 262144;
  goto ldv_39434;
  default:
  printk("\017megasas: MFI FW status %#x\n", (int )hdr->cmd_status);
  (cmd->scmd)->result = 458752;
  goto ldv_39434;
  }
  ldv_39434:
  atomic_dec(& instance->fw_outstanding);
  scsi_dma_unmap(cmd->scmd);
  (*((cmd->scmd)->scsi_done))(cmd->scmd);
  megasas_return_cmd(instance, cmd);
  goto ldv_39428;
  case 7: ;
  case 8: ;
  case 5:
  opcode = (cmd->frame)->dcmd.opcode;
  if (opcode == 50389249U && (unsigned int )(cmd->frame)->dcmd.mbox.b[1] == 1U) {
    fusion->fast_path_io = 0U;
    ldv_spin_lock();
    if ((unsigned int )(cmd->frame)->hdr.cmd_status != 0U) {
      if ((unsigned int )(cmd->frame)->hdr.cmd_status != 35U) {
        printk("\fmegasas: map syncfailed, status = 0x%x.\n", (int )(cmd->frame)->hdr.cmd_status);
      } else {
        megasas_return_cmd(instance, cmd);
        spin_unlock_irqrestore((instance->host)->host_lock, flags);
        goto ldv_39428;
      }
    } else {
      instance->map_id = instance->map_id + 1ULL;
    }
    megasas_return_cmd(instance, cmd);
    tmp = MR_ValidateMapInfo(instance);
    if ((unsigned int )tmp != 0U) {
      fusion->fast_path_io = 1U;
    } else {
      fusion->fast_path_io = 0U;
    }
    megasas_sync_map_info(instance);
    spin_unlock_irqrestore((instance->host)->host_lock, flags);
    goto ldv_39428;
  } else {
  }
  if (opcode == 17039616U || opcode == 17040128U) {
    ldv_spin_lock();
    megasas_poll_wait_aen = 0;
    spin_unlock_irqrestore(& poll_aen_lock, flags);
  } else {
  }
  if (opcode == 17040640U) {
    megasas_service_aen(instance, cmd);
  } else {
    megasas_complete_int_cmd(instance, cmd);
  }
  goto ldv_39428;
  case 6:
  megasas_complete_abort(instance, cmd);
  goto ldv_39428;
  default:
  printk("megasas: Unknown command completed! [0x%X]\n", (int )hdr->cmd);
  goto ldv_39428;
  }
  ldv_39428: ;
  return;
}
}
__inline static void megasas_issue_pending_cmds_again(struct megasas_instance *instance )
{
  struct megasas_cmd *cmd ;
  struct list_head clist_local ;
  union megasas_evt_class_locale class_locale ;
  unsigned long flags ;
  u32 seq_num ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  INIT_LIST_HEAD(& clist_local);
  ldv_spin_lock();
  list_splice_init(& instance->internal_reset_pending_q, & clist_local);
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  goto ldv_39460;
  ldv_39459:
  __mptr = (struct list_head const *)clist_local.next;
  cmd = (struct megasas_cmd *)__mptr + 0xffffffffffffffd8UL;
  list_del_init(& cmd->list);
  if ((unsigned int )cmd->sync_cmd != 0U || (unsigned long )cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\rmegaraid_sas: command %p, %p:%ddetected to be pending while HBA reset.\n",
           cmd, cmd->scmd, (int )cmd->sync_cmd);
    cmd->retry_for_fw_reset = (u8 )((int )cmd->retry_for_fw_reset + 1);
    if ((unsigned int )cmd->retry_for_fw_reset == 3U) {
      printk("\rmegaraid_sas: cmd %p, %p:%dwas tried multiple times during reset.Shutting down the HBA\n",
             cmd, cmd->scmd, (int )cmd->sync_cmd);
      megaraid_sas_kill_hba(instance);
      instance->adprecovery = 4U;
      return;
    } else {
    }
  } else {
  }
  if ((unsigned int )cmd->sync_cmd == 1U) {
    if ((unsigned long )cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
      printk("\rmegaraid_sas: unexpectedcmd attached to internal command!\n");
    } else {
    }
    printk("\rmegasas: %p synchronous cmdon the internal reset queue,issue it again.\n",
           cmd);
    cmd->cmd_status = 61U;
    (*((instance->instancet)->fire_cmd))(instance, cmd->frame_phys_addr, 0U, instance->reg_set);
  } else
  if ((unsigned long )cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\rmegasas: %p scsi cmd [%02x]detected on the internal queue, issue again.\n",
           cmd, (int )*((cmd->scmd)->cmnd));
    atomic_inc(& instance->fw_outstanding);
    (*((instance->instancet)->fire_cmd))(instance, cmd->frame_phys_addr, cmd->ldv_38649.frame_count - 1U,
                                         instance->reg_set);
  } else {
    printk("\rmegasas: %p unexpected cmd on theinternal reset defer list while re-issue!!\n",
           cmd);
  }
  ldv_39460:
  tmp = list_empty((struct list_head const *)(& clist_local));
  if (tmp == 0) {
    goto ldv_39459;
  } else {
  }
  if ((unsigned long )instance->aen_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    printk("\rmegaraid_sas: aen_cmd in def process\n");
    megasas_return_cmd(instance, instance->aen_cmd);
    instance->aen_cmd = (struct megasas_cmd *)0;
  } else {
  }
  seq_num = instance->last_seq_num;
  class_locale.members.reserved = 0U;
  class_locale.members.locale = 65535U;
  class_locale.members.class = -2;
  megasas_register_aen(instance, seq_num, class_locale.word);
  return;
}
}
static void megasas_internal_reset_defer_cmds(struct megasas_instance *instance )
{
  struct megasas_cmd *cmd ;
  int i ;
  u32 max_cmd ;
  u32 defer_index ;
  unsigned long flags ;
  int tmp ;
  {
  max_cmd = (u32 )instance->max_fw_cmds;
  defer_index = 0U;
  ldv_spin_lock();
  i = 0;
  goto ldv_39471;
  ldv_39470:
  cmd = *(instance->cmd_list + (unsigned long )i);
  if ((unsigned int )cmd->sync_cmd == 1U || (unsigned long )cmd->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
    printk("\rmegasas: moving cmd[%d]:%p:%d:%pon the defer queue as internal\n", defer_index,
           cmd, (int )cmd->sync_cmd, cmd->scmd);
    tmp = list_empty((struct list_head const *)(& cmd->list));
    if (tmp == 0) {
      printk("\rmegaraid_sas: OLD_ERROR while moving this cmd:%p, %d %p, it wasdiscovered on some list?\n",
             cmd, (int )cmd->sync_cmd, cmd->scmd);
      list_del_init(& cmd->list);
    } else {
    }
    defer_index = defer_index + 1U;
    list_add_tail(& cmd->list, & instance->internal_reset_pending_q);
  } else {
  }
  i = i + 1;
  ldv_39471: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39470;
  } else {
  }
  spin_unlock_irqrestore(& instance->cmd_pool_lock, flags);
  return;
}
}
static void process_fw_state_change_wq(struct work_struct *work )
{
  struct megasas_instance *instance ;
  struct work_struct const *__mptr ;
  u32 wait ;
  unsigned long flags ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)work;
  instance = (struct megasas_instance *)__mptr + 0xfffffffffffff360UL;
  if ((unsigned int )instance->adprecovery != 1U) {
    printk("\rmegaraid_sas: error, recovery st %x \n", (int )instance->adprecovery);
    return;
  } else {
  }
  if ((unsigned int )instance->adprecovery == 1U) {
    printk("\rmegaraid_sas: FW detected to be in faultstate, restarting it...\n");
    (*((instance->instancet)->disable_intr))(instance);
    atomic_set(& instance->fw_outstanding, 0);
    atomic_set(& instance->fw_reset_no_pci_access, 1);
    (*((instance->instancet)->adp_reset))(instance, instance->reg_set);
    atomic_set(& instance->fw_reset_no_pci_access, 0);
    printk("\rmegaraid_sas: FW restarted successfully,initiating next stage...\n");
    printk("\rmegaraid_sas: HBA recovery state machine,state 2 starting...\n");
    wait = 0U;
    goto ldv_39482;
    ldv_39481:
    msleep(1000U);
    wait = wait + 1U;
    ldv_39482: ;
    if (wait <= 29U) {
      goto ldv_39481;
    } else {
    }
    tmp = megasas_transition_to_ready(instance, 1);
    if (tmp != 0) {
      printk("\rmegaraid_sas:adapter not ready\n");
      megaraid_sas_kill_hba(instance);
      instance->adprecovery = 4U;
      return;
    } else {
    }
    if (((unsigned int )(instance->pdev)->device == 1041U || (unsigned int )(instance->pdev)->device == 21U) || (unsigned int )(instance->pdev)->device == 1043U) {
      *(instance->consumer) = *(instance->producer);
    } else {
      *(instance->consumer) = 0U;
      *(instance->producer) = 0U;
    }
    megasas_issue_init_mfi(instance);
    ldv_spin_lock();
    instance->adprecovery = 0U;
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    (*((instance->instancet)->enable_intr))(instance);
    megasas_issue_pending_cmds_again(instance);
    instance->issuepend_done = 1U;
  } else {
  }
  return;
}
}
static int megasas_deplete_reply_queue(struct megasas_instance *instance , u8 alt_status )
{
  u32 mfiStatus ;
  u32 fw_state ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  {
  tmp = (*((instance->instancet)->check_reset))(instance, instance->reg_set);
  mfiStatus = (u32 )tmp;
  if (mfiStatus == 1U) {
    return (1);
  } else {
  }
  tmp___0 = (*((instance->instancet)->clear_intr))(instance->reg_set);
  mfiStatus = (u32 )tmp___0;
  if (mfiStatus == 0U) {
    if (instance->msix_vectors == 0U) {
      return (0);
    } else {
    }
  } else {
  }
  instance->mfiStatus = mfiStatus;
  if ((mfiStatus & 2U) != 0U) {
    tmp___1 = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
    fw_state = tmp___1 & 4026531840U;
    if (fw_state != 4026531840U) {
      printk("\rmegaraid_sas: fw state:%x\n", fw_state);
    } else {
    }
    if (fw_state == 4026531840U && (unsigned int )instance->disableOnlineCtrlReset == 0U) {
      printk("\rmegaraid_sas: wait adp restart\n");
      if (((unsigned int )(instance->pdev)->device == 1041U || (unsigned int )(instance->pdev)->device == 21U) || (unsigned int )(instance->pdev)->device == 1043U) {
        *(instance->consumer) = 3735936685U;
      } else {
      }
      (*((instance->instancet)->disable_intr))(instance);
      instance->adprecovery = 1U;
      instance->issuepend_done = 0U;
      atomic_set(& instance->fw_outstanding, 0);
      megasas_internal_reset_defer_cmds(instance);
      printk("\rmegasas: fwState=%x, stage:%d\n", fw_state, (int )instance->adprecovery);
      schedule_work(& instance->work_init);
      return (1);
    } else {
      printk("\rmegasas: fwstate:%x, dis_OCR=%x\n", fw_state, (int )instance->disableOnlineCtrlReset);
    }
  } else {
  }
  tasklet_schedule(& instance->isr_tasklet);
  return (1);
}
}
static irqreturn_t megasas_isr(int irq , void *devp )
{
  struct megasas_irq_context *irq_context ;
  struct megasas_instance *instance ;
  unsigned long flags ;
  irqreturn_t rc ;
  int tmp ;
  int tmp___0 ;
  {
  irq_context = (struct megasas_irq_context *)devp;
  instance = irq_context->instance;
  tmp = atomic_read((atomic_t const *)(& instance->fw_reset_no_pci_access));
  if (tmp != 0) {
    return (1);
  } else {
  }
  ldv_spin_lock();
  tmp___0 = megasas_deplete_reply_queue(instance, 0);
  rc = (irqreturn_t )tmp___0;
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  return (rc);
}
}
int megasas_transition_to_ready(struct megasas_instance *instance , int ocr )
{
  int i ;
  u8 max_wait ;
  u32 fw_state ;
  u32 cur_state ;
  u32 abs_state ;
  u32 curr_abs_state ;
  unsigned int tmp ;
  {
  abs_state = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
  fw_state = abs_state & 4026531840U;
  if (fw_state != 2952790016U) {
    printk("\016megasas: Waiting for FW to come to ready state\n");
  } else {
  }
  goto ldv_39527;
  ldv_39526: ;
  switch (fw_state) {
  case 4026531840U:
  printk("\017megasas: FW in FAULT state!!\n");
  if (ocr != 0) {
    max_wait = 180U;
    cur_state = 4026531840U;
    goto ldv_39509;
  } else {
    return (-19);
  }
  case 1610612736U: ;
  if ((((((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) || (unsigned int )(instance->pdev)->device == 91U) || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    writel(24U, (void volatile *)(& (instance->reg_set)->doorbell));
  } else {
    writel(24U, (void volatile *)(& (instance->reg_set)->inbound_doorbell));
  }
  max_wait = 180U;
  cur_state = 1610612736U;
  goto ldv_39509;
  case 2415919104U: ;
  if ((((((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) || (unsigned int )(instance->pdev)->device == 91U) || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    writel(16U, (void volatile *)(& (instance->reg_set)->doorbell));
  } else {
    writel(16U, (void volatile *)(& (instance->reg_set)->inbound_doorbell));
  }
  max_wait = 180U;
  cur_state = 2415919104U;
  goto ldv_39509;
  case 3221225472U:
  (*((instance->instancet)->disable_intr))(instance);
  if ((((((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) || (unsigned int )(instance->pdev)->device == 91U) || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    writel(7U, (void volatile *)(& (instance->reg_set)->doorbell));
    if ((((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
      i = 0;
      goto ldv_39515;
      ldv_39514:
      tmp = readl((void const volatile *)(& (instance->reg_set)->doorbell));
      if ((int )tmp & 1) {
        msleep(20U);
      } else {
        goto ldv_39513;
      }
      i = i + 20;
      ldv_39515: ;
      if (i <= 9999) {
        goto ldv_39514;
      } else {
      }
      ldv_39513: ;
    } else {
    }
  } else {
    writel(7U, (void volatile *)(& (instance->reg_set)->inbound_doorbell));
  }
  max_wait = 180U;
  cur_state = 3221225472U;
  goto ldv_39509;
  case 0U:
  max_wait = 180U;
  cur_state = 0U;
  goto ldv_39509;
  case 268435456U:
  max_wait = 180U;
  cur_state = 268435456U;
  goto ldv_39509;
  case 1073741824U:
  max_wait = 180U;
  cur_state = 1073741824U;
  goto ldv_39509;
  case 1879048192U:
  max_wait = 180U;
  cur_state = 1879048192U;
  goto ldv_39509;
  case 2147483648U:
  max_wait = 180U;
  cur_state = 2147483648U;
  goto ldv_39509;
  case 2684354560U:
  max_wait = 180U;
  cur_state = 2684354560U;
  goto ldv_39509;
  default:
  printk("\017megasas: Unknown state 0x%x\n", fw_state);
  return (-19);
  }
  ldv_39509:
  i = 0;
  goto ldv_39525;
  ldv_39524:
  curr_abs_state = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
  if (abs_state == curr_abs_state) {
    msleep(1U);
  } else {
    goto ldv_39523;
  }
  i = i + 1;
  ldv_39525: ;
  if ((int )max_wait * 1000 > i) {
    goto ldv_39524;
  } else {
  }
  ldv_39523: ;
  if (curr_abs_state == abs_state) {
    printk("\017FW state [%d] hasn\'t changed in %d secs\n", fw_state, (int )max_wait);
    return (-19);
  } else {
  }
  abs_state = curr_abs_state;
  fw_state = curr_abs_state & 4026531840U;
  ldv_39527: ;
  if (fw_state != 2952790016U) {
    goto ldv_39526;
  } else {
  }
  printk("\016megasas: FW now in Ready state\n");
  return (0);
}
}
static void megasas_teardown_frame_pool(struct megasas_instance *instance )
{
  int i ;
  u32 max_cmd ;
  struct megasas_cmd *cmd ;
  {
  max_cmd = (u32 )instance->max_mfi_cmds;
  if ((unsigned long )instance->frame_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_39536;
  ldv_39535:
  cmd = *(instance->cmd_list + (unsigned long )i);
  if ((unsigned long )cmd->frame != (unsigned long )((union megasas_frame *)0)) {
    dma_pool_free(instance->frame_dma_pool, (void *)cmd->frame, cmd->frame_phys_addr);
  } else {
  }
  if ((unsigned long )cmd->sense != (unsigned long )((u8 *)0U)) {
    dma_pool_free(instance->sense_dma_pool, (void *)cmd->sense, cmd->sense_phys_addr);
  } else {
  }
  i = i + 1;
  ldv_39536: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39535;
  } else {
  }
  dma_pool_destroy(instance->frame_dma_pool);
  dma_pool_destroy(instance->sense_dma_pool);
  instance->frame_dma_pool = (struct dma_pool *)0;
  instance->sense_dma_pool = (struct dma_pool *)0;
  return;
}
}
static int megasas_create_frame_pool(struct megasas_instance *instance )
{
  int i ;
  u32 max_cmd ;
  u32 sge_sz ;
  u32 sgl_sz ;
  u32 total_sz ;
  u32 frame_count ;
  struct megasas_cmd *cmd ;
  void *tmp ;
  void *tmp___0 ;
  {
  max_cmd = (u32 )instance->max_mfi_cmds;
  sge_sz = 12U;
  if ((unsigned int )instance->flag_ieee != 0U) {
    sge_sz = 16U;
  } else {
  }
  sgl_sz = (u32 )instance->max_num_sge * sge_sz;
  frame_count = (sgl_sz + 63U) / 64U;
  frame_count = 15U;
  frame_count = frame_count + 1U;
  total_sz = frame_count * 64U;
  instance->frame_dma_pool = dma_pool_create("megasas frame pool", & (instance->pdev)->dev,
                                             (size_t )total_sz, 64UL, 0UL);
  if ((unsigned long )instance->frame_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\017megasas: failed to setup frame pool\n");
    return (-12);
  } else {
  }
  instance->sense_dma_pool = dma_pool_create("megasas sense pool", & (instance->pdev)->dev,
                                             128UL, 4UL, 0UL);
  if ((unsigned long )instance->sense_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\017megasas: failed to setup sense pool\n");
    dma_pool_destroy(instance->frame_dma_pool);
    instance->frame_dma_pool = (struct dma_pool *)0;
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_39549;
  ldv_39548:
  cmd = *(instance->cmd_list + (unsigned long )i);
  tmp = ldv_dma_pool_alloc_22(instance->frame_dma_pool, 208U, & cmd->frame_phys_addr);
  cmd->frame = (union megasas_frame *)tmp;
  tmp___0 = ldv_dma_pool_alloc_23(instance->sense_dma_pool, 208U, & cmd->sense_phys_addr);
  cmd->sense = (u8 *)tmp___0;
  if ((unsigned long )cmd->frame == (unsigned long )((union megasas_frame *)0) || (unsigned long )cmd->sense == (unsigned long )((u8 *)0U)) {
    printk("\017megasas: pci_pool_alloc failed \n");
    megasas_teardown_frame_pool(instance);
    return (-12);
  } else {
  }
  memset((void *)cmd->frame, 0, (size_t )total_sz);
  (cmd->frame)->io.context = cmd->index;
  (cmd->frame)->io.pad_0 = 0U;
  if (((((unsigned int )(instance->pdev)->device != 91U && (unsigned int )(instance->pdev)->device != 47U) && (unsigned int )(instance->pdev)->device != 93U) && (unsigned int )(instance->pdev)->device != 95U) && reset_devices != 0U) {
    (cmd->frame)->hdr.cmd = 255U;
  } else {
  }
  i = i + 1;
  ldv_39549: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39548;
  } else {
  }
  return (0);
}
}
void megasas_free_cmds(struct megasas_instance *instance )
{
  int i ;
  {
  megasas_teardown_frame_pool(instance);
  i = 0;
  goto ldv_39556;
  ldv_39555:
  kfree((void const *)*(instance->cmd_list + (unsigned long )i));
  i = i + 1;
  ldv_39556: ;
  if ((int )instance->max_mfi_cmds > i) {
    goto ldv_39555;
  } else {
  }
  kfree((void const *)instance->cmd_list);
  instance->cmd_list = (struct megasas_cmd **)0;
  INIT_LIST_HEAD(& instance->cmd_pool);
  return;
}
}
int megasas_alloc_cmds(struct megasas_instance *instance )
{
  int i ;
  int j ;
  u32 max_cmd ;
  struct megasas_cmd *cmd ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  max_cmd = (u32 )instance->max_mfi_cmds;
  tmp = kcalloc((size_t )max_cmd, 8UL, 208U);
  instance->cmd_list = (struct megasas_cmd **)tmp;
  if ((unsigned long )instance->cmd_list == (unsigned long )((struct megasas_cmd **)0)) {
    printk("\017megasas: out of memory\n");
    return (-12);
  } else {
  }
  memset((void *)instance->cmd_list, 0, (unsigned long )max_cmd * 8UL);
  i = 0;
  goto ldv_39569;
  ldv_39568:
  tmp___0 = kmalloc(80UL, 208U);
  *(instance->cmd_list + (unsigned long )i) = (struct megasas_cmd *)tmp___0;
  if ((unsigned long )*(instance->cmd_list + (unsigned long )i) == (unsigned long )((struct megasas_cmd *)0)) {
    j = 0;
    goto ldv_39566;
    ldv_39565:
    kfree((void const *)*(instance->cmd_list + (unsigned long )j));
    j = j + 1;
    ldv_39566: ;
    if (j < i) {
      goto ldv_39565;
    } else {
    }
    kfree((void const *)instance->cmd_list);
    instance->cmd_list = (struct megasas_cmd **)0;
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_39569: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39568;
  } else {
  }
  i = 0;
  goto ldv_39572;
  ldv_39571:
  cmd = *(instance->cmd_list + (unsigned long )i);
  memset((void *)cmd, 0, 80UL);
  cmd->index = (u32 )i;
  cmd->scmd = (struct scsi_cmnd *)0;
  cmd->instance = instance;
  list_add_tail(& cmd->list, & instance->cmd_pool);
  i = i + 1;
  ldv_39572: ;
  if ((u32 )i < max_cmd) {
    goto ldv_39571;
  } else {
  }
  tmp___1 = megasas_create_frame_pool(instance);
  if (tmp___1 != 0) {
    printk("\017megasas: Error creating frame DMA pool\n");
    megasas_free_cmds(instance);
  } else {
  }
  return (0);
}
}
static int megasas_get_pd_list(struct megasas_instance *instance )
{
  int ret ;
  int pd_index ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct MR_PD_LIST *ci ;
  struct MR_PD_ADDRESS *pd_addr ;
  dma_addr_t ci_h ;
  void *tmp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  ret = 0;
  pd_index = 0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas (get_pd_list): Failed to get cmd\n");
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  tmp = pci_alloc_consistent(instance->pdev, 8192UL, & ci_h);
  ci = (struct MR_PD_LIST *)tmp;
  if ((unsigned long )ci == (unsigned long )((struct MR_PD_LIST *)0)) {
    printk("\017Failed to alloc mem for pd_list\n");
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)ci, 0, 32UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->mbox.b[0] = 5U;
  dcmd->mbox.b[1] = 0U;
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 8192U;
  dcmd->opcode = 33620224U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = 8192U;
  tmp___0 = megasas_issue_polled(instance, cmd);
  if (tmp___0 == 0) {
    ret = 0;
  } else {
    ret = -1;
  }
  pd_addr = (struct MR_PD_ADDRESS *)(& ci->addr);
  if (ret == 0 && ci->count <= 255U) {
    memset((void *)(& instance->local_pd_list), 0, 1024UL);
    pd_index = 0;
    goto ldv_39585;
    ldv_39584:
    instance->local_pd_list[(int )pd_addr->deviceId].tid = pd_addr->deviceId;
    instance->local_pd_list[(int )pd_addr->deviceId].driveType = pd_addr->scsiDevType;
    instance->local_pd_list[(int )pd_addr->deviceId].driveState = 64U;
    pd_addr = pd_addr + 1;
    pd_index = pd_index + 1;
    ldv_39585: ;
    if ((u32 )pd_index < ci->count) {
      goto ldv_39584;
    } else {
    }
    __len = 1024UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& instance->pd_list), (void const *)(& instance->local_pd_list),
                       __len);
    } else {
      __ret = memcpy((void *)(& instance->pd_list), (void const *)(& instance->local_pd_list),
                               __len);
    }
  } else {
  }
  pci_free_consistent(instance->pdev, 8192UL, (void *)ci, ci_h);
  megasas_return_cmd(instance, cmd);
  return (ret);
}
}
static int megasas_get_ld_list(struct megasas_instance *instance )
{
  int ret ;
  int ld_index ;
  int ids ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct MR_LD_LIST *ci ;
  dma_addr_t ci_h ;
  u32 ld_count ;
  void *tmp ;
  int tmp___0 ;
  {
  ret = 0;
  ld_index = 0;
  ids = 0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas_get_ld_list: Failed to get cmd\n");
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  tmp = pci_alloc_consistent(instance->pdev, 1032UL, & ci_h);
  ci = (struct MR_LD_LIST *)tmp;
  if ((unsigned long )ci == (unsigned long )((struct MR_LD_LIST *)0)) {
    printk("\017Failed to alloc mem in get_ld_list\n");
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)ci, 0, 1032UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->data_xfer_len = 1032U;
  dcmd->opcode = 50397184U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = 1032U;
  dcmd->pad_0 = 0U;
  tmp___0 = megasas_issue_polled(instance, cmd);
  if (tmp___0 == 0) {
    ret = 0;
  } else {
    ret = -1;
  }
  ld_count = ci->ldCount;
  if (ret == 0 && ld_count <= 64U) {
    memset((void *)(& instance->ld_ids), 255, 128UL);
    ld_index = 0;
    goto ldv_39602;
    ldv_39601: ;
    if ((unsigned int )ci->ldList[ld_index].state != 0U) {
      ids = (int )ci->ldList[ld_index].ref.ldv_37843.targetId;
      instance->ld_ids[ids] = ci->ldList[ld_index].ref.ldv_37843.targetId;
    } else {
    }
    ld_index = ld_index + 1;
    ldv_39602: ;
    if ((u32 )ld_index < ld_count) {
      goto ldv_39601;
    } else {
    }
  } else {
  }
  pci_free_consistent(instance->pdev, 1032UL, (void *)ci, ci_h);
  megasas_return_cmd(instance, cmd);
  return (ret);
}
}
static int megasas_ld_list_query(struct megasas_instance *instance , u8 query_type )
{
  int ret ;
  int ld_index ;
  int ids ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct MR_LD_TARGETID_LIST *ci ;
  dma_addr_t ci_h ;
  u32 tgtid_count ;
  void *tmp ;
  int tmp___0 ;
  {
  ret = 0;
  ld_index = 0;
  ids = 0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\fmegasas:(megasas_ld_list_query): Failed to get cmd\n");
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  tmp = pci_alloc_consistent(instance->pdev, 76UL, & ci_h);
  ci = (struct MR_LD_TARGETID_LIST *)tmp;
  if ((unsigned long )ci == (unsigned long )((struct MR_LD_TARGETID_LIST *)0)) {
    printk("\fmegasas: Failed to alloc mem for ld_list_query\n");
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)ci, 0, 76UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->mbox.b[0] = query_type;
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->data_xfer_len = 76U;
  dcmd->opcode = 50397440U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = 76U;
  dcmd->pad_0 = 0U;
  tmp___0 = megasas_issue_polled(instance, cmd);
  if (tmp___0 == 0 && (unsigned int )dcmd->cmd_status == 0U) {
    ret = 0;
  } else {
    ret = 1;
  }
  tgtid_count = ci->count;
  if (ret == 0 && tgtid_count <= 64U) {
    memset((void *)(& instance->ld_ids), 255, 128UL);
    ld_index = 0;
    goto ldv_39617;
    ldv_39616:
    ids = (int )ci->targetId[ld_index];
    instance->ld_ids[ids] = ci->targetId[ld_index];
    ld_index = ld_index + 1;
    ldv_39617: ;
    if ((u32 )ld_index < tgtid_count) {
      goto ldv_39616;
    } else {
    }
  } else {
  }
  pci_free_consistent(instance->pdev, 76UL, (void *)ci, ci_h);
  megasas_return_cmd(instance, cmd);
  return (ret);
}
}
static int megasas_get_ctrl_info(struct megasas_instance *instance , struct megasas_ctrl_info *ctrl_info )
{
  int ret ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct megasas_ctrl_info *ci ;
  dma_addr_t ci_h ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  {
  ret = 0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: Failed to get a free cmd\n");
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  tmp = pci_alloc_consistent(instance->pdev, 2048UL, & ci_h);
  ci = (struct megasas_ctrl_info *)tmp;
  if ((unsigned long )ci == (unsigned long )((struct megasas_ctrl_info *)0)) {
    printk("\017Failed to alloc mem for ctrl info\n");
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)ci, 0, 2048UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 2048U;
  dcmd->opcode = 16842752U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = 2048U;
  tmp___0 = megasas_issue_polled(instance, cmd);
  if (tmp___0 == 0) {
    ret = 0;
    __len = 2048UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)ctrl_info, (void const *)ci, __len);
    } else {
      __ret = memcpy((void *)ctrl_info, (void const *)ci, __len);
    }
  } else {
    ret = -1;
  }
  pci_free_consistent(instance->pdev, 2048UL, (void *)ci, ci_h);
  megasas_return_cmd(instance, cmd);
  return (ret);
}
}
static int megasas_issue_init_mfi(struct megasas_instance *instance )
{
  u32 context ;
  struct megasas_cmd *cmd ;
  struct megasas_init_frame *init_frame ;
  struct megasas_init_queue_info *initq_info ;
  dma_addr_t init_frame_h ;
  dma_addr_t initq_info_h ;
  int tmp ;
  {
  cmd = megasas_get_cmd(instance);
  init_frame = (struct megasas_init_frame *)cmd->frame;
  initq_info = (struct megasas_init_queue_info *)((unsigned long )init_frame + 64UL);
  init_frame_h = cmd->frame_phys_addr;
  initq_info_h = init_frame_h + 64ULL;
  context = init_frame->context;
  memset((void *)init_frame, 0, 64UL);
  memset((void *)initq_info, 0, 32UL);
  init_frame->context = context;
  initq_info->reply_queue_entries = (unsigned int )((int )instance->max_fw_cmds + 1);
  initq_info->reply_queue_start_phys_addr_lo = (unsigned int )instance->reply_queue_h;
  initq_info->producer_index_phys_addr_lo = (unsigned int )instance->producer_h;
  initq_info->consumer_index_phys_addr_lo = (unsigned int )instance->consumer_h;
  init_frame->cmd = 0U;
  init_frame->cmd_status = 255U;
  init_frame->queue_info_new_phys_addr_lo = (unsigned int )initq_info_h;
  init_frame->queue_info_new_phys_addr_hi = (unsigned int )(initq_info_h >> 32ULL);
  init_frame->data_xfer_len = 32U;
  (*((instance->instancet)->disable_intr))(instance);
  tmp = megasas_issue_polled(instance, cmd);
  if (tmp != 0) {
    printk("\vmegasas: Failed to init firmware\n");
    megasas_return_cmd(instance, cmd);
    goto fail_fw_init;
  } else {
  }
  megasas_return_cmd(instance, cmd);
  return (0);
  fail_fw_init: ;
  return (-22);
}
}
static u32 megasas_init_adapter_mfi(struct megasas_instance *instance )
{
  struct megasas_register_set *reg_set ;
  u32 context_sz ;
  u32 reply_q_sz ;
  u32 tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  {
  reg_set = instance->reg_set;
  tmp = (*((instance->instancet)->read_fw_status_reg))(reg_set);
  instance->max_fw_cmds = (u16 )tmp;
  instance->max_fw_cmds = (unsigned int )instance->max_fw_cmds + 65535U;
  instance->max_mfi_cmds = instance->max_fw_cmds;
  tmp___0 = (*((instance->instancet)->read_fw_status_reg))(reg_set);
  instance->max_num_sge = (u16 )((tmp___0 & 16711680U) >> 16);
  tmp___1 = megasas_alloc_cmds(instance);
  if (tmp___1 != 0) {
    goto fail_alloc_cmds;
  } else {
  }
  context_sz = 4U;
  reply_q_sz = (u32 )((int )instance->max_fw_cmds + 1) * context_sz;
  tmp___2 = pci_alloc_consistent(instance->pdev, (size_t )reply_q_sz, & instance->reply_queue_h);
  instance->reply_queue = (u32 *)tmp___2;
  if ((unsigned long )instance->reply_queue == (unsigned long )((u32 *)0U)) {
    printk("\017megasas: Out of DMA mem for reply queue\n");
    goto fail_reply_queue;
  } else {
  }
  tmp___3 = megasas_issue_init_mfi(instance);
  if (tmp___3 != 0) {
    goto fail_fw_init;
  } else {
  }
  instance->fw_support_ieee = 0U;
  tmp___4 = (*((instance->instancet)->read_fw_status_reg))(reg_set);
  instance->fw_support_ieee = tmp___4 & 67108864U;
  printk("\rmegasas_init_mfi: fw_support_ieee=%d", instance->fw_support_ieee);
  if (instance->fw_support_ieee != 0U) {
    instance->flag_ieee = 1U;
  } else {
  }
  return (0U);
  fail_fw_init:
  pci_free_consistent(instance->pdev, (size_t )reply_q_sz, (void *)instance->reply_queue,
                      instance->reply_queue_h);
  fail_reply_queue:
  megasas_free_cmds(instance);
  fail_alloc_cmds: ;
  return (1U);
}
}
static int megasas_init_fw(struct megasas_instance *instance )
{
  u32 max_sectors_1 ;
  u32 max_sectors_2 ;
  u32 tmp_sectors ;
  u32 msix_enable ;
  u32 scratch_pad_2 ;
  resource_size_t base_addr ;
  struct megasas_register_set *reg_set ;
  struct megasas_ctrl_info *ctrl_info ;
  unsigned long bar_list ;
  int i ;
  int loop ;
  int fw_msix_count ;
  struct IOV_111 *iovPtr ;
  int tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  u32 tmp___4 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  unsigned int _min1___1 ;
  unsigned int _min2___1 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  unsigned int tmp___7 ;
  u32 tmp___8 ;
  int tmp___9 ;
  int tmp___10 ;
  void *tmp___11 ;
  u32 __min1 ;
  u32 __min2 ;
  struct fusion_context *fusion ;
  u8 tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  {
  fw_msix_count = 0;
  tmp = pci_select_bars(instance->pdev, 512UL);
  bar_list = (unsigned long )tmp;
  instance->bar = find_first_bit((unsigned long const *)(& bar_list), 8UL);
  tmp___0 = pci_request_selected_regions(instance->pdev, (int )instance->bar, "megasas: LSI");
  if (tmp___0 != 0) {
    printk("\017megasas: IO memory region busy!\n");
    return (-16);
  } else {
  }
  base_addr = (instance->pdev)->resource[instance->bar].start;
  tmp___1 = ioremap_nocache(base_addr, 8192UL);
  instance->reg_set = (struct megasas_register_set *)tmp___1;
  if ((unsigned long )instance->reg_set == (unsigned long )((struct megasas_register_set *)0)) {
    printk("\017megasas: Failed to map IO mem\n");
    goto fail_ioremap;
  } else {
  }
  reg_set = instance->reg_set;
  switch ((int )(instance->pdev)->device) {
  case 91: ;
  case 47: ;
  case 93: ;
  case 95:
  instance->instancet = & megasas_instance_template_fusion;
  goto ldv_39671;
  case 96: ;
  case 124:
  instance->instancet = & megasas_instance_template_ppc;
  goto ldv_39671;
  case 120: ;
  case 121:
  instance->instancet = & megasas_instance_template_gen2;
  goto ldv_39671;
  case 115: ;
  case 113:
  instance->instancet = & megasas_instance_template_skinny;
  goto ldv_39671;
  case 1041: ;
  case 21: ;
  default:
  instance->instancet = & megasas_instance_template_xscale;
  goto ldv_39671;
  }
  ldv_39671:
  tmp___3 = megasas_transition_to_ready(instance, 0);
  if (tmp___3 != 0) {
    atomic_set(& instance->fw_reset_no_pci_access, 1);
    (*((instance->instancet)->adp_reset))(instance, instance->reg_set);
    atomic_set(& instance->fw_reset_no_pci_access, 0);
    _dev_info((struct device const *)(& (instance->pdev)->dev), "megasas: FW restarted successfully from %s!\n",
              "megasas_init_fw");
    ssleep(30U);
    tmp___2 = megasas_transition_to_ready(instance, 0);
    if (tmp___2 != 0) {
      goto fail_ready_state;
    } else {
    }
  } else {
  }
  instance->reply_post_host_index_addr[0] = (u32 *)instance->reg_set + 108U;
  tmp___4 = (*((instance->instancet)->read_fw_status_reg))(reg_set);
  msix_enable = (tmp___4 & 67108864U) >> 26;
  if (msix_enable != 0U && msix_disable == 0) {
    scratch_pad_2 = readl((void const volatile *)(& (instance->reg_set)->outbound_scratch_pad_2));
    if ((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) {
      instance->msix_vectors = (scratch_pad_2 & 31U) + 1U;
      fw_msix_count = (int )instance->msix_vectors;
      if (msix_vectors != 0U) {
        _min1 = msix_vectors;
        _min2 = instance->msix_vectors;
        instance->msix_vectors = _min1 < _min2 ? _min1 : _min2;
      } else {
      }
    } else
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      instance->msix_vectors = ((scratch_pad_2 & 4177920U) >> 14) + 1U;
      fw_msix_count = (int )instance->msix_vectors;
      loop = 1;
      goto ldv_39687;
      ldv_39686:
      instance->reply_post_host_index_addr[loop] = (u32 *)instance->reg_set + ((unsigned long )(loop * 16) + 780UL);
      loop = loop + 1;
      ldv_39687: ;
      if (loop <= 15) {
        goto ldv_39686;
      } else {
      }
      if (msix_vectors != 0U) {
        _min1___0 = msix_vectors;
        _min2___0 = instance->msix_vectors;
        instance->msix_vectors = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
      } else {
      }
    } else {
      instance->msix_vectors = 1U;
    }
    _min1___1 = instance->msix_vectors;
    tmp___5 = cpumask_weight(cpu_online_mask);
    _min2___1 = tmp___5;
    instance->msix_vectors = _min1___1 < _min2___1 ? _min1___1 : _min2___1;
    i = 0;
    goto ldv_39696;
    ldv_39695:
    instance->msixentry[i].entry = (u16 )i;
    i = i + 1;
    ldv_39696: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39695;
    } else {
    }
    i = pci_enable_msix(instance->pdev, (struct msix_entry *)(& instance->msixentry),
                        (int )instance->msix_vectors);
    if (i >= 0) {
      if (i != 0) {
        tmp___6 = pci_enable_msix(instance->pdev, (struct msix_entry *)(& instance->msixentry),
                                  i);
        if (tmp___6 == 0) {
          instance->msix_vectors = (unsigned int )i;
        } else {
          instance->msix_vectors = 0U;
        }
      } else {
      }
    } else {
      instance->msix_vectors = 0U;
    }
    tmp___7 = cpumask_weight(cpu_online_mask);
    _dev_info((struct device const *)(& (instance->pdev)->dev), "[scsi%d]: FW supports<%d> MSIX vector,Online CPUs: <%d>,Current MSIX <%d>\n",
              (instance->host)->host_no, fw_msix_count, tmp___7, instance->msix_vectors);
  } else {
  }
  tmp___8 = (*((instance->instancet)->init_adapter))(instance);
  if (tmp___8 != 0U) {
    goto fail_init_adapter;
  } else {
  }
  printk("\vmegasas: INIT adapter done\n");
  memset((void *)(& instance->pd_list), 0, 1024UL);
  tmp___9 = megasas_get_pd_list(instance);
  if (tmp___9 < 0) {
    printk("\vmegasas: failed to get PD list\n");
    goto fail_init_adapter;
  } else {
  }
  memset((void *)(& instance->ld_ids), 255, 128UL);
  tmp___10 = megasas_ld_list_query(instance, 1);
  if (tmp___10 != 0) {
    megasas_get_ld_list(instance);
  } else {
  }
  tmp___11 = kmalloc(2048UL, 208U);
  ctrl_info = (struct megasas_ctrl_info *)tmp___11;
  tmp_sectors = 0U;
  if ((unsigned long )ctrl_info != (unsigned long )((struct megasas_ctrl_info *)0)) {
    tmp___13 = megasas_get_ctrl_info(instance, ctrl_info);
    if (tmp___13 == 0) {
      max_sectors_1 = (u32 )((int )ctrl_info->max_strips_per_io << (int )ctrl_info->stripe_sz_ops.min);
      max_sectors_2 = ctrl_info->max_request_size;
      __min1 = max_sectors_1;
      __min2 = max_sectors_2;
      tmp_sectors = __min1 < __min2 ? __min1 : __min2;
      if ((unsigned int )ctrl_info->memory_size != 0U) {
        instance->is_imr = 0U;
        _dev_info((struct device const *)(& (instance->pdev)->dev), "Controller type: MR,Memory size is: %dMB\n",
                  (int )ctrl_info->memory_size);
      } else {
        instance->is_imr = 1U;
        _dev_info((struct device const *)(& (instance->pdev)->dev), "Controller type: iMR\n");
      }
      instance->disableOnlineCtrlReset = ctrl_info->properties.OnOffProperties.disableOnlineCtrlReset;
      instance->mpio = (char )ctrl_info->adapterOperations2.mpio;
      instance->UnevenSpanSupport = ctrl_info->adapterOperations2.supportUnevenSpans;
      if ((unsigned int )instance->UnevenSpanSupport != 0U) {
        fusion = (struct fusion_context *)instance->ctrl_context;
        _dev_info((struct device const *)(& (instance->pdev)->dev), "FW supports: UnevenSpanSupport=%x\n",
                  (int )instance->UnevenSpanSupport);
        tmp___12 = MR_ValidateMapInfo(instance);
        if ((unsigned int )tmp___12 != 0U) {
          fusion->fast_path_io = 1U;
        } else {
          fusion->fast_path_io = 0U;
        }
      } else {
      }
      if ((unsigned int )*((unsigned char *)ctrl_info + 32UL) != 0U) {
        if ((unsigned int )*((unsigned char *)ctrl_info + 1959UL) == 0U) {
          instance->PlasmaFW111 = 1;
        } else {
        }
        if ((int )((signed char )instance->PlasmaFW111) == 0) {
          instance->requestorId = ctrl_info->iov.requestorId;
        } else {
          iovPtr = (struct IOV_111 *)ctrl_info + 1998U;
          instance->requestorId = iovPtr->requestorId;
        }
        printk("\fmegaraid_sas: I am VF requestorId %d\n", (int )instance->requestorId);
      } else {
      }
    } else {
    }
  } else {
  }
  instance->max_sectors_per_req = (u32 )(((unsigned long )instance->max_num_sge * 4096UL) / 512UL);
  if (tmp_sectors != 0U && instance->max_sectors_per_req > tmp_sectors) {
    instance->max_sectors_per_req = tmp_sectors;
  } else {
  }
  kfree((void const *)ctrl_info);
  if ((unsigned int )instance->is_imr != 0U) {
    if ((int )instance->max_fw_cmds + -5 < throttlequeuedepth) {
      instance->throttlequeuedepth = 16;
    } else {
      instance->throttlequeuedepth = throttlequeuedepth;
    }
  } else
  if ((int )instance->max_fw_cmds + -32 < throttlequeuedepth) {
    instance->throttlequeuedepth = 16;
  } else {
    instance->throttlequeuedepth = throttlequeuedepth;
  }
  tasklet_init(& instance->isr_tasklet, (instance->instancet)->tasklet, (unsigned long )instance);
  if ((unsigned int )instance->requestorId != 0U) {
    tmp___14 = megasas_sriov_start_heartbeat(instance, 1);
    if (tmp___14 == 0) {
      megasas_start_timer(instance, & instance->sriov_heartbeat_timer, (void *)(& megasas_sriov_heartbeat_handler),
                          1250UL);
    } else {
      instance->skip_heartbeat_timer_del = 1;
    }
  } else {
  }
  return (0);
  fail_init_adapter: ;
  fail_ready_state:
  iounmap((void volatile *)instance->reg_set);
  fail_ioremap:
  pci_release_selected_regions(instance->pdev, (int )instance->bar);
  return (-22);
}
}
static void megasas_release_mfi(struct megasas_instance *instance )
{
  u32 reply_q_sz ;
  {
  reply_q_sz = (u32 )((unsigned long )((int )instance->max_mfi_cmds + 1)) * 4U;
  if ((unsigned long )instance->reply_queue != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(instance->pdev, (size_t )reply_q_sz, (void *)instance->reply_queue,
                        instance->reply_queue_h);
  } else {
  }
  megasas_free_cmds(instance);
  iounmap((void volatile *)instance->reg_set);
  pci_release_selected_regions(instance->pdev, (int )instance->bar);
  return;
}
}
static int megasas_get_seq_num(struct megasas_instance *instance , struct megasas_evt_log_info *eli )
{
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct megasas_evt_log_info *el_info ;
  dma_addr_t el_info_h ;
  void *tmp ;
  int tmp___0 ;
  {
  el_info_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  tmp = pci_alloc_consistent(instance->pdev, 20UL, & el_info_h);
  el_info = (struct megasas_evt_log_info *)tmp;
  if ((unsigned long )el_info == (unsigned long )((struct megasas_evt_log_info *)0)) {
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)el_info, 0, 20UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 0U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 20U;
  dcmd->opcode = 17039616U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )el_info_h;
  dcmd->sgl.sge32[0].length = 20U;
  tmp___0 = megasas_issue_blocked_cmd(instance, cmd, 30);
  if (tmp___0 != 0) {
    dev_err((struct device const *)(& (instance->pdev)->dev), "Command timedoutfrom %s\n",
            "megasas_get_seq_num");
  } else {
    eli->newest_seq_num = el_info->newest_seq_num;
    eli->oldest_seq_num = el_info->oldest_seq_num;
    eli->clear_seq_num = el_info->clear_seq_num;
    eli->shutdown_seq_num = el_info->shutdown_seq_num;
    eli->boot_seq_num = el_info->boot_seq_num;
  }
  pci_free_consistent(instance->pdev, 20UL, (void *)el_info, el_info_h);
  megasas_return_cmd(instance, cmd);
  return (0);
}
}
static int megasas_register_aen(struct megasas_instance *instance , u32 seq_num ,
                                u32 class_locale_word )
{
  int ret_val ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  union megasas_evt_class_locale curr_aen ;
  union megasas_evt_class_locale prev_aen ;
  {
  curr_aen.word = class_locale_word;
  if ((unsigned long )instance->aen_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    prev_aen.word = ((instance->aen_cmd)->frame)->dcmd.mbox.w[1];
    prev_aen.members.locale = prev_aen.members.locale;
    if ((int )prev_aen.members.class <= (int )curr_aen.members.class && (unsigned int )(~ ((int )prev_aen.members.locale) & (int )curr_aen.members.locale) == 0U) {
      return (0);
    } else {
      curr_aen.members.locale = (u16 )((int )curr_aen.members.locale | (int )prev_aen.members.locale);
      if ((int )prev_aen.members.class < (int )curr_aen.members.class) {
        curr_aen.members.class = prev_aen.members.class;
      } else {
      }
      (instance->aen_cmd)->abort_aen = 1U;
      ret_val = megasas_issue_blocked_abort_cmd(instance, instance->aen_cmd, 30);
      if (ret_val != 0) {
        printk("\017megasas: Failed to abort previous AEN command\n");
        return (ret_val);
      } else {
      }
    }
  } else {
  }
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return (-12);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  memset((void *)instance->evt_detail, 0, 256UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 0U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 256U;
  dcmd->opcode = 17040640U;
  dcmd->mbox.w[0] = seq_num;
  instance->last_seq_num = seq_num;
  dcmd->mbox.w[1] = curr_aen.word;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )instance->evt_detail_h;
  dcmd->sgl.sge32[0].length = 256U;
  if ((unsigned long )instance->aen_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    megasas_return_cmd(instance, cmd);
    return (0);
  } else {
  }
  instance->aen_cmd = cmd;
  (*((instance->instancet)->issue_dcmd))(instance, cmd);
  return (0);
}
}
static int megasas_start_aen(struct megasas_instance *instance )
{
  struct megasas_evt_log_info eli ;
  union megasas_evt_class_locale class_locale ;
  int tmp ;
  int tmp___0 ;
  {
  memset((void *)(& eli), 0, 20UL);
  tmp = megasas_get_seq_num(instance, & eli);
  if (tmp != 0) {
    return (-1);
  } else {
  }
  class_locale.members.reserved = 0U;
  class_locale.members.locale = 65535U;
  class_locale.members.class = -2;
  tmp___0 = megasas_register_aen(instance, eli.newest_seq_num + 1U, class_locale.word);
  return (tmp___0);
}
}
static int megasas_io_attach(struct megasas_instance *instance )
{
  struct Scsi_Host *host ;
  int tmp ;
  {
  host = instance->host;
  host->irq = (instance->pdev)->irq;
  host->unique_id = instance->unique_id;
  if ((unsigned int )instance->is_imr != 0U) {
    host->can_queue = (int )instance->max_fw_cmds + -5;
  } else {
    host->can_queue = (int )instance->max_fw_cmds + -32;
  }
  host->this_id = (int )instance->init_id;
  host->sg_tablesize = instance->max_num_sge;
  if (instance->fw_support_ieee != 0U) {
    instance->max_sectors_per_req = 256U;
  } else {
  }
  if (max_sectors != 0U && instance->max_sectors_per_req > max_sectors) {
    instance->max_sectors_per_req = max_sectors;
  } else
  if (max_sectors != 0U) {
    if (((unsigned int )(instance->pdev)->device == 120U || (unsigned int )(instance->pdev)->device == 121U) && max_sectors <= 2048U) {
      instance->max_sectors_per_req = max_sectors;
    } else {
      printk("\016megasas: max_sectors should be > 0and <= %d (or < 1MB for GEN2 controller)\n",
             instance->max_sectors_per_req);
    }
  } else {
  }
  host->max_sectors = (unsigned short )instance->max_sectors_per_req;
  host->cmd_per_lun = 256;
  host->max_channel = 2U;
  host->max_id = 128U;
  host->max_lun = 8U;
  host->max_cmd_len = 16U;
  if ((((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    (host->hostt)->eh_device_reset_handler = (int (*)(struct scsi_cmnd * ))0;
    (host->hostt)->eh_bus_reset_handler = (int (*)(struct scsi_cmnd * ))0;
  } else {
  }
  tmp = scsi_add_host(host, & (instance->pdev)->dev);
  if (tmp != 0) {
    printk("\017megasas: scsi_add_host failed\n");
    return (-19);
  } else {
  }
  scsi_scan_host(host);
  return (0);
}
}
static int megasas_set_dma_mask(struct pci_dev *pdev )
{
  int tmp ;
  int tmp___0 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  tmp___0 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
  if (tmp___0 != 0) {
    tmp = pci_set_dma_mask(pdev, 4294967295ULL);
    if (tmp != 0) {
      goto fail_set_dma_mask;
    } else {
    }
  } else {
  }
  tmp___4 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
  if (tmp___4 != 0) {
    tmp___2 = pci_set_dma_mask(pdev, 4294967295ULL);
    if (tmp___2 == 0) {
      tmp___3 = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
      if (tmp___3 == 0) {
        _dev_info((struct device const *)(& pdev->dev), "set 32bit DMA maskand 32 bit consistent mask\n");
      } else {
        goto fail_set_dma_mask;
      }
    } else {
      goto fail_set_dma_mask;
    }
  } else {
  }
  return (0);
  fail_set_dma_mask: ;
  return (1);
}
}
static int megasas_probe_one(struct pci_dev *pdev , struct pci_device_id const *id )
{
  int rval ;
  int pos ;
  int i ;
  int j ;
  int cpu ;
  struct Scsi_Host *host ;
  struct megasas_instance *instance ;
  u16 control ;
  int tmp ;
  struct fusion_context *fusion ;
  struct lock_class_key __key ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  struct lock_class_key __key___3 ;
  struct lock_class_key __key___4 ;
  struct lock_class_key __key___5 ;
  struct lock_class_key __key___6 ;
  struct lock_class_key __key___7 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___8 ;
  atomic_long_t __constr_expr_1 ;
  int tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  unsigned int tmp___6 ;
  int tmp___7 ;
  struct cpumask const *tmp___8 ;
  int tmp___9 ;
  unsigned int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  control = 0U;
  if (reset_devices != 0U) {
    pos = pci_find_capability(pdev, 17);
    if (pos != 0) {
      pci_read_config_word((struct pci_dev const *)pdev, pos + 2, & control);
      if ((int )((short )control) < 0) {
        _dev_info((struct device const *)(& pdev->dev), "resetting MSI-X\n");
        pci_write_config_word((struct pci_dev const *)pdev, pos + 2, (int )control & 32767);
      } else {
      }
    } else {
    }
  } else {
  }
  printk("\016megasas: %#4.04x:%#4.04x:%#4.04x:%#4.04x: ", (int )pdev->vendor, (int )pdev->device,
         (int )pdev->subsystem_vendor, (int )pdev->subsystem_device);
  printk("bus %d:slot %d:func %d\n", (int )(pdev->bus)->number, (pdev->devfn >> 3) & 31U,
         pdev->devfn & 7U);
  rval = pci_enable_device_mem(pdev);
  if (rval != 0) {
    return (rval);
  } else {
  }
  pci_set_master(pdev);
  tmp = megasas_set_dma_mask(pdev);
  if (tmp != 0) {
    goto fail_set_dma_mask;
  } else {
  }
  host = ldv_scsi_host_alloc_24(& megasas_template, 7312);
  if ((unsigned long )host == (unsigned long )((struct Scsi_Host *)0)) {
    printk("\017megasas: scsi_host_alloc failed\n");
    goto fail_alloc_instance;
  } else {
  }
  instance = (struct megasas_instance *)(& host->hostdata);
  memset((void *)instance, 0, 7312UL);
  atomic_set(& instance->fw_reset_no_pci_access, 0);
  instance->pdev = pdev;
  switch ((int )(instance->pdev)->device) {
  case 91: ;
  case 47: ;
  case 93: ;
  case 95:
  instance->ctrl_context = kzalloc(47600UL, 208U);
  if ((unsigned long )instance->ctrl_context == (unsigned long )((void *)0)) {
    printk("\017megasas: Failed to allocate memory for Fusion context info\n");
    goto fail_alloc_dma_buf;
  } else {
  }
  fusion = (struct fusion_context *)instance->ctrl_context;
  INIT_LIST_HEAD(& fusion->cmd_pool);
  spinlock_check(& fusion->cmd_pool_lock);
  __raw_spin_lock_init(& fusion->cmd_pool_lock.ldv_6347.rlock, "&(&fusion->cmd_pool_lock)->rlock",
                       & __key);
  goto ldv_39760;
  default:
  tmp___0 = pci_alloc_consistent(pdev, 4UL, & instance->producer_h);
  instance->producer = (u32 *)tmp___0;
  tmp___1 = pci_alloc_consistent(pdev, 4UL, & instance->consumer_h);
  instance->consumer = (u32 *)tmp___1;
  if ((unsigned long )instance->producer == (unsigned long )((u32 *)0U) || (unsigned long )instance->consumer == (unsigned long )((u32 *)0U)) {
    printk("\017megasas: Failed to allocatememory for producer, consumer\n");
    goto fail_alloc_dma_buf;
  } else {
  }
  *(instance->producer) = 0U;
  *(instance->consumer) = 0U;
  goto ldv_39760;
  }
  ldv_39760:
  megasas_poll_wait_aen = 0;
  instance->flag_ieee = 0U;
  instance->ev = (struct megasas_aen_event *)0;
  instance->issuepend_done = 1U;
  instance->adprecovery = 0U;
  instance->is_imr = 0U;
  megasas_poll_wait_aen = 0;
  tmp___2 = pci_alloc_consistent(pdev, 256UL, & instance->evt_detail_h);
  instance->evt_detail = (struct megasas_evt_detail *)tmp___2;
  if ((unsigned long )instance->evt_detail == (unsigned long )((struct megasas_evt_detail *)0)) {
    printk("\017megasas: Failed to allocate memory for event detail structure\n");
    goto fail_alloc_dma_buf;
  } else {
  }
  INIT_LIST_HEAD(& instance->cmd_pool);
  INIT_LIST_HEAD(& instance->internal_reset_pending_q);
  atomic_set(& instance->fw_outstanding, 0);
  __init_waitqueue_head(& instance->int_cmd_wait_q, "&instance->int_cmd_wait_q", & __key___0);
  __init_waitqueue_head(& instance->abort_cmd_wait_q, "&instance->abort_cmd_wait_q",
                        & __key___1);
  spinlock_check(& instance->cmd_pool_lock);
  __raw_spin_lock_init(& instance->cmd_pool_lock.ldv_6347.rlock, "&(&instance->cmd_pool_lock)->rlock",
                       & __key___2);
  spinlock_check(& instance->hba_lock);
  __raw_spin_lock_init(& instance->hba_lock.ldv_6347.rlock, "&(&instance->hba_lock)->rlock",
                       & __key___3);
  spinlock_check(& instance->completion_lock);
  __raw_spin_lock_init(& instance->completion_lock.ldv_6347.rlock, "&(&instance->completion_lock)->rlock",
                       & __key___4);
  __mutex_init(& instance->aen_mutex, "&instance->aen_mutex", & __key___5);
  __mutex_init(& instance->reset_mutex, "&instance->reset_mutex", & __key___6);
  instance->host = host;
  instance->unique_id = (unsigned int )((int )(pdev->bus)->number << 8) | pdev->devfn;
  instance->init_id = -1;
  if ((unsigned int )(instance->pdev)->device == 115U || (unsigned int )(instance->pdev)->device == 113U) {
    instance->flag_ieee = 1U;
    sema_init(& instance->ioctl_sem, 5);
  } else {
    sema_init(& instance->ioctl_sem, 32);
  }
  megasas_dbg_lvl = 0U;
  instance->flag = 0U;
  instance->unload = 1U;
  instance->last_time = 0UL;
  instance->disableOnlineCtrlReset = 1U;
  instance->UnevenSpanSupport = 0U;
  if ((((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    __init_work(& instance->work_init, 0);
    __constr_expr_0.counter = 137438953408L;
    instance->work_init.data = __constr_expr_0;
    lockdep_init_map(& instance->work_init.lockdep_map, "(&instance->work_init)",
                     & __key___7, 0);
    INIT_LIST_HEAD(& instance->work_init.entry);
    instance->work_init.func = & megasas_fusion_ocr_wq;
  } else {
    __init_work(& instance->work_init, 0);
    __constr_expr_1.counter = 137438953408L;
    instance->work_init.data = __constr_expr_1;
    lockdep_init_map(& instance->work_init.lockdep_map, "(&instance->work_init)",
                     & __key___8, 0);
    INIT_LIST_HEAD(& instance->work_init.entry);
    instance->work_init.func = & process_fw_state_change_wq;
  }
  tmp___3 = megasas_init_fw(instance);
  if (tmp___3 != 0) {
    goto fail_init_mfi;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U) {
    if ((int )((signed char )instance->PlasmaFW111) != 0) {
      tmp___4 = pci_alloc_consistent(pdev, 776UL, & instance->vf_affiliation_111_h);
      instance->vf_affiliation_111 = (struct MR_LD_VF_AFFILIATION_111 *)tmp___4;
      if ((unsigned long )instance->vf_affiliation_111 == (unsigned long )((struct MR_LD_VF_AFFILIATION_111 *)0)) {
        printk("\fmegasas: Can\'t allocate memory for VF affiliation buffer\n");
      } else {
      }
    } else {
      tmp___5 = pci_alloc_consistent(pdev, 2080UL, & instance->vf_affiliation_h);
      instance->vf_affiliation = (struct MR_LD_VF_AFFILIATION *)tmp___5;
      if ((unsigned long )instance->vf_affiliation == (unsigned long )((struct MR_LD_VF_AFFILIATION *)0)) {
        printk("\fmegasas: Can\'t allocate memory for VF affiliation buffer\n");
      } else {
      }
    }
  } else {
  }
  retry_irq_register: ;
  if (instance->msix_vectors != 0U) {
    tmp___6 = cpumask_first(cpu_online_mask);
    cpu = (int )tmp___6;
    i = 0;
    goto ldv_39779;
    ldv_39778:
    instance->irq_context[i].instance = instance;
    instance->irq_context[i].MSIxIndex = (u32 )i;
    tmp___7 = request_irq(instance->msixentry[i].vector, (instance->instancet)->service_isr,
                          0UL, "megasas", (void *)(& instance->irq_context) + (unsigned long )i);
    if (tmp___7 != 0) {
      printk("\017megasas: Failed to register IRQ for vector %d.\n", i);
      j = 0;
      goto ldv_39776;
      ldv_39775:
      irq_set_affinity_hint(instance->msixentry[j].vector, (struct cpumask const *)0);
      free_irq(instance->msixentry[j].vector, (void *)(& instance->irq_context) + (unsigned long )j);
      j = j + 1;
      ldv_39776: ;
      if (j < i) {
        goto ldv_39775;
      } else {
      }
      instance->msix_vectors = 0U;
      goto retry_irq_register;
    } else {
    }
    tmp___8 = get_cpu_mask((unsigned int )cpu);
    tmp___9 = irq_set_affinity_hint(instance->msixentry[i].vector, tmp___8);
    if (tmp___9 != 0) {
      dev_err((struct device const *)(& (instance->pdev)->dev), "Error settingaffinity hint for cpu %d\n",
              cpu);
    } else {
    }
    tmp___10 = cpumask_next(cpu, cpu_online_mask);
    cpu = (int )tmp___10;
    i = i + 1;
    ldv_39779: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39778;
    } else {
    }
  } else {
    instance->irq_context[0].instance = instance;
    instance->irq_context[0].MSIxIndex = 0U;
    tmp___11 = request_irq(pdev->irq, (instance->instancet)->service_isr, 128UL, "megasas",
                           (void *)(& instance->irq_context));
    if (tmp___11 != 0) {
      printk("\017megasas: Failed to register IRQ\n");
      goto fail_irq;
    } else {
    }
  }
  (*((instance->instancet)->enable_intr))(instance);
  pci_set_drvdata(pdev, (void *)instance);
  megasas_mgmt_info.count = (u16 )((int )megasas_mgmt_info.count + 1);
  megasas_mgmt_info.instance[megasas_mgmt_info.max_index] = instance;
  megasas_mgmt_info.max_index = megasas_mgmt_info.max_index + 1;
  tmp___12 = megasas_io_attach(instance);
  if (tmp___12 != 0) {
    goto fail_io_attach;
  } else {
  }
  instance->unload = 0U;
  tmp___13 = megasas_start_aen(instance);
  if (tmp___13 != 0) {
    printk("\017megasas: start aen failed\n");
    goto fail_start_aen;
  } else {
  }
  return (0);
  fail_start_aen: ;
  fail_io_attach:
  megasas_mgmt_info.count = (u16 )((int )megasas_mgmt_info.count - 1);
  megasas_mgmt_info.instance[megasas_mgmt_info.max_index] = (struct megasas_instance *)0;
  megasas_mgmt_info.max_index = megasas_mgmt_info.max_index - 1;
  (*((instance->instancet)->disable_intr))(instance);
  if (instance->msix_vectors != 0U) {
    i = 0;
    goto ldv_39785;
    ldv_39784:
    irq_set_affinity_hint(instance->msixentry[i].vector, (struct cpumask const *)0);
    free_irq(instance->msixentry[i].vector, (void *)(& instance->irq_context) + (unsigned long )i);
    i = i + 1;
    ldv_39785: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39784;
    } else {
    }
  } else {
    free_irq((instance->pdev)->irq, (void *)(& instance->irq_context));
  }
  fail_irq: ;
  if ((((unsigned int )(instance->pdev)->device == 91U || (unsigned int )(instance->pdev)->device == 47U) || (unsigned int )(instance->pdev)->device == 93U) || (unsigned int )(instance->pdev)->device == 95U) {
    megasas_release_fusion(instance);
  } else {
    megasas_release_mfi(instance);
  }
  fail_init_mfi: ;
  if (instance->msix_vectors != 0U) {
    pci_disable_msix(instance->pdev);
  } else {
  }
  fail_alloc_dma_buf: ;
  if ((unsigned long )instance->evt_detail != (unsigned long )((struct megasas_evt_detail *)0)) {
    pci_free_consistent(pdev, 256UL, (void *)instance->evt_detail, instance->evt_detail_h);
  } else {
  }
  if ((unsigned long )instance->producer != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(pdev, 4UL, (void *)instance->producer, instance->producer_h);
  } else {
  }
  if ((unsigned long )instance->consumer != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(pdev, 4UL, (void *)instance->consumer, instance->consumer_h);
  } else {
  }
  scsi_host_put(host);
  fail_alloc_instance: ;
  fail_set_dma_mask:
  pci_disable_device(pdev);
  return (-19);
}
}
static void megasas_flush_cache(struct megasas_instance *instance )
{
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  int tmp ;
  {
  if ((unsigned int )instance->adprecovery == 4U) {
    return;
  } else {
  }
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return;
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 0U;
  dcmd->sge_count = 0U;
  dcmd->flags = 0U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 0U;
  dcmd->opcode = 17829888U;
  dcmd->mbox.b[0] = 3U;
  tmp = megasas_issue_blocked_cmd(instance, cmd, 30);
  if (tmp != 0) {
    dev_err((struct device const *)(& (instance->pdev)->dev), "Command timedout from %s\n",
            "megasas_flush_cache");
  } else {
  }
  megasas_return_cmd(instance, cmd);
  return;
}
}
static void megasas_shutdown_controller(struct megasas_instance *instance , u32 opcode )
{
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  int tmp ;
  {
  if ((unsigned int )instance->adprecovery == 4U) {
    return;
  } else {
  }
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    return;
  } else {
  }
  if ((unsigned long )instance->aen_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    megasas_issue_blocked_abort_cmd(instance, instance->aen_cmd, 30);
  } else {
  }
  if ((unsigned long )instance->map_update_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    megasas_issue_blocked_abort_cmd(instance, instance->map_update_cmd, 30);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 0U;
  dcmd->sge_count = 0U;
  dcmd->flags = 0U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = 0U;
  dcmd->opcode = opcode;
  tmp = megasas_issue_blocked_cmd(instance, cmd, 30);
  if (tmp != 0) {
    dev_err((struct device const *)(& (instance->pdev)->dev), "Command timedoutfrom %s\n",
            "megasas_shutdown_controller");
  } else {
  }
  megasas_return_cmd(instance, cmd);
  return;
}
}
static int megasas_suspend(struct pci_dev *pdev , pm_message_t state )
{
  struct Scsi_Host *host ;
  struct megasas_instance *instance ;
  int i ;
  void *tmp ;
  struct megasas_aen_event *ev ;
  pci_power_t tmp___0 ;
  {
  tmp = pci_get_drvdata(pdev);
  instance = (struct megasas_instance *)tmp;
  host = instance->host;
  instance->unload = 1U;
  if ((unsigned int )instance->requestorId != 0U && (int )((signed char )instance->skip_heartbeat_timer_del) == 0) {
    ldv_del_timer_sync_25(& instance->sriov_heartbeat_timer);
  } else {
  }
  megasas_flush_cache(instance);
  megasas_shutdown_controller(instance, 17170432U);
  if ((unsigned long )instance->ev != (unsigned long )((struct megasas_aen_event *)0)) {
    ev = instance->ev;
    cancel_delayed_work_sync(& ev->hotplug_work);
    instance->ev = (struct megasas_aen_event *)0;
  } else {
  }
  tasklet_kill(& instance->isr_tasklet);
  pci_set_drvdata(instance->pdev, (void *)instance);
  (*((instance->instancet)->disable_intr))(instance);
  if (instance->msix_vectors != 0U) {
    i = 0;
    goto ldv_39809;
    ldv_39808:
    irq_set_affinity_hint(instance->msixentry[i].vector, (struct cpumask const *)0);
    free_irq(instance->msixentry[i].vector, (void *)(& instance->irq_context) + (unsigned long )i);
    i = i + 1;
    ldv_39809: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39808;
    } else {
    }
  } else {
    free_irq((instance->pdev)->irq, (void *)(& instance->irq_context));
  }
  if (instance->msix_vectors != 0U) {
    pci_disable_msix(instance->pdev);
  } else {
  }
  pci_save_state(pdev);
  pci_disable_device(pdev);
  tmp___0 = pci_choose_state(pdev, state);
  pci_set_power_state(pdev, tmp___0);
  return (0);
}
}
static int megasas_resume(struct pci_dev *pdev )
{
  int rval ;
  int i ;
  int j ;
  int cpu ;
  struct Scsi_Host *host ;
  struct megasas_instance *instance ;
  void *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 tmp___3 ;
  int tmp___4 ;
  unsigned int tmp___5 ;
  int tmp___6 ;
  struct cpumask const *tmp___7 ;
  int tmp___8 ;
  unsigned int tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  {
  tmp = pci_get_drvdata(pdev);
  instance = (struct megasas_instance *)tmp;
  host = instance->host;
  pci_set_power_state(pdev, 0);
  pci_enable_wake(pdev, 0, 0);
  pci_restore_state(pdev);
  rval = pci_enable_device_mem(pdev);
  if (rval != 0) {
    printk("\vmegasas: Enable device failed\n");
    return (rval);
  } else {
  }
  pci_set_master(pdev);
  tmp___0 = megasas_set_dma_mask(pdev);
  if (tmp___0 != 0) {
    goto fail_set_dma_mask;
  } else {
  }
  atomic_set(& instance->fw_outstanding, 0);
  tmp___1 = megasas_transition_to_ready(instance, 0);
  if (tmp___1 != 0) {
    goto fail_ready_state;
  } else {
  }
  if (instance->msix_vectors != 0U) {
    pci_enable_msix(instance->pdev, (struct msix_entry *)(& instance->msixentry),
                    (int )instance->msix_vectors);
  } else {
  }
  switch ((int )(instance->pdev)->device) {
  case 91: ;
  case 47: ;
  case 93: ;
  case 95:
  megasas_reset_reply_desc(instance);
  tmp___2 = megasas_ioc_init_fusion(instance);
  if (tmp___2 != 0) {
    megasas_free_cmds(instance);
    megasas_free_cmds_fusion(instance);
    goto fail_init_mfi;
  } else {
  }
  tmp___3 = megasas_get_map_info(instance);
  if ((unsigned int )tmp___3 == 0U) {
    megasas_sync_map_info(instance);
  } else {
  }
  goto ldv_39827;
  default:
  *(instance->producer) = 0U;
  *(instance->consumer) = 0U;
  tmp___4 = megasas_issue_init_mfi(instance);
  if (tmp___4 != 0) {
    goto fail_init_mfi;
  } else {
  }
  goto ldv_39827;
  }
  ldv_39827:
  tasklet_init(& instance->isr_tasklet, (instance->instancet)->tasklet, (unsigned long )instance);
  if (instance->msix_vectors != 0U) {
    tmp___5 = cpumask_first(cpu_online_mask);
    cpu = (int )tmp___5;
    i = 0;
    goto ldv_39834;
    ldv_39833:
    instance->irq_context[i].instance = instance;
    instance->irq_context[i].MSIxIndex = (u32 )i;
    tmp___6 = request_irq(instance->msixentry[i].vector, (instance->instancet)->service_isr,
                          0UL, "megasas", (void *)(& instance->irq_context) + (unsigned long )i);
    if (tmp___6 != 0) {
      printk("\017megasas: Failed to register IRQ for vector %d.\n", i);
      j = 0;
      goto ldv_39830;
      ldv_39829:
      irq_set_affinity_hint(instance->msixentry[j].vector, (struct cpumask const *)0);
      free_irq(instance->msixentry[j].vector, (void *)(& instance->irq_context) + (unsigned long )j);
      j = j + 1;
      ldv_39830: ;
      if (j < i) {
        goto ldv_39829;
      } else {
      }
      goto fail_irq;
    } else {
    }
    tmp___7 = get_cpu_mask((unsigned int )cpu);
    tmp___8 = irq_set_affinity_hint(instance->msixentry[i].vector, tmp___7);
    if (tmp___8 != 0) {
      dev_err((struct device const *)(& (instance->pdev)->dev), "Error settingaffinity hint for cpu %d\n",
              cpu);
    } else {
    }
    tmp___9 = cpumask_next(cpu, cpu_online_mask);
    cpu = (int )tmp___9;
    i = i + 1;
    ldv_39834: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39833;
    } else {
    }
  } else {
    instance->irq_context[0].instance = instance;
    instance->irq_context[0].MSIxIndex = 0U;
    tmp___10 = request_irq(pdev->irq, (instance->instancet)->service_isr, 128UL, "megasas",
                           (void *)(& instance->irq_context));
    if (tmp___10 != 0) {
      printk("\017megasas: Failed to register IRQ\n");
      goto fail_irq;
    } else {
    }
  }
  if ((unsigned int )instance->requestorId != 0U) {
    tmp___11 = megasas_sriov_start_heartbeat(instance, 0);
    if (tmp___11 == 0) {
      megasas_start_timer(instance, & instance->sriov_heartbeat_timer, (void *)(& megasas_sriov_heartbeat_handler),
                          1250UL);
    } else {
      instance->skip_heartbeat_timer_del = 1;
    }
  } else {
  }
  (*((instance->instancet)->enable_intr))(instance);
  instance->unload = 0U;
  tmp___12 = megasas_start_aen(instance);
  if (tmp___12 != 0) {
    printk("\vmegasas: Start AEN failed\n");
  } else {
  }
  return (0);
  fail_irq: ;
  fail_init_mfi: ;
  if ((unsigned long )instance->evt_detail != (unsigned long )((struct megasas_evt_detail *)0)) {
    pci_free_consistent(pdev, 256UL, (void *)instance->evt_detail, instance->evt_detail_h);
  } else {
  }
  if ((unsigned long )instance->producer != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(pdev, 4UL, (void *)instance->producer, instance->producer_h);
  } else {
  }
  if ((unsigned long )instance->consumer != (unsigned long )((u32 *)0U)) {
    pci_free_consistent(pdev, 4UL, (void *)instance->consumer, instance->consumer_h);
  } else {
  }
  scsi_host_put(host);
  fail_set_dma_mask: ;
  fail_ready_state:
  pci_disable_device(pdev);
  return (-19);
}
}
static void megasas_detach_one(struct pci_dev *pdev )
{
  int i ;
  struct Scsi_Host *host ;
  struct megasas_instance *instance ;
  struct fusion_context *fusion ;
  void *tmp ;
  struct megasas_aen_event *ev ;
  {
  tmp = pci_get_drvdata(pdev);
  instance = (struct megasas_instance *)tmp;
  instance->unload = 1U;
  host = instance->host;
  fusion = (struct fusion_context *)instance->ctrl_context;
  if ((unsigned int )instance->requestorId != 0U && (int )((signed char )instance->skip_heartbeat_timer_del) == 0) {
    ldv_del_timer_sync_26(& instance->sriov_heartbeat_timer);
  } else {
  }
  ldv_scsi_remove_host_27(instance->host);
  megasas_flush_cache(instance);
  megasas_shutdown_controller(instance, 17104896U);
  if ((unsigned long )instance->ev != (unsigned long )((struct megasas_aen_event *)0)) {
    ev = instance->ev;
    cancel_delayed_work_sync(& ev->hotplug_work);
    instance->ev = (struct megasas_aen_event *)0;
  } else {
  }
  __wake_up(& instance->int_cmd_wait_q, 3U, 0, (void *)0);
  tasklet_kill(& instance->isr_tasklet);
  i = 0;
  goto ldv_39846;
  ldv_39845: ;
  if ((unsigned long )megasas_mgmt_info.instance[i] == (unsigned long )instance) {
    megasas_mgmt_info.count = (u16 )((int )megasas_mgmt_info.count - 1);
    megasas_mgmt_info.instance[i] = (struct megasas_instance *)0;
    goto ldv_39844;
  } else {
  }
  i = i + 1;
  ldv_39846: ;
  if (megasas_mgmt_info.max_index > i) {
    goto ldv_39845;
  } else {
  }
  ldv_39844:
  (*((instance->instancet)->disable_intr))(instance);
  if (instance->msix_vectors != 0U) {
    i = 0;
    goto ldv_39848;
    ldv_39847:
    irq_set_affinity_hint(instance->msixentry[i].vector, (struct cpumask const *)0);
    free_irq(instance->msixentry[i].vector, (void *)(& instance->irq_context) + (unsigned long )i);
    i = i + 1;
    ldv_39848: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39847;
    } else {
    }
  } else {
    free_irq((instance->pdev)->irq, (void *)(& instance->irq_context));
  }
  if (instance->msix_vectors != 0U) {
    pci_disable_msix(instance->pdev);
  } else {
  }
  switch ((int )(instance->pdev)->device) {
  case 91: ;
  case 47: ;
  case 93: ;
  case 95:
  megasas_release_fusion(instance);
  i = 0;
  goto ldv_39855;
  ldv_39854: ;
  if ((unsigned long )fusion->ld_map[i] != (unsigned long )((struct MR_FW_RAID_MAP_ALL *)0)) {
    dma_free_attrs(& (instance->pdev)->dev, (size_t )fusion->map_sz, (void *)fusion->ld_map[i],
                   fusion->ld_map_phys[i], (struct dma_attrs *)0);
  } else {
  }
  i = i + 1;
  ldv_39855: ;
  if (i <= 1) {
    goto ldv_39854;
  } else {
  }
  kfree((void const *)instance->ctrl_context);
  goto ldv_39857;
  default:
  megasas_release_mfi(instance);
  pci_free_consistent(pdev, 4UL, (void *)instance->producer, instance->producer_h);
  pci_free_consistent(pdev, 4UL, (void *)instance->consumer, instance->consumer_h);
  goto ldv_39857;
  }
  ldv_39857: ;
  if ((unsigned long )instance->evt_detail != (unsigned long )((struct megasas_evt_detail *)0)) {
    pci_free_consistent(pdev, 256UL, (void *)instance->evt_detail, instance->evt_detail_h);
  } else {
  }
  if ((unsigned long )instance->vf_affiliation != (unsigned long )((struct MR_LD_VF_AFFILIATION *)0)) {
    pci_free_consistent(pdev, 2080UL, (void *)instance->vf_affiliation, instance->vf_affiliation_h);
  } else {
  }
  if ((unsigned long )instance->vf_affiliation_111 != (unsigned long )((struct MR_LD_VF_AFFILIATION_111 *)0)) {
    pci_free_consistent(pdev, 776UL, (void *)instance->vf_affiliation_111, instance->vf_affiliation_111_h);
  } else {
  }
  if ((unsigned long )instance->hb_host_mem != (unsigned long )((struct MR_CTRL_HB_HOST_MEM *)0)) {
    pci_free_consistent(pdev, 1024UL, (void *)instance->hb_host_mem, instance->hb_host_mem_h);
  } else {
  }
  scsi_host_put(host);
  pci_disable_device(pdev);
  return;
}
}
static void megasas_shutdown(struct pci_dev *pdev )
{
  int i ;
  struct megasas_instance *instance ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  instance = (struct megasas_instance *)tmp;
  instance->unload = 1U;
  megasas_flush_cache(instance);
  megasas_shutdown_controller(instance, 17104896U);
  (*((instance->instancet)->disable_intr))(instance);
  if (instance->msix_vectors != 0U) {
    i = 0;
    goto ldv_39865;
    ldv_39864:
    irq_set_affinity_hint(instance->msixentry[i].vector, (struct cpumask const *)0);
    free_irq(instance->msixentry[i].vector, (void *)(& instance->irq_context) + (unsigned long )i);
    i = i + 1;
    ldv_39865: ;
    if ((unsigned int )i < instance->msix_vectors) {
      goto ldv_39864;
    } else {
    }
  } else {
    free_irq((instance->pdev)->irq, (void *)(& instance->irq_context));
  }
  if (instance->msix_vectors != 0U) {
    pci_disable_msix(instance->pdev);
  } else {
  }
  return;
}
}
static int megasas_mgmt_open(struct inode *inode , struct file *filep )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = capable(21);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-13);
  } else {
  }
  return (0);
}
}
static int megasas_mgmt_fasync(int fd , struct file *filep , int mode )
{
  int rc ;
  {
  mutex_lock_nested(& megasas_async_queue_mutex, 0U);
  rc = fasync_helper(fd, filep, mode, & megasas_async_queue);
  mutex_unlock(& megasas_async_queue_mutex);
  if (rc >= 0) {
    filep->private_data = (void *)filep;
    return (0);
  } else {
  }
  printk("\017megasas: fasync_helper failed [%d]\n", rc);
  return (rc);
}
}
static unsigned int megasas_mgmt_poll(struct file *file , poll_table *wait )
{
  unsigned int mask ;
  unsigned long flags ;
  {
  poll_wait(file, & megasas_poll_wait, wait);
  ldv_spin_lock();
  if (megasas_poll_wait_aen != 0) {
    mask = 65U;
  } else {
    mask = 0U;
  }
  spin_unlock_irqrestore(& poll_aen_lock, flags);
  return (mask);
}
}
static int megasas_mgmt_fw_ioctl(struct megasas_instance *instance , struct megasas_iocpacket *user_ioc ,
                                 struct megasas_iocpacket *ioc )
{
  struct megasas_sge32 *kern_sge32 ;
  struct megasas_cmd *cmd ;
  void *kbuff_arr[16U] ;
  dma_addr_t buf_handle ;
  int error ;
  int i ;
  void *sense ;
  dma_addr_t sense_handle ;
  unsigned long *sense_ptr ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  {
  buf_handle = 0ULL;
  error = 0;
  sense = (void *)0;
  memset((void *)(& kbuff_arr), 0, 128UL);
  if (ioc->sge_count > 16U) {
    printk("\017megasas: SGE count [%d] >  max limit [%d]\n", ioc->sge_count, 16);
    return (-22);
  } else {
  }
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: Failed to get a cmd packet\n");
    return (-12);
  } else {
  }
  __len = 128UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)cmd->frame, (void const *)(& ioc->frame.raw), __len);
  } else {
    __ret = memcpy((void *)cmd->frame, (void const *)(& ioc->frame.raw),
                             __len);
  }
  (cmd->frame)->hdr.context = cmd->index;
  (cmd->frame)->hdr.pad_0 = 0U;
  (cmd->frame)->hdr.flags = (unsigned int )(cmd->frame)->hdr.flags & 65497U;
  kern_sge32 = (struct megasas_sge32 *)((unsigned long )cmd->frame + (unsigned long )ioc->sgl_off);
  i = 0;
  goto ldv_39903;
  ldv_39902: ;
  if (ioc->sgl[i].iov_len == 0UL) {
    goto ldv_39900;
  } else {
  }
  kbuff_arr[i] = dma_alloc_attrs(& (instance->pdev)->dev, ioc->sgl[i].iov_len, & buf_handle,
                                 208U, (struct dma_attrs *)0);
  if ((unsigned long )kbuff_arr[i] == (unsigned long )((void *)0)) {
    printk("\017megasas: Failed to alloc kernel SGL buffer for IOCTL \n");
    error = -12;
    goto out;
  } else {
  }
  (kern_sge32 + (unsigned long )i)->phys_addr = (unsigned int )buf_handle;
  (kern_sge32 + (unsigned long )i)->length = (unsigned int )ioc->sgl[i].iov_len;
  tmp = copy_from_user(kbuff_arr[i], (void const *)ioc->sgl[i].iov_base, (unsigned long )((unsigned int )ioc->sgl[i].iov_len));
  if (tmp != 0UL) {
    error = -14;
    goto out;
  } else {
  }
  ldv_39900:
  i = i + 1;
  ldv_39903: ;
  if ((u32 )i < ioc->sge_count) {
    goto ldv_39902;
  } else {
  }
  if (ioc->sense_len != 0U) {
    sense = dma_alloc_attrs(& (instance->pdev)->dev, (size_t )ioc->sense_len, & sense_handle,
                            208U, (struct dma_attrs *)0);
    if ((unsigned long )sense == (unsigned long )((void *)0)) {
      error = -12;
      goto out;
    } else {
    }
    sense_ptr = (unsigned long *)((unsigned long )cmd->frame + (unsigned long )ioc->sense_off);
    *sense_ptr = (unsigned long )((unsigned int )sense_handle);
  } else {
  }
  cmd->sync_cmd = 1U;
  megasas_issue_blocked_cmd(instance, cmd, 0);
  cmd->sync_cmd = 0U;
  i = 0;
  goto ldv_39906;
  ldv_39905:
  tmp___0 = copy_to_user(ioc->sgl[i].iov_base, (void const *)kbuff_arr[i], ioc->sgl[i].iov_len);
  if (tmp___0 != 0UL) {
    error = -14;
    goto out;
  } else {
  }
  i = i + 1;
  ldv_39906: ;
  if ((u32 )i < ioc->sge_count) {
    goto ldv_39905;
  } else {
  }
  if (ioc->sense_len != 0U) {
    sense_ptr = (unsigned long *)((unsigned long )(& ioc->frame.raw) + (unsigned long )ioc->sense_off);
    tmp___1 = copy_to_user((void *)*sense_ptr, (void const *)sense, (unsigned long )ioc->sense_len);
    if (tmp___1 != 0UL) {
      printk("\vmegasas: Failed to copy out to user sense data\n");
      error = -14;
      goto out;
    } else {
    }
  } else {
  }
  tmp___2 = copy_to_user((void *)(& user_ioc->frame.hdr.cmd_status), (void const *)(& (cmd->frame)->hdr.cmd_status),
                         1UL);
  if (tmp___2 != 0UL) {
    printk("\017megasas: Error copying out cmd_status\n");
    error = -14;
  } else {
  }
  out: ;
  if ((unsigned long )sense != (unsigned long )((void *)0)) {
    dma_free_attrs(& (instance->pdev)->dev, (size_t )ioc->sense_len, sense, sense_handle,
                   (struct dma_attrs *)0);
  } else {
  }
  i = 0;
  goto ldv_39909;
  ldv_39908: ;
  if ((unsigned long )kbuff_arr[i] != (unsigned long )((void *)0)) {
    dma_free_attrs(& (instance->pdev)->dev, (size_t )(kern_sge32 + (unsigned long )i)->length,
                   kbuff_arr[i], (dma_addr_t )(kern_sge32 + (unsigned long )i)->phys_addr,
                   (struct dma_attrs *)0);
  } else {
  }
  i = i + 1;
  ldv_39909: ;
  if ((u32 )i < ioc->sge_count) {
    goto ldv_39908;
  } else {
  }
  megasas_return_cmd(instance, cmd);
  return (error);
}
}
static int megasas_mgmt_ioctl_fw(struct file *file , unsigned long arg )
{
  struct megasas_iocpacket *user_ioc ;
  struct megasas_iocpacket *ioc ;
  struct megasas_instance *instance ;
  int error ;
  int i ;
  unsigned long flags ;
  u32 wait_time ;
  void *tmp ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  user_ioc = (struct megasas_iocpacket *)arg;
  wait_time = 180U;
  tmp = kmalloc(404UL, 208U);
  ioc = (struct megasas_iocpacket *)tmp;
  if ((unsigned long )ioc == (unsigned long )((struct megasas_iocpacket *)0)) {
    return (-12);
  } else {
  }
  tmp___0 = copy_from_user((void *)ioc, (void const *)user_ioc, 404UL);
  if (tmp___0 != 0UL) {
    error = -14;
    goto out_kfree_ioc;
  } else {
  }
  instance = megasas_lookup_instance((int )ioc->host_no);
  if ((unsigned long )instance == (unsigned long )((struct megasas_instance *)0)) {
    error = -19;
    goto out_kfree_ioc;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U) {
    wait_time = 300U;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U && allow_vf_ioctls == 0) {
    error = -19;
    goto out_kfree_ioc;
  } else {
  }
  if ((unsigned int )instance->adprecovery == 4U) {
    printk("\vController in crit error\n");
    error = -19;
    goto out_kfree_ioc;
  } else {
  }
  if ((unsigned int )instance->unload == 1U) {
    error = -19;
    goto out_kfree_ioc;
  } else {
  }
  tmp___1 = down_interruptible(& instance->ioctl_sem);
  if (tmp___1 != 0) {
    error = -512;
    goto out_kfree_ioc;
  } else {
  }
  i = 0;
  goto ldv_39925;
  ldv_39924:
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery == 0U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    goto ldv_39923;
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  if (i % 5 == 0) {
    printk("\rmegasas: waitingfor controller reset to finish\n");
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_39925: ;
  if ((u32 )i < wait_time) {
    goto ldv_39924;
  } else {
  }
  ldv_39923:
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery != 0U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    printk("\vmegaraid_sas: timed out whilewaiting for HBA to recover\n");
    error = -19;
    goto out_up;
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  error = megasas_mgmt_fw_ioctl(instance, user_ioc, ioc);
  out_up:
  up(& instance->ioctl_sem);
  out_kfree_ioc:
  kfree((void const *)ioc);
  return (error);
}
}
static int megasas_mgmt_ioctl_aen(struct file *file , unsigned long arg )
{
  struct megasas_instance *instance ;
  struct megasas_aen aen ;
  int error ;
  int i ;
  unsigned long flags ;
  u32 wait_time ;
  unsigned long tmp ;
  {
  wait_time = 180U;
  if ((unsigned long )file->private_data != (unsigned long )((void *)file)) {
    printk("\017megasas: fasync_helper was not called first\n");
    return (-22);
  } else {
  }
  tmp = copy_from_user((void *)(& aen), (void const *)arg, 12UL);
  if (tmp != 0UL) {
    return (-14);
  } else {
  }
  instance = megasas_lookup_instance((int )aen.host_no);
  if ((unsigned long )instance == (unsigned long )((struct megasas_instance *)0)) {
    return (-19);
  } else {
  }
  if ((unsigned int )instance->adprecovery == 4U) {
    return (-19);
  } else {
  }
  if ((unsigned int )instance->unload == 1U) {
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_39939;
  ldv_39938:
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery == 0U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    goto ldv_39937;
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  if (i % 5 == 0) {
    printk("\rmegasas: waiting forcontroller reset to finish\n");
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_39939: ;
  if ((u32 )i < wait_time) {
    goto ldv_39938;
  } else {
  }
  ldv_39937:
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery != 0U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    printk("\vmegaraid_sas: timed out while waitingfor HBA to recover.\n");
    return (-19);
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  mutex_lock_nested(& instance->aen_mutex, 0U);
  error = megasas_register_aen(instance, aen.seq_num, aen.class_locale_word);
  mutex_unlock(& instance->aen_mutex);
  return (error);
}
}
static long megasas_mgmt_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  int tmp___0 ;
  {
  switch (cmd) {
  case 3247721729U:
  tmp = megasas_mgmt_ioctl_fw(file, arg);
  return ((long )tmp);
  case 1074547971U:
  tmp___0 = megasas_mgmt_ioctl_aen(file, arg);
  return ((long )tmp___0);
  }
  return (-25L);
}
}
static int megasas_mgmt_compat_ioctl_fw(struct file *file , unsigned long arg )
{
  struct compat_megasas_iocpacket *cioc ;
  struct megasas_iocpacket *ioc ;
  void *tmp ;
  int i ;
  int error ;
  compat_uptr_t ptr ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  unsigned long tmp___4 ;
  unsigned long tmp___5 ;
  unsigned long tmp___6 ;
  void **sense_ioc_ptr ;
  compat_uptr_t *sense_cioc_ptr ;
  int __ret_gu ;
  register unsigned long __val_gu ;
  int __ret_pu ;
  void *__pu_val ;
  int __ret_gu___0 ;
  register unsigned long __val_gu___0 ;
  int __ret_pu___0 ;
  void *__pu_val___0 ;
  unsigned long tmp___7 ;
  unsigned long tmp___8 ;
  {
  cioc = (struct compat_megasas_iocpacket *)arg;
  tmp = compat_alloc_user_space(404UL);
  ioc = (struct megasas_iocpacket *)tmp;
  error = 0;
  tmp___0 = clear_user((void *)ioc, 404UL);
  if (tmp___0 != 0UL) {
    return (-14);
  } else {
  }
  tmp___1 = copy_in_user((void *)(& ioc->host_no), (void const *)(& cioc->host_no),
                         2U);
  if (tmp___1 != 0UL) {
    return (-14);
  } else {
    tmp___2 = copy_in_user((void *)(& ioc->sgl_off), (void const *)(& cioc->sgl_off),
                           4U);
    if (tmp___2 != 0UL) {
      return (-14);
    } else {
      tmp___3 = copy_in_user((void *)(& ioc->sense_off), (void const *)(& cioc->sense_off),
                             4U);
      if (tmp___3 != 0UL) {
        return (-14);
      } else {
        tmp___4 = copy_in_user((void *)(& ioc->sense_len), (void const *)(& cioc->sense_len),
                               4U);
        if (tmp___4 != 0UL) {
          return (-14);
        } else {
          tmp___5 = copy_in_user((void *)(& ioc->frame.raw), (void const *)(& cioc->frame.raw),
                                 128U);
          if (tmp___5 != 0UL) {
            return (-14);
          } else {
            tmp___6 = copy_in_user((void *)(& ioc->sge_count), (void const *)(& cioc->sge_count),
                                   4U);
            if (tmp___6 != 0UL) {
              return (-14);
            } else {
            }
          }
        }
      }
    }
  }
  if (ioc->sense_len != 0U) {
    sense_ioc_ptr = (void **)(& ioc->frame.raw) + (unsigned long )ioc->sense_off;
    sense_cioc_ptr = (compat_uptr_t *)(& cioc->frame.raw) + (unsigned long )cioc->sense_off;
    might_fault();
    __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu), "=r" (__val_gu): "0" (sense_cioc_ptr),
                         "i" (4UL));
    ptr = (unsigned int )__val_gu;
    if (__ret_gu != 0) {
      return (-14);
    } else {
      might_fault();
      __pu_val = compat_ptr(ptr);
      switch (8UL) {
      case 1UL:
      __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (sense_ioc_ptr): "ebx");
      goto ldv_39964;
      case 2UL:
      __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (sense_ioc_ptr): "ebx");
      goto ldv_39964;
      case 4UL:
      __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (sense_ioc_ptr): "ebx");
      goto ldv_39964;
      case 8UL:
      __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (sense_ioc_ptr): "ebx");
      goto ldv_39964;
      default:
      __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (sense_ioc_ptr): "ebx");
      goto ldv_39964;
      }
      ldv_39964: ;
      if (__ret_pu != 0) {
        return (-14);
      } else {
      }
    }
  } else {
  }
  i = 0;
  goto ldv_39983;
  ldv_39982:
  might_fault();
  __asm__ volatile ("call __get_user_%P3": "=a" (__ret_gu___0), "=r" (__val_gu___0): "0" (& cioc->sgl[i].iov_base),
                       "i" (4UL));
  ptr = (unsigned int )__val_gu___0;
  if (__ret_gu___0 != 0) {
    return (-14);
  } else {
    might_fault();
    __pu_val___0 = compat_ptr(ptr);
    switch (8UL) {
    case 1UL:
    __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ioc->sgl[i].iov_base): "ebx");
    goto ldv_39976;
    case 2UL:
    __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ioc->sgl[i].iov_base): "ebx");
    goto ldv_39976;
    case 4UL:
    __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ioc->sgl[i].iov_base): "ebx");
    goto ldv_39976;
    case 8UL:
    __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ioc->sgl[i].iov_base): "ebx");
    goto ldv_39976;
    default:
    __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                         "c" (& ioc->sgl[i].iov_base): "ebx");
    goto ldv_39976;
    }
    ldv_39976: ;
    if (__ret_pu___0 != 0) {
      return (-14);
    } else {
      tmp___7 = copy_in_user((void *)(& ioc->sgl[i].iov_len), (void const *)(& cioc->sgl[i].iov_len),
                             4U);
      if (tmp___7 != 0UL) {
        return (-14);
      } else {
      }
    }
  }
  i = i + 1;
  ldv_39983: ;
  if (i <= 15) {
    goto ldv_39982;
  } else {
  }
  error = megasas_mgmt_ioctl_fw(file, (unsigned long )ioc);
  tmp___8 = copy_in_user((void *)(& cioc->frame.hdr.cmd_status), (void const *)(& ioc->frame.hdr.cmd_status),
                         1U);
  if (tmp___8 != 0UL) {
    printk("\017megasas: error copy_in_user cmd_status\n");
    return (-14);
  } else {
  }
  return (error);
}
}
static long megasas_mgmt_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  int tmp ;
  int tmp___0 ;
  {
  switch (cmd) {
  case 3239333121U:
  tmp = megasas_mgmt_compat_ioctl_fw(file, arg);
  return ((long )tmp);
  case 1074547971U:
  tmp___0 = megasas_mgmt_ioctl_aen(file, arg);
  return ((long )tmp___0);
  }
  return (-25L);
}
}
static struct file_operations const megasas_mgmt_fops =
     {& __this_module, & noop_llseek, 0, 0, 0, 0, 0, 0, 0, & megasas_mgmt_poll, & megasas_mgmt_ioctl,
    & megasas_mgmt_compat_ioctl, 0, & megasas_mgmt_open, 0, 0, 0, 0, & megasas_mgmt_fasync,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct pci_driver megasas_pci_driver =
     {{0, 0}, "megaraid_sas", (struct pci_device_id const *)(& megasas_pci_table),
    & megasas_probe_one, & megasas_detach_one, & megasas_suspend, 0, 0, & megasas_resume,
    & megasas_shutdown, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}};
static ssize_t megasas_sysfs_show_version(struct device_driver *dd , char *buf )
{
  size_t tmp ;
  int tmp___0 ;
  {
  tmp = strlen("06.803.01.00-rc1");
  tmp___0 = snprintf(buf, tmp + 2UL, "%s\n", (char *)"06.803.01.00-rc1");
  return ((ssize_t )tmp___0);
}
}
static struct driver_attribute driver_attr_version = {{"version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & megasas_sysfs_show_version,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t megasas_sysfs_show_release_date(struct device_driver *dd , char *buf )
{
  size_t tmp ;
  int tmp___0 ;
  {
  tmp = strlen("Mar. 10, 2014");
  tmp___0 = snprintf(buf, tmp + 2UL, "%s\n", (char *)"Mar. 10, 2014");
  return ((ssize_t )tmp___0);
}
}
static struct driver_attribute driver_attr_release_date = {{"release_date", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                          {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & megasas_sysfs_show_release_date, (ssize_t (*)(struct device_driver * , char const * ,
                                                    size_t ))0};
static ssize_t megasas_sysfs_show_support_poll_for_event(struct device_driver *dd ,
                                                         char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "%u\n", support_poll_for_event);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_support_poll_for_event = {{"support_poll_for_event", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}, {(char)0},
                                                    {(char)0}, {(char)0}}}}, & megasas_sysfs_show_support_poll_for_event,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t megasas_sysfs_show_support_device_change(struct device_driver *dd ,
                                                        char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "%u\n", support_device_change);
  return ((ssize_t )tmp);
}
}
static struct driver_attribute driver_attr_support_device_change = {{"support_device_change", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}, {(char)0},
                                                   {(char)0}, {(char)0}}}}, & megasas_sysfs_show_support_device_change,
    (ssize_t (*)(struct device_driver * , char const * , size_t ))0};
static ssize_t megasas_sysfs_show_dbg_lvl(struct device_driver *dd , char *buf )
{
  int tmp ;
  {
  tmp = sprintf(buf, "%u\n", megasas_dbg_lvl);
  return ((ssize_t )tmp);
}
}
static ssize_t megasas_sysfs_set_dbg_lvl(struct device_driver *dd , char const *buf ,
                                         size_t count )
{
  int retval ;
  int tmp ;
  {
  retval = (int )count;
  tmp = sscanf(buf, "%u", & megasas_dbg_lvl);
  if (tmp <= 0) {
    printk("\vmegasas: could not set dbg_lvl\n");
    retval = -22;
  } else {
  }
  return ((ssize_t )retval);
}
}
static struct driver_attribute driver_attr_dbg_lvl = {{"dbg_lvl", 420U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & megasas_sysfs_show_dbg_lvl,
    & megasas_sysfs_set_dbg_lvl};
static void megasas_aen_polling(struct work_struct *work )
{
  struct megasas_aen_event *ev ;
  struct work_struct const *__mptr ;
  struct megasas_instance *instance ;
  union megasas_evt_class_locale class_locale ;
  struct Scsi_Host *host ;
  struct scsi_device *sdev1 ;
  u16 pd_index ;
  u16 ld_index ;
  int i ;
  int j ;
  int doscan ;
  u32 seq_num ;
  u32 wait_time ;
  int error ;
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
  __mptr = (struct work_struct const *)work;
  ev = (struct megasas_aen_event *)__mptr;
  instance = ev->instance;
  pd_index = 0U;
  ld_index = 0U;
  doscan = 0;
  wait_time = 180U;
  if ((unsigned long )instance == (unsigned long )((struct megasas_instance *)0)) {
    printk("\vinvalid instance!\n");
    kfree((void const *)ev);
    return;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U) {
    wait_time = 300U;
  } else {
  }
  i = 0;
  goto ldv_40086;
  ldv_40085: ;
  if ((unsigned int )instance->adprecovery == 0U) {
    goto ldv_40083;
  } else {
  }
  if (i % 5 == 0) {
    printk("\rmegasas: %s waiting for controller reset to finish for scsi%d\n", "megasas_aen_polling",
           (instance->host)->host_no);
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_40086: ;
  if ((u32 )i < wait_time) {
    goto ldv_40085;
  } else {
  }
  ldv_40083:
  instance->ev = (struct megasas_aen_event *)0;
  host = instance->host;
  if ((unsigned long )instance->evt_detail != (unsigned long )((struct megasas_evt_detail *)0)) {
    switch ((instance->evt_detail)->code) {
    case 91U:
    tmp = megasas_get_pd_list(instance);
    if (tmp == 0) {
      i = 0;
      goto ldv_40092;
      ldv_40091:
      j = 0;
      goto ldv_40089;
      ldv_40088:
      pd_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
      sdev1 = scsi_device_lookup(host, (uint )i, (uint )j, 0U);
      if ((unsigned int )instance->pd_list[(int )pd_index].driveState == 64U) {
        if ((unsigned long )sdev1 == (unsigned long )((struct scsi_device *)0)) {
          scsi_add_device(host, (uint )i, (uint )j, 0U);
        } else {
        }
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_device_put(sdev1);
        } else {
        }
      } else {
      }
      j = j + 1;
      ldv_40089: ;
      if (j <= 127) {
        goto ldv_40088;
      } else {
      }
      i = i + 1;
      ldv_40092: ;
      if (i <= 1) {
        goto ldv_40091;
      } else {
      }
    } else {
    }
    doscan = 0;
    goto ldv_40094;
    case 112U:
    tmp___0 = megasas_get_pd_list(instance);
    if (tmp___0 == 0) {
      i = 0;
      goto ldv_40100;
      ldv_40099:
      j = 0;
      goto ldv_40097;
      ldv_40096:
      pd_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
      sdev1 = scsi_device_lookup(host, (uint )i, (uint )j, 0U);
      if ((unsigned int )instance->pd_list[(int )pd_index].driveState == 64U) {
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_device_put(sdev1);
        } else {
        }
      } else
      if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
        scsi_remove_device(sdev1);
        scsi_device_put(sdev1);
      } else {
      }
      j = j + 1;
      ldv_40097: ;
      if (j <= 127) {
        goto ldv_40096;
      } else {
      }
      i = i + 1;
      ldv_40100: ;
      if (i <= 1) {
        goto ldv_40099;
      } else {
      }
    } else {
    }
    doscan = 0;
    goto ldv_40094;
    case 252U: ;
    case 4U: ;
    case 139U: ;
    if ((unsigned int )instance->requestorId == 0U) {
      goto _L;
    } else
    if ((unsigned int )instance->requestorId != 0U) {
      tmp___2 = megasas_get_ld_vf_affiliation(instance, 0);
      if (tmp___2 != 0) {
        _L:
        tmp___1 = megasas_ld_list_query(instance, 1);
        if (tmp___1 != 0) {
          megasas_get_ld_list(instance);
        } else {
        }
        i = 0;
        goto ldv_40109;
        ldv_40108:
        j = 0;
        goto ldv_40106;
        ldv_40105:
        ld_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
        sdev1 = scsi_device_lookup(host, (uint )(i + 2), (uint )j, 0U);
        if ((unsigned int )instance->ld_ids[(int )ld_index] != 255U) {
          if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
            scsi_device_put(sdev1);
          } else {
          }
        } else
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_remove_device(sdev1);
          scsi_device_put(sdev1);
        } else {
        }
        j = j + 1;
        ldv_40106: ;
        if (j <= 127) {
          goto ldv_40105;
        } else {
        }
        i = i + 1;
        ldv_40109: ;
        if (i <= 0) {
          goto ldv_40108;
        } else {
        }
        doscan = 0;
      } else {
      }
    } else {
    }
    goto ldv_40094;
    case 138U: ;
    if ((unsigned int )instance->requestorId == 0U) {
      goto _L___0;
    } else
    if ((unsigned int )instance->requestorId != 0U) {
      tmp___4 = megasas_get_ld_vf_affiliation(instance, 0);
      if (tmp___4 != 0) {
        _L___0:
        tmp___3 = megasas_ld_list_query(instance, 1);
        if (tmp___3 != 0) {
          megasas_get_ld_list(instance);
        } else {
        }
        i = 0;
        goto ldv_40116;
        ldv_40115:
        j = 0;
        goto ldv_40113;
        ldv_40112:
        ld_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
        sdev1 = scsi_device_lookup(host, (uint )(i + 2), (uint )j, 0U);
        if ((unsigned int )instance->ld_ids[(int )ld_index] != 255U) {
          if ((unsigned long )sdev1 == (unsigned long )((struct scsi_device *)0)) {
            scsi_add_device(host, (uint )(i + 2), (uint )j, 0U);
          } else {
          }
        } else {
        }
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_device_put(sdev1);
        } else {
        }
        j = j + 1;
        ldv_40113: ;
        if (j <= 127) {
          goto ldv_40112;
        } else {
        }
        i = i + 1;
        ldv_40116: ;
        if (i <= 0) {
          goto ldv_40115;
        } else {
        }
        doscan = 0;
      } else {
      }
    } else {
    }
    goto ldv_40094;
    case 338U: ;
    case 219U: ;
    case 81U:
    doscan = 1;
    goto ldv_40094;
    default:
    doscan = 0;
    goto ldv_40094;
    }
    ldv_40094: ;
  } else {
    printk("\vinvalid evt_detail!\n");
    kfree((void const *)ev);
    return;
  }
  if (doscan != 0) {
    printk("\016megaraid_sas: scanning for scsi%d...\n", (instance->host)->host_no);
    tmp___5 = megasas_get_pd_list(instance);
    if (tmp___5 == 0) {
      i = 0;
      goto ldv_40126;
      ldv_40125:
      j = 0;
      goto ldv_40123;
      ldv_40122:
      pd_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
      sdev1 = scsi_device_lookup(host, (uint )i, (uint )j, 0U);
      if ((unsigned int )instance->pd_list[(int )pd_index].driveState == 64U) {
        if ((unsigned long )sdev1 == (unsigned long )((struct scsi_device *)0)) {
          scsi_add_device(host, (uint )i, (uint )j, 0U);
        } else {
        }
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_device_put(sdev1);
        } else {
        }
      } else
      if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
        scsi_remove_device(sdev1);
        scsi_device_put(sdev1);
      } else {
      }
      j = j + 1;
      ldv_40123: ;
      if (j <= 127) {
        goto ldv_40122;
      } else {
      }
      i = i + 1;
      ldv_40126: ;
      if (i <= 1) {
        goto ldv_40125;
      } else {
      }
    } else {
    }
    if ((unsigned int )instance->requestorId == 0U) {
      goto _L___1;
    } else
    if ((unsigned int )instance->requestorId != 0U) {
      tmp___7 = megasas_get_ld_vf_affiliation(instance, 0);
      if (tmp___7 != 0) {
        _L___1:
        tmp___6 = megasas_ld_list_query(instance, 1);
        if (tmp___6 != 0) {
          megasas_get_ld_list(instance);
        } else {
        }
        i = 0;
        goto ldv_40132;
        ldv_40131:
        j = 0;
        goto ldv_40129;
        ldv_40128:
        ld_index = (unsigned int )((u16 )i) * 128U + (unsigned int )((u16 )j);
        sdev1 = scsi_device_lookup(host, (uint )(i + 2), (uint )j, 0U);
        if ((unsigned int )instance->ld_ids[(int )ld_index] != 255U) {
          if ((unsigned long )sdev1 == (unsigned long )((struct scsi_device *)0)) {
            scsi_add_device(host, (uint )(i + 2), (uint )j, 0U);
          } else {
            scsi_device_put(sdev1);
          }
        } else
        if ((unsigned long )sdev1 != (unsigned long )((struct scsi_device *)0)) {
          scsi_remove_device(sdev1);
          scsi_device_put(sdev1);
        } else {
        }
        j = j + 1;
        ldv_40129: ;
        if (j <= 127) {
          goto ldv_40128;
        } else {
        }
        i = i + 1;
        ldv_40132: ;
        if (i <= 0) {
          goto ldv_40131;
        } else {
        }
      } else {
      }
    } else {
    }
  } else {
  }
  if ((unsigned long )instance->aen_cmd != (unsigned long )((struct megasas_cmd *)0)) {
    kfree((void const *)ev);
    return;
  } else {
  }
  seq_num = (instance->evt_detail)->seq_num + 1U;
  class_locale.members.reserved = 0U;
  class_locale.members.locale = 65535U;
  class_locale.members.class = -2;
  mutex_lock_nested(& instance->aen_mutex, 0U);
  error = megasas_register_aen(instance, seq_num, class_locale.word);
  mutex_unlock(& instance->aen_mutex);
  if (error != 0) {
    printk("\vregister aen failed error %x\n", error);
  } else {
  }
  kfree((void const *)ev);
  return;
}
}
static int megasas_init(void)
{
  int rval ;
  struct lock_class_key __key ;
  {
  printk("\016megasas: %s %s\n", (char *)"06.803.01.00-rc1", (char *)"Mon. Mar. 10 17:00:00 PDT 2014");
  spinlock_check(& poll_aen_lock);
  __raw_spin_lock_init(& poll_aen_lock.ldv_6347.rlock, "&(&poll_aen_lock)->rlock",
                       & __key);
  support_poll_for_event = 2U;
  support_device_change = 1U;
  memset((void *)(& megasas_mgmt_info), 0, 8208UL);
  rval = ldv_register_chrdev_28(0U, "megaraid_sas_ioctl", & megasas_mgmt_fops);
  if (rval < 0) {
    printk("\017megasas: failed to open device node\n");
    return (rval);
  } else {
  }
  megasas_mgmt_majorno = rval;
  rval = __pci_register_driver(& megasas_pci_driver, & __this_module, "megaraid_sas");
  if (rval != 0) {
    printk("\017megasas: PCI hotplug regisration failed \n");
    goto err_pcidrv;
  } else {
  }
  rval = driver_create_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_version));
  if (rval != 0) {
    goto err_dcf_attr_ver;
  } else {
  }
  rval = driver_create_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_release_date));
  if (rval != 0) {
    goto err_dcf_rel_date;
  } else {
  }
  rval = driver_create_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_support_poll_for_event));
  if (rval != 0) {
    goto err_dcf_support_poll_for_event;
  } else {
  }
  rval = driver_create_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_dbg_lvl));
  if (rval != 0) {
    goto err_dcf_dbg_lvl;
  } else {
  }
  rval = driver_create_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_support_device_change));
  if (rval != 0) {
    goto err_dcf_support_device_change;
  } else {
  }
  return (rval);
  err_dcf_support_device_change:
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_dbg_lvl));
  err_dcf_dbg_lvl:
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_support_poll_for_event));
  err_dcf_support_poll_for_event:
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_release_date));
  err_dcf_rel_date:
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_version));
  err_dcf_attr_ver:
  pci_unregister_driver(& megasas_pci_driver);
  err_pcidrv:
  ldv_unregister_chrdev_29((unsigned int )megasas_mgmt_majorno, "megaraid_sas_ioctl");
  return (rval);
}
}
static void megasas_exit(void)
{
  {
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_dbg_lvl));
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_support_poll_for_event));
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_support_device_change));
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_release_date));
  driver_remove_file(& megasas_pci_driver.driver, (struct driver_attribute const *)(& driver_attr_version));
  pci_unregister_driver(& megasas_pci_driver);
  ldv_unregister_chrdev_29((unsigned int )megasas_mgmt_majorno, "megaraid_sas_ioctl");
  return;
}
}
extern int ldv_release_14(void) ;
extern int ldv_release_11(void) ;
extern int ldv_release_9(void) ;
int ldv_retval_2 ;
extern int ldv_probe_11(void) ;
int ldv_retval_0 ;
extern int ldv_release_12(void) ;
int ldv_retval_1 ;
extern void ldv_initialize(void) ;
extern int ldv_release_13(void) ;
extern int ldv_probe_13(void) ;
int ldv_retval_4 ;
extern int ldv_probe_14(void) ;
extern int ldv_probe_12(void) ;
extern void ldv_check_final_state(void) ;
int ldv_retval_3 ;
void ldv_initialize_megasas_instance_template_11(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(7312UL);
  megasas_instance_template_gen2_group0 = (struct megasas_instance *)tmp;
  tmp___0 = ldv_zalloc(3484UL);
  megasas_instance_template_gen2_group1 = (struct megasas_register_set *)tmp___0;
  return;
}
}
void ldv_file_operations_9(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(1032UL);
  megasas_mgmt_fops_group1 = (struct inode *)tmp;
  tmp___0 = ldv_zalloc(512UL);
  megasas_mgmt_fops_group2 = (struct file *)tmp___0;
  return;
}
}
void ldv_initialize_megasas_instance_template_13(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(7312UL);
  megasas_instance_template_ppc_group0 = (struct megasas_instance *)tmp;
  tmp___0 = ldv_zalloc(3484UL);
  megasas_instance_template_ppc_group1 = (struct megasas_register_set *)tmp___0;
  return;
}
}
int reg_timer_1(struct timer_list *timer )
{
  {
  ldv_timer_list_1 = timer;
  ldv_timer_state_1 = 1;
  return (0);
}
}
void ldv_initialize_pci_driver_8(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(2976UL);
  megasas_pci_driver_group0 = (struct pci_dev *)tmp;
  return;
}
}
void ldv_initialize_megasas_instance_template_12(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(7312UL);
  megasas_instance_template_skinny_group0 = (struct megasas_instance *)tmp;
  tmp___0 = ldv_zalloc(3484UL);
  megasas_instance_template_skinny_group1 = (struct megasas_register_set *)tmp___0;
  return;
}
}
void disable_suitable_timer_1(struct timer_list *timer )
{
  {
  if ((unsigned long )timer == (unsigned long )ldv_timer_list_1) {
    ldv_timer_state_1 = 0;
    return;
  } else {
  }
  return;
}
}
void ldv_initialize_scsi_host_template_10(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(456UL);
  megasas_template_group0 = (struct scsi_cmnd *)tmp;
  tmp___0 = ldv_zalloc(3488UL);
  megasas_template_group1 = (struct scsi_device *)tmp___0;
  return;
}
}
void ldv_initialize_driver_attribute_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(120UL);
  driver_attr_dbg_lvl_group0 = (struct device_driver *)tmp;
  return;
}
}
void activate_pending_timer_1(struct timer_list *timer , unsigned long data , int pending_flag )
{
  {
  if ((unsigned long )ldv_timer_list_1 == (unsigned long )timer) {
    if (ldv_timer_state_1 == 2 || pending_flag != 0) {
      ldv_timer_list_1 = timer;
      ldv_timer_list_1->data = data;
      ldv_timer_state_1 = 1;
    } else {
    }
    return;
  } else {
  }
  reg_timer_1(timer);
  ldv_timer_list_1->data = data;
  return;
}
}
void ldv_initialize_megasas_instance_template_14(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(7312UL);
  megasas_instance_template_xscale_group0 = (struct megasas_instance *)tmp;
  tmp___0 = ldv_zalloc(3484UL);
  megasas_instance_template_xscale_group1 = (struct megasas_register_set *)tmp___0;
  return;
}
}
void choose_timer_1(struct timer_list *timer )
{
  {
  LDV_IN_INTERRUPT = 2;
  (*(timer->function))(timer->data);
  LDV_IN_INTERRUPT = 1;
  ldv_timer_state_1 = 2;
  return;
}
}
void ldv_main_exported_2(void) ;
int main(void)
{
  char *ldvarg1 ;
  void *tmp ;
  struct device_driver *ldvarg0 ;
  void *tmp___0 ;
  dma_addr_t ldvarg8 ;
  u32 ldvarg7 ;
  u32 tmp___1 ;
  struct scsi_cmnd *ldvarg4 ;
  void *tmp___2 ;
  void *ldvarg3 ;
  void *tmp___3 ;
  struct megasas_cmd *ldvarg5 ;
  void *tmp___4 ;
  int ldvarg2 ;
  int tmp___5 ;
  unsigned long ldvarg6 ;
  unsigned long tmp___6 ;
  char *ldvarg11 ;
  void *tmp___7 ;
  size_t ldvarg10 ;
  size_t tmp___8 ;
  char *ldvarg9 ;
  void *tmp___9 ;
  char *ldvarg13 ;
  void *tmp___10 ;
  struct device_driver *ldvarg12 ;
  void *tmp___11 ;
  int ldvarg18 ;
  int tmp___12 ;
  struct poll_table_struct *ldvarg20 ;
  void *tmp___13 ;
  int ldvarg16 ;
  int tmp___14 ;
  unsigned int ldvarg15 ;
  unsigned int tmp___15 ;
  unsigned long ldvarg21 ;
  unsigned long tmp___16 ;
  unsigned long ldvarg14 ;
  unsigned long tmp___17 ;
  loff_t ldvarg17 ;
  loff_t tmp___18 ;
  unsigned int ldvarg22 ;
  unsigned int tmp___19 ;
  int ldvarg19 ;
  int tmp___20 ;
  void *ldvarg24 ;
  void *tmp___21 ;
  unsigned long ldvarg27 ;
  unsigned long tmp___22 ;
  struct megasas_cmd *ldvarg26 ;
  void *tmp___23 ;
  struct scsi_cmnd *ldvarg25 ;
  void *tmp___24 ;
  int ldvarg23 ;
  int tmp___25 ;
  dma_addr_t ldvarg29 ;
  u32 ldvarg28 ;
  u32 tmp___26 ;
  struct scsi_cmnd *ldvarg39 ;
  void *tmp___27 ;
  int ldvarg37 ;
  int tmp___28 ;
  unsigned long ldvarg41 ;
  unsigned long tmp___29 ;
  dma_addr_t ldvarg43 ;
  u32 ldvarg42 ;
  u32 tmp___30 ;
  struct megasas_cmd *ldvarg40 ;
  void *tmp___31 ;
  void *ldvarg38 ;
  void *tmp___32 ;
  struct pci_device_id *ldvarg45 ;
  void *tmp___33 ;
  pm_message_t ldvarg44 ;
  char *ldvarg47 ;
  void *tmp___34 ;
  struct device_driver *ldvarg46 ;
  void *tmp___35 ;
  int ldvarg48 ;
  int tmp___36 ;
  dma_addr_t ldvarg54 ;
  struct megasas_cmd *ldvarg51 ;
  void *tmp___37 ;
  u32 ldvarg53 ;
  u32 tmp___38 ;
  unsigned long ldvarg52 ;
  unsigned long tmp___39 ;
  void *ldvarg49 ;
  void *tmp___40 ;
  struct scsi_cmnd *ldvarg50 ;
  void *tmp___41 ;
  int ldvarg57 ;
  int tmp___42 ;
  int *ldvarg58 ;
  void *tmp___43 ;
  struct block_device *ldvarg60 ;
  void *tmp___44 ;
  struct Scsi_Host *ldvarg55 ;
  void *tmp___45 ;
  sector_t ldvarg59 ;
  int ldvarg56 ;
  int tmp___46 ;
  struct device_driver *ldvarg61 ;
  void *tmp___47 ;
  char *ldvarg62 ;
  void *tmp___48 ;
  int tmp___49 ;
  int tmp___50 ;
  int tmp___51 ;
  int tmp___52 ;
  int tmp___53 ;
  int tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  int tmp___58 ;
  int tmp___59 ;
  int tmp___60 ;
  int tmp___61 ;
  int tmp___62 ;
  {
  tmp = ldv_zalloc(1UL);
  ldvarg1 = (char *)tmp;
  tmp___0 = ldv_zalloc(120UL);
  ldvarg0 = (struct device_driver *)tmp___0;
  tmp___1 = __VERIFIER_nondet_u32();
  ldvarg7 = tmp___1;
  tmp___2 = ldv_zalloc(456UL);
  ldvarg4 = (struct scsi_cmnd *)tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg3 = tmp___3;
  tmp___4 = ldv_zalloc(80UL);
  ldvarg5 = (struct megasas_cmd *)tmp___4;
  tmp___5 = __VERIFIER_nondet_int();
  ldvarg2 = tmp___5;
  tmp___6 = __VERIFIER_nondet_ulong();
  ldvarg6 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg11 = (char *)tmp___7;
  tmp___8 = __VERIFIER_nondet_size_t();
  ldvarg10 = tmp___8;
  tmp___9 = ldv_zalloc(1UL);
  ldvarg9 = (char *)tmp___9;
  tmp___10 = ldv_zalloc(1UL);
  ldvarg13 = (char *)tmp___10;
  tmp___11 = ldv_zalloc(120UL);
  ldvarg12 = (struct device_driver *)tmp___11;
  tmp___12 = __VERIFIER_nondet_int();
  ldvarg18 = tmp___12;
  tmp___13 = ldv_zalloc(16UL);
  ldvarg20 = (struct poll_table_struct *)tmp___13;
  tmp___14 = __VERIFIER_nondet_int();
  ldvarg16 = tmp___14;
  tmp___15 = __VERIFIER_nondet_uint();
  ldvarg15 = tmp___15;
  tmp___16 = __VERIFIER_nondet_ulong();
  ldvarg21 = tmp___16;
  tmp___17 = __VERIFIER_nondet_ulong();
  ldvarg14 = tmp___17;
  tmp___18 = __VERIFIER_nondet_loff_t();
  ldvarg17 = tmp___18;
  tmp___19 = __VERIFIER_nondet_uint();
  ldvarg22 = tmp___19;
  tmp___20 = __VERIFIER_nondet_int();
  ldvarg19 = tmp___20;
  tmp___21 = ldv_zalloc(1UL);
  ldvarg24 = tmp___21;
  tmp___22 = __VERIFIER_nondet_ulong();
  ldvarg27 = tmp___22;
  tmp___23 = ldv_zalloc(80UL);
  ldvarg26 = (struct megasas_cmd *)tmp___23;
  tmp___24 = ldv_zalloc(456UL);
  ldvarg25 = (struct scsi_cmnd *)tmp___24;
  tmp___25 = __VERIFIER_nondet_int();
  ldvarg23 = tmp___25;
  tmp___26 = __VERIFIER_nondet_u32();
  ldvarg28 = tmp___26;
  tmp___27 = ldv_zalloc(456UL);
  ldvarg39 = (struct scsi_cmnd *)tmp___27;
  tmp___28 = __VERIFIER_nondet_int();
  ldvarg37 = tmp___28;
  tmp___29 = __VERIFIER_nondet_ulong();
  ldvarg41 = tmp___29;
  tmp___30 = __VERIFIER_nondet_u32();
  ldvarg42 = tmp___30;
  tmp___31 = ldv_zalloc(80UL);
  ldvarg40 = (struct megasas_cmd *)tmp___31;
  tmp___32 = ldv_zalloc(1UL);
  ldvarg38 = tmp___32;
  tmp___33 = ldv_zalloc(32UL);
  ldvarg45 = (struct pci_device_id *)tmp___33;
  tmp___34 = ldv_zalloc(1UL);
  ldvarg47 = (char *)tmp___34;
  tmp___35 = ldv_zalloc(120UL);
  ldvarg46 = (struct device_driver *)tmp___35;
  tmp___36 = __VERIFIER_nondet_int();
  ldvarg48 = tmp___36;
  tmp___37 = ldv_zalloc(80UL);
  ldvarg51 = (struct megasas_cmd *)tmp___37;
  tmp___38 = __VERIFIER_nondet_u32();
  ldvarg53 = tmp___38;
  tmp___39 = __VERIFIER_nondet_ulong();
  ldvarg52 = tmp___39;
  tmp___40 = ldv_zalloc(1UL);
  ldvarg49 = tmp___40;
  tmp___41 = ldv_zalloc(456UL);
  ldvarg50 = (struct scsi_cmnd *)tmp___41;
  tmp___42 = __VERIFIER_nondet_int();
  ldvarg57 = tmp___42;
  tmp___43 = ldv_zalloc(4UL);
  ldvarg58 = (int *)tmp___43;
  tmp___44 = ldv_zalloc(496UL);
  ldvarg60 = (struct block_device *)tmp___44;
  tmp___45 = ldv_zalloc(3584UL);
  ldvarg55 = (struct Scsi_Host *)tmp___45;
  tmp___46 = __VERIFIER_nondet_int();
  ldvarg56 = tmp___46;
  tmp___47 = ldv_zalloc(120UL);
  ldvarg61 = (struct device_driver *)tmp___47;
  tmp___48 = ldv_zalloc(1UL);
  ldvarg62 = (char *)tmp___48;
  ldv_initialize();
  memset((void *)(& ldvarg8), 0, 8UL);
  memset((void *)(& ldvarg29), 0, 8UL);
  memset((void *)(& ldvarg43), 0, 8UL);
  memset((void *)(& ldvarg44), 0, 4UL);
  memset((void *)(& ldvarg54), 0, 8UL);
  memset((void *)(& ldvarg59), 0, 8UL);
  ldv_state_variable_6 = 0;
  ldv_state_variable_11 = 0;
  ldv_state_variable_3 = 0;
  ldv_state_variable_7 = 0;
  ldv_state_variable_9 = 0;
  ldv_state_variable_12 = 0;
  ldv_state_variable_2 = 0;
  ldv_state_variable_14 = 0;
  ldv_state_variable_8 = 0;
  ldv_state_variable_1 = 1;
  ldv_state_variable_4 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_13 = 0;
  ldv_state_variable_10 = 0;
  ldv_state_variable_5 = 0;
  ldv_40441:
  tmp___49 = __VERIFIER_nondet_int();
  switch (tmp___49) {
  case 0: ;
  if (ldv_state_variable_6 != 0) {
    tmp___50 = __VERIFIER_nondet_int();
    switch (tmp___50) {
    case 0: ;
    if (ldv_state_variable_6 == 1) {
      megasas_sysfs_show_release_date(ldvarg0, ldvarg1);
      ldv_state_variable_6 = 1;
    } else {
    }
    goto ldv_40314;
    default:
    ldv_stop();
    }
    ldv_40314: ;
  } else {
  }
  goto ldv_40316;
  case 1: ;
  if (ldv_state_variable_11 != 0) {
    tmp___51 = __VERIFIER_nondet_int();
    switch (tmp___51) {
    case 0: ;
    if (ldv_state_variable_11 == 1) {
      megasas_adp_reset_gen2(megasas_instance_template_gen2_group0, megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_adp_reset_gen2(megasas_instance_template_gen2_group0, megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 1: ;
    if (ldv_state_variable_11 == 1) {
      megasas_fire_cmd_ppc(megasas_instance_template_gen2_group0, ldvarg8, ldvarg7,
                           megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_fire_cmd_ppc(megasas_instance_template_gen2_group0, ldvarg8, ldvarg7,
                           megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 2: ;
    if (ldv_state_variable_11 == 1) {
      megasas_clear_intr_gen2(megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_clear_intr_gen2(megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 3: ;
    if (ldv_state_variable_11 == 1) {
      megasas_complete_cmd_dpc(ldvarg6);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_complete_cmd_dpc(ldvarg6);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 4: ;
    if (ldv_state_variable_11 == 1) {
      megasas_issue_dcmd(megasas_instance_template_gen2_group0, ldvarg5);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_issue_dcmd(megasas_instance_template_gen2_group0, ldvarg5);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 5: ;
    if (ldv_state_variable_11 == 1) {
      megasas_init_adapter_mfi(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_init_adapter_mfi(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 6: ;
    if (ldv_state_variable_11 == 1) {
      megasas_build_and_issue_cmd(megasas_instance_template_gen2_group0, ldvarg4);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_build_and_issue_cmd(megasas_instance_template_gen2_group0, ldvarg4);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 7: ;
    if (ldv_state_variable_11 == 1) {
      megasas_check_reset_gen2(megasas_instance_template_gen2_group0, megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_check_reset_gen2(megasas_instance_template_gen2_group0, megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 8: ;
    if (ldv_state_variable_11 == 1) {
      megasas_disable_intr_ppc(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_disable_intr_ppc(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 9: ;
    if (ldv_state_variable_11 == 2) {
      megasas_read_fw_status_reg_gen2(megasas_instance_template_gen2_group1);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 10: ;
    if (ldv_state_variable_11 == 1) {
      megasas_isr(ldvarg2, ldvarg3);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_isr(ldvarg2, ldvarg3);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 11: ;
    if (ldv_state_variable_11 == 1) {
      megasas_enable_intr_gen2(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 1;
    } else {
    }
    if (ldv_state_variable_11 == 2) {
      megasas_enable_intr_gen2(megasas_instance_template_gen2_group0);
      ldv_state_variable_11 = 2;
    } else {
    }
    goto ldv_40319;
    case 12: ;
    if (ldv_state_variable_11 == 2) {
      ldv_release_11();
      ldv_state_variable_11 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40319;
    case 13: ;
    if (ldv_state_variable_11 == 1) {
      ldv_probe_11();
      ldv_state_variable_11 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40319;
    default:
    ldv_stop();
    }
    ldv_40319: ;
  } else {
  }
  goto ldv_40316;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___52 = __VERIFIER_nondet_int();
    switch (tmp___52) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      megasas_sysfs_set_dbg_lvl(driver_attr_dbg_lvl_group0, (char const *)ldvarg11,
                                ldvarg10);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_40336;
    case 1: ;
    if (ldv_state_variable_3 == 1) {
      megasas_sysfs_show_dbg_lvl(driver_attr_dbg_lvl_group0, ldvarg9);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_40336;
    default:
    ldv_stop();
    }
    ldv_40336: ;
  } else {
  }
  goto ldv_40316;
  case 3: ;
  if (ldv_state_variable_7 != 0) {
    tmp___53 = __VERIFIER_nondet_int();
    switch (tmp___53) {
    case 0: ;
    if (ldv_state_variable_7 == 1) {
      megasas_sysfs_show_version(ldvarg12, ldvarg13);
      ldv_state_variable_7 = 1;
    } else {
    }
    goto ldv_40341;
    default:
    ldv_stop();
    }
    ldv_40341: ;
  } else {
  }
  goto ldv_40316;
  case 4: ;
  if (ldv_state_variable_9 != 0) {
    tmp___54 = __VERIFIER_nondet_int();
    switch (tmp___54) {
    case 0: ;
    if (ldv_state_variable_9 == 2) {
      megasas_mgmt_compat_ioctl(megasas_mgmt_fops_group2, ldvarg22, ldvarg21);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40345;
    case 1: ;
    if (ldv_state_variable_9 == 1) {
      megasas_mgmt_poll(megasas_mgmt_fops_group2, ldvarg20);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      megasas_mgmt_poll(megasas_mgmt_fops_group2, ldvarg20);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40345;
    case 2: ;
    if (ldv_state_variable_9 == 1) {
      megasas_mgmt_fasync(ldvarg18, megasas_mgmt_fops_group2, ldvarg19);
      ldv_state_variable_9 = 1;
    } else {
    }
    if (ldv_state_variable_9 == 2) {
      megasas_mgmt_fasync(ldvarg18, megasas_mgmt_fops_group2, ldvarg19);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40345;
    case 3: ;
    if (ldv_state_variable_9 == 1) {
      ldv_retval_0 = megasas_mgmt_open(megasas_mgmt_fops_group1, megasas_mgmt_fops_group2);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_9 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_40345;
    case 4: ;
    if (ldv_state_variable_9 == 2) {
      noop_llseek(megasas_mgmt_fops_group2, ldvarg17, ldvarg16);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40345;
    case 5: ;
    if (ldv_state_variable_9 == 2) {
      megasas_mgmt_ioctl(megasas_mgmt_fops_group2, ldvarg15, ldvarg14);
      ldv_state_variable_9 = 2;
    } else {
    }
    goto ldv_40345;
    case 6: ;
    if (ldv_state_variable_9 == 2) {
      ldv_release_9();
      ldv_state_variable_9 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40345;
    default:
    ldv_stop();
    }
    ldv_40345: ;
  } else {
  }
  goto ldv_40316;
  case 5: ;
  if (ldv_state_variable_12 != 0) {
    tmp___55 = __VERIFIER_nondet_int();
    switch (tmp___55) {
    case 0: ;
    if (ldv_state_variable_12 == 1) {
      megasas_adp_reset_gen2(megasas_instance_template_skinny_group0, megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_adp_reset_gen2(megasas_instance_template_skinny_group0, megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 1: ;
    if (ldv_state_variable_12 == 1) {
      megasas_fire_cmd_skinny(megasas_instance_template_skinny_group0, ldvarg29, ldvarg28,
                              megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_fire_cmd_skinny(megasas_instance_template_skinny_group0, ldvarg29, ldvarg28,
                              megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 2: ;
    if (ldv_state_variable_12 == 1) {
      megasas_clear_intr_skinny(megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_clear_intr_skinny(megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 3: ;
    if (ldv_state_variable_12 == 1) {
      megasas_complete_cmd_dpc(ldvarg27);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_complete_cmd_dpc(ldvarg27);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 4: ;
    if (ldv_state_variable_12 == 1) {
      megasas_issue_dcmd(megasas_instance_template_skinny_group0, ldvarg26);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_issue_dcmd(megasas_instance_template_skinny_group0, ldvarg26);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 5: ;
    if (ldv_state_variable_12 == 1) {
      megasas_init_adapter_mfi(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_init_adapter_mfi(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 6: ;
    if (ldv_state_variable_12 == 1) {
      megasas_build_and_issue_cmd(megasas_instance_template_skinny_group0, ldvarg25);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_build_and_issue_cmd(megasas_instance_template_skinny_group0, ldvarg25);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 7: ;
    if (ldv_state_variable_12 == 1) {
      megasas_check_reset_skinny(megasas_instance_template_skinny_group0, megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_check_reset_skinny(megasas_instance_template_skinny_group0, megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 8: ;
    if (ldv_state_variable_12 == 1) {
      megasas_disable_intr_ppc(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_disable_intr_ppc(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 9: ;
    if (ldv_state_variable_12 == 2) {
      megasas_read_fw_status_reg_skinny(megasas_instance_template_skinny_group1);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 10: ;
    if (ldv_state_variable_12 == 1) {
      megasas_isr(ldvarg23, ldvarg24);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_isr(ldvarg23, ldvarg24);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 11: ;
    if (ldv_state_variable_12 == 1) {
      megasas_enable_intr_skinny(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 1;
    } else {
    }
    if (ldv_state_variable_12 == 2) {
      megasas_enable_intr_skinny(megasas_instance_template_skinny_group0);
      ldv_state_variable_12 = 2;
    } else {
    }
    goto ldv_40355;
    case 12: ;
    if (ldv_state_variable_12 == 2) {
      ldv_release_12();
      ldv_state_variable_12 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40355;
    case 13: ;
    if (ldv_state_variable_12 == 1) {
      ldv_probe_12();
      ldv_state_variable_12 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40355;
    default:
    ldv_stop();
    }
    ldv_40355: ;
  } else {
  }
  goto ldv_40316;
  case 6: ;
  if (ldv_state_variable_2 != 0) {
    ldv_main_exported_2();
  } else {
  }
  goto ldv_40316;
  case 7: ;
  if (ldv_state_variable_14 != 0) {
    tmp___56 = __VERIFIER_nondet_int();
    switch (tmp___56) {
    case 0: ;
    if (ldv_state_variable_14 == 1) {
      megasas_adp_reset_xscale(megasas_instance_template_xscale_group0, megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_adp_reset_xscale(megasas_instance_template_xscale_group0, megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 1: ;
    if (ldv_state_variable_14 == 1) {
      megasas_fire_cmd_xscale(megasas_instance_template_xscale_group0, ldvarg43, ldvarg42,
                              megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_fire_cmd_xscale(megasas_instance_template_xscale_group0, ldvarg43, ldvarg42,
                              megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 2: ;
    if (ldv_state_variable_14 == 1) {
      megasas_clear_intr_xscale(megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_clear_intr_xscale(megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 3: ;
    if (ldv_state_variable_14 == 1) {
      megasas_complete_cmd_dpc(ldvarg41);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_complete_cmd_dpc(ldvarg41);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 4: ;
    if (ldv_state_variable_14 == 1) {
      megasas_issue_dcmd(megasas_instance_template_xscale_group0, ldvarg40);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_issue_dcmd(megasas_instance_template_xscale_group0, ldvarg40);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 5: ;
    if (ldv_state_variable_14 == 1) {
      megasas_init_adapter_mfi(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_init_adapter_mfi(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 6: ;
    if (ldv_state_variable_14 == 1) {
      megasas_build_and_issue_cmd(megasas_instance_template_xscale_group0, ldvarg39);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_build_and_issue_cmd(megasas_instance_template_xscale_group0, ldvarg39);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 7: ;
    if (ldv_state_variable_14 == 1) {
      megasas_check_reset_xscale(megasas_instance_template_xscale_group0, megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_check_reset_xscale(megasas_instance_template_xscale_group0, megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 8: ;
    if (ldv_state_variable_14 == 1) {
      megasas_disable_intr_xscale(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_disable_intr_xscale(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 9: ;
    if (ldv_state_variable_14 == 2) {
      megasas_read_fw_status_reg_xscale(megasas_instance_template_xscale_group1);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 10: ;
    if (ldv_state_variable_14 == 1) {
      megasas_isr(ldvarg37, ldvarg38);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_isr(ldvarg37, ldvarg38);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 11: ;
    if (ldv_state_variable_14 == 1) {
      megasas_enable_intr_xscale(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 1;
    } else {
    }
    if (ldv_state_variable_14 == 2) {
      megasas_enable_intr_xscale(megasas_instance_template_xscale_group0);
      ldv_state_variable_14 = 2;
    } else {
    }
    goto ldv_40373;
    case 12: ;
    if (ldv_state_variable_14 == 2) {
      ldv_release_14();
      ldv_state_variable_14 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40373;
    case 13: ;
    if (ldv_state_variable_14 == 1) {
      ldv_probe_14();
      ldv_state_variable_14 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40373;
    default:
    ldv_stop();
    }
    ldv_40373: ;
  } else {
  }
  goto ldv_40316;
  case 8: ;
  if (ldv_state_variable_8 != 0) {
    tmp___57 = __VERIFIER_nondet_int();
    switch (tmp___57) {
    case 0: ;
    if (ldv_state_variable_8 == 1) {
      ldv_retval_3 = megasas_probe_one(megasas_pci_driver_group0, (struct pci_device_id const *)ldvarg45);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_8 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_40390;
    case 1: ;
    if (ldv_state_variable_8 == 4) {
      megasas_shutdown(megasas_pci_driver_group0);
      ldv_state_variable_8 = 3;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      megasas_shutdown(megasas_pci_driver_group0);
      ldv_state_variable_8 = 3;
    } else {
    }
    goto ldv_40390;
    case 2: ;
    if (ldv_state_variable_8 == 2) {
      ldv_retval_2 = megasas_suspend(megasas_pci_driver_group0, ldvarg44);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_8 = 4;
      } else {
      }
    } else {
    }
    goto ldv_40390;
    case 3: ;
    if (ldv_state_variable_8 == 4) {
      megasas_detach_one(megasas_pci_driver_group0);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_8 == 3) {
      megasas_detach_one(megasas_pci_driver_group0);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    if (ldv_state_variable_8 == 2) {
      megasas_detach_one(megasas_pci_driver_group0);
      ldv_state_variable_8 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40390;
    case 4: ;
    if (ldv_state_variable_8 == 4) {
      ldv_retval_1 = megasas_resume(megasas_pci_driver_group0);
      if (ldv_retval_1 == 0) {
        ldv_state_variable_8 = 2;
      } else {
      }
    } else {
    }
    goto ldv_40390;
    default:
    ldv_stop();
    }
    ldv_40390: ;
  } else {
  }
  goto ldv_40316;
  case 9: ;
  if (ldv_state_variable_1 != 0) {
    choose_timer_1(ldv_timer_list_1);
  } else {
  }
  goto ldv_40316;
  case 10: ;
  if (ldv_state_variable_4 != 0) {
    tmp___58 = __VERIFIER_nondet_int();
    switch (tmp___58) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      megasas_sysfs_show_support_device_change(ldvarg46, ldvarg47);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_40399;
    default:
    ldv_stop();
    }
    ldv_40399: ;
  } else {
  }
  goto ldv_40316;
  case 11: ;
  if (ldv_state_variable_0 != 0) {
    tmp___59 = __VERIFIER_nondet_int();
    switch (tmp___59) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      megasas_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_40404;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_4 = megasas_init();
      if (ldv_retval_4 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_5 = 1;
        ldv_state_variable_13 = 1;
        ldv_initialize_megasas_instance_template_13();
        ldv_state_variable_4 = 1;
        ldv_state_variable_8 = 1;
        ldv_initialize_pci_driver_8();
        ldv_state_variable_14 = 1;
        ldv_initialize_megasas_instance_template_14();
        ldv_state_variable_2 = 1;
        ldv_initialize_megasas_instance_template_2();
        ldv_state_variable_12 = 1;
        ldv_initialize_megasas_instance_template_12();
        ldv_state_variable_7 = 1;
        ldv_state_variable_3 = 1;
        ldv_initialize_driver_attribute_3();
        ldv_state_variable_11 = 1;
        ldv_initialize_megasas_instance_template_11();
        ldv_state_variable_6 = 1;
      } else {
      }
      if (ldv_retval_4 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_40404;
    default:
    ldv_stop();
    }
    ldv_40404: ;
  } else {
  }
  goto ldv_40316;
  case 12: ;
  if (ldv_state_variable_13 != 0) {
    tmp___60 = __VERIFIER_nondet_int();
    switch (tmp___60) {
    case 0: ;
    if (ldv_state_variable_13 == 1) {
      megasas_adp_reset_xscale(megasas_instance_template_ppc_group0, megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_adp_reset_xscale(megasas_instance_template_ppc_group0, megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 1: ;
    if (ldv_state_variable_13 == 1) {
      megasas_fire_cmd_ppc(megasas_instance_template_ppc_group0, ldvarg54, ldvarg53,
                           megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_fire_cmd_ppc(megasas_instance_template_ppc_group0, ldvarg54, ldvarg53,
                           megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 2: ;
    if (ldv_state_variable_13 == 1) {
      megasas_clear_intr_ppc(megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_clear_intr_ppc(megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 3: ;
    if (ldv_state_variable_13 == 1) {
      megasas_complete_cmd_dpc(ldvarg52);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_complete_cmd_dpc(ldvarg52);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 4: ;
    if (ldv_state_variable_13 == 1) {
      megasas_issue_dcmd(megasas_instance_template_ppc_group0, ldvarg51);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_issue_dcmd(megasas_instance_template_ppc_group0, ldvarg51);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 5: ;
    if (ldv_state_variable_13 == 1) {
      megasas_init_adapter_mfi(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_init_adapter_mfi(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 6: ;
    if (ldv_state_variable_13 == 1) {
      megasas_build_and_issue_cmd(megasas_instance_template_ppc_group0, ldvarg50);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_build_and_issue_cmd(megasas_instance_template_ppc_group0, ldvarg50);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 7: ;
    if (ldv_state_variable_13 == 1) {
      megasas_check_reset_ppc(megasas_instance_template_ppc_group0, megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_check_reset_ppc(megasas_instance_template_ppc_group0, megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 8: ;
    if (ldv_state_variable_13 == 1) {
      megasas_disable_intr_ppc(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_disable_intr_ppc(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 9: ;
    if (ldv_state_variable_13 == 2) {
      megasas_read_fw_status_reg_ppc(megasas_instance_template_ppc_group1);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 10: ;
    if (ldv_state_variable_13 == 1) {
      megasas_isr(ldvarg48, ldvarg49);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_isr(ldvarg48, ldvarg49);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 11: ;
    if (ldv_state_variable_13 == 1) {
      megasas_enable_intr_ppc(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 1;
    } else {
    }
    if (ldv_state_variable_13 == 2) {
      megasas_enable_intr_ppc(megasas_instance_template_ppc_group0);
      ldv_state_variable_13 = 2;
    } else {
    }
    goto ldv_40409;
    case 12: ;
    if (ldv_state_variable_13 == 2) {
      ldv_release_13();
      ldv_state_variable_13 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_40409;
    case 13: ;
    if (ldv_state_variable_13 == 1) {
      ldv_probe_13();
      ldv_state_variable_13 = 2;
      ref_cnt = ref_cnt + 1;
    } else {
    }
    goto ldv_40409;
    default:
    ldv_stop();
    }
    ldv_40409: ;
  } else {
  }
  goto ldv_40316;
  case 13: ;
  if (ldv_state_variable_10 != 0) {
    tmp___61 = __VERIFIER_nondet_int();
    switch (tmp___61) {
    case 0: ;
    if (ldv_state_variable_10 == 1) {
      megasas_slave_configure(megasas_template_group1);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 1: ;
    if (ldv_state_variable_10 == 1) {
      megasas_bios_param(megasas_template_group1, ldvarg60, ldvarg59, ldvarg58);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 2: ;
    if (ldv_state_variable_10 == 1) {
      megasas_change_queue_depth(megasas_template_group1, ldvarg57, ldvarg56);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 3: ;
    if (ldv_state_variable_10 == 1) {
      megasas_queue_command(ldvarg55, megasas_template_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 4: ;
    if (ldv_state_variable_10 == 1) {
      megasas_reset_device(megasas_template_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 5: ;
    if (ldv_state_variable_10 == 1) {
      megasas_reset_timer(megasas_template_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 6: ;
    if (ldv_state_variable_10 == 1) {
      megasas_slave_alloc(megasas_template_group1);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 7: ;
    if (ldv_state_variable_10 == 1) {
      megasas_reset_bus_host(megasas_template_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    case 8: ;
    if (ldv_state_variable_10 == 1) {
      megasas_reset_bus_host(megasas_template_group0);
      ldv_state_variable_10 = 1;
    } else {
    }
    goto ldv_40426;
    default:
    ldv_stop();
    }
    ldv_40426: ;
  } else {
  }
  goto ldv_40316;
  case 14: ;
  if (ldv_state_variable_5 != 0) {
    tmp___62 = __VERIFIER_nondet_int();
    switch (tmp___62) {
    case 0: ;
    if (ldv_state_variable_5 == 1) {
      megasas_sysfs_show_support_poll_for_event(ldvarg61, ldvarg62);
      ldv_state_variable_5 = 1;
    } else {
    }
    goto ldv_40438;
    default:
    ldv_stop();
    }
    ldv_40438: ;
  } else {
  }
  goto ldv_40316;
  default:
  ldv_stop();
  }
  ldv_40316: ;
  goto ldv_40441;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  ldv_spin_unlock();
  ldv_spin_unlock_irqrestore_8(lock, flags);
  return;
}
}
void *ldv_malloc(size_t size ) ;
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kmalloc_12(size, flags);
  return ((void *)0);
}
}
void *ldv_calloc(size_t nmemb , size_t size ) ;
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  ldv_kcalloc_14(n, size, flags);
  return ((void *)0);
}
}
void *ldv_zalloc(size_t size ) ;
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  {
  ldv_check_alloc_flags(flags);
  return ((void *)0);
}
}
int ldv_scsi_add_host_with_dma_20(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_10 = 1;
    ldv_initialize_scsi_host_template_10();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_mod_timer_21(struct timer_list *ldv_func_arg1 , unsigned long ldv_func_arg2 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = mod_timer(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  activate_pending_timer_1(ldv_func_arg1, ldv_func_arg2, 1);
  return (ldv_func_res);
}
}
void *ldv_dma_pool_alloc_22(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_23(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
struct Scsi_Host *ldv_scsi_host_alloc_24(struct scsi_host_template *sht , int privsize )
{
  ldv_func_ret_type___4 ldv_func_res ;
  struct Scsi_Host *tmp ;
  {
  tmp = scsi_host_alloc(sht, privsize);
  ldv_func_res = tmp;
  if ((unsigned long )ldv_func_res != (unsigned long )((ldv_func_ret_type___4 )0)) {
    ldv_state_variable_10 = 1;
    ldv_initialize_scsi_host_template_10();
  } else {
  }
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_25(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___5 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_del_timer_sync_26(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___6 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
void ldv_scsi_remove_host_27(struct Scsi_Host *shost )
{
  {
  scsi_remove_host(shost);
  ldv_state_variable_10 = 0;
  return;
}
}
__inline static int ldv_register_chrdev_28(unsigned int major , char const *name ,
                                           struct file_operations const *fops )
{
  ldv_func_ret_type___7 ldv_func_res ;
  int tmp ;
  {
  tmp = register_chrdev(major, name, fops);
  ldv_func_res = tmp;
  ldv_state_variable_9 = 1;
  ldv_file_operations_9();
  return (ldv_func_res);
}
}
__inline static void ldv_unregister_chrdev_29(unsigned int major , char const *name )
{
  {
  unregister_chrdev(major, name);
  ldv_state_variable_9 = 0;
  return;
}
}
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
extern void __bad_percpu_size(void) ;
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags ) ;
int ldv_del_timer_sync_67(struct timer_list *ldv_func_arg1 ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
__inline static void *kmalloc(size_t size , gfp_t flags ) ;
__inline static void *kzalloc(size_t size , gfp_t flags ) ;
void *ldv_dma_pool_alloc_63(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_64(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_65(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
void *ldv_dma_pool_alloc_66(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 ) ;
int ldv_scsi_add_host_with_dma_62(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
u8 MR_BuildRaidContext(struct megasas_instance *instance , struct IO_REQUEST_INFO *io_info ,
                       struct RAID_CONTEXT *pRAID_Context , struct MR_FW_RAID_MAP_ALL *map ,
                       u8 **raidLUN ) ;
u8 MR_TargetIdToLdGet(u32 ldTgtId , struct MR_FW_RAID_MAP_ALL *map ) ;
struct MR_LD_RAID *MR_LdRaidGet(u32 ld , struct MR_FW_RAID_MAP_ALL *map ) ;
u16 MR_ArPdGet(u32 ar , u32 arm , struct MR_FW_RAID_MAP_ALL *map ) ;
u16 MR_LdSpanArrayGet(u32 ld , u32 span , struct MR_FW_RAID_MAP_ALL *map ) ;
u16 MR_PdDevHandleGet(u32 pd , struct MR_FW_RAID_MAP_ALL *map ) ;
u16 MR_GetLDTgtId(u32 ld , struct MR_FW_RAID_MAP_ALL *map ) ;
int megasas_clear_intr_fusion(struct megasas_register_set *regs ) ;
u16 get_updated_dev_handle(struct LD_LOAD_BALANCE_INFO *lbInfo , struct IO_REQUEST_INFO *io_info ) ;
void megasas_enable_intr_fusion(struct megasas_instance *instance )
{
  struct megasas_register_set *regs ;
  {
  regs = instance->reg_set;
  writel(4294967295U, (void volatile *)(& regs->outbound_intr_status));
  readl((void const volatile *)(& regs->outbound_intr_status));
  writel(4294967286U, (void volatile *)(& regs->outbound_intr_mask));
  readl((void const volatile *)(& regs->outbound_intr_mask));
  instance->mask_interrupts = 0U;
  return;
}
}
void megasas_disable_intr_fusion(struct megasas_instance *instance )
{
  u32 mask ;
  u32 status ;
  struct megasas_register_set *regs ;
  {
  mask = 4294967295U;
  regs = instance->reg_set;
  instance->mask_interrupts = 1U;
  writel(mask, (void volatile *)(& regs->outbound_intr_mask));
  status = readl((void const volatile *)(& regs->outbound_intr_mask));
  return;
}
}
int megasas_clear_intr_fusion(struct megasas_register_set *regs )
{
  u32 status ;
  {
  status = readl((void const volatile *)(& regs->outbound_intr_status));
  if ((int )status & 1) {
    writel(status, (void volatile *)(& regs->outbound_intr_status));
    readl((void const volatile *)(& regs->outbound_intr_status));
    return (1);
  } else {
  }
  if ((status & 9U) == 0U) {
    return (0);
  } else {
  }
  return (1);
}
}
struct megasas_cmd_fusion *megasas_get_cmd_fusion(struct megasas_instance *instance )
{
  unsigned long flags ;
  struct fusion_context *fusion ;
  struct megasas_cmd_fusion *cmd ;
  struct list_head const *__mptr ;
  int tmp ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  cmd = (struct megasas_cmd_fusion *)0;
  ldv_spin_lock();
  tmp = list_empty((struct list_head const *)(& fusion->cmd_pool));
  if (tmp == 0) {
    __mptr = (struct list_head const *)fusion->cmd_pool.next;
    cmd = (struct megasas_cmd_fusion *)__mptr + 0xffffffffffffffd0UL;
    list_del_init(& cmd->list);
  } else {
    printk("\vmegasas: Command pool (fusion) empty!\n");
  }
  spin_unlock_irqrestore(& fusion->cmd_pool_lock, flags);
  return (cmd);
}
}
__inline static void megasas_return_cmd_fusion(struct megasas_instance *instance ,
                                               struct megasas_cmd_fusion *cmd )
{
  unsigned long flags ;
  struct fusion_context *fusion ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  ldv_spin_lock();
  cmd->scmd = (struct scsi_cmnd *)0;
  cmd->sync_cmd_idx = 4294967295U;
  list_add_tail(& cmd->list, & fusion->cmd_pool);
  spin_unlock_irqrestore(& fusion->cmd_pool_lock, flags);
  return;
}
}
static void megasas_teardown_frame_pool_fusion(struct megasas_instance *instance )
{
  int i ;
  struct fusion_context *fusion ;
  u16 max_cmd ;
  struct megasas_cmd_fusion *cmd ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  max_cmd = instance->max_fw_cmds;
  if ((unsigned long )fusion->sg_dma_pool == (unsigned long )((struct dma_pool *)0) || (unsigned long )fusion->sense_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\vmegasas: dma pool is null. SG Pool %p, sense pool : %p\n", fusion->sg_dma_pool,
           fusion->sense_dma_pool);
    return;
  } else {
  }
  i = 0;
  goto ldv_38720;
  ldv_38719:
  cmd = *(fusion->cmd_list + (unsigned long )i);
  if ((unsigned long )cmd->sg_frame != (unsigned long )((union MPI2_SGE_IO_UNION *)0)) {
    dma_pool_free(fusion->sg_dma_pool, (void *)cmd->sg_frame, cmd->sg_frame_phys_addr);
  } else {
  }
  if ((unsigned long )cmd->sense != (unsigned long )((u8 *)0U)) {
    dma_pool_free(fusion->sense_dma_pool, (void *)cmd->sense, cmd->sense_phys_addr);
  } else {
  }
  i = i + 1;
  ldv_38720: ;
  if ((int )max_cmd > i) {
    goto ldv_38719;
  } else {
  }
  dma_pool_destroy(fusion->sg_dma_pool);
  dma_pool_destroy(fusion->sense_dma_pool);
  fusion->sg_dma_pool = (struct dma_pool *)0;
  fusion->sense_dma_pool = (struct dma_pool *)0;
  return;
}
}
void megasas_free_cmds_fusion(struct megasas_instance *instance )
{
  int i ;
  struct fusion_context *fusion ;
  u32 max_cmds ;
  u32 req_sz ;
  u32 reply_sz ;
  u32 io_frames_sz ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  req_sz = fusion->request_alloc_sz;
  reply_sz = fusion->reply_alloc_sz;
  io_frames_sz = fusion->io_frames_alloc_sz;
  max_cmds = (u32 )instance->max_fw_cmds;
  if ((unsigned long )fusion->req_frames_desc != (unsigned long )((u8 *)0U)) {
    dma_free_attrs(& (instance->pdev)->dev, (size_t )req_sz, (void *)fusion->req_frames_desc,
                   fusion->req_frames_desc_phys, (struct dma_attrs *)0);
  } else {
  }
  if ((unsigned long )fusion->reply_frames_desc != (unsigned long )((union MPI2_REPLY_DESCRIPTORS_UNION *)0)) {
    dma_pool_free(fusion->reply_frames_desc_pool, (void *)fusion->reply_frames_desc,
                  fusion->reply_frames_desc_phys);
    dma_pool_destroy(fusion->reply_frames_desc_pool);
  } else {
  }
  if ((unsigned long )fusion->io_request_frames != (unsigned long )((u8 *)0U)) {
    dma_pool_free(fusion->io_request_frames_pool, (void *)fusion->io_request_frames,
                  fusion->io_request_frames_phys);
    dma_pool_destroy(fusion->io_request_frames_pool);
  } else {
  }
  megasas_teardown_frame_pool_fusion(instance);
  i = 0;
  goto ldv_38732;
  ldv_38731:
  kfree((void const *)*(fusion->cmd_list + (unsigned long )i));
  i = i + 1;
  ldv_38732: ;
  if ((u32 )i < max_cmds) {
    goto ldv_38731;
  } else {
  }
  kfree((void const *)fusion->cmd_list);
  fusion->cmd_list = (struct megasas_cmd_fusion **)0;
  INIT_LIST_HEAD(& fusion->cmd_pool);
  return;
}
}
static int megasas_create_frame_pool_fusion(struct megasas_instance *instance )
{
  int i ;
  u32 max_cmd ;
  struct fusion_context *fusion ;
  struct megasas_cmd_fusion *cmd ;
  u32 total_sz_chain_frame ;
  void *tmp ;
  void *tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  max_cmd = (u32 )instance->max_fw_cmds;
  total_sz_chain_frame = 1024U;
  fusion->sg_dma_pool = dma_pool_create("megasas sg pool fusion", & (instance->pdev)->dev,
                                        (size_t )total_sz_chain_frame, 4UL, 0UL);
  if ((unsigned long )fusion->sg_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\017megasas: failed to setup request pool fusion\n");
    return (-12);
  } else {
  }
  fusion->sense_dma_pool = dma_pool_create("megasas sense pool fusion", & (instance->pdev)->dev,
                                           96UL, 64UL, 0UL);
  if ((unsigned long )fusion->sense_dma_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\017megasas: failed to setup sense pool fusion\n");
    dma_pool_destroy(fusion->sg_dma_pool);
    fusion->sg_dma_pool = (struct dma_pool *)0;
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_38743;
  ldv_38742:
  cmd = *(fusion->cmd_list + (unsigned long )i);
  tmp = ldv_dma_pool_alloc_63(fusion->sg_dma_pool, 208U, & cmd->sg_frame_phys_addr);
  cmd->sg_frame = (union MPI2_SGE_IO_UNION *)tmp;
  tmp___0 = ldv_dma_pool_alloc_64(fusion->sense_dma_pool, 208U, & cmd->sense_phys_addr);
  cmd->sense = (u8 *)tmp___0;
  if ((unsigned long )cmd->sg_frame == (unsigned long )((union MPI2_SGE_IO_UNION *)0) || (unsigned long )cmd->sense == (unsigned long )((u8 *)0U)) {
    printk("\017megasas: pci_pool_alloc failed\n");
    megasas_teardown_frame_pool_fusion(instance);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_38743: ;
  if ((u32 )i < max_cmd) {
    goto ldv_38742;
  } else {
  }
  return (0);
}
}
int megasas_alloc_cmds_fusion(struct megasas_instance *instance )
{
  int i ;
  int j ;
  int count ;
  u32 max_cmd ;
  u32 io_frames_sz ;
  struct fusion_context *fusion ;
  struct megasas_cmd_fusion *cmd ;
  union MPI2_REPLY_DESCRIPTORS_UNION *reply_desc ;
  u32 offset ;
  dma_addr_t io_req_base_phys ;
  u8 *io_req_base ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  max_cmd = (u32 )instance->max_fw_cmds;
  tmp = dma_alloc_attrs(& (instance->pdev)->dev, (size_t )fusion->request_alloc_sz,
                        & fusion->req_frames_desc_phys, 208U, (struct dma_attrs *)0);
  fusion->req_frames_desc = (u8 *)tmp;
  if ((unsigned long )fusion->req_frames_desc == (unsigned long )((u8 *)0U)) {
    printk("\vmegasas; Could not allocate memory for request_frames\n");
    goto fail_req_desc;
  } else {
  }
  count = instance->msix_vectors != 0U ? (int )instance->msix_vectors : 1;
  fusion->reply_frames_desc_pool = dma_pool_create("reply_frames pool", & (instance->pdev)->dev,
                                                   (size_t )(fusion->reply_alloc_sz * (u32 )count),
                                                   16UL, 0UL);
  if ((unsigned long )fusion->reply_frames_desc_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\vmegasas; Could not allocate memory for reply_frame pool\n");
    goto fail_reply_desc;
  } else {
  }
  tmp___0 = ldv_dma_pool_alloc_65(fusion->reply_frames_desc_pool, 208U, & fusion->reply_frames_desc_phys);
  fusion->reply_frames_desc = (union MPI2_REPLY_DESCRIPTORS_UNION *)tmp___0;
  if ((unsigned long )fusion->reply_frames_desc == (unsigned long )((union MPI2_REPLY_DESCRIPTORS_UNION *)0)) {
    printk("\vmegasas; Could not allocate memory for reply_frame pool\n");
    dma_pool_destroy(fusion->reply_frames_desc_pool);
    goto fail_reply_desc;
  } else {
  }
  reply_desc = fusion->reply_frames_desc;
  i = 0;
  goto ldv_38762;
  ldv_38761:
  reply_desc->Words = 0xffffffffffffffffULL;
  i = i + 1;
  reply_desc = reply_desc + 1;
  ldv_38762: ;
  if ((u32 )i < fusion->reply_q_depth * (u32 )count) {
    goto ldv_38761;
  } else {
  }
  io_frames_sz = fusion->io_frames_alloc_sz;
  fusion->io_request_frames_pool = dma_pool_create("io_request_frames pool", & (instance->pdev)->dev,
                                                   (size_t )fusion->io_frames_alloc_sz,
                                                   16UL, 0UL);
  if ((unsigned long )fusion->io_request_frames_pool == (unsigned long )((struct dma_pool *)0)) {
    printk("\vmegasas: Could not allocate memory for io_request_frame pool\n");
    goto fail_io_frames;
  } else {
  }
  tmp___1 = ldv_dma_pool_alloc_66(fusion->io_request_frames_pool, 208U, & fusion->io_request_frames_phys);
  fusion->io_request_frames = (u8 *)tmp___1;
  if ((unsigned long )fusion->io_request_frames == (unsigned long )((u8 *)0U)) {
    printk("\vmegasas: Could not allocate memory for io_request_frames frames\n");
    dma_pool_destroy(fusion->io_request_frames_pool);
    goto fail_io_frames;
  } else {
  }
  tmp___2 = kzalloc((unsigned long )max_cmd * 8UL, 208U);
  fusion->cmd_list = (struct megasas_cmd_fusion **)tmp___2;
  if ((unsigned long )fusion->cmd_list == (unsigned long )((struct megasas_cmd_fusion **)0)) {
    printk("\017megasas: out of memory. Could not alloc memory for cmd_list_fusion\n");
    goto fail_cmd_list;
  } else {
  }
  max_cmd = (u32 )instance->max_fw_cmds;
  i = 0;
  goto ldv_38770;
  ldv_38769:
  tmp___3 = kmalloc(112UL, 208U);
  *(fusion->cmd_list + (unsigned long )i) = (struct megasas_cmd_fusion *)tmp___3;
  if ((unsigned long )*(fusion->cmd_list + (unsigned long )i) == (unsigned long )((struct megasas_cmd_fusion *)0)) {
    printk("\vCould not alloc cmd list fusion\n");
    j = 0;
    goto ldv_38767;
    ldv_38766:
    kfree((void const *)*(fusion->cmd_list + (unsigned long )j));
    j = j + 1;
    ldv_38767: ;
    if (j < i) {
      goto ldv_38766;
    } else {
    }
    kfree((void const *)fusion->cmd_list);
    fusion->cmd_list = (struct megasas_cmd_fusion **)0;
    goto fail_cmd_list;
  } else {
  }
  i = i + 1;
  ldv_38770: ;
  if ((u32 )i < max_cmd) {
    goto ldv_38769;
  } else {
  }
  io_req_base = fusion->io_request_frames + 256UL;
  io_req_base_phys = fusion->io_request_frames_phys + 256ULL;
  i = 0;
  goto ldv_38773;
  ldv_38772:
  cmd = *(fusion->cmd_list + (unsigned long )i);
  offset = (u32 )(i * 256);
  memset((void *)cmd, 0, 112UL);
  cmd->index = (u32 )(i + 1);
  cmd->scmd = (struct scsi_cmnd *)0;
  cmd->sync_cmd_idx = 4294967295U;
  cmd->instance = instance;
  cmd->io_request = (struct MPI2_RAID_SCSI_IO_REQUEST *)io_req_base + (unsigned long )offset;
  memset((void *)cmd->io_request, 0, 144UL);
  cmd->io_request_phys_addr = (dma_addr_t )offset + io_req_base_phys;
  list_add_tail(& cmd->list, & fusion->cmd_pool);
  i = i + 1;
  ldv_38773: ;
  if ((u32 )i < max_cmd) {
    goto ldv_38772;
  } else {
  }
  tmp___4 = megasas_create_frame_pool_fusion(instance);
  if (tmp___4 != 0) {
    printk("\017megasas: Error creating frame DMA pool\n");
    megasas_free_cmds_fusion(instance);
    goto fail_req_desc;
  } else {
  }
  return (0);
  fail_cmd_list:
  dma_pool_free(fusion->io_request_frames_pool, (void *)fusion->io_request_frames,
                fusion->io_request_frames_phys);
  dma_pool_destroy(fusion->io_request_frames_pool);
  fail_io_frames:
  dma_free_attrs(& (instance->pdev)->dev, (size_t )fusion->request_alloc_sz, (void *)fusion->reply_frames_desc,
                 fusion->reply_frames_desc_phys, (struct dma_attrs *)0);
  dma_pool_free(fusion->reply_frames_desc_pool, (void *)fusion->reply_frames_desc,
                fusion->reply_frames_desc_phys);
  dma_pool_destroy(fusion->reply_frames_desc_pool);
  fail_reply_desc:
  dma_free_attrs(& (instance->pdev)->dev, (size_t )fusion->request_alloc_sz, (void *)fusion->req_frames_desc,
                 fusion->req_frames_desc_phys, (struct dma_attrs *)0);
  fail_req_desc: ;
  return (-12);
}
}
int wait_and_poll(struct megasas_instance *instance , struct megasas_cmd *cmd , int seconds )
{
  int i ;
  struct megasas_header *frame_hdr ;
  u32 msecs ;
  {
  frame_hdr = & (cmd->frame)->hdr;
  msecs = (u32 )(seconds * 1000);
  i = 0;
  goto ldv_38784;
  ldv_38783:
  __asm__ volatile ("lfence": : : "memory");
  msleep(20U);
  i = i + 20;
  ldv_38784: ;
  if ((u32 )i < msecs && (unsigned int )frame_hdr->cmd_status == 255U) {
    goto ldv_38783;
  } else {
  }
  if ((unsigned int )frame_hdr->cmd_status == 255U) {
    return (-62);
  } else {
  }
  return (0);
}
}
int megasas_ioc_init_fusion(struct megasas_instance *instance )
{
  struct megasas_init_frame *init_frame ;
  struct MPI2_IOC_INIT_REQUEST *IOCInitMessage ;
  dma_addr_t ioc_init_handle ;
  struct megasas_cmd *cmd ;
  u8 ret ;
  struct fusion_context *fusion ;
  union MEGASAS_REQUEST_DESCRIPTOR_UNION req_desc ;
  int i ;
  struct megasas_header *frame_hdr ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\vCould not allocate cmd for INIT Frame\n");
    ret = 1U;
    goto fail_get_cmd;
  } else {
  }
  tmp = dma_alloc_attrs(& (instance->pdev)->dev, 72UL, & ioc_init_handle, 208U, (struct dma_attrs *)0);
  IOCInitMessage = (struct MPI2_IOC_INIT_REQUEST *)tmp;
  if ((unsigned long )IOCInitMessage == (unsigned long )((struct MPI2_IOC_INIT_REQUEST *)0)) {
    printk("\vCould not allocate memory for IOCInitMessage\n");
    ret = 1U;
    goto fail_fw_init;
  } else {
  }
  memset((void *)IOCInitMessage, 0, 72UL);
  IOCInitMessage->Function = 2U;
  IOCInitMessage->WhoInit = 4U;
  IOCInitMessage->MsgVersion = 512U;
  IOCInitMessage->HeaderVersion = 4096U;
  IOCInitMessage->SystemRequestFrameSize = 64U;
  IOCInitMessage->ReplyDescriptorPostQueueDepth = (unsigned short )fusion->reply_q_depth;
  IOCInitMessage->ReplyDescriptorPostQueueAddress = fusion->reply_frames_desc_phys;
  IOCInitMessage->SystemRequestFrameBaseAddress = fusion->io_request_frames_phys;
  IOCInitMessage->HostMSIxVectors = (u8 )instance->msix_vectors;
  init_frame = (struct megasas_init_frame *)cmd->frame;
  memset((void *)init_frame, 0, 64UL);
  frame_hdr = & (cmd->frame)->hdr;
  frame_hdr->cmd_status = 255U;
  frame_hdr->flags = (u16 )((unsigned int )frame_hdr->flags | 1U);
  init_frame->cmd = 0U;
  init_frame->cmd_status = 255U;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    init_frame->driver_operations.mfi_capabilities.support_additional_msix = 1U;
  } else {
  }
  init_frame->driver_operations.mfi_capabilities.support_fp_remote_lun = 1U;
  init_frame->queue_info_new_phys_addr_hi = (unsigned int )(ioc_init_handle >> 32ULL);
  init_frame->queue_info_new_phys_addr_lo = (unsigned int )ioc_init_handle;
  init_frame->data_xfer_len = 72U;
  req_desc.ldv_37409.Words = 0ULL;
  req_desc.MFAIo.RequestFlags = 2U;
  req_desc.ldv_37409.Words = req_desc.ldv_37409.Words | cmd->frame_phys_addr;
  (*((instance->instancet)->disable_intr))(instance);
  i = 0;
  goto ldv_38802;
  ldv_38801:
  tmp___0 = readl((void const volatile *)(& (instance->reg_set)->doorbell));
  if ((int )tmp___0 & 1) {
    msleep(20U);
  } else {
    goto ldv_38800;
  }
  i = i + 20;
  ldv_38802: ;
  if (i <= 9999) {
    goto ldv_38801;
  } else {
  }
  ldv_38800:
  (*((instance->instancet)->fire_cmd))(instance, (dma_addr_t )req_desc.ldv_37409.u.low,
                                       req_desc.ldv_37409.u.high, instance->reg_set);
  wait_and_poll(instance, cmd, 60);
  frame_hdr = & (cmd->frame)->hdr;
  if ((unsigned int )frame_hdr->cmd_status != 0U) {
    ret = 1U;
    goto fail_fw_init;
  } else {
  }
  printk("\vmegasas:IOC Init cmd success\n");
  ret = 0U;
  fail_fw_init:
  megasas_return_cmd(instance, cmd);
  if ((unsigned long )IOCInitMessage != (unsigned long )((struct MPI2_IOC_INIT_REQUEST *)0)) {
    dma_free_attrs(& (instance->pdev)->dev, 72UL, (void *)IOCInitMessage, ioc_init_handle,
                   (struct dma_attrs *)0);
  } else {
  }
  fail_get_cmd: ;
  return ((int )ret);
}
}
static int megasas_get_ld_map_info(struct megasas_instance *instance )
{
  int ret ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  struct MR_FW_RAID_MAP_ALL *ci ;
  dma_addr_t ci_h ;
  u32 size_map_info ;
  struct fusion_context *fusion ;
  int tmp ;
  {
  ret = 0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: Failed to get cmd for map info.\n");
    return (-12);
  } else {
  }
  fusion = (struct fusion_context *)instance->ctrl_context;
  if ((unsigned long )fusion == (unsigned long )((struct fusion_context *)0)) {
    megasas_return_cmd(instance, cmd);
    return (-6);
  } else {
  }
  dcmd = & (cmd->frame)->dcmd;
  size_map_info = 172200U;
  ci = fusion->ld_map[instance->map_id & 1ULL];
  ci_h = fusion->ld_map_phys[instance->map_id & 1ULL];
  if ((unsigned long )ci == (unsigned long )((struct MR_FW_RAID_MAP_ALL *)0)) {
    printk("\017Failed to alloc mem for ld_map_info\n");
    megasas_return_cmd(instance, cmd);
    return (-12);
  } else {
  }
  memset((void *)ci, 0, 172200UL);
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 16U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = size_map_info;
  dcmd->opcode = 50389249U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = size_map_info;
  tmp = megasas_issue_polled(instance, cmd);
  if (tmp == 0) {
    ret = 0;
  } else {
    printk("\vmegasas: Get LD Map Info Failed\n");
    ret = -1;
  }
  megasas_return_cmd(instance, cmd);
  return (ret);
}
}
u8 megasas_get_map_info(struct megasas_instance *instance )
{
  struct fusion_context *fusion ;
  u8 tmp ;
  int tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  fusion->fast_path_io = 0U;
  tmp___0 = megasas_get_ld_map_info(instance);
  if (tmp___0 == 0) {
    tmp = MR_ValidateMapInfo(instance);
    if ((unsigned int )tmp != 0U) {
      fusion->fast_path_io = 1U;
      return (0U);
    } else {
    }
  } else {
  }
  return (1U);
}
}
int megasas_sync_map_info(struct megasas_instance *instance )
{
  int ret ;
  int i ;
  struct megasas_cmd *cmd ;
  struct megasas_dcmd_frame *dcmd ;
  u32 size_sync_info ;
  u32 num_lds ;
  struct fusion_context *fusion ;
  struct MR_LD_TARGET_SYNC *ci ;
  struct MR_FW_RAID_MAP_ALL *map ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_TARGET_SYNC *ld_sync ;
  dma_addr_t ci_h ;
  u32 size_map_info ;
  u16 tmp ;
  {
  ret = 0;
  ci = (struct MR_LD_TARGET_SYNC *)0;
  ci_h = 0ULL;
  cmd = megasas_get_cmd(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd *)0)) {
    printk("\017megasas: Failed to get cmd for syncinfo.\n");
    return (-12);
  } else {
  }
  fusion = (struct fusion_context *)instance->ctrl_context;
  if ((unsigned long )fusion == (unsigned long )((struct fusion_context *)0)) {
    megasas_return_cmd(instance, cmd);
    return (1);
  } else {
  }
  map = fusion->ld_map[instance->map_id & 1ULL];
  num_lds = map->raidMap.ldCount;
  dcmd = & (cmd->frame)->dcmd;
  size_sync_info = num_lds * 4U;
  memset((void *)(& dcmd->mbox.b), 0, 12UL);
  ci = (struct MR_LD_TARGET_SYNC *)fusion->ld_map[(instance->map_id - 1ULL) & 1ULL];
  memset((void *)ci, 0, 172200UL);
  ci_h = fusion->ld_map_phys[(instance->map_id - 1ULL) & 1ULL];
  ld_sync = ci;
  i = 0;
  goto ldv_38834;
  ldv_38833:
  raid = MR_LdRaidGet((u32 )i, map);
  tmp = MR_GetLDTgtId((u32 )i, map);
  ld_sync->targetId = (u8 )tmp;
  ld_sync->seqNum = raid->seqNum;
  i = i + 1;
  ld_sync = ld_sync + 1;
  ldv_38834: ;
  if ((u32 )i < num_lds) {
    goto ldv_38833;
  } else {
  }
  size_map_info = 172200U;
  dcmd->cmd = 5U;
  dcmd->cmd_status = 255U;
  dcmd->sge_count = 1U;
  dcmd->flags = 8U;
  dcmd->timeout = 0U;
  dcmd->pad_0 = 0U;
  dcmd->data_xfer_len = size_map_info;
  dcmd->mbox.b[0] = (u8 )num_lds;
  dcmd->mbox.b[1] = 1U;
  dcmd->opcode = 50389249U;
  dcmd->sgl.sge32[0].phys_addr = (unsigned int )ci_h;
  dcmd->sgl.sge32[0].length = size_map_info;
  instance->map_update_cmd = cmd;
  (*((instance->instancet)->issue_dcmd))(instance, cmd);
  return (ret);
}
}
static void megasas_display_intel_branding(struct megasas_instance *instance )
{
  {
  if ((unsigned int )(instance->pdev)->subsystem_vendor != 32902U) {
    return;
  } else {
  }
  switch ((int )(instance->pdev)->device) {
  case 93: ;
  switch ((int )(instance->pdev)->subsystem_device) {
  case 37728:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3DC080");
  goto ldv_38841;
  case 37730:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3DC040");
  goto ldv_38841;
  case 37760:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3SC008");
  goto ldv_38841;
  case 37761:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3MC044");
  goto ldv_38841;
  default: ;
  goto ldv_38841;
  }
  ldv_38841: ;
  goto ldv_38846;
  case 95: ;
  switch ((int )(instance->pdev)->subsystem_device) {
  case 37697:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3WC080");
  goto ldv_38849;
  case 37699:
  _dev_info((struct device const *)(& (instance->pdev)->dev), "scsi host %d: %s\n",
            (instance->host)->host_no, (char *)"Intel(R) RAID Controller RS3WC040");
  goto ldv_38849;
  default: ;
  goto ldv_38849;
  }
  ldv_38849: ;
  goto ldv_38846;
  default: ;
  goto ldv_38846;
  }
  ldv_38846: ;
  return;
}
}
u32 megasas_init_adapter_fusion(struct megasas_instance *instance )
{
  struct megasas_register_set *reg_set ;
  struct fusion_context *fusion ;
  u32 max_cmd ;
  int i ;
  int count ;
  u32 tmp ;
  u16 _min1 ;
  unsigned short _min2 ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  u8 tmp___4 ;
  {
  i = 0;
  fusion = (struct fusion_context *)instance->ctrl_context;
  reg_set = instance->reg_set;
  tmp = (*((instance->instancet)->read_fw_status_reg))(reg_set);
  instance->max_fw_cmds = (u16 )tmp;
  _min1 = instance->max_fw_cmds;
  _min2 = 1008U;
  instance->max_fw_cmds = (u16 )((int )_min1 < (int )_min2 ? (int )_min1 : (int )_min2);
  instance->max_fw_cmds = (unsigned int )instance->max_fw_cmds + 65535U;
  instance->max_mfi_cmds = 32U;
  max_cmd = (u32 )instance->max_fw_cmds;
  fusion->reply_q_depth = ((max_cmd + 16U) / 16U) * 16U;
  fusion->request_alloc_sz = max_cmd * 8U;
  fusion->reply_alloc_sz = fusion->reply_q_depth * 8U;
  fusion->io_frames_alloc_sz = (max_cmd + 2U) * 256U;
  fusion->max_sge_in_main_msg = 8U;
  fusion->max_sge_in_chain = 64U;
  instance->max_num_sge = (unsigned int )((int )fusion->max_sge_in_main_msg + (int )fusion->max_sge_in_chain) + 65534U;
  fusion->chain_offset_mfi_pthru = 8U;
  fusion->chain_offset_io_request = 15U;
  count = instance->msix_vectors != 0U ? (int )instance->msix_vectors : 1;
  i = 0;
  goto ldv_38865;
  ldv_38864:
  fusion->last_reply_idx[i] = 0U;
  i = i + 1;
  ldv_38865: ;
  if (i < count) {
    goto ldv_38864;
  } else {
  }
  tmp___0 = megasas_alloc_cmds(instance);
  if (tmp___0 != 0) {
    goto fail_alloc_mfi_cmds;
  } else {
  }
  tmp___1 = megasas_alloc_cmds_fusion(instance);
  if (tmp___1 != 0) {
    goto fail_alloc_cmds;
  } else {
  }
  tmp___2 = megasas_ioc_init_fusion(instance);
  if (tmp___2 != 0) {
    goto fail_ioc_init;
  } else {
  }
  megasas_display_intel_branding(instance);
  instance->flag_ieee = 1U;
  fusion->map_sz = 172200U;
  fusion->fast_path_io = 0U;
  i = 0;
  goto ldv_38872;
  ldv_38871:
  tmp___3 = dma_alloc_attrs(& (instance->pdev)->dev, (size_t )fusion->map_sz, (dma_addr_t *)(& fusion->ld_map_phys) + (unsigned long )i,
                            208U, (struct dma_attrs *)0);
  fusion->ld_map[i] = (struct MR_FW_RAID_MAP_ALL *)tmp___3;
  if ((unsigned long )fusion->ld_map[i] == (unsigned long )((struct MR_FW_RAID_MAP_ALL *)0)) {
    printk("\vmegasas: Could not allocate memory for map info\n");
    goto fail_map_info;
  } else {
  }
  i = i + 1;
  ldv_38872: ;
  if (i <= 1) {
    goto ldv_38871;
  } else {
  }
  tmp___4 = megasas_get_map_info(instance);
  if ((unsigned int )tmp___4 == 0U) {
    megasas_sync_map_info(instance);
  } else {
  }
  return (0U);
  fail_map_info: ;
  if (i == 1) {
    dma_free_attrs(& (instance->pdev)->dev, (size_t )fusion->map_sz, (void *)fusion->ld_map[0],
                   fusion->ld_map_phys[0], (struct dma_attrs *)0);
  } else {
  }
  fail_ioc_init:
  megasas_free_cmds_fusion(instance);
  fail_alloc_cmds:
  megasas_free_cmds(instance);
  fail_alloc_mfi_cmds: ;
  return (1U);
}
}
void megasas_fire_cmd_fusion(struct megasas_instance *instance , dma_addr_t req_desc_lo ,
                             u32 req_desc_hi , struct megasas_register_set *regs )
{
  unsigned long flags ;
  {
  ldv_spin_lock();
  writel((unsigned int )req_desc_lo, (void volatile *)(& regs->inbound_low_queue_port));
  writel(req_desc_hi, (void volatile *)(& regs->inbound_high_queue_port));
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  return;
}
}
void map_cmd_status(struct megasas_cmd_fusion *cmd , u8 status , u8 ext_status )
{
  size_t __len ;
  void *__ret ;
  {
  switch ((int )status) {
  case 0:
  (cmd->scmd)->result = 0;
  goto ldv_38887;
  case 46: ;
  case 24:
  (cmd->scmd)->result = (int )ext_status | 458752;
  goto ldv_38887;
  case 45:
  (cmd->scmd)->result = (int )ext_status;
  if ((unsigned int )ext_status == 2U) {
    memset((void *)(cmd->scmd)->sense_buffer, 0, 96UL);
    __len = 96UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(cmd->scmd)->sense_buffer, (void const *)cmd->sense,
                       __len);
    } else {
      __ret = memcpy((void *)(cmd->scmd)->sense_buffer, (void const *)cmd->sense,
                               __len);
    }
    (cmd->scmd)->result = (cmd->scmd)->result | 134217728;
  } else {
  }
  goto ldv_38887;
  case 51: ;
  case 12:
  (cmd->scmd)->result = 262144;
  goto ldv_38887;
  case 103:
  (cmd->scmd)->result = 786432;
  goto ldv_38887;
  default:
  printk("\017megasas: FW status %#x\n", (int )status);
  (cmd->scmd)->result = 458752;
  goto ldv_38887;
  }
  ldv_38887: ;
  return;
}
}
static int megasas_make_sgl_fusion(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                                   struct MPI25_IEEE_SGE_CHAIN64 *sgl_ptr , struct megasas_cmd_fusion *cmd )
{
  int i ;
  int sg_processed ;
  int sge_count ;
  struct scatterlist *os_sgl ;
  struct fusion_context *fusion ;
  struct MPI25_IEEE_SGE_CHAIN64 *sgl_ptr_end ;
  long tmp ;
  struct MPI25_IEEE_SGE_CHAIN64 *sg_chain___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    sgl_ptr_end = sgl_ptr;
    sgl_ptr_end = sgl_ptr_end + ((unsigned long )fusion->max_sge_in_main_msg + 0xffffffffffffffffUL);
    sgl_ptr_end->Flags = 0U;
  } else {
  }
  sge_count = scsi_dma_map(scp);
  tmp = ldv__builtin_expect(sge_count < 0, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers--X--defaultlinux-3.16-rc1.tar.xz--X--43_2a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/5295/dscv_tempdir/dscv/ri/43_2a/drivers/scsi/megaraid/megaraid_sas_fusion.o.c.prepared"),
                         "i" (1223), "i" (12UL));
    ldv_38910: ;
    goto ldv_38910;
  } else {
  }
  if ((int )instance->max_num_sge < sge_count || sge_count == 0) {
    return (sge_count);
  } else {
  }
  i = 0;
  os_sgl = scsi_sglist(scp);
  goto ldv_38913;
  ldv_38912:
  sgl_ptr->Length = os_sgl->dma_length;
  sgl_ptr->Address = os_sgl->dma_address;
  sgl_ptr->Flags = 0U;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    if (sge_count + -1 == i) {
      sgl_ptr->Flags = 64U;
    } else {
    }
  } else {
  }
  sgl_ptr = sgl_ptr + 1;
  sg_processed = i + 1;
  if ((int )fusion->max_sge_in_main_msg + -1 == sg_processed && (int )fusion->max_sge_in_main_msg < sge_count) {
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      if (((int )(cmd->io_request)->IoFlags & 16384) == 0) {
        (cmd->io_request)->ChainOffset = fusion->chain_offset_io_request;
      } else {
        (cmd->io_request)->ChainOffset = 0U;
      }
    } else {
      (cmd->io_request)->ChainOffset = fusion->chain_offset_io_request;
    }
    sg_chain___0 = sgl_ptr;
    sg_chain___0->NextChainOffset = 0U;
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      sg_chain___0->Flags = 128U;
    } else {
      sg_chain___0->Flags = 131U;
    }
    sg_chain___0->Length = (unsigned int )((unsigned long )(sge_count - sg_processed)) * 16U;
    sg_chain___0->Address = cmd->sg_frame_phys_addr;
    sgl_ptr = (struct MPI25_IEEE_SGE_CHAIN64 *)cmd->sg_frame;
  } else {
  }
  i = i + 1;
  os_sgl = sg_next(os_sgl);
  ldv_38913: ;
  if (i < sge_count) {
    goto ldv_38912;
  } else {
  }
  return (sge_count);
}
}
void megasas_set_pd_lba(struct MPI2_RAID_SCSI_IO_REQUEST *io_request , u8 cdb_len ,
                        struct IO_REQUEST_INFO *io_info , struct scsi_cmnd *scp ,
                        struct MR_FW_RAID_MAP_ALL *local_map_ptr , u32 ref_tag )
{
  struct MR_LD_RAID *raid ;
  u32 ld ;
  u64 start_blk ;
  u8 *cdb ;
  u32 num_blocks ;
  u8 opcode ;
  u8 flagvals ;
  u8 groupnum ;
  u8 control ;
  u8 tmp ;
  __u32 tmp___0 ;
  u8 val ;
  {
  start_blk = io_info->pdBlock;
  cdb = (u8 *)(& io_request->CDB.CDB32);
  num_blocks = io_info->numBlocks;
  opcode = 0U;
  flagvals = 0U;
  groupnum = 0U;
  control = 0U;
  tmp = MR_TargetIdToLdGet((u32 )io_info->ldTgtId, local_map_ptr);
  ld = (u32 )tmp;
  raid = MR_LdRaidGet(ld, local_map_ptr);
  if ((unsigned int )*((unsigned char *)raid + 0UL) == 128U) {
    memset((void *)cdb, 0, 32UL);
    *cdb = 127U;
    *(cdb + 7UL) = 24U;
    if ((unsigned int )scp->sc_data_direction == 2U) {
      *(cdb + 9UL) = 9U;
    } else {
      *(cdb + 9UL) = 11U;
    }
    *(cdb + 10UL) = 32U;
    *(cdb + 12UL) = (unsigned char )(start_blk >> 56);
    *(cdb + 13UL) = (unsigned char )(start_blk >> 48);
    *(cdb + 14UL) = (unsigned char )(start_blk >> 40);
    *(cdb + 15UL) = (unsigned char )(start_blk >> 32);
    *(cdb + 16UL) = (unsigned char )(start_blk >> 24);
    *(cdb + 17UL) = (unsigned char )(start_blk >> 16);
    *(cdb + 18UL) = (unsigned char )(start_blk >> 8);
    *(cdb + 19UL) = (unsigned char )start_blk;
    tmp___0 = __fswab32(ref_tag);
    io_request->CDB.EEDP32.PrimaryReferenceTag = tmp___0;
    io_request->CDB.EEDP32.PrimaryApplicationTagMask = 65535U;
    io_request->IoFlags = 32U;
    *(cdb + 28UL) = (unsigned char )(num_blocks >> 24);
    *(cdb + 29UL) = (unsigned char )(num_blocks >> 16);
    *(cdb + 30UL) = (unsigned char )(num_blocks >> 8);
    *(cdb + 31UL) = (unsigned char )num_blocks;
    if ((unsigned int )scp->sc_data_direction == 2U) {
      io_request->EEDPFlags = 34563U;
    } else {
      io_request->EEDPFlags = 32772U;
    }
    io_request->Control = io_request->Control | 268435456U;
    io_request->EEDPBlockSize = (scp->device)->sector_size;
  } else {
    if (((unsigned int )cdb_len == 12U || (unsigned int )cdb_len == 16U) && start_blk <= 4294967295ULL) {
      if ((unsigned int )cdb_len == 16U) {
        opcode = (unsigned int )*cdb == 136U ? 40U : 42U;
        flagvals = *(cdb + 1UL);
        groupnum = *(cdb + 14UL);
        control = *(cdb + 15UL);
      } else {
        opcode = (unsigned int )*cdb == 168U ? 40U : 42U;
        flagvals = *(cdb + 1UL);
        groupnum = *(cdb + 10UL);
        control = *(cdb + 11UL);
      }
      memset((void *)cdb, 0, 32UL);
      *cdb = opcode;
      *(cdb + 1UL) = flagvals;
      *(cdb + 6UL) = groupnum;
      *(cdb + 9UL) = control;
      *(cdb + 8UL) = (unsigned char )num_blocks;
      *(cdb + 7UL) = (unsigned char )(num_blocks >> 8);
      io_request->IoFlags = 10U;
      cdb_len = 10U;
    } else
    if ((unsigned int )cdb_len <= 15U && start_blk > 4294967295ULL) {
      switch ((int )cdb_len) {
      case 6:
      opcode = (unsigned int )*cdb == 8U ? 136U : 138U;
      control = *(cdb + 5UL);
      goto ldv_38933;
      case 10:
      opcode = (unsigned int )*cdb == 40U ? 136U : 138U;
      flagvals = *(cdb + 1UL);
      groupnum = *(cdb + 6UL);
      control = *(cdb + 9UL);
      goto ldv_38933;
      case 12:
      opcode = (unsigned int )*cdb == 168U ? 136U : 138U;
      flagvals = *(cdb + 1UL);
      groupnum = *(cdb + 10UL);
      control = *(cdb + 11UL);
      goto ldv_38933;
      }
      ldv_38933:
      memset((void *)cdb, 0, 32UL);
      *cdb = opcode;
      *(cdb + 1UL) = flagvals;
      *(cdb + 14UL) = groupnum;
      *(cdb + 15UL) = control;
      *(cdb + 13UL) = (unsigned char )num_blocks;
      *(cdb + 12UL) = (unsigned char )(num_blocks >> 8);
      *(cdb + 11UL) = (unsigned char )(num_blocks >> 16);
      *(cdb + 10UL) = (unsigned char )(num_blocks >> 24);
      io_request->IoFlags = 16U;
      cdb_len = 16U;
    } else {
    }
    switch ((int )cdb_len) {
    case 6:
    val = (unsigned int )*(cdb + 1UL) & 224U;
    *(cdb + 3UL) = (unsigned char )start_blk;
    *(cdb + 2UL) = (unsigned char )(start_blk >> 8);
    *(cdb + 1UL) = (u8 )(((int )((signed char )(start_blk >> 16)) & 31) | (int )((signed char )val));
    goto ldv_38938;
    case 10:
    *(cdb + 5UL) = (unsigned char )start_blk;
    *(cdb + 4UL) = (unsigned char )(start_blk >> 8);
    *(cdb + 3UL) = (unsigned char )(start_blk >> 16);
    *(cdb + 2UL) = (unsigned char )(start_blk >> 24);
    goto ldv_38938;
    case 12:
    *(cdb + 5UL) = (unsigned char )start_blk;
    *(cdb + 4UL) = (unsigned char )(start_blk >> 8);
    *(cdb + 3UL) = (unsigned char )(start_blk >> 16);
    *(cdb + 2UL) = (unsigned char )(start_blk >> 24);
    goto ldv_38938;
    case 16:
    *(cdb + 9UL) = (unsigned char )start_blk;
    *(cdb + 8UL) = (unsigned char )(start_blk >> 8);
    *(cdb + 7UL) = (unsigned char )(start_blk >> 16);
    *(cdb + 6UL) = (unsigned char )(start_blk >> 24);
    *(cdb + 5UL) = (unsigned char )(start_blk >> 32);
    *(cdb + 4UL) = (unsigned char )(start_blk >> 40);
    *(cdb + 3UL) = (unsigned char )(start_blk >> 48);
    *(cdb + 2UL) = (unsigned char )(start_blk >> 56);
    goto ldv_38938;
    }
    ldv_38938: ;
  }
  return;
}
}
void megasas_build_ldio_fusion(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                               struct megasas_cmd_fusion *cmd )
{
  u8 fp_possible ;
  u32 start_lba_lo ;
  u32 start_lba_hi ;
  u32 device_id ;
  u32 datalength ;
  struct MPI2_RAID_SCSI_IO_REQUEST *io_request ;
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc ;
  struct IO_REQUEST_INFO io_info ;
  struct fusion_context *fusion ;
  struct MR_FW_RAID_MAP_ALL *local_map_ptr ;
  u8 *raidLUN ;
  u8 tmp ;
  u8 tmp___0 ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  size_t __len ;
  void *__ret ;
  {
  datalength = 0U;
  device_id = ((scp->device)->channel & 1U) * 128U + (scp->device)->id;
  fusion = (struct fusion_context *)instance->ctrl_context;
  io_request = cmd->io_request;
  io_request->RaidContext.VirtualDiskTgtId = (unsigned short )device_id;
  io_request->RaidContext.status = 0U;
  io_request->RaidContext.exStatus = 0U;
  req_desc = cmd->request_desc;
  start_lba_lo = 0U;
  start_lba_hi = 0U;
  fp_possible = 0U;
  if ((unsigned int )scp->cmd_len == 6U) {
    datalength = (unsigned int )*(scp->cmnd + 4UL);
    start_lba_lo = (((unsigned int )*(scp->cmnd + 1UL) << 16) | ((unsigned int )*(scp->cmnd + 2UL) << 8)) | (unsigned int )*(scp->cmnd + 3UL);
    start_lba_lo = start_lba_lo & 2097151U;
  } else
  if ((unsigned int )scp->cmd_len == 10U) {
    datalength = (unsigned int )*(scp->cmnd + 8UL) | ((unsigned int )*(scp->cmnd + 7UL) << 8);
    start_lba_lo = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else
  if ((unsigned int )scp->cmd_len == 12U) {
    datalength = ((((unsigned int )*(scp->cmnd + 6UL) << 24) | ((unsigned int )*(scp->cmnd + 7UL) << 16)) | ((unsigned int )*(scp->cmnd + 8UL) << 8)) | (unsigned int )*(scp->cmnd + 9UL);
    start_lba_lo = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else
  if ((unsigned int )scp->cmd_len == 16U) {
    datalength = ((((unsigned int )*(scp->cmnd + 10UL) << 24) | ((unsigned int )*(scp->cmnd + 11UL) << 16)) | ((unsigned int )*(scp->cmnd + 12UL) << 8)) | (unsigned int )*(scp->cmnd + 13UL);
    start_lba_lo = ((((unsigned int )*(scp->cmnd + 6UL) << 24) | ((unsigned int )*(scp->cmnd + 7UL) << 16)) | ((unsigned int )*(scp->cmnd + 8UL) << 8)) | (unsigned int )*(scp->cmnd + 9UL);
    start_lba_hi = ((((unsigned int )*(scp->cmnd + 2UL) << 24) | ((unsigned int )*(scp->cmnd + 3UL) << 16)) | ((unsigned int )*(scp->cmnd + 4UL) << 8)) | (unsigned int )*(scp->cmnd + 5UL);
  } else {
  }
  memset((void *)(& io_info), 0, 48UL);
  io_info.ldStartBlock = ((unsigned long long )start_lba_hi << 32) | (unsigned long long )start_lba_lo;
  io_info.numBlocks = datalength;
  io_info.ldTgtId = (u16 )device_id;
  io_request->DataLength = scsi_bufflen(scp);
  if ((unsigned int )scp->sc_data_direction == 2U) {
    io_info.isRead = 1U;
  } else {
  }
  local_map_ptr = fusion->ld_map[instance->map_id & 1ULL];
  tmp___0 = MR_TargetIdToLdGet(device_id, local_map_ptr);
  if ((unsigned int )tmp___0 > 63U || (unsigned int )fusion->fast_path_io == 0U) {
    io_request->RaidContext.regLockFlags = 0U;
    fp_possible = 0U;
  } else {
    tmp = MR_BuildRaidContext(instance, & io_info, & io_request->RaidContext, local_map_ptr,
                              & raidLUN);
    if ((unsigned int )tmp != 0U) {
      fp_possible = io_info.fpOkForIo;
    } else {
    }
  }
  if (instance->msix_vectors != 0U) {
    __vpp_verify = (void const *)0;
    switch (4UL) {
    case 1UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
    goto ldv_38963;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_38963;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_38963;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
    goto ldv_38963;
    default:
    __bad_percpu_size();
    }
    ldv_38963:
    pscr_ret__ = pfo_ret__;
    goto ldv_38969;
    case 2UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_38973;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_38973;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_38973;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
    goto ldv_38973;
    default:
    __bad_percpu_size();
    }
    ldv_38973:
    pscr_ret__ = pfo_ret_____0;
    goto ldv_38969;
    case 4UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_38982;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_38982;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_38982;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
    goto ldv_38982;
    default:
    __bad_percpu_size();
    }
    ldv_38982:
    pscr_ret__ = pfo_ret_____1;
    goto ldv_38969;
    case 8UL: ;
    switch (4UL) {
    case 1UL:
    __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_38991;
    case 2UL:
    __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_38991;
    case 4UL:
    __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_38991;
    case 8UL:
    __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
    goto ldv_38991;
    default:
    __bad_percpu_size();
    }
    ldv_38991:
    pscr_ret__ = pfo_ret_____2;
    goto ldv_38969;
    default:
    __bad_size_call_parameter();
    goto ldv_38969;
    }
    ldv_38969:
    (cmd->request_desc)->SCSIIO.MSIxIndex = (u8 )((unsigned int )pscr_ret__ % instance->msix_vectors);
  } else {
    (cmd->request_desc)->SCSIIO.MSIxIndex = 0U;
  }
  if ((unsigned int )fp_possible != 0U) {
    megasas_set_pd_lba(io_request, (int )((u8 )scp->cmd_len), & io_info, scp, local_map_ptr,
                       start_lba_lo);
    io_request->Function = 0U;
    (cmd->request_desc)->SCSIIO.RequestFlags = 12U;
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      if ((unsigned int )io_request->RaidContext.regLockFlags == 0U) {
        (cmd->request_desc)->SCSIIO.RequestFlags = 4U;
      } else {
      }
      io_request->RaidContext.Type = 2U;
      io_request->RaidContext.nseg = 1U;
      io_request->IoFlags = (u16 )((unsigned int )io_request->IoFlags | 16384U);
      io_request->RaidContext.regLockFlags = (u8 )((unsigned int )io_request->RaidContext.regLockFlags | 136U);
    } else {
    }
    if ((unsigned int )fusion->load_balance_info[device_id].loadBalanceFlag != 0U && (unsigned int )io_info.isRead != 0U) {
      io_info.devHandle = get_updated_dev_handle((struct LD_LOAD_BALANCE_INFO *)(& fusion->load_balance_info) + (unsigned long )device_id,
                                                 & io_info);
      scp->SCp.Status = (int )scp->SCp.Status | 1;
    } else {
      scp->SCp.Status = (int )scp->SCp.Status & -2;
    }
    (cmd->request_desc)->SCSIIO.DevHandle = io_info.devHandle;
    io_request->DevHandle = io_info.devHandle;
    __len = 8UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& io_request->LUN), (void const *)raidLUN, __len);
    } else {
      __ret = memcpy((void *)(& io_request->LUN), (void const *)raidLUN,
                               __len);
    }
  } else {
    io_request->RaidContext.timeoutValue = (unsigned short )local_map_ptr->raidMap.fpPdIoTimeoutSec;
    (cmd->request_desc)->SCSIIO.RequestFlags = 14U;
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      if ((unsigned int )io_request->RaidContext.regLockFlags == 0U) {
        (cmd->request_desc)->SCSIIO.RequestFlags = 4U;
      } else {
      }
      io_request->RaidContext.Type = 2U;
      io_request->RaidContext.regLockFlags = (u8 )((unsigned int )io_request->RaidContext.regLockFlags | 8U);
      io_request->RaidContext.nseg = 1U;
    } else {
    }
    io_request->Function = 241U;
    io_request->DevHandle = (unsigned short )device_id;
  }
  return;
}
}
static void megasas_build_dcdb_fusion(struct megasas_instance *instance , struct scsi_cmnd *scmd ,
                                      struct megasas_cmd_fusion *cmd )
{
  u32 device_id ;
  struct MPI2_RAID_SCSI_IO_REQUEST *io_request ;
  u16 pd_index ;
  struct MR_FW_RAID_MAP_ALL *local_map_ptr ;
  struct fusion_context *fusion ;
  u8 span ;
  u8 physArm ;
  u16 devHandle ;
  u32 ld ;
  u32 arRef ;
  u32 pd ;
  struct MR_LD_RAID *raid ;
  struct RAID_CONTEXT *pRAID_Context ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  u8 tmp ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  pd_index = 0U;
  fusion = (struct fusion_context *)instance->ctrl_context;
  io_request = cmd->io_request;
  device_id = ((scmd->device)->channel & 1U) * 128U + (scmd->device)->id;
  pd_index = (unsigned int )((u16 )(scmd->device)->channel) * 128U + (unsigned int )((u16 )(scmd->device)->id);
  local_map_ptr = fusion->ld_map[instance->map_id & 1ULL];
  io_request->DataLength = scsi_bufflen(scmd);
  if ((scmd->device)->channel <= 1U && (unsigned int )instance->pd_list[(int )pd_index].driveState == 64U) {
    io_request->Function = 0U;
    if ((unsigned int )fusion->fast_path_io != 0U) {
      io_request->DevHandle = local_map_ptr->raidMap.devHndlInfo[device_id].curDevHdl;
    } else {
    }
    io_request->RaidContext.timeoutValue = (u16 )local_map_ptr->raidMap.fpPdIoTimeoutSec;
    io_request->RaidContext.regLockFlags = 0U;
    io_request->RaidContext.regLockRowLBA = 0ULL;
    io_request->RaidContext.regLockLength = 0U;
    io_request->RaidContext.RAIDFlags = 16U;
    if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
      io_request->IoFlags = (u16 )((unsigned int )io_request->IoFlags | 16384U);
    } else {
    }
    (cmd->request_desc)->SCSIIO.RequestFlags = 12U;
    (cmd->request_desc)->SCSIIO.DevHandle = local_map_ptr->raidMap.devHndlInfo[device_id].curDevHdl;
    if (instance->msix_vectors != 0U) {
      __vpp_verify = (void const *)0;
      switch (4UL) {
      case 1UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
      goto ldv_39025;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_39025;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_39025;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
      goto ldv_39025;
      default:
      __bad_percpu_size();
      }
      ldv_39025:
      pscr_ret__ = pfo_ret__;
      goto ldv_39031;
      case 2UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_39035;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_39035;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_39035;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
      goto ldv_39035;
      default:
      __bad_percpu_size();
      }
      ldv_39035:
      pscr_ret__ = pfo_ret_____0;
      goto ldv_39031;
      case 4UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_39044;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_39044;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_39044;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
      goto ldv_39044;
      default:
      __bad_percpu_size();
      }
      ldv_39044:
      pscr_ret__ = pfo_ret_____1;
      goto ldv_39031;
      case 8UL: ;
      switch (4UL) {
      case 1UL:
      __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_39053;
      case 2UL:
      __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_39053;
      case 4UL:
      __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_39053;
      case 8UL:
      __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
      goto ldv_39053;
      default:
      __bad_percpu_size();
      }
      ldv_39053:
      pscr_ret__ = pfo_ret_____2;
      goto ldv_39031;
      default:
      __bad_size_call_parameter();
      goto ldv_39031;
      }
      ldv_39031:
      (cmd->request_desc)->SCSIIO.MSIxIndex = (u8 )((unsigned int )pscr_ret__ % instance->msix_vectors);
    } else {
      (cmd->request_desc)->SCSIIO.MSIxIndex = 0U;
    }
    if ((int )((signed char )(scmd->device)->type) == 1) {
      if ((scmd->request)->timeout > 16383999U) {
        io_request->RaidContext.timeoutValue = 65535U;
      } else {
        io_request->RaidContext.timeoutValue = (u16 )((scmd->request)->timeout / 250U);
      }
    } else {
    }
  } else {
    if ((scmd->device)->channel <= 1U) {
      goto NonFastPath;
    } else {
    }
    tmp = MR_TargetIdToLdGet(device_id, local_map_ptr);
    ld = (u32 )tmp;
    if (ld > 63U || (unsigned int )fusion->fast_path_io == 0U) {
      goto NonFastPath;
    } else {
    }
    raid = MR_LdRaidGet(ld, local_map_ptr);
    if ((unsigned int )*((unsigned char *)raid + 3UL) == 0U) {
      goto NonFastPath;
    } else {
    }
    pRAID_Context = & io_request->RaidContext;
    pRAID_Context->regLockFlags = 1U;
    pRAID_Context->timeoutValue = (u16 )raid->fpIoTimeoutForLd;
    pRAID_Context->VirtualDiskTgtId = (unsigned short )device_id;
    pRAID_Context->regLockRowLBA = 0ULL;
    pRAID_Context->regLockLength = 0U;
    pRAID_Context->configSeqNum = raid->seqNum;
    physArm = 0U;
    span = physArm;
    tmp___0 = MR_LdSpanArrayGet(ld, (u32 )span, local_map_ptr);
    arRef = (u32 )tmp___0;
    tmp___1 = MR_ArPdGet(arRef, (u32 )physArm, local_map_ptr);
    pd = (u32 )tmp___1;
    devHandle = MR_PdDevHandleGet(pd, local_map_ptr);
    (cmd->request_desc)->SCSIIO.RequestFlags = 12U;
    (cmd->request_desc)->SCSIIO.DevHandle = devHandle;
    __len = 8UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& io_request->LUN), (void const *)(& raid->LUN),
                       __len);
    } else {
      __ret = memcpy((void *)(& io_request->LUN), (void const *)(& raid->LUN),
                               __len);
    }
    io_request->Function = 0U;
    io_request->DevHandle = devHandle;
    return;
    NonFastPath:
    io_request->Function = 241U;
    io_request->DevHandle = (unsigned short )device_id;
    (cmd->request_desc)->SCSIIO.RequestFlags = 0U;
  }
  io_request->RaidContext.VirtualDiskTgtId = (unsigned short )device_id;
  io_request->LUN[1] = (u8 )(scmd->device)->lun;
  return;
}
}
int megasas_build_io_fusion(struct megasas_instance *instance , struct scsi_cmnd *scp ,
                            struct megasas_cmd_fusion *cmd )
{
  u32 device_id ;
  u32 sge_count ;
  struct MPI2_RAID_SCSI_IO_REQUEST *io_request ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  int tmp___0 ;
  {
  io_request = cmd->io_request;
  device_id = ((scp->device)->channel & 1U) * 128U + (scp->device)->id;
  io_request->LUN[1] = 0U;
  io_request->CDB.EEDP32.PrimaryReferenceTag = 0U;
  io_request->CDB.EEDP32.PrimaryApplicationTagMask = 0U;
  io_request->EEDPFlags = 0U;
  io_request->Control = 0U;
  io_request->EEDPBlockSize = 0U;
  io_request->ChainOffset = 0U;
  io_request->RaidContext.RAIDFlags = 0U;
  io_request->RaidContext.Type = 0U;
  io_request->RaidContext.nseg = 0U;
  __len = (size_t )scp->cmd_len;
  __ret = memcpy((void *)(& io_request->CDB.CDB32), (void const *)scp->cmnd,
                           __len);
  io_request->IoFlags = scp->cmd_len;
  tmp = megasas_is_ldio(scp);
  if (tmp != 0) {
    megasas_build_ldio_fusion(instance, scp, cmd);
  } else {
    megasas_build_dcdb_fusion(instance, scp, cmd);
  }
  tmp___0 = megasas_make_sgl_fusion(instance, scp, (struct MPI25_IEEE_SGE_CHAIN64 *)(& io_request->SGL),
                                    cmd);
  sge_count = (u32 )tmp___0;
  if ((u32 )instance->max_num_sge < sge_count) {
    printk("\vmegasas: Error. sge_count (0x%x) exceeds max (0x%x) allowed\n", sge_count,
           (int )instance->max_num_sge);
    return (1);
  } else {
  }
  io_request->RaidContext.numSGE = (u8 )sge_count;
  io_request->SGLFlags = 2U;
  if ((unsigned int )scp->sc_data_direction == 1U) {
    io_request->Control = io_request->Control | 16777216U;
  } else
  if ((unsigned int )scp->sc_data_direction == 2U) {
    io_request->Control = io_request->Control | 33554432U;
  } else {
  }
  io_request->SGLOffset0 = 32U;
  io_request->SenseBufferLowAddress = (unsigned int )cmd->sense_phys_addr;
  io_request->SenseBufferLength = 96U;
  cmd->scmd = scp;
  scp->SCp.ptr = (char *)cmd;
  return (0);
}
}
union MEGASAS_REQUEST_DESCRIPTOR_UNION *megasas_get_request_descriptor(struct megasas_instance *instance ,
                                                                       u16 index )
{
  u8 *p ;
  struct fusion_context *fusion ;
  {
  if ((int )instance->max_fw_cmds <= (int )index) {
    printk("\vmegasas: Invalid SMID (0x%x)request for descriptor for scsi%d\n", (int )index,
           (instance->host)->host_no);
    return ((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0);
  } else {
  }
  fusion = (struct fusion_context *)instance->ctrl_context;
  p = fusion->req_frames_desc + (unsigned long )index * 8UL;
  return ((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)p);
}
}
static u32 megasas_build_and_issue_cmd_fusion(struct megasas_instance *instance ,
                                              struct scsi_cmnd *scmd )
{
  struct megasas_cmd_fusion *cmd ;
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc ;
  u32 index ;
  struct fusion_context *fusion ;
  int tmp ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  cmd = megasas_get_cmd_fusion(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd_fusion *)0)) {
    return (4181U);
  } else {
  }
  index = cmd->index;
  req_desc = megasas_get_request_descriptor(instance, (int )((unsigned int )((u16 )index) - 1U));
  if ((unsigned long )req_desc == (unsigned long )((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0)) {
    return (1U);
  } else {
  }
  req_desc->ldv_37409.Words = 0ULL;
  cmd->request_desc = req_desc;
  tmp = megasas_build_io_fusion(instance, scmd, cmd);
  if (tmp != 0) {
    megasas_return_cmd_fusion(instance, cmd);
    printk("\vmegasas: Error building command.\n");
    cmd->request_desc = (union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0;
    return (1U);
  } else {
  }
  req_desc = cmd->request_desc;
  req_desc->SCSIIO.SMID = (unsigned short )index;
  if ((unsigned int )(cmd->io_request)->ChainOffset != 0U && (unsigned int )(cmd->io_request)->ChainOffset != 15U) {
    printk("\vmegasas: The chain offset value is not correct : %x\n", (int )(cmd->io_request)->ChainOffset);
  } else {
  }
  atomic_inc(& instance->fw_outstanding);
  (*((instance->instancet)->fire_cmd))(instance, (dma_addr_t )req_desc->ldv_37409.u.low,
                                       req_desc->ldv_37409.u.high, instance->reg_set);
  return (0U);
}
}
int complete_cmd_fusion(struct megasas_instance *instance , u32 MSIxIndex )
{
  union MPI2_REPLY_DESCRIPTORS_UNION *desc ;
  struct MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR *reply_desc ;
  struct MPI2_RAID_SCSI_IO_REQUEST *scsi_io_req ;
  struct fusion_context *fusion ;
  struct megasas_cmd *cmd_mfi ;
  struct megasas_cmd_fusion *cmd_fusion ;
  u16 smid ;
  u16 num_completed ;
  u8 reply_descript_type ;
  u8 arm ;
  u32 status ;
  u32 extStatus ;
  u32 device_id ;
  union desc_value d_val ;
  struct LD_LOAD_BALANCE_INFO *lbinfo ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  if ((unsigned int )instance->adprecovery == 4U) {
    return (1);
  } else {
  }
  desc = fusion->reply_frames_desc;
  desc = desc + ((unsigned long )((fusion->reply_alloc_sz * MSIxIndex) / 8U) + (unsigned long )fusion->last_reply_idx[MSIxIndex]);
  reply_desc = (struct MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR *)desc;
  d_val.word = desc->Words;
  reply_descript_type = (unsigned int )reply_desc->ReplyFlags & 15U;
  if ((unsigned int )reply_descript_type == 15U) {
    return (0);
  } else {
  }
  num_completed = 0U;
  goto ldv_39115;
  ldv_39114:
  smid = reply_desc->SMID;
  cmd_fusion = *(fusion->cmd_list + ((unsigned long )smid + 0xffffffffffffffffUL));
  scsi_io_req = cmd_fusion->io_request;
  if ((unsigned long )cmd_fusion->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
    (cmd_fusion->scmd)->SCp.ptr = (char *)0;
  } else {
  }
  status = (u32 )scsi_io_req->RaidContext.status;
  extStatus = (u32 )scsi_io_req->RaidContext.exStatus;
  switch ((int )scsi_io_req->Function) {
  case 0:
  device_id = (((cmd_fusion->scmd)->device)->channel & 1U) * 128U + ((cmd_fusion->scmd)->device)->id;
  lbinfo = (struct LD_LOAD_BALANCE_INFO *)(& fusion->load_balance_info) + (unsigned long )device_id;
  if ((int )(cmd_fusion->scmd)->SCp.Status & 1) {
    arm = (int )lbinfo->raid1DevHandle[0] != (int )(cmd_fusion->io_request)->DevHandle;
    atomic_dec((atomic_t *)(& lbinfo->scsi_pending_cmds) + (unsigned long )arm);
    (cmd_fusion->scmd)->SCp.Status = (int )(cmd_fusion->scmd)->SCp.Status & -2;
  } else {
  }
  if ((unsigned int )reply_descript_type == 0U) {
    if (megasas_dbg_lvl == 5U) {
      printk("\v\nmegasas: FAST Path IO Success\n");
    } else {
    }
  } else {
  }
  case 241:
  map_cmd_status(cmd_fusion, (int )((u8 )status), (int )((u8 )extStatus));
  scsi_dma_unmap(cmd_fusion->scmd);
  (*((cmd_fusion->scmd)->scsi_done))(cmd_fusion->scmd);
  scsi_io_req->RaidContext.status = 0U;
  scsi_io_req->RaidContext.exStatus = 0U;
  megasas_return_cmd_fusion(instance, cmd_fusion);
  atomic_dec(& instance->fw_outstanding);
  goto ldv_39111;
  case 240:
  cmd_mfi = *(instance->cmd_list + (unsigned long )cmd_fusion->sync_cmd_idx);
  megasas_complete_cmd(instance, cmd_mfi, 0);
  cmd_fusion->flags = 0U;
  megasas_return_cmd_fusion(instance, cmd_fusion);
  goto ldv_39111;
  }
  ldv_39111:
  fusion->last_reply_idx[MSIxIndex] = (u16 )((int )fusion->last_reply_idx[MSIxIndex] + 1);
  if ((u32 )fusion->last_reply_idx[MSIxIndex] >= fusion->reply_q_depth) {
    fusion->last_reply_idx[MSIxIndex] = 0U;
  } else {
  }
  desc->Words = 0xffffffffffffffffULL;
  num_completed = (u16 )((int )num_completed + 1);
  if ((unsigned int )fusion->last_reply_idx[MSIxIndex] == 0U) {
    desc = fusion->reply_frames_desc + (unsigned long )((fusion->reply_alloc_sz * MSIxIndex) / 8U);
  } else {
    desc = desc + 1;
  }
  reply_desc = (struct MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR *)desc;
  d_val.word = desc->Words;
  reply_descript_type = (unsigned int )reply_desc->ReplyFlags & 15U;
  if ((unsigned int )reply_descript_type == 15U) {
    goto ldv_39113;
  } else {
  }
  ldv_39115: ;
  if (d_val.u.low != 4294967295U && d_val.u.high != 4294967295U) {
    goto ldv_39114;
  } else {
  }
  ldv_39113: ;
  if ((unsigned int )num_completed == 0U) {
    return (0);
  } else {
  }
  __asm__ volatile ("sfence": : : "memory");
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    writel(((MSIxIndex & 7U) << 24) | (u32 )fusion->last_reply_idx[MSIxIndex], (void volatile *)instance->reply_post_host_index_addr[MSIxIndex / 8U]);
  } else {
    writel((MSIxIndex << 24) | (u32 )fusion->last_reply_idx[MSIxIndex], (void volatile *)instance->reply_post_host_index_addr[0]);
  }
  megasas_check_and_restore_queue_depth(instance);
  return (1);
}
}
void megasas_complete_cmd_dpc_fusion(unsigned long instance_addr )
{
  struct megasas_instance *instance ;
  unsigned long flags ;
  u32 count ;
  u32 MSIxIndex ;
  {
  instance = (struct megasas_instance *)instance_addr;
  count = instance->msix_vectors != 0U ? instance->msix_vectors : 1U;
  ldv_spin_lock();
  if ((unsigned int )instance->adprecovery == 4U) {
    spin_unlock_irqrestore(& instance->hba_lock, flags);
    return;
  } else {
  }
  spin_unlock_irqrestore(& instance->hba_lock, flags);
  MSIxIndex = 0U;
  goto ldv_39124;
  ldv_39123:
  complete_cmd_fusion(instance, MSIxIndex);
  MSIxIndex = MSIxIndex + 1U;
  ldv_39124: ;
  if (MSIxIndex < count) {
    goto ldv_39123;
  } else {
  }
  return;
}
}
irqreturn_t megasas_isr_fusion(int irq , void *devp )
{
  struct megasas_irq_context *irq_context ;
  struct megasas_instance *instance ;
  u32 mfiStatus ;
  u32 fw_state ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  {
  irq_context = (struct megasas_irq_context *)devp;
  instance = irq_context->instance;
  if ((unsigned int )instance->mask_interrupts != 0U) {
    return (0);
  } else {
  }
  if (instance->msix_vectors == 0U) {
    tmp = (*((instance->instancet)->clear_intr))(instance->reg_set);
    mfiStatus = (u32 )tmp;
    if (mfiStatus == 0U) {
      return (0);
    } else {
    }
  } else {
  }
  tmp___0 = constant_test_bit(0L, (unsigned long const volatile *)(& instance->reset_flags));
  if (tmp___0 != 0) {
    (*((instance->instancet)->clear_intr))(instance->reg_set);
    return (1);
  } else {
  }
  tmp___2 = complete_cmd_fusion(instance, irq_context->MSIxIndex);
  if (tmp___2 == 0) {
    (*((instance->instancet)->clear_intr))(instance->reg_set);
    tmp___1 = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
    fw_state = tmp___1 & 4026531840U;
    if (fw_state == 4026531840U) {
      printk("\fmegaraid_sas: Iop2SysDoorbellIntfor scsi%d\n", (instance->host)->host_no);
      schedule_work(& instance->work_init);
    } else {
    }
  } else {
  }
  return (1);
}
}
u8 build_mpt_mfi_pass_thru(struct megasas_instance *instance , struct megasas_cmd *mfi_cmd )
{
  struct MPI25_IEEE_SGE_CHAIN64 *mpi25_ieee_chain ;
  struct MPI2_RAID_SCSI_IO_REQUEST *io_req ;
  struct megasas_cmd_fusion *cmd ;
  struct fusion_context *fusion ;
  struct megasas_header *frame_hdr ;
  struct MPI25_IEEE_SGE_CHAIN64 *sgl_ptr_end ;
  {
  frame_hdr = & (mfi_cmd->frame)->hdr;
  cmd = megasas_get_cmd_fusion(instance);
  if ((unsigned long )cmd == (unsigned long )((struct megasas_cmd_fusion *)0)) {
    return (1U);
  } else {
  }
  mfi_cmd->ldv_38649.context.smid = (u16 )cmd->index;
  cmd->sync_cmd_idx = mfi_cmd->index;
  if ((int )frame_hdr->flags & 1) {
    cmd->flags = 1U;
  } else {
  }
  fusion = (struct fusion_context *)instance->ctrl_context;
  io_req = cmd->io_request;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    sgl_ptr_end = (struct MPI25_IEEE_SGE_CHAIN64 *)(& io_req->SGL);
    sgl_ptr_end = sgl_ptr_end + ((unsigned long )fusion->max_sge_in_main_msg + 0xffffffffffffffffUL);
    sgl_ptr_end->Flags = 0U;
  } else {
  }
  mpi25_ieee_chain = (struct MPI25_IEEE_SGE_CHAIN64 *)(& io_req->SGL.IeeeChain);
  io_req->Function = 240U;
  io_req->SGLOffset0 = 32U;
  io_req->ChainOffset = fusion->chain_offset_mfi_pthru;
  mpi25_ieee_chain->Address = mfi_cmd->frame_phys_addr;
  mpi25_ieee_chain->Flags = 131U;
  mpi25_ieee_chain->Length = 1024U;
  return (0U);
}
}
union MEGASAS_REQUEST_DESCRIPTOR_UNION *build_mpt_cmd(struct megasas_instance *instance ,
                                                      struct megasas_cmd *cmd )
{
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc ;
  u16 index ;
  u8 tmp ;
  {
  tmp = build_mpt_mfi_pass_thru(instance, cmd);
  if ((unsigned int )tmp != 0U) {
    printk("\vCouldn\'t build MFI pass thru cmd\n");
    return ((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0);
  } else {
  }
  index = cmd->ldv_38649.context.smid;
  req_desc = megasas_get_request_descriptor(instance, (int )((unsigned int )index + 65535U));
  if ((unsigned long )req_desc == (unsigned long )((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0)) {
    return ((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0);
  } else {
  }
  req_desc->ldv_37409.Words = 0ULL;
  req_desc->SCSIIO.RequestFlags = 0U;
  req_desc->SCSIIO.SMID = index;
  return (req_desc);
}
}
void megasas_issue_dcmd_fusion(struct megasas_instance *instance , struct megasas_cmd *cmd )
{
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc ;
  {
  req_desc = build_mpt_cmd(instance, cmd);
  if ((unsigned long )req_desc == (unsigned long )((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0)) {
    printk("\vCouldn\'t issue MFI pass thru cmd\n");
    return;
  } else {
  }
  (*((instance->instancet)->fire_cmd))(instance, (dma_addr_t )req_desc->ldv_37409.u.low,
                                       req_desc->ldv_37409.u.high, instance->reg_set);
  return;
}
}
void megasas_release_fusion(struct megasas_instance *instance )
{
  {
  megasas_free_cmds(instance);
  megasas_free_cmds_fusion(instance);
  iounmap((void volatile *)instance->reg_set);
  pci_release_selected_regions(instance->pdev, (int )instance->bar);
  return;
}
}
static u32 megasas_read_fw_status_reg_fusion(struct megasas_register_set *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)(& regs->outbound_scratch_pad));
  return (tmp);
}
}
static int megasas_adp_reset_fusion(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  return (0);
}
}
static int megasas_check_reset_fusion(struct megasas_instance *instance , struct megasas_register_set *regs )
{
  {
  return (0);
}
}
int megasas_wait_for_outstanding_fusion(struct megasas_instance *instance , int iotimeout ,
                                        int *convert )
{
  int i ;
  int outstanding ;
  int retval ;
  int hb_seconds_missed ;
  u32 fw_state ;
  u32 tmp ;
  int tmp___0 ;
  {
  retval = 0;
  hb_seconds_missed = 0;
  i = 0;
  goto ldv_39181;
  ldv_39180:
  tmp = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
  fw_state = tmp & 4026531840U;
  if (fw_state == 4026531840U) {
    printk("\fmegasas: Found FW in FAULT state, will reset adapter scsi%d.\n", (instance->host)->host_no);
    retval = 1;
    goto out;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U && iotimeout == 0) {
    retval = 1;
    goto out;
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U && iotimeout != 0) {
    if ((instance->hb_host_mem)->HB.fwCounter != (instance->hb_host_mem)->HB.driverCounter) {
      (instance->hb_host_mem)->HB.driverCounter = (instance->hb_host_mem)->HB.fwCounter;
      hb_seconds_missed = 0;
    } else {
      hb_seconds_missed = hb_seconds_missed + 1;
      if (hb_seconds_missed == 5) {
        printk("\fmegasas: SR-IOV: Heartbeat never completed  while polling during I/O  timeout handling for scsi%d.\n",
               (instance->host)->host_no);
        *convert = 1;
        retval = 1;
        goto out;
      } else {
      }
    }
  } else {
  }
  outstanding = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  if (outstanding == 0) {
    goto out;
  } else {
  }
  if (i % 5 == 0) {
    printk("\rmegasas: [%2d]waiting for %d commands to complete for scsi%d\n", i,
           outstanding, (instance->host)->host_no);
    megasas_complete_cmd_dpc_fusion((unsigned long )instance);
  } else {
  }
  msleep(1000U);
  i = i + 1;
  ldv_39181: ;
  if (i < resetwaittime) {
    goto ldv_39180;
  } else {
  }
  tmp___0 = atomic_read((atomic_t const *)(& instance->fw_outstanding));
  if (tmp___0 != 0) {
    printk("megaraid_sas: pending commands remain after waiting, will reset adapter scsi%d.\n",
           (instance->host)->host_no);
    retval = 1;
  } else {
  }
  out: ;
  return (retval);
}
}
void megasas_reset_reply_desc(struct megasas_instance *instance )
{
  int i ;
  int count ;
  struct fusion_context *fusion ;
  union MPI2_REPLY_DESCRIPTORS_UNION *reply_desc ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  count = instance->msix_vectors != 0U ? (int )instance->msix_vectors : 1;
  i = 0;
  goto ldv_39191;
  ldv_39190:
  fusion->last_reply_idx[i] = 0U;
  i = i + 1;
  ldv_39191: ;
  if (i < count) {
    goto ldv_39190;
  } else {
  }
  reply_desc = fusion->reply_frames_desc;
  i = 0;
  goto ldv_39194;
  ldv_39193:
  reply_desc->Words = 0xffffffffffffffffULL;
  i = i + 1;
  reply_desc = reply_desc + 1;
  ldv_39194: ;
  if ((u32 )i < fusion->reply_q_depth * (u32 )count) {
    goto ldv_39193;
  } else {
  }
  return;
}
}
int megasas_check_mpio_paths(struct megasas_instance *instance , struct scsi_cmnd *scmd )
{
  int i ;
  int j ;
  int retval ;
  {
  retval = 524288;
  if ((int )((signed char )instance->mpio) != 0 && (unsigned int )instance->requestorId != 0U) {
    i = 0;
    goto ldv_39208;
    ldv_39207:
    j = 0;
    goto ldv_39205;
    ldv_39204: ;
    if (((((unsigned long )megasas_mgmt_info.instance[i] != (unsigned long )((struct megasas_instance *)0) && (unsigned long )megasas_mgmt_info.instance[i] != (unsigned long )instance) && (int )((signed char )(megasas_mgmt_info.instance[i])->mpio) != 0) && (unsigned int )(megasas_mgmt_info.instance[i])->requestorId != 0U) && (unsigned int )(megasas_mgmt_info.instance[i])->ld_ids[j] == (scmd->device)->id) {
      retval = 65536;
      goto out;
    } else {
    }
    j = j + 1;
    ldv_39205: ;
    if (j <= 63) {
      goto ldv_39204;
    } else {
    }
    i = i + 1;
    ldv_39208: ;
    if (i <= 1023) {
      goto ldv_39207;
    } else {
    }
  } else {
  }
  out: ;
  return (retval);
}
}
int megasas_reset_fusion(struct Scsi_Host *shost , int iotimeout )
{
  int retval ;
  int i ;
  int j ;
  int retry ;
  int convert ;
  struct megasas_instance *instance ;
  struct megasas_cmd_fusion *cmd_fusion ;
  struct fusion_context *fusion ;
  struct megasas_cmd *cmd_mfi ;
  union MEGASAS_REQUEST_DESCRIPTOR_UNION *req_desc ;
  u32 host_diag ;
  u32 abs_state ;
  u32 status_reg ;
  u32 reset_adapter ;
  int tmp ;
  int tmp___0 ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  u8 tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  retval = 8194;
  retry = 0;
  convert = 0;
  instance = (struct megasas_instance *)(& shost->hostdata);
  fusion = (struct fusion_context *)instance->ctrl_context;
  mutex_lock_nested(& instance->reset_mutex, 0U);
  if ((unsigned int )instance->adprecovery == 4U) {
    printk("\fmegaraid_sas: Hardware critical error, returning FAILED for scsi%d.\n",
           (instance->host)->host_no);
    return (8195);
  } else {
  }
  if ((unsigned int )instance->requestorId != 0U && (int )((signed char )instance->skip_heartbeat_timer_del) == 0) {
    ldv_del_timer_sync_67(& instance->sriov_heartbeat_timer);
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& instance->reset_flags));
  instance->adprecovery = 5U;
  (*((instance->instancet)->disable_intr))(instance);
  msleep(1000U);
  tmp___8 = megasas_wait_for_outstanding_fusion(instance, iotimeout, & convert);
  if (tmp___8 != 0) {
    instance->adprecovery = 1U;
    printk("\fmegaraid_sas: resetting fusion adapter scsi%d.\n", (instance->host)->host_no);
    if (convert != 0) {
      iotimeout = 0;
    } else {
    }
    i = 0;
    goto ldv_39229;
    ldv_39228:
    cmd_fusion = *(fusion->cmd_list + (unsigned long )i);
    if ((unsigned long )cmd_fusion->scmd != (unsigned long )((struct scsi_cmnd *)0)) {
      scsi_dma_unmap(cmd_fusion->scmd);
      (cmd_fusion->scmd)->result = megasas_check_mpio_paths(instance, cmd_fusion->scmd);
      (*((cmd_fusion->scmd)->scsi_done))(cmd_fusion->scmd);
      megasas_return_cmd_fusion(instance, cmd_fusion);
      atomic_dec(& instance->fw_outstanding);
    } else {
    }
    i = i + 1;
    ldv_39229: ;
    if ((int )instance->max_fw_cmds > i) {
      goto ldv_39228;
    } else {
    }
    status_reg = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
    abs_state = status_reg & 4026531840U;
    reset_adapter = status_reg & 2U;
    if ((unsigned int )instance->disableOnlineCtrlReset != 0U || (abs_state == 4026531840U && reset_adapter == 0U)) {
      printk("\fmegaraid_sas: Reset not supported, killing adapter scsi%d.\n", (instance->host)->host_no);
      megaraid_sas_kill_hba(instance);
      instance->skip_heartbeat_timer_del = 1;
      instance->adprecovery = 4U;
      retval = 8195;
      goto out;
    } else {
    }
    if ((unsigned int )instance->requestorId != 0U && iotimeout == 0) {
      msleep(30000U);
      if (abs_state == 3221225472U && (instance->hb_host_mem)->HB.fwCounter != (instance->hb_host_mem)->HB.driverCounter) {
        (instance->hb_host_mem)->HB.driverCounter = (instance->hb_host_mem)->HB.fwCounter;
        printk("\fmegasas: SR-IOV:Late FW heartbeat update for scsi%d.\n", (instance->host)->host_no);
      } else {
        i = 0;
        goto ldv_39234;
        ldv_39233:
        status_reg = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
        abs_state = status_reg & 4026531840U;
        if (abs_state == 2952790016U) {
          printk("\fmegasas: SR-IOV: FW was foundto be in ready state for scsi%d.\n",
                 (instance->host)->host_no);
          goto ldv_39232;
        } else {
        }
        msleep(20U);
        i = i + 20;
        ldv_39234: ;
        if (i <= 179999) {
          goto ldv_39233;
        } else {
        }
        ldv_39232: ;
        if (abs_state != 2952790016U) {
          printk("\fmegasas: SR-IOV: FW not in ready state after %d seconds for scsi%d, status_reg = 0x%x.\n",
                 180, (instance->host)->host_no, status_reg);
          megaraid_sas_kill_hba(instance);
          instance->skip_heartbeat_timer_del = 1;
          instance->adprecovery = 4U;
          retval = 8195;
          goto out;
        } else {
        }
      }
    } else {
    }
    i = 0;
    goto ldv_39249;
    ldv_39248:
    writel(0U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(15U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(4U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(11U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(2U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(7U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    writel(13U, (void volatile *)(& (instance->reg_set)->fusion_seq_offset));
    host_diag = readl((void const volatile *)(& (instance->reg_set)->fusion_host_diag));
    retry = 0;
    goto ldv_39237;
    ldv_39236:
    msleep(100U);
    host_diag = readl((void const volatile *)(& (instance->reg_set)->fusion_host_diag));
    tmp = retry;
    retry = retry + 1;
    if (tmp == 100) {
      printk("\fmegaraid_sas: Host diag unlock failed! for scsi%d\n", (instance->host)->host_no);
      goto ldv_39235;
    } else {
    }
    ldv_39237: ;
    if ((host_diag & 128U) == 0U) {
      goto ldv_39236;
    } else {
    }
    ldv_39235: ;
    if ((host_diag & 128U) == 0U) {
      goto ldv_39238;
    } else {
    }
    writel(host_diag | 4U, (void volatile *)(& (instance->reg_set)->fusion_host_diag));
    msleep(3000U);
    host_diag = readl((void const volatile *)(& (instance->reg_set)->fusion_host_diag));
    retry = 0;
    goto ldv_39241;
    ldv_39240:
    msleep(100U);
    host_diag = readl((void const volatile *)(& (instance->reg_set)->fusion_host_diag));
    tmp___0 = retry;
    retry = retry + 1;
    if (tmp___0 == 1000) {
      printk("\fmegaraid_sas: Diag reset adapter never cleared for scsi%d!\n", (instance->host)->host_no);
      goto ldv_39239;
    } else {
    }
    ldv_39241: ;
    if ((host_diag & 4U) != 0U) {
      goto ldv_39240;
    } else {
    }
    ldv_39239: ;
    if ((host_diag & 4U) != 0U) {
      goto ldv_39238;
    } else {
    }
    tmp___1 = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
    abs_state = tmp___1 & 4026531840U;
    retry = 0;
    goto ldv_39243;
    ldv_39242:
    msleep(100U);
    tmp___2 = (*((instance->instancet)->read_fw_status_reg))(instance->reg_set);
    abs_state = tmp___2 & 4026531840U;
    ldv_39243: ;
    if (abs_state <= 1073741824U) {
      tmp___3 = retry;
      retry = retry + 1;
      if (tmp___3 <= 999) {
        goto ldv_39242;
      } else {
        goto ldv_39244;
      }
    } else {
    }
    ldv_39244: ;
    if (abs_state <= 1073741824U) {
      printk("\fmegaraid_sas: firmware state < MFI_STATE_FW_INIT, state = 0x%x for scsi%d\n",
             abs_state, (instance->host)->host_no);
      goto ldv_39238;
    } else {
    }
    tmp___4 = megasas_transition_to_ready(instance, 1);
    if (tmp___4 != 0) {
      printk("\fmegaraid_sas: Failed to transition controller to ready for scsi%d.\n",
             (instance->host)->host_no);
      goto ldv_39238;
    } else {
    }
    megasas_reset_reply_desc(instance);
    tmp___5 = megasas_ioc_init_fusion(instance);
    if (tmp___5 != 0) {
      printk("\fmegaraid_sas: megasas_ioc_init_fusion() failed! for scsi%d\n", (instance->host)->host_no);
      goto ldv_39238;
    } else {
    }
    j = 0;
    goto ldv_39246;
    ldv_39245:
    cmd_fusion = *(fusion->cmd_list + (unsigned long )j);
    if (cmd_fusion->sync_cmd_idx != 4294967295U) {
      cmd_mfi = *(instance->cmd_list + (unsigned long )cmd_fusion->sync_cmd_idx);
      if ((cmd_mfi->frame)->dcmd.opcode == 50389249U) {
        megasas_return_cmd(instance, cmd_mfi);
        megasas_return_cmd_fusion(instance, cmd_fusion);
      } else {
        req_desc = megasas_get_request_descriptor(instance, (int )((unsigned int )cmd_mfi->ldv_38649.context.smid + 65535U));
        if ((unsigned long )req_desc == (unsigned long )((union MEGASAS_REQUEST_DESCRIPTOR_UNION *)0)) {
          printk("\freq_desc NULL for scsi%d\n", (instance->host)->host_no);
          megasas_return_cmd_fusion(instance, cmd_fusion);
        } else {
          (*((instance->instancet)->fire_cmd))(instance, (dma_addr_t )req_desc->ldv_37409.u.low,
                                               req_desc->ldv_37409.u.high, instance->reg_set);
        }
      }
    } else {
    }
    j = j + 1;
    ldv_39246: ;
    if ((int )instance->max_fw_cmds > j) {
      goto ldv_39245;
    } else {
    }
    clear_bit(0L, (unsigned long volatile *)(& instance->reset_flags));
    (*((instance->instancet)->enable_intr))(instance);
    instance->adprecovery = 0U;
    memset((void *)(& fusion->load_balance_info), 0, 2048UL);
    tmp___6 = megasas_get_map_info(instance);
    if ((unsigned int )tmp___6 == 0U) {
      megasas_sync_map_info(instance);
    } else {
    }
    if ((unsigned int )instance->requestorId != 0U) {
      tmp___7 = megasas_sriov_start_heartbeat(instance, 0);
      if (tmp___7 == 0) {
        megasas_start_timer(instance, & instance->sriov_heartbeat_timer, (void *)(& megasas_sriov_heartbeat_handler),
                            1250UL);
      } else {
        instance->skip_heartbeat_timer_del = 1;
      }
    } else {
    }
    printk("\fmegaraid_sas: Reset successful for scsi%d.\n", (instance->host)->host_no);
    retval = 8194;
    goto out;
    ldv_39238:
    i = i + 1;
    ldv_39249: ;
    if (i <= 2) {
      goto ldv_39248;
    } else {
    }
    printk("\fmegaraid_sas: Reset failed, killing adapter scsi%d.\n", (instance->host)->host_no);
    megaraid_sas_kill_hba(instance);
    instance->skip_heartbeat_timer_del = 1;
    instance->adprecovery = 4U;
    retval = 8195;
  } else {
    if ((unsigned int )instance->requestorId != 0U) {
      megasas_start_timer(instance, & instance->sriov_heartbeat_timer, (void *)(& megasas_sriov_heartbeat_handler),
                          1250UL);
    } else {
    }
    clear_bit(0L, (unsigned long volatile *)(& instance->reset_flags));
    (*((instance->instancet)->enable_intr))(instance);
    instance->adprecovery = 0U;
  }
  out:
  clear_bit(0L, (unsigned long volatile *)(& instance->reset_flags));
  mutex_unlock(& instance->reset_mutex);
  return (retval);
}
}
void megasas_fusion_ocr_wq(struct work_struct *work )
{
  struct megasas_instance *instance ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  instance = (struct megasas_instance *)__mptr + 0xfffffffffffff360UL;
  megasas_reset_fusion(instance->host, 0);
  return;
}
}
struct megasas_instance_template megasas_instance_template_fusion =
     {& megasas_fire_cmd_fusion, & megasas_enable_intr_fusion, & megasas_disable_intr_fusion,
    & megasas_clear_intr_fusion, & megasas_read_fw_status_reg_fusion, & megasas_adp_reset_fusion,
    & megasas_check_reset_fusion, & megasas_isr_fusion, & megasas_complete_cmd_dpc_fusion,
    & megasas_init_adapter_fusion, & megasas_build_and_issue_cmd_fusion, & megasas_issue_dcmd_fusion};
extern int ldv_release_2(void) ;
extern int ldv_probe_2(void) ;
void ldv_initialize_megasas_instance_template_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(7312UL);
  megasas_instance_template_fusion_group0 = (struct megasas_instance *)tmp;
  tmp___0 = ldv_zalloc(3484UL);
  megasas_instance_template_fusion_group1 = (struct megasas_register_set *)tmp___0;
  return;
}
}
void ldv_main_exported_2(void)
{
  int ldvarg30 ;
  int tmp ;
  struct megasas_cmd *ldvarg33 ;
  void *tmp___0 ;
  unsigned long ldvarg34 ;
  unsigned long tmp___1 ;
  dma_addr_t ldvarg36 ;
  void *ldvarg31 ;
  void *tmp___2 ;
  struct scsi_cmnd *ldvarg32 ;
  void *tmp___3 ;
  u32 ldvarg35 ;
  u32 tmp___4 ;
  int tmp___5 ;
  {
  tmp = __VERIFIER_nondet_int();
  ldvarg30 = tmp;
  tmp___0 = ldv_zalloc(80UL);
  ldvarg33 = (struct megasas_cmd *)tmp___0;
  tmp___1 = __VERIFIER_nondet_ulong();
  ldvarg34 = tmp___1;
  tmp___2 = ldv_zalloc(1UL);
  ldvarg31 = tmp___2;
  tmp___3 = ldv_zalloc(456UL);
  ldvarg32 = (struct scsi_cmnd *)tmp___3;
  tmp___4 = __VERIFIER_nondet_u32();
  ldvarg35 = tmp___4;
  memset((void *)(& ldvarg36), 0, 8UL);
  tmp___5 = __VERIFIER_nondet_int();
  switch (tmp___5) {
  case 0: ;
  if (ldv_state_variable_2 == 1) {
    megasas_adp_reset_fusion(megasas_instance_template_fusion_group0, megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_adp_reset_fusion(megasas_instance_template_fusion_group0, megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 1: ;
  if (ldv_state_variable_2 == 1) {
    megasas_fire_cmd_fusion(megasas_instance_template_fusion_group0, ldvarg36, ldvarg35,
                            megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_fire_cmd_fusion(megasas_instance_template_fusion_group0, ldvarg36, ldvarg35,
                            megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 2: ;
  if (ldv_state_variable_2 == 1) {
    megasas_clear_intr_fusion(megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_clear_intr_fusion(megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 3: ;
  if (ldv_state_variable_2 == 1) {
    megasas_complete_cmd_dpc_fusion(ldvarg34);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_complete_cmd_dpc_fusion(ldvarg34);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 4: ;
  if (ldv_state_variable_2 == 1) {
    megasas_issue_dcmd_fusion(megasas_instance_template_fusion_group0, ldvarg33);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_issue_dcmd_fusion(megasas_instance_template_fusion_group0, ldvarg33);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 5: ;
  if (ldv_state_variable_2 == 1) {
    megasas_init_adapter_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_init_adapter_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 6: ;
  if (ldv_state_variable_2 == 1) {
    megasas_build_and_issue_cmd_fusion(megasas_instance_template_fusion_group0, ldvarg32);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_build_and_issue_cmd_fusion(megasas_instance_template_fusion_group0, ldvarg32);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 7: ;
  if (ldv_state_variable_2 == 1) {
    megasas_check_reset_fusion(megasas_instance_template_fusion_group0, megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_check_reset_fusion(megasas_instance_template_fusion_group0, megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 8: ;
  if (ldv_state_variable_2 == 1) {
    megasas_disable_intr_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_disable_intr_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 9: ;
  if (ldv_state_variable_2 == 2) {
    megasas_read_fw_status_reg_fusion(megasas_instance_template_fusion_group1);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 10: ;
  if (ldv_state_variable_2 == 1) {
    megasas_isr_fusion(ldvarg30, ldvarg31);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_isr_fusion(ldvarg30, ldvarg31);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 11: ;
  if (ldv_state_variable_2 == 1) {
    megasas_enable_intr_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 1;
  } else {
  }
  if (ldv_state_variable_2 == 2) {
    megasas_enable_intr_fusion(megasas_instance_template_fusion_group0);
    ldv_state_variable_2 = 2;
  } else {
  }
  goto ldv_39276;
  case 12: ;
  if (ldv_state_variable_2 == 2) {
    ldv_release_2();
    ldv_state_variable_2 = 1;
    ref_cnt = ref_cnt - 1;
  } else {
  }
  goto ldv_39276;
  case 13: ;
  if (ldv_state_variable_2 == 1) {
    ldv_probe_2();
    ldv_state_variable_2 = 2;
    ref_cnt = ref_cnt + 1;
  } else {
  }
  goto ldv_39276;
  default:
  ldv_stop();
  }
  ldv_39276: ;
  return;
}
}
int ldv_scsi_add_host_with_dma_62(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_10 = 1;
    ldv_initialize_scsi_host_template_10();
  } else {
  }
  return (ldv_func_res);
}
}
void *ldv_dma_pool_alloc_63(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_64(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_65(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
void *ldv_dma_pool_alloc_66(struct dma_pool *ldv_func_arg1 , gfp_t flags , dma_addr_t *ldv_func_arg3 )
{
  {
  ldv_check_alloc_flags(flags);
  dma_pool_alloc(ldv_func_arg1, flags, ldv_func_arg3);
  return ((void *)0);
}
}
int ldv_del_timer_sync_67(struct timer_list *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  {
  tmp = del_timer_sync(ldv_func_arg1);
  ldv_func_res = tmp;
  disable_suitable_timer_1(ldv_func_arg1);
  return (ldv_func_res);
}
}
int ldv_scsi_add_host_with_dma_94(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev ) ;
void mr_update_load_balance_params(struct MR_FW_RAID_MAP_ALL *map , struct LD_LOAD_BALANCE_INFO *lbInfo ) ;
static void mr_update_span_set(struct MR_FW_RAID_MAP_ALL *map , PLD_SPAN_INFO ldSpanInfo ) ;
static u8 mr_spanset_get_phy_params(struct megasas_instance *instance , u32 ld , u64 stripRow ,
                                    u16 stripRef , struct IO_REQUEST_INFO *io_info ,
                                    struct RAID_CONTEXT *pRAID_Context , struct MR_FW_RAID_MAP_ALL *map ) ;
static u64 get_row_from_strip(struct megasas_instance *instance , u32 ld , u64 strip ,
                              struct MR_FW_RAID_MAP_ALL *map ) ;
u32 mega_mod64(u64 dividend , u32 divisor )
{
  u64 d ;
  u32 remainder ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (divisor == 0U) {
    printk("\vmegasas : DIVISOR is zero, in div fn\n");
  } else {
  }
  d = dividend;
  __base = divisor;
  __rem = (uint32_t )(d % (u64 )__base);
  d = d / (u64 )__base;
  remainder = __rem;
  return (remainder);
}
}
u64 mega_div64_32(uint64_t dividend , uint32_t divisor )
{
  u32 remainder ;
  u64 d ;
  uint32_t __base ;
  uint32_t __rem ;
  {
  if (divisor == 0U) {
    printk("\vmegasas : DIVISOR is zero in mod fn\n");
  } else {
  }
  d = dividend;
  __base = divisor;
  __rem = (uint32_t )(d % (u64 )__base);
  d = d / (u64 )__base;
  remainder = __rem;
  return (d);
}
}
struct MR_LD_RAID *MR_LdRaidGet(u32 ld , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (& map->raidMap.ldSpanMap[ld].ldRaid);
}
}
static struct MR_SPAN_BLOCK_INFO *MR_LdSpanInfoGet(u32 ld , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return ((struct MR_SPAN_BLOCK_INFO *)(& map->raidMap.ldSpanMap[ld].spanBlock));
}
}
static u8 MR_LdDataArmGet(u32 ld , u32 armIdx , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.ldSpanMap[ld].dataArmMap[armIdx]);
}
}
u16 MR_ArPdGet(u32 ar , u32 arm , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.arMapInfo[ar].pd[arm]);
}
}
u16 MR_LdSpanArrayGet(u32 ld , u32 span , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.ldSpanMap[ld].spanBlock[span].span.arrayRef);
}
}
u16 MR_PdDevHandleGet(u32 pd , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.devHndlInfo[pd].curDevHdl);
}
}
u16 MR_GetLDTgtId(u32 ld , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.ldSpanMap[ld].ldRaid.targetId);
}
}
u8 MR_TargetIdToLdGet(u32 ldTgtId , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (map->raidMap.ldTgtIdToLd[ldTgtId]);
}
}
static struct MR_LD_SPAN *MR_LdSpanPtrGet(u32 ld , u32 span , struct MR_FW_RAID_MAP_ALL *map )
{
  {
  return (& map->raidMap.ldSpanMap[ld].spanBlock[span].span);
}
}
u8 MR_ValidateMapInfo(struct megasas_instance *instance )
{
  struct fusion_context *fusion ;
  struct MR_FW_RAID_MAP_ALL *map ;
  struct LD_LOAD_BALANCE_INFO *lbInfo ;
  PLD_SPAN_INFO ldSpanInfo ;
  struct MR_FW_RAID_MAP *pFwRaidMap ;
  struct MR_LD_RAID *raid ;
  int ldCount ;
  int num_lds ;
  u16 ld ;
  u8 tmp ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  map = fusion->ld_map[instance->map_id & 1ULL];
  lbInfo = (struct LD_LOAD_BALANCE_INFO *)(& fusion->load_balance_info);
  ldSpanInfo = (PLD_SPAN_INFO )(& fusion->log_to_span);
  pFwRaidMap = & map->raidMap;
  if ((unsigned long )pFwRaidMap->totalSize != (unsigned long )pFwRaidMap->ldCount * 2528UL + 10408UL) {
    printk("\vmegasas: map info structure size 0x%x is not matching with ld count\n",
           pFwRaidMap->ldCount * 2528U + 10408U);
    printk("\vmegasas: span map %x, pFwRaidMap->totalSize : %x\n", 2528U, pFwRaidMap->totalSize);
    return (0U);
  } else {
  }
  if ((unsigned int )instance->UnevenSpanSupport != 0U) {
    mr_update_span_set(map, ldSpanInfo);
  } else {
  }
  mr_update_load_balance_params(map, lbInfo);
  num_lds = (int )map->raidMap.ldCount;
  ldCount = 0;
  goto ldv_38691;
  ldv_38690:
  tmp = MR_TargetIdToLdGet((u32 )ldCount, map);
  ld = (u16 )tmp;
  raid = MR_LdRaidGet((u32 )ld, map);
  ldCount = ldCount + 1;
  ldv_38691: ;
  if (ldCount < num_lds) {
    goto ldv_38690;
  } else {
  }
  return (1U);
}
}
u32 MR_GetSpanBlock(u32 ld , u64 row , u64 *span_blk , struct MR_FW_RAID_MAP_ALL *map )
{
  struct MR_SPAN_BLOCK_INFO *pSpanBlock ;
  struct MR_SPAN_BLOCK_INFO *tmp ;
  struct MR_QUAD_ELEMENT *quad ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp___0 ;
  u32 span ;
  u32 j ;
  u64 blk ;
  u64 debugBlk ;
  u32 tmp___1 ;
  {
  tmp = MR_LdSpanInfoGet(ld, map);
  pSpanBlock = tmp;
  tmp___0 = MR_LdRaidGet(ld, map);
  raid = tmp___0;
  span = 0U;
  goto ldv_38710;
  ldv_38709:
  j = 0U;
  goto ldv_38707;
  ldv_38706:
  quad = (struct MR_QUAD_ELEMENT *)(& pSpanBlock->block_span_info.quad) + (unsigned long )j;
  if (quad->diff == 0U) {
    return (255U);
  } else {
  }
  if (quad->logStart <= row && quad->logEnd >= row) {
    tmp___1 = mega_mod64(row - quad->logStart, quad->diff);
    if (tmp___1 == 0U) {
      if ((unsigned long )span_blk != (unsigned long )((u64 *)0ULL)) {
        blk = mega_div64_32(row - quad->logStart, quad->diff);
        debugBlk = blk;
        blk = (quad->offsetInSpan + blk) << (int )raid->stripeShift;
        *span_blk = blk;
      } else {
      }
      return (span);
    } else {
    }
  } else {
  }
  j = j + 1U;
  ldv_38707: ;
  if (pSpanBlock->block_span_info.noElements > j) {
    goto ldv_38706;
  } else {
  }
  span = span + 1U;
  pSpanBlock = pSpanBlock + 1;
  ldv_38710: ;
  if ((u32 )raid->spanDepth > span) {
    goto ldv_38709;
  } else {
  }
  return (255U);
}
}
u32 mr_spanset_get_span_block(struct megasas_instance *instance , u32 ld , u64 row ,
                              u64 *span_blk , struct MR_FW_RAID_MAP_ALL *map )
{
  struct fusion_context *fusion ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  LD_SPAN_SET *span_set ;
  struct MR_QUAD_ELEMENT *quad ;
  u32 span ;
  u32 info ;
  PLD_SPAN_INFO ldSpanInfo ;
  u64 blk ;
  u32 tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  ldSpanInfo = (PLD_SPAN_INFO )(& fusion->log_to_span);
  info = 0U;
  goto ldv_38733;
  ldv_38732:
  span_set = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )info;
  if (span_set->span_row_data_width == 0U) {
    goto ldv_38726;
  } else {
  }
  if (span_set->data_row_end < row) {
    goto ldv_38727;
  } else {
  }
  span = 0U;
  goto ldv_38730;
  ldv_38729: ;
  if (map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.noElements >= info + 1U) {
    quad = (struct MR_QUAD_ELEMENT *)(& map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.quad) + (unsigned long )info;
    if (quad->diff == 0U) {
      return (255U);
    } else {
    }
    if (quad->logStart <= row && quad->logEnd >= row) {
      tmp___0 = mega_mod64(row - quad->logStart, quad->diff);
      if (tmp___0 == 0U) {
        if ((unsigned long )span_blk != (unsigned long )((u64 *)0ULL)) {
          blk = mega_div64_32(row - quad->logStart, quad->diff);
          blk = (quad->offsetInSpan + blk) << (int )raid->stripeShift;
          *span_blk = blk;
        } else {
        }
        return (span);
      } else {
      }
    } else {
    }
  } else {
  }
  span = span + 1U;
  ldv_38730: ;
  if ((u32 )raid->spanDepth > span) {
    goto ldv_38729;
  } else {
  }
  ldv_38727:
  info = info + 1U;
  ldv_38733: ;
  if (info <= 7U) {
    goto ldv_38732;
  } else {
  }
  ldv_38726: ;
  return (255U);
}
}
static u64 get_row_from_strip(struct megasas_instance *instance , u32 ld , u64 strip ,
                              struct MR_FW_RAID_MAP_ALL *map )
{
  struct fusion_context *fusion ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  LD_SPAN_SET *span_set ;
  PLD_SPAN_INFO ldSpanInfo ;
  u32 info ;
  u32 strip_offset ;
  u32 span ;
  u32 span_offset ;
  u64 span_set_Strip ;
  u64 span_set_Row ;
  u64 retval ;
  u64 tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  ldSpanInfo = (PLD_SPAN_INFO )(& fusion->log_to_span);
  info = 0U;
  goto ldv_38757;
  ldv_38756:
  span_set = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )info;
  if (span_set->span_row_data_width == 0U) {
    goto ldv_38751;
  } else {
  }
  if (span_set->data_strip_end < strip) {
    goto ldv_38752;
  } else {
  }
  span_set_Strip = strip - span_set->data_strip_start;
  strip_offset = mega_mod64(span_set_Strip, span_set->span_row_data_width);
  tmp___0 = mega_div64_32(span_set_Strip, span_set->span_row_data_width);
  span_set_Row = tmp___0 * (u64 )span_set->diff;
  span = 0U;
  span_offset = 0U;
  goto ldv_38755;
  ldv_38754: ;
  if (map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.noElements >= info + 1U) {
    if ((u32 )span_set->strip_offset[span] <= strip_offset) {
      span_offset = span_offset + 1U;
    } else {
      goto ldv_38753;
    }
  } else {
  }
  span = span + 1U;
  ldv_38755: ;
  if ((u32 )raid->spanDepth > span) {
    goto ldv_38754;
  } else {
  }
  ldv_38753:
  retval = (span_set->data_row_start + span_set_Row) + (u64 )(span_offset - 1U);
  return (retval);
  ldv_38752:
  info = info + 1U;
  ldv_38757: ;
  if (info <= 7U) {
    goto ldv_38756;
  } else {
  }
  ldv_38751: ;
  return (0xffffffffffffffffULL);
}
}
static u64 get_strip_from_row(struct megasas_instance *instance , u32 ld , u64 row ,
                              struct MR_FW_RAID_MAP_ALL *map )
{
  struct fusion_context *fusion ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  LD_SPAN_SET *span_set ;
  struct MR_QUAD_ELEMENT *quad ;
  PLD_SPAN_INFO ldSpanInfo ;
  u32 span ;
  u32 info ;
  u64 strip ;
  u32 tmp___0 ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  ldSpanInfo = (PLD_SPAN_INFO )(& fusion->log_to_span);
  info = 0U;
  goto ldv_38778;
  ldv_38777:
  span_set = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )info;
  if (span_set->span_row_data_width == 0U) {
    goto ldv_38772;
  } else {
  }
  if (span_set->data_row_end < row) {
    goto ldv_38773;
  } else {
  }
  span = 0U;
  goto ldv_38775;
  ldv_38774: ;
  if (map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.noElements >= info + 1U) {
    quad = (struct MR_QUAD_ELEMENT *)(& map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.quad) + (unsigned long )info;
    if (quad->logStart <= row && quad->logEnd >= row) {
      tmp___0 = mega_mod64(row - quad->logStart, quad->diff);
      if (tmp___0 == 0U) {
        strip = mega_div64_32((row - span_set->data_row_start) - quad->logStart, quad->diff);
        strip = (u64 )span_set->span_row_data_width * strip;
        strip = span_set->data_strip_start + strip;
        strip = (u64 )span_set->strip_offset[span] + strip;
        return (strip);
      } else {
      }
    } else {
    }
  } else {
  }
  span = span + 1U;
  ldv_38775: ;
  if ((u32 )raid->spanDepth > span) {
    goto ldv_38774;
  } else {
  }
  ldv_38773:
  info = info + 1U;
  ldv_38778: ;
  if (info <= 7U) {
    goto ldv_38777;
  } else {
  }
  ldv_38772:
  dev_err((struct device const *)(& (instance->pdev)->dev), "get_strip_from_rowreturns invalid strip for ld=%x, row=%lx\n",
          ld, (unsigned long )row);
  return (0xffffffffffffffffULL);
}
}
static u32 get_arm_from_strip(struct megasas_instance *instance , u32 ld , u64 strip ,
                              struct MR_FW_RAID_MAP_ALL *map )
{
  struct fusion_context *fusion ;
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  LD_SPAN_SET *span_set ;
  PLD_SPAN_INFO ldSpanInfo ;
  u32 info ;
  u32 strip_offset ;
  u32 span ;
  u32 span_offset ;
  u32 retval ;
  {
  fusion = (struct fusion_context *)instance->ctrl_context;
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  ldSpanInfo = (PLD_SPAN_INFO )(& fusion->log_to_span);
  info = 0U;
  goto ldv_38800;
  ldv_38799:
  span_set = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )info;
  if (span_set->span_row_data_width == 0U) {
    goto ldv_38794;
  } else {
  }
  if (span_set->data_strip_end < strip) {
    goto ldv_38795;
  } else {
  }
  strip_offset = mega_mod64(strip - span_set->data_strip_start, span_set->span_row_data_width);
  span = 0U;
  span_offset = 0U;
  goto ldv_38798;
  ldv_38797: ;
  if (map->raidMap.ldSpanMap[ld].spanBlock[span].block_span_info.noElements >= info + 1U) {
    if ((u32 )span_set->strip_offset[span] <= strip_offset) {
      span_offset = (u32 )span_set->strip_offset[span];
    } else {
      goto ldv_38796;
    }
  } else {
  }
  span = span + 1U;
  ldv_38798: ;
  if ((u32 )raid->spanDepth > span) {
    goto ldv_38797;
  } else {
  }
  ldv_38796:
  retval = strip_offset - span_offset;
  return (retval);
  ldv_38795:
  info = info + 1U;
  ldv_38800: ;
  if (info <= 7U) {
    goto ldv_38799;
  } else {
  }
  ldv_38794:
  dev_err((struct device const *)(& (instance->pdev)->dev), "get_arm_from_stripreturns invalid arm for ld=%x strip=%lx\n",
          ld, (unsigned long )strip);
  return (4294967295U);
}
}
u8 get_arm(struct megasas_instance *instance , u32 ld , u8 span , u64 stripe , struct MR_FW_RAID_MAP_ALL *map )
{
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  u32 arm ;
  struct MR_LD_SPAN *tmp___0 ;
  {
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  arm = 0U;
  switch ((int )raid->level) {
  case 0: ;
  case 5: ;
  case 6:
  tmp___0 = MR_LdSpanPtrGet(ld, (u32 )span, map);
  arm = mega_mod64(stripe, (u32 )tmp___0->spanRowSize);
  goto ldv_38813;
  case 1:
  arm = get_arm_from_strip(instance, ld, stripe, map);
  if (arm != 4294967295U) {
    arm = arm * 2U;
  } else {
  }
  goto ldv_38813;
  }
  ldv_38813: ;
  return ((u8 )arm);
}
}
static u8 mr_spanset_get_phy_params(struct megasas_instance *instance , u32 ld , u64 stripRow ,
                                    u16 stripRef , struct IO_REQUEST_INFO *io_info ,
                                    struct RAID_CONTEXT *pRAID_Context , struct MR_FW_RAID_MAP_ALL *map )
{
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  u32 pd ;
  u32 arRef ;
  u8 physArm ;
  u8 span ;
  u64 row ;
  u8 retval ;
  u8 do_invader ;
  u64 *pdBlock ;
  u16 *pDevHandle ;
  u32 logArm ;
  u32 rowMod ;
  u32 armQ ;
  u32 arm ;
  struct MR_LD_SPAN *tmp___0 ;
  struct MR_LD_SPAN *tmp___1 ;
  struct MR_LD_SPAN *tmp___2 ;
  struct MR_LD_SPAN *tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  struct MR_LD_SPAN *tmp___7 ;
  {
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  retval = 1U;
  do_invader = 0U;
  pdBlock = & io_info->pdBlock;
  pDevHandle = & io_info->devHandle;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    do_invader = 1U;
  } else {
  }
  row = io_info->start_row;
  span = io_info->start_span;
  if ((unsigned int )raid->level == 6U) {
    logArm = get_arm_from_strip(instance, ld, stripRow, map);
    if (logArm == 4294967295U) {
      return (0U);
    } else {
    }
    tmp___0 = MR_LdSpanPtrGet(ld, (u32 )span, map);
    rowMod = mega_mod64(row, (u32 )tmp___0->spanRowSize);
    tmp___1 = MR_LdSpanPtrGet(ld, (u32 )span, map);
    armQ = ((u32 )tmp___1->spanRowSize - rowMod) + 4294967295U;
    arm = (armQ + logArm) + 1U;
    tmp___3 = MR_LdSpanPtrGet(ld, (u32 )span, map);
    if ((u32 )tmp___3->spanRowSize <= arm) {
      tmp___2 = MR_LdSpanPtrGet(ld, (u32 )span, map);
      arm = arm - (u32 )tmp___2->spanRowSize;
    } else {
    }
    physArm = (unsigned char )arm;
  } else {
    physArm = get_arm(instance, ld, (int )span, stripRow, map);
  }
  if ((unsigned int )physArm == 255U) {
    return (0U);
  } else {
  }
  tmp___4 = MR_LdSpanArrayGet(ld, (u32 )span, map);
  arRef = (u32 )tmp___4;
  tmp___5 = MR_ArPdGet(arRef, (u32 )physArm, map);
  pd = (u32 )tmp___5;
  if (pd != 65535U) {
    *pDevHandle = MR_PdDevHandleGet(pd, map);
  } else {
    *pDevHandle = 65535U;
    if ((unsigned int )raid->level > 4U && ((unsigned int )do_invader == 0U || ((unsigned int )do_invader != 0U && (unsigned int )raid->regTypeReqOnRead != 0U))) {
      pRAID_Context->regLockFlags = 3U;
    } else
    if ((unsigned int )raid->level == 1U) {
      tmp___6 = MR_ArPdGet(arRef, (u32 )((int )physArm + 1), map);
      pd = (u32 )tmp___6;
      if (pd != 65535U) {
        *pDevHandle = MR_PdDevHandleGet(pd, map);
      } else {
      }
    } else {
    }
  }
  tmp___7 = MR_LdSpanPtrGet(ld, (u32 )span, map);
  *pdBlock = *pdBlock + ((u64 )stripRef + tmp___7->startBlk);
  pRAID_Context->spanArm = (u8 )((int )((signed char )((int )span << 5)) | (int )((signed char )physArm));
  return (retval);
}
}
u8 MR_GetPhyParams(struct megasas_instance *instance , u32 ld , u64 stripRow , u16 stripRef ,
                   struct IO_REQUEST_INFO *io_info , struct RAID_CONTEXT *pRAID_Context ,
                   struct MR_FW_RAID_MAP_ALL *map )
{
  struct MR_LD_RAID *raid ;
  struct MR_LD_RAID *tmp ;
  u32 pd ;
  u32 arRef ;
  u8 physArm ;
  u8 span ;
  u64 row ;
  u8 retval ;
  u8 do_invader ;
  u64 *pdBlock ;
  u16 *pDevHandle ;
  u32 logArm ;
  u32 tmp___0 ;
  u32 rowMod ;
  u32 armQ ;
  u32 arm ;
  u32 tmp___1 ;
  u32 tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  u16 tmp___5 ;
  struct MR_LD_SPAN *tmp___6 ;
  {
  tmp = MR_LdRaidGet(ld, map);
  raid = tmp;
  retval = 1U;
  do_invader = 0U;
  pdBlock = & io_info->pdBlock;
  pDevHandle = & io_info->devHandle;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    do_invader = 1U;
  } else {
  }
  row = mega_div64_32(stripRow, (uint32_t )raid->rowDataSize);
  if ((unsigned int )raid->level == 6U) {
    tmp___0 = mega_mod64(stripRow, (u32 )raid->rowDataSize);
    logArm = tmp___0;
    if ((unsigned int )raid->rowSize == 0U) {
      return (0U);
    } else {
    }
    rowMod = mega_mod64(row, (u32 )raid->rowSize);
    armQ = ((u32 )raid->rowSize - rowMod) + 4294967295U;
    arm = (armQ + logArm) + 1U;
    if ((u32 )raid->rowSize <= arm) {
      arm = arm - (u32 )raid->rowSize;
    } else {
    }
    physArm = (unsigned char )arm;
  } else {
    if ((unsigned int )raid->modFactor == 0U) {
      return (0U);
    } else {
    }
    tmp___1 = mega_mod64(stripRow, (u32 )raid->modFactor);
    physArm = MR_LdDataArmGet(ld, tmp___1, map);
  }
  if ((unsigned int )raid->spanDepth == 1U) {
    span = 0U;
    *pdBlock = row << (int )raid->stripeShift;
  } else {
    tmp___2 = MR_GetSpanBlock(ld, row, pdBlock, map);
    span = (unsigned char )tmp___2;
    if ((unsigned int )span == 255U) {
      return (0U);
    } else {
    }
  }
  tmp___3 = MR_LdSpanArrayGet(ld, (u32 )span, map);
  arRef = (u32 )tmp___3;
  tmp___4 = MR_ArPdGet(arRef, (u32 )physArm, map);
  pd = (u32 )tmp___4;
  if (pd != 65535U) {
    *pDevHandle = MR_PdDevHandleGet(pd, map);
  } else {
    *pDevHandle = 65535U;
    if ((unsigned int )raid->level > 4U && ((unsigned int )do_invader == 0U || ((unsigned int )do_invader != 0U && (unsigned int )raid->regTypeReqOnRead != 0U))) {
      pRAID_Context->regLockFlags = 3U;
    } else
    if ((unsigned int )raid->level == 1U) {
      tmp___5 = MR_ArPdGet(arRef, (u32 )((int )physArm + 1), map);
      pd = (u32 )tmp___5;
      if (pd != 65535U) {
        *pDevHandle = MR_PdDevHandleGet(pd, map);
      } else {
      }
    } else {
    }
  }
  tmp___6 = MR_LdSpanPtrGet(ld, (u32 )span, map);
  *pdBlock = *pdBlock + ((u64 )stripRef + tmp___6->startBlk);
  pRAID_Context->spanArm = (u8 )((int )((signed char )((int )span << 5)) | (int )((signed char )physArm));
  return (retval);
}
}
u8 MR_BuildRaidContext(struct megasas_instance *instance , struct IO_REQUEST_INFO *io_info ,
                       struct RAID_CONTEXT *pRAID_Context , struct MR_FW_RAID_MAP_ALL *map ,
                       u8 **raidLUN )
{
  struct MR_LD_RAID *raid ;
  u32 ld ;
  u32 stripSize ;
  u32 stripe_mask ;
  u64 endLba ;
  u64 endStrip ;
  u64 endRow ;
  u64 start_row ;
  u64 start_strip ;
  u64 regStart ;
  u32 regSize ;
  u8 num_strips ;
  u8 numRows ;
  u16 ref_in_start_stripe ;
  u16 ref_in_end_stripe ;
  u64 ldStartBlock ;
  u32 numBlocks ;
  u32 ldTgtId ;
  u8 isRead ;
  u8 retval ;
  u8 startlba_span ;
  u64 *pdBlock ;
  u8 tmp ;
  struct MR_LD_SPAN *tmp___0 ;
  struct MR_LD_SPAN *tmp___1 ;
  u32 tmp___2 ;
  u64 tmp___3 ;
  struct MR_LD_SPAN *tmp___4 ;
  u64 tmp___5 ;
  u8 tmp___6 ;
  u8 tmp___7 ;
  uint stripIdx ;
  u8 tmp___8 ;
  u8 tmp___9 ;
  {
  retval = 0U;
  startlba_span = 255U;
  pdBlock = & io_info->pdBlock;
  ldStartBlock = io_info->ldStartBlock;
  numBlocks = io_info->numBlocks;
  ldTgtId = (u32 )io_info->ldTgtId;
  isRead = io_info->isRead;
  io_info->IoforUnevenSpan = 0U;
  io_info->start_span = 255U;
  tmp = MR_TargetIdToLdGet(ldTgtId, map);
  ld = (u32 )tmp;
  raid = MR_LdRaidGet(ld, map);
  if ((unsigned int )raid->rowDataSize == 0U) {
    tmp___1 = MR_LdSpanPtrGet(ld, 0U, map);
    if ((unsigned int )tmp___1->spanRowDataSize == 0U) {
      return (0U);
    } else
    if ((unsigned int )instance->UnevenSpanSupport != 0U) {
      io_info->IoforUnevenSpan = 1U;
    } else {
      tmp___0 = MR_LdSpanPtrGet(ld, 0U, map);
      _dev_info((struct device const *)(& (instance->pdev)->dev), "raid->rowDataSize is 0, but has SPAN[0]rowDataSize = 0x%0x,but there is _NO_ UnevenSpanSupport\n",
                (int )tmp___0->spanRowDataSize);
      return (0U);
    }
  } else {
  }
  stripSize = (u32 )(1 << (int )raid->stripeShift);
  stripe_mask = stripSize - 1U;
  start_strip = ldStartBlock >> (int )raid->stripeShift;
  ref_in_start_stripe = (int )((unsigned short )ldStartBlock) & (int )((unsigned short )stripe_mask);
  endLba = ((u64 )numBlocks + ldStartBlock) - 1ULL;
  ref_in_end_stripe = (int )((unsigned short )endLba) & (int )((unsigned short )stripe_mask);
  endStrip = endLba >> (int )raid->stripeShift;
  num_strips = (unsigned int )((int )((unsigned char )endStrip) - (int )((unsigned char )start_strip)) + 1U;
  if ((unsigned int )io_info->IoforUnevenSpan != 0U) {
    start_row = get_row_from_strip(instance, ld, start_strip, map);
    endRow = get_row_from_strip(instance, ld, endStrip, map);
    if (start_row == 0xffffffffffffffffULL || endRow == 0xffffffffffffffffULL) {
      _dev_info((struct device const *)(& (instance->pdev)->dev), "return from %s %d.Send IO w/o region lock.\n",
                "MR_BuildRaidContext", 930);
      return (0U);
    } else {
    }
    if ((unsigned int )raid->spanDepth == 1U) {
      startlba_span = 0U;
      *pdBlock = start_row << (int )raid->stripeShift;
    } else {
      tmp___2 = mr_spanset_get_span_block(instance, ld, start_row, pdBlock, map);
      startlba_span = (unsigned char )tmp___2;
    }
    if ((unsigned int )startlba_span == 255U) {
      _dev_info((struct device const *)(& (instance->pdev)->dev), "return from %s %dfor row 0x%llx,start strip %llxendSrip %llx\n",
                "MR_BuildRaidContext", 946, start_row, start_strip, endStrip);
      return (0U);
    } else {
    }
    io_info->start_span = startlba_span;
    io_info->start_row = start_row;
  } else {
    start_row = mega_div64_32(start_strip, (uint32_t )raid->rowDataSize);
    endRow = mega_div64_32(endStrip, (uint32_t )raid->rowDataSize);
  }
  numRows = (unsigned int )((int )((unsigned char )endRow) - (int )((unsigned char )start_row)) + 1U;
  regStart = start_row << (int )raid->stripeShift;
  regSize = stripSize;
  if ((unsigned int )*((unsigned char *)raid + 0UL) != 0U) {
    if ((unsigned int )isRead != 0U) {
      io_info->fpOkForIo = (u8 )((unsigned int )*((unsigned char *)raid + 2UL) != 0U && ((unsigned int )num_strips == 1U || (unsigned int )*((unsigned char *)raid + 2UL) != 0U));
    } else {
      io_info->fpOkForIo = (u8 )((unsigned int )*((unsigned char *)raid + 2UL) != 0U && ((unsigned int )num_strips == 1U || (unsigned int )*((unsigned char *)raid + 2UL) != 0U));
    }
  } else {
    io_info->fpOkForIo = 0U;
  }
  if ((unsigned int )numRows == 1U) {
    if ((unsigned int )num_strips == 1U) {
      regStart = (u64 )ref_in_start_stripe + regStart;
      regSize = numBlocks;
    } else {
    }
  } else
  if ((unsigned int )io_info->IoforUnevenSpan == 0U) {
    if ((start_row + 1ULL) * (u64 )raid->rowDataSize - 1ULL == start_strip) {
      regStart = (u64 )ref_in_start_stripe + regStart;
      regSize = stripSize - (u32 )ref_in_start_stripe;
    } else {
    }
    if ((unsigned int )numRows > 2U) {
      regSize = (u32 )(((int )numRows + -2) << (int )raid->stripeShift) + regSize;
    } else {
    }
    if ((u64 )raid->rowDataSize * endRow == endStrip) {
      regSize = ((u32 )ref_in_end_stripe + regSize) + 1U;
    } else {
      regSize = regSize + stripSize;
    }
  } else {
    tmp___3 = get_strip_from_row(instance, ld, start_row, map);
    tmp___4 = MR_LdSpanPtrGet(ld, (u32 )startlba_span, map);
    if ((tmp___3 + (u64 )tmp___4->spanRowDataSize) - 1ULL == start_strip) {
      regStart = (u64 )ref_in_start_stripe + regStart;
      regSize = stripSize - (u32 )ref_in_start_stripe;
    } else {
    }
    if ((unsigned int )numRows > 2U) {
      regSize = (u32 )(((int )numRows + -2) << (int )raid->stripeShift) + regSize;
    } else {
    }
    tmp___5 = get_strip_from_row(instance, ld, endRow, map);
    if (tmp___5 == endStrip) {
      regSize = ((u32 )ref_in_end_stripe + regSize) + 1U;
    } else {
      regSize = regSize + stripSize;
    }
  }
  pRAID_Context->timeoutValue = (unsigned int )raid->fpIoTimeoutForLd != 0U ? (unsigned short )raid->fpIoTimeoutForLd : (unsigned short )map->raidMap.fpPdIoTimeoutSec;
  if ((unsigned int )(instance->pdev)->device == 93U || (unsigned int )(instance->pdev)->device == 95U) {
    pRAID_Context->regLockFlags = (unsigned int )isRead != 0U ? raid->regTypeReqOnRead : raid->regTypeReqOnWrite;
  } else {
    pRAID_Context->regLockFlags = (unsigned int )isRead == 0U ? raid->regTypeReqOnWrite : 1U;
  }
  pRAID_Context->VirtualDiskTgtId = raid->targetId;
  pRAID_Context->regLockRowLBA = regStart;
  pRAID_Context->regLockLength = regSize;
  pRAID_Context->configSeqNum = raid->seqNum;
  *raidLUN = (u8 *)(& raid->LUN);
  if ((unsigned int )io_info->fpOkForIo != 0U) {
    if ((unsigned int )io_info->IoforUnevenSpan != 0U) {
      tmp___6 = mr_spanset_get_phy_params(instance, ld, start_strip, (int )ref_in_start_stripe,
                                          io_info, pRAID_Context, map);
      retval = tmp___6;
    } else {
      tmp___7 = MR_GetPhyParams(instance, ld, start_strip, (int )ref_in_start_stripe,
                                io_info, pRAID_Context, map);
      retval = tmp___7;
    }
    if ((unsigned int )io_info->devHandle == 65535U) {
      io_info->fpOkForIo = 0U;
    } else {
    }
    return (retval);
  } else
  if ((unsigned int )isRead != 0U) {
    stripIdx = 0U;
    goto ldv_38893;
    ldv_38892: ;
    if ((unsigned int )io_info->IoforUnevenSpan != 0U) {
      tmp___8 = mr_spanset_get_phy_params(instance, ld, (u64 )stripIdx + start_strip,
                                          (int )ref_in_start_stripe, io_info, pRAID_Context,
                                          map);
      retval = tmp___8;
    } else {
      tmp___9 = MR_GetPhyParams(instance, ld, (u64 )stripIdx + start_strip, (int )ref_in_start_stripe,
                                io_info, pRAID_Context, map);
      retval = tmp___9;
    }
    if ((unsigned int )retval == 0U) {
      return (1U);
    } else {
    }
    stripIdx = stripIdx + 1U;
    ldv_38893: ;
    if ((uint )num_strips > stripIdx) {
      goto ldv_38892;
    } else {
    }
  } else {
  }
  return (1U);
}
}
static void mr_update_span_set(struct MR_FW_RAID_MAP_ALL *map , PLD_SPAN_INFO ldSpanInfo )
{
  u8 span ;
  u8 count ;
  u32 element ;
  u32 span_row_width ;
  u64 span_row ;
  struct MR_LD_RAID *raid ;
  LD_SPAN_SET *span_set ;
  LD_SPAN_SET *span_set_prev ;
  struct MR_QUAD_ELEMENT *quad ;
  int ldCount ;
  u16 ld ;
  u8 tmp ;
  struct MR_LD_SPAN *tmp___0 ;
  struct MR_LD_SPAN *tmp___1 ;
  {
  ldCount = 0;
  goto ldv_38922;
  ldv_38921:
  tmp = MR_TargetIdToLdGet((u32 )ldCount, map);
  ld = (u16 )tmp;
  if ((unsigned int )ld > 63U) {
    goto ldv_38910;
  } else {
  }
  raid = MR_LdRaidGet((u32 )ld, map);
  element = 0U;
  goto ldv_38920;
  ldv_38919:
  span = 0U;
  goto ldv_38917;
  ldv_38916: ;
  if (map->raidMap.ldSpanMap[(int )ld].spanBlock[(int )span].block_span_info.noElements < element + 1U) {
    goto ldv_38911;
  } else {
  }
  span_set = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )element;
  quad = (struct MR_QUAD_ELEMENT *)(& map->raidMap.ldSpanMap[(int )ld].spanBlock[(int )span].block_span_info.quad) + (unsigned long )element;
  span_set->diff = quad->diff;
  count = 0U;
  span_row_width = 0U;
  goto ldv_38913;
  ldv_38912: ;
  if (map->raidMap.ldSpanMap[(int )ld].spanBlock[(int )count].block_span_info.noElements >= element + 1U) {
    span_set->strip_offset[(int )count] = (u8 )span_row_width;
    tmp___0 = MR_LdSpanPtrGet((u32 )ld, (u32 )count, map);
    span_row_width = (u32 )tmp___0->spanRowDataSize + span_row_width;
    tmp___1 = MR_LdSpanPtrGet((u32 )ld, (u32 )count, map);
    printk("\016megasas:span %x rowDataSize %x\n", (int )count, (int )tmp___1->spanRowDataSize);
  } else {
  }
  count = (u8 )((int )count + 1);
  ldv_38913: ;
  if ((int )raid->spanDepth > (int )count) {
    goto ldv_38912;
  } else {
  }
  span_set->span_row_data_width = span_row_width;
  span_row = mega_div64_32((quad->logEnd - quad->logStart) + (u64 )quad->diff, quad->diff);
  if (element == 0U) {
    span_set->log_start_lba = 0ULL;
    span_set->log_end_lba = (span_row << (int )raid->stripeShift) * (u64 )span_row_width - 1ULL;
    span_set->span_row_start = 0ULL;
    span_set->span_row_end = span_row - 1ULL;
    span_set->data_strip_start = 0ULL;
    span_set->data_strip_end = (u64 )span_row_width * span_row - 1ULL;
    span_set->data_row_start = 0ULL;
    span_set->data_row_end = (u64 )quad->diff * span_row - 1ULL;
  } else {
    span_set_prev = (LD_SPAN_SET *)(& (ldSpanInfo + (unsigned long )ld)->span_set) + (unsigned long )(element - 1U);
    span_set->log_start_lba = span_set_prev->log_end_lba + 1ULL;
    span_set->log_end_lba = (span_set->log_start_lba + (span_row << (int )raid->stripeShift) * (u64 )span_row_width) - 1ULL;
    span_set->span_row_start = span_set_prev->span_row_end + 1ULL;
    span_set->span_row_end = (span_set->span_row_start + span_row) - 1ULL;
    span_set->data_strip_start = span_set_prev->data_strip_end + 1ULL;
    span_set->data_strip_end = (span_set->data_strip_start + (u64 )span_row_width * span_row) - 1ULL;
    span_set->data_row_start = span_set_prev->data_row_end + 1ULL;
    span_set->data_row_end = (span_set->data_row_start + (u64 )quad->diff * span_row) - 1ULL;
  }
  goto ldv_38915;
  ldv_38911:
  span = (u8 )((int )span + 1);
  ldv_38917: ;
  if ((int )raid->spanDepth > (int )span) {
    goto ldv_38916;
  } else {
  }
  ldv_38915: ;
  if ((int )raid->spanDepth == (int )span) {
    goto ldv_38918;
  } else {
  }
  element = element + 1U;
  ldv_38920: ;
  if (element <= 7U) {
    goto ldv_38919;
  } else {
  }
  ldv_38918: ;
  ldv_38910:
  ldCount = ldCount + 1;
  ldv_38922: ;
  if (ldCount <= 63) {
    goto ldv_38921;
  } else {
  }
  return;
}
}
void mr_update_load_balance_params(struct MR_FW_RAID_MAP_ALL *map , struct LD_LOAD_BALANCE_INFO *lbInfo )
{
  int ldCount ;
  u16 ld ;
  struct MR_LD_RAID *raid ;
  u8 tmp ;
  u32 pd ;
  u32 arRef ;
  u16 tmp___0 ;
  u16 tmp___1 ;
  u16 tmp___2 ;
  {
  ldCount = 0;
  goto ldv_38935;
  ldv_38934:
  tmp = MR_TargetIdToLdGet((u32 )ldCount, map);
  ld = (u16 )tmp;
  if ((unsigned int )ld > 63U) {
    (lbInfo + (unsigned long )ldCount)->loadBalanceFlag = 0U;
    goto ldv_38931;
  } else {
  }
  raid = MR_LdRaidGet((u32 )ld, map);
  if ((((unsigned int )raid->level == 1U && (unsigned int )raid->rowSize == 2U) && (unsigned int )raid->spanDepth == 1U) && (unsigned int )raid->ldState == 3U) {
    (lbInfo + (unsigned long )ldCount)->loadBalanceFlag = 1U;
    tmp___0 = MR_LdSpanArrayGet((u32 )ld, 0U, map);
    arRef = (u32 )tmp___0;
    tmp___1 = MR_ArPdGet(arRef, 0U, map);
    pd = (u32 )tmp___1;
    (lbInfo + (unsigned long )ldCount)->raid1DevHandle[0] = MR_PdDevHandleGet(pd,
                                                                              map);
    tmp___2 = MR_ArPdGet(arRef, 1U, map);
    pd = (u32 )tmp___2;
    (lbInfo + (unsigned long )ldCount)->raid1DevHandle[1] = MR_PdDevHandleGet(pd,
                                                                              map);
  } else {
    (lbInfo + (unsigned long )ldCount)->loadBalanceFlag = 0U;
  }
  ldv_38931:
  ldCount = ldCount + 1;
  ldv_38935: ;
  if (ldCount <= 63) {
    goto ldv_38934;
  } else {
  }
  return;
}
}
u8 megasas_get_best_arm(struct LD_LOAD_BALANCE_INFO *lbInfo , u8 arm , u64 block ,
                        u32 count )
{
  u16 pend0 ;
  u16 pend1 ;
  u64 diff0 ;
  u64 diff1 ;
  u8 bestArm ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& lbInfo->scsi_pending_cmds));
  pend0 = (u16 )tmp;
  tmp___0 = atomic_read((atomic_t const *)(& lbInfo->scsi_pending_cmds) + 1U);
  pend1 = (u16 )tmp___0;
  diff0 = lbInfo->last_accessed_block[0] < block ? block - lbInfo->last_accessed_block[0] : lbInfo->last_accessed_block[0] - block;
  diff1 = lbInfo->last_accessed_block[1] < block ? block - lbInfo->last_accessed_block[1] : lbInfo->last_accessed_block[1] - block;
  bestArm = diff0 > diff1;
  if (((int )bestArm == (int )arm && (int )pend0 > (int )pend1 + 4) || ((int )bestArm != (int )arm && (int )pend1 > (int )pend0 + 4)) {
    bestArm = (u8 )((unsigned int )bestArm ^ 1U);
  } else {
  }
  lbInfo->last_accessed_block[(int )bestArm] = ((u64 )count + block) - 1ULL;
  return (bestArm);
}
}
u16 get_updated_dev_handle(struct LD_LOAD_BALANCE_INFO *lbInfo , struct IO_REQUEST_INFO *io_info )
{
  u8 arm ;
  u8 old_arm ;
  u16 devHandle ;
  {
  old_arm = (int )lbInfo->raid1DevHandle[0] != (int )io_info->devHandle;
  arm = megasas_get_best_arm(lbInfo, (int )old_arm, io_info->ldStartBlock, io_info->numBlocks);
  devHandle = lbInfo->raid1DevHandle[(int )arm];
  atomic_inc((atomic_t *)(& lbInfo->scsi_pending_cmds) + (unsigned long )arm);
  return (devHandle);
}
}
int ldv_scsi_add_host_with_dma_94(struct Scsi_Host *shost , struct device *dev , struct device *dma_dev )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  {
  tmp = scsi_add_host_with_dma(shost, dev, dma_dev);
  ldv_func_res = tmp;
  if (ldv_func_res == 0) {
    ldv_state_variable_10 = 1;
    ldv_initialize_scsi_host_template_10();
  } else {
  }
  return (ldv_func_res);
}
}
__inline static void ldv_error(void);
int ldv_spin = 0;
void ldv_check_alloc_flags(gfp_t flags )
{
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  return;
}
}
extern struct page___0 *ldv_some_page(void) ;
struct page___0 *ldv_check_alloc_flags_and_return_some_page(gfp_t flags )
{
  struct page___0 *tmp ;
  {
  if (ldv_spin == 0 || ! (flags & 16U)) {
  } else {
    ldv_error();
  }
  tmp = ldv_some_page();
  return (tmp);
}
}
void ldv_check_alloc_nonatomic(void)
{
  {
  if (ldv_spin == 0) {
  } else {
    ldv_error();
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
  if (is_lock) {
    return (0);
  } else {
    ldv_spin = 1;
    return (1);
  }
}
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __copy_from_user_overflow() {
  return;
}
void __copy_to_user_overflow() {
  return;
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
void __list_del_entry(struct list_head *arg0) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_enable_wake(struct pci_dev *arg0, pci_power_t arg1, bool arg2, bool arg3) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void blk_queue_rq_timeout(struct request_queue *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool capable(int arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int clear_user(void *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
void *compat_alloc_user_space(unsigned long arg0) {
  return ldv_malloc(0UL);
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int copy_in_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_printk(const char *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void *dma_pool_alloc(struct dma_pool *arg0, gfp_t arg1, dma_addr_t *arg2) {
  return ldv_malloc(0UL);
}
struct dma_pool *dma_pool_create(const char *arg0, struct device *arg1, size_t arg2, size_t arg3, size_t arg4) {
  return ldv_malloc(0UL);
}
void dma_pool_destroy(struct dma_pool *arg0) {
  return;
}
void dma_pool_free(struct dma_pool *arg0, void *arg1, dma_addr_t arg2) {
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
int __VERIFIER_nondet_int(void);
int fasync_helper(int arg0, struct file *arg1, int arg2, struct fasync_struct **arg3) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_first_bit(const unsigned long *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
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
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return ldv_malloc(0UL);
}
void iounmap(volatile void *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int irq_set_affinity_hint(unsigned int arg0, const struct cpumask *arg1) {
  return __VERIFIER_nondet_int();
}
void kill_fasync(struct fasync_struct **arg0, int arg1, int arg2) {
  return;
}
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return ldv_malloc(0UL);
}
void ldv_check_final_state() {
  return;
}
void ldv_initialize() {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_probe_11() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_12() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_13() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_probe_2() {
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
int ldv_release_13() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_14() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_2() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_release_9() {
  return __VERIFIER_nondet_int();
}
struct page___0 *ldv_some_page() {
  return ldv_malloc(sizeof(struct page___0));
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void might_fault() {
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
long __VERIFIER_nondet_long(void);
loff_t noop_llseek(struct file *arg0, loff_t arg1, int arg2) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_dword(struct pci_bus *arg0, unsigned int arg1, int arg2, u32 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
pci_power_t pci_choose_state(struct pci_dev *arg0, pm_message_t arg1) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device_mem(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void pci_release_selected_regions(struct pci_dev *arg0, int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_selected_regions(struct pci_dev *arg0, int arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void pci_restore_state(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_save_state(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_select_bars(struct pci_dev *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_set_power_state(struct pci_dev *arg0, pci_power_t arg1) {
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work_on(int arg0, struct workqueue_struct *arg1, struct delayed_work *arg2, unsigned long arg3) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool queue_work_on(int arg0, struct workqueue_struct *arg1, struct work_struct *arg2) {
  return __VERIFIER_nondet_bool();
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
int __VERIFIER_nondet_int(void);
int scsi_add_device(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int scsi_add_host_with_dma(struct Scsi_Host *arg0, struct device *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
void scsi_adjust_queue_depth(struct scsi_device *arg0, int arg1, int arg2) {
  return;
}
void scsi_cmd_get_serial(struct Scsi_Host *arg0, struct scsi_cmnd *arg1) {
  return;
}
struct scsi_device *scsi_device_lookup(struct Scsi_Host *arg0, uint arg1, uint arg2, uint arg3) {
  return ldv_malloc(sizeof(struct scsi_device));
}
void scsi_device_put(struct scsi_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int scsi_dma_map(struct scsi_cmnd *arg0) {
  return __VERIFIER_nondet_int();
}
void scsi_dma_unmap(struct scsi_cmnd *arg0) {
  return;
}
struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *arg0, int arg1) {
  return ldv_malloc(sizeof(struct Scsi_Host));
}
void scsi_host_put(struct Scsi_Host *arg0) {
  return;
}
void scsi_remove_device(struct scsi_device *arg0) {
  return;
}
void scsi_remove_host(struct Scsi_Host *arg0) {
  return;
}
void scsi_scan_host(struct Scsi_Host *arg0) {
  return;
}
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return ldv_malloc(sizeof(struct scatterlist));
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
void up(struct semaphore *arg0) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
