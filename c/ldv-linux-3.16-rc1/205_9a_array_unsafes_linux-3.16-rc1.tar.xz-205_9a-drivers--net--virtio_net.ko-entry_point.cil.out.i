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
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct sock;
struct kiocb;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_177 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_177 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
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
struct virtio_device;
struct ethtool_channels;
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
union __anonunion_data_185 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_185 data ;
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
struct __anonstruct_sync_serial_settings_186 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_186 sync_serial_settings;
struct __anonstruct_te1_settings_187 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_187 te1_settings;
struct __anonstruct_raw_hdlc_proto_188 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_188 raw_hdlc_proto;
struct __anonstruct_fr_proto_189 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_189 fr_proto;
struct __anonstruct_fr_proto_pvc_190 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_190 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_191 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_191 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_192 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_192 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_193 {
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
   union __anonunion_ifs_ifsu_193 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_194 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_195 {
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
   union __anonunion_ifr_ifrn_194 ifr_ifrn ;
   union __anonunion_ifr_ifru_195 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct __anonstruct_ldv_26728_198 {
   spinlock_t lock ;
   unsigned int count ;
};
union __anonunion_ldv_26729_197 {
   struct __anonstruct_ldv_26728_198 ldv_26728 ;
};
struct lockref {
   union __anonunion_ldv_26729_197 ldv_26729 ;
};
struct nameidata;
struct vfsmount;
struct __anonstruct_ldv_26752_200 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_26754_199 {
   struct __anonstruct_ldv_26752_200 ldv_26752 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_26754_199 ldv_26754 ;
   unsigned char const *name ;
};
struct dentry_operations;
union __anonunion_d_u_201 {
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
   union __anonunion_d_u_201 d_u ;
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
struct __anonstruct_ldv_27115_203 {
   struct radix_tree_node *parent ;
   void *private_data ;
};
union __anonunion_ldv_27117_202 {
   struct __anonstruct_ldv_27115_203 ldv_27115 ;
   struct callback_head callback_head ;
};
struct radix_tree_node {
   unsigned int path ;
   unsigned int count ;
   union __anonunion_ldv_27117_202 ldv_27117 ;
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
struct __anonstruct_kprojid_t_204 {
   projid_t val ;
};
typedef struct __anonstruct_kprojid_t_204 kprojid_t;
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
union __anonunion_ldv_27642_205 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_27642_205 ldv_27642 ;
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
union __anonunion_ldv_28056_208 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_28076_209 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_28093_210 {
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
   union __anonunion_ldv_28056_208 ldv_28056 ;
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
   union __anonunion_ldv_28076_209 ldv_28076 ;
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
   union __anonunion_ldv_28093_210 ldv_28093 ;
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
union __anonunion_f_u_211 {
   struct llist_node fu_llist ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_211 f_u ;
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
struct __anonstruct_afs_213 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_212 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_213 afs ;
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
   union __anonunion_fl_u_212 fl_u ;
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
struct rx_queue_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct netdev_rx_queue * , struct rx_queue_attribute * , char * ) ;
   ssize_t (*store)(struct netdev_rx_queue * , struct rx_queue_attribute * , char const * ,
                    size_t ) ;
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
struct __anonstruct_adj_list_241 {
   struct list_head upper ;
   struct list_head lower ;
};
struct __anonstruct_all_adj_list_242 {
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
union __anonunion_ldv_39209_243 {
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
   struct __anonstruct_adj_list_241 adj_list ;
   struct __anonstruct_all_adj_list_242 all_adj_list ;
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
   union __anonunion_ldv_39209_243 ldv_39209 ;
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
union __anonunion_ldv_41146_248 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_41146_248 ldv_41146 ;
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
struct virtio_device_id {
   __u32 device ;
   __u32 vendor ;
};
struct vring_desc {
   __u64 addr ;
   __u32 len ;
   __u16 flags ;
   __u16 next ;
};
struct vring_avail {
   __u16 flags ;
   __u16 idx ;
   __u16 ring[] ;
};
struct vring_used_elem {
   __u32 id ;
   __u32 len ;
};
struct vring_used {
   __u16 flags ;
   __u16 idx ;
   struct vring_used_elem ring[] ;
};
struct vring {
   unsigned int num ;
   struct vring_desc *desc ;
   struct vring_avail *avail ;
   struct vring_used *used ;
};
struct vringh {
   bool event_indices ;
   bool weak_barriers ;
   u16 last_avail_idx ;
   u16 last_used_idx ;
   u32 completed ;
   struct vring vring ;
   void (*notify)(struct vringh * ) ;
};
typedef void vrh_callback_t(struct virtio_device * , struct vringh * );
struct vringh_config_ops {
   int (*find_vrhs)(struct virtio_device * , unsigned int , struct vringh ** , vrh_callback_t ** ) ;
   void (*del_vrhs)(struct virtio_device * ) ;
};
struct virtqueue {
   struct list_head list ;
   void (*callback)(struct virtqueue * ) ;
   char const *name ;
   struct virtio_device *vdev ;
   unsigned int index ;
   unsigned int num_free ;
   void *priv ;
};
struct virtio_config_ops;
struct virtio_device {
   int index ;
   struct device dev ;
   struct virtio_device_id id ;
   struct virtio_config_ops const *config ;
   struct vringh_config_ops const *vringh_config ;
   struct list_head vqs ;
   unsigned long features[1U] ;
   void *priv ;
};
struct virtio_driver {
   struct device_driver driver ;
   struct virtio_device_id const *id_table ;
   unsigned int const *feature_table ;
   unsigned int feature_table_size ;
   int (*probe)(struct virtio_device * ) ;
   void (*scan)(struct virtio_device * ) ;
   void (*remove)(struct virtio_device * ) ;
   void (*config_changed)(struct virtio_device * ) ;
   int (*freeze)(struct virtio_device * ) ;
   int (*restore)(struct virtio_device * ) ;
};
typedef void vq_callback_t(struct virtqueue * );
struct virtio_config_ops {
   void (*get)(struct virtio_device * , unsigned int , void * , unsigned int ) ;
   void (*set)(struct virtio_device * , unsigned int , void const * , unsigned int ) ;
   u8 (*get_status)(struct virtio_device * ) ;
   void (*set_status)(struct virtio_device * , u8 ) ;
   void (*reset)(struct virtio_device * ) ;
   int (*find_vqs)(struct virtio_device * , unsigned int , struct virtqueue ** ,
                   vq_callback_t ** , char const ** ) ;
   void (*del_vqs)(struct virtio_device * ) ;
   u32 (*get_features)(struct virtio_device * ) ;
   void (*finalize_features)(struct virtio_device * ) ;
   char const *(*bus_name)(struct virtio_device * ) ;
   int (*set_vq_affinity)(struct virtqueue * , int ) ;
};
struct virtio_net_hdr {
   __u8 flags ;
   __u8 gso_type ;
   __u16 hdr_len ;
   __u16 gso_size ;
   __u16 csum_start ;
   __u16 csum_offset ;
};
struct virtio_net_hdr_mrg_rxbuf {
   struct virtio_net_hdr hdr ;
   __u16 num_buffers ;
};
struct virtio_net_ctrl_hdr {
   __u8 class ;
   __u8 cmd ;
};
typedef __u8 virtio_net_ctrl_ack;
struct virtio_net_ctrl_mac {
   __u32 entries ;
   __u8 macs[][6U] ;
};
struct virtio_net_ctrl_mq {
   __u16 virtqueue_pairs ;
};
struct ewma {
   unsigned long internal ;
   unsigned long factor ;
   unsigned long weight ;
};
struct virtnet_stats {
   struct u64_stats_sync tx_syncp ;
   struct u64_stats_sync rx_syncp ;
   u64 tx_bytes ;
   u64 tx_packets ;
   u64 rx_bytes ;
   u64 rx_packets ;
};
struct send_queue {
   struct virtqueue *vq ;
   struct scatterlist sg[19U] ;
   char name[40U] ;
};
struct receive_queue {
   struct virtqueue *vq ;
   struct napi_struct napi ;
   struct page *pages ;
   struct ewma mrg_avg_pkt_len ;
   struct page_frag alloc_frag ;
   struct scatterlist sg[19U] ;
   char name[40U] ;
};
struct virtnet_info {
   struct virtio_device *vdev ;
   struct virtqueue *cvq ;
   struct net_device *dev ;
   struct send_queue *sq ;
   struct receive_queue *rq ;
   unsigned int status ;
   u16 max_queue_pairs ;
   u16 curr_queue_pairs ;
   bool big_packets ;
   bool mergeable_rx_bufs ;
   bool has_cvq ;
   bool any_header_sg ;
   bool config_enable ;
   struct virtnet_stats *stats ;
   struct delayed_work refill ;
   struct work_struct config_work ;
   struct mutex config_lock ;
   bool affinity_hint_set ;
   struct notifier_block nb ;
};
union __anonunion_ldv_42925_256 {
   struct virtio_net_hdr hdr ;
   struct virtio_net_hdr_mrg_rxbuf mhdr ;
};
struct skb_vnet_hdr {
   union __anonunion_ldv_42925_256 ldv_42925 ;
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
__inline static int test_and_clear_bit(long nr , unsigned long volatile *addr )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2, %0; setc %1": "+m" (*addr),
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
extern unsigned long find_next_bit(unsigned long const * , unsigned long , unsigned long ) ;
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
extern void __might_sleep(char const * , int , int ) ;
extern int sprintf(char * , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern unsigned long __per_cpu_offset[8192U] ;
extern unsigned long this_cpu_off ;
extern void warn_slowpath_null(char const * , int const ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern bool __virt_addr_valid(unsigned long ) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
extern struct cpumask const * const cpu_possible_mask ;
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
__inline static void rep_nop(void)
{
  {
  __asm__ volatile ("rep; nop": : : "memory");
  return;
}
}
__inline static void cpu_relax(void)
{
  {
  rep_nop();
  return;
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_dec_and_test(atomic_t *v )
{
  char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((int )((signed char )c) != 0);
}
}
extern void __local_bh_disable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_disable(void)
{
  {
  __local_bh_disable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern void __local_bh_enable_ip(unsigned long , unsigned int ) ;
__inline static void local_bh_enable(void)
{
  {
  __local_bh_enable_ip((unsigned long )((void *)0), 512U);
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
extern void mutex_unlock(struct mutex * ) ;
extern void dump_page(struct page * , char const * ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_wq ;
extern bool queue_work_on(int , struct workqueue_struct * , struct work_struct * ) ;
extern bool queue_delayed_work_on(int , struct workqueue_struct * , struct delayed_work * ,
                                  unsigned long ) ;
extern bool flush_work(struct work_struct * ) ;
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
extern void *__alloc_percpu(size_t , size_t ) ;
extern void free_percpu(void * ) ;
extern void get_random_bytes(void * , int ) ;
extern int net_ratelimit(void) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
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
extern int dev_warn(struct device const * , char const * , ...) ;
__inline static int PageTail(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(15L, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
__inline static struct page *compound_head_by_tail(struct page *tail )
{
  struct page *head ;
  int tmp ;
  long tmp___0 ;
  {
  head = tail->ldv_12204.first_page;
  __asm__ volatile ("": : : "memory");
  tmp = PageTail((struct page const *)tail);
  tmp___0 = ldv__builtin_expect(tmp != 0, 1L);
  if (tmp___0 != 0L) {
    return (head);
  } else {
  }
  return (tail);
}
}
__inline static struct page *compound_head(struct page *page )
{
  struct page *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = PageTail((struct page const *)page);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    tmp = compound_head_by_tail(page);
    return (tmp);
  } else {
  }
  return (page);
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
  tmp___3 = atomic_read((atomic_t const *)(& page->ldv_12186.ldv_12185.ldv_12183._count));
  tmp___4 = ldv__builtin_expect(tmp___3 <= 0, 0L);
  if (tmp___4 != 0L) {
    dump_page(page, "VM_BUG_ON_PAGE(atomic_read(&page->_count) <= 0)");
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/mm.h"),
                         "i" (509), "i" (12UL));
    ldv_17974: ;
    goto ldv_17974;
  } else {
  }
  atomic_inc(& page->ldv_12186.ldv_12185.ldv_12183._count);
  return;
}
}
__inline static struct page *virt_to_head_page(void const *x )
{
  struct page *page ;
  unsigned long tmp ;
  struct page *tmp___0 ;
  {
  tmp = __phys_addr((unsigned long )x);
  page = (struct page *)-24189255811072L + (tmp >> 12);
  tmp___0 = compound_head(page);
  return (tmp___0);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 64L) << 12) + 0xffff880000000000UL));
}
}
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    ldv_19427: ;
    goto ldv_19427;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    ldv_19428: ;
    goto ldv_19428;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    ldv_19429: ;
    goto ldv_19429;
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  return;
}
}
__inline static void sg_set_buf(struct scatterlist *sg , void const *buf , unsigned int buflen )
{
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  {
  tmp = __virt_addr_valid((unsigned long )buf);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (115), "i" (12UL));
    ldv_19446: ;
    goto ldv_19446;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )buf);
  sg_set_page(sg, (struct page *)-24189255811072L + (tmp___2 >> 12), buflen, (unsigned int )((long )buf) & 4095U);
  return;
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
extern void sg_init_one(struct scatterlist * , void const * , unsigned int ) ;
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
void ldv_kfree_skb_6(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_7(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_8(struct sk_buff *ldv_func_arg1 ) ;
void ldv_kfree_skb_11(struct sk_buff *ldv_func_arg1 ) ;
void ldv_consume_skb_5(struct sk_buff *ldv_func_arg1 ) ;
__inline static struct sk_buff *ldv_alloc_skb_12(unsigned int size , gfp_t priority ) ;
extern int skb_to_sgvec(struct sk_buff * , struct scatterlist * , int , int ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static int skb_header_cloned(struct sk_buff const *skb )
{
  int dataref ;
  unsigned char *tmp ;
  {
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 0U) {
    return (0);
  } else {
  }
  tmp = skb_end_pointer(skb);
  dataref = atomic_read((atomic_t const *)(& ((struct skb_shared_info *)tmp)->dataref));
  dataref = (dataref & 65535) - (dataref >> 16);
  return (dataref != 1);
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
extern void skb_add_rx_frag(struct sk_buff * , int , struct page * , int , int ,
                            unsigned int ) ;
extern void skb_coalesce_rx_frag(struct sk_buff * , int , int , unsigned int ) ;
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static unsigned char *__skb_push(struct sk_buff *skb , unsigned int len )
{
  {
  skb->data = skb->data + - ((unsigned long )len);
  skb->len = skb->len + len;
  return (skb->data);
}
}
__inline static unsigned char *__skb_pull(struct sk_buff *skb , unsigned int len )
{
  long tmp ;
  unsigned char *tmp___0 ;
  {
  skb->len = skb->len - len;
  tmp = ldv__builtin_expect(skb->len < skb->data_len, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                         "i" (1587), "i" (12UL));
    ldv_25429: ;
    goto ldv_25429;
  } else {
  }
  tmp___0 = skb->data + (unsigned long )len;
  skb->data = tmp___0;
  return (tmp___0);
}
}
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
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  tmp = skb_headroom(skb);
  return ((int )((unsigned int )skb->ldv_24899.ldv_24898.csum_start - tmp));
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
__inline static void skb_orphan(struct sk_buff *skb )
{
  long tmp ;
  {
  if ((unsigned long )skb->destructor != (unsigned long )((void (*)(struct sk_buff * ))0)) {
    (*(skb->destructor))(skb);
    skb->destructor = (void (*)(struct sk_buff * ))0;
    skb->sk = (struct sock *)0;
  } else {
    tmp = ldv__builtin_expect((unsigned long )skb->sk != (unsigned long )((struct sock *)0),
                           0L);
    if (tmp != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/skbuff.h"),
                           "i" (1974), "i" (12UL));
      ldv_25600: ;
      goto ldv_25600;
    } else {
    }
  }
  return;
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
extern bool skb_page_frag_refill(unsigned int , struct page_frag * , gfp_t ) ;
__inline static bool skb_can_coalesce(struct sk_buff *skb , int i , struct page const *page ,
                                      int off )
{
  struct skb_frag_struct const *frag ;
  unsigned char *tmp ;
  struct page *tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  {
  if (i != 0) {
    tmp = skb_end_pointer((struct sk_buff const *)skb);
    frag = (struct skb_frag_struct const *)(& ((struct skb_shared_info *)tmp)->frags) + ((unsigned long )i + 0xffffffffffffffffUL);
    tmp___0 = skb_frag_page(frag);
    if ((unsigned long )((struct page const *)tmp___0) == (unsigned long )page) {
      tmp___1 = skb_frag_size(frag);
      if ((unsigned int )off == (unsigned int )frag->page_offset + tmp___1) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    } else {
      tmp___2 = 0;
    }
    return ((bool )tmp___2);
  } else {
  }
  return (0);
}
}
extern void nf_conntrack_destroy(struct nf_conntrack * ) ;
__inline static void nf_conntrack_put(struct nf_conntrack *nfct )
{
  int tmp ;
  {
  if ((unsigned long )nfct != (unsigned long )((struct nf_conntrack *)0)) {
    tmp = atomic_dec_and_test(& nfct->use);
    if (tmp != 0) {
      nf_conntrack_destroy(nfct);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void nf_bridge_put(struct nf_bridge_info *nf_bridge )
{
  int tmp ;
  {
  if ((unsigned long )nf_bridge != (unsigned long )((struct nf_bridge_info *)0)) {
    tmp = atomic_dec_and_test(& nf_bridge->use);
    if (tmp != 0) {
      kfree((void const *)nf_bridge);
    } else {
    }
  } else {
  }
  return;
}
}
__inline static void nf_reset(struct sk_buff *skb )
{
  {
  nf_conntrack_put(skb->nfct);
  skb->nfct = (struct nf_conntrack *)0;
  nf_bridge_put(skb->nf_bridge);
  skb->nf_bridge = (struct nf_bridge_info *)0;
  return;
}
}
__inline static u16 skb_get_queue_mapping(struct sk_buff const *skb )
{
  {
  return ((u16 )skb->queue_mapping);
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
extern bool skb_partial_csum_set(struct sk_buff * , u16 , u16 ) ;
extern struct sk_buff___0 *ldv_skb_alloc(void) ;
extern void ldv_skb_free(struct sk_buff___0 * ) ;
extern void *malloc(size_t size ) ;
extern void *calloc(size_t nmemb , size_t size ) ;
extern int __VERIFIER_nondet_int(void) ;
extern u16 __VERIFIER_nondet_u16(void) ;
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
struct virtio_device *virtio_net_driver_group0 ;
int ldv_state_variable_2 ;
struct net_device *virtnet_netdev_group1 ;
int ref_cnt ;
struct ethtool_channels *virtnet_ethtool_ops_group0 ;
struct net_device *virtnet_ethtool_ops_group1 ;
int ldv_state_variable_1 ;
int ldv_state_variable_4 ;
int ldv_state_variable_0 ;
void ldv_initialize_virtio_driver_1(void) ;
void ldv_net_device_ops_3(void) ;
void ldv_initialize_ethtool_ops_4(void) ;
extern void msleep(unsigned int ) ;
extern u32 ethtool_op_get_link(struct net_device * ) ;
__inline static void u64_stats_update_begin(struct u64_stats_sync *syncp )
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
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  __might_sleep("include/linux/netdevice.h", 476, 0);
  set_bit(1L, (unsigned long volatile *)(& n->state));
  goto ldv_38702;
  ldv_38701:
  msleep(1U);
  ldv_38702:
  tmp = test_and_set_bit(0L, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_38701;
  } else {
  }
  clear_bit(1L, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0L, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (492), "i" (12UL));
    ldv_38707: ;
    goto ldv_38707;
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
  return ((void *)dev + 3264U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
void ldv_free_netdev_15(struct net_device *dev ) ;
void ldv_free_netdev_17(struct net_device *dev ) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  {
  tmp = test_and_clear_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  if (tmp != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_tx_wake_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_39635;
  ldv_39634:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_wake_queue(txq);
  i = i + 1U;
  ldv_39635: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39634;
  } else {
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
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 2212);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0L, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_stop_all_queues(struct net_device *dev )
{
  unsigned int i ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  i = 0U;
  goto ldv_39651;
  ldv_39650:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  netif_tx_stop_queue(txq);
  i = i + 1U;
  ldv_39651: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39650;
  } else {
  }
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
__inline static void netif_start_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  netif_tx_start_queue(txq);
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
__inline static void netif_wake_subqueue(struct net_device *dev , u16 queue_index )
{
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  int tmp___0 ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, (unsigned int )queue_index);
  txq = tmp;
  tmp___0 = test_and_clear_bit(0L, (unsigned long volatile *)(& txq->state));
  if (tmp___0 != 0) {
    __netif_schedule(txq->qdisc);
  } else {
  }
  return;
}
}
extern int netif_set_xps_queue(struct net_device * , struct cpumask const * , u16 ) ;
extern int netif_set_real_num_tx_queues(struct net_device * , unsigned int ) ;
extern int netif_set_real_num_rx_queues(struct net_device * , unsigned int ) ;
__inline static unsigned int get_netdev_rx_queue_index(struct netdev_rx_queue *queue )
{
  struct net_device *dev ;
  int index ;
  long tmp ;
  {
  dev = queue->dev;
  index = (int )(((long )queue - (long )dev->_rx) / 320L);
  tmp = ldv__builtin_expect((unsigned int )index >= dev->num_rx_queues, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (2541), "i" (12UL));
    ldv_39750: ;
    goto ldv_39750;
  } else {
  }
  return ((unsigned int )index);
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
extern int netif_receive_skb(struct sk_buff * ) ;
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
extern void netif_device_detach(struct net_device * ) ;
extern void netif_device_attach(struct net_device * ) ;
extern int register_netdev(struct net_device * ) ;
int ldv_register_netdev_13(struct net_device *dev ) ;
extern void unregister_netdev(struct net_device * ) ;
void ldv_unregister_netdev_14(struct net_device *dev ) ;
void ldv_unregister_netdev_16(struct net_device *dev ) ;
extern void netdev_notify_peers(struct net_device * ) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_prepare_mac_addr_change(struct net_device * , void * ) ;
extern void eth_commit_mac_addr_change(struct net_device * , void * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static void eth_random_addr(u8 *addr )
{
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  dev->addr_assign_type = 1U;
  eth_random_addr(dev->dev_addr);
  return;
}
}
extern int virtqueue_add_outbuf(struct virtqueue * , struct scatterlist * , unsigned int ,
                                void * , gfp_t ) ;
extern int virtqueue_add_inbuf(struct virtqueue * , struct scatterlist * , unsigned int ,
                               void * , gfp_t ) ;
extern int virtqueue_add_sgs(struct virtqueue * , struct scatterlist ** , unsigned int ,
                             unsigned int , void * , gfp_t ) ;
extern bool virtqueue_kick(struct virtqueue * ) ;
extern void *virtqueue_get_buf(struct virtqueue * , unsigned int * ) ;
extern void virtqueue_disable_cb(struct virtqueue * ) ;
extern unsigned int virtqueue_enable_cb_prepare(struct virtqueue * ) ;
extern bool virtqueue_poll(struct virtqueue * , unsigned int ) ;
extern bool virtqueue_enable_cb_delayed(struct virtqueue * ) ;
extern void *virtqueue_detach_unused_buf(struct virtqueue * ) ;
extern unsigned int virtqueue_get_vring_size(struct virtqueue * ) ;
extern bool virtqueue_is_broken(struct virtqueue * ) ;
extern int register_virtio_driver(struct virtio_driver * ) ;
extern void unregister_virtio_driver(struct virtio_driver * ) ;
extern void virtio_check_driver_offered_feature(struct virtio_device const * , unsigned int ) ;
__inline static bool virtio_has_feature(struct virtio_device const *vdev , unsigned int fbit )
{
  long tmp ;
  int tmp___0 ;
  {
  tmp = ldv__builtin_expect(fbit > 31U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/virtio_config.h"),
                         "i" (91), "i" (12UL));
    ldv_42083: ;
    goto ldv_42083;
  } else {
  }
  if (fbit <= 27U) {
    virtio_check_driver_offered_feature(vdev, fbit);
  } else {
  }
  tmp___0 = variable_test_bit((long )fbit, (unsigned long const volatile *)(& vdev->features));
  return (tmp___0 != 0);
}
}
__inline static char const *virtio_bus_name(struct virtio_device *vdev )
{
  char const *tmp ;
  {
  if ((unsigned long )(vdev->config)->bus_name == (unsigned long )((char const *(* )(struct virtio_device * ))0)) {
    return ("virtio");
  } else {
  }
  tmp = (*((vdev->config)->bus_name))(vdev);
  return (tmp);
}
}
__inline static int virtqueue_set_affinity(struct virtqueue *vq , int cpu )
{
  struct virtio_device *vdev ;
  int tmp ;
  {
  vdev = vq->vdev;
  if ((unsigned long )(vdev->config)->set_vq_affinity != (unsigned long )((int (* )(struct virtqueue * ,
                                                                                               int ))0)) {
    tmp = (*((vdev->config)->set_vq_affinity))(vq, cpu);
    return (tmp);
  } else {
  }
  return (0);
}
}
__inline static u8 virtio_cread8(struct virtio_device *vdev , unsigned int offset )
{
  u8 ret ;
  {
  (*((vdev->config)->get))(vdev, offset, (void *)(& ret), 1U);
  return (ret);
}
}
__inline static void virtio_cread_bytes(struct virtio_device *vdev , unsigned int offset ,
                                        void *buf , size_t len )
{
  {
  (*((vdev->config)->get))(vdev, offset, buf, (unsigned int )len);
  return;
}
}
__inline static void virtio_cwrite8(struct virtio_device *vdev , unsigned int offset ,
                                    u8 val )
{
  {
  (*((vdev->config)->set))(vdev, offset, (void const *)(& val), 1U);
  return;
}
}
__inline static u16 virtio_cread16(struct virtio_device *vdev , unsigned int offset )
{
  u16 ret ;
  {
  (*((vdev->config)->get))(vdev, offset, (void *)(& ret), 2U);
  return (ret);
}
}
__inline static u32 virtio_cread32(struct virtio_device *vdev , unsigned int offset )
{
  u32 ret ;
  {
  (*((vdev->config)->get))(vdev, offset, (void *)(& ret), 4U);
  return (ret);
}
}
__inline static u64 virtio_cread64(struct virtio_device *vdev , unsigned int offset )
{
  u64 ret ;
  {
  (*((vdev->config)->get))(vdev, offset, (void *)(& ret), 8U);
  return (ret);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
extern int register_cpu_notifier(struct notifier_block * ) ;
extern void unregister_cpu_notifier(struct notifier_block * ) ;
extern void get_online_cpus(void) ;
extern void put_online_cpus(void) ;
extern void ewma_init(struct ewma * , unsigned long , unsigned long ) ;
extern struct ewma *ewma_add(struct ewma * , unsigned long ) ;
__inline static unsigned long ewma_read(struct ewma const *avg )
{
  {
  return ((unsigned long )(avg->internal >> (int )avg->factor));
}
}
static int napi_weight = 64;
static bool csum = 1;
static bool gso = 1;
static int vq2txq(struct virtqueue *vq )
{
  {
  return ((int )((vq->index - 1U) / 2U));
}
}
static int txq2vq(int txq )
{
  {
  return (txq * 2 + 1);
}
}
static int vq2rxq(struct virtqueue *vq )
{
  {
  return ((int )(vq->index / 2U));
}
}
static int rxq2vq(int rxq )
{
  {
  return (rxq * 2);
}
}
__inline static struct skb_vnet_hdr *skb_vnet_hdr(struct sk_buff *skb )
{
  {
  return ((struct skb_vnet_hdr *)(& skb->cb));
}
}
static void give_pages(struct receive_queue *rq , struct page *page )
{
  struct page *end ;
  {
  end = page;
  goto ldv_42950;
  ldv_42949:
  end = (struct page *)end->ldv_12204.private;
  ldv_42950: ;
  if (end->ldv_12204.private != 0UL) {
    goto ldv_42949;
  } else {
  }
  end->ldv_12204.private = (unsigned long )rq->pages;
  rq->pages = page;
  return;
}
}
static struct page *get_a_page(struct receive_queue *rq , gfp_t gfp_mask )
{
  struct page *p ;
  {
  p = rq->pages;
  if ((unsigned long )p != (unsigned long )((struct page *)0)) {
    rq->pages = (struct page *)p->ldv_12204.private;
    p->ldv_12204.private = 0UL;
  } else {
    p = alloc_pages(gfp_mask, 0U);
  }
  return (p);
}
}
static void skb_xmit_done(struct virtqueue *vq )
{
  struct virtnet_info *vi ;
  int tmp ;
  {
  vi = (struct virtnet_info *)(vq->vdev)->priv;
  virtqueue_disable_cb(vq);
  tmp = vq2txq(vq);
  netif_wake_subqueue(vi->dev, (int )((u16 )tmp));
  return;
}
}
static unsigned int mergeable_ctx_to_buf_truesize(unsigned long mrg_ctx )
{
  unsigned int truesize ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  {
  _max1 = 64;
  _max2 = 256;
  truesize = (unsigned int )((_max1 > _max2 ? _max1 : _max2) + -1) & (unsigned int )mrg_ctx;
  _max1___0 = 64;
  _max2___0 = 256;
  return ((truesize + 1U) * (unsigned int )(_max1___0 > _max2___0 ? _max1___0 : _max2___0));
}
}
static void *mergeable_ctx_to_buf_address(unsigned long mrg_ctx )
{
  int _max1 ;
  int _max2 ;
  {
  _max1 = 64;
  _max2 = 256;
  return ((void *)((unsigned long )(- (_max1 > _max2 ? _max1 : _max2)) & mrg_ctx));
}
}
static unsigned long mergeable_buf_to_ctx(void *buf , unsigned int truesize )
{
  unsigned int size ;
  int _max1 ;
  int _max2 ;
  {
  _max1 = 64;
  _max2 = 256;
  size = truesize / (unsigned int )(_max1 > _max2 ? _max1 : _max2);
  return ((unsigned long )(size - 1U) | (unsigned long )buf);
}
}
static struct sk_buff *page_to_skb(struct receive_queue *rq , struct page *page ,
                                   unsigned int offset , unsigned int len , unsigned int truesize )
{
  struct virtnet_info *vi ;
  struct sk_buff *skb ;
  struct skb_vnet_hdr *hdr ;
  unsigned int copy ;
  unsigned int hdr_len ;
  unsigned int hdr_padded_len ;
  char *p ;
  void *tmp ;
  long tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  unsigned char *tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  int tmp___6 ;
  long tmp___7 ;
  long tmp___8 ;
  unsigned int frag_size ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned char *tmp___9 ;
  {
  vi = (struct virtnet_info *)((rq->vq)->vdev)->priv;
  tmp = lowmem_page_address((struct page const *)page);
  p = (char *)tmp + (unsigned long )offset;
  skb = netdev_alloc_skb_ip_align(vi->dev, 128U);
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    return ((struct sk_buff *)0);
  } else {
  }
  hdr = skb_vnet_hdr(skb);
  if ((int )vi->mergeable_rx_bufs) {
    hdr_len = 12U;
    hdr_padded_len = 12U;
  } else {
    hdr_len = 10U;
    hdr_padded_len = 16U;
  }
  __len = (size_t )hdr_len;
  __ret = memcpy((void *)hdr, (void const *)p, __len);
  len = len - hdr_len;
  offset = offset + hdr_padded_len;
  p = p + (unsigned long )hdr_padded_len;
  copy = len;
  tmp___2 = skb_tailroom((struct sk_buff const *)skb);
  if ((unsigned int )tmp___2 < copy) {
    tmp___1 = skb_tailroom((struct sk_buff const *)skb);
    copy = (unsigned int )tmp___1;
  } else {
  }
  __len___0 = (size_t )copy;
  tmp___4 = skb_put(skb, copy);
  __ret___0 = memcpy((void *)tmp___4, (void const *)p, __len___0);
  len = len - copy;
  offset = offset + copy;
  if ((int )vi->mergeable_rx_bufs) {
    if (len != 0U) {
      skb_add_rx_frag(skb, 0, page, (int )offset, (int )len, truesize);
    } else {
      put_page(page);
    }
    return (skb);
  } else {
  }
  tmp___7 = ldv__builtin_expect(len > 69632U, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = net_ratelimit();
    if (tmp___6 != 0) {
      descriptor.modname = "virtio_net";
      descriptor.function = "page_to_skb";
      descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
      descriptor.format = "%s: too much data\n";
      descriptor.lineno = 342U;
      descriptor.flags = 0U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s: too much data\n", (char *)(& (skb->dev)->name));
      } else {
      }
    } else {
    }
    ldv_skb_free(skb);
    return ((struct sk_buff *)0);
  } else {
  }
  tmp___8 = ldv__builtin_expect(offset > 4095U, 0L);
  if (tmp___8 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (346), "i" (12UL));
    ldv_43007: ;
    goto ldv_43007;
  } else {
  }
  goto ldv_43013;
  ldv_43012:
  _min1 = 4096U - offset;
  _min2 = len;
  frag_size = _min1 < _min2 ? _min1 : _min2;
  tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
  skb_add_rx_frag(skb, (int )((struct skb_shared_info *)tmp___9)->nr_frags, page,
                  (int )offset, (int )frag_size, truesize);
  len = len - frag_size;
  page = (struct page *)page->ldv_12204.private;
  offset = 0U;
  ldv_43013: ;
  if (len != 0U) {
    goto ldv_43012;
  } else {
  }
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    give_pages(rq, page);
  } else {
  }
  return (skb);
}
}
static struct sk_buff *receive_small(void *buf , unsigned int len )
{
  struct sk_buff *skb ;
  {
  skb = (struct sk_buff *)buf;
  len = len - 10U;
  skb_trim(skb, len);
  return (skb);
}
}
static struct sk_buff *receive_big(struct net_device *dev , struct receive_queue *rq ,
                                   void *buf , unsigned int len )
{
  struct page *page ;
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  long tmp___0 ;
  {
  page = (struct page *)buf;
  tmp = page_to_skb(rq, page, 0U, len, 4096U);
  skb = tmp;
  tmp___0 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___0 != 0L) {
    goto err;
  } else {
  }
  return (skb);
  err:
  dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
  give_pages(rq, page);
  return ((struct sk_buff *)0);
}
}
static struct sk_buff *receive_mergeable(struct net_device *dev , struct receive_queue *rq ,
                                         unsigned long ctx , unsigned int len )
{
  void *buf ;
  void *tmp ;
  struct skb_vnet_hdr *hdr ;
  int num_buf ;
  struct page *page ;
  struct page *tmp___0 ;
  int offset ;
  void *tmp___1 ;
  unsigned int truesize ;
  unsigned int _max1 ;
  unsigned int _max2 ;
  unsigned int tmp___2 ;
  struct sk_buff *head_skb ;
  struct sk_buff *tmp___3 ;
  struct sk_buff *curr_skb ;
  long tmp___4 ;
  int num_skb_frags ;
  void *tmp___5 ;
  struct _ddebug descriptor ;
  long tmp___6 ;
  long tmp___7 ;
  unsigned char *tmp___8 ;
  struct sk_buff *nskb ;
  struct sk_buff *tmp___9 ;
  long tmp___10 ;
  unsigned char *tmp___11 ;
  long tmp___12 ;
  unsigned int _max1___0 ;
  unsigned int _max2___0 ;
  unsigned int tmp___13 ;
  void *tmp___14 ;
  bool tmp___15 ;
  void *tmp___16 ;
  struct _ddebug descriptor___0 ;
  long tmp___17 ;
  long tmp___18 ;
  void *tmp___19 ;
  {
  tmp = mergeable_ctx_to_buf_address(ctx);
  buf = tmp;
  hdr = (struct skb_vnet_hdr *)buf;
  num_buf = (int )hdr->ldv_42925.mhdr.num_buffers;
  tmp___0 = virt_to_head_page((void const *)buf);
  page = tmp___0;
  tmp___1 = lowmem_page_address((struct page const *)page);
  offset = (int )((unsigned int )((long )buf) - (unsigned int )((long )tmp___1));
  _max1 = len;
  tmp___2 = mergeable_ctx_to_buf_truesize(ctx);
  _max2 = tmp___2;
  truesize = _max1 > _max2 ? _max1 : _max2;
  tmp___3 = page_to_skb(rq, page, (unsigned int )offset, len, truesize);
  head_skb = tmp___3;
  curr_skb = head_skb;
  tmp___4 = ldv__builtin_expect((unsigned long )curr_skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___4 != 0L) {
    goto err_skb;
  } else {
  }
  goto ldv_43056;
  ldv_43055:
  tmp___5 = virtqueue_get_buf(rq->vq, & len);
  ctx = (unsigned long )tmp___5;
  tmp___7 = ldv__builtin_expect(ctx == 0UL, 0L);
  if (tmp___7 != 0L) {
    descriptor.modname = "virtio_net";
    descriptor.function = "receive_mergeable";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor.format = "%s: rx error: %d buffers out of %d missing\n";
    descriptor.lineno = 414U;
    descriptor.flags = 0U;
    tmp___6 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: rx error: %d buffers out of %d missing\n",
                         (char *)(& dev->name), num_buf, (int )hdr->ldv_42925.mhdr.num_buffers);
    } else {
    }
    dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    goto err_buf;
  } else {
  }
  buf = mergeable_ctx_to_buf_address(ctx);
  page = virt_to_head_page((void const *)buf);
  tmp___8 = skb_end_pointer((struct sk_buff const *)curr_skb);
  num_skb_frags = (int )((struct skb_shared_info *)tmp___8)->nr_frags;
  tmp___12 = ldv__builtin_expect(num_skb_frags == 17, 0L);
  if (tmp___12 != 0L) {
    tmp___9 = ldv_alloc_skb_12(0U, 32U);
    nskb = tmp___9;
    tmp___10 = ldv__builtin_expect((unsigned long )nskb == (unsigned long )((struct sk_buff *)0),
                                0L);
    if (tmp___10 != 0L) {
      goto err_skb;
    } else {
    }
    if ((unsigned long )curr_skb == (unsigned long )head_skb) {
      tmp___11 = skb_end_pointer((struct sk_buff const *)curr_skb);
      ((struct skb_shared_info *)tmp___11)->frag_list = nskb;
    } else {
      curr_skb->next = nskb;
    }
    curr_skb = nskb;
    head_skb->truesize = head_skb->truesize + nskb->truesize;
    num_skb_frags = 0;
  } else {
  }
  _max1___0 = len;
  tmp___13 = mergeable_ctx_to_buf_truesize(ctx);
  _max2___0 = tmp___13;
  truesize = _max1___0 > _max2___0 ? _max1___0 : _max2___0;
  if ((unsigned long )curr_skb != (unsigned long )head_skb) {
    head_skb->data_len = head_skb->data_len + len;
    head_skb->len = head_skb->len + len;
    head_skb->truesize = head_skb->truesize + truesize;
  } else {
  }
  tmp___14 = lowmem_page_address((struct page const *)page);
  offset = (int )((unsigned int )((long )buf) - (unsigned int )((long )tmp___14));
  tmp___15 = skb_can_coalesce(curr_skb, num_skb_frags, (struct page const *)page,
                              offset);
  if ((int )tmp___15) {
    put_page(page);
    skb_coalesce_rx_frag(curr_skb, num_skb_frags + -1, (int )len, truesize);
  } else {
    skb_add_rx_frag(curr_skb, num_skb_frags, page, offset, (int )len, truesize);
  }
  ldv_43056:
  num_buf = num_buf - 1;
  if (num_buf != 0) {
    goto ldv_43055;
  } else {
  }
  ewma_add(& rq->mrg_avg_pkt_len, (unsigned long )head_skb->len);
  return (head_skb);
  err_skb:
  put_page(page);
  goto ldv_43061;
  ldv_43060:
  tmp___16 = virtqueue_get_buf(rq->vq, & len);
  ctx = (unsigned long )tmp___16;
  tmp___18 = ldv__builtin_expect(ctx == 0UL, 0L);
  if (tmp___18 != 0L) {
    descriptor___0.modname = "virtio_net";
    descriptor___0.function = "receive_mergeable";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor___0.format = "%s: rx error: %d buffers missing\n";
    descriptor___0.lineno = 462U;
    descriptor___0.flags = 0U;
    tmp___17 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "%s: rx error: %d buffers missing\n", (char *)(& dev->name),
                         num_buf);
    } else {
    }
    dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    goto ldv_43059;
  } else {
  }
  tmp___19 = mergeable_ctx_to_buf_address(ctx);
  page = virt_to_head_page((void const *)tmp___19);
  put_page(page);
  ldv_43061:
  num_buf = num_buf - 1;
  if (num_buf != 0) {
    goto ldv_43060;
  } else {
  }
  ldv_43059: ;
  err_buf:
  dev->stats.rx_dropped = dev->stats.rx_dropped + 1UL;
  ldv_skb_free(head_skb);
  return ((struct sk_buff *)0);
}
}
static void receive_buf(struct receive_queue *rq , void *buf , unsigned int len )
{
  struct virtnet_info *vi ;
  struct net_device *dev ;
  struct virtnet_stats *stats ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify ;
  struct sk_buff *skb ;
  struct skb_vnet_hdr *hdr ;
  struct _ddebug descriptor ;
  long tmp ;
  unsigned long ctx ;
  void *base ;
  void *tmp___0 ;
  struct page *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  long tmp___4 ;
  bool tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  __u16 tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  long tmp___9 ;
  unsigned char *tmp___10 ;
  unsigned char *tmp___11 ;
  unsigned char *tmp___12 ;
  int tmp___13 ;
  unsigned char *tmp___14 ;
  unsigned char *tmp___15 ;
  int tmp___16 ;
  unsigned char *tmp___17 ;
  unsigned char *tmp___18 ;
  unsigned char *tmp___19 ;
  {
  vi = (struct virtnet_info *)((rq->vq)->vdev)->priv;
  dev = vi->dev;
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (vi->stats));
  stats = (struct virtnet_stats *)tcp_ptr__;
  tmp___2 = ldv__builtin_expect(len <= 23U, 0L);
  if (tmp___2 != 0L) {
    descriptor.modname = "virtio_net";
    descriptor.function = "receive_buf";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor.format = "%s: short packet %i\n";
    descriptor.lineno = 484U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: short packet %i\n", (char *)(& dev->name),
                         len);
    } else {
    }
    dev->stats.rx_length_errors = dev->stats.rx_length_errors + 1UL;
    if ((int )vi->mergeable_rx_bufs) {
      ctx = (unsigned long )buf;
      tmp___0 = mergeable_ctx_to_buf_address(ctx);
      base = tmp___0;
      tmp___1 = virt_to_head_page((void const *)base);
      put_page(tmp___1);
    } else
    if ((int )vi->big_packets) {
      give_pages(rq, (struct page *)buf);
    } else {
      ldv_skb_free((struct sk_buff *)buf);
    }
    return;
  } else {
  }
  if ((int )vi->mergeable_rx_bufs) {
    skb = receive_mergeable(dev, rq, (unsigned long )buf, len);
  } else
  if ((int )vi->big_packets) {
    skb = receive_big(dev, rq, buf, len);
  } else {
    skb = receive_small(buf, len);
  }
  tmp___3 = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                             0L);
  if (tmp___3 != 0L) {
    return;
  } else {
  }
  hdr = skb_vnet_hdr(skb);
  u64_stats_update_begin(& stats->rx_syncp);
  stats->rx_bytes = stats->rx_bytes + (u64 )skb->len;
  stats->rx_packets = stats->rx_packets + 1ULL;
  u64_stats_update_begin(& stats->rx_syncp);
  if ((int )hdr->ldv_42925.hdr.flags & 1) {
    descriptor___0.modname = "virtio_net";
    descriptor___0.function = "receive_buf";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor___0.format = "Needs csum!\n";
    descriptor___0.lineno = 516U;
    descriptor___0.flags = 0U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "Needs csum!\n");
    } else {
    }
    tmp___5 = skb_partial_csum_set(skb, (int )hdr->ldv_42925.hdr.csum_start, (int )hdr->ldv_42925.hdr.csum_offset);
    if (tmp___5) {
      tmp___6 = 0;
    } else {
      tmp___6 = 1;
    }
    if (tmp___6) {
      goto frame_err;
    } else {
    }
  } else
  if (((int )hdr->ldv_42925.hdr.flags & 2) != 0) {
    skb->ip_summed = 1U;
  } else {
  }
  skb->protocol = eth_type_trans(skb, dev);
  descriptor___1.modname = "virtio_net";
  descriptor___1.function = "receive_buf";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
  descriptor___1.format = "Receiving skb proto 0x%04x len %i type %i\n";
  descriptor___1.lineno = 527U;
  descriptor___1.flags = 0U;
  tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = __fswab16((int )skb->protocol);
    __dynamic_pr_debug(& descriptor___1, "Receiving skb proto 0x%04x len %i type %i\n",
                       (int )tmp___7, skb->len, (int )skb->pkt_type);
  } else {
  }
  if ((unsigned int )hdr->ldv_42925.hdr.gso_type != 0U) {
    descriptor___2.modname = "virtio_net";
    descriptor___2.function = "receive_buf";
    descriptor___2.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor___2.format = "GSO!\n";
    descriptor___2.lineno = 530U;
    descriptor___2.flags = 0U;
    tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      __dynamic_pr_debug(& descriptor___2, "GSO!\n");
    } else {
    }
    switch ((int )hdr->ldv_42925.hdr.gso_type & -129) {
    case 1:
    tmp___10 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___10)->gso_type = 1U;
    goto ldv_43084;
    case 3:
    tmp___11 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___11)->gso_type = 2U;
    goto ldv_43084;
    case 4:
    tmp___12 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___12)->gso_type = 16U;
    goto ldv_43084;
    default:
    tmp___13 = net_ratelimit();
    if (tmp___13 != 0) {
      printk("\f%s: bad gso type %u.\n", (char *)(& dev->name), (int )hdr->ldv_42925.hdr.gso_type);
    } else {
    }
    goto frame_err;
    }
    ldv_43084: ;
    if ((int )((signed char )hdr->ldv_42925.hdr.gso_type) < 0) {
      tmp___14 = skb_end_pointer((struct sk_buff const *)skb);
      ((struct skb_shared_info *)tmp___14)->gso_type = (unsigned int )((struct skb_shared_info *)tmp___14)->gso_type | 8U;
    } else {
    }
    tmp___15 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___15)->gso_size = hdr->ldv_42925.hdr.gso_size;
    tmp___17 = skb_end_pointer((struct sk_buff const *)skb);
    if ((unsigned int )((struct skb_shared_info *)tmp___17)->gso_size == 0U) {
      tmp___16 = net_ratelimit();
      if (tmp___16 != 0) {
        printk("\f%s: zero gso size.\n", (char *)(& dev->name));
      } else {
      }
      goto frame_err;
    } else {
    }
    tmp___18 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___18)->gso_type = (unsigned int )((struct skb_shared_info *)tmp___18)->gso_type | 4U;
    tmp___19 = skb_end_pointer((struct sk_buff const *)skb);
    ((struct skb_shared_info *)tmp___19)->gso_segs = 0U;
  } else {
  }
  netif_receive_skb(skb);
  return;
  frame_err:
  dev->stats.rx_frame_errors = dev->stats.rx_frame_errors + 1UL;
  ldv_skb_free(skb);
  return;
}
}
static int add_recvbuf_small(struct receive_queue *rq , gfp_t gfp )
{
  struct virtnet_info *vi ;
  struct sk_buff *skb ;
  struct skb_vnet_hdr *hdr ;
  int err ;
  long tmp ;
  {
  vi = (struct virtnet_info *)((rq->vq)->vdev)->priv;
  skb = __netdev_alloc_skb_ip_align(vi->dev, 1518U, gfp);
  tmp = ldv__builtin_expect((unsigned long )skb == (unsigned long )((struct sk_buff *)0),
                         0L);
  if (tmp != 0L) {
    return (-12);
  } else {
  }
  skb_put(skb, 1518U);
  hdr = skb_vnet_hdr(skb);
  sg_set_buf((struct scatterlist *)(& rq->sg), (void const *)(& hdr->ldv_42925.hdr),
             10U);
  skb_to_sgvec(skb, (struct scatterlist *)(& rq->sg) + 1UL, 0, (int )skb->len);
  err = virtqueue_add_inbuf(rq->vq, (struct scatterlist *)(& rq->sg), 2U, (void *)skb,
                            gfp);
  if (err < 0) {
    ldv_skb_free(skb);
  } else {
  }
  return (err);
}
}
static int add_recvbuf_big(struct receive_queue *rq , gfp_t gfp )
{
  struct page *first ;
  struct page *list ;
  char *p ;
  int i ;
  int err ;
  int offset ;
  void *tmp ;
  void *tmp___0 ;
  {
  list = (struct page *)0;
  i = 18;
  goto ldv_43107;
  ldv_43106:
  first = get_a_page(rq, gfp);
  if ((unsigned long )first == (unsigned long )((struct page *)0)) {
    if ((unsigned long )list != (unsigned long )((struct page *)0)) {
      give_pages(rq, list);
    } else {
    }
    return (-12);
  } else {
  }
  tmp = lowmem_page_address((struct page const *)first);
  sg_set_buf((struct scatterlist *)(& rq->sg) + (unsigned long )i, (void const *)tmp,
             4096U);
  first->ldv_12204.private = (unsigned long )list;
  list = first;
  i = i - 1;
  ldv_43107: ;
  if (i > 1) {
    goto ldv_43106;
  } else {
  }
  first = get_a_page(rq, gfp);
  if ((unsigned long )first == (unsigned long )((struct page *)0)) {
    give_pages(rq, list);
    return (-12);
  } else {
  }
  tmp___0 = lowmem_page_address((struct page const *)first);
  p = (char *)tmp___0;
  sg_set_buf((struct scatterlist *)(& rq->sg), (void const *)p, 10U);
  offset = 16;
  sg_set_buf((struct scatterlist *)(& rq->sg) + 1UL, (void const *)p + (unsigned long )offset,
             4096U - (unsigned int )offset);
  first->ldv_12204.private = (unsigned long )list;
  err = virtqueue_add_inbuf(rq->vq, (struct scatterlist *)(& rq->sg), 19U, (void *)first,
                            gfp);
  if (err < 0) {
    give_pages(rq, first);
  } else {
  }
  return (err);
}
}
static unsigned int get_mergeable_buf_len(struct ewma *avg_pkt_len )
{
  size_t hdr_len ;
  unsigned int len ;
  unsigned int __val ;
  unsigned long tmp ;
  unsigned int __min ;
  unsigned int __max ;
  int _max1 ;
  int _max2 ;
  int _max1___0 ;
  int _max2___0 ;
  {
  hdr_len = 12UL;
  tmp = ewma_read((struct ewma const *)avg_pkt_len);
  __val = (unsigned int )tmp;
  __min = 1518U;
  __max = 4096U - (unsigned int )hdr_len;
  __val = __min > __val ? __min : __val;
  len = (__max < __val ? __max : __val) + (unsigned int )hdr_len;
  _max1 = 64;
  _max2 = 256;
  _max1___0 = 64;
  _max2___0 = 256;
  return ((((unsigned int )(_max1 > _max2 ? _max1 : _max2) + len) - 1U) & - ((unsigned int )(_max1___0 > _max2___0 ? _max1___0 : _max2___0)));
}
}
static int add_recvbuf_mergeable(struct receive_queue *rq , gfp_t gfp )
{
  struct page_frag *alloc_frag ;
  char *buf ;
  unsigned long ctx ;
  int err ;
  unsigned int len ;
  unsigned int hole ;
  bool tmp ;
  int tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  struct page *tmp___3 ;
  {
  alloc_frag = & rq->alloc_frag;
  len = get_mergeable_buf_len(& rq->mrg_avg_pkt_len);
  tmp = skb_page_frag_refill(len, alloc_frag, gfp);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  tmp___1 = ldv__builtin_expect((long )tmp___0, 0L);
  if (tmp___1 != 0L) {
    return (-12);
  } else {
  }
  tmp___2 = lowmem_page_address((struct page const *)alloc_frag->page);
  buf = (char *)tmp___2 + (unsigned long )alloc_frag->offset;
  ctx = mergeable_buf_to_ctx((void *)buf, len);
  get_page(alloc_frag->page);
  alloc_frag->offset = alloc_frag->offset + len;
  hole = alloc_frag->size - alloc_frag->offset;
  if (hole < len) {
    len = len + hole;
    alloc_frag->offset = alloc_frag->offset + hole;
  } else {
  }
  sg_init_one((struct scatterlist *)(& rq->sg), (void const *)buf, len);
  err = virtqueue_add_inbuf(rq->vq, (struct scatterlist *)(& rq->sg), 1U, (void *)ctx,
                            gfp);
  if (err < 0) {
    tmp___3 = virt_to_head_page((void const *)buf);
    put_page(tmp___3);
  } else {
  }
  return (err);
}
}
static bool try_fill_recv(struct receive_queue *rq , gfp_t gfp )
{
  struct virtnet_info *vi ;
  int err ;
  bool oom ;
  {
  vi = (struct virtnet_info *)((rq->vq)->vdev)->priv;
  gfp = gfp | 256U;
  ldv_43142: ;
  if ((int )vi->mergeable_rx_bufs) {
    err = add_recvbuf_mergeable(rq, gfp);
  } else
  if ((int )vi->big_packets) {
    err = add_recvbuf_big(rq, gfp);
  } else {
    err = add_recvbuf_small(rq, gfp);
  }
  oom = err == -12;
  if (err != 0) {
    goto ldv_43141;
  } else {
  }
  if ((rq->vq)->num_free != 0U) {
    goto ldv_43142;
  } else {
  }
  ldv_43141:
  virtqueue_kick(rq->vq);
  return ((bool )(! ((int )oom != 0)));
}
}
static void skb_recv_done(struct virtqueue *rvq )
{
  struct virtnet_info *vi ;
  struct receive_queue *rq ;
  int tmp ;
  bool tmp___0 ;
  {
  vi = (struct virtnet_info *)(rvq->vdev)->priv;
  tmp = vq2rxq(rvq);
  rq = vi->rq + (unsigned long )tmp;
  tmp___0 = napi_schedule_prep(& rq->napi);
  if ((int )tmp___0) {
    virtqueue_disable_cb(rvq);
    __napi_schedule(& rq->napi);
  } else {
  }
  return;
}
}
static void virtnet_napi_enable(struct receive_queue *rq )
{
  bool tmp ;
  {
  napi_enable(& rq->napi);
  tmp = napi_schedule_prep(& rq->napi);
  if ((int )tmp) {
    virtqueue_disable_cb(rq->vq);
    local_bh_disable();
    __napi_schedule(& rq->napi);
    local_bh_enable();
  } else {
  }
  return;
}
}
static void refill_work(struct work_struct *work )
{
  struct virtnet_info *vi ;
  struct work_struct const *__mptr ;
  bool still_empty ;
  int i ;
  struct receive_queue *rq ;
  bool tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  vi = (struct virtnet_info *)__mptr + 0xffffffffffffffc0UL;
  i = 0;
  goto ldv_43161;
  ldv_43160:
  rq = vi->rq + (unsigned long )i;
  napi_disable(& rq->napi);
  tmp = try_fill_recv(rq, 208U);
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  still_empty = (bool )tmp___0;
  virtnet_napi_enable(rq);
  if ((int )still_empty) {
    schedule_delayed_work(& vi->refill, 125UL);
  } else {
  }
  i = i + 1;
  ldv_43161: ;
  if ((int )vi->curr_queue_pairs > i) {
    goto ldv_43160;
  } else {
  }
  return;
}
}
static int virtnet_poll(struct napi_struct *napi , int budget )
{
  struct receive_queue *rq ;
  struct napi_struct const *__mptr ;
  struct virtnet_info *vi ;
  void *buf ;
  unsigned int r ;
  unsigned int len ;
  unsigned int received ;
  bool tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  long tmp___3 ;
  bool tmp___4 ;
  {
  __mptr = (struct napi_struct const *)napi;
  rq = (struct receive_queue *)__mptr + 0xfffffffffffffff8UL;
  vi = (struct virtnet_info *)((rq->vq)->vdev)->priv;
  received = 0U;
  again: ;
  goto ldv_43177;
  ldv_43176:
  receive_buf(rq, buf, len);
  received = received + 1U;
  ldv_43177: ;
  if ((unsigned int )budget > received) {
    buf = virtqueue_get_buf(rq->vq, & len);
    if ((unsigned long )buf != (unsigned long )((void *)0)) {
      goto ldv_43176;
    } else {
      goto ldv_43178;
    }
  } else {
  }
  ldv_43178:
  tmp___1 = virtqueue_get_vring_size(rq->vq);
  if ((rq->vq)->num_free > tmp___1 / 2U) {
    tmp = try_fill_recv(rq, 32U);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      schedule_delayed_work(& vi->refill, 0UL);
    } else {
    }
  } else {
  }
  if ((unsigned int )budget > received) {
    r = virtqueue_enable_cb_prepare(rq->vq);
    napi_complete(napi);
    tmp___2 = virtqueue_poll(rq->vq, r);
    tmp___3 = ldv__builtin_expect((long )tmp___2, 0L);
    if (tmp___3 != 0L) {
      tmp___4 = napi_schedule_prep(napi);
      if ((int )tmp___4) {
        virtqueue_disable_cb(rq->vq);
        __napi_schedule(napi);
        goto again;
      } else {
      }
    } else {
    }
  } else {
  }
  return ((int )received);
}
}
static int virtnet_open(struct net_device *dev )
{
  struct virtnet_info *vi ;
  void *tmp ;
  int i ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  i = 0;
  goto ldv_43185;
  ldv_43184: ;
  if ((int )vi->curr_queue_pairs > i) {
    tmp___0 = try_fill_recv(vi->rq + (unsigned long )i, 208U);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      schedule_delayed_work(& vi->refill, 0UL);
    } else {
    }
  } else {
  }
  virtnet_napi_enable(vi->rq + (unsigned long )i);
  i = i + 1;
  ldv_43185: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43184;
  } else {
  }
  return (0);
}
}
static void free_old_xmit_skbs(struct send_queue *sq )
{
  struct sk_buff *skb ;
  unsigned int len ;
  struct virtnet_info *vi ;
  struct virtnet_stats *stats ;
  unsigned long tcp_ptr__ ;
  void const *__vpp_verify ;
  struct _ddebug descriptor ;
  long tmp ;
  void *tmp___0 ;
  {
  vi = (struct virtnet_info *)((sq->vq)->vdev)->priv;
  __vpp_verify = (void const *)0;
  __asm__ volatile ("add %%gs:%P1, %0": "=r" (tcp_ptr__): "m" (this_cpu_off), "0" (vi->stats));
  stats = (struct virtnet_stats *)tcp_ptr__;
  goto ldv_43200;
  ldv_43199:
  descriptor.modname = "virtio_net";
  descriptor.function = "free_old_xmit_skbs";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
  descriptor.format = "Sent skb %p\n";
  descriptor.lineno = 824U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "Sent skb %p\n", skb);
  } else {
  }
  u64_stats_update_begin(& stats->tx_syncp);
  stats->tx_bytes = stats->tx_bytes + (u64 )skb->len;
  stats->tx_packets = stats->tx_packets + 1ULL;
  u64_stats_update_begin(& stats->tx_syncp);
  dev_kfree_skb_any(skb);
  ldv_43200:
  tmp___0 = virtqueue_get_buf(sq->vq, & len);
  skb = (struct sk_buff *)tmp___0;
  if ((unsigned long )skb != (unsigned long )((struct sk_buff *)0)) {
    goto ldv_43199;
  } else {
  }
  return;
}
}
static int xmit_skb(struct send_queue *sq , struct sk_buff *skb )
{
  struct skb_vnet_hdr *hdr ;
  unsigned char const *dest ;
  struct virtnet_info *vi ;
  unsigned int num_sg ;
  unsigned int hdr_len ;
  bool can_push ;
  struct _ddebug descriptor ;
  long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  __u16 tmp___4 ;
  unsigned int tmp___5 ;
  unsigned char *tmp___6 ;
  unsigned char *tmp___7 ;
  unsigned char *tmp___8 ;
  unsigned char *tmp___9 ;
  unsigned char *tmp___10 ;
  __u16 tmp___11 ;
  bool tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  dest = (unsigned char const *)(& ((struct ethhdr *)skb->data)->h_dest);
  vi = (struct virtnet_info *)((sq->vq)->vdev)->priv;
  descriptor.modname = "virtio_net";
  descriptor.function = "xmit_skb";
  descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
  descriptor.format = "%s: xmit %p %pM\n";
  descriptor.lineno = 844U;
  descriptor.flags = 0U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: xmit %p %pM\n", (char *)(& (vi->dev)->name),
                       skb, dest);
  } else {
  }
  if ((int )vi->mergeable_rx_bufs) {
    hdr_len = 12U;
  } else {
    hdr_len = 10U;
  }
  if ((int )vi->any_header_sg && ((unsigned long )skb->data & 1UL) == 0UL) {
    tmp___0 = skb_header_cloned((struct sk_buff const *)skb);
    if (tmp___0 == 0) {
      tmp___1 = skb_headroom((struct sk_buff const *)skb);
      if (tmp___1 >= hdr_len) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  can_push = (bool )tmp___2;
  if ((int )can_push) {
    hdr = (struct skb_vnet_hdr *)(skb->data + - ((unsigned long )hdr_len));
  } else {
    hdr = skb_vnet_hdr(skb);
  }
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    hdr->ldv_42925.hdr.flags = 1U;
    tmp___3 = skb_checksum_start_offset((struct sk_buff const *)skb);
    hdr->ldv_42925.hdr.csum_start = (__u16 )tmp___3;
    hdr->ldv_42925.hdr.csum_offset = skb->ldv_24899.ldv_24898.csum_offset;
  } else {
    hdr->ldv_42925.hdr.flags = 0U;
    tmp___4 = 0U;
    hdr->ldv_42925.hdr.csum_start = tmp___4;
    hdr->ldv_42925.hdr.csum_offset = tmp___4;
  }
  tmp___12 = skb_is_gso((struct sk_buff const *)skb);
  if ((int )tmp___12) {
    tmp___5 = skb_headlen((struct sk_buff const *)skb);
    hdr->ldv_42925.hdr.hdr_len = (__u16 )tmp___5;
    tmp___6 = skb_end_pointer((struct sk_buff const *)skb);
    hdr->ldv_42925.hdr.gso_size = ((struct skb_shared_info *)tmp___6)->gso_size;
    tmp___9 = skb_end_pointer((struct sk_buff const *)skb);
    if ((int )((struct skb_shared_info *)tmp___9)->gso_type & 1) {
      hdr->ldv_42925.hdr.gso_type = 1U;
    } else {
      tmp___8 = skb_end_pointer((struct sk_buff const *)skb);
      if (((int )((struct skb_shared_info *)tmp___8)->gso_type & 16) != 0) {
        hdr->ldv_42925.hdr.gso_type = 4U;
      } else {
        tmp___7 = skb_end_pointer((struct sk_buff const *)skb);
        if (((int )((struct skb_shared_info *)tmp___7)->gso_type & 2) != 0) {
          hdr->ldv_42925.hdr.gso_type = 3U;
        } else {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                               "i" (879), "i" (12UL));
          ldv_43214: ;
          goto ldv_43214;
        }
      }
    }
    tmp___10 = skb_end_pointer((struct sk_buff const *)skb);
    if (((int )((struct skb_shared_info *)tmp___10)->gso_type & 8) != 0) {
      hdr->ldv_42925.hdr.gso_type = (__u8 )((unsigned int )hdr->ldv_42925.hdr.gso_type | 128U);
    } else {
    }
  } else {
    hdr->ldv_42925.hdr.gso_type = 0U;
    tmp___11 = 0U;
    hdr->ldv_42925.hdr.hdr_len = tmp___11;
    hdr->ldv_42925.hdr.gso_size = tmp___11;
  }
  if ((int )vi->mergeable_rx_bufs) {
    hdr->ldv_42925.mhdr.num_buffers = 0U;
  } else {
  }
  if ((int )can_push) {
    __skb_push(skb, hdr_len);
    tmp___13 = skb_to_sgvec(skb, (struct scatterlist *)(& sq->sg), 0, (int )skb->len);
    num_sg = (unsigned int )tmp___13;
    __skb_pull(skb, hdr_len);
  } else {
    sg_set_buf((struct scatterlist *)(& sq->sg), (void const *)hdr, hdr_len);
    tmp___14 = skb_to_sgvec(skb, (struct scatterlist *)(& sq->sg) + 1UL, 0, (int )skb->len);
    num_sg = (unsigned int )(tmp___14 + 1);
  }
  tmp___15 = virtqueue_add_outbuf(sq->vq, (struct scatterlist *)(& sq->sg), num_sg,
                                  (void *)skb, 32U);
  return (tmp___15);
}
}
static netdev_tx_t start_xmit(struct sk_buff *skb , struct net_device *dev )
{
  struct virtnet_info *vi ;
  void *tmp ;
  int qnum ;
  u16 tmp___0 ;
  struct send_queue *sq ;
  int err ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  tmp___0 = skb_get_queue_mapping((struct sk_buff const *)skb);
  qnum = (int )tmp___0;
  sq = vi->sq + (unsigned long )qnum;
  free_old_xmit_skbs(sq);
  err = xmit_skb(sq, skb);
  tmp___2 = ldv__builtin_expect(err != 0, 0L);
  if (tmp___2 != 0L) {
    dev->stats.tx_fifo_errors = dev->stats.tx_fifo_errors + 1UL;
    tmp___1 = net_ratelimit();
    if (tmp___1 != 0) {
      dev_warn((struct device const *)(& dev->dev), "Unexpected TXQ (%d) queue failure: %d\n",
               qnum, err);
    } else {
    }
    dev->stats.tx_dropped = dev->stats.tx_dropped + 1UL;
    dev_kfree_skb_any(skb);
    return (0);
  } else {
  }
  virtqueue_kick(sq->vq);
  skb_orphan(skb);
  nf_reset(skb);
  if ((sq->vq)->num_free <= 18U) {
    netif_stop_subqueue(dev, (int )((u16 )qnum));
    tmp___3 = virtqueue_enable_cb_delayed(sq->vq);
    if (tmp___3) {
      tmp___4 = 0;
    } else {
      tmp___4 = 1;
    }
    tmp___5 = ldv__builtin_expect((long )tmp___4, 0L);
    if (tmp___5 != 0L) {
      free_old_xmit_skbs(sq);
      if ((sq->vq)->num_free > 18U) {
        netif_start_subqueue(dev, (int )((u16 )qnum));
        virtqueue_disable_cb(sq->vq);
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static bool virtnet_send_command(struct virtnet_info *vi , u8 class , u8 cmd , struct scatterlist *out )
{
  struct scatterlist *sgs[4U] ;
  struct scatterlist hdr ;
  struct scatterlist stat ;
  struct virtio_net_ctrl_hdr ctrl ;
  virtio_net_ctrl_ack status ;
  unsigned int out_num ;
  unsigned int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  long tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  long tmp___8 ;
  void *tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  status = 255U;
  out_num = 0U;
  tmp___0 = virtio_has_feature((struct virtio_device const *)vi->vdev, 17U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (962), "i" (12UL));
    ldv_43236: ;
    goto ldv_43236;
  } else {
  }
  ctrl.class = class;
  ctrl.cmd = cmd;
  sg_init_one(& hdr, (void const *)(& ctrl), 2U);
  tmp___3 = out_num;
  out_num = out_num + 1U;
  sgs[tmp___3] = & hdr;
  if ((unsigned long )out != (unsigned long )((struct scatterlist *)0)) {
    tmp___4 = out_num;
    out_num = out_num + 1U;
    sgs[tmp___4] = out;
  } else {
  }
  sg_init_one(& stat, (void const *)(& status), 1U);
  sgs[out_num] = & stat;
  tmp___5 = ldv__builtin_expect(out_num + 1U > 4U, 0L);
  if (tmp___5 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (977), "i" (12UL));
    ldv_43239: ;
    goto ldv_43239;
  } else {
  }
  virtqueue_add_sgs(vi->cvq, (struct scatterlist **)(& sgs), out_num, 1U, (void *)vi,
                    32U);
  tmp___6 = virtqueue_kick(vi->cvq);
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  tmp___8 = ldv__builtin_expect((long )tmp___7, 0L);
  if (tmp___8 != 0L) {
    return ((unsigned int )status == 0U);
  } else {
  }
  goto ldv_43241;
  ldv_43240:
  cpu_relax();
  ldv_43241:
  tmp___9 = virtqueue_get_buf(vi->cvq, & tmp);
  if ((unsigned long )tmp___9 == (unsigned long )((void *)0)) {
    tmp___10 = virtqueue_is_broken(vi->cvq);
    if (tmp___10) {
      tmp___11 = 0;
    } else {
      tmp___11 = 1;
    }
    if (tmp___11) {
      goto ldv_43240;
    } else {
      goto ldv_43242;
    }
  } else {
  }
  ldv_43242: ;
  return ((unsigned int )status == 0U);
}
}
static int virtnet_set_mac_address(struct net_device *dev , void *p )
{
  struct virtnet_info *vi ;
  void *tmp ;
  struct virtio_device *vdev ;
  int ret ;
  struct sockaddr *addr ;
  struct scatterlist sg ;
  bool tmp___0 ;
  int tmp___1 ;
  unsigned int i ;
  bool tmp___2 ;
  bool tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  vdev = vi->vdev;
  addr = (struct sockaddr *)p;
  ret = eth_prepare_mac_addr_change(dev, p);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___3 = virtio_has_feature((struct virtio_device const *)vdev, 23U);
  if ((int )tmp___3) {
    sg_init_one(& sg, (void const *)(& addr->sa_data), (unsigned int )dev->addr_len);
    tmp___0 = virtnet_send_command(vi, 1, 1, & sg);
    if (tmp___0) {
      tmp___1 = 0;
    } else {
      tmp___1 = 1;
    }
    if (tmp___1) {
      dev_warn((struct device const *)(& vdev->dev), "Failed to set mac address by vq command.\n");
      return (-22);
    } else {
    }
  } else {
    tmp___2 = virtio_has_feature((struct virtio_device const *)vdev, 5U);
    if ((int )tmp___2) {
      i = 0U;
      goto ldv_43254;
      ldv_43253:
      virtio_cwrite8(vdev, i, (int )((u8 )addr->sa_data[i]));
      i = i + 1U;
      ldv_43254: ;
      if ((unsigned int )dev->addr_len > i) {
        goto ldv_43253;
      } else {
      }
    } else {
    }
  }
  eth_commit_mac_addr_change(dev, p);
  return (0);
}
}
static struct rtnl_link_stats64 *virtnet_stats(struct net_device *dev , struct rtnl_link_stats64 *tot )
{
  struct virtnet_info *vi ;
  void *tmp ;
  int cpu ;
  unsigned int start ;
  struct virtnet_stats *stats ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  u64 tpackets ;
  u64 tbytes ;
  u64 rpackets ;
  u64 rbytes ;
  bool tmp___0 ;
  bool tmp___1 ;
  unsigned int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  cpu = -1;
  goto ldv_43277;
  ldv_43276:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (vi->stats));
  stats = (struct virtnet_stats *)(__per_cpu_offset[cpu] + __ptr);
  ldv_43272:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& stats->tx_syncp));
  tpackets = stats->tx_packets;
  tbytes = stats->tx_bytes;
  tmp___0 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& stats->tx_syncp),
                                      start);
  if ((int )tmp___0) {
    goto ldv_43272;
  } else {
  }
  ldv_43274:
  start = u64_stats_fetch_begin_irq((struct u64_stats_sync const *)(& stats->rx_syncp));
  rpackets = stats->rx_packets;
  rbytes = stats->rx_bytes;
  tmp___1 = u64_stats_fetch_retry_irq((struct u64_stats_sync const *)(& stats->rx_syncp),
                                      start);
  if ((int )tmp___1) {
    goto ldv_43274;
  } else {
  }
  tot->rx_packets = tot->rx_packets + rpackets;
  tot->tx_packets = tot->tx_packets + tpackets;
  tot->rx_bytes = tot->rx_bytes + rbytes;
  tot->tx_bytes = tot->tx_bytes + tbytes;
  ldv_43277:
  tmp___2 = cpumask_next(cpu, cpu_possible_mask);
  cpu = (int )tmp___2;
  if (cpu < nr_cpu_ids) {
    goto ldv_43276;
  } else {
  }
  tot->tx_dropped = (__u64 )dev->stats.tx_dropped;
  tot->tx_fifo_errors = (__u64 )dev->stats.tx_fifo_errors;
  tot->rx_dropped = (__u64 )dev->stats.rx_dropped;
  tot->rx_length_errors = (__u64 )dev->stats.rx_length_errors;
  tot->rx_frame_errors = (__u64 )dev->stats.rx_frame_errors;
  return (tot);
}
}
static void virtnet_netpoll(struct net_device *dev )
{
  struct virtnet_info *vi ;
  void *tmp ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  i = 0;
  goto ldv_43285;
  ldv_43284:
  napi_schedule(& (vi->rq + (unsigned long )i)->napi);
  i = i + 1;
  ldv_43285: ;
  if ((int )vi->curr_queue_pairs > i) {
    goto ldv_43284;
  } else {
  }
  return;
}
}
static void virtnet_ack_link_announce(struct virtnet_info *vi )
{
  bool tmp ;
  int tmp___0 ;
  {
  rtnl_lock();
  tmp = virtnet_send_command(vi, 3, 0, (struct scatterlist *)0);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    dev_warn((struct device const *)(& (vi->dev)->dev), "Failed to ack link announce.\n");
  } else {
  }
  rtnl_unlock();
  return;
}
}
static int virtnet_set_queues(struct virtnet_info *vi , u16 queue_pairs )
{
  struct scatterlist sg ;
  struct virtio_net_ctrl_mq s ;
  struct net_device *dev ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  dev = vi->dev;
  if (! vi->has_cvq) {
    return (0);
  } else {
    tmp = virtio_has_feature((struct virtio_device const *)vi->vdev, 22U);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (0);
    } else {
    }
  }
  s.virtqueue_pairs = queue_pairs;
  sg_init_one(& sg, (void const *)(& s), 2U);
  tmp___1 = virtnet_send_command(vi, 4, 0, & sg);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    dev_warn((struct device const *)(& dev->dev), "Fail to set num of queue pairs to %d\n",
             (int )queue_pairs);
    return (-22);
  } else {
    vi->curr_queue_pairs = queue_pairs;
    if ((int )dev->flags & 1) {
      schedule_delayed_work(& vi->refill, 0UL);
    } else {
    }
  }
  return (0);
}
}
static int virtnet_close(struct net_device *dev )
{
  struct virtnet_info *vi ;
  void *tmp ;
  int i ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  cancel_delayed_work_sync(& vi->refill);
  i = 0;
  goto ldv_43303;
  ldv_43302:
  napi_disable(& (vi->rq + (unsigned long )i)->napi);
  i = i + 1;
  ldv_43303: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43302;
  } else {
  }
  return (0);
}
}
static void virtnet_set_rx_mode(struct net_device *dev )
{
  struct virtnet_info *vi ;
  void *tmp ;
  struct scatterlist sg[2U] ;
  u8 promisc ;
  u8 allmulti ;
  struct virtio_net_ctrl_mac *mac_data ;
  struct netdev_hw_addr *ha ;
  int uc_count ;
  int mc_count ;
  void *buf ;
  int i ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr ;
  size_t __len ;
  void *__ret ;
  int tmp___6 ;
  int tmp___7 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___8 ;
  int tmp___9 ;
  struct list_head const *__mptr___2 ;
  bool tmp___10 ;
  int tmp___11 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  tmp___0 = virtio_has_feature((struct virtio_device const *)vi->vdev, 18U);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    return;
  } else {
  }
  promisc = (dev->flags & 256U) != 0U;
  allmulti = (dev->flags & 512U) != 0U;
  sg_init_one((struct scatterlist *)(& sg), (void const *)(& promisc), 1U);
  tmp___2 = virtnet_send_command(vi, 0, 0, (struct scatterlist *)(& sg));
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    dev_warn((struct device const *)(& dev->dev), "Failed to %sable promisc mode.\n",
             (unsigned int )promisc != 0U ? (char *)"en" : (char *)"dis");
  } else {
  }
  sg_init_one((struct scatterlist *)(& sg), (void const *)(& allmulti), 1U);
  tmp___4 = virtnet_send_command(vi, 0, 1, (struct scatterlist *)(& sg));
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    dev_warn((struct device const *)(& dev->dev), "Failed to %sable allmulti mode.\n",
             (unsigned int )allmulti != 0U ? (char *)"en" : (char *)"dis");
  } else {
  }
  uc_count = dev->uc.count;
  mc_count = dev->mc.count;
  buf = kzalloc((unsigned long )((uc_count + mc_count) * 6) + 8UL, 32U);
  mac_data = (struct virtio_net_ctrl_mac *)buf;
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  sg_init_table((struct scatterlist *)(& sg), 2U);
  mac_data->entries = (__u32 )uc_count;
  i = 0;
  __mptr = (struct list_head const *)dev->uc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_43326;
  ldv_43325:
  __len = 6UL;
  if (__len > 63UL) {
    tmp___6 = i;
    i = i + 1;
    __ret = memcpy((void *)(& mac_data->macs) + (unsigned long )tmp___6, (void const *)(& ha->addr),
                     __len);
  } else {
    tmp___7 = i;
    i = i + 1;
    __ret = memcpy((void *)(& mac_data->macs) + (unsigned long )tmp___7,
                             (void const *)(& ha->addr), __len);
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_43326: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->uc.list)) {
    goto ldv_43325;
  } else {
  }
  sg_set_buf((struct scatterlist *)(& sg), (void const *)mac_data, (unsigned int )(uc_count * 6) + 4U);
  mac_data = (struct virtio_net_ctrl_mac *)(& mac_data->macs) + (unsigned long )uc_count;
  mac_data->entries = (__u32 )mc_count;
  i = 0;
  __mptr___1 = (struct list_head const *)dev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr___1;
  goto ldv_43336;
  ldv_43335:
  __len___0 = 6UL;
  if (__len___0 > 63UL) {
    tmp___8 = i;
    i = i + 1;
    __ret___0 = memcpy((void *)(& mac_data->macs) + (unsigned long )tmp___8, (void const *)(& ha->addr),
                         __len___0);
  } else {
    tmp___9 = i;
    i = i + 1;
    __ret___0 = memcpy((void *)(& mac_data->macs) + (unsigned long )tmp___9,
                                 (void const *)(& ha->addr), __len___0);
  }
  __mptr___2 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___2;
  ldv_43336: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& dev->mc.list)) {
    goto ldv_43335;
  } else {
  }
  sg_set_buf((struct scatterlist *)(& sg) + 1UL, (void const *)mac_data, (unsigned int )(mc_count * 6) + 4U);
  tmp___10 = virtnet_send_command(vi, 1, 0, (struct scatterlist *)(& sg));
  if (tmp___10) {
    tmp___11 = 0;
  } else {
    tmp___11 = 1;
  }
  if (tmp___11) {
    dev_warn((struct device const *)(& dev->dev), "Failed to set MAC filter table.\n");
  } else {
  }
  kfree((void const *)buf);
  return;
}
}
static int virtnet_vlan_rx_add_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct virtnet_info *vi ;
  void *tmp ;
  struct scatterlist sg ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  sg_init_one(& sg, (void const *)(& vid), 2U);
  tmp___0 = virtnet_send_command(vi, 2, 0, & sg);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_warn((struct device const *)(& dev->dev), "Failed to add VLAN ID %d.\n",
             (int )vid);
  } else {
  }
  return (0);
}
}
static int virtnet_vlan_rx_kill_vid(struct net_device *dev , __be16 proto , u16 vid )
{
  struct virtnet_info *vi ;
  void *tmp ;
  struct scatterlist sg ;
  bool tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  sg_init_one(& sg, (void const *)(& vid), 2U);
  tmp___0 = virtnet_send_command(vi, 2, 1, & sg);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  if (tmp___1) {
    dev_warn((struct device const *)(& dev->dev), "Failed to kill VLAN ID %d.\n",
             (int )vid);
  } else {
  }
  return (0);
}
}
static void virtnet_clean_affinity(struct virtnet_info *vi , long hcpu )
{
  int i ;
  {
  if ((int )vi->affinity_hint_set) {
    i = 0;
    goto ldv_43358;
    ldv_43357:
    virtqueue_set_affinity((vi->rq + (unsigned long )i)->vq, -1);
    virtqueue_set_affinity((vi->sq + (unsigned long )i)->vq, -1);
    i = i + 1;
    ldv_43358: ;
    if ((int )vi->max_queue_pairs > i) {
      goto ldv_43357;
    } else {
    }
    vi->affinity_hint_set = 0;
  } else {
  }
  return;
}
}
static void virtnet_set_affinity(struct virtnet_info *vi )
{
  int i ;
  int cpu ;
  unsigned int tmp ;
  struct cpumask const *tmp___0 ;
  unsigned int tmp___1 ;
  {
  if ((unsigned int )vi->curr_queue_pairs == 1U) {
    virtnet_clean_affinity(vi, -1L);
    return;
  } else {
    tmp = cpumask_weight(cpu_online_mask);
    if ((unsigned int )vi->max_queue_pairs != tmp) {
      virtnet_clean_affinity(vi, -1L);
      return;
    } else {
    }
  }
  i = 0;
  cpu = -1;
  goto ldv_43366;
  ldv_43365:
  virtqueue_set_affinity((vi->rq + (unsigned long )i)->vq, cpu);
  virtqueue_set_affinity((vi->sq + (unsigned long )i)->vq, cpu);
  tmp___0 = get_cpu_mask((unsigned int )cpu);
  netif_set_xps_queue(vi->dev, tmp___0, (int )((u16 )i));
  i = i + 1;
  ldv_43366:
  tmp___1 = cpumask_next(cpu, cpu_online_mask);
  cpu = (int )tmp___1;
  if (cpu < nr_cpu_ids) {
    goto ldv_43365;
  } else {
  }
  vi->affinity_hint_set = 1;
  return;
}
}
static int virtnet_cpu_callback(struct notifier_block *nfb , unsigned long action ,
                                void *hcpu )
{
  struct virtnet_info *vi ;
  struct notifier_block const *__mptr ;
  {
  __mptr = (struct notifier_block const *)nfb;
  vi = (struct virtnet_info *)__mptr + 0xfffffffffffffde0UL;
  switch (action & 0xffffffffffffffefUL) {
  case 2UL: ;
  case 6UL: ;
  case 7UL:
  virtnet_set_affinity(vi);
  goto ldv_43379;
  case 5UL:
  virtnet_clean_affinity(vi, (long )hcpu);
  goto ldv_43379;
  default: ;
  goto ldv_43379;
  }
  ldv_43379: ;
  return (1);
}
}
static void virtnet_get_ringparam(struct net_device *dev , struct ethtool_ringparam *ring )
{
  struct virtnet_info *vi ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  ring->rx_max_pending = virtqueue_get_vring_size((vi->rq)->vq);
  ring->tx_max_pending = virtqueue_get_vring_size((vi->sq)->vq);
  ring->rx_pending = ring->rx_max_pending;
  ring->tx_pending = ring->tx_max_pending;
  return;
}
}
static void virtnet_get_drvinfo(struct net_device *dev , struct ethtool_drvinfo *info )
{
  struct virtnet_info *vi ;
  void *tmp ;
  struct virtio_device *vdev ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  vdev = vi->vdev;
  strlcpy((char *)(& info->driver), "virtio_net", 32UL);
  strlcpy((char *)(& info->version), "1.0.0", 32UL);
  tmp___0 = virtio_bus_name(vdev);
  strlcpy((char *)(& info->bus_info), tmp___0, 32UL);
  return;
}
}
static int virtnet_set_channels(struct net_device *dev , struct ethtool_channels *channels )
{
  struct virtnet_info *vi ;
  void *tmp ;
  u16 queue_pairs ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  queue_pairs = (u16 )channels->combined_count;
  if ((channels->rx_count != 0U || channels->tx_count != 0U) || channels->other_count != 0U) {
    return (-22);
  } else {
  }
  if ((int )vi->max_queue_pairs < (int )queue_pairs || (unsigned int )queue_pairs == 0U) {
    return (-22);
  } else {
  }
  get_online_cpus();
  err = virtnet_set_queues(vi, (int )queue_pairs);
  if (err == 0) {
    netif_set_real_num_tx_queues(dev, (unsigned int )queue_pairs);
    netif_set_real_num_rx_queues(dev, (unsigned int )queue_pairs);
    virtnet_set_affinity(vi);
  } else {
  }
  put_online_cpus();
  return (err);
}
}
static void virtnet_get_channels(struct net_device *dev , struct ethtool_channels *channels )
{
  struct virtnet_info *vi ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp;
  channels->combined_count = (__u32 )vi->curr_queue_pairs;
  channels->max_combined = (__u32 )vi->max_queue_pairs;
  channels->max_other = 0U;
  channels->rx_count = 0U;
  channels->tx_count = 0U;
  channels->other_count = 0U;
  return;
}
}
static struct ethtool_ops const virtnet_ethtool_ops =
     {0, 0, & virtnet_get_drvinfo, 0, 0, 0, 0, 0, 0, 0, & ethtool_op_get_link, 0, 0,
    0, 0, 0, & virtnet_get_ringparam, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, & virtnet_get_channels, & virtnet_set_channels, 0, 0, 0, 0, 0,
    0, 0, 0};
static int virtnet_change_mtu(struct net_device *dev , int new_mtu )
{
  {
  if (new_mtu <= 67 || new_mtu > 65535) {
    return (-22);
  } else {
  }
  dev->mtu = (unsigned int )new_mtu;
  return (0);
}
}
static struct net_device_ops const virtnet_netdev =
     {0, 0, & virtnet_open, & virtnet_close, & start_xmit, 0, 0, & virtnet_set_rx_mode,
    & virtnet_set_mac_address, & eth_validate_addr, 0, 0, & virtnet_change_mtu, 0,
    0, & virtnet_stats, 0, & virtnet_vlan_rx_add_vid, & virtnet_vlan_rx_kill_vid,
    & virtnet_netpoll, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void virtnet_config_changed_work(struct work_struct *work )
{
  struct virtnet_info *vi ;
  struct work_struct const *__mptr ;
  u16 v ;
  int _r ;
  u8 tmp ;
  u32 tmp___0 ;
  u64 tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  __mptr = (struct work_struct const *)work;
  vi = (struct virtnet_info *)__mptr + 0xfffffffffffffee0UL;
  mutex_lock_nested(& vi->config_lock, 0U);
  if (! vi->config_enable) {
    goto done;
  } else {
  }
  _r = 0;
  tmp___2 = virtio_has_feature((struct virtio_device const *)vi->vdev, 16U);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    _r = -2;
  } else {
    switch (2UL) {
    case 1UL:
    tmp = virtio_cread8(vi->vdev, 6U);
    v = (u16 )tmp;
    goto ldv_43424;
    case 2UL:
    v = virtio_cread16(vi->vdev, 6U);
    goto ldv_43424;
    case 4UL:
    tmp___0 = virtio_cread32(vi->vdev, 6U);
    v = (u16 )tmp___0;
    goto ldv_43424;
    case 8UL:
    tmp___1 = virtio_cread64(vi->vdev, 6U);
    v = (u16 )tmp___1;
    goto ldv_43424;
    default:
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (1400), "i" (12UL));
    ldv_43429: ;
    goto ldv_43429;
    }
    ldv_43424: ;
  }
  if (_r < 0) {
    goto done;
  } else {
  }
  if (((int )v & 2) != 0) {
    netdev_notify_peers(vi->dev);
    virtnet_ack_link_announce(vi);
  } else {
  }
  v = (unsigned int )v & 1U;
  if (vi->status == (unsigned int )v) {
    goto done;
  } else {
  }
  vi->status = (unsigned int )v;
  if ((int )vi->status & 1) {
    netif_carrier_on(vi->dev);
    netif_tx_wake_all_queues(vi->dev);
  } else {
    netif_carrier_off(vi->dev);
    netif_tx_stop_all_queues(vi->dev);
  }
  done:
  mutex_unlock(& vi->config_lock);
  return;
}
}
static void virtnet_config_changed(struct virtio_device *vdev )
{
  struct virtnet_info *vi ;
  {
  vi = (struct virtnet_info *)vdev->priv;
  schedule_work(& vi->config_work);
  return;
}
}
static void virtnet_free_queues(struct virtnet_info *vi )
{
  int i ;
  {
  i = 0;
  goto ldv_43440;
  ldv_43439:
  netif_napi_del(& (vi->rq + (unsigned long )i)->napi);
  i = i + 1;
  ldv_43440: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43439;
  } else {
  }
  kfree((void const *)vi->rq);
  kfree((void const *)vi->sq);
  return;
}
}
static void free_receive_bufs(struct virtnet_info *vi )
{
  int i ;
  struct page *tmp ;
  {
  i = 0;
  goto ldv_43450;
  ldv_43449: ;
  goto ldv_43447;
  ldv_43446:
  tmp = get_a_page(vi->rq + (unsigned long )i, 208U);
  __free_pages(tmp, 0U);
  ldv_43447: ;
  if ((unsigned long )(vi->rq + (unsigned long )i)->pages != (unsigned long )((struct page *)0)) {
    goto ldv_43446;
  } else {
  }
  i = i + 1;
  ldv_43450: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43449;
  } else {
  }
  return;
}
}
static void free_receive_page_frags(struct virtnet_info *vi )
{
  int i ;
  {
  i = 0;
  goto ldv_43457;
  ldv_43456: ;
  if ((unsigned long )(vi->rq + (unsigned long )i)->alloc_frag.page != (unsigned long )((struct page *)0)) {
    put_page((vi->rq + (unsigned long )i)->alloc_frag.page);
  } else {
  }
  i = i + 1;
  ldv_43457: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43456;
  } else {
  }
  return;
}
}
static void free_unused_bufs(struct virtnet_info *vi )
{
  void *buf ;
  int i ;
  struct virtqueue *vq ;
  struct virtqueue *vq___0 ;
  unsigned long ctx ;
  void *base ;
  void *tmp ;
  struct page *tmp___0 ;
  {
  i = 0;
  goto ldv_43469;
  ldv_43468:
  vq = (vi->sq + (unsigned long )i)->vq;
  goto ldv_43466;
  ldv_43465:
  ldv_skb_free((struct sk_buff *)buf);
  ldv_43466:
  buf = virtqueue_detach_unused_buf(vq);
  if ((unsigned long )buf != (unsigned long )((void *)0)) {
    goto ldv_43465;
  } else {
  }
  i = i + 1;
  ldv_43469: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43468;
  } else {
  }
  i = 0;
  goto ldv_43478;
  ldv_43477:
  vq___0 = (vi->rq + (unsigned long )i)->vq;
  goto ldv_43475;
  ldv_43474: ;
  if ((int )vi->mergeable_rx_bufs) {
    ctx = (unsigned long )buf;
    tmp = mergeable_ctx_to_buf_address(ctx);
    base = tmp;
    tmp___0 = virt_to_head_page((void const *)base);
    put_page(tmp___0);
  } else
  if ((int )vi->big_packets) {
    give_pages(vi->rq + (unsigned long )i, (struct page *)buf);
  } else {
    ldv_skb_free((struct sk_buff *)buf);
  }
  ldv_43475:
  buf = virtqueue_detach_unused_buf(vq___0);
  if ((unsigned long )buf != (unsigned long )((void *)0)) {
    goto ldv_43474;
  } else {
  }
  i = i + 1;
  ldv_43478: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43477;
  } else {
  }
  return;
}
}
static void virtnet_del_vqs(struct virtnet_info *vi )
{
  struct virtio_device *vdev ;
  {
  vdev = vi->vdev;
  virtnet_clean_affinity(vi, -1L);
  (*((vdev->config)->del_vqs))(vdev);
  virtnet_free_queues(vi);
  return;
}
}
static int virtnet_find_vqs(struct virtnet_info *vi )
{
  vq_callback_t **callbacks ;
  struct virtqueue **vqs ;
  int ret ;
  int i ;
  int total_vqs ;
  char const **names ;
  bool tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  ret = -12;
  tmp = virtio_has_feature((struct virtio_device const *)vi->vdev, 17U);
  total_vqs = (int )vi->max_queue_pairs * 2 + (int )tmp;
  tmp___0 = kzalloc((unsigned long )total_vqs * 8UL, 208U);
  vqs = (struct virtqueue **)tmp___0;
  if ((unsigned long )vqs == (unsigned long )((struct virtqueue **)0)) {
    goto err_vq;
  } else {
  }
  tmp___1 = kmalloc((unsigned long )total_vqs * 8UL, 208U);
  callbacks = (vq_callback_t **)tmp___1;
  if ((unsigned long )callbacks == (unsigned long )((vq_callback_t **)0)) {
    goto err_callback;
  } else {
  }
  tmp___2 = kmalloc((unsigned long )total_vqs * 8UL, 208U);
  names = (char const **)tmp___2;
  if ((unsigned long )names == (unsigned long )((char const **)0)) {
    goto err_names;
  } else {
  }
  if ((int )vi->has_cvq) {
    *(callbacks + ((unsigned long )total_vqs + 0xffffffffffffffffUL)) = (vq_callback_t *)0;
    *(names + ((unsigned long )total_vqs + 0xffffffffffffffffUL)) = "control";
  } else {
  }
  i = 0;
  goto ldv_43497;
  ldv_43496:
  tmp___3 = rxq2vq(i);
  *(callbacks + (unsigned long )tmp___3) = & skb_recv_done;
  tmp___4 = txq2vq(i);
  *(callbacks + (unsigned long )tmp___4) = & skb_xmit_done;
  sprintf((char *)(& (vi->rq + (unsigned long )i)->name), "input.%d", i);
  sprintf((char *)(& (vi->sq + (unsigned long )i)->name), "output.%d", i);
  tmp___5 = rxq2vq(i);
  *(names + (unsigned long )tmp___5) = (char const *)(& (vi->rq + (unsigned long )i)->name);
  tmp___6 = txq2vq(i);
  *(names + (unsigned long )tmp___6) = (char const *)(& (vi->sq + (unsigned long )i)->name);
  i = i + 1;
  ldv_43497: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43496;
  } else {
  }
  ret = (*(((vi->vdev)->config)->find_vqs))(vi->vdev, (unsigned int )total_vqs, vqs,
                                            callbacks, names);
  if (ret != 0) {
    goto err_find;
  } else {
  }
  if ((int )vi->has_cvq) {
    vi->cvq = *(vqs + ((unsigned long )total_vqs + 0xffffffffffffffffUL));
    tmp___7 = virtio_has_feature((struct virtio_device const *)vi->vdev, 19U);
    if ((int )tmp___7) {
      (vi->dev)->features = (vi->dev)->features | 512ULL;
    } else {
    }
  } else {
  }
  i = 0;
  goto ldv_43501;
  ldv_43500:
  tmp___8 = rxq2vq(i);
  (vi->rq + (unsigned long )i)->vq = *(vqs + (unsigned long )tmp___8);
  tmp___9 = txq2vq(i);
  (vi->sq + (unsigned long )i)->vq = *(vqs + (unsigned long )tmp___9);
  i = i + 1;
  ldv_43501: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43500;
  } else {
  }
  kfree((void const *)names);
  kfree((void const *)callbacks);
  kfree((void const *)vqs);
  return (0);
  err_find:
  kfree((void const *)names);
  err_names:
  kfree((void const *)callbacks);
  err_callback:
  kfree((void const *)vqs);
  err_vq: ;
  return (ret);
}
}
static int virtnet_alloc_queues(struct virtnet_info *vi )
{
  int i ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___0 ;
  {
  tmp = kzalloc((unsigned long )vi->max_queue_pairs * 808UL, 208U);
  vi->sq = (struct send_queue *)tmp;
  if ((unsigned long )vi->sq == (unsigned long )((struct send_queue *)0)) {
    goto err_sq;
  } else {
  }
  tmp___0 = kzalloc((unsigned long )vi->max_queue_pairs * 1040UL, 208U);
  vi->rq = (struct receive_queue *)tmp___0;
  if ((unsigned long )vi->rq == (unsigned long )((struct receive_queue *)0)) {
    goto err_rq;
  } else {
  }
  __init_work(& vi->refill.work, 0);
  __constr_expr_0.counter = 137438953408L;
  vi->refill.work.data = __constr_expr_0;
  lockdep_init_map(& vi->refill.work.lockdep_map, "(&(&vi->refill)->work)", & __key,
                   0);
  INIT_LIST_HEAD(& vi->refill.work.entry);
  vi->refill.work.func = & refill_work;
  init_timer_key(& vi->refill.timer, 2U, "(&(&vi->refill)->timer)", & __key___0);
  vi->refill.timer.function = & delayed_work_timer_fn;
  vi->refill.timer.data = (unsigned long )(& vi->refill);
  i = 0;
  goto ldv_43517;
  ldv_43516:
  (vi->rq + (unsigned long )i)->pages = (struct page *)0;
  netif_napi_add(vi->dev, & (vi->rq + (unsigned long )i)->napi, & virtnet_poll, napi_weight);
  sg_init_table((struct scatterlist *)(& (vi->rq + (unsigned long )i)->sg), 19U);
  ewma_init(& (vi->rq + (unsigned long )i)->mrg_avg_pkt_len, 1UL, 64UL);
  sg_init_table((struct scatterlist *)(& (vi->sq + (unsigned long )i)->sg), 19U);
  i = i + 1;
  ldv_43517: ;
  if ((int )vi->max_queue_pairs > i) {
    goto ldv_43516;
  } else {
  }
  return (0);
  err_rq:
  kfree((void const *)vi->sq);
  err_sq: ;
  return (-12);
}
}
static int init_vqs(struct virtnet_info *vi )
{
  int ret ;
  {
  ret = virtnet_alloc_queues(vi);
  if (ret != 0) {
    goto err;
  } else {
  }
  ret = virtnet_find_vqs(vi);
  if (ret != 0) {
    goto err_free;
  } else {
  }
  get_online_cpus();
  virtnet_set_affinity(vi);
  put_online_cpus();
  return (0);
  err_free:
  virtnet_free_queues(vi);
  err: ;
  return (ret);
}
}
static ssize_t mergeable_rx_buffer_size_show(struct netdev_rx_queue *queue , struct rx_queue_attribute *attribute ,
                                             char *buf )
{
  struct virtnet_info *vi ;
  void *tmp ;
  unsigned int queue_index ;
  unsigned int tmp___0 ;
  struct ewma *avg ;
  long tmp___1 ;
  unsigned int tmp___2 ;
  int tmp___3 ;
  {
  tmp = netdev_priv((struct net_device const *)queue->dev);
  vi = (struct virtnet_info *)tmp;
  tmp___0 = get_netdev_rx_queue_index(queue);
  queue_index = tmp___0;
  tmp___1 = ldv__builtin_expect((unsigned int )vi->max_queue_pairs <= queue_index, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (1639), "i" (12UL));
    ldv_43533: ;
    goto ldv_43533;
  } else {
  }
  avg = & (vi->rq + (unsigned long )queue_index)->mrg_avg_pkt_len;
  tmp___2 = get_mergeable_buf_len(avg);
  tmp___3 = sprintf(buf, "%u\n", tmp___2);
  return ((ssize_t )tmp___3);
}
}
static struct rx_queue_attribute mergeable_rx_buffer_size_attribute = {{"mergeable_rx_buffer_size", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}, {(char)0},
                                                      {(char)0}, {(char)0}}}}, & mergeable_rx_buffer_size_show,
    0};
static struct attribute *virtio_net_mrg_rx_attrs[2U] = { & mergeable_rx_buffer_size_attribute.attr, (struct attribute *)0};
static struct attribute_group const virtio_net_mrg_rx_group = {"virtio_net", 0, (struct attribute **)(& virtio_net_mrg_rx_attrs), 0};
static int virtnet_probe(struct virtio_device *vdev )
{
  int i ;
  int err ;
  struct net_device *dev ;
  struct virtnet_info *vi ;
  u16 max_queue_pairs ;
  int _r ;
  u8 tmp ;
  u32 tmp___0 ;
  u64 tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  bool tmp___7 ;
  bool tmp___8 ;
  bool tmp___9 ;
  bool tmp___10 ;
  bool tmp___11 ;
  bool tmp___12 ;
  bool tmp___13 ;
  void *tmp___14 ;
  void *tmp___15 ;
  struct virtnet_stats *virtnet_stats___0 ;
  void const *__vpp_verify ;
  unsigned long __ptr ;
  unsigned int tmp___16 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  bool tmp___17 ;
  bool tmp___18 ;
  bool tmp___19 ;
  bool tmp___20 ;
  bool tmp___21 ;
  bool tmp___22 ;
  bool tmp___23 ;
  struct _ddebug descriptor ;
  long tmp___24 ;
  unsigned int tmp___25 ;
  struct _ddebug descriptor___0 ;
  long tmp___26 ;
  bool tmp___27 ;
  struct _ddebug descriptor___1 ;
  long tmp___28 ;
  {
  _r = 0;
  tmp___2 = virtio_has_feature((struct virtio_device const *)vdev, 22U);
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    _r = -2;
  } else {
    switch (2UL) {
    case 1UL:
    tmp = virtio_cread8(vdev, 8U);
    max_queue_pairs = (u16 )tmp;
    goto ldv_43550;
    case 2UL:
    max_queue_pairs = virtio_cread16(vdev, 8U);
    goto ldv_43550;
    case 4UL:
    tmp___0 = virtio_cread32(vdev, 8U);
    max_queue_pairs = (u16 )tmp___0;
    goto ldv_43550;
    case 8UL:
    tmp___1 = virtio_cread64(vdev, 8U);
    max_queue_pairs = (u16 )tmp___1;
    goto ldv_43550;
    default:
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared"),
                         "i" (1668), "i" (12UL));
    ldv_43555: ;
    goto ldv_43555;
    }
    ldv_43550: ;
  }
  err = _r;
  if ((err != 0 || (unsigned int )max_queue_pairs == 0U) || (unsigned int )max_queue_pairs > 32768U) {
    max_queue_pairs = 1U;
  } else {
    tmp___4 = virtio_has_feature((struct virtio_device const *)vdev, 17U);
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      max_queue_pairs = 1U;
    } else {
    }
  }
  dev = alloc_etherdev_mqs(568, (unsigned int )max_queue_pairs, (unsigned int )max_queue_pairs);
  if ((unsigned long )dev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  dev->priv_flags = dev->priv_flags | 1179648U;
  dev->netdev_ops = & virtnet_netdev;
  dev->features = 32ULL;
  dev->ethtool_ops = & virtnet_ethtool_ops;
  dev->dev.parent = & vdev->dev;
  tmp___11 = virtio_has_feature((struct virtio_device const *)vdev, 0U);
  if ((int )tmp___11) {
    dev->hw_features = dev->hw_features | 73ULL;
    if ((int )csum) {
      dev->features = dev->features | 73ULL;
    } else {
    }
    tmp___6 = virtio_has_feature((struct virtio_device const *)vdev, 6U);
    if ((int )tmp___6) {
      dev->hw_features = dev->hw_features | 1769472ULL;
    } else {
    }
    tmp___7 = virtio_has_feature((struct virtio_device const *)vdev, 11U);
    if ((int )tmp___7) {
      dev->hw_features = dev->hw_features | 65536ULL;
    } else {
    }
    tmp___8 = virtio_has_feature((struct virtio_device const *)vdev, 12U);
    if ((int )tmp___8) {
      dev->hw_features = dev->hw_features | 1048576ULL;
    } else {
    }
    tmp___9 = virtio_has_feature((struct virtio_device const *)vdev, 13U);
    if ((int )tmp___9) {
      dev->hw_features = dev->hw_features | 524288ULL;
    } else {
    }
    tmp___10 = virtio_has_feature((struct virtio_device const *)vdev, 14U);
    if ((int )tmp___10) {
      dev->hw_features = dev->hw_features | 131072ULL;
    } else {
    }
    if ((int )gso) {
      dev->features = dev->features | (dev->hw_features & 1769472ULL);
    } else {
    }
  } else {
  }
  tmp___12 = virtio_has_feature((struct virtio_device const *)vdev, 1U);
  if ((int )tmp___12) {
    dev->features = dev->features | 17179869184ULL;
  } else {
  }
  dev->vlan_features = dev->features;
  tmp___13 = virtio_has_feature((struct virtio_device const *)vdev, 5U);
  if ((int )tmp___13) {
    virtio_cread_bytes(vdev, 0U, (void *)dev->dev_addr, (size_t )dev->addr_len);
  } else {
    eth_hw_addr_random(dev);
  }
  tmp___14 = netdev_priv((struct net_device const *)dev);
  vi = (struct virtnet_info *)tmp___14;
  vi->dev = dev;
  vi->vdev = vdev;
  vdev->priv = (void *)vi;
  tmp___15 = __alloc_percpu(32UL, 8UL);
  vi->stats = (struct virtnet_stats *)tmp___15;
  err = -12;
  if ((unsigned long )vi->stats == (unsigned long )((struct virtnet_stats *)0)) {
    goto free;
  } else {
  }
  i = -1;
  goto ldv_43564;
  ldv_43563:
  __vpp_verify = (void const *)0;
  __asm__ ("": "=r" (__ptr): "0" (vi->stats));
  virtnet_stats___0 = (struct virtnet_stats *)(__per_cpu_offset[i] + __ptr);
  ldv_43564:
  tmp___16 = cpumask_next(i, cpu_possible_mask);
  i = (int )tmp___16;
  if (i < nr_cpu_ids) {
    goto ldv_43563;
  } else {
  }
  __mutex_init(& vi->config_lock, "&vi->config_lock", & __key);
  vi->config_enable = 1;
  __init_work(& vi->config_work, 0);
  __constr_expr_0.counter = 137438953408L;
  vi->config_work.data = __constr_expr_0;
  lockdep_init_map(& vi->config_work.lockdep_map, "(&vi->config_work)", & __key___0,
                   0);
  INIT_LIST_HEAD(& vi->config_work.entry);
  vi->config_work.func = & virtnet_config_changed_work;
  tmp___17 = virtio_has_feature((struct virtio_device const *)vdev, 7U);
  if ((int )tmp___17) {
    vi->big_packets = 1;
  } else {
    tmp___18 = virtio_has_feature((struct virtio_device const *)vdev, 8U);
    if ((int )tmp___18) {
      vi->big_packets = 1;
    } else {
      tmp___19 = virtio_has_feature((struct virtio_device const *)vdev, 9U);
      if ((int )tmp___19) {
        vi->big_packets = 1;
      } else {
        tmp___20 = virtio_has_feature((struct virtio_device const *)vdev, 10U);
        if ((int )tmp___20) {
          vi->big_packets = 1;
        } else {
        }
      }
    }
  }
  tmp___21 = virtio_has_feature((struct virtio_device const *)vdev, 15U);
  if ((int )tmp___21) {
    vi->mergeable_rx_bufs = 1;
  } else {
  }
  tmp___22 = virtio_has_feature((struct virtio_device const *)vdev, 27U);
  if ((int )tmp___22) {
    vi->any_header_sg = 1;
  } else {
  }
  tmp___23 = virtio_has_feature((struct virtio_device const *)vdev, 17U);
  if ((int )tmp___23) {
    vi->has_cvq = 1;
  } else {
  }
  if ((int )vi->any_header_sg) {
    if ((int )vi->mergeable_rx_bufs) {
      dev->needed_headroom = 12U;
    } else {
      dev->needed_headroom = 10U;
    }
  } else {
  }
  vi->curr_queue_pairs = 1U;
  vi->max_queue_pairs = max_queue_pairs;
  err = init_vqs(vi);
  if (err != 0) {
    goto free_stats;
  } else {
  }
  if ((int )vi->mergeable_rx_bufs) {
    dev->sysfs_rx_queue_group = & virtio_net_mrg_rx_group;
  } else {
  }
  netif_set_real_num_tx_queues(dev, (unsigned int )vi->curr_queue_pairs);
  netif_set_real_num_rx_queues(dev, (unsigned int )vi->curr_queue_pairs);
  err = ldv_register_netdev_13(dev);
  if (err != 0) {
    descriptor.modname = "virtio_net";
    descriptor.function = "virtnet_probe";
    descriptor.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor.format = "virtio_net: registering device failed\n";
    descriptor.lineno = 1789U;
    descriptor.flags = 0U;
    tmp___24 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___24 != 0L) {
      __dynamic_pr_debug(& descriptor, "virtio_net: registering device failed\n");
    } else {
    }
    goto free_vqs;
  } else {
  }
  i = 0;
  goto ldv_43575;
  ldv_43574:
  try_fill_recv(vi->rq + (unsigned long )i, 208U);
  tmp___25 = virtqueue_get_vring_size((vi->rq + (unsigned long )i)->vq);
  if (((vi->rq + (unsigned long )i)->vq)->num_free == tmp___25) {
    free_unused_bufs(vi);
    err = -12;
    goto free_recv_bufs;
  } else {
  }
  i = i + 1;
  ldv_43575: ;
  if ((int )vi->curr_queue_pairs > i) {
    goto ldv_43574;
  } else {
  }
  vi->nb.notifier_call = & virtnet_cpu_callback;
  err = register_cpu_notifier(& vi->nb);
  if (err != 0) {
    descriptor___0.modname = "virtio_net";
    descriptor___0.function = "virtnet_probe";
    descriptor___0.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
    descriptor___0.format = "virtio_net: registering cpu notifier failed\n";
    descriptor___0.lineno = 1809U;
    descriptor___0.flags = 0U;
    tmp___26 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___26 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "virtio_net: registering cpu notifier failed\n");
    } else {
    }
    goto free_recv_bufs;
  } else {
  }
  tmp___27 = virtio_has_feature((struct virtio_device const *)vi->vdev, 16U);
  if ((int )tmp___27) {
    netif_carrier_off(dev);
    schedule_work(& vi->config_work);
  } else {
    vi->status = 1U;
    netif_carrier_on(dev);
  }
  descriptor___1.modname = "virtio_net";
  descriptor___1.function = "virtnet_probe";
  descriptor___1.filename = "/work/ldvuser/mutilin/launch/work/current--X--drivers/net/--X--defaultlinux-3.16-rc1.tar.xz--X--205_9a--X--cpachecker/linux-3.16-rc1.tar.xz/csd_deg_dscv/1796/dscv_tempdir/dscv/ri/205_9a/drivers/net/virtio_net.o.c.prepared";
  descriptor___1.format = "virtnet: registered device %s with %d RX and TX vq\'s\n";
  descriptor___1.lineno = 1824U;
  descriptor___1.flags = 0U;
  tmp___28 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___28 != 0L) {
    __dynamic_pr_debug(& descriptor___1, "virtnet: registered device %s with %d RX and TX vq\'s\n",
                       (char *)(& dev->name), (int )max_queue_pairs);
  } else {
  }
  return (0);
  free_recv_bufs:
  free_receive_bufs(vi);
  ldv_unregister_netdev_14(dev);
  free_vqs:
  cancel_delayed_work_sync(& vi->refill);
  free_receive_page_frags(vi);
  virtnet_del_vqs(vi);
  free_stats:
  free_percpu((void *)vi->stats);
  free:
  ldv_free_netdev_15(dev);
  return (err);
}
}
static void remove_vq_common(struct virtnet_info *vi )
{
  {
  (*(((vi->vdev)->config)->reset))(vi->vdev);
  free_unused_bufs(vi);
  free_receive_bufs(vi);
  free_receive_page_frags(vi);
  virtnet_del_vqs(vi);
  return;
}
}
static void virtnet_remove(struct virtio_device *vdev )
{
  struct virtnet_info *vi ;
  {
  vi = (struct virtnet_info *)vdev->priv;
  unregister_cpu_notifier(& vi->nb);
  mutex_lock_nested(& vi->config_lock, 0U);
  vi->config_enable = 0;
  mutex_unlock(& vi->config_lock);
  ldv_unregister_netdev_16(vi->dev);
  remove_vq_common(vi);
  flush_work(& vi->config_work);
  free_percpu((void *)vi->stats);
  ldv_free_netdev_17(vi->dev);
  return;
}
}
static int virtnet_freeze(struct virtio_device *vdev )
{
  struct virtnet_info *vi ;
  int i ;
  bool tmp ;
  {
  vi = (struct virtnet_info *)vdev->priv;
  unregister_cpu_notifier(& vi->nb);
  mutex_lock_nested(& vi->config_lock, 0U);
  vi->config_enable = 0;
  mutex_unlock(& vi->config_lock);
  netif_device_detach(vi->dev);
  cancel_delayed_work_sync(& vi->refill);
  tmp = netif_running((struct net_device const *)vi->dev);
  if ((int )tmp) {
    i = 0;
    goto ldv_43592;
    ldv_43591:
    napi_disable(& (vi->rq + (unsigned long )i)->napi);
    netif_napi_del(& (vi->rq + (unsigned long )i)->napi);
    i = i + 1;
    ldv_43592: ;
    if ((int )vi->max_queue_pairs > i) {
      goto ldv_43591;
    } else {
    }
  } else {
  }
  remove_vq_common(vi);
  flush_work(& vi->config_work);
  return (0);
}
}
static int virtnet_restore(struct virtio_device *vdev )
{
  struct virtnet_info *vi ;
  int err ;
  int i ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  {
  vi = (struct virtnet_info *)vdev->priv;
  err = init_vqs(vi);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___1 = netif_running((struct net_device const *)vi->dev);
  if ((int )tmp___1) {
    i = 0;
    goto ldv_43601;
    ldv_43600:
    tmp = try_fill_recv(vi->rq + (unsigned long )i, 208U);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      schedule_delayed_work(& vi->refill, 0UL);
    } else {
    }
    i = i + 1;
    ldv_43601: ;
    if ((int )vi->curr_queue_pairs > i) {
      goto ldv_43600;
    } else {
    }
    i = 0;
    goto ldv_43604;
    ldv_43603:
    virtnet_napi_enable(vi->rq + (unsigned long )i);
    i = i + 1;
    ldv_43604: ;
    if ((int )vi->max_queue_pairs > i) {
      goto ldv_43603;
    } else {
    }
  } else {
  }
  netif_device_attach(vi->dev);
  mutex_lock_nested(& vi->config_lock, 0U);
  vi->config_enable = 1;
  mutex_unlock(& vi->config_lock);
  rtnl_lock();
  virtnet_set_queues(vi, (int )vi->curr_queue_pairs);
  rtnl_unlock();
  err = register_cpu_notifier(& vi->nb);
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
static struct virtio_device_id id_table[2U] = { {1U, 4294967295U},
        {0U, 0U}};
static unsigned int features[21U] =
  { 0U, 1U, 6U, 5U,
        11U, 14U, 12U, 13U,
        7U, 8U, 9U, 10U,
        15U, 16U, 17U, 18U,
        19U, 21U, 22U, 23U,
        27U};
static struct virtio_driver virtio_net_driver =
     {{"virtio_net", 0, & __this_module, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    (struct virtio_device_id const *)(& id_table), (unsigned int const *)(& features),
    21U, & virtnet_probe, 0, & virtnet_remove, & virtnet_config_changed, & virtnet_freeze,
    & virtnet_restore};
static int virtio_net_driver_init(void)
{
  int tmp ;
  {
  tmp = register_virtio_driver(& virtio_net_driver);
  return (tmp);
}
}
static void virtio_net_driver_exit(void)
{
  {
  unregister_virtio_driver(& virtio_net_driver);
  return;
}
}
struct virtio_device_id const __mod_virtio__id_table_device_table ;
extern int ldv_ndo_uninit_3(void) ;
int ldv_retval_2 ;
int ldv_retval_0 ;
void ldv_initialize(void) ;
int ldv_retval_1 ;
void ldv_check_final_state(void) ;
extern int ldv_ndo_init_3(void) ;
int ldv_retval_3 ;
void ldv_initialize_virtio_driver_1(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(1480UL);
  virtio_net_driver_group0 = (struct virtio_device *)tmp;
  return;
}
}
void ldv_net_device_ops_3(void)
{
  void *tmp ;
  {
  tmp = ldv_zalloc(3264UL);
  virtnet_netdev_group1 = (struct net_device *)tmp;
  return;
}
}
void ldv_initialize_ethtool_ops_4(void)
{
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = ldv_zalloc(36UL);
  virtnet_ethtool_ops_group0 = (struct ethtool_channels *)tmp;
  tmp___0 = ldv_zalloc(3264UL);
  virtnet_ethtool_ops_group1 = (struct net_device *)tmp___0;
  return;
}
}
int main(void)
{
  struct ethtool_ringparam *ldvarg1 ;
  void *tmp ;
  struct ethtool_drvinfo *ldvarg0 ;
  void *tmp___0 ;
  u16 ldvarg8 ;
  u16 tmp___1 ;
  __be16 ldvarg7 ;
  struct sk_buff *ldvarg4 ;
  void *tmp___2 ;
  void *ldvarg3 ;
  void *tmp___3 ;
  __be16 ldvarg9 ;
  int ldvarg5 ;
  int tmp___4 ;
  struct rtnl_link_stats64 *ldvarg2 ;
  void *tmp___5 ;
  u16 ldvarg6 ;
  u16 tmp___6 ;
  char *ldvarg11 ;
  void *tmp___7 ;
  struct netdev_rx_queue *ldvarg10 ;
  void *tmp___8 ;
  struct rx_queue_attribute *ldvarg12 ;
  void *tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  {
  tmp = ldv_zalloc(36UL);
  ldvarg1 = (struct ethtool_ringparam *)tmp;
  tmp___0 = ldv_zalloc(196UL);
  ldvarg0 = (struct ethtool_drvinfo *)tmp___0;
  tmp___1 = __VERIFIER_nondet_u16();
  ldvarg8 = tmp___1;
  tmp___2 = ldv_zalloc(232UL);
  ldvarg4 = (struct sk_buff *)tmp___2;
  tmp___3 = ldv_zalloc(1UL);
  ldvarg3 = tmp___3;
  tmp___4 = __VERIFIER_nondet_int();
  ldvarg5 = tmp___4;
  tmp___5 = ldv_zalloc(184UL);
  ldvarg2 = (struct rtnl_link_stats64 *)tmp___5;
  tmp___6 = __VERIFIER_nondet_u16();
  ldvarg6 = tmp___6;
  tmp___7 = ldv_zalloc(1UL);
  ldvarg11 = (char *)tmp___7;
  tmp___8 = ldv_zalloc(320UL);
  ldvarg10 = (struct netdev_rx_queue *)tmp___8;
  tmp___9 = ldv_zalloc(48UL);
  ldvarg12 = (struct rx_queue_attribute *)tmp___9;
  ldv_initialize();
  memset((void *)(& ldvarg7), 0, 2UL);
  memset((void *)(& ldvarg9), 0, 2UL);
  ldv_state_variable_4 = 0;
  ldv_state_variable_1 = 0;
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_state_variable_3 = 0;
  ldv_state_variable_2 = 0;
  ldv_43723:
  tmp___10 = __VERIFIER_nondet_int();
  switch (tmp___10) {
  case 0: ;
  if (ldv_state_variable_4 != 0) {
    tmp___11 = __VERIFIER_nondet_int();
    switch (tmp___11) {
    case 0: ;
    if (ldv_state_variable_4 == 1) {
      virtnet_set_channels(virtnet_ethtool_ops_group1, virtnet_ethtool_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43681;
    case 1: ;
    if (ldv_state_variable_4 == 1) {
      virtnet_get_ringparam(virtnet_ethtool_ops_group1, ldvarg1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43681;
    case 2: ;
    if (ldv_state_variable_4 == 1) {
      virtnet_get_drvinfo(virtnet_ethtool_ops_group1, ldvarg0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43681;
    case 3: ;
    if (ldv_state_variable_4 == 1) {
      virtnet_get_channels(virtnet_ethtool_ops_group1, virtnet_ethtool_ops_group0);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43681;
    case 4: ;
    if (ldv_state_variable_4 == 1) {
      ethtool_op_get_link(virtnet_ethtool_ops_group1);
      ldv_state_variable_4 = 1;
    } else {
    }
    goto ldv_43681;
    default:
    ldv_stop();
    }
    ldv_43681: ;
  } else {
  }
  goto ldv_43687;
  case 1: ;
  if (ldv_state_variable_1 != 0) {
    tmp___12 = __VERIFIER_nondet_int();
    switch (tmp___12) {
    case 0: ;
    if (ldv_state_variable_1 == 1) {
      ldv_retval_0 = virtnet_probe(virtio_net_driver_group0);
      if (ldv_retval_0 == 0) {
        ldv_state_variable_1 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_43690;
    case 1: ;
    if (ldv_state_variable_1 == 1) {
      virtnet_restore(virtio_net_driver_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      virtnet_restore(virtio_net_driver_group0);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_43690;
    case 2: ;
    if (ldv_state_variable_1 == 1) {
      virtnet_config_changed(virtio_net_driver_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      virtnet_config_changed(virtio_net_driver_group0);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_43690;
    case 3: ;
    if (ldv_state_variable_1 == 1) {
      virtnet_freeze(virtio_net_driver_group0);
      ldv_state_variable_1 = 1;
    } else {
    }
    if (ldv_state_variable_1 == 2) {
      virtnet_freeze(virtio_net_driver_group0);
      ldv_state_variable_1 = 2;
    } else {
    }
    goto ldv_43690;
    case 4: ;
    if (ldv_state_variable_1 == 2) {
      virtnet_remove(virtio_net_driver_group0);
      ldv_state_variable_1 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_43690;
    default:
    ldv_stop();
    }
    ldv_43690: ;
  } else {
  }
  goto ldv_43687;
  case 2: ;
  if (ldv_state_variable_0 != 0) {
    tmp___13 = __VERIFIER_nondet_int();
    switch (tmp___13) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      virtio_net_driver_exit();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_43699;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_1 = virtio_net_driver_init();
      if (ldv_retval_1 == 0) {
        ldv_state_variable_0 = 3;
        ldv_state_variable_2 = 1;
        ldv_state_variable_1 = 1;
        ldv_initialize_virtio_driver_1();
        ldv_state_variable_4 = 1;
        ldv_initialize_ethtool_ops_4();
      } else {
      }
      if (ldv_retval_1 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_43699;
    default:
    ldv_stop();
    }
    ldv_43699: ;
  } else {
  }
  goto ldv_43687;
  case 3: ;
  if (ldv_state_variable_3 != 0) {
    tmp___14 = __VERIFIER_nondet_int();
    switch (tmp___14) {
    case 0: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_set_rx_mode(virtnet_netdev_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_set_rx_mode(virtnet_netdev_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_set_rx_mode(virtnet_netdev_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 1: ;
    if (ldv_state_variable_3 == 3) {
      virtnet_close(virtnet_netdev_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 2: ;
    if (ldv_state_variable_3 == 1) {
      eth_validate_addr(virtnet_netdev_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      eth_validate_addr(virtnet_netdev_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      eth_validate_addr(virtnet_netdev_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 3: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_vlan_rx_kill_vid(virtnet_netdev_group1, (int )ldvarg9, (int )ldvarg8);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_vlan_rx_kill_vid(virtnet_netdev_group1, (int )ldvarg9, (int )ldvarg8);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_vlan_rx_kill_vid(virtnet_netdev_group1, (int )ldvarg9, (int )ldvarg8);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 4: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_vlan_rx_add_vid(virtnet_netdev_group1, (int )ldvarg7, (int )ldvarg6);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_vlan_rx_add_vid(virtnet_netdev_group1, (int )ldvarg7, (int )ldvarg6);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_vlan_rx_add_vid(virtnet_netdev_group1, (int )ldvarg7, (int )ldvarg6);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 5: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_netpoll(virtnet_netdev_group1);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_netpoll(virtnet_netdev_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_netpoll(virtnet_netdev_group1);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 6: ;
    if (ldv_state_variable_3 == 3) {
      virtnet_change_mtu(virtnet_netdev_group1, ldvarg5);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_change_mtu(virtnet_netdev_group1, ldvarg5);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 7: ;
    if (ldv_state_variable_3 == 2) {
      ldv_retval_3 = virtnet_open(virtnet_netdev_group1);
      if (ldv_retval_3 == 0) {
        ldv_state_variable_3 = 3;
      } else {
      }
    } else {
    }
    goto ldv_43704;
    case 8: ;
    if (ldv_state_variable_3 == 3) {
      start_xmit(ldvarg4, virtnet_netdev_group1);
      ldv_state_variable_3 = 3;
    } else {
    }
    goto ldv_43704;
    case 9: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_set_mac_address(virtnet_netdev_group1, ldvarg3);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_set_mac_address(virtnet_netdev_group1, ldvarg3);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_set_mac_address(virtnet_netdev_group1, ldvarg3);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 10: ;
    if (ldv_state_variable_3 == 1) {
      virtnet_stats(virtnet_netdev_group1, ldvarg2);
      ldv_state_variable_3 = 1;
    } else {
    }
    if (ldv_state_variable_3 == 3) {
      virtnet_stats(virtnet_netdev_group1, ldvarg2);
      ldv_state_variable_3 = 3;
    } else {
    }
    if (ldv_state_variable_3 == 2) {
      virtnet_stats(virtnet_netdev_group1, ldvarg2);
      ldv_state_variable_3 = 2;
    } else {
    }
    goto ldv_43704;
    case 11: ;
    if (ldv_state_variable_3 == 1) {
      ldv_retval_2 = ldv_ndo_init_3();
      if (ldv_retval_2 == 0) {
        ldv_state_variable_3 = 2;
        ref_cnt = ref_cnt + 1;
      } else {
      }
    } else {
    }
    goto ldv_43704;
    case 12: ;
    if (ldv_state_variable_3 == 2) {
      ldv_ndo_uninit_3();
      ldv_state_variable_3 = 1;
      ref_cnt = ref_cnt - 1;
    } else {
    }
    goto ldv_43704;
    default:
    ldv_stop();
    }
    ldv_43704: ;
  } else {
  }
  goto ldv_43687;
  case 4: ;
  if (ldv_state_variable_2 != 0) {
    tmp___15 = __VERIFIER_nondet_int();
    switch (tmp___15) {
    case 0: ;
    if (ldv_state_variable_2 == 1) {
      mergeable_rx_buffer_size_show(ldvarg10, ldvarg12, ldvarg11);
      ldv_state_variable_2 = 1;
    } else {
    }
    goto ldv_43720;
    default:
    ldv_stop();
    }
    ldv_43720: ;
  } else {
  }
  goto ldv_43687;
  default:
  ldv_stop();
  }
  ldv_43687: ;
  goto ldv_43723;
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
__inline static struct sk_buff *ldv_alloc_skb_12(unsigned int size , gfp_t priority )
{
  struct sk_buff *tmp ;
  {
  tmp = ldv_skb_alloc();
  return (tmp);
}
}
int ldv_register_netdev_13(struct net_device *dev )
{
  ldv_func_ret_type ldv_func_res ;
  int tmp ;
  {
  tmp = register_netdev(dev);
  ldv_func_res = tmp;
  ldv_state_variable_3 = 1;
  ldv_net_device_ops_3();
  return (ldv_func_res);
}
}
void ldv_unregister_netdev_14(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_free_netdev_15(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_unregister_netdev_16(struct net_device *dev )
{
  {
  unregister_netdev(dev);
  ldv_state_variable_3 = 0;
  return;
}
}
void ldv_free_netdev_17(struct net_device *dev )
{
  {
  free_netdev(dev);
  ldv_state_variable_3 = 0;
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
void *__alloc_percpu(size_t arg0, size_t arg1) {
  return ldv_malloc(0UL);
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __dev_kfree_skb_any(struct sk_buff *arg0, enum skb_free_reason arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool __get_page_tail(struct page *arg0) {
  return __VERIFIER_nondet_bool();
}
void __init_work(struct work_struct *arg0, int arg1) {
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
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return ldv_malloc(sizeof(struct sk_buff));
}
void __netif_schedule(struct Qdisc *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool __virt_addr_valid(unsigned long arg0) {
  return __VERIFIER_nondet_bool();
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
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void dump_page(struct page *arg0, const char *arg1) {
  return;
}
void eth_commit_mac_addr_change(struct net_device *arg0, void *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int eth_prepare_mac_addr_change(struct net_device *arg0, void *arg1) {
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
unsigned int __VERIFIER_nondet_uint(void);
u32 ethtool_op_get_link(struct net_device *arg0) {
  return __VERIFIER_nondet_uint();
}
struct ewma *ewma_add(struct ewma *arg0, unsigned long arg1) {
  return ldv_malloc(sizeof(struct ewma));
}
void ewma_init(struct ewma *arg0, unsigned long arg1, unsigned long arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int find_next_bit(const unsigned long *arg0, unsigned long arg1, unsigned long arg2) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool flush_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_netdev(struct net_device *arg0) {
  return;
}
void free_percpu(void *arg0) {
  return;
}
void get_online_cpus() {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_init_3() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int ldv_ndo_uninit_3() {
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
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int net_ratelimit() {
  return __VERIFIER_nondet_int();
}
void netdev_notify_peers(struct net_device *arg0) {
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
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
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
void nf_conntrack_destroy(struct nf_conntrack *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_online_cpus() {
  return;
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
int register_cpu_notifier(struct notifier_block *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_virtio_driver(struct virtio_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
void sg_init_one(struct scatterlist *arg0, const void *arg1, unsigned int arg2) {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void skb_add_rx_frag(struct sk_buff *arg0, int arg1, struct page *arg2, int arg3, int arg4, unsigned int arg5) {
  return;
}
void skb_coalesce_rx_frag(struct sk_buff *arg0, int arg1, int arg2, unsigned int arg3) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool skb_page_frag_refill(unsigned int arg0, struct page_frag *arg1, gfp_t arg2) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool skb_partial_csum_set(struct sk_buff *arg0, u16 arg1, u16 arg2) {
  return __VERIFIER_nondet_bool();
}
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  unsigned char *ret_val = arg0->data + arg0->tail;
  arg0->tail += arg1;
  return ret_val;
}
int __VERIFIER_nondet_int(void);
int skb_to_sgvec(struct sk_buff *arg0, struct scatterlist *arg1, int arg2, int arg3) {
  return __VERIFIER_nondet_int();
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void unregister_cpu_notifier(struct notifier_block *arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
  return;
}
void unregister_virtio_driver(struct virtio_driver *arg0) {
  return;
}
void virtio_check_driver_offered_feature(const struct virtio_device *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int virtqueue_add_inbuf(struct virtqueue *arg0, struct scatterlist *arg1, unsigned int arg2, void *arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int virtqueue_add_outbuf(struct virtqueue *arg0, struct scatterlist *arg1, unsigned int arg2, void *arg3, gfp_t arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int virtqueue_add_sgs(struct virtqueue *arg0, struct scatterlist **arg1, unsigned int arg2, unsigned int arg3, void *arg4, gfp_t arg5) {
  return __VERIFIER_nondet_int();
}
void *virtqueue_detach_unused_buf(struct virtqueue *arg0) {
  return ldv_malloc(0UL);
}
void virtqueue_disable_cb(struct virtqueue *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool virtqueue_enable_cb_delayed(struct virtqueue *arg0) {
  return __VERIFIER_nondet_bool();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int virtqueue_enable_cb_prepare(struct virtqueue *arg0) {
  return __VERIFIER_nondet_uint();
}
void *virtqueue_get_buf(struct virtqueue *arg0, unsigned int *arg1) {
  return ldv_malloc(0UL);
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int virtqueue_get_vring_size(struct virtqueue *arg0) {
  return __VERIFIER_nondet_uint();
}
bool __VERIFIER_nondet_bool(void);
bool virtqueue_is_broken(struct virtqueue *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool virtqueue_kick(struct virtqueue *arg0) {
  return __VERIFIER_nondet_bool();
}
bool __VERIFIER_nondet_bool(void);
bool virtqueue_poll(struct virtqueue *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_bool();
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
