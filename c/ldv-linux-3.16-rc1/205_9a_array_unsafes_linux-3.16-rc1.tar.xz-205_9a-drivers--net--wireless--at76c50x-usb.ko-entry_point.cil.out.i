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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
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
typedef unsigned char u_char;
typedef unsigned int uint;
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
struct __anonstruct_ldv_1016_9 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_1031_10 {
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
union __anonunion_ldv_1032_8 {
   struct __anonstruct_ldv_1016_9 ldv_1016 ;
   struct __anonstruct_ldv_1031_10 ldv_1031 ;
};
struct desc_struct {
   union __anonunion_ldv_1032_8 ldv_1032 ;
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
struct arch_spinlock;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_1452_15 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_1452_15 ldv_1452 ;
};
typedef struct arch_spinlock arch_spinlock_t;
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
union __anonunion_ldv_2969_20 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2969_20 ldv_2969 ;
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
struct __anonstruct_ldv_5280_25 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5286_26 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5287_24 {
   struct __anonstruct_ldv_5280_25 ldv_5280 ;
   struct __anonstruct_ldv_5286_26 ldv_5286 ;
};
union __anonunion_ldv_5296_27 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5287_24 ldv_5287 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5296_27 ldv_5296 ;
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
struct __anonstruct_ldv_6337_31 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_6338_30 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_6337_31 ldv_6337 ;
};
struct spinlock {
   union __anonunion_ldv_6338_30 ldv_6338 ;
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
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct optimistic_spin_queue;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   struct optimistic_spin_queue *osq ;
   struct lockdep_map dep_map ;
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
struct vm_area_struct;
struct inode;
struct notifier_block;
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
struct seqcount {
   unsigned int sequence ;
   struct lockdep_map dep_map ;
};
typedef struct seqcount seqcount_t;
struct __anonstruct_seqlock_t_33 {
   struct seqcount seqcount ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_33 seqlock_t;
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
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
struct __anonstruct_nodemask_t_98 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_98 nodemask_t;
struct __anonstruct_mm_context_t_99 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_99 mm_context_t;
struct bio_vec;
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
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
struct __anonstruct_ldv_12049_131 {
   struct arch_uprobe_task autask ;
   unsigned long vaddr ;
};
struct __anonstruct_ldv_12053_132 {
   struct callback_head dup_xol_work ;
   unsigned long dup_xol_addr ;
};
union __anonunion_ldv_12054_130 {
   struct __anonstruct_ldv_12049_131 ldv_12049 ;
   struct __anonstruct_ldv_12053_132 ldv_12053 ;
};
struct uprobe;
struct return_instance;
struct uprobe_task {
   enum uprobe_task_state state ;
   union __anonunion_ldv_12054_130 ldv_12054 ;
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
union __anonunion_ldv_12163_133 {
   struct address_space *mapping ;
   void *s_mem ;
};
union __anonunion_ldv_12169_135 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_12179_139 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_12181_138 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_12179_139 ldv_12179 ;
   int units ;
};
struct __anonstruct_ldv_12183_137 {
   union __anonunion_ldv_12181_138 ldv_12181 ;
   atomic_t _count ;
};
union __anonunion_ldv_12185_136 {
   unsigned long counters ;
   struct __anonstruct_ldv_12183_137 ldv_12183 ;
   unsigned int active ;
};
struct __anonstruct_ldv_12186_134 {
   union __anonunion_ldv_12169_135 ldv_12169 ;
   union __anonunion_ldv_12185_136 ldv_12185 ;
};
struct __anonstruct_ldv_12193_141 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_12198_140 {
   struct list_head lru ;
   struct __anonstruct_ldv_12193_141 ldv_12193 ;
   struct slab *slab_page ;
   struct callback_head callback_head ;
   pgtable_t pmd_huge_pte ;
};
union __anonunion_ldv_12204_142 {
   unsigned long private ;
   spinlock_t *ptl ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   union __anonunion_ldv_12163_133 ldv_12163 ;
   struct __anonstruct_ldv_12186_134 ldv_12186 ;
   union __anonunion_ldv_12198_140 ldv_12198 ;
   union __anonunion_ldv_12204_142 ldv_12204 ;
   unsigned long debug_flags ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_144 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_143 {
   struct __anonstruct_linear_144 linear ;
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
   union __anonunion_shared_143 shared ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
union __anonunion_ldv_12534_145 {
   struct iovec const *iov ;
   struct bio_vec const *bvec ;
};
struct iov_iter {
   int type ;
   size_t iov_offset ;
   size_t count ;
   union __anonunion_ldv_12534_145 ldv_12534 ;
   unsigned long nr_segs ;
};
typedef unsigned short __kernel_sa_family_t;
struct cred;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
enum ldv_13278 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_13278 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct sock;
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
struct kiocb;
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
struct ctl_table;
struct mem_cgroup;
union __anonunion_ldv_13917_146 {
   unsigned long bitmap[4U] ;
   struct callback_head callback_head ;
};
struct idr_layer {
   int prefix ;
   int layer ;
   struct idr_layer *ary[256U] ;
   int count ;
   union __anonunion_ldv_13917_146 ldv_13917 ;
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
union __anonunion_ldv_14061_147 {
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
   union __anonunion_ldv_14061_147 ldv_14061 ;
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
struct user_namespace;
struct __anonstruct_kuid_t_148 {
   uid_t val ;
};
typedef struct __anonstruct_kuid_t_148 kuid_t;
struct __anonstruct_kgid_t_149 {
   gid_t val ;
};
typedef struct __anonstruct_kgid_t_149 kgid_t;
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
struct __anonstruct_ldv_14953_151 {
   struct callback_head callback_head ;
   struct kmem_cache *memcg_caches[0U] ;
};
struct __anonstruct_ldv_14959_152 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   atomic_t nr_pages ;
};
union __anonunion_ldv_14960_150 {
   struct __anonstruct_ldv_14953_151 ldv_14953 ;
   struct __anonstruct_ldv_14959_152 ldv_14959 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_14960_150 ldv_14960 ;
};
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
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
typedef s32 dma_cookie_t;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct plist_head {
   struct list_head node_list ;
};
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
struct __anonstruct_ldv_22930_167 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_22932_166 {
   struct __anonstruct_ldv_22930_167 ldv_22930 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_22932_166 ldv_22932 ;
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
union __anonunion_ldv_23076_168 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_23084_169 {
   time_t expiry ;
   time_t revoked_at ;
};
struct __anonstruct_ldv_23097_171 {
   struct key_type *type ;
   char *description ;
};
union __anonunion_ldv_23098_170 {
   struct keyring_index_key index_key ;
   struct __anonstruct_ldv_23097_171 ldv_23097 ;
};
union __anonunion_type_data_172 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_174 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   void *data2[2U] ;
};
union __anonunion_ldv_23113_173 {
   union __anonunion_payload_174 payload ;
   struct assoc_array keys ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_23076_168 ldv_23076 ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_23084_169 ldv_23084 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   union __anonunion_ldv_23098_170 ldv_23098 ;
   union __anonunion_type_data_172 type_data ;
   union __anonunion_ldv_23113_173 ldv_23113 ;
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
struct __anonstruct_ldv_24862_179 {
   u32 stamp_us ;
   u32 stamp_jiffies ;
};
union __anonunion_ldv_24863_178 {
   u64 v64 ;
   struct __anonstruct_ldv_24862_179 ldv_24862 ;
};
struct skb_mstamp {
   union __anonunion_ldv_24863_178 ldv_24863 ;
};
union __anonunion_ldv_24882_180 {
   ktime_t tstamp ;
   struct skb_mstamp skb_mstamp ;
};
struct sec_path;
struct __anonstruct_ldv_24898_182 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_24899_181 {
   __wsum csum ;
   struct __anonstruct_ldv_24898_182 ldv_24898 ;
};
union __anonunion_ldv_24938_183 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion_ldv_24944_184 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   union __anonunion_ldv_24882_180 ldv_24882 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_24899_181 ldv_24899 ;
   __u32 priority ;
   unsigned char ignore_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_hash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   unsigned char encap_hdr_csum : 1 ;
   unsigned char csum_valid : 1 ;
   unsigned char csum_complete_sw : 1 ;
   union __anonunion_ldv_24938_183 ldv_24938 ;
   __u32 secmark ;
   union __anonunion_ldv_24944_184 ldv_24944 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct usb_interface;
struct ieee80211_vif;
struct ieee80211_hw;
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
union __anonunion_ldv_26640_189 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_26640_189 ldv_26640 ;
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
typedef unsigned long kernel_ulong_t;
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
struct tasklet_struct {
   struct tasklet_struct *next ;
   unsigned long state ;
   atomic_t count ;
   void (*func)(unsigned long ) ;
   unsigned long data ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_29148_196 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_29149_195 {
   struct __anonstruct_ldv_29148_196 ldv_29148 ;
};
struct lockref {
   union __anonunion_ldv_29149_195 ldv_29149 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_29172_198 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_29174_197 {
   struct __anonstruct_ldv_29172_198 ldv_29172 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_29174_197 ldv_29174 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_199 {
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
   union __anonunion_d_u_199 d_u ;
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
struct __anonstruct_ldv_29535_201 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_29537_200 {
   struct __anonstruct_ldv_29535_201 ldv_29535 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_29537_200 ldv_29537 ;
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
struct cgroup_subsys_state;
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
struct __anonstruct_kprojid_t_202 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_202 kprojid_t;
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
union __anonunion_ldv_30062_203 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_30062_203 ldv_30062 ;
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
union __anonunion_ldv_30476_206 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_30496_207 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_30513_208 {
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
   union __anonunion_ldv_30476_206 ldv_30476 ;
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
   union __anonunion_ldv_30496_207 ldv_30496 ;
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
   union __anonunion_ldv_30513_208 ldv_30513 ;
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
union __anonunion_f_u_209 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_209 f_u ;
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
struct __anonstruct_afs_211 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_210 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_211 afs ;
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
   union __anonunion_fl_u_210 fl_u ;
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
struct usb_device;
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
   unsigned char reset_running : 1 ;
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
struct urb;
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
union __anonunion_data_212 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_212 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
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
struct __anonstruct_sync_serial_settings_213 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_213 sync_serial_settings;
struct __anonstruct_te1_settings_214 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_214 te1_settings;
struct __anonstruct_raw_hdlc_proto_215 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_215 raw_hdlc_proto;
struct __anonstruct_fr_proto_216 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_216 fr_proto;
struct __anonstruct_fr_proto_pvc_217 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_217 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_218 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_218 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_219 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_219 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_220 {
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
   union __anonunion_ifs_ifsu_220 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_221 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_222 {
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
   union __anonunion_ifr_ifrn_221 ifr_ifrn ;
   union __anonunion_ifr_ifru_222 ifr_ifru ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
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
   char reserved1[32U] ;
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
   int (*get_rxfh)(struct net_device * , u32 * , u8 * ) ;
   int (*set_rxfh)(struct net_device * , u32 const * , u8 const * ) ;
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
   unsigned long mibs[8U] ;
};
struct linux_mib {
   unsigned long mibs[103U] ;
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
   int nqueues ;
   struct list_head lru_list ;
   spinlock_t lru_lock ;
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
   int sysctl_fwmark_reflect ;
   int sysctl_tcp_fwmark_accept ;
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
   atomic_t rt_genid ;
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
   u16 max_dsize ;
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
   bool ulog_warn_deprecated ;
   bool ebt_ulog_warn_deprecated ;
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
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
   unsigned int sysctl_log_invalid ;
   unsigned int sysctl_events_retry_timeout ;
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
   u8 gencursor ;
   u8 genctr ;
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
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
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
   unsigned int proc_inum ;
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
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
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
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
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
   atomic_t count ;
   unsigned int *pcpu_count ;
   percpu_ref_func_t *release ;
   percpu_ref_func_t *confirm_kill ;
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
   unsigned int child_subsys_mask ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroup_root *root ;
   struct list_head cset_links ;
   struct list_head e_csets[12U] ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   wait_queue_head_t offline_waitq ;
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
   void (*css_free)(struct cgroup_subsys_state * ) ;
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
   struct cftype *base_cftypes ;
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
struct phy_device;
struct wireless_dev;
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
struct netdev_phys_port_id {
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
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ,
                             u32 ) ;
   int (*ndo_bridge_dellink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_change_carrier)(struct net_device * , bool ) ;
   int (*ndo_get_phys_port_id)(struct net_device * , struct netdev_phys_port_id * ) ;
   void (*ndo_add_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void (*ndo_del_vxlan_port)(struct net_device * , sa_family_t , __be16 ) ;
   void *(*ndo_dfwd_add_station)(struct net_device * , struct net_device * ) ;
   void (*ndo_dfwd_del_station)(struct net_device * , void * ) ;
   netdev_tx_t (*ndo_dfwd_start_xmit)(struct sk_buff * , struct net_device * , void * ) ;
   int (*ndo_get_lock_subclass)(struct net_device * ) ;
};
struct __anonstruct_adj_list_249 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_250 {
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
union __anonunion_ldv_41268_251 {
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
   struct __anonstruct_adj_list_249 adj_list ;
   struct __anonstruct_all_adj_list_250 all_adj_list ;
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
   unsigned long last_rx ;
   unsigned char *dev_addr ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
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
   union __anonunion_ldv_41268_251 ldv_41268 ;
   struct garp_port *garp_port ;
   struct mrp_port *mrp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct attribute_group const *sysfs_rx_queue_group ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
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
struct iw_param {
   __s32 value ;
   __u8 fixed ;
   __u8 disabled ;
   __u16 flags ;
};
struct iw_point {
   void *pointer ;
   __u16 length ;
   __u16 flags ;
};
struct iw_freq {
   __s32 m ;
   __s16 e ;
   __u8 i ;
   __u8 flags ;
};
struct iw_quality {
   __u8 qual ;
   __u8 level ;
   __u8 noise ;
   __u8 updated ;
};
struct iw_discarded {
   __u32 nwid ;
   __u32 code ;
   __u32 fragment ;
   __u32 retries ;
   __u32 misc ;
};
struct iw_missed {
   __u32 beacon ;
};
struct iw_statistics {
   __u16 status ;
   struct iw_quality qual ;
   struct iw_discarded discard ;
   struct iw_missed miss ;
};
union iwreq_data {
   char name[16U] ;
   struct iw_point essid ;
   struct iw_param nwid ;
   struct iw_freq freq ;
   struct iw_param sens ;
   struct iw_param bitrate ;
   struct iw_param txpower ;
   struct iw_param rts ;
   struct iw_param frag ;
   __u32 mode ;
   struct iw_param retry ;
   struct iw_point encoding ;
   struct iw_param power ;
   struct iw_quality qual ;
   struct sockaddr ap_addr ;
   struct sockaddr addr ;
   struct iw_param param ;
   struct iw_point data ;
};
struct iw_priv_args {
   __u32 cmd ;
   __u16 set_args ;
   __u16 get_args ;
   char name[16U] ;
};
struct iw_request_info {
   __u16 cmd ;
   __u16 flags ;
};
typedef int (*iw_handler)(struct net_device * , struct iw_request_info * , union iwreq_data * ,
                          char * );
struct iw_handler_def {
   iw_handler (* const *standard)(struct net_device * , struct iw_request_info * ,
                                   union iwreq_data * , char * ) ;
   __u16 num_standard ;
   __u16 num_private ;
   __u16 num_private_args ;
   iw_handler (* const *private)(struct net_device * , struct iw_request_info * ,
                                  union iwreq_data * , char * ) ;
   struct iw_priv_args const *private_args ;
   struct iw_statistics *(*get_wireless_stats)(struct net_device * ) ;
};
struct iw_spy_data {
   int spy_number ;
   u_char spy_address[8U][6U] ;
   struct iw_quality spy_stat[8U] ;
   struct iw_quality spy_thr_low ;
   struct iw_quality spy_thr_high ;
   u_char spy_thr_under[8U] ;
};
struct libipw_device;
struct iw_public_data {
   struct iw_spy_data *spy_data ;
   struct libipw_device *libipw ;
};
struct firmware {
   size_t size ;
   u8 const *data ;
   struct page **pages ;
   void *priv ;
};
enum led_brightness {
    LED_OFF = 0,
    LED_HALF = 127,
    LED_FULL = 255
} ;
struct led_trigger;
struct led_classdev {
   char const *name ;
   int brightness ;
   int max_brightness ;
   int flags ;
   void (*brightness_set)(struct led_classdev * , enum led_brightness ) ;
   enum led_brightness (*brightness_get)(struct led_classdev * ) ;
   int (*blink_set)(struct led_classdev * , unsigned long * , unsigned long * ) ;
   struct device *dev ;
   struct list_head node ;
   char const *default_trigger ;
   unsigned long blink_delay_on ;
   unsigned long blink_delay_off ;
   struct timer_list blink_timer ;
   int blink_brightness ;
   struct work_struct set_brightness_work ;
   int delayed_set_value ;
   struct rw_semaphore trigger_lock ;
   struct led_trigger *trigger ;
   struct list_head trig_list ;
   void *trigger_data ;
   bool activated ;
};
struct led_trigger {
   char const *name ;
   void (*activate)(struct led_classdev * ) ;
   void (*deactivate)(struct led_classdev * ) ;
   rwlock_t leddev_list_lock ;
   struct list_head led_cdevs ;
   struct list_head next_trig ;
};
struct ieee80211_hdr {
   __le16 frame_control ;
   __le16 duration_id ;
   u8 addr1[6U] ;
   u8 addr2[6U] ;
   u8 addr3[6U] ;
   __le16 seq_ctrl ;
   u8 addr4[6U] ;
};
struct ieee80211_msrment_ie {
   u8 token ;
   u8 mode ;
   u8 type ;
   u8 request[0U] ;
};
struct ieee80211_ext_chansw_ie {
   u8 mode ;
   u8 new_operating_class ;
   u8 new_ch_num ;
   u8 count ;
};
struct __anonstruct_auth_254 {
   __le16 auth_alg ;
   __le16 auth_transaction ;
   __le16 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_deauth_255 {
   __le16 reason_code ;
};
struct __anonstruct_assoc_req_256 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 variable[0U] ;
};
struct __anonstruct_assoc_resp_257 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_resp_258 {
   __le16 capab_info ;
   __le16 status_code ;
   __le16 aid ;
   u8 variable[0U] ;
};
struct __anonstruct_reassoc_req_259 {
   __le16 capab_info ;
   __le16 listen_interval ;
   u8 current_ap[6U] ;
   u8 variable[0U] ;
};
struct __anonstruct_disassoc_260 {
   __le16 reason_code ;
};
struct __anonstruct_beacon_261 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_probe_req_262 {
   u8 variable[0U] ;
};
struct __anonstruct_probe_resp_263 {
   __le64 timestamp ;
   __le16 beacon_int ;
   __le16 capab_info ;
   u8 variable[0U] ;
};
struct __anonstruct_wme_action_266 {
   u8 action_code ;
   u8 dialog_token ;
   u8 status_code ;
   u8 variable[0U] ;
};
struct __anonstruct_chan_switch_267 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_ext_chan_switch_268 {
   u8 action_code ;
   struct ieee80211_ext_chansw_ie data ;
   u8 variable[0U] ;
};
struct __anonstruct_measurement_269 {
   u8 action_code ;
   u8 dialog_token ;
   u8 element_id ;
   u8 length ;
   struct ieee80211_msrment_ie msr_elem ;
};
struct __anonstruct_addba_req_270 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capab ;
   __le16 timeout ;
   __le16 start_seq_num ;
};
struct __anonstruct_addba_resp_271 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 status ;
   __le16 capab ;
   __le16 timeout ;
};
struct __anonstruct_delba_272 {
   u8 action_code ;
   __le16 params ;
   __le16 reason_code ;
};
struct __anonstruct_self_prot_273 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_mesh_action_274 {
   u8 action_code ;
   u8 variable[0U] ;
};
struct __anonstruct_sa_query_275 {
   u8 action ;
   u8 trans_id[2U] ;
};
struct __anonstruct_ht_smps_276 {
   u8 action ;
   u8 smps_control ;
};
struct __anonstruct_ht_notify_cw_277 {
   u8 action_code ;
   u8 chanwidth ;
};
struct __anonstruct_tdls_discover_resp_278 {
   u8 action_code ;
   u8 dialog_token ;
   __le16 capability ;
   u8 variable[0U] ;
};
struct __anonstruct_vht_opmode_notif_279 {
   u8 action_code ;
   u8 operating_mode ;
};
union __anonunion_u_265 {
   struct __anonstruct_wme_action_266 wme_action ;
   struct __anonstruct_chan_switch_267 chan_switch ;
   struct __anonstruct_ext_chan_switch_268 ext_chan_switch ;
   struct __anonstruct_measurement_269 measurement ;
   struct __anonstruct_addba_req_270 addba_req ;
   struct __anonstruct_addba_resp_271 addba_resp ;
   struct __anonstruct_delba_272 delba ;
   struct __anonstruct_self_prot_273 self_prot ;
   struct __anonstruct_mesh_action_274 mesh_action ;
   struct __anonstruct_sa_query_275 sa_query ;
   struct __anonstruct_ht_smps_276 ht_smps ;
   struct __anonstruct_ht_notify_cw_277 ht_notify_cw ;
   struct __anonstruct_tdls_discover_resp_278 tdls_discover_resp ;
   struct __anonstruct_vht_opmode_notif_279 vht_opmode_notif ;
};
struct __anonstruct_action_264 {
   u8 category ;
   union __anonunion_u_265 u ;
};
union __anonunion_u_253 {
   struct __anonstruct_auth_254 auth ;
   struct __anonstruct_deauth_255 deauth ;
   struct __anonstruct_assoc_req_256 assoc_req ;
   struct __anonstruct_assoc_resp_257 assoc_resp ;
   struct __anonstruct_reassoc_resp_258 reassoc_resp ;
   struct __anonstruct_reassoc_req_259 reassoc_req ;
   struct __anonstruct_disassoc_260 disassoc ;
   struct __anonstruct_beacon_261 beacon ;
   struct __anonstruct_probe_req_262 probe_req ;
   struct __anonstruct_probe_resp_263 probe_resp ;
   struct __anonstruct_action_264 action ;
};
struct ieee80211_mgmt {
   __le16 frame_control ;
   __le16 duration ;
   u8 da[6U] ;
   u8 sa[6U] ;
   u8 bssid[6U] ;
   __le16 seq_ctrl ;
   union __anonunion_u_253 u ;
};
struct ieee80211_p2p_noa_desc {
   u8 count ;
   __le32 duration ;
   __le32 interval ;
   __le32 start_time ;
};
struct ieee80211_p2p_noa_attr {
   u8 index ;
   u8 oppps_ctwindow ;
   struct ieee80211_p2p_noa_desc desc[4U] ;
};
struct ieee80211_mcs_info {
   u8 rx_mask[10U] ;
   __le16 rx_highest ;
   u8 tx_params ;
   u8 reserved[3U] ;
};
struct ieee80211_ht_cap {
   __le16 cap_info ;
   u8 ampdu_params_info ;
   struct ieee80211_mcs_info mcs ;
   __le16 extended_ht_cap_info ;
   __le32 tx_BF_cap_info ;
   u8 antenna_selection_info ;
};
struct ieee80211_vht_mcs_info {
   __le16 rx_mcs_map ;
   __le16 rx_highest ;
   __le16 tx_mcs_map ;
   __le16 tx_highest ;
};
struct ieee80211_vht_cap {
   __le32 vht_cap_info ;
   struct ieee80211_vht_mcs_info supp_mcs ;
};
enum nl80211_iftype {
    NL80211_IFTYPE_UNSPECIFIED = 0,
    NL80211_IFTYPE_ADHOC = 1,
    NL80211_IFTYPE_STATION = 2,
    NL80211_IFTYPE_AP = 3,
    NL80211_IFTYPE_AP_VLAN = 4,
    NL80211_IFTYPE_WDS = 5,
    NL80211_IFTYPE_MONITOR = 6,
    NL80211_IFTYPE_MESH_POINT = 7,
    NL80211_IFTYPE_P2P_CLIENT = 8,
    NL80211_IFTYPE_P2P_GO = 9,
    NL80211_IFTYPE_P2P_DEVICE = 10,
    NUM_NL80211_IFTYPES = 11,
    NL80211_IFTYPE_MAX = 10
} ;
enum nl80211_reg_initiator {
    NL80211_REGDOM_SET_BY_CORE = 0,
    NL80211_REGDOM_SET_BY_USER = 1,
    NL80211_REGDOM_SET_BY_DRIVER = 2,
    NL80211_REGDOM_SET_BY_COUNTRY_IE = 3
} ;
enum nl80211_dfs_regions {
    NL80211_DFS_UNSET = 0,
    NL80211_DFS_FCC = 1,
    NL80211_DFS_ETSI = 2,
    NL80211_DFS_JP = 3
} ;
enum nl80211_user_reg_hint_type {
    NL80211_USER_REG_HINT_USER = 0,
    NL80211_USER_REG_HINT_CELL_BASE = 1,
    NL80211_USER_REG_HINT_INDOOR = 2
} ;
enum nl80211_chan_width {
    NL80211_CHAN_WIDTH_20_NOHT = 0,
    NL80211_CHAN_WIDTH_20 = 1,
    NL80211_CHAN_WIDTH_40 = 2,
    NL80211_CHAN_WIDTH_80 = 3,
    NL80211_CHAN_WIDTH_80P80 = 4,
    NL80211_CHAN_WIDTH_160 = 5,
    NL80211_CHAN_WIDTH_5 = 6,
    NL80211_CHAN_WIDTH_10 = 7
} ;
enum nl80211_bss_scan_width {
    NL80211_BSS_CHAN_WIDTH_20 = 0,
    NL80211_BSS_CHAN_WIDTH_10 = 1,
    NL80211_BSS_CHAN_WIDTH_5 = 2
} ;
enum nl80211_auth_type {
    NL80211_AUTHTYPE_OPEN_SYSTEM = 0,
    NL80211_AUTHTYPE_SHARED_KEY = 1,
    NL80211_AUTHTYPE_FT = 2,
    NL80211_AUTHTYPE_NETWORK_EAP = 3,
    NL80211_AUTHTYPE_SAE = 4,
    __NL80211_AUTHTYPE_NUM = 5,
    NL80211_AUTHTYPE_MAX = 4,
    NL80211_AUTHTYPE_AUTOMATIC = 5
} ;
enum nl80211_mfp {
    NL80211_MFP_NO = 0,
    NL80211_MFP_REQUIRED = 1
} ;
enum nl80211_txrate_gi {
    NL80211_TXRATE_DEFAULT_GI = 0,
    NL80211_TXRATE_FORCE_SGI = 1,
    NL80211_TXRATE_FORCE_LGI = 2
} ;
struct nl80211_wowlan_tcp_data_seq {
   __u32 start ;
   __u32 offset ;
   __u32 len ;
};
struct nl80211_wowlan_tcp_data_token {
   __u32 offset ;
   __u32 len ;
   __u8 token_stream[] ;
};
struct nl80211_wowlan_tcp_data_token_feature {
   __u32 min_len ;
   __u32 max_len ;
   __u32 bufsize ;
};
enum nl80211_dfs_state {
    NL80211_DFS_USABLE = 0,
    NL80211_DFS_UNAVAILABLE = 1,
    NL80211_DFS_AVAILABLE = 2
} ;
struct nl80211_vendor_cmd_info {
   __u32 vendor_id ;
   __u32 subcmd ;
};
enum environment_cap {
    ENVIRON_ANY = 0,
    ENVIRON_INDOOR = 1,
    ENVIRON_OUTDOOR = 2
} ;
struct regulatory_request {
   struct callback_head callback_head ;
   int wiphy_idx ;
   enum nl80211_reg_initiator initiator ;
   enum nl80211_user_reg_hint_type user_reg_hint_type ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   bool intersect ;
   bool processed ;
   enum environment_cap country_ie_env ;
   struct list_head list ;
};
struct ieee80211_freq_range {
   u32 start_freq_khz ;
   u32 end_freq_khz ;
   u32 max_bandwidth_khz ;
};
struct ieee80211_power_rule {
   u32 max_antenna_gain ;
   u32 max_eirp ;
};
struct ieee80211_reg_rule {
   struct ieee80211_freq_range freq_range ;
   struct ieee80211_power_rule power_rule ;
   u32 flags ;
   u32 dfs_cac_ms ;
};
struct ieee80211_regdomain {
   struct callback_head callback_head ;
   u32 n_reg_rules ;
   char alpha2[2U] ;
   enum nl80211_dfs_regions dfs_region ;
   struct ieee80211_reg_rule reg_rules[] ;
};
struct wiphy;
enum ieee80211_band {
    IEEE80211_BAND_2GHZ = 0,
    IEEE80211_BAND_5GHZ = 1,
    IEEE80211_BAND_60GHZ = 2,
    IEEE80211_NUM_BANDS = 3
} ;
struct ieee80211_channel {
   enum ieee80211_band band ;
   u16 center_freq ;
   u16 hw_value ;
   u32 flags ;
   int max_antenna_gain ;
   int max_power ;
   int max_reg_power ;
   bool beacon_found ;
   u32 orig_flags ;
   int orig_mag ;
   int orig_mpwr ;
   enum nl80211_dfs_state dfs_state ;
   unsigned long dfs_state_entered ;
   unsigned int dfs_cac_ms ;
};
struct ieee80211_rate {
   u32 flags ;
   u16 bitrate ;
   u16 hw_value ;
   u16 hw_value_short ;
};
struct ieee80211_sta_ht_cap {
   u16 cap ;
   bool ht_supported ;
   u8 ampdu_factor ;
   u8 ampdu_density ;
   struct ieee80211_mcs_info mcs ;
};
struct ieee80211_sta_vht_cap {
   bool vht_supported ;
   u32 cap ;
   struct ieee80211_vht_mcs_info vht_mcs ;
};
struct ieee80211_supported_band {
   struct ieee80211_channel *channels ;
   struct ieee80211_rate *bitrates ;
   enum ieee80211_band band ;
   int n_channels ;
   int n_bitrates ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
};
struct cfg80211_chan_def {
   struct ieee80211_channel *chan ;
   enum nl80211_chan_width width ;
   u32 center_freq1 ;
   u32 center_freq2 ;
};
struct survey_info {
   struct ieee80211_channel *channel ;
   u64 channel_time ;
   u64 channel_time_busy ;
   u64 channel_time_ext_busy ;
   u64 channel_time_rx ;
   u64 channel_time_tx ;
   u32 filled ;
   s8 noise ;
};
struct cfg80211_crypto_settings {
   u32 wpa_versions ;
   u32 cipher_group ;
   int n_ciphers_pairwise ;
   u32 ciphers_pairwise[5U] ;
   int n_akm_suites ;
   u32 akm_suites[2U] ;
   bool control_port ;
   __be16 control_port_ethertype ;
   bool control_port_no_encrypt ;
};
struct mac_address {
   u8 addr[6U] ;
};
struct cfg80211_ssid {
   u8 ssid[32U] ;
   u8 ssid_len ;
};
struct cfg80211_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   u32 rates[3U] ;
   struct wireless_dev *wdev ;
   struct wiphy *wiphy ;
   unsigned long scan_start ;
   bool aborted ;
   bool notified ;
   bool no_cck ;
   struct ieee80211_channel *channels[0U] ;
};
struct cfg80211_match_set {
   struct cfg80211_ssid ssid ;
   s32 rssi_thold ;
};
struct cfg80211_sched_scan_request {
   struct cfg80211_ssid *ssids ;
   int n_ssids ;
   u32 n_channels ;
   enum nl80211_bss_scan_width scan_width ;
   u32 interval ;
   u8 const *ie ;
   size_t ie_len ;
   u32 flags ;
   struct cfg80211_match_set *match_sets ;
   int n_match_sets ;
   s32 min_rssi_thold ;
   struct wiphy *wiphy ;
   struct net_device *dev ;
   unsigned long scan_start ;
   struct ieee80211_channel *channels[0U] ;
};
enum cfg80211_signal_type {
    CFG80211_SIGNAL_TYPE_NONE = 0,
    CFG80211_SIGNAL_TYPE_MBM = 1,
    CFG80211_SIGNAL_TYPE_UNSPEC = 2
} ;
struct cfg80211_ibss_params {
   u8 const *ssid ;
   u8 const *bssid ;
   struct cfg80211_chan_def chandef ;
   u8 const *ie ;
   u8 ssid_len ;
   u8 ie_len ;
   u16 beacon_interval ;
   u32 basic_rates ;
   bool channel_fixed ;
   bool privacy ;
   bool control_port ;
   bool userspace_handles_dfs ;
   int mcast_rate[3U] ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
};
struct cfg80211_connect_params {
   struct ieee80211_channel *channel ;
   struct ieee80211_channel *channel_hint ;
   u8 const *bssid ;
   u8 const *bssid_hint ;
   u8 const *ssid ;
   size_t ssid_len ;
   enum nl80211_auth_type auth_type ;
   u8 const *ie ;
   size_t ie_len ;
   bool privacy ;
   enum nl80211_mfp mfp ;
   struct cfg80211_crypto_settings crypto ;
   u8 const *key ;
   u8 key_len ;
   u8 key_idx ;
   u32 flags ;
   int bg_scan_period ;
   struct ieee80211_ht_cap ht_capa ;
   struct ieee80211_ht_cap ht_capa_mask ;
   struct ieee80211_vht_cap vht_capa ;
   struct ieee80211_vht_cap vht_capa_mask ;
};
struct __anonstruct_control_289 {
   u32 legacy ;
   u8 ht_mcs[10U] ;
   u16 vht_mcs[8U] ;
   enum nl80211_txrate_gi gi ;
};
struct cfg80211_bitrate_mask {
   struct __anonstruct_control_289 control[3U] ;
};
struct cfg80211_pkt_pattern {
   u8 const *mask ;
   u8 const *pattern ;
   int pattern_len ;
   int pkt_offset ;
};
struct cfg80211_wowlan_tcp {
   struct socket *sock ;
   __be32 src ;
   __be32 dst ;
   u16 src_port ;
   u16 dst_port ;
   u8 dst_mac[6U] ;
   int payload_len ;
   u8 const *payload ;
   struct nl80211_wowlan_tcp_data_seq payload_seq ;
   u32 data_interval ;
   u32 wake_len ;
   u8 const *wake_data ;
   u8 const *wake_mask ;
   u32 tokens_size ;
   struct nl80211_wowlan_tcp_data_token payload_tok ;
};
struct cfg80211_wowlan {
   bool any ;
   bool disconnect ;
   bool magic_pkt ;
   bool gtk_rekey_failure ;
   bool eap_identity_req ;
   bool four_way_handshake ;
   bool rfkill_release ;
   struct cfg80211_pkt_pattern *patterns ;
   struct cfg80211_wowlan_tcp *tcp ;
   int n_patterns ;
};
struct cfg80211_gtk_rekey_data {
   u8 kek[16U] ;
   u8 kck[16U] ;
   u8 replay_ctr[8U] ;
};
struct ieee80211_iface_limit {
   u16 max ;
   u16 types ;
};
struct ieee80211_iface_combination {
   struct ieee80211_iface_limit const *limits ;
   u32 num_different_channels ;
   u16 max_interfaces ;
   u8 n_limits ;
   bool beacon_int_infra_match ;
   u8 radar_detect_widths ;
   u8 radar_detect_regions ;
};
struct ieee80211_txrx_stypes {
   u16 tx ;
   u16 rx ;
};
struct wiphy_wowlan_tcp_support {
   struct nl80211_wowlan_tcp_data_token_feature const *tok ;
   u32 data_payload_max ;
   u32 data_interval_max ;
   u32 wake_payload_max ;
   bool seq ;
};
struct wiphy_wowlan_support {
   u32 flags ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
   struct wiphy_wowlan_tcp_support const *tcp ;
};
struct wiphy_coalesce_support {
   int n_rules ;
   int max_delay ;
   int n_patterns ;
   int pattern_max_len ;
   int pattern_min_len ;
   int max_pkt_offset ;
};
struct wiphy_vendor_command {
   struct nl80211_vendor_cmd_info info ;
   u32 flags ;
   int (*doit)(struct wiphy * , struct wireless_dev * , void const * , int ) ;
};
struct wiphy {
   u8 perm_addr[6U] ;
   u8 addr_mask[6U] ;
   struct mac_address *addresses ;
   struct ieee80211_txrx_stypes const *mgmt_stypes ;
   struct ieee80211_iface_combination const *iface_combinations ;
   int n_iface_combinations ;
   u16 software_iftypes ;
   u16 n_addresses ;
   u16 interface_modes ;
   u16 max_acl_mac_addrs ;
   u32 flags ;
   u32 regulatory_flags ;
   u32 features ;
   u32 ap_sme_capa ;
   enum cfg80211_signal_type signal_type ;
   int bss_priv_size ;
   u8 max_scan_ssids ;
   u8 max_sched_scan_ssids ;
   u8 max_match_sets ;
   u16 max_scan_ie_len ;
   u16 max_sched_scan_ie_len ;
   int n_cipher_suites ;
   u32 const *cipher_suites ;
   u8 retry_short ;
   u8 retry_long ;
   u32 frag_threshold ;
   u32 rts_threshold ;
   u8 coverage_class ;
   char fw_version[32U] ;
   u32 hw_version ;
   struct wiphy_wowlan_support const *wowlan ;
   struct cfg80211_wowlan *wowlan_config ;
   u16 max_remain_on_channel_duration ;
   u8 max_num_pmkids ;
   u32 available_antennas_tx ;
   u32 available_antennas_rx ;
   u32 probe_resp_offload ;
   u8 const *extended_capabilities ;
   u8 const *extended_capabilities_mask ;
   u8 extended_capabilities_len ;
   void const *privid ;
   struct ieee80211_supported_band *bands[3U] ;
   void (*reg_notifier)(struct wiphy * , struct regulatory_request * ) ;
   struct ieee80211_regdomain const *regd ;
   struct device dev ;
   bool registered ;
   struct dentry *debugfsdir ;
   struct ieee80211_ht_cap const *ht_capa_mod_mask ;
   struct ieee80211_vht_cap const *vht_capa_mod_mask ;
   struct net *_net ;
   struct iw_handler_def const *wext ;
   struct wiphy_coalesce_support const *coalesce ;
   struct wiphy_vendor_command const *vendor_commands ;
   struct nl80211_vendor_cmd_info const *vendor_events ;
   int n_vendor_commands ;
   int n_vendor_events ;
   u16 max_ap_assoc_sta ;
   u8 max_num_csa_counters ;
   u8 max_adj_channel_rssi_comp ;
   char priv[0U] ;
};
struct cfg80211_conn;
struct cfg80211_internal_bss;
struct cfg80211_cached_keys;
struct __anonstruct_wext_290 {
   struct cfg80211_ibss_params ibss ;
   struct cfg80211_connect_params connect ;
   struct cfg80211_cached_keys *keys ;
   u8 const *ie ;
   size_t ie_len ;
   u8 bssid[6U] ;
   u8 prev_bssid[6U] ;
   u8 ssid[32U] ;
   s8 default_key ;
   s8 default_mgmt_key ;
   bool prev_bssid_valid ;
};
struct wireless_dev {
   struct wiphy *wiphy ;
   enum nl80211_iftype iftype ;
   struct list_head list ;
   struct net_device *netdev ;
   u32 identifier ;
   struct list_head mgmt_registrations ;
   spinlock_t mgmt_registrations_lock ;
   struct mutex mtx ;
   bool use_4addr ;
   bool p2p_started ;
   u8 address[6U] ;
   u8 ssid[32U] ;
   u8 ssid_len ;
   u8 mesh_id_len ;
   u8 mesh_id_up_len ;
   struct cfg80211_conn *conn ;
   struct cfg80211_cached_keys *connect_keys ;
   struct list_head event_list ;
   spinlock_t event_lock ;
   struct cfg80211_internal_bss *current_bss ;
   struct cfg80211_chan_def preset_chandef ;
   struct cfg80211_chan_def chandef ;
   bool ibss_fixed ;
   bool ibss_dfs_possible ;
   bool ps ;
   int ps_timeout ;
   int beacon_interval ;
   u32 ap_unexpected_nlportid ;
   bool cac_started ;
   unsigned long cac_start_time ;
   unsigned int cac_time_ms ;
   u32 owner_nlportid ;
   struct __anonstruct_wext_290 wext ;
};
struct ieee80211_tx_queue_params {
   u16 txop ;
   u16 cw_min ;
   u16 cw_max ;
   u8 aifs ;
   bool acm ;
   bool uapsd ;
};
struct ieee80211_low_level_stats {
   unsigned int dot11ACKFailureCount ;
   unsigned int dot11RTSFailureCount ;
   unsigned int dot11FCSErrorCount ;
   unsigned int dot11RTSSuccessCount ;
};
struct ieee80211_chanctx_conf {
   struct cfg80211_chan_def def ;
   struct cfg80211_chan_def min_def ;
   u8 rx_chains_static ;
   u8 rx_chains_dynamic ;
   bool radar_enabled ;
   u8 drv_priv[0U] ;
};
enum ieee80211_chanctx_switch_mode {
    CHANCTX_SWMODE_REASSIGN_VIF = 0,
    CHANCTX_SWMODE_SWAP_CONTEXTS = 1
} ;
struct ieee80211_vif_chanctx_switch {
   struct ieee80211_vif *vif ;
   struct ieee80211_chanctx_conf *old_ctx ;
   struct ieee80211_chanctx_conf *new_ctx ;
};
enum ieee80211_rssi_event {
    RSSI_EVENT_HIGH = 0,
    RSSI_EVENT_LOW = 1
} ;
struct ieee80211_bss_conf {
   u8 const *bssid ;
   bool assoc ;
   bool ibss_joined ;
   bool ibss_creator ;
   u16 aid ;
   bool use_cts_prot ;
   bool use_short_preamble ;
   bool use_short_slot ;
   bool enable_beacon ;
   u8 dtim_period ;
   u16 beacon_int ;
   u16 assoc_capability ;
   u64 sync_tsf ;
   u32 sync_device_ts ;
   u8 sync_dtim_count ;
   u32 basic_rates ;
   struct ieee80211_rate *beacon_rate ;
   int mcast_rate[3U] ;
   u16 ht_operation_mode ;
   s32 cqm_rssi_thold ;
   u32 cqm_rssi_hyst ;
   struct cfg80211_chan_def chandef ;
   __be32 arp_addr_list[4U] ;
   int arp_addr_cnt ;
   bool qos ;
   bool idle ;
   bool ps ;
   u8 ssid[32U] ;
   size_t ssid_len ;
   bool hidden_ssid ;
   int txpower ;
   struct ieee80211_p2p_noa_attr p2p_noa_attr ;
};
struct ieee80211_tx_rate {
   s8 idx ;
   unsigned char count : 5 ;
   unsigned short flags : 11 ;
};
struct __anonstruct_ldv_47275_294 {
   struct ieee80211_tx_rate rates[4U] ;
   s8 rts_cts_rate_idx ;
   unsigned char use_rts : 1 ;
   unsigned char use_cts_prot : 1 ;
   unsigned char short_preamble : 1 ;
   unsigned char skip_table : 1 ;
};
union __anonunion_ldv_47277_293 {
   struct __anonstruct_ldv_47275_294 ldv_47275 ;
   unsigned long jiffies ;
};
struct ieee80211_key_conf;
struct __anonstruct_control_292 {
   union __anonunion_ldv_47277_293 ldv_47277 ;
   struct ieee80211_vif *vif ;
   struct ieee80211_key_conf *hw_key ;
   u32 flags ;
};
struct __anonstruct_status_295 {
   struct ieee80211_tx_rate rates[4U] ;
   s32 ack_signal ;
   u8 ampdu_ack_len ;
   u8 ampdu_len ;
   u8 antenna ;
   void *status_driver_data[2U] ;
};
struct __anonstruct_ldv_47295_296 {
   struct ieee80211_tx_rate driver_rates[4U] ;
   u8 pad[4U] ;
   void *rate_driver_data[3U] ;
};
union __anonunion_ldv_47297_291 {
   struct __anonstruct_control_292 control ;
   struct __anonstruct_status_295 status ;
   struct __anonstruct_ldv_47295_296 ldv_47295 ;
   void *driver_data[5U] ;
};
struct ieee80211_tx_info {
   u32 flags ;
   u8 band ;
   u8 hw_queue ;
   u16 ack_frame_id ;
   union __anonunion_ldv_47297_291 ldv_47297 ;
};
struct ieee80211_sched_scan_ies {
   u8 *ie[3U] ;
   size_t len[3U] ;
};
struct ieee80211_rx_status;
struct ieee80211_rx_status {
   u64 mactime ;
   u32 device_timestamp ;
   u32 ampdu_reference ;
   u32 flag ;
   u16 freq ;
   u8 vht_flag ;
   u8 rate_idx ;
   u8 vht_nss ;
   u8 rx_flags ;
   u8 band ;
   u8 antenna ;
   s8 signal ;
   u8 chains ;
   s8 chain_signal[4U] ;
   u8 ampdu_delimiter_crc ;
};
enum ieee80211_smps_mode {
    IEEE80211_SMPS_AUTOMATIC = 0,
    IEEE80211_SMPS_OFF = 1,
    IEEE80211_SMPS_STATIC = 2,
    IEEE80211_SMPS_DYNAMIC = 3,
    IEEE80211_SMPS_NUM_MODES = 4
} ;
struct ieee80211_conf {
   u32 flags ;
   int power_level ;
   int dynamic_ps_timeout ;
   int max_sleep_period ;
   u16 listen_interval ;
   u8 ps_dtim_period ;
   u8 long_frame_max_tx_count ;
   u8 short_frame_max_tx_count ;
   struct cfg80211_chan_def chandef ;
   bool radar_enabled ;
   enum ieee80211_smps_mode smps_mode ;
};
struct ieee80211_channel_switch {
   u64 timestamp ;
   bool block_tx ;
   struct cfg80211_chan_def chandef ;
   u8 count ;
};
struct ieee80211_vif {
   enum nl80211_iftype type ;
   struct ieee80211_bss_conf bss_conf ;
   u8 addr[6U] ;
   bool p2p ;
   bool csa_active ;
   u8 cab_queue ;
   u8 hw_queue[4U] ;
   struct ieee80211_chanctx_conf *chanctx_conf ;
   u32 driver_flags ;
   struct dentry *debugfs_dir ;
   u8 drv_priv[0U] ;
};
struct ieee80211_key_conf {
   u32 cipher ;
   u8 icv_len ;
   u8 iv_len ;
   u8 hw_key_idx ;
   u8 flags ;
   s8 keyidx ;
   u8 keylen ;
   u8 key[0U] ;
};
struct ieee80211_cipher_scheme {
   u32 cipher ;
   u16 iftype ;
   u8 hdr_len ;
   u8 pn_len ;
   u8 pn_off ;
   u8 key_idx_off ;
   u8 key_idx_mask ;
   u8 key_idx_shift ;
   u8 mic_len ;
};
enum set_key_cmd {
    SET_KEY = 0,
    DISABLE_KEY = 1
} ;
enum ieee80211_sta_state {
    IEEE80211_STA_NOTEXIST = 0,
    IEEE80211_STA_NONE = 1,
    IEEE80211_STA_AUTH = 2,
    IEEE80211_STA_ASSOC = 3,
    IEEE80211_STA_AUTHORIZED = 4
} ;
enum ieee80211_sta_rx_bandwidth {
    IEEE80211_STA_RX_BW_20 = 0,
    IEEE80211_STA_RX_BW_40 = 1,
    IEEE80211_STA_RX_BW_80 = 2,
    IEEE80211_STA_RX_BW_160 = 3
} ;
struct __anonstruct_rate_297 {
   s8 idx ;
   u8 count ;
   u8 count_cts ;
   u8 count_rts ;
   u16 flags ;
};
struct ieee80211_sta_rates {
   struct callback_head callback_head ;
   struct __anonstruct_rate_297 rate[4U] ;
};
struct ieee80211_sta {
   u32 supp_rates[3U] ;
   u8 addr[6U] ;
   u16 aid ;
   struct ieee80211_sta_ht_cap ht_cap ;
   struct ieee80211_sta_vht_cap vht_cap ;
   bool wme ;
   u8 uapsd_queues ;
   u8 max_sp ;
   u8 rx_nss ;
   enum ieee80211_sta_rx_bandwidth bandwidth ;
   enum ieee80211_smps_mode smps_mode ;
   struct ieee80211_sta_rates *rates ;
   bool tdls ;
   u8 drv_priv[0U] ;
};
enum sta_notify_cmd {
    STA_NOTIFY_SLEEP = 0,
    STA_NOTIFY_AWAKE = 1
} ;
struct ieee80211_tx_control {
   struct ieee80211_sta *sta ;
};
struct ieee80211_hw {
   struct ieee80211_conf conf ;
   struct wiphy *wiphy ;
   char const *rate_control_algorithm ;
   void *priv ;
   u32 flags ;
   unsigned int extra_tx_headroom ;
   unsigned int extra_beacon_tailroom ;
   int vif_data_size ;
   int sta_data_size ;
   int chanctx_data_size ;
   u16 queues ;
   u16 max_listen_interval ;
   s8 max_signal ;
   u8 max_rates ;
   u8 max_report_rates ;
   u8 max_rate_tries ;
   u8 max_rx_aggregation_subframes ;
   u8 max_tx_aggregation_subframes ;
   u8 offchannel_tx_hw_queue ;
   u8 radiotap_mcs_details ;
   u16 radiotap_vht_details ;
   netdev_features_t netdev_features ;
   u8 uapsd_queues ;
   u8 uapsd_max_sp_len ;
   u8 n_cipher_schemes ;
   struct ieee80211_cipher_scheme const *cipher_schemes ;
};
enum ieee80211_ampdu_mlme_action {
    IEEE80211_AMPDU_RX_START = 0,
    IEEE80211_AMPDU_RX_STOP = 1,
    IEEE80211_AMPDU_TX_START = 2,
    IEEE80211_AMPDU_TX_STOP_CONT = 3,
    IEEE80211_AMPDU_TX_STOP_FLUSH = 4,
    IEEE80211_AMPDU_TX_STOP_FLUSH_CONT = 5,
    IEEE80211_AMPDU_TX_OPERATIONAL = 6
} ;
enum ieee80211_frame_release_type {
    IEEE80211_FRAME_RELEASE_PSPOLL = 0,
    IEEE80211_FRAME_RELEASE_UAPSD = 1
} ;
enum ieee80211_roc_type {
    IEEE80211_ROC_TYPE_NORMAL = 0,
    IEEE80211_ROC_TYPE_MGMT_TX = 1
} ;
struct ieee80211_ops {
   void (*tx)(struct ieee80211_hw * , struct ieee80211_tx_control * , struct sk_buff * ) ;
   int (*start)(struct ieee80211_hw * ) ;
   void (*stop)(struct ieee80211_hw * ) ;
   int (*suspend)(struct ieee80211_hw * , struct cfg80211_wowlan * ) ;
   int (*resume)(struct ieee80211_hw * ) ;
   void (*set_wakeup)(struct ieee80211_hw * , bool ) ;
   int (*add_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*change_interface)(struct ieee80211_hw * , struct ieee80211_vif * , enum nl80211_iftype ,
                           bool ) ;
   void (*remove_interface)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*config)(struct ieee80211_hw * , u32 ) ;
   void (*bss_info_changed)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_bss_conf * ,
                            u32 ) ;
   int (*start_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*stop_ap)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u64 (*prepare_multicast)(struct ieee80211_hw * , struct netdev_hw_addr_list * ) ;
   void (*configure_filter)(struct ieee80211_hw * , unsigned int , unsigned int * ,
                            u64 ) ;
   int (*set_tim)(struct ieee80211_hw * , struct ieee80211_sta * , bool ) ;
   int (*set_key)(struct ieee80211_hw * , enum set_key_cmd , struct ieee80211_vif * ,
                  struct ieee80211_sta * , struct ieee80211_key_conf * ) ;
   void (*update_tkip_key)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_key_conf * ,
                           struct ieee80211_sta * , u32 , u16 * ) ;
   void (*set_rekey_data)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_gtk_rekey_data * ) ;
   void (*set_default_unicast_key)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                   int ) ;
   int (*hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_scan_request * ) ;
   void (*cancel_hw_scan)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*sched_scan_start)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_sched_scan_request * ,
                           struct ieee80211_sched_scan_ies * ) ;
   int (*sched_scan_stop)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*sw_scan_start)(struct ieee80211_hw * ) ;
   void (*sw_scan_complete)(struct ieee80211_hw * ) ;
   int (*get_stats)(struct ieee80211_hw * , struct ieee80211_low_level_stats * ) ;
   void (*get_tkip_seq)(struct ieee80211_hw * , u8 , u32 * , u16 * ) ;
   int (*set_frag_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*set_rts_threshold)(struct ieee80211_hw * , u32 ) ;
   int (*sta_add)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   int (*sta_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_add_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                           struct dentry * ) ;
   void (*sta_remove_debugfs)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                              struct dentry * ) ;
   void (*sta_notify)(struct ieee80211_hw * , struct ieee80211_vif * , enum sta_notify_cmd ,
                      struct ieee80211_sta * ) ;
   int (*sta_state)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                    enum ieee80211_sta_state , enum ieee80211_sta_state ) ;
   void (*sta_pre_rcu_remove)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ) ;
   void (*sta_rc_update)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                         u32 ) ;
   int (*conf_tx)(struct ieee80211_hw * , struct ieee80211_vif * , u16 , struct ieee80211_tx_queue_params const * ) ;
   u64 (*get_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*set_tsf)(struct ieee80211_hw * , struct ieee80211_vif * , u64 ) ;
   void (*reset_tsf)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*tx_last_beacon)(struct ieee80211_hw * ) ;
   int (*ampdu_action)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_ampdu_mlme_action ,
                       struct ieee80211_sta * , u16 , u16 * , u8 ) ;
   int (*get_survey)(struct ieee80211_hw * , int , struct survey_info * ) ;
   void (*rfkill_poll)(struct ieee80211_hw * ) ;
   void (*set_coverage_class)(struct ieee80211_hw * , u8 ) ;
   int (*testmode_cmd)(struct ieee80211_hw * , struct ieee80211_vif * , void * , int ) ;
   int (*testmode_dump)(struct ieee80211_hw * , struct sk_buff * , struct netlink_callback * ,
                        void * , int ) ;
   void (*flush)(struct ieee80211_hw * , struct ieee80211_vif * , u32 , bool ) ;
   void (*channel_switch)(struct ieee80211_hw * , struct ieee80211_channel_switch * ) ;
   int (*set_antenna)(struct ieee80211_hw * , u32 , u32 ) ;
   int (*get_antenna)(struct ieee80211_hw * , u32 * , u32 * ) ;
   int (*remain_on_channel)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_channel * ,
                            int , enum ieee80211_roc_type ) ;
   int (*cancel_remain_on_channel)(struct ieee80211_hw * ) ;
   int (*set_ringparam)(struct ieee80211_hw * , u32 , u32 ) ;
   void (*get_ringparam)(struct ieee80211_hw * , u32 * , u32 * , u32 * , u32 * ) ;
   bool (*tx_frames_pending)(struct ieee80211_hw * ) ;
   int (*set_bitrate_mask)(struct ieee80211_hw * , struct ieee80211_vif * , struct cfg80211_bitrate_mask const * ) ;
   void (*rssi_callback)(struct ieee80211_hw * , struct ieee80211_vif * , enum ieee80211_rssi_event ) ;
   void (*allow_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                 u16 , int , enum ieee80211_frame_release_type ,
                                 bool ) ;
   void (*release_buffered_frames)(struct ieee80211_hw * , struct ieee80211_sta * ,
                                   u16 , int , enum ieee80211_frame_release_type ,
                                   bool ) ;
   int (*get_et_sset_count)(struct ieee80211_hw * , struct ieee80211_vif * , int ) ;
   void (*get_et_stats)(struct ieee80211_hw * , struct ieee80211_vif * , struct ethtool_stats * ,
                        u64 * ) ;
   void (*get_et_strings)(struct ieee80211_hw * , struct ieee80211_vif * , u32 ,
                          u8 * ) ;
   int (*get_rssi)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_sta * ,
                   s8 * ) ;
   void (*mgd_prepare_tx)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   int (*add_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*remove_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ) ;
   void (*change_chanctx)(struct ieee80211_hw * , struct ieee80211_chanctx_conf * ,
                          u32 ) ;
   int (*assign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   void (*unassign_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif * , struct ieee80211_chanctx_conf * ) ;
   int (*switch_vif_chanctx)(struct ieee80211_hw * , struct ieee80211_vif_chanctx_switch * ,
                             int , enum ieee80211_chanctx_switch_mode ) ;
   void (*restart_complete)(struct ieee80211_hw * ) ;
   void (*ipv6_addr_change)(struct ieee80211_hw * , struct ieee80211_vif * , struct inet6_dev * ) ;
   void (*channel_switch_beacon)(struct ieee80211_hw * , struct ieee80211_vif * ,
                                 struct cfg80211_chan_def * ) ;
   int (*join_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   void (*leave_ibss)(struct ieee80211_hw * , struct ieee80211_vif * ) ;
   u32 (*get_expected_throughput)(struct ieee80211_sta * ) ;
};
enum board_type {
    BOARD_503_ISL3861 = 1,
    BOARD_503_ISL3863 = 2,
    BOARD_503 = 3,
    BOARD_503_ACC = 4,
    BOARD_505 = 5,
    BOARD_505_2958 = 6,
    BOARD_505A = 7,
    BOARD_505AMX = 8
} ;
struct hwcfg_r505 {
   u8 cr39_values[14U] ;
   u8 reserved1[14U] ;
   u8 bb_cr[14U] ;
   u8 pidvid[4U] ;
   u8 mac_addr[6U] ;
   u8 regulatory_domain ;
   u8 reserved2[14U] ;
   u8 cr15_values[14U] ;
   u8 reserved3[3U] ;
};
struct hwcfg_rfmd {
   u8 cr20_values[14U] ;
   u8 cr21_values[14U] ;
   u8 bb_cr[14U] ;
   u8 pidvid[4U] ;
   u8 mac_addr[6U] ;
   u8 regulatory_domain ;
   u8 low_power_values[14U] ;
   u8 normal_power_values[14U] ;
   u8 reserved1[3U] ;
};
struct hwcfg_intersil {
   u8 mac_addr[6U] ;
   u8 cr31_values[14U] ;
   u8 cr58_values[14U] ;
   u8 pidvid[4U] ;
   u8 regulatory_domain ;
   u8 reserved[1U] ;
};
union at76_hwcfg {
   struct hwcfg_intersil i ;
   struct hwcfg_rfmd r3 ;
   struct hwcfg_r505 r5 ;
};
struct at76_card_config {
   u8 exclude_unencrypted ;
   u8 promiscuous_mode ;
   u8 short_retry_limit ;
   u8 encryption_type ;
   __le16 rts_threshold ;
   __le16 fragmentation_threshold ;
   u8 basic_rate_set[4U] ;
   u8 auto_rate_fallback ;
   u8 channel ;
   u8 privacy_invoked ;
   u8 wep_default_key_id ;
   u8 current_ssid[32U] ;
   u8 wep_default_key_value[4U][13U] ;
   u8 ssid_len ;
   u8 short_preamble ;
   __le16 beacon_period ;
};
struct at76_command {
   u8 cmd ;
   u8 reserved ;
   __le16 size ;
   u8 data[0U] ;
};
struct at76_rx_buffer {
   __le16 wlength ;
   u8 rx_rate ;
   u8 newbss ;
   u8 fragmentation ;
   u8 rssi ;
   u8 link_quality ;
   u8 noise_level ;
   __le32 rx_time ;
   u8 packet[2352U] ;
};
struct at76_tx_buffer {
   __le16 wlength ;
   u8 tx_rate ;
   u8 padding ;
   u8 reserved[4U] ;
   u8 packet[2352U] ;
};
struct at76_req_scan {
   u8 bssid[6U] ;
   u8 essid[32U] ;
   u8 scan_type ;
   u8 channel ;
   __le16 probe_delay ;
   __le16 min_channel_time ;
   __le16 max_channel_time ;
   u8 essid_size ;
   u8 international_scan ;
};
struct at76_req_join {
   u8 bssid[6U] ;
   u8 essid[32U] ;
   u8 bss_type ;
   u8 channel ;
   __le16 timeout ;
   u8 essid_size ;
   u8 reserved ;
};
struct mib_local {
   u16 reserved0 ;
   u8 beacon_enable ;
   u8 txautorate_fallback ;
   u8 reserved1 ;
   u8 ssid_size ;
   u8 promiscuous_mode ;
   u16 reserved2 ;
   u8 preamble_type ;
   u16 reserved3 ;
};
struct mib_mac_addr {
   u8 mac_addr[6U] ;
   u8 res[2U] ;
   u8 group_addr[4U][6U] ;
   u8 group_addr_status[4U] ;
};
struct mib_mac {
   __le32 max_tx_msdu_lifetime ;
   __le32 max_rx_lifetime ;
   __le16 frag_threshold ;
   __le16 rts_threshold ;
   __le16 cwmin ;
   __le16 cwmax ;
   u8 short_retry_time ;
   u8 long_retry_time ;
   u8 scan_type ;
   u8 scan_channel ;
   __le16 probe_delay ;
   __le16 min_channel_time ;
   __le16 max_channel_time ;
   __le16 listen_interval ;
   u8 desired_ssid[32U] ;
   u8 desired_bssid[6U] ;
   u8 desired_bsstype ;
   u8 reserved2 ;
};
struct mib_mac_mgmt {
   __le16 beacon_period ;
   __le16 CFP_max_duration ;
   __le16 medium_occupancy_limit ;
   __le16 station_id ;
   __le16 ATIM_window ;
   u8 CFP_mode ;
   u8 privacy_option_implemented ;
   u8 DTIM_period ;
   u8 CFP_period ;
   u8 current_bssid[6U] ;
   u8 current_essid[32U] ;
   u8 current_bss_type ;
   u8 power_mgmt_mode ;
   u8 ibss_change ;
   u8 res ;
   u8 multi_domain_capability_implemented ;
   u8 multi_domain_capability_enabled ;
   u8 country_string[3U] ;
   u8 reserved[3U] ;
};
struct mib_mac_wep {
   u8 privacy_invoked ;
   u8 wep_default_key_id ;
   u8 wep_key_mapping_len ;
   u8 exclude_unencrypted ;
   __le32 wep_icv_error_count ;
   __le32 wep_excluded_count ;
   u8 wep_default_keyvalue[4U][13U] ;
   u8 encryption_level ;
};
struct mib_phy {
   __le32 ed_threshold ;
   __le16 slot_time ;
   __le16 sifs_time ;
   __le16 preamble_length ;
   __le16 plcp_header_length ;
   __le16 mpdu_max_length ;
   __le16 cca_mode_supported ;
   u8 operation_rate_set[4U] ;
   u8 channel_id ;
   u8 current_cca_mode ;
   u8 phy_type ;
   u8 current_reg_domain ;
};
struct mib_fw_version {
   u8 major ;
   u8 minor ;
   u8 patch ;
   u8 build ;
};
struct mib_mdomain {
   u8 tx_powerlevel[14U] ;
   u8 channel_list[14U] ;
};
union __anonunion_data_303 {
   u8 byte ;
   __le16 word ;
   u8 addr[6U] ;
   struct mib_mac_wep wep_mib ;
};
struct set_mib_buffer {
   u8 type ;
   u8 size ;
   u8 index ;
   u8 reserved ;
   union __anonunion_data_303 data ;
};
struct at76_fw_header {
   __le32 crc ;
   __le32 board_type ;
   u8 build ;
   u8 patch ;
   u8 minor ;
   u8 major ;
   __le32 str_offset ;
   __le32 int_fw_offset ;
   __le32 int_fw_len ;
   __le32 ext_fw_offset ;
   __le32 ext_fw_len ;
};
struct reg_domain {
   u16 code ;
   char const *name ;
   u32 channel_map ;
};
struct fwentry {
   char const * const fwname ;
   struct firmware const *fw ;
   int extfw_size ;
   int intfw_size ;
   u8 *extfw ;
   u8 *intfw ;
   enum board_type board_type ;
   struct mib_fw_version fw_version ;
   int loaded ;
};
struct at76_priv {
   struct usb_device *udev ;
   struct sk_buff *rx_skb ;
   struct sk_buff *tx_skb ;
   void *bulk_out_buffer ;
   struct urb *tx_urb ;
   struct urb *rx_urb ;
   unsigned int tx_pipe ;
   unsigned int rx_pipe ;
   struct mutex mtx ;
   struct work_struct work_set_promisc ;
   struct work_struct work_submit_rx ;
   struct work_struct work_join_bssid ;
   struct delayed_work dwork_hw_scan ;
   struct tasklet_struct rx_tasklet ;
   int wep_enabled ;
   int wep_key_id ;
   u8 wep_keys[4U][13U] ;
   u8 wep_keys_len[4U] ;
   int channel ;
   int iw_mode ;
   u8 bssid[6U] ;
   u8 essid[32U] ;
   int essid_size ;
   int radio_on ;
   int promisc ;
   int preamble_type ;
   int auth_mode ;
   int txrate ;
   int frag_threshold ;
   int rts_threshold ;
   int short_retry_limit ;
   int scan_min_time ;
   int scan_max_time ;
   int scan_mode ;
   int scan_need_any ;
   bool scanning ;
   u16 assoc_id ;
   u8 pm_mode ;
   u32 pm_period ;
   struct reg_domain const *domain ;
   u8 mac_addr[6U] ;
   u8 regulatory_domain ;
   struct at76_card_config card_config ;
   enum board_type board_type ;
   struct mib_fw_version fw_version ;
   unsigned char device_unplugged : 1 ;
   unsigned char netdev_registered : 1 ;
   struct set_mib_buffer mib_buf ;
   int beacon_period ;
   struct ieee80211_hw *hw ;
   int mac80211_registered ;
};
struct dfu_status {
   unsigned char status ;
   unsigned char poll_timeout[3U] ;
   unsigned char state ;
   unsigned char string ;
};
typedef int ldv_func_ret_type;
struct __anonstruct____missing_field_name_257 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion____missing_field_name_256 {
   __wsum csum ;
   struct __anonstruct____missing_field_name_257 __annonCompField63 ;
};
union __anonunion____missing_field_name_258 {
   unsigned int napi_id ;
   dma_cookie_t dma_cookie ;
};
union __anonunion____missing_field_name_259 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 reserved_tailroom ;
};
struct sk_buff___0 {
   struct sk_buff___0 *next ;
   struct sk_buff___0 *prev ;
   union __anonunion_ldv_24882_180 __annonCompField62 ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48] __attribute__((__aligned__(8))) ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion____missing_field_name_256 __annonCompField64 ;
   __u32 priority ;
   __u8 ignore_df : 1 ;
   __u8 cloned : 1 ;
   __u8 ip_summed : 2 ;
   __u8 nohdr : 1 ;
   __u8 nfctinfo : 3 ;
   __u8 pkt_type : 3 ;
   __u8 fclone : 2 ;
   __u8 ipvs_property : 1 ;
   __u8 peeked : 1 ;
   __u8 nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff___0 *skb ) ;
   struct nf_conntrack *nfct ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 hash ;
   __be16 vlan_proto ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   __u8 ndisc_nodetype : 2 ;
   __u8 pfmemalloc : 1 ;
   __u8 ooo_okay : 1 ;
   __u8 l4_hash : 1 ;
   __u8 wifi_acked_valid : 1 ;
   __u8 wifi_acked : 1 ;
   __u8 no_fcs : 1 ;
   __u8 head_frag : 1 ;
   __u8 encapsulation : 1 ;
   __u8 encap_hdr_csum : 1 ;
   __u8 csum_valid : 1 ;
   __u8 csum_complete_sw : 1 ;
   union __anonunion____missing_field_name_258 __annonCompField65 ;
   __u32 secmark ;
   union __anonunion____missing_field_name_259 __annonCompField66 ;
   __be16 inner_protocol ;
   __u16 inner_transport_header ;
   __u16 inner_network_header ;
   __u16 inner_mac_header ;
   __u16 transport_header ;
   __u16 network_header ;
   __u16 mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
typedef void *Element;
typedef Element Set;
long ldv__builtin_expect(long exp , long c ) ;
extern struct module __this_module ;
__inline static int test_and_set_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2, %0; setc %1": "+m" (*addr),
                       "=qm" (c): "Ir" (nr): "memory");
  return ((int )((signed char )c) != 0);
}
}
extern int printk(char const * , ...) ;
extern void print_hex_dump(char const * , char const * , int , int , int ,
                           void const * , size_t , bool ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern struct tvec_base boot_tvec_bases ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern bool cancel_delayed_work(struct delayed_work * ) ;
extern void kfree(void const * ) ;
extern void *ldv_malloc(size_t);
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
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
extern long schedule_timeout_interruptible(long ) ;
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_13(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 ) ;
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_push(struct sk_buff * , unsigned int ) ;
extern unsigned char *skb_pull(struct sk_buff * , unsigned int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static int skb_tailroom(struct sk_buff const *skb )
{
  bool tmp ;
  {
  tmp = skb_is_nonlinear(skb);
  return ((int )tmp ? 0 : (int )((unsigned int )skb->end - (unsigned int )skb->tail));
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length ) ;
extern struct sk_buff___0 *ldv_skb_alloc(void) ;
extern void ldv_skb_free(struct sk_buff___0 * ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
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
int ldv_state_variable_3 ;
int LDV_IN_INTERRUPT = 1;
int ldv_state_variable_2 ;
int ref_cnt ;
struct usb_interface *at76_driver_group1 ;
int ldv_state_variable_1 ;
int usb_counter ;
struct ieee80211_vif *at76_ops_group1 ;
int ldv_state_variable_0 ;
struct ieee80211_hw *at76_ops_group0 ;
void ldv_usb_driver_1(void) ;
void ldv_initialize_ieee80211_ops_2(void) ;
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_dir_out(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) >= 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_is_bulk_in(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_in(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static int usb_endpoint_is_bulk_out(struct usb_endpoint_descriptor const *epd )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = usb_endpoint_xfer_bulk(epd);
  if (tmp != 0) {
    tmp___0 = usb_endpoint_dir_out(epd);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
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
__inline static void *usb_get_intfdata(struct usb_interface *intf )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& intf->dev));
  return (tmp);
}
}
__inline static void usb_set_intfdata(struct usb_interface *intf , void *data )
{
  {
  dev_set_drvdata(& intf->dev, data);
  return;
}
}
__inline static struct usb_device *interface_to_usbdev(struct usb_interface *intf )
{
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)intf->dev.parent;
  return ((struct usb_device *)__mptr + 0xffffffffffffff70UL);
}
}
extern struct usb_device *usb_get_dev(struct usb_device * ) ;
extern void usb_put_dev(struct usb_device * ) ;
extern int usb_reset_device(struct usb_device * ) ;
extern int usb_register_driver(struct usb_driver * , struct module * , char const * ) ;
int ldv_usb_register_driver_14(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 ) ;
extern void usb_deregister(struct usb_driver * ) ;
void ldv_usb_deregister_15(struct usb_driver *arg ) ;
__inline static void usb_fill_bulk_urb(struct urb *urb , struct usb_device *dev ,
                                       unsigned int pipe , void *transfer_buffer ,
                                       int buffer_length , void (*complete_fn)(struct urb * ) ,
                                       void *context )
{
  {
  urb->dev = dev;
  urb->pipe = pipe;
  urb->transfer_buffer = transfer_buffer;
  urb->transfer_buffer_length = (u32 )buffer_length;
  urb->complete = complete_fn;
  urb->context = context;
  return;
}
}
extern struct urb *usb_alloc_urb(int , gfp_t ) ;
extern void usb_free_urb(struct urb * ) ;
extern int usb_submit_urb(struct urb * , gfp_t ) ;
extern void usb_kill_urb(struct urb * ) ;
extern int usb_control_msg(struct usb_device * , unsigned int , __u8 , __u8 , __u16 ,
                           __u16 , void * , __u16 , int ) ;
__inline static unsigned int __create_pipe(struct usb_device *dev , unsigned int endpoint )
{
  {
  return ((unsigned int )(dev->devnum << 8) | (endpoint << 15));
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
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return (((unsigned int )*((u32 const *)addr) | (unsigned int )*((u16 const *)addr + 4U)) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
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
__inline static bool ether_addr_equal_64bits(u8 const *addr1 , u8 const *addr2 )
{
  u64 fold ;
  {
  fold = (unsigned long long )*((u64 const *)addr1) ^ (unsigned long long )*((u64 const *)addr2);
  return (fold << 16 == 0ULL);
}
}
extern int request_firmware(struct firmware const ** , char const * , struct device * ) ;
extern void release_firmware(struct firmware const * ) ;
extern void led_trigger_register_simple(char const * , struct led_trigger ** ) ;
extern void led_trigger_unregister_simple(struct led_trigger * ) ;
extern void led_trigger_event(struct led_trigger * , enum led_brightness ) ;
__inline static int ieee80211_is_probe_resp(__le16 fc )
{
  {
  return (((int )fc & 252) == 80);
}
}
__inline static int ieee80211_is_beacon(__le16 fc )
{
  {
  return (((int )fc & 252) == 128);
}
}
__inline static void set_wiphy_dev(struct wiphy *wiphy , struct device *dev )
{
  {
  wiphy->dev.parent = dev;
  return;
}
}
__inline static char const *wiphy_name(struct wiphy const *wiphy )
{
  char const *tmp ;
  {
  tmp = dev_name(& wiphy->dev);
  return (tmp);
}
}
extern int ieee80211_channel_to_frequency(int , enum ieee80211_band ) ;
extern u8 const *cfg80211_find_ie(u8 , u8 const * , int ) ;
__inline static struct ieee80211_tx_info *IEEE80211_SKB_CB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_tx_info *)(& skb->cb));
}
}
__inline static struct ieee80211_rx_status *IEEE80211_SKB_RXCB(struct sk_buff *skb )
{
  {
  return ((struct ieee80211_rx_status *)(& skb->cb));
}
}
__inline static void SET_IEEE80211_DEV(struct ieee80211_hw *hw , struct device *dev )
{
  {
  set_wiphy_dev(hw->wiphy, dev);
  return;
}
}
__inline static void SET_IEEE80211_PERM_ADDR(struct ieee80211_hw *hw , u8 *addr )
{
  size_t __len ;
  void *__ret ;
  {
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& (hw->wiphy)->perm_addr), (void const *)addr, __len);
  } else {
    __ret = memcpy((void *)(& (hw->wiphy)->perm_addr), (void const *)addr,
                             __len);
  }
  return;
}
}
__inline static struct ieee80211_rate *ieee80211_get_tx_rate(struct ieee80211_hw const *hw ,
                                                             struct ieee80211_tx_info const *c )
{
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  __ret_warn_once = (int )((signed char )c->ldv_47297.control.ldv_47277.ldv_47275.rates[0].idx) < 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("include/net/mac80211.h", 1807);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    return ((struct ieee80211_rate *)0);
  } else {
  }
  return (((hw->wiphy)->bands[(int )c->band])->bitrates + (unsigned long )c->ldv_47297.control.ldv_47277.ldv_47275.rates[0].idx);
}
}
extern struct ieee80211_hw *ieee80211_alloc_hw(size_t , struct ieee80211_ops const * ) ;
extern int ieee80211_register_hw(struct ieee80211_hw * ) ;
extern void ieee80211_unregister_hw(struct ieee80211_hw * ) ;
extern void ieee80211_free_hw(struct ieee80211_hw * ) ;
extern void ieee80211_rx_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_tx_status_irqsafe(struct ieee80211_hw * , struct sk_buff * ) ;
extern void ieee80211_stop_queues(struct ieee80211_hw * ) ;
extern void ieee80211_wake_queues(struct ieee80211_hw * ) ;
extern void ieee80211_scan_completed(struct ieee80211_hw * , bool ) ;
extern void ieee80211_queue_work(struct ieee80211_hw * , struct work_struct * ) ;
extern void ieee80211_queue_delayed_work(struct ieee80211_hw * , struct delayed_work * ,
                                         unsigned long ) ;
static uint at76_debug = 0U;
static struct mutex fw_mutex ;
static struct fwentry firmwares[9U] =
  { {"", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0, (unsigned char)0,
                             (unsigned char)0}, 0},
        {"atmel_at76c503-i3861.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c503-i3863.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                     (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c503-rfmd.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                    (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c503-rfmd-acc.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                        (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c505-rfmd.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                    (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c505-rfmd2958.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                        (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c505a-rfmd2958.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                         (unsigned char)0, (unsigned char)0},
      0},
        {"atmel_at76c505amx-rfmd.bin", 0, 0, 0, 0, 0, 0, {(unsigned char)0, (unsigned char)0,
                                                       (unsigned char)0, (unsigned char)0},
      0}};
static struct usb_device_id dev_table[55U] =
  { {3U, 1003U, 30211U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1643U, 8721U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2148U, 16640U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 2875U, 5650U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1008U, 284U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3294U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1690U, 800U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3420U, 40961U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1189U, 36864U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1501U, 65329U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 32902U, 512U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3470U, 28928U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 3470U, 28944U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1211U, 2329U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1690U, 2081U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      1UL},
        {3U, 1003U, 30212U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 1373U, 40960U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      2UL},
        {3U, 1003U, 30213U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1690U, 801U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1915U, 8729U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1915U, 8743U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 2148U, 16642U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 8193U, 12800U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 5736U, 30213U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1003U, 16642U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 4977U, 22339U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 4977U, 1U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 4977U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1189U, 36865U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1286U, 2561U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1665U, 27U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1293U, 80U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1976U, 45056U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 4164U, 32771U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 8217U, 12832U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1183U, 50U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1962U, 17U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1962U, 24U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 1501U, 65333U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      3UL},
        {3U, 2106U, 13569U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 3420U, 40962U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      4UL},
        {3U, 1003U, 30214U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      5UL},
        {3U, 1003U, 30227U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 4977U, 20U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 4977U, 19U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 6421U, 8755U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 4861U, 4097U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 1962U, 30227U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 3504U, 4128U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      6UL},
        {3U, 1003U, 30228U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 1003U, 30231U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 5776U, 1793U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 5463U, 2U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      7UL},
        {3U, 1003U, 30229U, (unsigned short)0, (unsigned short)0, (unsigned char)0, (unsigned char)0,
      (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0, (unsigned char)0,
      8UL}};
struct usb_device_id const __mod_usb__dev_table_device_table ;
static u8 const hw_rates[4U] = { 130U, 132U, 11U, 22U};
static char const * const preambles[3U] = { "long", "short", "auto"};
__inline static int at76_is_intersil(enum board_type board )
{
  {
  return ((unsigned int )board == 1U || (unsigned int )board == 2U);
}
}
__inline static int at76_is_503rfmd(enum board_type board )
{
  {
  return ((unsigned int )board == 3U || (unsigned int )board == 4U);
}
}
__inline static int at76_is_505a(enum board_type board )
{
  {
  return ((unsigned int )board == 7U || (unsigned int )board == 8U);
}
}
static int at76_load_int_fw_block(struct usb_device *udev , int blockno , void *block ,
                                  int size )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  tmp = __create_pipe(udev, 0U);
  tmp___0 = usb_control_msg(udev, tmp | 2147483648U, 1, 33, (int )((__u16 )blockno),
                            0, block, (int )((__u16 )size), 5000);
  return (tmp___0);
}
}
static int at76_dfu_get_status(struct usb_device *udev , struct dfu_status *status )
{
  int ret ;
  unsigned int tmp ;
  {
  tmp = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp | 2147483776U, 3, 161, 0, 0, (void *)status, 6,
                        5000);
  return (ret);
}
}
static int at76_dfu_get_state(struct usb_device *udev , u8 *state )
{
  int ret ;
  unsigned int tmp ;
  {
  tmp = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp | 2147483776U, 5, 161, 0, 0, (void *)state, 1, 5000);
  return (ret);
}
}
__inline static unsigned long at76_get_timeout(struct dfu_status *s )
{
  unsigned long tmp ;
  {
  tmp = msecs_to_jiffies((unsigned int const )((((int )s->poll_timeout[2] << 16) | ((int )s->poll_timeout[1] << 8)) | (int )s->poll_timeout[0]));
  return (tmp);
}
}
static int at76_usbdfu_download(struct usb_device *udev , u8 *buf , u32 size , int manifest_sync_timeout )
{
  int ret ;
  int need_dfu_state ;
  int is_done ;
  u32 dfu_timeout ;
  int bsize ;
  int blockno ;
  struct dfu_status *dfu_stat_buf ;
  u8 *dfu_state ;
  u8 *block ;
  void *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  unsigned long tmp___2 ;
  int __min1 ;
  int __min2 ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___3 ;
  {
  ret = 0;
  need_dfu_state = 1;
  is_done = 0;
  dfu_timeout = 0U;
  bsize = 0;
  blockno = 0;
  dfu_stat_buf = (struct dfu_status *)0;
  dfu_state = (u8 *)0U;
  block = (u8 *)0U;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: %s( %p, %u, %d)\n", "at76_usbdfu_download", buf, size,
           manifest_sync_timeout);
  } else {
  }
  if (size == 0U) {
    dev_err((struct device const *)(& udev->dev), "FW buffer length invalid!\n");
    return (-22);
  } else {
  }
  tmp = kmalloc(6UL, 208U);
  dfu_stat_buf = (struct dfu_status *)tmp;
  if ((unsigned long )dfu_stat_buf == (unsigned long )((struct dfu_status *)0)) {
    ret = -12;
    goto exit;
  } else {
  }
  tmp___0 = kmalloc(1024UL, 208U);
  block = (u8 *)tmp___0;
  if ((unsigned long )block == (unsigned long )((u8 *)0U)) {
    ret = -12;
    goto exit;
  } else {
  }
  tmp___1 = kmalloc(1UL, 208U);
  dfu_state = (u8 *)tmp___1;
  if ((unsigned long )dfu_state == (unsigned long )((u8 *)0U)) {
    ret = -12;
    goto exit;
  } else {
  }
  *dfu_state = 0U;
  ldv_48801: ;
  if (need_dfu_state != 0) {
    ret = at76_dfu_get_state(udev, dfu_state);
    if (ret < 0) {
      dev_err((struct device const *)(& udev->dev), "cannot get DFU state: %d\n",
              ret);
      goto exit;
    } else {
    }
    need_dfu_state = 0;
  } else {
  }
  switch ((int )*dfu_state) {
  case 3: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_DOWNLOAD_SYNC\n");
  } else {
  }
  ret = at76_dfu_get_status(udev, dfu_stat_buf);
  if (ret >= 0) {
    *dfu_state = dfu_stat_buf->state;
    tmp___2 = at76_get_timeout(dfu_stat_buf);
    dfu_timeout = (u32 )tmp___2;
    need_dfu_state = 0;
  } else {
    dev_err((struct device const *)(& udev->dev), "at76_dfu_get_status returned %d\n",
            ret);
  }
  goto ldv_48785;
  case 4: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_DOWNLOAD_BUSY\n");
  } else {
  }
  need_dfu_state = 1;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: DFU: Resetting device\n");
  } else {
  }
  schedule_timeout_interruptible((long )dfu_timeout);
  goto ldv_48785;
  case 5: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: DOWNLOAD...\n");
  } else {
  }
  case 2: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: DFU IDLE\n");
  } else {
  }
  __min1 = (int )size;
  __min2 = 1024;
  bsize = __min1 < __min2 ? __min1 : __min2;
  __len = (size_t )bsize;
  __ret = memcpy((void *)block, (void const *)buf, __len);
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: int fw, size left = %5d, bsize = %4d, blockno = %2d\n",
           size, bsize, blockno);
  } else {
  }
  ret = at76_load_int_fw_block(udev, blockno, (void *)block, bsize);
  buf = buf + (unsigned long )bsize;
  size = size - (u32 )bsize;
  blockno = blockno + 1;
  if (ret != bsize) {
    dev_err((struct device const *)(& udev->dev), "at76_load_int_fw_block returned %d\n",
            ret);
  } else {
  }
  need_dfu_state = 1;
  goto ldv_48785;
  case 6: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_MANIFEST_SYNC\n");
  } else {
  }
  ret = at76_dfu_get_status(udev, dfu_stat_buf);
  if (ret < 0) {
    goto ldv_48785;
  } else {
  }
  *dfu_state = dfu_stat_buf->state;
  tmp___3 = at76_get_timeout(dfu_stat_buf);
  dfu_timeout = (u32 )tmp___3;
  need_dfu_state = 0;
  if (manifest_sync_timeout > 0) {
    dfu_timeout = (u32 )manifest_sync_timeout;
  } else {
  }
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: DFU: Waiting for manifest phase\n");
  } else {
  }
  schedule_timeout_interruptible((long )dfu_timeout);
  goto ldv_48785;
  case 7: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_MANIFEST\n");
  } else {
  }
  is_done = 1;
  goto ldv_48785;
  case 8: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_MANIFEST_WAIT_RESET\n");
  } else {
  }
  is_done = 1;
  goto ldv_48785;
  case 9: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_UPLOAD_IDLE\n");
  } else {
  }
  goto ldv_48785;
  case 10: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: STATE_DFU_ERROR\n");
  } else {
  }
  ret = -32;
  goto ldv_48785;
  default: ;
  if ((at76_debug & 536870912U) != 0U) {
    printk("\017at76c50x-usb: DFU UNKNOWN STATE (%d)\n", (int )*dfu_state);
  } else {
  }
  ret = -22;
  goto ldv_48785;
  }
  ldv_48785: ;
  if (is_done == 0 && ret >= 0) {
    goto ldv_48801;
  } else {
  }
  exit:
  kfree((void const *)dfu_state);
  kfree((void const *)block);
  kfree((void const *)dfu_stat_buf);
  if (ret >= 0) {
    ret = 0;
  } else {
  }
  return (ret);
}
}
static int tx_activity ;
static void at76_ledtrig_tx_timerfunc(unsigned long data ) ;
static struct timer_list ledtrig_tx_timer =
     {{0, (struct list_head *)1953723489}, 0UL, & boot_tvec_bases, & at76_ledtrig_tx_timerfunc,
    0UL, -1, 0, 0, {(char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                    (char)0, (char)0, (char)0, (char)0, (char)0, (char)0, (char)0,
                    (char)0, (char)0}, {(struct lock_class_key *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared:557",
                                        {0, 0}, "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared:557",
                                        0, 0UL}};
static struct led_trigger *ledtrig_tx ;
static void at76_ledtrig_tx_timerfunc(unsigned long data )
{
  int tx_lastactivity ;
  {
  if (tx_lastactivity != tx_activity) {
    tx_lastactivity = tx_activity;
    led_trigger_event(ledtrig_tx, 255);
    mod_timer(& ledtrig_tx_timer, (unsigned long )jiffies + 62UL);
  } else {
    led_trigger_event(ledtrig_tx, 0);
  }
  return;
}
}
static void at76_ledtrig_tx_activity(void)
{
  int tmp ;
  {
  tx_activity = tx_activity + 1;
  tmp = timer_pending((struct timer_list const *)(& ledtrig_tx_timer));
  if (tmp == 0) {
    mod_timer(& ledtrig_tx_timer, (unsigned long )jiffies + 62UL);
  } else {
  }
  return;
}
}
static int at76_remap(struct usb_device *udev )
{
  int ret ;
  unsigned int tmp ;
  {
  tmp = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp | 2147483648U, 10, 65, 0, 0, (void *)0, 0, 5000);
  if (ret < 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
static int at76_get_op_mode(struct usb_device *udev )
{
  int ret ;
  u8 saved ;
  u8 *op_mode ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = kmalloc(1UL, 16U);
  op_mode = (u8 *)tmp;
  if ((unsigned long )op_mode == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___0 = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp___0 | 2147483776U, 51, 193, 1, 0, (void *)op_mode,
                        1, 5000);
  saved = *op_mode;
  kfree((void const *)op_mode);
  if (ret < 0) {
    return (ret);
  } else
  if (ret <= 0) {
    return (-5);
  } else {
    return ((int )saved);
  }
}
}
__inline static int at76_load_ext_fw_block(struct usb_device *udev , int blockno ,
                                           void *block , int size )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  tmp = __create_pipe(udev, 0U);
  tmp___0 = usb_control_msg(udev, tmp | 2147483648U, 14, 64, 2050, (int )((__u16 )blockno),
                            block, (int )((__u16 )size), 5000);
  return (tmp___0);
}
}
__inline static int at76_get_hw_cfg(struct usb_device *udev , union at76_hwcfg *buf ,
                                    int buf_size )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  tmp = __create_pipe(udev, 0U);
  tmp___0 = usb_control_msg(udev, tmp | 2147483776U, 51, 193, 2562, 0, (void *)buf,
                            (int )((__u16 )buf_size), 5000);
  return (tmp___0);
}
}
__inline static int at76_get_hw_cfg_intersil(struct usb_device *udev , union at76_hwcfg *buf ,
                                             int buf_size )
{
  unsigned int tmp ;
  int tmp___0 ;
  {
  tmp = __create_pipe(udev, 0U);
  tmp___0 = usb_control_msg(udev, tmp | 2147483776U, 51, 193, 2306, 0, (void *)buf,
                            (int )((__u16 )buf_size), 5000);
  return (tmp___0);
}
}
static int at76_get_hw_config(struct at76_priv *priv )
{
  int ret ;
  union at76_hwcfg *hwcfg ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = kmalloc(84UL, 208U);
  hwcfg = (union at76_hwcfg *)tmp;
  if ((unsigned long )hwcfg == (unsigned long )((union at76_hwcfg *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = at76_is_intersil(priv->board_type);
  if (tmp___1 != 0) {
    ret = at76_get_hw_cfg_intersil(priv->udev, hwcfg, 40);
    if (ret < 0) {
      goto exit;
    } else {
    }
    __len = 6UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->i.mac_addr),
                       __len);
    } else {
      __ret = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->i.mac_addr),
                               __len);
    }
    priv->regulatory_domain = hwcfg->i.regulatory_domain;
  } else {
    tmp___0 = at76_is_503rfmd(priv->board_type);
    if (tmp___0 != 0) {
      ret = at76_get_hw_cfg(priv->udev, hwcfg, 84);
      if (ret < 0) {
        goto exit;
      } else {
      }
      __len___0 = 6UL;
      if (__len___0 > 63UL) {
        __ret___0 = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->r3.mac_addr),
                             __len___0);
      } else {
        __ret___0 = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->r3.mac_addr),
                                     __len___0);
      }
      priv->regulatory_domain = hwcfg->r3.regulatory_domain;
    } else {
      ret = at76_get_hw_cfg(priv->udev, hwcfg, 84);
      if (ret < 0) {
        goto exit;
      } else {
      }
      __len___1 = 6UL;
      if (__len___1 > 63UL) {
        __ret___1 = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->r5.mac_addr),
                             __len___1);
      } else {
        __ret___1 = memcpy((void *)(& priv->mac_addr), (void const *)(& hwcfg->r5.mac_addr),
                                     __len___1);
      }
      priv->regulatory_domain = hwcfg->r5.regulatory_domain;
    }
  }
  exit:
  kfree((void const *)hwcfg);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "cannot get HW Config (error %d)\n",
            ret);
  } else {
  }
  return (ret);
}
}
static struct reg_domain const *at76_get_reg_domain(u16 code )
{
  int i ;
  struct reg_domain fd_tab[9U] ;
  {
  fd_tab[0].code = 16U;
  fd_tab[0].name = "FCC (USA)";
  fd_tab[0].channel_map = 2047U;
  fd_tab[1].code = 32U;
  fd_tab[1].name = "IC (Canada)";
  fd_tab[1].channel_map = 2047U;
  fd_tab[2].code = 48U;
  fd_tab[2].name = "ETSI (most of Europe)";
  fd_tab[2].channel_map = 8191U;
  fd_tab[3].code = 49U;
  fd_tab[3].name = "Spain";
  fd_tab[3].channel_map = 1536U;
  fd_tab[4].code = 50U;
  fd_tab[4].name = "France";
  fd_tab[4].channel_map = 7680U;
  fd_tab[5].code = 64U;
  fd_tab[5].name = "MKK (Japan)";
  fd_tab[5].channel_map = 8192U;
  fd_tab[6].code = 65U;
  fd_tab[6].name = "MKK1 (Japan)";
  fd_tab[6].channel_map = 16383U;
  fd_tab[7].code = 80U;
  fd_tab[7].name = "Israel";
  fd_tab[7].channel_map = 1020U;
  fd_tab[8].code = 0U;
  fd_tab[8].name = "<unknown>";
  fd_tab[8].channel_map = 4294967295U;
  i = 0;
  goto ldv_48865;
  ldv_48864: ;
  if ((int )fd_tab[i].code == (int )code) {
    goto ldv_48863;
  } else {
  }
  i = i + 1;
  ldv_48865: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_48864;
  } else {
  }
  ldv_48863: ;
  return ((struct reg_domain const *)(& fd_tab) + (unsigned long )i);
}
}
__inline static int at76_get_mib(struct usb_device *udev , u16 mib , void *buf , int buf_size )
{
  int ret ;
  unsigned int tmp ;
  {
  tmp = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp | 2147483776U, 51, 193, (int )mib << 8U, 0, buf,
                        (int )((__u16 )buf_size), 5000);
  if (ret >= 0 && ret != buf_size) {
    return (-5);
  } else {
  }
  return (ret);
}
}
__inline static int at76_get_cmd_status(struct usb_device *udev , u8 cmd )
{
  u8 *stat_buf ;
  int ret ;
  void *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = kmalloc(40UL, 16U);
  stat_buf = (u8 *)tmp;
  if ((unsigned long )stat_buf == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  tmp___0 = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp___0 | 2147483776U, 34, 193, (int )cmd, 0, (void *)stat_buf,
                        40, 5000);
  if (ret >= 0) {
    ret = (int )*(stat_buf + 5UL);
  } else {
  }
  kfree((void const *)stat_buf);
  return (ret);
}
}
static char const *at76_get_cmd_string(u8 cmd_status )
{
  {
  switch ((int )cmd_status) {
  case 1: ;
  return ("CMD_SET_MIB");
  case 2: ;
  return ("CMD_GET_MIB");
  case 3: ;
  return ("CMD_SCAN");
  case 4: ;
  return ("CMD_JOIN");
  case 5: ;
  return ("CMD_START_IBSS");
  case 6: ;
  return ("CMD_RADIO_ON");
  case 7: ;
  return ("CMD_RADIO_OFF");
  case 11: ;
  return ("CMD_STARTUP");
  }
  return ("UNKNOWN");
}
}
static int at76_set_card_command(struct usb_device *udev , u8 cmd , void *buf , int buf_size )
{
  int ret ;
  struct at76_command *cmd_buf ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  char const *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = kmalloc((unsigned long )buf_size + 4UL, 208U);
  cmd_buf = (struct at76_command *)tmp;
  if ((unsigned long )cmd_buf == (unsigned long )((struct at76_command *)0)) {
    return (-12);
  } else {
  }
  cmd_buf->cmd = cmd;
  cmd_buf->reserved = 0U;
  cmd_buf->size = (unsigned short )buf_size;
  __len = (size_t )buf_size;
  __ret = memcpy((void *)(& cmd_buf->data), (void const *)buf, __len);
  if ((at76_debug & 1073741824U) != 0U) {
    tmp___0 = at76_get_cmd_string((int )cmd);
    printk("\017at76c50x-usb: issuing command %s (0x%02x)\n", tmp___0, (int )cmd);
    descriptor.modname = "at76c50x_usb";
    descriptor.function = "at76_set_card_command";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared";
    descriptor.format = "";
    descriptor.lineno = 777U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      print_hex_dump("\017", "", 2, 16, 1, (void const *)cmd_buf, (unsigned long )buf_size + 4UL,
                     1);
    } else {
    }
  } else {
  }
  tmp___2 = __create_pipe(udev, 0U);
  ret = usb_control_msg(udev, tmp___2 | 2147483648U, 14, 64, 0, 0, (void *)cmd_buf,
                        (int )((unsigned int )((__u16 )buf_size) + 4U), 5000);
  kfree((void const *)cmd_buf);
  return (ret);
}
}
static char const *at76_get_cmd_status_string(u8 cmd_status )
{
  {
  switch ((int )cmd_status) {
  case 0: ;
  return ("CMD_STATUS_IDLE");
  case 1: ;
  return ("CMD_STATUS_COMPLETE");
  case 2: ;
  return ("CMD_STATUS_UNKNOWN");
  case 3: ;
  return ("CMD_STATUS_INVALID_PARAMETER");
  case 4: ;
  return ("CMD_STATUS_FUNCTION_NOT_SUPPORTED");
  case 7: ;
  return ("CMD_STATUS_TIME_OUT");
  case 8: ;
  return ("CMD_STATUS_IN_PROGRESS");
  case 255: ;
  return ("CMD_STATUS_HOST_FAILURE");
  case 240: ;
  return ("CMD_STATUS_SCAN_FAILED");
  }
  return ("UNKNOWN");
}
}
static int at76_wait_completion(struct at76_priv *priv , int cmd )
{
  int status ;
  unsigned long timeout ;
  char const *tmp ;
  char const *tmp___0 ;
  {
  status = 0;
  timeout = (unsigned long )jiffies + 1250UL;
  ldv_48928:
  status = at76_get_cmd_status(priv->udev, (int )((u8 )cmd));
  if (status < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_cmd_status failed: %d\n",
            status);
    goto ldv_48921;
  } else {
  }
  if ((at76_debug & 2097152U) != 0U) {
    tmp = at76_get_cmd_status_string((int )((u8 )status));
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: Waiting on cmd %d, status = %d (%s)\n", tmp___0,
           cmd, status, tmp);
  } else {
  }
  if (status != 8 && status != 0) {
    goto ldv_48921;
  } else {
  }
  schedule_timeout_interruptible(25L);
  if ((long )(timeout - (unsigned long )jiffies) < 0L) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "completion timeout for command %d\n",
            cmd);
    status = -110;
    goto ldv_48921;
  } else {
  }
  goto ldv_48928;
  ldv_48921: ;
  return (status);
}
}
static int at76_set_mib(struct at76_priv *priv , struct set_mib_buffer *buf )
{
  int ret ;
  {
  ret = at76_set_card_command(priv->udev, 1, (void *)buf, (int )((unsigned int )buf->size + 4U));
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = at76_wait_completion(priv, 1);
  if (ret != 1) {
    _dev_info((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib: at76_wait_completion failed with %d\n",
              ret);
    ret = -5;
  } else {
  }
  return (ret);
}
}
static int at76_set_radio(struct at76_priv *priv , int enable )
{
  int ret ;
  int cmd ;
  {
  if (priv->radio_on == enable) {
    return (0);
  } else {
  }
  cmd = enable != 0 ? 6 : 7;
  ret = at76_set_card_command(priv->udev, (int )((u8 )cmd), (void *)0, 0);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_set_card_command(%d) failed: %d\n",
            cmd, ret);
  } else {
    ret = 1;
  }
  priv->radio_on = enable;
  return (ret);
}
}
static int at76_set_pm_mode(struct at76_priv *priv )
{
  int ret ;
  {
  ret = 0;
  priv->mib_buf.type = 5U;
  priv->mib_buf.size = 1U;
  priv->mib_buf.index = 53U;
  priv->mib_buf.data.byte = priv->pm_mode;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (pm_mode) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_set_preamble(struct at76_priv *priv , u8 type )
{
  int ret ;
  {
  ret = 0;
  priv->mib_buf.type = 1U;
  priv->mib_buf.size = 1U;
  priv->mib_buf.index = 9U;
  priv->mib_buf.data.byte = type;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (preamble) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_set_frag(struct at76_priv *priv , u16 size )
{
  int ret ;
  {
  ret = 0;
  priv->mib_buf.type = 3U;
  priv->mib_buf.size = 2U;
  priv->mib_buf.index = 8U;
  priv->mib_buf.data.word = size;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (frag threshold) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_set_rts(struct at76_priv *priv , u16 size )
{
  int ret ;
  {
  ret = 0;
  priv->mib_buf.type = 3U;
  priv->mib_buf.size = 2U;
  priv->mib_buf.index = 10U;
  priv->mib_buf.data.word = size;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (rts) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_set_autorate_fallback(struct at76_priv *priv , int onoff )
{
  int ret ;
  {
  ret = 0;
  priv->mib_buf.type = 1U;
  priv->mib_buf.size = 1U;
  priv->mib_buf.index = 3U;
  priv->mib_buf.data.byte = (u8 )onoff;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (autorate fallback) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static void at76_dump_mib_mac_addr(struct at76_priv *priv )
{
  int i ;
  int ret ;
  struct mib_mac_addr *m ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = kmalloc(36UL, 208U);
  m = (struct mib_mac_addr *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_mac_addr *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 2, (void *)m, 36);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (MAC_ADDR) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC_ADDR: mac_addr %pM res 0x%x 0x%x\n", tmp___0,
           (u8 *)(& m->mac_addr), (int )m->res[0], (int )m->res[1]);
  } else {
  }
  i = 0;
  goto ldv_48974;
  ldv_48973: ;
  if ((at76_debug & 33554432U) != 0U) {
    tmp___1 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC_ADDR: group addr %d: %pM, status %d\n",
           tmp___1, i, (u8 *)(& m->group_addr) + (unsigned long )i, (int )m->group_addr_status[i]);
  } else {
  }
  i = i + 1;
  ldv_48974: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_48973;
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_mac_wep(struct at76_priv *priv )
{
  int i ;
  int ret ;
  int key_len ;
  struct mib_mac_wep *m ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = kmalloc(65UL, 208U);
  m = (struct mib_mac_wep *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_mac_wep *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 6, (void *)m, 65);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (MAC_WEP) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC_WEP: priv_invoked %u def_key_id %u key_len %u excl_unencr %u wep_icv_err %u wep_excluded %u encr_level %u key %d\n",
           tmp___0, (int )m->privacy_invoked, (int )m->wep_default_key_id, (int )m->wep_key_mapping_len,
           (int )m->exclude_unencrypted, m->wep_icv_error_count, m->wep_excluded_count,
           (int )m->encryption_level, (int )m->wep_default_key_id);
  } else {
  }
  key_len = (unsigned int )m->encryption_level == 1U ? 5 : 13;
  i = 0;
  goto ldv_48985;
  ldv_48984: ;
  if ((at76_debug & 33554432U) != 0U) {
    tmp___1 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC_WEP: key %d: %*phD\n", tmp___1, i, key_len,
           (u8 *)(& m->wep_default_keyvalue) + (unsigned long )i);
  } else {
  }
  i = i + 1;
  ldv_48985: ;
  if (i <= 3) {
    goto ldv_48984;
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_mac_mgmt(struct at76_priv *priv )
{
  int ret ;
  struct mib_mac_mgmt *m ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = kmalloc(64UL, 208U);
  m = (struct mib_mac_mgmt *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_mac_mgmt *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 5, (void *)m, 64);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (MAC_MGMT) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC_MGMT: beacon_period %d CFP_max_duration %d medium_occupancy_limit %d station_id 0x%x ATIM_window %d CFP_mode %d privacy_opt_impl %d DTIM_period %d CFP_period %d current_bssid %pM current_essid %*phD current_bss_type %d pm_mode %d ibss_change %d res %d multi_domain_capability_implemented %d international_roaming %d country_string %.3s\n",
           tmp___0, (int )m->beacon_period, (int )m->CFP_max_duration, (int )m->medium_occupancy_limit,
           (int )m->station_id, (int )m->ATIM_window, (int )m->CFP_mode, (int )m->privacy_option_implemented,
           (int )m->DTIM_period, (int )m->CFP_period, (u8 *)(& m->current_bssid),
           32, (u8 *)(& m->current_essid), (int )m->current_bss_type, (int )m->power_mgmt_mode,
           (int )m->ibss_change, (int )m->res, (int )m->multi_domain_capability_implemented,
           (int )m->multi_domain_capability_enabled, (u8 *)(& m->country_string));
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_mac(struct at76_priv *priv )
{
  int ret ;
  struct mib_mac *m ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = kmalloc(68UL, 208U);
  m = (struct mib_mac *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_mac *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 3, (void *)m, 68);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (MAC) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MAC: max_tx_msdu_lifetime %d max_rx_lifetime %d frag_threshold %d rts_threshold %d cwmin %d cwmax %d short_retry_time %d long_retry_time %d scan_type %d scan_channel %d probe_delay %u min_channel_time %d max_channel_time %d listen_int %d desired_ssid %*phD desired_bssid %pM desired_bsstype %d\n",
           tmp___0, m->max_tx_msdu_lifetime, m->max_rx_lifetime, (int )m->frag_threshold,
           (int )m->rts_threshold, (int )m->cwmin, (int )m->cwmax, (int )m->short_retry_time,
           (int )m->long_retry_time, (int )m->scan_type, (int )m->scan_channel, (int )m->probe_delay,
           (int )m->min_channel_time, (int )m->max_channel_time, (int )m->listen_interval,
           32, (u8 *)(& m->desired_ssid), (u8 *)(& m->desired_bssid), (int )m->desired_bsstype);
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_phy(struct at76_priv *priv )
{
  int ret ;
  struct mib_phy *m ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = kmalloc(24UL, 208U);
  m = (struct mib_phy *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_phy *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 7, (void *)m, 24);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (PHY) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB PHY: ed_threshold %d slot_time %d sifs_time %d preamble_length %d plcp_header_length %d mpdu_max_length %d cca_mode_supported %d operation_rate_set 0x%x 0x%x 0x%x 0x%x channel_id %d current_cca_mode %d phy_type %d current_reg_domain %d\n",
           tmp___0, m->ed_threshold, (int )m->slot_time, (int )m->sifs_time, (int )m->preamble_length,
           (int )m->plcp_header_length, (int )m->mpdu_max_length, (int )m->cca_mode_supported,
           (int )m->operation_rate_set[0], (int )m->operation_rate_set[1], (int )m->operation_rate_set[2],
           (int )m->operation_rate_set[3], (int )m->channel_id, (int )m->current_cca_mode,
           (int )m->phy_type, (int )m->current_reg_domain);
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_local(struct at76_priv *priv )
{
  int ret ;
  struct mib_local *m ;
  void *tmp ;
  char const *tmp___0 ;
  {
  tmp = kmalloc(12UL, 208U);
  m = (struct mib_local *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_local *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 1, (void *)m, 12);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (LOCAL) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB LOCAL: beacon_enable %d txautorate_fallback %d ssid_size %d promiscuous_mode %d preamble_type %d\n",
           tmp___0, (int )m->beacon_enable, (int )m->txautorate_fallback, (int )m->ssid_size,
           (int )m->promiscuous_mode, (int )m->preamble_type);
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static void at76_dump_mib_mdomain(struct at76_priv *priv )
{
  int ret ;
  struct mib_mdomain *m ;
  void *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  {
  tmp = kmalloc(28UL, 208U);
  m = (struct mib_mdomain *)tmp;
  if ((unsigned long )m == (unsigned long )((struct mib_mdomain *)0)) {
    return;
  } else {
  }
  ret = at76_get_mib(priv->udev, 9, (void *)m, 28);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_get_mib (MDOMAIN) failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MDOMAIN: channel_list %*phD\n", tmp___0, 14,
           (u8 *)(& m->channel_list));
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    tmp___1 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: MIB MDOMAIN: tx_powerlevel %*phD\n", tmp___1, 14,
           (u8 *)(& m->tx_powerlevel));
  } else {
  }
  exit:
  kfree((void const *)m);
  return;
}
}
static int at76_start_monitor(struct at76_priv *priv )
{
  struct at76_req_scan scan ;
  int ret ;
  {
  memset((void *)(& scan), 0, 48UL);
  memset((void *)(& scan.bssid), 255, 6UL);
  scan.channel = (u8 )priv->channel;
  scan.scan_type = 1U;
  scan.international_scan = 0U;
  scan.min_channel_time = (unsigned short )priv->scan_min_time;
  scan.max_channel_time = (unsigned short )priv->scan_max_time;
  scan.probe_delay = 0U;
  ret = at76_set_card_command(priv->udev, 3, (void *)(& scan), 48);
  if (ret >= 0) {
    ret = at76_get_cmd_status(priv->udev, 3);
  } else {
  }
  return (ret);
}
}
__inline static int at76_calc_padding(int wlen )
{
  {
  wlen = (int )((unsigned int )wlen + 8U);
  wlen = wlen % 64;
  if (wlen <= 49) {
    return (50 - wlen);
  } else {
  }
  if (wlen > 60) {
    return (114 - wlen);
  } else {
  }
  return (0);
}
}
static void at76_rx_callback(struct urb *urb )
{
  struct at76_priv *priv ;
  {
  priv = (struct at76_priv *)urb->context;
  priv->rx_tasklet.data = (unsigned long )urb;
  tasklet_schedule(& priv->rx_tasklet);
  return;
}
}
static int at76_submit_rx_urb(struct at76_priv *priv )
{
  int ret ;
  int size ;
  struct sk_buff *skb ;
  unsigned int tmp ;
  unsigned char *tmp___0 ;
  {
  skb = priv->rx_skb;
  if ((unsigned long )priv->rx_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "%s: priv->rx_urb is NULL\n",
            "at76_submit_rx_urb");
    return (-14);
  } else {
  }
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    skb = ldv_dev_alloc_skb_12(2364U);
    if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
      dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "cannot allocate rx skbuff\n");
      ret = -12;
      goto exit;
    } else {
    }
    priv->rx_skb = skb;
  } else {
    tmp = skb_headroom((struct sk_buff const *)skb);
    skb_push(skb, tmp);
    skb_trim(skb, 0U);
  }
  size = skb_tailroom((struct sk_buff const *)skb);
  tmp___0 = skb_put(skb, (unsigned int )size);
  usb_fill_bulk_urb(priv->rx_urb, priv->udev, priv->rx_pipe, (void *)tmp___0, size,
                    & at76_rx_callback, (void *)priv);
  ret = usb_submit_urb(priv->rx_urb, 32U);
  if (ret < 0) {
    if (ret == -19) {
      if ((at76_debug & 16384U) != 0U) {
        printk("\017at76c50x-usb: usb_submit_urb returned -ENODEV\n");
      } else {
      }
    } else {
      dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "rx, usb_submit_urb failed: %d\n",
              ret);
    }
  } else {
  }
  exit: ;
  if (ret < 0 && ret != -19) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "cannot submit rx urb - please unload the driver and/or power cycle the device\n");
  } else {
  }
  return (ret);
}
}
static int at76_load_external_fw(struct usb_device *udev , struct fwentry *fwe )
{
  int ret ;
  int op_mode ;
  int blockno ;
  int bsize ;
  u8 *block ;
  u8 *buf ;
  int size ;
  void *tmp ;
  int __min1 ;
  int __min2 ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  {
  blockno = 0;
  buf = fwe->extfw;
  size = fwe->extfw_size;
  if ((unsigned long )buf == (unsigned long )((u8 *)0U) || size == 0) {
    return (-2);
  } else {
  }
  op_mode = at76_get_op_mode(udev);
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: opmode %d\n", op_mode);
  } else {
  }
  if (op_mode != 4) {
    dev_err((struct device const *)(& udev->dev), "unexpected opmode %d\n", op_mode);
    return (-22);
  } else {
  }
  tmp = kmalloc(1024UL, 208U);
  block = (u8 *)tmp;
  if ((unsigned long )block == (unsigned long )((u8 *)0U)) {
    return (-12);
  } else {
  }
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: downloading external firmware\n");
  } else {
  }
  ldv_49055:
  __min1 = size;
  __min2 = 1024;
  bsize = __min1 < __min2 ? __min1 : __min2;
  __len = (size_t )bsize;
  __ret = memcpy((void *)block, (void const *)buf, __len);
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: ext fw, size left = %5d, bsize = %4d, blockno = %2d\n",
           size, bsize, blockno);
  } else {
  }
  ret = at76_load_ext_fw_block(udev, blockno, (void *)block, bsize);
  if (ret != bsize) {
    dev_err((struct device const *)(& udev->dev), "loading %dth firmware block failed: %d\n",
            blockno, ret);
    ret = -5;
    goto exit;
  } else {
  }
  buf = buf + (unsigned long )bsize;
  size = size - bsize;
  blockno = blockno + 1;
  if (bsize > 0) {
    goto ldv_49055;
  } else {
  }
  tmp___0 = at76_is_505a(fwe->board_type);
  if (tmp___0 != 0) {
    if ((at76_debug & 16384U) != 0U) {
      printk("\017at76c50x-usb: 200 ms delay for 505a\n");
    } else {
    }
    schedule_timeout_interruptible(51L);
  } else {
  }
  exit:
  kfree((void const *)block);
  if (ret < 0) {
    dev_err((struct device const *)(& udev->dev), "downloading external firmware failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_load_internal_fw(struct usb_device *udev , struct fwentry *fwe )
{
  int ret ;
  int need_remap ;
  int tmp ;
  {
  tmp = at76_is_505a(fwe->board_type);
  need_remap = tmp == 0;
  ret = at76_usbdfu_download(udev, fwe->intfw, (u32 )fwe->intfw_size, need_remap != 0 ? 0 : 500);
  if (ret < 0) {
    dev_err((struct device const *)(& udev->dev), "downloading internal fw failed with %d\n",
            ret);
    goto exit;
  } else {
  }
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: sending REMAP\n");
  } else {
  }
  if (need_remap != 0) {
    ret = at76_remap(udev);
    if (ret < 0) {
      dev_err((struct device const *)(& udev->dev), "sending REMAP failed with %d\n",
              ret);
      goto exit;
    } else {
    }
  } else {
  }
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: sleeping for 2 seconds\n");
  } else {
  }
  schedule_timeout_interruptible(501L);
  usb_reset_device(udev);
  exit: ;
  return (ret);
}
}
static int at76_startup_device(struct at76_priv *priv )
{
  struct at76_card_config *ccfg ;
  int ret ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  int tmp___2 ;
  {
  ccfg = & priv->card_config;
  if ((at76_debug & 1048576U) != 0U) {
    tmp = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s param: ssid %.*s (%*phD) mode %s ch %d wep %s key %d keylen %d\n",
           tmp, priv->essid_size, (u8 *)(& priv->essid), 32, (u8 *)(& priv->essid),
           priv->iw_mode == 1 ? (char *)"adhoc" : (char *)"infra", priv->channel,
           priv->wep_enabled != 0 ? (char *)"enabled" : (char *)"disabled", priv->wep_key_id,
           (int )priv->wep_keys_len[priv->wep_key_id]);
  } else {
  }
  if ((at76_debug & 1048576U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s param: preamble %s rts %d retry %d frag %d txrate %s auth_mode %d\n",
           tmp___0, preambles[priv->preamble_type], priv->rts_threshold, priv->short_retry_limit,
           priv->frag_threshold, priv->txrate != 0 ? (priv->txrate != 1 ? (priv->txrate != 2 ? (priv->txrate != 3 ? (priv->txrate == 4 ? (char *)"auto" : (char *)"<invalid>") : (char *)"11MBit") : (char *)"5.5MBit") : (char *)"2MBit") : (char *)"1MBit",
           priv->auth_mode);
  } else {
  }
  if ((at76_debug & 1048576U) != 0U) {
    tmp___1 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s param: pm_mode %d pm_period %d auth_mode %s scan_times %d %d scan_mode %s\n",
           tmp___1, (int )priv->pm_mode, priv->pm_period, priv->auth_mode == 0 ? (char *)"open" : (char *)"shared_secret",
           priv->scan_min_time, priv->scan_max_time, priv->scan_mode == 0 ? (char *)"active" : (char *)"passive");
  } else {
  }
  memset((void *)ccfg, 0, 104UL);
  ccfg->promiscuous_mode = 0U;
  ccfg->short_retry_limit = (u8 )priv->short_retry_limit;
  if (priv->wep_enabled != 0) {
    if ((unsigned int )priv->wep_keys_len[priv->wep_key_id] > 5U) {
      ccfg->encryption_type = 2U;
    } else {
      ccfg->encryption_type = 1U;
    }
    ccfg->exclude_unencrypted = 1U;
  } else {
    ccfg->exclude_unencrypted = 0U;
    ccfg->encryption_type = 0U;
  }
  ccfg->rts_threshold = (unsigned short )priv->rts_threshold;
  ccfg->fragmentation_threshold = (unsigned short )priv->frag_threshold;
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& ccfg->basic_rate_set), (void const *)(& hw_rates),
                     __len);
  } else {
    __ret = memcpy((void *)(& ccfg->basic_rate_set), (void const *)(& hw_rates),
                             __len);
  }
  ccfg->auto_rate_fallback = priv->txrate == 4;
  ccfg->channel = (u8 )priv->channel;
  ccfg->privacy_invoked = (u8 )priv->wep_enabled;
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& ccfg->current_ssid), (void const *)(& priv->essid),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& ccfg->current_ssid), (void const *)(& priv->essid),
                                 __len___0);
  }
  ccfg->ssid_len = (u8 )priv->essid_size;
  ccfg->wep_default_key_id = (u8 )priv->wep_key_id;
  __len___1 = 52UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(& ccfg->wep_default_key_value), (void const *)(& priv->wep_keys),
                         __len___1);
  } else {
    __ret___1 = memcpy((void *)(& ccfg->wep_default_key_value), (void const *)(& priv->wep_keys),
                                 __len___1);
  }
  ccfg->short_preamble = (u8 )priv->preamble_type;
  ccfg->beacon_period = (unsigned short )priv->beacon_period;
  ret = at76_set_card_command(priv->udev, 11, (void *)(& priv->card_config), 104);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_set_card_command failed: %d\n",
            ret);
    return (ret);
  } else {
  }
  at76_wait_completion(priv, 11);
  memset((void *)(& priv->bssid), 0, 6UL);
  priv->scanning = 0;
  tmp___2 = at76_set_radio(priv, 1);
  if (tmp___2 == 1) {
    at76_wait_completion(priv, 6);
  } else {
  }
  ret = at76_set_preamble(priv, (int )((u8 )priv->preamble_type));
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = at76_set_frag(priv, (int )((u16 )priv->frag_threshold));
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = at76_set_rts(priv, (int )((u16 )priv->rts_threshold));
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = at76_set_autorate_fallback(priv, priv->txrate == 4);
  if (ret < 0) {
    return (ret);
  } else {
  }
  ret = at76_set_pm_mode(priv);
  if (ret < 0) {
    return (ret);
  } else {
  }
  if ((at76_debug & 33554432U) != 0U) {
    at76_dump_mib_mac(priv);
    at76_dump_mib_mac_addr(priv);
    at76_dump_mib_mac_mgmt(priv);
    at76_dump_mib_mac_wep(priv);
    at76_dump_mib_mdomain(priv);
    at76_dump_mib_phy(priv);
    at76_dump_mib_local(priv);
  } else {
  }
  return (0);
}
}
static void at76_work_set_promisc(struct work_struct *work )
{
  struct at76_priv *priv ;
  struct work_struct const *__mptr ;
  int ret ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct at76_priv *)__mptr + 0xffffffffffffff20UL;
  ret = 0;
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    return;
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  priv->mib_buf.type = 1U;
  priv->mib_buf.size = 1U;
  priv->mib_buf.index = 6U;
  priv->mib_buf.data.byte = priv->promisc != 0;
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (promiscuous_mode) failed: %d\n",
            ret);
  } else {
  }
  mutex_unlock(& priv->mtx);
  return;
}
}
static void at76_work_submit_rx(struct work_struct *work )
{
  struct at76_priv *priv ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct at76_priv *)__mptr + 0xfffffffffffffed0UL;
  mutex_lock_nested(& priv->mtx, 0U);
  at76_submit_rx_urb(priv);
  mutex_unlock(& priv->mtx);
  return;
}
}
__inline static int at76_guess_freq(struct at76_priv *priv )
{
  size_t el_off ;
  u8 const *el ;
  int channel ;
  int len ;
  struct ieee80211_hdr *hdr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  channel = priv->channel;
  len = (int )(priv->rx_skb)->len;
  hdr = (struct ieee80211_hdr *)(priv->rx_skb)->data;
  if (! priv->scanning) {
    goto exit;
  } else {
  }
  if (len <= 23) {
    goto exit;
  } else {
  }
  tmp___0 = ieee80211_is_probe_resp((int )hdr->frame_control);
  if (tmp___0 != 0) {
    el_off = 36UL;
    el = (u8 const *)(& ((struct ieee80211_mgmt *)hdr)->u.probe_resp.variable);
  } else {
    tmp = ieee80211_is_beacon((int )hdr->frame_control);
    if (tmp != 0) {
      el_off = 36UL;
      el = (u8 const *)(& ((struct ieee80211_mgmt *)hdr)->u.beacon.variable);
    } else {
      goto exit;
    }
  }
  len = (int )((unsigned int )len - (unsigned int )el_off);
  el = cfg80211_find_ie(3, el, len);
  if ((unsigned long )el != (unsigned long )((u8 const *)0U) && (unsigned int )((unsigned char )*(el + 1UL)) != 0U) {
    channel = (int )*(el + 2UL);
  } else {
  }
  exit:
  tmp___1 = ieee80211_channel_to_frequency(channel, 0);
  return (tmp___1);
}
}
static void at76_rx_tasklet(unsigned long param )
{
  struct urb *urb ;
  struct at76_priv *priv ;
  struct at76_rx_buffer *buf ;
  struct ieee80211_rx_status rx_status ;
  char const *tmp ;
  char const *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  size_t __len ;
  void *__ret ;
  struct ieee80211_rx_status *tmp___3 ;
  struct ieee80211_rx_status *tmp___4 ;
  {
  urb = (struct urb *)param;
  priv = (struct at76_priv *)urb->context;
  rx_status.mactime = 0ULL;
  rx_status.device_timestamp = 0U;
  rx_status.ampdu_reference = 0U;
  rx_status.flag = 0U;
  rx_status.freq = (unsigned short)0;
  rx_status.vht_flag = (unsigned char)0;
  rx_status.rate_idx = (unsigned char)0;
  rx_status.vht_nss = (unsigned char)0;
  rx_status.rx_flags = (unsigned char)0;
  rx_status.band = (unsigned char)0;
  rx_status.antenna = (unsigned char)0;
  rx_status.signal = (signed char)0;
  rx_status.chains = (unsigned char)0;
  rx_status.chain_signal[0] = (signed char)0;
  rx_status.chain_signal[1] = (signed char)0;
  rx_status.chain_signal[2] = (signed char)0;
  rx_status.chain_signal[3] = (signed char)0;
  rx_status.ampdu_delimiter_crc = (unsigned char)0;
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    if ((at76_debug & 16384U) != 0U) {
      printk("\017at76c50x-usb: device unplugged\n");
    } else {
    }
    if ((at76_debug & 16384U) != 0U) {
      printk("\017at76c50x-usb: urb status %d\n", urb->status);
    } else {
    }
    return;
  } else {
  }
  if ((unsigned long )priv->rx_skb == (unsigned long )((struct sk_buff *)0) || (unsigned long )(priv->rx_skb)->data == (unsigned long )((unsigned char *)0U)) {
    return;
  } else {
  }
  buf = (struct at76_rx_buffer *)(priv->rx_skb)->data;
  if (urb->status != 0) {
    if (urb->status != -2 && urb->status != -104) {
      if ((at76_debug & 32768U) != 0U) {
        tmp = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
        printk("\017at76c50x-usb: %s %s: - nonzero Rx bulk status received: %d\n",
               "at76_rx_tasklet", tmp, urb->status);
      } else {
      }
    } else {
    }
    return;
  } else {
  }
  if ((at76_debug & 65536U) != 0U) {
    tmp___0 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s: rx frame: rate %d rssi %d noise %d link %d\n", tmp___0,
           (int )buf->rx_rate, (int )buf->rssi, (int )buf->noise_level, (int )buf->link_quality);
  } else {
  }
  skb_pull(priv->rx_skb, 12U);
  skb_trim(priv->rx_skb, (unsigned int )buf->wlength);
  if ((at76_debug & 128U) != 0U) {
    printk("\017at76c50x-usb: RX: len=%d\n", (priv->rx_skb)->len);
    descriptor.modname = "at76c50x_usb";
    descriptor.function = "at76_rx_tasklet";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared";
    descriptor.format = "";
    descriptor.lineno = 1623U;
    descriptor.flags = 0U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      print_hex_dump("\017", "", 2, 16, 1, (void const *)(priv->rx_skb)->data, (size_t )(priv->rx_skb)->len,
                     1);
    } else {
    }
  } else {
  }
  rx_status.signal = (s8 )buf->rssi;
  rx_status.flag = rx_status.flag | 2U;
  rx_status.flag = rx_status.flag | 16U;
  rx_status.band = 0U;
  tmp___2 = at76_guess_freq(priv);
  rx_status.freq = (u16 )tmp___2;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: calling ieee80211_rx_irqsafe(): %d/%d\n", (priv->rx_skb)->len,
           (priv->rx_skb)->data_len);
  } else {
  }
  __len = 40UL;
  if (__len > 63UL) {
    tmp___3 = IEEE80211_SKB_RXCB(priv->rx_skb);
    __ret = memcpy((void *)tmp___3, (void const *)(& rx_status), __len);
  } else {
    tmp___4 = IEEE80211_SKB_RXCB(priv->rx_skb);
    __ret = memcpy((void *)tmp___4, (void const *)(& rx_status), __len);
  }
  ieee80211_rx_irqsafe(priv->hw, priv->rx_skb);
  priv->rx_skb = (struct sk_buff *)0;
  at76_submit_rx_urb(priv);
  return;
}
}
static struct fwentry *at76_load_firmware(struct usb_device *udev , enum board_type board_type )
{
  int ret ;
  char *str ;
  struct at76_fw_header *fwh ;
  struct fwentry *fwe ;
  {
  fwe = (struct fwentry *)(& firmwares) + (unsigned long )board_type;
  mutex_lock_nested(& fw_mutex, 0U);
  if (fwe->loaded != 0) {
    if ((at76_debug & 268435456U) != 0U) {
      printk("\017at76c50x-usb: re-using previously loaded fw\n");
    } else {
    }
    goto exit;
  } else {
  }
  if ((at76_debug & 268435456U) != 0U) {
    printk("\017at76c50x-usb: downloading firmware %s\n", fwe->fwname);
  } else {
  }
  ret = request_firmware(& fwe->fw, fwe->fwname, & udev->dev);
  if (ret < 0) {
    dev_err((struct device const *)(& udev->dev), "firmware %s not found!\n", fwe->fwname);
    dev_err((struct device const *)(& udev->dev), "you may need to download the firmware from http://developer.berlios.de/projects/at76c503a/\n");
    goto exit;
  } else {
  }
  if ((at76_debug & 268435456U) != 0U) {
    printk("\017at76c50x-usb: got it.\n");
  } else {
  }
  fwh = (struct at76_fw_header *)(fwe->fw)->data;
  if ((unsigned long )(fwe->fw)->size <= 32UL) {
    dev_err((struct device const *)(& udev->dev), "firmware is too short (0x%zx)\n",
            (fwe->fw)->size);
    goto exit;
  } else {
  }
  fwe->board_type = (enum board_type )fwh->board_type;
  if ((unsigned int )fwe->board_type != (unsigned int )board_type) {
    dev_err((struct device const *)(& udev->dev), "board type mismatch, requested %u, got %u\n",
            (unsigned int )board_type, (unsigned int )fwe->board_type);
    goto exit;
  } else {
  }
  fwe->fw_version.major = fwh->major;
  fwe->fw_version.minor = fwh->minor;
  fwe->fw_version.patch = fwh->patch;
  fwe->fw_version.build = fwh->build;
  str = (char *)fwh + (unsigned long )fwh->str_offset;
  fwe->intfw = (u8 *)fwh + (unsigned long )fwh->int_fw_offset;
  fwe->intfw_size = (int )fwh->int_fw_len;
  fwe->extfw = (u8 *)fwh + (unsigned long )fwh->ext_fw_offset;
  fwe->extfw_size = (int )fwh->ext_fw_len;
  fwe->loaded = 1;
  dev_printk("\017", (struct device const *)(& udev->dev), "using firmware %s (version %d.%d.%d-%d)\n",
             fwe->fwname, (int )fwh->major, (int )fwh->minor, (int )fwh->patch, (int )fwh->build);
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: board %u, int %d:%d, ext %d:%d\n", (unsigned int )board_type,
           fwh->int_fw_offset, fwh->int_fw_len, fwh->ext_fw_offset, fwh->ext_fw_len);
  } else {
  }
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: firmware id %s\n", str);
  } else {
  }
  exit:
  mutex_unlock(& fw_mutex);
  if (fwe->loaded != 0) {
    return (fwe);
  } else {
    return ((struct fwentry *)0);
  }
}
}
static int at76_join(struct at76_priv *priv )
{
  struct at76_req_join join ;
  int ret ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  memset((void *)(& join), 0, 44UL);
  __len = (size_t )priv->essid_size;
  __ret = memcpy((void *)(& join.essid), (void const *)(& priv->essid),
                           __len);
  join.essid_size = (u8 )priv->essid_size;
  __len___0 = 6UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& join.bssid), (void const *)(& priv->bssid),
                         __len___0);
  } else {
    __ret___0 = memcpy((void *)(& join.bssid), (void const *)(& priv->bssid),
                                 __len___0);
  }
  join.bss_type = 2U;
  join.channel = (u8 )priv->channel;
  join.timeout = 2000U;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s: sending CMD_JOIN\n", "at76_join");
  } else {
  }
  ret = at76_set_card_command(priv->udev, 4, (void *)(& join), 44);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_set_card_command failed: %d\n",
            ret);
    return (0);
  } else {
  }
  ret = at76_wait_completion(priv, 4);
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s: CMD_JOIN returned: 0x%02x\n", "at76_join", ret);
  } else {
  }
  if (ret != 1) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "at76_wait_completion failed: %d\n",
            ret);
    return (0);
  } else {
  }
  at76_set_pm_mode(priv);
  return (0);
}
}
static void at76_work_join_bssid(struct work_struct *work )
{
  struct at76_priv *priv ;
  struct work_struct const *__mptr ;
  bool tmp ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct at76_priv *)__mptr + 0xfffffffffffffe80UL;
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    return;
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  tmp = is_valid_ether_addr((u8 const *)(& priv->bssid));
  if ((int )tmp) {
    at76_join(priv);
  } else {
  }
  mutex_unlock(& priv->mtx);
  return;
}
}
static void at76_mac80211_tx_callback(struct urb *urb )
{
  struct at76_priv *priv ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  {
  priv = (struct at76_priv *)urb->context;
  tmp = IEEE80211_SKB_CB(priv->tx_skb);
  info = tmp;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_mac80211_tx_callback");
  } else {
  }
  switch (urb->status) {
  case 0:
  info->flags = info->flags | 512U;
  goto ldv_49146;
  case -2: ;
  case -104: ;
  goto ldv_49146;
  default: ;
  if ((at76_debug & 32768U) != 0U) {
    printk("\017at76c50x-usb: %s - nonzero tx status received: %d\n", "at76_mac80211_tx_callback",
           urb->status);
  } else {
  }
  goto ldv_49146;
  }
  ldv_49146:
  memset((void *)(& info->ldv_47297.status), 0, 40UL);
  ieee80211_tx_status_irqsafe(priv->hw, priv->tx_skb);
  priv->tx_skb = (struct sk_buff *)0;
  ieee80211_wake_queues(priv->hw);
  return;
}
}
static void at76_mac80211_tx(struct ieee80211_hw *hw , struct ieee80211_tx_control *control ,
                             struct sk_buff *skb )
{
  struct at76_priv *priv ;
  struct at76_tx_buffer *tx_buffer ;
  struct ieee80211_tx_info *info ;
  struct ieee80211_tx_info *tmp ;
  struct ieee80211_mgmt *mgmt ;
  int padding ;
  int submit_len ;
  int ret ;
  size_t __len ;
  void *__ret ;
  bool tmp___0 ;
  int tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  struct ieee80211_rate *tmp___3 ;
  size_t __len___0 ;
  void *__ret___0 ;
  char const *tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  {
  priv = (struct at76_priv *)hw->priv;
  tx_buffer = (struct at76_tx_buffer *)priv->bulk_out_buffer;
  tmp = IEEE80211_SKB_CB(skb);
  info = tmp;
  mgmt = (struct ieee80211_mgmt *)skb->data;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_mac80211_tx");
  } else {
  }
  if ((priv->tx_urb)->status == -115) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "%s called while tx urb is pending\n",
            "at76_mac80211_tx");
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  if (((int )mgmt->frame_control & 176) != 0) {
    tmp___0 = ether_addr_equal_64bits((u8 const *)(& priv->bssid), (u8 const *)(& mgmt->bssid));
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      __len = 6UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)(& priv->bssid), (void const *)(& mgmt->bssid),
                         __len);
      } else {
        __ret = memcpy((void *)(& priv->bssid), (void const *)(& mgmt->bssid),
                                 __len);
      }
      ieee80211_queue_work(hw, & priv->work_join_bssid);
      dev_kfree_skb_any(skb);
      return;
    } else {
    }
  } else {
  }
  ieee80211_stop_queues(hw);
  at76_ledtrig_tx_activity();
  __ret_warn_on = (unsigned long )priv->tx_skb != (unsigned long )((struct sk_buff *)0);
  tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___2 != 0L) {
    warn_slowpath_null("/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared",
                       1840);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  priv->tx_skb = skb;
  padding = at76_calc_padding((int )skb->len);
  submit_len = (int )((skb->len + (unsigned int )padding) + 8U);
  memset((void *)tx_buffer, 0, 2360UL);
  tx_buffer->padding = (u8 )padding;
  tx_buffer->wlength = (unsigned short )skb->len;
  tmp___3 = ieee80211_get_tx_rate((struct ieee80211_hw const *)hw, (struct ieee80211_tx_info const *)info);
  tx_buffer->tx_rate = (u8 )tmp___3->hw_value;
  memset((void *)(& tx_buffer->reserved), 0, 4UL);
  __len___0 = (size_t )skb->len;
  __ret___0 = memcpy((void *)(& tx_buffer->packet), (void const *)skb->data,
                               __len___0);
  if ((at76_debug & 16U) != 0U) {
    tmp___4 = wiphy_name((struct wiphy const *)(priv->hw)->wiphy);
    printk("\017at76c50x-usb: %s tx: wlen 0x%x pad 0x%x rate %d hdr\n", tmp___4, (int )tx_buffer->wlength,
           (int )tx_buffer->padding, (int )tx_buffer->tx_rate);
  } else {
  }
  if ((at76_debug & 32U) != 0U) {
    printk("\017at76c50x-usb: %s(): tx_buffer %d bytes:\n", "at76_mac80211_tx", submit_len);
    descriptor.modname = "at76c50x_usb";
    descriptor.function = "at76_mac80211_tx";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared";
    descriptor.format = "";
    descriptor.lineno = 1860U;
    descriptor.flags = 0U;
    tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      print_hex_dump("\017", "", 2, 16, 1, (void const *)tx_buffer, (size_t )submit_len,
                     1);
    } else {
    }
  } else {
  }
  usb_fill_bulk_urb(priv->tx_urb, priv->udev, priv->tx_pipe, (void *)tx_buffer, submit_len,
                    & at76_mac80211_tx_callback, (void *)priv);
  ret = usb_submit_urb(priv->tx_urb, 32U);
  if (ret != 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "error in tx submit urb: %d\n",
            ret);
    if (ret == -22) {
      dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "-EINVAL: tx urb %p hcpriv %p complete %p\n",
              priv->tx_urb, (priv->tx_urb)->hcpriv, (priv->tx_urb)->complete);
    } else {
    }
  } else {
  }
  return;
}
}
static int at76_mac80211_start(struct ieee80211_hw *hw )
{
  struct at76_priv *priv ;
  int ret ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_mac80211_start");
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  ret = at76_submit_rx_urb(priv);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "open: submit_rx_urb failed: %d\n",
            ret);
    goto error;
  } else {
  }
  at76_startup_device(priv);
  at76_start_monitor(priv);
  error:
  mutex_unlock(& priv->mtx);
  return (0);
}
}
static void at76_mac80211_stop(struct ieee80211_hw *hw )
{
  struct at76_priv *priv ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_mac80211_stop");
  } else {
  }
  cancel_delayed_work(& priv->dwork_hw_scan);
  cancel_work_sync(& priv->work_join_bssid);
  cancel_work_sync(& priv->work_set_promisc);
  mutex_lock_nested(& priv->mtx, 0U);
  if ((unsigned int )*((unsigned char *)priv + 1032UL) == 0U) {
    at76_set_radio(priv, 0);
    usb_kill_urb(priv->rx_urb);
  } else {
  }
  mutex_unlock(& priv->mtx);
  return;
}
}
static int at76_add_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  struct at76_priv *priv ;
  int ret ;
  {
  priv = (struct at76_priv *)hw->priv;
  ret = 0;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_add_interface");
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  switch ((unsigned int )vif->type) {
  case 2U:
  priv->iw_mode = 2;
  goto ldv_49192;
  default:
  ret = -95;
  goto exit;
  }
  ldv_49192: ;
  exit:
  mutex_unlock(& priv->mtx);
  return (ret);
}
}
static void at76_remove_interface(struct ieee80211_hw *hw , struct ieee80211_vif *vif )
{
  {
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s()\n", "at76_remove_interface");
  } else {
  }
  return;
}
}
static void at76_dwork_hw_scan(struct work_struct *work )
{
  struct at76_priv *priv ;
  struct work_struct const *__mptr ;
  int ret ;
  bool tmp ;
  {
  __mptr = (struct work_struct const *)work;
  priv = (struct at76_priv *)__mptr + 0xfffffffffffffe30UL;
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    return;
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  ret = at76_get_cmd_status(priv->udev, 3);
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s: CMD_SCAN status 0x%02x\n", "at76_dwork_hw_scan",
           ret);
  } else {
  }
  if (ret != 1) {
    ieee80211_queue_delayed_work(priv->hw, & priv->dwork_hw_scan, 62UL);
    mutex_unlock(& priv->mtx);
    return;
  } else {
  }
  tmp = is_valid_ether_addr((u8 const *)(& priv->bssid));
  if ((int )tmp) {
    at76_join(priv);
  } else {
  }
  priv->scanning = 0;
  mutex_unlock(& priv->mtx);
  ieee80211_scan_completed(priv->hw, 0);
  ieee80211_wake_queues(priv->hw);
  return;
}
}
static int at76_hw_scan(struct ieee80211_hw *hw , struct ieee80211_vif *vif , struct cfg80211_scan_request *req )
{
  struct at76_priv *priv ;
  struct at76_req_scan scan ;
  u8 *ssid ;
  int ret ;
  int len ;
  size_t __len ;
  void *__ret ;
  {
  priv = (struct at76_priv *)hw->priv;
  ssid = (u8 *)0U;
  len = 0;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s():\n", "at76_hw_scan");
  } else {
  }
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    return (0);
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  ieee80211_stop_queues(hw);
  memset((void *)(& scan), 0, 48UL);
  memset((void *)(& scan.bssid), 255, 6UL);
  if (req->n_ssids != 0) {
    scan.scan_type = 0U;
    ssid = (u8 *)(& (req->ssids)->ssid);
    len = (int )(req->ssids)->ssid_len;
  } else {
    scan.scan_type = 1U;
  }
  if (len != 0) {
    __len = (size_t )len;
    __ret = memcpy((void *)(& scan.essid), (void const *)ssid, __len);
    scan.essid_size = (u8 )len;
  } else {
  }
  scan.min_channel_time = (unsigned short )priv->scan_min_time;
  scan.max_channel_time = (unsigned short )priv->scan_max_time;
  scan.probe_delay = (unsigned int )((unsigned short )priv->scan_min_time) * 1000U;
  scan.international_scan = 0U;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s: sending CMD_SCAN\n", "at76_hw_scan");
  } else {
  }
  ret = at76_set_card_command(priv->udev, 3, (void *)(& scan), 48);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "CMD_SCAN failed: %d\n",
            ret);
    goto exit;
  } else {
  }
  priv->scanning = 1;
  ieee80211_queue_delayed_work(priv->hw, & priv->dwork_hw_scan, 62UL);
  exit:
  mutex_unlock(& priv->mtx);
  return (0);
}
}
static int at76_config(struct ieee80211_hw *hw , u32 changed )
{
  struct at76_priv *priv ;
  struct _ddebug descriptor ;
  long tmp ;
  bool tmp___0 ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s(): channel %d\n", "at76_config", (int )(hw->conf.chandef.chan)->hw_value);
  } else {
  }
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: bssid:\n");
    descriptor.modname = "at76c50x_usb";
    descriptor.function = "at76_config";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared";
    descriptor.format = "";
    descriptor.lineno = 2054U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      print_hex_dump("\017", "", 2, 16, 1, (void const *)(& priv->bssid), 6UL, 1);
    } else {
    }
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  priv->channel = (int )(hw->conf.chandef.chan)->hw_value;
  tmp___0 = is_valid_ether_addr((u8 const *)(& priv->bssid));
  if ((int )tmp___0) {
    at76_join(priv);
  } else {
    at76_start_monitor(priv);
  }
  mutex_unlock(& priv->mtx);
  return (0);
}
}
static void at76_bss_info_changed(struct ieee80211_hw *hw , struct ieee80211_vif *vif ,
                                  struct ieee80211_bss_conf *conf , u32 changed )
{
  struct at76_priv *priv ;
  struct _ddebug descriptor ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  bool tmp___0 ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s():\n", "at76_bss_info_changed");
  } else {
  }
  if ((changed & 128U) == 0U) {
    return;
  } else {
  }
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: bssid:\n");
    descriptor.modname = "at76c50x_usb";
    descriptor.function = "at76_bss_info_changed";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/947/dscv_tempdir/dscv/ri/205_9a/drivers/net/wireless/at76c50x-usb.o.c.prepared";
    descriptor.format = "";
    descriptor.lineno = 2082U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      print_hex_dump("\017", "", 2, 16, 1, (void const *)conf->bssid, 6UL, 1);
    } else {
    }
  } else {
  }
  mutex_lock_nested(& priv->mtx, 0U);
  __len = 6UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& priv->bssid), (void const *)conf->bssid, __len);
  } else {
    __ret = memcpy((void *)(& priv->bssid), (void const *)conf->bssid,
                             __len);
  }
  tmp___0 = is_valid_ether_addr((u8 const *)(& priv->bssid));
  if ((int )tmp___0) {
    at76_join(priv);
  } else {
  }
  mutex_unlock(& priv->mtx);
  return;
}
}
static void at76_configure_filter(struct ieee80211_hw *hw , unsigned int changed_flags ,
                                  unsigned int *total_flags , u64 multicast )
{
  struct at76_priv *priv ;
  int flags ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s(): changed_flags=0x%08x total_flags=0x%08x\n", "at76_configure_filter",
           changed_flags, *total_flags);
  } else {
  }
  flags = (int )changed_flags & 1;
  *total_flags = 1U;
  if ((unsigned int )*((unsigned char *)priv + 1032UL) != 0U) {
    return;
  } else {
  }
  if (flags != 0 && priv->promisc == 0) {
    priv->promisc = 1;
  } else
  if (flags == 0 && priv->promisc != 0) {
    priv->promisc = 0;
  } else {
    return;
  }
  ieee80211_queue_work(hw, & priv->work_set_promisc);
  return;
}
}
static int at76_set_wep(struct at76_priv *priv )
{
  int ret ;
  struct mib_mac_wep *mib_data ;
  size_t __len ;
  void *__ret ;
  {
  ret = 0;
  mib_data = & priv->mib_buf.data.wep_mib;
  priv->mib_buf.type = 6U;
  priv->mib_buf.size = 65U;
  priv->mib_buf.index = 0U;
  memset((void *)mib_data, 0, 65UL);
  if (priv->wep_enabled != 0) {
    if ((unsigned int )priv->wep_keys_len[priv->wep_key_id] > 5U) {
      mib_data->encryption_level = 2U;
    } else {
      mib_data->encryption_level = 1U;
    }
    mib_data->exclude_unencrypted = 1U;
  } else {
    mib_data->exclude_unencrypted = 0U;
    mib_data->encryption_level = 0U;
  }
  mib_data->privacy_invoked = (u8 )priv->wep_enabled;
  mib_data->wep_default_key_id = (u8 )priv->wep_key_id;
  __len = 52UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& mib_data->wep_default_keyvalue), (void const *)(& priv->wep_keys),
                     __len);
  } else {
    __ret = memcpy((void *)(& mib_data->wep_default_keyvalue), (void const *)(& priv->wep_keys),
                             __len);
  }
  ret = at76_set_mib(priv, & priv->mib_buf);
  if (ret < 0) {
    dev_err((struct device const *)(& ((priv->hw)->wiphy)->dev), "set_mib (wep) failed: %d\n",
            ret);
  } else {
  }
  return (ret);
}
}
static int at76_set_key(struct ieee80211_hw *hw , enum set_key_cmd cmd , struct ieee80211_vif *vif ,
                        struct ieee80211_sta *sta , struct ieee80211_key_conf *key )
{
  struct at76_priv *priv ;
  int i ;
  size_t __len ;
  void *__ret ;
  {
  priv = (struct at76_priv *)hw->priv;
  if ((int )at76_debug < 0) {
    printk("\017at76c50x-usb: %s(): cmd %d key->cipher %d key->keyidx %d key->keylen %d\n",
           "at76_set_key", (unsigned int )cmd, key->cipher, (int )key->keyidx, (int )key->keylen);
  } else {
  }
  if (key->cipher != 1027073U && key->cipher != 1027077U) {
    return (-95);
  } else {
  }
  key->hw_key_idx = (u8 )key->keyidx;
  mutex_lock_nested(& priv->mtx, 0U);
  switch ((unsigned int )cmd) {
  case 0U:
  __len = (size_t )key->keylen;
  __ret = memcpy((void *)(& priv->wep_keys) + (unsigned long )key->keyidx,
                           (void const *)(& key->key), __len);
  priv->wep_keys_len[(int )key->keyidx] = key->keylen;
  priv->wep_key_id = (int )key->keyidx;
  goto ldv_49273;
  case 1U: ;
  default:
  priv->wep_keys_len[(int )key->keyidx] = 0U;
  goto ldv_49273;
  }
  ldv_49273:
  priv->wep_enabled = 0;
  i = 0;
  goto ldv_49277;
  ldv_49276: ;
  if ((unsigned int )priv->wep_keys_len[i] != 0U) {
    priv->wep_enabled = 1;
  } else {
  }
  i = i + 1;
  ldv_49277: ;
  if (i <= 3) {
    goto ldv_49276;
  } else {
  }
  at76_set_wep(priv);
  mutex_unlock(& priv->mtx);
  return (0);
}
}
static struct ieee80211_ops const at76_ops =
     {& at76_mac80211_tx, & at76_mac80211_start, & at76_mac80211_stop, 0, 0, 0, & at76_add_interface,
    0, & at76_remove_interface, & at76_config, & at76_bss_info_changed, 0, 0, 0, & at76_configure_filter,
    0, & at76_set_key, 0, 0, 0, & at76_hw_scan, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct at76_priv *at76_alloc_new_device(struct usb_device *udev )
{
  struct ieee80211_hw *hw ;
  struct at76_priv *priv ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_2 ;
  struct lock_class_key __key___3 ;
  atomic_long_t __constr_expr_3 ;
  struct lock_class_key __key___4 ;
  {
  hw = ieee80211_alloc_hw(1128UL, & at76_ops);
  if ((unsigned long )hw == (unsigned long )((struct ieee80211_hw *)0)) {
    printk("\vat76c50x-usb: could not register ieee80211_hw\n");
    return ((struct at76_priv *)0);
  } else {
  }
  priv = (struct at76_priv *)hw->priv;
  priv->hw = hw;
  priv->udev = udev;
  __mutex_init(& priv->mtx, "&priv->mtx", & __key);
  __init_work(& priv->work_set_promisc, 0);
  __constr_expr_0.counter = 137438953408L;
  priv->work_set_promisc.data = __constr_expr_0;
  lockdep_init_map(& priv->work_set_promisc.lockdep_map, "(&priv->work_set_promisc)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& priv->work_set_promisc.entry);
  priv->work_set_promisc.func = & at76_work_set_promisc;
  __init_work(& priv->work_submit_rx, 0);
  __constr_expr_1.counter = 137438953408L;
  priv->work_submit_rx.data = __constr_expr_1;
  lockdep_init_map(& priv->work_submit_rx.lockdep_map, "(&priv->work_submit_rx)",
                   & __key___1, 0);
  INIT_LIST_HEAD(& priv->work_submit_rx.entry);
  priv->work_submit_rx.func = & at76_work_submit_rx;
  __init_work(& priv->work_join_bssid, 0);
  __constr_expr_2.counter = 137438953408L;
  priv->work_join_bssid.data = __constr_expr_2;
  lockdep_init_map(& priv->work_join_bssid.lockdep_map, "(&priv->work_join_bssid)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& priv->work_join_bssid.entry);
  priv->work_join_bssid.func = & at76_work_join_bssid;
  __init_work(& priv->dwork_hw_scan.work, 0);
  __constr_expr_3.counter = 137438953408L;
  priv->dwork_hw_scan.work.data = __constr_expr_3;
  lockdep_init_map(& priv->dwork_hw_scan.work.lockdep_map, "(&(&priv->dwork_hw_scan)->work)",
                   & __key___3, 0);
  INIT_LIST_HEAD(& priv->dwork_hw_scan.work.entry);
  priv->dwork_hw_scan.work.func = & at76_dwork_hw_scan;
  init_timer_key(& priv->dwork_hw_scan.timer, 2U, "(&(&priv->dwork_hw_scan)->timer)",
                 & __key___4);
  priv->dwork_hw_scan.timer.function = & delayed_work_timer_fn;
  priv->dwork_hw_scan.timer.data = (unsigned long )(& priv->dwork_hw_scan);
  tasklet_init(& priv->rx_tasklet, & at76_rx_tasklet, 0UL);
  priv->pm_mode = 1U;
  priv->pm_period = 0U;
  return (priv);
}
}
static int at76_alloc_urbs(struct at76_priv *priv , struct usb_interface *interface )
{
  struct usb_endpoint_descriptor *endpoint ;
  struct usb_endpoint_descriptor *ep_in ;
  struct usb_endpoint_descriptor *ep_out ;
  int i ;
  int buffer_size ;
  struct usb_host_interface *iface_desc ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  {
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: ENTER\n", "at76_alloc_urbs");
  } else {
  }
  if ((at76_debug & 32768U) != 0U) {
    printk("\017at76c50x-usb: %s: NumEndpoints %d \n", "at76_alloc_urbs", (int )(interface->altsetting)->desc.bNumEndpoints);
  } else {
  }
  ep_in = (struct usb_endpoint_descriptor *)0;
  ep_out = (struct usb_endpoint_descriptor *)0;
  iface_desc = interface->cur_altsetting;
  i = 0;
  goto ldv_49307;
  ldv_49306:
  endpoint = & (iface_desc->endpoint + (unsigned long )i)->desc;
  if ((at76_debug & 32768U) != 0U) {
    printk("\017at76c50x-usb: %s: %d. endpoint: addr 0x%x attr 0x%x\n", "at76_alloc_urbs",
           i, (int )endpoint->bEndpointAddress, (int )endpoint->bmAttributes);
  } else {
  }
  if ((unsigned long )ep_in == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    tmp = usb_endpoint_is_bulk_in((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp != 0) {
      ep_in = endpoint;
    } else {
    }
  } else {
  }
  if ((unsigned long )ep_out == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    tmp___0 = usb_endpoint_is_bulk_out((struct usb_endpoint_descriptor const *)endpoint);
    if (tmp___0 != 0) {
      ep_out = endpoint;
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_49307: ;
  if ((int )iface_desc->desc.bNumEndpoints > i) {
    goto ldv_49306;
  } else {
  }
  if ((unsigned long )ep_in == (unsigned long )((struct usb_endpoint_descriptor *)0) || (unsigned long )ep_out == (unsigned long )((struct usb_endpoint_descriptor *)0)) {
    dev_err((struct device const *)(& interface->dev), "bulk endpoints missing\n");
    return (-6);
  } else {
  }
  tmp___1 = __create_pipe(priv->udev, (unsigned int )ep_in->bEndpointAddress);
  priv->rx_pipe = tmp___1 | 3221225600U;
  tmp___2 = __create_pipe(priv->udev, (unsigned int )ep_out->bEndpointAddress);
  priv->tx_pipe = tmp___2 | 3221225472U;
  priv->rx_urb = usb_alloc_urb(0, 208U);
  priv->tx_urb = usb_alloc_urb(0, 208U);
  if ((unsigned long )priv->rx_urb == (unsigned long )((struct urb *)0) || (unsigned long )priv->tx_urb == (unsigned long )((struct urb *)0)) {
    dev_err((struct device const *)(& interface->dev), "cannot allocate URB\n");
    return (-12);
  } else {
  }
  buffer_size = 2413;
  priv->bulk_out_buffer = kmalloc((size_t )buffer_size, 208U);
  if ((unsigned long )priv->bulk_out_buffer == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: EXIT\n", "at76_alloc_urbs");
  } else {
  }
  return (0);
}
}
static struct ieee80211_rate at76_rates[4U] = { {0U, 10U, 0U, (unsigned short)0},
        {0U, 20U, 1U, (unsigned short)0},
        {0U, 55U, 2U, (unsigned short)0},
        {0U, 110U, 3U, (unsigned short)0}};
static struct ieee80211_channel at76_channels[14U] =
  { {0, 2412U, 1U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2417U, 2U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2422U, 3U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2427U, 4U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2432U, 5U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2437U, 6U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2442U, 7U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2447U, 8U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2452U, 9U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2457U, 10U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2462U, 11U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2467U, 12U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2472U, 13U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U},
        {0, 2484U, 14U, 0U, 0, 0, 0, (_Bool)0, 0U, 0, 0, 0, 0UL, 0U}};
static struct ieee80211_supported_band at76_supported_band = {(struct ieee80211_channel *)(& at76_channels), (struct ieee80211_rate *)(& at76_rates),
    0, 14, 4, {(unsigned short)0, (_Bool)0, (unsigned char)0, (unsigned char)0, {{(unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0},
                                                                                 (unsigned short)0,
                                                                                 (unsigned char)0,
                                                                                 {(unsigned char)0,
                                                                                  (unsigned char)0,
                                                                                  (unsigned char)0}}},
    {(_Bool)0, 0U, {(unsigned short)0, (unsigned short)0, (unsigned short)0, (unsigned short)0}}};
static int at76_init_new_device(struct at76_priv *priv , struct usb_interface *interface )
{
  struct wiphy *wiphy ;
  size_t len ;
  int ret ;
  char const *tmp ;
  {
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: USB interface: %d endpoints\n", (int )(interface->cur_altsetting)->desc.bNumEndpoints);
  } else {
  }
  ret = at76_alloc_urbs(priv, interface);
  if (ret < 0) {
    goto exit;
  } else {
  }
  ret = at76_get_hw_config(priv);
  if (ret < 0) {
    dev_err((struct device const *)(& interface->dev), "cannot get MAC address\n");
    goto exit;
  } else {
  }
  priv->domain = at76_get_reg_domain((int )priv->regulatory_domain);
  priv->channel = 10;
  priv->iw_mode = 2;
  priv->rts_threshold = 1536;
  priv->frag_threshold = 1536;
  priv->short_retry_limit = 8;
  priv->txrate = 4;
  priv->preamble_type = 0;
  priv->beacon_period = 100;
  priv->auth_mode = 0;
  priv->scan_min_time = 10;
  priv->scan_max_time = 120;
  priv->scan_mode = 0;
  priv->device_unplugged = 0U;
  wiphy = (priv->hw)->wiphy;
  ((priv->hw)->wiphy)->max_scan_ssids = 1U;
  ((priv->hw)->wiphy)->max_scan_ie_len = 0U;
  ((priv->hw)->wiphy)->interface_modes = 4U;
  ((priv->hw)->wiphy)->bands[0] = & at76_supported_band;
  (priv->hw)->flags = 34U;
  (priv->hw)->max_signal = 100;
  SET_IEEE80211_DEV(priv->hw, & interface->dev);
  SET_IEEE80211_PERM_ADDR(priv->hw, (u8 *)(& priv->mac_addr));
  len = 32UL;
  snprintf((char *)(& wiphy->fw_version), len, "%d.%d.%d-%d", (int )priv->fw_version.major,
           (int )priv->fw_version.minor, (int )priv->fw_version.patch, (int )priv->fw_version.build);
  wiphy->hw_version = (u32 )priv->board_type;
  ret = ieee80211_register_hw(priv->hw);
  if (ret != 0) {
    printk("\vcannot register mac80211 hw (status %d)!\n", ret);
    goto exit;
  } else {
  }
  priv->mac80211_registered = 1;
  tmp = dev_name((struct device const *)(& interface->dev));
  _dev_info((struct device const *)(& ((priv->hw)->wiphy)->dev), "USB %s, MAC %pM, firmware %d.%d.%d-%d\n",
            tmp, (u8 *)(& priv->mac_addr), (int )priv->fw_version.major, (int )priv->fw_version.minor,
            (int )priv->fw_version.patch, (int )priv->fw_version.build);
  _dev_info((struct device const *)(& ((priv->hw)->wiphy)->dev), "regulatory domain 0x%02x: %s\n",
            (int )priv->regulatory_domain, (priv->domain)->name);
  exit: ;
  return (ret);
}
}
static void at76_delete_device(struct at76_priv *priv )
{
  {
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: ENTER\n", "at76_delete_device");
  } else {
  }
  priv->device_unplugged = 1U;
  tasklet_kill(& priv->rx_tasklet);
  if (priv->mac80211_registered != 0) {
    ieee80211_unregister_hw(priv->hw);
  } else {
  }
  if ((unsigned long )priv->tx_urb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(priv->tx_urb);
    usb_free_urb(priv->tx_urb);
  } else {
  }
  if ((unsigned long )priv->rx_urb != (unsigned long )((struct urb *)0)) {
    usb_kill_urb(priv->rx_urb);
    usb_free_urb(priv->rx_urb);
  } else {
  }
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: unlinked urbs\n", "at76_delete_device");
  } else {
  }
  kfree((void const *)priv->bulk_out_buffer);
  del_timer_sync(& ledtrig_tx_timer);
  ldv_kfree_skb_13(priv->rx_skb);
  usb_put_dev(priv->udev);
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: before freeing priv/ieee80211_hw\n", "at76_delete_device");
  } else {
  }
  ieee80211_free_hw(priv->hw);
  if ((at76_debug & 131072U) != 0U) {
    printk("\017at76c50x-usb: %s: EXIT\n", "at76_delete_device");
  } else {
  }
  return;
}
}
static int at76_probe(struct usb_interface *interface , struct usb_device_id const *id )
{
  int ret ;
  struct at76_priv *priv ;
  struct fwentry *fwe ;
  struct usb_device *udev ;
  int op_mode ;
  int need_ext_fw ;
  struct mib_fw_version *fwv ;
  int board_type ;
  struct usb_device *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  need_ext_fw = 0;
  fwv = (struct mib_fw_version *)0;
  board_type = (int )id->driver_info;
  tmp = interface_to_usbdev(interface);
  udev = usb_get_dev(tmp);
  tmp___0 = kmalloc(4UL, 208U);
  fwv = (struct mib_fw_version *)tmp___0;
  if ((unsigned long )fwv == (unsigned long )((struct mib_fw_version *)0)) {
    ret = -12;
    goto exit;
  } else {
  }
  fwe = at76_load_firmware(udev, (enum board_type )board_type);
  if ((unsigned long )fwe == (unsigned long )((struct fwentry *)0)) {
    ret = -2;
    goto exit;
  } else {
  }
  op_mode = at76_get_op_mode(udev);
  if ((at76_debug & 16384U) != 0U) {
    printk("\017at76c50x-usb: opmode %d\n", op_mode);
  } else {
  }
  if (op_mode == 2) {
    dev_err((struct device const *)(& interface->dev), "cannot handle a device in HW_CONFIG_MODE\n");
    ret = -16;
    goto exit;
  } else {
  }
  if (op_mode != 1 && op_mode != 4) {
    dev_printk("\017", (struct device const *)(& interface->dev), "downloading internal firmware\n");
    ret = at76_load_internal_fw(udev, fwe);
    if (ret < 0) {
      dev_err((struct device const *)(& interface->dev), "error %d downloading internal firmware\n",
              ret);
      goto exit;
    } else {
    }
    usb_put_dev(udev);
    goto exit;
  } else {
  }
  if (((unsigned int )fwe->fw_version.major != 0U || (unsigned int )fwe->fw_version.minor > 99U) || op_mode == 1) {
    ret = at76_get_mib(udev, 8, (void *)fwv, 4);
    if (ret < 0 || (unsigned int )((int )fwv->major | (int )fwv->minor) == 0U) {
      need_ext_fw = 1;
    } else {
    }
  } else {
    need_ext_fw = 1;
  }
  if (need_ext_fw != 0) {
    dev_printk("\017", (struct device const *)(& interface->dev), "downloading external firmware\n");
    ret = at76_load_external_fw(udev, fwe);
    if (ret < 0) {
      goto exit;
    } else {
    }
    ret = at76_get_mib(udev, 8, (void *)fwv, 4);
    if (ret < 0) {
      dev_err((struct device const *)(& interface->dev), "error %d getting firmware version\n",
              ret);
      goto exit;
    } else {
    }
  } else {
  }
  priv = at76_alloc_new_device(udev);
  if ((unsigned long )priv == (unsigned long )((struct at76_priv *)0)) {
    ret = -12;
    goto exit;
  } else {
  }
  usb_set_intfdata(interface, (void *)priv);
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& priv->fw_version), (void const *)fwv, __len);
  } else {
    __ret = memcpy((void *)(& priv->fw_version), (void const *)fwv, __len);
  }
  priv->board_type = (enum board_type )board_type;
  ret = at76_init_new_device(priv, interface);
  if (ret < 0) {
    at76_delete_device(priv);
  } else {
  }
  exit:
  kfree((void const *)fwv);
  if (ret < 0) {
    usb_put_dev(udev);
  } else {
  }
  return (ret);
}
}
static void at76_disconnect(struct usb_interface *interface )
{
  struct at76_priv *priv ;
  void *tmp ;
  {
  tmp = usb_get_intfdata(interface);
  priv = (struct at76_priv *)tmp;
  usb_set_intfdata(interface, (void *)0);
  if ((unsigned long )priv == (unsigned long )((struct at76_priv *)0)) {
    return;
  } else {
  }
  _dev_info((struct device const *)(& ((priv->hw)->wiphy)->dev), "disconnecting\n");
  at76_delete_device(priv);
  _dev_info((struct device const *)(& interface->dev), "disconnected\n");
  return;
}
}
static struct usb_driver at76_driver =
     {"at76c50x-usb", & at76_probe, & at76_disconnect, 0, 0, 0, 0, 0, 0, (struct usb_device_id const *)(& dev_table),
    {{{{{{0U}}, 0U, 0U, 0, {0, {0, 0}, 0, 0, 0UL}}}}, {0, 0}}, {{0, 0, 0, 0, (_Bool)0,
                                                                 0, 0, 0, 0, 0, 0,
                                                                 0, 0, 0, 0}, 0},
    (unsigned char)0, (unsigned char)0, 1U, (unsigned char)0};
static int at76_mod_init(void)
{
  int result ;
  struct lock_class_key __key ;
  {
  printk("\016Atmel at76x USB Wireless LAN Driver 0.17 loading\n");
  __mutex_init(& fw_mutex, "&fw_mutex", & __key);
  result = ldv_usb_register_driver_14(& at76_driver, & __this_module, "at76c50x_usb");
  if (result < 0) {
    printk("\vat76c50x-usb: usb_register failed (status %d)\n", result);
  } else {
  }
  led_trigger_register_simple("at76_usb-tx", & ledtrig_tx);
  return (result);
}
}
static void at76_mod_exit(void)
{
  int i ;
  {
  printk("\016Atmel at76x USB Wireless LAN Driver 0.17 unloading\n");
  ldv_usb_deregister_15(& at76_driver);
  i = 0;
  goto ldv_49361;
  ldv_49360:
  release_firmware(firmwares[i].fw);
  i = i + 1;
  ldv_49361: ;
  if ((unsigned int )i <= 8U) {
    goto ldv_49360;
  } else {
  }
  led_trigger_unregister_simple(ledtrig_tx);
  return;
}
}
int ldv_retval_0 ;
int ldv_retval_1 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int ldv_retval_2 ;
void ldv_usb_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1560UL);
  at76_driver_group1 = (struct usb_interface *)tmp;
  return;
}
}
void ldv_initialize_ieee80211_ops_2(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(144UL);
  at76_ops_group0 = (struct ieee80211_hw *)tmp;
  tmp___0 = ldv_zalloc(280UL);
  at76_ops_group1 = (struct ieee80211_vif *)tmp___0;
  return;
}
}
int main(void)
{
  struct usb_device_id *ldvarg0 ;
  void *tmp ;
  unsigned long ldvarg1 ;
  unsigned long tmp___0 ;
  unsigned int *ldvarg11 ;
  void *tmp___1 ;
  struct ieee80211_sta *ldvarg7 ;
  void *tmp___2 ;
  struct ieee80211_tx_control *ldvarg3 ;
  void *tmp___3 ;
  unsigned int ldvarg12 ;
  unsigned int tmp___4 ;
  u32 ldvarg5 ;
  u32 tmp___5 ;
  struct ieee80211_bss_conf *ldvarg6 ;
  void *tmp___6 ;
  enum set_key_cmd ldvarg8 ;
  struct cfg80211_scan_request *ldvarg4 ;
  void *tmp___7 ;
  u32 ldvarg13 ;
  u32 tmp___8 ;
  u64 ldvarg10 ;
  struct ieee80211_key_conf *ldvarg9 ;
  void *tmp___9 ;
  struct sk_buff *ldvarg2 ;
  void *tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  tmp = ldv_zalloc(32UL);
  ldvarg0 = (struct usb_device_id *)tmp;
  tmp___0 = __VERIFIER_nondet_ulong();
  ldvarg1 = tmp___0;
  tmp___1 = ldv_zalloc(4UL);
  ldvarg11 = (unsigned int *)tmp___1;
  tmp___2 = ldv_zalloc(88UL);
  ldvarg7 = (struct ieee80211_sta *)tmp___2;
  tmp___3 = ldv_zalloc(8UL);
  ldvarg3 = (struct ieee80211_tx_control *)tmp___3;
  tmp___4 = __VERIFIER_nondet_uint();
  ldvarg12 = tmp___4;
  tmp___5 = __VERIFIER_nondet_u32();
  ldvarg5 = tmp___5;
  tmp___6 = ldv_zalloc(232UL);
  ldvarg6 = (struct ieee80211_bss_conf *)tmp___6;
  tmp___7 = ldv_zalloc(88UL);
  ldvarg4 = (struct cfg80211_scan_request *)tmp___7;
  tmp___8 = __VERIFIER_nondet_u32();
  ldvarg13 = tmp___8;
  tmp___9 = ldv_zalloc(12UL);
  ldvarg9 = (struct ieee80211_key_conf *)tmp___9;
  tmp___10 = ldv_zalloc(232UL);
  ldvarg2 = (struct sk_buff *)tmp___10;
  ldv_initialize();
  memset((void *)(& ldvarg8), 0, 4UL);
  memset((void *)(& ldvarg10), 0, 8UL);
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_49469:
  tmp___11 = __VERIFIER_nondet_int();
  switch (tmp___11) {
  case 0: ;
  if (ldv_state_variable_1 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = at76_probe(at76_driver_group1, (struct usb_device_id const *)ldvarg0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49441;
    case 1: ;
    if (ldv_state_variable_1 == 2 && usb_counter == 0) {
      at76_disconnect(at76_driver_group1);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49441;
    default:
    ldv_stop();
    }
    ldv_49441: ;
  } else {
  }
  goto ldv_49444;
  case 1: ;
  if (ldv_state_variable_0 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      at76_mod_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_49448;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = at76_mod_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_initialize_ieee80211_ops_2();
        ldv_state_variable_3 = 1;
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_49448;
    default:
    ldv_stop();
    }
    ldv_49448: ;
  } else {
  }
  goto ldv_49444;
  case 2: ;
  if (ldv_state_variable_3 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      at76_ledtrig_tx_timerfunc(ldvarg1);
      ldv_state_variable_3 = 1;
    } else {
    }
    goto ldv_49453;
    default:
    ldv_stop();
    }
    ldv_49453: ;
  } else {
  }
  goto ldv_49444;
  case 3: ;
  if (ldv_state_variable_2 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      ldv_retval_2 = at76_mac80211_start(at76_ops_group0);
      if (ldv_retval_2 == 0) {
        ldv_state_variable_2 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_49457;
    case 1: ;
    if (ldv_state_variable_2 == 1) {
      at76_config(at76_ops_group0, ldvarg13);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_config(at76_ops_group0, ldvarg13);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 2: ;
    if (ldv_state_variable_2 == 1) {
      at76_configure_filter(at76_ops_group0, ldvarg12, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_configure_filter(at76_ops_group0, ldvarg12, ldvarg11, ldvarg10);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 3: ;
    if (ldv_state_variable_2 == 1) {
      at76_set_key(at76_ops_group0, ldvarg8, at76_ops_group1, ldvarg7, ldvarg9);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_set_key(at76_ops_group0, ldvarg8, at76_ops_group1, ldvarg7, ldvarg9);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 4: ;
    if (ldv_state_variable_2 == 1) {
      at76_bss_info_changed(at76_ops_group0, at76_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_bss_info_changed(at76_ops_group0, at76_ops_group1, ldvarg6, ldvarg5);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 5: ;
    if (ldv_state_variable_2 == 1) {
      at76_add_interface(at76_ops_group0, at76_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_add_interface(at76_ops_group0, at76_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 6: ;
    if (ldv_state_variable_2 == 1) {
      at76_hw_scan(at76_ops_group0, at76_ops_group1, ldvarg4);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_hw_scan(at76_ops_group0, at76_ops_group1, ldvarg4);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 7: ;
    if (ldv_state_variable_2 == 2) {
      at76_mac80211_stop(at76_ops_group0);
      ldv_state_variable_2 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_49457;
    case 8: ;
    if (ldv_state_variable_2 == 1) {
      at76_mac80211_tx(at76_ops_group0, ldvarg3, ldvarg2);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_mac80211_tx(at76_ops_group0, ldvarg3, ldvarg2);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    case 9: ;
    if (ldv_state_variable_2 == 1) {
      at76_remove_interface(at76_ops_group0, at76_ops_group1);
      ldv_state_variable_2 = 1;
    } else {
    }
    if (ldv_state_variable_2 == 2) {
      at76_remove_interface(at76_ops_group0, at76_ops_group1);
      ldv_state_variable_2 = 2;
    } else {
    }
    goto ldv_49457;
    default:
    ldv_stop();
    }
    ldv_49457: ;
  } else {
  }
  goto ldv_49444;
  default:
  ldv_stop();
  }
  ldv_49444: ;
  goto ldv_49469;
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
__inline static struct sk_buff *ldv_dev_alloc_skb_12(unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
void ldv_kfree_skb_13(struct sk_buff *ldv_func_arg1 )
{
  {
  ldv_skb_free(ldv_func_arg1);
  return;
}
}
int ldv_usb_register_driver_14(struct usb_driver *ldv_func_arg1 , struct module *ldv_func_arg2 ,
                               char const *ldv_func_arg3 )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = usb_register_driver(ldv_func_arg1, ldv_func_arg2, ldv_func_arg3);
  ldv_func_res = tmp;
  ldv_state_variable_1 = 1;
  usb_counter = 0;
  ldv_usb_driver_1();
  return (ldv_func_res);
}
}
void ldv_usb_deregister_15(struct usb_driver *arg )
{
  {
  usb_deregister(arg);
  ldv_state_variable_1 = 0;
  return;
}
}
__inline static void ldv_error(void);
Element set_impl[15] ;
int last_index = 0;
__inline static void ldv_set_init(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_init(Set set )
{
  {
  set = set_impl;
  last_index = 0;
  return;
}
}
__inline static void ldv_set_add(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_add(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return;
    } else {
    }
    i = i + 1;
  }
  if (last_index < 15) {
    set_impl[last_index] = e;
    last_index = last_index + 1;
  } else {
  }
  return;
}
}
__inline static void ldv_set_remove(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_set_remove(Set set , Element e )
{
  int i ;
  int deleted_index ;
  {
  deleted_index = -1;
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      deleted_index = i;
      break;
    } else {
    }
    i = i + 1;
  }
  if (deleted_index != -1) {
    i = deleted_index + 1;
    while (1) {
      if (i < last_index) {
      } else {
        break;
      }
      set_impl[i - 1] = set_impl[i];
      i = i + 1;
    }
    last_index = last_index - 1;
  } else {
  }
  return;
}
}
__inline static int ldv_set_contains(Set set , Element e ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_contains(Set set , Element e )
{
  int i ;
  {
  i = 0;
  while (1) {
    if (i < last_index) {
    } else {
      break;
    }
    if ((unsigned long )set_impl[i] == (unsigned long )e) {
      return (1);
    } else {
    }
    i = i + 1;
  }
  return (0);
}
}
__inline static int ldv_set_is_empty(Set set ) __attribute__((__no_instrument_function__)) ;
__inline static int ldv_set_is_empty(Set set )
{
  {
  return (last_index == 0);
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
  bool tmp___7 ;
  int tmp___8 ;
  {
  if (! ptr) {
    tmp___8 = 1;
  } else {
    tmp___7 = ldv_is_err((unsigned long )ptr);
    if (tmp___7) {
      tmp___8 = 1;
    } else {
      tmp___8 = 0;
    }
  }
  return (tmp___8);
}
}
Set LDV_SKBS ;
struct sk_buff___0 *ldv_skb_alloc(void)
{
  void *skb ;
  void *tmp___7 ;
  {
  tmp___7 = ldv_zalloc(sizeof(struct sk_buff___0 ));
  skb = (struct sk_buff___0 *)tmp___7;
  if (! skb) {
    return ((void *)0);
  } else {
    ldv_set_add(LDV_SKBS, skb);
    return (skb);
  }
}
}
void ldv_initialize(void)
{
  {
  ldv_set_init(LDV_SKBS);
  return;
}
}
void ldv_skb_free(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return;
}
}
int ldv_skb_free_int(struct sk_buff___0 *skb )
{
  {
  ldv_set_remove(LDV_SKBS, skb);
  return (0);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void) ;
struct sk_buff___0 *ldv_dev_alloc_skb(void)
{
  void *skb ;
  int tmp___7 ;
  {
  tmp___7 = (int )ldv_netdev_alloc_skb();
  skb = tmp___7;
  return (skb);
}
}
struct sk_buff___0 *ldv_netdev_alloc_skb(void)
{
  struct sk_buff___0 *tmp___7 ;
  {
  tmp___7 = ldv_skb_alloc();
  return (tmp___7);
}
}
int ldv_skb_current(struct sk_buff___0 *skb )
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_contains(LDV_SKBS, skb);
  if (tmp___7) {
    return (1);
  } else {
    return (0);
  }
}
}
void ldv_check_final_state(void)
{
  int tmp___7 ;
  {
  tmp___7 = ldv_set_is_empty(LDV_SKBS);
  if (tmp___7) {
  } else {
    ldv_error();
  }
  return;
}
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __tasklet_schedule(struct tasklet_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
const u8 *cfg80211_find_ie(u8 arg0, const u8 *arg1, int arg2) {
  return ldv_malloc(sizeof(u8));
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
struct ieee80211_hw *ieee80211_alloc_hw(size_t arg0, const struct ieee80211_ops *arg1) {
  return ldv_malloc(sizeof(struct ieee80211_hw));
}
int __VERIFIER_nondet_int(void);
int ieee80211_channel_to_frequency(int arg0, enum ieee80211_band arg1) {
  return __VERIFIER_nondet_int();
}
void ieee80211_free_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_queue_delayed_work(struct ieee80211_hw *arg0, struct delayed_work *arg1, unsigned long arg2) {
  return;
}
void ieee80211_queue_work(struct ieee80211_hw *arg0, struct work_struct *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ieee80211_register_hw(struct ieee80211_hw *arg0) {
  return __VERIFIER_nondet_int();
}
void ieee80211_rx_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_scan_completed(struct ieee80211_hw *arg0, bool arg1) {
  return;
}
void ieee80211_stop_queues(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_tx_status_irqsafe(struct ieee80211_hw *arg0, struct sk_buff *arg1) {
  return;
}
void ieee80211_unregister_hw(struct ieee80211_hw *arg0) {
  return;
}
void ieee80211_wake_queues(struct ieee80211_hw *arg0) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void led_trigger_event(struct led_trigger *arg0, enum led_brightness arg1) {
  return;
}
void led_trigger_register_simple(const char *arg0, struct led_trigger **arg1) {
  return;
}
void led_trigger_unregister_simple(struct led_trigger *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
  return;
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
void print_hex_dump(const char *arg0, const char *arg1, int arg2, int arg3, int arg4, const void *arg5, size_t arg6, bool arg7) {
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
int request_firmware(const struct firmware **arg0, const char *arg1, struct device *arg2) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
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
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
void tasklet_init(struct tasklet_struct *arg0, void (*arg1)(unsigned long), unsigned long arg2) {
  return;
}
void tasklet_kill(struct tasklet_struct *arg0) {
  return;
}
struct urb *usb_alloc_urb(int arg0, gfp_t arg1) {
  return ldv_malloc(sizeof(struct urb));
}
int __VERIFIER_nondet_int(void);
int usb_control_msg(struct usb_device *arg0, unsigned int arg1, __u8 arg2, __u8 arg3, __u16 arg4, __u16 arg5, void *arg6, __u16 arg7, int arg8) {
  return __VERIFIER_nondet_int();
}
void usb_deregister(struct usb_driver *arg0) {
  return;
}
void usb_free_urb(struct urb *arg0) {
  return;
}
struct usb_device *usb_get_dev(struct usb_device *arg0) {
  return ldv_malloc(sizeof(struct usb_device));
}
void usb_kill_urb(struct urb *arg0) {
  return;
}
void usb_put_dev(struct usb_device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_register_driver(struct usb_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_reset_device(struct usb_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_submit_urb(struct urb *arg0, gfp_t arg1) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
